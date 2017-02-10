;Super Mario Bros. 3
;This bank is mostly code. Absolute addressing to ROM seems to use databank 21.

CODE_238000:        RTL                       

CODE_238001:        LDY $0726                 
CODE_238004:        LDX #$00                  
CODE_238006:        CPY #$00                  
CODE_238008:        BEQ CODE_23800C           
CODE_23800A:        LDX #$0B                  
CODE_23800C:        LDY #$00                  
CODE_23800E:        LDA.w DATA_218AE9,x               
CODE_238011:        STA $1606,y               
CODE_238014:        INX                       
CODE_238015:        INY                       
CODE_238016:        CPY #$0B                  
CODE_238018:        BNE CODE_23800E           
CODE_23801A:        LDA #$51                  
CODE_23801C:        STA $1602                 
CODE_23801F:        STZ $1604                 
CODE_238022:        LDA #$09                  
CODE_238024:        STA $1605                 
CODE_238027:        LDA #$2A                  
CODE_238029:        STA $1603                 
CODE_23802C:        LDA $1600                 
CODE_23802F:        CLC                       
CODE_238030:        ADC #$0E                  
CODE_238032:        STA $1600                 
CODE_238035:        RTL                       

CODE_238036:        LDX #$51                  
CODE_238038:        STX $1602                 
CODE_23803B:        LDA #$52                  
CODE_23803D:        STA $1603                 
CODE_238040:        STZ $1604                 
CODE_238043:        LDA #$01                  
CODE_238045:        STA $1605                 
CODE_238048:        LDA $0727                 
CODE_23804B:        INC A                     
CODE_23804C:        ORA #$F0                  
CODE_23804E:        STA $1606                 
CODE_238051:        STX $1608                 
CODE_238054:        LDA #$B4                  
CODE_238056:        STA $1609                 
CODE_238059:        STZ $160A                 
CODE_23805C:        LDA #$03                  
CODE_23805E:        STA $160B                 
CODE_238061:        LDA $1F4A                 
CODE_238064:        CMP #$AD                  
CODE_238066:        BNE CODE_23806A           
CODE_238068:        LDA #$0E                  
CODE_23806A:        AND #$0F                  
CODE_23806C:        ORA #$F0                  
CODE_23806E:        STA $160C                 
CODE_238071:        LDA $1F4B                 
CODE_238074:        AND #$0F                  
CODE_238076:        ORA #$F0                  
CODE_238078:        STA $160E                 
CODE_23807B:        LDA #$01                  
CODE_23807D:        STA $1607                 
CODE_238080:        STA $160D                 
CODE_238083:        STA $160F                 
CODE_238086:        LDA #$FF                  
CODE_238088:        STA $1610                 
CODE_23808B:        RTL                       

CODE_23808C:        LDX #$80                  
CODE_23808E:        STX $2115                 
CODE_238091:        STZ $4200                 
CODE_238094:        REP #$30                  
CODE_238096:        LDA #$0840                
CODE_238099:        STA $2116                 
CODE_23809C:        LDY #$0260                
CODE_23809F:        LDA #$00FF                
CODE_2380A2:        STA $2118                 
CODE_2380A5:        DEY                       
CODE_2380A6:        BNE CODE_2380A2           
CODE_2380A8:        SEP #$30                  
CODE_2380AA:        RTL                       

CODE_2380AB:        JSL CODE_2382A3           
CODE_2380AF:        LDA $0729                 
CODE_2380B2:        CMP #$0D                  
CODE_2380B4:        BNE CODE_23810B           
CODE_2380B6:        LDX $0727                 
CODE_2380B9:        LDY.w DATA_218B03,x               
CODE_2380BC:        CPX #$04                  
CODE_2380BE:        BNE CODE_2380C9           
CODE_2380C0:        LDX $0726                 
CODE_2380C3:        LDA $45,x                 
CODE_2380C5:        BEQ CODE_2380C9           
CODE_2380C7:        LDY #$10                  
CODE_2380C9:        LDA $1F55                 
CODE_2380CC:        BEQ CODE_2380D0           
CODE_2380CE:        LDY #$0E                  
CODE_2380D0:        LDA $1206                 
CODE_2380D3:        BPL CODE_2380E0           
CODE_2380D5:        CMP #$F1                  
CODE_2380D7:        BEQ CODE_2380E0           
CODE_2380D9:        CMP #$F2                  
CODE_2380DB:        BEQ CODE_2380E0           
CODE_2380DD:        STY $1202                 
CODE_2380E0:        LDX $0726                 
CODE_2380E3:        LDA $49,x                 
CODE_2380E5:        BNE CODE_238102           
CODE_2380E7:        LDA $7E3950,x             
CODE_2380EB:        CMP #$18                  
CODE_2380ED:        BEQ CODE_2380F8           
CODE_2380EF:        LDA $7E3950,x             
CODE_2380F3:        INC A                     
CODE_2380F4:        STA $7E3950,x             
CODE_2380F8:        LDA $17                   
CODE_2380FA:        BNE CODE_238102           
CODE_2380FC:        LDA #$FF                  
CODE_2380FE:        STA $7E3950,x             
CODE_238102:        LDA $59                   
CODE_238104:        BEQ CODE_23810B           
CODE_238106:        JSL CODE_29A833           
CODE_23810A:        RTL                       

CODE_23810B:        LDA $0710                 
CODE_23810E:        BEQ CODE_238113           
CODE_238110:        JMP CODE_2381ED           

CODE_238113:        LDX $0726                 
CODE_238116:        LDA $49,x                 
CODE_238118:        BEQ CODE_23811D           
CODE_23811A:        JMP CODE_238226           

CODE_23811D:        LDA $0729                 
CODE_238120:        CMP #$0D                  
CODE_238122:        BEQ CODE_238127           
CODE_238124:        JMP CODE_238226           

CODE_238127:        LDA $0349                 
CODE_23812A:        BEQ CODE_238132           
CODE_23812C:        DEC $0349                 
CODE_23812F:        JMP CODE_23818F           

CODE_238132:        LDA $0727                 
CODE_238135:        CMP #$08                  
CODE_238137:        BEQ CODE_23818F           
CODE_238139:        LDA $028C                 
CODE_23813C:        CMP #$01                  
CODE_23813E:        BEQ CODE_23818F           
CODE_238140:        CMP #$03                  
CODE_238142:        BEQ CODE_23818F           
CODE_238144:        LDA $18                   
CODE_238146:        AND #$10                  
CODE_238148:        BEQ CODE_23818F           
CODE_23814A:        LDA $028C                 
CODE_23814D:        BNE CODE_238177           
CODE_23814F:        LDA $0598                 
CODE_238152:        BEQ CODE_238175           
CODE_238154:        LDA #$04                  
CODE_238156:        STA $0291                 
CODE_238159:        JSL CODE_2AF9A9           
CODE_23815D:        LDA #$03                  
CODE_23815F:        STA $0200                 
CODE_238162:        JSL CODE_2AFA63           
CODE_238166:        JSL CODE_20804D           
CODE_23816A:        LDA $1050                 
CODE_23816D:        BPL CODE_238162           
CODE_23816F:        STZ $1050                 
CODE_238172:        STZ $0293                 
CODE_238175:        BRA CODE_238177           

CODE_238177:        JSL CODE_29EBB7           
CODE_23817B:        LDA $0598                 
CODE_23817E:        BEQ CODE_23818F           
CODE_238180:        LDA #$13                  
CODE_238182:        STA $0208                 
CODE_238185:        LDA #$23                  
CODE_238187:        STA $0200                 
CODE_23818A:        LDA #$33                  
CODE_23818C:        STA $0202                 
CODE_23818F:        LDA $028C                 
CODE_238192:        BEQ CODE_2381D1           
CODE_238194:        JSL CODE_29EBF7           
CODE_238198:        LDA $0598                 
CODE_23819B:        BEQ CODE_2381CF           
CODE_23819D:        LDA $028C                 
CODE_2381A0:        BNE CODE_2381CF           
CODE_2381A2:        LDA #$05                  
CODE_2381A4:        STA $0291                 
CODE_2381A7:        JSL CODE_2AF9A9           
CODE_2381AB:        LDA $0598                 
CODE_2381AE:        BEQ CODE_2381BF           
CODE_2381B0:        LDA #$23                  
CODE_2381B2:        STA $0200                 
CODE_2381B5:        LDA #$03                  
CODE_2381B7:        STA $0201                 
CODE_2381BA:        LDA #$30                  
CODE_2381BC:        STA $0202                 
CODE_2381BF:        JSL CODE_2AFA63           
CODE_2381C3:        JSL CODE_20804D           
CODE_2381C7:        LDA $1050                 
CODE_2381CA:        BPL CODE_2381BF           
CODE_2381CC:        STZ $1050                 
CODE_2381CF:        BRA CODE_238226           

CODE_2381D1:        LDY $0726                 
CODE_2381D4:        LDA $00F8,y               
CODE_2381D7:        ORA $18                   
CODE_2381D9:        AND #$40                  
CODE_2381DB:        BEQ CODE_238226           
CODE_2381DD:        LDA #$1C                  
CODE_2381DF:        STA $1203                 
CODE_2381E2:        LDA $05F2                 
CODE_2381E5:        EOR #$01                  
CODE_2381E7:        STA $05F2                 
CODE_2381EA:        BRL CODE_238C1B           

CODE_2381ED:        LDA $0417                 
CODE_2381F0:        BEQ CODE_2381F9           
CODE_2381F2:        JSL CODE_238891           
CODE_2381F6:        BRL CODE_238C1B           

CODE_2381F9:        LDY $25                   
CODE_2381FB:        LDA $0210                 
CODE_2381FE:        CLC                       
CODE_2381FF:        ADC.w DATA_218AFF,y               
CODE_238202:        STA $0210                 
CODE_238205:        STA $B7                   
CODE_238207:        LDA $0211                 
CODE_23820A:        ADC.w DATA_218B01,y               
CODE_23820D:        STA $0211                 
CODE_238210:        STA $12                   
CODE_238212:        JSL CODE_2097F5           
CODE_238216:        JSL CODE_209D5A           
CODE_23821A:        JSL CODE_238DD7           
CODE_23821E:        DEC $0710                 
CODE_238221:        DEC $0710                 
CODE_238224:        BEQ CODE_23822B           
CODE_238226:        LDA $0417                 
CODE_238229:        BEQ CODE_23823E           
CODE_23822B:        JSL CODE_238891           
CODE_23822F:        JSL CODE_238C1B           
CODE_238233:        LDA $0417                 
CODE_238236:        BNE CODE_23823E           
CODE_238238:        LDA #$01                  
CODE_23823A:        STA $0728                 
CODE_23823D:        RTL                       

CODE_23823E:        LDA $0500                 
CODE_238241:        BNE CODE_238269           
CODE_238243:        LDY #$0D                  
CODE_238245:        LDA $1EED,y               
CODE_238248:        STA $0500,y               
CODE_23824B:        LDA $1F09,y               
CODE_23824E:        STA $051E,y               
CODE_238251:        LDA $1EFB,y               
CODE_238254:        STA $050F,y               
CODE_238257:        LDA $1F17,y               
CODE_23825A:        CMP #$10                  
CODE_23825C:        BCS CODE_238266                   
CODE_23825E:        LDA $0783,y               
CODE_238261:        AND #$03                  
CODE_238263:        STA $052D,y               
CODE_238266:        DEY                       
CODE_238267:        BPL CODE_238245           
CODE_238269:        LDA $028C                 
CODE_23826C:        BEQ CODE_23826F           
CODE_23826E:        RTL                       

CODE_23826F:        LDA $0729                 
CODE_238272:        JSL CODE_20FB3A           ; ExecutePtrLong

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

CODE_2382A3:        LDA $0727                 
CODE_2382A6:        CMP #$04                  
CODE_2382A8:        BNE CODE_2382C4           
CODE_2382AA:        LDX $0726                 
CODE_2382AD:        LDA $45,x                 
CODE_2382AF:        BEQ CODE_2382C4           
CODE_2382B1:        LDY #$07                  
CODE_2382B3:        LDA.w DATA_218B0C,y               
CODE_2382B6:        STA $0850,y               
CODE_2382B9:        DEY                       
CODE_2382BA:        BPL CODE_2382B3           
CODE_2382BC:        LDA #$02                  
CODE_2382BE:        STA $0A34                 
CODE_2382C1:        STA $0A35                 
CODE_2382C4:        RTL                       

CODE_2382C5:        LDA $0728                 
CODE_2382C8:        JSL CODE_20FB1F           ; ExecutePtrShort

PNTR_2382CC:        dw CODE_2382D2
                    dw CODE_238338
                    dw CODE_2383D1

CODE_2382D2:        JSR CODE_238306
CODE_2382D5:        LDA $0711                 
CODE_2382D8:        BNE CODE_2382E3           
CODE_2382DA:        LDA #$80                  
CODE_2382DC:        STA $0711                 
CODE_2382DF:        JSL CODE_2AF800           
CODE_2382E3:        DEC $0711                 
CODE_2382E6:        BNE CODE_2382EE           
CODE_2382E8:        INC $0285                 
CODE_2382EB:        INC $0728                 
CODE_2382EE:        JSL CODE_2AF867           
CODE_2382F2:        RTL                       

CODE_2382F3:        LDA $0711                 
CODE_2382F6:        BNE CODE_2382FD           
CODE_2382F8:        LDA #$80                  
CODE_2382FA:        STA $0711                 
CODE_2382FD:        DEC $0711                 
CODE_238300:        BNE CODE_238305           
CODE_238302:        INC $0728                 
CODE_238305:        RTL                       

CODE_238306:        LDY #$03                  
CODE_238308:        LDA.w DATA_218B14,y               
CODE_23830B:        STA $0884,y               
CODE_23830E:        DEY                       
CODE_23830F:        BPL CODE_238308           
CODE_238311:        LDX $0726                 
CODE_238314:        BEQ CODE_238329           
CODE_238316:        LDY #$03                  
CODE_238318:        LDA $0884,y               
CODE_23831B:        ORA #$01                  
CODE_23831D:        STA $0884,y               
CODE_238320:        LDA $0747,x               
CODE_238323:        CLC                       
CODE_238324:        ADC #$07                  
CODE_238326:        TAY                       
CODE_238327:        BRA CODE_23832C           

CODE_238329:        LDY $0747,x               
CODE_23832C:        LDA.w DATA_218B18,y               
CODE_23832F:        STA $0886                 
CODE_238332:        LDA #$02                  
CODE_238334:        STA $0A41                 
CODE_238337:        RTS                       

CODE_238338:        JSL CODE_2AF867           
CODE_23833C:        RTL                       

CODE_23833D:        LDA $20                   
CODE_23833F:        BNE CODE_23836A           
CODE_238341:        LDA $23                   
CODE_238343:        AND #$08                  
CODE_238345:        CLC                       
CODE_238346:        ADC #$34                  
CODE_238348:        STA $20                   
CODE_23834A:        LDA $24                   
CODE_23834C:        AND #$F0                  
CODE_23834E:        LSR A                     
CODE_23834F:        LSR A                     
CODE_238350:        LSR A                     
CODE_238351:        TAY                       
CODE_238352:        LDA.w DATA_218200,y               
CODE_238355:        STA $2E                   
CODE_238357:        LDA.w DATA_218200+1,y               
CODE_23835A:        STA $2F                   
CODE_23835C:        INC $2F                   
CODE_23835E:        LDA #$7E                  
CODE_238360:        STA $30                   
CODE_238362:        LDA #$08                  
CODE_238364:        STA $9B                   
CODE_238366:        LDA #$02                  
CODE_238368:        STA $92                   
CODE_23836A:        REP #$20                  
CODE_23836C:        LDA #$20FF                
CODE_23836F:        STA $1606                 
CODE_238372:        STA $160C                 
CODE_238375:        SEP #$20                  
CODE_238377:        LDA #$11                  
CODE_238379:        STA $1602                 
CODE_23837C:        STA $1608                 
CODE_23837F:        LDA #$C0                  
CODE_238381:        STA $1604                 
CODE_238384:        STA $160A                 
CODE_238387:        LDA #$0E                  
CODE_238389:        STA $1605                 
CODE_23838C:        STA $160B                 
CODE_23838F:        LDX $9B                   
CODE_238391:        STX $1603                 
CODE_238394:        INX                       
CODE_238395:        STX $1609                 
CODE_238398:        LDA #$FF                  
CODE_23839A:        STA $160E                 
CODE_23839D:        LDX $20                   
CODE_23839F:        INX                       
CODE_2383A0:        STX $20                   
CODE_2383A2:        TXA                       
CODE_2383A3:        AND #$01                  
CODE_2383A5:        BNE CODE_2383B6           
CODE_2383A7:        LDX $9C                   
CODE_2383A9:        INX                       
CODE_2383AA:        TXA                       
CODE_2383AB:        AND #$07                  
CODE_2383AD:        BNE CODE_2383B4           
CODE_2383AF:        LDA $9C                   
CODE_2383B1:        AND #$F0                  
CODE_2383B3:        TAX                       
CODE_2383B4:        STX $9C                   
CODE_2383B6:        LDX $9B                   
CODE_2383B8:        INX                       
CODE_2383B9:        INX                       
CODE_2383BA:        TXA                       
CODE_2383BB:        AND #$1F                  
CODE_2383BD:        BNE CODE_2383C1           
CODE_2383BF:        LDX #$00                  
CODE_2383C1:        STX $9B                   
CODE_2383C3:        INC $9A                   
CODE_2383C5:        LDA $9A                   
CODE_2383C7:        CMP #$08                  
CODE_2383C9:        BNE CODE_2383D0           
CODE_2383CB:        STZ $20                   
CODE_2383CD:        INC $0728                 
CODE_2383D0:        RTS                       

CODE_2383D1:        JSL CODE_29B9D1           
CODE_2383D5:        LDA $0059                 
CODE_2383D8:        BNE CODE_2383F1           
CODE_2383DA:        INC $0729                 
CODE_2383DD:        STZ $0728                 
CODE_2383E0:        JSR CODE_238C27           
CODE_2383E3:        LDA $0598                 
CODE_2383E6:        BEQ CODE_2383F1           
CODE_2383E8:        LDA #$03                  
CODE_2383EA:        STA $0291                 
CODE_2383ED:        JSL CODE_2AF9A9           
CODE_2383F1:        RTL                       

CODE_2383F2:        LDA $0711                 
CODE_2383F5:        BNE CODE_2383FC           
CODE_2383F7:        LDA #$10                  
CODE_2383F9:        STA $0711                 
CODE_2383FC:        JSL CODE_2382FD           
CODE_238400:        LDA $0711                 
CODE_238403:        BNE CODE_238408           
CODE_238405:        STZ $0500                 
CODE_238408:        JSL CODE_238C1B           
CODE_23840C:        RTL                       

CODE_23840D:        LDA $0728                 
CODE_238410:        JSL CODE_20FB3A           ; ExecutePtrLong

PNTR_238414:        dl CODE_23842F
                    dl CODE_238441
                    dl CODE_238606
                    dl CODE_23860B
                    dl CODE_29AAFE
                    dl CODE_29ABE7
                    dl CODE_29AC4C
                    dl CODE_29AC61
                    dl CODE_2383F2

CODE_23842F:        DEC $02D8                 
CODE_238432:        BNE CODE_23843A           
CODE_238434:        INC $0728                 
CODE_238437:        STZ $02DD                 
CODE_23843A:        JSL CODE_2AF867           
CODE_23843E:        JMP CODE_2385B0           

CODE_238441:        LDA $02DD                 
CODE_238444:        BEQ CODE_238452           
CODE_238446:        DEC $02DD                 
CODE_238449:        BNE CODE_23844F           
CODE_23844B:        JML CODE_0080DE           

CODE_23844F:        JMP CODE_238577           

CODE_238452:        JSL CODE_2AF867           
CODE_238456:        LDA $034D                 
CODE_238459:        BEQ CODE_2384AD           
CODE_23845B:        LDA $18                   
CODE_23845D:        AND #$20                  
CODE_23845F:        BEQ CODE_238478           
CODE_238461:        LDA #$23                  
CODE_238463:        STA $1203                 
CODE_238466:        LDA $1DCB                 
CODE_238469:        CLC                       
CODE_23846A:        ADC #$10                  
CODE_23846C:        CMP #$88                  
CODE_23846E:        BNE CODE_238472           
CODE_238470:        LDA #$58                  
CODE_238472:        STA $1DCB                 
CODE_238475:        JMP CODE_238577           

CODE_238478:        LDA $18                   
CODE_23847A:        AND #$0C                  
CODE_23847C:        BEQ CODE_2384E5           
CODE_23847E:        LDX #$23                  
CODE_238480:        STX $1203                 
CODE_238483:        AND #$08                  
CODE_238485:        BEQ CODE_238498           
CODE_238487:        LDA $1DCB                 
CODE_23848A:        SEC                       
CODE_23848B:        SBC #$10                  
CODE_23848D:        CMP #$48                  
CODE_23848F:        BNE CODE_2384A7           
CODE_238491:        STZ $1203                 
CODE_238494:        LDA #$58                  
CODE_238496:        BRA CODE_2384A7           

CODE_238498:        LDA $1DCB                 
CODE_23849B:        CLC                       
CODE_23849C:        ADC #$10                  
CODE_23849E:        CMP #$88                  
CODE_2384A0:        BNE CODE_2384A7           
CODE_2384A2:        STZ $1203                 
CODE_2384A5:        LDA #$78                  
CODE_2384A7:        STA $1DCB                 
CODE_2384AA:        JMP CODE_238577           

CODE_2384AD:        LDA $18                   
CODE_2384AF:        AND #$20                  
CODE_2384B1:        BEQ CODE_2384C3           
CODE_2384B3:        LDA #$23                  
CODE_2384B5:        STA $1203                 
CODE_2384B8:        LDA $1DCB                 
CODE_2384BB:        EOR #$10                  
CODE_2384BD:        STA $1DCB                 
CODE_2384C0:        JMP CODE_238577           

CODE_2384C3:        LDA $18                   
CODE_2384C5:        AND #$0C                  
CODE_2384C7:        BEQ CODE_2384E5           
CODE_2384C9:        LDX #$23                  
CODE_2384CB:        STX $1203                 
CODE_2384CE:        LDX #$60                  
CODE_2384D0:        AND #$08                  
CODE_2384D2:        BNE CODE_2384D6           
CODE_2384D4:        LDX #$70                  
CODE_2384D6:        TXA                       
CODE_2384D7:        EOR $1DCB                 
CODE_2384DA:        BNE CODE_2384DF           
CODE_2384DC:        STZ $1203                 
CODE_2384DF:        STX $1DCB                 
CODE_2384E2:        JMP CODE_238577           

CODE_2384E5:        LDA $18                   
CODE_2384E7:        AND #$10                  
CODE_2384E9:        BNE CODE_2384EE           
CODE_2384EB:        JMP CODE_238577           

CODE_2384EE:        LDA #$01                  
CODE_2384F0:        STA $1203                 
CODE_2384F3:        LDX #$02                  
CODE_2384F5:        LDA $1DCB                 
CODE_2384F8:        CMP #$70                  
CODE_2384FA:        BCC CODE_2384FE           
CODE_2384FC:        LDX #$09                  
CODE_2384FE:        STX $0728                 
CODE_238501:        STX $0285                 
CODE_238504:        LDA $1DCB                 
CODE_238507:        CMP #$68                  
CODE_238509:        BCC CODE_23853E           
CODE_23850B:        JSL CODE_238593           
CODE_23850F:        LDA $034D                 
CODE_238512:        BEQ CODE_23853E           
CODE_238514:        LDA #$3B                  
CODE_238516:        STA $1200                 
CODE_238519:        LDA $1DCB                 
CODE_23851C:        CMP #$78                  
CODE_23851E:        BNE CODE_238525           
CODE_238520:        LDA #$F3                  
CODE_238522:        STA $1202                 
CODE_238525:        JSL CODE_00922D           
CODE_238529:        LDA $1DCB                 
CODE_23852C:        CMP #$78                  
CODE_23852E:        BNE CODE_23853E           
CODE_238530:        LDA #$20                  
CODE_238532:        STA $02DD                 
CODE_238535:        LDA #$01                  
CODE_238537:        STA $0728                 
CODE_23853A:        STZ $0285                 
CODE_23853D:        RTL                       

CODE_23853E:        CPX #$09                  
CODE_238540:        BNE CODE_238573           
CODE_238542:        STZ $0285                 
CODE_238545:        STZ $0202                 
CODE_238548:        STZ $0201                 
CODE_23854B:        STZ $0200                 
CODE_23854E:        STZ $0293                 
CODE_238551:        STZ $0291                 
CODE_238554:        STZ $020A                 
CODE_238557:        LDA #$03                  
CODE_238559:        STA $0208                 
CODE_23855C:        LDA $072B                 
CODE_23855F:        CMP #$02                  
CODE_238561:        BNE CODE_238568           
CODE_238563:        LDA $034D                 
CODE_238566:        BEQ CODE_2385D8           
CODE_238568:        STZ $0103                 
CODE_23856B:        LDY $0726                 
CODE_23856E:        LDA #$00                  
CODE_238570:        STA $073F,y               
CODE_238573:        LDA #$F0                  
CODE_238575:        STA $95                   
CODE_238577:        LDY #$0D                  
CODE_238579:        LDA #$F0                  
CODE_23857B:        STA $0500,y               
CODE_23857E:        DEY                       
CODE_23857F:        BPL CODE_23857B           
CODE_238581:        LDA $18                   
CODE_238583:        AND #$2C                  
CODE_238585:        BNE CODE_238590           
CODE_238587:        LDA $028F                 
CODE_23858A:        AND #$10                  
CODE_23858C:        BEQ CODE_238593           
CODE_23858E:        BRA CODE_2385AD           

CODE_238590:        STZ $028F                 
CODE_238593:        LDA $1DCB                 
CODE_238596:        STA $0895                 
CODE_238599:        LDA #$73                  
CODE_23859B:        STA $0896                 
CODE_23859E:        LDA #$33                  
CODE_2385A0:        STA $0897                 
CODE_2385A3:        LDA #$4F                  
CODE_2385A5:        STA $0894                 
CODE_2385A8:        LDA #$00                  
CODE_2385AA:        STA $0A45                 
CODE_2385AD:        INC $028F                 
CODE_2385B0:        LDY #$03                  
CODE_2385B2:        LDA.w DATA_218B26,y               
CODE_2385B5:        STA $0884,y               
CODE_2385B8:        DEY                       
CODE_2385B9:        BPL CODE_2385B2           
CODE_2385BB:        LDA $034D                 
CODE_2385BE:        BNE CODE_2385C5           
CODE_2385C0:        LDA #$42                  
CODE_2385C2:        STA $0885                 
CODE_2385C5:        LDA $0726                 
CODE_2385C8:        BEQ CODE_2385D2           
CODE_2385CA:        LDA #$7E                  
CODE_2385CC:        STA $0886                 
CODE_2385CF:        INC $0887                 
CODE_2385D2:        LDA #$02                  
CODE_2385D4:        STA $0A41                 
CODE_2385D7:        RTL                       

CODE_2385D8:        PHX                       
CODE_2385D9:        LDX $0726                 
CODE_2385DC:        LDA $7E397D,x             
CODE_2385E0:        STA $7E3975,x             
CODE_2385E4:        LDA $7E397F,x             
CODE_2385E8:        STA $7E3977,x             
CODE_2385EC:        LDA $7E3981,x             
CODE_2385F0:        STA $7E3979,x             
CODE_2385F4:        LDA $7E3985,x             
CODE_2385F8:        STA $0722,x               
CODE_2385FB:        LDA $7E3987,x             
CODE_2385FF:        STA $0724,x               
CODE_238602:        PLX                       
CODE_238603:        JMP CODE_238573           

CODE_238606:        JSL CODE_2AF867           
CODE_23860A:        RTL                       

CODE_23860B:        LDA $0711                 
CODE_23860E:        BNE CODE_238615           
CODE_238610:        LDA #$10                  
CODE_238612:        STA $0711                 
CODE_238615:        JSL CODE_2382F3           
CODE_238619:        LDA $0728                 
CODE_23861C:        CMP #$04                  
CODE_23861E:        BNE CODE_23862C           
CODE_238620:        LDA $12                   
CODE_238622:        BNE CODE_238629           
CODE_238624:        LDA $0210                 
CODE_238627:        BEQ CODE_23862C           
CODE_238629:        INC $0728                 
CODE_23862C:        JSL CODE_238C1B           
CODE_238630:        RTL                       

CODE_238631:        LDA #$0D                  
CODE_238633:        STA $0729                 
CODE_238636:        JSL CODE_238C1B           
CODE_23863A:        RTL                       

CODE_23863B:        LDA $0711                 
CODE_23863E:        BNE CODE_238645           
CODE_238640:        LDA #$0E                  
CODE_238642:        STA $0711                 
CODE_238645:        DEC $0711                 
CODE_238648:        BNE CODE_23864D           
CODE_23864A:        INC $0729                 
CODE_23864D:        JSL CODE_238C1B           
CODE_238651:        RTL                       

CODE_238652:        LDA $20                   
CODE_238654:        BEQ CODE_238659           
CODE_238656:        JMP CODE_238758           

CODE_238659:        LDA $0746                 
CODE_23865C:        BNE CODE_238661           
CODE_23865E:        JMP CODE_238785           

CODE_238661:        LDA $0711                 
CODE_238664:        BNE CODE_23866B           
CODE_238666:        LDA #$20                  
CODE_238668:        STA $0711                 
CODE_23866B:        JSL CODE_23878D           
CODE_23866F:        LDA $0711                 
CODE_238672:        BEQ CODE_238679           
CODE_238674:        JSL CODE_238C1B           
CODE_238678:        RTL                       

CODE_238679:        DEC $0746                 
CODE_23867C:        LDA #$15                  
CODE_23867E:        STA $1203                 
CODE_238681:        LDY $0727                 
CODE_238684:        LDA.w DATA_218C49,y               
CODE_238687:        CLC                       
CODE_238688:        ADC $0746                 
CODE_23868B:        TAY                       
CODE_23868C:        LDA.w DATA_218C29,y               
CODE_23868F:        STA $0746                 
CODE_238692:        LDA #$01                  
CODE_238694:        STA $20                   
CODE_238696:        LDY $1600                 
CODE_238699:        LDX $0746                 
CODE_23869C:        LDA.w DATA_218B2A,x               
CODE_23869F:        STA $0A                   
CODE_2386A1:        STA $1602,y               
CODE_2386A4:        INY                       
CODE_2386A5:        LDA.w DATA_218B3B,x               
CODE_2386A8:        STA $0B                   
CODE_2386AA:        STA $1602,y               
CODE_2386AD:        INY                       
CODE_2386AE:        LDA #$00                  
CODE_2386B0:        STA $1602,y               
CODE_2386B3:        INY                       
CODE_2386B4:        LDA #$03                  
CODE_2386B6:        STA $1602,y               
CODE_2386B9:        INY                       
CODE_2386BA:        LDA $0746                 
CODE_2386BD:        ASL A                     
CODE_2386BE:        ASL A                     
CODE_2386BF:        ASL A                     
CODE_2386C0:        TAX                       
CODE_2386C1:        REP #$20                  
CODE_2386C3:        LDA.w DATA_218B6E,x               
CODE_2386C6:        STA $1602,y               
CODE_2386C9:        INY                       
CODE_2386CA:        INY                       
CODE_2386CB:        LDA.w DATA_218B70,x               
CODE_2386CE:        STA $1602,y               
CODE_2386D1:        INY                       
CODE_2386D2:        INY                       
CODE_2386D3:        LDA $0A                   
CODE_2386D5:        CLC                       
CODE_2386D6:        ADC #$2000                
CODE_2386D9:        STA $0A                   
CODE_2386DB:        STA $1602,y               
CODE_2386DE:        INY                       
CODE_2386DF:        INY                       
CODE_2386E0:        LDA #$0300                
CODE_2386E3:        STA $1602,y               
CODE_2386E6:        INY                       
CODE_2386E7:        INY                       
CODE_2386E8:        LDA.w DATA_218B72,x               
CODE_2386EB:        STA $1602,y               
CODE_2386EE:        INY                       
CODE_2386EF:        INY                       
CODE_2386F0:        LDA.w DATA_218B74,x               
CODE_2386F3:        STA $1602,y               
CODE_2386F6:        INY                       
CODE_2386F7:        INY                       
CODE_2386F8:        SEP #$20                  
CODE_2386FA:        LDA #$FF                  
CODE_2386FC:        STA $1602,y               
CODE_2386FF:        STY $1600                 
CODE_238702:        LDA $0746                 
CODE_238705:        ASL A                     
CODE_238706:        TAY                       
CODE_238707:        LDA.w DATA_218B4C,y               
CODE_23870A:        STA $0A                   
CODE_23870C:        INY                       
CODE_23870D:        LDA.w DATA_218B4C,y               
CODE_238710:        STA $0B                   
CODE_238712:        LDY $0A                   
CODE_238714:        LDA $1D00,y               
CODE_238717:        AND $0B                   
CODE_238719:        BNE CODE_238780           
CODE_23871B:        LDA $1D00,y               
CODE_23871E:        ORA $0B                   
CODE_238720:        STA $1D00,y               
CODE_238723:        LDA $1D40,y               
CODE_238726:        ORA $0B                   
CODE_238728:        STA $1D40,y               
CODE_23872B:        LDX $0746                 
CODE_23872E:        LDA.w DATA_218C07,x               
CODE_238731:        AND #$0F                  
CODE_238733:        ASL A                     
CODE_238734:        TAY                       
CODE_238735:        LDA.w DATA_218200,y               
CODE_238738:        CLC                       
CODE_238739:        ADC #$F0                  
CODE_23873B:        STA $0D                   
CODE_23873D:        LDA.w DATA_218200+1,y               
CODE_238740:        ADC #$00                  
CODE_238742:        STA $0E                   
CODE_238744:        LDA #$7E                  
CODE_238746:        STA $0F                   
CODE_238748:        LDA.w DATA_218C07,x               
CODE_23874B:        LSR A                     
CODE_23874C:        LSR A                     
CODE_23874D:        LSR A                     
CODE_23874E:        LSR A                     
CODE_23874F:        ORA.w DATA_218BF6,x               
CODE_238752:        TAY                       
CODE_238753:        LDA.w DATA_218C18,x               
CODE_238756:        STA [$0D],y               
CODE_238758:        LDA $15                   
CODE_23875A:        AND #$03                  
CODE_23875C:        BNE CODE_238766           
CODE_23875E:        INC $20                   
CODE_238760:        LDA $20                   
CODE_238762:        CMP #$05                  
CODE_238764:        BEQ CODE_238780           
CODE_238766:        LDY $0746                 
CODE_238769:        LDA.w DATA_218BF6,y               
CODE_23876C:        STA $00                   
CODE_23876E:        LDA.w DATA_218C07,y               
CODE_238771:        AND #$F0                  
CODE_238773:        STA $01                   
CODE_238775:        LDY $20                   
CODE_238777:        JSL CODE_29B11F           
CODE_23877B:        JSL CODE_238C1B           
CODE_23877F:        RTL                       

CODE_238780:        STZ $0746                 
CODE_238783:        STZ $20                   
CODE_238785:        INC $0729                 
CODE_238788:        JSL CODE_238C1B           
CODE_23878C:        RTL                       

CODE_23878D:        LDA $0711                 
CODE_238790:        AND #$1F                  
CODE_238792:        BNE CODE_2387B2           
CODE_238794:        LDA #$12                  
CODE_238796:        STA $0208                 
CODE_238799:        LDA #$01                  
CODE_23879B:        STA $0209                 
CODE_23879E:        LDA #$02                  
CODE_2387A0:        STA $0203                 
CODE_2387A3:        LDA #$20                  
CODE_2387A5:        STA $0204                 
CODE_2387A8:        LDA $0598                 
CODE_2387AB:        BEQ CODE_2387B2           
CODE_2387AD:        LDA #$01                  
CODE_2387AF:        STA $020B                 
CODE_2387B2:        LDA $0711                 
CODE_2387B5:        AND #$04                  
CODE_2387B7:        LSR A                     
CODE_2387B8:        TAX                       
CODE_2387B9:        REP #$20                  
CODE_2387BB:        LDA.l DATA_2387E0,x             
CODE_2387BF:        STA $1300                 
CODE_2387C2:        SEP #$20                  
CODE_2387C4:        LDA #$01                  
CODE_2387C6:        STA $1500                 
CODE_2387C9:        DEC $0711                 
CODE_2387CC:        BNE CODE_2387DF           
CODE_2387CE:        LDA #$17                  
CODE_2387D0:        STA $0208                 
CODE_2387D3:        STZ $0209                 
CODE_2387D6:        STZ $0203                 
CODE_2387D9:        STZ $0204                 
CODE_2387DC:        STZ $020B                 
CODE_2387DF:        RTL                       

DATA_2387E0:        db $00,$00,$FF,$7F

CODE_2387E4:        LDA $7E396D
CODE_2387E8:        BEQ CODE_2387F4
CODE_2387EA:        LDA #$0C                  
CODE_2387EC:        STA $0729                 
CODE_2387EF:        JSL CODE_238C1B           
CODE_2387F3:        RTL                       

CODE_2387F4:        JSL CODE_238C1B           
CODE_2387F8:        LDY #$0D                  
CODE_2387FA:        LDA $053C,y               
CODE_2387FD:        BNE CODE_23882D           
CODE_2387FF:        DEY                       
CODE_238800:        BPL CODE_2387FA           
CODE_238802:        LDA #$08                  
CODE_238804:        STA $053C                 
CODE_238807:        INC $0729                 
CODE_23880A:        LDY #$0D                  
CODE_23880C:        LDA $0500,y               
CODE_23880F:        CLC                       
CODE_238810:        ADC #$08                  
CODE_238812:        AND #$F0                  
CODE_238814:        STA $1EED,y               
CODE_238817:        LDA $050F,y               
CODE_23881A:        CLC                       
CODE_23881B:        ADC #$08                  
CODE_23881D:        AND #$F0                  
CODE_23881F:        STA $1EFB,y               
CODE_238822:        LDA $051E,y               
CODE_238825:        ADC #$00                  
CODE_238827:        STA $1F09,y               
CODE_23882A:        DEY                       
CODE_23882B:        BPL CODE_23880C           
CODE_23882D:        RTL                       

CODE_23882E:        LDA $0711                 
CODE_238831:        BNE CODE_238838           
CODE_238833:        LDA #$08                  
CODE_238835:        STA $0711                 
CODE_238838:        DEC $0711                 
CODE_23883B:        BNE CODE_23887F           
CODE_23883D:        LDX $0726                 
CODE_238840:        STZ $F2                   
CODE_238842:        STZ $F6                   
CODE_238844:        STZ $F3                   
CODE_238846:        STZ $F7                   
CODE_238848:        LDA #$FF                  
CODE_23884A:        STA $7E3950,x             
CODE_23884E:        LDA $7E396D               
CODE_238852:        BNE CODE_238879           
CODE_238854:        LDA $0727                 
CODE_238857:        CMP #$02                  
CODE_238859:        BNE CODE_238863           
CODE_23885B:        LDA $07BC                 
CODE_23885E:        EOR #$01                  
CODE_238860:        STA $07BC                 
CODE_238863:        LDA $072B                 
CODE_238866:        CMP #$01                  
CODE_238868:        BEQ CODE_238879           
CODE_23886A:        LDX $0726                 
CODE_23886D:        LDA #$01                  
CODE_23886F:        STA $073F,x               
CODE_238872:        LDA #$0F                  
CODE_238874:        STA $0729                 
CODE_238877:        BRA CODE_23887F           
CODE_238879:        INC $0729                 
CODE_23887C:        STZ $0728                 
CODE_23887F:        JSL CODE_238C1B           
CODE_238883:        RTL                       

CODE_238884:        LDA $0728                 
CODE_238887:        JSL CODE_20FB3A           ; ExecutePtrLong

PNTR_23888B:        dl CODE_238A0E
                    dl CODE_238A4E

CODE_238891:        LDA $0417                 
CODE_238894:        JSL CODE_20FB1F           ; ExecutePtrShort

PNTR_238898:        dw CODE_2388A6
                    dw CODE_2388A6
                    dw CODE_238922
                    dw CODE_238922
                    dw CODE_238951
                    dw CODE_238956
                    dw CODE_2389FE

CODE_2388A6:        LDX $20                   
CODE_2388A8:        LDA $24
CODE_2388AA:        CLC                       
CODE_2388AB:        ADC.w DATA_218C5A,x               
CODE_2388AE:        PHA                       
CODE_2388AF:        AND #$F0                  
CODE_2388B1:        LSR A                     
CODE_2388B2:        LSR A                     
CODE_2388B3:        LSR A                     
CODE_2388B4:        TAY                       
CODE_2388B5:        LDA.w DATA_218200,y               
CODE_2388B8:        CLC                       
CODE_2388B9:        ADC #$F0                  
CODE_2388BB:        STA $2E                   
CODE_2388BD:        LDA.w DATA_218200+1,y               
CODE_2388C0:        ADC #$00                  
CODE_2388C2:        STA $2F                   
CODE_2388C4:        PLA                       
CODE_2388C5:        AND #$0F                  
CODE_2388C7:        STA $04                   
CODE_2388C9:        LDX #$00                  
CODE_2388CB:        LDA $20                   
CODE_2388CD:        AND #$01                  
CODE_2388CF:        BEQ CODE_2388D3           
CODE_2388D1:        LDX #$06                  
CODE_2388D3:        LDY $04                   
CODE_2388D5:        LDA [$2E],y               
CODE_2388D7:        AND #$C0                  
CODE_2388D9:        STA $00                   
CODE_2388DB:        INY                       
CODE_2388DC:        LDA [$2E],y               
CODE_2388DE:        AND #$C0                  
CODE_2388E0:        STA $01                   
CODE_2388E2:        TYA                       
CODE_2388E3:        CLC                       
CODE_2388E4:        ADC #$0F                  
CODE_2388E6:        TAY                       
CODE_2388E7:        LDA [$2E],y               
CODE_2388E9:        AND #$C0                  
CODE_2388EB:        STA $02                   
CODE_2388ED:        INY                       
CODE_2388EE:        LDA [$2E],y               
CODE_2388F0:        AND #$C0                  
CODE_2388F2:        STA $03                   
CODE_2388F4:        LDA $00                   
CODE_2388F6:        LSR A                     
CODE_2388F7:        LSR A                     
CODE_2388F8:        ORA $01                   
CODE_2388FA:        LSR A                     
CODE_2388FB:        LSR A                     
CODE_2388FC:        ORA $02                   
CODE_2388FE:        LSR A                     
CODE_2388FF:        LSR A                     
CODE_238900:        ORA $03                   
CODE_238902:        STA $1EC0,x               
CODE_238905:        INX                       
CODE_238906:        LDA $04                   
CODE_238908:        CLC                       
CODE_238909:        ADC #$20                  
CODE_23890B:        STA $04                   
CODE_23890D:        AND #$F0                  
CODE_23890F:        CMP #$C0                  
CODE_238911:        BNE CODE_2388D3           
CODE_238913:        INC $20                   
CODE_238915:        LDA $20                   
CODE_238917:        AND #$01                  
CODE_238919:        BNE CODE_23891F           
CODE_23891B:        LDA #$00                  
CODE_23891D:        STA $20                   
CODE_23891F:        JMP CODE_23894C           

CODE_238922:        LDA $0417                 
CODE_238925:        CMP #$02                  
CODE_238927:        BNE CODE_23893D           
CODE_238929:        LDY #$12                  
CODE_23892B:        INC $20                   
CODE_23892D:        LDA $20                   
CODE_23892F:        CMP #$04                  
CODE_238931:        BNE CODE_23893A           
CODE_238933:        LDA #$00                  
CODE_238935:        STA $20                   
CODE_238937:        INC $0417                 
CODE_23893A:        JMP CODE_23894C           

CODE_23893D:        INC $20                   
CODE_23893F:        LDA $20                   
CODE_238941:        AND #$01                  
CODE_238943:        BNE CODE_23894C           
CODE_238945:        LDA #$00                  
CODE_238947:        STA $0417                 
CODE_23894A:        STA $20                   
CODE_23894C:        JSL CODE_238DD7           
CODE_238950:        RTL                       

CODE_238951:        STZ $20                   
CODE_238953:        INC $0417                 
CODE_238956:        LDY $20                   
CODE_238958:        LDA $24                   
CODE_23895A:        CLC                       
CODE_23895B:        ADC.w DATA_218C97,y               
CODE_23895E:        STA $24                   
CODE_238960:        AND #$F0                  
CODE_238962:        LSR A                     
CODE_238963:        LSR A                     
CODE_238964:        LSR A                     
CODE_238965:        TAY                       
CODE_238966:        LDA.w DATA_218200,y               
CODE_238969:        STA $2E                   
CODE_23896B:        LDA.w DATA_218200+1,y               
CODE_23896E:        STA $2F                   
CODE_238970:        INC $2F                   
CODE_238972:        LDA #$7E                  
CODE_238974:        STA $30                   
CODE_238976:        LDA $24                   
CODE_238978:        AND #$0F                  
CODE_23897A:        STA $00                   
CODE_23897C:        LDX #$00                  
CODE_23897E:        LDA $070A                 
CODE_238981:        ASL A                     
CODE_238982:        TAY                       
CODE_238983:        LDA.w DATA_21CE5A,y               
CODE_238986:        STA $0D                   
CODE_238988:        LDA.w DATA_21CE5A+1,y               
CODE_23898B:        STA $0E                   
CODE_23898D:        LDY $070A                 
CODE_238990:        LDA.w DATA_21CE80,y               
CODE_238993:        STA $0F                   
CODE_238995:        LDY $00                   
CODE_238997:        LDA [$2E],y               
CODE_238999:        REP #$30                  
CODE_23899B:        AND #$00FF                
CODE_23899E:        ASL A                     
CODE_23899F:        ASL A                     
CODE_2389A0:        ASL A                     
CODE_2389A1:        TAY                       
CODE_2389A2:        TXA                       
CODE_2389A3:        AND #$00FF                
CODE_2389A6:        TAX                       
CODE_2389A7:        LDA $20                   
CODE_2389A9:        AND #$0001                
CODE_2389AC:        BNE CODE_2389B2           
CODE_2389AE:        INY                       
CODE_2389AF:        INY                       
CODE_2389B0:        INY                       
CODE_2389B1:        INY                       
CODE_2389B2:        LDA [$0D],y               
CODE_2389B4:        STA $03C2,x               
CODE_2389B7:        INY                       
CODE_2389B8:        INY                       
CODE_2389B9:        LDA [$0D],y               
CODE_2389BB:        STA $03C4,x               
CODE_2389BE:        INX                       
CODE_2389BF:        INX                       
CODE_2389C0:        INX                       
CODE_2389C1:        INX                       
CODE_2389C2:        SEP #$30                  
CODE_2389C4:        LDA $00                   
CODE_2389C6:        CLC                       
CODE_2389C7:        ADC #$10                  
CODE_2389C9:        STA $00                   
CODE_2389CB:        AND #$F0                  
CODE_2389CD:        CMP #$B0                  
CODE_2389CF:        BNE CODE_23897E           
CODE_2389D1:        LDA $24                   
CODE_2389D3:        AND #$0F                  
CODE_2389D5:        ASL A                     
CODE_2389D6:        TAY                       
CODE_2389D7:        LDA $20                   
CODE_2389D9:        AND #$01                  
CODE_2389DB:        BNE CODE_2389DE           
CODE_2389DD:        INY                       
CODE_2389DE:        STY $0381                 
CODE_2389E1:        LDX #$00                  
CODE_2389E3:        LDA $24                   
CODE_2389E5:        AND #$10                  
CODE_2389E7:        BEQ CODE_2389EB           
CODE_2389E9:        LDX #$04                  
CODE_2389EB:        STX $0380                 
CODE_2389EE:        INC $20                   
CODE_2389F0:        LDA $20                   
CODE_2389F2:        CMP #$04                  
CODE_2389F4:        BNE CODE_2389FB           
CODE_2389F6:        STZ $20                   
CODE_2389F8:        INC $0417                 
CODE_2389FB:        JMP CODE_23894C           

CODE_2389FE:        INC $20                   
CODE_238A00:        LDA $20                   
CODE_238A02:        AND #$01                  
CODE_238A04:        BNE CODE_238A0B           
CODE_238A06:        STZ $0417                 
CODE_238A09:        STZ $20                   
CODE_238A0B:        JMP CODE_23894C           

CODE_238A0E:        INC $0728                 
CODE_238A11:        JSL CODE_238C1B           
CODE_238A15:        RTL                       

CODE_238A16:        LDX $0726                 
CODE_238A19:        LDA #$00                  
CODE_238A1B:        STA $072C                 
CODE_238A1E:        STA $7E3994               
CODE_238A22:        STA $073D,x               
CODE_238A25:        STA $070F                 
CODE_238A28:        JSL CODE_238C1B           
CODE_238A2C:        RTS                       

CODE_238A2D:        LDA #$03                  
CODE_238A2F:        STA $0713                 
CODE_238A32:        LDA #$80                  
CODE_238A34:        STA $0711                 
CODE_238A37:        LDX $0726                 
CODE_238A3A:        LDA #$00                  
CODE_238A3C:        STA $072C                 
CODE_238A3F:        STA $7E3994               
CODE_238A43:        STA $073D,x               
CODE_238A46:        INC $0728                 
CODE_238A49:        JSL CODE_238C1B           
CODE_238A4D:        RTS                       

CODE_238A4E:        LDA #$00                  
CODE_238A50:        STA $7E396D               
CODE_238A54:        STA $7E3972               
CODE_238A58:        LDX $0726                 
CODE_238A5B:        LDA $49,x                 
CODE_238A5D:        BEQ CODE_238A62           
CODE_238A5F:        JMP CODE_238BD5           

CODE_238A62:        LDA $0710                 
CODE_238A65:        BEQ CODE_238A6A           
CODE_238A67:        BRL CODE_238B9D           

CODE_238A6A:        LDA $18                   
CODE_238A6C:        AND #$0F                  
CODE_238A6E:        BEQ CODE_238A75           
CODE_238A70:        LDA #$01                  
CODE_238A72:        STA $1200                 
CODE_238A75:        JSL CODE_238DD8           
CODE_238A79:        AND #$C0                  
CODE_238A7B:        CLC                       
CODE_238A7C:        ROL A                     
CODE_238A7D:        ROL A                     
CODE_238A7E:        ROL A                     
CODE_238A7F:        TAY                       
CODE_238A80:        LDA $B3                   
CODE_238A82:        CMP $1E9A,y               
CODE_238A85:        BCC CODE_238A9F           
CODE_238A87:        LDA $17                   
CODE_238A89:        AND #$0F                  
CODE_238A8B:        BEQ CODE_238A9F           
CODE_238A8D:        LDY #$03                  
CODE_238A8F:        CMP.w DATA_218DB4,y               
CODE_238A92:        BEQ CODE_238A97           
CODE_238A94:        DEY                       
CODE_238A95:        BNE CODE_238A8F           
CODE_238A97:        LDA $1DD5                 
CODE_238A9A:        CMP.w DATA_218DB8,y               
CODE_238A9D:        BNE CODE_238AA2           
CODE_238A9F:        BRL CODE_238B1A           

CODE_238AA2:        LDA $1DD5                 
CODE_238AA5:        PHA                       
CODE_238AA6:        JSR CODE_238E15           
CODE_238AA9:        PLA                       
CODE_238AAA:        STA $1DD5                 
CODE_238AAD:        LDA $1203                 
CODE_238AB0:        BEQ CODE_238B17           
CODE_238AB2:        LDA $0429                 
CODE_238AB5:        CMP #$07                  
CODE_238AB7:        BEQ CODE_238ACB           
CODE_238AB9:        LDX $0726                 
CODE_238ABC:        LDA #$00                  
CODE_238ABE:        STA $49,x                 
CODE_238AC0:        STA $1203                 
CODE_238AC3:        LDA #$01                  
CODE_238AC5:        STA $1200                 
CODE_238AC8:        JMP CODE_238B27           

CODE_238ACB:        LDA $03                   
CODE_238ACD:        AND #$0F                  
CODE_238ACF:        STA $1DD5                 
CODE_238AD2:        LDX $0726                 
CODE_238AD5:        LDA $0747,x               
CODE_238AD8:        STA $0429                 
CODE_238ADB:        REP #$30                  
CODE_238ADD:        LDA $0429                 
CODE_238AE0:        AND #$00FF                
CODE_238AE3:        ASL A                     
CODE_238AE4:        STA $D8                   
CODE_238AE6:        LDA.l DATA_29C81D,x             
CODE_238AEA:        AND #$00FF                
CODE_238AED:        ASL A                     
CODE_238AEE:        CLC                       
CODE_238AEF:        ADC $D8                   
CODE_238AF1:        TAX                       
CODE_238AF2:        LDA.l DATA_29C7E3,x             
CODE_238AF6:        PHB                       
CODE_238AF7:        TAX                       
CODE_238AF8:        LDY #$14E0                
CODE_238AFB:        LDA #$001F                
CODE_238AFE:        MVN $3C00                 
CODE_238B01:        PLB                       
CODE_238B02:        LDX #$001E                
CODE_238B05:        LDA $14E0,x               
CODE_238B08:        STA $7FC500,x             
CODE_238B0C:        DEX                       
CODE_238B0D:        DEX                       
CODE_238B0E:        BPL CODE_238B05           
CODE_238B10:        SEP #$30                  
CODE_238B12:        LDA #$01                  
CODE_238B14:        STA $1500                 
CODE_238B17:        JMP CODE_238B1D           

CODE_238B1A:        JSR CODE_238E15           
CODE_238B1D:        LDX $0726                 
CODE_238B20:        LDA $49,x                 
CODE_238B22:        BEQ CODE_238B27           
CODE_238B24:        JMP CODE_238BD5           

CODE_238B27:        LDA $B3                   
CODE_238B29:        CMP #$BC                  
CODE_238B2B:        BNE CODE_238B3C           
CODE_238B2D:        LDX $0726                 
CODE_238B30:        LDA $F8,x                 
CODE_238B32:        BMI CODE_238B4D           
CODE_238B34:        LDA $F6,x                 
CODE_238B36:        AND #$80                  
CODE_238B38:        BNE CODE_238B4D           
CODE_238B3A:        BRA CODE_238B4A           

CODE_238B3C:        LDA $F8                   
CODE_238B3E:        ORA $F9                   
CODE_238B40:        BMI CODE_238B4D           
CODE_238B42:        LDA $F6                   
CODE_238B44:        ORA $F7                   
CODE_238B46:        AND #$80                  
CODE_238B48:        BNE CODE_238B4D           
CODE_238B4A:        JMP CODE_238BD0           

CODE_238B4D:        LDA $072B                 
CODE_238B50:        CMP #$02                  
CODE_238B52:        BNE CODE_238BA7           
CODE_238B54:        LDX $0726                 
CODE_238B57:        TXA                       
CODE_238B58:        EOR #$01                  
CODE_238B5A:        TAY                       
CODE_238B5B:        LDA $0736,y               
CODE_238B5E:        CMP #$FF                  
CODE_238B60:        BEQ CODE_238BA7           
CODE_238B62:        LDA $45,x                 
CODE_238B64:        CMP $0045,y               
CODE_238B67:        BNE CODE_238BA7           
CODE_238B69:        LDA $43,x                 
CODE_238B6B:        CMP $0043,y               
CODE_238B6E:        BNE CODE_238BA7           
CODE_238B70:        LDA $47,x                 
CODE_238B72:        CMP $0047,y               
CODE_238B75:        BNE CODE_238BA7           
CODE_238B77:        LDA $701FF4               
CODE_238B7B:        BNE CODE_238BA2           
CODE_238B7D:        LDA $701FF6               
CODE_238B81:        CMP #$02                  
CODE_238B83:        BNE CODE_238BA2           
CODE_238B85:        LDA #$12                  
CODE_238B87:        STA $1D                   
CODE_238B89:        LDA #$10                  
CODE_238B8B:        STA $0729                 
CODE_238B8E:        LDX $0726                 
CODE_238B91:        LDA #$00                  
CODE_238B93:        STA $073F,x               
CODE_238B96:        STA $0728                 
CODE_238B99:        STA $7E396D               
CODE_238B9D:        JSL CODE_238C1B           
CODE_238BA1:        RTL                       

CODE_238BA2:        LDA #$2A                  
CODE_238BA4:        STA $1203                 
CODE_238BA7:        LDX $0726                 
CODE_238BAA:        LDA $F8,x                 
CODE_238BAC:        BMI CODE_238BB4           
CODE_238BAE:        LDA $18                   
CODE_238BB0:        AND #$80                  
CODE_238BB2:        BEQ CODE_238BD0           
CODE_238BB4:        LDA $B3                   
CODE_238BB6:        LDY #$0A                  
CODE_238BB8:        CMP.w DATA_218CD9,y               
CODE_238BBB:        BEQ CODE_238B89           
CODE_238BBD:        DEY                       
CODE_238BBE:        BPL CODE_238BB8           
CODE_238BC0:        LDA $B3                   
CODE_238BC2:        AND #$C0                  
CODE_238BC4:        CLC                       
CODE_238BC5:        ROL A                     
CODE_238BC6:        ROL A                     
CODE_238BC7:        ROL A                     
CODE_238BC8:        TAY                       
CODE_238BC9:        LDA $B3                   
CODE_238BCB:        CMP $1E9A,y               
CODE_238BCE:        BCS CODE_238B89                   
CODE_238BD0:        JSL CODE_238C1B           
CODE_238BD4:        RTL                       

CODE_238BD5:        DEC $49,x                 
CODE_238BD7:        DEC $49,x                 
CODE_238BD9:        LDA $4B,x                 
CODE_238BDB:        LDY $0597                 
CODE_238BDE:        BEQ CODE_238BE5           
CODE_238BE0:        CLC                       
CODE_238BE1:        ADC #$1B                  
CODE_238BE3:        INC $49,x                 
CODE_238BE5:        TAY                       
CODE_238BE6:        LDA $43,x                 
CODE_238BE8:        CLC                       
CODE_238BE9:        ADC.w DATA_218C9B,y               
CODE_238BEC:        STA $43,x                 
CODE_238BEE:        LDA $47,x                 
CODE_238BF0:        CLC                       
CODE_238BF1:        ADC.w DATA_218CA4,y               
CODE_238BF4:        STA $47,x                 
CODE_238BF6:        LDA $45,x                 
CODE_238BF8:        ADC.w DATA_218CAD,y               
CODE_238BFB:        STA $45,x                 
CODE_238BFD:        LDA $49,x                 
CODE_238BFF:        AND #$1F                  
CODE_238C01:        BNE CODE_238C1B           
CODE_238C03:        JSL CODE_238DD8           
CODE_238C07:        CMP #$E6                  
CODE_238C09:        BNE CODE_238C1B           
CODE_238C0B:        LDX $0726                 
CODE_238C0E:        LDA $0783,x               
CODE_238C11:        AND #$01                  
CODE_238C13:        BNE CODE_238C1B           
CODE_238C15:        INC $0729                 
CODE_238C18:        JMP CODE_238B8E           

CODE_238C1B:        LDY $0726                 
CODE_238C1E:        LDA $0052,y               
CODE_238C21:        STA $02                   
CODE_238C23:        JSR CODE_238C27           
CODE_238C26:        RTL                       

CODE_238C27:        LDX $0726                 
CODE_238C2A:        LDA $43,x                 
CODE_238C2C:        CMP #$F0                  
CODE_238C2E:        BEQ CODE_238C39           
CODE_238C30:        STA $0889                 
CODE_238C33:        SEC                       
CODE_238C34:        SBC #$10                  
CODE_238C36:        STA $0885                 
CODE_238C39:        LDA $47,x                 
CODE_238C3B:        SEC                       
CODE_238C3C:        SBC $0210                 
CODE_238C3F:        STA $0884                 
CODE_238C42:        STA $0888                 
CODE_238C45:        LDA $0429                 
CODE_238C48:        ASL A                     
CODE_238C49:        TAX                       
CODE_238C4A:        LDA $15                   
CODE_238C4C:        AND #$08                  
CODE_238C4E:        BEQ CODE_238C55           
CODE_238C50:        TXA                       
CODE_238C51:        CLC                       
CODE_238C52:        ADC #$12                  
CODE_238C54:        TAX                       
CODE_238C55:        LDA $0726                 
CODE_238C58:        BEQ CODE_238C6A           
CODE_238C5A:        LDA.w DATA_218D54,x               
CODE_238C5D:        ORA #$01                  
CODE_238C5F:        STA $0887                 
CODE_238C62:        LDA.w DATA_218D30,x               
CODE_238C65:        STA $0886                 
CODE_238C68:        BRA CODE_238C76           

CODE_238C6A:        LDA.w DATA_218D54,x               
CODE_238C6D:        STA $0887                 
CODE_238C70:        LDA.w DATA_218D0C,x               
CODE_238C73:        STA $0886                 
CODE_238C76:        LDA $0726                 
CODE_238C79:        BEQ CODE_238C8B           
CODE_238C7B:        LDA.w DATA_218D31,x               
CODE_238C7E:        STA $088A                 
CODE_238C81:        LDA.w DATA_218D55,x               
CODE_238C84:        ORA #$01                  
CODE_238C86:        STA $088B                 
CODE_238C89:        BRA CODE_238C97           

CODE_238C8B:        LDA.w DATA_218D0D,x               
CODE_238C8E:        STA $088A                 
CODE_238C91:        LDA.w DATA_218D55,x               
CODE_238C94:        STA $088B                 
CODE_238C97:        LDA $0428                 
CODE_238C9A:        BEQ CODE_238CAD           
CODE_238C9C:        DEC $02C6                 
CODE_238C9F:        BPL CODE_238CA9           
CODE_238CA1:        LDA #$03                  
CODE_238CA3:        STA $02C6                 
CODE_238CA6:        INC $02C7                 
CODE_238CA9:        JSL CODE_29CDB2           
CODE_238CAD:        LDA #$02                  
CODE_238CAF:        STA $0A41                 
CODE_238CB2:        STA $0A42                 
CODE_238CB5:        LDA $0886                 
CODE_238CB8:        CMP #$26                  
CODE_238CBA:        BNE CODE_238CC1           
CODE_238CBC:        LDA #$F0                  
CODE_238CBE:        STA $0885                 
CODE_238CC1:        LDX $0726                 
CODE_238CC4:        LDA $005A,x               
CODE_238CC7:        BNE CODE_238CEE           
CODE_238CC9:        LDA $0729                 
CODE_238CCC:        CMP #$06                  
CODE_238CCE:        BCC CODE_238D02           
CODE_238CD0:        CMP #$0D                  
CODE_238CD2:        BCC CODE_238CD8           
CODE_238CD4:        CMP #$0F                  
CODE_238CD6:        BNE CODE_238D02           
CODE_238CD8:        LDX $0726                 
CODE_238CDB:        LDA.w DATA_218D78,x               
CODE_238CDE:        STA $088A                 
CODE_238CE1:        LDA.w DATA_218D7A,x               
CODE_238CE4:        STA $088B                 
CODE_238CE7:        LDA #$F0                  
CODE_238CE9:        STA $0885                 
CODE_238CEC:        BRA CODE_238D02           

CODE_238CEE:        DEC $64                   
CODE_238CF0:        LDA $64                   
CODE_238CF2:        AND #$06                  
CODE_238CF4:        LSR A                     
CODE_238CF5:        TAY                       
CODE_238CF6:        LDA.w DATA_218D80,y               
CODE_238CF9:        STA $088A                 
CODE_238CFC:        LDA.w DATA_218D84,y               
CODE_238CFF:        STA $088B                 
CODE_238D02:        LDA $0729                 
CODE_238D05:        CMP #$02                  
CODE_238D07:        BEQ CODE_238D15           
CODE_238D09:        LDX $0726                 
CODE_238D0C:        LDA $073F,x               
CODE_238D0F:        BNE CODE_238D53           
CODE_238D11:        LDA $59                   
CODE_238D13:        BNE CODE_238D53           
CODE_238D15:        LDA $0710                 
CODE_238D18:        BNE CODE_238D53           
CODE_238D1A:        LDA $0727                 
CODE_238D1D:        CMP #$07                  
CODE_238D1F:        BEQ CODE_238D53           
CODE_238D21:        CMP #$04                  
CODE_238D23:        BEQ CODE_238D53           
CODE_238D25:        LDA $0884                 
CODE_238D28:        CMP #$D0                  
CODE_238D2A:        BCC CODE_238D3A           
CODE_238D2C:        LDY $0727                 
CODE_238D2F:        LDA $23                   
CODE_238D31:        CMP.w DATA_218D04,y               
CODE_238D34:        BEQ CODE_238D53           
CODE_238D36:        LDX #$00                  
CODE_238D38:        BRA CODE_238D47           

CODE_238D3A:        LDA $24                   
CODE_238D3C:        BEQ CODE_238D53           
CODE_238D3E:        LDA $0884                 
CODE_238D41:        CMP #$21                  
CODE_238D43:        BCS CODE_238D53                   
CODE_238D45:        LDX #$01                  
CODE_238D47:        STX $25                   
CODE_238D49:        LDA #$80                  
CODE_238D4B:        STA $0710                 
CODE_238D4E:        LDA #$04                  
CODE_238D50:        STA $0417                 
CODE_238D53:        LDA $072B                 
CODE_238D56:        CMP #$01                  
CODE_238D58:        BEQ CODE_238D9E           
CODE_238D5A:        LDA $0727                 
CODE_238D5D:        CMP #$08                  
CODE_238D5F:        BEQ CODE_238D9E           
CODE_238D61:        LDA $0726                 
CODE_238D64:        EOR #$01                  
CODE_238D66:        TAX                       
CODE_238D67:        LDA $0736,x               
CODE_238D6A:        BMI CODE_238D9E           
CODE_238D6C:        LDA $47,x                 
CODE_238D6E:        SEC                       
CODE_238D6F:        SBC $0210                 
CODE_238D72:        BEQ CODE_238D9E           
CODE_238D74:        LDA $45,x                 
CODE_238D76:        SBC #$00                  
CODE_238D78:        CMP $12                   
CODE_238D7A:        BNE CODE_238D9E           
CODE_238D7C:        LDA $43,x                 
CODE_238D7E:        STA $0895                 
CODE_238D81:        LDA.w DATA_218D78,x               
CODE_238D84:        STA $0896                 
CODE_238D87:        LDA.w DATA_218D7A,x               
CODE_238D8A:        STA $0897                 
CODE_238D8D:        LDA $47,x                 
CODE_238D8F:        SEC                       
CODE_238D90:        SBC $0210                 
CODE_238D93:        SEC                       
CODE_238D94:        SBC #$04                  
CODE_238D96:        STA $0894                 
CODE_238D99:        LDA #$02                  
CODE_238D9B:        STA $0A45                 
CODE_238D9E:        LDA $0729                 
CODE_238DA1:        CMP #$01                  
CODE_238DA3:        BCC CODE_238DA9           
CODE_238DA5:        JSL CODE_29B7AE           
CODE_238DA9:        LDA $0727                 
CODE_238DAC:        CMP #$08                  
CODE_238DAE:        BNE CODE_238DB3           
CODE_238DB0:        JSR CODE_238DB4           
CODE_238DB3:        RTS                       

CODE_238DB4:        LDY #$1B                  
CODE_238DB6:        LDA.w DATA_218D98,y               
CODE_238DB9:        STA $0898,y               
CODE_238DBC:        DEY                       
CODE_238DBD:        BPL CODE_238DB6           
CODE_238DBF:        LDA #$00                  
CODE_238DC1:        STA $0A46                 
CODE_238DC4:        STA $0A47                 
CODE_238DC7:        STA $0A48                 
CODE_238DCA:        STA $0A49                 
CODE_238DCD:        STA $0A4A                 
CODE_238DD0:        STA $0A4B                 
CODE_238DD3:        STA $0A4C                 
CODE_238DD6:        RTS                       

CODE_238DD7:        RTL                       

CODE_238DD8:        LDX $0726                 
CODE_238DDB:        LDA $45,x                 
CODE_238DDD:        ASL A                     
CODE_238DDE:        TAY                       
CODE_238DDF:        LDA #$7E                  
CODE_238DE1:        STA $30                   
CODE_238DE3:        LDA.w DATA_218200,y               
CODE_238DE6:        STA $2E                   
CODE_238DE8:        LDA.w DATA_218200+1,y               
CODE_238DEB:        INC A                     
CODE_238DEC:        STA $2F                   
CODE_238DEE:        LDA $47,x                 
CODE_238DF0:        LSR A                     
CODE_238DF1:        LSR A                     
CODE_238DF2:        LSR A                     
CODE_238DF3:        LSR A                     
CODE_238DF4:        STA $00                   
CODE_238DF6:        LDA $43,x                 
CODE_238DF8:        SEC                       
CODE_238DF9:        SBC #$10                  
CODE_238DFB:        AND #$F0                  
CODE_238DFD:        ORA $00                   
CODE_238DFF:        TAY                       
CODE_238E00:        LDA [$2E],y               
CODE_238E02:        STA $B3                   
CODE_238E04:        RTL                       

CODE_238E05:        LDX $0726                 
CODE_238E08:        LDA $4B,x                 
CODE_238E0A:        EOR #$03                  
CODE_238E0C:        CMP #$03                  
CODE_238E0E:        BNE CODE_238E12           
CODE_238E10:        EOR #$0F                  
CODE_238E12:        STA $4B,x                 
CODE_238E14:        RTS                       

CODE_238E15:        LDA $17                   
CODE_238E17:        STA $03                   
CODE_238E19:        LDA $0597                 
CODE_238E1C:        BNE CODE_238E2C           
CODE_238E1E:        LDX $0726                 
CODE_238E21:        LDA $7E3950,x             
CODE_238E25:        BEQ CODE_238E2C           
CODE_238E27:        CMP #$18                  
CODE_238E29:        BEQ CODE_238E2C           
CODE_238E2B:        RTS                       

CODE_238E2C:        LDY #$03                  
CODE_238E2E:        LDA $03                   
CODE_238E30:        AND #$0F                  
CODE_238E32:        CMP.w DATA_218DB4,y               
CODE_238E35:        BEQ CODE_238E3B           
CODE_238E37:        DEY                       
CODE_238E38:        BPL CODE_238E32           
CODE_238E3A:        RTS                       

CODE_238E3B:        LDY #$00                  
CODE_238E3D:        LSR A                     
CODE_238E3E:        BCS CODE_238E43                   
CODE_238E40:        INY                       
CODE_238E41:        BNE CODE_238E3D           
CODE_238E43:        TYA                       
CODE_238E44:        STA $04                   
CODE_238E46:        ASL A                     
CODE_238E47:        TAX                       
CODE_238E48:        LDA.w DATA_218DBC,x               
CODE_238E4B:        STA $00                   
CODE_238E4D:        LDA.w DATA_218DBD,x               
CODE_238E50:        STA $01                   
CODE_238E52:        LDA #$21                  
CODE_238E54:        STA $02                   
CODE_238E56:        JSL CODE_238EFC           
CODE_238E5A:        LDY #$08                  
CODE_238E5C:        CMP [$00],y               
CODE_238E5E:        BEQ CODE_238ED1           
CODE_238E60:        DEY                       
CODE_238E61:        BPL CODE_238E5C           
CODE_238E63:        LDY $0597                 
CODE_238E66:        BEQ CODE_238E7C           
CODE_238E68:        CMP #$4B                  
CODE_238E6A:        BNE CODE_238E73           
CODE_238E6C:        LDA #$00                  
CODE_238E6E:        STA $0597                 
CODE_238E71:        BEQ CODE_238ECD           
CODE_238E73:        CMP #$82                  
CODE_238E75:        BCC CODE_238EAB           
CODE_238E77:        CMP #$AA                  
CODE_238E79:        BCC CODE_238ECD           
CODE_238E7B:        RTS                       

CODE_238E7C:        LDY $00B3                 
CODE_238E7F:        CPY #$4B                  
CODE_238E81:        BNE CODE_238EAB           
CODE_238E83:        LDY $04                   
CODE_238E85:        LDX $0726                 
CODE_238E88:        LDA $43,x                 
CODE_238E8A:        CLC                       
CODE_238E8B:        ADC.w DATA_218DF0,y               
CODE_238E8E:        STA $00                   
CODE_238E90:        LDA $47,x                 
CODE_238E92:        CLC                       
CODE_238E93:        ADC.w DATA_218DF4,y               
CODE_238E96:        STA $01                   
CODE_238E98:        LDA $45,x                 
CODE_238E9A:        ADC.w DATA_218DF8,y               
CODE_238E9D:        STA $04                   
CODE_238E9F:        LDX #$0D                  
CODE_238EA1:        LDY $1F17,x               
CODE_238EA4:        CPY #$10                  
CODE_238EA6:        BEQ CODE_238EB8           
CODE_238EA8:        DEX                       
CODE_238EA9:        BNE CODE_238EA1           
CODE_238EAB:        LDA $0018                 
CODE_238EAE:        AND #$0F                  
CODE_238EB0:        BEQ CODE_238EB7           
CODE_238EB2:        LDA #$01                  
CODE_238EB4:        STA $1200                 
CODE_238EB7:        RTS                       

CODE_238EB8:        LDY $0500,x               
CODE_238EBB:        CPY $00                   
CODE_238EBD:        BNE CODE_238EAB           
CODE_238EBF:        LDY $050F,x               
CODE_238EC2:        CPY $01                   
CODE_238EC4:        BNE CODE_238EAB           
CODE_238EC6:        LDY $051E,x               
CODE_238EC9:        CPY $04                   
CODE_238ECB:        BNE CODE_238EAB           
CODE_238ECD:        LDA #$10                  
CODE_238ECF:        BNE CODE_238EE2           
CODE_238ED1:        LDY $04                   
CODE_238ED3:        CMP.w DATA_218DE8,y               
CODE_238ED6:        BNE CODE_238EE0           
CODE_238ED8:        LDA $07BC                 
CODE_238EDB:        CMP.w DATA_218DEC,y               
CODE_238EDE:        BNE CODE_238EF8           
CODE_238EE0:        LDA #$20                  
CODE_238EE2:        LDX $0726                 
CODE_238EE5:        STA $49,x                 
CODE_238EE7:        LDA $03                   
CODE_238EE9:        AND #$0F                  
CODE_238EEB:        STA $4B,x                 
CODE_238EED:        STA $1DD5                 
CODE_238EF0:        LDX #$23                  
CODE_238EF2:        STX $1203                 
CODE_238EF5:        STZ $1200                 
CODE_238EF8:        RTS                       

DATA_238EF9:        db $AA,$AF,$B7

CODE_238EFC:        LDX $0726
CODE_238EFF:        LDA $43,x
CODE_238F01:        CLC
CODE_238F02:        ADC.w DATA_218DFC,y               
CODE_238F05:        AND #$F0                  
CODE_238F07:        STA $0E                   
CODE_238F09:        LDA $47,x                 
CODE_238F0B:        CLC                       
CODE_238F0C:        ADC.w DATA_218E04,y               
CODE_238F0F:        STA $0F                   
CODE_238F11:        LDA $45,x                 
CODE_238F13:        ADC.w DATA_218E00,y               
CODE_238F16:        ASL A                     
CODE_238F17:        TAX                       
CODE_238F18:        LDA.w DATA_218200,x               
CODE_238F1B:        STA $2E                   
CODE_238F1D:        STA $D8                   
CODE_238F1F:        LDA.w DATA_218200+1,x               
CODE_238F22:        INC A                     
CODE_238F23:        STA $2F                   
CODE_238F25:        CLC                       
CODE_238F26:        ADC #$20                  
CODE_238F28:        STA $D9                   
CODE_238F2A:        LDA #$7E                  
CODE_238F2C:        STA $30                   
CODE_238F2E:        STA $DA                   
CODE_238F30:        LDA $0F                   
CODE_238F32:        LSR A                     
CODE_238F33:        LSR A                     
CODE_238F34:        LSR A                     
CODE_238F35:        LSR A                     
CODE_238F36:        ORA $0E                   
CODE_238F38:        TAY                       
CODE_238F39:        PHX                       
CODE_238F3A:        LDA [$2E],y               
CODE_238F3C:        TAX                       
CODE_238F3D:        PHA                       
CODE_238F3E:        LDA [$D8],y               
CODE_238F40:        BEQ CODE_238F48           
CODE_238F42:        PLA                       
CODE_238F43:        LDA.l DATA_238EF9,x             
CODE_238F47:        PHA                       
CODE_238F48:        PLA                       
CODE_238F49:        PLX                       
CODE_238F4A:        RTL                       

CODE_238F4B:        STA $1059                 
CODE_238F4E:        STY $1058                 
CODE_238F51:        STX $105B                 
CODE_238F54:        LDY #$00                  
CODE_238F56:        LDX #$00                  
CODE_238F58:        LDA $105B                 
CODE_238F5B:        AND #$03                  
CODE_238F5D:        BEQ CODE_238F85           
CODE_238F5F:        LDY #$86                  
CODE_238F61:        STY $02                   
CODE_238F63:        AND #$02                  
CODE_238F65:        BNE CODE_238F68           
CODE_238F67:        INX                       
CODE_238F68:        LDA $105E                 
CODE_238F6B:        BEQ CODE_238F6F           
CODE_238F6D:        INX                       
CODE_238F6E:        INX                       
CODE_238F6F:        LDA $1059                 
CODE_238F72:        CLC                       
CODE_238F73:        ADC.w DATA_218E08,x               
CODE_238F76:        STA $105C                 
CODE_238F79:        LDA $1058                 
CODE_238F7C:        SEC                       
CODE_238F7D:        SBC #$10                  
CODE_238F7F:        STA $105D                 
CODE_238F82:        JMP CODE_238FAD           

CODE_238F85:        LDY #$06                  
CODE_238F87:        STY $02                   
CODE_238F89:        LDX #$00                  
CODE_238F8B:        LDA $105B                 
CODE_238F8E:        AND #$08                  
CODE_238F90:        BNE CODE_238F93           
CODE_238F92:        INX                       
CODE_238F93:        LDA $105E                 
CODE_238F96:        BEQ CODE_238F9A           
CODE_238F98:        INX                       
CODE_238F99:        INX                       
CODE_238F9A:        LDA $1058                 
CODE_238F9D:        CLC                       
CODE_238F9E:        ADC.w DATA_218E0C,x               
CODE_238FA1:        STA $105D                 
CODE_238FA4:        LDA $1059                 
CODE_238FA7:        SEC                       
CODE_238FA8:        SBC #$10                  
CODE_238FAA:        STA $105C                 
CODE_238FAD:        LDA $105D                 
CODE_238FB0:        SEC                       
CODE_238FB1:        SBC #$10                  
CODE_238FB3:        LDX $105C                 
CODE_238FB6:        JSR CODE_2390AA           
CODE_238FB9:        LDA $0E                   
CODE_238FBB:        STA $1047                 
CODE_238FBE:        LDA $0F                   
CODE_238FC0:        STA $104B                 
CODE_238FC3:        JSR CODE_239052           
CODE_238FC6:        LDA $1047                 
CODE_238FC9:        STA $1051                 
CODE_238FCC:        LDA $104B                 
CODE_238FCF:        STA $1053                 
CODE_238FD2:        JSR CODE_238FDE           
CODE_238FD5:        LDA #$FF                  
CODE_238FD7:        STA $1602,y               
CODE_238FDA:        STY $1600                 
CODE_238FDD:        RTL                       

CODE_238FDE:        LDA $105B                 
CODE_238FE1:        AND #$03                  
CODE_238FE3:        BNE CODE_238FEA           
CODE_238FE5:        LDA #$01                  
CODE_238FE7:        TAX                       
CODE_238FE8:        BNE CODE_238FEE           
CODE_238FEA:        LDA #$20                  
CODE_238FEC:        LDX #$10                  
CODE_238FEE:        STA $05                   
CODE_238FF0:        STX $06                   
CODE_238FF2:        LDY $1600                 
CODE_238FF5:        LDX #$05                  
CODE_238FF7:        LDA $1051                 
CODE_238FFA:        STA $1602,y               
CODE_238FFD:        INY                       
CODE_238FFE:        LDA $1053                 
CODE_239001:        STA $1602,y               
CODE_239004:        INY                       
CODE_239005:        LDA $02                   
CODE_239007:        AND #$C0                  
CODE_239009:        STA $1602,y               
CODE_23900C:        INY                       
CODE_23900D:        LDA $02                   
CODE_23900F:        AND #$3F                  
CODE_239011:        ASL A                     
CODE_239012:        DEC A                     
CODE_239013:        STA $1602,y               
CODE_239016:        INY                       
CODE_239017:        LDA $105E                 
CODE_23901A:        BEQ CODE_239025           
CODE_23901C:        LDA #$00                  
CODE_23901E:        STA $1603,y               
CODE_239021:        LDA #$FF                  
CODE_239023:        BNE CODE_23902A           
CODE_239025:        JSR CODE_239068           
CODE_239028:        BRA CODE_23902D           

CODE_23902A:        STA $1602,y               
CODE_23902D:        INY                       
CODE_23902E:        INY                       
CODE_23902F:        LDA $1053                 
CODE_239032:        CLC                       
CODE_239033:        ADC $05                   
CODE_239035:        STA $1053                 
CODE_239038:        LDA $1051                 
CODE_23903B:        ADC #$00                  
CODE_23903D:        STA $1051                 
CODE_239040:        TXA                       
CODE_239041:        AND #$01                  
CODE_239043:        BNE CODE_23904E           
CODE_239045:        LDA $105A                 
CODE_239048:        CLC                       
CODE_239049:        ADC $06                   
CODE_23904B:        STA $105A                 
CODE_23904E:        DEX                       
CODE_23904F:        BPL CODE_239017           
CODE_239051:        RTS                       

CODE_239052:        LDA $105D                 
CODE_239055:        AND #$F0                  
CODE_239057:        STA $105A                 
CODE_23905A:        LDA $105C                 
CODE_23905D:        LSR A                     
CODE_23905E:        LSR A                     
CODE_23905F:        LSR A                     
CODE_239060:        LSR A                     
CODE_239061:        ORA $105A                 
CODE_239064:        STA $105A                 
CODE_239067:        RTS                       

CODE_239068:        STY $01                   
CODE_23906A:        STX $04                   
CODE_23906C:        JSR CODE_2390C9           
CODE_23906F:        LDX $105A                 
CODE_239072:        LDA $7E2450,x             
CODE_239076:        STA $0A                   
CODE_239078:        JSL CODE_209F37           
CODE_23907C:        REP #$30                  
CODE_23907E:        LDA $02                   
CODE_239080:        PHA                       
CODE_239081:        LDA $1055                 
CODE_239084:        AND #$00FF                
CODE_239087:        ASL A                     
CODE_239088:        STA $02                   
CODE_23908A:        LDA $01                   
CODE_23908C:        AND #$00FF                
CODE_23908F:        TAX                       
CODE_239090:        TYA                       
CODE_239091:        AND #$00FF                
CODE_239094:        ASL A                     
CODE_239095:        ASL A                     
CODE_239096:        ASL A                     
CODE_239097:        CLC                       
CODE_239098:        ADC $02                   
CODE_23909A:        TAY                       
CODE_23909B:        LDA [$0C],y               
CODE_23909D:        STA $1602,x               
CODE_2390A0:        PLA                       
CODE_2390A1:        STA $02                   
CODE_2390A3:        SEP #$30                  
CODE_2390A5:        LDY $01                   
CODE_2390A7:        LDX $04                   
CODE_2390A9:        RTS                       

CODE_2390AA:        ASL A                     
CODE_2390AB:        ADC #$00                  
CODE_2390AD:        ASL A                     
CODE_2390AE:        ADC #$00                  
CODE_2390B0:        STA $0C                   
CODE_2390B2:        TXA                       
CODE_2390B3:        LSR A                     
CODE_2390B4:        LSR A                     
CODE_2390B5:        LSR A                     
CODE_2390B6:        STA $0D                   
CODE_2390B8:        LDA $0C                   
CODE_2390BA:        AND #$03                  
CODE_2390BC:        ORA #$08                  
CODE_2390BE:        STA $0E                   
CODE_2390C0:        LDA $0C                   
CODE_2390C2:        AND #$E0                  
CODE_2390C4:        ORA $0D                   
CODE_2390C6:        STA $0F                   
CODE_2390C8:        RTS                       

CODE_2390C9:        LDA $1053                 
CODE_2390CC:        AND #$01                  
CODE_2390CE:        STA $1055                 
CODE_2390D1:        LDA $1053                 
CODE_2390D4:        AND #$20                  
CODE_2390D6:        BNE CODE_2390DD           
CODE_2390D8:        ASL $1055                 
CODE_2390DB:        BRA CODE_2390E1           
CODE_2390DD:        SEC                       
CODE_2390DE:        ROL $1055                 
CODE_2390E1:        RTS                       

CODE_2390E2:        LDY.w DATA_218E34,x               
CODE_2390E5:        LDX #$04                  
CODE_2390E7:        REP #$20                  
CODE_2390E9:        LDA.w DATA_218E10,y               
CODE_2390EC:        STA $1402,x               
CODE_2390EF:        DEY                       
CODE_2390F0:        DEY                       
CODE_2390F1:        DEX                       
CODE_2390F2:        DEX                       
CODE_2390F3:        BPL CODE_2390E9           
CODE_2390F5:        LDA #$0001                
CODE_2390F8:        STA $1500                 
CODE_2390FB:        RTS                       

DATA_2390FC:        db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF

CODE_239110:        LDX #$00                  ;
CODE_239112:        LDA #$09                  ;
CODE_239114:        JSL CODE_2098A8           ;
CODE_239118:        JSL CODE_209844           ;
CODE_23911C:        CPX #$40                  ;
CODE_23911E:        BNE CODE_239112           ;
CODE_239120:        LDA #$40                  ;
CODE_239122:        JSL CODE_2098A8           ;
CODE_239126:        LDA #$09                  ;
CODE_239128:        JSL CODE_209844           ;
CODE_23912C:        CPX #$F0                  ;
CODE_23912E:        BNE CODE_239120           ;
CODE_239130:        JSL CODE_20990B           ;
CODE_239134:        RTL                       ;

CODE_239135:        JSR CODE_239139           
CODE_239138:        RTL                       

CODE_239139:        LDA $0706                 
CODE_23913C:        LSR A                     
CODE_23913D:        LSR A                     
CODE_23913E:        LSR A                     
CODE_23913F:        LSR A                     
CODE_239140:        TAX                       
CODE_239141:        DEX                       
CODE_239142:        TXA                       
CODE_239143:        JSL CODE_20FB3A           ; ExecutePtrLong

PNTR_239147:        dl CODE_2392D2

CODE_23914A:        JSR CODE_23914E
CODE_23914D:        RTL

CODE_23914E:        LDA $0706                 
CODE_239151:        JSL CODE_20FB3A           ; ExecutePtrLong

PNTR_239155:        dl CODE_2391EF
                    dl CODE_23922C
                    dl CODE_23924F
                    dl CODE_23928C
                    dl CODE_23916A
                    dl CODE_2391AF
                    dl CODE_2392AF

CODE_23916A:        LDA #$00                  
CODE_23916C:        STA $00                   
CODE_23916E:        LDX $00                   
CODE_239170:        LDA.w DATA_2196B9,x               
CODE_239173:        STA $01                   
CODE_239175:        LDA.w DATA_2196B9+1,x               
CODE_239178:        STA $02                   
CODE_23917A:        LDA.w DATA_2196B9+2,x               
CODE_23917D:        STA $03                   
CODE_23917F:        TXA                       
CODE_239180:        CLC                       
CODE_239181:        ADC #$03                  
CODE_239183:        STA $00                   
CODE_239185:        LDX #$00                  
CODE_239187:        LDY $0700                 
CODE_23918A:        LDA $01                   
CODE_23918C:        STA [$2E],y               
CODE_23918E:        INY                       
CODE_23918F:        INX                       
CODE_239190:        LDA $02                   
CODE_239192:        STA [$2E],y               
CODE_239194:        TXA                       
CODE_239195:        AND #$07                  
CODE_239197:        CMP #$05                  
CODE_239199:        BNE CODE_23918E           
CODE_23919B:        LDA $03                   
CODE_23919D:        STA [$2E],y               
CODE_23919F:        LDA $0700                 
CODE_2391A2:        CLC                       
CODE_2391A3:        ADC #$10                  
CODE_2391A5:        STA $0700                 
CODE_2391A8:        LDA $00                   
CODE_2391AA:        CMP #$06                  
CODE_2391AC:        BNE CODE_23916E           
CODE_2391AE:        RTS                       

CODE_2391AF:        LDY $0700                 
CODE_2391B2:        LDX #$00                  
CODE_2391B4:        STX $0B                   
CODE_2391B6:        LDX $0B                   
CODE_2391B8:        LDA.w DATA_2196BF,x               
CODE_2391BB:        STA $00                   
CODE_2391BD:        CMP #$FF                  
CODE_2391BF:        BNE CODE_2391C2           
CODE_2391C1:        RTS                       

CODE_2391C2:        CMP #$80                  
CODE_2391C4:        BNE CODE_2391D5           
CODE_2391C6:        LDA $0700                 
CODE_2391C9:        CLC                       
CODE_2391CA:        ADC #$10                  
CODE_2391CC:        STA $0700                 
CODE_2391CF:        TAY                       
CODE_2391D0:        INC $0B                   
CODE_2391D2:        JMP CODE_2391B6           

CODE_2391D5:        LSR A                     
CODE_2391D6:        LSR A                     
CODE_2391D7:        LSR A                     
CODE_2391D8:        LSR A                     
CODE_2391D9:        TAX                       
CODE_2391DA:        LDA $00                   
CODE_2391DC:        AND #$0F                  
CODE_2391DE:        STA $0A                   
CODE_2391E0:        LDA.w DATA_2196EA,x               
CODE_2391E3:        STA [$2E],y               
CODE_2391E5:        INY                       
CODE_2391E6:        DEC $0A                   
CODE_2391E8:        BPL CODE_2391E0           
CODE_2391EA:        INC $0B                   
CODE_2391EC:        JMP CODE_2391B6           

CODE_2391EF:        LDX #$02                  
CODE_2391F1:        LDY $0726                 
CODE_2391F4:        LDA $0747,y               
CODE_2391F7:        CMP.w DATA_219716,x               
CODE_2391FA:        BEQ CODE_2391FF           
CODE_2391FC:        DEX                       
CODE_2391FD:        BNE CODE_2391F7           
CODE_2391FF:        LDA.w DATA_219719,x               
CODE_239202:        TAX                       
CODE_239203:        LDA #$00                  
CODE_239205:        STA $02                   
CODE_239207:        LDY $0700                 
CODE_23920A:        LDA #$02                  
CODE_23920C:        STA $00                   
CODE_23920E:        LDA.w DATA_2196F2,x               
CODE_239211:        STA [$2E],y               
CODE_239213:        INY                       
CODE_239214:        INX                       
CODE_239215:        INC $02                   
CODE_239217:        DEC $00                   
CODE_239219:        BPL CODE_23920E           
CODE_23921B:        LDA $0700                 
CODE_23921E:        CLC                       
CODE_23921F:        ADC #$10                  
CODE_239221:        STA $0700                 
CODE_239224:        TAY                       
CODE_239225:        LDA $02                   
CODE_239227:        CMP #$0C                  
CODE_239229:        BNE CODE_23920A           
CODE_23922B:        RTS                       

CODE_23922C:        LDX #$00                  
CODE_23922E:        LDY $0700                 
CODE_239231:        LDA #$01                  
CODE_239233:        STA $00                   
CODE_239235:        LDA.w DATA_21971C,x               
CODE_239238:        STA [$2E],y               
CODE_23923A:        INY                       
CODE_23923B:        INX                       
CODE_23923C:        DEC $00                   
CODE_23923E:        BPL CODE_239235           
CODE_239240:        LDA $0700                 
CODE_239243:        CLC                       
CODE_239244:        ADC #$10                  
CODE_239246:        STA $0700                 
CODE_239249:        TAY                       
CODE_23924A:        CPX #$08                  
CODE_23924C:        BNE CODE_239231           
CODE_23924E:        RTS                       

CODE_23924F:        LDY $0700                 
CODE_239252:        LDA #$C1                  
CODE_239254:        STA [$2E],y               
CODE_239256:        INY                       
CODE_239257:        LDA #$C4                  
CODE_239259:        STA [$2E],y               
CODE_23925B:        CPY #$0F                  
CODE_23925D:        BNE CODE_239256           
CODE_23925F:        LDA #$C6                  
CODE_239261:        STA [$2E],y               
CODE_239263:        INY                       
CODE_239264:        TYA                       
CODE_239265:        AND #$0F                  
CODE_239267:        BNE CODE_23926D           
CODE_239269:        LDA #$C2                  
CODE_23926B:        BNE CODE_239273           
CODE_23926D:        CMP #$0F                  
CODE_23926F:        BNE CODE_239263           
CODE_239271:        LDA #$C7                  
CODE_239273:        STA [$2E],y               
CODE_239275:        CPY #$9F                  
CODE_239277:        BNE CODE_239263           
CODE_239279:        INY                       
CODE_23927A:        LDA #$C3                  
CODE_23927C:        STA [$2E],y               
CODE_23927E:        INY                       
CODE_23927F:        LDA #$C5                  
CODE_239281:        STA [$2E],y               
CODE_239283:        CPY #$AF                  
CODE_239285:        BNE CODE_23927E           
CODE_239287:        LDA #$C8                  
CODE_239289:        STA [$2E],y               
CODE_23928B:        RTS                       

CODE_23928C:        LDX #$00                  
CODE_23928E:        LDY $0700                 
CODE_239291:        LDA #$01                  
CODE_239293:        STA $00                   
CODE_239295:        LDA.w DATA_219724,x               
CODE_239298:        STA [$2E],y               
CODE_23929A:        INY                       
CODE_23929B:        INX                       
CODE_23929C:        DEC $00                   
CODE_23929E:        BPL CODE_239295           
CODE_2392A0:        LDA $0700                 
CODE_2392A3:        CLC                       
CODE_2392A4:        ADC #$10                  
CODE_2392A6:        STA $0700                 
CODE_2392A9:        TAY                       
CODE_2392AA:        CPX #$04                  
CODE_2392AC:        BNE CODE_239291           
CODE_2392AE:        RTS                       

CODE_2392AF:        LDX #$00                  
CODE_2392B1:        LDY $0700                 
CODE_2392B4:        LDA #$01                  
CODE_2392B6:        STA $00                   
CODE_2392B8:        LDA.w DATA_219728,x               
CODE_2392BB:        STA [$2E],y               
CODE_2392BD:        INY                       
CODE_2392BE:        INX                       
CODE_2392BF:        DEC $00                   
CODE_2392C1:        BPL CODE_2392B8           
CODE_2392C3:        LDA $0700                 
CODE_2392C6:        CLC                       
CODE_2392C7:        ADC #$10                  
CODE_2392C9:        STA $0700                 
CODE_2392CC:        TAY                       
CODE_2392CD:        CPX #$04                  
CODE_2392CF:        BNE CODE_2392B4           
CODE_2392D1:        RTS                       

CODE_2392D2:        LDA #$01                  
CODE_2392D4:        STA $00                   
CODE_2392D6:        LDY $0700                 
CODE_2392D9:        LDA $0706                 
CODE_2392DC:        AND #$0F                  
CODE_2392DE:        TAX                       
CODE_2392DF:        LDA #$C0                  
CODE_2392E1:        STA [$2E],y               
CODE_2392E3:        INY                       
CODE_2392E4:        DEX                       
CODE_2392E5:        BPL CODE_2392DF           
CODE_2392E7:        LDA $0700                 
CODE_2392EA:        CLC                       
CODE_2392EB:        ADC #$10                  
CODE_2392ED:        STA $0700                 
CODE_2392F0:        TAY                       
CODE_2392F1:        DEC $00                   
CODE_2392F3:        BPL CODE_2392D9           
CODE_2392F5:        RTS                       
CODE_2392F6:        TYA                       
CODE_2392F7:        CLC                       
CODE_2392F8:        ADC #$10                  
CODE_2392FA:        TAY                       
CODE_2392FB:        LDA $2F                   
CODE_2392FD:        ADC #$00                  
CODE_2392FF:        STA $2F                   
CODE_239301:        RTS                       

CODE_239302:        LDA $05                   
CODE_239304:        STA $2F                   
CODE_239306:        LDY $0700                 
CODE_239309:        INY                       
CODE_23930A:        TYA                       
CODE_23930B:        AND #$0F                  
CODE_23930D:        BNE CODE_239340           
CODE_23930F:        LDY #$00                  
CODE_239311:        LDA $0E                   
CODE_239313:        AND #$10                  
CODE_239315:        BEQ CODE_239318           
CODE_239317:        INY                       
CODE_239318:        STY $09                   
CODE_23931A:        LDA $2E                   
CODE_23931C:        CLC                       
CODE_23931D:        ADC #$B0                  
CODE_23931F:        STA $2E                   
CODE_239321:        LDA $2F                   
CODE_239323:        ADC $09                   
CODE_239325:        STA $2F                   
CODE_239327:        STA $05                   
CODE_239329:        LDA $0F                   
CODE_23932B:        AND #$F0                  
CODE_23932D:        LSR A                     
CODE_23932E:        LSR A                     
CODE_23932F:        LSR A                     
CODE_239330:        TAY                       
CODE_239331:        INY                       
CODE_239332:        INY                       
CODE_239333:        LDA.w DATA_218200+1,y               
CODE_239336:        STA $04                   
CODE_239338:        INC $04                   
CODE_23933A:        LDA $0700                 
CODE_23933D:        AND #$F0                  
CODE_23933F:        TAY                       
CODE_239340:        STY $0700                 
CODE_239343:        RTS                       

CODE_239344:        LDA $1EBF                 
CODE_239347:        CMP #$0F                  
CODE_239349:        BNE CODE_23934E           
CODE_23934B:        JSR CODE_23934F           
CODE_23934E:        RTL                       

CODE_23934F:        LDA $1034                 
CODE_239352:        JSL CODE_20FB1F           ; ExecutePtrShort

PNTR_239356:        dw CODE_23935E
                    dw CODE_239362
                    dw CODE_23936B
                    dw CODE_23936F

CODE_23935E:        JSR CODE_239373
CODE_239361:        RTS                       

CODE_239362:        JSR CODE_2393BC           
CODE_239365:        LDA #$3F                  
CODE_239367:        JSR CODE_239410           
CODE_23936A:        RTS                       

CODE_23936B:        JSR CODE_2393BC           
CODE_23936E:        RTS                       

CODE_23936F:        JSR CODE_2393E6           
CODE_239372:        RTS                       

CODE_239373:        LDA #$94                  
CODE_239375:        STA $0A                   
CODE_239377:        LDY #$00                  
CODE_239379:        LDX #$0A                  
CODE_23937B:        LDA.w DATA_219737,x               
CODE_23937E:        STA $0810,y               
CODE_239381:        STA $0814,y               
CODE_239384:        LDA.w DATA_21972C,x               
CODE_239387:        STA $0811,y               
CODE_23938A:        CLC                       
CODE_23938B:        ADC #$08                  
CODE_23938D:        STA $0815,y               
CODE_239390:        LDA $0A                   
CODE_239392:        STA $0812,y               
CODE_239395:        INC A                     
CODE_239396:        STA $0816,y               
CODE_239399:        LDA #$2A                  
CODE_23939B:        STA $0813,y               
CODE_23939E:        STA $0817,y               
CODE_2393A1:        PHY                       
CODE_2393A2:        TYA                       
CODE_2393A3:        LSR A                     
CODE_2393A4:        LSR A                     
CODE_2393A5:        TAY                       
CODE_2393A6:        LDA #$00                  
CODE_2393A8:        STA $0A24,y               
CODE_2393AB:        STA $0A25,y               
CODE_2393AE:        PLY                       
CODE_2393AF:        DEC $0A                   
CODE_2393B1:        DEC $0A                   
CODE_2393B3:        TYA                       
CODE_2393B4:        CLC                       
CODE_2393B5:        ADC #$08                  
CODE_2393B7:        TAY                       
CODE_2393B8:        DEX                       
CODE_2393B9:        BPL CODE_23937B           
CODE_2393BB:        RTS                       

CODE_2393BC:        LDA #$99                  
CODE_2393BE:        STA $0A                   
CODE_2393C0:        LDY #$00                  
CODE_2393C2:        LDX #$09                  
CODE_2393C4:        LDA.w DATA_219742,x               
CODE_2393C7:        STA $0810,y               
CODE_2393CA:        INY                       
CODE_2393CB:        LDA $0A                   
CODE_2393CD:        STA $0810,y               
CODE_2393D0:        INY                       
CODE_2393D1:        LDA #$00                  
CODE_2393D3:        STA $0810,y               
CODE_2393D6:        INY                       
CODE_2393D7:        LDA.w DATA_21974C,x               
CODE_2393DA:        STA $0810,y               
CODE_2393DD:        INY                       
CODE_2393DE:        DEC $0A                   
CODE_2393E0:        DEC $0A                   
CODE_2393E2:        DEX                       
CODE_2393E3:        BPL CODE_2393C4           
CODE_2393E5:        RTS                       

CODE_2393E6:        LDA #$AF                  
CODE_2393E8:        STA $0A                   
CODE_2393EA:        LDY #$00                  
CODE_2393EC:        LDX #$0A                  
CODE_2393EE:        LDA.w DATA_219756,x               
CODE_2393F1:        STA $0810,y               
CODE_2393F4:        INY                       
CODE_2393F5:        LDA $0A                   
CODE_2393F7:        STA $0810,y               
CODE_2393FA:        INY                       
CODE_2393FB:        LDA #$00                  
CODE_2393FD:        STA $0810,y               
CODE_239400:        INY                       
CODE_239401:        LDA.w DATA_219761,x               
CODE_239404:        STA $0810,y               
CODE_239407:        INY                       
CODE_239408:        DEC $0A                   
CODE_23940A:        DEC $0A                   
CODE_23940C:        DEX                       
CODE_23940D:        BPL CODE_2393EE           
CODE_23940F:        RTS                       

CODE_239410:        STA $0A                   
CODE_239412:        LDX #$07                  
CODE_239414:        LDA.w DATA_21976C,x               
CODE_239417:        STA $0810,y               
CODE_23941A:        INY                       
CODE_23941B:        LDA $0A                   
CODE_23941D:        STA $0810,y               
CODE_239420:        INY                       
CODE_239421:        LDA #$00                  
CODE_239423:        STA $0810,y               
CODE_239426:        INY                       
CODE_239427:        LDA.w DATA_219774,x               
CODE_23942A:        STA $0810,y               
CODE_23942D:        INY                       
CODE_23942E:        DEC $0A                   
CODE_239430:        DEC $0A                   
CODE_239432:        DEX                       
CODE_239433:        BPL CODE_239414           
CODE_239435:        LDA $1040                 
CODE_239438:        CMP #$02                  
CODE_23943A:        BCC CODE_239485           
CODE_23943C:        LDX $1043                 
CODE_23943F:        LDA.w DATA_21977E,x               
CODE_239442:        STA $0A                   
CODE_239444:        LDA $1026                 
CODE_239447:        STA $0B                   
CODE_239449:        LDX #$01                  
CODE_23944B:        LDA $1027                 
CODE_23944E:        STA $0810,y               
CODE_239451:        INY                       
CODE_239452:        LDA $0A                   
CODE_239454:        STA $0810,y               
CODE_239457:        INY                       
CODE_239458:        LDA.w DATA_21977C,x               
CODE_23945B:        STA $0810,y               
CODE_23945E:        INY                       
CODE_23945F:        LDA $0B                   
CODE_239461:        STA $0810,y               
CODE_239464:        INY                       
CODE_239465:        LDA $0B                   
CODE_239467:        CLC                       
CODE_239468:        ADC #$08                  
CODE_23946A:        STA $0B                   
CODE_23946C:        DEX                       
CODE_23946D:        BPL CODE_23944B           
CODE_23946F:        LDA $1027                 
CODE_239472:        CMP #$60                  
CODE_239474:        BEQ CODE_239485           
CODE_239476:        DEC $1027                 
CODE_239479:        LDA $1027                 
CODE_23947C:        CMP #$5F                  
CODE_23947E:        BCS CODE_239485                   
CODE_239480:        LDA #$60                  
CODE_239482:        STA $1027                 
CODE_239485:        RTS                       

CODE_239486:        JSR CODE_23934F           
CODE_239489:        LDA $1040                 
CODE_23948C:        CMP #$07                  
CODE_23948E:        BCC CODE_23949E           
CODE_239490:        JSR CODE_23A4DC           
CODE_239493:        BCC CODE_23949E           
CODE_239495:        LDA #$09                  
CODE_239497:        STA $1040                 
CODE_23949A:        LDA #$01                  
CODE_23949C:        STA $14                   
CODE_23949E:        JSR CODE_2394A2           
CODE_2394A1:        RTL                       

CODE_2394A2:        LDA $1040                 
CODE_2394A5:        JSL CODE_20FB1F           ; ExecutePtrShort

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
  
CODE_2394BD:        LDA #$51
CODE_2394BF:        STA $2109                  
CODE_2394C2:        LDA $1028                 
CODE_2394C5:        CLC                       
CODE_2394C6:        ADC #$08                  
CODE_2394C8:        STA $28                   
CODE_2394CA:        INC $1028                 
CODE_2394CD:        CMP #$0C                  
CODE_2394CF:        BNE CODE_2394FB           
CODE_2394D1:        LDA #$00                  
CODE_2394D3:        STA $070F                 
CODE_2394D6:        INC $1040                 
CODE_2394D9:        LDY $1042                 
CODE_2394DC:        LDA.w DATA_219782,y               
CODE_2394DF:        STA $2E                   
CODE_2394E1:        LDA.w DATA_21978A,y               
CODE_2394E4:        STA $2F                   
CODE_2394E6:        LDA #$21                  
CODE_2394E8:        STA $30                   
CODE_2394EA:        CPY #$01                  
CODE_2394EC:        BEQ CODE_2394F2           
CODE_2394EE:        CPY #$02                  
CODE_2394F0:        BNE CODE_2394FB           
CODE_2394F2:        LDA #$F8                  
CODE_2394F4:        STA $95                   
CODE_2394F6:        LDA #$07                  
CODE_2394F8:        STA $1040                 
CODE_2394FB:        RTS                       

CODE_2394FC:        LDA $0711                 
CODE_2394FF:        BNE CODE_239506           
CODE_239501:        LDA #$A0                  
CODE_239503:        STA $0711                 
CODE_239506:        DEC $0711                 
CODE_239509:        BNE CODE_239512           
CODE_23950B:        INC $1040                 
CODE_23950E:        LDA #$01                  
CODE_239510:        STA $14                   
CODE_239512:        RTS                       

CODE_239513:        DEC $070E                 
CODE_239516:        BEQ CODE_239519           
CODE_239518:        RTS                       

CODE_239519:        LDA #$04                  
CODE_23951B:        STA $070E                 
CODE_23951E:        LDA $02D4                 
CODE_239521:        AND #$01                  
CODE_239523:        BEQ CODE_23952A           
CODE_239525:        LDA #$19                  
CODE_239527:        STA $1200                 
CODE_23952A:        LDY $02D4                 
CODE_23952D:        LDA [$2E],y               
CODE_23952F:        BNE CODE_23954D           
CODE_239531:        LDA $05E8                 
CODE_239534:        CLC                       
CODE_239535:        ADC #$20                  
CODE_239537:        TAY                       
CODE_239538:        LDA $05E7                 
CODE_23953B:        ADC #$00                  
CODE_23953D:        STA $05E7                 
CODE_239540:        TYA                       
CODE_239541:        AND #$E0                  
CODE_239543:        ORA #$04                  
CODE_239545:        STA $05E8                 
CODE_239548:        INC $02D4                 
CODE_23954B:        BRA CODE_23951E           

CODE_23954D:        CMP #$FF                  
CODE_23954F:        BEQ CODE_239592           
CODE_239551:        CMP #$FE                  
CODE_239553:        BNE CODE_23955C           
CODE_239555:        LDY #$00                  
CODE_239557:        STY $1200                 
CODE_23955A:        BRA CODE_23958B           

CODE_23955C:        LDX $1600                 
CODE_23955F:        STA $1606,x               
CODE_239562:        LDA #$21                  
CODE_239564:        STA $1607,x               
CODE_239567:        LDA $05E7                 
CODE_23956A:        STA $1602,x               
CODE_23956D:        LDA $05E8                 
CODE_239570:        STA $1603,x               
CODE_239573:        LDA #$00                  
CODE_239575:        STA $1604,x               
CODE_239578:        LDA #$01                  
CODE_23957A:        STA $1605,x               
CODE_23957D:        LDA #$FF                  
CODE_23957F:        STA $1608,x               
CODE_239582:        LDA $1600                 
CODE_239585:        CLC                       
CODE_239586:        ADC #$06                  
CODE_239588:        STA $1600                 
CODE_23958B:        INC $05E8                 
CODE_23958E:        INC $02D4                 
CODE_239591:        RTS                       

CODE_239592:        LDA $1040                 
CODE_239595:        CMP #$07                  
CODE_239597:        BEQ CODE_2395A1           
CODE_239599:        LDA #$78                  
CODE_23959B:        STA $1027                 
CODE_23959E:        STA $1026                 
CODE_2395A1:        LDA #$00                  
CODE_2395A3:        STA $02D4                 
CODE_2395A6:        INC $1040                 
CODE_2395A9:        INY                       
CODE_2395AA:        LDA [$2E],y               
CODE_2395AC:        STA $102A                 
CODE_2395AF:        RTS                       

CODE_2395B0:        RTS                       

CODE_2395B1:        LDA $1034                 
CODE_2395B4:        CMP #$01                  
CODE_2395B6:        BNE CODE_2395BF           
CODE_2395B8:        LDA $1027                 
CODE_2395BB:        CMP #$60                  
CODE_2395BD:        BNE CODE_2395BF           
CODE_2395BF:        RTS                       

CODE_2395C0:        RTS                       

CODE_2395C1:        LDA $1043                 
CODE_2395C4:        ASL A                     
CODE_2395C5:        STA $00                   
CODE_2395C7:        LDX $0726                 
CODE_2395CA:        LDA $7E3992,x             
CODE_2395CE:        AND #$0A                  
CODE_2395D0:        BEQ CODE_2395D4           
CODE_2395D2:        INC $00                   
CODE_2395D4:        LDY $00                   
CODE_2395D6:        LDA.w DATA_219976,y               
CODE_2395D9:        STA $7E397D,x             
CODE_2395DD:        LDA.w DATA_21997A,y               
CODE_2395E0:        AND #$F0                  
CODE_2395E2:        STA $7E3981,x             
CODE_2395E6:        LDA.w DATA_21997A,y               
CODE_2395E9:        AND #$0F                  
CODE_2395EB:        STA $7E397F,x             
CODE_2395EF:        LDA #$01                  
CODE_2395F1:        STA $0713                 
CODE_2395F4:        RTS                       

CODE_2395F5:        INC $069A                 
CODE_2395F8:        LDA $069A                 
CODE_2395FB:        AND #$03                  
CODE_2395FD:        BNE CODE_239612           
CODE_2395FF:        LDA $7E3991               
CODE_239603:        INC A                     
CODE_239604:        STA $7E3991               
CODE_239608:        CMP #$06                  
CODE_23960A:        BNE CODE_239612           
CODE_23960C:        LDA #$00                  
CODE_23960E:        STA $7E3991               
CODE_239612:        LDA $18                   
CODE_239614:        AND #$80                  
CODE_239616:        BEQ CODE_239657           
CODE_239618:        LDA #$00                  
CODE_23961A:        STA $069A                 
CODE_23961D:        STA $070F                 
CODE_239620:        LDY #$00                  
CODE_239622:        LDA $1042                 
CODE_239625:        CMP #$01                  
CODE_239627:        BEQ CODE_23962E           
CODE_239629:        INY                       
CODE_23962A:        CMP #$02                  
CODE_23962C:        BNE CODE_239647           
CODE_23962E:        LDA $7E3991               
CODE_239632:        AND #$01                  
CODE_239634:        CMP.w DATA_21997E,y               
CODE_239637:        BNE CODE_23963F           
CODE_239639:        LDA.w DATA_219980,y               
CODE_23963C:        STA $069A                 
CODE_23963F:        LDA #$04                  
CODE_239641:        STA $1040                 
CODE_239644:        JMP CODE_239657           

CODE_239647:        LDA $7E3991               
CODE_23964B:        TAX                       
CODE_23964C:        CPX #$02                  
CODE_23964E:        BCC CODE_239654           
CODE_239650:        INX                       
CODE_239651:        STX $069C                 
CODE_239654:        INC $1040                 
CODE_239657:        LDA $96                   
CODE_239659:        STA $08F8                 
CODE_23965C:        CLC                       
CODE_23965D:        ADC #$08                  
CODE_23965F:        STA $08FC                 
CODE_239662:        LDA $95                   
CODE_239664:        STA $08F9                 
CODE_239667:        STA $08FD                 
CODE_23966A:        LDA $7E3991               
CODE_23966E:        ASL A                     
CODE_23966F:        ORA #$10                  
CODE_239671:        STA $08FA                 
CODE_239674:        STA $08FE                 
CODE_239677:        LDA #$26                  
CODE_239679:        STA $08FB                 
CODE_23967C:        LDA #$E6                  
CODE_23967E:        STA $08FF                 
CODE_239681:        LDA #$00                  
CODE_239683:        STA $0A5E                 
CODE_239686:        STA $0A5F                 
CODE_239689:        RTS                       

CODE_23968A:        RTS                       

CODE_23968B:        LDA $070F                 
CODE_23968E:        BNE CODE_2396EA           
CODE_239690:        INC $070E                 
CODE_239693:        LDA $070E                 
CODE_239696:        AND #$03                  
CODE_239698:        BNE CODE_2396EA           
CODE_23969A:        LDX $02D4                 
CODE_23969D:        LDA.w DATA_219982,x               
CODE_2396A0:        BNE CODE_2396AD           
CODE_2396A2:        LDA #$55                  
CODE_2396A4:        STA $070C                 
CODE_2396A7:        INC $02D4                 
CODE_2396AA:        JMP CODE_23969A           

CODE_2396AD:        CMP #$FF                  
CODE_2396AF:        BNE CODE_2396BF           
CODE_2396B1:        LDA #$35                  
CODE_2396B3:        STA $070C                 
CODE_2396B6:        LDA #$00                  
CODE_2396B8:        STA $02D4                 
CODE_2396BB:        INC $070F                 
CODE_2396BE:        RTS                       

CODE_2396BF:        LDY $1600                 
CODE_2396C2:        STA $1604,y               
CODE_2396C5:        LDA $070B                 
CODE_2396C8:        STA $1601,y               
CODE_2396CB:        LDA $070C                 
CODE_2396CE:        STA $1602,y               
CODE_2396D1:        LDA #$01                  
CODE_2396D3:        STA $1603,y               
CODE_2396D6:        LDA #$00                  
CODE_2396D8:        STA $1605,y               
CODE_2396DB:        LDA $1600                 
CODE_2396DE:        CLC                       
CODE_2396DF:        ADC #$04                  
CODE_2396E1:        STA $1600                 
CODE_2396E4:        INC $070C                 
CODE_2396E7:        INC $02D4                 
CODE_2396EA:        RTS                       

CODE_2396EB:        LDA $15                   
CODE_2396ED:        AND #$01                  
CODE_2396EF:        BNE CODE_239704           
CODE_2396F1:        LDA $7E3991               
CODE_2396F5:        INC A                     
CODE_2396F6:        STA $7E3991               
CODE_2396FA:        CMP #$06                  
CODE_2396FC:        BNE CODE_239704           
CODE_2396FE:        LDA #$00                  
CODE_239700:        STA $7E3991               
CODE_239704:        LDA $97                   
CODE_239706:        CMP #$80                  
CODE_239708:        BEQ CODE_23970F           
CODE_23970A:        SEC                       
CODE_23970B:        SBC #$08                  
CODE_23970D:        STA $97                   
CODE_23970F:        LDA $97                   
CODE_239711:        ASL A                     
CODE_239712:        ASL A                     
CODE_239713:        ASL A                     
CODE_239714:        ASL A                     
CODE_239715:        STA $00                   
CODE_239717:        LDA $97                   
CODE_239719:        LSR A                     
CODE_23971A:        LSR A                     
CODE_23971B:        LSR A                     
CODE_23971C:        LSR A                     
CODE_23971D:        CMP #$08                  
CODE_23971F:        BCC CODE_239723           
CODE_239721:        ORA #$F0                  
CODE_239723:        STA $01                   
CODE_239725:        LDA $98                   
CODE_239727:        CLC                       
CODE_239728:        ADC $00                   
CODE_23972A:        STA $98                   
CODE_23972C:        LDA $95                   
CODE_23972E:        ADC $01                   
CODE_239730:        STA $95                   
CODE_239732:        LDA $95                   
CODE_239734:        CMP #$F8                  
CODE_239736:        BCC CODE_239751           
CODE_239738:        LDA #$F8                  
CODE_23973A:        STA $95                   
CODE_23973C:        LDA #$00                  
CODE_23973E:        STA $97                   
CODE_239740:        STA $070F                 
CODE_239743:        LDA $069A                 
CODE_239746:        BEQ CODE_23974C           
CODE_239748:        INC $1040                 
CODE_23974B:        RTS                       

CODE_23974C:        LDA #$08                  
CODE_23974E:        STA $1040                 
CODE_239751:        RTS                       

CODE_239752:        LDA $7E3991               
CODE_239756:        CMP #$02                  
CODE_239758:        BCS CODE_239772                   
CODE_23975A:        CMP #$01                  
CODE_23975C:        BNE CODE_239768           
CODE_23975E:        LDX #$03                  
CODE_239760:        JSL CODE_20975B           
CODE_239764:        INC $1040                 
CODE_239767:        RTS                       

CODE_239768:        LDX $0726                 
CODE_23976B:        INC $0736,x               
CODE_23976E:        INC $1040                 
CODE_239771:        RTS                       

CODE_239772:        LDA $0059                 
CODE_239775:        JSL CODE_20FB1F           ; ExecutePtrShort

PNTR_239779:        dw CODE_23977D
                    dw CODE_2397B1

CODE_23977D:        LDA $7E3991
CODE_239781:        TAY
CODE_239782:        LDA #$78    
CODE_239784:        STA $061F,y               
CODE_239787:        STA $062B,y               
CODE_23978A:        LDX #$F0                  
CODE_23978C:        LDA $0783,y               
CODE_23978F:        ASL A                     
CODE_239790:        PHA                       
CODE_239791:        BCC CODE_239795           
CODE_239793:        LDX #$00                  
CODE_239795:        TXA                       
CODE_239796:        STA $00                   
CODE_239798:        PLA                       
CODE_239799:        AND #$0F                  
CODE_23979B:        ORA $00                   
CODE_23979D:        STA $0625,y               
CODE_2397A0:        LDA $0783,y               
CODE_2397A3:        AND #$07                  
CODE_2397A5:        ORA #$C0                  
CODE_2397A7:        STA $0619,y               
CODE_2397AA:        DEY                       
CODE_2397AB:        BPL CODE_239782           
CODE_2397AD:        INC $0059                 
CODE_2397B0:        RTS                       

CODE_2397B1:        LDA $7E3991               
CODE_2397B5:        TAY                       
CODE_2397B6:        JSR CODE_2397EC           
CODE_2397B9:        JSR CODE_2397DE           
CODE_2397BC:        LDA $0619,y               
CODE_2397BF:        CLC                       
CODE_2397C0:        ADC #$02                  
CODE_2397C2:        STA $0619,y               
CODE_2397C5:        DEY                       
CODE_2397C6:        BPL CODE_2397B6           
CODE_2397C8:        JSR CODE_239827           
CODE_2397CB:        LDA $7E3991               
CODE_2397CF:        TAY                       
CODE_2397D0:        LDA $061F,y               
CODE_2397D3:        CMP #$F8                  
CODE_2397D5:        BNE CODE_2397DD           
CODE_2397D7:        DEY                       
CODE_2397D8:        BPL CODE_2397D0           
CODE_2397DA:        INC $1040                 
CODE_2397DD:        RTS                       

CODE_2397DE:        TYA                       
CODE_2397DF:        CLC                       
CODE_2397E0:        ADC #$0C                  
CODE_2397E2:        TAY                       
CODE_2397E3:        JSR CODE_2397FA           
CODE_2397E6:        TYA                       
CODE_2397E7:        SEC                       
CODE_2397E8:        SBC #$0C                  
CODE_2397EA:        TAY                       
CODE_2397EB:        RTS                       

CODE_2397EC:        LDA $0619,y               
CODE_2397EF:        BMI CODE_2397FA           
CODE_2397F1:        CMP #$40                  
CODE_2397F3:        BMI CODE_2397FA           
CODE_2397F5:        LDA #$40                  
CODE_2397F7:        STA $0619,y               
CODE_2397FA:        LDA $0619,y               
CODE_2397FD:        ASL A                     
CODE_2397FE:        ASL A                     
CODE_2397FF:        ASL A                     
CODE_239800:        ASL A                     
CODE_239801:        STA $00                   
CODE_239803:        LDX #$00                  
CODE_239805:        LDA $0619,y               
CODE_239808:        LSR A                     
CODE_239809:        LSR A                     
CODE_23980A:        LSR A                     
CODE_23980B:        LSR A                     
CODE_23980C:        CMP #$08                  
CODE_23980E:        BCC CODE_239813           
CODE_239810:        DEX                       
CODE_239811:        ORA #$F0                  
CODE_239813:        STA $01                   
CODE_239815:        LDA $0631,y               
CODE_239818:        CLC                       
CODE_239819:        ADC $00                   
CODE_23981B:        STA $0631,y               
CODE_23981E:        LDA $061F,y               
CODE_239821:        ADC $01                   
CODE_239823:        STA $061F,y               
CODE_239826:        RTS                       

CODE_239827:        LDA $7E3991               
CODE_23982B:        TAY                       
CODE_23982C:        TYA                       
CODE_23982D:        ASL A                     
CODE_23982E:        ASL A                     
CODE_23982F:        TAX                       
CODE_239830:        LDA $061F,y               
CODE_239833:        CMP #$C0                  
CODE_239835:        BCC CODE_23983C           
CODE_239837:        LDA #$F8                  
CODE_239839:        STA $061F,y               
CODE_23983C:        STA $0880,x               
CODE_23983F:        LDA #$61                  
CODE_239841:        STA $0881,x               
CODE_239844:        LDA #$01                  
CODE_239846:        STA $0882,x               
CODE_239849:        LDA $062B,y               
CODE_23984C:        STA $0883,x               
CODE_23984F:        DEY                       
CODE_239850:        BPL CODE_23982C           
CODE_239852:        RTS                       

CODE_239853:        LDA $0711                 
CODE_239856:        BNE CODE_23985D           
CODE_239858:        LDA #$80                  
CODE_23985A:        STA $0711                 
CODE_23985D:        DEC $0711                 
CODE_239860:        BNE CODE_239870           
CODE_239862:        INC $1040                 
CODE_239865:        LDA $1040                 
CODE_239868:        CMP #$09                  
CODE_23986A:        BNE CODE_239870           
CODE_23986C:        LDA #$01                  
CODE_23986E:        STA $14                   
CODE_239870:        RTS                       

CODE_239871:        REP #$10                  
CODE_239873:        LDA #$1F                  
CODE_239875:        STA $00                   
CODE_239877:        LDY #$0160                
CODE_23987A:        LDA #$08                  
CODE_23987C:        STA $0800,y               
CODE_23987F:        STA $0804,y               
CODE_239882:        LDA #$F0                  
CODE_239884:        STA $0808,y               
CODE_239887:        STA $080C,y               
CODE_23988A:        LDA #$F8                  
CODE_23988C:        STA $0810,y               
CODE_23988F:        STA $0814,y               
CODE_239892:        LDA #$00                  
CODE_239894:        STA $0818,y               
CODE_239897:        STA $081C,y               
CODE_23989A:        LDA $00                   
CODE_23989C:        STA $0801,y               
CODE_23989F:        STA $0809,y               
CODE_2398A2:        STA $0811,y               
CODE_2398A5:        STA $0819,y               
CODE_2398A8:        CLC                       
CODE_2398A9:        ADC #$08                  
CODE_2398AB:        STA $0805,y               
CODE_2398AE:        STA $080D,y               
CODE_2398B1:        STA $0815,y               
CODE_2398B4:        STA $081D,y               
CODE_2398B7:        LDA #$70                  
CODE_2398B9:        STA $0802,y               
CODE_2398BC:        STA $080A,y               
CODE_2398BF:        INC A                     
CODE_2398C0:        STA $0806,y               
CODE_2398C3:        STA $080E,y               
CODE_2398C6:        LDA #$7A                  
CODE_2398C8:        STA $0812,y               
CODE_2398CB:        STA $081A,y               
CODE_2398CE:        INC A                     
CODE_2398CF:        STA $0816,y               
CODE_2398D2:        STA $081E,y               
CODE_2398D5:        LDA #$2A                  
CODE_2398D7:        STA $0803,y               
CODE_2398DA:        STA $0807,y               
CODE_2398DD:        STA $080B,y               
CODE_2398E0:        STA $080F,y               
CODE_2398E3:        STA $0813,y               
CODE_2398E6:        STA $0817,y               
CODE_2398E9:        STA $081B,y               
CODE_2398EC:        STA $081F,y               
CODE_2398EF:        PHY                       
CODE_2398F0:        REP #$20                  
CODE_2398F2:        TYA                       
CODE_2398F3:        LSR A                     
CODE_2398F4:        LSR A                     
CODE_2398F5:        TAY                       
CODE_2398F6:        SEP #$20                  
CODE_2398F8:        LDA #$00                  
CODE_2398FA:        STA $0A20,y               
CODE_2398FD:        STA $0A21,y               
CODE_239900:        STA $0A22,y               
CODE_239903:        STA $0A23,y               
CODE_239906:        STA $0A24,y               
CODE_239909:        STA $0A25,y               
CODE_23990C:        STA $0A26,y               
CODE_23990F:        STA $0A27,y               
CODE_239912:        PLY                       
CODE_239913:        LDA $00                   
CODE_239915:        CLC                       
CODE_239916:        ADC #$10                  
CODE_239918:        STA $00                   
CODE_23991A:        REP #$20                  
CODE_23991C:        TYA                       
CODE_23991D:        SEC                       
CODE_23991E:        SBC #$0020                
CODE_239921:        TAY                       
CODE_239922:        SEP #$20                  
CODE_239924:        CPY #$0020                
CODE_239927:        BEQ CODE_23992C           
CODE_239929:        BRL CODE_23987A           

CODE_23992C:        SEP #$10                  
CODE_23992E:        LDY #$2F                  
CODE_239930:        LDA.w DATA_21998B,y               
CODE_239933:        STA $0800,y               
CODE_239936:        DEY                       
CODE_239937:        BPL CODE_239930           
CODE_239939:        REP #$20                  
CODE_23993B:        LDA #$0000                
CODE_23993E:        STA $0A20                 
CODE_239941:        STA $0A22                 
CODE_239944:        STA $0A24                 
CODE_239947:        STA $0A26                 
CODE_23994A:        STA $0A28                 
CODE_23994D:        STA $0A2A                 
CODE_239950:        SEP #$20                  
CODE_239952:        RTL                       

CODE_239953:        JSR CODE_239957           
CODE_239956:        RTL                       

CODE_239957:        LDA $1009                 
CODE_23995A:        ASL A                     
CODE_23995B:        TAX                       
CODE_23995C:        JMP (PNTR_23995F,x)             

PNTR_23995F:        dw CODE_239963
                    dw CODE_23997B

CODE_239963:        LDA $100A
CODE_239966:        JSL CODE_20FB1F           ; ExecutePtrShort

PNTR_23996A:        dw CODE_23996E
                    dw CODE_239972

CODE_23996E:        INC $100A                 
CODE_239971:        RTS                       

CODE_239972:        INC $1009                 
CODE_239975:        LDA #$00                  
CODE_239977:        STA $1019                 
CODE_23997A:        RTS                       

CODE_23997B:        JSL CODE_2A8000           
CODE_23997F:        LDA $100B                 
CODE_239982:        ASL A                     
CODE_239983:        TAX                       
CODE_239984:        JMP (PNTR_239987,x)             

PNTR_239987:        dw CODE_239993
                    dw CODE_2399D5
                    dw CODE_239B98
                    dw CODE_239BB5
                    dw CODE_239BCD
                    dw CODE_239BE1
   
CODE_239993:        STZ $100C                 
CODE_239996:        STZ $100D                 
CODE_239999:        STZ $100E                 
CODE_23999C:        STZ $1FF9                 
CODE_23999F:        LDA #$70                  
CODE_2399A1:        STA $100F                 
CODE_2399A4:        LDA #$90                  
CODE_2399A6:        STA $1010                 
CODE_2399A9:        LDA #$7F                  
CODE_2399AB:        STA $1011                 
CODE_2399AE:        STZ $1A5F                 
CODE_2399B1:        STZ $1015                 
CODE_2399B4:        STZ $1016                 
CODE_2399B7:        STZ $1017                 
CODE_2399BA:        STZ $1000                 
CODE_2399BD:        STZ $1001                 
CODE_2399C0:        STZ $1002                 
CODE_2399C3:        STZ $1003                 
CODE_2399C6:        STZ $1004                 
CODE_2399C9:        STZ $1005                 
CODE_2399CC:        LDA #$30                  
CODE_2399CE:        STA $1A60                 
CODE_2399D1:        INC $100B                 
CODE_2399D4:        RTS                       

CODE_2399D5:        JSR CODE_23A4DC           
CODE_2399D8:        BCC CODE_239A29           
CODE_2399DA:        LDA $100C                 
CODE_2399DD:        BNE CODE_2399EF           
CODE_2399DF:        INC $100C                 
CODE_2399E2:        LDA $0783                 
CODE_2399E5:        AND #$0F                  
CODE_2399E7:        ORA #$20                  
CODE_2399E9:        STA $1012                 
CODE_2399EC:        JMP CODE_239A24           

CODE_2399EF:        LDA $100D                 
CODE_2399F2:        BNE CODE_239A0B           
CODE_2399F4:        LDA $100C                 
CODE_2399F7:        CMP #$02                  
CODE_2399F9:        BCC CODE_239A0B           
CODE_2399FB:        INC $100D                 
CODE_2399FE:        LDA $0784                 
CODE_239A01:        AND #$1F                  
CODE_239A03:        ORA #$20                  
CODE_239A05:        STA $1013                 
CODE_239A08:        JMP CODE_239A24           

CODE_239A0B:        LDA $100E                 
CODE_239A0E:        BNE CODE_239A29           
CODE_239A10:        LDA $100D                 
CODE_239A13:        CMP #$02                  
CODE_239A15:        BCC CODE_239A29           
CODE_239A17:        INC $100E                 
CODE_239A1A:        LDA $0785                 
CODE_239A1D:        AND #$3F                  
CODE_239A1F:        ORA #$40                  
CODE_239A21:        STA $1014                 
CODE_239A24:        LDA #$23                  
CODE_239A26:        STA $1203                 
CODE_239A29:        LDX #$02                  
CODE_239A2B:        STX $19                   
CODE_239A2D:        LDA $1012,x               
CODE_239A30:        BEQ CODE_239A35           
CODE_239A32:        DEC $1012,x               
CODE_239A35:        JSR CODE_239A3C           
CODE_239A38:        DEX                       
CODE_239A39:        BPL CODE_239A2B           
CODE_239A3B:        RTS                       

CODE_239A3C:        LDA $100C,x               
CODE_239A3F:        JSL CODE_20FB1F           ; ExecutePtrShort

PNTR_239A43:        dw CODE_239A4F
                    dw CODE_239A6F
                    dw CODE_239A7A
                    dw CODE_239ABB
                    dw CODE_239AE5
                    dw CODE_239B6D

CODE_239A4F:        CPX #$02
CODE_239A51:        BNE CODE_239A6C
CODE_239A53:        LDA $1A5F
CODE_239A56:        CLC                       
CODE_239A57:        ADC $1A60                 
CODE_239A5A:        STA $1A5F                 
CODE_239A5D:        DEC $02E0                 
CODE_239A60:        BPL CODE_239A6C           
CODE_239A62:        LDA #$06                  
CODE_239A64:        STA $02E0                 
CODE_239A67:        LDA #$41                  
CODE_239A69:        STA $1200                 
CODE_239A6C:        JMP CODE_239CC5           

CODE_239A6F:        LDA $1012,x               
CODE_239A72:        BNE CODE_239A4F           
CODE_239A74:        INC $100C,x               
CODE_239A77:        JMP CODE_239A4F           

CODE_239A7A:        LDA $100F,x               
CODE_239A7D:        CLC                       
CODE_239A7E:        ADC #$3F                  
CODE_239A80:        CMP #$7F                  
CODE_239A82:        BCS CODE_239A8A                   
CODE_239A84:        INC $100C,x               
CODE_239A87:        JMP CODE_239A4F           

CODE_239A8A:        CPX #$02                  
CODE_239A8C:        BNE CODE_239AA1           
CODE_239A8E:        LDA $1A60                 
CODE_239A91:        CMP #$11                  
CODE_239A93:        BCC CODE_239AA1           
CODE_239A95:        DEC $1A60                 
CODE_239A98:        LDA $15                   
CODE_239A9A:        AND #$01                  
CODE_239A9C:        BNE CODE_239AA1           
CODE_239A9E:        DEC $1A60                 
CODE_239AA1:        LDA $100F,x               
CODE_239AA4:        BPL CODE_239AAF           
CODE_239AA6:        LDA $100F,x               
CODE_239AA9:        CLC                       
CODE_239AAA:        ADC #$04                  
CODE_239AAC:        STA $100F,x               
CODE_239AAF:        LDA $100F,x               
CODE_239AB2:        SEC                       
CODE_239AB3:        SBC #$02                  
CODE_239AB5:        STA $100F,x               
CODE_239AB8:        JMP CODE_239A4F           

CODE_239ABB:        LDA $1000,x               
CODE_239ABE:        AND #$7C                  
CODE_239AC0:        BNE CODE_239AE2           
CODE_239AC2:        LDA #$3E                  
CODE_239AC4:        STA $1203                 
CODE_239AC7:        LDA #$12                  
CODE_239AC9:        STA $1012,x               
CODE_239ACC:        LDA $1000,x               
CODE_239ACF:        CLC                       
CODE_239AD0:        ADC #$20                  
CODE_239AD2:        AND #$80                  
CODE_239AD4:        STA $1000,x               
CODE_239AD7:        LDA $1003,x               
CODE_239ADA:        ADC #$00                  
CODE_239ADC:        STA $1003,x               
CODE_239ADF:        INC $100C,x               
CODE_239AE2:        JMP CODE_239A4F           

CODE_239AE5:        LDA $1012,x               
CODE_239AE8:        BNE CODE_239B5E           
CODE_239AEA:        LDA $1000,x               
CODE_239AED:        CLC                       
CODE_239AEE:        ADC #$20                  
CODE_239AF0:        AND #$80                  
CODE_239AF2:        STA $1000,x               
CODE_239AF5:        STA $00                   
CODE_239AF7:        LDA $1003,x               
CODE_239AFA:        ADC #$00                  
CODE_239AFC:        STA $1003,x               
CODE_239AFF:        ASL $00                   
CODE_239B01:        ROL A                     
CODE_239B02:        AND #$03                  
CODE_239B04:        STA $1006,x               
CODE_239B07:        CPX #$02                  
CODE_239B09:        BNE CODE_239B58           
CODE_239B0B:        LDA #$50                  
CODE_239B0D:        STA $1012,x               
CODE_239B10:        LDA $1006                 
CODE_239B13:        ASL A                     
CODE_239B14:        TAX                       
CODE_239B15:        LDY #$01                  
CODE_239B17:        LDA $1007,y               
CODE_239B1A:        CMP $2199BB,x             
CODE_239B1E:        BEQ CODE_239B26           
CODE_239B20:        CMP $2199BC,x             
CODE_239B24:        BNE CODE_239B53           
CODE_239B26:        DEY                       
CODE_239B27:        BPL CODE_239B17           
CODE_239B29:        LDX $1006                 
CODE_239B2C:        LDA.l DATA_2199C3,x             
CODE_239B30:        STA $1FF9                 
CODE_239B33:        JSL CODE_2A810D           
CODE_239B37:        LDA #$07                  
CODE_239B39:        STA $1202                 
CODE_239B3C:        LDA #$60                  
CODE_239B3E:        STA $02D8                 
CODE_239B41:        LDA #$04                  
CODE_239B43:        STA $100B                 
CODE_239B46:        LDA #$F0                  
CODE_239B48:        STA $100C                 
CODE_239B4B:        STZ $1012                 
CODE_239B4E:        LDX $19                   
CODE_239B50:        PLA                       
CODE_239B51:        PLA                       
CODE_239B52:        RTS                       

CODE_239B53:        LDA #$2A                  
CODE_239B55:        STA $1203                 
CODE_239B58:        LDX $19                   
CODE_239B5A:        INC $100C,x               
CODE_239B5D:        RTS                       

CODE_239B5E:        LDY #$10                  
CODE_239B60:        AND #$04                  
CODE_239B62:        BNE CODE_239B66           
CODE_239B64:        LDY #$F0                  
CODE_239B66:        TYA                       
CODE_239B67:        STA $100F,x               
CODE_239B6A:        JMP CODE_239A4F           

CODE_239B6D:        CPX #$02                  
CODE_239B6F:        BNE CODE_239B76           
CODE_239B71:        LDA $1012,x               
CODE_239B74:        BEQ CODE_239B77           
CODE_239B76:        RTS                       

CODE_239B77:        LDA $1019                 
CODE_239B7A:        BEQ CODE_239B8B           
CODE_239B7C:        LDA $17                   
CODE_239B7E:        AND #$D0                  
CODE_239B80:        BEQ CODE_239B8A           
CODE_239B82:        DEC $1019                 
CODE_239B85:        LDA #$00                  
CODE_239B87:        STA $100B                 
CODE_239B8A:        RTS                       

CODE_239B8B:        PLA                       
CODE_239B8C:        PLA                       
CODE_239B8D:        LDA #$02                  
CODE_239B8F:        STA $100B                 
CODE_239B92:        LDA #$00                  
CODE_239B94:        STA $100C                 
CODE_239B97:        RTS                       

CODE_239B98:        LDA $100C                 
CODE_239B9B:        BNE CODE_239BA5           
CODE_239B9D:        INC $100C                 
CODE_239BA0:        JSL CODE_29E26B           
CODE_239BA4:        RTS                       

CODE_239BA5:        LDA $15                   
CODE_239BA7:        AND #$01                  
CODE_239BA9:        BNE CODE_239BB4           
CODE_239BAB:        DEC $16                   
CODE_239BAD:        LDA $16                   
CODE_239BAF:        BNE CODE_239BB4           
CODE_239BB1:        INC $100B                 
CODE_239BB4:        RTS                       

CODE_239BB5:        LDA #$01                  
CODE_239BB7:        STA $101E                 
CODE_239BBA:        LDA #$01                  
CODE_239BBC:        STA $14                   
CODE_239BBE:        LDA #$80                  
CODE_239BC0:        STA $16                   
CODE_239BC2:        LDA #$C0                  
CODE_239BC4:        STA $0100                 
CODE_239BC7:        LDA #$00                  
CODE_239BC9:        STA $0427                 
CODE_239BCC:        RTS                       

CODE_239BCD:        LDA $02D8                 
CODE_239BD0:        BNE CODE_239BD8           
CODE_239BD2:        LDA #$05                  
CODE_239BD4:        STA $100B                 
CODE_239BD7:        RTS                       

CODE_239BD8:        DEC $02D8                 
CODE_239BDB:        RTS                       

DATA_239BDC:        db $32,$34,$36,$00,$38   

CODE_239BE1:        LDA $1012                 
CODE_239BE4:        BEQ CODE_239C14           
CODE_239BE6:        DEC $1012                 
CODE_239BE9:        BNE CODE_239BEE           
CODE_239BEB:        JMP CODE_239B8D           

CODE_239BEE:        LDA $15                   
CODE_239BF0:        AND #$1F                  
CODE_239BF2:        BNE CODE_239C11           
CODE_239BF4:        LDA $100D                 
CODE_239BF7:        BEQ CODE_239C11           
CODE_239BF9:        LDA #$A0                  
CODE_239BFB:        STA $1012                 
CODE_239BFE:        DEC $100D                 
CODE_239C01:        LDA #$05                  
CODE_239C03:        STA $1203                 
CODE_239C06:        LDX $0726                 
CODE_239C09:        LDA $0736,x               
CODE_239C0C:        BMI CODE_239C11           
CODE_239C0E:        INC $0736,x               
CODE_239C11:        JMP CODE_239C32           

CODE_239C14:        DEC $100C                 
CODE_239C17:        DEC $100C                 
CODE_239C1A:        DEC $100C                 
CODE_239C1D:        DEC $100C                 
CODE_239C20:        LDA $100C                 
CODE_239C23:        CMP #$60                  
CODE_239C25:        BCS CODE_239C32                   
CODE_239C27:        LDA $1FF9                 
CODE_239C2A:        STA $100D                 
CODE_239C2D:        LDA #$50                  
CODE_239C2F:        STA $1012                 
CODE_239C32:        LDA #$70                  
CODE_239C34:        STA $09D0                 
CODE_239C37:        STA $09DC                 
CODE_239C3A:        LDA #$7C                  
CODE_239C3C:        STA $09D4                 
CODE_239C3F:        STA $09E0                 
CODE_239C42:        LDA #$84                  
CODE_239C44:        STA $09D8                 
CODE_239C47:        STA $09E4                 
CODE_239C4A:        LDA $100C                 
CODE_239C4D:        STA $09D1                 
CODE_239C50:        STA $09D5                 
CODE_239C53:        STA $09D9                 
CODE_239C56:        CLC                       
CODE_239C57:        ADC #$08                  
CODE_239C59:        STA $09DD                 
CODE_239C5C:        STA $09E1                 
CODE_239C5F:        STA $09E5                 
CODE_239C62:        LDX $1FF9                 
CODE_239C65:        LDA.l DATA_239BDC-1,x             
CODE_239C69:        STA $09D2                 
CODE_239C6C:        INC A                     
CODE_239C6D:        STA $09DE                 
CODE_239C70:        LDA #$0C                  
CODE_239C72:        STA $09D6                 
CODE_239C75:        INC A                     
CODE_239C76:        STA $09E2                 
CODE_239C79:        INC A                     
CODE_239C7A:        STA $09DA                 
CODE_239C7D:        INC A                     
CODE_239C7E:        STA $09E6                 
CODE_239C81:        LDA #$22                  
CODE_239C83:        STA $09D3                 
CODE_239C86:        STA $09DF                 
CODE_239C89:        STA $09D7                 
CODE_239C8C:        STA $09E3                 
CODE_239C8F:        STA $09DB                 
CODE_239C92:        STA $09E7                 
CODE_239C95:        LDA #$00                  
CODE_239C97:        STA $0A94                 
CODE_239C9A:        STA $0A95                 
CODE_239C9D:        STA $0A96                 
CODE_239CA0:        STA $0A97                 
CODE_239CA3:        STA $0A98                 
CODE_239CA6:        STA $0A99                 
CODE_239CA9:        RTS                       

CODE_239CAA:        LDA $101C                 
CODE_239CAD:        BEQ CODE_239CB2           
CODE_239CAF:        DEC $101C                 
CODE_239CB2:        LDA $101D                 
CODE_239CB5:        BEQ CODE_239CC4           
CODE_239CB7:        LDA $101C                 
CODE_239CBA:        BNE CODE_239CC4           
CODE_239CBC:        LDA #$04                  
CODE_239CBE:        STA $101C                 
CODE_239CC1:        DEC $101D                 
CODE_239CC4:        RTS                       

CODE_239CC5:        LDA $100F,x               
CODE_239CC8:        ASL A                     
CODE_239CC9:        ASL A                     
CODE_239CCA:        ASL A                     
CODE_239CCB:        ASL A                     
CODE_239CCC:        STA $01                   
CODE_239CCE:        LDA $100F,x               
CODE_239CD1:        LSR A                     
CODE_239CD2:        LSR A                     
CODE_239CD3:        LSR A                     
CODE_239CD4:        LSR A                     
CODE_239CD5:        CMP #$08                  
CODE_239CD7:        BCC CODE_239CDB           
CODE_239CD9:        ORA #$F0                  
CODE_239CDB:        STA $00                   
CODE_239CDD:        LDY #$00                  
CODE_239CDF:        CMP #$00                  
CODE_239CE1:        BPL CODE_239CE4           
CODE_239CE3:        DEY                       
CODE_239CE4:        STY $02                   
CODE_239CE6:        LDA $1015,x               
CODE_239CE9:        CLC                       
CODE_239CEA:        ADC $01                   
CODE_239CEC:        STA $1015,x               
CODE_239CEF:        LDA $1000,x               
CODE_239CF2:        ADC $00                   
CODE_239CF4:        STA $1000,x               
CODE_239CF7:        LDA $1003,x               
CODE_239CFA:        ADC $02                   
CODE_239CFC:        STA $1003,x               
CODE_239CFF:        RTS                       

CODE_239D00:        JSL CODE_2A81A5           
CODE_239D04:        LDX #$80                  
CODE_239D06:        STX $2115                 
CODE_239D09:        LDA #$80                  
CODE_239D0B:        STA $2116                 
CODE_239D0E:        LDA #$00                  
CODE_239D10:        STA $2117                 
CODE_239D13:        JSL CODE_239D21           
CODE_239D17:        LDA #$80                  
CODE_239D19:        STA $2116                 
CODE_239D1C:        LDA #$04                  
CODE_239D1E:        STA $2117                 
CODE_239D21:        REP #$30                  
CODE_239D23:        LDY #$0000                
CODE_239D26:        LDA #$00FC                
CODE_239D29:        STA $2118                 
CODE_239D2C:        STA $2118                 
CODE_239D2F:        INY                       
CODE_239D30:        CPY #$0130                
CODE_239D33:        BNE CODE_239D26           
CODE_239D35:        AND #$0000                
CODE_239D38:        SEP #$30                  
CODE_239D3A:        REP #$10                  
CODE_239D3C:        STZ $01                   
CODE_239D3E:        STZ $04                   
CODE_239D40:        LDA #$C0                  
CODE_239D42:        STA $00                   
CODE_239D44:        LDY #$000C                
CODE_239D47:        LDA $04                   
CODE_239D49:        ASL A                     
CODE_239D4A:        CLC                       
CODE_239D4B:        ADC $04                   
CODE_239D4D:        TAX                       
CODE_239D4E:        LDA.l PNTR_2282FB,x             
CODE_239D52:        STA $0D                   
CODE_239D54:        LDA.l PNTR_2282FB+1,x             
CODE_239D58:        STA $0E                   
CODE_239D5A:        LDA.l PNTR_2282FB+2,x             
CODE_239D5E:        STA $0F                   
CODE_239D60:        REP #$20                  
CODE_239D62:        LDA $00                   
CODE_239D64:        STA $2116                 
CODE_239D67:        LDX #$0000                
CODE_239D6A:        LDA [$0D],y               
CODE_239D6C:        STA $2118                 
CODE_239D6F:        INY                       
CODE_239D70:        INY                       
CODE_239D71:        INX                       
CODE_239D72:        CPX #$0006                
CODE_239D75:        BNE CODE_239D6A           
CODE_239D77:        TYA                       
CODE_239D78:        CLC                       
CODE_239D79:        ADC #$000C                
CODE_239D7C:        TAY                       
CODE_239D7D:        AND #$00FF                
CODE_239D80:        SEP #$20                  
CODE_239D82:        LDA $00                   
CODE_239D84:        CLC                       
CODE_239D85:        ADC #$20                  
CODE_239D87:        BCC CODE_239D8B           
CODE_239D89:        INC $01                   
CODE_239D8B:        STA $00                   
CODE_239D8D:        AND #$E0                  
CODE_239D8F:        CMP #$80                  
CODE_239D91:        BNE CODE_239D60           
CODE_239D93:        LDA $01                   
CODE_239D95:        AND #$03                  
CODE_239D97:        CMP #$02                  
CODE_239D99:        BNE CODE_239D60           
CODE_239D9B:        DEC $01                   
CODE_239D9D:        DEC $01                   
CODE_239D9F:        LDA $00                   
CODE_239DA1:        CLC                       
CODE_239DA2:        ADC #$46                  
CODE_239DA4:        STA $00                   
CODE_239DA6:        LDA $04                   
CODE_239DA8:        CMP #$01                  
CODE_239DAA:        BNE CODE_239DB6           
CODE_239DAC:        CPY #$015C                
CODE_239DAF:        BEQ CODE_239DB6           
CODE_239DB1:        LDY #$000C                
CODE_239DB4:        BRA CODE_239D60           

CODE_239DB6:        LDA $00                   
CODE_239DB8:        CLC                       
CODE_239DB9:        ADC #$04                  
CODE_239DBB:        STA $00                   
CODE_239DBD:        LDY #$0000                
CODE_239DC0:        LDA $01                   
CODE_239DC2:        CMP #$04                  
CODE_239DC4:        BEQ CODE_239DD5           
CODE_239DC6:        INC $04                   
CODE_239DC8:        LDA $04                   
CODE_239DCA:        CMP #$03                  
CODE_239DCC:        BEQ CODE_239DD1           
CODE_239DCE:        BRL CODE_239D47           

CODE_239DD1:        LDA #$04                  
CODE_239DD3:        STA $01                   
CODE_239DD5:        DEC $04                   
CODE_239DD7:        BMI CODE_239DE2           
CODE_239DD9:        LDA $04                   
CODE_239DDB:        CMP #$02                  
CODE_239DDD:        BEQ CODE_239DE5           
CODE_239DDF:        JMP CODE_239D47           

CODE_239DE2:        SEP #$10                  
CODE_239DE4:        RTL                       

CODE_239DE5:        BRL CODE_239D40           

CODE_239DE8:        JSR CODE_239DEC           
CODE_239DEB:        RTL                       

CODE_239DEC:        LDA $1041                 
CODE_239DEF:        JSL CODE_20FB1F           ; ExecutePtrShort

PNTR_239DF3:        dw CODE_239DF9
                    dw CODE_239E18
                    dw CODE_239E36

CODE_239DF9:        LDA $0742                 ;Flag to shuffle N-Space cards
CODE_239DFC:        BNE CODE_239E0F           ;$00 means N-Spade was cleared and it's time to shuffle
CODE_239DFE:        LDY #$11                  ;\
CODE_239E00:        LDA.w DATA_219A1C,y       ; |
CODE_239E03:        STA $1E84,y               ; | Load set of cards
CODE_239E06:        DEY                       ; |
CODE_239E07:        BPL CODE_239E00           ; |
CODE_239E09:        JSR CODE_239FE6           ;/ Shuffle them
CODE_239E0C:        INC $0742                 ;Set flag to keep the cards
CODE_239E0F:        INC $1041                 
CODE_239E12:        LDA #$11                  ; N-Spade cursor position
CODE_239E14:        STA $1028                 ;
CODE_239E17:        RTS                       

CODE_239E18:        LDY $1028                 
CODE_239E1B:        STY $0A                   
CODE_239E1D:        LDA $1E84,y               
CODE_239E20:        AND #$80                  
CODE_239E22:        BNE CODE_239E2A           
CODE_239E24:        JSR CODE_23A0DA           
CODE_239E27:        JMP CODE_239E2D           

CODE_239E2A:        JSR CODE_23A02A           
CODE_239E2D:        DEC $1028                 
CODE_239E30:        BPL CODE_239E35           
CODE_239E32:        INC $1041                 
CODE_239E35:        RTS                       

CODE_239E36:        INC $1041                 
CODE_239E39:        LDY #$19                  
CODE_239E3B:        LDA #$00                  
CODE_239E3D:        STA $1026,y               
CODE_239E40:        DEY                       
CODE_239E41:        BPL CODE_239E3B           
CODE_239E43:        LDY #$03                  
CODE_239E45:        LDA #$FF                  
CODE_239E47:        STA $1037,y               
CODE_239E4A:        DEY                       
CODE_239E4B:        BPL CODE_239E45           
CODE_239E4D:        LDA #$20                  
CODE_239E4F:        STA $1032                 
CODE_239E52:        LDA #$DA                  
CODE_239E54:        STA $1033                 
CODE_239E57:        LDA #$CE                  
CODE_239E59:        STA $103B                 
CODE_239E5C:        LDA #$01                  
CODE_239E5E:        STA $1035                 
CODE_239E61:        RTS                       

CODE_239E62:        LDA $103E                 
CODE_239E65:        BEQ CODE_239E72           
CODE_239E67:        INC $0422                 
CODE_239E6A:        LDA #$0A                  
CODE_239E6C:        STA $069C                 
CODE_239E6F:        DEC $103E                 
CODE_239E72:        JSR CODE_239E76           
CODE_239E75:        RTL                       

CODE_239E76:        LDA $1034                 
CODE_239E79:        JSL CODE_20FB1F           ; ExecutePtrShort

PNTR_239E7D:        dw CODE_239E8F
                    dw CODE_239E99
                    dw CODE_239EC4
                    dw CODE_239EF0
                    dw CODE_239EF7
                    dw CODE_239F46
                    dw CODE_239F7E
                    dw CODE_239F86
                    dw CODE_239FA6
   
CODE_239E8F:        JSR CODE_23A269   
CODE_239E92:        JSR CODE_23A309           
CODE_239E95:        STZ $02D2                 
CODE_239E98:        RTS                       

CODE_239E99:        LDY $1028                 
CODE_239E9C:        LDA $1E84,y               
CODE_239E9F:        AND #$80                  
CODE_239EA1:        BNE CODE_239EC0           
CODE_239EA3:        LDA #$04                  
CODE_239EA5:        STA $1036                 
CODE_239EA8:        LDA $1028                 
CODE_239EAB:        STA $0A                   
CODE_239EAD:        JSR CODE_23A1C0           
CODE_239EB0:        LDA #$00                  
CODE_239EB2:        STA $102D                 
CODE_239EB5:        INC $1034                 
CODE_239EB8:        LDA #$41                  
CODE_239EBA:        STA $1200                 
CODE_239EBD:        JMP CODE_239EC4           

CODE_239EC0:        DEC $1034                 
CODE_239EC3:        RTS                       

CODE_239EC4:        LDA $102D                 
CODE_239EC7:        BEQ CODE_239ECD           
CODE_239EC9:        DEC $102D                 
CODE_239ECC:        RTS                       

CODE_239ECD:        LDA $1028                 
CODE_239ED0:        STA $0A                   
CODE_239ED2:        JSR CODE_23A383           
CODE_239ED5:        DEC $1036                 
CODE_239ED8:        LDA $1036                 
CODE_239EDB:        CMP #$FE                  
CODE_239EDD:        BNE CODE_239EEA           
CODE_239EDF:        LDA $1028                 
CODE_239EE2:        STA $0A                   
CODE_239EE4:        JSR CODE_23A02A           
CODE_239EE7:        INC $1034                 
CODE_239EEA:        LDA #$04                  
CODE_239EEC:        STA $102D                 
CODE_239EEF:        RTS                       

CODE_239EF0:        INC $1030                 
CODE_239EF3:        JSR CODE_23A20B           
CODE_239EF6:        RTS                       

CODE_239EF7:        LDY $1028                 
CODE_239EFA:        LDA $1E84,y               
CODE_239EFD:        ORA #$80                  
CODE_239EFF:        STA $1E84,y               
CODE_239F02:        LDA #$04                  
CODE_239F04:        STA $1034                 
CODE_239F07:        LDA $103D                 
CODE_239F0A:        BNE CODE_239F12           
CODE_239F0C:        JSR CODE_23A454           
CODE_239F0F:        INC $0741                 
CODE_239F12:        INC $103D                 
CODE_239F15:        LDA $103D                 
CODE_239F18:        CMP #$51                  
CODE_239F1A:        BEQ CODE_239F20           
CODE_239F1C:        JSR CODE_23A49F           
CODE_239F1F:        RTS                       

CODE_239F20:        STZ $1034                 
CODE_239F23:        STZ $103D                 
CODE_239F26:        LDY #$00                  
CODE_239F28:        JSR CODE_23A4B0           
CODE_239F2B:        STZ $02D2                 
CODE_239F2E:        LDA $0741                 
CODE_239F31:        CMP #$09                  
CODE_239F33:        BNE CODE_239F45           
CODE_239F35:        LDA #$06                  
CODE_239F37:        STA $1034                 
CODE_239F3A:        LDA #$40                  
CODE_239F3C:        STA $102B                 
CODE_239F3F:        STZ $0742                 ;Set the N-Space cards to shuffle again.
CODE_239F42:        STZ $0741                 
CODE_239F45:        RTS                       

CODE_239F46:        LDA #$00                  
CODE_239F48:        STA $1036                 
CODE_239F4B:        LDA #$01                  
CODE_239F4D:        STA $0B                   
CODE_239F4F:        INC $1034                 
CODE_239F52:        INC $1034                 
CODE_239F55:        LDA #$40                  
CODE_239F57:        STA $102B                 
CODE_239F5A:        LDY $1028                 
CODE_239F5D:        LDA $1E84,y               
CODE_239F60:        AND #$7F                  
CODE_239F62:        STA $1E84,y               
CODE_239F65:        LDY $1029                 
CODE_239F68:        LDA $1E84,y               
CODE_239F6B:        AND #$7F                  
CODE_239F6D:        STA $1E84,y               
CODE_239F70:        LDA #$2A                  
CODE_239F72:        STA $1203                 
CODE_239F75:        DEC $1035                 
CODE_239F78:        BPL CODE_239F7D           
CODE_239F7A:        DEC $1034                 
CODE_239F7D:        RTS                       

CODE_239F7E:        DEC $102B                 
CODE_239F81:        BPL CODE_239F85           
CODE_239F83:        INC $14                   
CODE_239F85:        RTS                       

CODE_239F86:        LDA $102B                 
CODE_239F89:        BEQ CODE_239F8F           
CODE_239F8B:        DEC $102B                 
CODE_239F8E:        RTS                       

CODE_239F8F:        LDA #$00                  
CODE_239F91:        STA $1036                 
CODE_239F94:        LDY $0B                   
CODE_239F96:        LDA $1028,y               
CODE_239F99:        STA $0A                   
CODE_239F9B:        JSR CODE_23A1C0           
CODE_239F9E:        INC $1034                 
CODE_239FA1:        LDA #$00                  
CODE_239FA3:        STA $102D                 
CODE_239FA6:        LDA $102D                 
CODE_239FA9:        BEQ CODE_239FAF           
CODE_239FAB:        DEC $102D                 
CODE_239FAE:        RTS                       

CODE_239FAF:        LDY $0B                   
CODE_239FB1:        LDA $1028,y               
CODE_239FB4:        STA $0A                   
CODE_239FB6:        JSR CODE_23A383           
CODE_239FB9:        INC $1036                 
CODE_239FBC:        LDA $1036                 
CODE_239FBF:        CMP #$06                  
CODE_239FC1:        BCC CODE_239FE0           
CODE_239FC3:        LDY $0B                   
CODE_239FC5:        LDA $1028,y               
CODE_239FC8:        STA $0A                   
CODE_239FCA:        JSR CODE_23A0DA           
CODE_239FCD:        DEC $0B                   
CODE_239FCF:        BPL CODE_239FD7           
CODE_239FD1:        LDA #$00                  
CODE_239FD3:        STA $1034                 
CODE_239FD6:        RTS                       

CODE_239FD7:        LDA #$02                  
CODE_239FD9:        STA $102B                 
CODE_239FDC:        DEC $1034                 
CODE_239FDF:        RTS                       

CODE_239FE0:        LDA #$04                  
CODE_239FE2:        STA $102D                 
CODE_239FE5:        RTS                       

CODE_239FE6:        LDA #$02                  ;Shuffle cards thrice. The cards are stored in $1E84 as 18 cards
CODE_239FE8:        STA $0A                   ;
CODE_239FEA:        JSL CODE_22E103           ;\ Random number generation
CODE_239FEE:        AND #$1F                  ; | The amount of time card-shifting should be performed. Always 00 or 02.
CODE_239FF0:        TAY                       ;/
CODE_239FF1:        LDA $1E92                 ;\ Store card #15 in $0B
CODE_239FF4:        STA $0B                   ; |
CODE_239FF6:        LDX #$0D                  ; | Shift the cards one time to the right. Kinda like ROR
CODE_239FF8:        LDA $1E84,x               ; |
CODE_239FFB:        STA $1E85,x               ; |
CODE_239FFE:        DEX                       ; |
CODE_239FFF:        BPL CODE_239FF8           ; |
CODE_23A001:        LDA $0B                   ; | Store card #15 as card #00
CODE_23A003:        STA $1E84                 ;/|
CODE_23A006:        DEY                       ; |
CODE_23A007:        BPL CODE_239FF1           ;/  Depending on the RNG output from earlier, repeat card-shifting.
CODE_23A009:        LDX #$00                  ;\
CODE_23A00B:        LDA $1E84,x               ; | Store card #00 in $0B
CODE_23A00E:        STA $0B                   ; |
CODE_23A010:        LDA $1E89,x               ; | Swap card 5 with 0, 6 with 1, etc. until card 10
CODE_23A013:        STA $1E84,x               ; |
CODE_23A016:        LDA $1E8E,x               ; |
CODE_23A019:        STA $1E89,x               ; |
CODE_23A01C:        LDA $0B                   ; | Store card #00 as card #11
CODE_23A01E:        STA $1E8E,x               ;/|
CODE_23A021:        DEX                       ; |
CODE_23A022:        DEX                       ; |
CODE_23A023:        BPL CODE_23A00B           ;/ This branch never gets taken as X always will become FE after the card-swapping.
CODE_23A025:        DEC $0A                   ;
CODE_23A027:        BPL CODE_239FEA           ;Repeat the whole shuffling process
CODE_23A029:        RTS                       ;One quirk about this routine is that cards 16 17 and 18 are untouched.

CODE_23A02A:        REP #$20                  
CODE_23A02C:        LDY #$3A                  
CODE_23A02E:        LDA.w DATA_219AC3,y               
CODE_23A031:        STA $1602,y               
CODE_23A034:        DEY                       
CODE_23A035:        DEY                       
CODE_23A036:        BPL CODE_23A02E           
CODE_23A038:        LDA $0A                   
CODE_23A03A:        AND #$00FF                
CODE_23A03D:        ASL A                     
CODE_23A03E:        TAY                       
CODE_23A03F:        LDA.w DATA_219A2E,y               
CODE_23A042:        STA $102E                 
CODE_23A045:        LDY #$00                  
CODE_23A047:        LDX #$04                  
CODE_23A049:        LDA $102E                 
CODE_23A04C:        STA $1602,y               
CODE_23A04F:        SEP #$20                  
CODE_23A051:        TYA                       
CODE_23A052:        CLC                       
CODE_23A053:        ADC #$0C                  
CODE_23A055:        TAY                       
CODE_23A056:        LDA $102F                 
CODE_23A059:        CLC                       
CODE_23A05A:        ADC #$20                  
CODE_23A05C:        STA $102F                 
CODE_23A05F:        LDA $102E                 
CODE_23A062:        ADC #$00                  
CODE_23A064:        STA $102E                 
CODE_23A067:        REP #$20                  
CODE_23A069:        DEX                       
CODE_23A06A:        BPL CODE_23A049           
CODE_23A06C:        SEP #$20                  
CODE_23A06E:        LDY $0A                   
CODE_23A070:        LDA $1E84,y               
CODE_23A073:        AND #$7F                  
CODE_23A075:        STA $0B                   
CODE_23A077:        ASL A                     
CODE_23A078:        ASL A                     
CODE_23A079:        ASL A                     
CODE_23A07A:        TAY                       
CODE_23A07B:        REP #$20                  
CODE_23A07D:        LDA.w DATA_219A52,y               
CODE_23A080:        STA $1614                 
CODE_23A083:        INY                       
CODE_23A084:        INY                       
CODE_23A085:        LDA.w DATA_219A52,y               
CODE_23A088:        STA $1616                 
CODE_23A08B:        INY                       
CODE_23A08C:        INY                       
CODE_23A08D:        LDA.w DATA_219A52,y               
CODE_23A090:        STA $1620                 
CODE_23A093:        INY                       
CODE_23A094:        INY                       
CODE_23A095:        LDA.w DATA_219A52,y               
CODE_23A098:        STA $1622                 
CODE_23A09B:        LDA #$FFFF                
CODE_23A09E:        STA $163E                 
CODE_23A0A1:        SEP #$20                  
CODE_23A0A3:        LDA #$3C                  
CODE_23A0A5:        STA $1600                 
CODE_23A0A8:        LDA $0B                   
CODE_23A0AA:        CMP #$03                  
CODE_23A0AC:        BCC CODE_23A0BF           
CODE_23A0AE:        SEC                       
CODE_23A0AF:        SBC #$03                  
CODE_23A0B1:        ASL A                     
CODE_23A0B2:        TAY                       
CODE_23A0B3:        LDA.w DATA_219A87,y               
CODE_23A0B6:        STA $162C                 
CODE_23A0B9:        LDA.w DATA_219A8D,y               
CODE_23A0BC:        STA $162E                 
CODE_23A0BF:        LDA #$F0                  
CODE_23A0C1:        STA $081D                 
CODE_23A0C4:        STA $0821                 
CODE_23A0C7:        STA $0825                 
CODE_23A0CA:        STA $0829                 
CODE_23A0CD:        STA $082D                 
CODE_23A0D0:        STA $0831                 
CODE_23A0D3:        STA $0835                 
CODE_23A0D6:        STA $0839                 
CODE_23A0D9:        RTS                       

CODE_23A0DA:        REP #$20                  
CODE_23A0DC:        LDY #$3A                  
CODE_23A0DE:        LDA.w DATA_219B3D,y               
CODE_23A0E1:        STA $1602,y               
CODE_23A0E4:        DEY                       
CODE_23A0E5:        DEY                       
CODE_23A0E6:        BPL CODE_23A0DE           
CODE_23A0E8:        LDA $0A                   
CODE_23A0EA:        AND #$00FF                
CODE_23A0ED:        ASL A                     
CODE_23A0EE:        TAY                       
CODE_23A0EF:        LDA.w DATA_219A2E,y               
CODE_23A0F2:        STA $102E                 
CODE_23A0F5:        LDY #$00                  
CODE_23A0F7:        LDX #$04                  
CODE_23A0F9:        LDA $102E                 
CODE_23A0FC:        STA $1602,y               
CODE_23A0FF:        SEP #$20                  
CODE_23A101:        TYA                       
CODE_23A102:        CLC                       
CODE_23A103:        ADC #$0C                  
CODE_23A105:        TAY                       
CODE_23A106:        LDA $102F                 
CODE_23A109:        CLC                       
CODE_23A10A:        ADC #$20                  
CODE_23A10C:        STA $102F                 
CODE_23A10F:        LDA $102E                 
CODE_23A112:        ADC #$00                  
CODE_23A114:        STA $102E                 
CODE_23A117:        REP #$20                  
CODE_23A119:        DEX                       
CODE_23A11A:        BPL CODE_23A0F9           
CODE_23A11C:        LDA #$FFFF                
CODE_23A11F:        STA $163E                 
CODE_23A122:        SEP #$20                  
CODE_23A124:        LDA #$3C                  
CODE_23A126:        STA $1600                 
CODE_23A129:        LDA #$F0                  
CODE_23A12B:        STA $081D                 
CODE_23A12E:        STA $0821                 
CODE_23A131:        STA $0825                 
CODE_23A134:        STA $0829                 
CODE_23A137:        STA $082D                 
CODE_23A13A:        STA $0831                 
CODE_23A13D:        STA $0835                 
CODE_23A140:        STA $0839                 
CODE_23A143:        RTS                       
CODE_23A144:        LDY #$00                  
CODE_23A146:        LDA #$01                  
CODE_23A148:        STA $0A                   
CODE_23A14A:        LDX $1028                 
CODE_23A14D:        LDA $1E84,x               
CODE_23A150:        STA $0B                   
CODE_23A152:        ASL A                     
CODE_23A153:        ASL A                     
CODE_23A154:        TAX                       
CODE_23A155:        REP #$20                  
CODE_23A157:        LDA $1033                 
CODE_23A15A:        STA $1602,y               
CODE_23A15D:        INY                       
CODE_23A15E:        INY                       
CODE_23A15F:        SEP #$20                  
CODE_23A161:        LDA #$02                  
CODE_23A163:        STA $1602,y               
CODE_23A166:        INY                       
CODE_23A167:        LDA.w DATA_219A52,x               
CODE_23A16A:        STA $1602,y               
CODE_23A16D:        INY                       
CODE_23A16E:        INX                       
CODE_23A16F:        LDA.w DATA_219A52,x               
CODE_23A172:        STA $1602,y               
CODE_23A175:        INY                       
CODE_23A176:        INX                       
CODE_23A177:        LDA $1033                 
CODE_23A17A:        CLC                       
CODE_23A17B:        ADC #$20                  
CODE_23A17D:        STA $1033                 
CODE_23A180:        LDA $1032                 
CODE_23A183:        ADC #$00                  
CODE_23A185:        STA $1032                 
CODE_23A188:        DEC $0A                   
CODE_23A18A:        BPL CODE_23A155           
CODE_23A18C:        LDA $103D                 
CODE_23A18F:        AND #$01                  
CODE_23A191:        BEQ CODE_23A1A1           
CODE_23A193:        INC $103C                 
CODE_23A196:        LDA.w DATA_219A82,x               
CODE_23A199:        LSR A                     
CODE_23A19A:        LSR A                     
CODE_23A19B:        LSR A                     
CODE_23A19C:        LSR A                     
CODE_23A19D:        ORA #$F0                  
CODE_23A19F:        BNE CODE_23A1AD           
CODE_23A1A1:        LDA $103B                 
CODE_23A1A4:        CLC                       
CODE_23A1A5:        ADC #$08                  
CODE_23A1A7:        STA $103B                 
CODE_23A1AA:        LDA.w DATA_219A82,x               
CODE_23A1AD:        LDX $103C                 
CODE_23A1B0:        AND $1037,x               
CODE_23A1B3:        STA $1037,x               
CODE_23A1B6:        STA $1602,y               
CODE_23A1B9:        INY                       
CODE_23A1BA:        LDA #$FF                  
CODE_23A1BC:        STA $1602,y               
CODE_23A1BF:        RTS                       

CODE_23A1C0:        REP #$20                  
CODE_23A1C2:        LDY #$3C                  
CODE_23A1C4:        LDA.w DATA_219AFF,y               
CODE_23A1C7:        STA $1602,y               
CODE_23A1CA:        DEY                       
CODE_23A1CB:        DEY                       
CODE_23A1CC:        BPL CODE_23A1C4           
CODE_23A1CE:        LDA $0A                   
CODE_23A1D0:        AND #$00FF                
CODE_23A1D3:        ASL A                     
CODE_23A1D4:        TAY                       
CODE_23A1D5:        LDA.w DATA_219A2E,y               
CODE_23A1D8:        STA $102E                 
CODE_23A1DB:        LDA #$003C                
CODE_23A1DE:        STA $1600                 
CODE_23A1E1:        LDY #$00                  
CODE_23A1E3:        LDX #$04                  
CODE_23A1E5:        LDA $102E                 
CODE_23A1E8:        STA $1602,y               
CODE_23A1EB:        SEP #$20                  
CODE_23A1ED:        TYA                       
CODE_23A1EE:        CLC                       
CODE_23A1EF:        ADC #$0C                  
CODE_23A1F1:        TAY                       
CODE_23A1F2:        LDA $102F                 
CODE_23A1F5:        CLC                       
CODE_23A1F6:        ADC #$20                  
CODE_23A1F8:        STA $102F                 
CODE_23A1FB:        LDA $102E                 
CODE_23A1FE:        ADC #$00                  
CODE_23A200:        STA $102E                 
CODE_23A203:        REP #$20                  
CODE_23A205:        DEX                       
CODE_23A206:        BPL CODE_23A1E5           
CODE_23A208:        SEP #$20                  
CODE_23A20A:        RTS                       

CODE_23A20B:        LDA $1030                 
CODE_23A20E:        AND #$01                  
CODE_23A210:        BNE CODE_23A24B           
CODE_23A212:        LDY $1028                 
CODE_23A215:        LDA $1E84,y               
CODE_23A218:        CMP $1031                 
CODE_23A21B:        BEQ CODE_23A265           
CODE_23A21D:        LDA $1E84,y               
CODE_23A220:        CMP #$08                  
CODE_23A222:        BNE CODE_23A22A           
CODE_23A224:        LDA $1031                 
CODE_23A227:        JMP CODE_23A239           

CODE_23A22A:        LDA $1031                 
CODE_23A22D:        CMP #$08                  
CODE_23A22F:        BNE CODE_23A23F           
CODE_23A231:        LDA $1E84,y               
CODE_23A234:        ORA #$80                  
CODE_23A236:        LDY $1029                 
CODE_23A239:        STA $1E84,y               
CODE_23A23C:        JMP CODE_23A265           

CODE_23A23F:        INC $1034                 
CODE_23A242:        INC $1034                 
CODE_23A245:        LDA #$30                  
CODE_23A247:        STA $102B                 
CODE_23A24A:        RTS                       

CODE_23A24B:        LDY $1028                 
CODE_23A24E:        STY $1029                 
CODE_23A251:        LDA $1E84,y               
CODE_23A254:        STA $1031                 
CODE_23A257:        LDA $1E84,y               
CODE_23A25A:        ORA #$80                  
CODE_23A25C:        STA $1E84,y               
CODE_23A25F:        LDA #$00                  
CODE_23A261:        STA $1034                 
CODE_23A264:        RTS                       

CODE_23A265:        INC $1034                 
CODE_23A268:        RTS                       

CODE_23A269:        LDA $102B                 
CODE_23A26C:        BEQ CODE_23A272           
CODE_23A26E:        DEC $102B                 
CODE_23A271:        RTS                       

CODE_23A272:        JSR CODE_23A4DC           
CODE_23A275:        BCC CODE_23A27B           
CODE_23A277:        INC $1034                 
CODE_23A27A:        RTS                       

CODE_23A27B:        LDA $17                   
CODE_23A27D:        AND #$0F                  
CODE_23A27F:        BEQ CODE_23A2E9           
CODE_23A281:        LDA #$08                  
CODE_23A283:        STA $102B                 
CODE_23A286:        LDA #$01                  
CODE_23A288:        STA $1203                 
CODE_23A28B:        LDA $17                   
CODE_23A28D:        AND #$08                  
CODE_23A28F:        BEQ CODE_23A2A5           
CODE_23A291:        LDA $1028                 
CODE_23A294:        SEC                       
CODE_23A295:        SBC #$06                  
CODE_23A297:        STA $1028                 
CODE_23A29A:        BCS CODE_23A2A5                   
CODE_23A29C:        LDA $1028                 
CODE_23A29F:        CLC                       
CODE_23A2A0:        ADC #$12                  
CODE_23A2A2:        STA $1028                 
CODE_23A2A5:        LDA $17                   
CODE_23A2A7:        AND #$04                  
CODE_23A2A9:        BEQ CODE_23A2C4           
CODE_23A2AB:        LDA $1028                 
CODE_23A2AE:        CLC                       
CODE_23A2AF:        ADC #$06                  
CODE_23A2B1:        STA $1028                 
CODE_23A2B4:        LDA $1028                 
CODE_23A2B7:        CMP #$12                  
CODE_23A2B9:        BCC CODE_23A2C4           
CODE_23A2BB:        LDA $1028                 
CODE_23A2BE:        SEC                       
CODE_23A2BF:        SBC #$12                  
CODE_23A2C1:        STA $1028                 
CODE_23A2C4:        LDA $17                   
CODE_23A2C6:        AND #$01                  
CODE_23A2C8:        BEQ CODE_23A2D9           
CODE_23A2CA:        INC $1028                 
CODE_23A2CD:        LDA $1028                 
CODE_23A2D0:        CMP #$12                  
CODE_23A2D2:        BCC CODE_23A2D9           
CODE_23A2D4:        LDA #$00                  
CODE_23A2D6:        STA $1028                 
CODE_23A2D9:        LDA $17                   
CODE_23A2DB:        AND #$02                  
CODE_23A2DD:        BEQ CODE_23A2E9           
CODE_23A2DF:        DEC $1028                 
CODE_23A2E2:        BPL CODE_23A2E9           
CODE_23A2E4:        LDA #$11                  
CODE_23A2E6:        STA $1028                 
CODE_23A2E9:        RTS                       

CODE_23A2EA:        LDA $1026                 
CODE_23A2ED:        STA $0804,y               
CODE_23A2F0:        LDA $1027                 
CODE_23A2F3:        STA $0805,y               
CODE_23A2F6:        LDA.w DATA_2199CE,x               
CODE_23A2F9:        STA $0806,y               
CODE_23A2FC:        LDA.w DATA_2199D4,x               
CODE_23A2FF:        STA $0807,y               
CODE_23A302:        TYA                       
CODE_23A303:        CLC                       
CODE_23A304:        ADC #$04                  
CODE_23A306:        TAY                       
CODE_23A307:        INX                       
CODE_23A308:        RTS                       

CODE_23A309:        LDX $1028                 
CODE_23A30C:        LDA.w DATA_2199DA,x               
CODE_23A30F:        STA $1026                 
CODE_23A312:        STA $102A                 
CODE_23A315:        LDA.w DATA_2199EC,x               
CODE_23A318:        STA $1027                 
CODE_23A31B:        LDX #$00                  
CODE_23A31D:        LDY #$00                  
CODE_23A31F:        JSR CODE_23A2EA           
CODE_23A322:        LDA $1026                 
CODE_23A325:        CLC                       
CODE_23A326:        ADC #$10                  
CODE_23A328:        STA $1026                 
CODE_23A32B:        CPX #$02                  
CODE_23A32D:        BCC CODE_23A31F           
CODE_23A32F:        LDA $1027                 
CODE_23A332:        CLC                       
CODE_23A333:        ADC #$10                  
CODE_23A335:        STA $1027                 
CODE_23A338:        LDA $102A                 
CODE_23A33B:        STA $1026                 
CODE_23A33E:        JSR CODE_23A2EA           
CODE_23A341:        LDA $1026                 
CODE_23A344:        CLC                       
CODE_23A345:        ADC #$10                  
CODE_23A347:        STA $1026                 
CODE_23A34A:        JSR CODE_23A2EA           
CODE_23A34D:        LDA $1027                 
CODE_23A350:        CLC                       
CODE_23A351:        ADC #$10                  
CODE_23A353:        STA $1027                 
CODE_23A356:        LDA $102A                 
CODE_23A359:        STA $1026                 
CODE_23A35C:        JSR CODE_23A2EA           
CODE_23A35F:        LDA $1026                 
CODE_23A362:        CLC                       
CODE_23A363:        ADC #$10                  
CODE_23A365:        STA $1026                 
CODE_23A368:        CPX #$06                  
CODE_23A36A:        BCC CODE_23A35C           
CODE_23A36C:        STY $102C                 
CODE_23A36F:        REP #$20                  
CODE_23A371:        LDA #$0202                
CODE_23A374:        STA $0A20                 
CODE_23A377:        STA $0A22                 
CODE_23A37A:        STA $0A24                 
CODE_23A37D:        STA $0A26                 
CODE_23A380:        SEP #$20                  
CODE_23A382:        RTS                       

CODE_23A383:        LDX $0A                   
CODE_23A385:        LDA.w DATA_2199DA,x               
CODE_23A388:        CLC                       
CODE_23A389:        ADC #$08                  
CODE_23A38B:        STA $1026                 
CODE_23A38E:        STA $102A                 
CODE_23A391:        LDA.w DATA_2199EC,x               
CODE_23A394:        CLC                       
CODE_23A395:        ADC #$08                  
CODE_23A397:        STA $1027                 
CODE_23A39A:        LDX #$00                  
CODE_23A39C:        LDY $102C                 
CODE_23A39F:        LDA $1026                 
CODE_23A3A2:        STA $0804,y               
CODE_23A3A5:        STA $0808,y               
CODE_23A3A8:        INY                       
CODE_23A3A9:        LDA $1027                 
CODE_23A3AC:        STA $0804,y               
CODE_23A3AF:        CLC                       
CODE_23A3B0:        ADC #$08                  
CODE_23A3B2:        STA $0808,y               
CODE_23A3B5:        INY                       
CODE_23A3B6:        JSR CODE_23A439           
CODE_23A3B9:        STA $0804,y               
CODE_23A3BC:        CPX #$02                  
CODE_23A3BE:        BCC CODE_23A3C7           
CODE_23A3C0:        LDA $00                   
CODE_23A3C2:        STA $0808,y               
CODE_23A3C5:        BRA CODE_23A3CB           

CODE_23A3C7:        INC A                     
CODE_23A3C8:        STA $0808,y               
CODE_23A3CB:        INY                       
CODE_23A3CC:        LDA #$00                  
CODE_23A3CE:        LDA #$0C                  
CODE_23A3D0:        STA $0804,y               
CODE_23A3D3:        STA $0808,y               
CODE_23A3D6:        TYA                       
CODE_23A3D7:        CLC                       
CODE_23A3D8:        ADC #$05                  
CODE_23A3DA:        TAY                       
CODE_23A3DB:        INX                       
CODE_23A3DC:        CPX #$04                  
CODE_23A3DE:        BCS CODE_23A400                  
CODE_23A3E0:        LDA $1026                 
CODE_23A3E3:        CLC                       
CODE_23A3E4:        ADC #$08                  
CODE_23A3E6:        STA $1026                 
CODE_23A3E9:        TXA                       
CODE_23A3EA:        AND #$01                  
CODE_23A3EC:        BNE CODE_23A3FD           
CODE_23A3EE:        LDA $1027                 
CODE_23A3F1:        CLC                       
CODE_23A3F2:        ADC #$10                  
CODE_23A3F4:        STA $1027                 
CODE_23A3F7:        LDA $102A                 
CODE_23A3FA:        STA $1026                 
CODE_23A3FD:        JMP CODE_23A39F           

CODE_23A400:        LDA $0827                 
CODE_23A403:        ORA #$40                  
CODE_23A405:        STA $0827                 
CODE_23A408:        LDA $082B                 
CODE_23A40B:        ORA #$40                  
CODE_23A40D:        STA $082B                 
CODE_23A410:        LDA $0833                 
CODE_23A413:        ORA #$80                  
CODE_23A415:        STA $0833                 
CODE_23A418:        LDA $0837                 
CODE_23A41B:        ORA #$40                  
CODE_23A41D:        STA $0837                 
CODE_23A420:        LDA $083B                 
CODE_23A423:        ORA #$C0                  
CODE_23A425:        STA $083B                 
CODE_23A428:        REP #$20                  
CODE_23A42A:        STZ $0A27                 
CODE_23A42D:        STZ $0A29                 
CODE_23A430:        STZ $0A2B                 
CODE_23A433:        STZ $0A2D                 
CODE_23A436:        SEP #$20                  
CODE_23A438:        RTS                       

CODE_23A439:        STX $0A                   
CODE_23A43B:        LDX $1036                 
CODE_23A43E:        LDA.w DATA_219A17,x               
CODE_23A441:        CLC                       
CODE_23A442:        ADC $0A                   
CODE_23A444:        TAX                       
CODE_23A445:        LDA.w DATA_219A03,x               
CODE_23A448:        LDX $0A                   
CODE_23A44A:        CPX #$02                  
CODE_23A44C:        BCS CODE_23A450                   
CODE_23A44E:        STA $00                   
CODE_23A450:        RTS                      

DATA_23A451:        db $01,$02,$09

CODE_23A454:        LDY $1028    
CODE_23A457:        LDA $1E84,y                 
CODE_23A45A:        AND #$0F                  
CODE_23A45C:        STA $0C                   
CODE_23A45E:        CMP #$03                  
CODE_23A460:        BNE CODE_23A46F           
CODE_23A462:        LDX $0726                 
CODE_23A465:        INC $0736,x               
CODE_23A468:        LDA #$05                  
CODE_23A46A:        STA $1203                 
CODE_23A46D:        BNE CODE_23A49E           
CODE_23A46F:        CMP #$04                  
CODE_23A471:        BCC CODE_23A48A           
CODE_23A473:        LDY #$0A                  
CODE_23A475:        CMP #$04                  
CODE_23A477:        BEQ CODE_23A47B           
CODE_23A479:        LDY #$14                  
CODE_23A47B:        TYA                       
CODE_23A47C:        CLC                       
CODE_23A47D:        ADC $103E                 
CODE_23A480:        STA $103E                 
CODE_23A483:        LDA #$01                  
CODE_23A485:        STA $1203                 
CODE_23A488:        BNE CODE_23A49E           
CODE_23A48A:        LDA $0C                   
CODE_23A48C:        CMP #$03                  
CODE_23A48E:        BCS CODE_23A49E                   
CODE_23A490:        TAX                       
CODE_23A491:        LDA.l DATA_23A451,x             
CODE_23A495:        JSL CODE_20F634           
CODE_23A499:        LDA #$29                  
CODE_23A49B:        STA $1203                 
CODE_23A49E:        RTS                       

CODE_23A49F:        LDA $103D                 
CODE_23A4A2:        DEC A                     
CODE_23A4A3:        PHA                       
CODE_23A4A4:        AND #$06                  
CODE_23A4A6:        TAY                       
CODE_23A4A7:        PLA                       
CODE_23A4A8:        AND #$18                  
CODE_23A4AA:        LSR A                     
CODE_23A4AB:        LSR A                     
CODE_23A4AC:        LSR A                     
CODE_23A4AD:        STA $02D2                 
CODE_23A4B0:        REP #$20                  
CODE_23A4B2:        LDA.w DATA_219A93,y               
CODE_23A4B5:        STA $1386                 
CODE_23A4B8:        LDA.w DATA_219A9B,y               
CODE_23A4BB:        STA $1392                 
CODE_23A4BE:        LDA.w DATA_219AA3,y               
CODE_23A4C1:        STA $1394                 
CODE_23A4C4:        LDA.w DATA_219AAB,y               
CODE_23A4C7:        STA $1396                 
CODE_23A4CA:        LDA.w DATA_219AB3,y               
CODE_23A4CD:        STA $1398                 
CODE_23A4D0:        LDA.w DATA_219ABB,y               
CODE_23A4D3:        STA $139C                 
CODE_23A4D6:        SEP #$20                  
CODE_23A4D8:        INC $1500                 
CODE_23A4DB:        RTS                       

CODE_23A4DC:        LDA $18                   
CODE_23A4DE:        AND #$C0                  
CODE_23A4E0:        BNE CODE_23A4EC           
CODE_23A4E2:        LDX $0726                 
CODE_23A4E5:        LDA $00F8,x               
CODE_23A4E8:        AND #$C0                  
CODE_23A4EA:        BEQ CODE_23A4EE           
CODE_23A4EC:        SEC                       
CODE_23A4ED:        RTS                       

CODE_23A4EE:        CLC                       
CODE_23A4EF:        RTS                       

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

CODE_23A548:        LDX #$00                  ; prepare battle level data
CODE_23A54A:        LDA #$02                  
CODE_23A54C:        JSL CODE_2098A8           
CODE_23A550:        JSL CODE_209844           ; clear out everything first
CODE_23A554:        CPX #$F0                  
CODE_23A556:        BNE CODE_23A54A           
CODE_23A558:        LDX #$D0                  
CODE_23A55A:        LDA #$50                  
CODE_23A55C:        JSL CODE_209844           ; lay down some ground
CODE_23A560:        CPX #$F0                  
CODE_23A562:        BNE CODE_23A55A           
CODE_23A564:        JSL CODE_20990B           ; lay down everything else
CODE_23A568:        RTL                       

CODE_23A569:        LDA $0E                   
CODE_23A56B:        AND #$E0                  
CODE_23A56D:        LSR A                     
CODE_23A56E:        LSR A                     
CODE_23A56F:        LSR A                     
CODE_23A570:        LSR A                     
CODE_23A571:        LSR A                     
CODE_23A572:        TAX                       
CODE_23A573:        LDA $0706                 
CODE_23A576:        LSR A                     
CODE_23A577:        LSR A                     
CODE_23A578:        LSR A                     
CODE_23A579:        LSR A                     
CODE_23A57A:        CLC                       
CODE_23A57B:        ADC.w DATA_21A379,x               
CODE_23A57E:        TAX                       
CODE_23A57F:        DEX                       
CODE_23A580:        TXA                       
CODE_23A581:        JSL CODE_20FB3A           ; ExecutePtrLong

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

CODE_23A5E8:        LDA $0E                   
CODE_23A5EA:        AND #$E0                  
CODE_23A5EC:        LSR A                     
CODE_23A5ED:        CLC                       
CODE_23A5EE:        ADC $0706                 
CODE_23A5F1:        TAX                       
CODE_23A5F2:        JSL CODE_20FB1F           ; ExecutePtrShort

PNTR_23A5F6:        dw CODE_23A635
                    dw CODE_23A63A
                    dw CODE_23A658
                    dw CODE_23A660

CODE_23A5FE:        LDX #$00
CODE_23A600:        JMP CODE_23A60A

CODE_23A603:        LDX #$01
CODE_23A605:        JMP CODE_23A60A

CODE_23A608:        LDX #$02
CODE_23A60A:        LDA $0706
CODE_23A60D:        AND #$0F                  
CODE_23A60F:        STA $00                   
CODE_23A611:        LDY $0700                 
CODE_23A614:        LDA.w DATA_21A464,x               
CODE_23A617:        STA [$2E],y               
CODE_23A619:        INY                       
CODE_23A61A:        DEC $00                   
CODE_23A61C:        BPL CODE_23A614           
CODE_23A61E:        RTL                       

CODE_23A61F:        LDA $0706                 
CODE_23A622:        AND #$0F                  
CODE_23A624:        TAX                       
CODE_23A625:        LDY $0700                 
CODE_23A628:        LDA #$C0                  
CODE_23A62A:        STA [$2E],y               
CODE_23A62C:        TYA                       
CODE_23A62D:        CLC                       
CODE_23A62E:        ADC #$10                  
CODE_23A630:        TAY                       
CODE_23A631:        DEX                       
CODE_23A632:        BPL CODE_23A628           
CODE_23A634:        RTL                       

CODE_23A635:        LDX #$00                  
CODE_23A637:        JMP CODE_23A63C           

CODE_23A63A:        LDX #$04                  
CODE_23A63C:        LDY $0700                 
CODE_23A63F:        LDA.w DATA_21A467,x               
CODE_23A642:        STA [$2E],y               
CODE_23A644:        INY                       
CODE_23A645:        INX                       
CODE_23A646:        TXA                       
CODE_23A647:        AND #$01                  
CODE_23A649:        BNE CODE_23A63F           
CODE_23A64B:        LDA $0700                 
CODE_23A64E:        CLC                       
CODE_23A64F:        ADC #$10                  
CODE_23A651:        TAY                       
CODE_23A652:        TXA                       
CODE_23A653:        AND #$03                  
CODE_23A655:        BNE CODE_23A63F           
CODE_23A657:        RTL                       

CODE_23A658:        LDY $0700                 
CODE_23A65B:        LDA #$BC                  
CODE_23A65D:        STA [$2E],y               
CODE_23A65F:        RTL                       

CODE_23A660:        LDX #$00                  
CODE_23A662:        LDY $0700                 
CODE_23A665:        LDA #$09                  
CODE_23A667:        STA $00                   
CODE_23A669:        LDA.w DATA_21A46F,x               
CODE_23A66C:        STA [$2E],y               
CODE_23A66E:        INY                       
CODE_23A66F:        INX                       
CODE_23A670:        DEC $00                   
CODE_23A672:        BPL CODE_23A669           
CODE_23A674:        LDA $0700                 
CODE_23A677:        CLC                       
CODE_23A678:        ADC #$10                  
CODE_23A67A:        STA $0700                 
CODE_23A67D:        CPX #$14                  
CODE_23A67F:        BNE CODE_23A662           
CODE_23A681:        RTL                       

CODE_23A682:        LDY $0700                 
CODE_23A685:        LDA #$42                  
CODE_23A687:        STA [$2E],y               
CODE_23A689:        TYA                       
CODE_23A68A:        CLC                       
CODE_23A68B:        ADC #$10                  
CODE_23A68D:        TAY                       
CODE_23A68E:        LDA $2F                   
CODE_23A690:        ADC #$00                  
CODE_23A692:        STA $2F                   
CODE_23A694:        LDA #$42                  
CODE_23A696:        STA [$2E],y               
CODE_23A698:        RTL                       

CODE_23A699:        LDY $0700                 
CODE_23A69C:        LDA #$00                  
CODE_23A69E:        STA [$2E],y               
CODE_23A6A0:        REP #$30                  
CODE_23A6A2:        TYA                       
CODE_23A6A3:        ORA #$2000                
CODE_23A6A6:        TAY                       
CODE_23A6A7:        LDA #$0100                
CODE_23A6AA:        XBA                       
CODE_23A6AB:        SEP #$20                  
CODE_23A6AD:        STA [$2E],y               
CODE_23A6AF:        SEP #$10                  
CODE_23A6B1:        TYA                       
CODE_23A6B2:        CLC                       
CODE_23A6B3:        ADC #$10                  
CODE_23A6B5:        TAY                       
CODE_23A6B6:        LDA $2F                   
CODE_23A6B8:        ADC #$00                  
CODE_23A6BA:        STA $2F                   
CODE_23A6BC:        LDA #$43                  
CODE_23A6BE:        STA [$2E],y               
CODE_23A6C0:        RTL                       

CODE_23A6C1:        LDA $2E                   
CODE_23A6C3:        STA $00                   
CODE_23A6C5:        LDA $2F                   
CODE_23A6C7:        STA $01                   
CODE_23A6C9:        LDA $0706                 
CODE_23A6CC:        SEC                       
CODE_23A6CD:        SBC #$90                  
CODE_23A6CF:        AND #$F0                  
CODE_23A6D1:        LSR A                     
CODE_23A6D2:        LSR A                     
CODE_23A6D3:        LSR A                     
CODE_23A6D4:        TAX                       
CODE_23A6D5:        LDA $0706                 
CODE_23A6D8:        AND #$0F                  
CODE_23A6DA:        STA $02                   
CODE_23A6DC:        LDY $0700                 
CODE_23A6DF:        LDA.w DATA_21A483,x               
CODE_23A6E2:        STA [$2E],y               
CODE_23A6E4:        JSL CODE_2AB73A           
CODE_23A6E8:        JSL CODE_23BEBB           
CODE_23A6EC:        LDA.w DATA_21A483+1,x               
CODE_23A6EF:        STA [$2E],y               
CODE_23A6F1:        BRA CODE_23A706           

CODE_23A6F3:        LDY $0700                 
CODE_23A6F6:        LDA #$BA                  
CODE_23A6F8:        STA [$2E],y               
CODE_23A6FA:        JSL CODE_2AB73A           
CODE_23A6FE:        JSL CODE_23BEBB           
CODE_23A702:        LDA #$BB                  
CODE_23A704:        STA [$2E],y               
CODE_23A706:        JSL CODE_2AB73A           
CODE_23A70A:        LDA $00                   
CODE_23A70C:        STA $2E                   
CODE_23A70E:        LDA $01                   
CODE_23A710:        STA $2F                   
CODE_23A712:        LDA $0700                 
CODE_23A715:        CLC                       
CODE_23A716:        ADC #$10                  
CODE_23A718:        STA $0700                 
CODE_23A71B:        LDA $2F                   
CODE_23A71D:        ADC #$00                  
CODE_23A71F:        STA $2F                   
CODE_23A721:        STA $01                   
CODE_23A723:        DEC $02                   
CODE_23A725:        BPL CODE_23A6F3           
CODE_23A727:        RTL                       

CODE_23A728:        LDA $0706                 
CODE_23A72B:        PHA                       
CODE_23A72C:        SEC                       
CODE_23A72D:        SBC #$C0                  
CODE_23A72F:        AND #$F0                  
CODE_23A731:        LSR A                     
CODE_23A732:        LSR A                     
CODE_23A733:        LSR A                     
CODE_23A734:        TAX                       
CODE_23A735:        PLA                       
CODE_23A736:        AND #$0F                  
CODE_23A738:        STA $02                   
CODE_23A73A:        LDA $2E                   
CODE_23A73C:        STA $00                   
CODE_23A73E:        LDA $2F                   
CODE_23A740:        STA $01                   
CODE_23A742:        LDY $0700                 
CODE_23A745:        LDA #$BA                  
CODE_23A747:        STA [$2E],y               
CODE_23A749:        JSL CODE_2AB73A           
CODE_23A74D:        JSL CODE_23BEBB           
CODE_23A751:        LDA #$BB                  
CODE_23A753:        STA [$2E],y               
CODE_23A755:        JSL CODE_2AB73A           
CODE_23A759:        LDA $00                   
CODE_23A75B:        STA $2E                   
CODE_23A75D:        LDA $01                   
CODE_23A75F:        STA $2F                   
CODE_23A761:        LDA $0700                 
CODE_23A764:        CLC                       
CODE_23A765:        ADC #$10                  
CODE_23A767:        STA $0700                 
CODE_23A76A:        LDA $2F                   
CODE_23A76C:        ADC #$00                  
CODE_23A76E:        STA $2F                   
CODE_23A770:        STA $01                   
CODE_23A772:        DEC $02                   
CODE_23A774:        BNE CODE_23A742           
CODE_23A776:        LDY $0700                 
CODE_23A779:        LDA.w DATA_21A483,x               
CODE_23A77C:        STA [$2E],y               
CODE_23A77E:        JSL CODE_2AB73A           
CODE_23A782:        JSL CODE_23BEBB           
CODE_23A786:        LDA.w DATA_21A483+1,x               
CODE_23A789:        STA [$2E],y               
CODE_23A78B:        JSL CODE_2AB73A           
CODE_23A78F:        RTL                       

CODE_23A790:        LDA $2E                   
CODE_23A792:        STA $00                   
CODE_23A794:        LDA $2F                   
CODE_23A796:        STA $01                   
CODE_23A798:        LDX #$06                  
CODE_23A79A:        LDA $0706                 
CODE_23A79D:        AND #$0F                  
CODE_23A79F:        STA $02                   
CODE_23A7A1:        LDY $0700                 
CODE_23A7A4:        LDA [$2E],y               
CODE_23A7A6:        CMP.w DATA_21A483,x               
CODE_23A7A9:        BEQ CODE_23A7C3           
CODE_23A7AB:        LDA.w DATA_21A483,x               
CODE_23A7AE:        STA [$2E],y               
CODE_23A7B0:        JSL CODE_2AB73A           
CODE_23A7B4:        JSL CODE_23BEBB           
CODE_23A7B8:        LDA.w DATA_21A483+1,x               
CODE_23A7BB:        STA [$2E],y               
CODE_23A7BD:        JSL CODE_2AB73A           
CODE_23A7C1:        BRA CODE_23A7DA           

CODE_23A7C3:        LDY $0700                 
CODE_23A7C6:        LDA #$BA                  
CODE_23A7C8:        STA [$2E],y               
CODE_23A7CA:        JSL CODE_2AB73A           
CODE_23A7CE:        JSL CODE_23BEBB           
CODE_23A7D2:        LDA #$BB                  
CODE_23A7D4:        STA [$2E],y               
CODE_23A7D6:        JSL CODE_2AB73A           
CODE_23A7DA:        LDA $00                   
CODE_23A7DC:        STA $2E                   
CODE_23A7DE:        LDA $01                   
CODE_23A7E0:        STA $2F                   
CODE_23A7E2:        LDA $0700                 
CODE_23A7E5:        CLC                       
CODE_23A7E6:        ADC #$10                  
CODE_23A7E8:        STA $0700                 
CODE_23A7EB:        LDA $2F                   
CODE_23A7ED:        ADC #$00                  
CODE_23A7EF:        STA $2F                   
CODE_23A7F1:        STA $01                   
CODE_23A7F3:        DEC $02                   
CODE_23A7F5:        BNE CODE_23A7C3           
CODE_23A7F7:        LDY $0700                 
CODE_23A7FA:        LDA.w DATA_21A483,x               
CODE_23A7FD:        STA [$2E],y               
CODE_23A7FF:        JSL CODE_2AB73A           
CODE_23A803:        JSL CODE_23BEBB           
CODE_23A807:        LDA.w DATA_21A483+1,x               
CODE_23A80A:        STA [$2E],y               
CODE_23A80C:        JSL CODE_2AB73A           
CODE_23A810:        RTL                       

CODE_23A811:        LDX #$08                  
CODE_23A813:        LDA $0706                 
CODE_23A816:        AND #$0F                  
CODE_23A818:        STA $02                   
CODE_23A81A:        JMP CODE_23A73A           

CODE_23A81D:        LDA $0706                 
CODE_23A820:        SEC                       
CODE_23A821:        SBC #$E0                  
CODE_23A823:        LSR A                     
CODE_23A824:        LSR A                     
CODE_23A825:        LSR A                     
CODE_23A826:        LSR A                     
CODE_23A827:        TAX                       
CODE_23A828:        LDA $2E                   
CODE_23A82A:        STA $00                   
CODE_23A82C:        LDA $2F                   
CODE_23A82E:        STA $01                   
CODE_23A830:        LDA $0706                 
CODE_23A833:        AND #$0F                  
CODE_23A835:        STA $02                   
CODE_23A837:        LDY $0700                 
CODE_23A83A:        LDA.w DATA_21A48D,x               
CODE_23A83D:        STA [$2E],y               
CODE_23A83F:        BRA CODE_23A857           

CODE_23A841:        LDA [$2E],y               
CODE_23A843:        CMP #$BA                  
CODE_23A845:        BEQ CODE_23A84F           
CODE_23A847:        CMP #$BB                  
CODE_23A849:        BEQ CODE_23A853           
CODE_23A84B:        LDA #$B8                  
CODE_23A84D:        BRA CODE_23A855           

CODE_23A84F:        LDA #$A5                  
CODE_23A851:        BRA CODE_23A855           

CODE_23A853:        LDA #$A6                  
CODE_23A855:        STA [$2E],y               
CODE_23A857:        JSL CODE_2AB73A           
CODE_23A85B:        JSL CODE_23BEBB           
CODE_23A85F:        DEC $02                   
CODE_23A861:        BPL CODE_23A841           
CODE_23A863:        LDA $00                   
CODE_23A865:        STA $2E                   
CODE_23A867:        LDA $01                   
CODE_23A869:        STA $2F                   
CODE_23A86B:        LDA $0700                 
CODE_23A86E:        CLC                       
CODE_23A86F:        ADC #$10                  
CODE_23A871:        STA $0700                 
CODE_23A874:        TAY                       
CODE_23A875:        LDA $2F                   
CODE_23A877:        ADC #$00                  
CODE_23A879:        STA $2F                   
CODE_23A87B:        STA $01                   
CODE_23A87D:        LDA $0706                 
CODE_23A880:        AND #$0F                  
CODE_23A882:        STA $02                   
CODE_23A884:        LDA.w DATA_21A490,x               
CODE_23A887:        STA [$2E],y               
CODE_23A889:        BRA CODE_23A8A1           

CODE_23A88B:        LDA [$2E],y               
CODE_23A88D:        CMP #$BA                  
CODE_23A88F:        BEQ CODE_23A899           
CODE_23A891:        CMP #$BB                  
CODE_23A893:        BEQ CODE_23A89D           
CODE_23A895:        LDA #$B9                  
CODE_23A897:        BRA CODE_23A89F           

CODE_23A899:        LDA #$AA                  
CODE_23A89B:        BRA CODE_23A89F           

CODE_23A89D:        LDA #$AB                  
CODE_23A89F:        STA [$2E],y               
CODE_23A8A1:        JSL CODE_2AB73A           
CODE_23A8A5:        JSL CODE_23BEBB           
CODE_23A8A9:        DEC $02                   
CODE_23A8AB:        BPL CODE_23A88B           
CODE_23A8AD:        RTL                       

CODE_23A8AE:        LDA $2E                   
CODE_23A8B0:        STA $00                   
CODE_23A8B2:        LDA $2F                   
CODE_23A8B4:        STA $01                   
CODE_23A8B6:        LDA $0706                 
CODE_23A8B9:        SEC                       
CODE_23A8BA:        SBC #$10                  
CODE_23A8BC:        LSR A                     
CODE_23A8BD:        LSR A                     
CODE_23A8BE:        LSR A                     
CODE_23A8BF:        LSR A                     
CODE_23A8C0:        TAX                       
CODE_23A8C1:        LDA $0706                 
CODE_23A8C4:        AND #$0F                  
CODE_23A8C6:        STA $02                   
CODE_23A8C8:        LDY $0700                 
CODE_23A8CB:        LDA #$B8                  
CODE_23A8CD:        STA [$2E],y               
CODE_23A8CF:        JSL CODE_2AB73A           
CODE_23A8D3:        JSL CODE_23BEBB           
CODE_23A8D7:        DEC $02                   
CODE_23A8D9:        BNE CODE_23A8CB           
CODE_23A8DB:        LDA.w DATA_21A48D,x               
CODE_23A8DE:        STA [$2E],y               
CODE_23A8E0:        LDA $00                   
CODE_23A8E2:        STA $2E                   
CODE_23A8E4:        LDA $01                   
CODE_23A8E6:        STA $2F                   
CODE_23A8E8:        LDA $0700                 
CODE_23A8EB:        CLC                       
CODE_23A8EC:        ADC #$10                  
CODE_23A8EE:        STA $0700                 
CODE_23A8F1:        TAY                       
CODE_23A8F2:        LDA $2F                   
CODE_23A8F4:        ADC #$00                  
CODE_23A8F6:        STA $2F                   
CODE_23A8F8:        STA $01                   
CODE_23A8FA:        LDA $0706                 
CODE_23A8FD:        AND #$0F                  
CODE_23A8FF:        STA $02                   
CODE_23A901:        LDA #$B9                  
CODE_23A903:        STA [$2E],y               
CODE_23A905:        JSL CODE_2AB73A           
CODE_23A909:        JSL CODE_23BEBB           
CODE_23A90D:        DEC $02                   
CODE_23A90F:        BNE CODE_23A901           
CODE_23A911:        LDA.w DATA_21A490,x               
CODE_23A914:        STA [$2E],y               
CODE_23A916:        JSL CODE_2AB73A           
CODE_23A91A:        RTL                       

CODE_23A91B:        LDX #$02                  
CODE_23A91D:        JMP CODE_23A828           

CODE_23A920:        LDA $0706                 
CODE_23A923:        AND #$0F                  
CODE_23A925:        STA $02                   
CODE_23A927:        LDY $0700                 
CODE_23A92A:        LDX #$41                  
CODE_23A92C:        JSR CODE_23BE71           
CODE_23A92F:        CMP #$00                  
CODE_23A931:        BNE CODE_23A935           
CODE_23A933:        LDX #$40                  
CODE_23A935:        TXA                       
CODE_23A936:        STA [$2E],y               
CODE_23A938:        INC $0F                   
CODE_23A93A:        JSL CODE_23BEBB           
CODE_23A93E:        DEC $02                   
CODE_23A940:        BPL CODE_23A92A           
CODE_23A942:        RTL                       

CODE_23A943:        LDA $2E                   
CODE_23A945:        STA $00                   
CODE_23A947:        LDA $2F                   
CODE_23A949:        STA $01                   
CODE_23A94B:        LDX #$00                  
CODE_23A94D:        STX $03                   
CODE_23A94F:        LDA #$19                  
CODE_23A951:        STA $02                   
CODE_23A953:        LDY $0700                 
CODE_23A956:        LDA.w DATA_21A493,x               
CODE_23A959:        STA [$2E],y               
CODE_23A95B:        JSL CODE_2AB73A           
CODE_23A95F:        TYA                       
CODE_23A960:        CLC                       
CODE_23A961:        ADC #$10                  
CODE_23A963:        TAY                       
CODE_23A964:        LDA $2F                   
CODE_23A966:        ADC #$00                  
CODE_23A968:        STA $2F                   
CODE_23A96A:        DEC $02                   
CODE_23A96C:        BPL CODE_23A956           
CODE_23A96E:        LDA [$2E],y               
CODE_23A970:        CMP #$2C                  
CODE_23A972:        BEQ CODE_23A978           
CODE_23A974:        CMP #$9A                  
CODE_23A976:        BNE CODE_23A987           
CODE_23A978:        LDA #$0D                  
CODE_23A97A:        STA [$2E],y               
CODE_23A97C:        LDA $2F                   
CODE_23A97E:        CLC                       
CODE_23A97F:        ADC #$20                  
CODE_23A981:        STA $2F                   
CODE_23A983:        LDA #$01                  
CODE_23A985:        STA [$2E],y               
CODE_23A987:        REP #$20                  
CODE_23A989:        LDA $00                   
CODE_23A98B:        STA $2E                   
CODE_23A98D:        SEP #$20                  
CODE_23A98F:        LDY $0700                 
CODE_23A992:        INY                       
CODE_23A993:        TYA                       
CODE_23A994:        AND #$0F                  
CODE_23A996:        BNE CODE_23A9D6           
CODE_23A998:        LDA $070A                 
CODE_23A99B:        CMP #$01                  
CODE_23A99D:        BEQ CODE_23A9B7           
CODE_23A99F:        CMP #$04                  
CODE_23A9A1:        BEQ CODE_23A9B7           
CODE_23A9A3:        CMP #$0C                  
CODE_23A9A5:        BEQ CODE_23A9B7           
CODE_23A9A7:        CMP #$09                  
CODE_23A9A9:        BEQ CODE_23A9B7           
CODE_23A9AB:        CMP #$03                  
CODE_23A9AD:        BEQ CODE_23A9B7           
CODE_23A9AF:        CMP #$0E                  
CODE_23A9B1:        BEQ CODE_23A9B7           
CODE_23A9B3:        CMP #$0D                  
CODE_23A9B5:        BNE CODE_23A9C0           
CODE_23A9B7:        LDA $03                   
CODE_23A9B9:        CMP #$01                  
CODE_23A9BB:        BNE CODE_23A9C0           
CODE_23A9BD:        JSR CODE_23A9E5           
CODE_23A9C0:        REP #$20                  
CODE_23A9C2:        LDA $2E                   
CODE_23A9C4:        CLC                       
CODE_23A9C5:        ADC #$01B0                
CODE_23A9C8:        STA $2E                   
CODE_23A9CA:        STA $00                   
CODE_23A9CC:        SEP #$20                  
CODE_23A9CE:        INC $03                   
CODE_23A9D0:        LDA $0700                 
CODE_23A9D3:        AND #$F0                  
CODE_23A9D5:        TAY                       
CODE_23A9D6:        STY $0700                 
CODE_23A9D9:        LDX #$01                  
CODE_23A9DB:        LDA $03                   
CODE_23A9DD:        CMP #$02                  
CODE_23A9DF:        BEQ CODE_23A9E4           
CODE_23A9E1:        JMP CODE_23A94F           

CODE_23A9E4:        RTL                       

CODE_23A9E5:        PHB                       
CODE_23A9E6:        LDA #$2A                  
CODE_23A9E8:        PHA                       
CODE_23A9E9:        PLB                       
CODE_23A9EA:        INC $2F                   
CODE_23A9EC:        LDA $2E                   
CODE_23A9EE:        CLC                       
CODE_23A9EF:        ADC #$40                  
CODE_23A9F1:        STA $2E                   
CODE_23A9F3:        LDA $2F                   
CODE_23A9F5:        ADC #$00                  
CODE_23A9F7:        STA $2F                   
CODE_23A9F9:        LDY #$00                  
CODE_23A9FB:        STY $06                   
CODE_23A9FD:        LDX #$06                  
CODE_23A9FF:        LDA $070A                 
CODE_23AA02:        CMP.w DATA_2AB9F1,x               
CODE_23AA05:        BEQ CODE_23AA0A           
CODE_23AA07:        DEX                       
CODE_23AA08:        BNE CODE_23AA02           
CODE_23AA0A:        TXA                       
CODE_23AA0B:        ASL A                     
CODE_23AA0C:        TAX                       
CODE_23AA0D:        REP #$20                  
CODE_23AA0F:        LDA.w DATA_2AB9E3,x               
CODE_23AA12:        STA $0C                   
CODE_23AA14:        LDA.w DATA_2ABBD8,x               
CODE_23AA17:        STA $D8                   
CODE_23AA19:        LDA $2E                   
CODE_23AA1B:        CLC                       
CODE_23AA1C:        ADC #$2000                
CODE_23AA1F:        STA $DB                   
CODE_23AA21:        SEP #$20                  
CODE_23AA23:        LDA $30                   
CODE_23AA25:        STA $DD                   
CODE_23AA27:        LDX #$0F                  
CODE_23AA29:        LDA ($0C),y               
CODE_23AA2B:        STA [$2E],y               
CODE_23AA2D:        LDA ($D8),y               
CODE_23AA2F:        STA [$DB],y               
CODE_23AA31:        INY                       
CODE_23AA32:        DEX                       
CODE_23AA33:        BPL CODE_23AA29           
CODE_23AA35:        INC $06                   
CODE_23AA37:        LDA $06                   
CODE_23AA39:        CMP #$06                  
CODE_23AA3B:        BNE CODE_23AA27           
CODE_23AA3D:        LDA $00                   
CODE_23AA3F:        STA $2E                   
CODE_23AA41:        LDA $01                   
CODE_23AA43:        STA $2F                   
CODE_23AA45:        PLB                       
CODE_23AA46:        RTS                       

CODE_23AA47:        TXA                       
CODE_23AA48:        SEC                       
CODE_23AA49:        SBC #$10                  
CODE_23AA4B:        TAX                       
CODE_23AA4C:        LDY $0700                 
CODE_23AA4F:        CPX #$0B                  
CODE_23AA51:        BEQ CODE_23AA57           
CODE_23AA53:        CPX #$0F                  
CODE_23AA55:        BNE CODE_23AA67           
CODE_23AA57:        JSR CODE_23BE71           
CODE_23AA5A:        CMP #$00                  
CODE_23AA5C:        BEQ CODE_23AA67           
CODE_23AA5E:        LDA #$5F                  
CODE_23AA60:        CPX #$0B                  
CODE_23AA62:        BEQ CODE_23AA6A           
CODE_23AA64:        JMP CODE_23AA89           

CODE_23AA67:        LDA.w DATA_21A495,x               
CODE_23AA6A:        STA [$2E],y               
CODE_23AA6C:        PHA                       
CODE_23AA6D:        JSL CODE_2AB73A           
CODE_23AA71:        PLA                       
CODE_23AA72:        CMP #$70                  
CODE_23AA74:        BNE CODE_23AA89           
CODE_23AA76:        TYA                       
CODE_23AA77:        SEC                       
CODE_23AA78:        SBC #$10                  
CODE_23AA7A:        TAY                       
CODE_23AA7B:        LDA $2F                   
CODE_23AA7D:        SBC #$00                  
CODE_23AA7F:        STA $2F                   
CODE_23AA81:        LDA #$C1                  
CODE_23AA83:        STA [$2E],y               
CODE_23AA85:        JSL CODE_2AB73A           
CODE_23AA89:        RTL                       

CODE_23AA8A:        LDA $0706                 
CODE_23AA8D:        SEC                       
CODE_23AA8E:        SBC #$10                  
CODE_23AA90:        LSR A                     
CODE_23AA91:        LSR A                     
CODE_23AA92:        LSR A                     
CODE_23AA93:        LSR A                     
CODE_23AA94:        TAX                       
CODE_23AA95:        LDA $0706                 
CODE_23AA98:        AND #$0F                  
CODE_23AA9A:        STA $02                   
CODE_23AA9C:        LDY $0700                 
CODE_23AA9F:        CPX #$07                  
CODE_23AAA1:        BNE CODE_23AAAA           
CODE_23AAA3:        JSR CODE_23BE71           
CODE_23AAA6:        CMP #$00                  
CODE_23AAA8:        BNE CODE_23AAB3           
CODE_23AAAA:        LDA.w DATA_21A4AE,x               
CODE_23AAAD:        STA [$2E],y               
CODE_23AAAF:        JSL CODE_2AB73A           
CODE_23AAB3:        JSL CODE_23BEBB           
CODE_23AAB7:        DEC $02                   
CODE_23AAB9:        BPL CODE_23AA9F           
CODE_23AABB:        RTL                       

CODE_23AABC:        LDX #$08                  
CODE_23AABE:        JMP CODE_23AA95           

CODE_23AAC1:        LDX #$00                  
CODE_23AAC3:        LDY #$00                  
CODE_23AAC5:        BRA CODE_23AAD1           

CODE_23AAC7:        LDX #$15                  
CODE_23AAC9:        LDY #$01                  
CODE_23AACB:        BRA CODE_23AAD1           

CODE_23AACD:        LDX #$22                  
CODE_23AACF:        LDY #$02                  
CODE_23AAD1:        LDA $30                   
CODE_23AAD3:        STA $DA                   
CODE_23AAD5:        STZ $DB                   
CODE_23AAD7:        LDA $1EBF                 
CODE_23AADA:        CMP #$01                  
CODE_23AADC:        BEQ CODE_23AAF2           
CODE_23AADE:        CMP #$14                  
CODE_23AAE0:        BEQ CODE_23AAF2           
CODE_23AAE2:        CMP #$1C                  
CODE_23AAE4:        BEQ CODE_23AAF2           
CODE_23AAE6:        CMP #$1F                  
CODE_23AAE8:        BEQ CODE_23AAF2           
CODE_23AAEA:        CMP #$20                  
CODE_23AAEC:        BEQ CODE_23AAF2           
CODE_23AAEE:        CMP #$29                  
CODE_23AAF0:        BNE CODE_23AAF4           
CODE_23AAF2:        INC $DB                   
CODE_23AAF4:        REP #$21                  
CODE_23AAF6:        LDA $2E                   
CODE_23AAF8:        STA $00                   
CODE_23AAFA:        SEP #$20                  
CODE_23AAFC:        STY $0C                   
CODE_23AAFE:        LDY $0C                   
CODE_23AB00:        LDA.w DATA_21A5B0,y               
CODE_23AB03:        STA $02                   
CODE_23AB05:        LDY $0700                 
CODE_23AB08:        REP #$21                  
CODE_23AB0A:        LDA $2E                   
CODE_23AB0C:        ADC #$2000                
CODE_23AB0F:        STA $D8                   
CODE_23AB11:        SEP #$20                  
CODE_23AB13:        LDA $DB                   
CODE_23AB15:        BNE CODE_23AB1C           
CODE_23AB17:        LDA.w DATA_21A4B7,x               
CODE_23AB1A:        BRA CODE_23AB1F           

CODE_23AB1C:        LDA.w DATA_21A50A,x               
CODE_23AB1F:        CMP #$80                  
CODE_23AB21:        BNE CODE_23AB26           
CODE_23AB23:        JMP CODE_23ABE9           

CODE_23AB26:        STA $03                   
CODE_23AB28:        CMP #$92                  
CODE_23AB2A:        BEQ CODE_23AB34           
CODE_23AB2C:        CMP #$93                  
CODE_23AB2E:        BNE CODE_23AB3B           
CODE_23AB30:        LDA $DB                   
CODE_23AB32:        BNE CODE_23AB3B           
CODE_23AB34:        LDA #$00                  
CODE_23AB36:        STA [$D8],y               
CODE_23AB38:        JMP CODE_23ABD9           

CODE_23AB3B:        LDA $DB                   
CODE_23AB3D:        BNE CODE_23AB46           
CODE_23AB3F:        LDA [$D8],y               
CODE_23AB41:        BEQ CODE_23AB46           
CODE_23AB43:        JMP CODE_23ABE9           

CODE_23AB46:        LDA.w DATA_21A55D,x               
CODE_23AB49:        STA [$D8],y               
CODE_23AB4B:        BEQ CODE_23AB50           
CODE_23AB4D:        JMP CODE_23ABD9           

CODE_23AB50:        LDA [$2E],y               
CODE_23AB52:        CMP #$03                  
CODE_23AB54:        BEQ CODE_23ABBB           
CODE_23AB56:        CMP #$90                  
CODE_23AB58:        BCC CODE_23ABD9           
CODE_23AB5A:        CMP #$9F                  
CODE_23AB5C:        BCS CODE_23ABD9                   
CODE_23AB5E:        CMP $03                   
CODE_23AB60:        BEQ CODE_23AB43           
CODE_23AB62:        LDA $DB                   
CODE_23AB64:        BEQ CODE_23AB8C           
CODE_23AB66:        LDA $03                   
CODE_23AB68:        CMP #$94                  
CODE_23AB6A:        BEQ CODE_23AB70           
CODE_23AB6C:        CMP #$95                  
CODE_23AB6E:        BNE CODE_23AB8C           
CODE_23AB70:        LDA [$2E],y               
CODE_23AB72:        CMP #$94                  
CODE_23AB74:        BEQ CODE_23ABD5           
CODE_23AB76:        CMP #$91                  
CODE_23AB78:        BEQ CODE_23ABBB           
CODE_23AB7A:        CMP #$95                  
CODE_23AB7C:        BEQ CODE_23ABBB           
CODE_23AB7E:        CMP #$98                  
CODE_23AB80:        BEQ CODE_23ABD5           
CODE_23AB82:        LDA #$01                  
CODE_23AB84:        STA [$D8],y               
CODE_23AB86:        LDA #$03                  
CODE_23AB88:        STA $03                   
CODE_23AB8A:        BRA CODE_23ABD9           

CODE_23AB8C:        LDA $03                   
CODE_23AB8E:        CMP #$94                  
CODE_23AB90:        BCS CODE_23ABBB                   
CODE_23AB92:        INC $03                   
CODE_23AB94:        INC $03                   
CODE_23AB96:        LDA $1EBF                 
CODE_23AB99:        CMP #$01                  
CODE_23AB9B:        BEQ CODE_23ABAB           
CODE_23AB9D:        LDA $0727                 
CODE_23ABA0:        CMP #$06                  
CODE_23ABA2:        BNE CODE_23ABD9           
CODE_23ABA4:        LDA $1EBF                 
CODE_23ABA7:        CMP #$29                  
CODE_23ABA9:        BNE CODE_23ABD9           
CODE_23ABAB:        LDA [$2E],y               
CODE_23ABAD:        CMP #$98                  
CODE_23ABAF:        BNE CODE_23ABD9           
CODE_23ABB1:        LDA #$01                  
CODE_23ABB3:        STA [$D8],y               
CODE_23ABB5:        LDA #$02                  
CODE_23ABB7:        STA $03                   
CODE_23ABB9:        BRA CODE_23ABD9           

CODE_23ABBB:        LDA $DB                   
CODE_23ABBD:        BEQ CODE_23ABD5           
CODE_23ABBF:        LDA $03                   
CODE_23ABC1:        CMP #$93                  
CODE_23ABC3:        BEQ CODE_23ABD9           
CODE_23ABC5:        LDA [$2E],y               
CODE_23ABC7:        INC A                     
CODE_23ABC8:        INC A                     
CODE_23ABC9:        STA $03                   
CODE_23ABCB:        AND #$F0                  
CODE_23ABCD:        BNE CODE_23ABD9           
CODE_23ABCF:        LDA #$01                  
CODE_23ABD1:        STA [$D8],y               
CODE_23ABD3:        BRA CODE_23ABD9           

CODE_23ABD5:        LDA #$98                  
CODE_23ABD7:        STA $03                   
CODE_23ABD9:        LDA $03                   
CODE_23ABDB:        STA [$2E],y               
CODE_23ABDD:        CMP #$98                  
CODE_23ABDF:        BNE CODE_23ABE5           
CODE_23ABE1:        JSL CODE_2AB73A           
CODE_23ABE5:        JSL CODE_2A8794           
CODE_23ABE9:        JSL CODE_23BEBB           
CODE_23ABED:        INX                       
CODE_23ABEE:        DEC $02                   
CODE_23ABF0:        BMI CODE_23ABF5           
CODE_23ABF2:        JMP CODE_23AB08           

CODE_23ABF5:        LDA $00                   
CODE_23ABF7:        STA $2E                   
CODE_23ABF9:        LDA $01                   
CODE_23ABFB:        STA $2F                   
CODE_23ABFD:        LDA $0700                 
CODE_23AC00:        CLC                       
CODE_23AC01:        ADC #$10                  
CODE_23AC03:        STA $0700                 
CODE_23AC06:        LDA $2F                   
CODE_23AC08:        ADC #$00                  
CODE_23AC0A:        STA $2F                   
CODE_23AC0C:        STA $01                   
CODE_23AC0E:        LDA.w DATA_21A4B7,x               
CODE_23AC11:        CMP #$FF                  
CODE_23AC13:        BEQ CODE_23AC18           
CODE_23AC15:        JMP CODE_23AAFE           

CODE_23AC18:        RTL                       

CODE_23AC19:        JSR CODE_23ACF3           
CODE_23AC1C:        LDA.w DATA_21A5B3,x               
CODE_23AC1F:        STA [$2E],y               
CODE_23AC21:        JSL CODE_23BEBB           
CODE_23AC25:        DEC $02                   
CODE_23AC27:        BPL CODE_23AC1C           
CODE_23AC29:        RTL                       

CODE_23AC2A:        JSR CODE_23ACF3           
CODE_23AC2D:        LDA.w DATA_21A5B5,x               
CODE_23AC30:        STA [$2E],y               
CODE_23AC32:        TYA                       
CODE_23AC33:        CLC                       
CODE_23AC34:        ADC #$10                  
CODE_23AC36:        TAY                       
CODE_23AC37:        LDA $2F                   
CODE_23AC39:        ADC #$00                  
CODE_23AC3B:        STA $2F                   
CODE_23AC3D:        DEC $02                   
CODE_23AC3F:        BPL CODE_23AC2D           
CODE_23AC41:        RTL                       

CODE_23AC42:        JSR CODE_23ACF3           
CODE_23AC45:        LDA.w DATA_21A5B7,x               
CODE_23AC48:        STA [$2E],y               
CODE_23AC4A:        TYA                       
CODE_23AC4B:        CLC                       
CODE_23AC4C:        ADC #$10                  
CODE_23AC4E:        TAY                       
CODE_23AC4F:        STA $0700                 
CODE_23AC52:        LDA $2F                   
CODE_23AC54:        ADC #$00                  
CODE_23AC56:        STA $2F                   
CODE_23AC58:        JSL CODE_23BEBB           
CODE_23AC5C:        DEC $02                   
CODE_23AC5E:        BPL CODE_23AC45           
CODE_23AC60:        RTL                       

CODE_23AC61:        JSR CODE_23ACF3           
CODE_23AC64:        LDA.w DATA_21A5B9,x               
CODE_23AC67:        STA [$2E],y               
CODE_23AC69:        TYA                       
CODE_23AC6A:        SEC                       
CODE_23AC6B:        SBC #$10                  
CODE_23AC6D:        TAY                       
CODE_23AC6E:        STA $0700                 
CODE_23AC71:        LDA $2F                   
CODE_23AC73:        SBC #$00                  
CODE_23AC75:        STA $2F                   
CODE_23AC77:        JSL CODE_23BEBB           
CODE_23AC7B:        DEC $02                   
CODE_23AC7D:        BPL CODE_23AC64           
CODE_23AC7F:        RTL                       

CODE_23AC80:        JSR CODE_23ACF3           
CODE_23AC83:        LDA.w DATA_21A5BB,x               
CODE_23AC86:        STA [$2E],y               
CODE_23AC88:        TYA                       
CODE_23AC89:        CLC                       
CODE_23AC8A:        ADC #$10                  
CODE_23AC8C:        TAY                       
CODE_23AC8D:        LDA $2F                   
CODE_23AC8F:        ADC #$00                  
CODE_23AC91:        STA $2F                   
CODE_23AC93:        LDA.w DATA_21A5BD,x               
CODE_23AC96:        STA [$2E],y               
CODE_23AC98:        TYA                       
CODE_23AC99:        CLC                       
CODE_23AC9A:        ADC #$10                  
CODE_23AC9C:        TAY                       
CODE_23AC9D:        LDA $2F                   
CODE_23AC9F:        ADC #$00                  
CODE_23ACA1:        STA $2F                   
CODE_23ACA3:        STY $0700                 
CODE_23ACA6:        JSL CODE_23BEBB           
CODE_23ACAA:        DEC $02                   
CODE_23ACAC:        BPL CODE_23AC83           
CODE_23ACAE:        RTL                       

CODE_23ACAF:        JSR CODE_23ACF3           
CODE_23ACB2:        LDA.w DATA_21A5BF,x               
CODE_23ACB5:        STA [$2E],y               
CODE_23ACB7:        TYA                       
CODE_23ACB8:        CLC                       
CODE_23ACB9:        ADC #$10                  
CODE_23ACBB:        TAY                       
CODE_23ACBC:        LDA $2F                   
CODE_23ACBE:        ADC #$00                  
CODE_23ACC0:        STA $2F                   
CODE_23ACC2:        LDA.w DATA_21A5C1,x               
CODE_23ACC5:        STA [$2E],y               
CODE_23ACC7:        TYA                       
CODE_23ACC8:        CLC                       
CODE_23ACC9:        ADC #$10                  
CODE_23ACCB:        TAY                       
CODE_23ACCC:        LDA $2F                   
CODE_23ACCE:        ADC #$00                  
CODE_23ACD0:        STA $2F                   
CODE_23ACD2:        DEY                       
CODE_23ACD3:        TYA                       
CODE_23ACD4:        AND #$0F                  
CODE_23ACD6:        CMP #$0F                  
CODE_23ACD8:        BNE CODE_23ACEE           
CODE_23ACDA:        LDA $2E                   
CODE_23ACDC:        SEC                       
CODE_23ACDD:        SBC #$B0                  
CODE_23ACDF:        STA $2E                   
CODE_23ACE1:        LDA $2F                   
CODE_23ACE3:        SBC #$01                  
CODE_23ACE5:        STA $2F                   
CODE_23ACE7:        INY                       
CODE_23ACE8:        TYA                       
CODE_23ACE9:        AND #$F0                  
CODE_23ACEB:        ORA #$0F                  
CODE_23ACED:        TAY                       
CODE_23ACEE:        DEC $02                   
CODE_23ACF0:        BPL CODE_23ACB2           
CODE_23ACF2:        RTL                       

CODE_23ACF3:        LDA $0706                 
CODE_23ACF6:        AND #$0F                  
CODE_23ACF8:        STA $02                   
CODE_23ACFA:        LDY $0700                 
CODE_23ACFD:        LDX #$00                  
CODE_23ACFF:        LDA $070A                 
CODE_23AD02:        CMP #$02                  
CODE_23AD04:        BNE CODE_23AD08           
CODE_23AD06:        LDX #$01                  
CODE_23AD08:        RTS                       

CODE_23AD09:        LDY #$00                  
CODE_23AD0B:        LDA [$2B],y               
CODE_23AD0D:        STA $02                   
CODE_23AD0F:        REP #$20                  
CODE_23AD11:        INC $2B                   
CODE_23AD13:        LDA $2E                   
CODE_23AD15:        STA $00                   
CODE_23AD17:        SEP #$20                  
CODE_23AD19:        LDA $0706                 
CODE_23AD1C:        AND #$0F                  
CODE_23AD1E:        STA $03                   
CODE_23AD20:        LDX #$00                  
CODE_23AD22:        STZ $D8                   
CODE_23AD24:        LDY $0700                 
CODE_23AD27:        LDA $02                   
CODE_23AD29:        STA $04                   
CODE_23AD2B:        BPL CODE_23AD3A           
CODE_23AD2D:        LDA $0727                 
CODE_23AD30:        CMP #$04                  
CODE_23AD32:        BNE CODE_23AD3A           
CODE_23AD34:        DEC $04                   
CODE_23AD36:        LDA #$8B                  
CODE_23AD38:        STA $D8                   
CODE_23AD3A:        LDA $D8                   
CODE_23AD3C:        BNE CODE_23AD41           
CODE_23AD3E:        LDA.w DATA_21A5C3,x               
CODE_23AD41:        STA [$2E],y               
CODE_23AD43:        JSL CODE_23BEBB           
CODE_23AD47:        DEC $04                   
CODE_23AD49:        LDA $04                   
CODE_23AD4B:        CMP #$FF                  
CODE_23AD4D:        BNE CODE_23AD3A           
CODE_23AD4F:        REP #$20                  
CODE_23AD51:        LDA $00                   
CODE_23AD53:        STA $2E                   
CODE_23AD55:        SEP #$20                  
CODE_23AD57:        LDA $0700                 
CODE_23AD5A:        CLC                       
CODE_23AD5B:        ADC #$10                  
CODE_23AD5D:        STA $0700                 
CODE_23AD60:        LDA $2F                   
CODE_23AD62:        ADC #$00                  
CODE_23AD64:        STA $2F                   
CODE_23AD66:        STA $01                   
CODE_23AD68:        LDX #$01                  
CODE_23AD6A:        DEC $03                   
CODE_23AD6C:        BPL CODE_23AD22           
CODE_23AD6E:        RTL                       

CODE_23AD6F:        LDX #$00                  
CODE_23AD71:        BEQ CODE_23AD75           
CODE_23AD73:        LDX #$01                  
CODE_23AD75:        STX $02                   
CODE_23AD77:        LDA $2E                   
CODE_23AD79:        STA $00                   
CODE_23AD7B:        LDA $2F                   
CODE_23AD7D:        STA $01                   
CODE_23AD7F:        LDA $0706                 
CODE_23AD82:        AND #$0F                  
CODE_23AD84:        STA $03                   
CODE_23AD86:        LDY $0700                 
CODE_23AD89:        LDX $02                   
CODE_23AD8B:        LDA.w DATA_21A5C5,x               
CODE_23AD8E:        STA [$2E],y               
CODE_23AD90:        TYA                       
CODE_23AD91:        CLC                       
CODE_23AD92:        ADC #$10                  
CODE_23AD94:        TAY                       
CODE_23AD95:        LDA $2F                   
CODE_23AD97:        ADC #$00                  
CODE_23AD99:        STA $2F                   
CODE_23AD9B:        LDA [$2E],y               
CODE_23AD9D:        CMP #$02                  
CODE_23AD9F:        BNE CODE_23ADA8           
CODE_23ADA1:        LDA.w DATA_21A5C7,x               
CODE_23ADA4:        STA [$2E],y               
CODE_23ADA6:        BRA CODE_23AD90           

CODE_23ADA8:        TYA                       
CODE_23ADA9:        SEC                       
CODE_23ADAA:        SBC #$10                  
CODE_23ADAC:        TAY                       
CODE_23ADAD:        LDA $2F                   
CODE_23ADAF:        SBC #$00                  
CODE_23ADB1:        STA $2F                   
CODE_23ADB3:        LDA.w DATA_21A5C9,x               
CODE_23ADB6:        STA [$2E],y               
CODE_23ADB8:        LDA $00                   
CODE_23ADBA:        STA $2E                   
CODE_23ADBC:        LDA $01                   
CODE_23ADBE:        STA $2F                   
CODE_23ADC0:        LDY $0700                 
CODE_23ADC3:        INY                       
CODE_23ADC4:        TYA                       
CODE_23ADC5:        AND #$0F                  
CODE_23ADC7:        BNE CODE_23ADDD           
CODE_23ADC9:        REP #$20                  
CODE_23ADCB:        LDA $2E                   
CODE_23ADCD:        CLC                       
CODE_23ADCE:        ADC #$01B0                
CODE_23ADD1:        STA $2E                   
CODE_23ADD3:        STA $00                   
CODE_23ADD5:        SEP #$20                  
CODE_23ADD7:        LDA $0700                 
CODE_23ADDA:        AND #$F0                  
CODE_23ADDC:        TAY                       
CODE_23ADDD:        STY $0700                 
CODE_23ADE0:        TYA                       
CODE_23ADE1:        CLC                       
CODE_23ADE2:        ADC #$10                  
CODE_23ADE4:        TAY                       
CODE_23ADE5:        LDA $2F                   
CODE_23ADE7:        ADC #$00                  
CODE_23ADE9:        STA $2F                   
CODE_23ADEB:        LDA [$2E],y               
CODE_23ADED:        CMP.w DATA_21A5CF,x               
CODE_23ADF0:        BNE CODE_23ADF9           
CODE_23ADF2:        LDA.w DATA_21A5CD,x               
CODE_23ADF5:        STA [$2E],y               
CODE_23ADF7:        BRA CODE_23ADE0           

CODE_23ADF9:        DEC $03                   
CODE_23ADFB:        BMI CODE_23AE2D           
CODE_23ADFD:        LDA $00                   
CODE_23ADFF:        STA $2E                   
CODE_23AE01:        LDA $01                   
CODE_23AE03:        STA $2F                   
CODE_23AE05:        LDX #$02                  
CODE_23AE07:        LDY $0700                 
CODE_23AE0A:        INY                       
CODE_23AE0B:        TYA                       
CODE_23AE0C:        AND #$0F                  
CODE_23AE0E:        BNE CODE_23AE24           
CODE_23AE10:        REP #$20                  
CODE_23AE12:        LDA $2E                   
CODE_23AE14:        CLC                       
CODE_23AE15:        ADC #$01B0                
CODE_23AE18:        STA $2E                   
CODE_23AE1A:        STA $00                   
CODE_23AE1C:        SEP #$20                  
CODE_23AE1E:        LDA $0700                 
CODE_23AE21:        AND #$F0                  
CODE_23AE23:        TAY                       
CODE_23AE24:        DEX                       
CODE_23AE25:        BPL CODE_23AE0A           
CODE_23AE27:        STY $0700                 
CODE_23AE2A:        JMP CODE_23AD89           

CODE_23AE2D:        RTL                       

CODE_23AE2E:        LDA $2E                   
CODE_23AE30:        STA $00                   
CODE_23AE32:        LDA $2F                   
CODE_23AE34:        STA $01                   
CODE_23AE36:        LDY $0700                 
CODE_23AE39:        LDA $0706                 
CODE_23AE3C:        AND #$0F                  
CODE_23AE3E:        TAX                       
CODE_23AE3F:        LDA #$9C                  
CODE_23AE41:        STA [$2E],y               
CODE_23AE43:        JSL CODE_23BEBB           
CODE_23AE47:        DEX                       
CODE_23AE48:        BPL CODE_23AE3F           
CODE_23AE4A:        LDA $00                   
CODE_23AE4C:        STA $2E                   
CODE_23AE4E:        LDA $01                   
CODE_23AE50:        STA $2F                   
CODE_23AE52:        LDA $0700                 
CODE_23AE55:        CLC                       
CODE_23AE56:        ADC #$10                  
CODE_23AE58:        STA $0700                 
CODE_23AE5B:        TAY                       
CODE_23AE5C:        LDA $2F                   
CODE_23AE5E:        ADC #$00                  
CODE_23AE60:        STA $2F                   
CODE_23AE62:        LDA $0706                 
CODE_23AE65:        AND #$0F                  
CODE_23AE67:        TAX                       
CODE_23AE68:        LDA #$90                  
CODE_23AE6A:        STA [$2E],y               
CODE_23AE6C:        JMP CODE_23AE73           

CODE_23AE6F:        LDA #$8E                  
CODE_23AE71:        STA [$2E],y               
CODE_23AE73:        JSL CODE_23BEBB           
CODE_23AE77:        DEX                       
CODE_23AE78:        BPL CODE_23AE6F           
CODE_23AE7A:        RTL                       

CODE_23AE7B:        LDA $0706                 
CODE_23AE7E:        AND #$0F                  
CODE_23AE80:        TAX                       
CODE_23AE81:        LDY $0700                 
CODE_23AE84:        LDA #$76                  
CODE_23AE86:        STA [$2E],y               
CODE_23AE88:        JSL CODE_2AB73A           
CODE_23AE8C:        TYA                       
CODE_23AE8D:        CLC                       
CODE_23AE8E:        ADC #$10                  
CODE_23AE90:        TAY                       
CODE_23AE91:        LDA $2F                   
CODE_23AE93:        ADC #$00                  
CODE_23AE95:        STA $2F                   
CODE_23AE97:        DEX                       
CODE_23AE98:        BMI CODE_23AEC6           
CODE_23AE9A:        LDA #$77                  
CODE_23AE9C:        STA [$2E],y               
CODE_23AE9E:        JSL CODE_2AB73A           
CODE_23AEA2:        TYA                       
CODE_23AEA3:        CLC                       
CODE_23AEA4:        ADC #$10                  
CODE_23AEA6:        TAY                       
CODE_23AEA7:        LDA $2F                   
CODE_23AEA9:        ADC #$00                  
CODE_23AEAB:        STA $2F                   
CODE_23AEAD:        DEX                       
CODE_23AEAE:        BMI CODE_23AEC6           
CODE_23AEB0:        LDA #$78                  
CODE_23AEB2:        STA [$2E],y               
CODE_23AEB4:        JSL CODE_2AB73A           
CODE_23AEB8:        TYA                       
CODE_23AEB9:        CLC                       
CODE_23AEBA:        ADC #$10                  
CODE_23AEBC:        TAY                       
CODE_23AEBD:        LDA $2F                   
CODE_23AEBF:        ADC #$00                  
CODE_23AEC1:        STA $2F                   
CODE_23AEC3:        DEX                       
CODE_23AEC4:        BPL CODE_23AEB0           
CODE_23AEC6:        RTL                       

CODE_23AEC7:        LDA $2E                   
CODE_23AEC9:        STA $00                   
CODE_23AECB:        LDA $2F                   
CODE_23AECD:        STA $01                   
CODE_23AECF:        LDA $0706                 
CODE_23AED2:        PHA                       
CODE_23AED3:        SEC                       
CODE_23AED4:        SBC #$40                  
CODE_23AED6:        LSR A                     
CODE_23AED7:        LSR A                     
CODE_23AED8:        LSR A                     
CODE_23AED9:        LSR A                     
CODE_23AEDA:        TAX                       
CODE_23AEDB:        PLA                       
CODE_23AEDC:        AND #$0F                  
CODE_23AEDE:        STA $02                   
CODE_23AEE0:        STA $03                   
CODE_23AEE2:        LDY $0700                 
CODE_23AEE5:        LDA.w DATA_21A5CF,x               
CODE_23AEE8:        STA [$2E],y               
CODE_23AEEA:        JSL CODE_2AB73A           
CODE_23AEEE:        JSL CODE_23BEBB           
CODE_23AEF2:        DEC $03                   
CODE_23AEF4:        BPL CODE_23AEE5           
CODE_23AEF6:        LDA $00                   
CODE_23AEF8:        STA $2E                   
CODE_23AEFA:        LDA $01                   
CODE_23AEFC:        STA $2F                   
CODE_23AEFE:        LDA $0700                 
CODE_23AF01:        CLC                       
CODE_23AF02:        ADC #$10                  
CODE_23AF04:        STA $0700                 
CODE_23AF07:        TAY                       
CODE_23AF08:        LDA $2F                   
CODE_23AF0A:        ADC #$00                  
CODE_23AF0C:        STA $2F                   
CODE_23AF0E:        STA $01                   
CODE_23AF10:        LDA $02                   
CODE_23AF12:        STA $03                   
CODE_23AF14:        LDA.w DATA_21A5D1,x               
CODE_23AF17:        CMP #$C1                  
CODE_23AF19:        BEQ CODE_23AF29           
CODE_23AF1B:        STA [$2E],y               
CODE_23AF1D:        JSL CODE_2AB73A           
CODE_23AF21:        JSL CODE_23BEBB           
CODE_23AF25:        DEC $03                   
CODE_23AF27:        BPL CODE_23AF14           
CODE_23AF29:        RTL                       

CODE_23AF2A:        LDY #$00                  
CODE_23AF2C:        LDA [$2B],y               
CODE_23AF2E:        STA $02                   
CODE_23AF30:        REP #$20                  
CODE_23AF32:        INC $2B                   
CODE_23AF34:        LDA $2E                   
CODE_23AF36:        STA $00                   
CODE_23AF38:        SEP #$20                  
CODE_23AF3A:        LDA $0706                 
CODE_23AF3D:        PHA                       
CODE_23AF3E:        SEC                       
CODE_23AF3F:        SBC #$60                  
CODE_23AF41:        LSR A                     
CODE_23AF42:        LSR A                     
CODE_23AF43:        LSR A                     
CODE_23AF44:        LSR A                     
CODE_23AF45:        TAX                       
CODE_23AF46:        PLA                       
CODE_23AF47:        AND #$0F                  
CODE_23AF49:        STA $03                   
CODE_23AF4B:        LDA $02                   
CODE_23AF4D:        STA $04                   
CODE_23AF4F:        LDY $0700                 
CODE_23AF52:        LDA $02BF                 
CODE_23AF55:        CMP #$01                  
CODE_23AF57:        BEQ CODE_23AF69           
CODE_23AF59:        CMP #$05                  
CODE_23AF5B:        BEQ CODE_23AF69           
CODE_23AF5D:        CMP #$06                  
CODE_23AF5F:        BEQ CODE_23AF69           
CODE_23AF61:        CMP #$07                  
CODE_23AF63:        BEQ CODE_23AF69           
CODE_23AF65:        CMP #$0D                  
CODE_23AF67:        BNE CODE_23AF6D           
CODE_23AF69:        CPX #$02                  
CODE_23AF6B:        BEQ CODE_23AF87           
CODE_23AF6D:        LDA.w DATA_21A5D3,x               
CODE_23AF70:        STA [$2E],y               
CODE_23AF72:        JSL CODE_2AB73A           
CODE_23AF76:        JSL CODE_23BEBB           
CODE_23AF7A:        DEC $04                   
CODE_23AF7C:        LDA $04                   
CODE_23AF7E:        CMP #$FF                  
CODE_23AF80:        BNE CODE_23AF6D           
CODE_23AF82:        DEC $03                   
CODE_23AF84:        BPL CODE_23AFB1           
CODE_23AF86:        RTL                       

CODE_23AF87:        LDX #$08                  
CODE_23AF89:        LDA.w DATA_21A5D3,x               
CODE_23AF8C:        STA [$2E],y               
CODE_23AF8E:        REP #$30                  
CODE_23AF90:        TYA                       
CODE_23AF91:        AND #$00FF                
CODE_23AF94:        ORA #$2000                
CODE_23AF97:        TAY                       
CODE_23AF98:        SEP #$20                  
CODE_23AF9A:        LDA #$01                  
CODE_23AF9C:        STA [$2E],y               
CODE_23AF9E:        SEP #$10                  
CODE_23AFA0:        JSL CODE_23BEBB           
CODE_23AFA4:        DEC $04                   
CODE_23AFA6:        LDA $04                   
CODE_23AFA8:        CMP #$FF                  
CODE_23AFAA:        BNE CODE_23AF87           
CODE_23AFAC:        DEC $03                   
CODE_23AFAE:        BPL CODE_23AFB1           
CODE_23AFB0:        RTL                       

CODE_23AFB1:        LDA $00                   
CODE_23AFB3:        STA $2E                   
CODE_23AFB5:        LDA $01                   
CODE_23AFB7:        STA $2F                   
CODE_23AFB9:        LDA $0700                 
CODE_23AFBC:        CLC                       
CODE_23AFBD:        ADC #$10                  
CODE_23AFBF:        STA $0700                 
CODE_23AFC2:        TAY                       
CODE_23AFC3:        LDA $2F                   
CODE_23AFC5:        ADC #$00                  
CODE_23AFC7:        STA $2F                   
CODE_23AFC9:        STA $01                   
CODE_23AFCB:        LDA $02                   
CODE_23AFCD:        STA $04                   
CODE_23AFCF:        CPX #$07                  
CODE_23AFD1:        BNE CODE_23AFE2           
CODE_23AFD3:        REP #$30                  
CODE_23AFD5:        TYA                       
CODE_23AFD6:        ORA #$2000                
CODE_23AFD9:        TAY                       
CODE_23AFDA:        SEP #$20                  
CODE_23AFDC:        LDA #$00                  
CODE_23AFDE:        STA [$2E],y               
CODE_23AFE0:        SEP #$10                  
CODE_23AFE2:        CPX #$08                  
CODE_23AFE4:        BEQ CODE_23AFFE           
CODE_23AFE6:        LDA.w DATA_21A5DC,x               
CODE_23AFE9:        STA [$2E],y               
CODE_23AFEB:        JSL CODE_2AB73A           
CODE_23AFEF:        JSL CODE_23BEBB           
CODE_23AFF3:        DEC $04                   
CODE_23AFF5:        LDA $04                   
CODE_23AFF7:        CMP #$FF                  
CODE_23AFF9:        BNE CODE_23AFCF           
CODE_23AFFB:        JMP CODE_23AF82           

CODE_23AFFE:        LDA.w DATA_21A5DC,x               
CODE_23B001:        STA [$2E],y               
CODE_23B003:        REP #$30                  
CODE_23B005:        TYA                       
CODE_23B006:        AND #$00FF                
CODE_23B009:        ORA #$2000                
CODE_23B00C:        TAY                       
CODE_23B00D:        SEP #$20                  
CODE_23B00F:        LDA #$01                  
CODE_23B011:        STA [$2E],y               
CODE_23B013:        SEP #$10                  
CODE_23B015:        JSL CODE_23BEBB           
CODE_23B019:        DEC $04                   
CODE_23B01B:        LDA $04                   
CODE_23B01D:        CMP #$FF                  
CODE_23B01F:        BNE CODE_23AFCF           
CODE_23B021:        JMP CODE_23AF82           

CODE_23B024:        LDX #$01                  
CODE_23B026:        BEQ CODE_23B02A           
CODE_23B028:        LDX #$00                  
CODE_23B02A:        LDA $0706                 
CODE_23B02D:        AND #$0F                  
CODE_23B02F:        STA $02                   
CODE_23B031:        LDY $0700                 
CODE_23B034:        LDA.w DATA_21A5E5,x               
CODE_23B037:        STA [$2E],y               
CODE_23B039:        JSL CODE_23BEBB           
CODE_23B03D:        DEC $02                   
CODE_23B03F:        BPL CODE_23B034           
CODE_23B041:        RTL                       

CODE_23B042:        LDX #$02                  
CODE_23B044:        LDA $0706                 
CODE_23B047:        JMP CODE_23B057           

CODE_23B04A:        LDA $0706                 
CODE_23B04D:        PHA                       
CODE_23B04E:        SEC                       
CODE_23B04F:        SBC #$50                  
CODE_23B051:        LSR A                     
CODE_23B052:        LSR A                     
CODE_23B053:        LSR A                     
CODE_23B054:        LSR A                     
CODE_23B055:        TAX                       
CODE_23B056:        PLA                       
CODE_23B057:        AND #$0F                  
CODE_23B059:        STA $02                   
CODE_23B05B:        LDY $0700                 
CODE_23B05E:        LDA.w DATA_21A5E7,x               
CODE_23B061:        STA [$2E],y               
CODE_23B063:        JSL CODE_23BEBB           
CODE_23B067:        DEC $02                   
CODE_23B069:        BPL CODE_23B05E           
CODE_23B06B:        RTL                       

CODE_23B06C:        LDY $0700                 
CODE_23B06F:        LDA #$06                  
CODE_23B071:        STA [$2E],y               
CODE_23B073:        RTL                       

CODE_23B074:        LDA $0706                 
CODE_23B077:        AND #$0F                  
CODE_23B079:        TAX                       
CODE_23B07A:        LDY $0700                 
CODE_23B07D:        LDA #$5B                  
CODE_23B07F:        STA [$2E],y               
CODE_23B081:        JSL CODE_23BEBB           
CODE_23B085:        DEX                       
CODE_23B086:        BPL CODE_23B07D           
CODE_23B088:        RTL                       

CODE_23B089:        STX $0B                   
CODE_23B08B:        REP #$20                  
CODE_23B08D:        LDA $2E                   
CODE_23B08F:        STA $02                   
CODE_23B091:        SEP #$20                  
CODE_23B093:        LDA $0706                 
CODE_23B096:        AND #$0F                  
CODE_23B098:        STA $00                   
CODE_23B09A:        LDX #$00                  
CODE_23B09C:        TXA                       
CODE_23B09D:        LDX $0B                   
CODE_23B09F:        CLC                       
CODE_23B0A0:        ADC.w DATA_21A644,x               
CODE_23B0A3:        STA $0C                   
CODE_23B0A5:        TAX                       
CODE_23B0A6:        LDA $0706                 
CODE_23B0A9:        AND #$C0                  
CODE_23B0AB:        STA $01                   
CODE_23B0AD:        LDY $0700                 
CODE_23B0B0:        CPX #$06                  
CODE_23B0B2:        BNE CODE_23B0C8           
CODE_23B0B4:        LDA $0350                 
CODE_23B0B7:        CMP #$0C                  
CODE_23B0B9:        BNE CODE_23B0C8           
CODE_23B0BB:        LDA [$2E],y               
CODE_23B0BD:        CMP #$80                  
CODE_23B0BF:        BEQ CODE_23B0C8           
CODE_23B0C1:        JSR CODE_23B1A5           
CODE_23B0C4:        LDA #$0A                  
CODE_23B0C6:        BRA CODE_23B0CB           

CODE_23B0C8:        LDA.w DATA_21A5EA,x               
CODE_23B0CB:        STA [$2E],y               
CODE_23B0CD:        JSR CODE_23B36A           
CODE_23B0D0:        LDA [$2E],y               
CODE_23B0D2:        CMP #$53                  
CODE_23B0D4:        BEQ CODE_23B0FB           
CODE_23B0D6:        CMP #$55                  
CODE_23B0D8:        BEQ CODE_23B0FB           
CODE_23B0DA:        LDX $0C                   
CODE_23B0DC:        CPX #$06                  
CODE_23B0DE:        BNE CODE_23B0F4           
CODE_23B0E0:        LDA $0350                 
CODE_23B0E3:        CMP #$0C                  
CODE_23B0E5:        BNE CODE_23B0F4           
CODE_23B0E7:        LDA [$2E],y               
CODE_23B0E9:        CMP #$80                  
CODE_23B0EB:        BEQ CODE_23B0F4           
CODE_23B0ED:        JSR CODE_23B1A5           
CODE_23B0F0:        LDA #$0B                  
CODE_23B0F2:        BRA CODE_23B0F7           

CODE_23B0F4:        LDA.w DATA_21A5F6,x               
CODE_23B0F7:        STA [$2E],y               
CODE_23B0F9:        BRA CODE_23B0CD           

CODE_23B0FB:        TYA                       
CODE_23B0FC:        SEC                       
CODE_23B0FD:        SBC #$10                  
CODE_23B0FF:        TAY                       
CODE_23B100:        LDA $2F                   
CODE_23B102:        SBC #$00                  
CODE_23B104:        STA $2F                   
CODE_23B106:        LDX $0C                   
CODE_23B108:        CPX #$06                  
CODE_23B10A:        BNE CODE_23B11D           
CODE_23B10C:        LDA $0350                 
CODE_23B10F:        CMP #$0C                  
CODE_23B111:        BNE CODE_23B11D           
CODE_23B113:        LDA [$2E],y               
CODE_23B115:        CMP #$0B                  
CODE_23B117:        BNE CODE_23B11D           
CODE_23B119:        LDA #$0C                  
CODE_23B11B:        BRA CODE_23B120           

CODE_23B11D:        LDA.w DATA_21A602,x               
CODE_23B120:        STA [$2E],y               
CODE_23B122:        REP #$20                  
CODE_23B124:        LDA $02                   
CODE_23B126:        STA $2E                   
CODE_23B128:        SEP #$20                  
CODE_23B12A:        LDY $0700                 
CODE_23B12D:        INY                       
CODE_23B12E:        TYA                       
CODE_23B12F:        AND #$0F                  
CODE_23B131:        BNE CODE_23B153           
CODE_23B133:        LDA $0700                 
CODE_23B136:        AND #$F0                  
CODE_23B138:        TAY                       
CODE_23B139:        REP #$20                  
CODE_23B13B:        LDA $2E                   
CODE_23B13D:        CLC                       
CODE_23B13E:        ADC #$01B0                
CODE_23B141:        STA $2E                   
CODE_23B143:        STA $02                   
CODE_23B145:        SEP #$20                  
CODE_23B147:        LDA $03                   
CODE_23B149:        STA $04                   
CODE_23B14B:        LDA $0E                   
CODE_23B14D:        AND #$10                  
CODE_23B14F:        BNE CODE_23B153           
CODE_23B151:        INC $04                   
CODE_23B153:        STY $0700                 
CODE_23B156:        DEC $00                   
CODE_23B158:        LDX #$01                  
CODE_23B15A:        LDA $00                   
CODE_23B15C:        CMP #$01                  
CODE_23B15E:        BPL CODE_23B165           
CODE_23B160:        INX                       
CODE_23B161:        CMP #$00                  
CODE_23B163:        BNE CODE_23B16A           
CODE_23B165:        STX $0C                   
CODE_23B167:        JMP CODE_23B09C           

CODE_23B16A:        LDA [$2E],y               
CODE_23B16C:        CMP #$80                  
CODE_23B16E:        BEQ CODE_23B182           
CODE_23B170:        CMP #$90                  
CODE_23B172:        BCC CODE_23B17C           
CODE_23B174:        CMP #$9F                  
CODE_23B176:        BCS CODE_23B17C                   
CODE_23B178:        LDA #$9D                  
CODE_23B17A:        BRA CODE_23B180           

CODE_23B17C:        AND #$C0                  
CODE_23B17E:        ORA #$0B                  
CODE_23B180:        STA [$2E],y               
CODE_23B182:        JSR CODE_23B36A           
CODE_23B185:        LDA [$2E],y               
CODE_23B187:        CMP #$53                  
CODE_23B189:        BEQ CODE_23B18F           
CODE_23B18B:        CMP #$57                  
CODE_23B18D:        BNE CODE_23B190           
CODE_23B18F:        RTL                       

CODE_23B190:        LDX #$18                  
CODE_23B192:        LDA [$2E],y               
CODE_23B194:        CMP.w DATA_21A60E,x               
CODE_23B197:        BEQ CODE_23B19E           
CODE_23B199:        DEX                       
CODE_23B19A:        BPL CODE_23B194           
CODE_23B19C:        BRA CODE_23B182           

CODE_23B19E:        LDA.w DATA_21A627,x               
CODE_23B1A1:        STA [$2E],y               
CODE_23B1A3:        BRA CODE_23B182           

CODE_23B1A5:        PHX                       
CODE_23B1A6:        PHY                       
CODE_23B1A7:        REP #$30                  
CODE_23B1A9:        TYA                       
CODE_23B1AA:        AND #$00FF                
CODE_23B1AD:        ORA #$2000                
CODE_23B1B0:        TAY                       
CODE_23B1B1:        SEP #$20                  
CODE_23B1B3:        LDA #$01                  
CODE_23B1B5:        STA [$2E],y               
CODE_23B1B7:        SEP #$10                  
CODE_23B1B9:        PLY                       
CODE_23B1BA:        PLX                       
CODE_23B1BB:        RTS                       

CODE_23B1BC:        LDA $2E                   
CODE_23B1BE:        STA $00                   
CODE_23B1C0:        LDA $2F                   
CODE_23B1C2:        STA $01                   
CODE_23B1C4:        LDA $0706                 
CODE_23B1C7:        SEC                       
CODE_23B1C8:        SBC #$50                  
CODE_23B1CA:        PHA                       
CODE_23B1CB:        AND #$F0                  
CODE_23B1CD:        LSR A                     
CODE_23B1CE:        LSR A                     
CODE_23B1CF:        LSR A                     
CODE_23B1D0:        LSR A                     
CODE_23B1D1:        STA $02                   
CODE_23B1D3:        PLA                       
CODE_23B1D4:        AND #$0F                  
CODE_23B1D6:        STA $03                   
CODE_23B1D8:        STA $05                   
CODE_23B1DA:        STZ $04                   
CODE_23B1DC:        LDX $02                   
CODE_23B1DE:        LDA $04                   
CODE_23B1E0:        CLC                       
CODE_23B1E1:        ADC.w DATA_21A644,x               
CODE_23B1E4:        TAX                       
CODE_23B1E5:        LDY $0700                 
CODE_23B1E8:        LDA.w DATA_21A648,x               
CODE_23B1EB:        STA [$2E],y               
CODE_23B1ED:        JSL CODE_23BEBB           
CODE_23B1F1:        DEC $05                   
CODE_23B1F3:        LDA.w DATA_21A654,x               
CODE_23B1F6:        STA [$2E],y               
CODE_23B1F8:        JSL CODE_23BEBB           
CODE_23B1FC:        DEC $05                   
CODE_23B1FE:        LDA $05                   
CODE_23B200:        CMP #$01                  
CODE_23B202:        BNE CODE_23B1F3           
CODE_23B204:        LDA.w DATA_21A660,x               
CODE_23B207:        STA [$2E],y               
CODE_23B209:        JSL CODE_23BEBB           
CODE_23B20D:        LDA $00                   
CODE_23B20F:        STA $2E                   
CODE_23B211:        LDA $01                   
CODE_23B213:        STA $2F                   
CODE_23B215:        LDA $0700                 
CODE_23B218:        CLC                       
CODE_23B219:        ADC #$10                  
CODE_23B21B:        STA $0700                 
CODE_23B21E:        LDA $2F                   
CODE_23B220:        ADC #$00                  
CODE_23B222:        STA $2F                   
CODE_23B224:        STA $01                   
CODE_23B226:        LDA $03                   
CODE_23B228:        STA $05                   
CODE_23B22A:        INC $04                   
CODE_23B22C:        LDA $04                   
CODE_23B22E:        CMP #$02                  
CODE_23B230:        BNE CODE_23B1DC           
CODE_23B232:        RTL                       

CODE_23B233:        LDA #$3B                  
CODE_23B235:        STA $05ED                 
CODE_23B238:        JSL CODE_22E103           
CODE_23B23C:        RTL                       

CODE_23B23D:        LDY $0700                 
CODE_23B240:        LDA [$2E],y               
CODE_23B242:        CMP #$80                  
CODE_23B244:        BEQ CODE_23B24A           
CODE_23B246:        CMP #$80                  
CODE_23B248:        BNE CODE_23B253           
CODE_23B24A:        LDA #$85                  
CODE_23B24C:        STA [$2E],y               
CODE_23B24E:        JSR CODE_23B36A           
CODE_23B251:        BRA CODE_23B240           

CODE_23B253:        RTL                       

CODE_23B254:        LDA $0706                 
CODE_23B257:        AND #$0F                  
CODE_23B259:        TAX                       
CODE_23B25A:        LDY $0700                 
CODE_23B25D:        LDA #$86                  
CODE_23B25F:        STA [$2E],y               
CODE_23B261:        JSL CODE_23BEBB           
CODE_23B265:        DEX                       
CODE_23B266:        BPL CODE_23B25D           
CODE_23B268:        RTL                       

CODE_23B269:        LDX #$00                  
CODE_23B26B:        BEQ CODE_23B26F           
CODE_23B26D:        LDX #$02                  
CODE_23B26F:        LDA $2E                   
CODE_23B271:        STA $00                   
CODE_23B273:        LDA $2F                   
CODE_23B275:        STA $01                   
CODE_23B277:        LDA $0706                 
CODE_23B27A:        AND #$0F                  
CODE_23B27C:        STA $02                   
CODE_23B27E:        LDY $0700                 
CODE_23B281:        LDA $02                   
CODE_23B283:        STA $03                   
CODE_23B285:        LDA.w DATA_21A67B,x               
CODE_23B288:        STA [$2E],y               
CODE_23B28A:        BRA CODE_23B291           

CODE_23B28C:        LDA.w DATA_21A67F,x               
CODE_23B28F:        STA [$2E],y               
CODE_23B291:        JSL CODE_23BEBB           
CODE_23B295:        DEC $03                   
CODE_23B297:        BNE CODE_23B28C           
CODE_23B299:        LDA.w DATA_21A683,x               
CODE_23B29C:        STA [$2E],y               
CODE_23B29E:        LDA $00                   
CODE_23B2A0:        STA $2E                   
CODE_23B2A2:        LDA $01                   
CODE_23B2A4:        STA $2F                   
CODE_23B2A6:        LDA $0700                 
CODE_23B2A9:        CLC                       
CODE_23B2AA:        ADC #$10                  
CODE_23B2AC:        STA $0700                 
CODE_23B2AF:        TAY                       
CODE_23B2B0:        LDA $2F                   
CODE_23B2B2:        ADC #$00                  
CODE_23B2B4:        STA $2F                   
CODE_23B2B6:        STA $01                   
CODE_23B2B8:        INX                       
CODE_23B2B9:        CPY #$B0                  
CODE_23B2BB:        BCC CODE_23B281           
CODE_23B2BD:        RTL                       

CODE_23B2BE:        LDY #$00                  
CODE_23B2C0:        LDA [$2B],y               
CODE_23B2C2:        STA $02                   
CODE_23B2C4:        LDA $2B                   
CODE_23B2C6:        CLC                       
CODE_23B2C7:        ADC #$01                  
CODE_23B2C9:        STA $2B                   
CODE_23B2CB:        LDA $2C                   
CODE_23B2CD:        ADC #$00                  
CODE_23B2CF:        STA $2C                   
CODE_23B2D1:        LDA $2E                   
CODE_23B2D3:        STA $00                   
CODE_23B2D5:        LDA $2F                   
CODE_23B2D7:        STA $01                   
CODE_23B2D9:        LDA $0706                 
CODE_23B2DC:        PHA                       
CODE_23B2DD:        SEC                       
CODE_23B2DE:        SBC #$C0                  
CODE_23B2E0:        LSR A                     
CODE_23B2E1:        LSR A                     
CODE_23B2E2:        LSR A                     
CODE_23B2E3:        LSR A                     
CODE_23B2E4:        TAY                       
CODE_23B2E5:        LDX.w DATA_21A693,y               
CODE_23B2E8:        PLA                       
CODE_23B2E9:        AND #$0F                  
CODE_23B2EB:        STA $03                   
CODE_23B2ED:        LDA $02                   
CODE_23B2EF:        STA $04                   
CODE_23B2F1:        LDY $0700                 
CODE_23B2F4:        LDA.w DATA_21A687,x               
CODE_23B2F7:        STA [$2E],y               
CODE_23B2F9:        JSL CODE_2AB73A           
CODE_23B2FD:        JSL CODE_23BEBB           
CODE_23B301:        DEC $04                   
CODE_23B303:        BEQ CODE_23B316           
CODE_23B305:        LDA.w DATA_21A687+1,x               
CODE_23B308:        STA [$2E],y               
CODE_23B30A:        JSL CODE_2AB73A           
CODE_23B30E:        JSL CODE_23BEBB           
CODE_23B312:        DEC $04                   
CODE_23B314:        BNE CODE_23B305           
CODE_23B316:        LDA.w DATA_21A687+2,x               
CODE_23B319:        STA [$2E],y               
CODE_23B31B:        JSL CODE_2AB73A           
CODE_23B31F:        LDA $00                   
CODE_23B321:        STA $2E                   
CODE_23B323:        LDA $01                   
CODE_23B325:        STA $2F                   
CODE_23B327:        LDA $0700                 
CODE_23B32A:        CLC                       
CODE_23B32B:        ADC #$10                  
CODE_23B32D:        STA $0700                 
CODE_23B330:        TAY                       
CODE_23B331:        LDA $2F                   
CODE_23B333:        ADC #$00                  
CODE_23B335:        STA $2F                   
CODE_23B337:        STA $01                   
CODE_23B339:        DEC $03                   
CODE_23B33B:        BMI CODE_23B368           
CODE_23B33D:        LDA $02                   
CODE_23B33F:        STA $04                   
CODE_23B341:        LDA.w DATA_21A68D,x               
CODE_23B344:        STA [$2E],y               
CODE_23B346:        JSL CODE_2AB73A           
CODE_23B34A:        JSL CODE_23BEBB           
CODE_23B34E:        DEC $04                   
CODE_23B350:        BEQ CODE_23B363           
CODE_23B352:        LDA.w DATA_21A68D+1,x               
CODE_23B355:        STA [$2E],y               
CODE_23B357:        JSL CODE_2AB73A           
CODE_23B35B:        JSL CODE_23BEBB           
CODE_23B35F:        DEC $04                   
CODE_23B361:        BNE CODE_23B352           
CODE_23B363:        LDA.w DATA_21A68D+2,x               
CODE_23B366:        STA [$2E],y               
CODE_23B368:        RTL                       

CODE_23B369:        RTL                       

CODE_23B36A:        TYA                       
CODE_23B36B:        CLC                       
CODE_23B36C:        ADC #$10                  
CODE_23B36E:        TAY                       
CODE_23B36F:        LDA $2F                   
CODE_23B371:        ADC #$00                  
CODE_23B373:        STA $2F                   
CODE_23B375:        RTS                       

CODE_23B376:        LDA $05                   
CODE_23B378:        STA $2F                   
CODE_23B37A:        LDY $0700                 
CODE_23B37D:        INY                       
CODE_23B37E:        TYA                       
CODE_23B37F:        AND #$0F                  
CODE_23B381:        BNE CODE_23B3B4           
CODE_23B383:        LDY #$00                  
CODE_23B385:        LDA $0E                   
CODE_23B387:        AND #$10                  
CODE_23B389:        BEQ CODE_23B38C           
CODE_23B38B:        INY                       
CODE_23B38C:        STY $09                   
CODE_23B38E:        LDA $2E                   
CODE_23B390:        CLC                       
CODE_23B391:        ADC #$B0                  
CODE_23B393:        STA $2E                   
CODE_23B395:        LDA $2F                   
CODE_23B397:        ADC $09                   
CODE_23B399:        STA $2F                   
CODE_23B39B:        STA $05                   
CODE_23B39D:        LDA $0F                   
CODE_23B39F:        AND #$F0                  
CODE_23B3A1:        LSR A                     
CODE_23B3A2:        LSR A                     
CODE_23B3A3:        LSR A                     
CODE_23B3A4:        TAY                       
CODE_23B3A5:        INY                       
CODE_23B3A6:        INY                       
CODE_23B3A7:        LDA.w DATA_218200+1,y               
CODE_23B3AA:        STA $04                   
CODE_23B3AC:        INC $04                   
CODE_23B3AE:        LDA $0700                 
CODE_23B3B1:        AND #$F0                  
CODE_23B3B3:        TAY                       
CODE_23B3B4:        STY $0700                 
CODE_23B3B7:        RTS                       

CODE_23B3B8:        LDX $0706                 
CODE_23B3BB:        LDY $0700                 
CODE_23B3BE:        LDA.w DATA_21A69B,x               
CODE_23B3C1:        STA [$2E],y               
CODE_23B3C3:        JSL CODE_2AB73A           
CODE_23B3C7:        PHX                       
CODE_23B3C8:        LDX #$00                  
CODE_23B3CA:        CMP #$33                  
CODE_23B3CC:        BEQ CODE_23B3E5           
CODE_23B3CE:        CMP #$35                  
CODE_23B3D0:        BEQ CODE_23B3E4           
CODE_23B3D2:        CMP #$A7                  
CODE_23B3D4:        BEQ CODE_23B3E3           
CODE_23B3D6:        CMP #$AC                  
CODE_23B3D8:        BEQ CODE_23B3E2           
CODE_23B3DA:        CMP #$A9                  
CODE_23B3DC:        BEQ CODE_23B3E1           
CODE_23B3DE:        JMP CODE_23B48E           

CODE_23B3E1:        INX                       
CODE_23B3E2:        INX                       
CODE_23B3E3:        INX                       
CODE_23B3E4:        INX                       
CODE_23B3E5:        LDA $30                   
CODE_23B3E7:        STA $DA                   
CODE_23B3E9:        STA $DD                   
CODE_23B3EB:        REP #$20                  
CODE_23B3ED:        LDA $2E                   
CODE_23B3EF:        SEC                       
CODE_23B3F0:        SBC #$000F                
CODE_23B3F3:        STA $D8                   
CODE_23B3F5:        CLC                       
CODE_23B3F6:        ADC #$0020                
CODE_23B3F9:        STA $DB                   
CODE_23B3FB:        SEP #$20                  
CODE_23B3FD:        PHY                       
CODE_23B3FE:        INY                       
CODE_23B3FF:        TYA                       
CODE_23B400:        AND #$0F                  
CODE_23B402:        BNE CODE_23B417           
CODE_23B404:        REP #$21                  
CODE_23B406:        LDA $D8                   
CODE_23B408:        ADC #$01A0                
CODE_23B40B:        STA $D8                   
CODE_23B40D:        LDA $DB                   
CODE_23B40F:        CLC                       
CODE_23B410:        ADC #$01A0                
CODE_23B413:        STA $DB                   
CODE_23B415:        SEP #$20                  
CODE_23B417:        PLY                       
CODE_23B418:        LDA [$D8],y               
CODE_23B41A:        CMP #$34                  
CODE_23B41C:        BEQ CODE_23B43F           
CODE_23B41E:        LDA [$DB],y               
CODE_23B420:        CMP #$9A                  
CODE_23B422:        BEQ CODE_23B433           
CODE_23B424:        CMP #$26                  
CODE_23B426:        BEQ CODE_23B433           
CODE_23B428:        DEY                       
CODE_23B429:        DEY                       
CODE_23B42A:        LDA [$D8],y               
CODE_23B42C:        CMP #$A0                  
CODE_23B42E:        BNE CODE_23B472           
CODE_23B430:        INY                       
CODE_23B431:        BRA CODE_23B44A           

CODE_23B433:        REP #$20                  
CODE_23B435:        LDA $DB                   
CODE_23B437:        SEC                       
CODE_23B438:        SBC #$0011                
CODE_23B43B:        STA $D8                   
CODE_23B43D:        SEP #$20                  
CODE_23B43F:        REP #$21                  
CODE_23B441:        LDA $D8                   
CODE_23B443:        ADC #$0010                
CODE_23B446:        STA $D8                   
CODE_23B448:        SEP #$20                  
CODE_23B44A:        PHY                       
CODE_23B44B:        INY                       
CODE_23B44C:        TYA                       
CODE_23B44D:        AND #$0F                  
CODE_23B44F:        BNE CODE_23B45D           
CODE_23B451:        REP #$20                  
CODE_23B453:        LDA $D8                   
CODE_23B455:        SEC                       
CODE_23B456:        SBC #$01A0                
CODE_23B459:        STA $D8                   
CODE_23B45B:        SEP #$20                  
CODE_23B45D:        PLY                       
CODE_23B45E:        LDA.l DATA_23B49E,x             
CODE_23B462:        STA [$D8],y               
CODE_23B464:        LDA $D9                   
CODE_23B466:        CLC                       
CODE_23B467:        ADC #$20                  
CODE_23B469:        STA $D9                   
CODE_23B46B:        LDA #$01                  
CODE_23B46D:        STA [$D8],y               
CODE_23B46F:        PLX                       
CODE_23B470:        BRA CODE_23B49D           

CODE_23B472:        REP #$20                  
CODE_23B474:        LDA $D8                   
CODE_23B476:        CLC                       
CODE_23B477:        ADC #$0020                
CODE_23B47A:        STA $D8                   
CODE_23B47C:        SEP #$20                  
CODE_23B47E:        LDA [$D8],y               
CODE_23B480:        CMP #$9A                  
CODE_23B482:        BNE CODE_23B48E           
CODE_23B484:        LDA $0350                 
CODE_23B487:        CMP #$1D                  
CODE_23B489:        BEQ CODE_23B48E           
CODE_23B48B:        INY                       
CODE_23B48C:        BRA CODE_23B44A           
CODE_23B48E:        PLX                       
CODE_23B48F:        LDA [$2E],y               
CODE_23B491:        CMP #$0D                  
CODE_23B493:        BEQ CODE_23B49D           
CODE_23B495:        CMP #$04                  
CODE_23B497:        BEQ CODE_23B49D           
CODE_23B499:        JSL CODE_2AB73A           
CODE_23B49D:        RTL                       

DATA_23B49E:        db $09,$0A,$02,$05,$04

CODE_23B4A3:        LDA $2E
CODE_23B4A5:        STA $00
CODE_23B4A7:        LDA $2F                   
CODE_23B4A9:        STA $01                   
CODE_23B4AB:        STZ $02                   
CODE_23B4AD:        LDA $0706                 
CODE_23B4B0:        PHA                       
CODE_23B4B1:        AND #$0F                  
CODE_23B4B3:        STA $03                   
CODE_23B4B5:        PLA                       
CODE_23B4B6:        SEC                       
CODE_23B4B7:        SBC #$10                  
CODE_23B4B9:        AND #$C0                  
CODE_23B4BB:        CLC                       
CODE_23B4BC:        ROL A                     
CODE_23B4BD:        ROL A                     
CODE_23B4BE:        ROL A                     
CODE_23B4BF:        TAX                       
CODE_23B4C0:        LDY $0700                 
CODE_23B4C3:        LDA $02                   
CODE_23B4C5:        STA $04                   
CODE_23B4C7:        BEQ CODE_23B4E5           
CODE_23B4C9:        TXA                       
CODE_23B4CA:        BNE CODE_23B4D2           
CODE_23B4CC:        JSL CODE_2AB73A           
CODE_23B4D0:        BRA CODE_23B4D8           

CODE_23B4D2:        LDA [$2E],y               
CODE_23B4D4:        CMP #$04                  
CODE_23B4D6:        BEQ CODE_23B4DD           
CODE_23B4D8:        LDA.w DATA_21A6A7,x               
CODE_23B4DB:        STA [$2E],y               
CODE_23B4DD:        JSL CODE_23BEBB           
CODE_23B4E1:        DEC $04                   
CODE_23B4E3:        BNE CODE_23B4C9           
CODE_23B4E5:        LDA.w DATA_21A6AA,x               
CODE_23B4E8:        STA [$2E],y               
CODE_23B4EA:        JSL CODE_2A89DC           
CODE_23B4EE:        LDA $00                   
CODE_23B4F0:        STA $2E                   
CODE_23B4F2:        LDA $01                   
CODE_23B4F4:        STA $2F                   
CODE_23B4F6:        LDA $0700                 
CODE_23B4F9:        CLC                       
CODE_23B4FA:        ADC #$10                  
CODE_23B4FC:        STA $0700                 
CODE_23B4FF:        LDA $2F                   
CODE_23B501:        ADC #$00                  
CODE_23B503:        STA $2F                   
CODE_23B505:        STA $01                   
CODE_23B507:        INC $02                   
CODE_23B509:        DEC $03                   
CODE_23B50B:        BPL CODE_23B4C0           
CODE_23B50D:        RTL                       

CODE_23B50E:        LDA $2E                   
CODE_23B510:        STA $00                   
CODE_23B512:        LDA $2F                   
CODE_23B514:        STA $01                   
CODE_23B516:        STZ $02                   
CODE_23B518:        LDA $0706                 
CODE_23B51B:        PHA                       
CODE_23B51C:        AND #$0F                  
CODE_23B51E:        STA $03                   
CODE_23B520:        PLA                       
CODE_23B521:        SEC                       
CODE_23B522:        SBC #$10                  
CODE_23B524:        AND #$C0                  
CODE_23B526:        CLC                       
CODE_23B527:        ROL A                     
CODE_23B528:        ROL A                     
CODE_23B529:        ROL A                     
CODE_23B52A:        TAX                       
CODE_23B52B:        LDY $0700                 
CODE_23B52E:        LDA $02                   
CODE_23B530:        STA $04                   
CODE_23B532:        LDA.w DATA_21A6AD,x               
CODE_23B535:        STA [$2E],y               
CODE_23B537:        JSL CODE_2A8AE2           
CODE_23B53B:        BRA CODE_23B55F           

CODE_23B53D:        REP #$21                  
CODE_23B53F:        LDA $2E                   
CODE_23B541:        ADC #$2000                
CODE_23B544:        STA $D8                   
CODE_23B546:        SEP #$20                  
CODE_23B548:        LDA $30                   
CODE_23B54A:        STA $DA                   
CODE_23B54C:        LDA [$D8],y               
CODE_23B54E:        BEQ CODE_23B55A           
CODE_23B550:        LDA [$2E],y               
CODE_23B552:        CMP #$02                  
CODE_23B554:        BEQ CODE_23B55F           
CODE_23B556:        CMP #$09                  
CODE_23B558:        BEQ CODE_23B55F           
CODE_23B55A:        LDA.w DATA_21A6A7,x               
CODE_23B55D:        STA [$2E],y               
CODE_23B55F:        JSL CODE_23BEBB           
CODE_23B563:        DEC $04                   
CODE_23B565:        BPL CODE_23B53D           
CODE_23B567:        INC $02                   
CODE_23B569:        LDA $00                   
CODE_23B56B:        STA $2E                   
CODE_23B56D:        LDA $01                   
CODE_23B56F:        STA $2F                   
CODE_23B571:        LDA $0700                 
CODE_23B574:        CLC                       
CODE_23B575:        ADC #$0F                  
CODE_23B577:        TAY                       
CODE_23B578:        LDA $2F                   
CODE_23B57A:        ADC #$00                  
CODE_23B57C:        STA $2F                   
CODE_23B57E:        STA $01                   
CODE_23B580:        TYA                       
CODE_23B581:        AND #$0F                  
CODE_23B583:        CMP #$0F                  
CODE_23B585:        BNE CODE_23B5A2           
CODE_23B587:        REP #$20                  
CODE_23B589:        LDA $2E                   
CODE_23B58B:        SEC                       
CODE_23B58C:        SBC #$01B0                
CODE_23B58F:        STA $2E                   
CODE_23B591:        STA $00                   
CODE_23B593:        SEP #$20                  
CODE_23B595:        TYA                       
CODE_23B596:        CLC                       
CODE_23B597:        ADC #$10                  
CODE_23B599:        TAY                       
CODE_23B59A:        LDA $2F                   
CODE_23B59C:        ADC #$00                  
CODE_23B59E:        STA $2F                   
CODE_23B5A0:        STA $01                   
CODE_23B5A2:        STY $0700                 
CODE_23B5A5:        DEC $03                   
CODE_23B5A7:        BPL CODE_23B52B           
CODE_23B5A9:        RTL                       

CODE_23B5AA:        LDA $2E                   
CODE_23B5AC:        STA $00                   
CODE_23B5AE:        LDA $2F                   
CODE_23B5B0:        STA $01                   
CODE_23B5B2:        LDA $0706                 
CODE_23B5B5:        PHA                       
CODE_23B5B6:        AND #$0F                  
CODE_23B5B8:        STA $02                   
CODE_23B5BA:        PLA                       
CODE_23B5BB:        SEC                       
CODE_23B5BC:        SBC #$10                  
CODE_23B5BE:        AND #$C0                  
CODE_23B5C0:        CLC                       
CODE_23B5C1:        ROL A                     
CODE_23B5C2:        ROL A                     
CODE_23B5C3:        ROL A                     
CODE_23B5C4:        TAX                       
CODE_23B5C5:        LDY $0700                 
CODE_23B5C8:        LDA $02                   
CODE_23B5CA:        STA $04                   
CODE_23B5CC:        LDA.w DATA_21A6B0,x               
CODE_23B5CF:        STA [$2E],y               
CODE_23B5D1:        TXA                       
CODE_23B5D2:        BEQ CODE_23B5DF           
CODE_23B5D4:        JSL CODE_2A881E           
CODE_23B5D8:        BRA CODE_23B5DF           

CODE_23B5DA:        LDA.w DATA_21A6A7,x               
CODE_23B5DD:        STA [$2E],y               
CODE_23B5DF:        JSL CODE_23BEBB           
CODE_23B5E3:        DEC $04                   
CODE_23B5E5:        BPL CODE_23B5DA           
CODE_23B5E7:        LDA $00                   
CODE_23B5E9:        STA $2E                   
CODE_23B5EB:        LDA $01                   
CODE_23B5ED:        STA $2F                   
CODE_23B5EF:        LDA $0700                 
CODE_23B5F2:        CLC                       
CODE_23B5F3:        ADC #$10                  
CODE_23B5F5:        TAY                       
CODE_23B5F6:        LDA $2F                   
CODE_23B5F8:        ADC #$00                  
CODE_23B5FA:        STA $2F                   
CODE_23B5FC:        STA $01                   
CODE_23B5FE:        INY                       
CODE_23B5FF:        TYA                       
CODE_23B600:        AND #$0F                  
CODE_23B602:        BNE CODE_23B617           
CODE_23B604:        REP #$20                  
CODE_23B606:        LDA $2E                   
CODE_23B608:        CLC                       
CODE_23B609:        ADC #$01B0                
CODE_23B60C:        STA $2E                   
CODE_23B60E:        STA $00                   
CODE_23B610:        SEP #$20                  
CODE_23B612:        DEY                       
CODE_23B613:        TYA                       
CODE_23B614:        AND #$F0                  
CODE_23B616:        TAY                       
CODE_23B617:        STY $0700                 
CODE_23B61A:        DEC $02                   
CODE_23B61C:        BMI CODE_23B621           
CODE_23B61E:        JMP CODE_23B5C5           

CODE_23B621:        RTL                       

CODE_23B622:        LDA $2E                   
CODE_23B624:        STA $00                   
CODE_23B626:        LDA $2F                   
CODE_23B628:        STA $01                   
CODE_23B62A:        LDA $0706                 
CODE_23B62D:        PHA                       
CODE_23B62E:        AND #$0F                  
CODE_23B630:        STA $02                   
CODE_23B632:        PLA                       
CODE_23B633:        SEC                       
CODE_23B634:        SBC #$10                  
CODE_23B636:        AND #$C0                  
CODE_23B638:        CLC                       
CODE_23B639:        ROL A                     
CODE_23B63A:        ROL A                     
CODE_23B63B:        ROL A                     
CODE_23B63C:        TAX                       
CODE_23B63D:        LDY $0700                 
CODE_23B640:        LDA $02                   
CODE_23B642:        STA $04                   
CODE_23B644:        BEQ CODE_23B666           
CODE_23B646:        REP #$21                  
CODE_23B648:        LDA $2E                   
CODE_23B64A:        ADC #$2000                
CODE_23B64D:        STA $D8                   
CODE_23B64F:        SEP #$20                  
CODE_23B651:        LDA $30                   
CODE_23B653:        STA $DA                   
CODE_23B655:        LDA [$D8],y               
CODE_23B657:        BNE CODE_23B65E           
CODE_23B659:        LDA.w DATA_21A6A7,x               
CODE_23B65C:        STA [$2E],y               
CODE_23B65E:        JSL CODE_23BEBB           
CODE_23B662:        DEC $04                   
CODE_23B664:        BNE CODE_23B646           
CODE_23B666:        LDA.w DATA_21A6B3,x               
CODE_23B669:        STA [$2E],y               
CODE_23B66B:        TXA                       
CODE_23B66C:        BEQ CODE_23B67A           
CODE_23B66E:        PHX                       
CODE_23B66F:        LDX #$00                  
CODE_23B671:        JSL CODE_2A8844           
CODE_23B675:        JSL CODE_2A87B2           
CODE_23B679:        PLX                       
CODE_23B67A:        LDA $00                   
CODE_23B67C:        STA $2E                   
CODE_23B67E:        LDA $01                   
CODE_23B680:        STA $2F                   
CODE_23B682:        LDA $0700                 
CODE_23B685:        CLC                       
CODE_23B686:        ADC #$10                  
CODE_23B688:        STA $0700                 
CODE_23B68B:        LDA $2F                   
CODE_23B68D:        ADC #$00                  
CODE_23B68F:        STA $2F                   
CODE_23B691:        STA $01                   
CODE_23B693:        DEC $02                   
CODE_23B695:        BPL CODE_23B63D           
CODE_23B697:        RTL                       

CODE_23B698:        LDA $2E                   
CODE_23B69A:        STA $00                   
CODE_23B69C:        LDA $2F                   
CODE_23B69E:        STA $01                   
CODE_23B6A0:        LDA #$00                  
CODE_23B6A2:        STA $02                   
CODE_23B6A4:        LDA $0706                 
CODE_23B6A7:        PHA                       
CODE_23B6A8:        AND #$0F                  
CODE_23B6AA:        STA $03                   
CODE_23B6AC:        PLA                       
CODE_23B6AD:        SEC                       
CODE_23B6AE:        SBC #$10                  
CODE_23B6B0:        AND #$C0                  
CODE_23B6B2:        CLC                       
CODE_23B6B3:        ROL A                     
CODE_23B6B4:        ROL A                     
CODE_23B6B5:        ROL A                     
CODE_23B6B6:        TAX                       
CODE_23B6B7:        LDY $0700                 
CODE_23B6BA:        LDA $02                   
CODE_23B6BC:        STA $04                   
CODE_23B6BE:        BEQ CODE_23B6DF           
CODE_23B6C0:        LDA.w DATA_21A6A7,x               
CODE_23B6C3:        STA [$2E],y               
CODE_23B6C5:        JSL CODE_23BEBB           
CODE_23B6C9:        TXA                       
CODE_23B6CA:        BEQ CODE_23B6D2           
CODE_23B6CC:        LDA [$2E],y               
CODE_23B6CE:        CMP #$08                  
CODE_23B6D0:        BEQ CODE_23B6D7           
CODE_23B6D2:        LDA.w DATA_21A6A7,x               
CODE_23B6D5:        STA [$2E],y               
CODE_23B6D7:        JSL CODE_23BEBB           
CODE_23B6DB:        DEC $04                   
CODE_23B6DD:        BNE CODE_23B6C0           
CODE_23B6DF:        LDA.w DATA_21A6B6,x               
CODE_23B6E2:        STA [$2E],y               
CODE_23B6E4:        TXA                       
CODE_23B6E5:        BNE CODE_23B6EF           
CODE_23B6E7:        PHX                       
CODE_23B6E8:        LDX #$04                  
CODE_23B6EA:        JSL CODE_2A89DC           
CODE_23B6EE:        PLX                       
CODE_23B6EF:        JSL CODE_23BEBB           
CODE_23B6F3:        LDA.w DATA_21A6B9,x               
CODE_23B6F6:        STA [$2E],y               
CODE_23B6F8:        CMP #$9F                  
CODE_23B6FA:        BNE CODE_23B700           
CODE_23B6FC:        JSL CODE_2A89DC           
CODE_23B700:        LDA $00                   
CODE_23B702:        STA $2E                   
CODE_23B704:        LDA $01                   
CODE_23B706:        STA $2F                   
CODE_23B708:        LDA $0700                 
CODE_23B70B:        CLC                       
CODE_23B70C:        ADC #$10                  
CODE_23B70E:        STA $0700                 
CODE_23B711:        LDA $2F                   
CODE_23B713:        ADC #$00                  
CODE_23B715:        STA $2F                   
CODE_23B717:        STA $01                   
CODE_23B719:        INC $02                   
CODE_23B71B:        DEC $03                   
CODE_23B71D:        BPL CODE_23B6B7           
CODE_23B71F:        RTL                       

CODE_23B720:        LDA $2E                   
CODE_23B722:        STA $00                   
CODE_23B724:        LDA $2F                   
CODE_23B726:        STA $01                   
CODE_23B728:        LDA #$00                  
CODE_23B72A:        STA $02                   
CODE_23B72C:        LDA $0706                 
CODE_23B72F:        PHA                       
CODE_23B730:        AND #$0F                  
CODE_23B732:        STA $03                   
CODE_23B734:        PLA                       
CODE_23B735:        SEC                       
CODE_23B736:        SBC #$10                  
CODE_23B738:        AND #$C0                  
CODE_23B73A:        CLC                       
CODE_23B73B:        ROL A                     
CODE_23B73C:        ROL A                     
CODE_23B73D:        ROL A                     
CODE_23B73E:        TAX                       
CODE_23B73F:        LDY $0700                 
CODE_23B742:        LDA $02                   
CODE_23B744:        STA $04                   
CODE_23B746:        LDA.w DATA_21A6BC,x               
CODE_23B749:        STA [$2E],y               
CODE_23B74B:        CMP #$9C                  
CODE_23B74D:        BNE CODE_23B757           
CODE_23B74F:        PHX                       
CODE_23B750:        LDX #$03                  
CODE_23B752:        JSL CODE_2A8AE2           
CODE_23B756:        PLX                       
CODE_23B757:        JSL CODE_23BEBB           
CODE_23B75B:        LDA.w DATA_21A6BF,x               
CODE_23B75E:        STA [$2E],y               
CODE_23B760:        CMP #$9D                  
CODE_23B762:        BNE CODE_23B795           
CODE_23B764:        JSL CODE_2A87B2           
CODE_23B768:        BRA CODE_23B795           

CODE_23B76A:        REP #$21                  
CODE_23B76C:        LDA $2E                   
CODE_23B76E:        ADC #$2000                
CODE_23B771:        STA $D8                   
CODE_23B773:        SEP #$20                  
CODE_23B775:        LDA $30                   
CODE_23B777:        STA $DA                   
CODE_23B779:        LDA [$D8],y               
CODE_23B77B:        BEQ CODE_23B787           
CODE_23B77D:        LDA [$2E],y               
CODE_23B77F:        CMP #$02                  
CODE_23B781:        BEQ CODE_23B78C           
CODE_23B783:        CMP #$07                  
CODE_23B785:        BEQ CODE_23B78C           
CODE_23B787:        LDA.w DATA_21A6A7,x               
CODE_23B78A:        STA [$2E],y               
CODE_23B78C:        JSL CODE_23BEBB           
CODE_23B790:        LDA.w DATA_21A6A7,x               
CODE_23B793:        STA [$2E],y               
CODE_23B795:        JSL CODE_23BEBB           
CODE_23B799:        DEC $04                   
CODE_23B79B:        BPL CODE_23B76A           
CODE_23B79D:        LDA $00                   
CODE_23B79F:        STA $2E                   
CODE_23B7A1:        LDA $01                   
CODE_23B7A3:        STA $2F                   
CODE_23B7A5:        LDA $0700                 
CODE_23B7A8:        CLC                       
CODE_23B7A9:        ADC #$0E                  
CODE_23B7AB:        TAY                       
CODE_23B7AC:        LDA $2F                   
CODE_23B7AE:        ADC #$00                  
CODE_23B7B0:        STA $2F                   
CODE_23B7B2:        STA $01                   
CODE_23B7B4:        TYA                       
CODE_23B7B5:        AND #$0F                  
CODE_23B7B7:        CMP #$0E                  
CODE_23B7B9:        BCC CODE_23B7D7           
CODE_23B7BB:        LDA $2E                   
CODE_23B7BD:        SEC                       
CODE_23B7BE:        SBC #$B0                  
CODE_23B7C0:        STA $2E                   
CODE_23B7C2:        STA $00                   
CODE_23B7C4:        LDA $2F                   
CODE_23B7C6:        SBC #$01                  
CODE_23B7C8:        STA $2F                   
CODE_23B7CA:        TYA                       
CODE_23B7CB:        CLC                       
CODE_23B7CC:        ADC #$10                  
CODE_23B7CE:        TAY                       
CODE_23B7CF:        LDA $2F                   
CODE_23B7D1:        ADC #$00                  
CODE_23B7D3:        STA $2F                   
CODE_23B7D5:        STA $01                   
CODE_23B7D7:        STY $0700                 
CODE_23B7DA:        INC $02                   
CODE_23B7DC:        DEC $03                   
CODE_23B7DE:        BMI CODE_23B7E3           
CODE_23B7E0:        JMP CODE_23B73F           

CODE_23B7E3:        RTL                       

CODE_23B7E4:        REP #$20                  
CODE_23B7E6:        LDA $2E                   
CODE_23B7E8:        STA $00                   
CODE_23B7EA:        SEP #$20                  
CODE_23B7EC:        LDA $0706                 
CODE_23B7EF:        PHA                       
CODE_23B7F0:        AND #$0F                  
CODE_23B7F2:        STA $02                   
CODE_23B7F4:        PLA                       
CODE_23B7F5:        SEC                       
CODE_23B7F6:        SBC #$10                  
CODE_23B7F8:        AND #$C0                  
CODE_23B7FA:        CLC                       
CODE_23B7FB:        ROL A                     
CODE_23B7FC:        ROL A                     
CODE_23B7FD:        ROL A                     
CODE_23B7FE:        TAX                       
CODE_23B7FF:        LDY $0700                 
CODE_23B802:        LDA $02                   
CODE_23B804:        STA $04                   
CODE_23B806:        LDA.w DATA_21A6C2,x               
CODE_23B809:        STA [$2E],y               
CODE_23B80B:        JSL CODE_2A8776           
CODE_23B80F:        JSL CODE_23BEBB           
CODE_23B813:        LDA.w DATA_21A6C5,x               
CODE_23B816:        STA [$2E],y               
CODE_23B818:        BRA CODE_23B828           

CODE_23B81A:        LDA.w DATA_21A6A7,x               
CODE_23B81D:        STA [$2E],y               
CODE_23B81F:        JSL CODE_23BEBB           
CODE_23B823:        LDA.w DATA_21A6A7,x               
CODE_23B826:        STA [$2E],y               
CODE_23B828:        JSL CODE_23BEBB           
CODE_23B82C:        DEC $04                   
CODE_23B82E:        BPL CODE_23B81A           
CODE_23B830:        REP #$20                  
CODE_23B832:        LDA $00                   
CODE_23B834:        STA $2E                   
CODE_23B836:        SEP #$20                  
CODE_23B838:        LDA $0700                 
CODE_23B83B:        CLC                       
CODE_23B83C:        ADC #$10                  
CODE_23B83E:        TAY                       
CODE_23B83F:        LDA $2F                   
CODE_23B841:        ADC #$00                  
CODE_23B843:        STA $2F                   
CODE_23B845:        STA $01                   
CODE_23B847:        INY                       
CODE_23B848:        INY                       
CODE_23B849:        TYA                       
CODE_23B84A:        AND #$0F                  
CODE_23B84C:        CMP #$02                  
CODE_23B84E:        BCS CODE_23B863                   
CODE_23B850:        REP #$21                  
CODE_23B852:        LDA $2E                   
CODE_23B854:        ADC #$01B0                
CODE_23B857:        STA $2E                   
CODE_23B859:        STA $00                   
CODE_23B85B:        SEP #$20                  
CODE_23B85D:        DEY                       
CODE_23B85E:        DEY                       
CODE_23B85F:        TYA                       
CODE_23B860:        AND #$F1                  
CODE_23B862:        TAY                       
CODE_23B863:        STY $0700                 
CODE_23B866:        DEC $02                   
CODE_23B868:        BPL CODE_23B7FF           
CODE_23B86A:        RTL                       

CODE_23B86B:        LDA $2E                   
CODE_23B86D:        STA $00                   
CODE_23B86F:        LDA $2F                   
CODE_23B871:        STA $01                   
CODE_23B873:        LDA $0706                 
CODE_23B876:        PHA                       
CODE_23B877:        AND #$0F                  
CODE_23B879:        STA $02                   
CODE_23B87B:        PLA                       
CODE_23B87C:        SEC                       
CODE_23B87D:        SBC #$10                  
CODE_23B87F:        AND #$C0                  
CODE_23B881:        CLC                       
CODE_23B882:        ROL A                     
CODE_23B883:        ROL A                     
CODE_23B884:        ROL A                     
CODE_23B885:        TAX                       
CODE_23B886:        LDY $0700                 
CODE_23B889:        LDA $02                   
CODE_23B88B:        STA $04                   
CODE_23B88D:        BEQ CODE_23B8A5           
CODE_23B88F:        LDA.w DATA_21A6A7,x               
CODE_23B892:        STA [$2E],y               
CODE_23B894:        JSL CODE_23BEBB           
CODE_23B898:        LDA.w DATA_21A6A7,x               
CODE_23B89B:        STA [$2E],y               
CODE_23B89D:        JSL CODE_23BEBB           
CODE_23B8A1:        DEC $04                   
CODE_23B8A3:        BNE CODE_23B88F           
CODE_23B8A5:        LDA.w DATA_21A6C8,x               
CODE_23B8A8:        STA [$2E],y               
CODE_23B8AA:        CPX #$01                  
CODE_23B8AC:        BNE CODE_23B8B2           
CODE_23B8AE:        JSL CODE_2A87B2           
CODE_23B8B2:        JSL CODE_23BEBB           
CODE_23B8B6:        LDA.w DATA_21A6CB,x               
CODE_23B8B9:        STA [$2E],y               
CODE_23B8BB:        CMP #$A5                  
CODE_23B8BD:        BNE CODE_23B8C7           
CODE_23B8BF:        PHX                       
CODE_23B8C0:        LDX #$01                  
CODE_23B8C2:        JSL CODE_2A8844           
CODE_23B8C6:        PLX                       
CODE_23B8C7:        LDA $00                   
CODE_23B8C9:        STA $2E                   
CODE_23B8CB:        LDA $01                   
CODE_23B8CD:        STA $2F                   
CODE_23B8CF:        LDA $0700                 
CODE_23B8D2:        CLC                       
CODE_23B8D3:        ADC #$10                  
CODE_23B8D5:        STA $0700                 
CODE_23B8D8:        LDA $2F                   
CODE_23B8DA:        ADC #$00                  
CODE_23B8DC:        STA $2F                   
CODE_23B8DE:        STA $01                   
CODE_23B8E0:        DEC $02                   
CODE_23B8E2:        BPL CODE_23B886           
CODE_23B8E4:        RTL                       

CODE_23B8E5:        LDA $0706                 
CODE_23B8E8:        PHA                       
CODE_23B8E9:        AND #$0F                  
CODE_23B8EB:        STA $00                   
CODE_23B8ED:        PLA                       
CODE_23B8EE:        SEC                       
CODE_23B8EF:        SBC #$D0                  
CODE_23B8F1:        LSR A                     
CODE_23B8F2:        LSR A                     
CODE_23B8F3:        LSR A                     
CODE_23B8F4:        LSR A                     
CODE_23B8F5:        TAX                       
CODE_23B8F6:        LDY $0700                 
CODE_23B8F9:        LDA.w DATA_21A6CE,x               
CODE_23B8FC:        STA [$2E],y               
CODE_23B8FE:        TXA                       
CODE_23B8FF:        BNE CODE_23B932           
CODE_23B901:        PHY                       
CODE_23B902:        REP #$20                  
CODE_23B904:        LDA $2E                   
CODE_23B906:        STA $D8                   
CODE_23B908:        SEP #$20                  
CODE_23B90A:        LDA $30                   
CODE_23B90C:        STA $DA                   
CODE_23B90E:        TYA                       
CODE_23B90F:        CLC                       
CODE_23B910:        ADC #$0F                  
CODE_23B912:        TAY                       
CODE_23B913:        LDA [$D8],y               
CODE_23B915:        CMP #$25                  
CODE_23B917:        BEQ CODE_23B921           
CODE_23B919:        CMP #$26                  
CODE_23B91B:        BEQ CODE_23B921           
CODE_23B91D:        CMP #$33                  
CODE_23B91F:        BNE CODE_23B931           
CODE_23B921:        INY                       
CODE_23B922:        LDA #$09                  
CODE_23B924:        STA [$D8],y               
CODE_23B926:        LDA $D9                   
CODE_23B928:        CLC                       
CODE_23B929:        ADC #$20                  
CODE_23B92B:        STA $D9                   
CODE_23B92D:        LDA #$01                  
CODE_23B92F:        STA [$D8],y               
CODE_23B931:        PLY                       
CODE_23B932:        JSL CODE_2AB73A           
CODE_23B936:        TYA                       
CODE_23B937:        CLC                       
CODE_23B938:        ADC #$10                  
CODE_23B93A:        TAY                       
CODE_23B93B:        LDA $2F                   
CODE_23B93D:        ADC #$00                  
CODE_23B93F:        STA $2F                   
CODE_23B941:        DEC $00                   
CODE_23B943:        BPL CODE_23B8F9           
CODE_23B945:        RTL                       

CODE_23B946:        LDA $0706                 
CODE_23B949:        PHA                       
CODE_23B94A:        AND #$0F                  
CODE_23B94C:        STA $00                   
CODE_23B94E:        PLA                       
CODE_23B94F:        SEC                       
CODE_23B950:        SBC #$D0                  
CODE_23B952:        LSR A                     
CODE_23B953:        LSR A                     
CODE_23B954:        LSR A                     
CODE_23B955:        LSR A                     
CODE_23B956:        CLC                       
CODE_23B957:        ADC #$03                  
CODE_23B959:        TAX                       
CODE_23B95A:        LDY $0700                 
CODE_23B95D:        JMP CODE_23B8F9           

CODE_23B960:        LDY #$00                  
CODE_23B962:        LDA [$2B],y               
CODE_23B964:        STA $02                   
CODE_23B966:        LDA $2B                   
CODE_23B968:        CLC                       
CODE_23B969:        ADC #$01                  
CODE_23B96B:        STA $2B                   
CODE_23B96D:        LDA $2C                   
CODE_23B96F:        ADC #$00                  
CODE_23B971:        STA $2C                   
CODE_23B973:        LDA $2E                   
CODE_23B975:        STA $00                   
CODE_23B977:        LDA $2F                   
CODE_23B979:        STA $01                   
CODE_23B97B:        LDA $0706                 
CODE_23B97E:        PHA                       
CODE_23B97F:        AND #$0F                  
CODE_23B981:        STA $04                   
CODE_23B983:        PLA                       
CODE_23B984:        SEC                       
CODE_23B985:        SBC #$40                  
CODE_23B987:        LSR A                     
CODE_23B988:        LSR A                     
CODE_23B989:        LSR A                     
CODE_23B98A:        LSR A                     
CODE_23B98B:        TAX                       
CODE_23B98C:        LDY $0700                 
CODE_23B98F:        LDA $02                   
CODE_23B991:        STA $03                   
CODE_23B993:        CPX #$03                  
CODE_23B995:        BCS CODE_23B9C4                   
CODE_23B997:        REP #$21                  
CODE_23B999:        LDA $2E                   
CODE_23B99B:        ADC #$2000                
CODE_23B99E:        STA $D8                   
CODE_23B9A0:        SEP #$20                  
CODE_23B9A2:        LDA $30                   
CODE_23B9A4:        STA $DA                   
CODE_23B9A6:        LDA [$D8],y               
CODE_23B9A8:        BEQ CODE_23B9C4           
CODE_23B9AA:        LDA [$2E],y               
CODE_23B9AC:        CMP #$02                  
CODE_23B9AE:        BEQ CODE_23B9D9           
CODE_23B9B0:        CMP #$04                  
CODE_23B9B2:        BEQ CODE_23B9D9           
CODE_23B9B4:        CMP #$05                  
CODE_23B9B6:        BEQ CODE_23B9D9           
CODE_23B9B8:        CMP #$07                  
CODE_23B9BA:        BEQ CODE_23B9D9           
CODE_23B9BC:        CMP #$09                  
CODE_23B9BE:        BEQ CODE_23B9D9           
CODE_23B9C0:        CMP #$0A                  
CODE_23B9C2:        BEQ CODE_23B9D9           
CODE_23B9C4:        JSL CODE_2AB73A           
CODE_23B9C8:        LDA.w DATA_21A6D4,x               
CODE_23B9CB:        STA [$2E],y               
CODE_23B9CD:        CMP #$37                  
CODE_23B9CF:        BEQ CODE_23B9D9           
CODE_23B9D1:        CMP #$AB                  
CODE_23B9D3:        BEQ CODE_23B9D9           
CODE_23B9D5:        JSL CODE_2A892C           
CODE_23B9D9:        JSL CODE_23BEBB           
CODE_23B9DD:        DEC $03                   
CODE_23B9DF:        LDA $03                   
CODE_23B9E1:        CMP #$FF                  
CODE_23B9E3:        BNE CODE_23B993           
CODE_23B9E5:        BRA CODE_23BA0F           

CODE_23B9E7:        REP #$21                  
CODE_23B9E9:        LDA $2E                   
CODE_23B9EB:        ADC #$2000                
CODE_23B9EE:        STA $D8                   
CODE_23B9F0:        SEP #$20                  
CODE_23B9F2:        LDA $30                   
CODE_23B9F4:        STA $DA                   
CODE_23B9F6:        LDA [$D8],y               
CODE_23B9F8:        BNE CODE_23BA03           
CODE_23B9FA:        LDA.w DATA_21A6DA,x               
CODE_23B9FD:        STA [$2E],y               
CODE_23B9FF:        JSL CODE_2AB73A           
CODE_23BA03:        JSL CODE_23BEBB           
CODE_23BA07:        DEC $03                   
CODE_23BA09:        LDA $03                   
CODE_23BA0B:        CMP #$FF                  
CODE_23BA0D:        BNE CODE_23B9E7           
CODE_23BA0F:        LDA $00                   
CODE_23BA11:        STA $2E                   
CODE_23BA13:        LDA $01                   
CODE_23BA15:        STA $2F                   
CODE_23BA17:        LDA $0700                 
CODE_23BA1A:        CLC                       
CODE_23BA1B:        ADC #$10                  
CODE_23BA1D:        STA $0700                 
CODE_23BA20:        TAY                       
CODE_23BA21:        LDA $2F                   
CODE_23BA23:        ADC #$00                  
CODE_23BA25:        STA $2F                   
CODE_23BA27:        STA $01                   
CODE_23BA29:        LDA $02                   
CODE_23BA2B:        STA $03                   
CODE_23BA2D:        DEC $04                   
CODE_23BA2F:        BPL CODE_23B9E7           
CODE_23BA31:        RTL                       

CODE_23BA32:        LDY #$00                  
CODE_23BA34:        LDA [$2B],y               
CODE_23BA36:        STA $02                   
CODE_23BA38:        LDA $2B                   
CODE_23BA3A:        CLC                       
CODE_23BA3B:        ADC #$01                  
CODE_23BA3D:        STA $2B                   
CODE_23BA3F:        LDA $2C                   
CODE_23BA41:        ADC #$00                  
CODE_23BA43:        STA $2C                   
CODE_23BA45:        LDA $2E                   
CODE_23BA47:        STA $00                   
CODE_23BA49:        LDA $2F                   
CODE_23BA4B:        STA $01                   
CODE_23BA4D:        LDA $0706                 
CODE_23BA50:        SEC                       
CODE_23BA51:        SBC #$A0                  
CODE_23BA53:        LSR A                     
CODE_23BA54:        LSR A                     
CODE_23BA55:        LSR A                     
CODE_23BA56:        LSR A                     
CODE_23BA57:        TAX                       
CODE_23BA58:        LDA $0706                 
CODE_23BA5B:        AND #$0F                  
CODE_23BA5D:        STA $04                   
CODE_23BA5F:        LDA $02                   
CODE_23BA61:        STA $03                   
CODE_23BA63:        LDY $0700                 
CODE_23BA66:        LDA $04                   
CODE_23BA68:        BEQ CODE_23BAD0           
CODE_23BA6A:        REP #$21                  
CODE_23BA6C:        LDA $2E                   
CODE_23BA6E:        ADC #$2000                
CODE_23BA71:        STA $D8                   
CODE_23BA73:        LDA $2E                   
CODE_23BA75:        SEC                       
CODE_23BA76:        SBC #$0010                
CODE_23BA79:        STA $DB                   
CODE_23BA7B:        SEP #$20                  
CODE_23BA7D:        LDA $30                   
CODE_23BA7F:        STA $DA                   
CODE_23BA81:        STA $DD                   
CODE_23BA83:        LDA [$DB],y               
CODE_23BA85:        CMP #$26                  
CODE_23BA87:        BEQ CODE_23BA97           
CODE_23BA89:        LDA [$D8],y               
CODE_23BA8B:        BEQ CODE_23BA97           
CODE_23BA8D:        LDA [$2E],y               
CODE_23BA8F:        CMP #$02                  
CODE_23BA91:        BEQ CODE_23BAA0           
CODE_23BA93:        CMP #$04                  
CODE_23BA95:        BEQ CODE_23BAA0           
CODE_23BA97:        LDA.w DATA_21A6E0,x               
CODE_23BA9A:        STA [$2E],y               
CODE_23BA9C:        JSL CODE_2AB73A           
CODE_23BAA0:        JSL CODE_23BEBB           
CODE_23BAA4:        DEC $03                   
CODE_23BAA6:        LDA $03                   
CODE_23BAA8:        CMP #$FF                  
CODE_23BAAA:        BNE CODE_23BA6A           
CODE_23BAAC:        LDA $00                   
CODE_23BAAE:        STA $2E                   
CODE_23BAB0:        LDA $01                   
CODE_23BAB2:        STA $2F                   
CODE_23BAB4:        LDA $0700                 
CODE_23BAB7:        CLC                       
CODE_23BAB8:        ADC #$10                  
CODE_23BABA:        STA $0700                 
CODE_23BABD:        LDA $2F                   
CODE_23BABF:        ADC #$00                  
CODE_23BAC1:        STA $2F                   
CODE_23BAC3:        STA $01                   
CODE_23BAC5:        DEC $04                   
CODE_23BAC7:        BNE CODE_23BA5F           
CODE_23BAC9:        LDA $02                   
CODE_23BACB:        STA $03                   
CODE_23BACD:        LDY $0700                 
CODE_23BAD0:        PHY                       
CODE_23BAD1:        REP #$20                  
CODE_23BAD3:        LDA $2E                   
CODE_23BAD5:        STA $D8                   
CODE_23BAD7:        SEP #$20                  
CODE_23BAD9:        LDA.w DATA_21A6E3,x               
CODE_23BADC:        STA [$2E],y               
CODE_23BADE:        JSL CODE_2AB73A           
CODE_23BAE2:        JSL CODE_2A886F           
CODE_23BAE6:        JSL CODE_23BEBB           
CODE_23BAEA:        DEC $03                   
CODE_23BAEC:        LDA $03                   
CODE_23BAEE:        CMP #$FF                  
CODE_23BAF0:        BNE CODE_23BAD9           
CODE_23BAF2:        PLY                       
CODE_23BAF3:        LDA [$D8],y               
CODE_23BAF5:        CMP #$F4                  
CODE_23BAF7:        BEQ CODE_23BAFD           
CODE_23BAF9:        CMP #$A6                  
CODE_23BAFB:        BNE CODE_23BB31           
CODE_23BAFD:        REP #$21                  
CODE_23BAFF:        LDA $D8                   
CODE_23BB01:        ADC #$000F                
CODE_23BB04:        STA $D8                   
CODE_23BB06:        SEP #$20                  
CODE_23BB08:        LDA [$D8],y               
CODE_23BB0A:        CMP #$F8                  
CODE_23BB0C:        BEQ CODE_23BB16           
CODE_23BB0E:        CMP #$AA                  
CODE_23BB10:        BEQ CODE_23BB16           
CODE_23BB12:        CMP #$BF                  
CODE_23BB14:        BNE CODE_23BB31           
CODE_23BB16:        REP #$20                  
CODE_23BB18:        LDA $D8                   
CODE_23BB1A:        SEC                       
CODE_23BB1B:        SBC #$0010                
CODE_23BB1E:        STA $D8                   
CODE_23BB20:        SEP #$20                  
CODE_23BB22:        LDA #$06                  
CODE_23BB24:        STA [$D8],y               
CODE_23BB26:        LDA $D9                   
CODE_23BB28:        CLC                       
CODE_23BB29:        ADC #$20                  
CODE_23BB2B:        STA $D9                   
CODE_23BB2D:        LDA #$01                  
CODE_23BB2F:        STA [$D8],y               
CODE_23BB31:        RTL                       

CODE_23BB32:        LDY #$00                  
CODE_23BB34:        LDA [$2B],y               
CODE_23BB36:        STA $02                   
CODE_23BB38:        LDA $2B                   
CODE_23BB3A:        CLC                       
CODE_23BB3B:        ADC #$01                  
CODE_23BB3D:        STA $2B                   
CODE_23BB3F:        LDA $2C                   
CODE_23BB41:        ADC #$00                  
CODE_23BB43:        STA $2C                   
CODE_23BB45:        LDA $2E                   
CODE_23BB47:        STA $00                   
CODE_23BB49:        LDA $2F                   
CODE_23BB4B:        STA $01                   
CODE_23BB4D:        LDA $0706                 
CODE_23BB50:        PHA                       
CODE_23BB51:        SEC                       
CODE_23BB52:        SBC #$10                  
CODE_23BB54:        LSR A                     
CODE_23BB55:        LSR A                     
CODE_23BB56:        LSR A                     
CODE_23BB57:        LSR A                     
CODE_23BB58:        TAX                       
CODE_23BB59:        PLA                       
CODE_23BB5A:        AND #$0F                  
CODE_23BB5C:        STA $03                   
CODE_23BB5E:        LDY $0700                 
CODE_23BB61:        LDA $02                   
CODE_23BB63:        STA $04                   
CODE_23BB65:        LDA $03                   
CODE_23BB67:        BEQ CODE_23BB83           
CODE_23BB69:        LDA.w DATA_21A6E6,x               
CODE_23BB6C:        STA [$2E],y               
CODE_23BB6E:        JSL CODE_23BEBB           
CODE_23BB72:        DEC $04                   
CODE_23BB74:        LDA $04                   
CODE_23BB76:        CMP #$FF                  
CODE_23BB78:        BNE CODE_23BB69           
CODE_23BB7A:        BRA CODE_23BB90           

CODE_23BB7C:        LDA $02                   
CODE_23BB7E:        STA $04                   
CODE_23BB80:        LDY $0700                 
CODE_23BB83:        LDA.w DATA_21A6E9,x               
CODE_23BB86:        STA [$2E],y               
CODE_23BB88:        JSL CODE_23BEBB           
CODE_23BB8C:        DEC $04                   
CODE_23BB8E:        BPL CODE_23BB83           
CODE_23BB90:        LDA $00                   
CODE_23BB92:        STA $2E                   
CODE_23BB94:        LDA $01                   
CODE_23BB96:        STA $2F                   
CODE_23BB98:        LDA $0700                 
CODE_23BB9B:        CLC                       
CODE_23BB9C:        ADC #$10                  
CODE_23BB9E:        STA $0700                 
CODE_23BBA1:        LDA $2F                   
CODE_23BBA3:        ADC #$00                  
CODE_23BBA5:        STA $2F                   
CODE_23BBA7:        STA $01                   
CODE_23BBA9:        DEC $03                   
CODE_23BBAB:        BPL CODE_23BB7C           
CODE_23BBAD:        RTL                       

CODE_23BBAE:        RTL                       

CODE_23BBAF:        LDA $0706                 
CODE_23BBB2:        SEC                       
CODE_23BBB3:        SBC #$0D                  
CODE_23BBB5:        TAY                       
CODE_23BBB6:        LDX $0700                 
CODE_23BBB9:        LDA $0E                   
CODE_23BBBB:        AND #$10                  
CODE_23BBBD:        BNE CODE_23BBC3           
CODE_23BBBF:        CPX #$C0                  
CODE_23BBC1:        BCC CODE_23BBCB           
CODE_23BBC3:        TXA                       
CODE_23BBC4:        SEC                       
CODE_23BBC5:        SBC #$C0                  
CODE_23BBC7:        TAX                       
CODE_23BBC8:        JMP CODE_23BBD6           

CODE_23BBCB:        LDA.w DATA_21A6EC,y               
CODE_23BBCE:        JSL CODE_209844           
CODE_23BBD2:        CPX #$00                  
CODE_23BBD4:        BNE CODE_23BBCB           
CODE_23BBD6:        LDA.w DATA_21A6EC,y               
CODE_23BBD9:        JSL CODE_2098A8           
CODE_23BBDD:        INX                       
CODE_23BBDE:        CPX #$F0                  
CODE_23BBE0:        BNE CODE_23BBD6           
CODE_23BBE2:        RTL                       

CODE_23BBE3:        LDA $2E                   
CODE_23BBE5:        STA $00                   
CODE_23BBE7:        LDA $2F                   
CODE_23BBE9:        STA $01                   
CODE_23BBEB:        LDA $0706                 
CODE_23BBEE:        AND #$0F                  
CODE_23BBF0:        STA $02                   
CODE_23BBF2:        LDA $0F                   
CODE_23BBF4:        LSR A                     
CODE_23BBF5:        LSR A                     
CODE_23BBF6:        LSR A                     
CODE_23BBF7:        LSR A                     
CODE_23BBF8:        STA $03                   
CODE_23BBFA:        LDY $0700                 
CODE_23BBFD:        LDA #$47                  
CODE_23BBFF:        STA [$2E],y               
CODE_23BC01:        TYA                       
CODE_23BC02:        CLC                       
CODE_23BC03:        ADC #$10                  
CODE_23BC05:        TAY                       
CODE_23BC06:        BCC CODE_23BC0E           
CODE_23BC08:        LDA $2F                   
CODE_23BC0A:        ADC #$00                  
CODE_23BC0C:        STA $2F                   
CODE_23BC0E:        LDA $04                   
CODE_23BC10:        CMP $2F                   
CODE_23BC12:        BNE CODE_23BBFD           
CODE_23BC14:        CPY #$B0                  
CODE_23BC16:        BCC CODE_23BBFD           
CODE_23BC18:        LDA $00                   
CODE_23BC1A:        STA $2E                   
CODE_23BC1C:        LDA $01                   
CODE_23BC1E:        STA $2F                   
CODE_23BC20:        LDY $0700                 
CODE_23BC23:        INY                       
CODE_23BC24:        TYA                       
CODE_23BC25:        AND #$0F                  
CODE_23BC27:        BNE CODE_23BC51           
CODE_23BC29:        LDA $0700                 
CODE_23BC2C:        AND #$F0                  
CODE_23BC2E:        TAY                       
CODE_23BC2F:        INC $03                   
CODE_23BC31:        LDA $03                   
CODE_23BC33:        ASL A                     
CODE_23BC34:        TAX                       
CODE_23BC35:        LDA.w DATA_218200,x               
CODE_23BC38:        STA $2E                   
CODE_23BC3A:        STA $00                   
CODE_23BC3C:        LDA.w DATA_218200+1,x               
CODE_23BC3F:        STA $2F                   
CODE_23BC41:        STA $01                   
CODE_23BC43:        STA $04                   
CODE_23BC45:        INC $04                   
CODE_23BC47:        LDA $0E                   
CODE_23BC49:        AND #$10                  
CODE_23BC4B:        BEQ CODE_23BC51           
CODE_23BC4D:        INC $2F                   
CODE_23BC4F:        INC $01                   
CODE_23BC51:        STY $0700                 
CODE_23BC54:        DEC $02                   
CODE_23BC56:        BPL CODE_23BBFA           
CODE_23BC58:        RTS                       

CODE_23BC59:        LDA $0706                 
CODE_23BC5C:        AND #$0F                  
CODE_23BC5E:        STA $02                   
CODE_23BC60:        LDA $30                   
CODE_23BC62:        STA $DA                   
CODE_23BC64:        LDY $0700                 
CODE_23BC67:        LDA #$81                  
CODE_23BC69:        STA [$2E],y               
CODE_23BC6B:        JSL CODE_2AB73A           
CODE_23BC6F:        JSR CODE_23BC93           
CODE_23BC72:        BRA CODE_23BC7F           

CODE_23BC74:        LDA #$82                  
CODE_23BC76:        STA [$2E],y               
CODE_23BC78:        JSL CODE_2AB73A           
CODE_23BC7C:        JSR CODE_23BC93           
CODE_23BC7F:        JSL CODE_23BEBB           
CODE_23BC83:        DEC $02                   
CODE_23BC85:        BNE CODE_23BC74           
CODE_23BC87:        LDA #$83                  
CODE_23BC89:        STA [$2E],y               
CODE_23BC8B:        JSL CODE_2AB73A           
CODE_23BC8F:        JSR CODE_23BC93           
CODE_23BC92:        RTL                       

CODE_23BC93:        REP #$20                  
CODE_23BC95:        LDA $2E                   
CODE_23BC97:        CLC                       
CODE_23BC98:        ADC #$0010                
CODE_23BC9B:        STA $D8                   
CODE_23BC9D:        SEP #$20                  
CODE_23BC9F:        LDA [$D8],y               
CODE_23BCA1:        CMP #$9A                  
CODE_23BCA3:        BNE CODE_23BCB4           
CODE_23BCA5:        LDA #$0D                  
CODE_23BCA7:        STA [$D8],y               
CODE_23BCA9:        LDA $D9                   
CODE_23BCAB:        CLC                       
CODE_23BCAC:        ADC #$20                  
CODE_23BCAE:        STA $D9                   
CODE_23BCB0:        LDA #$01                  
CODE_23BCB2:        STA [$D8],y               
CODE_23BCB4:        RTS                       

CODE_23BCB5:        LDA $2E                   
CODE_23BCB7:        STA $00                   
CODE_23BCB9:        LDA $2F                   
CODE_23BCBB:        STA $01                   
CODE_23BCBD:        LDA $0706                 
CODE_23BCC0:        AND #$0F                  
CODE_23BCC2:        STA $02                   
CODE_23BCC4:        LDY $0700                 
CODE_23BCC7:        LDX #$00                  
CODE_23BCC9:        LDA $02                   
CODE_23BCCB:        STA $03                   
CODE_23BCCD:        LDA.w DATA_21A6EF,x               
CODE_23BCD0:        STA [$2E],y               
CODE_23BCD2:        BRA CODE_23BCD9           

CODE_23BCD4:        LDA.w DATA_21A6F1,x               
CODE_23BCD7:        STA [$2E],y               
CODE_23BCD9:        JSL CODE_23BEBB           
CODE_23BCDD:        DEC $03                   
CODE_23BCDF:        BNE CODE_23BCD4           
CODE_23BCE1:        LDA.w DATA_21A6F3,x               
CODE_23BCE4:        STA [$2E],y               
CODE_23BCE6:        LDA $00                   
CODE_23BCE8:        STA $2E                   
CODE_23BCEA:        LDA $01                   
CODE_23BCEC:        STA $2F                   
CODE_23BCEE:        LDA $0700                 
CODE_23BCF1:        CLC                       
CODE_23BCF2:        ADC #$10                  
CODE_23BCF4:        STA $0700                 
CODE_23BCF7:        TAY                       
CODE_23BCF8:        LDA $2F                   
CODE_23BCFA:        ADC #$00                  
CODE_23BCFC:        STA $2F                   
CODE_23BCFE:        STA $01                   
CODE_23BD00:        INX                       
CODE_23BD01:        CPX #$02                  
CODE_23BD03:        BNE CODE_23BCC9           
CODE_23BD05:        RTL                       

CODE_23BD06:        LDA $0706                 
CODE_23BD09:        PHA                       
CODE_23BD0A:        SEC                       
CODE_23BD0B:        SBC #$10                  
CODE_23BD0D:        AND #$F0                  
CODE_23BD0F:        LSR A                     
CODE_23BD10:        LSR A                     
CODE_23BD11:        LSR A                     
CODE_23BD12:        LSR A                     
CODE_23BD13:        TAX                       
CODE_23BD14:        BNE CODE_23BD2F           
CODE_23BD16:        PLA                       
CODE_23BD17:        AND #$0F                  
CODE_23BD19:        STA $03                   
CODE_23BD1B:        LDY $0700                 
CODE_23BD1E:        LDA.w DATA_21A6F5,x               
CODE_23BD21:        STA [$2E],y               
CODE_23BD23:        JSL CODE_2AB73A           
CODE_23BD27:        JSL CODE_23BEBB           
CODE_23BD2B:        DEC $03                   
CODE_23BD2D:        BPL CODE_23BD1E           
CODE_23BD2F:        RTL                       

CODE_23BD30:        LDX $0706                 
CODE_23BD33:        LDY $0700                 
CODE_23BD36:        LDA.w DATA_21A6F7,x               
CODE_23BD39:        STA [$2E],y               
CODE_23BD3B:        RTL                       

CODE_23BD3C:        LDA $2E                   
CODE_23BD3E:        STA $00                   
CODE_23BD40:        LDA $2F                   
CODE_23BD42:        STA $01                   
CODE_23BD44:        LDA $0706                 
CODE_23BD47:        ASL A                     
CODE_23BD48:        ASL A                     
CODE_23BD49:        ASL A                     
CODE_23BD4A:        STA $04                   
CODE_23BD4C:        LDA $0700                 
CODE_23BD4F:        STA $05                   
CODE_23BD51:        STZ $06                   
CODE_23BD53:        LDA $04                   
CODE_23BD55:        ASL A                     
CODE_23BD56:        TAX                       
CODE_23BD57:        LDA.w DATA_21A817,x               
CODE_23BD5A:        STA $02                   
CODE_23BD5C:        LDA.w DATA_21A817+1,x               
CODE_23BD5F:        STA $03                   
CODE_23BD61:        LDY $05                   
CODE_23BD63:        REP #$21                  
CODE_23BD65:        LDA $2E                   
CODE_23BD67:        ADC #$2000                
CODE_23BD6A:        STA $D8                   
CODE_23BD6C:        SEP #$20                  
CODE_23BD6E:        LDA $30                   
CODE_23BD70:        STA $DA                   
CODE_23BD72:        LDA [$D8],y               
CODE_23BD74:        BEQ CODE_23BD84           
CODE_23BD76:        LDA [$2E],y               
CODE_23BD78:        CMP #$02                  
CODE_23BD7A:        BEQ CODE_23BDAD           
CODE_23BD7C:        CMP #$04                  
CODE_23BD7E:        BEQ CODE_23BDAD           
CODE_23BD80:        CMP #$06                  
CODE_23BD82:        BEQ CODE_23BDAD           
CODE_23BD84:        LDY $06                   
CODE_23BD86:        LDA ($02),y               
CODE_23BD88:        LDY $05                   
CODE_23BD8A:        REP #$21                  
CODE_23BD8C:        LDA $2E                   
CODE_23BD8E:        ADC #$2000                
CODE_23BD91:        STA $D8                   
CODE_23BD93:        SEP #$20                  
CODE_23BD95:        LDA [$D8],y               
CODE_23BD97:        BNE CODE_23BDA1           
CODE_23BD99:        LDY $06                   
CODE_23BD9B:        LDA ($02),y               
CODE_23BD9D:        LDY $05                   
CODE_23BD9F:        STA [$2E],y               
CODE_23BDA1:        CMP #$E3                  
CODE_23BDA3:        BNE CODE_23BDAD           
CODE_23BDA5:        PHX                       
CODE_23BDA6:        LDX #$02                  
CODE_23BDA8:        JSL CODE_2A89DC           
CODE_23BDAC:        PLX                       
CODE_23BDAD:        CMP #$99                  
CODE_23BDAF:        BNE CODE_23BDB9           
CODE_23BDB1:        PHX                       
CODE_23BDB2:        LDX #$02                  
CODE_23BDB4:        JSL CODE_2A8AE2           
CODE_23BDB8:        PLX                       
CODE_23BDB9:        CMP #$A8                  
CODE_23BDBB:        BEQ CODE_23BDC1           
CODE_23BDBD:        CMP #$F6                  
CODE_23BDBF:        BNE CODE_23BDC9           
CODE_23BDC1:        PHX                       
CODE_23BDC2:        LDX #$00                  
CODE_23BDC4:        JSL CODE_2A88E8           
CODE_23BDC8:        PLX                       
CODE_23BDC9:        CMP #$A1                  
CODE_23BDCB:        BNE CODE_23BDD5           
CODE_23BDCD:        PHX                       
CODE_23BDCE:        LDX #$00                  
CODE_23BDD0:        JSL CODE_2A8844           
CODE_23BDD4:        PLX                       
CODE_23BDD5:        CMP #$A0                  
CODE_23BDD7:        BNE CODE_23BDDD           
CODE_23BDD9:        JSL CODE_2A881E           
CODE_23BDDD:        CMP #$26                  
CODE_23BDDF:        BNE CODE_23BDE5           
CODE_23BDE1:        JSL CODE_2A892C           
CODE_23BDE5:        CMP #$A7                  
CODE_23BDE7:        BNE CODE_23BE14           
CODE_23BDE9:        LDA $30                   
CODE_23BDEB:        STA $DA                   
CODE_23BDED:        REP #$20                  
CODE_23BDEF:        LDA $2E                   
CODE_23BDF1:        CLC                       
CODE_23BDF2:        ADC #$000F                
CODE_23BDF5:        STA $D8                   
CODE_23BDF7:        SEP #$20                  
CODE_23BDF9:        LDA [$D8],y               
CODE_23BDFB:        CMP #$A7                  
CODE_23BDFD:        BEQ CODE_23BE03           
CODE_23BDFF:        CMP #$9A                  
CODE_23BE01:        BNE CODE_23BE14           
CODE_23BE03:        INC $D8                   
CODE_23BE05:        LDA #$02                  
CODE_23BE07:        STA [$D8],y               
CODE_23BE09:        LDA $D9                   
CODE_23BE0B:        CLC                       
CODE_23BE0C:        ADC #$20                  
CODE_23BE0E:        STA $D9                   
CODE_23BE10:        LDA #$01                  
CODE_23BE12:        STA [$D8],y               
CODE_23BE14:        TYA                       
CODE_23BE15:        CLC                       
CODE_23BE16:        ADC #$10                  
CODE_23BE18:        STA $05                   
CODE_23BE1A:        LDA $2F                   
CODE_23BE1C:        ADC #$00                  
CODE_23BE1E:        STA $2F                   
CODE_23BE20:        INC $06                   
CODE_23BE22:        LDA $06                   
CODE_23BE24:        CMP #$06                  
CODE_23BE26:        BEQ CODE_23BE2B           
CODE_23BE28:        JMP CODE_23BD61           

CODE_23BE2B:        LDA $00                   
CODE_23BE2D:        STA $2E                   
CODE_23BE2F:        LDA $01                   
CODE_23BE31:        STA $2F                   
CODE_23BE33:        LDY $0700                 
CODE_23BE36:        JSL CODE_23BEBB           
CODE_23BE3A:        STY $0700                 
CODE_23BE3D:        LDA $2E                   
CODE_23BE3F:        STA $00                   
CODE_23BE41:        LDA $2F                   
CODE_23BE43:        STA $01                   
CODE_23BE45:        INC $04                   
CODE_23BE47:        LDA $04                   
CODE_23BE49:        AND #$07                  
CODE_23BE4B:        BEQ CODE_23BE50           
CODE_23BE4D:        JMP CODE_23BD4C          
 
CODE_23BE50:        RTL                       

CODE_23BE51:        LDY $0700                 
CODE_23BE54:        LDA #$17                  
CODE_23BE56:        STA $00                   
CODE_23BE58:        LDA #$A9                  
CODE_23BE5A:        STA $01                   
CODE_23BE5C:        LDA ($00),y               
CODE_23BE5E:        CMP #$FF                  
CODE_23BE60:        BEQ CODE_23BE70           
CODE_23BE62:        STA [$2E],y               
CODE_23BE64:        INY                       
CODE_23BE65:        CPY #$00                  
CODE_23BE67:        BNE CODE_23BE6D           
CODE_23BE69:        INC $2F                   
CODE_23BE6B:        INC $01                   
CODE_23BE6D:        INX                       
CODE_23BE6E:        BRA CODE_23BE5C           

CODE_23BE70:        RTL                       

CODE_23BE71:        STX $0B                   
CODE_23BE73:        STY $0C                   
CODE_23BE75:        LDA $0E                   
CODE_23BE77:        AND #$10                  
CODE_23BE79:        LSR A                     
CODE_23BE7A:        LSR A                     
CODE_23BE7B:        LSR A                     
CODE_23BE7C:        LSR A                     
CODE_23BE7D:        STA $0D                   
CODE_23BE7F:        LDY $0F                   
CODE_23BE81:        LDA $0706                 
CODE_23BE84:        AND #$F0                  
CODE_23BE86:        BEQ CODE_23BE94           
CODE_23BE88:        LDA $0706                 
CODE_23BE8B:        AND #$0F                  
CODE_23BE8D:        SEC                       
CODE_23BE8E:        SBC $02                   
CODE_23BE90:        CLC                       
CODE_23BE91:        ADC $0F                   
CODE_23BE93:        TAY                       
CODE_23BE94:        TYA                       
CODE_23BE95:        AND #$F8                  
CODE_23BE97:        LSR A                     
CODE_23BE98:        LSR A                     
CODE_23BE99:        ORA $0D                   
CODE_23BE9B:        STA $0D                   
CODE_23BE9D:        LDA $0415                 
CODE_23BEA0:        BEQ CODE_23BEA9           
CODE_23BEA2:        LDA $0D                   
CODE_23BEA4:        CLC                       
CODE_23BEA5:        ADC #$40                  
CODE_23BEA7:        STA $0D                   
CODE_23BEA9:        LDA $0C                   
CODE_23BEAB:        AND #$07                  
CODE_23BEAD:        TAX                       
CODE_23BEAE:        LDY $0D                   
CODE_23BEB0:        LDA $1E04,y               
CODE_23BEB3:        AND.w DATA_21AAA8,x               
CODE_23BEB6:        LDX $0B                   
CODE_23BEB8:        LDY $0C                   
CODE_23BEBA:        RTS                       

CODE_23BEBB:        INY                       
CODE_23BEBC:        TYA                       
CODE_23BEBD:        AND #$0F                  
CODE_23BEBF:        BNE CODE_23BED3           
CODE_23BEC1:        REP #$20                  
CODE_23BEC3:        LDA $2E                   
CODE_23BEC5:        CLC                       
CODE_23BEC6:        ADC #$01B0                
CODE_23BEC9:        STA $2E                   
CODE_23BECB:        SEP #$20                  
CODE_23BECD:        LDA $0700                 
CODE_23BED0:        AND #$F0                  
CODE_23BED2:        TAY                       
CODE_23BED3:        RTL                       

CODE_23BED4:        LDA $0E                   
CODE_23BED6:        AND #$0F                  
CODE_23BED8:        TAY                       
CODE_23BED9:        LDA $0F                   
CODE_23BEDB:        STA $1F56,y               
CODE_23BEDE:        LDA $0706                 
CODE_23BEE1:        STA $1F66,y               
CODE_23BEE4:        RTL                       

DATA_23BEE5:        db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF

CODE_23BF00:        LDA $82
CODE_23BF02:        CMP #$B8
CODE_23BF04:        BCS CODE_23BF7D                   
CODE_23BF06:        LDA $1A45                 
CODE_23BF09:        BNE CODE_23BF65           
CODE_23BF0B:        STA $00                   
CODE_23BF0D:        LDA $BB                   
CODE_23BF0F:        BEQ CODE_23BF16           
CODE_23BF11:        LDA $056F                 
CODE_23BF14:        BEQ CODE_23BF1A           
CODE_23BF16:        LDA #$0A                  
CODE_23BF18:        STA $00                   
CODE_23BF1A:        LDA #$01                  
CODE_23BF1C:        STA $1F90                 
CODE_23BF1F:        LSR A                     
CODE_23BF20:        STA $1F99                 
CODE_23BF23:        LDA $05FC                 
CODE_23BF26:        BEQ CODE_23BF38           
CODE_23BF28:        LDA $82                   
CODE_23BF2A:        CMP #$80                  
CODE_23BF2C:        BCC CODE_23BF38           
CODE_23BF2E:        LDA #$00                  
CODE_23BF30:        XBA                       
CODE_23BF31:        LDA #$93                  
CODE_23BF33:        STA $1F99                 
CODE_23BF36:        BNE CODE_23BF53           
CODE_23BF38:        STZ $D9                   
CODE_23BF3A:        LDA $00                   
CODE_23BF3C:        STA $D8                   
CODE_23BF3E:        BPL CODE_23BF42           
CODE_23BF40:        DEC $D9                   
CODE_23BF42:        LDA $55                   
CODE_23BF44:        XBA                       
CODE_23BF45:        LDA $70                   
CODE_23BF47:        REP #$20                  
CODE_23BF49:        CLC                       
CODE_23BF4A:        ADC $D8                   
CODE_23BF4C:        AND #$FFF0                
CODE_23BF4F:        CLC                       
CODE_23BF50:        ADC #$0002                
CODE_23BF53:        SEP #$20                  
CODE_23BF55:        STA $1F93                 
CODE_23BF58:        XBA                       
CODE_23BF59:        STA $058E                 
CODE_23BF5C:        LDA $5E                   
CODE_23BF5E:        STA $1F96                 
CODE_23BF61:        LDA $43                   
CODE_23BF63:        STA $EF                   
CODE_23BF65:        LDA $9D                   
CODE_23BF67:        BMI CODE_23BF7D           
CODE_23BF69:        LDA #$00                  
CODE_23BF6B:        STA $9D                   
CODE_23BF6D:        LDY $A6                   
CODE_23BF6F:        BEQ CODE_23BF73           
CODE_23BF71:        STA $8B                   
CODE_23BF73:        LDY #$02                  
CODE_23BF75:        LDA $1F7C,y               
CODE_23BF78:        BEQ CODE_23BF7E           
CODE_23BF7A:        DEY                       
CODE_23BF7B:        BPL CODE_23BF75           
CODE_23BF7D:        RTL                       

CODE_23BF7E:        LDA $0783,y               
CODE_23BF81:        ORA #$10                  
CODE_23BF83:        STA $1F7C,y               
CODE_23BF86:        LDA $70                   
CODE_23BF88:        ADC.w DATA_21E9FB,y               
CODE_23BF8B:        STA $1F84,y               
CODE_23BF8E:        LDA $55                   
CODE_23BF90:        ADC #$00                  
CODE_23BF92:        STA $1F80,y               
CODE_23BF95:        LDA $5E                   
CODE_23BF97:        ADC.w DATA_21E9FE,y               
CODE_23BF9A:        STA $1F8C,y               
CODE_23BF9D:        LDA $43                   
CODE_23BF9F:        ADC #$00                  
CODE_23BFA1:        STA $1F88,y               
CODE_23BFA4:        JMP CODE_23BF7A           

CODE_23BFA7:        LDY $070A                 
CODE_23BFAA:        LDA.w DATA_21E945,y               
CODE_23BFAD:        STA $0560                 
CODE_23BFB0:        JSL CODE_23DF67           
CODE_23BFB4:        JSR CODE_23C0CD           
CODE_23BFB7:        JSR CODE_23C1E7           
CODE_23BFBA:        LDA $070A                 
CODE_23BFBD:        CMP #$07                  
CODE_23BFBF:        BEQ CODE_23BFCD           
CODE_23BFC1:        LDA $05F3                 
CODE_23BFC4:        BEQ CODE_23BFD2           
CODE_23BFC6:        LDA $0350                 
CODE_23BFC9:        CMP #$0B                  
CODE_23BFCB:        BNE CODE_23BFD2           
CODE_23BFCD:        STZ $0428                 
CODE_23BFD0:        BRA CODE_23BFF7           

CODE_23BFD2:        LDA $0428                 
CODE_23BFD5:        BEQ CODE_23BFF7           
CODE_23BFD7:        LDA $1B41                 
CODE_23BFDA:        CMP #$D5                  
CODE_23BFDC:        BEQ CODE_23BFF7           
CODE_23BFDE:        CMP #$09                  
CODE_23BFE0:        BEQ CODE_23BFF7           
CODE_23BFE2:        DEC $0428                 
CODE_23BFE5:        LDA #$E0                  
CODE_23BFE7:        STA $0553                 
CODE_23BFEA:        STZ $02C7                 
CODE_23BFED:        LDA #$03                  
CODE_23BFEF:        STA $02C6                 
CODE_23BFF2:        LDA #$0D                  
CODE_23BFF4:        STA $1202                 
CODE_23BFF7:        LDA $055C                 
CODE_23BFFA:        AND #$F0                  
CODE_23BFFC:        SEC                       
CODE_23BFFD:        SBC #$90                  
CODE_23BFFF:        STA $055C                 
CODE_23C002:        JSR CODE_23C261           
CODE_23C005:        LDA $0552                 
CODE_23C008:        BEQ CODE_23C022           
CODE_23C00A:        LDA $7FC586               
CODE_23C00E:        BEQ CODE_23C022           
CODE_23C010:        LDA $7FC586               
CODE_23C014:        DEC A                     
CODE_23C015:        STA $7FC586               
CODE_23C019:        LDA #$02                  
CODE_23C01B:        ORA $BF                   
CODE_23C01D:        STA $0556                 
CODE_23C020:        BRA CODE_23C024           

CODE_23C022:        LDA $BF                   
CODE_23C024:        ORA $0571                 
CODE_23C027:        ORA $0554                 
CODE_23C02A:        ORA $0555                 
CODE_23C02D:        ORA $0551                 
CODE_23C030:        STA $009C                 
CODE_23C033:        BNE CODE_23C038           
CODE_23C035:        INC $0565                 
CODE_23C038:        LDA $0564                 
CODE_23C03B:        CMP #$01                  
CODE_23C03D:        BNE CODE_23C054           
CODE_23C03F:        LDA $069C                 
CODE_23C042:        CLC                       
CODE_23C043:        ADC #$05                  
CODE_23C045:        STA $069C                 
CODE_23C048:        INC $0422                 
CODE_23C04B:        LDA $7E3966               
CODE_23C04F:        INC A                     
CODE_23C050:        STA $7E3966               
CODE_23C054:        LDA #$00                  
CODE_23C056:        STA $0585                 
CODE_23C059:        LDX #$07                  
CODE_23C05B:        LDA $0510,x               
CODE_23C05E:        BEQ CODE_23C063           
CODE_23C060:        DEC $0510,x               
CODE_23C063:        DEX                       
CODE_23C064:        BPL CODE_23C05B           
CODE_23C066:        LDA $0567                 
CODE_23C069:        BEQ CODE_23C089           
CODE_23C06B:        CMP #$01                  
CODE_23C06D:        BNE CODE_23C080           
CODE_23C06F:        LDY #$0D                  
CODE_23C071:        LDA $0553                 
CODE_23C074:        CMP #$20                  
CODE_23C076:        BCS CODE_23C07B                   
CODE_23C078:        LDY $1062                 
CODE_23C07B:        STY $1202                 
CODE_23C07E:        BNE CODE_23C086           
CODE_23C080:        LDA $15                   
CODE_23C082:        AND #$03                  
CODE_23C084:        BNE CODE_23C089           
CODE_23C086:        DEC $0567                 
CODE_23C089:        RTL                       

CODE_23C08A:        JSL CODE_20E237           
CODE_23C08E:        RTS                       

CODE_23C08F:        STZ $058C                 
CODE_23C092:        JSL CODE_20E856           
CODE_23C096:        LDA $0280                 
CODE_23C099:        BEQ CODE_23C09F           
CODE_23C09B:        STZ $17                   
CODE_23C09D:        STZ $18                   
CODE_23C09F:        LDA $0414                 
CODE_23C0A2:        CMP #$03                  
CODE_23C0A4:        BEQ CODE_23C0C6           
CODE_23C0A6:        LDA $07BE                 
CODE_23C0A9:        CMP #$03                  
CODE_23C0AB:        BCS CODE_23C0C6                   
CODE_23C0AD:        LDA $0556                 
CODE_23C0B0:        ORA $BF                   
CODE_23C0B2:        ORA $0554                 
CODE_23C0B5:        ORA $0555                 
CODE_23C0B8:        ORA $0551                 
CODE_23C0BB:        ORA $0559                 
CODE_23C0BE:        ORA $0571                 
CODE_23C0C1:        ORA $055A                 
CODE_23C0C4:        BEQ CODE_23C0CB           
CODE_23C0C6:        INC $058C                 
CODE_23C0C9:        PLA                       
CODE_23C0CA:        PLA                       
CODE_23C0CB:        RTS                       

CODE_23C0CC:        RTS                       

CODE_23C0CD:        LDA $B9                   
CODE_23C0CF:        BEQ CODE_23C0D2           
CODE_23C0D1:        RTS                       

CODE_23C0D2:        STA $0561                 
CODE_23C0D5:        LDA #$50                  
CODE_23C0D7:        STA $C4                   
CODE_23C0D9:        STZ $C5                   
CODE_23C0DB:        LDX $0726                 
CODE_23C0DE:        LDA $0747,x               
CODE_23C0E1:        STA $BB                   
CODE_23C0E3:        JSR CODE_23C467           
CODE_23C0E6:        LDA #$40                  
CODE_23C0E8:        STA $BD                   
CODE_23C0EA:        LDY $0426                 
CODE_23C0ED:        LDA.w DATA_21EA01,y               
CODE_23C0F0:        STA $5E                   
CODE_23C0F2:        STA $B9                   
CODE_23C0F4:        JSR CODE_23C14C           
CODE_23C0F7:        LDA $0429                 
CODE_23C0FA:        CMP #$08                  
CODE_23C0FC:        BNE CODE_23C108           
CODE_23C0FE:        LDA #$7F                  
CODE_23C100:        STA $0413                 
CODE_23C103:        LDA #$FF                  
CODE_23C105:        STA $056E                 
CODE_23C108:        JSR CODE_23C1C9           
CODE_23C10B:        LDA $0425                 
CODE_23C10E:        BEQ CODE_23C130           
CODE_23C110:        LDY $55                   
CODE_23C112:        LDA.w DATA_21CEED,y               
CODE_23C115:        STA $0542                 
CODE_23C118:        LDA.w DATA_21CEFD,y               
CODE_23C11B:        STA $0543                 
CODE_23C11E:        LDA $70                   
CODE_23C120:        LDY $55                   
CODE_23C122:        JSL CODE_209FD4           
CODE_23C126:        STY $55                   
CODE_23C128:        STA $70                   
CODE_23C12A:        LDA #$01                  
CODE_23C12C:        STA $0562                 
CODE_23C12F:        RTS                       

CODE_23C130:        LDA $0216                 
CODE_23C133:        STA $0543                 
CODE_23C136:        LDA $13                   
CODE_23C138:        STA $0542                 
CODE_23C13B:        RTS                       

PNTR_23C13C:        dw CODE_23C173
                    dw CODE_23C167
                    dw CODE_23C174
                    dw CODE_23C17B
                    dw CODE_23C182
                    dw CODE_23C189
                    dw CODE_23C190
                    dw CODE_23C19F

CODE_23C14C:        PHB
CODE_23C14D:        PHK                       
CODE_23C14E:        PLB                       
CODE_23C14F:        LDA $0545                 
CODE_23C152:        ASL A                     
CODE_23C153:        TAY                       
CODE_23C154:        LDA PNTR_23C13C,y               
CODE_23C157:        STA $00                   
CODE_23C159:        LDA PNTR_23C13C+1,y               
CODE_23C15C:        STA $01                   
CODE_23C15E:        LDA #$00                  
CODE_23C160:        STA $0545                 
CODE_23C163:        PLB                       
CODE_23C164:        JMP ($0000)               

CODE_23C167:        LDY $BB                   
CODE_23C169:        LDA.w DATA_21AF64,y               
CODE_23C16C:        AND #$02                  
CODE_23C16E:        BNE CODE_23C173           
CODE_23C170:        INC $0545                 
CODE_23C173:        RTS                       

CODE_23C174:        LDA #$83                  
CODE_23C176:        LDY #$01                  
CODE_23C178:        JMP CODE_23C1BF           

CODE_23C17B:        LDA #$82                  
CODE_23C17D:        LDY #$02                  
CODE_23C17F:        JMP CODE_23C1BF           

CODE_23C182:        LDA #$80                  
CODE_23C184:        LDY #$03                  
CODE_23C186:        JMP CODE_23C1BF           

CODE_23C189:        LDA #$81                  
CODE_23C18B:        LDY #$04                  
CODE_23C18D:        JMP CODE_23C1BF           

CODE_23C190:        LDA #$01                  
CODE_23C192:        STA $055A                 
CODE_23C195:        LDA #$06                  
CODE_23C197:        STA $0427                 
CODE_23C19A:        LSR A                     
CODE_23C19B:        STA $0216                 
CODE_23C19E:        RTS                       

CODE_23C19F:        LDA #$04                  
CODE_23C1A1:        STA $055A                 
CODE_23C1A4:        LDA #$40                  
CODE_23C1A6:        STA $BD                   
CODE_23C1A8:        STA $A6                   
CODE_23C1AA:        LDA #$90                  
CODE_23C1AC:        STA $9D                   
CODE_23C1AE:        STA $5E                   
CODE_23C1B0:        LDA $0216                 
CODE_23C1B3:        CLC                       
CODE_23C1B4:        ADC #$80                  
CODE_23C1B6:        STA $70                   
CODE_23C1B8:        LDA #$00                  
CODE_23C1BA:        ADC #$00                  
CODE_23C1BC:        STA $55                   
CODE_23C1BE:        RTS                       

CODE_23C1BF:        STA $0571                 
CODE_23C1C2:        STY $0377                 
CODE_23C1C5:        JSL CODE_23C227           
CODE_23C1C9:        LDY #$01                  
CODE_23C1CB:        LDA $070A                 
CODE_23C1CE:        CMP #$03                  
CODE_23C1D0:        BEQ CODE_23C1E3           
CODE_23C1D2:        CMP #$0E                  
CODE_23C1D4:        BEQ CODE_23C1E3           
CODE_23C1D6:        CMP #$05                  
CODE_23C1D8:        BNE CODE_23C1E1           
CODE_23C1DA:        LDA $1E9E                 
CODE_23C1DD:        CMP #$02                  
CODE_23C1DF:        BEQ CODE_23C1E3           
CODE_23C1E1:        LDY #$00                  
CODE_23C1E3:        STY $0563                 
CODE_23C1E6:        RTS                       

CODE_23C1E7:        LDA $055F                 
CODE_23C1EA:        BEQ CODE_23C226           
CODE_23C1EC:        LDA #$00                  
CODE_23C1EE:        STA $055F                 
CODE_23C1F1:        STA $0580                 
CODE_23C1F4:        STA $05FC                 
CODE_23C1F7:        STA $0569                 
CODE_23C1FA:        STA $0561                 
CODE_23C1FD:        JSR CODE_23C467           
CODE_23C200:        JSR CODE_23C10B           
CODE_23C203:        JSR CODE_23C1C9           
CODE_23C206:        LDA $055A                 
CODE_23C209:        BEQ CODE_23C215           
CODE_23C20B:        LDA #$00                  
CODE_23C20D:        STA $8B                   
CODE_23C20F:        STA $0545                 
CODE_23C212:        JSR CODE_23C19F           
CODE_23C215:        LDA $0545                 
CODE_23C218:        CMP #$06                  
CODE_23C21A:        BNE CODE_23C21F           
CODE_23C21C:        JSR CODE_23C190           
CODE_23C21F:        JSL CODE_23C227           
CODE_23C223:        PLA                       
CODE_23C224:        PLA                       
CODE_23C225:        RTL                       

CODE_23C226:        RTS                       

CODE_23C227:        LDA $0571                 
CODE_23C22A:        BEQ CODE_23C260           
CODE_23C22C:        LDA #$04                  
CODE_23C22E:        STA $1200                 
CODE_23C231:        LDA $5E                   
CODE_23C233:        STA $52                   
CODE_23C235:        LDA $70                   
CODE_23C237:        AND #$F0                  
CODE_23C239:        STA $53                   
CODE_23C23B:        DEC $53                   
CODE_23C23D:        LDA $0425                 
CODE_23C240:        BNE CODE_23C24D           
CODE_23C242:        LDA $0216                 
CODE_23C245:        STA $0543                 
CODE_23C248:        LDA $13                   
CODE_23C24A:        STA $0542                 
CODE_23C24D:        LDA $0377                 
CODE_23C250:        BNE CODE_23C257           
CODE_23C252:        LDA #$02                  
CODE_23C254:        STA $0377                 
CODE_23C257:        AND #$0F                  
CODE_23C259:        TAY                       
CODE_23C25A:        LDA.w DATA_21EA05,y               
CODE_23C25D:        STA $0510                 
CODE_23C260:        RTL                       

CODE_23C261:        LDA $0578                 
CODE_23C264:        BEQ CODE_23C2C2           
CODE_23C266:        CMP #$0F                  
CODE_23C268:        BMI CODE_23C286           
CODE_23C26A:        CMP #$80                  
CODE_23C26C:        BNE CODE_23C276           
CODE_23C26E:        INC $0577                 
CODE_23C271:        STZ $057A                 
CODE_23C274:        BRA CODE_23C2BA           

CODE_23C276:        CMP #$40                  
CODE_23C278:        BEQ CODE_23C281           
CODE_23C27A:        LDA #$C0                  
CODE_23C27C:        STA $057A                 
CODE_23C27F:        BNE CODE_23C2BA           
CODE_23C281:        INC $0575                 
CODE_23C284:        BNE CODE_23C2BA           
CODE_23C286:        AND #$0F                  
CODE_23C288:        TAY                       
CODE_23C289:        LDA $BB                   
CODE_23C28B:        CMP #$02                  
CODE_23C28D:        BEQ CODE_23C293           
CODE_23C28F:        CMP #$03                  
CODE_23C291:        BNE CODE_23C2A2           
CODE_23C293:        LDA $05EE                 
CODE_23C296:        ORA $05EF                 
CODE_23C299:        ORA $05F0                 
CODE_23C29C:        BEQ CODE_23C29E           
CODE_23C29E:        LDA #$20                  
CODE_23C2A0:        BRA CODE_23C2A4           

CODE_23C2A2:        LDA #$00                  
CODE_23C2A4:        STA $7FC586               
CODE_23C2A8:        DEY                       
CODE_23C2A9:        STY $BB                   
CODE_23C2AB:        PHY                       
CODE_23C2AC:        PHX                       
CODE_23C2AD:        JSR CODE_23CC62           
CODE_23C2B0:        LDA $BB                   
CODE_23C2B2:        LDX $0726                 
CODE_23C2B5:        STA $0747,x               
CODE_23C2B8:        PLX                       
CODE_23C2B9:        PLY                       
CODE_23C2BA:        LDA #$00                  
CODE_23C2BC:        STA $0578                 
CODE_23C2BF:        JSR CODE_23C467           
CODE_23C2C2:        LDA $BF                   
CODE_23C2C4:        ORA $0556                 
CODE_23C2C7:        BNE CODE_23C33D           
CODE_23C2C9:        LDA $07BE                 
CODE_23C2CC:        CMP #$03                  
CODE_23C2CE:        BPL CODE_23C33D           
CODE_23C2D0:        LDA $0544                 
CODE_23C2D3:        BNE CODE_23C2F0           
CODE_23C2D5:        LDA $82                   
CODE_23C2D7:        AND #$F0                  
CODE_23C2D9:        CMP #$C0                  
CODE_23C2DB:        BNE CODE_23C2F0           
CODE_23C2DD:        LDA #$00                  
CODE_23C2DF:        STA $BB                   
CODE_23C2E1:        JSL CODE_27A546           
CODE_23C2E5:        LDA #$C0                  
CODE_23C2E7:        STA $0510                 
CODE_23C2EA:        LDA #$02                  
CODE_23C2EC:        STA $BF                   
CODE_23C2EE:        BNE CODE_23C33D           
CODE_23C2F0:        LDA $0160                 
CODE_23C2F3:        CMP #$80                  
CODE_23C2F5:        BEQ CODE_23C324           
CODE_23C2F7:        LDA $05F3                 
CODE_23C2FA:        AND #$7F                  
CODE_23C2FC:        BNE CODE_23C33D           
CODE_23C2FE:        LDA $05EE                 
CODE_23C301:        ORA $05EF                 
CODE_23C304:        ORA $05F0                 
CODE_23C307:        BNE CODE_23C324           
CODE_23C309:        JSL CODE_27A546           
CODE_23C30D:        LDA #$03                  
CODE_23C30F:        STA $BF                   
CODE_23C311:        LDA #$FF                  
CODE_23C313:        STA $52                   
CODE_23C315:        STA $53                   
CODE_23C317:        LDA #$01                  
CODE_23C319:        STA $0578                 
CODE_23C31C:        LDA #$50                  
CODE_23C31E:        STA $0510                 
CODE_23C321:        JMP CODE_23C33D           

CODE_23C324:        LDA $79                   
CODE_23C326:        CMP #$F8                  
CODE_23C328:        BCC CODE_23C33D           
CODE_23C32A:        LDA $0425                 
CODE_23C32D:        ORA $0559                 
CODE_23C330:        BNE CODE_23C33D           
CODE_23C332:        JSL CODE_27A546           
CODE_23C336:        LDA #$01                  
CODE_23C338:        STA $BF                   
CODE_23C33A:        JMP CODE_23C317           

CODE_23C33D:        JSR CODE_23C08F           
CODE_23C340:        LDA $700007               
CODE_23C344:        BEQ CODE_23C37D           
CODE_23C346:        LDA $F6                   
CODE_23C348:        ORA $F7                   
CODE_23C34A:        AND #$20                  
CODE_23C34C:        BEQ CODE_23C35B           
CODE_23C34E:        LDA #$E0                  
CODE_23C350:        STA $0553                 
CODE_23C353:        LDA #$03                  
CODE_23C355:        STA $02C6                 
CODE_23C358:        STZ $02C7                 
CODE_23C35B:        LDA $F8                   
CODE_23C35D:        ORA $F9                   
CODE_23C35F:        AND #$80                  
CODE_23C361:        BEQ CODE_23C36B           
CODE_23C363:        LDA $023D                 
CODE_23C366:        EOR #$01                  
CODE_23C368:        STA $023D                 
CODE_23C36B:        LDA $F8                   
CODE_23C36D:        ORA $F9                   
CODE_23C36F:        AND #$40                  
CODE_23C371:        BEQ CODE_23C37D           
CODE_23C373:        INC $BB                   
CODE_23C375:        LDA $BB                   
CODE_23C377:        CMP #$07                  
CODE_23C379:        BNE CODE_23C37D           
CODE_23C37B:        STZ $BB                   
CODE_23C37D:        LDA $1EBF                 
CODE_23C380:        CMP #$16                  
CODE_23C382:        BNE CODE_23C390           
CODE_23C384:        STZ $F2                   
CODE_23C386:        STZ $F6                   
CODE_23C388:        STZ $F3                   
CODE_23C38A:        STZ $F7                   
CODE_23C38C:        STZ $17                   
CODE_23C38E:        STZ $18                   
CODE_23C390:        JSR CODE_23C4FA           
CODE_23C393:        JSR CODE_23C3DE           
CODE_23C396:        JSL CODE_23CFCA           
CODE_23C39A:        JSL CODE_27A93C           
CODE_23C39E:        JSR CODE_23D364           
CODE_23C3A1:        JSR CODE_23D810           
CODE_23C3A4:        JSR CODE_23DAF9           
CODE_23C3A7:        JSR CODE_23C3BC           
CODE_23C3AA:        LDA $BC                   
CODE_23C3AC:        CMP #$2E                  
CODE_23C3AE:        BEQ CODE_23C3B3           
CODE_23C3B0:        JSR CODE_23CD71           
CODE_23C3B3:        JSR CODE_23C08A           
CODE_23C3B6:        LDA #$00                  
CODE_23C3B8:        STA $1020                 
CODE_23C3BB:        RTS                       

CODE_23C3BC:        LDA $1CF3                 
CODE_23C3BF:        BEQ CODE_23C3DA           
CODE_23C3C1:        DEC $1CF3                 
CODE_23C3C4:        AND #$03                  
CODE_23C3C6:        LDY $0216                 
CODE_23C3C9:        BPL CODE_23C3CD           
CODE_23C3CB:        ORA #$04                  
CODE_23C3CD:        TAY                       
CODE_23C3CE:        LDA.w DATA_21EA0A,y               
CODE_23C3D1:        PHA                       
CODE_23C3D2:        CLC                       
CODE_23C3D3:        ADC $0543                 
CODE_23C3D6:        STA $0543                 
CODE_23C3D9:        PLA                       
CODE_23C3DA:        STA $1CF2                 
CODE_23C3DD:        RTS                       

CODE_23C3DE:        LDY $056E                 
CODE_23C3E1:        BEQ CODE_23C40C           
CODE_23C3E3:        CPY #$FF                  
CODE_23C3E5:        BEQ CODE_23C3F7           
CODE_23C3E7:        LDA $15                   
CODE_23C3E9:        AND #$01                  
CODE_23C3EB:        BEQ CODE_23C3F1           
CODE_23C3ED:        DEY                       
CODE_23C3EE:        STY $056E                 
CODE_23C3F1:        TYA                       
CODE_23C3F2:        BNE CODE_23C3F7           
CODE_23C3F4:        STY $0413                 
CODE_23C3F7:        LDA $02D8                 
CODE_23C3FA:        BNE CODE_23C40B           
CODE_23C3FC:        DEC $02E0                 
CODE_23C3FF:        BPL CODE_23C40B           
CODE_23C401:        LDA #$06                  
CODE_23C403:        STA $02E0                 
CODE_23C406:        LDA #$41                  
CODE_23C408:        STA $1200                 
CODE_23C40B:        RTS                       

CODE_23C40C:        LDA $0413                 
CODE_23C40F:        CMP #$7F                  
CODE_23C411:        BNE CODE_23C420           
CODE_23C413:        JSR CODE_23C3F7           
CODE_23C416:        LDA $057B                 
CODE_23C419:        BEQ CODE_23C420           
CODE_23C41B:        LDY #$10                  
CODE_23C41D:        JMP CODE_23C442           

CODE_23C420:        LDA $0515                 
CODE_23C423:        BNE CODE_23C44B           
CODE_23C425:        SEC                       
CODE_23C426:        ROL $0413                 
CODE_23C429:        LDA $057B                 
CODE_23C42C:        BNE CODE_23C434           
CODE_23C42E:        ROR $0413                 
CODE_23C431:        LSR $0413                 
CODE_23C434:        LDY #$18                  
CODE_23C436:        LDA $0413                 
CODE_23C439:        BEQ CODE_23C448           
CODE_23C43B:        LDA $057B                 
CODE_23C43E:        BEQ CODE_23C442           
CODE_23C440:        LDY #$08                  
CODE_23C442:        STY $0515                 
CODE_23C445:        JMP CODE_23C44B           

CODE_23C448:        STA $056E                 
CODE_23C44B:        LDA #$00                  
CODE_23C44D:        STA $057B                 
CODE_23C450:        RTS                       

DATA_23C451:     dw $88A0
                    dw $88E0
                    dw $8920
                    dw $88A0
                    dw $88E0
                    dw $88C0
                    dw $8900
                    dw $88C0
                    dw $8940

CODE_23C463:        JSR CODE_23C467                 
CODE_23C466:        RTL                       

CODE_23C467:        LDY #$07                  
CODE_23C469:        LDA $0726                 
CODE_23C46C:        BEQ CODE_23C477           
CODE_23C46E:        LDA $BB                   
CODE_23C470:        CMP #$02                  
CODE_23C472:        BNE CODE_23C477           
CODE_23C474:        INY                       
CODE_23C475:        BRA CODE_23C48A           

CODE_23C477:        LDA $057A                 
CODE_23C47A:        BNE CODE_23C48A           
CODE_23C47C:        LDA $BB                   
CODE_23C47E:        TAY                       
CODE_23C47F:        CMP #$03                  
CODE_23C481:        BEQ CODE_23C487           
CODE_23C483:        CMP #$02                  
CODE_23C485:        BPL CODE_23C48A           
CODE_23C487:        LDY $0726                 
CODE_23C48A:        PHX                       
CODE_23C48B:        REP #$30                  
CODE_23C48D:        TYA                       
CODE_23C48E:        AND #$00FF                
CODE_23C491:        ASL A                     
CODE_23C492:        TAX                       
CODE_23C493:        LDA.l DATA_23C451,x             
CODE_23C497:        PHB                       
CODE_23C498:        TAX                       
CODE_23C499:        LDY #$14E0                
CODE_23C49C:        LDA #$001F                
CODE_23C49F:        MVN $3C00                 
CODE_23C4A2:        PLB                       
CODE_23C4A3:        LDX #$001E                
CODE_23C4A6:        LDA $14E0,x               
CODE_23C4A9:        STA $7FC500,x             
CODE_23C4AD:        DEX                       
CODE_23C4AE:        DEX                       
CODE_23C4AF:        BPL CODE_23C4A6           
CODE_23C4B1:        SEP #$30                  
CODE_23C4B3:        PLX                       
CODE_23C4B4:        LDA #$01                  
CODE_23C4B6:        STA $1500                 
CODE_23C4B9:        RTS                       

CODE_23C4BA:        LDY #$01                  
CODE_23C4BC:        STY $0E                   
CODE_23C4BE:        LDA $0584                 
CODE_23C4C1:        AND.w DATA_21EB1E,x               
CODE_23C4C4:        BNE CODE_23C4F8           
CODE_23C4C6:        LDA $00,x                 
CODE_23C4C8:        ASL A                     
CODE_23C4C9:        ROL A                     
CODE_23C4CA:        ROL A                     
CODE_23C4CB:        AND #$03                  
CODE_23C4CD:        TAY                       
CODE_23C4CE:        LDA $00,x                 
CODE_23C4D0:        CMP $1E96,y               
CODE_23C4D3:        BCS CODE_23C4F9                   
CODE_23C4D5:        CMP #$D7                  
CODE_23C4D7:        BNE CODE_23C4DD           
CODE_23C4D9:        LDY #$00                  
CODE_23C4DB:        BEQ CODE_23C4F6           
CODE_23C4DD:        TYA                       
CODE_23C4DE:        ORA $02                   
CODE_23C4E0:        TAY                       
CODE_23C4E1:        LDA.w DATA_21AD84,y               
CODE_23C4E4:        LDY #$00                  
CODE_23C4E6:        CMP $00,x                 
CODE_23C4E8:        BCS CODE_23C4F6                   
CODE_23C4EA:        INY                       
CODE_23C4EB:        LDA $00,x                 
CODE_23C4ED:        CMP #$E0                  
CODE_23C4EF:        BEQ CODE_23C4F5           
CODE_23C4F1:        CMP #$E1                  
CODE_23C4F3:        BNE CODE_23C4F6           
CODE_23C4F5:        INY                       
CODE_23C4F6:        STY $0E                   
CODE_23C4F8:        CLC                       
CODE_23C4F9:        RTS                       

CODE_23C4FA:        LDA $700007               
CODE_23C4FE:        BEQ CODE_23C538           
CODE_23C500:        LDA $023D                 
CODE_23C503:        BEQ CODE_23C538           
CODE_23C505:        STZ $8B                   
CODE_23C507:        STZ $9D                   
CODE_23C509:        LDX #$C0                  
CODE_23C50B:        LDA $F2                   
CODE_23C50D:        ORA $F3                   
CODE_23C50F:        AND #$03                  
CODE_23C511:        BEQ CODE_23C51B           
CODE_23C513:        AND #$02                  
CODE_23C515:        BNE CODE_23C519           
CODE_23C517:        LDX #$30                  
CODE_23C519:        STX $8B                   
CODE_23C51B:        LDX #$C0                  
CODE_23C51D:        LDA $F2                   
CODE_23C51F:        ORA $F3                   
CODE_23C521:        AND #$0C                  
CODE_23C523:        BEQ CODE_23C52D           
CODE_23C525:        AND #$08                  
CODE_23C527:        BNE CODE_23C52B           
CODE_23C529:        LDX #$30                  
CODE_23C52B:        STX $9D                   
CODE_23C52D:        JSL CODE_23DE53           
CODE_23C531:        JSL CODE_23DEA3           
CODE_23C535:        JMP CODE_23C08A           

CODE_23C538:        LDA $BD                   
CODE_23C53A:        STA $056C                 
CODE_23C53D:        LDA $0559                 
CODE_23C540:        BNE CODE_23C54A           
CODE_23C542:        LDA $1CF4                 
CODE_23C545:        BEQ CODE_23C552           
CODE_23C547:        DEC $1CF4                 
CODE_23C54A:        LDA #$00                  
CODE_23C54C:        STA $8B                   
CODE_23C54E:        STA $17                   
CODE_23C550:        STA $18                   
CODE_23C552:        LDA $0545                 
CODE_23C555:        BEQ CODE_23C55D           
CODE_23C557:        LDA $18                   
CODE_23C559:        AND #$BF                  
CODE_23C55B:        STA $18                   
CODE_23C55D:        LDY $BB                   
CODE_23C55F:        BEQ CODE_23C579           
CODE_23C561:        CPY #$04                  
CODE_23C563:        BEQ CODE_23C579           
CODE_23C565:        LDA $06A4                 
CODE_23C568:        ORA $0545                 
CODE_23C56B:        ORA $0577                 
CODE_23C56E:        BNE CODE_23C579           
CODE_23C570:        LDA $A6                   
CODE_23C572:        BEQ CODE_23C587           
CODE_23C574:        LDA $0575                 
CODE_23C577:        BEQ CODE_23C580           
CODE_23C579:        LDA #$00                  
CODE_23C57B:        STA $056F                 
CODE_23C57E:        BEQ CODE_23C5A1           
CODE_23C580:        LDA $056F                 
CODE_23C583:        BNE CODE_23C59E           
CODE_23C585:        BEQ CODE_23C5A1           
CODE_23C587:        LDA #$00                  
CODE_23C589:        STA $056F                 
CODE_23C58C:        LDA $0563                 
CODE_23C58F:        BEQ CODE_23C596           
CODE_23C591:        LDA $0569                 
CODE_23C594:        BNE CODE_23C5A1           
CODE_23C596:        LDA $17                   
CODE_23C598:        AND #$0F                  
CODE_23C59A:        CMP #$04                  
CODE_23C59C:        BNE CODE_23C5A1           
CODE_23C59E:        STY $056F                 
CODE_23C5A1:        LDY #$14                  
CODE_23C5A3:        LDA $BB                   
CODE_23C5A5:        BEQ CODE_23C5AE           
CODE_23C5A7:        LDA $056F                 
CODE_23C5AA:        BNE CODE_23C5AE           
CODE_23C5AC:        LDY #$0A                  
CODE_23C5AE:        STY $09                   
CODE_23C5B0:        LDA #$08                  
CODE_23C5B2:        STA $0A                   
CODE_23C5B4:        JSL CODE_23D2B6           
CODE_23C5B8:        STA $0602                 
CODE_23C5BB:        STA $00                   
CODE_23C5BD:        LDA $0603                 
CODE_23C5C0:        STA $01                   
CODE_23C5C2:        LDA $0588                 
CODE_23C5C5:        STA $0587                 
CODE_23C5C8:        BEQ CODE_23C5EA           
CODE_23C5CA:        LDA $15                   
CODE_23C5CC:        LSR A                     
CODE_23C5CD:        BCC CODE_23C5D2           
CODE_23C5CF:        DEC $0588                 
CODE_23C5D2:        LDY #$00                  
CODE_23C5D4:        LDA $00                   
CODE_23C5D6:        CMP #$41                  
CODE_23C5D8:        BEQ CODE_23C5E7           
CODE_23C5DA:        CMP #$80                  
CODE_23C5DC:        BEQ CODE_23C5E7           
CODE_23C5DE:        INY                       
CODE_23C5DF:        LDA $0588                 
CODE_23C5E2:        BNE CODE_23C5E7           
CODE_23C5E4:        STY $0588                 
CODE_23C5E7:        STY $0587                 
CODE_23C5EA:        LDA $00                   
CODE_23C5EC:        AND #$C0                  
CODE_23C5EE:        ASL A                     
CODE_23C5EF:        ROL A                     
CODE_23C5F0:        ROL A                     
CODE_23C5F1:        TAY                       
CODE_23C5F2:        LDA $00                   
CODE_23C5F4:        CMP $1E9A,y               
CODE_23C5F7:        BCC CODE_23C619           
CODE_23C5F9:        LDA $A6                   
CODE_23C5FB:        ORA $0575                 
CODE_23C5FE:        ORA $0571                 
CODE_23C601:        BNE CODE_23C619           
CODE_23C603:        STA $8B                   
CODE_23C605:        STA $18                   
CODE_23C607:        AND #$7F                  
CODE_23C609:        STA $18                   
CODE_23C60B:        LDA #$01                  
CODE_23C60D:        STA $0585                 
CODE_23C610:        CLC                       
CODE_23C611:        ADC $5E                   
CODE_23C613:        STA $5E                   
CODE_23C615:        BCC CODE_23C619           
CODE_23C617:        INC $43                   
CODE_23C619:        LDA $0560                 
CODE_23C61C:        ASL A                     
CODE_23C61D:        ASL A                     
CODE_23C61E:        STA $02                   
CODE_23C620:        LDX #$00                  
CODE_23C622:        JSR CODE_23C4BA           
CODE_23C625:        BCS CODE_23C62A                   
CODE_23C627:        TYA                       
CODE_23C628:        BNE CODE_23C67E           
CODE_23C62A:        LDA $0575                 
CODE_23C62D:        BEQ CODE_23C694           
CODE_23C62F:        LDA $A6                   
CODE_23C631:        BNE CODE_23C637           
CODE_23C633:        BCS CODE_23C694                   
CODE_23C635:        BCC CODE_23C677           
CODE_23C637:        BCS CODE_23C63D                   
CODE_23C639:        LDA $9D                   
CODE_23C63B:        BMI CODE_23C64E           
CODE_23C63D:        ROR A                     
CODE_23C63E:        STA $0F                   
CODE_23C640:        LDX #$01                  
CODE_23C642:        JSR CODE_23C4BA           
CODE_23C645:        BCS CODE_23C64A                   
CODE_23C647:        TYA                       
CODE_23C648:        BEQ CODE_23C677           
CODE_23C64A:        LDA $0F                   
CODE_23C64C:        BMI CODE_23C67E           
CODE_23C64E:        LDY $9D                   
CODE_23C650:        CPY #$F4                  
CODE_23C652:        BPL CODE_23C656           
CODE_23C654:        LDY #$F4                  
CODE_23C656:        LDA $15                   
CODE_23C658:        AND #$07                  
CODE_23C65A:        BNE CODE_23C65D           
CODE_23C65C:        INY                       
CODE_23C65D:        STY $9D                   
CODE_23C65F:        LDA $18                   
CODE_23C661:        AND #$7F                  
CODE_23C663:        STA $18                   
CODE_23C665:        LDA $17                   
CODE_23C667:        TAY                       
CODE_23C668:        AND #$F7                  
CODE_23C66A:        STA $17                   
CODE_23C66C:        TYA                       
CODE_23C66D:        AND #$88                  
CODE_23C66F:        CMP #$88                  
CODE_23C671:        BNE CODE_23C694           
CODE_23C673:        LDA #$CC                  
CODE_23C675:        STA $9D                   
CODE_23C677:        LDY #$00                  
CODE_23C679:        STY $0576                 
CODE_23C67C:        BEQ CODE_23C685           
CODE_23C67E:        LDY $0E                   
CODE_23C680:        CPY $0575                 
CODE_23C683:        BEQ CODE_23C694           
CODE_23C685:        TYA                       
CODE_23C686:        ORA $0575                 
CODE_23C689:        STY $0575                 
CODE_23C68C:        CMP #$02                  
CODE_23C68E:        BEQ CODE_23C694           
CODE_23C690:        JSL CODE_23BF00           
CODE_23C694:        LDA $BD                   
CODE_23C696:        AND #$7F                  
CODE_23C698:        STA $BD                   
CODE_23C69A:        LDX #$00                  
CODE_23C69C:        LDY $0560                 
CODE_23C69F:        LDA #$43                  
CODE_23C6A1:        SEC                       
CODE_23C6A2:        SBC $00                   
CODE_23C6A4:        BEQ CODE_23C6AF           
CODE_23C6A6:        CPY #$01                  
CODE_23C6A8:        BNE CODE_23C704           
CODE_23C6AA:        CMP #$01                  
CODE_23C6AC:        BNE CODE_23C704           
CODE_23C6AE:        INX                       
CODE_23C6AF:        LDA $18                   
CODE_23C6B1:        AND #$08                  
CODE_23C6B3:        BEQ CODE_23C704           
CODE_23C6B5:        LDA $A6                   
CODE_23C6B7:        BNE CODE_23C704           
CODE_23C6B9:        LDY #$01                  
CODE_23C6BB:        LDA $0379                 
CODE_23C6BE:        BEQ CODE_23C6C2           
CODE_23C6C0:        LDY #$03                  
CODE_23C6C2:        STY $0414                 
CODE_23C6C5:        STZ $0713                 
CODE_23C6C8:        STZ $8B                   
CODE_23C6CA:        STZ $034E                 
CODE_23C6CD:        CPX #$01                  
CODE_23C6CF:        BEQ CODE_23C704           
CODE_23C6D1:        LDA $43                   
CODE_23C6D3:        STA $D9                   
CODE_23C6D5:        XBA                       
CODE_23C6D6:        LDA $5E                   
CODE_23C6D8:        STA $D8                   
CODE_23C6DA:        REP #$30                  
CODE_23C6DC:        LDY #$0000                
CODE_23C6DF:        AND #$0008                
CODE_23C6E2:        BEQ CODE_23C6E7           
CODE_23C6E4:        LDY #$0010                
CODE_23C6E7:        TYA                       
CODE_23C6E8:        CLC                       
CODE_23C6E9:        ADC $D8                   
CODE_23C6EB:        AND #$FFF0                
CODE_23C6EE:        SEP #$30                  
CODE_23C6F0:        STA $5E                   
CODE_23C6F2:        XBA                       
CODE_23C6F3:        STA $43                   
CODE_23C6F5:        LDY #$01                  
CODE_23C6F7:        STY $034E                 
CODE_23C6FA:        LDY #$0F                  
CODE_23C6FC:        STY $1203                 
CODE_23C6FF:        PHX                       
CODE_23C700:        JSR CODE_23DEB6           
CODE_23C703:        PLX                       
CODE_23C704:        LDA $0575                 
CODE_23C707:        ORA $06A4                 
CODE_23C70A:        ORA $0577                 
CODE_23C70D:        BNE CODE_23C728           
CODE_23C70F:        LDA $00                   
CODE_23C711:        CMP #$85                  
CODE_23C713:        BNE CODE_23C728           
CODE_23C715:        LDA $056B                 
CODE_23C718:        BNE CODE_23C730           
CODE_23C71A:        LDA $17                   
CODE_23C71C:        AND #$0C                  
CODE_23C71E:        BEQ CODE_23C728           
CODE_23C720:        LDY $A6                   
CODE_23C722:        BNE CODE_23C730           
CODE_23C724:        AND #$08                  
CODE_23C726:        BNE CODE_23C730           
CODE_23C728:        LDA #$00                  
CODE_23C72A:        STA $056B                 
CODE_23C72D:        JMP CODE_23C79F           

CODE_23C730:        LDA #$01                  
CODE_23C732:        STA $056B                 
CODE_23C735:        LDA #$00                  
CODE_23C737:        STA $8B                   
CODE_23C739:        STA $9D                   
CODE_23C73B:        LDY #$10                  
CODE_23C73D:        LDA $17                   
CODE_23C73F:        AND #$0C                  
CODE_23C741:        BEQ CODE_23C76E           
CODE_23C743:        AND #$08                  
CODE_23C745:        BEQ CODE_23C76C           
CODE_23C747:        LDA $15                   
CODE_23C749:        AND #$07                  
CODE_23C74B:        BNE CODE_23C752           
CODE_23C74D:        LDA #$30                  
CODE_23C74F:        STA $1200                 
CODE_23C752:        LDY #$10                  
CODE_23C754:        LDA $BB                   
CODE_23C756:        BEQ CODE_23C75A           
CODE_23C758:        LDY #$00                  
CODE_23C75A:        STY $09                   
CODE_23C75C:        LDA #$08                  
CODE_23C75E:        STA $0A                   
CODE_23C760:        JSL CODE_23D2B6           
CODE_23C764:        CMP #$85                  
CODE_23C766:        BNE CODE_23C76E           
CODE_23C768:        LDY #$F0                  
CODE_23C76A:        STY $A6                   
CODE_23C76C:        STY $9D                   
CODE_23C76E:        LDY #$10                  
CODE_23C770:        LDA $17                   
CODE_23C772:        AND #$03                  
CODE_23C774:        BEQ CODE_23C77E           
CODE_23C776:        AND #$02                  
CODE_23C778:        BEQ CODE_23C77C           
CODE_23C77A:        LDY #$F0                  
CODE_23C77C:        STY $8B                   
CODE_23C77E:        LDA $056B                 
CODE_23C781:        BEQ CODE_23C790           
CODE_23C783:        LDA $A6                   
CODE_23C785:        BNE CODE_23C790           
CODE_23C787:        LDA $17                   
CODE_23C789:        AND #$0C                  
CODE_23C78B:        BNE CODE_23C790           
CODE_23C78D:        STA $056B                 
CODE_23C790:        JSL CODE_23DE53           
CODE_23C794:        JSL CODE_23DEA3           
CODE_23C798:        JSR CODE_23CECA           
CODE_23C79B:        JSR CODE_23C08A           
CODE_23C79E:        RTS                       

CODE_23C79F:        LDA $0569                 
CODE_23C7A2:        BEQ CODE_23C7AC           
CODE_23C7A4:        LDA $8B                   
CODE_23C7A6:        CLC                       
CODE_23C7A7:        ADC $0569                 
CODE_23C7AA:        STA $8B                   
CODE_23C7AC:        JSL CODE_23DE53           
CODE_23C7B0:        LDA $0569                 
CODE_23C7B3:        BEQ CODE_23C7BD           
CODE_23C7B5:        LDA $8B                   
CODE_23C7B7:        SEC                       
CODE_23C7B8:        SBC $0569                 
CODE_23C7BB:        STA $8B                   
CODE_23C7BD:        LDA #$00                  
CODE_23C7BF:        STA $0569                 
CODE_23C7C2:        LDY #$02                  
CODE_23C7C4:        LDA $8B                   
CODE_23C7C6:        BPL CODE_23C7CD           
CODE_23C7C8:        JSL CODE_27A859           ;Invert Accumulator (8-bit)
CODE_23C7CC:        DEY                       
CODE_23C7CD:        BNE CODE_23C7D0           
CODE_23C7CF:        TAY                       
CODE_23C7D0:        STA $02                   
CODE_23C7D2:        STY $0573                 
CODE_23C7D5:        LDA $A6                   
CODE_23C7D7:        BEQ CODE_23C7E9           
CODE_23C7D9:        LDA $55                   
CODE_23C7DB:        BPL CODE_23C7E5           
CODE_23C7DD:        LDA $70                   
CODE_23C7DF:        BMI CODE_23C7E5           
CODE_23C7E1:        LDA $9D                   
CODE_23C7E3:        BMI CODE_23C7E9           
CODE_23C7E5:        JSL CODE_23DEA3           
CODE_23C7E9:        JSR CODE_23CC62           
CODE_23C7EC:        LDA $0577                 
CODE_23C7EF:        BEQ CODE_23C7F5           
CODE_23C7F1:        LDA #$0E                  
CODE_23C7F3:        BNE CODE_23C7FF           
CODE_23C7F5:        LDA $BB                   
CODE_23C7F7:        LDY $0575                 
CODE_23C7FA:        BEQ CODE_23C7FF           
CODE_23C7FC:        CLC                       
CODE_23C7FD:        ADC #$07                  
CODE_23C7FF:        PHX                       
CODE_23C800:        ASL A                     
CODE_23C801:        TAX                       
CODE_23C802:        PHB                       
CODE_23C803:        PHK                       
CODE_23C804:        PLB                       
CODE_23C805:        LDA.l PNTR_23C816,x             
CODE_23C809:        STA $00                   
CODE_23C80B:        LDA.l PNTR_23C816+1,x             
CODE_23C80F:        STA $01                   
CODE_23C811:        PLB                       
CODE_23C812:        PLX                       
CODE_23C813:        JMP ($0000)               

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

CODE_23C834:        JSR CODE_23C9D8
CODE_23C837:        JSR CODE_23CAB6
CODE_23C83A:        LDA $058A                 
CODE_23C83D:        LSR A                     
CODE_23C83E:        BCS CODE_23C854                   
CODE_23C840:        LDA $101F                 
CODE_23C843:        BNE CODE_23C854           
CODE_23C845:        LDA $A6                   
CODE_23C847:        BEQ CODE_23C854           
CODE_23C849:        LDA #$80                  
CODE_23C84B:        LDY $056E                 
CODE_23C84E:        BEQ CODE_23C852           
CODE_23C850:        LDA #$9C                  
CODE_23C852:        STA $BC                   
CODE_23C854:        RTS                       

CODE_23C855:        JSR CODE_23CA96           
CODE_23C858:        JSR CODE_23CBBB           
CODE_23C85B:        JSR CODE_23CC08           
CODE_23C85E:        RTS                       

CODE_23C85F:        JSR CODE_23C9D8           
CODE_23C862:        JSR CODE_23CAB6           
CODE_23C865:        JSR CODE_23CF4E           
CODE_23C868:        RTS                       

CODE_23C869:        RTS                       

CODE_23C86A:        JSR CODE_23C9D8           
CODE_23C86D:        JSR CODE_23CAB6           
CODE_23C870:        JSR CODE_23CF4E           
CODE_23C873:        JSR CODE_23CFB5           
CODE_23C876:        RTS                       

CODE_23C877:        JSR CODE_23CA96           
CODE_23C87A:        JSR CODE_23CBBB           
CODE_23C87D:        JSR CODE_23CC08           
CODE_23C880:        JSR CODE_23CFB5           
CODE_23C883:        RTS                       

CODE_23C884:        JSR CODE_23C9D8           
CODE_23C887:        JSR CODE_23CAB6           
CODE_23C88A:        JSR CODE_23CEE6           
CODE_23C88D:        JSR CODE_23CF74           
CODE_23C890:        RTS                       

CODE_23C891:        RTS                       

CODE_23C892:        JSR CODE_23C9D8           
CODE_23C895:        JSR CODE_23CAB6           
CODE_23C898:        LDA $06A4                 
CODE_23C89B:        BNE CODE_23C8D1           
CODE_23C89D:        LDA $A6                   
CODE_23C89F:        BEQ CODE_23C8B1           
CODE_23C8A1:        LDA $058A                 
CODE_23C8A4:        LSR A                     
CODE_23C8A5:        BCS CODE_23C8B1                   
CODE_23C8A7:        LDA #$00                  
CODE_23C8A9:        STA $0513                 
CODE_23C8AC:        LDY #$01                  
CODE_23C8AE:        JMP CODE_23C8CC           

CODE_23C8B1:        LDA $0513                 
CODE_23C8B4:        BNE CODE_23C8C8           
CODE_23C8B6:        STA $8B                   
CODE_23C8B8:        LDA $17                   
CODE_23C8BA:        AND #$03                  
CODE_23C8BC:        BEQ CODE_23C8C8           
CODE_23C8BE:        LDA #$40                  
CODE_23C8C0:        STA $1200                 
CODE_23C8C3:        LDA #$1F                  
CODE_23C8C5:        STA $0513                 
CODE_23C8C8:        LSR A                     
CODE_23C8C9:        LSR A                     
CODE_23C8CA:        LSR A                     
CODE_23C8CB:        TAY                       
CODE_23C8CC:        LDA.w DATA_21E9AE,y               
CODE_23C8CF:        STA $BC                   
CODE_23C8D1:        RTS                       

CODE_23C8D2:        LDX #$FF                  
CODE_23C8D4:        LDA $17                   
CODE_23C8D6:        AND #$0C                  
CODE_23C8D8:        BEQ CODE_23C900           
CODE_23C8DA:        STA $A6                   
CODE_23C8DC:        LSR A                     
CODE_23C8DD:        LSR A                     
CODE_23C8DE:        LSR A                     
CODE_23C8DF:        TAX                       
CODE_23C8E0:        LDA.w DATA_21EB2D,x               
CODE_23C8E3:        BPL CODE_23C8EC           
CODE_23C8E5:        LDY $0544                 
CODE_23C8E8:        BPL CODE_23C8EC           
CODE_23C8EA:        LDA #$00                  
CODE_23C8EC:        LDY $17                   
CODE_23C8EE:        BPL CODE_23C8F1           
CODE_23C8F0:        ASL A                     
CODE_23C8F1:        CMP #$E1                  
CODE_23C8F3:        BCC CODE_23C8FB           
CODE_23C8F5:        LDY $A6                   
CODE_23C8F7:        BNE CODE_23C8FB           
CODE_23C8F9:        LDA #$E0                  
CODE_23C8FB:        STA $9D                   
CODE_23C8FD:        JMP CODE_23C90D           

CODE_23C900:        LDY $9D                   
CODE_23C902:        BEQ CODE_23C90D           
CODE_23C904:        INY                       
CODE_23C905:        LDA $9D                   
CODE_23C907:        BMI CODE_23C90B           
CODE_23C909:        DEY                       
CODE_23C90A:        DEY                       
CODE_23C90B:        STY $9D                   
CODE_23C90D:        LDA $17                   
CODE_23C90F:        AND #$03                  
CODE_23C911:        BEQ CODE_23C923           
CODE_23C913:        LSR A                     
CODE_23C914:        TAY                       
CODE_23C915:        LDA.w DATA_21EB2D,y               
CODE_23C918:        LDY $17                   
CODE_23C91A:        BPL CODE_23C91D           
CODE_23C91C:        ASL A                     
CODE_23C91D:        STA $8B                   
CODE_23C91F:        LDX #$02                  
CODE_23C921:        BNE CODE_23C93B           
CODE_23C923:        LDY $8B                   
CODE_23C925:        BEQ CODE_23C933           
CODE_23C927:        INY                       
CODE_23C928:        LDA $8B                   
CODE_23C92A:        BMI CODE_23C92E           
CODE_23C92C:        DEY                       
CODE_23C92D:        DEY                       
CODE_23C92E:        STY $8B                   
CODE_23C930:        JMP CODE_23C93B           

CODE_23C933:        LDA $A6                   
CODE_23C935:        BNE CODE_23C93B           
CODE_23C937:        LDA #$2A                  
CODE_23C939:        BNE CODE_23C96F           
CODE_23C93B:        TXA                       
CODE_23C93C:        BMI CODE_23C964           
CODE_23C93E:        LDA $15                   
CODE_23C940:        LSR A                     
CODE_23C941:        LSR A                     
CODE_23C942:        LDY #$00                  
CODE_23C944:        BIT $17                   
CODE_23C946:        BMI CODE_23C94A           
CODE_23C948:        LSR A                     
CODE_23C949:        INY                       
CODE_23C94A:        AND #$07                  
CODE_23C94C:        TAY                       
CODE_23C94D:        BNE CODE_23C95B           
CODE_23C94F:        LDA $15                   
CODE_23C951:        AND.w DATA_21EB20,y               
CODE_23C954:        BNE CODE_23C95B           
CODE_23C956:        LDA #$0E                  
CODE_23C958:        STA $1200                 
CODE_23C95B:        LDA.w DATA_21EB22,x               
CODE_23C95E:        CLC                       
CODE_23C95F:        ADC.w DATA_21EB25,y               
CODE_23C962:        BNE CODE_23C96F           
CODE_23C964:        LDY #$3E                  
CODE_23C966:        LDA $15                   
CODE_23C968:        AND #$08                  
CODE_23C96A:        BEQ CODE_23C96E           
CODE_23C96C:        INY                       
CODE_23C96D:        INY                       
CODE_23C96E:        TYA                       
CODE_23C96F:        STA $BC                   
CODE_23C971:        RTS                       

CODE_23C972:        JSR CODE_23CE61           
CODE_23C975:        JSR CODE_23C9D8           
CODE_23C978:        JSR CODE_23CAB6           
CODE_23C97B:        JSR CODE_23CEE6           
CODE_23C97E:        JSR CODE_23CF74           
CODE_23C981:        RTS                       

CODE_23C982:        JSR CODE_23CE61           
CODE_23C985:        JSR CODE_23CA96           
CODE_23C988:        JSR CODE_23CBBB           
CODE_23C98B:        JSR CODE_23CC08           
CODE_23C98E:        RTS                       

CODE_23C98F:        JSR CODE_23C9D8           
CODE_23C992:        JSR CODE_23CAB6           
CODE_23C995:        LDA $A6                   
CODE_23C997:        BNE CODE_23C99C           
CODE_23C999:        STA $0550                 
CODE_23C99C:        LDA $0550                 
CODE_23C99F:        BNE CODE_23C9B4           
CODE_23C9A1:        LDA $A6                   
CODE_23C9A3:        BNE CODE_23C9C2           
CODE_23C9A5:        LDA $17                   
CODE_23C9A7:        AND #$03                  
CODE_23C9A9:        STA $0550                 
CODE_23C9AC:        BEQ CODE_23C9C2           
CODE_23C9AE:        INC $A6                   
CODE_23C9B0:        LDY #$E0                  
CODE_23C9B2:        STY $9D                   
CODE_23C9B4:        LDA $18                   
CODE_23C9B6:        BPL CODE_23C9C2           
CODE_23C9B8:        LDA #$00                  
CODE_23C9BA:        STA $0550                 
CODE_23C9BD:        LDY.w DATA_21EAFD                 
CODE_23C9C0:        STY $9D                   
CODE_23C9C2:        LDY $BB                   
CODE_23C9C4:        BEQ CODE_23C9C8           
CODE_23C9C6:        LDY #$01                  
CODE_23C9C8:        LDA.w DATA_21E9A4,y               
CODE_23C9CB:        STA $BC                   
CODE_23C9CD:        LDA $15                   
CODE_23C9CF:        AND #$08                  
CODE_23C9D1:        BEQ CODE_23C9D7           
CODE_23C9D3:        INC $BC                   
CODE_23C9D5:        INC $BC                   
CODE_23C9D7:        RTS                       

CODE_23C9D8:        LDA $0546                 
CODE_23C9DB:        BEQ CODE_23C9EA           
CODE_23C9DD:        INC $0574                 
CODE_23C9E0:        LDY #$0A                  
CODE_23C9E2:        BIT $17                   
CODE_23C9E4:        BVC CODE_23C9EF                   
CODE_23C9E6:        LDY #$01                  
CODE_23C9E8:        BNE CODE_23C9EF           
CODE_23C9EA:        LDY $06B6                 
CODE_23C9ED:        BEQ CODE_23C9F6           
CODE_23C9EF:        LDA.w DATA_21EB2F,y               
CODE_23C9F2:        TAY                       
CODE_23C9F3:        JMP CODE_23CA17           

CODE_23C9F6:        LDY #$18                  
CODE_23C9F8:        BIT $17                   
CODE_23C9FA:        BVC CODE_23CA17                   
CODE_23C9FC:        LDA $A6                   
CODE_23C9FE:        ORA $0545                 
CODE_23CA01:        BNE CODE_23CA0C           
CODE_23CA03:        LDA $02                   
CODE_23CA05:        CMP #$28                  
CODE_23CA07:        BMI CODE_23CA0C           
CODE_23CA09:        INC $057B                 
CODE_23CA0C:        LDY #$28                  
CODE_23CA0E:        LDA $0413                 
CODE_23CA11:        CMP #$7F                  
CODE_23CA13:        BNE CODE_23CA17           
CODE_23CA15:        LDY #$38                  
CODE_23CA17:        STY $0D                   
CODE_23CA19:        LDY $0589                 
CODE_23CA1C:        BEQ CODE_23CA2C           
CODE_23CA1E:        INC $0574                 
CODE_23CA21:        DEY                       
CODE_23CA22:        TYA                       
CODE_23CA23:        ASL A                     
CODE_23CA24:        ASL A                     
CODE_23CA25:        ASL A                     
CODE_23CA26:        CLC                       
CODE_23CA27:        ADC #$40                  
CODE_23CA29:        TAY                       
CODE_23CA2A:        BNE CODE_23CA32           
CODE_23CA2C:        LDA $BB                   
CODE_23CA2E:        ASL A                     
CODE_23CA2F:        ASL A                     
CODE_23CA30:        ASL A                     
CODE_23CA31:        TAY                       
CODE_23CA32:        BIT $17                   
CODE_23CA34:        BVC CODE_23CA3A                   
CODE_23CA36:        INY                       
CODE_23CA37:        INY                       
CODE_23CA38:        INY                       
CODE_23CA39:        INY                       
CODE_23CA3A:        LDA $17                   
CODE_23CA3C:        AND #$03                  
CODE_23CA3E:        BNE CODE_23CA4C           
CODE_23CA40:        LDA $A6                   
CODE_23CA42:        BNE CODE_23CA95           
CODE_23CA44:        LDA $8B                   
CODE_23CA46:        BEQ CODE_23CA95           
CODE_23CA48:        BMI CODE_23CA67           
CODE_23CA4A:        BPL CODE_23CA7F           
CODE_23CA4C:        INY                       
CODE_23CA4D:        INY                       
CODE_23CA4E:        AND $0573                 
CODE_23CA51:        BNE CODE_23CA61           
CODE_23CA53:        DEY                       
CODE_23CA54:        LDA $02                   
CODE_23CA56:        CMP $0D                   
CODE_23CA58:        BEQ CODE_23CA95           
CODE_23CA5A:        BMI CODE_23CA61           
CODE_23CA5C:        LDA $A6                   
CODE_23CA5E:        BNE CODE_23CA95           
CODE_23CA60:        DEY                       
CODE_23CA61:        LDA $17                   
CODE_23CA63:        AND #$01                  
CODE_23CA65:        BNE CODE_23CA7F           
CODE_23CA67:        LDA #$00                  
CODE_23CA69:        SEC                       
CODE_23CA6A:        SBC.w DATA_21EAA2,y               
CODE_23CA6D:        STA $00                   
CODE_23CA6F:        LDA.w DATA_21EA52,y               
CODE_23CA72:        EOR #$FF                  
CODE_23CA74:        STA $01                   
CODE_23CA76:        LDA $00                   
CODE_23CA78:        BNE CODE_23CA89           
CODE_23CA7A:        INC $01                   
CODE_23CA7C:        JMP CODE_23CA89           

CODE_23CA7F:        LDA.w DATA_21EAA2,y               
CODE_23CA82:        STA $00                   
CODE_23CA84:        LDA.w DATA_21EA52,y               
CODE_23CA87:        STA $01                   
CODE_23CA89:        LDA $00                   
CODE_23CA8B:        CLC                       
CODE_23CA8C:        ADC $055C                 
CODE_23CA8F:        LDA $8B                   
CODE_23CA91:        ADC $01                   
CODE_23CA93:        STA $8B                   
CODE_23CA95:        RTS                       

CODE_23CA96:        LDY #$38                  
CODE_23CA98:        LDA #$08                  
CODE_23CA9A:        STA $0D                   
CODE_23CA9C:        LDA $A6                   
CODE_23CA9E:        BEQ CODE_23CAA8           
CODE_23CAA0:        LDA #$18                  
CODE_23CAA2:        STA $0D                   
CODE_23CAA4:        INY                       
CODE_23CAA5:        INY                       
CODE_23CAA6:        INY                       
CODE_23CAA7:        INY                       
CODE_23CAA8:        LDA $A6                   
CODE_23CAAA:        PHA                       
CODE_23CAAB:        LDA #$00                  
CODE_23CAAD:        STA $A6                   
CODE_23CAAF:        JSR CODE_23CA3A           
CODE_23CAB2:        PLA                       
CODE_23CAB3:        STA $A6                   
CODE_23CAB5:        RTS                       

CODE_23CAB6:        LDA $101F                 
CODE_23CAB9:        BEQ CODE_23CABE           
CODE_23CABB:        DEC $101F                 
CODE_23CABE:        LDA $18                   
CODE_23CAC0:        AND #$80                  
CODE_23CAC2:        STA $00                   
CODE_23CAC4:        BEQ CODE_23CB2A           
CODE_23CAC6:        LDA $101F                 
CODE_23CAC9:        BNE CODE_23CACF           
CODE_23CACB:        LDA $A6                   
CODE_23CACD:        BNE CODE_23CB2A           
CODE_23CACF:        LDA #$01                  
CODE_23CAD1:        STA $1201                 
CODE_23CAD4:        LDA $0553                 
CODE_23CAD7:        BEQ CODE_23CAF7           
CODE_23CAD9:        LDA $0413                 
CODE_23CADC:        CMP #$7F                  
CODE_23CADE:        BEQ CODE_23CAF7           
CODE_23CAE0:        LDA $06A4                 
CODE_23CAE3:        BNE CODE_23CAF7           
CODE_23CAE5:        LDA $BB                   
CODE_23CAE7:        BEQ CODE_23CAF7           
CODE_23CAE9:        CMP #$04                  
CODE_23CAEB:        BEQ CODE_23CAF7           
CODE_23CAED:        STA $054F                 
CODE_23CAF0:        STA $A6                   
CODE_23CAF2:        LDA #$00                  
CODE_23CAF4:        STA $101F                 
CODE_23CAF7:        LDA $8B                   
CODE_23CAF9:        BPL CODE_23CAFF           
CODE_23CAFB:        JSL CODE_27A859           ;Invert Accumulator (8-bit)
CODE_23CAFF:        LSR A                     
CODE_23CB00:        LSR A                     
CODE_23CB01:        LSR A                     
CODE_23CB02:        LSR A                     
CODE_23CB03:        TAX                       
CODE_23CB04:        LDA.w DATA_21EAFD                 
CODE_23CB07:        SEC                       
CODE_23CB08:        SBC.w DATA_21EAFE,x               
CODE_23CB0B:        STA $9D                   
CODE_23CB0D:        LDA #$01                  
CODE_23CB0F:        STA $A6                   
CODE_23CB11:        LDA #$00                  
CODE_23CB13:        STA $00BE                 
CODE_23CB16:        STA $101F                 
CODE_23CB19:        LDA $0413                 
CODE_23CB1C:        CMP #$7F                  
CODE_23CB1E:        BNE CODE_23CB2A           
CODE_23CB20:        LDA $056E                 
CODE_23CB23:        BNE CODE_23CB2A           
CODE_23CB25:        LDA #$80                  
CODE_23CB27:        STA $056E                 
CODE_23CB2A:        LDA $A6                   
CODE_23CB2C:        BNE CODE_23CB3F           
CODE_23CB2E:        LDY $BB                   
CODE_23CB30:        LDA.w DATA_21AF64,y               
CODE_23CB33:        AND #$01                  
CODE_23CB35:        BNE CODE_23CBA6           
CODE_23CB37:        LDA #$00                  
CODE_23CB39:        STA $056E                 
CODE_23CB3C:        JMP CODE_23CBA6           

CODE_23CB3F:        LDY #$05                  
CODE_23CB41:        LDA $9D                   
CODE_23CB43:        CMP #$E0                  
CODE_23CB45:        BPL CODE_23CB54           
CODE_23CB47:        LDA $0579                 
CODE_23CB4A:        BNE CODE_23CB59           
CODE_23CB4C:        LDA $17                   
CODE_23CB4E:        BPL CODE_23CB54           
CODE_23CB50:        LDY #$01                  
CODE_23CB52:        BNE CODE_23CB59           
CODE_23CB54:        LDA #$00                  
CODE_23CB56:        STA $0579                 
CODE_23CB59:        TYA                       
CODE_23CB5A:        CLC                       
CODE_23CB5B:        ADC $9D                   
CODE_23CB5D:        STA $9D                   
CODE_23CB5F:        LDA $BE                   
CODE_23CB61:        BEQ CODE_23CB65           
CODE_23CB63:        DEC $BE                   
CODE_23CB65:        LDA $0577                 
CODE_23CB68:        BNE CODE_23CB7B           
CODE_23CB6A:        LDX $BB                   
CODE_23CB6C:        LDA.w DATA_21AF64,x               
CODE_23CB6F:        AND #$01                  
CODE_23CB71:        BEQ CODE_23CB7B           
CODE_23CB73:        LDY $00                   
CODE_23CB75:        BEQ CODE_23CB7B           
CODE_23CB77:        LDA #$10                  
CODE_23CB79:        STA $BE                   
CODE_23CB7B:        LDA $BE                   
CODE_23CB7D:        BEQ CODE_23CBA6           
CODE_23CB7F:        LDA $9D                   
CODE_23CB81:        CMP #$E8                  
CODE_23CB83:        BMI CODE_23CBA6           
CODE_23CB85:        LDY #$E8                  
CODE_23CB87:        LDA $056E                 
CODE_23CB8A:        BEQ CODE_23CB9A           
CODE_23CB8C:        CMP #$0F                  
CODE_23CB8E:        BCS CODE_23CBA4                   
CODE_23CB90:        LDY #$F0                  
CODE_23CB92:        AND #$08                  
CODE_23CB94:        BNE CODE_23CBA4           
CODE_23CB96:        LDY #$00                  
CODE_23CB98:        BEQ CODE_23CBA4           
CODE_23CB9A:        LDA $9D                   
CODE_23CB9C:        BMI CODE_23CBA6           
CODE_23CB9E:        CMP #$10                  
CODE_23CBA0:        BCC CODE_23CBA6           
CODE_23CBA2:        LDY #$10                  
CODE_23CBA4:        STY $9D                   
CODE_23CBA6:        LDA $06B6                 
CODE_23CBA9:        BEQ CODE_23CBBA           
CODE_23CBAB:        LSR A                     
CODE_23CBAC:        TAY                       
CODE_23CBAD:        LDA $9D                   
CODE_23CBAF:        BPL CODE_23CBBA           
CODE_23CBB1:        CMP.w DATA_21EB3A,y               
CODE_23CBB4:        BMI CODE_23CBBA           
CODE_23CBB6:        LDA #$20                  
CODE_23CBB8:        STA $9D                   
CODE_23CBBA:        RTS                       

CODE_23CBBB:        LDA $18                   
CODE_23CBBD:        BPL CODE_23CBD5           
CODE_23CBBF:        LDA #$0E                  
CODE_23CBC1:        STA $1200                 
CODE_23CBC4:        LDY $A6                   
CODE_23CBC6:        BNE CODE_23CBCE           
CODE_23CBC8:        LDA #$E0                  
CODE_23CBCA:        STA $A6                   
CODE_23CBCC:        BNE CODE_23CBD3           
CODE_23CBCE:        LDA $9D                   
CODE_23CBD0:        SEC                       
CODE_23CBD1:        SBC #$20                  
CODE_23CBD3:        STA $9D                   
CODE_23CBD5:        LDA $A6                   
CODE_23CBD7:        BEQ CODE_23CC07           
CODE_23CBD9:        LDA $9D                   
CODE_23CBDB:        BMI CODE_23CBE3           
CODE_23CBDD:        LDA $15                   
CODE_23CBDF:        AND #$02                  
CODE_23CBE1:        BNE CODE_23CBE5           
CODE_23CBE3:        INC $9D                   
CODE_23CBE5:        LDY #$20                  
CODE_23CBE7:        LDA $9D                   
CODE_23CBE9:        BPL CODE_23CBFE           
CODE_23CBEB:        LDY $0544                 
CODE_23CBEE:        BPL CODE_23CBFC           
CODE_23CBF0:        LDY $0082                 
CODE_23CBF3:        CPY #$F8                  
CODE_23CBF5:        BCS CODE_23CBFC                   
CODE_23CBF7:        CLC                       
CODE_23CBF8:        ADC #$10                  
CODE_23CBFA:        STA $9D                   
CODE_23CBFC:        LDY #$E0                  
CODE_23CBFE:        CLC                       
CODE_23CBFF:        ADC #$20                  
CODE_23CC01:        CMP #$40                  
CODE_23CC03:        BCC CODE_23CC07           
CODE_23CC05:        STY $9D                   
CODE_23CC07:        RTS                       

CODE_23CC08:        LDA $A6                   
CODE_23CC0A:        BEQ CODE_23CC45           
CODE_23CC0C:        LDA $18                   
CODE_23CC0E:        BPL CODE_23CC23           
CODE_23CC10:        LDA $0576                 
CODE_23CC13:        BNE CODE_23CC20           
CODE_23CC15:        LDA #$00                  
CODE_23CC17:        STA $0576                 
CODE_23CC1A:        STA $057F                 
CODE_23CC1D:        STA $0574                 
CODE_23CC20:        INC $0576                 
CODE_23CC23:        LDA $0576                 
CODE_23CC26:        BNE CODE_23CC46           
CODE_23CC28:        LDA $8B                   
CODE_23CC2A:        BNE CODE_23CC36           
CODE_23CC2C:        LDA $15                   
CODE_23CC2E:        AND #$30                  
CODE_23CC30:        LSR A                     
CODE_23CC31:        LSR A                     
CODE_23CC32:        LSR A                     
CODE_23CC33:        LSR A                     
CODE_23CC34:        STA $BA                   
CODE_23CC36:        LDY $BA                   
CODE_23CC38:        LDA $BB                   
CODE_23CC3A:        BNE CODE_23CC40           
CODE_23CC3C:        INY                       
CODE_23CC3D:        INY                       
CODE_23CC3E:        INY                       
CODE_23CC3F:        INY                       
CODE_23CC40:        LDA.w DATA_21E992,y               
CODE_23CC43:        STA $BC                   
CODE_23CC45:        RTS                       

CODE_23CC46:        LDA $057F                 
CODE_23CC49:        CMP #$06                  
CODE_23CC4B:        BCC CODE_23CC54           
CODE_23CC4D:        DEC $0576                 
CODE_23CC50:        BNE CODE_23CC15           
CODE_23CC52:        LDA #$05                  
CODE_23CC54:        LDY $BB                   
CODE_23CC56:        BNE CODE_23CC5B           
CODE_23CC58:        CLC                       
CODE_23CC59:        ADC #$06                  
CODE_23CC5B:        TAY                       
CODE_23CC5C:        LDA.w DATA_21E986,y               
CODE_23CC5F:        STA $BC                   
CODE_23CC61:        RTS                       

CODE_23CC62:        LDA $8B                   
CODE_23CC64:        BPL CODE_23CC6A           
CODE_23CC66:        JSL CODE_27A859           ;Invert Accumulator (8-bit)
CODE_23CC6A:        LSR A                     
CODE_23CC6B:        LSR A                     
CODE_23CC6C:        LSR A                     
CODE_23CC6D:        TAY                       
CODE_23CC6E:        INC $0574                 
CODE_23CC71:        LDA $0574                 
CODE_23CC74:        CMP.w DATA_21EAF4,y               
CODE_23CC77:        BMI CODE_23CC8D           
CODE_23CC79:        LDA #$00                  
CODE_23CC7B:        STA $0574                 
CODE_23CC7E:        INC $BA                   
CODE_23CC80:        INC $057F                 
CODE_23CC83:        LDA $BA                   
CODE_23CC85:        CMP #$04                  
CODE_23CC87:        BMI CODE_23CC8D           
CODE_23CC89:        LDA #$00                  
CODE_23CC8B:        STA $BA                   
CODE_23CC8D:        LDA $17                   
CODE_23CC8F:        AND #$03                  
CODE_23CC91:        BNE CODE_23CC9B           
CODE_23CC93:        LDA $8B                   
CODE_23CC95:        BNE CODE_23CC9B           
CODE_23CC97:        LDA #$02                  
CODE_23CC99:        STA $BA                   
CODE_23CC9B:        LDA $0517                 
CODE_23CC9E:        BNE CODE_23CCB0           
CODE_23CCA0:        LDA $17                   
CODE_23CCA2:        AND #$03                  
CODE_23CCA4:        BEQ CODE_23CCB0           
CODE_23CCA6:        LDY #$00                  
CODE_23CCA8:        AND #$02                  
CODE_23CCAA:        BNE CODE_23CCAE           
CODE_23CCAC:        LDY #$40                  
CODE_23CCAE:        STY $BD                   
CODE_23CCB0:        LDA $0160                 
CODE_23CCB3:        CMP #$80                  
CODE_23CCB5:        BNE CODE_23CCE2           
CODE_23CCB7:        LDA $18                   
CODE_23CCB9:        AND #$20                  
CODE_23CCBB:        BEQ CODE_23CCE2           
CODE_23CCBD:        LDA $17                   
CODE_23CCBF:        AND #$C0                  
CODE_23CCC1:        BNE CODE_23CCDA           
CODE_23CCC3:        LDA $BB                   
CODE_23CCC5:        CLC                       
CODE_23CCC6:        ADC #$01                  
CODE_23CCC8:        STA $0578                 
CODE_23CCCB:        CMP #$07                  
CODE_23CCCD:        BMI CODE_23CCD1           
CODE_23CCCF:        LDA #$00                  
CODE_23CCD1:        STA $0578                 
CODE_23CCD4:        INC $0578                 
CODE_23CCD7:        JMP CODE_23CCE2           

CODE_23CCDA:        LDA $0577                 
CODE_23CCDD:        EOR #$01                  
CODE_23CCDF:        STA $0577                 
CODE_23CCE2:        LDA $BB                   
CODE_23CCE4:        ASL A                     
CODE_23CCE5:        ASL A                     
CODE_23CCE6:        ORA $BA                   
CODE_23CCE8:        TAY                       
CODE_23CCE9:        LDA.w DATA_21E958,y               
CODE_23CCEC:        STA $BC                   
CODE_23CCEE:        LDA $0575                 
CODE_23CCF1:        BNE CODE_23CD40           
CODE_23CCF3:        LDA $8B                   
CODE_23CCF5:        CLC                       
CODE_23CCF6:        ADC #$01                  
CODE_23CCF8:        CMP #$03                  
CODE_23CCFA:        BCC CODE_23CD40           
CODE_23CCFC:        LDA $0573                 
CODE_23CCFF:        AND $17                   
CODE_23CD01:        BEQ CODE_23CD40           
CODE_23CD03:        LDY $BB                   
CODE_23CD05:        BEQ CODE_23CD09           
CODE_23CD07:        LDY #$01                  
CODE_23CD09:        LDA $A6                   
CODE_23CD0B:        BNE CODE_23CD40           
CODE_23CD0D:        LDA.w DATA_21E984,y               
CODE_23CD10:        STA $BC                   
CODE_23CD12:        LDA $7FC522               
CODE_23CD16:        ORA $7FC523               
CODE_23CD1A:        BNE CODE_23CD40           
CODE_23CD1C:        LDA #$10                  
CODE_23CD1E:        STA $7FC522               
CODE_23CD22:        LDA $5E                   
CODE_23CD24:        STA $7FC524               
CODE_23CD28:        LDA $43                   
CODE_23CD2A:        STA $7FC526               
CODE_23CD2E:        LDA $70                   
CODE_23CD30:        STA $7FC528               
CODE_23CD34:        LDA $55                   
CODE_23CD36:        STA $7FC52A               
CODE_23CD3A:        LDA $BD                   
CODE_23CD3C:        STA $7FC52C               
CODE_23CD40:        LDA $056F                 
CODE_23CD43:        BEQ CODE_23CD52           
CODE_23CD45:        LDY $BB                   
CODE_23CD47:        LDA.w DATA_21AF64,y               
CODE_23CD4A:        AND #$01                  
CODE_23CD4C:        TAY                       
CODE_23CD4D:        LDA.w DATA_21E9A6,y               
CODE_23CD50:        STA $BC                   
CODE_23CD52:        LDA $0545                 
CODE_23CD55:        BEQ CODE_23CD70           
CODE_23CD57:        LDA $A6                   
CODE_23CD59:        BNE CODE_23CD61           
CODE_23CD5B:        LDA $17                   
CODE_23CD5D:        AND #$0B                  
CODE_23CD5F:        BEQ CODE_23CD66           
CODE_23CD61:        LDA #$00                  
CODE_23CD63:        STA $0545                 
CODE_23CD66:        LDA #$62                  
CODE_23CD68:        LDY $BB                   
CODE_23CD6A:        BNE CODE_23CD6E           
CODE_23CD6C:        LDA #$66                  
CODE_23CD6E:        STA $BC                   
CODE_23CD70:        RTS                       

CODE_23CD71:        LDA $8B                   
CODE_23CD73:        BPL CODE_23CD79           
CODE_23CD75:        JSL CODE_27A859           ;Invert Accumulator (8-bit)
CODE_23CD79:        CMP #$37                  
CODE_23CD7B:        BCC CODE_23CD9F           
CODE_23CD7D:        LDA $056E                 
CODE_23CD80:        BNE CODE_23CD9F           
CODE_23CD82:        LDA $056F                 
CODE_23CD85:        ORA $0577                 
CODE_23CD88:        ORA $056B                 
CODE_23CD8B:        ORA $0545                 
CODE_23CD8E:        BNE CODE_23CD9F           
CODE_23CD90:        LDY $BA                   
CODE_23CD92:        LDA $BB                   
CODE_23CD94:        BNE CODE_23CD9A           
CODE_23CD96:        INY                       
CODE_23CD97:        INY                       
CODE_23CD98:        INY                       
CODE_23CD99:        INY                       
CODE_23CD9A:        LDA.w DATA_21E9B2,y               
CODE_23CD9D:        STA $BC                   
CODE_23CD9F:        LDA $054F                 
CODE_23CDA2:        BEQ CODE_23CDBF           
CODE_23CDA4:        LDA $15                   
CODE_23CDA6:        LSR A                     
CODE_23CDA7:        PHA                       
CODE_23CDA8:        AND #$07                  
CODE_23CDAA:        TAY                       
CODE_23CDAB:        LDA.w DATA_21EB14,y               
CODE_23CDAE:        LDY $8B                   
CODE_23CDB0:        BPL CODE_23CDB4           
CODE_23CDB2:        EOR #$40                  
CODE_23CDB4:        STA $BD                   
CODE_23CDB6:        PLA                       
CODE_23CDB7:        AND #$03                  
CODE_23CDB9:        ASL A                     
CODE_23CDBA:        CLC                       
CODE_23CDBB:        ADC #$34                  
CODE_23CDBD:        STA $BC                   
CODE_23CDBF:        LDA $06A4                 
CODE_23CDC2:        BEQ CODE_23CDDE           
CODE_23CDC4:        LDY $BA                   
CODE_23CDC6:        LDA $A6                   
CODE_23CDC8:        BEQ CODE_23CDD1           
CODE_23CDCA:        LDY #$00                  
CODE_23CDCC:        LDA $BB                   
CODE_23CDCE:        BNE CODE_23CDD1           
CODE_23CDD0:        INY                       
CODE_23CDD1:        LDA $BB                   
CODE_23CDD3:        BNE CODE_23CDD9           
CODE_23CDD5:        INY                       
CODE_23CDD6:        INY                       
CODE_23CDD7:        INY                       
CODE_23CDD8:        INY                       
CODE_23CDD9:        LDA.w DATA_21E9C6,y               
CODE_23CDDC:        STA $BC                   
CODE_23CDDE:        LDA $0558                 
CODE_23CDE1:        BNE CODE_23CDF4           
CODE_23CDE3:        LDA $06A4                 
CODE_23CDE6:        BEQ CODE_23CE01           
CODE_23CDE8:        LDA $BD                   
CODE_23CDEA:        CMP $056C                 
CODE_23CDED:        BEQ CODE_23CE01           
CODE_23CDEF:        LDA #$07                  
CODE_23CDF1:        STA $0558                 
CODE_23CDF4:        DEC $0558                 
CODE_23CDF7:        LDA #$0A                  
CODE_23CDF9:        LDY $BB                   
CODE_23CDFB:        BNE CODE_23CDFF           
CODE_23CDFD:        LDA #$64                  
CODE_23CDFF:        STA $BC                   
CODE_23CE01:        LDA $0557                 
CODE_23CE04:        BEQ CODE_23CE18           
CODE_23CE06:        LDA #$00                  
CODE_23CE08:        STA $0517                 
CODE_23CE0B:        LDY #$84                  
CODE_23CE0D:        LDA $BB                   
CODE_23CE0F:        BEQ CODE_23CE13           
CODE_23CE11:        LDY #$5A                  
CODE_23CE13:        STY $BC                   
CODE_23CE15:        DEC $0557                 
CODE_23CE18:        LDA $1CF5                 
CODE_23CE1B:        BEQ CODE_23CE54           
CODE_23CE1D:        DEC $1CF5                 
CODE_23CE20:        LDY #$00                  
CODE_23CE22:        LDA $BB                   
CODE_23CE24:        BEQ CODE_23CE3A           
CODE_23CE26:        CMP #$04                  
CODE_23CE28:        BNE CODE_23CE2E           
CODE_23CE2A:        LDY #$0C                  
CODE_23CE2C:        BRA CODE_23CE3A           

CODE_23CE2E:        LDY #$04                  
CODE_23CE30:        TAX                       
CODE_23CE31:        LDA.w DATA_21AF64,x               
CODE_23CE34:        AND #$01                  
CODE_23CE36:        BEQ CODE_23CE3A           
CODE_23CE38:        LDY #$08                  
CODE_23CE3A:        STY $00                   
CODE_23CE3C:        LDA $15                   
CODE_23CE3E:        AND #$0C                  
CODE_23CE40:        LSR A                     
CODE_23CE41:        LSR A                     
CODE_23CE42:        PHA                       
CODE_23CE43:        LSR A                     
CODE_23CE44:        TAY                       
CODE_23CE45:        LDA.w DATA_21EB40,y               
CODE_23CE48:        STA $BD                   
CODE_23CE4A:        PLA                       
CODE_23CE4B:        CLC                       
CODE_23CE4C:        ADC $00                   
CODE_23CE4E:        TAY                       
CODE_23CE4F:        LDA.w DATA_21E9CE,y               
CODE_23CE52:        STA $BC                   
CODE_23CE54:        LDA $1CF4                 
CODE_23CE57:        BEQ CODE_23CE60           
CODE_23CE59:        LDY $BB                   
CODE_23CE5B:        LDA.w DATA_21E9EC,y               
CODE_23CE5E:        STA $BC                   
CODE_23CE60:        RTS                       

CODE_23CE61:        LDA $17                   
CODE_23CE63:        AND #$04                  
CODE_23CE65:        TAY                       
CODE_23CE66:        BEQ CODE_23CE96           
CODE_23CE68:        BIT $18                   
CODE_23CE6A:        BVC CODE_23CE96                   
CODE_23CE6C:        LDA $057A                 
CODE_23CE6F:        BNE CODE_23CE96           
CODE_23CE71:        JSR CODE_23CEC4           
CODE_23CE74:        LDA #$20                  
CODE_23CE76:        STA $0578                 
CODE_23CE79:        LDA #$17                  
CODE_23CE7B:        STA $0554                 
CODE_23CE7E:        BNE CODE_23CEC3           
CODE_23CE80:        LDA #$3C                  
CODE_23CE82:        STA $BC                   
CODE_23CE84:        LDA #$00                  
CODE_23CE86:        STA $8B                   
CODE_23CE88:        LDA $A6                   
CODE_23CE8A:        BEQ CODE_23CE93           
CODE_23CE8C:        LDA $9D                   
CODE_23CE8E:        CLC                       
CODE_23CE8F:        ADC #$07                  
CODE_23CE91:        STA $9D                   
CODE_23CE93:        PLA                       
CODE_23CE94:        PLA                       
CODE_23CE95:        RTS                       

CODE_23CE96:        LDA $057A                 
CODE_23CE99:        BEQ CODE_23CEC3           
CODE_23CE9B:        CMP #$01                  
CODE_23CE9D:        BEQ CODE_23CEAE           
CODE_23CE9F:        CMP #$60                  
CODE_23CEA1:        BNE CODE_23CEA8           
CODE_23CEA3:        LDA #$60                  
CODE_23CEA5:        STA $0552                 
CODE_23CEA8:        DEC $057A                 
CODE_23CEAB:        TYA                       
CODE_23CEAC:        BNE CODE_23CE80           
CODE_23CEAE:        LDA #$00                  
CODE_23CEB0:        STA $057A                 
CODE_23CEB3:        STA $0552                 
CODE_23CEB6:        JSR CODE_23C467           
CODE_23CEB9:        JSR CODE_23CEC4           
CODE_23CEBC:        LDA #$17                  
CODE_23CEBE:        STA $0554                 
CODE_23CEC1:        BNE CODE_23CE80           
CODE_23CEC3:        RTS                       

CODE_23CEC4:        LDA #$0C                  
CODE_23CEC6:        STA $1200                 
CODE_23CEC9:        RTS                       

CODE_23CECA:        LDA $056B                 
CODE_23CECD:        BEQ CODE_23CEE5           
CODE_23CECF:        LDY $BB                   
CODE_23CED1:        LDA.w DATA_21E9DE,y               
CODE_23CED4:        STA $BC                   
CODE_23CED6:        LDA $17                   
CODE_23CED8:        AND #$0C                  
CODE_23CEDA:        BEQ CODE_23CEE5           
CODE_23CEDC:        LDA $15                   
CODE_23CEDE:        AND #$08                  
CODE_23CEE0:        ASL A                     
CODE_23CEE1:        ASL A                     
CODE_23CEE2:        ASL A                     
CODE_23CEE3:        STA $BD                   
CODE_23CEE5:        RTS                       

CODE_23CEE6:        LDA $058A                 
CODE_23CEE9:        LSR A                     
CODE_23CEEA:        BCS CODE_23CF4D                   
CODE_23CEEC:        LDA $101F                 
CODE_23CEEF:        BNE CODE_23CF4D           
CODE_23CEF1:        LDA $A6                   
CODE_23CEF3:        BEQ CODE_23CF4D           
CODE_23CEF5:        LDA $056F                 
CODE_23CEF8:        BNE CODE_23CF2F           
CODE_23CEFA:        LDA $18                   
CODE_23CEFC:        BPL CODE_23CF0F           
CODE_23CEFE:        LDA $1201                 
CODE_23CF01:        CMP #$01                  
CODE_23CF03:        BEQ CODE_23CF0A           
CODE_23CF05:        LDA #$04                  
CODE_23CF07:        STA $1203                 
CODE_23CF0A:        LDA #$0A                  
CODE_23CF0C:        STA $0511                 
CODE_23CF0F:        LDA $0511                 
CODE_23CF12:        LSR A                     
CODE_23CF13:        LSR A                     
CODE_23CF14:        STA $00                   
CODE_23CF16:        LDA #$00                  
CODE_23CF18:        LDY $056E                 
CODE_23CF1B:        BNE CODE_23CF1F           
CODE_23CF1D:        LDA #$06                  
CODE_23CF1F:        LDY $9D                   
CODE_23CF21:        BMI CODE_23CF26           
CODE_23CF23:        CLC                       
CODE_23CF24:        ADC #$03                  
CODE_23CF26:        CLC                       
CODE_23CF27:        ADC $00                   
CODE_23CF29:        TAY                       
CODE_23CF2A:        LDA.w DATA_21E9BA,y               
CODE_23CF2D:        STA $BC                   
CODE_23CF2F:        LDA $056E                 
CODE_23CF32:        ORA $00BE                 
CODE_23CF35:        BEQ CODE_23CF4D           
CODE_23CF37:        LDY #$FF                  
CODE_23CF39:        LDA $8B                   
CODE_23CF3B:        BPL CODE_23CF43           
CODE_23CF3D:        LDY #$01                  
CODE_23CF3F:        JSL CODE_27A859           ;Invert Accumulator (8-bit)
CODE_23CF43:        CMP #$18                  
CODE_23CF45:        BMI CODE_23CF4D           
CODE_23CF47:        TYA                       
CODE_23CF48:        CLC                       
CODE_23CF49:        ADC $8B                   
CODE_23CF4B:        STA $8B                   
CODE_23CF4D:        RTS                       

CODE_23CF4E:        LDA $058A                 
CODE_23CF51:        LSR A                     
CODE_23CF52:        BCS CODE_23CF73                   
CODE_23CF54:        LDA $101F                 
CODE_23CF57:        BNE CODE_23CF73           
CODE_23CF59:        LDA $A6                   
CODE_23CF5B:        BEQ CODE_23CF73           
CODE_23CF5D:        LDA $056F                 
CODE_23CF60:        BNE CODE_23CF73           
CODE_23CF62:        LDA #$70                  
CODE_23CF64:        LDY $056E                 
CODE_23CF67:        BNE CODE_23CF71           
CODE_23CF69:        LDA #$9E                  
CODE_23CF6B:        LDY $9D                   
CODE_23CF6D:        BMI CODE_23CF71           
CODE_23CF6F:        LDA #$0C                  
CODE_23CF71:        STA $BC                   
CODE_23CF73:        RTS                       

CODE_23CF74:        LDA $17                   
CODE_23CF76:        AND #$04                  
CODE_23CF78:        BNE CODE_23CFB4           
CODE_23CF7A:        BIT $18                   
CODE_23CF7C:        BVC CODE_23CF8D                   
CODE_23CF7E:        LDA $0517                 
CODE_23CF81:        BNE CODE_23CF8D           
CODE_23CF83:        LDA #$12                  
CODE_23CF85:        STA $0517                 
CODE_23CF88:        LDA #$04                  
CODE_23CF8A:        STA $1203                 
CODE_23CF8D:        LDA $0517                 
CODE_23CF90:        BEQ CODE_23CFB4           
CODE_23CF92:        LSR A                     
CODE_23CF93:        LSR A                     
CODE_23CF94:        TAY                       
CODE_23CF95:        LDA $A6                   
CODE_23CF97:        BEQ CODE_23CF9E           
CODE_23CF99:        INY                       
CODE_23CF9A:        INY                       
CODE_23CF9B:        INY                       
CODE_23CF9C:        INY                       
CODE_23CF9D:        INY                       
CODE_23CF9E:        LDA.w DATA_21E99A,y               
CODE_23CFA1:        STA $BC                   
CODE_23CFA3:        LDA $0517                 
CODE_23CFA6:        CMP #$0B                  
CODE_23CFA8:        BEQ CODE_23CFAE           
CODE_23CFAA:        CMP #$03                  
CODE_23CFAC:        BNE CODE_23CFB4           
CODE_23CFAE:        LDA $BD                   
CODE_23CFB0:        EOR #$40                  
CODE_23CFB2:        STA $BD                   
CODE_23CFB4:        RTS                       

CODE_23CFB5:        LDA $0513                 
CODE_23CFB8:        BEQ CODE_23CFC9           
CODE_23CFBA:        LSR A                     
CODE_23CFBB:        LSR A                     
CODE_23CFBC:        LDY $A6                   
CODE_23CFBE:        BEQ CODE_23CFC3           
CODE_23CFC0:        CLC                       
CODE_23CFC1:        ADC #$03                  
CODE_23CFC3:        TAY                       
CODE_23CFC4:        LDA.w DATA_21E9A8,y               
CODE_23CFC7:        STA $BC                   
CODE_23CFC9:        RTS                       

CODE_23CFCA:        LDA $0425                 
CODE_23CFCD:        BEQ CODE_23CFD2           
CODE_23CFCF:        JMP CODE_23D1FC           

CODE_23CFD2:        LDA $1EB8                 
CODE_23CFD5:        BEQ CODE_23CFDA           
CODE_23CFD7:        JMP CODE_23D093           

CODE_23CFDA:        LDY $05FC                 
CODE_23CFDD:        BEQ CODE_23D00A           
CODE_23CFDF:        BMI CODE_23D00A           
CODE_23CFE1:        LDA $1A0C                 
CODE_23CFE4:        PHA                       
CODE_23CFE5:        SEC                       
CODE_23CFE6:        SBC $0210                 
CODE_23CFE9:        STA $0781                 
CODE_23CFEC:        PLA                       
CODE_23CFED:        STA $0210                 
CODE_23CFF0:        STA $0212                 
CODE_23CFF3:        LDA $1A0A                 
CODE_23CFF6:        STA $12                   
CODE_23CFF8:        STA $0211                 
CODE_23CFFB:        LSR A                     
CODE_23CFFC:        STA $0213                 
CODE_23CFFF:        ROR $0212                 
CODE_23D002:        LDA $1A07                 
CODE_23D005:        STA $25                   
CODE_23D007:        JMP CODE_23D0FA           

CODE_23D00A:        LDA $5E                   
CODE_23D00C:        SEC                       
CODE_23D00D:        SBC $0210                 
CODE_23D010:        BPL CODE_23D052           
CODE_23D012:        LDA $12                   
CODE_23D014:        STA $00                   
CODE_23D016:        LDA #$80                  
CODE_23D018:        CLC                       
CODE_23D019:        ADC $0210                 
CODE_23D01C:        STA $01                   
CODE_23D01E:        BCC CODE_23D022           
CODE_23D020:        INC $00                   
CODE_23D022:        LDA $43                   
CODE_23D024:        CMP $00                   
CODE_23D026:        BMI CODE_23D093           
CODE_23D028:        LDA $5E                   
CODE_23D02A:        SEC                       
CODE_23D02B:        SBC $01                   
CODE_23D02D:        BEQ CODE_23D093           
CODE_23D02F:        BMI CODE_23D093           
CODE_23D031:        STA $0781                 
CODE_23D034:        CLC                       
CODE_23D035:        ADC $0210                 
CODE_23D038:        STA $0210                 
CODE_23D03B:        BCC CODE_23D042           
CODE_23D03D:        INC $12                   
CODE_23D03F:        INC $0211                 
CODE_23D042:        STZ $25                   
CODE_23D044:        LDA $12                   
CODE_23D046:        CMP $22                   
CODE_23D048:        BMI CODE_23D093           
CODE_23D04A:        STZ $0210                 
CODE_23D04D:        STZ $0781                 
CODE_23D050:        BRA CODE_23D093           

CODE_23D052:        LDA $12                   
CODE_23D054:        STA $00                   
CODE_23D056:        LDA #$70                  
CODE_23D058:        CLC                       
CODE_23D059:        ADC $0210                 
CODE_23D05C:        STA $01                   
CODE_23D05E:        BCC CODE_23D062           
CODE_23D060:        INC $00                   
CODE_23D062:        LDA $00                   
CODE_23D064:        CMP $43                   
CODE_23D066:        BMI CODE_23D093           
CODE_23D068:        LDA $5E                   
CODE_23D06A:        SEC                       
CODE_23D06B:        SBC $01                   
CODE_23D06D:        BPL CODE_23D093           
CODE_23D06F:        STA $0781                 
CODE_23D072:        CLC                       
CODE_23D073:        ADC $0210                 
CODE_23D076:        STA $0210                 
CODE_23D079:        BCS CODE_23D080                   
CODE_23D07B:        DEC $12                   
CODE_23D07D:        DEC $0211                 
CODE_23D080:        LDA #$01                  
CODE_23D082:        STA $25                   
CODE_23D084:        LDA $12                   
CODE_23D086:        BPL CODE_23D093           
CODE_23D088:        STZ $12                   
CODE_23D08A:        STZ $0210                 
CODE_23D08D:        STZ $0211                 
CODE_23D090:        STZ $0781                 
CODE_23D093:        LDA $02BF                 
CODE_23D096:        CMP #$0B                  
CODE_23D098:        BNE CODE_23D0B0           
CODE_23D09A:        LDY #$00                  
CODE_23D09C:        LDA $0781                 
CODE_23D09F:        BPL CODE_23D0A2           
CODE_23D0A1:        DEY                       
CODE_23D0A2:        CLC                       
CODE_23D0A3:        ADC $0353                 
CODE_23D0A6:        STA $0353                 
CODE_23D0A9:        TYA                       
CODE_23D0AA:        ADC $0354                 
CODE_23D0AD:        STA $0354                 
CODE_23D0B0:        REP #$20                  
CODE_23D0B2:        LDA $0210                 
CODE_23D0B5:        LSR A                     
CODE_23D0B6:        STA $0212                 
CODE_23D0B9:        SEP #$20                  
CODE_23D0BB:        LDA $0559                 
CODE_23D0BE:        BNE CODE_23D0FA           
CODE_23D0C0:        LDA $79                   
CODE_23D0C2:        LDY $8B                   
CODE_23D0C4:        BMI CODE_23D0CF           
CODE_23D0C6:        CMP #$E8                  
CODE_23D0C8:        BCC CODE_23D0FA           
CODE_23D0CA:        LDA #$E8                  
CODE_23D0CC:        JMP CODE_23D0D5           

CODE_23D0CF:        CMP #$11                  
CODE_23D0D1:        BCS CODE_23D0FA                   
CODE_23D0D3:        LDA #$10                  
CODE_23D0D5:        STA $79                   
CODE_23D0D7:        LDY #$00                  
CODE_23D0D9:        SEC                       
CODE_23D0DA:        SBC $5E                   
CODE_23D0DC:        BPL CODE_23D0E0           
CODE_23D0DE:        LDY #$FF                  
CODE_23D0E0:        CLC                       
CODE_23D0E1:        ADC $5E                   
CODE_23D0E3:        STA $5E                   
CODE_23D0E5:        BCC CODE_23D0E8           
CODE_23D0E7:        INY                       
CODE_23D0E8:        TYA                       
CODE_23D0E9:        CLC                       
CODE_23D0EA:        ADC $43                   
CODE_23D0EC:        STA $43                   
CODE_23D0EE:        LDA $8B                   
CODE_23D0F0:        PHP                       
CODE_23D0F1:        AND #$0F                  
CODE_23D0F3:        PLP                       
CODE_23D0F4:        BPL CODE_23D0F8           
CODE_23D0F6:        ORA #$F0                  
CODE_23D0F8:        STA $8B                   
CODE_23D0FA:        LDA $0424                 
CODE_23D0FD:        BEQ CODE_23D109           
CODE_23D0FF:        CMP #$01                  
CODE_23D101:        BNE CODE_23D106           
CODE_23D103:        JMP CODE_23D18A           

CODE_23D106:        JMP CODE_23D1EF           

CODE_23D109:        LDA $05FC                 
CODE_23D10C:        BEQ CODE_23D177           
CODE_23D10E:        LDA $1A0D                 
CODE_23D111:        PHA                       
CODE_23D112:        SEC                       
CODE_23D113:        SBC $0216                 
CODE_23D116:        STA $0780                 
CODE_23D119:        PLA                       
CODE_23D11A:        STA $0216                 
CODE_23D11D:        STA $0543                 
CODE_23D120:        LDA $0350                 
CODE_23D123:        CMP #$01                  
CODE_23D125:        BEQ CODE_23D136           
CODE_23D127:        CMP #$02                  
CODE_23D129:        BEQ CODE_23D15A           
CODE_23D12B:        CMP #$23                  
CODE_23D12D:        BEQ CODE_23D15A           
CODE_23D12F:        LDA $0727                 
CODE_23D132:        CMP #$05                  
CODE_23D134:        BNE CODE_23D15A           
CODE_23D136:        REP #$20                  
CODE_23D138:        LDA $0216                 
CODE_23D13B:        LSR A                     
CODE_23D13C:        LSR A                     
CODE_23D13D:        STA $0218                 
CODE_23D140:        LDA $0216                 
CODE_23D143:        SEC                       
CODE_23D144:        SBC $0218                 
CODE_23D147:        STA $0218                 
CODE_23D14A:        LDA $034F                 
CODE_23D14D:        AND #$00FF                
CODE_23D150:        BEQ CODE_23D158           
CODE_23D152:        LDA $0216                 
CODE_23D155:        STA $0218                 
CODE_23D158:        SEP #$20                  
CODE_23D15A:        LDA $A6                   
CODE_23D15C:        BEQ CODE_23D176           
CODE_23D15E:        LDA $056B                 
CODE_23D161:        ORA $05FE                 
CODE_23D164:        BNE CODE_23D176           
CODE_23D166:        LDA $0780                 
CODE_23D169:        BPL CODE_23D16D           
CODE_23D16B:        DEC $55                   
CODE_23D16D:        CLC                       
CODE_23D16E:        ADC $70                   
CODE_23D170:        STA $70                   
CODE_23D172:        BCC CODE_23D176           
CODE_23D174:        INC $55                   
CODE_23D176:        RTL                       

CODE_23D177:        LDA $0216                 
CODE_23D17A:        CMP #$EF                  
CODE_23D17C:        BNE CODE_23D18A           
CODE_23D17E:        LDA $056E                 
CODE_23D181:        ORA $056B                 
CODE_23D184:        PHP                       
CODE_23D185:        LDA #$EF                  
CODE_23D187:        PLP                       
CODE_23D188:        BEQ CODE_23D1F2           
CODE_23D18A:        LDA $70                   
CODE_23D18C:        SEC                       
CODE_23D18D:        SBC $0543                 
CODE_23D190:        STA $00                   
CODE_23D192:        LDA $55                   
CODE_23D194:        SBC $0542                 
CODE_23D197:        BMI CODE_23D1A4           
CODE_23D199:        LDA $00                   
CODE_23D19B:        SEC                       
CODE_23D19C:        SBC #$30                  
CODE_23D19E:        BCS CODE_23D1B7                   
CODE_23D1A0:        CMP #$FD                  
CODE_23D1A2:        BCS CODE_23D1A6                   
CODE_23D1A4:        LDA #$FD                  
CODE_23D1A6:        STA $0780                 
CODE_23D1A9:        CLC                       
CODE_23D1AA:        ADC $0216                 
CODE_23D1AD:        BCS CODE_23D1B4                   
CODE_23D1AF:        LDA #$00                  
CODE_23D1B1:        STA $0780                 
CODE_23D1B4:        JMP CODE_23D1D2           

CODE_23D1B7:        LDA $00                   
CODE_23D1B9:        SEC                       
CODE_23D1BA:        SBC #$79                  
CODE_23D1BC:        BCC CODE_23D1EF           
CODE_23D1BE:        STA $0780                 
CODE_23D1C1:        CLC                       
CODE_23D1C2:        ADC $0216                 
CODE_23D1C5:        BCS CODE_23D1CB                   
CODE_23D1C7:        CMP #$EF                  
CODE_23D1C9:        BCC CODE_23D1D2           
CODE_23D1CB:        LDA #$00                  
CODE_23D1CD:        STA $0780                 
CODE_23D1D0:        LDA #$EF                  
CODE_23D1D2:        STA $0216                 
CODE_23D1D5:        LSR A                     
CODE_23D1D6:        LSR A                     
CODE_23D1D7:        STA $0218                 
CODE_23D1DA:        LDA $0216                 
CODE_23D1DD:        SEC                       
CODE_23D1DE:        SBC $0218                 
CODE_23D1E1:        STA $0218                 
CODE_23D1E4:        LDA $034F                 
CODE_23D1E7:        BEQ CODE_23D1EF           
CODE_23D1E9:        LDA $0216                 
CODE_23D1EC:        STA $0218                 
CODE_23D1EF:        LDA $0216                 
CODE_23D1F2:        STA $0543                 
CODE_23D1F5:        LDA $0217                 
CODE_23D1F8:        STA $0542                 
CODE_23D1FB:        RTL                       

CODE_23D1FC:        LDA #$00                  
CODE_23D1FE:        STA $43                   
CODE_23D200:        LDY $22                   
CODE_23D202:        LDA.w DATA_21CEED,y               
CODE_23D205:        STA $00                   
CODE_23D207:        LDA.w DATA_21CEFD,y               
CODE_23D20A:        STA $01                   
CODE_23D20C:        LDA $70                   
CODE_23D20E:        SEC                       
CODE_23D20F:        SBC $0543                 
CODE_23D212:        TAY                       
CODE_23D213:        LDA $55                   
CODE_23D215:        SBC $0542                 
CODE_23D218:        BEQ CODE_23D21D           
CODE_23D21A:        JMP CODE_23D2B5           

CODE_23D21D:        TYA                       
CODE_23D21E:        SEC                       
CODE_23D21F:        SBC #$30                  
CODE_23D221:        BCS CODE_23D24D                   
CODE_23D223:        DEC $0542                 
CODE_23D226:        CMP #$FD                  
CODE_23D228:        BCS CODE_23D22C                   
CODE_23D22A:        LDA #$FD                  
CODE_23D22C:        STA $0780                 
CODE_23D22F:        CLC                       
CODE_23D230:        ADC $0543                 
CODE_23D233:        STA $0543                 
CODE_23D236:        LDA #$00                  
CODE_23D238:        STA $25                   
CODE_23D23A:        ADC $0542                 
CODE_23D23D:        BPL CODE_23D247           
CODE_23D23F:        LDA #$00                  
CODE_23D241:        STA $0543                 
CODE_23D244:        STA $0780                 
CODE_23D247:        STA $0542                 
CODE_23D24A:        JMP CODE_23D28C           

CODE_23D24D:        TYA                       
CODE_23D24E:        SBC #$58                  
CODE_23D250:        BCC CODE_23D2B5           
CODE_23D252:        CMP #$04                  
CODE_23D254:        BCC CODE_23D258           
CODE_23D256:        LDA #$04                  
CODE_23D258:        STA $0780                 
CODE_23D25B:        CLC                       
CODE_23D25C:        ADC $0543                 
CODE_23D25F:        STA $0543                 
CODE_23D262:        LDA #$00                  
CODE_23D264:        ADC $0542                 
CODE_23D267:        STA $0542                 
CODE_23D26A:        CMP $00                   
CODE_23D26C:        PHP                       
CODE_23D26D:        LDA #$01                  
CODE_23D26F:        STA $25                   
CODE_23D271:        PLP                       
CODE_23D272:        BCC CODE_23D28C           
CODE_23D274:        BNE CODE_23D27D           
CODE_23D276:        LDA $0543                 
CODE_23D279:        CMP $01                   
CODE_23D27B:        BCC CODE_23D28C           
CODE_23D27D:        LDA $00                   
CODE_23D27F:        STA $0542                 
CODE_23D282:        LDA $01                   
CODE_23D284:        STA $0543                 
CODE_23D287:        LDA #$00                  
CODE_23D289:        STA $0780                 
CODE_23D28C:        REP #$20                  
CODE_23D28E:        LDA $0542                 
CODE_23D291:        XBA                       
CODE_23D292:        STA $0216                 
CODE_23D295:        LSR A                     
CODE_23D296:        LSR A                     
CODE_23D297:        STA $0218                 
CODE_23D29A:        LDA $0216                 
CODE_23D29D:        SEC                       
CODE_23D29E:        SBC $0218                 
CODE_23D2A1:        STA $0218                 
CODE_23D2A4:        SEP #$20                  
CODE_23D2A6:        LDA $0542                 
CODE_23D2A9:        STA $13                   
CODE_23D2AB:        LDA $0425                 
CODE_23D2AE:        BEQ CODE_23D2B5           
CODE_23D2B0:        LDA #$0F                  
CODE_23D2B2:        STA $0016                 
CODE_23D2B5:        RTL                       

CODE_23D2B6:        STZ $1CEF                 
CODE_23D2B9:        LDA $0425                 
CODE_23D2BC:        BNE CODE_23D331           
CODE_23D2BE:        LDA $058B                 
CODE_23D2C1:        BEQ CODE_23D2E4           
CODE_23D2C3:        LDA $0544                 
CODE_23D2C6:        BNE CODE_23D2E4           
CODE_23D2C8:        LDA $70                   
CODE_23D2CA:        CLC                       
CODE_23D2CB:        ADC $09                   
CODE_23D2CD:        SEC                       
CODE_23D2CE:        SBC $0543                 
CODE_23D2D1:        CMP #$A0                  
CODE_23D2D3:        BCC CODE_23D2E4           
CODE_23D2D5:        SBC #$10                  
CODE_23D2D7:        AND #$F0                  
CODE_23D2D9:        STA $0D                   
CODE_23D2DB:        LDA #$01                  
CODE_23D2DD:        STA $0C                   
CODE_23D2DF:        STA $1CEF                 
CODE_23D2E2:        BNE CODE_23D2F3           
CODE_23D2E4:        LDA $55                   
CODE_23D2E6:        STA $0C                   
CODE_23D2E8:        LDA $09                   
CODE_23D2EA:        CLC                       
CODE_23D2EB:        ADC $70                   
CODE_23D2ED:        STA $0D                   
CODE_23D2EF:        BCC CODE_23D2F3           
CODE_23D2F1:        INC $0C                   
CODE_23D2F3:        LDA $0C                   
CODE_23D2F5:        BEQ CODE_23D306           
CODE_23D2F7:        CMP #$01                  
CODE_23D2F9:        BNE CODE_23D301           
CODE_23D2FB:        LDA $0D                   
CODE_23D2FD:        CMP #$B0                  
CODE_23D2FF:        BCC CODE_23D306           
CODE_23D301:        LDA #$00                  
CODE_23D303:        STA $B4                   
CODE_23D305:        RTL                       

CODE_23D306:        LDA $43                   
CODE_23D308:        STA $0E                   
CODE_23D30A:        LDA $0A                   
CODE_23D30C:        BPL CODE_23D310           
CODE_23D30E:        DEC $0E                   
CODE_23D310:        LDA $5E                   
CODE_23D312:        CLC                       
CODE_23D313:        ADC $0A                   
CODE_23D315:        STA $0F                   
CODE_23D317:        BCC CODE_23D31B           
CODE_23D319:        INC $0E                   
CODE_23D31B:        STY $09                   
CODE_23D31D:        STX $0A                   
CODE_23D31F:        JSL CODE_209FE0           
CODE_23D323:        LDX $0A                   
CODE_23D325:        LDY $0571                 
CODE_23D328:        BNE CODE_23D32E           
CODE_23D32A:        JSL CODE_278ED2           
CODE_23D32E:        LDY $09                   
CODE_23D330:        RTL                       

CODE_23D331:        LDA $55                   
CODE_23D333:        STA $0C                   
CODE_23D335:        LDA $09                   
CODE_23D337:        CLC                       
CODE_23D338:        ADC $70                   
CODE_23D33A:        STA $0D                   
CODE_23D33C:        BCC CODE_23D340           
CODE_23D33E:        INC $0C                   
CODE_23D340:        LDA $0C                   
CODE_23D342:        BPL CODE_23D347           
CODE_23D344:        LDA #$00                  
CODE_23D346:        RTL                       

CODE_23D347:        LDA $5E                   
CODE_23D349:        CLC                       
CODE_23D34A:        ADC $0A                   
CODE_23D34C:        STA $0F                   
CODE_23D34E:        STY $09                   
CODE_23D350:        JSL CODE_209F69           
CODE_23D354:        LDY $0571                 
CODE_23D357:        BNE CODE_23D35D           
CODE_23D359:        JSL CODE_278ED2           
CODE_23D35D:        LDY #$00                  
CODE_23D35F:        STY $0E                   
CODE_23D361:        LDY $09                   
CODE_23D363:        RTL                       

CODE_23D364:        LDA #$00                  
CODE_23D366:        STA $056D                 
CODE_23D369:        LDA $0571                 
CODE_23D36C:        BEQ CODE_23D36F           
CODE_23D36E:        RTS                       

CODE_23D36F:        LDA.w DATA_21AD82                 
CODE_23D372:        STA $52                   
CODE_23D374:        LDA.w DATA_21AD82+1                 
CODE_23D377:        STA $53                   
CODE_23D379:        LDA $0563                 
CODE_23D37C:        BEQ CODE_23D396           
CODE_23D37E:        LDA $070A                 
CODE_23D381:        CMP #$03                  
CODE_23D383:        BEQ CODE_23D393           
CODE_23D385:        CMP #$0E                  
CODE_23D387:        BEQ CODE_23D393           
CODE_23D389:        LDA.w DATA_21AD80                 
CODE_23D38C:        STA $52                   
CODE_23D38E:        LDA.w DATA_21AD80+1                 
CODE_23D391:        STA $53                   
CODE_23D393:        JMP CODE_23D896           

CODE_23D396:        LDY #$26                  
CODE_23D398:        LDA $BB                   
CODE_23D39A:        BEQ CODE_23D3A3           
CODE_23D39C:        LDA $056F                 
CODE_23D39F:        BNE CODE_23D3A3           
CODE_23D3A1:        LDY #$06                  
CODE_23D3A3:        LDX #$03                  
CODE_23D3A5:        LDA $9D                   
CODE_23D3A7:        BPL CODE_23D3AE           
CODE_23D3A9:        TYA                       
CODE_23D3AA:        CLC                       
CODE_23D3AB:        ADC #$10                  
CODE_23D3AD:        TAY                       
CODE_23D3AE:        LDA $5E                   
CODE_23D3B0:        AND #$0F                  
CODE_23D3B2:        CMP #$08                  
CODE_23D3B4:        BMI CODE_23D3BB           
CODE_23D3B6:        TYA                       
CODE_23D3B7:        CLC                       
CODE_23D3B8:        ADC #$08                  
CODE_23D3BA:        TAY                       
CODE_23D3BB:        TYA                       
CODE_23D3BC:        PHA                       
CODE_23D3BD:        LDA.w DATA_21EB42,y               
CODE_23D3C0:        STA $09                   
CODE_23D3C2:        LDA.w DATA_21EB42+1,y               
CODE_23D3C5:        STA $0A                   
CODE_23D3C7:        JSL CODE_23D2B6           
CODE_23D3CB:        STA $0603,x               
CODE_23D3CE:        PHA                       
CODE_23D3CF:        AND #$C0                  
CODE_23D3D1:        ASL A                     
CODE_23D3D2:        ROL A                     
CODE_23D3D3:        ROL A                     
CODE_23D3D4:        STA $0608,x               
CODE_23D3D7:        PLA                       
CODE_23D3D8:        JSR CODE_23D4C9           
CODE_23D3DB:        PLA                       
CODE_23D3DC:        TAY                       
CODE_23D3DD:        DEY                       
CODE_23D3DE:        DEY                       
CODE_23D3DF:        DEX                       
CODE_23D3E0:        BMI CODE_23D3E5           
CODE_23D3E2:        JMP CODE_23D3BB           

CODE_23D3E5:        LDY #$02                  
CODE_23D3E7:        JSR CODE_23D4B4           
CODE_23D3EA:        BCC CODE_23D42D           
CODE_23D3EC:        LDA $0585                 
CODE_23D3EF:        BNE CODE_23D42D           
CODE_23D3F1:        INC $0574                 
CODE_23D3F4:        LDY #$01                  
CODE_23D3F6:        LDX #$00                  
CODE_23D3F8:        LDA $5E                   
CODE_23D3FA:        AND #$0F                  
CODE_23D3FC:        CMP #$08                  
CODE_23D3FE:        BPL CODE_23D403           
CODE_23D400:        LDY #$FF                  
CODE_23D402:        INX                       
CODE_23D403:        LDA $BB                   
CODE_23D405:        BNE CODE_23D409           
CODE_23D407:        INX                       
CODE_23D408:        INX                       
CODE_23D409:        LDA.w DATA_21EBA8,x               
CODE_23D40C:        CLC                       
CODE_23D40D:        ADC $5E                   
CODE_23D40F:        AND #$0F                  
CODE_23D411:        BEQ CODE_23D42D           
CODE_23D413:        TYA                       
CODE_23D414:        BPL CODE_23D418           
CODE_23D416:        DEC $43                   
CODE_23D418:        CLC                       
CODE_23D419:        ADC $5E                   
CODE_23D41B:        STA $5E                   
CODE_23D41D:        BCC CODE_23D421           
CODE_23D41F:        INC $43                   
CODE_23D421:        INY                       
CODE_23D422:        LDA $8B                   
CODE_23D424:        BPL CODE_23D428           
CODE_23D426:        DEY                       
CODE_23D427:        DEY                       
CODE_23D428:        TYA                       
CODE_23D429:        BNE CODE_23D42D           
CODE_23D42B:        STA $8B                   
CODE_23D42D:        LDA $9D                   
CODE_23D42F:        BPL CODE_23D453           
CODE_23D431:        LDA $A6                   
CODE_23D433:        BEQ CODE_23D453           
CODE_23D435:        LDY #$00                  
CODE_23D437:        JSR CODE_23D4B4           
CODE_23D43A:        BCC CODE_23D452           
CODE_23D43C:        LDA #$01                  
CODE_23D43E:        STA $1200                 
CODE_23D441:        INY                       
CODE_23D442:        STY $056D                 
CODE_23D445:        LDA $1A0F                 
CODE_23D448:        JSL CODE_27A859           ;Invert Accumulator (8-bit)
CODE_23D44C:        BPL CODE_23D450           
CODE_23D44E:        LDA #$01                  
CODE_23D450:        STA $9D                   
CODE_23D452:        RTS                       

CODE_23D453:        LDX $0609                 
CODE_23D456:        LDA $0604                 
CODE_23D459:        CMP $1E96,x               
CODE_23D45C:        BCS CODE_23D476                   
CODE_23D45E:        LDX $0608                 
CODE_23D461:        LDA $0603                 
CODE_23D464:        CMP $1E96,x               
CODE_23D467:        BCS CODE_23D476                   
CODE_23D469:        LDA $A6                   
CODE_23D46B:        BNE CODE_23D4B3           
CODE_23D46D:        STA $9D                   
CODE_23D46F:        LDA #$01                  
CODE_23D471:        STA $A6                   
CODE_23D473:        JMP CODE_23D4B3           

CODE_23D476:        LDA $1CEF                 
CODE_23D479:        BEQ CODE_23D494           
CODE_23D47B:        LDA $70                   
CODE_23D47D:        SEC                       
CODE_23D47E:        SBC $0543                 
CODE_23D481:        AND #$F0                  
CODE_23D483:        CLC                       
CODE_23D484:        ADC #$01                  
CODE_23D486:        CLC                       
CODE_23D487:        ADC $0543                 
CODE_23D48A:        STA $70                   
CODE_23D48C:        LDA #$00                  
CODE_23D48E:        ADC #$00                  
CODE_23D490:        STA $55                   
CODE_23D492:        BPL CODE_23D4AA           
CODE_23D494:        LDA $70                   
CODE_23D496:        AND #$0F                  
CODE_23D498:        CMP #$06                  
CODE_23D49A:        BCS CODE_23D4B3                   
CODE_23D49C:        LDA $70                   
CODE_23D49E:        AND #$0F                  
CODE_23D4A0:        BEQ CODE_23D4AA           
CODE_23D4A2:        CMP #$01                  
CODE_23D4A4:        BEQ CODE_23D4A8           
CODE_23D4A6:        DEC $70                   
CODE_23D4A8:        DEC $70                   
CODE_23D4AA:        LDA #$00                  
CODE_23D4AC:        STA $A6                   
CODE_23D4AE:        STA $9D                   
CODE_23D4B0:        STA $05F4                 
CODE_23D4B3:        RTS                       

CODE_23D4B4:        LDX $0609,y               
CODE_23D4B7:        LDA $0604,y               
CODE_23D4BA:        CMP $1E9A,x               
CODE_23D4BD:        BCS CODE_23D4C8                   
CODE_23D4BF:        LDX $0608,y               
CODE_23D4C2:        LDA $0603,y               
CODE_23D4C5:        CMP $1E9A,x               
CODE_23D4C8:        RTS                       

CODE_23D4C9:        TYA                       
CODE_23D4CA:        PHA                       
CODE_23D4CB:        LDY $0577                 
CODE_23D4CE:        BNE CODE_23D4FC           
CODE_23D4D0:        LDA #$32                  
CODE_23D4D2:        CMP $0603,x               
CODE_23D4D5:        BNE CODE_23D4FC           
CODE_23D4D7:        BIT $18                   
CODE_23D4D9:        BVC CODE_23D4FC                   
CODE_23D4DB:        CPX #$03                  
CODE_23D4DD:        BEQ CODE_23D4FC           
CODE_23D4DF:        LDA $0564                 
CODE_23D4E2:        BNE CODE_23D4FC           
CODE_23D4E4:        TXA                       
CODE_23D4E5:        PHA                       
CODE_23D4E6:        JSR CODE_23D548           
CODE_23D4E9:        TXA                       
CODE_23D4EA:        ASL A                     
CODE_23D4EB:        PLA                       
CODE_23D4EC:        TAX                       
CODE_23D4ED:        BCS CODE_23D4FC                   
CODE_23D4EF:        LDA #$00                  
CODE_23D4F1:        STA $0517                 
CODE_23D4F4:        LDA #$02                  
CODE_23D4F6:        JSR CODE_23DE37           
CODE_23D4F9:        JMP CODE_23D545           

CODE_23D4FC:        LDA $0603,x               
CODE_23D4FF:        CMP #$40                  
CODE_23D501:        BNE CODE_23D519           
CODE_23D503:        LDA #$01                  
CODE_23D505:        JSR CODE_23DE37           
CODE_23D508:        JSL CODE_209BB7           
CODE_23D50C:        LDA #$01                  
CODE_23D50E:        STA $1203                 
CODE_23D511:        LDA #$00                  
CODE_23D513:        STA $0604                 
CODE_23D516:        JMP CODE_23D545           

CODE_23D519:        CMP #$F2                  
CODE_23D51B:        BNE CODE_23D542           
CODE_23D51D:        CPX #$02                  
CODE_23D51F:        BPL CODE_23D542           
CODE_23D521:        LDA #$09                  
CODE_23D523:        CMP $0564                 
CODE_23D526:        BEQ CODE_23D542           
CODE_23D528:        JSR CODE_23DE37           
CODE_23D52B:        LDA #$10                  
CODE_23D52D:        STA $1CF3                 
CODE_23D530:        LDA #$0B                  
CODE_23D532:        STA $1200                 
CODE_23D535:        LDA #$84                  
CODE_23D537:        STA $0567                 
CODE_23D53A:        LDA #$04                  ; \
CODE_23D53C:        STA $1202                 ; / P-switch music
CODE_23D53F:        JMP CODE_23D545           

CODE_23D542:        JSR CODE_23D567           
CODE_23D545:        PLA                       
CODE_23D546:        TAY                       
CODE_23D547:        RTS                       

CODE_23D548:        LDX #$04                  
CODE_23D54A:        LDA $0661,x               
CODE_23D54D:        BEQ CODE_23D553           
CODE_23D54F:        DEX                       
CODE_23D550:        BPL CODE_23D54A           
CODE_23D552:        RTS                       

CODE_23D553:        JSL CODE_279C96           
CODE_23D557:        LDA #$04                  
CODE_23D559:        STA $0661,x               
CODE_23D55C:        LDA #$5C                  
CODE_23D55E:        STA $0671,x               
CODE_23D561:        LDA #$80                  
CODE_23D563:        STA $06A6,x               
CODE_23D566:        RTS                       

CODE_23D567:        TYA                       
CODE_23D568:        PHA                       
CODE_23D569:        LDY #$03                  
CODE_23D56B:        CPX #$04                  
CODE_23D56D:        BEQ CODE_23D573           
CODE_23D56F:        LDA $9D                   
CODE_23D571:        BPL CODE_23D57E           
CODE_23D573:        INY                       
CODE_23D574:        INY                       
CODE_23D575:        INY                       
CODE_23D576:        LDA $0560                 
CODE_23D579:        CMP #$08                  
CODE_23D57B:        BNE CODE_23D57E           
CODE_23D57D:        INY                       
CODE_23D57E:        LDA $0603,x               
CODE_23D581:        SEC                       
CODE_23D582:        SBC.w DATA_21EC13,y               
CODE_23D585:        CMP.w DATA_21EC03,y               
CODE_23D588:        BCC CODE_23D590           
CODE_23D58A:        DEY                       
CODE_23D58B:        BPL CODE_23D57E           
CODE_23D58D:        JMP CODE_23D619           

CODE_23D590:        CLC                       
CODE_23D591:        ADC.w DATA_21EC0B,y               
CODE_23D594:        STA $05                   
CODE_23D596:        LDA.w DATA_21EC23,x               
CODE_23D599:        AND.w DATA_21EC1B,y               
CODE_23D59C:        BEQ CODE_23D58A           
CODE_23D59E:        LDA #$10                  
CODE_23D5A0:        STA $1A45                 
CODE_23D5A3:        LDY $05                   
CODE_23D5A5:        LDA.w DATA_21EBC3,y               
CODE_23D5A8:        JSR CODE_23D61C           
CODE_23D5AB:        TYA                       
CODE_23D5AC:        BNE CODE_23D5B1           
CODE_23D5AE:        JMP CODE_23D619           

CODE_23D5B1:        BMI CODE_23D5D6           
CODE_23D5B3:        LDY $05                   
CODE_23D5B5:        ORA.w DATA_21EBE3,y               
CODE_23D5B8:        STA $057C                 
CODE_23D5BB:        LDA #$01                  
CODE_23D5BD:        STA $1200                 
CODE_23D5C0:        LDA #$02                  
CODE_23D5C2:        STA $0B                   
CODE_23D5C4:        CPX #$02                  
CODE_23D5C6:        BMI CODE_23D5D6           
CODE_23D5C8:        LDY #$02                  
CODE_23D5CA:        LDA $5E                   
CODE_23D5CC:        AND #$0F                  
CODE_23D5CE:        CMP #$08                  
CODE_23D5D0:        BMI CODE_23D5D3           
CODE_23D5D2:        INY                       
CODE_23D5D3:        JMP CODE_23D5E7           

CODE_23D5D6:        LDY #$00                  
CODE_23D5D8:        LDA $0563                 
CODE_23D5DB:        BEQ CODE_23D5E2           
CODE_23D5DD:        TXA                       
CODE_23D5DE:        BEQ CODE_23D5E7           
CODE_23D5E0:        BNE CODE_23D5E6           
CODE_23D5E2:        LDA $9D                   
CODE_23D5E4:        BPL CODE_23D5E7           
CODE_23D5E6:        INY                       
CODE_23D5E7:        STY $057D                 
CODE_23D5EA:        LDY #$06                  
CODE_23D5EC:        LDA $0661,y               
CODE_23D5EF:        BEQ CODE_23D5F2           
CODE_23D5F1:        INY                       
CODE_23D5F2:        LDA $0D                   
CODE_23D5F4:        AND #$F0                  
CODE_23D5F6:        STA $0D                   
CODE_23D5F8:        STA $0071,y               
CODE_23D5FB:        LDA $0C                   
CODE_23D5FD:        STA $0056,y               
CODE_23D600:        LDA $0E                   
CODE_23D602:        STA $0044,y               
CODE_23D605:        LDA $0F                   
CODE_23D607:        STA $005F,y               
CODE_23D60A:        JSL CODE_27A8B1           
CODE_23D60E:        LDA $057D                 
CODE_23D611:        BEQ CODE_23D619           
CODE_23D613:        LDA #$F3                  
CODE_23D615:        JSL CODE_27A75D           
CODE_23D619:        PLA                       
CODE_23D61A:        TAY                       
CODE_23D61B:        RTS                       

CODE_23D61C:        STA $00                   
CODE_23D61E:        LDA $057C                 
CODE_23D621:        BNE CODE_23D645           
CODE_23D623:        LDY #$06                  
CODE_23D625:        LDA $0661,y               
CODE_23D628:        ORA $052E                 
CODE_23D62B:        BEQ CODE_23D635           
CODE_23D62D:        LDA $0662,y               
CODE_23D630:        ORA $052F                 
CODE_23D633:        BNE CODE_23D645           
CODE_23D635:        LDY #$05                  
CODE_23D637:        LDA $0518,y               
CODE_23D63A:        BEQ CODE_23D648           
CODE_23D63C:        LDA $0F                   
CODE_23D63E:        AND #$F0                  
CODE_23D640:        CMP $005F,y               
CODE_23D643:        BNE CODE_23D648           
CODE_23D645:        LDY #$00                  
CODE_23D647:        RTS                       

CODE_23D648:        LDA $0F                   
CODE_23D64A:        AND #$F0                  
CODE_23D64C:        STA $0F                   
CODE_23D64E:        LDA $00                   
CODE_23D650:        ASL A                     
CODE_23D651:        TAY                       
CODE_23D652:        PHB                       
CODE_23D653:        PHK                       
CODE_23D654:        PLB                       
CODE_23D655:        LDA PNTR_23D663,y               
CODE_23D658:        STA $00                   
CODE_23D65A:        LDA PNTR_23D663+1,y               
CODE_23D65D:        STA $01                   
CODE_23D65F:        PLB                       
CODE_23D660:        JMP ($0000)               

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

CODE_23D67B:        LDY #$01
CODE_23D67D:        RTS

CODE_23D67E:        LDA #$00                  
CODE_23D680:        STA $0586                 
CODE_23D683:        LDY #$05                  
CODE_23D685:        LDA $BB                   
CODE_23D687:        BEQ CODE_23D68B           
CODE_23D689:        LDY #$02                  
CODE_23D68B:        RTS                       

CODE_23D68C:        LDA #$00                  
CODE_23D68E:        STA $0586                 
CODE_23D691:        LDY #$05                  
CODE_23D693:        LDA $BB                   
CODE_23D695:        BEQ CODE_23D699           
CODE_23D697:        LDY #$03                  
CODE_23D699:        RTS                       

CODE_23D69A:        LDA #$80                  
CODE_23D69C:        STA $0586                 
CODE_23D69F:        LDY #$04                  
CODE_23D6A1:        RTS                       

CODE_23D6A2:        JSR CODE_23D7D2           
CODE_23D6A5:        LDY #$01                  
CODE_23D6A7:        LDA $0F                   
CODE_23D6A9:        ORA $0E                   
CODE_23D6AB:        CMP $0582                 
CODE_23D6AE:        BNE CODE_23D6C1           
CODE_23D6B0:        LDA $0516                 
CODE_23D6B3:        BEQ CODE_23D6C1           
CODE_23D6B5:        LDA $0581                 
CODE_23D6B8:        BMI CODE_23D6C1           
CODE_23D6BA:        DEC $0581                 
CODE_23D6BD:        LDA #$17                  
CODE_23D6BF:        STA $05                   
CODE_23D6C1:        RTS                       

CODE_23D6C2:        LDA #$80                  
CODE_23D6C4:        STA $0586                 
CODE_23D6C7:        LDY #$04                  
CODE_23D6C9:        LDA $0553                 
CODE_23D6CC:        BNE CODE_23D6D1           
CODE_23D6CE:        JMP CODE_23D6A2           

CODE_23D6D1:        RTS                       

CODE_23D6D2:        JSR CODE_23D7ED           
CODE_23D6D5:        CPX #$04                  
CODE_23D6D7:        BEQ CODE_23D6E0           
CODE_23D6D9:        LDA $BB                   
CODE_23D6DB:        BNE CODE_23D6E0           
CODE_23D6DD:        LDY #$01                  
CODE_23D6DF:        RTS                       

CODE_23D6E0:        LDA #$07                  
CODE_23D6E2:        STA $1203                 
CODE_23D6E5:        JSL CODE_279544           
CODE_23D6E9:        LDA #$02                  
CODE_23D6EB:        STA $1F9C                 
CODE_23D6EE:        LDA $0543                 
CODE_23D6F1:        STA $D8                   
CODE_23D6F3:        LDA $0542                 
CODE_23D6F6:        STA $D9                   
CODE_23D6F8:        LDA $0C                   
CODE_23D6FA:        XBA                       
CODE_23D6FB:        LDA $0D                   
CODE_23D6FD:        REP #$20                  
CODE_23D6FF:        AND #$FFF0                
CODE_23D702:        SEC                       
CODE_23D703:        SBC $D8                   
CODE_23D705:        STA $DA                   
CODE_23D707:        CLC                       
CODE_23D708:        ADC #$0008                
CODE_23D70B:        STA $DC                   
CODE_23D70D:        SEP #$20                  
CODE_23D70F:        LDA $DA                   
CODE_23D711:        STA $1F9F                 
CODE_23D714:        LDA $DB                   
CODE_23D716:        STA $1FB1                 
CODE_23D719:        LDA $DC                   
CODE_23D71B:        STA $1FAB                 
CODE_23D71E:        LDA $DD                   
CODE_23D720:        STA $DF                   
CODE_23D722:        LDA $0E                   
CODE_23D724:        XBA                       
CODE_23D725:        LDA $0F                   
CODE_23D727:        REP #$20                  
CODE_23D729:        SEC                       
CODE_23D72A:        SBC $0210                 
CODE_23D72D:        SEP #$20                  
CODE_23D72F:        STA $1FA2                 
CODE_23D732:        XBA                       
CODE_23D733:        STA $02AE                 
CODE_23D736:        STZ $1FA8                 
CODE_23D739:        STZ $1FAE                 
CODE_23D73C:        LDA #$FA                  
CODE_23D73E:        STA $1FA5                 
CODE_23D741:        LDA #$01                  
CODE_23D743:        STA $069C                 
CODE_23D746:        LDY #$02                  
CODE_23D748:        STY $0B                   
CODE_23D74A:        LDY #$80                  
CODE_23D74C:        RTS                       

CODE_23D74D:        LDY #$00                  
CODE_23D74F:        LDA #$03                  
CODE_23D751:        STA $1203                 
CODE_23D754:        LDY #$06                  
CODE_23D756:        RTS                       

CODE_23D757:        LDA $0F                   
CODE_23D759:        ORA $0E                   
CODE_23D75B:        STA $0582                 
CODE_23D75E:        LDA #$09                  
CODE_23D760:        STA $0581                 
CODE_23D763:        LDA #$C8                  
CODE_23D765:        STA $0516                 
CODE_23D768:        JMP CODE_23D6A2           

CODE_23D76B:        JSL CODE_209BB7           
CODE_23D76F:        LDA #$00                  
CODE_23D771:        STA $0586                 
CODE_23D774:        LDY #$07                  
CODE_23D776:        RTS                       

CODE_23D777:        LDY #$05                  
CODE_23D779:        LDA $1FC8,y               
CODE_23D77C:        BEQ CODE_23D784           
CODE_23D77E:        DEY                       
CODE_23D77F:        BPL CODE_23D779           
CODE_23D781:        JMP CODE_23D78E           

CODE_23D784:        LDA #$16                  
CODE_23D786:        STA $1FC8,y               
CODE_23D789:        LDA #$20                  
CODE_23D78B:        STA $06C7,y               
CODE_23D78E:        LDA $0D                   
CODE_23D790:        AND #$F0                  
CODE_23D792:        SEC                       
CODE_23D793:        SBC #$10                  
CODE_23D795:        PHP                       
CODE_23D796:        CPY #$00                  
CODE_23D798:        BMI CODE_23D79D           
CODE_23D79A:        STA $05BF,y               
CODE_23D79D:        STA $052B                 
CODE_23D7A0:        PLP                       
CODE_23D7A1:        LDA $0C                   
CODE_23D7A3:        SBC #$00                  
CODE_23D7A5:        CPY #$00                  
CODE_23D7A7:        BMI CODE_23D7AC           
CODE_23D7A9:        STA $1FD7,y               
CODE_23D7AC:        STA $052A                 
CODE_23D7AF:        LDA $0F                   
CODE_23D7B1:        CPY #$00                  
CODE_23D7B3:        BMI CODE_23D7B8           
CODE_23D7B5:        STA $05C9,y               
CODE_23D7B8:        STA $0529                 
CODE_23D7BB:        LDA $0E                   
CODE_23D7BD:        STA $0528                 
CODE_23D7C0:        LDA #$12                  
CODE_23D7C2:        STA $0564                 
CODE_23D7C5:        LDY #$01                  
CODE_23D7C7:        RTS                       

CODE_23D7C8:        JSR CODE_23D6D2           
CODE_23D7CB:        BEQ CODE_23D7D1           
CODE_23D7CD:        LDA #$0C                  
CODE_23D7CF:        STA $0B                   
CODE_23D7D1:        RTS                       

CODE_23D7D2:        INC $0422                 
CODE_23D7D5:        LDA $7E3966               
CODE_23D7D9:        INC A                     
CODE_23D7DA:        STA $7E3966               
CODE_23D7DE:        LDA $0D                   
CODE_23D7E0:        STA $00                   
CODE_23D7E2:        LDA $0F                   
CODE_23D7E4:        ORA #$04                  
CODE_23D7E6:        STA $01                   
CODE_23D7E8:        JSL CODE_278AE8           
CODE_23D7EC:        RTS                       

CODE_23D7ED:        LDA $0D                   
CODE_23D7EF:        PHA                       
CODE_23D7F0:        SEC                       
CODE_23D7F1:        SBC #$10                  
CODE_23D7F3:        STA $0D                   
CODE_23D7F5:        STX $04                   
CODE_23D7F7:        JSL CODE_209FE0           
CODE_23D7FB:        LDX $04                   
CODE_23D7FD:        CMP #$40                  
CODE_23D7FF:        BNE CODE_23D80C           
CODE_23D801:        LDA #$02                  
CODE_23D803:        JSR CODE_23DE37           
CODE_23D806:        PLA                       
CODE_23D807:        STA $0D                   
CODE_23D809:        JMP CODE_23D7D2           

CODE_23D80C:        PLA                       
CODE_23D80D:        STA $0D                   
CODE_23D80F:        RTS                       

CODE_23D810:        LDA $0517                 
CODE_23D813:        CMP #$09                  
CODE_23D815:        BNE CODE_23D83A           
CODE_23D817:        LDY #$00                  
CODE_23D819:        LDA $BD                   
CODE_23D81B:        BNE CODE_23D81F           
CODE_23D81D:        LDY #$02                  
CODE_23D81F:        LDA.w DATA_21EC28,y               
CODE_23D822:        STA $09                   
CODE_23D824:        LDA.w DATA_21EC28+1,y               
CODE_23D827:        STA $0A                   
CODE_23D829:        JSL CODE_23D2B6           
CODE_23D82D:        LDX #$04                  
CODE_23D82F:        STA $0603,x               
CODE_23D832:        JSR CODE_23D567           
CODE_23D835:        LDA #$01                  
CODE_23D837:        STA $057D                 
CODE_23D83A:        RTS                       

CODE_23D83B:        LDX #$04                  
CODE_23D83D:        STA $0603,x               
CODE_23D840:        LDA $057C                 
CODE_23D843:        BNE CODE_23D895           
CODE_23D845:        JSR CODE_23D567           
CODE_23D848:        LDA $057C                 
CODE_23D84B:        BEQ CODE_23D855           
CODE_23D84D:        LDA #$01                  
CODE_23D84F:        STA $057D                 
CODE_23D852:        STA $057E                 
CODE_23D855:        LDA $0560                 
CODE_23D858:        CMP #$0A                  
CODE_23D85A:        BNE CODE_23D895           
CODE_23D85C:        LDX #$04                  
CODE_23D85E:        LDA $0518,x               
CODE_23D861:        BNE CODE_23D895           
CODE_23D863:        LDA $0C                   
CODE_23D865:        STA $56,x                 
CODE_23D867:        LDA $0D                   
CODE_23D869:        SEC                       
CODE_23D86A:        SBC #$10                  
CODE_23D86C:        BCS CODE_23D870                   
CODE_23D86E:        DEC $56,x                 
CODE_23D870:        AND #$E0                  
CODE_23D872:        ORA #$10                  
CODE_23D874:        STA $71,x                 
CODE_23D876:        LDA $0E                   
CODE_23D878:        STA $44,x                 
CODE_23D87A:        LDA $0F                   
CODE_23D87C:        AND #$E0                  
CODE_23D87E:        STA $5F,x                 
CODE_23D880:        SEC                       
CODE_23D881:        SBC $0210                 
CODE_23D884:        TAY                       
CODE_23D885:        LDA $44,x                 
CODE_23D887:        SBC $12                   
CODE_23D889:        BNE CODE_23D895           
CODE_23D88B:        CPY #$E0                  
CODE_23D88D:        BCS CODE_23D895                   
CODE_23D88F:        LDA $0607                 
CODE_23D892:        STA $0691,x               
CODE_23D895:        RTL                       

CODE_23D896:        LDY #$16                  
CODE_23D898:        LDA $056F                 
CODE_23D89B:        BNE CODE_23D8A3           
CODE_23D89D:        LDA $BB                   
CODE_23D89F:        BEQ CODE_23D8A3           
CODE_23D8A1:        LDY #$06                  
CODE_23D8A3:        LDA $5E                   
CODE_23D8A5:        AND #$0F                  
CODE_23D8A7:        CMP #$08                  
CODE_23D8A9:        BPL CODE_23D8B0           
CODE_23D8AB:        TYA                       
CODE_23D8AC:        CLC                       
CODE_23D8AD:        ADC #$08                  
CODE_23D8AF:        TAY                       
CODE_23D8B0:        LDX #$03                  
CODE_23D8B2:        JSR CODE_23DADA           
CODE_23D8B5:        JSR CODE_23D4C9           
CODE_23D8B8:        DEY                       
CODE_23D8B9:        DEY                       
CODE_23D8BA:        DEX                       
CODE_23D8BB:        BPL CODE_23D8B2           
CODE_23D8BD:        LDX #$00                  
CODE_23D8BF:        LDY #$00                  
CODE_23D8C1:        LDA $060D,x               
CODE_23D8C4:        CMP #$04                  
CODE_23D8C6:        BEQ CODE_23D915           
CODE_23D8C8:        CMP #$08                  
CODE_23D8CA:        BEQ CODE_23D915           
CODE_23D8CC:        LDY $A6                   
CODE_23D8CE:        BNE CODE_23D8D9           
CODE_23D8D0:        LDY $027F                 
CODE_23D8D3:        BNE CODE_23D8D9           
CODE_23D8D5:        CMP #$00                  
CODE_23D8D7:        BEQ CODE_23D90C           
CODE_23D8D9:        STZ $027F                 
CODE_23D8DC:        INX                       
CODE_23D8DD:        LDA $060D,x               
CODE_23D8E0:        CMP #$07                  
CODE_23D8E2:        BEQ CODE_23D8E8           
CODE_23D8E4:        CMP #$04                  
CODE_23D8E6:        BNE CODE_23D934           
CODE_23D8E8:        LDX $BB                   
CODE_23D8EA:        BEQ CODE_23D8F4           
CODE_23D8EC:        LDX #$01                  
CODE_23D8EE:        LDA $056F                 
CODE_23D8F1:        BEQ CODE_23D8F4           
CODE_23D8F3:        DEX                       
CODE_23D8F4:        LDA $70                   
CODE_23D8F6:        CLC                       
CODE_23D8F7:        ADC.w DATA_21EBA6,x               
CODE_23D8FA:        JSL CODE_27A859           ;Invert Accumulator (8-bit)
CODE_23D8FE:        AND #$0F                  
CODE_23D900:        CLC                       
CODE_23D901:        ADC $70                   
CODE_23D903:        BCC CODE_23D907           
CODE_23D905:        INC $55                   
CODE_23D907:        STA $70                   
CODE_23D909:        JMP CODE_23D926           

CODE_23D90C:        LDA $70                   
CODE_23D90E:        AND #$0F                  
CODE_23D910:        CMP #$0A                  
CODE_23D912:        BMI CODE_23D934           
CODE_23D914:        INY                       
CODE_23D915:        LDA $70                   
CODE_23D917:        AND #$F0                  
CODE_23D919:        CLC                       
CODE_23D91A:        ADC.w DATA_21EC2E,y               
CODE_23D91D:        STA $70                   
CODE_23D91F:        LDA $55                   
CODE_23D921:        ADC.w DATA_21EC2C,y               
CODE_23D924:        STA $55                   
CODE_23D926:        LDA.w DATA_21EC30,x               
CODE_23D929:        LDY $BB                   
CODE_23D92B:        BEQ CODE_23D930           
CODE_23D92D:        CLC                       
CODE_23D92E:        ADC #$10                  
CODE_23D930:        TAY                       
CODE_23D931:        JSR CODE_23DADA           
CODE_23D934:        LDY #$02                  
CODE_23D936:        JSR CODE_23D4B4           
CODE_23D939:        BCC CODE_23D979           
CODE_23D93B:        LDA $0585                 
CODE_23D93E:        BNE CODE_23D979           
CODE_23D940:        LDX #$00                  
CODE_23D942:        LDY #$01                  
CODE_23D944:        LDA $5E                   
CODE_23D946:        AND #$0F                  
CODE_23D948:        CMP #$08                  
CODE_23D94A:        BPL CODE_23D94F           
CODE_23D94C:        INX                       
CODE_23D94D:        LDY #$FF                  
CODE_23D94F:        LDA.w DATA_21EBAC,x               
CODE_23D952:        CLC                       
CODE_23D953:        ADC $5E                   
CODE_23D955:        AND #$0F                  
CODE_23D957:        BEQ CODE_23D979           
CODE_23D959:        TYA                       
CODE_23D95A:        BPL CODE_23D95E           
CODE_23D95C:        DEC $43                   
CODE_23D95E:        CLC                       
CODE_23D95F:        ADC $5E                   
CODE_23D961:        STA $5E                   
CODE_23D963:        BCC CODE_23D967           
CODE_23D965:        INC $43                   
CODE_23D967:        INY                       
CODE_23D968:        LDA $8B                   
CODE_23D96A:        BPL CODE_23D96E           
CODE_23D96C:        DEY                       
CODE_23D96D:        DEY                       
CODE_23D96E:        TYA                       
CODE_23D96F:        BNE CODE_23D979           
CODE_23D971:        STA $8B                   
CODE_23D973:        STA $0545                 
CODE_23D976:        INC $0574                 
CODE_23D979:        LDX #$00                  
CODE_23D97B:        LDY $060D                 
CODE_23D97E:        LDA.w DATA_21EBAE,y               
CODE_23D981:        BEQ CODE_23D984           
CODE_23D983:        INX                       
CODE_23D984:        LDA $5E                   
CODE_23D986:        CLC                       
CODE_23D987:        ADC.w DATA_21EB83                 
CODE_23D98A:        AND #$0F                  
CODE_23D98C:        STA $00                   
CODE_23D98E:        LDA $060D,x               
CODE_23D991:        TAY                       
CODE_23D992:        LSR A                     
CODE_23D993:        LSR A                     
CODE_23D994:        LSR A                     
CODE_23D995:        LSR A                     
CODE_23D996:        CLC                       
CODE_23D997:        ADC $53                   
CODE_23D999:        STA $53                   
CODE_23D99B:        TYA                       
CODE_23D99C:        ASL A                     
CODE_23D99D:        ASL A                     
CODE_23D99E:        ASL A                     
CODE_23D99F:        ASL A                     
CODE_23D9A0:        ORA $00                   
CODE_23D9A2:        STA $00                   
CODE_23D9A4:        LDA.w DATA_21AD5B,y               
CODE_23D9A7:        STA $0F                   
CODE_23D9A9:        LDY $00                   
CODE_23D9AB:        TXA                       
CODE_23D9AC:        BNE CODE_23D9B1           
CODE_23D9AE:        JMP CODE_23DA2C           

CODE_23D9B1:        LDA $060E                 
CODE_23D9B4:        CMP #$00                  
CODE_23D9B6:        BNE CODE_23D9D8           
CODE_23D9B8:        LDA $A6                   
CODE_23D9BA:        BNE CODE_23D9D7           
CODE_23D9BC:        LDX #$04                  
CODE_23D9BE:        LDY #$20                  
CODE_23D9C0:        LDA $5E                   
CODE_23D9C2:        AND #$0F                  
CODE_23D9C4:        CMP #$08                  
CODE_23D9C6:        BPL CODE_23D9CA           
CODE_23D9C8:        INY                       
CODE_23D9C9:        INY                       
CODE_23D9CA:        JSR CODE_23DADA           
CODE_23D9CD:        CMP #$03                  
CODE_23D9CF:        BEQ CODE_23D9D7           
CODE_23D9D1:        LDA #$00                  
CODE_23D9D3:        STA $9D                   
CODE_23D9D5:        INC $A6                   
CODE_23D9D7:        RTS                       

CODE_23D9D8:        LDX $BB                   
CODE_23D9DA:        BEQ CODE_23D9E4           
CODE_23D9DC:        LDX #$01                  
CODE_23D9DE:        LDA $056F                 
CODE_23D9E1:        BEQ CODE_23D9E4           
CODE_23D9E3:        DEX                       
CODE_23D9E4:        LDA $70                   
CODE_23D9E6:        CLC                       
CODE_23D9E7:        ADC.w DATA_21EBA6,x               
CODE_23D9EA:        AND #$0F                  
CODE_23D9EC:        STA $00                   
CODE_23D9EE:        LDA ($52),y               
CODE_23D9F0:        LSR A                     
CODE_23D9F1:        LSR A                     
CODE_23D9F2:        LSR A                     
CODE_23D9F3:        LSR A                     
CODE_23D9F4:        STA $01                   
CODE_23D9F6:        SEC                       
CODE_23D9F7:        SBC $00                   
CODE_23D9F9:        BMI CODE_23DA2B           
CODE_23D9FB:        INC $056D                 
CODE_23D9FE:        PHA                       
CODE_23D9FF:        LDA $9D                   
CODE_23DA01:        BPL CODE_23DA15           
CODE_23DA03:        LDA $1A0F                 
CODE_23DA06:        JSL CODE_27A859           ;Invert Accumulator (8-bit)
CODE_23DA0A:        BPL CODE_23DA0E           
CODE_23DA0C:        LDA #$00                  
CODE_23DA0E:        STA $9D                   
CODE_23DA10:        LDA #$01                  
CODE_23DA12:        STA $1200                 
CODE_23DA15:        PLA                       
CODE_23DA16:        LDY $060E                 
CODE_23DA19:        CPY #$03                  
CODE_23DA1B:        BNE CODE_23DA22           
CODE_23DA1D:        LDY $0585                 
CODE_23DA20:        BNE CODE_23DA2B           
CODE_23DA22:        CLC                       
CODE_23DA23:        ADC $70                   
CODE_23DA25:        STA $70                   
CODE_23DA27:        BCC CODE_23DA2B           
CODE_23DA29:        INC $55                   
CODE_23DA2B:        RTS                       

CODE_23DA2C:        LDX $0F                   
CODE_23DA2E:        LDA $A6                   
CODE_23DA30:        BEQ CODE_23DA41           
CODE_23DA32:        LDA $9D                   
CODE_23DA34:        CMP #$E4                  
CODE_23DA36:        BMI CODE_23D9D7           
CODE_23DA38:        LDA $70                   
CODE_23DA3A:        AND #$0F                  
CODE_23DA3C:        SEC                       
CODE_23DA3D:        SBC ($52),y               
CODE_23DA3F:        BMI CODE_23D9D7           
CODE_23DA41:        LDA #$00                  
CODE_23DA43:        STA $A6                   
CODE_23DA45:        STA $9D                   
CODE_23DA47:        STA $05F4                 
CODE_23DA4A:        LDA ($52),y               
CODE_23DA4C:        AND #$0F                  
CODE_23DA4E:        STA $00                   
CODE_23DA50:        LDA $70                   
CODE_23DA52:        AND #$F0                  
CODE_23DA54:        CLC                       
CODE_23DA55:        ADC $00                   
CODE_23DA57:        STA $70                   
CODE_23DA59:        BCC CODE_23DA5D           
CODE_23DA5B:        INC $55                   
CODE_23DA5D:        TXA                       
CODE_23DA5E:        BEQ CODE_23DA64           
CODE_23DA60:        EOR $8B                   
CODE_23DA62:        AND #$80                  
CODE_23DA64:        STA $0546                 
CODE_23DA67:        LDA $0575                 
CODE_23DA6A:        BEQ CODE_23DA73           
CODE_23DA6C:        LDA #$00                  
CODE_23DA6E:        STA $0545                 
CODE_23DA71:        BEQ CODE_23DAD2           
CODE_23DA73:        TXA                       
CODE_23DA74:        LDY $0545                 
CODE_23DA77:        BEQ CODE_23DA83           
CODE_23DA79:        BPL CODE_23DA7F           
CODE_23DA7B:        JSL CODE_27A859           ;Invert Accumulator (8-bit)
CODE_23DA7F:        CMP #$00                  
CODE_23DA81:        BMI CODE_23DAC2           
CODE_23DA83:        LDA $0545                 
CODE_23DA86:        BNE CODE_23DAA4           
CODE_23DA88:        TXA                       
CODE_23DA89:        BEQ CODE_23DAD2           
CODE_23DA8B:        LDY $BB                   
CODE_23DA8D:        LDA.w DATA_21AF64,y               
CODE_23DA90:        AND #$02                  
CODE_23DA92:        BNE CODE_23DAD2           
CODE_23DA94:        LDA $0577                 
CODE_23DA97:        BNE CODE_23DAD2           
CODE_23DA99:        LDA $17                   
CODE_23DA9B:        AND #$07                  
CODE_23DA9D:        CMP #$04                  
CODE_23DA9F:        BNE CODE_23DAD2           
CODE_23DAA1:        JSR CODE_23CD66           
CODE_23DAA4:        TXA                       
CODE_23DAA5:        CLC                       
CODE_23DAA6:        ADC $0545                 
CODE_23DAA9:        STA $0545                 
CODE_23DAAC:        BPL CODE_23DAB2           
CODE_23DAAE:        JSL CODE_27A859           ;Invert Accumulator (8-bit)
CODE_23DAB2:        CMP #$40                  
CODE_23DAB4:        BMI CODE_23DAC2           
CODE_23DAB6:        LDY #$40                  
CODE_23DAB8:        LDA $0545                 
CODE_23DABB:        BPL CODE_23DABF           
CODE_23DABD:        LDY #$C0                  
CODE_23DABF:        STY $0545                 
CODE_23DAC2:        DEC $0545                 
CODE_23DAC5:        BPL CODE_23DACD           
CODE_23DAC7:        INC $0545                 
CODE_23DACA:        INC $0545                 
CODE_23DACD:        LDA $0545                 
CODE_23DAD0:        STA $8B                   
CODE_23DAD2:        LDA $8B                   
CODE_23DAD4:        BEQ CODE_23DAD9           
CODE_23DAD6:        STX $0569                 
CODE_23DAD9:        RTS                       

CODE_23DADA:        LDA.w DATA_21EB82,y               
CODE_23DADD:        STA $09                   
CODE_23DADF:        LDA.w DATA_21EB83,y               
CODE_23DAE2:        STA $0A                   
CODE_23DAE4:        JSL CODE_23D2B6           
CODE_23DAE8:        STA $0603,x               
CODE_23DAEB:        AND #$C0                  
CODE_23DAED:        ASL A                     
CODE_23DAEE:        ROL A                     
CODE_23DAEF:        ROL A                     
CODE_23DAF0:        STA $0608,x               
CODE_23DAF3:        LDA $B4                   
CODE_23DAF5:        STA $060D,x               
CODE_23DAF8:        RTS                       

CODE_23DAF9:        LDA $057A                 
CODE_23DAFC:        ORA $0517                 
CODE_23DAFF:        ORA $054F                 
CODE_23DB02:        BNE CODE_23DB4E           
CODE_23DB04:        LDY $0560                 
CODE_23DB07:        LDA.w DATA_21EC32,y               
CODE_23DB0A:        STA $0F                   
CODE_23DB0C:        LDA $A6                   
CODE_23DB0E:        BNE CODE_23DB51           
CODE_23DB10:        LDA $0605                 
CODE_23DB13:        LDY $0425                 
CODE_23DB16:        BEQ CODE_23DB20           
CODE_23DB18:        LDY #$02                  
CODE_23DB1A:        CMP #$9E                  
CODE_23DB1C:        BEQ CODE_23DB2E           
CODE_23DB1E:        LDY #$00                  
CODE_23DB20:        CMP #$B5                  
CODE_23DB22:        BEQ CODE_23DB2E           
CODE_23DB24:        BIT $0F                   
CODE_23DB26:        BVC CODE_23DB51                   
CODE_23DB28:        LDY #$03                  
CODE_23DB2A:        CMP #$BF                  
CODE_23DB2C:        BNE CODE_23DB51           
CODE_23DB2E:        LDX #$00                  
CODE_23DB30:        LDA $5E                   
CODE_23DB32:        AND #$0F                  
CODE_23DB34:        CMP #$08                  
CODE_23DB36:        BMI CODE_23DB39           
CODE_23DB38:        INX                       
CODE_23DB39:        LDA $17                   
CODE_23DB3B:        AND.w DATA_21EC43,x               
CODE_23DB3E:        BEQ CODE_23DB51           
CODE_23DB40:        TYA                       
CODE_23DB41:        BNE CODE_23DB4B           
CODE_23DB43:        LDY #$01                  
CODE_23DB45:        LDA $1EB8                 
CODE_23DB48:        BEQ CODE_23DB4B           
CODE_23DB4A:        DEY                       
CODE_23DB4B:        JSR CODE_23DDCD           
CODE_23DB4E:        JMP CODE_23DBF3           

CODE_23DB51:        LDX #$02                  
CODE_23DB53:        LDA $0603                 
CODE_23DB56:        LDY $A6                   
CODE_23DB58:        BEQ CODE_23DB6B           
CODE_23DB5A:        LDY $056D                 
CODE_23DB5D:        BEQ CODE_23DB4E           
CODE_23DB5F:        LDY $056F                 
CODE_23DB62:        BEQ CODE_23DB67           
CODE_23DB64:        JMP CODE_23DBF3           

CODE_23DB67:        INX                       
CODE_23DB68:        LDA $0604                 
CODE_23DB6B:        STA $00                   
CODE_23DB6D:        STX $02                   
CODE_23DB6F:        LDA #$B0                  
CODE_23DB71:        SEC                       
CODE_23DB72:        SBC $00                   
CODE_23DB74:        CMP #$04                  
CODE_23DB76:        LDY $1EB8                 
CODE_23DB79:        BEQ CODE_23DB7D           
CODE_23DB7B:        AND #$01                  
CODE_23DB7D:        TAY                       
CODE_23DB7E:        BCC CODE_23DBA1           
CODE_23DB80:        LDY $0F                   
CODE_23DB82:        BPL CODE_23DB8F           
CODE_23DB84:        LDA #$BE                  
CODE_23DB86:        SEC                       
CODE_23DB87:        SBC $00                   
CODE_23DB89:        CMP #$02                  
CODE_23DB8B:        LDY #$06                  
CODE_23DB8D:        BCC CODE_23DBA1           
CODE_23DB8F:        LDA #$B4                  
CODE_23DB91:        LDY $0425                 
CODE_23DB94:        BEQ CODE_23DB98           
CODE_23DB96:        LDA #$92                  
CODE_23DB98:        SEC                       
CODE_23DB99:        SBC $00                   
CODE_23DB9B:        CMP #$02                  
CODE_23DB9D:        BCS CODE_23DBF3                   
CODE_23DB9F:        LDY #$04                  
CODE_23DBA1:        STY $00                   
CODE_23DBA3:        AND #$01                  
CODE_23DBA5:        ASL A                     
CODE_23DBA6:        ASL A                     
CODE_23DBA7:        ASL A                     
CODE_23DBA8:        ASL A                     
CODE_23DBA9:        STA $01                   
CODE_23DBAB:        LDA $17                   
CODE_23DBAD:        AND.w DATA_21EC43,x               
CODE_23DBB0:        BEQ CODE_23DBF3           
CODE_23DBB2:        LDA $0571                 
CODE_23DBB5:        BNE CODE_23DBF3           
CODE_23DBB7:        LDY #$00                  
CODE_23DBB9:        LDA $A6                   
CODE_23DBBB:        ORA $0563                 
CODE_23DBBE:        BNE CODE_23DBC6           
CODE_23DBC0:        INY                       
CODE_23DBC1:        LDA $BB                   
CODE_23DBC3:        BNE CODE_23DBC6           
CODE_23DBC5:        INY                       
CODE_23DBC6:        LDA $5E                   
CODE_23DBC8:        AND #$0F                  
CODE_23DBCA:        PHA                       
CODE_23DBCB:        CLC                       
CODE_23DBCC:        ADC.w DATA_21EC40,y               
CODE_23DBCF:        AND #$10                  
CODE_23DBD1:        BNE CODE_23DBD7           
CODE_23DBD3:        PLA                       
CODE_23DBD4:        ORA #$F0                  
CODE_23DBD6:        PHA                       
CODE_23DBD7:        PLA                       
CODE_23DBD8:        CLC                       
CODE_23DBD9:        ADC $01                   
CODE_23DBDB:        SEC                       
CODE_23DBDC:        SBC #$03                  
CODE_23DBDE:        CMP #$0A                  
CODE_23DBE0:        BCS CODE_23DBF3                   
CODE_23DBE2:        LDA $00                   
CODE_23DBE4:        LSR A                     
CODE_23DBE5:        TAY                       
CODE_23DBE6:        JSR CODE_23DDCD           
CODE_23DBE9:        JSL CODE_23DDBB           
CODE_23DBED:        JSR CODE_23C08A           
CODE_23DBF0:        PLA                       
CODE_23DBF1:        PLA                       
CODE_23DBF2:        RTS                       

CODE_23DBF3:        LDY $0560                 
CODE_23DBF6:        LDA $A6                   
CODE_23DBF8:        BNE CODE_23DC1B           
CODE_23DBFA:        LDA $0567                 
CODE_23DBFD:        BNE CODE_23DC1B           
CODE_23DBFF:        LDX #$01                  
CODE_23DC01:        LDA.w DATA_21AF48,y               
CODE_23DC04:        BEQ CODE_23DC1B           
CODE_23DC06:        SEC                       
CODE_23DC07:        SBC $0603,x               
CODE_23DC0A:        CMP #$02                  
CODE_23DC0C:        BCS CODE_23DC18                   
CODE_23DC0E:        TAX                       
CODE_23DC0F:        LDA.w DATA_21EC47,x               
CODE_23DC12:        STA $0569                 
CODE_23DC15:        JMP CODE_23DC1B           

CODE_23DC18:        DEX                       
CODE_23DC19:        BPL CODE_23DC01           
CODE_23DC1B:        LDX #$02                  
CODE_23DC1D:        LDA.w DATA_21AF3A,y               
CODE_23DC20:        CMP #$FF                  
CODE_23DC22:        BEQ CODE_23DC40           
CODE_23DC24:        SEC                       
CODE_23DC25:        SBC $0602,x               
CODE_23DC28:        CMP #$02                  
CODE_23DC2A:        BCC CODE_23DC31           
CODE_23DC2C:        DEX                       
CODE_23DC2D:        BPL CODE_23DC1D           
CODE_23DC2F:        BMI CODE_23DC40           
CODE_23DC31:        LDA $0577                 
CODE_23DC34:        BEQ CODE_23DC3B           
CODE_23DC36:        LDA $056D                 
CODE_23DC39:        BEQ CODE_23DC40           
CODE_23DC3B:        JSL CODE_27A4C6           
CODE_23DC3F:        RTS                       

CODE_23DC40:        LDX #$03                  
CODE_23DC42:        LDA $0603,x               
CODE_23DC45:        CMP.w DATA_21AF56,y               
CODE_23DC48:        BEQ CODE_23DC4E           
CODE_23DC4A:        CMP #$66                  
CODE_23DC4C:        BNE CODE_23DC5D           
CODE_23DC4E:        LDA $0577                 
CODE_23DC51:        BEQ CODE_23DC58           
CODE_23DC53:        LDA $056D                 
CODE_23DC56:        BEQ CODE_23DC60           
CODE_23DC58:        JSL CODE_27A4C6           
CODE_23DC5C:        RTS                       

CODE_23DC5D:        DEX                       
CODE_23DC5E:        BPL CODE_23DC42           
CODE_23DC60:        LDA $070A                 
CODE_23DC63:        CMP #$05                  
CODE_23DC65:        BNE CODE_23DC98           
CODE_23DC67:        LDY #$00                  
CODE_23DC69:        LDA $0245                 
CODE_23DC6C:        CMP #$01                  
CODE_23DC6E:        BEQ CODE_23DC75           
CODE_23DC70:        INY                       
CODE_23DC71:        CMP #$00                  
CODE_23DC73:        BNE CODE_23DC98           
CODE_23DC75:        LDX #$02                  
CODE_23DC77:        LDA $0602,x               
CODE_23DC7A:        PHA                       
CODE_23DC7B:        SEC                       
CODE_23DC7C:        SBC.w DATA_21EC4B,y               
CODE_23DC7F:        CMP #$01                  
CODE_23DC81:        PLA                       
CODE_23DC82:        BCC CODE_23DC8F           
CODE_23DC84:        CMP.w DATA_21EC4D,y               
CODE_23DC87:        BEQ CODE_23DC8F           
CODE_23DC89:        DEX                       
CODE_23DC8A:        BPL CODE_23DC77           
CODE_23DC8C:        JMP CODE_23DC98           

CODE_23DC8F:        LDA $0577                 
CODE_23DC92:        BNE CODE_23DC98           
CODE_23DC94:        JSL CODE_27A4C6           
CODE_23DC98:        LDA #$00                  
CODE_23DC9A:        STA $0589                 
CODE_23DC9D:        LDA $0560                 
CODE_23DCA0:        CMP #$0B                  
CODE_23DCA2:        BNE CODE_23DCDE           
CODE_23DCA4:        LDA $A6                   
CODE_23DCA6:        BNE CODE_23DCDE           
CODE_23DCA8:        LDX #$01                  
CODE_23DCAA:        LDA $0603,x               
CODE_23DCAD:        TAY                       
CODE_23DCAE:        SEC                       
CODE_23DCAF:        SBC #$22                  
CODE_23DCB1:        CMP #$03                  
CODE_23DCB3:        BCC CODE_23DCBD           
CODE_23DCB5:        TYA                       
CODE_23DCB6:        SEC                       
CODE_23DCB7:        SBC #$4A                  
CODE_23DCB9:        CMP #$03                  
CODE_23DCBB:        BCS CODE_23DCC3                   
CODE_23DCBD:        INC $0589                 
CODE_23DCC0:        JMP CODE_23DCDE           

CODE_23DCC3:        TYA                       
CODE_23DCC4:        SEC                       
CODE_23DCC5:        SBC #$36                  
CODE_23DCC7:        CMP #$05                  
CODE_23DCC9:        BCC CODE_23DCD3           
CODE_23DCCB:        CPY #$55                  
CODE_23DCCD:        BEQ CODE_23DCD3           
CODE_23DCCF:        CPY #$56                  
CODE_23DCD1:        BNE CODE_23DCDB           
CODE_23DCD3:        LDA #$02                  
CODE_23DCD5:        STA $0589                 
CODE_23DCD8:        JMP CODE_23DCDE           

CODE_23DCDB:        DEX                       
CODE_23DCDC:        BPL CODE_23DCAA           
CODE_23DCDE:        LDA $0560                 
CODE_23DCE1:        CMP #$00                  
CODE_23DCE3:        BNE CODE_23DD23           
CODE_23DCE5:        LDY #$01                  
CODE_23DCE7:        LDA $0603,y               
CODE_23DCEA:        SEC                       
CODE_23DCEB:        SBC #$25                  
CODE_23DCED:        CMP #$03                  
CODE_23DCEF:        BCC CODE_23DCFB           
CODE_23DCF1:        DEY                       
CODE_23DCF2:        BPL CODE_23DCE7           
CODE_23DCF4:        LDA #$00                  
CODE_23DCF6:        STA $0570                 
CODE_23DCF9:        BEQ CODE_23DD23           
CODE_23DCFB:        LDA $17                   
CODE_23DCFD:        AND #$04                  
CODE_23DCFF:        BEQ CODE_23DCF4           
CODE_23DD01:        INC $0570                 
CODE_23DD04:        LDA $0570                 
CODE_23DD07:        CMP #$F0                  
CODE_23DD09:        BNE CODE_23DD23           
CODE_23DD0B:        LDA #$F0                  
CODE_23DD0D:        STA $0588                 
CODE_23DD10:        LDA #$00                  
CODE_23DD12:        STA $9D                   
CODE_23DD14:        LDA $70                   
CODE_23DD16:        CLC                       
CODE_23DD17:        ADC #$06                  
CODE_23DD19:        STA $70                   
CODE_23DD1B:        INC $A6                   
CODE_23DD1D:        LDA $18                   
CODE_23DD1F:        AND #$7F                  
CODE_23DD21:        STA $18                   
CODE_23DD23:        LDA $0560                 
CODE_23DD26:        CMP #$02                  
CODE_23DD28:        BEQ CODE_23DD2E           
CODE_23DD2A:        CMP #$0D                  
CODE_23DD2C:        BNE CODE_23DD8F           
CODE_23DD2E:        LDA $9D                   
CODE_23DD30:        BMI CODE_23DD8F           
CODE_23DD32:        LDX #$03                  
CODE_23DD34:        LDA $0603,x               
CODE_23DD37:        CMP #$49                  
CODE_23DD39:        BEQ CODE_23DD4A           
CODE_23DD3B:        CMP #$4A                  
CODE_23DD3D:        BEQ CODE_23DD4A           
CODE_23DD3F:        DEX                       
CODE_23DD40:        BPL CODE_23DD34           
CODE_23DD42:        LDA #$00                  
CODE_23DD44:        STA $058A                 
CODE_23DD47:        JMP CODE_23DD8F           

CODE_23DD4A:        LDA #$00                  
CODE_23DD4C:        STA $056F                 
CODE_23DD4F:        STA $0545                 
CODE_23DD52:        LDA $058A                 
CODE_23DD55:        BNE CODE_23DD59           
CODE_23DD57:        LDA $70                   
CODE_23DD59:        AND #$F0                  
CODE_23DD5B:        STA $058A                 
CODE_23DD5E:        LDA $70                   
CODE_23DD60:        SEC                       
CODE_23DD61:        SBC $058A                 
CODE_23DD64:        LDY #$E0                  
CODE_23DD66:        TAX                       
CODE_23DD67:        AND #$F0                  
CODE_23DD69:        BNE CODE_23DD74           
CODE_23DD6B:        TXA                       
CODE_23DD6C:        AND #$0F                  
CODE_23DD6E:        CMP #$03                  
CODE_23DD70:        BCS CODE_23DD74                   
CODE_23DD72:        LDY #$D0                  
CODE_23DD74:        LDA $18                   
CODE_23DD76:        BMI CODE_23DD7F           
CODE_23DD78:        INC $058A                 
CODE_23DD7B:        LDY #$06                  
CODE_23DD7D:        BNE CODE_23DD84           
CODE_23DD7F:        LDA #$01                  
CODE_23DD81:        STA $1201                 
CODE_23DD84:        STY $9D                   
CODE_23DD86:        LDA $8B                   
CODE_23DD88:        ASL A                     
CODE_23DD89:        ROR $8B                   
CODE_23DD8B:        BPL CODE_23DD8F           
CODE_23DD8D:        INC $8B                   
CODE_23DD8F:        LDY $0560                 
CODE_23DD92:        CPY #$06                  
CODE_23DD94:        BNE CODE_23DDBA           
CODE_23DD96:        LDA $18                   
CODE_23DD98:        BIT #$40                  
CODE_23DD9A:        BNE CODE_23DDAB           
CODE_23DD9C:        LDA $00F8                 
CODE_23DD9F:        LDY $0726                 
CODE_23DDA2:        BEQ CODE_23DDA7           
CODE_23DDA4:        LDA $00F9                 
CODE_23DDA7:        AND #$40                  
CODE_23DDA9:        BEQ CODE_23DDBA           
CODE_23DDAB:        JSL CODE_20E803           
CODE_23DDAF:        TXA                       
CODE_23DDB0:        BEQ CODE_23DDBA           
CODE_23DDB2:        DEX                       
CODE_23DDB3:        LDA $0529                 
CODE_23DDB6:        JSL CODE_27A8D8           
CODE_23DDBA:        RTS                       

CODE_23DDBB:        LDY $BB                   
CODE_23DDBD:        BEQ CODE_23DDC1           
CODE_23DDBF:        LDY #$02                  
CODE_23DDC1:        LDA $0577                 
CODE_23DDC4:        BEQ CODE_23DDC7           
CODE_23DDC6:        INY                       
CODE_23DDC7:        LDA.w DATA_21E980,y               
CODE_23DDCA:        STA $BC                   
CODE_23DDCC:        RTL                       

CODE_23DDCD:        STX $0571                 
CODE_23DDD0:        LDA #$04                  
CODE_23DDD2:        STA $1200                 
CODE_23DDD5:        LDA $1503                 
CODE_23DDD8:        BNE CODE_23DDDF           
CODE_23DDDA:        LDA #$80                  
CODE_23DDDC:        STA $1202                 
CODE_23DDDF:        LDA #$04                  
CODE_23DDE1:        CPY #$03                  
CODE_23DDE3:        BEQ CODE_23DDFF           
CODE_23DDE5:        LDA #$05                  
CODE_23DDE7:        CPY #$02                  
CODE_23DDE9:        BEQ CODE_23DDFF           
CODE_23DDEB:        LDA #$02                  
CODE_23DDED:        CPY #$00                  
CODE_23DDEF:        BEQ CODE_23DDFF           
CODE_23DDF1:        LDA #$01                  
CODE_23DDF3:        LDY $0379                 
CODE_23DDF6:        BNE CODE_23DDFD           
CODE_23DDF8:        LDY $1EB8                 
CODE_23DDFB:        BEQ CODE_23DDFF           
CODE_23DDFD:        LDA #$03                  
CODE_23DDFF:        ASL A                     
CODE_23DE00:        ASL A                     
CODE_23DE01:        ORA $0571                 
CODE_23DE04:        STA $0571                 
CODE_23DE07:        LDA #$3C                  
CODE_23DE09:        STA $0510                 
CODE_23DE0C:        TXA                       
CODE_23DE0D:        ASL A                     
CODE_23DE0E:        TAX                       
CODE_23DE0F:        LDA $5E                   
CODE_23DE11:        CLC                       
CODE_23DE12:        ADC.w DATA_21EC4F,x               
CODE_23DE15:        CPX #$04                  
CODE_23DE17:        BPL CODE_23DE1B           
CODE_23DE19:        AND #$F0                  
CODE_23DE1B:        STA $52                   
CODE_23DE1D:        LDA $70                   
CODE_23DE1F:        CPX #$06                  
CODE_23DE21:        BNE CODE_23DE27           
CODE_23DE23:        LDY $BB                   
CODE_23DE25:        BEQ CODE_23DE2B           
CODE_23DE27:        CLC                       
CODE_23DE28:        ADC.w DATA_21EC4F+1,x               
CODE_23DE2B:        AND #$F0                  
CODE_23DE2D:        CPX #$04                  
CODE_23DE2F:        BMI CODE_23DE34           
CODE_23DE31:        SEC                       
CODE_23DE32:        SBC #$01                  
CODE_23DE34:        STA $53                   
CODE_23DE36:        RTS                       

CODE_23DE37:        STA $0564                 
CODE_23DE3A:        LDA $0C                   
CODE_23DE3C:        STA $052A                 
CODE_23DE3F:        LDA $0D                   
CODE_23DE41:        AND #$F0                  
CODE_23DE43:        STA $052B                 
CODE_23DE46:        LDA $0E                   
CODE_23DE48:        STA $0528                 
CODE_23DE4B:        LDA $0F                   
CODE_23DE4D:        AND #$F0                  
CODE_23DE4F:        STA $0529                 
CODE_23DE52:        RTS                       

CODE_23DE53:        LDX #$00                  
CODE_23DE55:        LDY #$40                  
CODE_23DE57:        LDA $8B                   
CODE_23DE59:        BPL CODE_23DE62           
CODE_23DE5B:        LDY #$C0                  
CODE_23DE5D:        EOR #$FF                  
CODE_23DE5F:        CLC                       
CODE_23DE60:        ADC #$01                  
CODE_23DE62:        STA $0F                   
CODE_23DE64:        CMP #$40                  
CODE_23DE66:        BMI CODE_23DE6A           
CODE_23DE68:        STY $8B                   
CODE_23DE6A:        LDA $8B,x                 
CODE_23DE6C:        CPX #$00                  
CODE_23DE6E:        BNE CODE_23DE74           
CODE_23DE70:        CLC                       
CODE_23DE71:        ADC $1020                 
CODE_23DE74:        PHA                       
CODE_23DE75:        ASL A                     
CODE_23DE76:        ASL A                     
CODE_23DE77:        ASL A                     
CODE_23DE78:        ASL A                     
CODE_23DE79:        STA $0B                   
CODE_23DE7B:        LDY #$00                  
CODE_23DE7D:        PLA                       
CODE_23DE7E:        LSR A                     
CODE_23DE7F:        LSR A                     
CODE_23DE80:        LSR A                     
CODE_23DE81:        LSR A                     
CODE_23DE82:        CMP #$08                  
CODE_23DE84:        BCC CODE_23DE89           
CODE_23DE86:        DEY                       
CODE_23DE87:        ORA #$F0                  
CODE_23DE89:        STA $0A                   
CODE_23DE8B:        STY $0C                   
CODE_23DE8D:        LDA $074E,x               
CODE_23DE90:        CLC                       
CODE_23DE91:        ADC $0B                   
CODE_23DE93:        STA $074E,x               
CODE_23DE96:        LDA $5E,x                 
CODE_23DE98:        ADC $0A                   
CODE_23DE9A:        STA $5E,x                 
CODE_23DE9C:        LDA $43,x                 
CODE_23DE9E:        ADC $0C                   
CODE_23DEA0:        STA $43,x                 
CODE_23DEA2:        RTL                       

CODE_23DEA3:        LDA $9D                   
CODE_23DEA5:        BMI CODE_23DEAF           
CODE_23DEA7:        CMP #$40                  
CODE_23DEA9:        BMI CODE_23DEAF           
CODE_23DEAB:        LDA #$40                  
CODE_23DEAD:        STA $9D                   
CODE_23DEAF:        LDX #$12                  
CODE_23DEB1:        JSL CODE_23DE6A           
CODE_23DEB5:        RTL                       

CODE_23DEB6:        REP #$20                  
CODE_23DEB8:        STZ $0A                   
CODE_23DEBA:        AND #$0001                
CODE_23DEBD:        BEQ CODE_23DEC4           
CODE_23DEBF:        LDA #$0400                
CODE_23DEC2:        TSB $0A                   
CODE_23DEC4:        LDA $55                   
CODE_23DEC6:        AND #$0001                
CODE_23DEC9:        BEQ CODE_23DED0           
CODE_23DECB:        LDA #$0800                
CODE_23DECE:        TSB $0A                   
CODE_23DED0:        LDA $5E                   
CODE_23DED2:        AND #$00F8                
CODE_23DED5:        LSR A                     
CODE_23DED6:        LSR A                     
CODE_23DED7:        LSR A                     
CODE_23DED8:        TSB $0A                   
CODE_23DEDA:        LDA $70                   
CODE_23DEDC:        AND #$0007                
CODE_23DEDF:        BEQ CODE_23DEEC           
CODE_23DEE1:        LDA $70                   
CODE_23DEE3:        AND #$00F8                
CODE_23DEE6:        CLC                       
CODE_23DEE7:        ADC #$0008                
CODE_23DEEA:        BRA CODE_23DEF1           

CODE_23DEEC:        LDA $70                   
CODE_23DEEE:        AND #$00F8                
CODE_23DEF1:        ASL A                     
CODE_23DEF2:        ASL A                     
CODE_23DEF3:        CLC                       
CODE_23DEF4:        ADC $0A                   
CODE_23DEF6:        STA $0A                   
CODE_23DEF8:        PHB                       
CODE_23DEF9:        PHK                       
CODE_23DEFA:        PLB                       
CODE_23DEFB:        LDX $1600                 
CODE_23DEFE:        LDA $0A                   
CODE_23DF00:        XBA                       
CODE_23DF01:        STA $1602,x               
CODE_23DF04:        INX                       
CODE_23DF05:        INX                       
CODE_23DF06:        LDA.w DATA_23DF47-2,x               
CODE_23DF09:        STA $1602,x               
CODE_23DF0C:        INX                       
CODE_23DF0D:        INX                       
CODE_23DF0E:        CMP #$FFFF                
CODE_23DF11:        BNE CODE_23DF06           
CODE_23DF13:        LDA $0A                   
CODE_23DF15:        INC A                     
CODE_23DF16:        XBA                       
CODE_23DF17:        STA $15E8,x               
CODE_23DF1A:        LDA $0A                   
CODE_23DF1C:        PHA                       
CODE_23DF1D:        AND #$03FF                
CODE_23DF20:        CMP #$03C0                
CODE_23DF23:        BCC CODE_23DF2C           
CODE_23DF25:        PLA                       
CODE_23DF26:        CLC                       
CODE_23DF27:        ADC #$0400                
CODE_23DF2A:        BRA CODE_23DF2D           

CODE_23DF2C:        PLA                       
CODE_23DF2D:        CLC                       
CODE_23DF2E:        ADC #$0040                
CODE_23DF31:        AND #$0FFF                
CODE_23DF34:        XBA                       
CODE_23DF35:        STA $15F0,x               
CODE_23DF38:        XBA                       
CODE_23DF39:        INC A                     
CODE_23DF3A:        XBA                       
CODE_23DF3B:        STA $15F8,x               
CODE_23DF3E:        DEX                       
CODE_23DF3F:        DEX                       
CODE_23DF40:        STX $1600                 
CODE_23DF43:        SEP #$20                  
CODE_23DF45:        PLB                       
CODE_23DF46:        RTS                       

DATA_23DF47:        db $80,$03,$5A,$16,$5B,$16,$00,$00
                    db $80,$03,$5A,$56,$5B,$56,$00,$00
                    db $80,$03,$5B,$16,$5A,$96,$00,$00
                    db $80,$03,$5B,$56,$5A,$D6,$FF,$FF

CODE_23DF67:        PHB                       
CODE_23DF68:        PHK                       
CODE_23DF69:        PLB                       
CODE_23DF6A:        LDA $700006               
CODE_23DF6E:        BNE CODE_23DF8A           
CODE_23DF70:        LDA $F4                   
CODE_23DF72:        AND #$C0                  
CODE_23DF74:        TSB $F2                   
CODE_23DF76:        LDA $F8                   
CODE_23DF78:        AND #$C0                  
CODE_23DF7A:        TSB $F6                   
CODE_23DF7C:        LDA $F5                   
CODE_23DF7E:        AND #$C0                  
CODE_23DF80:        TSB $F3                   
CODE_23DF82:        LDA $F9                   
CODE_23DF84:        AND #$C0                  
CODE_23DF86:        TSB $F7                   
CODE_23DF88:        BRA CODE_23DFDE           

CODE_23DF8A:        LDA $F2                   
CODE_23DF8C:        AND #$80                  
CODE_23DF8E:        LSR A                     
CODE_23DF8F:        TSB $F2                   
CODE_23DF91:        LDA $F4                   
CODE_23DF93:        AND #$C0                  
CODE_23DF95:        STA $00                   
CODE_23DF97:        LDA $F2                   
CODE_23DF99:        AND #$7F                  
CODE_23DF9B:        ORA $00                   
CODE_23DF9D:        STA $F2                   
CODE_23DF9F:        LDA $F6                   
CODE_23DFA1:        AND #$80                  
CODE_23DFA3:        LSR A                     
CODE_23DFA4:        TSB $F6                   
CODE_23DFA6:        LDA $F8                   
CODE_23DFA8:        AND #$C0                  
CODE_23DFAA:        STA $00                   
CODE_23DFAC:        LDA $F6                   
CODE_23DFAE:        AND #$7F                  
CODE_23DFB0:        ORA $00                   
CODE_23DFB2:        STA $F6                   
CODE_23DFB4:        LDA $F3                   
CODE_23DFB6:        AND #$80                  
CODE_23DFB8:        LSR A                     
CODE_23DFB9:        TSB $F3                   
CODE_23DFBB:        LDA $F5                   
CODE_23DFBD:        AND #$C0                  
CODE_23DFBF:        STA $00                   
CODE_23DFC1:        LDA $F3                   
CODE_23DFC3:        AND #$7F                  
CODE_23DFC5:        ORA $00                   
CODE_23DFC7:        STA $F3                   
CODE_23DFC9:        LDA $F7                   
CODE_23DFCB:        AND #$80                  
CODE_23DFCD:        LSR A                     
CODE_23DFCE:        TSB $F7                   
CODE_23DFD0:        LDA $F9                   
CODE_23DFD2:        AND #$C0                  
CODE_23DFD4:        STA $00                   
CODE_23DFD6:        LDA $F7                   
CODE_23DFD8:        AND #$7F                  
CODE_23DFDA:        ORA $00                   
CODE_23DFDC:        STA $F7                   
CODE_23DFDE:        PHX                       
CODE_23DFDF:        LDX $0726                 
CODE_23DFE2:        LDA $F2,x                 
CODE_23DFE4:        STA $17                   
CODE_23DFE6:        LDA $F6,x                 
CODE_23DFE8:        STA $18                   
CODE_23DFEA:        PLX                       
CODE_23DFEB:        PLB                       
CODE_23DFEC:        RTL                       

DATA_23DFED:        db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF

CODE_23E000:        JSR CODE_23E071
CODE_23E003:        LDX #$00                  
CODE_23E005:        LDY #$00                  
CODE_23E007:        JSR CODE_23E00E           
CODE_23E00A:        LDX #$23                  
CODE_23E00C:        LDY #$01                  
CODE_23E00E:        STY $00                   
CODE_23E010:        STX $01                   
CODE_23E012:        LDA $1D9C,x               
CODE_23E015:        BEQ CODE_23E021           
CODE_23E017:        LDA $1D9D,x               
CODE_23E01A:        BEQ CODE_23E021           
CODE_23E01C:        LDA $1D9E,x               
CODE_23E01F:        BNE CODE_23E022           
CODE_23E021:        RTS                       

CODE_23E022:        LDY $1D9C,x               
CODE_23E025:        LDA.w DATA_21EC71,y               
CODE_23E028:        LDY $1D9D,x               
CODE_23E02B:        ORA.w DATA_21EC71,y               
CODE_23E02E:        LDY $1D9E,x               
CODE_23E031:        ORA.w DATA_21EC71,y               
CODE_23E034:        TAY                       
CODE_23E035:        LDX $00                   
CODE_23E037:        ORA.w DATA_21EC61,y               
CODE_23E03A:        STA $1203                 
CODE_23E03D:        LDA.w DATA_21EC69,y               
CODE_23E040:        STA $19A1,x               
CODE_23E043:        LDA $1822,x               
CODE_23E046:        STA $19A5,x               
CODE_23E049:        LDA $1811,x               
CODE_23E04C:        SEC                       
CODE_23E04D:        SBC #$08                  
CODE_23E04F:        STA $19A3,x               
CODE_23E052:        LDA.w DATA_21EC59,y               
CODE_23E055:        PHA                       
CODE_23E056:        STA $19A7,x               
CODE_23E059:        CLC                       
CODE_23E05A:        ADC $0736,x               
CODE_23E05D:        STA $0736,x               
CODE_23E060:        PLA                       
CODE_23E061:        BEQ CODE_23E070           
CODE_23E063:        LDX $01                   
CODE_23E065:        LDA #$00                  
CODE_23E067:        STA $1D9C,x               
CODE_23E06A:        STA $1D9D,x               
CODE_23E06D:        STA $1D9E,x               
CODE_23E070:        RTS                       

CODE_23E071:        LDX #$01                  
CODE_23E073:        STX $00                   
CODE_23E075:        JSR CODE_23E07C           
CODE_23E078:        DEX                       
CODE_23E079:        BPL CODE_23E073           
CODE_23E07B:        RTS                       

CODE_23E07C:        LDA $19A1,x               
CODE_23E07F:        BEQ CODE_23E08A           
CODE_23E081:        CMP #$20                  
CODE_23E083:        BCC CODE_23E08B           
CODE_23E085:        LDA #$00                  
CODE_23E087:        STA $19A1,x               
CODE_23E08A:        RTS                       

CODE_23E08B:        LDA $0076                 
CODE_23E08E:        BNE CODE_23E098           
CODE_23E090:        LDA $15                   
CODE_23E092:        LSR A                     
CODE_23E093:        BCC CODE_23E098           
CODE_23E095:        INC $19A1,x               
CODE_23E098:        LDY.w DATA_21EC7A,x               
CODE_23E09B:        LDA $19A3,x               
CODE_23E09E:        SEC                       
CODE_23E09F:        SBC $19A1,x               
CODE_23E0A2:        STA $0801,y               
CODE_23E0A5:        LDA $19A5,x               
CODE_23E0A8:        STA $0800,y               
CODE_23E0AB:        LDA #$22                  
CODE_23E0AD:        STA $0803,y               
CODE_23E0B0:        LDA $19A7,x               
CODE_23E0B3:        TAX                       
CODE_23E0B4:        LDA.w DATA_21EC74,x               
CODE_23E0B7:        STA $0802,y               
CODE_23E0BA:        LDA $19A5,x               
CODE_23E0BD:        SEC                       
CODE_23E0BE:        SBC #$08                  
CODE_23E0C0:        CMP #$F1                  
CODE_23E0C2:        BCC CODE_23E0E7           
CODE_23E0C4:        LDA $0800,y               
CODE_23E0C7:        STA $0804,y               
CODE_23E0CA:        LDA $0801,y               
CODE_23E0CD:        STA $0805,y               
CODE_23E0D0:        LDA $0802,y               
CODE_23E0D3:        STA $0806,y               
CODE_23E0D6:        LDA $0803,y               
CODE_23E0D9:        STA $0807,y               
CODE_23E0DC:        TYA                       
CODE_23E0DD:        LSR A                     
CODE_23E0DE:        LSR A                     
CODE_23E0DF:        TAY                       
CODE_23E0E0:        LDA #$03                  
CODE_23E0E2:        STA $0A21,y               
CODE_23E0E5:        BRA CODE_23E0EB           

CODE_23E0E7:        TYA                       
CODE_23E0E8:        LSR A                     
CODE_23E0E9:        LSR A                     
CODE_23E0EA:        TAY                       
CODE_23E0EB:        LDA #$02                  
CODE_23E0ED:        STA $0A20,y               
CODE_23E0F0:        LDX $00                   
CODE_23E0F2:        RTS                       

CODE_23E0F3:        STZ $00                   
CODE_23E0F5:        LDA #$02                  
CODE_23E0F7:        STA $01                   
CODE_23E0F9:        LDX #$02                  
CODE_23E0FB:        LDY $01                   
CODE_23E0FD:        STX $03                   
CODE_23E0FF:        LDA $1D9C,y               
CODE_23E102:        BEQ CODE_23E148           
CODE_23E104:        TAY                       
CODE_23E105:        LDA.w DATA_21EC90,y               
CODE_23E108:        LDY $00                   
CODE_23E10A:        STA $09E2,y               
CODE_23E10D:        LDA #$D0                  
CODE_23E10F:        STA $09E1,y               
CODE_23E112:        LDX #$00                  
CODE_23E114:        CPY #$04                  
CODE_23E116:        BEQ CODE_23E11D           
CODE_23E118:        INX                       
CODE_23E119:        CPY #$0C                  
CODE_23E11B:        BNE CODE_23E129           
CODE_23E11D:        LDA $1989,x               
CODE_23E120:        BEQ CODE_23E129           
CODE_23E122:        LSR A                     
CODE_23E123:        LSR A                     
CODE_23E124:        LSR A                     
CODE_23E125:        AND #$0E                  
CODE_23E127:        BRA CODE_23E12B           

CODE_23E129:        LDA #$24                  
CODE_23E12B:        STA $09E3,y               
CODE_23E12E:        LDX $03                   
CODE_23E130:        LDA #$10                  
CODE_23E132:        CPY #$0C                  
CODE_23E134:        BCC CODE_23E138           
CODE_23E136:        LDA #$C0                  
CODE_23E138:        CLC                       
CODE_23E139:        ADC.w DATA_21EC8E,x               
CODE_23E13C:        STA $09E0,y               
CODE_23E13F:        TYA                       
CODE_23E140:        LSR A                     
CODE_23E141:        LSR A                     
CODE_23E142:        TAY                       
CODE_23E143:        LDA #$02                  
CODE_23E145:        STA $0A98,y               
CODE_23E148:        LDA $00                   
CODE_23E14A:        CLC                       
CODE_23E14B:        ADC #$04                  
CODE_23E14D:        STA $00                   
CODE_23E14F:        DEC $01                   
CODE_23E151:        DEX                       
CODE_23E152:        BMI CODE_23E156           
CODE_23E154:        BRA CODE_23E0FB           

CODE_23E156:        LDA #$0C                  
CODE_23E158:        STA $00                   
CODE_23E15A:        LDA #$25                  
CODE_23E15C:        LDY $01                   
CODE_23E15E:        BMI CODE_23E0F7           
CODE_23E160:        RTS                       

CODE_23E161:        TXA                       
CODE_23E162:        PHA                       
CODE_23E163:        REP #$30                  
CODE_23E165:        LDY #$0000                
CODE_23E168:        LDX $1600                 
CODE_23E16B:        LDA.w DATA_21EC7C,y               
CODE_23E16E:        STA $1602,x               
CODE_23E171:        INX                       
CODE_23E172:        INX                       
CODE_23E173:        INY                       
CODE_23E174:        INY                       
CODE_23E175:        CPY #$0008                
CODE_23E178:        BNE CODE_23E16B           
CODE_23E17A:        SEP #$30                  
CODE_23E17C:        LDY $0F                   
CODE_23E17E:        LDA.w DATA_21EC8C,y               
CODE_23E181:        CLC                       
CODE_23E182:        ADC $192E,y               
CODE_23E185:        STA $15FB,x               
CODE_23E188:        DEX                       
CODE_23E189:        DEX                       
CODE_23E18A:        STX $1600                 
CODE_23E18D:        PLA                       
CODE_23E18E:        TAX                       
CODE_23E18F:        RTS                       

CODE_23E190:        LDA $1930                 
CODE_23E193:        BNE CODE_23E1D3           
CODE_23E195:        LDA $F6                   
CODE_23E197:        ORA $F7                   
CODE_23E199:        AND #$10                  
CODE_23E19B:        BEQ CODE_23E1D3           
CODE_23E19D:        LDA $0076                 
CODE_23E1A0:        EOR #$01                  
CODE_23E1A2:        STA $0076                 
CODE_23E1A5:        BNE CODE_23E1BE           
CODE_23E1A7:        LDA #$F2                  
CODE_23E1A9:        STA $1202                 
CODE_23E1AC:        LDA #$43                  
CODE_23E1AE:        STA $1200                 
CODE_23E1B1:        LDX #$0E                  
CODE_23E1B3:        LDA $198B,x               
CODE_23E1B6:        STA $18CB,x               
CODE_23E1B9:        DEX                       
CODE_23E1BA:        BPL CODE_23E1B3           
CODE_23E1BC:        BMI CODE_23E1D3           
CODE_23E1BE:        LDA #$F1                  
CODE_23E1C0:        STA $1202                 
CODE_23E1C3:        LDA #$43                  
CODE_23E1C5:        STA $1200                 
CODE_23E1C8:        LDX #$0E                  
CODE_23E1CA:        LDA $18CB,x               
CODE_23E1CD:        STA $198B,x               
CODE_23E1D0:        DEX                       
CODE_23E1D1:        BPL CODE_23E1CA           
CODE_23E1D3:        LDA $0076                 
CODE_23E1D6:        BEQ CODE_23E1E2           
CODE_23E1D8:        LDX #$0E                  
CODE_23E1DA:        LDA #$FF                  
CODE_23E1DC:        STA $18CB,x               
CODE_23E1DF:        DEX                       
CODE_23E1E0:        BPL CODE_23E1DC           
CODE_23E1E2:        JSR CODE_23E1E6           
CODE_23E1E5:        RTL                       

CODE_23E1E6:        LDA $0075                 
CODE_23E1E9:        JSL CODE_20FB1F           ; ExecutePtrShort

PNTR_23E1ED:        dw CODE_23E1FD
                    dw CODE_23E2AB

DATA_23E1F1:        db $00,$01,$02,$00,$03,$04,$05,$00
                    db $00,$01,$05,$00

CODE_23E1FD:        REP #$30
CODE_23E1FF:        LDA #$0058
CODE_23E202:        STA $8D
CODE_23E204:        STA $8E                 
CODE_23E206:        LDY #$0200
CODE_23E209:        LDA #$0000
CODE_23E20C:        STA $1800,y               
CODE_23E20F:        DEY                       
CODE_23E210:        DEY                       
CODE_23E211:        BPL CODE_23E20C           
CODE_23E213:        SEP #$30                  
CODE_23E215:        LDA $15                   
CODE_23E217:        ORA #$91                  
CODE_23E219:        STA $192B                 
CODE_23E21C:        INC $0075                 
CODE_23E21F:        LDX $1F26                 
CODE_23E222:        LDA.l DATA_23E1F1,x             
CODE_23E226:        STA $199A                 
CODE_23E229:        TXA                       
CODE_23E22A:        JSL CODE_20FB1F           ; ExecutePtrShort

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

CODE_23E246:        LDA #$01
CODE_23E248:        STA $1A6D
CODE_23E24B:        RTS                 

CODE_23E24C:        LDX #$0D                  
CODE_23E24E:        TXA                       
CODE_23E24F:        STA $00,x                 
CODE_23E251:        DEX                       
CODE_23E252:        BPL CODE_23E24E           
CODE_23E254:        LDA #$FF                  
CODE_23E256:        STA $0E                   
CODE_23E258:        STA $0F                   
CODE_23E25A:        LDX #$04                  
CODE_23E25C:        JSR CODE_23E27A           
CODE_23E25F:        TAY                       
CODE_23E260:        LDA.w DATA_21EC94,y               
CODE_23E263:        STA $1824,x               
CODE_23E266:        LDA.w DATA_21ECA2,y               
CODE_23E269:        STA $1813,x               
CODE_23E26C:        LDA #$01                  
CODE_23E26E:        STA $1802,x               
CODE_23E271:        LDA #$0B                  
CODE_23E273:        STA $18BB,x               
CODE_23E276:        DEX                       
CODE_23E277:        BPL CODE_23E25C           
CODE_23E279:        RTS                       

CODE_23E27A:        JSL CODE_25F805           
CODE_23E27E:        AND #$0F                  
CODE_23E280:        TAY                       
CODE_23E281:        LDA $0000,y               
CODE_23E284:        BMI CODE_23E27A           
CODE_23E286:        PHA                       
CODE_23E287:        LDA #$FF                  
CODE_23E289:        STA $0000,y               
CODE_23E28C:        PLA                       
CODE_23E28D:        RTS                       

CODE_23E28E:        LDX #$04                  
CODE_23E290:        INC $1802,x               
CODE_23E293:        LDA #$0B                  
CODE_23E295:        STA $18BB,x               
CODE_23E298:        LDA.w DATA_21ECB5,x               
CODE_23E29B:        STA $1813,x               
CODE_23E29E:        LDA.w DATA_21ECB0,x               
CODE_23E2A1:        STA $1824,x               
CODE_23E2A4:        JSR CODE_23ED8D           
CODE_23E2A7:        DEX                       
CODE_23E2A8:        BPL CODE_23E290           
CODE_23E2AA:        RTS                       

CODE_23E2AB:        JSR CODE_23E0F3           
CODE_23E2AE:        JSR CODE_23E000           
CODE_23E2B1:        LDA $1F26                 
CODE_23E2B4:        JSL CODE_20FB1F           ; ExecutePtrShort

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

CODE_23E2D0:        JSR CODE_23E3FA
CODE_23E2D3:        JSR CODE_23ED04              
CODE_23E2D6:        JSR CODE_23EE51           
CODE_23E2D9:        JSR CODE_23F85D           
CODE_23E2DC:        JSR CODE_23F6D9           
CODE_23E2DF:        JSR CODE_23F9C3           
CODE_23E2E2:        RTS                       

CODE_23E2E3:        JSR CODE_23E3FA           
CODE_23E2E6:        JSR CODE_23EE51           
CODE_23E2E9:        JSR CODE_23F9C3           
CODE_23E2EC:        RTS                       

CODE_23E2ED:        JSR CODE_23E3FA           
CODE_23E2F0:        JSR CODE_23E31B           
CODE_23E2F3:        JSR CODE_23EE51           
CODE_23E2F6:        JSR CODE_23F9C3           
CODE_23E2F9:        RTS                       

CODE_23E2FA:        JSR CODE_23E3FA           
CODE_23E2FD:        JSR CODE_23EE51           
CODE_23E300:        JSR CODE_23F85D           
CODE_23E303:        JSR CODE_23F9C3           
CODE_23E306:        RTS                       

CODE_23E307:        LDA $15                   
CODE_23E309:        AND #$07                  
CODE_23E30B:        BNE CODE_23E31A           
CODE_23E30D:        INC $1941                 
CODE_23E310:        BNE CODE_23E31A           
CODE_23E312:        LDA #$01                  
CODE_23E314:        STA $078C                 
CODE_23E317:        JMP CODE_23E492           

CODE_23E31A:        RTS                       

CODE_23E31B:        LDA $18CB                 
CODE_23E31E:        ORA $18CC                 
CODE_23E321:        ORA $1930                 
CODE_23E324:        ORA $0076                 
CODE_23E327:        BNE CODE_23E348           
CODE_23E329:        DEC $1A6D                 
CODE_23E32C:        BNE CODE_23E338           
CODE_23E32E:        LDA #$20                  
CODE_23E330:        STA $1A6D                 
CODE_23E333:        LDA #$1C                  
CODE_23E335:        STA $1200                 
CODE_23E338:        LDA $15                   
CODE_23E33A:        AND #$07                  
CODE_23E33C:        BNE CODE_23E348           
CODE_23E33E:        LDX #$09                  
CODE_23E340:        LDA $1802,x               
CODE_23E343:        BEQ CODE_23E349           
CODE_23E345:        DEX                       
CODE_23E346:        BPL CODE_23E340           
CODE_23E348:        RTS                       

CODE_23E349:        INC $1802,x               
CODE_23E34C:        LDY #$0B                  
CODE_23E34E:        LDA $192D                 
CODE_23E351:        AND #$1C                  
CODE_23E353:        BNE CODE_23E357           
CODE_23E355:        LDY #$06                  
CODE_23E357:        TYA                       
CODE_23E358:        STA $18BB,x               
CODE_23E35B:        LDA #$B0                  
CODE_23E35D:        STA $1813,x               
CODE_23E360:        LDA #$7C                  
CODE_23E362:        STA $1824,x               
CODE_23E365:        JSL CODE_25F805           
CODE_23E369:        AND #$0F                  
CODE_23E36B:        ADC #$A8                  
CODE_23E36D:        STA $1835,x               
CODE_23E370:        JSL CODE_25F805           
CODE_23E374:        AND #$1F                  
CODE_23E376:        SBC #$10                  
CODE_23E378:        STA $1846,x               
CODE_23E37B:        JSR CODE_23ED8D           
CODE_23E37E:        INC $18A6,x               
CODE_23E381:        LDA #$30                  
CODE_23E383:        STA $191E,x               
CODE_23E386:        RTS                       

CODE_23E387:        LDX #$02                  
CODE_23E389:        LDY #$02                  
CODE_23E38B:        LDA $190E                 
CODE_23E38E:        BEQ CODE_23E392           
CODE_23E390:        LDY #$25                  
CODE_23E392:        STY $00                   
CODE_23E394:        LDA $1D9C,y               
CODE_23E397:        BNE CODE_23E3A1           
CODE_23E399:        DEY                       
CODE_23E39A:        DEX                       
CODE_23E39B:        BPL CODE_23E392           
CODE_23E39D:        LDX $190E                 
CODE_23E3A0:        RTS                       

CODE_23E3A1:        LDX #$0B                  
CODE_23E3A3:        LDA $1802,x               
CODE_23E3A6:        BEQ CODE_23E3B1           
CODE_23E3A8:        DEX                       
CODE_23E3A9:        CPX #$0A                  
CODE_23E3AB:        BNE CODE_23E3A3           
CODE_23E3AD:        LDX $190E                 
CODE_23E3B0:        RTS                       

CODE_23E3B1:        LDA #$0F                  
CODE_23E3B3:        STA $1200                 
CODE_23E3B6:        LDA $1D9C,y               
CODE_23E3B9:        TAY                       
CODE_23E3BA:        CLC                       
CODE_23E3BB:        ADC #$0B                  
CODE_23E3BD:        STA $18BB,x               
CODE_23E3C0:        LDA.w DATA_21ECB9,y               
CODE_23E3C3:        STA $1835,x               
CODE_23E3C6:        INC $1802,x               
CODE_23E3C9:        LDY $00                   
CODE_23E3CB:        LDA #$00                  
CODE_23E3CD:        STA $1D9C,y               
CODE_23E3D0:        JSR CODE_23ED8D           
CODE_23E3D3:        LDY $190E                 
CODE_23E3D6:        LDA $1822,y               
CODE_23E3D9:        STA $1824,x               
CODE_23E3DC:        ASL A                     
CODE_23E3DD:        LDA #$06                  
CODE_23E3DF:        BCC CODE_23E3E3           
CODE_23E3E1:        LDA #$FA                  
CODE_23E3E3:        STA $1846,x               
CODE_23E3E6:        LDA $1811,y               
CODE_23E3E9:        STA $1813,x               
CODE_23E3EC:        LDA #$00                  
CODE_23E3EE:        STA $1944,x               
CODE_23E3F1:        LDA #$20                  
CODE_23E3F3:        STA $18E9,x               
CODE_23E3F6:        LDX $190E                 
CODE_23E3F9:        RTS                       

CODE_23E3FA:        JSL CODE_23DF67           
CODE_23E3FE:        LDA $1930                 
CODE_23E401:        BEQ CODE_23E40A           
CODE_23E403:        STZ $0076                 
CODE_23E406:        STZ $F2                   
CODE_23E408:        STZ $F3                   
CODE_23E40A:        LDX #$01                  
CODE_23E40C:        STX $190E                 
CODE_23E40F:        LDA $F2,x                 
CODE_23E411:        AND #$03                  
CODE_23E413:        CMP #$03                  
CODE_23E415:        BNE CODE_23E419           
CODE_23E417:        DEC $F2,x                 
CODE_23E419:        LDA $F2,x                 
CODE_23E41B:        AND #$0C                  
CODE_23E41D:        CMP #$0C                  
CODE_23E41F:        BNE CODE_23E427           
CODE_23E421:        LDA $F2,x                 
CODE_23E423:        AND #$F7                  
CODE_23E425:        STA $F2,x                 
CODE_23E427:        LDA $0076                 
CODE_23E42A:        BNE CODE_23E43C           
CODE_23E42C:        LDA $18E7,x               
CODE_23E42F:        BEQ CODE_23E434           
CODE_23E431:        DEC $18E7,x               
CODE_23E434:        LDA $1989,x               
CODE_23E437:        BEQ CODE_23E43C           
CODE_23E439:        DEC $1989,x               
CODE_23E43C:        JSR CODE_23E452           
CODE_23E43F:        STZ $193F,x               
CODE_23E442:        DEX                       
CODE_23E443:        BPL CODE_23E40C           
CODE_23E445:        LDA $0076                 
CODE_23E448:        BNE CODE_23E44D           
CODE_23E44A:        JSR CODE_23EBDD           
CODE_23E44D:        JSL CODE_25F8CE           
CODE_23E451:        RTS                       

CODE_23E452:        LDA $1930                 
CODE_23E455:        BEQ CODE_23E45A           
CODE_23E457:        JMP CODE_23E46C           

CODE_23E45A:        LDA $18CB,x               
CODE_23E45D:        BEQ CODE_23E467           
CODE_23E45F:        DEC $18CB,x               
CODE_23E462:        BEQ CODE_23E467           
CODE_23E464:        JMP CODE_23E49B           

CODE_23E467:        LDY $1930                 
CODE_23E46A:        BEQ CODE_23E4D6           
CODE_23E46C:        TXA                       
CODE_23E46D:        BEQ CODE_23E478           
CODE_23E46F:        LDA $1801                 
CODE_23E472:        CMP #$02                  
CODE_23E474:        BEQ CODE_23E4D6           
CODE_23E476:        BRA CODE_23E49B           

CODE_23E478:        LDA $0076                 
CODE_23E47B:        BNE CODE_23E480           
CODE_23E47D:        DEC $1930                 
CODE_23E480:        LDA $1800                 
CODE_23E483:        CMP #$02                  
CODE_23E485:        BEQ CODE_23E4D6           
CODE_23E487:        LDA $1930                 
CODE_23E48A:        BNE CODE_23E49B           
CODE_23E48C:        INC $1930                 
CODE_23E48F:        JSR CODE_23E6CC           
CODE_23E492:        LDA #$01                  
CODE_23E494:        STA $0014                 
CODE_23E497:        STZ $0075                 
CODE_23E49A:        RTS                       

CODE_23E49B:        LDA $1800,x               
CODE_23E49E:        BEQ CODE_23E49A           
CODE_23E4A0:        LDA $0076                 
CODE_23E4A3:        ORA $1930                 
CODE_23E4A6:        BEQ CODE_23E4B9           
CODE_23E4A8:        LDA $193F,x               
CODE_23E4AB:        BEQ CODE_23E4B9           
CODE_23E4AD:        LDA $1811,x               
CODE_23E4B0:        AND #$F8                  
CODE_23E4B2:        CLC                       
CODE_23E4B3:        ADC $193F,x               
CODE_23E4B6:        STA $1811,x               
CODE_23E4B9:        LDA $1800,x               
CODE_23E4BC:        CMP #$03                  
CODE_23E4BE:        BNE CODE_23E4D2           
CODE_23E4C0:        LDA $1930                 
CODE_23E4C3:        BEQ CODE_23E4CF           
CODE_23E4C5:        LDA $1895,x               
CODE_23E4C8:        ORA #$04                  
CODE_23E4CA:        STA $1895,x               
CODE_23E4CD:        BRA CODE_23E4D2           

CODE_23E4CF:        JMP CODE_23E816           

CODE_23E4D2:        JSR CODE_23E6CC           
CODE_23E4D5:        RTS                       

CODE_23E4D6:        LDA $1800,x               
CODE_23E4D9:        JSL CODE_20FB1F           ; ExecutePtrShort

DATA_23E4DD:        dw CODE_23E4E5
                    dw CODE_23E51E
                    dw CODE_23E82C
                    dw CODE_23E78E

CODE_23E4E5:        LDY $18E7,x
CODE_23E4E8:        BEQ CODE_23E4F4           
CODE_23E4EA:        DEY                       
CODE_23E4EB:        BNE CODE_23E51D           
CODE_23E4ED:        INX                       
CODE_23E4EE:        STX $078C                 
CODE_23E4F1:        JMP CODE_23E492           

CODE_23E4F4:        LDA #$00                  
CODE_23E4F6:        STA $1844,x               
CODE_23E4F9:        STA $1833,x               
CODE_23E4FC:        LDA #$01                  
CODE_23E4FE:        STA $1800,x               
CODE_23E501:        TXA                       
CODE_23E502:        TAY                       
CODE_23E503:        LDA.w DATA_21ECC1,y               
CODE_23E506:        STA $1864,x               
CODE_23E509:        LDA #$90                  
CODE_23E50B:        STA $1811,x               
CODE_23E50E:        LDA $1F26                 
CODE_23E511:        CMP #$07                  
CODE_23E513:        BNE CODE_23E517           
CODE_23E515:        INY                       
CODE_23E516:        INY                       
CODE_23E517:        LDA.w DATA_21ECBD,y               
CODE_23E51A:        STA $1822,x               
CODE_23E51D:        RTS                       

CODE_23E51E:        JSR CODE_23E525           
CODE_23E521:        JSR CODE_23E6CC           
CODE_23E524:        RTS                       

CODE_23E525:        LDA $18B9                 
CODE_23E528:        BNE CODE_23E54C           
CODE_23E52A:        LDA $F2,x                 
CODE_23E52C:        AND #$0C                  
CODE_23E52E:        BEQ CODE_23E54C           
CODE_23E530:        AND $1895,x               
CODE_23E533:        BNE CODE_23E54C           
CODE_23E535:        LDA $190F,x               
CODE_23E538:        CMP #$C0                  
CODE_23E53A:        BNE CODE_23E54C           
CODE_23E53C:        LDA #$00                  
CODE_23E53E:        STA $1844,x               
CODE_23E541:        STA $1833,x               
CODE_23E544:        LDA #$03                  
CODE_23E546:        STA $1800,x               
CODE_23E549:        JMP CODE_23EAA1           

CODE_23E54C:        LDA $F2,x                 
CODE_23E54E:        BEQ CODE_23E555           
CODE_23E550:        LDA #$00                  
CODE_23E552:        STA $190A,x               
CODE_23E555:        LDA $18B5,x               
CODE_23E558:        BEQ CODE_23E567           
CODE_23E55A:        CMP #$08                  
CODE_23E55C:        BNE CODE_23E561           
CODE_23E55E:        JSR CODE_23E387           
CODE_23E561:        LDA #$00                  
CODE_23E563:        STA $F2,x                 
CODE_23E565:        STA $F6,x                 
CODE_23E567:        LDA $F2,x                 
CODE_23E569:        AND #$03                  
CODE_23E56B:        BEQ CODE_23E5C3           
CODE_23E56D:        STA $1864,x               
CODE_23E570:        LSR A                     
CODE_23E571:        BCC CODE_23E59B           
CODE_23E573:        LDA $F2,x                 
CODE_23E575:        AND #$40                  
CODE_23E577:        BEQ CODE_23E586           
CODE_23E579:        LDA $1844,x               
CODE_23E57C:        CMP #$18                  
CODE_23E57E:        BPL CODE_23E583           
CODE_23E580:        CLC                       
CODE_23E581:        ADC #$01                  
CODE_23E583:        JMP CODE_23E5C0           

CODE_23E586:        LDA $1844,x               
CODE_23E589:        CMP #$0C                  
CODE_23E58B:        BEQ CODE_23E598           
CODE_23E58D:        BPL CODE_23E595           
CODE_23E58F:        CLC                       
CODE_23E590:        ADC #$01                  
CODE_23E592:        JMP CODE_23E5C0           

CODE_23E595:        SEC                       
CODE_23E596:        SBC #$01                  
CODE_23E598:        JMP CODE_23E5C0           

CODE_23E59B:        LDA $F2,x                 
CODE_23E59D:        AND #$40                  
CODE_23E59F:        BEQ CODE_23E5AE           
CODE_23E5A1:        LDA $1844,x               
CODE_23E5A4:        CMP #$E9                  
CODE_23E5A6:        BMI CODE_23E5AB           
CODE_23E5A8:        SEC                       
CODE_23E5A9:        SBC #$01                  
CODE_23E5AB:        JMP CODE_23E5C0           

CODE_23E5AE:        LDA $1844,x               
CODE_23E5B1:        CMP #$F4                  
CODE_23E5B3:        BEQ CODE_23E5C0           
CODE_23E5B5:        BMI CODE_23E5BD           
CODE_23E5B7:        SEC                       
CODE_23E5B8:        SBC #$01                  
CODE_23E5BA:        JMP CODE_23E5C0           

CODE_23E5BD:        CLC                       
CODE_23E5BE:        ADC #$01                  
CODE_23E5C0:        STA $1844,x               
CODE_23E5C3:        LDA $1895,x               
CODE_23E5C6:        AND #$04                  
CODE_23E5C8:        BEQ CODE_23E5CF           
CODE_23E5CA:        LDA $1833,x               
CODE_23E5CD:        BPL CODE_23E5D2           
CODE_23E5CF:        JMP CODE_23E656           

CODE_23E5D2:        LDA $1811,x               
CODE_23E5D5:        AND #$F8                  
CODE_23E5D7:        CLC                       
CODE_23E5D8:        ADC $193F,x               
CODE_23E5DB:        STA $1811,x               
CODE_23E5DE:        LDA #$00                  
CODE_23E5E0:        STA $1833,x               
CODE_23E5E3:        STA $18F6,x               
CODE_23E5E6:        LDY $18F8,x               
CODE_23E5E9:        CPY #$C2                  
CODE_23E5EB:        BNE CODE_23E605           
CODE_23E5ED:        LDA $1895,x               
CODE_23E5F0:        AND #$C0                  
CODE_23E5F2:        LDY #$08                  
CODE_23E5F4:        CMP #$C0                  
CODE_23E5F6:        BEQ CODE_23E602           
CODE_23E5F8:        CMP #$80                  
CODE_23E5FA:        BEQ CODE_23E5FE           
CODE_23E5FC:        LDY #$F8                  
CODE_23E5FE:        TYA                       
CODE_23E5FF:        STA $1844,x               
CODE_23E602:        JMP CODE_23E60A           

CODE_23E605:        LDY $18BA                 
CODE_23E608:        BEQ CODE_23E619           
CODE_23E60A:        LDA #$12                  
CODE_23E60C:        STA $18B5,x               
CODE_23E60F:        LDA #$02                  
CODE_23E611:        STA $1200                 
CODE_23E614:        LDA #$C8                  
CODE_23E616:        JMP CODE_23E637           

CODE_23E619:        LDA $F6,x                 
CODE_23E61B:        BPL CODE_23E63A           
CODE_23E61D:        LDA #$01                  
CODE_23E61F:        STA $1201                 
CODE_23E622:        LDA #$01                  
CODE_23E624:        STA $18F6,x               
CODE_23E627:        LDA $1844,x               
CODE_23E62A:        BPL CODE_23E631           
CODE_23E62C:        EOR #$FF                  
CODE_23E62E:        CLC                       
CODE_23E62F:        ADC #$01                  
CODE_23E631:        LSR A                     
CODE_23E632:        LSR A                     
CODE_23E633:        TAY                       
CODE_23E634:        LDA.w DATA_21ECD9,y               
CODE_23E637:        STA $1833,x               
CODE_23E63A:        LDA $F2,x                 
CODE_23E63C:        AND #$03                  
CODE_23E63E:        BNE CODE_23E656           
CODE_23E640:        LDA $1844,x               
CODE_23E643:        BEQ CODE_23E656           
CODE_23E645:        BPL CODE_23E650           
CODE_23E647:        CLC                       
CODE_23E648:        ADC #$01                  
CODE_23E64A:        STA $1844,x               
CODE_23E64D:        JMP CODE_23E656           

CODE_23E650:        SEC                       
CODE_23E651:        SBC #$01                  
CODE_23E653:        STA $1844,x               
CODE_23E656:        LDY $1F26                 
CODE_23E659:        LDA.w DATA_21ECCD,y               
CODE_23E65C:        BEQ CODE_23E679           
CODE_23E65E:        LDA #$01                  
CODE_23E660:        LDY $1844,x               
CODE_23E663:        BPL CODE_23E666           
CODE_23E665:        ASL A                     
CODE_23E666:        AND $1895,x               
CODE_23E669:        BEQ CODE_23E679           
CODE_23E66B:        AND $F2,x                 
CODE_23E66D:        BEQ CODE_23E673           
CODE_23E66F:        TAY                       
CODE_23E670:        LDA.w DATA_21ECCA,y               
CODE_23E673:        STA $1844,x               
CODE_23E676:        JMP CODE_23E67C           

CODE_23E679:        JSR CODE_23F983           
CODE_23E67C:        LDA $18B7,x               
CODE_23E67F:        BEQ CODE_23E686           
CODE_23E681:        DEC $18B7,x               
CODE_23E684:        BNE CODE_23E6CB           
CODE_23E686:        LDY $1833,x               
CODE_23E689:        BPL CODE_23E6AD           
CODE_23E68B:        LDA $1895,x               
CODE_23E68E:        AND #$08                  
CODE_23E690:        BEQ CODE_23E6AD           
CODE_23E692:        TYA                       
CODE_23E693:        EOR #$FF                  
CODE_23E695:        LSR A                     
CODE_23E696:        LSR A                     
CODE_23E697:        LSR A                     
CODE_23E698:        ADC #$04                  
CODE_23E69A:        STA $18B7,x               
CODE_23E69D:        LDA #$00                  
CODE_23E69F:        STA $1833,x               
CODE_23E6A2:        LDA $1811,x               
CODE_23E6A5:        AND #$F0                  
CODE_23E6A7:        CLC                       
CODE_23E6A8:        ADC #$0E                  
CODE_23E6AA:        STA $1811,x               
CODE_23E6AD:        JSR CODE_23F98F           
CODE_23E6B0:        LDA $1833,x               
CODE_23E6B3:        BMI CODE_23E6B9           
CODE_23E6B5:        CMP #$40                  
CODE_23E6B7:        BCS CODE_23E6CB                   
CODE_23E6B9:        LDA $1833,x               
CODE_23E6BC:        BPL CODE_23E6C2           
CODE_23E6BE:        LDY $F2,x                 
CODE_23E6C0:        BMI CODE_23E6C5           
CODE_23E6C2:        CLC                       
CODE_23E6C3:        ADC #$03                  
CODE_23E6C5:        CLC                       
CODE_23E6C6:        ADC #$02                  
CODE_23E6C8:        STA $1833,x               
CODE_23E6CB:        RTS                       

CODE_23E6CC:        LDA $1930                 
CODE_23E6CF:        BEQ CODE_23E6F5           
CODE_23E6D1:        TXA                       
CODE_23E6D2:        EOR $078C                 
CODE_23E6D5:        AND #$01                  
CODE_23E6D7:        BNE CODE_23E6F5           
CODE_23E6D9:        LDA $1895,x               
CODE_23E6DC:        BIT #$04                  
CODE_23E6DE:        BEQ CODE_23E6F2           
CODE_23E6E0:        LDA $8D,x                 
CODE_23E6E2:        CMP #$98                  
CODE_23E6E4:        BEQ CODE_23E6EA           
CODE_23E6E6:        CMP #$58                  
CODE_23E6E8:        BNE CODE_23E6F2           
CODE_23E6EA:        LDA #$98                  
CODE_23E6EC:        STA $8D,x                 
CODE_23E6EE:        JSR CODE_23EAA1           
CODE_23E6F1:        RTS                       

CODE_23E6F2:        JSR CODE_23E525           
CODE_23E6F5:        LDY #$58                  
CODE_23E6F7:        LDA $1844,x               
CODE_23E6FA:        BNE CODE_23E701           
CODE_23E6FC:        STA $1855,x               
CODE_23E6FF:        BEQ CODE_23E748           
CODE_23E701:        LDY #$01                  
CODE_23E703:        ASL A                     
CODE_23E704:        BCC CODE_23E707           
CODE_23E706:        INY                       
CODE_23E707:        TYA                       
CODE_23E708:        LDY #$68                  
CODE_23E70A:        CMP $1864,x               
CODE_23E70D:        BNE CODE_23E748           
CODE_23E70F:        LDA $18CB                 
CODE_23E712:        ORA $18CC                 
CODE_23E715:        ORA $1930                 
CODE_23E718:        BNE CODE_23E734           
CODE_23E71A:        LDA $1844,x               
CODE_23E71D:        BPL CODE_23E722           
CODE_23E71F:        EOR #$FF                  
CODE_23E721:        INC A                     
CODE_23E722:        LSR A                     
CODE_23E723:        LSR A                     
CODE_23E724:        TAY                       
CODE_23E725:        LDA $199C,x               
CODE_23E728:        CLC                       
CODE_23E729:        ADC.w DATA_21ECC3,y               
CODE_23E72C:        STA $199C,x               
CODE_23E72F:        BCC CODE_23E734           
CODE_23E731:        INC $199E,x               
CODE_23E734:        LDA $199E,x               
CODE_23E737:        TAY                       
CODE_23E738:        TYA                       
CODE_23E739:        BEQ CODE_23E742           
CODE_23E73B:        BIT #$01                  
CODE_23E73D:        BNE CODE_23E746           
CODE_23E73F:        STZ $199E,x               
CODE_23E742:        LDY #$58                  
CODE_23E744:        BRA CODE_23E748           

CODE_23E746:        LDY #$60                  
CODE_23E748:        LDA $1895,x               
CODE_23E74B:        AND #$04                  
CODE_23E74D:        BNE CODE_23E75E           
CODE_23E74F:        LDA $18F6,x               
CODE_23E752:        BNE CODE_23E759           
CODE_23E754:        LDY #$60                  
CODE_23E756:        JMP CODE_23E776           

CODE_23E759:        LDY #$70                  
CODE_23E75B:        JMP CODE_23E776           

CODE_23E75E:        LDA $18B5,x               
CODE_23E761:        BEQ CODE_23E76A           
CODE_23E763:        DEC $18B5,x               
CODE_23E766:        LDY #$78                  
CODE_23E768:        BRA CODE_23E776           

CODE_23E76A:        LDA $18B3,x               
CODE_23E76D:        BEQ CODE_23E776           
CODE_23E76F:        DEC $18B3,x               
CODE_23E772:        LDY #$80                  
CODE_23E774:        BRA CODE_23E776           

CODE_23E776:        TYA                       
CODE_23E777:        STA $8D,x                 
CODE_23E779:        CMP #$68                  
CODE_23E77B:        BNE CODE_23E787           
CODE_23E77D:        LDA $1201                 
CODE_23E780:        BNE CODE_23E787           
CODE_23E782:        LDA #$04                  
CODE_23E784:        STA $1201                 
CODE_23E787:        JSR CODE_23EAA1           
CODE_23E78A:        JSR CODE_23E864           
CODE_23E78D:        RTS                       

CODE_23E78E:        LDA $F2,x                 
CODE_23E790:        AND #$0C                  
CODE_23E792:        BEQ CODE_23E7B0           
CODE_23E794:        AND $1895,x               
CODE_23E797:        BNE CODE_23E7B0           
CODE_23E799:        LDA $1822,x               
CODE_23E79C:        AND #$0F                  
CODE_23E79E:        BEQ CODE_23E7B0           
CODE_23E7A0:        CMP #$08                  
CODE_23E7A2:        LDY #$01                  
CODE_23E7A4:        BCS CODE_23E7A8                   
CODE_23E7A6:        LDY #$FF                  
CODE_23E7A8:        TYA                       
CODE_23E7A9:        CLC                       
CODE_23E7AA:        ADC $1822,x               
CODE_23E7AD:        STA $1822,x               
CODE_23E7B0:        LDA $F2,x                 
CODE_23E7B2:        AND #$0C                  
CODE_23E7B4:        BEQ CODE_23E7E6           
CODE_23E7B6:        STA $00                   
CODE_23E7B8:        AND $1895,x               
CODE_23E7BB:        BNE CODE_23E806           
CODE_23E7BD:        LDA $00                   
CODE_23E7BF:        CMP #$08                  
CODE_23E7C1:        BNE CODE_23E7E0           
CODE_23E7C3:        LDA #$C0                  
CODE_23E7C5:        CMP $190F,x               
CODE_23E7C8:        BNE CODE_23E806           
CODE_23E7CA:        DEC $1811,x               
CODE_23E7CD:        JSR CODE_23E864           
CODE_23E7D0:        LDA $190F,x               
CODE_23E7D3:        CMP #$C0                  
CODE_23E7D5:        BEQ CODE_23E7DA           
CODE_23E7D7:        INC $1811,x               
CODE_23E7DA:        INC $1855,x               
CODE_23E7DD:        JMP CODE_23E816           

CODE_23E7E0:        INC $1811,x               
CODE_23E7E3:        INC $1855,x               
CODE_23E7E6:        LDA $F2,x                 
CODE_23E7E8:        AND #$03                  
CODE_23E7EA:        STA $00                   
CODE_23E7EC:        AND $1895,x               
CODE_23E7EF:        BNE CODE_23E7FF           
CODE_23E7F1:        LSR $00                   
CODE_23E7F3:        BCC CODE_23E7F8           
CODE_23E7F5:        INC $1822,x               
CODE_23E7F8:        LSR $00                   
CODE_23E7FA:        BCC CODE_23E7FF           
CODE_23E7FC:        DEC $1822,x               
CODE_23E7FF:        LDA $190F,x               
CODE_23E802:        CMP #$C0                  
CODE_23E804:        BEQ CODE_23E816           
CODE_23E806:        LDA #$01                  
CODE_23E808:        STA $1800,x               
CODE_23E80B:        LDA #$00                  
CODE_23E80D:        STA $1844,x               
CODE_23E810:        STA $1833,x               
CODE_23E813:        STA $18F6,x               
CODE_23E816:        LDA #$88                  
CODE_23E818:        STA $8D,x                 
CODE_23E81A:        JSR CODE_23E864           
CODE_23E81D:        LDA $1855,x               
CODE_23E820:        AND #$04                  
CODE_23E822:        LSR A                     
CODE_23E823:        LSR A                     
CODE_23E824:        ADC #$01                  
CODE_23E826:        STA $1864,x               
CODE_23E829:        JMP CODE_23EAA1           

CODE_23E82C:        LDA #$90                  
CODE_23E82E:        STA $8D,x                 
CODE_23E830:        JSR CODE_23EAA1           
CODE_23E833:        LDA $18E7,x               
CODE_23E836:        BNE CODE_23E863           
CODE_23E838:        JSR CODE_23F98F           
CODE_23E83B:        LDA $1833,x               
CODE_23E83E:        BMI CODE_23E844           
CODE_23E840:        CMP #$40                  
CODE_23E842:        BCS CODE_23E84A                   
CODE_23E844:        INC $1833,x               
CODE_23E847:        INC $1833,x               
CODE_23E84A:        LDA $1811,x               
CODE_23E84D:        CMP #$EF                  
CODE_23E84F:        BCC CODE_23E863           
CODE_23E851:        LDA $1942,x               
CODE_23E854:        BNE CODE_23E863           
CODE_23E856:        LDA #$40                  
CODE_23E858:        STA $18E7,x               
CODE_23E85B:        STA $190A,x               
CODE_23E85E:        LDA #$00                  
CODE_23E860:        STA $1800,x               
CODE_23E863:        RTS                       

CODE_23E864:        LDA #$00                  
CODE_23E866:        STA $1895,x               
CODE_23E869:        STA $18F8,x               
CODE_23E86C:        STA $190F,x               
CODE_23E86F:        LDY #$05                  
CODE_23E871:        STY $0F                   
CODE_23E873:        LDA $1811,x               
CODE_23E876:        CLC                       
CODE_23E877:        ADC.w DATA_21ECF3,y               
CODE_23E87A:        AND #$F0                  
CODE_23E87C:        STA $00                   
CODE_23E87E:        CPX #$02                  
CODE_23E880:        BCC CODE_23E88E           
CODE_23E882:        LDA $18B9,x               
CODE_23E885:        CMP #$0B                  
CODE_23E887:        BNE CODE_23E88E           
CODE_23E889:        TYA                       
CODE_23E88A:        CLC                       
CODE_23E88B:        ADC #$06                  
CODE_23E88D:        TAY                       
CODE_23E88E:        LDA $1822,x               
CODE_23E891:        CLC                       
CODE_23E892:        ADC.w DATA_21ECE7,y               
CODE_23E895:        STA $01                   
CODE_23E897:        JSR CODE_23EA61           
CODE_23E89A:        LDY $0F                   
CODE_23E89C:        BCS CODE_23E8A1                   
CODE_23E89E:        JMP CODE_23E9E8           

CODE_23E8A1:        CPY #$02                  
CODE_23E8A3:        BCS CODE_23E900                   
CODE_23E8A5:        LDA $1811,x               
CODE_23E8A8:        CMP #$D0                  
CODE_23E8AA:        BCS CODE_23E8FD                   
CODE_23E8AC:        AND #$0F                  
CODE_23E8AE:        CMP #$09                  
CODE_23E8B0:        BCS CODE_23E8B5                   
CODE_23E8B2:        JMP CODE_23E9E8           

CODE_23E8B5:        CPX #$02                  
CODE_23E8B7:        BCS CODE_23E8FD                   
CODE_23E8B9:        LDA $1833,x               
CODE_23E8BC:        BPL CODE_23E8FD           
CODE_23E8BE:        LDA $180F,x               
CODE_23E8C1:        BNE CODE_23E8FD           
CODE_23E8C3:        LDA $1F26                 
CODE_23E8C6:        CMP #$0B                  
CODE_23E8C8:        BEQ CODE_23E8FD           
CODE_23E8CA:        LDA #$00                  
CODE_23E8CC:        STA $2E                   
CODE_23E8CE:        LDA #$20                  
CODE_23E8D0:        STA $2F                   
CODE_23E8D2:        LDA #$7E                  
CODE_23E8D4:        STA $30                   
CODE_23E8D6:        LDY $02                   
CODE_23E8D8:        LDA #$C2                  
CODE_23E8DA:        STA [$2E],y               
CODE_23E8DC:        TYA                       
CODE_23E8DD:        STA $1908,x               
CODE_23E8E0:        LDA $1811,x               
CODE_23E8E3:        AND #$F0                  
CODE_23E8E5:        STA $1820,x               
CODE_23E8E8:        LDA $1822,x               
CODE_23E8EB:        CLC                       
CODE_23E8EC:        ADC #$08                  
CODE_23E8EE:        AND #$F0                  
CODE_23E8F0:        STA $1831,x               
CODE_23E8F3:        LDA #$0E                  
CODE_23E8F5:        STA $180F,x               
CODE_23E8F8:        LDA #$E0                  
CODE_23E8FA:        STA $1842,x               
CODE_23E8FD:        JMP CODE_23E9B3           

CODE_23E900:        CPY #$04                  
CODE_23E902:        BCS CODE_23E981                   
CODE_23E904:        CPX #$02                  
CODE_23E906:        BCS CODE_23E97E                   
CODE_23E908:        CMP #$50                  
CODE_23E90A:        BEQ CODE_23E97E           
CODE_23E90C:        LDA $1F26                 
CODE_23E90F:        CMP #$0B                  
CODE_23E911:        BNE CODE_23E97E           
CODE_23E913:        LDA $F6,x                 
CODE_23E915:        AND #$40                  
CODE_23E917:        BEQ CODE_23E97E           
CODE_23E919:        LDA #$0C                  
CODE_23E91B:        STA $18B3,x               
CODE_23E91E:        LDA #$03                  
CODE_23E920:        STA $1200                 
CODE_23E923:        LDA #$00                  
CODE_23E925:        STA $2E                   
CODE_23E927:        LDA #$20                  
CODE_23E929:        STA $2F                   
CODE_23E92B:        LDA #$7E                  
CODE_23E92D:        STA $30                   
CODE_23E92F:        LDY $02                   
CODE_23E931:        LDA #$00                  
CODE_23E933:        STA [$2E],y               
CODE_23E935:        JSR CODE_23EA0F           
CODE_23E938:        LDX #$06                  
CODE_23E93A:        LDA $1802,x               
CODE_23E93D:        BEQ CODE_23E944           
CODE_23E93F:        DEX                       
CODE_23E940:        BPL CODE_23E93A           
CODE_23E942:        LDX #$06                  
CODE_23E944:        STX $00                   
CODE_23E946:        JSR CODE_23ED8D           
CODE_23E949:        INC $1802,x               
CODE_23E94C:        LDA #$0F                  
CODE_23E94E:        STA $18BB,x               
CODE_23E951:        LDA $02                   
CODE_23E953:        AND #$F0                  
CODE_23E955:        STA $1813,x               
CODE_23E958:        LDA $02                   
CODE_23E95A:        ASL A                     
CODE_23E95B:        ASL A                     
CODE_23E95C:        ASL A                     
CODE_23E95D:        ASL A                     
CODE_23E95E:        STA $1824,x               
CODE_23E961:        LDA #$C0                  
CODE_23E963:        STA $1835,x               
CODE_23E966:        LDY #$10                  
CODE_23E968:        LDA $1824,x               
CODE_23E96B:        LDX $190E                 
CODE_23E96E:        CMP $1822,x               
CODE_23E971:        BCS CODE_23E975                   
CODE_23E973:        LDY #$F0                  
CODE_23E975:        LDX $00                   
CODE_23E977:        TYA                       
CODE_23E978:        STA $1846,x               
CODE_23E97B:        LDX $190E                 
CODE_23E97E:        JMP CODE_23E9B3           

CODE_23E981:        LDA $1811,x               
CODE_23E984:        AND #$0F                  
CODE_23E986:        CMP #$06                  
CODE_23E988:        BCS CODE_23E9E8                   
CODE_23E98A:        LDA $1833,x               
CODE_23E98D:        BMI CODE_23E9E8           
CODE_23E98F:        LDY $02                   
CODE_23E991:        LDA $18F8,x               
CODE_23E994:        CMP #$C2                  
CODE_23E996:        BEQ CODE_23E9B3           
CODE_23E998:        LDA #$00                  
CODE_23E99A:        STA $2E                   
CODE_23E99C:        LDA #$20                  
CODE_23E99E:        STA $2F                   
CODE_23E9A0:        LDA #$7E                  
CODE_23E9A2:        STA $30                   
CODE_23E9A4:        LDA [$2E],y               
CODE_23E9A6:        CMP #$FE                  
CODE_23E9A8:        BCC CODE_23E9B0           
CODE_23E9AA:        AND #$01                  
CODE_23E9AC:        TAY                       
CODE_23E9AD:        LDA.w DATA_21EC57,y               
CODE_23E9B0:        STA $18F8,x               
CODE_23E9B3:        LDY $0F                   
CODE_23E9B5:        LDA $1895,x               
CODE_23E9B8:        ORA.w DATA_21ECFF,y               
CODE_23E9BB:        STA $1895,x               
CODE_23E9BE:        CPX #$02                  
CODE_23E9C0:        BCC CODE_23E9C9           
CODE_23E9C2:        LDA $18B9,x               
CODE_23E9C5:        CMP #$01                  
CODE_23E9C7:        BEQ CODE_23E9DF           
CODE_23E9C9:        LDY $02                   
CODE_23E9CB:        LDA #$00                  
CODE_23E9CD:        STA $2E                   
CODE_23E9CF:        LDA #$20                  
CODE_23E9D1:        STA $2F                   
CODE_23E9D3:        LDA #$7E                  
CODE_23E9D5:        STA $30                   
CODE_23E9D7:        LDA [$2E],y               
CODE_23E9D9:        LDY $0F                   
CODE_23E9DB:        CMP #$C2                  
CODE_23E9DD:        BNE CODE_23E9E8           
CODE_23E9DF:        LDA $1895,x               
CODE_23E9E2:        ORA.w DATA_21ED05,y               
CODE_23E9E5:        STA $1895,x               
CODE_23E9E8:        CPY #$02                  
CODE_23E9EA:        BCS CODE_23EA06                   
CODE_23E9EC:        LDY $02                   
CODE_23E9EE:        LDA $190F,x               
CODE_23E9F1:        CMP #$C0                  
CODE_23E9F3:        BEQ CODE_23EA06           
CODE_23E9F5:        LDA #$00                  
CODE_23E9F7:        STA $2E                   
CODE_23E9F9:        LDA #$20                  
CODE_23E9FB:        STA $2F                   
CODE_23E9FD:        LDA #$7E                  
CODE_23E9FF:        STA $30                   
CODE_23EA01:        LDA [$2E],y               
CODE_23EA03:        STA $190F,x               
CODE_23EA06:        LDY $0F                   
CODE_23EA08:        DEY                       
CODE_23EA09:        BMI CODE_23EA0E           
CODE_23EA0B:        JMP CODE_23E871           

CODE_23EA0E:        RTS                       

CODE_23EA0F:        LDY $1600                 
CODE_23EA12:        LDA #$08                  
CODE_23EA14:        STA $03                   
CODE_23EA16:        LDA $02                   
CODE_23EA18:        AND #$F0                  
CODE_23EA1A:        ASL A                     
CODE_23EA1B:        ROL $03                   
CODE_23EA1D:        ASL A                     
CODE_23EA1E:        ROL $03                   
CODE_23EA20:        STA $04                   
CODE_23EA22:        LDA $02                   
CODE_23EA24:        ASL A                     
CODE_23EA25:        AND #$1F                  
CODE_23EA27:        CLC                       
CODE_23EA28:        ADC $04                   
CODE_23EA2A:        STA $1603,y               
CODE_23EA2D:        CLC                       
CODE_23EA2E:        ADC #$20                  
CODE_23EA30:        STA $1609,y               
CODE_23EA33:        LDA $03                   
CODE_23EA35:        AND #$DF                  
CODE_23EA37:        STA $1602,y               
CODE_23EA3A:        STA $1608,y               
CODE_23EA3D:        REP #$20                  
CODE_23EA3F:        LDA #$0240                
CODE_23EA42:        STA $1604,y               
CODE_23EA45:        STA $160A,y               
CODE_23EA48:        LDA #$1CFF                
CODE_23EA4B:        STA $1606,y               
CODE_23EA4E:        STA $160C,y               
CODE_23EA51:        LDA #$FFFF                
CODE_23EA54:        STA $160E,y               
CODE_23EA57:        SEP #$20                  
CODE_23EA59:        TYA                       
CODE_23EA5A:        CLC                       
CODE_23EA5B:        ADC #$0C                  
CODE_23EA5D:        STA $1600                 
CODE_23EA60:        RTS                       

CODE_23EA61:        LDA $01                   
CODE_23EA63:        LSR A                     
CODE_23EA64:        LSR A                     
CODE_23EA65:        LSR A                     
CODE_23EA66:        LSR A                     
CODE_23EA67:        ORA $00                   
CODE_23EA69:        TAY                       
CODE_23EA6A:        STY $02                   
CODE_23EA6C:        LDA #$00                  
CODE_23EA6E:        STA $2E                   
CODE_23EA70:        LDA #$20                  
CODE_23EA72:        STA $2F                   
CODE_23EA74:        LDA #$7E                  
CODE_23EA76:        STA $30                   
CODE_23EA78:        LDA [$2E],y               
CODE_23EA7A:        CMP #$FE                  
CODE_23EA7C:        BCC CODE_23EA84           
CODE_23EA7E:        AND #$01                  
CODE_23EA80:        TAY                       
CODE_23EA81:        LDA.w DATA_21EC57,y               
CODE_23EA84:        PHA                       
CODE_23EA85:        ASL A                     
CODE_23EA86:        ROL $0E                   
CODE_23EA88:        ASL A                     
CODE_23EA89:        ROL $0E                   
CODE_23EA8B:        LDA $0E                   
CODE_23EA8D:        AND #$03                  
CODE_23EA8F:        TAY                       
CODE_23EA90:        PLA                       
CODE_23EA91:        CMP $1E9A,y               
CODE_23EA94:        RTS                       

CODE_23EA95:        TXA                       
CODE_23EA96:        CLC                       
CODE_23EA97:        ADC #$02                  
CODE_23EA99:        TAX                       
CODE_23EA9A:        JSR CODE_23E864           
CODE_23EA9D:        LDX $190E                 
CODE_23EAA0:        RTS                       

CODE_23EAA1:        LDA $1942,x               
CODE_23EAA4:        BPL CODE_23EAAE           
CODE_23EAA6:        LDA $1811,x               
CODE_23EAA9:        CMP #$F0                  
CODE_23EAAB:        BCS CODE_23EAB1                   
CODE_23EAAD:        RTS                       

CODE_23EAAE:        BEQ CODE_23EAB1           
CODE_23EAB0:        RTS                       

CODE_23EAB1:        LDA $190A,x               
CODE_23EAB4:        BEQ CODE_23EABD           
CODE_23EAB6:        LDA $15                   
CODE_23EAB8:        AND #$02                  
CODE_23EABA:        BEQ CODE_23EABD           
CODE_23EABC:        RTS                       

CODE_23EABD:        TXA                       
CODE_23EABE:        ASL A                     
CODE_23EABF:        ASL A                     
CODE_23EAC0:        ASL A                     
CODE_23EAC1:        ASL A                     
CODE_23EAC2:        ASL A                     
CODE_23EAC3:        TAY                       
CODE_23EAC4:        LDA $1822,x               
CODE_23EAC7:        STA $0880,y               
CODE_23EACA:        LDA $1811,x               
CODE_23EACD:        STA $0881,y               
CODE_23EAD0:        LDA #$0E                  
CODE_23EAD2:        STA $0A                   
CODE_23EAD4:        LDA $190E                 
CODE_23EAD7:        BEQ CODE_23EADD           
CODE_23EAD9:        LDA #$0A                  
CODE_23EADB:        STA $0A                   
CODE_23EADD:        LDA $1864,x               
CODE_23EAE0:        TAX                       
CODE_23EAE1:        LDA.w DATA_21ED15+1,x               
CODE_23EAE4:        ORA $0A                   
CODE_23EAE6:        STA $0883,y               
CODE_23EAE9:        LDX $190E                 
CODE_23EAEC:        LDA $1800,x               
CODE_23EAEF:        CMP #$02                  
CODE_23EAF1:        BEQ CODE_23EAFA           
CODE_23EAF3:        LDA $1864,x               
CODE_23EAF6:        BIT #$01                  
CODE_23EAF8:        BNE CODE_23EB02           
CODE_23EAFA:        LDA $0883,y               
CODE_23EAFD:        AND #$BF                  
CODE_23EAFF:        STA $0883,y               
CODE_23EB02:        LDA $1800,x               
CODE_23EB05:        CMP #$02                  
CODE_23EB07:        BEQ CODE_23EB3A           
CODE_23EB09:        LDA $1864,x               
CODE_23EB0C:        BIT #$01                  
CODE_23EB0E:        BEQ CODE_23EB3A           
CODE_23EB10:        LDA $1930                 
CODE_23EB13:        BEQ CODE_23EB2D           
CODE_23EB15:        TXA                       
CODE_23EB16:        EOR $078C                 
CODE_23EB19:        AND #$01                  
CODE_23EB1B:        BNE CODE_23EB2D           
CODE_23EB1D:        LDA $8D,x                 
CODE_23EB1F:        CMP #$98                  
CODE_23EB21:        BNE CODE_23EB2D           
CODE_23EB23:        LDA $0883,y               
CODE_23EB26:        AND #$BF                  
CODE_23EB28:        STA $0883,y               
CODE_23EB2B:        BRA CODE_23EB3A           

CODE_23EB2D:        LDA $0880,y               
CODE_23EB30:        CLC                       
CODE_23EB31:        ADC #$08                  
CODE_23EB33:        STA $0880,y               
CODE_23EB36:        LDA #$F8                  
CODE_23EB38:        BRA CODE_23EB3C           

CODE_23EB3A:        LDA #$08                  
CODE_23EB3C:        STA $0000                 
CODE_23EB3F:        LDA #$04                  
CODE_23EB41:        STA $0882,y               
CODE_23EB44:        CPX #$00                  
CODE_23EB46:        BEQ CODE_23EB4D           
CODE_23EB48:        LDA #$14                  
CODE_23EB4A:        STA $0882,y               
CODE_23EB4D:        LDA $0880,y               
CODE_23EB50:        STA $0888,y               
CODE_23EB53:        CLC                       
CODE_23EB54:        ADC $0000                 
CODE_23EB57:        STA $0884,y               
CODE_23EB5A:        STA $088C,y               
CODE_23EB5D:        LDA $0881,y               
CODE_23EB60:        STA $0885,y               
CODE_23EB63:        CLC                       
CODE_23EB64:        ADC #$08                  
CODE_23EB66:        STA $0889,y               
CODE_23EB69:        STA $088D,y               
CODE_23EB6C:        LDA $0882,y               
CODE_23EB6F:        INC A                     
CODE_23EB70:        STA $0886,y               
CODE_23EB73:        INC A                     
CODE_23EB74:        STA $088A,y               
CODE_23EB77:        INC A                     
CODE_23EB78:        STA $088E,y               
CODE_23EB7B:        LDA $0883,y               
CODE_23EB7E:        STA $0887,y               
CODE_23EB81:        STA $088B,y               
CODE_23EB84:        STA $088F,y               
CODE_23EB87:        STA $00                   
CODE_23EB89:        LDA $1822,x               
CODE_23EB8C:        CMP #$F1                  
CODE_23EB8E:        BCC CODE_23EBCA           
CODE_23EB90:        PHY                       
CODE_23EB91:        LDA #$08                  
CODE_23EB93:        STA $00                   
CODE_23EB95:        LDA $0880,y               
CODE_23EB98:        STA $08C0,y               
CODE_23EB9B:        LDA $0881,y               
CODE_23EB9E:        STA $08C1,y               
CODE_23EBA1:        LDA $0882,y               
CODE_23EBA4:        STA $08C2,y               
CODE_23EBA7:        LDA $0883,y               
CODE_23EBAA:        STA $08C3,y               
CODE_23EBAD:        TYA                       
CODE_23EBAE:        CLC                       
CODE_23EBAF:        ADC #$04                  
CODE_23EBB1:        TAY                       
CODE_23EBB2:        DEC $00                   
CODE_23EBB4:        BNE CODE_23EB95           
CODE_23EBB6:        PLA                       
CODE_23EBB7:        LSR A                     
CODE_23EBB8:        LSR A                     
CODE_23EBB9:        TAY                       
CODE_23EBBA:        LDA #$01                  
CODE_23EBBC:        STA $0A50,y               
CODE_23EBBF:        STA $0A52,y               
CODE_23EBC2:        STA $0A51,y               
CODE_23EBC5:        STA $0A53,y               
CODE_23EBC8:        BRA CODE_23EBCE           

CODE_23EBCA:        TYA                       
CODE_23EBCB:        LSR A                     
CODE_23EBCC:        LSR A                     
CODE_23EBCD:        TAY                       
CODE_23EBCE:        LDA #$00                  
CODE_23EBD0:        STA $0A40,y               
CODE_23EBD3:        STA $0A41,y               
CODE_23EBD6:        STA $0A42,y               
CODE_23EBD9:        STA $0A43,y               
CODE_23EBDC:        RTS                       

CODE_23EBDD:        LDA $1800                 
CODE_23EBE0:        CMP #$02                  
CODE_23EBE2:        BEQ CODE_23EC16           
CODE_23EBE4:        LDA $1801                 
CODE_23EBE7:        CMP #$02                  
CODE_23EBE9:        BEQ CODE_23EC16           
CODE_23EBEB:        LDA $18B9                 
CODE_23EBEE:        BNE CODE_23EC13           
CODE_23EBF0:        LDX #$01                  
CODE_23EBF2:        LDY #$04                  
CODE_23EBF4:        JSR CODE_23ECAC           
CODE_23EBF7:        DEY                       
CODE_23EBF8:        DEY                       
CODE_23EBF9:        DEY                       
CODE_23EBFA:        DEY                       
CODE_23EBFB:        DEX                       
CODE_23EBFC:        BPL CODE_23EBF4           
CODE_23EBFE:        JSR CODE_23ECC9           
CODE_23EC01:        BCC CODE_23EC16           
CODE_23EC03:        LDA #$01                  
CODE_23EC05:        STA $1800                 
CODE_23EC08:        STA $1801                 
CODE_23EC0B:        LDA #$08                  
CODE_23EC0D:        STA $18B9                 
CODE_23EC10:        JMP CODE_23EC17           

CODE_23EC13:        DEC $18B9                 
CODE_23EC16:        RTS
                       
CODE_23EC17:        LDA $1811                 
CODE_23EC1A:        SEC                       
CODE_23EC1B:        SBC $1812                 
CODE_23EC1E:        PHP                       
CODE_23EC1F:        BPL CODE_23EC26           
CODE_23EC21:        EOR #$FF                  
CODE_23EC23:        CLC                       
CODE_23EC24:        ADC #$01                  
CODE_23EC26:        CMP #$08                  
CODE_23EC28:        BCC CODE_23EC73           
CODE_23EC2A:        LDY #$00                  
CODE_23EC2C:        PLP                       
CODE_23EC2D:        BCC CODE_23EC30           
CODE_23EC2F:        INY                       
CODE_23EC30:        LDA.w DATA_21ED1D,y               
CODE_23EC33:        AND $1833                 
CODE_23EC36:        BMI CODE_23EC51           
CODE_23EC38:        LDA.w DATA_21ED1D,y               
CODE_23EC3B:        STA $1833                 
CODE_23EC3E:        LDA $1895                 
CODE_23EC41:        AND #$04                  
CODE_23EC43:        BEQ CODE_23EC51           
CODE_23EC45:        LDA.w DATA_21ED20,y               
CODE_23EC48:        STA $18B5                 
CODE_23EC4B:        LDA.w DATA_21ED23,y               
CODE_23EC4E:        STA $1200                 
CODE_23EC51:        LDA.w DATA_21ED1E,y               
CODE_23EC54:        AND $1834                 
CODE_23EC57:        BMI CODE_23EC72           
CODE_23EC59:        LDA.w DATA_21ED1E,y               
CODE_23EC5C:        STA $1834                 
CODE_23EC5F:        LDA $1896                 
CODE_23EC62:        AND #$04                  
CODE_23EC64:        BEQ CODE_23EC72           
CODE_23EC66:        LDA.w DATA_21ED21,y               
CODE_23EC69:        STA $18B6                 
CODE_23EC6C:        LDA.w DATA_21ED24,y               
CODE_23EC6F:        STA $1200                 
CODE_23EC72:        RTS                       

CODE_23EC73:        PLP                       
CODE_23EC74:        LDY #$00                  
CODE_23EC76:        LDA $1822                 
CODE_23EC79:        CMP $1823                 
CODE_23EC7C:        BCS CODE_23EC7F                   
CODE_23EC7E:        INY                       
CODE_23EC7F:        EOR $1823                 
CODE_23EC82:        BPL CODE_23EC91           
CODE_23EC84:        LDA #$EF                  
CODE_23EC86:        CMP $1822                 
CODE_23EC89:        BCC CODE_23EC90           
CODE_23EC8B:        CMP $1823                 
CODE_23EC8E:        BCS CODE_23EC91                 
CODE_23EC90:        INY                       
CODE_23EC91:        LDA.w DATA_21ED19,y               
CODE_23EC94:        STA $1844                 
CODE_23EC97:        LDA.w DATA_21ED19+1,y               
CODE_23EC9A:        STA $1845                 
CODE_23EC9D:        TYA                       
CODE_23EC9E:        AND #$01                  
CODE_23ECA0:        CLC                       
CODE_23ECA1:        ADC #$01                  
CODE_23ECA3:        STA $1865                 
CODE_23ECA6:        EOR #$03                  
CODE_23ECA8:        STA $1864                 
CODE_23ECAB:        RTS                       

CODE_23ECAC:        LDA $1811,x               
CODE_23ECAF:        CLC                       
CODE_23ECB0:        ADC #$02                  
CODE_23ECB2:        STA $0000,y               
CODE_23ECB5:        LDA #$0E                  
CODE_23ECB7:        STA $0002,y               
CODE_23ECBA:        LDA $1822,x               
CODE_23ECBD:        CLC                       
CODE_23ECBE:        ADC #$04                  
CODE_23ECC0:        STA $0001,y               
CODE_23ECC3:        LDA #$08                  
CODE_23ECC5:        STA $0003,y               
CODE_23ECC8:        RTS                       

CODE_23ECC9:        TXA                       
CODE_23ECCA:        PHA                       
CODE_23ECCB:        LDX #$01                  
CODE_23ECCD:        LDA $04,x                 
CODE_23ECCF:        SEC                       
CODE_23ECD0:        SBC $00,x                 
CODE_23ECD2:        CLC                       
CODE_23ECD3:        ADC $06,x                 
CODE_23ECD5:        STA $08                   
CODE_23ECD7:        LDA $02,x                 
CODE_23ECD9:        CLC                       
CODE_23ECDA:        ADC $06,x                 
CODE_23ECDC:        CMP $08                   
CODE_23ECDE:        BCC CODE_23ECE3           
CODE_23ECE0:        DEX                       
CODE_23ECE1:        BPL CODE_23ECCD           
CODE_23ECE3:        PLA                       
CODE_23ECE4:        TAX                       
CODE_23ECE5:        RTS                       

DATA_23ECE6:        db $00,$00,$00,$00,$00,$01,$01,$01
                    db $01,$01,$00,$01,$00,$01,$00,$00
                    db $02,$00,$02,$00,$01,$02,$01,$02
                    db $01,$02,$02,$02,$02,$02    

CODE_23ED04:        LDA $18CB                 
CODE_23ED07:        ORA $18CC                 
CODE_23ED0A:        ORA $1930                 
CODE_23ED0D:        BNE CODE_23ED2C           
CODE_23ED0F:        INC $A9                   
CODE_23ED11:        LDA $A9                   
CODE_23ED13:        AND #$1F                  
CODE_23ED15:        BNE CODE_23ED2D           
CODE_23ED17:        INC $190D                 
CODE_23ED1A:        BNE CODE_23ED2D           
CODE_23ED1C:        JSR CODE_23ED3D           
CODE_23ED1F:        TXA                       
CODE_23ED20:        BMI CODE_23ED2D           
CODE_23ED22:        LDA #$10                  
CODE_23ED24:        STA $1835,x               
CODE_23ED27:        LDA #$05                  
CODE_23ED29:        STA $18BB,x               
CODE_23ED2C:        RTS                       

CODE_23ED2D:        LDA $A9                   
CODE_23ED2F:        CMP #$80                  
CODE_23ED31:        BNE CODE_23EDB1           
CODE_23ED33:        INC $190C                 
CODE_23ED36:        LDA $190C                 
CODE_23ED39:        AND #$07                  
CODE_23ED3B:        BNE CODE_23EDB1           
CODE_23ED3D:        LDX #$06                  
CODE_23ED3F:        JSR CODE_23EE04           
CODE_23ED42:        TXA                       
CODE_23ED43:        BMI CODE_23EDB0           
CODE_23ED45:        DEC $18CA                 
CODE_23ED48:        CPX #$05                  
CODE_23ED4A:        BCS CODE_23ED4F                   
CODE_23ED4C:        JMP CODE_23F6B3           

CODE_23ED4F:        LDA $190C                 
CODE_23ED52:        LSR A                     
CODE_23ED53:        AND #$01                  
CODE_23ED55:        TAY                       
CODE_23ED56:        LDA.w DATA_21ED3C,y               
CODE_23ED59:        STA $1846,x               
CODE_23ED5C:        LDA.w DATA_21ED3A,y               
CODE_23ED5F:        STA $1824,x               
CODE_23ED62:        JSL CODE_25F805           
CODE_23ED66:        LDA $192D                 
CODE_23ED69:        AND #$01                  
CODE_23ED6B:        TAY                       
CODE_23ED6C:        LDA $1811,y               
CODE_23ED6F:        STA $1813,x               
CODE_23ED72:        LDA #$04                  
CODE_23ED74:        STA $18BB,x               
CODE_23ED77:        LDA #$00                  
CODE_23ED79:        STA $1835,x               
CODE_23ED7C:        STA $18A6,x               
CODE_23ED7F:        JSR CODE_23ED8D           
CODE_23ED82:        LDA #$20                  
CODE_23ED84:        STA $18E9,x               
CODE_23ED87:        LDA #$17                  
CODE_23ED89:        STA $1203                 
CODE_23ED8C:        RTS                       

CODE_23ED8D:        LDA #$00                  
CODE_23ED8F:        STA $1944,x               
CODE_23ED92:        STA $18A6,x               
CODE_23ED95:        STA $18FA,x               
CODE_23ED98:        STA $1931,x               
CODE_23ED9B:        STA $1953,x               
CODE_23ED9E:        STA $191E,x               
CODE_23EDA1:        STA $18CD,x               
CODE_23EDA4:        STA $18DA,x               
CODE_23EDA7:        STA $197C,x               
CODE_23EDAA:        STA $18E9,x               
CODE_23EDAD:        STA $196F,x               
CODE_23EDB0:        RTS                       

CODE_23EDB1:        LDA $18CA                 
CODE_23EDB4:        CMP #$05                  
CODE_23EDB6:        BEQ CODE_23EDB0           
CODE_23EDB8:        LDA $A9                   
CODE_23EDBA:        AND #$FF                  
CODE_23EDBC:        BNE CODE_23EDB0           
CODE_23EDBE:        PHX                       
CODE_23EDBF:        LDA $199A                 
CODE_23EDC2:        ASL A                     
CODE_23EDC3:        ASL A                     
CODE_23EDC4:        ADC $199A                 
CODE_23EDC7:        ADC $18CA                 
CODE_23EDCA:        TAX                       
CODE_23EDCB:        LDA.l DATA_23ECE6,x             
CODE_23EDCF:        PLX                       
CODE_23EDD0:        JSL CODE_20FB1F           ; ExecutePtrShort

DATA_23EDD4:        dw CODE_23EE02
                    dw CODE_23EDF6
                    dw CODE_23EDDA

CODE_23EDDA:        JSR CODE_23EE02
CODE_23EDDD:        TXA
CODE_23EDDE:        BMI CODE_23EDF5
CODE_23EDE0:        LDA #$02                  
CODE_23EDE2:        STA $18BB,x           
CODE_23EDE5:        LDA $1960                 
CODE_23EDE8:        BEQ CODE_23EDF5           
CODE_23EDEA:        DEC $1960                 
CODE_23EDED:        LDA #$01                  
CODE_23EDEF:        STA $1953,x               
CODE_23EDF2:        JSR CODE_23EE2C           
CODE_23EDF5:        RTS                       

CODE_23EDF6:        JSR CODE_23EE02           
CODE_23EDF9:        TXA                       
CODE_23EDFA:        BMI CODE_23EE01           
CODE_23EDFC:        LDA #$03                  
CODE_23EDFE:        STA $18BB,x               
CODE_23EE01:        RTS                       

CODE_23EE02:        LDX #$04                  
CODE_23EE04:        LDA $1802,x               
CODE_23EE07:        BEQ CODE_23EE0D           
CODE_23EE09:        DEX                       
CODE_23EE0A:        BPL CODE_23EE04           
CODE_23EE0C:        RTS                       

CODE_23EE0D:        INC $18CA                 
CODE_23EE10:        LDA #$01                  
CODE_23EE12:        STA $1802,x               
CODE_23EE15:        LDA #$20                  
CODE_23EE17:        STA $1813,x               
CODE_23EE1A:        LDA #$00                  
CODE_23EE1C:        STA $1835,x               
CODE_23EE1F:        LDA #$00                  
CODE_23EE21:        STA $18BB,x               
CODE_23EE24:        JSR CODE_23ED8D           
CODE_23EE27:        LDA #$30                  
CODE_23EE29:        STA $191E,x               
CODE_23EE2C:        LDA $18CA                 
CODE_23EE2F:        AND #$01                  
CODE_23EE31:        TAY                       
CODE_23EE32:        LDA.w DATA_21ED32,y               
CODE_23EE35:        STA $1824,x               
CODE_23EE38:        LDA $18CA                 
CODE_23EE3B:        CMP #$05                  
CODE_23EE3D:        BNE CODE_23EE4A           
CODE_23EE3F:        LDA $19A0                 
CODE_23EE42:        BEQ CODE_23EE4A           
CODE_23EE44:        STA $1931,x               
CODE_23EE47:        INY                       
CODE_23EE48:        INY                       
CODE_23EE49:        INY                       
CODE_23EE4A:        LDA.w DATA_21ED34,y               
CODE_23EE4D:        STA $1846,x               
CODE_23EE50:        RTS
                       
CODE_23EE51:        DEC $18C9                 
CODE_23EE54:        BPL CODE_23EE5B           
CODE_23EE56:        LDA #$0D                  
CODE_23EE58:        STA $18C9                 
CODE_23EE5B:        LDX #$0B                  
CODE_23EE5D:        STX $190E                 
CODE_23EE60:        TXA                       
CODE_23EE61:        CLC                       
CODE_23EE62:        ADC $18C9                 
CODE_23EE65:        TAY                       
CODE_23EE66:        LDA.w DATA_21ED3E,y               
CODE_23EE69:        STA $18C8                 
CODE_23EE6C:        JSL CODE_25F805           
CODE_23EE70:        JSR CODE_23EE77           
CODE_23EE73:        DEX                       
CODE_23EE74:        BPL CODE_23EE5D           
CODE_23EE76:        RTS                       

CODE_23EE77:        LDA $18CD,x               
CODE_23EE7A:        BEQ CODE_23EE7F           
CODE_23EE7C:        DEC $18CD,x               
CODE_23EE7F:        LDA $197C,x               
CODE_23EE82:        BEQ CODE_23EE87           
CODE_23EE84:        DEC $197C,x               
CODE_23EE87:        LDA $1802,x               
CODE_23EE8A:        BEQ CODE_23EE76           
CODE_23EE8C:        JSL CODE_20FB1F           ; ExecutePtrShort

PNTR_23EE90:        dw CODE_23EE76
                    dw CODE_23EE98
                    dw CODE_23F605
                    dw CODE_23F69D

CODE_23EE98:        LDA $18CD,x
CODE_23EE9B:        ORA $197C,x
CODE_23EE9E:        ORA $1930
CODE_23EEA1:        BEQ CODE_23EEB3           
CODE_23EEA3:        JSR CODE_23EA95           
CODE_23EEA6:        JSR CODE_23F1A5           
CODE_23EEA9:        LDA $18BB,x               
CODE_23EEAC:        CMP #$0B                  
CODE_23EEAE:        BEQ CODE_23EEC3           
CODE_23EEB0:        JMP CODE_23F22E           

CODE_23EEB3:        LDA $18DA,x               
CODE_23EEB6:        BEQ CODE_23EEBB           
CODE_23EEB8:        DEC $18DA,x               
CODE_23EEBB:        LDA $191E,x               
CODE_23EEBE:        BEQ CODE_23EEC3           
CODE_23EEC0:        DEC $191E,x               
CODE_23EEC3:        LDA $18E9,x               
CODE_23EEC6:        BEQ CODE_23EECB           
CODE_23EEC8:        DEC $18E9,x               
CODE_23EECB:        LDA #$01                  
CODE_23EECD:        LDY $1846,x               
CODE_23EED0:        BPL CODE_23EED4           
CODE_23EED2:        LDA #$02                  
CODE_23EED4:        STA $1866,x               
CODE_23EED7:        LDA #$04                  
CODE_23EED9:        LDY $1835,x               
CODE_23EEDC:        BPL CODE_23EEE0           
CODE_23EEDE:        LDA #$08                  
CODE_23EEE0:        STA $1962,x               
CODE_23EEE3:        LDA $18BB,x               
CODE_23EEE6:        JSL CODE_20FB1F           ; ExecutePtrShort

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

CODE_23EF0A:        JSR CODE_23F971
CODE_23EF0D:        JSR CODE_23F977           
CODE_23EF10:        LDA $1835,x               
CODE_23EF13:        BMI CODE_23EF19           
CODE_23EF15:        CMP #$7D                  
CODE_23EF17:        BCS CODE_23EF22                   
CODE_23EF19:        INC $1835,x               
CODE_23EF1C:        INC $1835,x               
CODE_23EF1F:        INC $1835,x               
CODE_23EF22:        LDA $1813,x               
CODE_23EF25:        CMP #$E0                  
CODE_23EF27:        BCC CODE_23EF31           
CODE_23EF29:        LDA $1944,x               
CODE_23EF2C:        BNE CODE_23EF31           
CODE_23EF2E:        JMP CODE_23F6B3           

CODE_23EF31:        JSR CODE_23F22E           
CODE_23EF34:        RTS                       

CODE_23EF35:        LDA #$00                  
CODE_23EF37:        STA $1846,x               
CODE_23EF3A:        JSR CODE_23F971           
CODE_23EF3D:        JSR CODE_23F977           
CODE_23EF40:        JSR CODE_23EA95           
CODE_23EF43:        INC $1835,x               
CODE_23EF46:        LDA $18BB,x               
CODE_23EF49:        CMP #$0E                  
CODE_23EF4B:        BEQ CODE_23EF5D           
CODE_23EF4D:        INC $1835,x               
CODE_23EF50:        LDA $1897,x               
CODE_23EF53:        AND #$03                  
CODE_23EF55:        AND $1866,x               
CODE_23EF58:        BEQ CODE_23EF5D           
CODE_23EF5A:        JSR CODE_23F41A           
CODE_23EF5D:        LDA $1944,x               
CODE_23EF60:        BEQ CODE_23EF69           
CODE_23EF62:        LDA $1813,x               
CODE_23EF65:        CMP #$F0                  
CODE_23EF67:        BCC CODE_23EF9A           
CODE_23EF69:        LDA $1897,x               
CODE_23EF6C:        AND #$04                  
CODE_23EF6E:        BEQ CODE_23EF87           
CODE_23EF70:        JSR CODE_23F197           
CODE_23EF73:        LDA $18BB,x               
CODE_23EF76:        CMP #$0E                  
CODE_23EF78:        BNE CODE_23EF84           
CODE_23EF7A:        LDA $1835,x               
CODE_23EF7D:        BMI CODE_23EF84           
CODE_23EF7F:        LDA #$DC                  
CODE_23EF81:        STA $1835,x               
CODE_23EF84:        JSR CODE_23F1A5           
CODE_23EF87:        LDY $18BB,x               
CODE_23EF8A:        LDX.w DATA_21ED81,y               
CODE_23EF8D:        LDA $15                   
CODE_23EF8F:        LSR A                     
CODE_23EF90:        LSR A                     
CODE_23EF91:        LSR A                     
CODE_23EF92:        AND #$06                  
CODE_23EF94:        JSR CODE_23F256           
CODE_23EF97:        JSR CODE_23F458           
CODE_23EF9A:        RTS                       

CODE_23EF9B:        LDY $18E9,x               
CODE_23EF9E:        BEQ CODE_23EFA6           
CODE_23EFA0:        DEY                       
CODE_23EFA1:        BNE CODE_23EFD8           
CODE_23EFA3:        JMP CODE_23F6B3           

CODE_23EFA6:        LDA $1930                 
CODE_23EFA9:        ORA $0076                 
CODE_23EFAC:        ORA $18CD,x               
CODE_23EFAF:        BNE CODE_23EFD8           
CODE_23EFB1:        JSR CODE_23EA95           
CODE_23EFB4:        LDA $18A6,x               
CODE_23EFB7:        BEQ CODE_23EFD2           
CODE_23EFB9:        JSR CODE_23F971           
CODE_23EFBC:        JSR CODE_23F977           
CODE_23EFBF:        INC $1835,x               
CODE_23EFC2:        INC $1835,x               
CODE_23EFC5:        LDA $1813,x               
CODE_23EFC8:        CMP #$E0                  
CODE_23EFCA:        BCC CODE_23EFD2           
CODE_23EFCC:        LDA #$00                  
CODE_23EFCE:        STA $1802,x               
CODE_23EFD1:        RTS                       

CODE_23EFD2:        JSR CODE_23F458           
CODE_23EFD5:        INC $1857,x               
CODE_23EFD8:        REP #$30                  
CODE_23EFDA:        LDA $18C8                 
CODE_23EFDD:        AND #$00FF                
CODE_23EFE0:        CLC                       
CODE_23EFE1:        ADC #$0100                
CODE_23EFE4:        TAY                       
CODE_23EFE5:        SEP #$20                  
CODE_23EFE7:        LDA $18E9,x               
CODE_23EFEA:        BEQ CODE_23F002           
CODE_23EFEC:        LDA $0801                 
CODE_23EFEF:        CMP #$F0                  
CODE_23EFF1:        BEQ CODE_23EFFF           
CODE_23EFF3:        LDA $0811                 
CODE_23EFF6:        CMP #$F0                  
CODE_23EFF8:        BNE CODE_23F002           
CODE_23EFFA:        LDY #$0010                
CODE_23EFFD:        BNE CODE_23F002           
CODE_23EFFF:        LDY #$0000                
CODE_23F002:        LDA $1F26                 
CODE_23F005:        CMP #$0B                  
CODE_23F007:        BNE CODE_23F013           
CODE_23F009:        LDA $1897,x               
CODE_23F00C:        AND #$03                  
CODE_23F00E:        BEQ CODE_23F013           
CODE_23F010:        SEP #$10                  
CODE_23F012:        RTS                       

CODE_23F013:        LDA #$00                  
CODE_23F015:        CMP $191E,x               
CODE_23F018:        LDA #$22                  
CODE_23F01A:        BCS CODE_23F01E                   
CODE_23F01C:        LDA #$12                  
CODE_23F01E:        STA $0803,y               
CODE_23F021:        LDA $1813,x               
CODE_23F024:        STA $0801,y               
CODE_23F027:        LDA $1824,x               
CODE_23F02A:        SEC                       
CODE_23F02B:        SBC #$04                  
CODE_23F02D:        STA $0800,y               
CODE_23F030:        LDA $18E9,x               
CODE_23F033:        BEQ CODE_23F04D           
CODE_23F035:        SEP #$10                  
CODE_23F037:        LSR A                     
CODE_23F038:        AND #$07                  
CODE_23F03A:        TAX                       
CODE_23F03B:        LDA.w DATA_21ED5D,x               
CODE_23F03E:        STA $0802,y               
CODE_23F041:        LDX $190E                 
CODE_23F044:        LDA #$02                  
CODE_23F046:        STA $0803,y               
CODE_23F049:        REP #$10                  
CODE_23F04B:        BRA CODE_23F065           

CODE_23F04D:        PHY                       
CODE_23F04E:        SEP #$10                  
CODE_23F050:        LDA $1857,x               
CODE_23F053:        LSR A                     
CODE_23F054:        LSR A                     
CODE_23F055:        CLC                       
CODE_23F056:        ADC $190E                 
CODE_23F059:        AND #$03                  
CODE_23F05B:        TAY                       
CODE_23F05C:        LDA.w DATA_21ED59,y               
CODE_23F05F:        REP #$10                  
CODE_23F061:        PLY                       
CODE_23F062:        STA $0802,y               
CODE_23F065:        REP #$20                  
CODE_23F067:        TYA                       
CODE_23F068:        LSR A                     
CODE_23F069:        LSR A                     
CODE_23F06A:        TAY                       
CODE_23F06B:        LDA #$0002                
CODE_23F06E:        STA $0A20,y               
CODE_23F071:        SEP #$30                  
CODE_23F073:        RTS                       

CODE_23F074:        LDA $1846,x               
CODE_23F077:        PHA                       
CODE_23F078:        LDA $191E,x               
CODE_23F07B:        BEQ CODE_23F086           
CODE_23F07D:        LDY $1866,x               
CODE_23F080:        LDA.w DATA_21ED6A,y               
CODE_23F083:        STA $1846,x               
CODE_23F086:        JSR CODE_23F971           
CODE_23F089:        PLA                       
CODE_23F08A:        STA $1846,x               
CODE_23F08D:        RTS                       

CODE_23F08E:        JSR CODE_23F0EF           
CODE_23F091:        LDY $18E9,x               
CODE_23F094:        BEQ CODE_23F09E           
CODE_23F096:        DEY                       
CODE_23F097:        BNE CODE_23F0B0           
CODE_23F099:        LDA #$E4                  
CODE_23F09B:        STA $1835,x               
CODE_23F09E:        JSR CODE_23F074           
CODE_23F0A1:        JSR CODE_23F977           
CODE_23F0A4:        LDA $1835,x               
CODE_23F0A7:        BMI CODE_23F0AD           
CODE_23F0A9:        CMP #$40                  
CODE_23F0AB:        BCS CODE_23F0B0                   
CODE_23F0AD:        INC $1835,x               
CODE_23F0B0:        JSR CODE_23EA95           
CODE_23F0B3:        LDA $1897,x               
CODE_23F0B6:        AND #$04                  
CODE_23F0B8:        BNE CODE_23F0C6           
CODE_23F0BA:        LDA $1857,x               
CODE_23F0BD:        CLC                       
CODE_23F0BE:        ADC #$04                  
CODE_23F0C0:        STA $1857,x               
CODE_23F0C3:        JMP CODE_23F0EC           

CODE_23F0C6:        ASL A                     
CODE_23F0C7:        STA $1857,x               
CODE_23F0CA:        LDA $18E9,x               
CODE_23F0CD:        BNE CODE_23F0D4           
CODE_23F0CF:        LDA #$10                  
CODE_23F0D1:        STA $18E9,x               
CODE_23F0D4:        JSR CODE_23F197           
CODE_23F0D7:        JSR CODE_23F1A5           
CODE_23F0DA:        LDA $191E,x               
CODE_23F0DD:        BEQ CODE_23F0EC           
CODE_23F0DF:        LDA #$00                  
CODE_23F0E1:        STA $18E9,x               
CODE_23F0E4:        STA $1835,x               
CODE_23F0E7:        LDA $15                   
CODE_23F0E9:        STA $1857,x               
CODE_23F0EC:        JMP CODE_23F18D           

CODE_23F0EF:        LDA $1813,x               
CODE_23F0F2:        CMP #$A0                  
CODE_23F0F4:        BCC CODE_23F128           
CODE_23F0F6:        LDY $1866,x               
CODE_23F0F9:        LDA $1824,x               
CODE_23F0FC:        CMP.w DATA_21ED64,y               
CODE_23F0FF:        BNE CODE_23F108           
CODE_23F101:        LDA #$60                  
CODE_23F103:        STA $191E,x               
CODE_23F106:        BNE CODE_23F128           
CODE_23F108:        CMP.w DATA_21ED66,y               
CODE_23F10B:        BNE CODE_23F128           
CODE_23F10D:        LDA #$20                  
CODE_23F10F:        STA $1813,x               
CODE_23F112:        LDA $0783                 
CODE_23F115:        AND #$01                  
CODE_23F117:        TAY                       
CODE_23F118:        LDA.w DATA_21ED32,y               
CODE_23F11B:        STA $1824,x               
CODE_23F11E:        EOR $1846,x               
CODE_23F121:        BPL CODE_23F126           
CODE_23F123:        JSR CODE_23F41A           
CODE_23F126:        PLA                       
CODE_23F127:        PLA                       
CODE_23F128:        RTS                       

CODE_23F129:        JSR CODE_23F0EF           
CODE_23F12C:        JSR CODE_23F074           
CODE_23F12F:        JSR CODE_23F977           
CODE_23F132:        LDA $1835,x               
CODE_23F135:        BMI CODE_23F13B           
CODE_23F137:        CMP #$40                  
CODE_23F139:        BCS CODE_23F141                   
CODE_23F13B:        INC $1835,x               
CODE_23F13E:        INC $1835,x               
CODE_23F141:        JSR CODE_23EA95           
CODE_23F144:        LDA $1897,x               
CODE_23F147:        AND #$04                  
CODE_23F149:        BNE CODE_23F151           
CODE_23F14B:        STA $1857,x               
CODE_23F14E:        JMP CODE_23F18D           

CODE_23F151:        LDA $1835,x               
CODE_23F154:        PHA                       
CODE_23F155:        JSR CODE_23F197           
CODE_23F158:        JSR CODE_23F1A5           
CODE_23F15B:        LDA $18BB,x               
CODE_23F15E:        CMP #$02                  
CODE_23F160:        BNE CODE_23F165           
CODE_23F162:        INC $1857,x               
CODE_23F165:        LDA $1931,x               
CODE_23F168:        ORA $1953,x               
CODE_23F16B:        BEQ CODE_23F170           
CODE_23F16D:        INC $1857,x               
CODE_23F170:        INC $1857,x               
CODE_23F173:        LDA $191E,x               
CODE_23F176:        BEQ CODE_23F17B           
CODE_23F178:        INC $1857,x               
CODE_23F17B:        PLA                       
CODE_23F17C:        CMP #$10                  
CODE_23F17E:        BCC CODE_23F18D           
CODE_23F180:        LDA $196F,x               
CODE_23F183:        BEQ CODE_23F18D           
CODE_23F185:        STA $1846,x               
CODE_23F188:        LDA #$00                  
CODE_23F18A:        STA $196F,x               
CODE_23F18D:        JSR CODE_23F22E           
CODE_23F190:        JSR CODE_23F358           
CODE_23F193:        JSR CODE_23F458           
CODE_23F196:        RTS                       

CODE_23F197:        LDA $1813,x               
CODE_23F19A:        AND #$F0                  
CODE_23F19C:        STA $1813,x               
CODE_23F19F:        LDA #$00                  
CODE_23F1A1:        STA $1835,x               
CODE_23F1A4:        RTS                       

CODE_23F1A5:        LDA $1835,x               
CODE_23F1A8:        BMI CODE_23F1A4           
CODE_23F1AA:        LDA $191E,x               
CODE_23F1AD:        BNE CODE_23F1A4           
CODE_23F1AF:        LDA $18FA,x               
CODE_23F1B2:        CMP #$C2                  
CODE_23F1B4:        BEQ CODE_23F1BB           
CODE_23F1B6:        LDA $18BA                 
CODE_23F1B9:        BEQ CODE_23F22D           
CODE_23F1BB:        LDA #$02                  
CODE_23F1BD:        STA $1200                 
CODE_23F1C0:        LDA #$00                  
CODE_23F1C2:        STA $18CD,x               
CODE_23F1C5:        STA $197C,x               
CODE_23F1C8:        LDA $18BB,x               
CODE_23F1CB:        CMP #$0C                  
CODE_23F1CD:        BCS CODE_23F209                   
CODE_23F1CF:        CMP #$02                  
CODE_23F1D1:        BNE CODE_23F1ED           
CODE_23F1D3:        LDA $1802,x               
CODE_23F1D6:        CMP #$02                  
CODE_23F1D8:        BEQ CODE_23F1ED           
CODE_23F1DA:        LDA $1953,x               
CODE_23F1DD:        BNE CODE_23F1ED           
CODE_23F1DF:        LDA #$01                  
CODE_23F1E1:        STA $1953,x               
CODE_23F1E4:        LDA $1846,x               
CODE_23F1E7:        JSR CODE_23F626           
CODE_23F1EA:        JMP CODE_23F204           

CODE_23F1ED:        LDA $1802,x               
CODE_23F1F0:        EOR #$03                  
CODE_23F1F2:        STA $1802,x               
CODE_23F1F5:        CMP #$01                  
CODE_23F1F7:        BNE CODE_23F204           
CODE_23F1F9:        LDY $1866,x               
CODE_23F1FC:        DEY                       
CODE_23F1FD:        JSR CODE_23EE38           
CODE_23F200:        LDA #$00                  
CODE_23F202:        BEQ CODE_23F206           
CODE_23F204:        LDA #$FF                  
CODE_23F206:        STA $18E9,x               
CODE_23F209:        LDA $18FA,x               
CODE_23F20C:        CMP #$C2                  
CODE_23F20E:        BNE CODE_23F228           
CODE_23F210:        LDA $1897,x               
CODE_23F213:        AND #$C0                  
CODE_23F215:        CMP #$C0                  
CODE_23F217:        BEQ CODE_23F228           
CODE_23F219:        LDY #$01                  
CODE_23F21B:        ASL A                     
CODE_23F21C:        BCC CODE_23F21F           
CODE_23F21E:        DEY                       
CODE_23F21F:        LDA $1846,x               
CODE_23F222:        STA $196F,x               
CODE_23F225:        JSR CODE_23EE38           
CODE_23F228:        LDA #$E0                  
CODE_23F22A:        STA $1835,x               
CODE_23F22D:        RTS                       

CODE_23F22E:        LDY $18BB,x               
CODE_23F231:        CPY #$04                  
CODE_23F233:        BEQ CODE_23F239           
CODE_23F235:        CPY #$05                  
CODE_23F237:        BNE CODE_23F250           
CODE_23F239:        LDA $18E9,x               
CODE_23F23C:        BEQ CODE_23F250           
CODE_23F23E:        LSR A                     
CODE_23F23F:        LSR A                     
CODE_23F240:        AND #$0F                  
CODE_23F242:        TAY                       
CODE_23F243:        LDA.w DATA_21EDBD,y               
CODE_23F246:        STA $1857,x               
CODE_23F249:        LDX #$18                  
CODE_23F24B:        LDA #$06                  
CODE_23F24D:        JMP CODE_23F256           

CODE_23F250:        LDX.w DATA_21ED81,y               
CODE_23F253:        LDA.w DATA_21ED6D,y               
CODE_23F256:        STA $00                   
CODE_23F258:        STX $01                   
CODE_23F25A:        LDX $190E                 
CODE_23F25D:        LDA $1944,x               
CODE_23F260:        BEQ CODE_23F26A           
CODE_23F262:        LDA $1813,x               
CODE_23F265:        CMP #$F0                  
CODE_23F267:        BCS CODE_23F26A                   
CODE_23F269:        RTS                       

CODE_23F26A:        LDY $18BB,x               
CODE_23F26D:        LDA $1931,x               
CODE_23F270:        BEQ CODE_23F276           
CODE_23F272:        LDA #$0C                  
CODE_23F274:        STA $00                   
CODE_23F276:        LDA $1813,x               
CODE_23F279:        STA $03                   
CODE_23F27B:        LDY #$20                  
CODE_23F27D:        LDA $1802,x               
CODE_23F280:        CMP #$02                  
CODE_23F282:        BCC CODE_23F299           
CODE_23F284:        LDA $18BB,x               
CODE_23F287:        CMP #$03                  
CODE_23F289:        BEQ CODE_23F299           
CODE_23F28B:        CMP #$02                  
CODE_23F28D:        BCS CODE_23F297                   
CODE_23F28F:        INC $03                   
CODE_23F291:        INC $03                   
CODE_23F293:        LDA #$1A                  
CODE_23F295:        STA $01                   
CODE_23F297:        LDY #$A0                  
CODE_23F299:        LDA $191E,x               
CODE_23F29C:        BEQ CODE_23F2A6           
CODE_23F29E:        DEC $03                   
CODE_23F2A0:        DEC $03                   
CODE_23F2A2:        DEC $03                   
CODE_23F2A4:        LDY #$10                  
CODE_23F2A6:        LDA $1802,x               
CODE_23F2A9:        CMP #$01                  
CODE_23F2AB:        BEQ CODE_23F2B8           
CODE_23F2AD:        LDA $18BB,x               
CODE_23F2B0:        CMP #$00                  
CODE_23F2B2:        BEQ CODE_23F2B8           
CODE_23F2B4:        TYA                       
CODE_23F2B5:        ORA #$80                  
CODE_23F2B7:        TAY                       
CODE_23F2B8:        STY $02                   
CODE_23F2BA:        LDY $18C8                 
CODE_23F2BD:        LDA $1824,x               
CODE_23F2C0:        CLC                       
CODE_23F2C1:        ADC $199B                 
CODE_23F2C4:        STA $0900,y               
CODE_23F2C7:        LDA #$00                  
CODE_23F2C9:        STA $199B                 
CODE_23F2CC:        LDA $03                   
CODE_23F2CE:        STA $0901,y               
CODE_23F2D1:        LDA $18BB,x               
CODE_23F2D4:        CMP #$02                  
CODE_23F2D6:        BNE CODE_23F2EA           
CODE_23F2D8:        LDA $1857,x               
CODE_23F2DB:        LDY #$00                  
CODE_23F2DD:        AND #$08                  
CODE_23F2DF:        BEQ CODE_23F2E3           
CODE_23F2E1:        LDY #$40                  
CODE_23F2E3:        TYA                       
CODE_23F2E4:        LDY $18C8                 
CODE_23F2E7:        JMP CODE_23F2F4           

CODE_23F2EA:        LDA $1866,x               
CODE_23F2ED:        LSR A                     
CODE_23F2EE:        LDA #$00                  
CODE_23F2F0:        BCC CODE_23F2F4           
CODE_23F2F2:        LDA #$40                  
CODE_23F2F4:        ORA $00                   
CODE_23F2F6:        ORA $02                   
CODE_23F2F8:        STA $0903,y               
CODE_23F2FB:        LDA $18BB,x               
CODE_23F2FE:        CMP #$02                  
CODE_23F300:        BNE CODE_23F311           
CODE_23F302:        LDA $1953,x               
CODE_23F305:        LDX $01                   
CODE_23F307:        AND #$01                  
CODE_23F309:        BNE CODE_23F31A           
CODE_23F30B:        BEQ CODE_23F31B           
CODE_23F30D:        LDA #$00                  
CODE_23F30F:        BRA CODE_23F314           

CODE_23F311:        LDA $1857,x               
CODE_23F314:        LDX $01                   
CODE_23F316:        AND #$08                  
CODE_23F318:        BEQ CODE_23F31B           
CODE_23F31A:        INX                       
CODE_23F31B:        LDA.w DATA_21ED95,x               
CODE_23F31E:        STA $0902,y               
CODE_23F321:        LDA $0900,y               
CODE_23F324:        CMP #$F1                  
CODE_23F326:        BCC CODE_23F34B           
CODE_23F328:        LDA $0900,y               
CODE_23F32B:        STA $0904,y               
CODE_23F32E:        LDA $0901,y               
CODE_23F331:        STA $0905,y               
CODE_23F334:        LDA $0902,y               
CODE_23F337:        STA $0906,y               
CODE_23F33A:        LDA $0903,y               
CODE_23F33D:        STA $0907,y               
CODE_23F340:        TYA                       
CODE_23F341:        LSR A                     
CODE_23F342:        LSR A                     
CODE_23F343:        TAY                       
CODE_23F344:        LDA #$03                  
CODE_23F346:        STA $0A61,y               
CODE_23F349:        BRA CODE_23F34F           

CODE_23F34B:        TYA                       
CODE_23F34C:        LSR A                     
CODE_23F34D:        LSR A                     
CODE_23F34E:        TAY                       
CODE_23F34F:        LDA #$02                  
CODE_23F351:        STA $0A60,y               
CODE_23F354:        LDX $190E                 
CODE_23F357:        RTS                       

CODE_23F358:        CPX #$00                  
CODE_23F35A:        BEQ CODE_23F36F           
CODE_23F35C:        TXA                       
CODE_23F35D:        CLC                       
CODE_23F35E:        ADC $15                   
CODE_23F360:        LSR A                     
CODE_23F361:        BCC CODE_23F36F           
CODE_23F363:        TXA                       
CODE_23F364:        TAY                       
CODE_23F365:        DEY                       
CODE_23F366:        STY $0F                   
CODE_23F368:        JSR CODE_23F370           
CODE_23F36B:        DEC $0F                   
CODE_23F36D:        BPL CODE_23F368           
CODE_23F36F:        RTS                       

CODE_23F370:        LDY $0F                   
CODE_23F372:        LDA $18BB,y               
CODE_23F375:        CMP #$04                  
CODE_23F377:        BEQ CODE_23F354           
CODE_23F379:        CMP #$05                  
CODE_23F37B:        BEQ CODE_23F354           
CODE_23F37D:        LDA $1802,y               
CODE_23F380:        BEQ CODE_23F354           
CODE_23F382:        CMP #$03                  
CODE_23F384:        BCS CODE_23F38E                   
CODE_23F386:        LDA $191E,x               
CODE_23F389:        ORA $191E,y               
CODE_23F38C:        BEQ CODE_23F391           
CODE_23F38E:        JMP CODE_23F416           

CODE_23F391:        LDA $18DA,x               
CODE_23F394:        BEQ CODE_23F39B           
CODE_23F396:        LDA $18DA,y               
CODE_23F399:        BNE CODE_23F416           
CODE_23F39B:        LDX $0F                   
CODE_23F39D:        LDY #$04                  
CODE_23F39F:        JSR CODE_23F432           
CODE_23F3A2:        LDX $190E                 
CODE_23F3A5:        LDY #$00                  
CODE_23F3A7:        JSR CODE_23F432           
CODE_23F3AA:        JSR CODE_23ECC9           
CODE_23F3AD:        BCC CODE_23F416           
CODE_23F3AF:        LDY $0F                   
CODE_23F3B1:        LDA $1897,x               
CODE_23F3B4:        AND $1897,y               
CODE_23F3B7:        AND #$04                  
CODE_23F3B9:        BEQ CODE_23F416           
CODE_23F3BB:        LDA $18CD,x               
CODE_23F3BE:        BNE CODE_23F3E5           
CODE_23F3C0:        LDA #$28                  
CODE_23F3C2:        STA $18DA,x               
CODE_23F3C5:        LDA $1802,x               
CODE_23F3C8:        CMP #$01                  
CODE_23F3CA:        BNE CODE_23F3D6           
CODE_23F3CC:        LDA #$10                  
CODE_23F3CE:        STA $18CD,x               
CODE_23F3D1:        LDA #$08                  
CODE_23F3D3:        STA $1857,x               
CODE_23F3D6:        LDA $1824,x               
CODE_23F3D9:        CMP $1824,y               
CODE_23F3DC:        ROR A                     
CODE_23F3DD:        EOR $1846,x               
CODE_23F3E0:        BMI CODE_23F3E5           
CODE_23F3E2:        JSR CODE_23F41A           
CODE_23F3E5:        LDA $18CD,y               
CODE_23F3E8:        BNE CODE_23F416           
CODE_23F3EA:        LDA #$28                  
CODE_23F3EC:        STA $18DA,y               
CODE_23F3EF:        LDA $1802,y               
CODE_23F3F2:        CMP #$01                  
CODE_23F3F4:        BNE CODE_23F400           
CODE_23F3F6:        LDA #$10                  
CODE_23F3F8:        STA $18CD,y               
CODE_23F3FB:        LDA #$08                  
CODE_23F3FD:        STA $1857,y               
CODE_23F400:        LDA $1824,y               
CODE_23F403:        CMP $1824,x               
CODE_23F406:        ROR A                     
CODE_23F407:        EOR $1846,y               
CODE_23F40A:        BMI CODE_23F411           
CODE_23F40C:        LDX $0F                   
CODE_23F40E:        JSR CODE_23F41A           
CODE_23F411:        LDY $0F                   
CODE_23F413:        LDX $190E                 
CODE_23F416:        LDX $190E                 
CODE_23F419:        RTS                       

CODE_23F41A:        LDA $1846,x               
CODE_23F41D:        EOR #$FF                  
CODE_23F41F:        CLC                       
CODE_23F420:        ADC #$01                  
CODE_23F422:        STA $1846,x               
CODE_23F425:        RTS                       

CODE_23F426:        LDA $1822,y               
CODE_23F429:        LDY #$00                  
CODE_23F42B:        SBC $1824,x               
CODE_23F42E:        BPL CODE_23F431           
CODE_23F430:        INY                       
CODE_23F431:        RTS                       

CODE_23F432:        LDA $1813,x               
CODE_23F435:        CLC                       
CODE_23F436:        ADC #$06                  
CODE_23F438:        STA $0000,y               
CODE_23F43B:        LDA #$04                  
CODE_23F43D:        STA $0002,y               
CODE_23F440:        LDA $1824,x               
CODE_23F443:        CLC                       
CODE_23F444:        ADC #$02                  
CODE_23F446:        STA $0001,y               
CODE_23F449:        LDA $18BB,x               
CODE_23F44C:        CMP #$0B                  
CODE_23F44E:        LDA #$0C                  
CODE_23F450:        BCC CODE_23F454           
CODE_23F452:        LDA #$05                  
CODE_23F454:        STA $0003,y               
CODE_23F457:        RTS                       

CODE_23F458:        LDA $1800                 
CODE_23F45B:        CMP #$03                  
CODE_23F45D:        BEQ CODE_23F463           
CODE_23F45F:        CMP #$01                  
CODE_23F461:        BNE CODE_23F457           
CODE_23F463:        LDA $1801                 
CODE_23F466:        CMP #$03                  
CODE_23F468:        BEQ CODE_23F46E           
CODE_23F46A:        CMP #$01                  
CODE_23F46C:        BNE CODE_23F457           
CODE_23F46E:        TXA                       
CODE_23F46F:        CLC                       
CODE_23F470:        ADC $15                   
CODE_23F472:        LSR A                     
CODE_23F473:        BCS CODE_23F457                   
CODE_23F475:        LDA $18BB,x               
CODE_23F478:        CMP #$06                  
CODE_23F47A:        BEQ CODE_23F481           
CODE_23F47C:        LDA $191E,x               
CODE_23F47F:        BNE CODE_23F457           
CODE_23F481:        LDA #$01                  
CODE_23F483:        STA $0F                   
CODE_23F485:        LDX $0F                   
CODE_23F487:        LDA $1800,x               
CODE_23F48A:        CMP #$01                  
CODE_23F48C:        BNE CODE_23F493           
CODE_23F48E:        LDA $190A,x               
CODE_23F491:        BEQ CODE_23F496           
CODE_23F493:        JMP CODE_23F559           

CODE_23F496:        LDY #$04                  
CODE_23F498:        JSR CODE_23ECAC           
CODE_23F49B:        LDY #$00                  
CODE_23F49D:        LDX $190E                 
CODE_23F4A0:        JSR CODE_23F432           
CODE_23F4A3:        JSR CODE_23ECC9           
CODE_23F4A6:        LDY $0F                   
CODE_23F4A8:        BCC CODE_23F493           
CODE_23F4AA:        LDA $18BB,x               
CODE_23F4AD:        CMP #$0C                  
CODE_23F4AF:        BCC CODE_23F4B4           
CODE_23F4B1:        JMP CODE_23F5D3           

CODE_23F4B4:        CMP #$0B                  
CODE_23F4B6:        BNE CODE_23F4FC           
CODE_23F4B8:        LDA #$01                  
CODE_23F4BA:        STA $1203                 
CODE_23F4BD:        LDA #$0F                  
CODE_23F4BF:        STA $18E9,x               
CODE_23F4C2:        LDA $192E,y               
CODE_23F4C5:        CLC                       
CODE_23F4C6:        ADC #$01                  
CODE_23F4C8:        STA $192E,y               
CODE_23F4CB:        LDA $192E                 
CODE_23F4CE:        CLC                       
CODE_23F4CF:        ADC $192F                 
CODE_23F4D2:        CMP #$05                  
CODE_23F4D4:        BNE CODE_23F4F8           
CODE_23F4D6:        LDY #$0B                  
CODE_23F4D8:        LDA #$FF                  
CODE_23F4DA:        STA $18CD,y               
CODE_23F4DD:        DEY                       
CODE_23F4DE:        BPL CODE_23F4DA           
CODE_23F4E0:        LDY #$01                  
CODE_23F4E2:        LDA $192E                 
CODE_23F4E5:        CMP $192F                 
CODE_23F4E8:        BCC CODE_23F4EB           
CODE_23F4EA:        INY                       
CODE_23F4EB:        STY $078C                 
CODE_23F4EE:        LDA #$C0                  
CODE_23F4F0:        STA $1930                 
CODE_23F4F3:        LDA #$07                  
CODE_23F4F5:        STA $1202                 
CODE_23F4F8:        JSR CODE_23E161           
CODE_23F4FB:        RTS                       

CODE_23F4FC:        LDA $1802,x               
CODE_23F4FF:        CMP #$01                  
CODE_23F501:        BNE CODE_23F564           
CODE_23F503:        LDY #$0B                  
CODE_23F505:        LDA #$FF                  
CODE_23F507:        STA $18CD,y               
CODE_23F50A:        DEY                       
CODE_23F50B:        BPL CODE_23F507           
CODE_23F50D:        LDA $0F                   
CODE_23F50F:        EOR #$01                  
CODE_23F511:        TAY                       
CODE_23F512:        LDA #$FE                  
CODE_23F514:        STA $1930                 
CODE_23F517:        LDY $0F                   
CODE_23F519:        LDA #$02                  
CODE_23F51B:        STA $078C                 
CODE_23F51E:        CPY #$01                  
CODE_23F520:        BEQ CODE_23F527           
CODE_23F522:        LDA #$01                  
CODE_23F524:        STA $078C                 
CODE_23F527:        LDA #$20                  
CODE_23F529:        STA $1857,x               
CODE_23F52C:        STA $18E7,y               
CODE_23F52F:        LDA #$09                  
CODE_23F531:        STA $1202                 
CODE_23F534:        LDA #$02                  
CODE_23F536:        STA $1800,y               
CODE_23F539:        LDA #$D0                  
CODE_23F53B:        STA $1833,y               
CODE_23F53E:        LDA $18BB,x               
CODE_23F541:        CMP #$04                  
CODE_23F543:        BEQ CODE_23F551           
CODE_23F545:        CMP #$05                  
CODE_23F547:        BEQ CODE_23F551           
CODE_23F549:        JSR CODE_23F426           
CODE_23F54C:        INY                       
CODE_23F54D:        TYA                       
CODE_23F54E:        STA $1866,x               
CODE_23F551:        LDX $190E                 
CODE_23F554:        RTS                       

CODE_23F555:        DEY                       
CODE_23F556:        JSR CODE_23EE38           
CODE_23F559:        DEC $0F                   
CODE_23F55B:        BMI CODE_23F560           
CODE_23F55D:        JMP CODE_23F485           

CODE_23F560:        LDX $190E                 
CODE_23F563:        RTS                       

CODE_23F564:        LDA #$03                  
CODE_23F566:        STA $1200                 
CODE_23F569:        LDA $1844,y               
CODE_23F56C:        LDY #$00                  
CODE_23F56E:        CMP #$00                  
CODE_23F570:        BMI CODE_23F573           
CODE_23F572:        INY                       
CODE_23F573:        LDA.w DATA_21EDCD,y               
CODE_23F576:        STA $1846,x               
CODE_23F579:        LDY $0F                   
CODE_23F57B:        LDA #$03                  
CODE_23F57D:        STA $1802,x               
CODE_23F580:        LDA #$E0                  
CODE_23F582:        STA $1835,x               
CODE_23F585:        LDA #$0C                  
CODE_23F587:        STA $18B3,y               
CODE_23F58A:        LDA $192E,y               
CODE_23F58D:        CLC                       
CODE_23F58E:        ADC #$01                  
CODE_23F590:        STA $192E,y               
CODE_23F593:        LDA $192E                 
CODE_23F596:        CLC                       
CODE_23F597:        ADC $192F                 
CODE_23F59A:        CMP #$05                  
CODE_23F59C:        BEQ CODE_23F5C2           
CODE_23F59E:        CMP #$04                  
CODE_23F5A0:        BNE CODE_23F5C5           
CODE_23F5A2:        INC $19A0                 
CODE_23F5A5:        LDX #$04                  
CODE_23F5A7:        LDA $1802,x               
CODE_23F5AA:        BEQ CODE_23F5B0           
CODE_23F5AC:        CMP #$03                  
CODE_23F5AE:        BCC CODE_23F5B5           
CODE_23F5B0:        DEX                       
CODE_23F5B1:        BPL CODE_23F5A7           
CODE_23F5B3:        BMI CODE_23F5C5           
CODE_23F5B5:        LDA $1846,x               
CODE_23F5B8:        JSR CODE_23F626           
CODE_23F5BB:        LDA #$01                  
CODE_23F5BD:        STA $1931,x               
CODE_23F5C0:        BNE CODE_23F5C5           
CODE_23F5C2:        JSR CODE_23F4D6           
CODE_23F5C5:        LDX $190E                 
CODE_23F5C8:        LDY $0F                   
CODE_23F5CA:        LDA #$05                  
CODE_23F5CC:        STA $00BC,y               
CODE_23F5CF:        JSR CODE_23E161           
CODE_23F5D2:        RTS                       

CODE_23F5D3:        LDA $18E9,x               
CODE_23F5D6:        BNE CODE_23F604           
CODE_23F5D8:        JSR CODE_23F6B3           
CODE_23F5DB:        LDA #$05                  
CODE_23F5DD:        STA $1200                 
CODE_23F5E0:        LDY $0F                   
CODE_23F5E2:        LDA #$40                  
CODE_23F5E4:        STA $1989,y               
CODE_23F5E7:        LDY #$00                  
CODE_23F5E9:        LDA $0F                   
CODE_23F5EB:        BEQ CODE_23F5EF           
CODE_23F5ED:        LDY #$23                  
CODE_23F5EF:        LDA $1D9D,y               
CODE_23F5F2:        STA $1D9E,y               
CODE_23F5F5:        LDA $1D9C,y               
CODE_23F5F8:        STA $1D9D,y               
CODE_23F5FB:        LDA $18BB,x               
CODE_23F5FE:        SEC                       
CODE_23F5FF:        SBC #$0B                  
CODE_23F601:        STA $1D9C,y               
CODE_23F604:        RTS                       

CODE_23F605:        LDA $18CD,x               
CODE_23F608:        BNE CODE_23F684           
CODE_23F60A:        LDA #$00                  
CODE_23F60C:        STA $1857,x               
CODE_23F60F:        LDA $18E9,x               
CODE_23F612:        BNE CODE_23F647           
CODE_23F614:        JSR CODE_23F22E           
CODE_23F617:        LDA #$01                  
CODE_23F619:        STA $1802,x               
CODE_23F61C:        LDA $196F,x               
CODE_23F61F:        PHA                       
CODE_23F620:        LDA #$00                  
CODE_23F622:        STA $196F,x               
CODE_23F625:        PLA                       
CODE_23F626:        PHP                       
CODE_23F627:        BPL CODE_23F62E           
CODE_23F629:        EOR #$FF                  
CODE_23F62B:        CLC                       
CODE_23F62C:        ADC #$01                  
CODE_23F62E:        LDY #$00                  
CODE_23F630:        CMP #$0A                  
CODE_23F632:        BCC CODE_23F636           
CODE_23F634:        INY                       
CODE_23F635:        INY                       
CODE_23F636:        CMP #$0C                  
CODE_23F638:        BCC CODE_23F63C           
CODE_23F63A:        INY                       
CODE_23F63B:        INY                       
CODE_23F63C:        PLP                       
CODE_23F63D:        BPL CODE_23F640           
CODE_23F63F:        INY                       
CODE_23F640:        LDA.w DATA_21EDD5,y               
CODE_23F643:        STA $1846,x               
CODE_23F646:        RTS                       

CODE_23F647:        LDA $15                   
CODE_23F649:        AND #$01                  
CODE_23F64B:        BNE CODE_23F650           
CODE_23F64D:        DEC $18E9,x               
CODE_23F650:        LDA $18E9,x               
CODE_23F653:        CMP #$60                  
CODE_23F655:        BCS CODE_23F66C                   
CODE_23F657:        LSR A                     
CODE_23F658:        LSR A                     
CODE_23F659:        LSR A                     
CODE_23F65A:        LSR A                     
CODE_23F65B:        LSR A                     
CODE_23F65C:        TAY                       
CODE_23F65D:        LDA $15                   
CODE_23F65F:        AND.w DATA_21EDCF,y               
CODE_23F662:        BEQ CODE_23F66C           
CODE_23F664:        INC $199B                 
CODE_23F667:        LDA #$08                  
CODE_23F669:        STA $1857,x               
CODE_23F66C:        JSR CODE_23EA95           
CODE_23F66F:        LDA $1897,x               
CODE_23F672:        AND #$04                  
CODE_23F674:        BEQ CODE_23F681           
CODE_23F676:        JSR CODE_23F197           
CODE_23F679:        LDA #$00                  
CODE_23F67B:        STA $1846,x               
CODE_23F67E:        JSR CODE_23F1A5           
CODE_23F681:        JSR CODE_23F687           
CODE_23F684:        JMP CODE_23F18D           

CODE_23F687:        JSR CODE_23F971           
CODE_23F68A:        JSR CODE_23F977           
CODE_23F68D:        LDA $1835,x               
CODE_23F690:        BMI CODE_23F696           
CODE_23F692:        CMP #$40                  
CODE_23F694:        BCS CODE_23F69C                   
CODE_23F696:        INC $1835,x               
CODE_23F699:        INC $1835,x               
CODE_23F69C:        RTS                       

CODE_23F69D:        LDA $1931,x               
CODE_23F6A0:        BNE CODE_23F6A7           
CODE_23F6A2:        LDA $18CD,x               
CODE_23F6A5:        BNE CODE_23F6D5           
CODE_23F6A7:        LDA $1813,x               
CODE_23F6AA:        CMP #$E0                  
CODE_23F6AC:        BCC CODE_23F6B9           
CODE_23F6AE:        LDA $1944,x               
CODE_23F6B1:        BNE CODE_23F6B9           
CODE_23F6B3:        LDA #$00                  
CODE_23F6B5:        STA $1802,x               
CODE_23F6B8:        RTS                       

CODE_23F6B9:        JSR CODE_23F687           
CODE_23F6BC:        INC $1835,x               
CODE_23F6BF:        LDA $15                   
CODE_23F6C1:        AND #$01                  
CODE_23F6C3:        BNE CODE_23F6D5           
CODE_23F6C5:        LDA $1846,x               
CODE_23F6C8:        BEQ CODE_23F6D5           
CODE_23F6CA:        BMI CODE_23F6D2           
CODE_23F6CC:        DEC $1846,x               
CODE_23F6CF:        DEC $1846,x               
CODE_23F6D2:        INC $1846,x               
CODE_23F6D5:        JMP CODE_23F22E           

CODE_23F6D8:        RTS                       

CODE_23F6D9:        LDA $18BA                 
CODE_23F6DC:        STA $00                   
CODE_23F6DE:        BEQ CODE_23F6ED           
CODE_23F6E0:        DEC $18BA                 
CODE_23F6E3:        LSR A                     
CODE_23F6E4:        AND #$03                  
CODE_23F6E6:        TAY                       
CODE_23F6E7:        LDA.w DATA_21EDDD,y               
CODE_23F6EA:        STA $0216                 
CODE_23F6ED:        LDA $193E                 
CODE_23F6F0:        CMP #$03                  
CODE_23F6F2:        BEQ CODE_23F6D8           
CODE_23F6F4:        LDA #$98                  
CODE_23F6F6:        SEC                       
CODE_23F6F7:        SBC $0216                 
CODE_23F6FA:        STA $0821                 
CODE_23F6FD:        LDA #$78                  
CODE_23F6FF:        STA $0820                 
CODE_23F702:        LDA $193E                 
CODE_23F705:        TAY                       
CODE_23F706:        LDA.w DATA_21EDE1,y               
CODE_23F709:        STA $0822                 
CODE_23F70C:        LDA #$04                  
CODE_23F70E:        STA $0823                 
CODE_23F711:        LDA #$02                  
CODE_23F713:        STA $0A28                 
CODE_23F716:        LDX #$01                  
CODE_23F718:        LDA $193E                 
CODE_23F71B:        CMP #$03                  
CODE_23F71D:        BEQ CODE_23F795           
CODE_23F71F:        LDA $1800,x               
CODE_23F722:        CMP #$01                  
CODE_23F724:        BNE CODE_23F795           
CODE_23F726:        LDY #$00                  
CODE_23F728:        JSR CODE_23ECAC           
CODE_23F72B:        LDA #$98                  
CODE_23F72D:        STA $04                   
CODE_23F72F:        LDA #$78                  
CODE_23F731:        STA $05                   
CODE_23F733:        LDA #$10                  
CODE_23F735:        STA $07                   
CODE_23F737:        LDY $193E                 
CODE_23F73A:        SEC                       
CODE_23F73B:        SBC.w DATA_21EDE4,y               
CODE_23F73E:        STA $06                   
CODE_23F740:        JSR CODE_23ECC9           
CODE_23F743:        BCC CODE_23F795           
CODE_23F745:        LDY $193E                 
CODE_23F748:        LDA.w DATA_21EDE4,y               
CODE_23F74B:        STA $193F,x               
CODE_23F74E:        LDA $1811,x               
CODE_23F751:        SEC                       
CODE_23F752:        SBC $193F,x               
CODE_23F755:        CMP #$8D                  
CODE_23F757:        BCS CODE_23F765                   
CODE_23F759:        LDA $1833,x               
CODE_23F75C:        BMI CODE_23F795           
CODE_23F75E:        LDA #$04                  
CODE_23F760:        STA $1895,x               
CODE_23F763:        BEQ CODE_23F795           
CODE_23F765:        LDA $1811,x               
CODE_23F768:        CLC                       
CODE_23F769:        ADC $193F,x               
CODE_23F76C:        CMP #$A1                  
CODE_23F76E:        BCC CODE_23F795           
CODE_23F770:        LDA $1833,x               
CODE_23F773:        BPL CODE_23F795           
CODE_23F775:        LDA #$09                  
CODE_23F777:        STA $1203                 
CODE_23F77A:        INC $193E                 
CODE_23F77D:        LDA #$00                  
CODE_23F77F:        STA $1833,x               
CODE_23F782:        LDA #$A9                  
CODE_23F784:        SEC                       
CODE_23F785:        SBC $193F,x               
CODE_23F788:        STA $1811,x               
CODE_23F78B:        LDA #$08                  
CODE_23F78D:        STA $18B7,x               
CODE_23F790:        LDA #$10                  
CODE_23F792:        STA $18BA                 
CODE_23F795:        DEX                       
CODE_23F796:        BMI CODE_23F79B           
CODE_23F798:        JMP CODE_23F718           

CODE_23F79B:        RTS                       

CODE_23F79C:        LDA $18E9,x               
CODE_23F79F:        BEQ CODE_23F7AB           
CODE_23F7A1:        CMP #$20                  
CODE_23F7A3:        BNE CODE_23F7A8           
CODE_23F7A5:        JMP CODE_23F6B3           

CODE_23F7A8:        JMP CODE_23F22E           

CODE_23F7AB:        JSR CODE_23F22E           
CODE_23F7AE:        LDY $18C8                 
CODE_23F7B1:        LDA $1857,x               
CODE_23F7B4:        AND #$10                  
CODE_23F7B6:        BEQ CODE_23F7C0           
CODE_23F7B8:        LDA $0903,y               
CODE_23F7BB:        EOR #$C0                  
CODE_23F7BD:        STA $0903,y               
CODE_23F7C0:        INC $1857,x               
CODE_23F7C3:        INC $1857,x               
CODE_23F7C6:        LDY $1866,x               
CODE_23F7C9:        LDA $1824,x               
CODE_23F7CC:        CMP.w DATA_21EDEA,y               
CODE_23F7CF:        BNE CODE_23F7DD           
CODE_23F7D1:        LDA $18BB,x               
CODE_23F7D4:        CMP #$04                  
CODE_23F7D6:        BNE CODE_23F7DD           
CODE_23F7D8:        LDA #$40                  
CODE_23F7DA:        STA $18E9,x               
CODE_23F7DD:        JSR CODE_23F458           
CODE_23F7E0:        JSR CODE_23EA95           
CODE_23F7E3:        LDA $18BA                 
CODE_23F7E6:        BNE CODE_23F7EF           
CODE_23F7E8:        LDA $18FA,x               
CODE_23F7EB:        CMP #$C2                  
CODE_23F7ED:        BNE CODE_23F7F4           
CODE_23F7EF:        LDA #$40                  
CODE_23F7F1:        STA $18E9,x               
CODE_23F7F4:        LDA $18BB,x               
CODE_23F7F7:        CMP #$04                  
CODE_23F7F9:        BNE CODE_23F81A           
CODE_23F7FB:        JSR CODE_23F971           
CODE_23F7FE:        JSR CODE_23F977           
CODE_23F801:        LDA $18A6,x               
CODE_23F804:        AND #$01                  
CODE_23F806:        TAY                       
CODE_23F807:        LDA $1835,x               
CODE_23F80A:        CLC                       
CODE_23F80B:        ADC.w DATA_21EDE7,y               
CODE_23F80E:        STA $1835,x               
CODE_23F811:        CMP.w DATA_21EDE9,y               
CODE_23F814:        BNE CODE_23F819           
CODE_23F816:        INC $18A6,x               
CODE_23F819:        RTS                       

CODE_23F81A:        CMP #$06                  
CODE_23F81C:        BEQ CODE_23F847           
CODE_23F81E:        LDA $1897,x               
CODE_23F821:        AND #$03                  
CODE_23F823:        AND $1866,x               
CODE_23F826:        BEQ CODE_23F82B           
CODE_23F828:        JSR CODE_23F41A           
CODE_23F82B:        LDA $1897,x               
CODE_23F82E:        AND #$0C                  
CODE_23F830:        AND $1962,x               
CODE_23F833:        BEQ CODE_23F840           
CODE_23F835:        LDA $1835,x               
CODE_23F838:        EOR #$FF                  
CODE_23F83A:        CLC                       
CODE_23F83B:        ADC #$01                  
CODE_23F83D:        STA $1835,x               
CODE_23F840:        JSR CODE_23F971           
CODE_23F843:        JSR CODE_23F977           
CODE_23F846:        RTS                       

CODE_23F847:        JSR CODE_23F840           
CODE_23F84A:        INC $1835,x               
CODE_23F84D:        INC $1835,x               
CODE_23F850:        LDA $1813,x               
CODE_23F853:        CMP #$E0                  
CODE_23F855:        BCC CODE_23F85C           
CODE_23F857:        LDA #$00                  
CODE_23F859:        STA $1802,x               
CODE_23F85C:        RTS                       

CODE_23F85D:        LDX #$01                  
CODE_23F85F:        STX $190E                 
CODE_23F862:        TXA                       
CODE_23F863:        CLC                       
CODE_23F864:        ADC $18C9                 
CODE_23F867:        TAY                       
CODE_23F868:        LDA.w DATA_21ED4A,y               
CODE_23F86B:        STA $18C8                 
CODE_23F86E:        LDA $180F,x               
CODE_23F871:        BEQ CODE_23F899           
CODE_23F873:        PHA                       
CODE_23F874:        CMP #$0E                  
CODE_23F876:        BNE CODE_23F87B           
CODE_23F878:        JSR CODE_23F8F0           
CODE_23F87B:        PLA                       
CODE_23F87C:        CMP #$01                  
CODE_23F87E:        BNE CODE_23F896           
CODE_23F880:        JSR CODE_23F8DD           
CODE_23F883:        LDA #$00                  
CODE_23F885:        STA $2E                   
CODE_23F887:        LDA #$20                  
CODE_23F889:        STA $2F                   
CODE_23F88B:        LDA #$7E                  
CODE_23F88D:        STA $30                   
CODE_23F88F:        LDY $1908,x               
CODE_23F892:        LDA #$C1                  
CODE_23F894:        STA [$2E],y               
CODE_23F896:        JSR CODE_23F89D           
CODE_23F899:        DEX                       
CODE_23F89A:        BPL CODE_23F85F           
CODE_23F89C:        RTS                       

CODE_23F89D:        LDA $0076                 
CODE_23F8A0:        ORA $18CB                 
CODE_23F8A3:        ORA $18CC                 
CODE_23F8A6:        ORA $1930                 
CODE_23F8A9:        BNE CODE_23F8BA           
CODE_23F8AB:        DEC $180F,x               
CODE_23F8AE:        JSR CODE_23F96B           
CODE_23F8B1:        LDA $1842,x               
CODE_23F8B4:        CLC                       
CODE_23F8B5:        ADC #$05                  
CODE_23F8B7:        STA $1842,x               
CODE_23F8BA:        LDY $18C8                 
CODE_23F8BD:        LDA $1831,x               
CODE_23F8C0:        STA $0900,y               
CODE_23F8C3:        LDA $1820,x               
CODE_23F8C6:        STA $0901,y               
CODE_23F8C9:        LDA #$2C                  
CODE_23F8CB:        STA $0903,y               
CODE_23F8CE:        LDA #$80                  
CODE_23F8D0:        STA $0902,y               
CODE_23F8D3:        TYA                       
CODE_23F8D4:        LSR A                     
CODE_23F8D5:        LSR A                     
CODE_23F8D6:        TAY                       
CODE_23F8D7:        LDA #$02                  
CODE_23F8D9:        STA $0A60,y               
CODE_23F8DC:        RTS                       

CODE_23F8DD:        LDA #$02                  
CODE_23F8DF:        STA $0C                   
CODE_23F8E1:        LDA #$03                  
CODE_23F8E3:        STA $0D                   
CODE_23F8E5:        LDA #$12                  
CODE_23F8E7:        STA $0E                   
CODE_23F8E9:        LDA #$13                  
CODE_23F8EB:        STA $0F                   
CODE_23F8ED:        JMP CODE_23F8FA           

CODE_23F8F0:        LDA #$FF                  
CODE_23F8F2:        STA $0C                   
CODE_23F8F4:        STA $0D                   
CODE_23F8F6:        STA $0E                   
CODE_23F8F8:        STA $0F                   
CODE_23F8FA:        LDY $1600                 
CODE_23F8FD:        LDA #$08                  
CODE_23F8FF:        STA $03                   
CODE_23F901:        LDA $1908,x               
CODE_23F904:        PHA                       
CODE_23F905:        AND #$F0                  
CODE_23F907:        ASL A                     
CODE_23F908:        ROL $03                   
CODE_23F90A:        ASL A                     
CODE_23F90B:        ROL $03                   
CODE_23F90D:        STA $04                   
CODE_23F90F:        PLA                       
CODE_23F910:        ASL A                     
CODE_23F911:        AND #$1F                  
CODE_23F913:        CLC                       
CODE_23F914:        ADC $04                   
CODE_23F916:        STA $1603,y               
CODE_23F919:        CLC                       
CODE_23F91A:        ADC #$20                  
CODE_23F91C:        STA $160B,y               
CODE_23F91F:        LDA $03                   
CODE_23F921:        AND #$DF                  
CODE_23F923:        STA $1602,y               
CODE_23F926:        STA $160A,y               
CODE_23F929:        LDA #$00                  
CODE_23F92B:        STA $1604,y               
CODE_23F92E:        STA $160C,y               
CODE_23F931:        LDA #$03                  
CODE_23F933:        STA $1605,y               
CODE_23F936:        STA $160D,y               
CODE_23F939:        LDA $0C                   
CODE_23F93B:        STA $1606,y               
CODE_23F93E:        LDA $0D                   
CODE_23F940:        STA $1608,y               
CODE_23F943:        LDA $0E                   
CODE_23F945:        STA $160E,y               
CODE_23F948:        LDA $0F                   
CODE_23F94A:        STA $1610,y               
CODE_23F94D:        LDA #$18                  
CODE_23F94F:        STA $1607,y               
CODE_23F952:        STA $1609,y               
CODE_23F955:        STA $160F,y               
CODE_23F958:        STA $1611,y               
CODE_23F95B:        LDA #$FF                  
CODE_23F95D:        STA $1612,y               
CODE_23F960:        STA $1613,y               
CODE_23F963:        TYA                       
CODE_23F964:        CLC                       
CODE_23F965:        ADC #$10                  
CODE_23F967:        STA $1600                 
CODE_23F96A:        RTS                       

CODE_23F96B:        TXA                       
CODE_23F96C:        CLC                       
CODE_23F96D:        ADC #$0F                  
CODE_23F96F:        BPL CODE_23F97B           
CODE_23F971:        TXA                       
CODE_23F972:        CLC                       
CODE_23F973:        ADC #$13                  
CODE_23F975:        BPL CODE_23F97B           
CODE_23F977:        TXA                       
CODE_23F978:        CLC                       
CODE_23F979:        ADC #$02                  
CODE_23F97B:        TAX                       
CODE_23F97C:        JSR CODE_23F98F           
CODE_23F97F:        LDX $190E                 
CODE_23F982:        RTS                       

CODE_23F983:        TXA                       
CODE_23F984:        CLC                       
CODE_23F985:        ADC #$11                  
CODE_23F987:        TAX                       
CODE_23F988:        JSR CODE_23F98F           
CODE_23F98B:        LDX $190E                 
CODE_23F98E:        RTS                       

CODE_23F98F:        LDA $1833,x               
CODE_23F992:        ASL A                     
CODE_23F993:        ASL A                     
CODE_23F994:        ASL A                     
CODE_23F995:        ASL A                     
CODE_23F996:        CLC                       
CODE_23F997:        ADC $1873,x               
CODE_23F99A:        STA $1873,x               
CODE_23F99D:        PHP                       
CODE_23F99E:        LDY #$00                  
CODE_23F9A0:        LDA $1833,x               
CODE_23F9A3:        LSR A                     
CODE_23F9A4:        LSR A                     
CODE_23F9A5:        LSR A                     
CODE_23F9A6:        LSR A                     
CODE_23F9A7:        CMP #$08                  
CODE_23F9A9:        BCC CODE_23F9AE           
CODE_23F9AB:        ORA #$F0                  
CODE_23F9AD:        DEY                       
CODE_23F9AE:        PLP                       
CODE_23F9AF:        ADC $1811,x               
CODE_23F9B2:        STA $1811,x               
CODE_23F9B5:        ROL A                     
CODE_23F9B6:        CPX #$11                  
CODE_23F9B8:        BCS CODE_23F9C2                   
CODE_23F9BA:        ROR A                     
CODE_23F9BB:        TYA                       
CODE_23F9BC:        ADC $1942,x               
CODE_23F9BF:        STA $1942,x               
CODE_23F9C2:        RTS                       

CODE_23F9C3:        LDA $0076                 
CODE_23F9C6:        BEQ CODE_23F9E7           
CODE_23F9C8:        PHB                       
CODE_23F9C9:        PHK                       
CODE_23F9CA:        PLB                       
CODE_23F9CB:        LDY #$00                  
CODE_23F9CD:        REP #$30                  
CODE_23F9CF:        LDA #$FA17                
CODE_23F9D2:        STA $0000                 
CODE_23F9D5:        LDA #$FA2B                
CODE_23F9D8:        STA $0002                 
CODE_23F9DB:        LDA #$0028                
CODE_23F9DE:        STA $0004                 
CODE_23F9E1:        JSR CODE_23F9E8           
CODE_23F9E4:        SEP #$30                  
CODE_23F9E6:        PLB                       
CODE_23F9E7:        RTS                       

CODE_23F9E8:        LDA ($00)                 
CODE_23F9EA:        STA $0830,y               
CODE_23F9ED:        LDA ($02)                 
CODE_23F9EF:        STA $0832,y               
CODE_23F9F2:        INC $0000                 
CODE_23F9F5:        INC $0000                 
CODE_23F9F8:        INC $0002                 
CODE_23F9FB:        INC $0002                 
CODE_23F9FE:        PHY                       
CODE_23F9FF:        TYA                       
CODE_23FA00:        LSR A                     
CODE_23FA01:        LSR A                     
CODE_23FA02:        TAY                       
CODE_23FA03:        SEP #$30                  
CODE_23FA05:        LDA #$00                  
CODE_23FA07:        STA $0A2C,y               
CODE_23FA0A:        REP #$30                  
CODE_23FA0C:        PLY                       
CODE_23FA0D:        INY                       
CODE_23FA0E:        INY                       
CODE_23FA0F:        INY                       
CODE_23FA10:        INY                       
CODE_23FA11:        CPY $0004                 
CODE_23FA14:        BNE CODE_23F9E8           
CODE_23FA16:        RTS                       

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
