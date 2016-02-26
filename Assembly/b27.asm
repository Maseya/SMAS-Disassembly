;Super Mario Bros. 3

CODE_278000:        LDA $0425                 
CODE_278003:        BEQ CODE_278037           
CODE_278005:        LDA $052B                 
CODE_278008:        LDY $052A                 
CODE_27800B:        JSL CODE_209FC1           
CODE_27800F:        STA $052B                 
CODE_278012:        STY $052A                 
CODE_278015:        LDA $823C,y               
CODE_278018:        STA $2E                   
CODE_27801A:        LDA $824C,y               
CODE_27801D:        STA $2F                   
CODE_27801F:        LDA $052B                 
CODE_278022:        AND #$F0                  
CODE_278024:        STA $05                   
CODE_278026:        LDA $0529                 
CODE_278029:        LSR A                     
CODE_27802A:        LSR A                     
CODE_27802B:        LSR A                     
CODE_27802C:        LSR A                     
CODE_27802D:        ORA $05                   
CODE_27802F:        STA $04                   
CODE_278031:        LDA #$00                  
CODE_278033:        STA $06                   
CODE_278035:        BEQ CODE_278073           
CODE_278037:        LDA $0528                 
CODE_27803A:        ASL A                     
CODE_27803B:        TAX                       
CODE_27803C:        LDA $8200,x               
CODE_27803F:        STA $2E                   
CODE_278041:        LDA $8201,x               
CODE_278044:        STA $2F                   
CODE_278046:        STZ $06                   
CODE_278048:        LDA $052A                 
CODE_27804B:        BEQ CODE_27804F           
CODE_27804D:        INC $2F                   
CODE_27804F:        LDA $052B                 
CODE_278052:        AND #$F0                  
CODE_278054:        STA $05                   
CODE_278056:        LDA $0529                 
CODE_278059:        LSR A                     
CODE_27805A:        LSR A                     
CODE_27805B:        LSR A                     
CODE_27805C:        LSR A                     
CODE_27805D:        ORA $05                   
CODE_27805F:        STA $04                   
CODE_278061:        LDA $052A                 
CODE_278064:        BNE CODE_27806F           
CODE_278066:        LDA $052B                 
CODE_278069:        AND #$F0                  
CODE_27806B:        CMP #$F0                  
CODE_27806D:        BNE CODE_278073           
CODE_27806F:        LDA #$01                  
CODE_278071:        STA $06                   
CODE_278073:        LDA $0564                 
CODE_278076:        BNE CODE_278079           
CODE_278078:        RTL                       

CODE_278079:        JSR CODE_27807D           
CODE_27807C:        RTL                       

CODE_27807D:        JSL CODE_20FB1F           

PNTR_278081:        dw CODE_278144
                    dw CODE_2780B3
                    dw CODE_2780B3
                    dw CODE_2780B3
                    dw CODE_2780B3
                    dw CODE_2780B3
                    dw CODE_2780B3
                    dw CODE_2780B3
                    dw CODE_2780B3
                    dw CODE_2780B3
                    dw CODE_2780B3
                    dw CODE_2780B3
                    dw CODE_2780B3
                    dw CODE_2780B3
                    dw CODE_2780B3
                    dw CODE_2780B3
                    dw CODE_2780B3
                    dw CODE_2780B3
                    dw CODE_2780B3
                    dw CODE_278145
                    dw CODE_2781B5
                    dw CODE_278216
                    dw CODE_278216
                    dw CODE_278216
                    dw CODE_278216

CODE_2780B3:        LDX $0564                 
CODE_2780B6:        DEX                       
CODE_2780B7:        LDY $04                   
CODE_2780B9:        LDA $84E6,x               
CODE_2780BC:        STA [$2E],y               
CODE_2780BE:        TXA                       
CODE_2780BF:        ASL A                     
CODE_2780C0:        ASL A                     
CODE_2780C1:        ASL A                     
CODE_2780C2:        TAX                       
CODE_2780C3:        LDY #$00                  
CODE_2780C5:        LDA $84F8,x               
CODE_2780C8:        STA $036E,y               
CODE_2780CB:        INX                       
CODE_2780CC:        INY                       
CODE_2780CD:        CPY #$08                  
CODE_2780CF:        BNE CODE_2780C5           
CODE_2780D1:        LDA $05                   
CODE_2780D3:        ASL A                     
CODE_2780D4:        ADC #$00                  
CODE_2780D6:        ASL A                     
CODE_2780D7:        ADC #$00                  
CODE_2780D9:        PHA                       
CODE_2780DA:        AND #$0F                  
CODE_2780DC:        LDY $06                   
CODE_2780DE:        BEQ CODE_2780E7           
CODE_2780E0:        LDY $052A                 
CODE_2780E3:        BEQ CODE_2780E7           
CODE_2780E5:        ORA #$08                  
CODE_2780E7:        STA $036C                 
CODE_2780EA:        LDA $0528                 
CODE_2780ED:        LSR A                     
CODE_2780EE:        BCC CODE_2780F8           
CODE_2780F0:        LDA $036C                 
CODE_2780F3:        ORA #$04                  
CODE_2780F5:        STA $036C                 
CODE_2780F8:        PLA                       
CODE_2780F9:        AND #$F0                  
CODE_2780FB:        STA $01                   
CODE_2780FD:        LDA $0529                 
CODE_278100:        LSR A                     
CODE_278101:        LSR A                     
CODE_278102:        LSR A                     
CODE_278103:        ORA $01                   
CODE_278105:        STA $036D                 
CODE_278108:        LDA #$00                  
CODE_27810A:        STA $0564                 
CODE_27810D:        LDA $0425                 
CODE_278110:        BEQ CODE_278144           
CODE_278112:        REP #$20                  
CODE_278114:        LDA $06                   
CODE_278116:        PHA                       
CODE_278117:        LDA $052A                 
CODE_27811A:        XBA                       
CODE_27811B:        AND #$FF00                
CODE_27811E:        LSR A                     
CODE_27811F:        LSR A                     
CODE_278120:        STA $06                   
CODE_278122:        LDA $036C                 
CODE_278125:        XBA                       
CODE_278126:        SEC                       
CODE_278127:        SBC $06                   
CODE_278129:        AND #$0BFF                
CODE_27812C:        XBA                       
CODE_27812D:        STA $036C                 
CODE_278130:        PLA                       
CODE_278131:        STA $06                   
CODE_278133:        SEP #$20                  
CODE_278135:        LDA $052A                 
CODE_278138:        AND #$01                  
CODE_27813A:        BEQ CODE_278144           
CODE_27813C:        LDA $036C                 
CODE_27813F:        EOR #$08                  
CODE_278141:        STA $036C                 
CODE_278144:        RTS                       

CODE_278145:        LDA #$00                  
CODE_278147:        STA $0564                 
CODE_27814A:        LDY $04                   
CODE_27814C:        LDA #$42                  
CODE_27814E:        STA [$2E],y               
CODE_278150:        TYA                       
CODE_278151:        CLC                       
CODE_278152:        ADC #$10                  
CODE_278154:        TAY                       
CODE_278155:        BCC CODE_278159           
CODE_278157:        INC $2F                   
CODE_278159:        LDA #$42                  
CODE_27815B:        STA [$2E],y               
CODE_27815D:        REP #$10                  
CODE_27815F:        LDY #$0000                
CODE_278162:        LDX $1600                 
CODE_278165:        LDA $8588,y               
CODE_278168:        STA $1602,x               
CODE_27816B:        INX                       
CODE_27816C:        INY                       
CODE_27816D:        CPY #$000D                
CODE_278170:        BNE CODE_278165           
CODE_278172:        SEP #$10                  
CODE_278174:        LDA $05                   
CODE_278176:        ASL A                     
CODE_278177:        ADC #$00                  
CODE_278179:        ASL A                     
CODE_27817A:        ADC #$00                  
CODE_27817C:        PHA                       
CODE_27817D:        AND #$0F                  
CODE_27817F:        LDY $06                   
CODE_278181:        BEQ CODE_278185           
CODE_278183:        ORA #$08                  
CODE_278185:        REP #$10                  
CODE_278187:        LDX $1600                 
CODE_27818A:        STA $1602,x               
CODE_27818D:        STA $1608,x               
CODE_278190:        PLA                       
CODE_278191:        AND #$F0                  
CODE_278193:        STA $01                   
CODE_278195:        LDA $0529                 
CODE_278198:        LSR A                     
CODE_278199:        LSR A                     
CODE_27819A:        LSR A                     
CODE_27819B:        ORA $01                   
CODE_27819D:        STA $1603,x               
CODE_2781A0:        CLC                       
CODE_2781A1:        ADC #$01                  
CODE_2781A3:        STA $1609,x               
CODE_2781A6:        REP #$20                  
CODE_2781A8:        LDA $1600                 
CODE_2781AB:        CLC                       
CODE_2781AC:        ADC #$000C                
CODE_2781AF:        STA $1600                 
CODE_2781B2:        SEP #$30                  
CODE_2781B4:        RTS                       

CODE_2781B5:        LDA #$00                  
CODE_2781B7:        STA $0564                 
CODE_2781BA:        LDY $04                   
CODE_2781BC:        LDA #$86                  
CODE_2781BE:        STA [$2E],y               
CODE_2781C0:        INY                       
CODE_2781C1:        LDA #$87                  
CODE_2781C3:        STA [$2E],y               
CODE_2781C5:        LDX #$00                  
CODE_2781C7:        LDY $1600                 
CODE_2781CA:        REP #$20                  
CODE_2781CC:        LDA $8595,x               
CODE_2781CF:        STA $1602,y               
CODE_2781D2:        INX                       
CODE_2781D3:        INX                       
CODE_2781D4:        INY                       
CODE_2781D5:        INY                       
CODE_2781D6:        CPX #$1A                  
CODE_2781D8:        BNE CODE_2781CC           
CODE_2781DA:        SEP #$20                  
CODE_2781DC:        LDX $1600                 
CODE_2781DF:        LDA $05                   
CODE_2781E1:        ASL A                     
CODE_2781E2:        ADC #$00                  
CODE_2781E4:        ASL A                     
CODE_2781E5:        ADC #$00                  
CODE_2781E7:        PHA                       
CODE_2781E8:        AND #$0F                  
CODE_2781EA:        LDY $06                   
CODE_2781EC:        BEQ CODE_2781F0           
CODE_2781EE:        ORA #$08                  
CODE_2781F0:        STA $1602,x               
CODE_2781F3:        STA $160E,x               
CODE_2781F6:        PLA                       
CODE_2781F7:        AND #$F0                  
CODE_2781F9:        STA $01                   
CODE_2781FB:        LDA $0529                 
CODE_2781FE:        LSR A                     
CODE_2781FF:        LSR A                     
CODE_278200:        LSR A                     
CODE_278201:        ORA $01                   
CODE_278203:        STA $1603,x               
CODE_278206:        CLC                       
CODE_278207:        ADC #$20                  
CODE_278209:        STA $160F,x               
CODE_27820C:        LDA $1600                 
CODE_27820F:        CLC                       
CODE_278210:        ADC #$1A                  
CODE_278212:        STA $1600                 
CODE_278215:        RTS                       

CODE_278216:        LDX #$00                  
CODE_278218:        LDA $0564                 
CODE_27821B:        CMP #$15                  
CODE_27821D:        BNE CODE_278229           
CODE_27821F:        LDY $04                   
CODE_278221:        LDA [$2E],y               
CODE_278223:        CMP #$96                  
CODE_278225:        BEQ CODE_27822F           
CODE_278227:        BNE CODE_27822E           
CODE_278229:        SEC                       
CODE_27822A:        SBC #$16                  
CODE_27822C:        TAX                       
CODE_27822D:        INX                       
CODE_27822E:        INX                       
CODE_27822F:        LDY $85AF,x               
CODE_278232:        STX $0A                   
CODE_278234:        REP #$30                  
CODE_278236:        TYA                       
CODE_278237:        AND #$00FF                
CODE_27823A:        TAY                       
CODE_27823B:        SEP #$20                  
CODE_27823D:        LDX $1600                 
CODE_278240:        LDA #$31                  
CODE_278242:        STA $00                   
CODE_278244:        LDA $85B4,y               
CODE_278247:        STA $1602,x               
CODE_27824A:        INX                       
CODE_27824B:        INY                       
CODE_27824C:        DEC $00                   
CODE_27824E:        BNE CODE_278244           
CODE_278250:        SEP #$10                  
CODE_278252:        LDA $0A                   
CODE_278254:        ASL A                     
CODE_278255:        ASL A                     
CODE_278256:        STA $0A                   
CODE_278258:        LDA #$00                  
CODE_27825A:        STA $02                   
CODE_27825C:        LDA $04                   
CODE_27825E:        AND #$F0                  
CODE_278260:        LDY $06                   
CODE_278262:        BEQ CODE_278267           
CODE_278264:        CLC                       
CODE_278265:        ADC #$10                  
CODE_278267:        STA $05                   
CODE_278269:        LDA $04                   
CODE_27826B:        AND #$0F                  
CODE_27826D:        ASL A                     
CODE_27826E:        STA $07                   
CODE_278270:        LDA $05                   
CODE_278272:        ASL A                     
CODE_278273:        ADC #$00                  
CODE_278275:        ASL A                     
CODE_278276:        ADC #$00                  
CODE_278278:        PHA                       
CODE_278279:        AND #$03                  
CODE_27827B:        LDY $06                   
CODE_27827D:        BEQ CODE_278281           
CODE_27827F:        ORA #$08                  
CODE_278281:        STA $08                   
CODE_278283:        LDA $0528                 
CODE_278286:        LSR A                     
CODE_278287:        BCC CODE_27828F           
CODE_278289:        LDA $08                   
CODE_27828B:        ORA #$04                  
CODE_27828D:        STA $08                   
CODE_27828F:        LDX #$00                  
CODE_278291:        LDA $02                   
CODE_278293:        BEQ CODE_278297           
CODE_278295:        LDX #$18                  
CODE_278297:        REP #$30                  
CODE_278299:        TXA                       
CODE_27829A:        AND #$00FF                
CODE_27829D:        CLC                       
CODE_27829E:        ADC $1600                 
CODE_2782A1:        TAX                       
CODE_2782A2:        SEP #$20                  
CODE_2782A4:        PLA                       
CODE_2782A5:        AND #$F0                  
CODE_2782A7:        ORA $07                   
CODE_2782A9:        PHA                       
CODE_2782AA:        LDA $08                   
CODE_2782AC:        AND #$08                  
CODE_2782AE:        BEQ CODE_2782CA           
CODE_2782B0:        PLA                       
CODE_2782B1:        CMP #$40                  
CODE_2782B3:        BCS CODE_2782C5
CODE_2782B5:        PHA                       
CODE_2782B6:        DEC $08                   
CODE_2782B8:        LDA $08                   
CODE_2782BA:        AND #$08                  
CODE_2782BC:        BNE CODE_2782C4           
CODE_2782BE:        LDA $08                   
CODE_2782C0:        AND #$03                  
CODE_2782C2:        STA $08                   
CODE_2782C4:        PLA                       
CODE_2782C5:        SEC                       
CODE_2782C6:        SBC #$40                  
CODE_2782C8:        BRA CODE_2782CB           

CODE_2782CA:        PLA                       
CODE_2782CB:        STA $03                   
CODE_2782CD:        STA $1603,x               
CODE_2782D0:        CLC                       
CODE_2782D1:        ADC #$20                  
CODE_2782D3:        STA $160F,x               
CODE_2782D6:        LDA $08                   
CODE_2782D8:        STA $1602,x               
CODE_2782DB:        STA $160E,x               
CODE_2782DE:        SEP #$10                  
CODE_2782E0:        LDY $04                   
CODE_2782E2:        LDX $0A                   
CODE_2782E4:        LDA $86AB,x               
CODE_2782E7:        STA [$2E],y               
CODE_2782E9:        INY                       
CODE_2782EA:        LDA $86AC,x               
CODE_2782ED:        STA [$2E],y               
CODE_2782EF:        LDA $04                   
CODE_2782F1:        CLC                       
CODE_2782F2:        ADC #$10                  
CODE_2782F4:        STA $04                   
CODE_2782F6:        LDA $2F                   
CODE_2782F8:        ADC #$00                  
CODE_2782FA:        STA $2F                   
CODE_2782FC:        INC $0A                   
CODE_2782FE:        INC $0A                   
CODE_278300:        INC $02                   
CODE_278302:        LDA $02                   
CODE_278304:        CMP #$02                  
CODE_278306:        BEQ CODE_27830B           
CODE_278308:        JMP CODE_27825C           

CODE_27830B:        REP #$20                  
CODE_27830D:        LDA $1600                 
CODE_278310:        CLC                       
CODE_278311:        ADC #$0030                
CODE_278314:        STA $1600                 
CODE_278317:        SEP #$20                  
CODE_278319:        STZ $0564                 
CODE_27831C:        INC $037B                 
CODE_27831F:        RTS                       

CODE_278320:        LDA $15                   
CODE_278322:        AND #$07                  
CODE_278324:        BNE CODE_278357           
CODE_278326:        LDA $15                   
CODE_278328:        AND #$18                  
CODE_27832A:        LSR A                     
CODE_27832B:        TAX                       
CODE_27832C:        LDY $1600                 
CODE_27832F:        LDA #$3F                  
CODE_278331:        STA $1601,y               
CODE_278334:        LDA #$04                  
CODE_278336:        STA $1602,y               
CODE_278339:        STA $1603,y               
CODE_27833C:        LDA $86BF,x               
CODE_27833F:        STA $1604,y               
CODE_278342:        INY                       
CODE_278343:        INX                       
CODE_278344:        TXA                       
CODE_278345:        AND #$03                  
CODE_278347:        BNE CODE_27833C           
CODE_278349:        LDA #$00                  
CODE_27834B:        STA $1604,y               
CODE_27834E:        LDA $1600                 
CODE_278351:        CLC                       
CODE_278352:        ADC #$07                  
CODE_278354:        STA $1600                 
CODE_278357:        RTS                       

DATA_278358:        db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF

CODE_278500:        LDA $0554                 
CODE_278503:        ORA $0551                 
CODE_278506:        ORA $9C                   
CODE_278508:        BEQ CODE_278517           
CODE_27850A:        LDA $1A02                 
CODE_27850D:        CMP #$13                  
CODE_27850F:        BCC CODE_278516           
CODE_278511:        LDA #$80                  
CODE_278513:        STA $05F3                 
CODE_278516:        RTL                       

CODE_278517:        STA $05F3                 
CODE_27851A:        LDA $1A09                 
CODE_27851D:        BEQ CODE_278522           
CODE_27851F:        DEC $1A09                 
CODE_278522:        JSR CODE_278526           
CODE_278525:        RTL                       

CODE_278526:        LDA $1A01                 
CODE_278529:        JSL CODE_20FB1F           

PNTR_27852D:        dw CODE_27855A
                    dw CODE_27855A
                    dw CODE_27888F
                    dw CODE_27876F
                    dw CODE_278723
                    dw CODE_27882D

CODE_278539:        DEC $1A67
CODE_27853C:        BPL CODE_278559           
CODE_27853E:        LDA #$05                  
CODE_278540:        STA $1A67                 
CODE_278543:        INC $1A66                 
CODE_278546:        LDA $1A66                 
CODE_278549:        CMP #$06                  
CODE_27854B:        BCC CODE_278552           
CODE_27854D:        LDA #$00                  
CODE_27854F:        STA $1A66                 
CODE_278552:        TAY                       
CODE_278553:        LDA $84BE,y               
CODE_278556:        STA $07C9                 
CODE_278559:        RTS                       

CODE_27855A:        LDX #$00                  
CODE_27855C:        JSR CODE_278922           
CODE_27855F:        LDA $1A02                 
CODE_278562:        CMP #$11                  
CODE_278564:        BNE CODE_27856B           
CODE_278566:        PHA                       
CODE_278567:        JSR CODE_278539           
CODE_27856A:        PLA                       
CODE_27856B:        CMP #$0E                  
CODE_27856D:        BNE CODE_278572           
CODE_27856F:        JSR CODE_27886A           
CODE_278572:        JSR CODE_278697           
CODE_278575:        LDA $1A09                 
CODE_278578:        LSR A                     
CODE_278579:        BCS CODE_2785B9                   
CODE_27857B:        PHA                       
CODE_27857C:        JSR CODE_278920           
CODE_27857F:        PLA                       
CODE_278580:        BNE CODE_2785B9           
CODE_278582:        LDA $1A08                 
CODE_278585:        BEQ CODE_27858A           
CODE_278587:        JMP CODE_278614           

CODE_27858A:        LDA $1A05                 
CODE_27858D:        BNE CODE_2785E8           
CODE_27858F:        STX $DA                   
CODE_278591:        LDX $1A02                 
CODE_278594:        LDA $1A03                 
CODE_278597:        CMP $27AA5F,x             
CODE_27859B:        PHP                       
CODE_27859C:        TXY                       
CODE_27859D:        LDX $DA                   
CODE_27859F:        PLP                       
CODE_2785A0:        BNE CODE_2785C4           
CODE_2785A2:        CPY #$13                  
CODE_2785A4:        BCC CODE_2785A9           
CODE_2785A6:        ROR $05F3                 
CODE_2785A9:        LDA #$00                  
CODE_2785AB:        STA $1A0E                 
CODE_2785AE:        LDA $825C,y               
CODE_2785B1:        BNE CODE_2785BA           
CODE_2785B3:        STA $1A0F                 
CODE_2785B6:        STA $1A10                 
CODE_2785B9:        RTS                       

CODE_2785BA:        STA $1A04                 
CODE_2785BD:        LDA #$FF                  
CODE_2785BF:        STA $1A05                 
CODE_2785C2:        BNE CODE_2785DF           
CODE_2785C4:        INC $1A03                 
CODE_2785C7:        LDY $1A03                 
CODE_2785CA:        LDA $8271,y               
CODE_2785CD:        LSR A                     
CODE_2785CE:        LSR A                     
CODE_2785CF:        LSR A                     
CODE_2785D0:        LSR A                     
CODE_2785D1:        BEQ CODE_27860E           
CODE_2785D3:        STA $1A04                 
CODE_2785D6:        LDY $1A03                 
CODE_2785D9:        LDA $835F,y               
CODE_2785DC:        STA $1A05                 
CODE_2785DF:        LDY $1A04                 
CODE_2785E2:        LDA $8458,y               
CODE_2785E5:        STA $1A06                 
CODE_2785E8:        LDY $1A04                 
CODE_2785EB:        LDA $1A06                 
CODE_2785EE:        CMP $8459,y               
CODE_2785F1:        BNE CODE_278603           
CODE_2785F3:        LDA $8458,y               
CODE_2785F6:        STA $1A06                 
CODE_2785F9:        LDA $1A05                 
CODE_2785FC:        BMI CODE_278603           
CODE_2785FE:        DEC $1A05                 
CODE_278601:        BEQ CODE_27858F           
CODE_278603:        INC $1A06                 
CODE_278606:        LDY $1A06                 
CODE_278609:        LDA $8490,y               
CODE_27860C:        BNE CODE_278611           
CODE_27860E:        LDA $835F,y               
CODE_278611:        STA $1A08                 
CODE_278614:        DEC $1A08                 
CODE_278617:        LDA $1A05                 
CODE_27861A:        BEQ CODE_278624           
CODE_27861C:        LDY $1A06                 
CODE_27861F:        LDA $8462,y               
CODE_278622:        BPL CODE_27862A           
CODE_278624:        LDY $1A03                 
CODE_278627:        LDA $8271,y               
CODE_27862A:        PHA                       
CODE_27862B:        LSR A                     
CODE_27862C:        LSR A                     
CODE_27862D:        AND #$03                  
CODE_27862F:        TAY                       
CODE_278630:        LDA $844D,y               
CODE_278633:        CLC                       
CODE_278634:        ADC $1A0E                 
CODE_278637:        STA $1A0E                 
CODE_27863A:        PLA                       
CODE_27863B:        AND #$03                  
CODE_27863D:        TAY                       
CODE_27863E:        LDA $844D,y               
CODE_278641:        CLC                       
CODE_278642:        ADC $1A0F                 
CODE_278645:        STA $1A0F                 
CODE_278648:        LDA #$04                  
CODE_27864A:        STA $1A09                 
CODE_27864D:        LDA $02BF                 
CODE_278650:        CMP #$03                  
CODE_278652:        BNE CODE_278659           
CODE_278654:        LDX $0727                 
CODE_278657:        BRA CODE_278660           

CODE_278659:        LDX #$08                  
CODE_27865B:        CMP #$04                  
CODE_27865D:        BEQ CODE_278660           
CODE_27865F:        RTS                       

CODE_278660:        LDA $0351                 
CODE_278663:        INC A                     
CODE_278664:        INC A                     
CODE_278665:        CMP $8450,x               
CODE_278668:        BCC CODE_27866D           
CODE_27866A:        AND $8450,x               
CODE_27866D:        STA $0351                 
CODE_278670:        LDA $0350                 
CODE_278673:        CMP #$23                  
CODE_278675:        BEQ CODE_27867B           
CODE_278677:        JSL CODE_29D356           
CODE_27867B:        REP #$20                  
CODE_27867D:        LDA $0212                 
CODE_278680:        STA $035D                 
CODE_278683:        LSR A                     
CODE_278684:        STA $035B                 
CODE_278687:        LSR A                     
CODE_278688:        STA $0359                 
CODE_27868B:        LSR A                     
CODE_27868C:        STA $0357                 
CODE_27868F:        SEP #$20                  
CODE_278691:        LDA #$07                  
CODE_278693:        STA $0427                 
CODE_278696:        RTS                       

CODE_278697:        LDA #$01                  
CODE_278699:        STA $05FC                 
CODE_27869C:        LDY $A6                   
CODE_27869E:        BNE CODE_2786BC           
CODE_2786A0:        LDA $1A02                 
CODE_2786A3:        CMP #$13                  
CODE_2786A5:        BCC CODE_2786B8           
CODE_2786A7:        LDA #$04                  
CODE_2786A9:        STA $0427                 
CODE_2786AC:        LDA $55                   
CODE_2786AE:        CMP #$01                  
CODE_2786B0:        BNE CODE_2786B8           
CODE_2786B2:        LDA $70                   
CODE_2786B4:        CMP #$70                  
CODE_2786B6:        BCS CODE_2786B9                   
CODE_2786B8:        INY                       
CODE_2786B9:        STY $1A14                 
CODE_2786BC:        LDA #$0F                  
CODE_2786BE:        SEC                       
CODE_2786BF:        SBC $79                   
CODE_2786C1:        BCS CODE_2786CA                   
CODE_2786C3:        LDA $79                   
CODE_2786C5:        SEC                       
CODE_2786C6:        SBC #$E0                  
CODE_2786C8:        BCC CODE_2786E5           
CODE_2786CA:        LDA $1A0E                 
CODE_2786CD:        EOR $8B                   
CODE_2786CF:        BMI CODE_2786D4           
CODE_2786D1:        STZ $074E                 
CODE_2786D4:        LDA $1A0E                 
CODE_2786D7:        CLC                       
CODE_2786D8:        SBC $8B                   
CODE_2786DA:        EOR $79                   
CODE_2786DC:        BMI CODE_2786F6           
CODE_2786DE:        LDA $1A0E                 
CODE_2786E1:        STA $8B                   
CODE_2786E3:        BRA CODE_2786F6           

CODE_2786E5:        LDA $1A14                 
CODE_2786E8:        BNE CODE_2786F6           
CODE_2786EA:        LDA $5E                   
CODE_2786EC:        CLC                       
CODE_2786ED:        ADC $1A12                 
CODE_2786F0:        STA $5E                   
CODE_2786F2:        BCC CODE_2786F6           
CODE_2786F4:        INC $43                   
CODE_2786F6:        LDA $1A0E                 
CODE_2786F9:        ASL A                     
CODE_2786FA:        ROL A                     
CODE_2786FB:        AND #$01                  
CODE_2786FD:        STA $1A07                 
CODE_278700:        LDA $8B                   
CODE_278702:        BEQ CODE_278722           
CODE_278704:        EOR $1A0E                 
CODE_278707:        BMI CODE_278722           
CODE_278709:        LDY #$00                  
CODE_27870B:        LDA $1A12                 
CODE_27870E:        BEQ CODE_278722           
CODE_278710:        BPL CODE_278713           
CODE_278712:        DEY                       
CODE_278713:        CLC                       
CODE_278714:        ADC $5E                   
CODE_278716:        STA $5E                   
CODE_278718:        TYA                       
CODE_278719:        ADC $43                   
CODE_27871B:        STA $43                   
CODE_27871D:        LDA #$00                  
CODE_27871F:        STA $074E                 
CODE_278722:        RTS                       

CODE_278723:        LDA $1A04                 
CODE_278726:        BNE CODE_27873C           
CODE_278728:        LDA $0216                 
CODE_27872B:        CMP #$EF                  
CODE_27872D:        BNE CODE_278722           
CODE_27872F:        LDA $0216                 
CODE_278732:        STA $1A0D                 
CODE_278735:        INC $1A04                 
CODE_278738:        LDA #$20                  
CODE_27873A:        BNE CODE_278756           
CODE_27873C:        LDA $1A09                 
CODE_27873F:        BEQ CODE_278744           
CODE_278741:        JMP CODE_2787B8           

CODE_278744:        LDA $1A0D                 
CODE_278747:        CMP #$0D                  
CODE_278749:        BEQ CODE_27876C           
CODE_27874B:        CMP #$0F                  
CODE_27874D:        BNE CODE_278759           
CODE_27874F:        LDA #$09                  
CODE_278751:        STA $1203                 
CODE_278754:        LDA #$20                  
CODE_278756:        STA $1A09                 
CODE_278759:        JSR CODE_278920           
CODE_27875C:        LDA $15                   
CODE_27875E:        AND #$07                  
CODE_278760:        BNE CODE_27876C           
CODE_278762:        LDA $1A0F                 
CODE_278765:        CMP #$F8                  
CODE_278767:        BEQ CODE_27876C           
CODE_278769:        DEC $1A0F                 
CODE_27876C:        JMP CODE_2787C0           

CODE_27876F:        LDA $1A09                 
CODE_278772:        BNE CODE_2787B8           
CODE_278774:        JSR CODE_278920           
CODE_278777:        LDA $15                   
CODE_278779:        AND #$07                  
CODE_27877B:        BNE CODE_27878F           
CODE_27877D:        LDY $1A03                 
CODE_278780:        LDA $1A0F                 
CODE_278783:        CMP $84C8,y               
CODE_278786:        BEQ CODE_27878F           
CODE_278788:        CLC                       
CODE_278789:        ADC $84C6,y               
CODE_27878C:        STA $1A0F                 
CODE_27878F:        LDA $1A02                 
CODE_278792:        ASL A                     
CODE_278793:        ORA $1A03                 
CODE_278796:        TAY                       
CODE_278797:        LDA $1A0D                 
CODE_27879A:        CMP $84CA,y               
CODE_27879D:        BNE CODE_2787C0           
CODE_27879F:        LDA #$00                  
CODE_2787A1:        STA $1A0F                 
CODE_2787A4:        LDA $1A03                 
CODE_2787A7:        EOR #$01                  
CODE_2787A9:        STA $1A03                 
CODE_2787AC:        BEQ CODE_2787B3           
CODE_2787AE:        LDA #$09                  
CODE_2787B0:        STA $1203                 
CODE_2787B3:        LDA #$20                  
CODE_2787B5:        STA $1A09                 
CODE_2787B8:        AND #$01                  
CODE_2787BA:        EOR $1A0D                 
CODE_2787BD:        STA $1A0D                 
CODE_2787C0:        LDA #$01                  
CODE_2787C2:        STA $058B                 
CODE_2787C5:        LDA #$81                  
CODE_2787C7:        STA $0427                 
CODE_2787CA:        LDA #$06                  
CODE_2787CC:        LDY $BB                   
CODE_2787CE:        BNE CODE_2787D2           
CODE_2787D0:        LDA #$12                  
CODE_2787D2:        ADC $70                   
CODE_2787D4:        AND #$F0                  
CODE_2787D6:        STA $08                   
CODE_2787D8:        LDA $55                   
CODE_2787DA:        ADC #$00                  
CODE_2787DC:        AND #$01                  
CODE_2787DE:        STA $02                   
CODE_2787E0:        LDA $5E                   
CODE_2787E2:        CLC                       
CODE_2787E3:        ADC #$08                  
CODE_2787E5:        STA $09                   
CODE_2787E7:        LDA $43                   
CODE_2787E9:        ADC #$00                  
CODE_2787EB:        ASL A                     
CODE_2787EC:        TAY                       
CODE_2787ED:        LDA $8200,y               
CODE_2787F0:        STA $00                   
CODE_2787F2:        LDA $8201,y               
CODE_2787F5:        CLC                       
CODE_2787F6:        ADC $02                   
CODE_2787F8:        STA $01                   
CODE_2787FA:        LDA $09                   
CODE_2787FC:        LSR A                     
CODE_2787FD:        LSR A                     
CODE_2787FE:        LSR A                     
CODE_2787FF:        LSR A                     
CODE_278800:        ORA $08                   
CODE_278802:        TAY                       
CODE_278803:        LDA #$7E                  
CODE_278805:        STA $02                   
CODE_278807:        LDA [$00],y               
CODE_278809:        STA $00                   
CODE_27880B:        LDY $0560                 
CODE_27880E:        LDA $AF56,y               
CODE_278811:        CMP $00                   
CODE_278813:        BEQ CODE_278823           
CODE_278815:        LDA $AF3A,y               
CODE_278818:        CMP #$FF                  
CODE_27881A:        BEQ CODE_278827           
CODE_27881C:        SEC                       
CODE_27881D:        SBC $00                   
CODE_27881F:        CMP #$02                  
CODE_278821:        BCS CODE_278827                   
CODE_278823:        JSL CODE_27A4C6           
CODE_278827:        LDA #$81                  
CODE_278829:        STA $05FC                 
CODE_27882C:        RTS                       

CODE_27882D:        JSR CODE_278920           
CODE_278830:        LDA $15                   
CODE_278832:        AND #$07                  
CODE_278834:        BNE CODE_278848           
CODE_278836:        LDY $1A03                 
CODE_278839:        LDA $1A0F                 
CODE_27883C:        CMP $84CE,y               
CODE_27883F:        BEQ CODE_278848           
CODE_278841:        CLC                       
CODE_278842:        ADC $84C6,y               
CODE_278845:        STA $1A0F                 
CODE_278848:        LDA $1A02                 
CODE_27884B:        ASL A                     
CODE_27884C:        ORA $1A03                 
CODE_27884F:        TAY                       
CODE_278850:        LDA $1A0D                 
CODE_278853:        CMP $84D0,y               
CODE_278856:        BNE CODE_278860           
CODE_278858:        LDA $1A03                 
CODE_27885B:        EOR #$01                  
CODE_27885D:        STA $1A03                 
CODE_278860:        LDA $1A02                 
CODE_278863:        CMP #$04                  
CODE_278865:        BCC CODE_27886A           
CODE_278867:        JMP CODE_2787C0           

CODE_27886A:        LDY #$00                  
CODE_27886C:        LDA #$00                  
CODE_27886E:        JSR CODE_2787C7           
CODE_278871:        LDA $0544                 
CODE_278874:        BNE CODE_27888E           
CODE_278876:        TAY                       
CODE_278877:        LDA $056F                 
CODE_27887A:        BNE CODE_278881           
CODE_27887C:        LDA $BB                   
CODE_27887E:        BEQ CODE_278881           
CODE_278880:        INY                       
CODE_278881:        LDA $82                   
CODE_278883:        CMP $84C4,y               
CODE_278886:        TAY                       
CODE_278887:        ROR A                     
CODE_278888:        CPY #$80                  
CODE_27888A:        ROR A                     
CODE_27888B:        STA $0584                 
CODE_27888E:        RTS                       

CODE_27888F:        INC $1A13                 
CODE_278892:        LDA #$00                  
CODE_278894:        STA $1A0E                 
CODE_278897:        STA $1A12                 
CODE_27889A:        LDA $1A04                 
CODE_27889D:        CMP #$05                  
CODE_27889F:        BCS CODE_278918                   
CODE_2788A1:        REP #$20                  
CODE_2788A3:        LDA $0565                 
CODE_2788A6:        AND #$0003                
CODE_2788A9:        BNE CODE_2788AE           
CODE_2788AB:        INC $02CE                 
CODE_2788AE:        LDA $0565                 
CODE_2788B1:        AND #$0003                
CODE_2788B4:        BNE CODE_2788B9           
CODE_2788B6:        DEC $02CC                 
CODE_2788B9:        SEP #$20                  
CODE_2788BB:        LDA #$08                  
CODE_2788BD:        STA $1A0E                 
CODE_2788C0:        LDA #$F8                  
CODE_2788C2:        STA $1A0F                 
CODE_2788C5:        LDA $1A13                 
CODE_2788C8:        LSR A                     
CODE_2788C9:        BCC CODE_2788CE           
CODE_2788CB:        INC $1A12                 
CODE_2788CE:        LDA $05FF                 
CODE_2788D1:        BNE CODE_2788EC           
CODE_2788D3:        BCC CODE_27891D           
CODE_2788D5:        INC $1A0C                 
CODE_2788D8:        BNE CODE_2788DD           
CODE_2788DA:        INC $1A0A                 
CODE_2788DD:        LDA $1A0D                 
CODE_2788E0:        BNE CODE_2788E7           
CODE_2788E2:        INC $1A04                 
CODE_2788E5:        BNE CODE_278910           
CODE_2788E7:        DEC $1A0D                 
CODE_2788EA:        BCS CODE_27891D                   
CODE_2788EC:        LSR A                     
CODE_2788ED:        LSR A                     
CODE_2788EE:        LDA $1A04                 
CODE_2788F1:        ROL A                     
CODE_2788F2:        TAY                       
CODE_2788F3:        LDA $1A0C                 
CODE_2788F6:        CLC                       
CODE_2788F7:        ADC #$04                  
CODE_2788F9:        STA $1A0C                 
CODE_2788FC:        BCC CODE_278901           
CODE_2788FE:        INC $1A0A                 
CODE_278901:        AND #$F0                  
CODE_278903:        CMP $84DC,y               
CODE_278906:        BNE CODE_27891D           
CODE_278908:        STA $1A0C                 
CODE_27890B:        LDA #$EF                  
CODE_27890D:        STA $1A0D                 
CODE_278910:        LDY $05FF                 
CODE_278913:        INY                       
CODE_278914:        CPY #$04                  
CODE_278916:        BCC CODE_27891A           
CODE_278918:        LDY #$00                  
CODE_27891A:        STY $05FF                 
CODE_27891D:        JMP CODE_278697           

CODE_278920:        LDX #$01                  
CODE_278922:        LDA $1A0E,x               
CODE_278925:        ASL A                     
CODE_278926:        ASL A                     
CODE_278927:        ASL A                     
CODE_278928:        ASL A                     
CODE_278929:        CLC                       
CODE_27892A:        ADC $1A10,x               
CODE_27892D:        STA $1A10,x               
CODE_278930:        PHP                       
CODE_278931:        PHP                       
CODE_278932:        LDY #$00                  
CODE_278934:        LDA $1A0E,x               
CODE_278937:        LSR A                     
CODE_278938:        LSR A                     
CODE_278939:        LSR A                     
CODE_27893A:        LSR A                     
CODE_27893B:        CMP #$08                  
CODE_27893D:        BCC CODE_278942           
CODE_27893F:        ORA #$F0                  
CODE_278941:        DEY                       
CODE_278942:        PLP                       
CODE_278943:        PHA                       
CODE_278944:        ADC $1A0C,x               
CODE_278947:        STA $1A0C,x               
CODE_27894A:        TYA                       
CODE_27894B:        ADC $1A0A,x               
CODE_27894E:        STA $1A0A,x               
CODE_278951:        PLA                       
CODE_278952:        PLP                       
CODE_278953:        ADC #$00                  
CODE_278955:        STA $1A12                 
CODE_278958:        RTS                       

DATA_278959:        db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF

CODE_278A00:        LDA $17
CODE_278A02:        AND #$03
CODE_278A04:        TAY
CODE_278A05:        LDA $AF6B,y               
CODE_278A08:        STA $8B                   
CODE_278A0A:        LDA $17                   
CODE_278A0C:        LSR A                     
CODE_278A0D:        LSR A                     
CODE_278A0E:        AND #$03                  
CODE_278A10:        TAY                       
CODE_278A11:        LDA $AF6B,y               
CODE_278A14:        STA $9D                   
CODE_278A16:        RTS                       

CODE_278A17:        REP #$20                  
CODE_278A19:        LDA $02E3                 
CODE_278A1C:        BEQ CODE_278A61           
CODE_278A1E:        CMP #$0010                
CODE_278A21:        BEQ CODE_278A28           
CODE_278A23:        DEC $02E3                 
CODE_278A26:        BRA CODE_278A61           

CODE_278A28:        SEP #$20                  
CODE_278A2A:        LDY #$01                  
CODE_278A2C:        LDA $05EE                 
CODE_278A2F:        ORA $05EF                 
CODE_278A32:        BNE CODE_278A35           
CODE_278A34:        INY                       
CODE_278A35:        ORA $05F0                 
CODE_278A38:        BEQ CODE_278A64           
CODE_278A3A:        TYA                       
CODE_278A3B:        TAX                       
CODE_278A3C:        LDA $AF8B,x               
CODE_278A3F:        STA $069C                 
CODE_278A42:        DEC $05EE,x               
CODE_278A45:        BPL CODE_278A4F           
CODE_278A47:        LDA #$09                  
CODE_278A49:        STA $05EE,x               
CODE_278A4C:        DEX                       
CODE_278A4D:        BPL CODE_278A42           
CODE_278A4F:        LDX $9B                   
CODE_278A51:        LDA $2143                 
CODE_278A54:        AND #$7F                  
CODE_278A56:        CMP #$4B                  
CODE_278A58:        BEQ CODE_278A5F           
CODE_278A5A:        LDA #$4B                  
CODE_278A5C:        STA $1203                 
CODE_278A5F:        LDA #$01                  
CODE_278A61:        SEP #$20                  
CODE_278A63:        RTL                       

CODE_278A64:        LDA #$4C                  
CODE_278A66:        STA $1203                 
CODE_278A69:        LDA #$00                  
CODE_278A6B:        STA $02E3                 
CODE_278A6E:        STA $02E4                 
CODE_278A71:        RTL                       

CODE_278A72:        LDY #$05                  
CODE_278A74:        LDA $1FC8,y               
CODE_278A77:        BEQ CODE_278A7E           
CODE_278A79:        DEY                       
CODE_278A7A:        BPL CODE_278A74           
CODE_278A7C:        SEC                       
CODE_278A7D:        RTL                       

CODE_278A7E:        JSL CODE_27A85F           
CODE_278A82:        BNE CODE_278A7C           
CODE_278A84:        CLC                       
CODE_278A85:        RTL                       

CODE_278A86:        PHA                       
CODE_278A87:        TYA                       
CODE_278A88:        TAX                       
CODE_278A89:        PLA                       
CODE_278A8A:        CLC                       
CODE_278A8B:        ADC #$05                  
CODE_278A8D:        JSL CODE_278A94           
CODE_278A91:        LDX $9B                   
CODE_278A93:        RTL                       

CODE_278A94:        PHA                       
CODE_278A95:        STY $0E                   
CODE_278A97:        JSR CODE_278ADB           
CODE_278A9A:        PLA                       
CODE_278A9B:        STA $079F,y               
CODE_278A9E:        LDA $56,x                 
CODE_278AA0:        XBA                       
CODE_278AA1:        LDA $71,x                 
CODE_278AA3:        REP #$20                  
CODE_278AA5:        SEC                       
CODE_278AA6:        SBC $0216                 
CODE_278AA9:        SEC                       
CODE_278AAA:        SBC #$0010                
CODE_278AAD:        BPL CODE_278AB2           
CODE_278AAF:        LDA #$0005                
CODE_278AB2:        CMP #$00C0                
CODE_278AB5:        BCC CODE_278ABA           
CODE_278AB7:        LDA #$00C0                
CODE_278ABA:        SEP #$20                  
CODE_278ABC:        STA $07A9,y               
CODE_278ABF:        LDA $44,x                 
CODE_278AC1:        XBA                       
CODE_278AC2:        LDA $5F,x                 
CODE_278AC4:        REP #$20                  
CODE_278AC6:        SEC                       
CODE_278AC7:        SBC $0210                 
CODE_278ACA:        SEP #$20                  
CODE_278ACC:        STA $07AE,y               
CODE_278ACF:        XBA                       
CODE_278AD0:        STA $0251,y               
CODE_278AD3:        LDA #$30                  
CODE_278AD5:        STA $07A4,y               
CODE_278AD8:        LDY $0E                   
CODE_278ADA:        RTL                       

CODE_278ADB:        LDY #$04                  
CODE_278ADD:        LDA $079F,y               
CODE_278AE0:        BEQ CODE_278AE7           
CODE_278AE2:        DEY                       
CODE_278AE3:        BPL CODE_278ADD           
CODE_278AE5:        LDY #$04                  
CODE_278AE7:        RTS                       

CODE_278AE8:        LDY #$03                  
CODE_278AEA:        LDA $1FB4,y               
CODE_278AED:        BEQ CODE_278AF4           
CODE_278AEF:        DEY                       
CODE_278AF0:        BPL CODE_278AEA           
CODE_278AF2:        LDY #$03                  
CODE_278AF4:        LDA #$01                  
CODE_278AF6:        STA $1203                 
CODE_278AF9:        LDA #$01                  
CODE_278AFB:        STA $1FB4,y               
CODE_278AFE:        LDA $00                   
CODE_278B00:        SEC                       
CODE_278B01:        SBC $0543                 
CODE_278B04:        SBC #$18                  
CODE_278B06:        STA $1FB8,y               
CODE_278B09:        LDA $0E                   
CODE_278B0B:        XBA                       
CODE_278B0C:        LDA $01                   
CODE_278B0E:        REP #$20                  
CODE_278B10:        SEC                       
CODE_278B11:        SBC $0210                 
CODE_278B14:        SEP #$20                  
CODE_278B16:        STA $1FBC,y               
CODE_278B19:        XBA                       
CODE_278B1A:        STA $024C,y               
CODE_278B1D:        LDA #$FB                  
CODE_278B1F:        STA $1FC0,y               
CODE_278B22:        LDA #$01                  
CODE_278B24:        STA $1FC4,y               
CODE_278B27:        RTL                       

CODE_278B28:        LDA $A7,x                 
CODE_278B2A:        AND #$03                  
CODE_278B2C:        BNE CODE_278B47           
CODE_278B2E:        LDA $1F76                 
CODE_278B31:        SEC                       
CODE_278B32:        SBC #$34                  
CODE_278B34:        CMP #$02                  
CODE_278B36:        BCS CODE_278B47                   
CODE_278B38:        TAY                       
CODE_278B39:        LDA $5F,x                 
CODE_278B3B:        ADC $AF8E,y               
CODE_278B3E:        STA $5F,x                 
CODE_278B40:        LDA $44,x                 
CODE_278B42:        ADC $AF90,y               
CODE_278B45:        STA $44,x                 
CODE_278B47:        RTL                       

CODE_278B48:        LDA $0567                 
CODE_278B4B:        BNE CODE_278B47           
CODE_278B4D:        LDA $1F76                 
CODE_278B50:        SEC                       
CODE_278B51:        SBC #$34                  
CODE_278B53:        CMP #$02                  
CODE_278B55:        BCS CODE_278B47                   
CODE_278B57:        TAY                       
CODE_278B58:        LDA $AF8E,y               
CODE_278B5B:        LDY #$FF                  
CODE_278B5D:        EOR $8C,x                 
CODE_278B5F:        BMI CODE_278B63           
CODE_278B61:        LDY #$01                  
CODE_278B63:        STY $07B5                 
CODE_278B66:        RTL                       

CODE_278B67:        LDA $A7,x                 
CODE_278B69:        BPL CODE_278B84           
CODE_278B6B:        LDA $71,x                 
CODE_278B6D:        SEC                       
CODE_278B6E:        SBC $0543                 
CODE_278B71:        AND #$F0                  
CODE_278B73:        CLC                       
CODE_278B74:        ADC #$01                  
CODE_278B76:        CLC                       
CODE_278B77:        ADC $0543                 
CODE_278B7A:        STA $71,x                 
CODE_278B7C:        LDA #$00                  
CODE_278B7E:        ADC #$00                  
CODE_278B80:        STA $56,x                 
CODE_278B82:        BRA CODE_278B8E           

CODE_278B84:        LDA $71,x                 
CODE_278B86:        AND #$F0                  
CODE_278B88:        CLC                       
CODE_278B89:        ADC $06B3                 
CODE_278B8C:        STA $71,x                 
CODE_278B8E:        LDA #$00                  
CODE_278B90:        STA $9E,x                 
CODE_278B92:        RTL                       

CODE_278B93:        LDA #$FF                  
CODE_278B95:        BNE CODE_278B9D           
CODE_278B97:        LDA #$08                  
CODE_278B99:        BNE CODE_278B9D           
CODE_278B9B:        LDA #$04                  
CODE_278B9D:        PHA                       
CODE_278B9E:        CPX #$05                  
CODE_278BA0:        BNE CODE_278BAA           
CODE_278BA2:        LDA $1A4F,x               
CODE_278BA5:        BEQ CODE_278BAA           
CODE_278BA7:        DEC $1A4F,x               
CODE_278BAA:        LDA $A7,x                 
CODE_278BAC:        STA $1CEF                 
CODE_278BAF:        LDA #$00                  
CODE_278BB1:        STA $A7,x                 
CODE_278BB3:        STA $06B3                 
CODE_278BB6:        STA $07B5                 
CODE_278BB9:        JSL CODE_278CF3           
CODE_278BBD:        PLA                       
CODE_278BBE:        STA $00                   
CODE_278BC0:        LDY $064F                 
CODE_278BC3:        LDA $064C                 
CODE_278BC6:        CMP $1E9A,y               
CODE_278BC9:        BCC CODE_278BD6           
CODE_278BCB:        LDA #$01                  
CODE_278BCD:        LDY $8C,x                 
CODE_278BCF:        BPL CODE_278BD2           
CODE_278BD1:        ASL A                     
CODE_278BD2:        ORA $A7,x                 
CODE_278BD4:        STA $A7,x                 
CODE_278BD6:        LDY $064E                 
CODE_278BD9:        LDA $9E,x                 
CODE_278BDB:        BPL CODE_278BFB           
CODE_278BDD:        LDA $0563                 
CODE_278BE0:        BEQ CODE_278BEC           
CODE_278BE2:        LDA $064B                 
CODE_278BE5:        CMP $1E96,y               
CODE_278BE8:        BCC CODE_278BFA           
CODE_278BEA:        BCS CODE_278BF4                   
CODE_278BEC:        LDA $064B                 
CODE_278BEF:        CMP $1E9A,y               
CODE_278BF2:        BCC CODE_278BFA           
CODE_278BF4:        LDA $A7,x                 
CODE_278BF6:        ORA #$08                  
CODE_278BF8:        STA $A7,x                 
CODE_278BFA:        RTL                       

CODE_278BFB:        LDA $064B                 
CODE_278BFE:        CMP $1E96,y               
CODE_278C01:        BCS CODE_278C06                   
CODE_278C03:        JMP CODE_278CB1           

CODE_278C06:        LDY $0563                 
CODE_278C09:        BNE CODE_278C0E           
CODE_278C0B:        JMP CODE_278C9D           

CODE_278C0E:        CMP #$A8                  
CODE_278C10:        BEQ CODE_278C22           
CODE_278C12:        CMP #$AA                  
CODE_278C14:        BEQ CODE_278C22           
CODE_278C16:        CMP #$37                  
CODE_278C18:        BEQ CODE_278C22           
CODE_278C1A:        CMP #$AB                  
CODE_278C1C:        BEQ CODE_278C22           
CODE_278C1E:        CMP #$F9                  
CODE_278C20:        BNE CODE_278C25           
CODE_278C22:        JMP CODE_278CD4           

CODE_278C25:        LDA $71,x                 
CODE_278C27:        AND #$0F                  
CODE_278C29:        STA $00                   
CODE_278C2B:        LDA $0F                   
CODE_278C2D:        AND #$0F                  
CODE_278C2F:        STA $0F                   
CODE_278C31:        LDY $060D                 
CODE_278C34:        LDA $AD70,y               
CODE_278C37:        CMP #$80                  
CODE_278C39:        BNE CODE_278C3E           
CODE_278C3B:        JMP CODE_278CB1           

CODE_278C3E:        TYA                       
CODE_278C3F:        ASL A                     
CODE_278C40:        ASL A                     
CODE_278C41:        ASL A                     
CODE_278C42:        ASL A                     
CODE_278C43:        CLC                       
CODE_278C44:        ADC $0F                   
CODE_278C46:        TAY                       
CODE_278C47:        LDA $AC0B,y               
CODE_278C4A:        AND #$0F                  
CODE_278C4C:        STA $01                   
CODE_278C4E:        LDA $00                   
CODE_278C50:        CMP #$0C                  
CODE_278C52:        BCS CODE_278C58                   
CODE_278C54:        CMP $01                   
CODE_278C56:        BCC CODE_278CB1           
CODE_278C58:        LDA $01                   
CODE_278C5A:        STA $06B3                 
CODE_278C5D:        LDA $A7,x                 
CODE_278C5F:        ORA #$04                  
CODE_278C61:        STA $A7,x                 
CODE_278C63:        LDY $060D                 
CODE_278C66:        LDA $8C,x                 
CODE_278C68:        LSR A                     
CODE_278C69:        LSR A                     
CODE_278C6A:        LSR A                     
CODE_278C6B:        LSR A                     
CODE_278C6C:        BNE CODE_278C70           
CODE_278C6E:        LDA #$01                  
CODE_278C70:        CMP #$08                  
CODE_278C72:        BCC CODE_278C76           
CODE_278C74:        ORA #$F0                  
CODE_278C76:        LDX $AD70,y               
CODE_278C79:        CPX #$00                  
CODE_278C7B:        BNE CODE_278C80           
CODE_278C7D:        LDX #$00                  
CODE_278C7F:        TXA                       
CODE_278C80:        CPX #$00                  
CODE_278C82:        BPL CODE_278C88           
CODE_278C84:        JSL CODE_27A859           
CODE_278C88:        STX $00                   
CODE_278C8A:        LDX $9B                   
CODE_278C8C:        STA $07B6,x               
CODE_278C8F:        LDA $00                   
CODE_278C91:        LDY $8C,x                 
CODE_278C93:        BPL CODE_278C99           
CODE_278C95:        JSL CODE_27A859           
CODE_278C99:        STA $07B5                 
CODE_278C9C:        RTL                       

CODE_278C9D:        LDA $058B                 
CODE_278CA0:        BNE CODE_278CAA           
CODE_278CA2:        LDA $71,x                 
CODE_278CA4:        AND #$0F                  
CODE_278CA6:        CMP $00                   
CODE_278CA8:        BCS CODE_278CB0                   
CODE_278CAA:        LDA $A7,x                 
CODE_278CAC:        ORA #$04                  
CODE_278CAE:        STA $A7,x                 
CODE_278CB0:        RTL                       

CODE_278CB1:        LDA $0563                 
CODE_278CB4:        BEQ CODE_278CD3           
CODE_278CB6:        LDY #$00                  
CODE_278CB8:        LDA $07B6,x               
CODE_278CBB:        BEQ CODE_278CD3           
CODE_278CBD:        BPL CODE_278CC0           
CODE_278CBF:        DEY                       
CODE_278CC0:        CLC                       
CODE_278CC1:        ADC $71,x                 
CODE_278CC3:        STA $71,x                 
CODE_278CC5:        TYA                       
CODE_278CC6:        ADC $56,x                 
CODE_278CC8:        STA $56,x                 
CODE_278CCA:        LDA #$00                  
CODE_278CCC:        STA $07B6,x               
CODE_278CCF:        JSL CODE_278B93           
CODE_278CD3:        RTL                       

CODE_278CD4:        LDA $0661,x               
CODE_278CD7:        CMP #$06                  
CODE_278CD9:        BEQ CODE_278CF2           
CODE_278CDB:        CMP #$04                  
CODE_278CDD:        BEQ CODE_278CF2           
CODE_278CDF:        LDA $71,x                 
CODE_278CE1:        AND #$F0                  
CODE_278CE3:        SEC                       
CODE_278CE4:        SBC #$01                  
CODE_278CE6:        STA $71,x                 
CODE_278CE8:        LDA $56,x                 
CODE_278CEA:        SBC #$00                  
CODE_278CEC:        STA $56,x                 
CODE_278CEE:        JSL CODE_278B93           
CODE_278CF2:        RTL                       

CODE_278CF3:        LDY #$6C                  
CODE_278CF5:        JSL CODE_278E13           
CODE_278CF9:        ASL A                     
CODE_278CFA:        ROL A                     
CODE_278CFB:        ROL A                     
CODE_278CFC:        AND #$03                  
CODE_278CFE:        STA $00                   
CODE_278D00:        TAY                       
CODE_278D01:        LDA $0671,x               
CODE_278D04:        CMP #$64                  
CODE_278D06:        BNE CODE_278D12           
CODE_278D08:        LDA $B3                   
CODE_278D0A:        CMP #$F0                  
CODE_278D0C:        BNE CODE_278D12           
CODE_278D0E:        LDA #$80                  
CODE_278D10:        STA $B3                   
CODE_278D12:        LDA $B3                   
CODE_278D14:        CMP $1E96,y               
CODE_278D17:        BCS CODE_278D66                   
CODE_278D19:        LDX #$00                  
CODE_278D1B:        CMP #$D7                  
CODE_278D1D:        BEQ CODE_278D38           
CODE_278D1F:        CMP #$E0                  
CODE_278D21:        BEQ CODE_278D38           
CODE_278D23:        CMP #$E1                  
CODE_278D25:        BEQ CODE_278D38           
CODE_278D27:        LDA $0560                 
CODE_278D2A:        ASL A                     
CODE_278D2B:        ASL A                     
CODE_278D2C:        CLC                       
CODE_278D2D:        ADC $00                   
CODE_278D2F:        TAY                       
CODE_278D30:        LDA $AD84,y               
CODE_278D33:        CMP $B3                   
CODE_278D35:        BCS CODE_278D38                   
CODE_278D37:        INX                       
CODE_278D38:        TXA                       
CODE_278D39:        LDX $9B                   
CODE_278D3B:        CMP $06B7,x               
CODE_278D3E:        BEQ CODE_278D63           
CODE_278D40:        PHA                       
CODE_278D41:        LDA $B3                   
CODE_278D43:        LDY $00                   
CODE_278D45:        CMP $1E96,y               
CODE_278D48:        PLA                       
CODE_278D49:        BCS CODE_278D63                  
CODE_278D4B:        PHA                       
CODE_278D4C:        LDA $1FE1,x               
CODE_278D4F:        PHA                       
CODE_278D50:        ASL A                     
CODE_278D51:        ROL A                     
CODE_278D52:        ROL A                     
CODE_278D53:        AND #$03                  
CODE_278D55:        TAY                       
CODE_278D56:        PLA                       
CODE_278D57:        CMP $1E96,y               
CODE_278D5A:        PLA                       
CODE_278D5B:        BCS CODE_278D63                   
CODE_278D5D:        PHA                       
CODE_278D5E:        JSL CODE_278F34           
CODE_278D62:        PLA                       
CODE_278D63:        STA $06B7,x               
CODE_278D66:        LDA $B3                   
CODE_278D68:        STA $1FE1,x               
CODE_278D6B:        LDY $0671,x               
CODE_278D6E:        LDA $B0FB,y               
CODE_278D71:        AND #$F0                  
CODE_278D73:        LSR A                     
CODE_278D74:        PHA                       
CODE_278D75:        TAY                       
CODE_278D76:        LDA $9E,x                 
CODE_278D78:        BPL CODE_278D7C           
CODE_278D7A:        INY                       
CODE_278D7B:        INY                       
CODE_278D7C:        JSL CODE_278E13           
CODE_278D80:        STA $1F76                 
CODE_278D83:        STA $064B                 
CODE_278D86:        PHA                       
CODE_278D87:        LDA $0560                 
CODE_278D8A:        CMP #$02                  
CODE_278D8C:        BNE CODE_278DA0           
CODE_278D8E:        LDA $B3                   
CODE_278D90:        CMP #$49                  
CODE_278D92:        BEQ CODE_278D98           
CODE_278D94:        CMP #$4A                  
CODE_278D96:        BNE CODE_278DA0           
CODE_278D98:        INC $06EB,x               
CODE_278D9B:        LDA #$06                  
CODE_278D9D:        STA $0661,x               
CODE_278DA0:        PLA                       
CODE_278DA1:        ASL A                     
CODE_278DA2:        ROL A                     
CODE_278DA3:        ROL A                     
CODE_278DA4:        AND #$03                  
CODE_278DA6:        STA $064E                 
CODE_278DA9:        TAY                       
CODE_278DAA:        LDA $1F7B                 
CODE_278DAD:        STA $0F                   
CODE_278DAF:        LDA $0563                 
CODE_278DB2:        BEQ CODE_278DD6           
CODE_278DB4:        LDA $B3                   
CODE_278DB6:        CMP $1E96,y               
CODE_278DB9:        BCC CODE_278DD6           
CODE_278DBB:        PHA                       
CODE_278DBC:        TYA                       
CODE_278DBD:        ASL A                     
CODE_278DBE:        TAX                       
CODE_278DBF:        LDA $AAD0,x               
CODE_278DC2:        STA $02                   
CODE_278DC4:        LDA $AAD1,x               
CODE_278DC7:        STA $03                   
CODE_278DC9:        PLA                       
CODE_278DCA:        SEC                       
CODE_278DCB:        SBC $1E96,y               
CODE_278DCE:        TAY                       
CODE_278DCF:        LDA ($02),y               
CODE_278DD1:        STA $060D                 
CODE_278DD4:        LDX $9B                   
CODE_278DD6:        LDA #$00                  
CODE_278DD8:        STA $1F77                 
CODE_278DDB:        PLA                       
CODE_278DDC:        CMP #$08                  
CODE_278DDE:        BNE CODE_278DF5           
CODE_278DE0:        LDY $0563                 
CODE_278DE3:        BEQ CODE_278DF5           
CODE_278DE5:        PHA                       
CODE_278DE6:        LDA $1CEF                 
CODE_278DE9:        AND #$04                  
CODE_278DEB:        TAY                       
CODE_278DEC:        PLA                       
CODE_278DED:        CPY #$00                  
CODE_278DEF:        BEQ CODE_278DF5           
CODE_278DF1:        LDY #$68                  
CODE_278DF3:        BRA CODE_278DFA           

CODE_278DF5:        TAY                       
CODE_278DF6:        INY                       
CODE_278DF7:        INY                       
CODE_278DF8:        INY                       
CODE_278DF9:        INY                       
CODE_278DFA:        LDA $8C,x                 
CODE_278DFC:        BMI CODE_278E00           
CODE_278DFE:        INY                       
CODE_278DFF:        INY                       
CODE_278E00:        JSL CODE_278E13           
CODE_278E04:        STA $1F77                 
CODE_278E07:        STA $064C                 
CODE_278E0A:        ASL A                     
CODE_278E0B:        ROL A                     
CODE_278E0C:        ROL A                     
CODE_278E0D:        AND #$03                  
CODE_278E0F:        STA $064F                 
CODE_278E12:        RTL                       

CODE_278E13:        LDA $0425                 
CODE_278E16:        BEQ CODE_278E1B           
CODE_278E18:        JMP CODE_278EEB           

CODE_278E1B:        LDA $058B                 
CODE_278E1E:        BEQ CODE_278E42           
CODE_278E20:        LDA $71,x                 
CODE_278E22:        CLC                       
CODE_278E23:        ADC $ADCA,y               
CODE_278E26:        SEC                       
CODE_278E27:        SBC $0543                 
CODE_278E2A:        CMP #$A0                  
CODE_278E2C:        BCC CODE_278E42           
CODE_278E2E:        SBC #$10                  
CODE_278E30:        AND #$F0                  
CODE_278E32:        STA $1F79                 
CODE_278E35:        LDA $A7,x                 
CODE_278E37:        ORA #$80                  
CODE_278E39:        STA $A7,x                 
CODE_278E3B:        LDA #$01                  
CODE_278E3D:        STA $1F78                 
CODE_278E40:        BRA CODE_278E5A           

CODE_278E42:        LDA $71,x                 
CODE_278E44:        CLC                       
CODE_278E45:        ADC $ADCA,y               
CODE_278E48:        AND #$F0                  
CODE_278E4A:        STA $1F79                 
CODE_278E4D:        LDA $56,x                 
CODE_278E4F:        ADC #$00                  
CODE_278E51:        STA $1F78                 
CODE_278E54:        BEQ CODE_278E63           
CODE_278E56:        CMP #$02                  
CODE_278E58:        BCS CODE_278ECD                   
CODE_278E5A:        PHA                       
CODE_278E5B:        LDA $1F79                 
CODE_278E5E:        CMP #$B0                  
CODE_278E60:        PLA                       
CODE_278E61:        BCS CODE_278ECD                   
CODE_278E63:        AND #$01                  
CODE_278E65:        STA $02                   
CODE_278E67:        LDA $5F,x                 
CODE_278E69:        ADC $ADCB,y               
CODE_278E6C:        STA $1F7B                 
CODE_278E6F:        LDA $44,x                 
CODE_278E71:        ADC #$00                  
CODE_278E73:        STA $1F7A                 
CODE_278E76:        CMP #$10                  
CODE_278E78:        BCS CODE_278ECD                   
CODE_278E7A:        PHX                       
CODE_278E7B:        ASL A                     
CODE_278E7C:        TAX                       
CODE_278E7D:        LDA $218200,x             
CODE_278E81:        STA $00                   
CODE_278E83:        LDA $218201,x             
CODE_278E87:        ADC $02                   
CODE_278E89:        STA $01                   
CODE_278E8B:        LDA $821E,x               
CODE_278E8E:        STA $D8                   
CODE_278E90:        LDA $821F,x               
CODE_278E93:        ADC $02                   
CODE_278E95:        STA $D9                   
CODE_278E97:        LDA #$7E                  
CODE_278E99:        STA $02                   
CODE_278E9B:        STA $DA                   
CODE_278E9D:        PLX                       
CODE_278E9E:        LDA $1F7B                 
CODE_278EA1:        LSR A                     
CODE_278EA2:        LSR A                     
CODE_278EA3:        LSR A                     
CODE_278EA4:        LSR A                     
CODE_278EA5:        ORA $1F79                 
CODE_278EA8:        TAY                       
CODE_278EA9:        LDA [$D8],y               
CODE_278EAB:        BEQ CODE_278EC5           
CODE_278EAD:        PHX                       
CODE_278EAE:        LDA $070A                 
CODE_278EB1:        ASL A                     
CODE_278EB2:        TAX                       
CODE_278EB3:        LDA $AB57,x               
CODE_278EB6:        STA $DB                   
CODE_278EB8:        LDA $AB58,x               
CODE_278EBB:        STA $DC                   
CODE_278EBD:        LDA [$00],y               
CODE_278EBF:        TAY                       
CODE_278EC0:        LDA ($DB),y               
CODE_278EC2:        PLX                       
CODE_278EC3:        BRA CODE_278EC7           

CODE_278EC5:        LDA [$00],y               
CODE_278EC7:        JSL CODE_278ED2           
CODE_278ECB:        BRA CODE_278ECF           

CODE_278ECD:        LDA #$00                  
CODE_278ECF:        STA $B3                   
CODE_278ED1:        RTL                       

CODE_278ED2:        LDY $0567                 
CODE_278ED5:        BEQ CODE_278EEA           
CODE_278ED7:        LDY #$03                  
CODE_278ED9:        CMP $AF92,y               
CODE_278EDC:        BNE CODE_278EE7           
CODE_278EDE:        LDA $AF9A,y               
CODE_278EE1:        STA $B4                   
CODE_278EE3:        LDA $AF96,y               
CODE_278EE6:        RTL                       

CODE_278EE7:        DEY                       
CODE_278EE8:        BPL CODE_278ED9           
CODE_278EEA:        RTL                       

CODE_278EEB:        LDA $71,x                 
CODE_278EED:        CLC                       
CODE_278EEE:        ADC $ADCA,y               
CODE_278EF1:        AND #$F0                  
CODE_278EF3:        STA $1F79                 
CODE_278EF6:        STA $02                   
CODE_278EF8:        LDA $56,x                 
CODE_278EFA:        ADC #$00                  
CODE_278EFC:        STA $1F78                 
CODE_278EFF:        CMP #$10                  
CODE_278F01:        BCS CODE_278ECD                   
CODE_278F03:        ADC #$20                  
CODE_278F05:        STA $01                   
CODE_278F07:        LDA $44,x                 
CODE_278F09:        STA $1F7A                 
CODE_278F0C:        LDA $5F,x                 
CODE_278F0E:        CLC                       
CODE_278F0F:        ADC $ADCB,y               
CODE_278F12:        STA $1F7B                 
CODE_278F15:        LSR A                     
CODE_278F16:        LSR A                     
CODE_278F17:        LSR A                     
CODE_278F18:        LSR A                     
CODE_278F19:        ORA $02                   
CODE_278F1B:        STA $00                   
CODE_278F1D:        REP #$20                  
CODE_278F1F:        LDA $00                   
CODE_278F21:        CLC                       
CODE_278F22:        ADC #$2000                
CODE_278F25:        STA $D8                   
CODE_278F27:        SEP #$20                  
CODE_278F29:        LDA #$7E                  
CODE_278F2B:        STA $02                   
CODE_278F2D:        STA $DA                   
CODE_278F2F:        LDY #$00                  
CODE_278F31:        JMP CODE_278EA9           

CODE_278F34:        LDA #$02                  
CODE_278F36:        STA $00                   
CODE_278F38:        LDA $1A4F,x               
CODE_278F3B:        BNE CODE_278EEA           
CODE_278F3D:        LDA $0671,x               
CODE_278F40:        CMP #$1F                  
CODE_278F42:        BEQ CODE_278FC0           
CODE_278F44:        LDA $9E,x                 
CODE_278F46:        BMI CODE_278F5B           
CODE_278F48:        LDA $0671,x               
CODE_278F4B:        CMP #$62                  
CODE_278F4D:        BEQ CODE_278FC0           
CODE_278F4F:        CMP #$6A                  
CODE_278F51:        BEQ CODE_278FC0           
CODE_278F53:        CMP #$61                  
CODE_278F55:        BEQ CODE_278FC0           
CODE_278F57:        LDA #$00                  
CODE_278F59:        STA $9E,x                 
CODE_278F5B:        LDY #$02                  
CODE_278F5D:        INC $1A72                 
CODE_278F60:        LDA $1A72                 
CODE_278F63:        AND #$01                  
CODE_278F65:        TAY                       
CODE_278F66:        INY                       
CODE_278F67:        LDA #$01                  
CODE_278F69:        STA $1F90,y               
CODE_278F6C:        LSR A                     
CODE_278F6D:        STA $1F99,y               
CODE_278F70:        STZ $01                   
CODE_278F72:        LDA $56,x                 
CODE_278F74:        XBA                       
CODE_278F75:        LDA $71,x                 
CODE_278F77:        REP #$20                  
CODE_278F79:        SEC                       
CODE_278F7A:        SBC #$0004                
CODE_278F7D:        AND #$FFF0                
CODE_278F80:        CLC                       
CODE_278F81:        ADC $00                   
CODE_278F83:        SEP #$20                  
CODE_278F85:        STA $1F93,y               
CODE_278F88:        XBA                       
CODE_278F89:        STA $058E,y               
CODE_278F8C:        LDA $5F,x                 
CODE_278F8E:        STA $1F96,y               
CODE_278F91:        LDA $44,x                 
CODE_278F93:        STA $00EF,y               
CODE_278F96:        LDA $9E,x                 
CODE_278F98:        BMI CODE_278FC0           
CODE_278F9A:        LDA $1F7F                 
CODE_278F9D:        BNE CODE_278FC0           
CODE_278F9F:        LDA #$80                  
CODE_278FA1:        STA $1F7F                 
CODE_278FA4:        LDA $71,x                 
CODE_278FA6:        ADC #$06                  
CODE_278FA8:        STA $1F87                 
CODE_278FAB:        LDA $56,x                 
CODE_278FAD:        ADC #$00                  
CODE_278FAF:        STA $1F83                 
CODE_278FB2:        LDA $5F,x                 
CODE_278FB4:        ADC #$04                  
CODE_278FB6:        STA $1F8F                 
CODE_278FB9:        LDA $44,x                 
CODE_278FBB:        ADC #$00                  
CODE_278FBD:        STA $1F8B                 
CODE_278FC0:        RTL                       

CODE_278FC1:        JMP CODE_278FD3           

DATA_278FC4:        db $35

CODE_278FC5:        BEQ CODE_278FD3
CODE_278FC7:        LDA $18
CODE_278FC9:        AND #$20                  
CODE_278FCB:        BEQ CODE_278FD3           
CODE_278FCD:        EOR $1CFF                 
CODE_278FD0:        STA $1CFF                 
CODE_278FD3:        LDA $1A45                 
CODE_278FD6:        BEQ CODE_278FDB           
CODE_278FD8:        DEC $1A45                 
CODE_278FDB:        LDA $BB                   
CODE_278FDD:        CMP #$06                  
CODE_278FDF:        BNE CODE_278FE6           
CODE_278FE1:        LDA #$4F                  
CODE_278FE3:        STA $071E                 
CODE_278FE6:        LDA $BF                   
CODE_278FE8:        CMP #$03                  
CODE_278FEA:        BNE CODE_278FF4           
CODE_278FEC:        LDA $071B                 
CODE_278FEF:        CMP #$52                  
CODE_278FF1:        BNE CODE_278FF4           
CODE_278FF3:        RTL                       

CODE_278FF4:        LDA $06A4                 
CODE_278FF7:        STA $06A5                 
CODE_278FFA:        STZ $06A4                 
CODE_278FFD:        STZ $07BD                 
CODE_279000:        LDA #$FF                  
CODE_279002:        STA $07B3                 
CODE_279005:        JSL CODE_299E7B           
CODE_279009:        JSL CODE_299A9A           
CODE_27900D:        DEC $055D                 
CODE_279010:        BPL CODE_279017           
CODE_279012:        LDA #$07                  
CODE_279014:        STA $055D                 
CODE_279017:        LDX #$07                  
CODE_279019:        STX $9B                   
CODE_27901B:        LDA $9C                   
CODE_27901D:        BNE CODE_27905A           
CODE_27901F:        LDA $0518,x               
CODE_279022:        BEQ CODE_279027           
CODE_279024:        DEC $0518,x               
CODE_279027:        LDA $0520,x               
CODE_27902A:        BEQ CODE_27902F           
CODE_27902C:        DEC $0520,x               
CODE_27902F:        CPX #$05                  
CODE_279031:        BCS CODE_27905A                   
CODE_279033:        LDA $06AB,x               
CODE_279036:        BEQ CODE_27903B           
CODE_279038:        DEC $06AB,x               
CODE_27903B:        LDA $06A6,x               
CODE_27903E:        BEQ CODE_27905A           
CODE_279040:        CMP #$60                  
CODE_279042:        BCC CODE_279057           
CODE_279044:        LDA #$01                  
CODE_279046:        LDY $0661,x               
CODE_279049:        CPY #$02                  
CODE_27904B:        BEQ CODE_279057           
CODE_27904D:        CPY #$04                  
CODE_27904F:        BNE CODE_279053           
CODE_279051:        LDA #$03                  
CODE_279053:        AND $15                   
CODE_279055:        BNE CODE_27905A           
CODE_279057:        DEC $06A6,x               
CODE_27905A:        TXA                       
CODE_27905B:        CLC                       
CODE_27905C:        ADC $055D                 
CODE_27905F:        ASL A                     
CODE_279060:        TAY                       
CODE_279061:        REP #$20                  
CODE_279063:        LDA $AF6E,y               
CODE_279066:        STA $C6,x                 
CODE_279068:        SEP #$20                  
CODE_27906A:        JSR CODE_2790EC           
CODE_27906D:        JSR CODE_27A5BB           
CODE_279070:        LDA $0661,x               
CODE_279073:        BNE CODE_27907A           
CODE_279075:        LDA #$FF                  
CODE_279077:        STA $0659,x               
CODE_27907A:        DEX                       
CODE_27907B:        BPL CODE_279019           
CODE_27907D:        LDA $05FD                 
CODE_279080:        BEQ CODE_279086           
CODE_279082:        JSL CODE_22F000           
CODE_279086:        LDA $0350                 
CODE_279089:        CMP #$03                  
CODE_27908B:        BNE CODE_279091           
CODE_27908D:        JSL CODE_29D3C1           
CODE_279091:        LDA $054F                 
CODE_279094:        BEQ CODE_2790A7           
CODE_279096:        LDA $0575                 
CODE_279099:        ORA $058A                 
CODE_27909C:        BNE CODE_2790A2           
CODE_27909E:        LDA $A6                   
CODE_2790A0:        BNE CODE_2790A7           
CODE_2790A2:        LDA #$00                  
CODE_2790A4:        STA $054F                 
CODE_2790A7:        LDA $0564                 
CODE_2790AA:        BNE CODE_2790DF           
CODE_2790AC:        LDY #$00                  
CODE_2790AE:        LDA $052E,y               
CODE_2790B1:        BNE CODE_2790BF           
CODE_2790B3:        INY                       
CODE_2790B4:        LDA $052E,y               
CODE_2790B7:        BNE CODE_2790BF           
CODE_2790B9:        INY                       
CODE_2790BA:        LDA $052E,y               
CODE_2790BD:        BEQ CODE_2790DF           
CODE_2790BF:        STA $0564                 
CODE_2790C2:        LDA $0531,y               
CODE_2790C5:        STA $0528                 
CODE_2790C8:        LDA $0534,y               
CODE_2790CB:        STA $0529                 
CODE_2790CE:        LDA $0537,y               
CODE_2790D1:        STA $052A                 
CODE_2790D4:        LDA $053A,y               
CODE_2790D7:        STA $052B                 
CODE_2790DA:        LDA #$00                  
CODE_2790DC:        STA $052E,y               
CODE_2790DF:        LDA $0414                 
CODE_2790E2:        BEQ CODE_2790EA           
CODE_2790E4:        STA $055F                 
CODE_2790E7:        STZ $07BE                 
CODE_2790EA:        RTL                       

CODE_2790EB:        RTS                       

CODE_2790EC:        LDA $0661,x               
CODE_2790EF:        BEQ CODE_2790EB           
CODE_2790F1:        CMP #$08                  
CODE_2790F3:        BEQ CODE_27910D           
CODE_2790F5:        LDY #$04                  
CODE_2790F7:        LDA $0671,x               
CODE_2790FA:        CMP $AFA2,y               
CODE_2790FD:        BCS CODE_279102                   
CODE_2790FF:        DEY                       
CODE_279100:        BNE CODE_2790F7           
CODE_279102:        STY $DE                   
CODE_279104:        INY                       
CODE_279105:        SEC                       
CODE_279106:        SBC $AFA1,y               
CODE_279109:        STA $0418                 
CODE_27910C:        TAY                       
CODE_27910D:        JSL CODE_27A994           
CODE_279111:        JSL CODE_27A2C8           
CODE_279115:        JSL CODE_27A27C           
CODE_279119:        LDA $0661,x               
CODE_27911C:        JSL CODE_20FB1F           

PNTR_279120:        dw CODE_279B7B
                    dw CODE_279B7D
                    dw CODE_279D14
                    dw CODE_2791E8
                    dw CODE_2795A1
                    dw CODE_2793E1
                    dw CODE_27974A
                    dw CODE_27980F
                    dw CODE_279132

CODE_279132:        LDA $0518,x               
CODE_279135:        BNE CODE_27913A           
CODE_279137:        JMP CODE_27980C           

CODE_27913A:        JSL CODE_27A85F           
CODE_27913E:        BEQ CODE_279143           
CODE_279140:        BRL CODE_2791E7           

CODE_279143:        JSL CODE_279DC2           
CODE_279147:        REP #$10                  
CODE_279149:        LDY $C6,x                 
CODE_27914B:        LDA $7A,x                 
CODE_27914D:        STA $0800,y               
CODE_279150:        STA $0808,y               
CODE_279153:        CLC                       
CODE_279154:        ADC #$08                  
CODE_279156:        STA $0804,y               
CODE_279159:        STA $080C,y               
CODE_27915C:        LDA $83,x                 
CODE_27915E:        STA $0801,y               
CODE_279161:        STA $0805,y               
CODE_279164:        CLC                       
CODE_279165:        ADC #$08                  
CODE_279167:        STA $0809,y               
CODE_27916A:        STA $080D,y               
CODE_27916D:        REP #$20                  
CODE_27916F:        LDA $0518,x               
CODE_279172:        AND #$00FF                
CODE_279175:        LSR A                     
CODE_279176:        LSR A                     
CODE_279177:        LSR A                     
CODE_279178:        TAX                       
CODE_279179:        SEP #$20                  
CODE_27917B:        LDA $AFA7,x               
CODE_27917E:        STA $0802,y               
CODE_279181:        STA $0806,y               
CODE_279184:        INC A                     
CODE_279185:        STA $080A,y               
CODE_279188:        STA $080E,y               
CODE_27918B:        LDA $0565                 
CODE_27918E:        LSR A                     
CODE_27918F:        LSR A                     
CODE_279190:        ROR A                     
CODE_279191:        AND #$80                  
CODE_279193:        ORA #$22                  
CODE_279195:        STA $0803,y               
CODE_279198:        STA $080B,y               
CODE_27919B:        EOR #$C0                  
CODE_27919D:        STA $0807,y               
CODE_2791A0:        STA $080F,y               
CODE_2791A3:        LDA $0803,y               
CODE_2791A6:        AND #$80                  
CODE_2791A8:        BEQ CODE_2791B8           
CODE_2791AA:        LDA $0802,y               
CODE_2791AD:        PHA                       
CODE_2791AE:        LDA $080A,y               
CODE_2791B1:        STA $0802,y               
CODE_2791B4:        PLA                       
CODE_2791B5:        STA $080A,y               
CODE_2791B8:        LDA $0807,y               
CODE_2791BB:        AND #$80                  
CODE_2791BD:        BEQ CODE_2791CD           
CODE_2791BF:        LDA $0806,y               
CODE_2791C2:        PHA                       
CODE_2791C3:        LDA $080E,y               
CODE_2791C6:        STA $0806,y               
CODE_2791C9:        PLA                       
CODE_2791CA:        STA $080E,y               
CODE_2791CD:        REP #$20                  
CODE_2791CF:        TYA                       
CODE_2791D0:        LSR A                     
CODE_2791D1:        LSR A                     
CODE_2791D2:        TAY                       
CODE_2791D3:        SEP #$20                  
CODE_2791D5:        LDA #$00                  
CODE_2791D7:        STA $0A20,y               
CODE_2791DA:        STA $0A21,y               
CODE_2791DD:        STA $0A22,y               
CODE_2791E0:        STA $0A23,y               
CODE_2791E3:        SEP #$30                  
CODE_2791E5:        LDX $9B                   
CODE_2791E7:        RTS                       

CODE_2791E8:        LDY $0671,x               
CODE_2791EB:        LDA $B1AF,y               
CODE_2791EE:        AND #$10                  
CODE_2791F0:        BEQ CODE_2791FD           
CODE_2791F2:        LDA #$10                  
CODE_2791F4:        STA $06A6,x               
CODE_2791F7:        LDA #$07                  
CODE_2791F9:        STA $0661,x               
CODE_2791FC:        RTS                       

CODE_2791FD:        LDA $9C                   
CODE_2791FF:        BNE CODE_27924E           
CODE_279201:        JSR CODE_279886           
CODE_279204:        JSL CODE_27983B           
CODE_279208:        LDA $A7,x                 
CODE_27920A:        AND #$04                  
CODE_27920C:        BEQ CODE_279237           
CODE_27920E:        LDA $9E,x                 
CODE_279210:        BMI CODE_279237           
CODE_279212:        PHA                       
CODE_279213:        JSL CODE_278B67           
CODE_279217:        LDA $8C,x                 
CODE_279219:        PHP                       
CODE_27921A:        BPL CODE_279220           
CODE_27921C:        JSL CODE_27A859           
CODE_279220:        LSR A                     
CODE_279221:        PLP                       
CODE_279222:        BPL CODE_279228           
CODE_279224:        JSL CODE_27A859           
CODE_279228:        STA $8C,x                 
CODE_27922A:        PLA                       
CODE_27922B:        LSR A                     
CODE_27922C:        LSR A                     
CODE_27922D:        JSL CODE_27A859           
CODE_279231:        CMP #$FE                  
CODE_279233:        BCS CODE_279237                   
CODE_279235:        STA $9E,x                 
CODE_279237:        LDA $A7,x                 
CODE_279239:        AND #$08                  
CODE_27923B:        BEQ CODE_279241           
CODE_27923D:        LDA #$10                  
CODE_27923F:        STA $9E,x                 
CODE_279241:        LDA $A7,x                 
CODE_279243:        AND #$03                  
CODE_279245:        BEQ CODE_27924B           
CODE_279247:        JSL CODE_279905           
CODE_27924B:        JSR CODE_279916           
CODE_27924E:        JSR CODE_279394           
CODE_279251:        JSR CODE_279BDF           
CODE_279254:        LDA #$02                  
CODE_279256:        STA $0669,x               
CODE_279259:        LDA $1FF9,x               
CODE_27925C:        BEQ CODE_27926F           
CODE_27925E:        JSL CODE_22C964           
CODE_279262:        LDA $06A6,x               
CODE_279265:        CMP #$60                  
CODE_279267:        BCS CODE_27926E                   
CODE_279269:        AND #$07                  
CODE_27926B:        STA $06AB,x               
CODE_27926E:        RTS                       

CODE_27926F:        LDA $0671,x               
CODE_279272:        CMP #$50                  
CODE_279274:        BEQ CODE_27927A           
CODE_279276:        CMP #$55                  
CODE_279278:        BNE CODE_279282           
CODE_27927A:        LDA $BD                   
CODE_27927C:        STA $0679,x               
CODE_27927F:        JMP CODE_279EA0           

CODE_279282:        JSR CODE_279EBF           
CODE_279285:        JSR CODE_27A9BF           
CODE_279288:        LDY $0671,x               
CODE_27928B:        CPY #$5C                  
CODE_27928D:        BNE CODE_2792B3           
CODE_27928F:        REP #$10                  
CODE_279291:        LDY $C6,x                 
CODE_279293:        LDA #$74                  
CODE_279295:        STA $0802,y               
CODE_279298:        INC A                     
CODE_279299:        STA $080A,y               
CODE_27929C:        LDA #$76                  
CODE_27929E:        STA $0806,y               
CODE_2792A1:        INC A                     
CODE_2792A2:        STA $080E,y               
CODE_2792A5:        LDA $0807,y               
CODE_2792A8:        AND #$BF                  
CODE_2792AA:        STA $0807,y               
CODE_2792AD:        STA $080F,y               
CODE_2792B0:        SEP #$10                  
CODE_2792B2:        RTS                       

CODE_2792B3:        JSR CODE_279262           
CODE_2792B6:        CPY #$70                  
CODE_2792B8:        BNE CODE_2792DB           
CODE_2792BA:        LDY $0679,x               
CODE_2792BD:        BMI CODE_2792DA           
CODE_2792BF:        REP #$10                  
CODE_2792C1:        LDY $C6,x                 
CODE_2792C3:        LDA $0801,y               
CODE_2792C6:        CLC                       
CODE_2792C7:        ADC #$01                  
CODE_2792C9:        STA $0801,y               
CODE_2792CC:        STA $0805,y               
CODE_2792CF:        CLC                       
CODE_2792D0:        ADC #$08                  
CODE_2792D2:        STA $0809,y               
CODE_2792D5:        STA $080D,y               
CODE_2792D8:        SEP #$10                  
CODE_2792DA:        RTS                       

CODE_2792DB:        CPY #$71                  
CODE_2792DD:        BEQ CODE_2792DA           
CODE_2792DF:        LDA $06A6,x               
CODE_2792E2:        CMP #$50                  
CODE_2792E4:        BCS CODE_2792DA                   
CODE_2792E6:        LSR A                     
CODE_2792E7:        LSR A                     
CODE_2792E8:        LSR A                     
CODE_2792E9:        LSR A                     
CODE_2792EA:        TAY                       
CODE_2792EB:        LDA $06A6,x               
CODE_2792EE:        AND $AFAB,y               
CODE_2792F1:        BEQ CODE_2792DA           
CODE_2792F3:        LDA #$01                  
CODE_2792F5:        LDY $0679,x               
CODE_2792F8:        BMI CODE_2792FB           
CODE_2792FA:        LSR A                     
CODE_2792FB:        REP #$30                  
CODE_2792FD:        LDY $C6,x                 
CODE_2792FF:        AND #$00FF                
CODE_279302:        TAX                       
CODE_279303:        SEP #$20                  
CODE_279305:        LDA $0801,y               
CODE_279308:        CMP #$F0                  
CODE_27930A:        BEQ CODE_27931D           
CODE_27930C:        CLC                       
CODE_27930D:        ADC $AFB1,x               
CODE_279310:        CMP #$C5                  
CODE_279312:        BCS CODE_279331                   
CODE_279314:        STA $0811,y               
CODE_279317:        CLC                       
CODE_279318:        ADC #$08                  
CODE_27931A:        STA $0819,y               
CODE_27931D:        LDA $0805,y               
CODE_279320:        CMP #$F0                  
CODE_279322:        BEQ CODE_279331           
CODE_279324:        CLC                       
CODE_279325:        ADC $AFB1,x               
CODE_279328:        STA $0815,y               
CODE_27932B:        CLC                       
CODE_27932C:        ADC #$08                  
CODE_27932E:        STA $081D,y               
CODE_279331:        LDA $0800,y               
CODE_279334:        SEC                       
CODE_279335:        SBC #$03                  
CODE_279337:        STA $0810,y               
CODE_27933A:        STA $0818,y               
CODE_27933D:        LDA $0804,y               
CODE_279340:        CLC                       
CODE_279341:        ADC #$03                  
CODE_279343:        STA $0814,y               
CODE_279346:        STA $081C,y               
CODE_279349:        LDA $0802,y               
CODE_27934C:        AND #$80                  
CODE_27934E:        ORA #$26                  
CODE_279350:        STA $0813,y               
CODE_279353:        STA $081B,y               
CODE_279356:        ORA #$40                  
CODE_279358:        STA $0817,y               
CODE_27935B:        STA $081F,y               
CODE_27935E:        LDA #$F8                  
CODE_279360:        STA $0812,y               
CODE_279363:        STA $0816,y               
CODE_279366:        INC A                     
CODE_279367:        STA $081A,y               
CODE_27936A:        STA $081E,y               
CODE_27936D:        REP #$20                  
CODE_27936F:        PHY                       
CODE_279370:        TYA                       
CODE_279371:        LSR A                     
CODE_279372:        LSR A                     
CODE_279373:        TAY                       
CODE_279374:        SEP #$20                  
CODE_279376:        LDA $0A20,y               
CODE_279379:        STA $0A24,y               
CODE_27937C:        LDA $0A21,y               
CODE_27937F:        STA $0A25,y               
CODE_279382:        LDA $0A22,y               
CODE_279385:        STA $0A26,y               
CODE_279388:        LDA $0A23,y               
CODE_27938B:        STA $0A27,y               
CODE_27938E:        PLY                       
CODE_27938F:        SEP #$30                  
CODE_279391:        LDX $9B                   
CODE_279393:        RTS                       

CODE_279394:        TXA                       
CODE_279395:        CLC                       
CODE_279396:        ADC $15                   
CODE_279398:        LSR A                     
CODE_279399:        BCS CODE_2793E0                   
CODE_27939B:        JSL CODE_27A85F           
CODE_27939F:        BNE CODE_2793E0           
CODE_2793A1:        JSL CODE_27A439           
CODE_2793A5:        TXA                       
CODE_2793A6:        BEQ CODE_2793E0           
CODE_2793A8:        DEX                       
CODE_2793A9:        LDY $0671,x               
CODE_2793AC:        LDA $AE78,y               
CODE_2793AF:        AND #$10                  
CODE_2793B1:        BEQ CODE_2793DB           
CODE_2793B3:        LDA $0661,x               
CODE_2793B6:        CMP #$02                  
CODE_2793B8:        BNE CODE_2793DB           
CODE_2793BA:        JSL CODE_27A85F           
CODE_2793BE:        BNE CODE_2793DB           
CODE_2793C0:        JSL CODE_27A413           
CODE_2793C4:        JSL CODE_27A45F           
CODE_2793C8:        BCC CODE_2793DB           
CODE_2793CA:        LDY $9B                   
CODE_2793CC:        LDA $7A,x                 
CODE_2793CE:        CMP $007A,y               
CODE_2793D1:        LDY #$00                  
CODE_2793D3:        BCC CODE_2793D7           
CODE_2793D5:        LDY #$40                  
CODE_2793D7:        TYA                       
CODE_2793D8:        STA $0679,x               
CODE_2793DB:        DEX                       
CODE_2793DC:        BPL CODE_2793A9           
CODE_2793DE:        LDX $9B                   
CODE_2793E0:        RTS                       

CODE_2793E1:        LDA $9C                   
CODE_2793E3:        BEQ CODE_2793E8           
CODE_2793E5:        JMP CODE_2794B6           

CODE_2793E8:        JSL CODE_27983B           
CODE_2793EC:        JSL CODE_27A27C           
CODE_2793F0:        LDA $A7,x                 
CODE_2793F2:        AND #$04                  
CODE_2793F4:        BEQ CODE_27940B           
CODE_2793F6:        LDA $8C,x                 
CODE_2793F8:        BNE CODE_279403           
CODE_2793FA:        JSL CODE_27A837           
CODE_2793FE:        LDA $AFB3,y               
CODE_279401:        STA $8C,x                 
CODE_279403:        JSL CODE_278B67           
CODE_279407:        LDA #$0C                  
CODE_279409:        STA $9E,x                 
CODE_27940B:        LDA $A7,x                 
CODE_27940D:        AND #$03                  
CODE_27940F:        BNE CODE_279414           
CODE_279411:        JMP CODE_27945B           

CODE_279414:        LDA $007A,x               
CODE_279417:        LDY $8C,x                 
CODE_279419:        BPL CODE_279421           
CODE_27941B:        CMP #$06                  
CODE_27941D:        BCC CODE_279448           
CODE_27941F:        BCS CODE_279425                   
CODE_279421:        CMP #$E4                  
CODE_279423:        BCS CODE_279448                   
CODE_279425:        JSL CODE_27A85F           
CODE_279429:        BNE CODE_279448           
CODE_27942B:        LDA $1F78                 
CODE_27942E:        STA $0C                   
CODE_279430:        LDA $1F79                 
CODE_279433:        STA $0D                   
CODE_279435:        LDA $1F7A                 
CODE_279438:        STA $0E                   
CODE_27943A:        LDA $1F7B                 
CODE_27943D:        STA $0F                   
CODE_27943F:        LDA $1F77                 
CODE_279442:        JSL CODE_23D83B           
CODE_279446:        LDX $9B                   
CODE_279448:        LDA #$01                  
CODE_27944A:        STA $1200                 
CODE_27944D:        LDA $0671,x               
CODE_279450:        CMP #$5C                  
CODE_279452:        BNE CODE_279457           
CODE_279454:        JMP CODE_279A55           

CODE_279457:        JSL CODE_279905           
CODE_27945B:        JSR CODE_279916           
CODE_27945E:        TXA                       
CODE_27945F:        CLC                       
CODE_279460:        ADC $15                   
CODE_279462:        LSR A                     
CODE_279463:        BCC CODE_2794B6           
CODE_279465:        JSR CODE_27A6EF           
CODE_279468:        BCC CODE_2794B6           
CODE_27946A:        LDA #$13                  
CODE_27946C:        ORA $05F5,y               
CODE_27946F:        CMP #$19                  
CODE_279471:        BCC CODE_279479           
CODE_279473:        CMP #$1B                  
CODE_279475:        BCS CODE_27947C                   
CODE_279477:        LDA #$19                  
CODE_279479:        STA $1200                 
CODE_27947C:        LDA $8C,x                 
CODE_27947E:        ASL A                     
CODE_27947F:        LDA #$10                  
CODE_279481:        BCC CODE_279485           
CODE_279483:        LDA #$F0                  
CODE_279485:        STA $008C,y               
CODE_279488:        LDA $0661,y               
CODE_27948B:        CMP #$05                  
CODE_27948D:        BNE CODE_2794A5           
CODE_27948F:        LDA $05F5,y               
CODE_279492:        JSL CODE_278A8A           
CODE_279496:        JSR CODE_279526           
CODE_279499:        LDA $008C,y               
CODE_27949C:        ASL A                     
CODE_27949D:        LDA #$10                  
CODE_27949F:        BCS CODE_2794A3                   
CODE_2794A1:        LDA #$F0                  
CODE_2794A3:        STA $8C,x                 
CODE_2794A5:        TYA                       
CODE_2794A6:        TAX                       
CODE_2794A7:        JSR CODE_279526           
CODE_2794AA:        LDX $9B                   
CODE_2794AC:        LDA $05F5,x               
CODE_2794AF:        INC $05F5,x               
CODE_2794B2:        JSL CODE_278A86           
CODE_2794B6:        JSR CODE_279BDF           
CODE_2794B9:        LDA $0671,x               
CODE_2794BC:        CMP #$5C                  
CODE_2794BE:        BEQ CODE_2794ED           
CODE_2794C0:        CMP #$7A                  
CODE_2794C2:        BCS CODE_279521                   
CODE_2794C4:        LDA $0565                 
CODE_2794C7:        LSR A                     
CODE_2794C8:        AND #$03                  
CODE_2794CA:        TAY                       
CODE_2794CB:        LDA $0679,x               
CODE_2794CE:        AND #$BF                  
CODE_2794D0:        ORA $AFB5,y               
CODE_2794D3:        STA $0679,x               
CODE_2794D6:        LDA $AFB9,y               
CODE_2794D9:        STA $0669,x               
CODE_2794DC:        TYA                       
CODE_2794DD:        AND #$01                  
CODE_2794DF:        BNE CODE_2794E6           
CODE_2794E1:        JSR CODE_279EBF           
CODE_2794E4:        BRA CODE_2794E9           

CODE_2794E6:        JSR CODE_279EA0           
CODE_2794E9:        JSR CODE_27A9BF           
CODE_2794EC:        RTS                       

CODE_2794ED:        LDA $15                   
CODE_2794EF:        LSR A                     
CODE_2794F0:        STA $0769,x               
CODE_2794F3:        JSR CODE_279EBF           
CODE_2794F6:        LDY $0671,x               
CODE_2794F9:        CPY #$5C                  
CODE_2794FB:        BNE CODE_279520           
CODE_2794FD:        REP #$10                  
CODE_2794FF:        LDY $C6,x                 
CODE_279501:        LDA #$74                  
CODE_279503:        STA $0802,y               
CODE_279506:        INC A                     
CODE_279507:        STA $080A,y               
CODE_27950A:        LDA #$76                  
CODE_27950C:        STA $0806,y               
CODE_27950F:        INC A                     
CODE_279510:        STA $080E,y               
CODE_279513:        LDA $0807,y               
CODE_279516:        AND #$BF                  
CODE_279518:        STA $0807,y               
CODE_27951B:        STA $080F,y               
CODE_27951E:        SEP #$10                  
CODE_279520:        RTS                       

CODE_279521:        JSL CODE_22C964           
CODE_279525:        RTS                       

CODE_279526:        LDA #$06                  
CODE_279528:        STA $0661,x               
CODE_27952B:        LDA #$D0                  
CODE_27952D:        STA $9E,x                 
CODE_27952F:        LDA $71,x                 
CODE_279531:        STA $1A47                 
CODE_279534:        LDA $5F,x                 
CODE_279536:        STA $1A48                 
CODE_279539:        LDA $44,x                 
CODE_27953B:        STA $027E                 
CODE_27953E:        LDA #$0A                  
CODE_279540:        STA $1A46                 
CODE_279543:        RTS                       

CODE_279544:        LDA $1F9C                 
CODE_279547:        STA $1F9D                 
CODE_27954A:        LDA $1F9F                 
CODE_27954D:        STA $1FA0                 
CODE_279550:        LDA $1FAB                 
CODE_279553:        STA $1FAC                 
CODE_279556:        LDA $1FA2                 
CODE_279559:        STA $1FA3                 
CODE_27955C:        LDA $1FA5                 
CODE_27955F:        STA $1FA6                 
CODE_279562:        LDA $1FA8                 
CODE_279565:        STA $1FA9                 
CODE_279568:        LDA $1FAE                 
CODE_27956B:        STA $1FAF                 
CODE_27956E:        LDA $1FB1                 
CODE_279571:        STA $1FB2                 
CODE_279574:        LDA $DF                   
CODE_279576:        STA $E0                   
CODE_279578:        LDA $02AE                 
CODE_27957B:        STA $02AF                 
CODE_27957E:        RTL                       

CODE_27957F:        LDA $1F77                 
CODE_279582:        STA $07                   
CODE_279584:        LDA $1F78                 
CODE_279587:        STA $0C                   
CODE_279589:        LDA $1F79                 
CODE_27958C:        STA $0D                   
CODE_27958E:        LDA $1F7A                 
CODE_279591:        STA $0E                   
CODE_279593:        LDA $1F7B                 
CODE_279596:        STA $0F                   
CODE_279598:        LDA $07                   
CODE_27959A:        JSL CODE_23D83B           
CODE_27959E:        LDX $9B                   
CODE_2795A0:        RTL                       

CODE_2795A1:        LDA $BF                   
CODE_2795A3:        BEQ CODE_2795A8           
CODE_2795A5:        JMP CODE_27971E           

CODE_2795A8:        JSR CODE_279886           
CODE_2795AB:        BIT $17                   
CODE_2795AD:        BVC CODE_2795B2                   
CODE_2795AF:        JMP CODE_279670           

CODE_2795B2:        LDA $0571                 
CODE_2795B5:        BNE CODE_2795AF           
CODE_2795B7:        LDA #$03                  
CODE_2795B9:        STA $1200                 
CODE_2795BC:        LDA #$0C                  
CODE_2795BE:        STA $0557                 
CODE_2795C1:        LDA #$10                  
CODE_2795C3:        STA $0520,x               
CODE_2795C6:        LDA $0671,x               
CODE_2795C9:        CMP #$50                  
CODE_2795CB:        BEQ CODE_2795D1           
CODE_2795CD:        CMP #$55                  
CODE_2795CF:        BNE CODE_2795F7           
CODE_2795D1:        LDA #$02                  
CODE_2795D3:        STA $0661,x               
CODE_2795D6:        LDA #$E0                  
CODE_2795D8:        STA $9E,x                 
CODE_2795DA:        JSL CODE_27A837           
CODE_2795DE:        LDA $AFC1,y               
CODE_2795E1:        STA $8C,x                 
CODE_2795E3:        EOR $8B                   
CODE_2795E5:        BMI CODE_2795F4           
CODE_2795E7:        LDA $8B                   
CODE_2795E9:        STA $00                   
CODE_2795EB:        ASL $00                   
CODE_2795ED:        ROR A                     
CODE_2795EE:        CLC                       
CODE_2795EF:        ADC $AFBD,y               
CODE_2795F2:        STA $8C,x                 
CODE_2795F4:        JMP CODE_279EA0           

CODE_2795F7:        LDA #$00                  
CODE_2795F9:        STA $05F5,x               
CODE_2795FC:        LDA $0661,x               
CODE_2795FF:        CMP #$04                  
CODE_279601:        BNE CODE_27963E           
CODE_279603:        LDA $0671,x               
CODE_279606:        CMP #$5C                  
CODE_279608:        BEQ CODE_279634           
CODE_27960A:        LDY #$01                  
CODE_27960C:        LDA $BD                   
CODE_27960E:        BNE CODE_279612           
CODE_279610:        LDY #$FF                  
CODE_279612:        STY $8C,x                 
CODE_279614:        JSL CODE_278B93           
CODE_279618:        LDA $A7,x                 
CODE_27961A:        AND #$03                  
CODE_27961C:        BEQ CODE_279634           
CODE_27961E:        LDA #$05                  
CODE_279620:        JSL CODE_278A94           
CODE_279624:        LDA #$06                  
CODE_279626:        STA $0661,x               
CODE_279629:        LDA #$C0                  
CODE_27962B:        STA $9E,x                 
CODE_27962D:        LDA #$00                  
CODE_27962F:        STA $8C,x                 
CODE_279631:        JMP CODE_27971E           

CODE_279634:        LDY #$00                  
CODE_279636:        LDA $BD                   
CODE_279638:        BEQ CODE_27963B           
CODE_27963A:        INY                       
CODE_27963B:        JMP CODE_279647           

CODE_27963E:        JSL CODE_27A837           
CODE_279642:        LDA $AFBF,y               
CODE_279645:        STA $BD                   
CODE_279647:        LDA $AFBD,y               
CODE_27964A:        STA $8C,x                 
CODE_27964C:        EOR $8B                   
CODE_27964E:        BMI CODE_27965D           
CODE_279650:        LDA $8B                   
CODE_279652:        STA $00                   
CODE_279654:        ASL $00                   
CODE_279656:        ROR A                     
CODE_279657:        CLC                       
CODE_279658:        ADC $AFBD,y               
CODE_27965B:        STA $8C,x                 
CODE_27965D:        LDA $0661,x               
CODE_279660:        CMP #$06                  
CODE_279662:        BEQ CODE_279669           
CODE_279664:        LDA #$05                  
CODE_279666:        STA $0661,x               
CODE_279669:        LDA #$00                  
CODE_27966B:        STA $9E,x                 
CODE_27966D:        JMP CODE_27971E           

CODE_279670:        LDA #$01                  
CODE_279672:        STA $06A4                 
CODE_279675:        LDA $0571                 
CODE_279678:        BEQ CODE_27967E           
CODE_27967A:        LDY #$0A                  
CODE_27967C:        BNE CODE_27969B           
CODE_27967E:        LDY #$00                  
CODE_279680:        LDA $BD                   
CODE_279682:        BNE CODE_279685           
CODE_279684:        INY                       
CODE_279685:        LDA $1FF9,x               
CODE_279688:        BEQ CODE_27968F           
CODE_27968A:        INY                       
CODE_27968B:        INY                       
CODE_27968C:        INY                       
CODE_27968D:        INY                       
CODE_27968E:        INY                       
CODE_27968F:        LDA $0558                 
CODE_279692:        BEQ CODE_2796A4           
CODE_279694:        INY                       
CODE_279695:        INY                       
CODE_279696:        CMP #$05                  
CODE_279698:        BCC CODE_27969B           
CODE_27969A:        INY                       
CODE_27969B:        REP #$20                  
CODE_27969D:        LDA #$0020                
CODE_2796A0:        STA $C6,x                 
CODE_2796A2:        SEP #$20                  
CODE_2796A4:        LDA $5E                   
CODE_2796A6:        CLC                       
CODE_2796A7:        ADC $AFC3,y               
CODE_2796AA:        STA $5F,x                 
CODE_2796AC:        LDA $43                   
CODE_2796AE:        ADC $AFCE,y               
CODE_2796B1:        STA $44,x                 
CODE_2796B3:        LDA #$FE                  
CODE_2796B5:        LDY $1FF9,x               
CODE_2796B8:        BNE CODE_2796C2           
CODE_2796BA:        LDA #$0D                  
CODE_2796BC:        LDY $BB                   
CODE_2796BE:        BNE CODE_2796C2           
CODE_2796C0:        LDA #$0F                  
CODE_2796C2:        PHA                       
CODE_2796C3:        CLC                       
CODE_2796C4:        ADC $70                   
CODE_2796C6:        STA $71,x                 
CODE_2796C8:        LDY #$00                  
CODE_2796CA:        PLA                       
CODE_2796CB:        BPL CODE_2796CE           
CODE_2796CD:        DEY                       
CODE_2796CE:        TYA                       
CODE_2796CF:        ADC $55                   
CODE_2796D1:        STA $56,x                 
CODE_2796D3:        LDA $8B                   
CODE_2796D5:        STA $8C,x                 
CODE_2796D7:        LDA $9D                   
CODE_2796D9:        STA $9E,x                 
CODE_2796DB:        JSL CODE_278B93           
CODE_2796DF:        JSL CODE_279DC2           
CODE_2796E3:        JSR CODE_27A6EF           
CODE_2796E6:        BCC CODE_27971E           
CODE_2796E8:        LDA $0520,x               
CODE_2796EB:        ORA $0571                 
CODE_2796EE:        BNE CODE_27971E           
CODE_2796F0:        LDA #$03                  
CODE_2796F2:        STA $1200                 
CODE_2796F5:        LDA #$06                  
CODE_2796F7:        STA $0661,x               
CODE_2796FA:        LDA #$D0                  
CODE_2796FC:        STA $9E,x                 
CODE_2796FE:        LDA #$06                  
CODE_279700:        STA $0661,y               
CODE_279703:        LDA #$D0                  
CODE_279705:        STA $009E,y               
CODE_279708:        LDA #$00                  
CODE_27970A:        JSL CODE_278A8A           
CODE_27970E:        LDA #$10                  
CODE_279710:        STA $0520,x               
CODE_279713:        TYA                       
CODE_279714:        TAX                       
CODE_279715:        JSL CODE_27A837           
CODE_279719:        LDA $AFD9,y               
CODE_27971C:        STA $8C,x                 
CODE_27971E:        LDX $9B                   
CODE_279720:        LDA $BF                   
CODE_279722:        BNE CODE_27972B           
CODE_279724:        LDA $0851                 
CODE_279727:        CMP #$F0                  
CODE_279729:        BEQ CODE_279749           
CODE_27972B:        LDA $0679,x               
CODE_27972E:        ORA #$20                  
CODE_279730:        STA $D8                   
CODE_279732:        LDA $0571                 
CODE_279735:        AND #$80                  
CODE_279737:        BEQ CODE_279741           
CODE_279739:        LDA $D8                   
CODE_27973B:        AND #$CF                  
CODE_27973D:        ORA #$10                  
CODE_27973F:        STA $D8                   
CODE_279741:        LDA $D8                   
CODE_279743:        STA $0679,x               
CODE_279746:        JSR CODE_279254           
CODE_279749:        RTS                       

CODE_27974A:        JSR CODE_2797F9           
CODE_27974D:        LDY $0671,x               
CODE_279750:        LDA $B317,y               
CODE_279753:        AND #$0F                  
CODE_279755:        BEQ CODE_279762           
CODE_279757:        CPX #$05                  
CODE_279759:        BCS CODE_279762                   
CODE_27975B:        PHA                       
CODE_27975C:        LDA #$02                  
CODE_27975E:        STA $0669,x               
CODE_279761:        PLA                       
CODE_279762:        JSL CODE_20FB1F           

PNTR_279766:        dw CODE_27977A
                    dw CODE_2797B8
                    dw CODE_2797B2
                    dw CODE_2797AC
                    dw CODE_2797A5
                    dw CODE_279781
                    dw CODE_27978D
                    dw CODE_279794
                    dw CODE_27979F
                    dw CODE_279788

CODE_27977A:        JSL CODE_279D6E
CODE_27977E:        JMP CODE_2797BB           

CODE_279781:        JSL CODE_279D44           
CODE_279785:        JMP CODE_2797BB           

CODE_279788:        JSL CODE_279D44           
CODE_27978C:        RTS                       

CODE_27978D:        JSL CODE_22C964           
CODE_279791:        JMP CODE_2797BB           

CODE_279794:        LDA #$08                  
CODE_279796:        STA $0661,x               
CODE_279799:        LDA #$1F                  
CODE_27979B:        STA $0518,x               
CODE_27979E:        RTS                       

CODE_27979F:        JSR CODE_279EA0           
CODE_2797A2:        JMP CODE_2797F0           

CODE_2797A5:        JSL CODE_279EE1           
CODE_2797A9:        JMP CODE_2797BB           

CODE_2797AC:        JSR CODE_279F11           
CODE_2797AF:        JMP CODE_2797BB           

CODE_2797B2:        JSR CODE_279EBF           
CODE_2797B5:        JMP CODE_2797BB           

CODE_2797B8:        JSR CODE_279EA0           
CODE_2797BB:        LDA $9C                   
CODE_2797BD:        BNE CODE_2797F8           
CODE_2797BF:        LDA $06EB,x               
CODE_2797C2:        BEQ CODE_2797E8           
CODE_2797C4:        INC $06EB,x               
CODE_2797C7:        CMP #$90                  
CODE_2797C9:        BNE CODE_2797CE           
CODE_2797CB:        JMP CODE_279C33           

CODE_2797CE:        LDA #$04                  
CODE_2797D0:        STA $9E,x                 
CODE_2797D2:        JSL CODE_27A7E4           
CODE_2797D6:        LDA $0679,x               
CODE_2797D9:        AND #$CF                  
CODE_2797DB:        ORA #$10                  
CODE_2797DD:        STA $0679,x               
CODE_2797E0:        CPX #$05                  
CODE_2797E2:        BCC CODE_2797E7           
CODE_2797E4:        JMP CODE_27A31F           

CODE_2797E7:        RTS                       

CODE_2797E8:        LDA $0679,x               
CODE_2797EB:        ORA #$80                  
CODE_2797ED:        STA $0679,x               
CODE_2797F0:        LDA $9C                   
CODE_2797F2:        BNE CODE_2797F8           
CODE_2797F4:        JSL CODE_27983B           
CODE_2797F8:        RTS                       

CODE_2797F9:        LDA $0425                 
CODE_2797FC:        BEQ CODE_279804           
CODE_2797FE:        LDA $83,x                 
CODE_279800:        CMP #$C8                  
CODE_279802:        BCC CODE_2797F8           
CODE_279804:        LDA $56,x                 
CODE_279806:        CMP #$02                  
CODE_279808:        BMI CODE_2797F8           
CODE_27980A:        PLA                       
CODE_27980B:        PLA                       
CODE_27980C:        JMP CODE_279C5F           

CODE_27980F:        LDA $06A6,x               
CODE_279812:        BEQ CODE_279838           
CODE_279814:        JSL CODE_27983B           
CODE_279818:        LDA $A7,x                 
CODE_27981A:        AND #$04                  
CODE_27981C:        BEQ CODE_279824           
CODE_27981E:        JSL CODE_278B67           
CODE_279822:        STA $8C,x                 
CODE_279824:        LDA #$03                  
CODE_279826:        STA $0669,x               
CODE_279829:        LDA $0671,x               
CODE_27982C:        CMP #$72                  
CODE_27982E:        BNE CODE_279833           
CODE_279830:        JMP CODE_279EBF           

CODE_279833:        JSL CODE_22C964           
CODE_279837:        RTS                       

CODE_279838:        JMP CODE_279C5F           

CODE_27983B:        LDA $8C,x                 
CODE_27983D:        PHA                       
CODE_27983E:        LDY $06B7,x               
CODE_279841:        BEQ CODE_27984D           
CODE_279843:        LDY $0661,x               
CODE_279846:        CPY #$02                  
CODE_279848:        BEQ CODE_27984D           
CODE_27984A:        ASL A                     
CODE_27984B:        ROR $8C,x                 
CODE_27984D:        JSL CODE_27A7EF           
CODE_279851:        PLA                       
CODE_279852:        STA $8C,x                 
CODE_279854:        JSL CODE_27A7E4           
CODE_279858:        JSL CODE_278B9B           
CODE_27985C:        LDY $06B7,x               
CODE_27985F:        LDA $9E,x                 
CODE_279861:        BPL CODE_279871           
CODE_279863:        CPY #$00                  
CODE_279865:        BEQ CODE_279871           
CODE_279867:        CMP #$E8                  
CODE_279869:        BCS CODE_279871                   
CODE_27986B:        LDA #$E8                  
CODE_27986D:        STA $9E,x                 
CODE_27986F:        BNE CODE_279871           
CODE_279871:        LDA $9E,x                 
CODE_279873:        CLC                       
CODE_279874:        ADC $AFDD,y               
CODE_279877:        STA $9E,x                 
CODE_279879:        BMI CODE_279885           
CODE_27987B:        CMP $AFDB,y               
CODE_27987E:        BCC CODE_279885           
CODE_279880:        LDA $AFDB,y               
CODE_279883:        STA $9E,x                 
CODE_279885:        RTL                       

CODE_279886:        LDA $0671,x               
CODE_279889:        CMP #$50                  
CODE_27988B:        BEQ CODE_279891           
CODE_27988D:        CMP #$55                  
CODE_27988F:        BNE CODE_2798A8           
CODE_279891:        LDA $0518,x               
CODE_279894:        BNE CODE_2798A0           
CODE_279896:        LDA #$02                  
CODE_279898:        STA $0661,x               
CODE_27989B:        JSL CODE_28D485           
CODE_27989F:        RTS                       

CODE_2798A0:        CMP #$40                  
CODE_2798A2:        BCS CODE_2798A7                   
CODE_2798A4:        STA $0769,x               
CODE_2798A7:        RTS                       

CODE_2798A8:        CMP #$5C                  
CODE_2798AA:        BNE CODE_2798C7           
CODE_2798AC:        LDA $06A6,x               
CODE_2798AF:        BNE CODE_2798B4           
CODE_2798B1:        JMP CODE_279794           

CODE_2798B4:        CMP #$60                  
CODE_2798B6:        BCS CODE_2798C3                   
CODE_2798B8:        CMP #$30                  
CODE_2798BA:        BCS CODE_2798C2                   
CODE_2798BC:        CMP #$10                  
CODE_2798BE:        BCS CODE_2798C1                   
CODE_2798C0:        LSR A                     
CODE_2798C1:        LSR A                     
CODE_2798C2:        LSR A                     
CODE_2798C3:        STA $0769,x               
CODE_2798C6:        RTS                       

CODE_2798C7:        LDA $06A6,x               
CODE_2798CA:        BNE CODE_279904           
CODE_2798CC:        LDA $0661,x               
CODE_2798CF:        CMP #$04                  
CODE_2798D1:        BNE CODE_2798F0           
CODE_2798D3:        JSL CODE_278B93           
CODE_2798D7:        LDA $A7,x                 
CODE_2798D9:        BEQ CODE_2798F0           
CODE_2798DB:        LDA #$05                  
CODE_2798DD:        JSL CODE_278A94           
CODE_2798E1:        LDA #$06                  
CODE_2798E3:        STA $0661,x               
CODE_2798E6:        LDA #$C0                  
CODE_2798E8:        STA $9E,x                 
CODE_2798EA:        LDA #$00                  
CODE_2798EC:        STA $8C,x                 
CODE_2798EE:        BEQ CODE_2798FF           
CODE_2798F0:        LDA #$02                  
CODE_2798F2:        STA $0661,x               
CODE_2798F5:        JSL CODE_27A837           
CODE_2798F9:        LDA $AFDF,y               
CODE_2798FC:        STA $0679,x               
CODE_2798FF:        PLA                       
CODE_279900:        PLA                       
CODE_279901:        JMP CODE_279251           

CODE_279904:        RTS                       

CODE_279905:        LDA $8C,x                 
CODE_279907:        JSL CODE_27A859           
CODE_27990B:        STA $8C,x                 
CODE_27990D:        LDA $0679,x               
CODE_279910:        EOR #$40                  
CODE_279912:        STA $0679,x               
CODE_279915:        RTL                       

CODE_279916:        JSL CODE_27A85F           
CODE_27991A:        BNE CODE_279984           
CODE_27991C:        LDA $1F76                 
CODE_27991F:        CMP #$F3                  
CODE_279921:        BNE CODE_27997A           
CODE_279923:        LDA #$D0                  
CODE_279925:        STA $9E,x                 
CODE_279927:        JSL CODE_27A837           
CODE_27992B:        LDA $AFE1,y               
CODE_27992E:        STA $8C,x                 
CODE_279930:        LDA #$80                  
CODE_279932:        STA $0679,x               
CODE_279935:        LDY $0671,x               
CODE_279938:        LDA $B1AF,y               
CODE_27993B:        AND #$40                  
CODE_27993D:        BNE CODE_27994B           
CODE_27993F:        LDA #$06                  
CODE_279941:        STA $0661,x               
CODE_279944:        LDA #$00                  
CODE_279946:        JSL CODE_278A8A           
CODE_27994A:        RTS                       

CODE_27994B:        PHX                       
CODE_27994C:        REP #$30                  
CODE_27994E:        LDA $0671,x               
CODE_279951:        AND #$00FF                
CODE_279954:        STA $D8                   
CODE_279956:        ASL A                     
CODE_279957:        CLC                       
CODE_279958:        ADC $D8                   
CODE_27995A:        TAX                       
CODE_27995B:        LDA $288438,x             
CODE_27995F:        STA $D8                   
CODE_279961:        SEP #$30                  
CODE_279963:        PLX                       
CODE_279964:        LDA $D9                   
CODE_279966:        AND #$F8                  
CODE_279968:        CMP #$08                  
CODE_27996A:        BNE CODE_279977           
CODE_27996C:        LDA $D8                   
CODE_27996E:        STA $0671,x               
CODE_279971:        LDA #$00                  
CODE_279973:        JSL CODE_278A8A           
CODE_279977:        JMP CODE_279AEE           

CODE_27997A:        JSR CODE_27A31B           
CODE_27997D:        LDA #$00                  
CODE_27997F:        STA $0797,x               
CODE_279982:        BCS CODE_279985                   
CODE_279984:        RTS                       

CODE_279985:        LDA $0520,x               
CODE_279988:        BNE CODE_279984           
CODE_27998A:        LDA $0545                 
CODE_27998D:        BNE CODE_27999B           
CODE_27998F:        LDY $0671,x               
CODE_279992:        LDA $B0FB,y               
CODE_279995:        AND #$02                  
CODE_279997:        BEQ CODE_2799D8           
CODE_279999:        BNE CODE_2799C5           
CODE_27999B:        JSR CODE_2799D8           
CODE_27999E:        LDA $0661,x               
CODE_2799A1:        CMP #$02                  
CODE_2799A3:        BEQ CODE_2799C4           
CODE_2799A5:        STA $03                   
CODE_2799A7:        JSR CODE_27A679           
CODE_2799AA:        LDA $0783,x               
CODE_2799AD:        AND #$1F                  
CODE_2799AF:        ADC #$B4                  
CODE_2799B1:        STA $9E,x                 
CODE_2799B3:        LDA #$06                  
CODE_2799B5:        STA $0661,x               
CODE_2799B8:        LDA $8B                   
CODE_2799BA:        STA $00                   
CODE_2799BC:        ASL $00                   
CODE_2799BE:        ROR A                     
CODE_2799BF:        CLC                       
CODE_2799C0:        ADC $8C,x                 
CODE_2799C2:        STA $8C,x                 
CODE_2799C4:        RTS                       

CODE_2799C5:        LDA $A6                   
CODE_2799C7:        BNE CODE_2799D8           
CODE_2799C9:        LDA $9E,x                 
CODE_2799CB:        CMP #$0A                  
CODE_2799CD:        BMI CODE_2799D2           
CODE_2799CF:        JMP CODE_279AF9           

CODE_2799D2:        LDA $A7,x                 
CODE_2799D4:        AND #$04                  
CODE_2799D6:        BNE CODE_2799CF           
CODE_2799D8:        LDY #$11                  
CODE_2799DA:        LDA $0671,x               
CODE_2799DD:        CMP #$6B                  
CODE_2799DF:        BEQ CODE_2799EE           
CODE_2799E1:        CMP #$64                  
CODE_2799E3:        BEQ CODE_2799EE           
CODE_2799E5:        LDY #$13                  
CODE_2799E7:        LDA $1FF9,x               
CODE_2799EA:        BEQ CODE_2799EE           
CODE_2799EC:        LDY #$08                  
CODE_2799EE:        STY $01                   
CODE_2799F0:        LDA $71,x                 
CODE_2799F2:        SEC                       
CODE_2799F3:        SBC $01                   
CODE_2799F5:        ROL $00                   
CODE_2799F7:        CMP $70                   
CODE_2799F9:        PHP                       
CODE_2799FA:        LSR $00                   
CODE_2799FC:        LDA $56,x                 
CODE_2799FE:        SBC #$00                  
CODE_279A00:        PLP                       
CODE_279A01:        SBC $55                   
CODE_279A03:        BMI CODE_2799CF           
CODE_279A05:        LDA $9D                   
CODE_279A07:        BPL CODE_279A13           
CODE_279A09:        LDA $056E                 
CODE_279A0C:        BNE CODE_279A13           
CODE_279A0E:        LDA $05F4                 
CODE_279A11:        BEQ CODE_2799CF           
CODE_279A13:        LDA #$01                  
CODE_279A15:        STA $0797,x               
CODE_279A18:        LDA $0575                 
CODE_279A1B:        BNE CODE_279A27           
CODE_279A1D:        LDY $0671,x               
CODE_279A20:        LDA $B1AF,y               
CODE_279A23:        AND #$20                  
CODE_279A25:        BEQ CODE_279A32           
CODE_279A27:        LDA $0577                 
CODE_279A2A:        ORA $057A                 
CODE_279A2D:        BNE CODE_279A32           
CODE_279A2F:        JMP CODE_279B1D           

CODE_279A32:        LDY $0671,x               
CODE_279A35:        LDA $B0FB,y               
CODE_279A38:        AND #$04                  
CODE_279A3A:        BNE CODE_279A74           
CODE_279A3C:        LDA $057A                 
CODE_279A3F:        ORA $0577                 
CODE_279A42:        BEQ CODE_279A5B           
CODE_279A44:        JSR CODE_279A75           
CODE_279A47:        LDY $0671,x               
CODE_279A4A:        LDA $B1AF,y               
CODE_279A4D:        AND #$10                  
CODE_279A4F:        BEQ CODE_279A55           
CODE_279A51:        LDA #$03                  
CODE_279A53:        BNE CODE_279A57           
CODE_279A55:        LDA #$06                  
CODE_279A57:        STA $0661,x               
CODE_279A5A:        RTS                       

CODE_279A5B:        LDA $0661,x               
CODE_279A5E:        CMP #$03                  
CODE_279A60:        BNE CODE_279A75           
CODE_279A62:        LDA $05F4                 
CODE_279A65:        INC $05F4                 
CODE_279A68:        JSL CODE_278A8A           
CODE_279A6C:        JSR CODE_2795B2           
CODE_279A6F:        LDA #$00                  
CODE_279A71:        STA $0557                 
CODE_279A74:        RTS                       

CODE_279A75:        LDA #$08                  
CODE_279A77:        STA $0520,x               
CODE_279A7A:        LDA #$C0                  
CODE_279A7C:        STA $9D                   
CODE_279A7E:        LDA #$02                  
CODE_279A80:        STA $1200                 
CODE_279A83:        DEC $1CF6,x               
CODE_279A86:        BPL CODE_279A74           
CODE_279A88:        PHX                       
CODE_279A89:        REP #$30                  
CODE_279A8B:        LDA $0671,x               
CODE_279A8E:        AND #$00FF                
CODE_279A91:        STA $D8                   
CODE_279A93:        ASL A                     
CODE_279A94:        CLC                       
CODE_279A95:        ADC $D8                   
CODE_279A97:        TAX                       
CODE_279A98:        LDA $288438,x             
CODE_279A9C:        STA $D8                   
CODE_279A9E:        SEP #$30                  
CODE_279AA0:        PLX                       
CODE_279AA1:        LDA $D9                   
CODE_279AA3:        AND #$F4                  
CODE_279AA5:        CMP #$04                  
CODE_279AA7:        BNE CODE_279AB1           
CODE_279AA9:        LDA $05F4                 
CODE_279AAC:        CLC                       
CODE_279AAD:        ADC #$04                  
CODE_279AAF:        BNE CODE_279AB4           
CODE_279AB1:        LDA $05F4                 
CODE_279AB4:        INC $05F4                 
CODE_279AB7:        JSL CODE_278A8A           
CODE_279ABB:        LDA $D9                   
CODE_279ABD:        AND #$F8                  
CODE_279ABF:        CMP #$08                  
CODE_279AC1:        BNE CODE_279ACE           
CODE_279AC3:        LDA $D8                   
CODE_279AC5:        STA $0671,x               
CODE_279AC8:        INC $1CF6,x               
CODE_279ACB:        JMP CODE_279AE6           

CODE_279ACE:        LDY $0671,x               
CODE_279AD1:        LDA $B0FB,y               
CODE_279AD4:        AND #$01                  
CODE_279AD6:        BEQ CODE_279AEB           
CODE_279AD8:        LDA #$03                  
CODE_279ADA:        STA $1200                 
CODE_279ADD:        LDA #$06                  
CODE_279ADF:        STA $0661,x               
CODE_279AE2:        LDA #$00                  
CODE_279AE4:        STA $8C,x                 
CODE_279AE6:        LDA #$00                  
CODE_279AE8:        STA $9E,x                 
CODE_279AEA:        RTS                       

CODE_279AEB:        INC $1CF6,x               
CODE_279AEE:        LDA #$03                  
CODE_279AF0:        STA $0661,x               
CODE_279AF3:        LDA #$FF                  
CODE_279AF5:        STA $06A6,x               
CODE_279AF8:        RTS                       

CODE_279AF9:        LDA $0661,x               
CODE_279AFC:        CMP #$03                  
CODE_279AFE:        BNE CODE_279B1D           
CODE_279B00:        LDA $0577                 
CODE_279B03:        ORA $057A                 
CODE_279B06:        BEQ CODE_279B0B           
CODE_279B08:        JMP CODE_279A62           

CODE_279B0B:        LDA $06A5                 
CODE_279B0E:        BNE CODE_279B6A           
CODE_279B10:        BIT $17                   
CODE_279B12:        BVS CODE_279B17           
CODE_279B14:        JMP CODE_2795B2           

CODE_279B17:        LDA #$04                  
CODE_279B19:        STA $0661,x               
CODE_279B1C:        RTS                       

CODE_279B1D:        LDA $0552                 
CODE_279B20:        ORA $057A                 
CODE_279B23:        ORA $0520,x               
CODE_279B26:        ORA $0553                 
CODE_279B29:        BNE CODE_279B6A           
CODE_279B2B:        LDA $0661,x               
CODE_279B2E:        CMP #$05                  
CODE_279B30:        BNE CODE_279B4B           
CODE_279B32:        LDY #$00                  
CODE_279B34:        LDA $8B                   
CODE_279B36:        BEQ CODE_279B4B           
CODE_279B38:        BPL CODE_279B3B           
CODE_279B3A:        INY                       
CODE_279B3B:        STY $00                   
CODE_279B3D:        EOR $8C,x                 
CODE_279B3F:        BMI CODE_279B4B           
CODE_279B41:        JSL CODE_27A837           
CODE_279B45:        CPY $00                   
CODE_279B47:        BNE CODE_279B6A           
CODE_279B49:        BEQ CODE_279B66           
CODE_279B4B:        LDY $0671,x               
CODE_279B4E:        LDA $AE78,y               
CODE_279B51:        AND #$10                  
CODE_279B53:        BEQ CODE_279B66           
CODE_279B55:        JSL CODE_27A837           
CODE_279B59:        LDA $0679,x               
CODE_279B5C:        AND #$BF                  
CODE_279B5E:        DEY                       
CODE_279B5F:        BEQ CODE_279B63           
CODE_279B61:        ORA #$40                  
CODE_279B63:        STA $0679,x               
CODE_279B66:        JSL CODE_27A4C6           
CODE_279B6A:        RTS                       

CODE_279B6B:        JSR CODE_279916           
CODE_279B6E:        RTL                       

CODE_279B6F:        JSR CODE_27997A           
CODE_279B72:        RTL                       

CODE_279B73:        JSR CODE_279A75           
CODE_279B76:        RTL                       

CODE_279B77:        JSR CODE_279AEE           
CODE_279B7A:        RTL                       

CODE_279B7B:        RTS                       

CODE_279B7C:        RTL                       

CODE_279B7D:        JSL CODE_279B82           
CODE_279B81:        RTS                       

CODE_279B82:        JSL CODE_279C96           ;Sprite INIT Routines
CODE_279B86:        INC $0661,x               
CODE_279B89:        JSL CODE_279BB7           
CODE_279B8D:        PHX                       
CODE_279B8E:        REP #$30                  ;\
CODE_279B90:        LDA $0671,x               ; |
CODE_279B93:        AND #$00FF                ; |
CODE_279B96:        STA $00                   ; |
CODE_279B98:        ASL A                     ; |
CODE_279B99:        CLC                       ; |
CODE_279B9A:        ADC $00                   ; |Sprite # to 24-bit pointer index
CODE_279B9C:        TAX                       ; | then jump to pointer code.
CODE_279B9D:        SEP #$20                  ; |
CODE_279B9F:        LDA.l PNTR_288000,x      ; |
CODE_279BA3:        STA $00                   ; |
CODE_279BA5:        LDA.l PNTR_288000+1,x    ; |
CODE_279BA9:        STA $01                   ; |
CODE_279BAB:        LDA.l PNTR_288000+2,x    ; |
CODE_279BAF:        STA $02                   ; |
CODE_279BB1:        SEP #$10                  ; |
CODE_279BB3:        PLX                       ; |
CODE_279BB4:        JML [$0000]               ;/

CODE_279BB7:        LDY $0671,x               ;\
CODE_279BBA:        LDA $B263,y               ; |$21:B263, NOT bank $27
CODE_279BBD:        AND #$07                  ; |
CODE_279BBF:        STA $1FE9,x               ; |
CODE_279BC2:        RTL                       ;/

CODE_279BC3:        JSR CODE_279BDF           
CODE_279BC6:        RTL                       

CODE_279BC7:        JSR CODE_279BDB           
CODE_279BCA:        RTL                       

CODE_279BCB:        JSR CODE_279BD7           
CODE_279BCE:        RTL                       

CODE_279BCF:        JSR CODE_279C33           
CODE_279BD2:        RTL                       

CODE_279BD3:        JSR CODE_279C52           
CODE_279BD6:        RTL                       

CODE_279BD7:        LDA #$04                  
CODE_279BD9:        BNE CODE_279BEE           
CODE_279BDB:        LDA #$02                  
CODE_279BDD:        BNE CODE_279BEE           
CODE_279BDF:        LDA $1FF1,x               
CODE_279BE2:        BEQ CODE_279BEC           
CODE_279BE4:        LDA $0651,x               
CODE_279BE7:        BNE CODE_279BDB           
CODE_279BE9:        STA $1FF1,x               
CODE_279BEC:        LDA #$00                  
CODE_279BEE:        STA $00                   
CODE_279BF0:        JSL CODE_27A85F           
CODE_279BF4:        BEQ CODE_279C64           
CODE_279BF6:        LDA $0425                 
CODE_279BF9:        BNE CODE_279C65           
CODE_279BFB:        LDA $56,x                 
CODE_279BFD:        CMP #$02                  
CODE_279BFF:        BPL CODE_279C33           
CODE_279C01:        TXA                       
CODE_279C02:        CLC                       
CODE_279C03:        ADC $15                   
CODE_279C05:        LSR A                     
CODE_279C06:        BCS CODE_279C64                   
CODE_279C08:        AND #$01                  
CODE_279C0A:        STA $01                   
CODE_279C0C:        ADC $00                   
CODE_279C0E:        TAY                       
CODE_279C0F:        LDA $0210                 
CODE_279C12:        CLC                       
CODE_279C13:        ADC $AFE7,y               
CODE_279C16:        ROL $00                   
CODE_279C18:        CMP $5F,x                 
CODE_279C1A:        PHP                       
CODE_279C1B:        LDA $12                   
CODE_279C1D:        LSR $00                   
CODE_279C1F:        ADC $AFED,y               
CODE_279C22:        PLP                       
CODE_279C23:        SBC $44,x                 
CODE_279C25:        STA $00                   
CODE_279C27:        LDY $01                   
CODE_279C29:        BEQ CODE_279C2F           
CODE_279C2B:        EOR #$80                  
CODE_279C2D:        STA $00                   
CODE_279C2F:        LDA $00                   
CODE_279C31:        BPL CODE_279C64           
CODE_279C33:        LDA $0671,x               
CODE_279C36:        CMP #$58                  
CODE_279C38:        BEQ CODE_279C4A           
CODE_279C3A:        CMP #$4F                  
CODE_279C3C:        BEQ CODE_279C4A           
CODE_279C3E:        CMP #$6A                  
CODE_279C40:        BEQ CODE_279C4A           
CODE_279C42:        CMP #$61                  
CODE_279C44:        BEQ CODE_279C4A           
CODE_279C46:        CMP #$59                  
CODE_279C48:        BNE CODE_279C52           
CODE_279C4A:        LDY $0771,x               
CODE_279C4D:        LDA #$00                  
CODE_279C4F:        STA $06B4,y               
CODE_279C52:        LDY $0659,x               
CODE_279C55:        BMI CODE_279C5F           
CODE_279C57:        LDA $1B10,y               
CODE_279C5A:        AND #$7F                  
CODE_279C5C:        STA $1B10,y               
CODE_279C5F:        LDA #$00                  
CODE_279C61:        STA $0661,x               
CODE_279C64:        RTS                       

CODE_279C65:        LDA $15                   
CODE_279C67:        LSR A                     
CODE_279C68:        BCS CODE_279C64                   
CODE_279C6A:        AND #$01                  
CODE_279C6C:        STA $01                   
CODE_279C6E:        TAY                       
CODE_279C6F:        LDA $0543                 
CODE_279C72:        CLC                       
CODE_279C73:        ADC $AFE3,y               
CODE_279C76:        ROL $00                   
CODE_279C78:        CMP $71,x                 
CODE_279C7A:        PHP                       
CODE_279C7B:        LDA $0542                 
CODE_279C7E:        LSR $00                   
CODE_279C80:        ADC $AFE5,y               
CODE_279C83:        PLP                       
CODE_279C84:        SBC $56,x                 
CODE_279C86:        STA $00                   
CODE_279C88:        LDY $01                   
CODE_279C8A:        BEQ CODE_279C90           
CODE_279C8C:        EOR #$80                  
CODE_279C8E:        STA $00                   
CODE_279C90:        LDA $00                   
CODE_279C92:        BPL CODE_279C64           
CODE_279C94:        BMI CODE_279C33           
CODE_279C96:        STZ $0691,x               
CODE_279C99:        LDA $0671,x               
CODE_279C9C:        CMP #$7F                  
CODE_279C9E:        BEQ CODE_279CA4           
CODE_279CA0:        CMP #$7D                  
CODE_279CA2:        BNE CODE_279CA9           
CODE_279CA4:        LDA $71,x                 
CODE_279CA6:        STA $0691,x               
CODE_279CA9:        LDA #$00                  
CODE_279CAB:        STA $0689,x               
CODE_279CAE:        STA $7A,x                 
CODE_279CB0:        STA $0518,x               
CODE_279CB3:        STA $0520,x               
CODE_279CB6:        STA $8C,x                 
CODE_279CB8:        STA $9E,x                 
CODE_279CBA:        STA $0679,x               
CODE_279CBD:        STA $0669,x               
CODE_279CC0:        STA $0769,x               
CODE_279CC3:        STA $A7,x                 
CODE_279CC5:        CPX #$06                  
CODE_279CC7:        BCS CODE_279CD5                   
CODE_279CC9:        STA $1A49,x               
CODE_279CCC:        STA $1A4F,x               
CODE_279CCF:        STA $06EB,x               
CODE_279CD2:        STA $06B7,x               
CODE_279CD5:        CPX #$05                  
CODE_279CD7:        BCS CODE_279D13                   
CODE_279CD9:        STA $0797,x               
CODE_279CDC:        STA $06AB,x               
CODE_279CDF:        STA $06A6,x               
CODE_279CE2:        STA $07B6,x               
CODE_279CE5:        STA $1021,x               
CODE_279CE8:        STA $68,x                 
CODE_279CEA:        STA $4D,x                 
CODE_279CEC:        STA $1FD2,x               
CODE_279CEF:        STA $0771,x               
CODE_279CF2:        STA $0776,x               
CODE_279CF5:        STA $077B,x               
CODE_279CF8:        STA $1FF9,x               
CODE_279CFB:        STA $1FF1,x               
CODE_279CFE:        STA $1CF6,x               
CODE_279D01:        STA $1A49,x               
CODE_279D04:        STA $1CC8,x               
CODE_279D07:        STA $1CCD,x               
CODE_279D0A:        STA $1CD2,x               
CODE_279D0D:        STA $1CD7,x               
CODE_279D10:        STA $1CDC,x               
CODE_279D13:        RTL                       

CODE_279D14:        LDA $9C                   
CODE_279D16:        BEQ CODE_279D3F           
CODE_279D18:        LDA $0671,x               
CODE_279D1B:        CMP #$2E                  
CODE_279D1D:        BNE CODE_279D23           
CODE_279D1F:        LDA $68,x                 
CODE_279D21:        BEQ CODE_279D2B           
CODE_279D23:        CMP #$2F                  
CODE_279D25:        BEQ CODE_279D2B           
CODE_279D27:        JSL CODE_279D6E           
CODE_279D2B:        LDY $0671,x               
CODE_279D2E:        LDA $B1AF,y               
CODE_279D31:        AND #$0F                  
CODE_279D33:        CMP #$05                  
CODE_279D35:        BEQ CODE_279D3F           
CODE_279D37:        LDA $0661,x               
CODE_279D3A:        CMP #$02                  
CODE_279D3C:        BEQ CODE_279D3F           
CODE_279D3E:        RTS                       

CODE_279D3F:        JSL CODE_279D44           
CODE_279D43:        RTS                       

CODE_279D44:        PHX                       ;Sprite MAIN Routines
CODE_279D45:        REP #$30                  
CODE_279D47:        LDA $0671,x               
CODE_279D4A:        AND #$00FF                
CODE_279D4D:        STA $00                   
CODE_279D4F:        ASL A                     
CODE_279D50:        CLC                       
CODE_279D51:        ADC $00                   
CODE_279D53:        TAX                       
CODE_279D54:        SEP #$20                  
CODE_279D56:        LDA.l PNTR_28821C,x             
CODE_279D5A:        STA $00                   
CODE_279D5C:        LDA.l PNTR_28821C+1,x             
CODE_279D60:        STA $01                   
CODE_279D62:        LDA.l PNTR_28821C+2,x             
CODE_279D66:        STA $02                   
CODE_279D68:        SEP #$10                  
CODE_279D6A:        PLX                       
CODE_279D6B:        JML [$0000]               


CODE_279D6E:        PHX                       
CODE_279D6F:        LDY $0671,x               
CODE_279D72:        LDA $B1AF,y               
CODE_279D75:        AND #$0F                  
CODE_279D77:        STA $00                   
CODE_279D79:        ASL A                     
CODE_279D7A:        CLC                       
CODE_279D7B:        ADC $00                   
CODE_279D7D:        TAX                       
CODE_279D7E:        LDA.l PNTR_279D94,x             
CODE_279D82:        STA $00                   
CODE_279D84:        LDA.l PNTR_279D94+1,x             
CODE_279D88:        STA $01                   
CODE_279D8A:        LDA.l PNTR_279D94+2,x             
CODE_279D8E:        STA $02                   
CODE_279D90:        PLX                       
CODE_279D91:        JML [$0000]               

PNTR_279D94:        dl CODE_28B625
            dl CODE_279EBB
            dl CODE_279F51
            dl CODE_28BB64
            dl CODE_279B7C
            dl CODE_279DC1
            dl CODE_279F6B
            dl CODE_279B7C
            dl CODE_28BFD9
            dl CODE_279B7C
            dl CODE_279EDD
            dl CODE_28CE71
            dl CODE_279B7C
            dl CODE_28B3A6
            dl CODE_28BD52           

CODE_279DC1:        RTL                       

CODE_279DC2:        LDA $71,x                 
CODE_279DC4:        SEC                       
CODE_279DC5:        SBC $0543                 
CODE_279DC8:        STA $83,x                 
CODE_279DCA:        LDA $5F,x                 
CODE_279DCC:        SEC                       
CODE_279DCD:        SBC $0210                 
CODE_279DD0:        STA $7A,x                 
CODE_279DD2:        RTL                       

CODE_279DD3:        LDA $A7,x                 
CODE_279DD5:        AND #$04                  
CODE_279DD7:        BNE CODE_279DF7           
CODE_279DD9:        LDA $05FC                 
CODE_279DDC:        BEQ CODE_279DF7           
CODE_279DDE:        LDA $0424                 
CODE_279DE1:        CMP #$01                  
CODE_279DE3:        BEQ CODE_279DF7           
CODE_279DE5:        LDY #$00                  
CODE_279DE7:        LDA $0780                 
CODE_279DEA:        BPL CODE_279DED           
CODE_279DEC:        DEY                       
CODE_279DED:        CLC                       
CODE_279DEE:        ADC $71,x                 
CODE_279DF0:        STA $71,x                 
CODE_279DF2:        TYA                       
CODE_279DF3:        ADC $56,x                 
CODE_279DF5:        STA $56,x                 
CODE_279DF7:        RTL                       

CODE_279DF8:        LDA $71,x                 
CODE_279DFA:        SEC                       
CODE_279DFB:        SBC $0543                 
CODE_279DFE:        STA $83,x                 
CODE_279E00:        STA $00                   
CODE_279E02:        SEC                       
CODE_279E03:        LDA $06AB,x               
CODE_279E06:        BEQ CODE_279E0F           
CODE_279E08:        CMP #$40                  
CODE_279E0A:        BCC CODE_279E0E           
CODE_279E0C:        LSR A                     
CODE_279E0D:        LSR A                     
CODE_279E0E:        LSR A                     
CODE_279E0F:        LDA $5F,x                 
CODE_279E11:        SBC $0210                 
CODE_279E14:        STA $7A,x                 
CODE_279E16:        STA $01                   
CODE_279E18:        LDA $0679,x               
CODE_279E1B:        STA $02                   
CODE_279E1D:        AND #$30                  
CODE_279E1F:        CMP #$10                  
CODE_279E21:        BEQ CODE_279E27           
CODE_279E23:        LDA #$20                  
CODE_279E25:        TSB $02                   
CODE_279E27:        LDY $0671,x               
CODE_279E2A:        LDA $B3CB,y               
CODE_279E2D:        AND #$01                  
CODE_279E2F:        TSB $02                   
CODE_279E31:        LDY $0418                 
CODE_279E34:        LDA $0769,x               
CODE_279E37:        BEQ CODE_279E57           
CODE_279E39:        DEC $0769,x               
CODE_279E3C:        LDA $0671,x               
CODE_279E3F:        CMP #$19                  
CODE_279E41:        BEQ CODE_279E57           
CODE_279E43:        CMP #$4B                  
CODE_279E45:        BEQ CODE_279E51           
CODE_279E47:        CMP #$4C                  
CODE_279E49:        BEQ CODE_279E51           
CODE_279E4B:        JSL CODE_27AA8D           
CODE_279E4F:        BRA CODE_279E55           

CODE_279E51:        JSL CODE_27AA74           
CODE_279E55:        BPL CODE_279E5A           
CODE_279E57:        LDA $1FE9,x               
CODE_279E5A:        ASL A                     
CODE_279E5B:        STA $03                   
CODE_279E5D:        LDA $0671,x               
CODE_279E60:        CMP #$55                  
CODE_279E62:        BNE CODE_279E66           
CODE_279E64:        INC $03                   
CODE_279E66:        LDA $0681,x               
CODE_279E69:        STA $04                   
CODE_279E6B:        LDA $0651,x               
CODE_279E6E:        STA $07                   
CODE_279E70:        LDA $0669,x               
CODE_279E73:        ASL A                     
CODE_279E74:        STA $05                   
CODE_279E76:        LDA $DE                   
CODE_279E78:        ASL A                     
CODE_279E79:        CLC                       
CODE_279E7A:        ADC $DE                   
CODE_279E7C:        TAX                       
CODE_279E7D:        LDA $21B47F,x             
CODE_279E81:        STA $D8                   
CODE_279E83:        LDA $21B480,x             
CODE_279E87:        STA $D9                   
CODE_279E89:        LDA $21B481,x             
CODE_279E8D:        STA $DA                   
CODE_279E8F:        LDA [$D8],y               
CODE_279E91:        CLC                       
CODE_279E92:        ADC $05                   
CODE_279E94:        STA $05                   
CODE_279E96:        TAX                       
CODE_279E97:        LDY $9B                   
CODE_279E99:        LDA $00C6,y               
CODE_279E9C:        STA $06                   
CODE_279E9E:        TAY                       
CODE_279E9F:        RTL                       

CODE_279EA0:        JSL CODE_279DF8           
CODE_279EA4:        JSL CODE_279F90           
CODE_279EA8:        LDX $9B                   
CODE_279EAA:        LDA $0671,x               
CODE_279EAD:        CMP #$2F                  
CODE_279EAF:        BNE CODE_279EBA           
CODE_279EB1:        LDA $0661,x               
CODE_279EB4:        CMP #$06                  
CODE_279EB6:        JSL CODE_29A412           
CODE_279EBA:        RTS                       

CODE_279EBB:        JSR CODE_279EA0           
CODE_279EBE:        RTL                       

CODE_279EBF:        JSR CODE_279EA0           
CODE_279EC2:        REP #$10                  
CODE_279EC4:        LDY $00C6,x               
CODE_279EC7:        LDA $0803,y               
CODE_279ECA:        AND #$BF                  
CODE_279ECC:        STA $0803,y               
CODE_279ECF:        STA $080B,y               
CODE_279ED2:        ORA #$40                  
CODE_279ED4:        STA $0807,y               
CODE_279ED7:        STA $080F,y               
CODE_279EDA:        SEP #$10                  
CODE_279EDC:        RTS                       

CODE_279EDD:        JSR CODE_279EBF           
CODE_279EE0:        RTL                       

CODE_279EE1:        JSR CODE_279F11           
CODE_279EE4:        REP #$10                  
CODE_279EE6:        LDY $C6,x                 
CODE_279EE8:        LDA $07F3,y               
CODE_279EEB:        AND #$BF                  
CODE_279EED:        STA $07F3,y               
CODE_279EF0:        STA $07FB,y               
CODE_279EF3:        ORA #$40                  
CODE_279EF5:        STA $07F7,y               
CODE_279EF8:        STA $07FF,y               
CODE_279EFB:        LDA $0803,y               
CODE_279EFE:        AND #$BF                  
CODE_279F00:        STA $0803,y               
CODE_279F03:        STA $080B,y               
CODE_279F06:        ORA #$40                  
CODE_279F08:        STA $0807,y               
CODE_279F0B:        STA $080F,y               
CODE_279F0E:        SEP #$10                  
CODE_279F10:        RTL                       

CODE_279F11:        JSL CODE_279DF8           
CODE_279F15:        LDX $9B                   
CODE_279F17:        LDA $0669,x               
CODE_279F1A:        ASL A                     
CODE_279F1B:        CLC                       
CODE_279F1C:        ADC $05                   
CODE_279F1E:        STA $05                   
CODE_279F20:        TAX                       
CODE_279F21:        LDA $02                   
CODE_279F23:        BPL CODE_279F27           
CODE_279F25:        INX                       
CODE_279F26:        INX                       
CODE_279F27:        JSL CODE_279F90           
CODE_279F2B:        REP #$20                  
CODE_279F2D:        LDX $9B                   
CODE_279F2F:        LDA $C6,x                 
CODE_279F31:        CLC                       
CODE_279F32:        ADC #$0010                
CODE_279F35:        STA $C6,x                 
CODE_279F37:        SEP #$20                  
CODE_279F39:        LSR $04                   
CODE_279F3B:        LDX $05                   
CODE_279F3D:        LDA $02                   
CODE_279F3F:        BMI CODE_279F43           
CODE_279F41:        INX                       
CODE_279F42:        INX                       
CODE_279F43:        LDA #$10                  
CODE_279F45:        CLC                       
CODE_279F46:        ADC $00                   
CODE_279F48:        STA $00                   
CODE_279F4A:        JSL CODE_279F90           
CODE_279F4E:        LDX $9B                   
CODE_279F50:        RTS                       

CODE_279F51:        JSR CODE_279F11           
CODE_279F54:        RTL                       

CODE_279F55:        JSL CODE_279DF8           
CODE_279F59:        LDX $9B                   
CODE_279F5B:        LDA $0669,x               
CODE_279F5E:        CLC                       
CODE_279F5F:        ADC $05                   
CODE_279F61:        STA $05                   
CODE_279F63:        TAX                       
CODE_279F64:        JSL CODE_27A079           
CODE_279F68:        LDX $9B                   
CODE_279F6A:        RTS                       

CODE_279F6B:        JSR CODE_279F55           
CODE_279F6E:        RTL                       

CODE_279F6F:        LDA $8C,x                 
CODE_279F71:        BNE CODE_279F74           
CODE_279F73:        RTL                       

CODE_279F74:        BPL CODE_279F7A           
CODE_279F76:        JSL CODE_27A859           
CODE_279F7A:        AND #$F0                  
CODE_279F7C:        LSR A                     
CODE_279F7D:        LSR A                     
CODE_279F7E:        LSR A                     
CODE_279F7F:        LSR A                     
CODE_279F80:        TAY                       
CODE_279F81:        LDA $AFF7,y               
CODE_279F84:        LDY #$00                  
CODE_279F86:        AND $15                   
CODE_279F88:        BEQ CODE_279F8B           
CODE_279F8A:        INY                       
CODE_279F8B:        TYA                       
CODE_279F8C:        STA $0669,x               
CODE_279F8F:        RTL                       

CODE_279F90:        LDY $9B                   
CODE_279F92:        REP #$30                  
CODE_279F94:        LDA $00C6,y               
CODE_279F97:        TAY                       
CODE_279F98:        SEP #$20                  
CODE_279F9A:        LDA $04                   
CODE_279F9C:        LSR A                     
CODE_279F9D:        BCC CODE_279FA2           
CODE_279F9F:        BRL CODE_27A076           

CODE_279FA2:        LDA $00                   
CODE_279FA4:        STA $0801,y               
CODE_279FA7:        STA $0805,y               
CODE_279FAA:        CLC                       
CODE_279FAB:        ADC #$08                  
CODE_279FAD:        STA $0809,y               
CODE_279FB0:        STA $080D,y               
CODE_279FB3:        LDA $01                   
CODE_279FB5:        STA $0800,y               
CODE_279FB8:        STA $0808,y               
CODE_279FBB:        CLC                       
CODE_279FBC:        ADC #$08                  
CODE_279FBE:        STA $0804,y               
CODE_279FC1:        STA $080C,y               
CODE_279FC4:        PHY                       
CODE_279FC5:        PHX                       
CODE_279FC6:        TXY                       
CODE_279FC7:        REP #$20                  
CODE_279FC9:        LDA $DE                   
CODE_279FCB:        AND #$00FF                
CODE_279FCE:        STA $D8                   
CODE_279FD0:        ASL A                     
CODE_279FD1:        CLC                       
CODE_279FD2:        ADC $D8                   
CODE_279FD4:        TAX                       
CODE_279FD5:        SEP #$20                  
CODE_279FD7:        LDA $B48E,x               
CODE_279FDA:        STA $D8                   
CODE_279FDC:        LDA $B48F,x               
CODE_279FDF:        STA $D9                   
CODE_279FE1:        LDA $B490,x               
CODE_279FE4:        STA $DA                   
CODE_279FE6:        LDA [$D8],y               
CODE_279FE8:        PHA                       
CODE_279FE9:        INY                       
CODE_279FEA:        LDA [$D8],y               
CODE_279FEC:        STA $D9                   
CODE_279FEE:        PLA                       
CODE_279FEF:        STA $D8                   
CODE_279FF1:        PLX                       
CODE_279FF2:        PLY                       
CODE_279FF3:        LDA $D8                   
CODE_279FF5:        STA $0802,y               
CODE_279FF8:        INC A                     
CODE_279FF9:        STA $080A,y               
CODE_279FFC:        LDA $D9                   
CODE_279FFE:        STA $0806,y               
CODE_27A001:        INC A                     
CODE_27A002:        STA $080E,y               
CODE_27A005:        LDA $02                   
CODE_27A007:        ORA $03                   
CODE_27A009:        STA $0803,y               
CODE_27A00C:        STA $080B,y               
CODE_27A00F:        STA $0807,y               
CODE_27A012:        STA $080F,y               
CODE_27A015:        BIT $02                   
CODE_27A017:        BVC CODE_27A035                   
CODE_27A019:        LDA $0802,y               
CODE_27A01C:        PHA                       
CODE_27A01D:        LDA $0806,y               
CODE_27A020:        STA $0802,y               
CODE_27A023:        PLA                       
CODE_27A024:        STA $0806,y               
CODE_27A027:        LDA $080A,y               
CODE_27A02A:        PHA                       
CODE_27A02B:        LDA $080E,y               
CODE_27A02E:        STA $080A,y               
CODE_27A031:        PLA                       
CODE_27A032:        STA $080E,y               
CODE_27A035:        BIT $02                   
CODE_27A037:        BPL CODE_27A055           
CODE_27A039:        LDA $0802,y               
CODE_27A03C:        PHA                       
CODE_27A03D:        LDA $080A,y               
CODE_27A040:        STA $0802,y               
CODE_27A043:        PLA                       
CODE_27A044:        STA $080A,y               
CODE_27A047:        LDA $0806,y               
CODE_27A04A:        PHA                       
CODE_27A04B:        LDA $080E,y               
CODE_27A04E:        STA $0806,y               
CODE_27A051:        PLA                       
CODE_27A052:        STA $080E,y               
CODE_27A055:        REP #$20                  
CODE_27A057:        PHY                       
CODE_27A058:        TYA                       
CODE_27A059:        LSR A                     
CODE_27A05A:        LSR A                     
CODE_27A05B:        TAY                       
CODE_27A05C:        SEP #$20                  
CODE_27A05E:        LDA $07                   
CODE_27A060:        ROL A                     
CODE_27A061:        ROL A                     
CODE_27A062:        PHP                       
CODE_27A063:        AND #$01                  
CODE_27A065:        STA $0A20,y               
CODE_27A068:        STA $0A22,y               
CODE_27A06B:        PLP                       
CODE_27A06C:        ROL A                     
CODE_27A06D:        AND #$01                  
CODE_27A06F:        STA $0A21,y               
CODE_27A072:        STA $0A23,y               
CODE_27A075:        PLY                       
CODE_27A076:        SEP #$30                  
CODE_27A078:        RTL                       

CODE_27A079:        LDY $9B                   
CODE_27A07B:        REP #$30                  
CODE_27A07D:        LDA $00C6,y               
CODE_27A080:        TAY                       
CODE_27A081:        SEP #$20                  
CODE_27A083:        LDA $04                   
CODE_27A085:        LSR A                     
CODE_27A086:        BCS CODE_27A076                   
CODE_27A088:        LDA $00                   
CODE_27A08A:        STA $0801,y               
CODE_27A08D:        STA $0805,y               
CODE_27A090:        STA $0809,y               
CODE_27A093:        CLC                       
CODE_27A094:        ADC #$08                  
CODE_27A096:        STA $080D,y               
CODE_27A099:        STA $0811,y               
CODE_27A09C:        STA $0815,y               
CODE_27A09F:        LDA $01                   
CODE_27A0A1:        STA $0800,y               
CODE_27A0A4:        STA $080C,y               
CODE_27A0A7:        CLC                       
CODE_27A0A8:        ADC #$08                  
CODE_27A0AA:        STA $0804,y               
CODE_27A0AD:        STA $0810,y               
CODE_27A0B0:        CLC                       
CODE_27A0B1:        ADC #$08                  
CODE_27A0B3:        STA $0808,y               
CODE_27A0B6:        STA $0814,y               
CODE_27A0B9:        PHY                       
CODE_27A0BA:        PHX                       
CODE_27A0BB:        TXY                       
CODE_27A0BC:        REP #$20                  
CODE_27A0BE:        LDA $DE                   
CODE_27A0C0:        AND #$00FF                
CODE_27A0C3:        STA $D8                   
CODE_27A0C5:        ASL A                     
CODE_27A0C6:        CLC                       
CODE_27A0C7:        ADC $D8                   
CODE_27A0C9:        TAX                       
CODE_27A0CA:        SEP #$20                  
CODE_27A0CC:        LDA $B48E,x               
CODE_27A0CF:        STA $D8                   
CODE_27A0D1:        LDA $B48F,x               
CODE_27A0D4:        STA $D9                   
CODE_27A0D6:        LDA $B490,x               
CODE_27A0D9:        STA $DA                   
CODE_27A0DB:        LDA [$D8],y               
CODE_27A0DD:        STA $DB                   
CODE_27A0DF:        INY                       
CODE_27A0E0:        LDA [$D8],y               
CODE_27A0E2:        STA $DC                   
CODE_27A0E4:        INY                       
CODE_27A0E5:        LDA [$D8],y               
CODE_27A0E7:        STA $DD                   
CODE_27A0E9:        PLX                       
CODE_27A0EA:        PLY                       
CODE_27A0EB:        LDA $DB                   
CODE_27A0ED:        STA $0802,y               
CODE_27A0F0:        INC A                     
CODE_27A0F1:        STA $080E,y               
CODE_27A0F4:        LDA $DC                   
CODE_27A0F6:        STA $0806,y               
CODE_27A0F9:        INC A                     
CODE_27A0FA:        STA $0812,y               
CODE_27A0FD:        LDA $DD                   
CODE_27A0FF:        STA $080A,y               
CODE_27A102:        INC A                     
CODE_27A103:        STA $0816,y               
CODE_27A106:        LDA $02                   
CODE_27A108:        ORA $03                   
CODE_27A10A:        STA $0803,y               
CODE_27A10D:        STA $080F,y               
CODE_27A110:        STA $0807,y               
CODE_27A113:        STA $0813,y               
CODE_27A116:        STA $080B,y               
CODE_27A119:        STA $0817,y               
CODE_27A11C:        BIT $02                   
CODE_27A11E:        BPL CODE_27A14A           
CODE_27A120:        LDA $0802,y               
CODE_27A123:        PHA                       
CODE_27A124:        LDA $080E,y               
CODE_27A127:        STA $0802,y               
CODE_27A12A:        PLA                       
CODE_27A12B:        STA $080E,y               
CODE_27A12E:        LDA $0806,y               
CODE_27A131:        PHA                       
CODE_27A132:        LDA $0812,y               
CODE_27A135:        STA $0806,y               
CODE_27A138:        PLA                       
CODE_27A139:        STA $0812,y               
CODE_27A13C:        LDA $080A,y               
CODE_27A13F:        PHA                       
CODE_27A140:        LDA $0816,y               
CODE_27A143:        STA $080A,y               
CODE_27A146:        PLA                       
CODE_27A147:        STA $0816,y               
CODE_27A14A:        BIT $02                   
CODE_27A14C:        BVC CODE_27A16A                   
CODE_27A14E:        LDA $0802,y               
CODE_27A151:        PHA                       
CODE_27A152:        LDA $080A,y               
CODE_27A155:        STA $0802,y               
CODE_27A158:        PLA                       
CODE_27A159:        STA $080A,y               
CODE_27A15C:        LDA $080E,y               
CODE_27A15F:        PHA                       
CODE_27A160:        LDA $0816,y               
CODE_27A163:        STA $080E,y               
CODE_27A166:        PLA                       
CODE_27A167:        STA $0816,y               
CODE_27A16A:        REP #$20                  
CODE_27A16C:        PHY                       
CODE_27A16D:        TYA                       
CODE_27A16E:        LSR A                     
CODE_27A16F:        LSR A                     
CODE_27A170:        TAY                       
CODE_27A171:        SEP #$20                  
CODE_27A173:        LDA $07                   
CODE_27A175:        ROL A                     
CODE_27A176:        ROL A                     
CODE_27A177:        STA $09                   
CODE_27A179:        PHP                       
CODE_27A17A:        AND #$01                  
CODE_27A17C:        STA $0A20,y               
CODE_27A17F:        STA $0A23,y               
CODE_27A182:        LDA $09                   
CODE_27A184:        PLP                       
CODE_27A185:        ROL A                     
CODE_27A186:        PHP                       
CODE_27A187:        AND #$01                  
CODE_27A189:        STA $0A21,y               
CODE_27A18C:        STA $0A24,y               
CODE_27A18F:        PLP                       
CODE_27A190:        ROL A                     
CODE_27A191:        AND #$01                  
CODE_27A193:        STA $0A22,y               
CODE_27A196:        STA $0A25,y               
CODE_27A199:        PLY                       
CODE_27A19A:        SEP #$30                  
CODE_27A19C:        RTL                       

CODE_27A19D:        PHX                       
CODE_27A19E:        LDY #$07                  
CODE_27A1A0:        STY $06                   
CODE_27A1A2:        LDX $9B                   
CODE_27A1A4:        LDA $0783,x               
CODE_27A1A7:        AND #$07                  
CODE_27A1A9:        CLC                       
CODE_27A1AA:        ADC $06                   
CODE_27A1AC:        TAY                       
CODE_27A1AD:        LDA $AFFB,y               
CODE_27A1B0:        TAY                       
CODE_27A1B1:        STY $08                   
CODE_27A1B3:        LDA $0661,y               
CODE_27A1B6:        BEQ CODE_27A1D1           
CODE_27A1B8:        LDY $06                   
CODE_27A1BA:        DEY                       
CODE_27A1BB:        BPL CODE_27A1A0           
CODE_27A1BD:        JSR CODE_27A202           
CODE_27A1C0:        BCS CODE_27A1F1                   
CODE_27A1C2:        LDX #$20                  
CODE_27A1C4:        LDA $0783                 
CODE_27A1C7:        BPL CODE_27A1CB           
CODE_27A1C9:        LDX #$30                  
CODE_27A1CB:        STX $D8                   
CODE_27A1CD:        STZ $D9                   
CODE_27A1CF:        BRA CODE_27A1F1           

CODE_27A1D1:        TYA                       
CODE_27A1D2:        CLC                       
CODE_27A1D3:        ADC $055D                 
CODE_27A1D6:        ASL A                     
CODE_27A1D7:        TAY                       
CODE_27A1D8:        REP #$20                  
CODE_27A1DA:        LDA $AF6E,y               
CODE_27A1DD:        STA $D8                   
CODE_27A1DF:        SEP #$20                  
CODE_27A1E1:        REP #$10                  
CODE_27A1E3:        LDX $D8                   
CODE_27A1E5:        LDA $0801,x               
CODE_27A1E8:        CMP #$F0                  
CODE_27A1EA:        BEQ CODE_27A1F1           
CODE_27A1EC:        SEP #$10                  
CODE_27A1EE:        BRL CODE_27A1B8           

CODE_27A1F1:        SEP #$10                  
CODE_27A1F3:        LDX $D8                   
CODE_27A1F5:        STX $06                   
CODE_27A1F7:        TXY                       
CODE_27A1F8:        PLX                       
CODE_27A1F9:        LDA $D8                   
CODE_27A1FB:        STA $C6,x                 
CODE_27A1FD:        LDA $D9                   
CODE_27A1FF:        STA $C7,x                 
CODE_27A201:        RTL                       

CODE_27A202:        PHX                       
CODE_27A203:        REP #$30                  
CODE_27A205:        LDY #$000E                
CODE_27A208:        LDA $AF6E,y               
CODE_27A20B:        STA $D8                   
CODE_27A20D:        TAX                       
CODE_27A20E:        LDA $0801,x               
CODE_27A211:        AND #$00FF                
CODE_27A214:        CMP #$00F0                
CODE_27A217:        BEQ CODE_27A222           
CODE_27A219:        DEY                       
CODE_27A21A:        DEY                       
CODE_27A21B:        BPL CODE_27A208           
CODE_27A21D:        SEP #$30                  
CODE_27A21F:        PLX                       
CODE_27A220:        CLC                       
CODE_27A221:        RTS                       

CODE_27A222:        SEP #$30                  
CODE_27A224:        PLX                       
CODE_27A225:        SEC                       
CODE_27A226:        RTS                       

CODE_27A227:        PHX                       
CODE_27A228:        LDA $C6,x                 
CODE_27A22A:        STA $DA                   
CODE_27A22C:        LDA $C7,x                 
CODE_27A22E:        STA $DB                   
CODE_27A230:        LDY #$07                  
CODE_27A232:        STY $06                   
CODE_27A234:        LDA $0661,y               
CODE_27A237:        BNE CODE_27A257           
CODE_27A239:        TYA                       
CODE_27A23A:        CLC                       
CODE_27A23B:        ADC $055D                 
CODE_27A23E:        ASL A                     
CODE_27A23F:        TAY                       
CODE_27A240:        REP #$30                  
CODE_27A242:        LDA $AF6E,y               
CODE_27A245:        CMP $DA                   
CODE_27A247:        BEQ CODE_27A257           
CODE_27A249:        STA $D8                   
CODE_27A24B:        TAY                       
CODE_27A24C:        LDA $0801,y               
CODE_27A24F:        AND #$00FF                
CODE_27A252:        CMP #$00F0                
CODE_27A255:        BEQ CODE_27A26B           
CODE_27A257:        SEP #$30                  
CODE_27A259:        LDY $06                   
CODE_27A25B:        DEY                       
CODE_27A25C:        BPL CODE_27A232           
CODE_27A25E:        LDX #$20                  
CODE_27A260:        LDA $0783                 
CODE_27A263:        BPL CODE_27A267           
CODE_27A265:        LDX #$30                  
CODE_27A267:        STX $D8                   
CODE_27A269:        STZ $D9                   
CODE_27A26B:        SEP #$30                  
CODE_27A26D:        LDX $D8                   
CODE_27A26F:        STX $06                   
CODE_27A271:        TXY                       
CODE_27A272:        PLX                       
CODE_27A273:        LDA $D8                   
CODE_27A275:        STA $C6,x                 
CODE_27A277:        LDA $D9                   
CODE_27A279:        STA $C7,x                 
CODE_27A27B:        RTL                       

CODE_27A27C:        LDY $0671,x               
CODE_27A27F:        LDA $B047,y               
CODE_27A282:        AND #$70                  
CODE_27A284:        LSR A                     
CODE_27A285:        LSR A                     
CODE_27A286:        LSR A                     
CODE_27A287:        LSR A                     
CODE_27A288:        TAY                       
CODE_27A289:        LDA $0661,x               
CODE_27A28C:        CMP #$02                  
CODE_27A28E:        BPL CODE_27A296           
CODE_27A290:        LDA #$FC                  
CODE_27A292:        STA $0651,x               
CODE_27A295:        RTL                       

CODE_27A296:        LDA #$00                  
CODE_27A298:        STA $0651,x               
CODE_27A29B:        LDA $5F,x                 
CODE_27A29D:        STA $0E                   
CODE_27A29F:        LDA $44,x                 
CODE_27A2A1:        STA $0F                   
CODE_27A2A3:        REP #$20                  
CODE_27A2A5:        LDA $B00A,y               
CODE_27A2A8:        AND #$00FF                
CODE_27A2AB:        CLC                       
CODE_27A2AC:        ADC $0E                   
CODE_27A2AE:        SEC                       
CODE_27A2AF:        SBC $0210                 
CODE_27A2B2:        CMP #$0100                
CODE_27A2B5:        BCC CODE_27A2C2           
CODE_27A2B7:        SEP #$20                  
CODE_27A2B9:        LDA $0651,x               
CODE_27A2BC:        ORA $B010,y               
CODE_27A2BF:        STA $0651,x               
CODE_27A2C2:        SEP #$20                  
CODE_27A2C4:        DEY                       
CODE_27A2C5:        BPL CODE_27A29B           
CODE_27A2C7:        RTL                       

CODE_27A2C8:        LDY $0671,x               
CODE_27A2CB:        LDA $B047,y               
CODE_27A2CE:        AND #$0C                  
CODE_27A2D0:        LSR A                     
CODE_27A2D1:        LSR A                     
CODE_27A2D2:        TAY                       
CODE_27A2D3:        LDA #$01                  
CODE_27A2D5:        STA $02                   
CODE_27A2D7:        LDA #$00                  
CODE_27A2D9:        STA $0681,x               
CODE_27A2DC:        LDA $56,x                 
CODE_27A2DE:        STA $00                   
CODE_27A2E0:        LDA $71,x                 
CODE_27A2E2:        STA $01                   
CODE_27A2E4:        LDA $01                   
CODE_27A2E6:        CLC                       
CODE_27A2E7:        ADC #$10                  
CODE_27A2E9:        STA $01                   
CODE_27A2EB:        BCC CODE_27A2EF           
CODE_27A2ED:        INC $00                   
CODE_27A2EF:        LDA $01                   
CODE_27A2F1:        SEC                       
CODE_27A2F2:        SBC $0543                 
CODE_27A2F5:        STA $03                   
CODE_27A2F7:        LDA $00                   
CODE_27A2F9:        SBC $0542                 
CODE_27A2FC:        BNE CODE_27A304           
CODE_27A2FE:        LDA $03                   
CODE_27A300:        CMP #$F0                  
CODE_27A302:        BCC CODE_27A30C           
CODE_27A304:        LDA $02                   
CODE_27A306:        ORA $0681,x               
CODE_27A309:        STA $0681,x               
CODE_27A30C:        ASL $02                   
CODE_27A30E:        DEY                       
CODE_27A30F:        BPL CODE_27A2E4           
CODE_27A311:        RTL                       

CODE_27A312:        JSR CODE_27A31B           
CODE_27A315:        RTL                       

CODE_27A316:        JSR CODE_27A31F           
CODE_27A319:        RTL                       

CODE_27A31A:        RTS                       

CODE_27A31B:        LDA #$01                  
CODE_27A31D:        BRA CODE_27A321           

CODE_27A31F:        LDA #$00                  
CODE_27A321:        STA $0F                   
CODE_27A323:        LDA $0797,x               
CODE_27A326:        AND #$FC                  
CODE_27A328:        STA $0797,x               
CODE_27A32B:        CLC                       
CODE_27A32C:        LDA $BF                   
CODE_27A32E:        ORA $0583                 
CODE_27A331:        ORA $0587                 
CODE_27A334:        BNE CODE_27A31A           
CODE_27A336:        JSL CODE_27A413           
CODE_27A33A:        LDA $BB                   
CODE_27A33C:        BEQ CODE_27A347           
CODE_27A33E:        LDA #$00                  
CODE_27A340:        LDY $056F                 
CODE_27A343:        BNE CODE_27A347           
CODE_27A345:        LDA #$01                  
CODE_27A347:        ASL A                     
CODE_27A348:        ASL A                     
CODE_27A349:        TAY                       
CODE_27A34A:        LDA $79                   
CODE_27A34C:        CLC                       
CODE_27A34D:        ADC $B016,y               
CODE_27A350:        STA $02                   
CODE_27A352:        LDA $82                   
CODE_27A354:        CLC                       
CODE_27A355:        ADC $B018,y               
CODE_27A358:        STA $06                   
CODE_27A35A:        LDA $B017,y               
CODE_27A35D:        STA $03                   
CODE_27A35F:        LDA $B019,y               
CODE_27A362:        STA $07                   
CODE_27A364:        JSL CODE_27A45F           
CODE_27A368:        BCC CODE_27A31A           
CODE_27A36A:        STA $00                   
CODE_27A36C:        LDA $0425                 
CODE_27A36F:        BNE CODE_27A398           
CODE_27A371:        LDA $5E                   
CODE_27A373:        SEC                       
CODE_27A374:        SBC $5F,x                 
CODE_27A376:        STA $0E                   
CODE_27A378:        LDA $43                   
CODE_27A37A:        SBC $44,x                 
CODE_27A37C:        STA $0D                   
CODE_27A37E:        BPL CODE_27A390           
CODE_27A380:        LDA $0E                   
CODE_27A382:        JSL CODE_27A859           
CODE_27A386:        STA $0E                   
CODE_27A388:        LDA $0D                   
CODE_27A38A:        EOR #$FF                  
CODE_27A38C:        ADC #$00                  
CODE_27A38E:        STA $0D                   
CODE_27A390:        LDA $0D                   
CODE_27A392:        BNE CODE_27A407           
CODE_27A394:        LDA $0E                   
CODE_27A396:        BMI CODE_27A407           
CODE_27A398:        LDA $70                   
CODE_27A39A:        SEC                       
CODE_27A39B:        SBC $71,x                 
CODE_27A39D:        STA $0E                   
CODE_27A39F:        LDA $55                   
CODE_27A3A1:        SBC $56,x                 
CODE_27A3A3:        STA $0D                   
CODE_27A3A5:        BPL CODE_27A3B7           
CODE_27A3A7:        LDA $0E                   
CODE_27A3A9:        JSL CODE_27A859           
CODE_27A3AD:        STA $0E                   
CODE_27A3AF:        LDA $0D                   
CODE_27A3B1:        EOR #$FF                  
CODE_27A3B3:        ADC #$00                  
CODE_27A3B5:        STA $0D                   
CODE_27A3B7:        LDA $0D                   
CODE_27A3B9:        BNE CODE_27A407           
CODE_27A3BB:        LDA $0E                   
CODE_27A3BD:        BMI CODE_27A407           
CODE_27A3BF:        LDA $0B                   
CODE_27A3C1:        LSR A                     
CODE_27A3C2:        BCC CODE_27A3D3           
CODE_27A3C4:        LDA $00                   
CODE_27A3C6:        SEC                       
CODE_27A3C7:        SBC $0A                   
CODE_27A3C9:        CMP #$08                  
CODE_27A3CB:        BMI CODE_27A3D3           
CODE_27A3CD:        LDA $0B                   
CODE_27A3CF:        EOR #$01                  
CODE_27A3D1:        STA $0B                   
CODE_27A3D3:        LDA $0B                   
CODE_27A3D5:        ORA $0797,x               
CODE_27A3D8:        STA $0797,x               
CODE_27A3DB:        LDA $0553                 
CODE_27A3DE:        BEQ CODE_27A409           
CODE_27A3E0:        LDY $0671,x               
CODE_27A3E3:        LDA $AE78,y               
CODE_27A3E6:        AND #$80                  
CODE_27A3E8:        BNE CODE_27A409           
CODE_27A3EA:        LDA #$06                  
CODE_27A3EC:        STA $0661,x               
CODE_27A3EF:        LDA #$C8                  
CODE_27A3F1:        STA $9E,x                 
CODE_27A3F3:        LDA #$03                  
CODE_27A3F5:        STA $1200                 
CODE_27A3F8:        LDA #$05                  
CODE_27A3FA:        JSL CODE_278A94           
CODE_27A3FE:        JSL CODE_27A837           
CODE_27A402:        LDA $B01E,y               
CODE_27A405:        STA $8C,x                 
CODE_27A407:        CLC                       
CODE_27A408:        RTS                       

CODE_27A409:        LDA $0F                   
CODE_27A40B:        BNE CODE_27A411           
CODE_27A40D:        JSL CODE_27A49C           
CODE_27A411:        SEC                       
CODE_27A412:        RTS                       

CODE_27A413:        LDY $0671,x               
CODE_27A416:        LDA $AE78,y               
CODE_27A419:        AND #$0F                  
CODE_27A41B:        ASL A                     
CODE_27A41C:        ASL A                     
CODE_27A41D:        TAY                       
CODE_27A41E:        LDA $7A,x                 
CODE_27A420:        CLC                       
CODE_27A421:        ADC $AE38,y               
CODE_27A424:        STA $00                   
CODE_27A426:        LDA $83,x                 
CODE_27A428:        CLC                       
CODE_27A429:        ADC $AE3A,y               
CODE_27A42C:        STA $04                   
CODE_27A42E:        LDA $AE39,y               
CODE_27A431:        STA $01                   
CODE_27A433:        LDA $AE3B,y               
CODE_27A436:        STA $05                   
CODE_27A438:        RTL                       

CODE_27A439:        LDY $0671,x               
CODE_27A43C:        LDA $AE78,y               
CODE_27A43F:        AND #$0F                  
CODE_27A441:        ASL A                     
CODE_27A442:        ASL A                     
CODE_27A443:        TAY                       
CODE_27A444:        LDA $7A,x                 
CODE_27A446:        CLC                       
CODE_27A447:        ADC $AE38,y               
CODE_27A44A:        STA $02                   
CODE_27A44C:        LDA $83,x                 
CODE_27A44E:        CLC                       
CODE_27A44F:        ADC $AE3A,y               
CODE_27A452:        STA $06                   
CODE_27A454:        LDA $AE39,y               
CODE_27A457:        STA $03                   
CODE_27A459:        LDA $AE3B,y               
CODE_27A45C:        STA $07                   
CODE_27A45E:        RTL                       

CODE_27A45F:        LDY #$00                  
CODE_27A461:        STY $0B                   
CODE_27A463:        LDA $02                   
CODE_27A465:        SEC                       
CODE_27A466:        SBC $00                   
CODE_27A468:        STA $0A                   
CODE_27A46A:        ASL A                     
CODE_27A46B:        LDA $01                   
CODE_27A46D:        BCC CODE_27A47B           
CODE_27A46F:        LDA $0A                   
CODE_27A471:        EOR #$FF                  
CODE_27A473:        STA $0A                   
CODE_27A475:        INC $0A                   
CODE_27A477:        INC $0B                   
CODE_27A479:        LDA $03                   
CODE_27A47B:        CMP $0A                   
CODE_27A47D:        BCC CODE_27A49B           
CODE_27A47F:        ASL $0B                   
CODE_27A481:        LDA $06                   
CODE_27A483:        SEC                       
CODE_27A484:        SBC $04                   
CODE_27A486:        STA $0A                   
CODE_27A488:        ASL A                     
CODE_27A489:        LDA $05                   
CODE_27A48B:        BCC CODE_27A499           
CODE_27A48D:        LDA $0A                   
CODE_27A48F:        EOR #$FF                  
CODE_27A491:        STA $0A                   
CODE_27A493:        INC $0A                   
CODE_27A495:        INC $0B                   
CODE_27A497:        LDA $07                   
CODE_27A499:        CMP $0A                   
CODE_27A49B:        RTL                       

CODE_27A49C:        REP #$30                  
CODE_27A49E:        LDA $0671,x               
CODE_27A4A1:        AND #$00FF                
CODE_27A4A4:        STA $00                   
CODE_27A4A6:        ASL A                     
CODE_27A4A7:        CLC                       
CODE_27A4A8:        ADC $00                   
CODE_27A4AA:        TAX                       
CODE_27A4AB:        SEP #$20                  
CODE_27A4AD:        LDA.l PNTR_288438,x             
CODE_27A4B1:        STA $00                   
CODE_27A4B3:        LDA.l PNTR_288438+1,x             
CODE_27A4B7:        STA $01                   
CODE_27A4B9:        LDA.l PNTR_288438+2,x             
CODE_27A4BD:        STA $02                   
CODE_27A4BF:        SEP #$10                  
CODE_27A4C1:        LDX $9B                   
CODE_27A4C3:        JML [$0000]               

CODE_27A4C6:        LDA $0552                 
CODE_27A4C9:        ORA $057A                 
CODE_27A4CC:        ORA $0553                 
CODE_27A4CF:        ORA $0554                 
CODE_27A4D2:        ORA $9C                   
CODE_27A4D4:        ORA $0556                 
CODE_27A4D7:        ORA $1CFF                 
CODE_27A4DA:        BEQ CODE_27A4DF           
CODE_27A4DC:        JMP CODE_27A543           

CODE_27A4DF:        LDA $0577                 
CODE_27A4E2:        BNE CODE_27A4EA           
CODE_27A4E4:        LDA $BB                   
CODE_27A4E6:        CMP #$04                  
CODE_27A4E8:        BMI CODE_27A515           
CODE_27A4EA:        LDA #$0F                  
CODE_27A4EC:        STA $1200                 
CODE_27A4EF:        LDA $0577                 
CODE_27A4F2:        BEQ CODE_27A4F8           
CODE_27A4F4:        LDA #$00                  
CODE_27A4F6:        BRA CODE_27A4FD           

CODE_27A4F8:        LDY $BB                   
CODE_27A4FA:        LDA $B024,y               
CODE_27A4FD:        STA $00                   
CODE_27A4FF:        JSR CODE_27A57F           
CODE_27A502:        LDA $0577                 
CODE_27A505:        BEQ CODE_27A50E           
CODE_27A507:        LDA #$00                  
CODE_27A509:        STA $0577                 
CODE_27A50C:        BRA CODE_27A537           

CODE_27A50E:        LDA #$02                  
CODE_27A510:        STA $0578                 
CODE_27A513:        BRA CODE_27A537           

CODE_27A515:        LDA $BB                   
CODE_27A517:        BEQ CODE_27A544           
CODE_27A519:        LDA #$02                  
CODE_27A51B:        STA $0578                 
CODE_27A51E:        LDA $BB                   
CODE_27A520:        CMP #$04                  
CODE_27A522:        BPL CODE_27A52B           
CODE_27A524:        LDA #$04                  
CODE_27A526:        STA $1200                 
CODE_27A529:        LDA $BB                   
CODE_27A52B:        CMP #$02                  
CODE_27A52D:        BCS CODE_27A537                   
CODE_27A52F:        LDA #$2F                  
CODE_27A531:        STA $0551                 
CODE_27A534:        DEC $0578                 
CODE_27A537:        LDA #$71                  
CODE_27A539:        STA $0552                 
CODE_27A53C:        LDA #$00                  
CODE_27A53E:        STA $054F                 
CODE_27A541:        BEQ CODE_27A578           
CODE_27A543:        RTL                       

CODE_27A544:        LDX $9B                   
CODE_27A546:        LDA #$09                  
CODE_27A548:        STA $1202                 
CODE_27A54B:        LDA #$01                  
CODE_27A54D:        STA $02D9                 
CODE_27A550:        STZ $8B                   
CODE_27A552:        STZ $C1                   
CODE_27A554:        STZ $054F                 
CODE_27A557:        STZ $0552                 
CODE_27A55A:        STZ $0577                 
CODE_27A55D:        STZ $0553                 
CODE_27A560:        STZ $0567                 
CODE_27A563:        STZ $057A                 
CODE_27A566:        LDA #$01                  
CODE_27A568:        STA $0578                 
CODE_27A56B:        LDA #$C0                  
CODE_27A56D:        STA $9D                   
CODE_27A56F:        LDA #$30                  
CODE_27A571:        STA $0510                 
CODE_27A574:        LDA #$01                  
CODE_27A576:        STA $BF                   
CODE_27A578:        LDA $BD                   
CODE_27A57A:        AND #$7F                  
CODE_27A57C:        STA $BD                   
CODE_27A57E:        RTL                       

CODE_27A57F:        LDY #$05                  
CODE_27A581:        LDA $1FC8,y               
CODE_27A584:        BEQ CODE_27A58A           
CODE_27A586:        DEY                       
CODE_27A587:        BPL CODE_27A581           
CODE_27A589:        RTS                       

CODE_27A58A:        LDA #$09                  
CODE_27A58C:        STA $1FC8,y               
CODE_27A58F:        LDA $70                   
CODE_27A591:        STA $05BF,y               
CODE_27A594:        LDA $55                   
CODE_27A596:        STA $1FD7,y               
CODE_27A599:        LDA $5E                   
CODE_27A59B:        STA $05C9,y               
CODE_27A59E:        LDA $43                   
CODE_27A5A0:        STA $00E2,y               
CODE_27A5A3:        LDA #$D0                  
CODE_27A5A5:        STA $05D3,y               
CODE_27A5A8:        LDA #$00                  
CODE_27A5AA:        CMP $BD                   
CODE_27A5AC:        LDA #$10                  
CODE_27A5AE:        BCS CODE_27A5B2                   
CODE_27A5B0:        LDA #$F0                  
CODE_27A5B2:        STA $05DD,y               
CODE_27A5B5:        LDA $00                   
CODE_27A5B7:        STA $06C7,y               
CODE_27A5BA:        RTS                       

CODE_27A5BB:        LDA $0797,x               
CODE_27A5BE:        AND #$F7                  
CODE_27A5C0:        STA $0797,x               
CODE_27A5C3:        JSR CODE_27A5E0           
CODE_27A5C6:        LDA $07B3                 
CODE_27A5C9:        CMP #$FF                  
CODE_27A5CB:        BEQ CODE_27A5DF           
CODE_27A5CD:        STA $06                   
CODE_27A5CF:        LDA #$0F                  
CODE_27A5D1:        STA $07                   
CODE_27A5D3:        LDA $07B4                 
CODE_27A5D6:        STA $02                   
CODE_27A5D8:        LDA #$0F                  
CODE_27A5DA:        STA $03                   
CODE_27A5DC:        JSR CODE_27A614           
CODE_27A5DF:        RTS                       

CODE_27A5E0:        LDA $0517                 
CODE_27A5E3:        BEQ CODE_27A5DF           
CODE_27A5E5:        CMP #$0C                  
CODE_27A5E7:        BEQ CODE_27A5ED           
CODE_27A5E9:        CMP #$09                  
CODE_27A5EB:        BNE CODE_27A5DF           
CODE_27A5ED:        LDA $BD                   
CODE_27A5EF:        AND #$40                  
CODE_27A5F1:        TAY                       
CODE_27A5F2:        BEQ CODE_27A5F6           
CODE_27A5F4:        LDY #$01                  
CODE_27A5F6:        LDA $B02D,y               
CODE_27A5F9:        CLC                       
CODE_27A5FA:        ADC $79                   
CODE_27A5FC:        STA $02                   
CODE_27A5FE:        LDA #$0A                  
CODE_27A600:        STA $03                   
CODE_27A602:        LDA $82                   
CODE_27A604:        CLC                       
CODE_27A605:        ADC #$10                  
CODE_27A607:        STA $06                   
CODE_27A609:        LDA #$0F                  
CODE_27A60B:        STA $07                   
CODE_27A60D:        LDA $0544                 
CODE_27A610:        CMP #$FE                  
CODE_27A612:        BEQ CODE_27A5DF           
CODE_27A614:        LDY $0661,x               
CODE_27A617:        LDA $B033,y               
CODE_27A61A:        BNE CODE_27A5DF           
CODE_27A61C:        JSL CODE_27A85F           
CODE_27A620:        BNE CODE_27A5DF           
CODE_27A622:        JSL CODE_27A413           
CODE_27A626:        JSL CODE_27A45F           
CODE_27A62A:        BCC CODE_27A5DF           
CODE_27A62C:        LDA $0797,x               
CODE_27A62F:        ORA #$08                  
CODE_27A631:        STA $0797,x               
CODE_27A634:        LDY $0671,x               
CODE_27A637:        LDA $B1AF,y               
CODE_27A63A:        AND #$80                  
CODE_27A63C:        BNE CODE_27A5DF           
CODE_27A63E:        LDA $03                   
CODE_27A640:        CMP #$0F                  
CODE_27A642:        BEQ CODE_27A679           
CODE_27A644:        LDY #$00                  
CODE_27A646:        LDA $BD                   
CODE_27A648:        BEQ CODE_27A64B           
CODE_27A64A:        INY                       
CODE_27A64B:        LDA $5E                   
CODE_27A64D:        STA $D8                   
CODE_27A64F:        LDA $43                   
CODE_27A651:        STA $D9                   
CODE_27A653:        SEP #$20                  
CODE_27A655:        LDA $B031,y               
CODE_27A658:        AND #$FF                  
CODE_27A65A:        CMP #$80                  
CODE_27A65C:        BCC CODE_27A660           
CODE_27A65E:        ORA #$00                  
CODE_27A660:        CLC                       
CODE_27A661:        ADC $D8                   
CODE_27A663:        SEP #$20                  
CODE_27A665:        STA $1A48                 
CODE_27A668:        XBA                       
CODE_27A669:        STA $027E                 
CODE_27A66C:        LDA $70                   
CODE_27A66E:        CLC                       
CODE_27A66F:        ADC #$10                  
CODE_27A671:        STA $1A47                 
CODE_27A674:        LDA #$0A                  
CODE_27A676:        STA $1A46                 
CODE_27A679:        LDA #$0C                  
CODE_27A67B:        STA $0520,x               
CODE_27A67E:        LDA #$03                  
CODE_27A680:        STA $1200                 
CODE_27A683:        LDY $0671,x               
CODE_27A686:        LDA $B1AF,y               
CODE_27A689:        AND #$40                  
CODE_27A68B:        BNE CODE_27A69D           
CODE_27A68D:        LDA $0545                 
CODE_27A690:        BNE CODE_27A699           
CODE_27A692:        LDA $05F4                 
CODE_27A695:        JSL CODE_278A8A           
CODE_27A699:        LDA #$06                  
CODE_27A69B:        BNE CODE_27A6CA           
CODE_27A69D:        PHX                       
CODE_27A69E:        REP #$30                  
CODE_27A6A0:        LDA $0671,x               
CODE_27A6A3:        AND #$00FF                
CODE_27A6A6:        STA $D8                   
CODE_27A6A8:        ASL A                     
CODE_27A6A9:        CLC                       
CODE_27A6AA:        ADC $D8                   
CODE_27A6AC:        TAX                       
CODE_27A6AD:        LDA.l PNTR_288438,x             
CODE_27A6B1:        STA $D8                   
CODE_27A6B3:        SEP #$30                  
CODE_27A6B5:        PLX                       
CODE_27A6B6:        LDA $D9                   
CODE_27A6B8:        AND #$F8                  
CODE_27A6BA:        CMP #$08                  
CODE_27A6BC:        BNE CODE_27A6C3           
CODE_27A6BE:        LDA $D8                   
CODE_27A6C0:        STA $0671,x               
CODE_27A6C3:        LDA #$FF                  
CODE_27A6C5:        STA $06A6,x               
CODE_27A6C8:        LDA #$03                  
CODE_27A6CA:        STA $0661,x               
CODE_27A6CD:        LDA #$D0                  
CODE_27A6CF:        LDY $03                   
CODE_27A6D1:        CPY #$0F                  
CODE_27A6D3:        BEQ CODE_27A6D7           
CODE_27A6D5:        LDA #$B0                  
CODE_27A6D7:        STA $9E,x                 
CODE_27A6D9:        JSL CODE_27A837           
CODE_27A6DD:        LDA $B02B,y               
CODE_27A6E0:        STA $8C,x                 
CODE_27A6E2:        LDA $0679,x               
CODE_27A6E5:        ORA #$80                  
CODE_27A6E7:        STA $0679,x               
CODE_27A6EA:        RTS                       

CODE_27A6EB:        JSR CODE_27A6EF           
CODE_27A6EE:        RTL                       

CODE_27A6EF:        LDA $0681,x               
CODE_27A6F2:        BNE CODE_27A74E           
CODE_27A6F4:        LDA $0651,x               
CODE_27A6F7:        AND #$C0                  
CODE_27A6F9:        CMP #$C0                  
CODE_27A6FB:        BEQ CODE_27A74E           
CODE_27A6FD:        JSL CODE_27A439           
CODE_27A701:        LDX #$04                  
CODE_27A703:        CPX $9B                   
CODE_27A705:        BEQ CODE_27A74B           
CODE_27A707:        LDY $0661,x               
CODE_27A70A:        LDA $B033,y               
CODE_27A70D:        BNE CODE_27A74B           
CODE_27A70F:        LDA $0681,x               
CODE_27A712:        BNE CODE_27A74B           
CODE_27A714:        LDA $0651,x               
CODE_27A717:        AND #$C0                  
CODE_27A719:        CMP #$C0                  
CODE_27A71B:        BEQ CODE_27A74B           
CODE_27A71D:        JSL CODE_27A413           
CODE_27A721:        JSL CODE_27A45F           
CODE_27A725:        BCC CODE_27A74B           
CODE_27A727:        LDY $9B                   
CODE_27A729:        LDA $5F,x                 
CODE_27A72B:        SEC                       
CODE_27A72C:        SBC $005F,y               
CODE_27A72F:        PHA                       
CODE_27A730:        LDA $44,x                 
CODE_27A732:        SBC $0044,y               
CODE_27A735:        STA $00                   
CODE_27A737:        PLA                       
CODE_27A738:        ADC #$80                  
CODE_27A73A:        LDA $00                   
CODE_27A73C:        ADC #$00                  
CODE_27A73E:        BNE CODE_27A74B           
CODE_27A740:        SEC                       
CODE_27A741:        LDY $0671,x               
CODE_27A744:        LDA $AE78,y               
CODE_27A747:        AND #$80                  
CODE_27A749:        BEQ CODE_27A751           
CODE_27A74B:        DEX                       
CODE_27A74C:        BPL CODE_27A703           
CODE_27A74E:        CLC                       
CODE_27A74F:        BCC CODE_27A756           
CODE_27A751:        TXA                       
CODE_27A752:        TAY                       
CODE_27A753:        LDA $0671,y               
CODE_27A756:        LDX $9B                   
CODE_27A758:        RTS                       

CODE_27A759:        JSR CODE_27A701           
CODE_27A75C:        RTL                       

CODE_27A75D:        PHA                       
CODE_27A75E:        LDA $0425                 
CODE_27A761:        BEQ CODE_27A77E           
CODE_27A763:        LDY $0C                   
CODE_27A765:        LDA $0D                   
CODE_27A767:        JSL CODE_209FC1           
CODE_27A76B:        PHA                       
CODE_27A76C:        PHX                       
CODE_27A76D:        TYX                       
CODE_27A76E:        LDA $21823C,x             
CODE_27A772:        STA $00                   
CODE_27A774:        LDA $21824C,x             
CODE_27A778:        STA $01                   
CODE_27A77A:        PLX                       
CODE_27A77B:        PLA                       
CODE_27A77C:        BRA CODE_27A798           

CODE_27A77E:        PHX                       
CODE_27A77F:        LDA $0E                   
CODE_27A781:        ASL A                     
CODE_27A782:        TAX                       
CODE_27A783:        LDA $218200,x             
CODE_27A787:        STA $00                   
CODE_27A789:        LDA $218201,x             
CODE_27A78D:        STA $01                   
CODE_27A78F:        PLX                       
CODE_27A790:        LDA $0C                   
CODE_27A792:        BEQ CODE_27A796           
CODE_27A794:        INC $01                   
CODE_27A796:        LDA $0D                   
CODE_27A798:        AND #$F0                  
CODE_27A79A:        STA $02                   
CODE_27A79C:        LDA $0F                   
CODE_27A79E:        LSR A                     
CODE_27A79F:        LSR A                     
CODE_27A7A0:        LSR A                     
CODE_27A7A1:        LSR A                     
CODE_27A7A2:        ORA $02                   
CODE_27A7A4:        TAY                       
CODE_27A7A5:        LDA #$7E                  
CODE_27A7A7:        STA $02                   
CODE_27A7A9:        PLA                       
CODE_27A7AA:        STA [$00],y               
CODE_27A7AC:        RTL                       

CODE_27A7AD:        LDA $5F,x                 
CODE_27A7AF:        SEC                       
CODE_27A7B0:        SBC $5E                   
CODE_27A7B2:        STA $0E                   
CODE_27A7B4:        LDA $44,x                 
CODE_27A7B6:        SBC $43                   
CODE_27A7B8:        LSR A                     
CODE_27A7B9:        ROR $0E                   
CODE_27A7BB:        LSR A                     
CODE_27A7BC:        ROR $0E                   
CODE_27A7BE:        ASL A                     
CODE_27A7BF:        AND #$40                  
CODE_27A7C1:        STA $0F                   
CODE_27A7C3:        RTL                       

CODE_27A7C4:        LDA $71,x                 
CODE_27A7C6:        SEC                       
CODE_27A7C7:        SBC $70                   
CODE_27A7C9:        STA $0E                   
CODE_27A7CB:        LDA $56,x                 
CODE_27A7CD:        SBC $55                   
CODE_27A7CF:        STA $0F                   
CODE_27A7D1:        LSR A                     
CODE_27A7D2:        ROR $0E                   
CODE_27A7D4:        LSR A                     
CODE_27A7D5:        ROR $0E                   
CODE_27A7D7:        RTL                       

CODE_27A7D8:        LDA $9E,x                 
CODE_27A7DA:        BMI CODE_27A7E4           
CODE_27A7DC:        CMP #$40                  
CODE_27A7DE:        BMI CODE_27A7E4           
CODE_27A7E0:        LDA #$40                  
CODE_27A7E2:        STA $9E,x                 
CODE_27A7E4:        TXA                       
CODE_27A7E5:        CLC                       
CODE_27A7E6:        ADC #$12                  
CODE_27A7E8:        TAX                       
CODE_27A7E9:        JSR CODE_27A806           
CODE_27A7EC:        LDX $9B                   
CODE_27A7EE:        RTL                       

CODE_27A7EF:        JSR CODE_27A806           
CODE_27A7F2:        LDY $0425                 
CODE_27A7F5:        BEQ CODE_27A805           
CODE_27A7F7:        PHA                       
CODE_27A7F8:        LDY $0671                 
CODE_27A7FB:        LDA $B0FB,x               
CODE_27A7FE:        AND #$08                  
CODE_27A800:        BNE CODE_27A804           
CODE_27A802:        STA $44,x                 
CODE_27A804:        PLA                       
CODE_27A805:        RTL                       

CODE_27A806:        LDA $8C,x                 
CODE_27A808:        ASL A                     
CODE_27A809:        ASL A                     
CODE_27A80A:        ASL A                     
CODE_27A80B:        ASL A                     
CODE_27A80C:        CLC                       
CODE_27A80D:        ADC $074F,x               
CODE_27A810:        STA $074F,x               
CODE_27A813:        PHP                       
CODE_27A814:        PHP                       
CODE_27A815:        LDY #$00                  
CODE_27A817:        LDA $8C,x                 
CODE_27A819:        LSR A                     
CODE_27A81A:        LSR A                     
CODE_27A81B:        LSR A                     
CODE_27A81C:        LSR A                     
CODE_27A81D:        CMP #$08                  
CODE_27A81F:        BCC CODE_27A824           
CODE_27A821:        ORA #$F0                  
CODE_27A823:        DEY                       
CODE_27A824:        PLP                       
CODE_27A825:        PHA                       
CODE_27A826:        ADC $5F,x                 
CODE_27A828:        STA $5F,x                 
CODE_27A82A:        TYA                       
CODE_27A82B:        ADC $44,x                 
CODE_27A82D:        STA $44,x                 
CODE_27A82F:        PLA                       
CODE_27A830:        PLP                       
CODE_27A831:        ADC #$00                  
CODE_27A833:        STA $074D                 
CODE_27A836:        RTS                       

CODE_27A837:        LDA $5E                   
CODE_27A839:        SEC                       
CODE_27A83A:        SBC $5F,x                 
CODE_27A83C:        STA $0F                   
CODE_27A83E:        LDY #$00                  
CODE_27A840:        LDA $43                   
CODE_27A842:        SBC $44,x                 
CODE_27A844:        BPL CODE_27A847           
CODE_27A846:        INY                       
CODE_27A847:        RTL                       

CODE_27A848:        LDA $70                   
CODE_27A84A:        SEC                       
CODE_27A84B:        SBC $71,x                 
CODE_27A84D:        STA $0F                   
CODE_27A84F:        LDY #$00                  
CODE_27A851:        LDA $55                   
CODE_27A853:        SBC $56,x                 
CODE_27A855:        BPL CODE_27A858           
CODE_27A857:        INY                       
CODE_27A858:        RTL                       

CODE_27A859:        EOR #$FF                  ;\Invert accumulator (8-bit)
CODE_27A85B:        CLC                       ; |
CODE_27A85C:        ADC #$01                  ; |Something tells me SMW's version (InvertAccum) is better
CODE_27A85E:        RTL                       ;/

CODE_27A85F:        LDA $0651,x               ;
CODE_27A862:        ORA $0681,x               ;
CODE_27A865:        RTL                       ;

CODE_27A866:        LDY #$04                  
CODE_27A868:        LDA $0661,y               
CODE_27A86B:        BEQ CODE_27A870           
CODE_27A86D:        DEY                       
CODE_27A86E:        BPL CODE_27A868           
CODE_27A870:        RTS                       

CODE_27A871:        LDA $55                   
CODE_27A873:        STA $0C                   
CODE_27A875:        LDA $09                   
CODE_27A877:        CLC                       
CODE_27A878:        ADC $70                   
CODE_27A87A:        STA $0D                   
CODE_27A87C:        BCC CODE_27A880           
CODE_27A87E:        INC $0C                   
CODE_27A880:        LDA $0C                   
CODE_27A882:        BNE CODE_27A88F           
CODE_27A884:        LDA $0D                   
CODE_27A886:        SEC                       
CODE_27A887:        SBC #$10                  
CODE_27A889:        STA $0D                   
CODE_27A88B:        BCS CODE_27A88F                   
CODE_27A88D:        DEC $0C                   
CODE_27A88F:        LDA $43                   
CODE_27A891:        STA $0E                   
CODE_27A893:        LDA $0A                   
CODE_27A895:        BPL CODE_27A899           
CODE_27A897:        DEC $0E                   
CODE_27A899:        LDA $5E                   
CODE_27A89B:        CLC                       
CODE_27A89C:        ADC $0A                   
CODE_27A89E:        STA $0F                   
CODE_27A8A0:        BCC CODE_27A8A4           
CODE_27A8A2:        INC $0E                   
CODE_27A8A4:        STY $09                   
CODE_27A8A6:        STX $0A                   
CODE_27A8A8:        JSL CODE_209FE0           
CODE_27A8AC:        LDY $09                   
CODE_27A8AE:        LDX $0A                   
CODE_27A8B0:        RTS                       

CODE_27A8B1:        LDY #$00                  
CODE_27A8B3:        LDA $052E,y               
CODE_27A8B6:        BEQ CODE_27A8BE           
CODE_27A8B8:        INY                       
CODE_27A8B9:        LDA $052E,y               
CODE_27A8BC:        BNE CODE_27A8D7           
CODE_27A8BE:        LDA $0B                   
CODE_27A8C0:        STA $052E,y               
CODE_27A8C3:        LDA $0E                   
CODE_27A8C5:        STA $0531,y               
CODE_27A8C8:        LDA $0F                   
CODE_27A8CA:        STA $0534,y               
CODE_27A8CD:        LDA $0C                   
CODE_27A8CF:        STA $0537,y               
CODE_27A8D2:        LDA $0D                   
CODE_27A8D4:        STA $053A,y               
CODE_27A8D7:        RTL                       

CODE_27A8D8:        STX $0669                 
CODE_27A8DB:        STA $5F                   
CODE_27A8DD:        LSR A                     
CODE_27A8DE:        LSR A                     
CODE_27A8DF:        STA $00                   
CODE_27A8E1:        LDY $0726                 
CODE_27A8E4:        BEQ CODE_27A8E8           
CODE_27A8E6:        LDY #$23                  
CODE_27A8E8:        LDX #$00                  
CODE_27A8EA:        LDA $1D80,y               
CODE_27A8ED:        BEQ CODE_27A8F5           
CODE_27A8EF:        INY                       
CODE_27A8F0:        INX                       
CODE_27A8F1:        CPX #$1B                  
CODE_27A8F3:        BCC CODE_27A8EA           
CODE_27A8F5:        STY $0689                 
CODE_27A8F8:        TXA                       
CODE_27A8F9:        LDY #$03                  
CODE_27A8FB:        CMP #$07                  
CODE_27A8FD:        BCC CODE_27A904           
CODE_27A8FF:        SBC #$07                  
CODE_27A901:        DEY                       
CODE_27A902:        BNE CODE_27A8FB           
CODE_27A904:        TAX                       
CODE_27A905:        LDA $B03C,y               
CODE_27A908:        STA $0691                 
CODE_27A90B:        LDA #$02                  
CODE_27A90D:        STA $0661                 
CODE_27A910:        LDA #$35                  
CODE_27A912:        STA $0671                 
CODE_27A915:        LDA #$90                  
CODE_27A917:        STA $71                   
CODE_27A919:        LDA $B040,x               
CODE_27A91C:        LSR A                     
CODE_27A91D:        LSR A                     
CODE_27A91E:        SEC                       
CODE_27A91F:        SBC $00                   
CODE_27A921:        STA $8C                   
CODE_27A923:        LDA #$D0                  
CODE_27A925:        STA $9E                   
CODE_27A927:        LDA #$00                  
CODE_27A929:        STA $074F                 
CODE_27A92C:        STA $0758                 
CODE_27A92F:        LDA #$FF                  
CODE_27A931:        STA $0518                 
CODE_27A934:        STA $4D                   
CODE_27A936:        LDA #$3E                  
CODE_27A938:        STA $1203                 
CODE_27A93B:        RTL                       

CODE_27A93C:        LDA $05FF                 
CODE_27A93F:        STA $05FE                 
CODE_27A942:        JSR CODE_27A9B2           
CODE_27A945:        LDY #$00                  
CODE_27A947:        LDA $1A13                 
CODE_27A94A:        LSR A                     
CODE_27A94B:        BCC CODE_27A951           
CODE_27A94D:        INY                       
CODE_27A94E:        DEC $0781                 
CODE_27A951:        LDA $0781                 
CODE_27A954:        STA $7E3952               
CODE_27A958:        STY $0781                 
CODE_27A95B:        CLC                       
CODE_27A95C:        ADC $5E                   
CODE_27A95E:        STA $5E                   
CODE_27A960:        BCC CODE_27A964           
CODE_27A962:        INC $43                   
CODE_27A964:        LDY #$00                  
CODE_27A966:        LDA $1A13                 
CODE_27A969:        LSR A                     
CODE_27A96A:        BCC CODE_27A970           
CODE_27A96C:        DEY                       
CODE_27A96D:        INC $0780                 
CODE_27A970:        LDA $0780                 
CODE_27A973:        STA $7E3953               
CODE_27A977:        STY $0780                 
CODE_27A97A:        LDY $A6                   
CODE_27A97C:        BEQ CODE_27A989           
CODE_27A97E:        LDY #$00                  
CODE_27A980:        CLC                       
CODE_27A981:        ADC $0780                 
CODE_27A984:        CMP #$FF                  
CODE_27A986:        BNE CODE_27A989           
CODE_27A988:        DEY                       
CODE_27A989:        CLC                       
CODE_27A98A:        ADC $70                   
CODE_27A98C:        STA $70                   
CODE_27A98E:        TYA                       
CODE_27A98F:        ADC $55                   
CODE_27A991:        STA $55                   
CODE_27A993:        RTL                       

CODE_27A994:        JSR CODE_27A9B2           
CODE_27A997:        LDA $5F,x                 
CODE_27A999:        CLC                       
CODE_27A99A:        ADC $7E3952               
CODE_27A99E:        STA $5F,x                 
CODE_27A9A0:        BCC CODE_27A9A4           
CODE_27A9A2:        INC $44,x                 
CODE_27A9A4:        LDA $71,x                 
CODE_27A9A6:        CLC                       
CODE_27A9A7:        ADC $7E3953               
CODE_27A9AB:        STA $71,x                 
CODE_27A9AD:        BCC CODE_27A9B1           
CODE_27A9AF:        INC $56,x                 
CODE_27A9B1:        RTL                       

CODE_27A9B2:        LDA $05FE                 
CODE_27A9B5:        BEQ CODE_27A9BB           
CODE_27A9B7:        LDA $9C                   
CODE_27A9B9:        BEQ CODE_27A9BE           
CODE_27A9BB:        PLA                       
CODE_27A9BC:        PLA                       
CODE_27A9BD:        RTL                       

CODE_27A9BE:        RTS                       

CODE_27A9BF:        LDA $0425                 
CODE_27A9C2:        BEQ CODE_27A9FD           
CODE_27A9C4:        LDA $C6,x                 
CODE_27A9C6:        STA $DA                   
CODE_27A9C8:        LDA $C7,x                 
CODE_27A9CA:        STA $DB                   
CODE_27A9CC:        JSL CODE_27A19D           
CODE_27A9D0:        REP #$30                  
CODE_27A9D2:        LDA $DA                   
CODE_27A9D4:        LSR A                     
CODE_27A9D5:        LSR A                     
CODE_27A9D6:        TAY                       
CODE_27A9D7:        SEP #$20                  
CODE_27A9D9:        LDA #$00                  
CODE_27A9DB:        STA $0A20,y               
CODE_27A9DE:        STA $0A21,y               
CODE_27A9E1:        STA $0A22,y               
CODE_27A9E4:        STA $0A23,y               
CODE_27A9E7:        LDY $DA                   
CODE_27A9E9:        LDX #$0000                
CODE_27A9EC:        LDA $0800,y               
CODE_27A9EF:        CMP #$F8                  
CODE_27A9F1:        BCS CODE_27AA00                   
CODE_27A9F3:        LDX #$0004                
CODE_27A9F6:        LDA $0804,y               
CODE_27A9F9:        CMP #$F8                  
CODE_27A9FB:        BCS CODE_27AA00                   
CODE_27A9FD:        BRL CODE_27AA59           

CODE_27AA00:        STX $DC                   
CODE_27AA02:        REP #$20                  
CODE_27AA04:        TYA                       
CODE_27AA05:        CLC                       
CODE_27AA06:        ADC $DC                   
CODE_27AA08:        TAY                       
CODE_27AA09:        LDA $D8                   
CODE_27AA0B:        CLC                       
CODE_27AA0C:        ADC $DC                   
CODE_27AA0E:        TAX                       
CODE_27AA0F:        SEP #$20                  
CODE_27AA11:        LDA $0800,y               
CODE_27AA14:        STA $0800,x               
CODE_27AA17:        STA $0808,x               
CODE_27AA1A:        LDA $0801,y               
CODE_27AA1D:        STA $0801,x               
CODE_27AA20:        LDA $0809,y               
CODE_27AA23:        STA $0809,x               
CODE_27AA26:        LDA $0802,y               
CODE_27AA29:        STA $0802,x               
CODE_27AA2C:        LDA $080A,y               
CODE_27AA2F:        STA $080A,x               
CODE_27AA32:        LDA $0803,y               
CODE_27AA35:        STA $0803,x               
CODE_27AA38:        LDA $080B,y               
CODE_27AA3B:        STA $080B,x               
CODE_27AA3E:        REP #$20                  
CODE_27AA40:        TXA                       
CODE_27AA41:        LSR A                     
CODE_27AA42:        LSR A                     
CODE_27AA43:        TAX                       
CODE_27AA44:        TYA                       
CODE_27AA45:        LSR A                     
CODE_27AA46:        LSR A                     
CODE_27AA47:        TAY                       
CODE_27AA48:        SEP #$20                  
CODE_27AA4A:        LDA #$00                  
CODE_27AA4C:        STA $0A20,x               
CODE_27AA4F:        STA $0A22,x               
CODE_27AA52:        INC A                     
CODE_27AA53:        STA $0A20,y               
CODE_27AA56:        STA $0A22,y               
CODE_27AA59:        SEP #$10                  
CODE_27AA5B:        LDX $9B                   
CODE_27AA5D:        RTS                       

DATA_27AA5E:        db $FF,$02,$13,$14,$26,$32,$4D,$60
                    db $62,$71,$85,$90,$A5,$C6,$C9,$CF
                    db $E4,$E5,$E6,$E8,$EB,$ED

CODE_27AA74:        PHB
CODE_27AA75:        PHK
CODE_27AA76:        PLB                       
CODE_27AA77:        PHX                       
CODE_27AA78:        LDA $15                   
CODE_27AA7A:        LSR A                     
CODE_27AA7B:        LSR A                     
CODE_27AA7C:        AND #$07                  
CODE_27AA7E:        TAX                       
CODE_27AA7F:        LDA $AA85,x               
CODE_27AA82:        PLX                       
CODE_27AA83:        PLB                       
CODE_27AA84:        RTL                       

DATA_27AA85:        db $02,$04,$03,$04,$00,$04,$01,$04

CODE_27AA8D:        PHB                       
CODE_27AA8E:        PHK                       
CODE_27AA8F:        PLB                       
CODE_27AA90:        PHX                       
CODE_27AA91:        LDA $15                   
CODE_27AA93:        LSR A                     
CODE_27AA94:        AND #$03                  
CODE_27AA96:        TAX                       
CODE_27AA97:        LDA.w DATA_27AA9D,x               
CODE_27AA9A:        PLX                       
CODE_27AA9B:        PLB                       
CODE_27AA9C:        RTL                       

DATA_27AA9D:        db $00,$01,$02,$01

DATA_27AAA1:        db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF

CODE_27B000:        LDA $BF
CODE_27B002:        BNE CODE_27B07F
CODE_27B004:        LDA $0425
CODE_27B007:        BEQ CODE_27B00C           
CODE_27B009:        JMP CODE_27B0EE           

CODE_27B00C:        LDA $70                   
CODE_27B00E:        CLC                       
CODE_27B00F:        ADC #$20                  
CODE_27B011:        AND #$F0                  
CODE_27B013:        STA $04                   
CODE_27B015:        LDA $55                   
CODE_27B017:        ADC #$00                  
CODE_27B019:        AND #$01                  
CODE_27B01B:        STA $02                   
CODE_27B01D:        LDA $5E                   
CODE_27B01F:        CLC                       
CODE_27B020:        ADC #$08                  
CODE_27B022:        AND #$F0                  
CODE_27B024:        STA $03                   
CODE_27B026:        LDA $43                   
CODE_27B028:        ADC #$00                  
CODE_27B02A:        STA $05                   
CODE_27B02C:        CMP #$10                  
CODE_27B02E:        BCS CODE_27B07F                   
CODE_27B030:        PHX                       
CODE_27B031:        ASL A                     
CODE_27B032:        TAX                       
CODE_27B033:        LDA $218200,x             
CODE_27B037:        STA $2E                   
CODE_27B039:        STA $D8                   
CODE_27B03B:        LDA $218201,x             
CODE_27B03F:        CLC                       
CODE_27B040:        ADC $02                   
CODE_27B042:        STA $2F                   
CODE_27B044:        CLC                       
CODE_27B045:        ADC #$20                  
CODE_27B047:        STA $D9                   
CODE_27B049:        LDA #$7E                  
CODE_27B04B:        STA $30                   
CODE_27B04D:        STA $DA                   
CODE_27B04F:        PLX                       
CODE_27B050:        LDA $03                   
CODE_27B052:        LSR A                     
CODE_27B053:        LSR A                     
CODE_27B054:        LSR A                     
CODE_27B055:        LSR A                     
CODE_27B056:        ORA $04                   
CODE_27B058:        TAY                       
CODE_27B059:        LDA [$D8],y               
CODE_27B05B:        BEQ CODE_27B075           
CODE_27B05D:        PHX                       
CODE_27B05E:        LDA $070A                 
CODE_27B061:        ASL A                     
CODE_27B062:        TAX                       
CODE_27B063:        LDA $AB57,x               
CODE_27B066:        STA $DB                   
CODE_27B068:        LDA $AB58,x               
CODE_27B06B:        STA $DC                   
CODE_27B06D:        LDA [$2E],y               
CODE_27B06F:        TAY                       
CODE_27B070:        LDA ($DB),y               
CODE_27B072:        PLX                       
CODE_27B073:        BRA CODE_27B077           

CODE_27B075:        LDA [$2E],y               
CODE_27B077:        CMP #$F3                  
CODE_27B079:        BNE CODE_27B080           
CODE_27B07B:        LDA #$D0                  
CODE_27B07D:        STA $9D                   
CODE_27B07F:        RTS                       

CODE_27B080:        CMP #$94                  
CODE_27B082:        BNE CODE_27B092           
CODE_27B084:        LDY $070A                 
CODE_27B087:        CPY #$0B                  
CODE_27B089:        BEQ CODE_27B08F           
CODE_27B08B:        CPY #$02                  
CODE_27B08D:        BNE CODE_27B092           
CODE_27B08F:        JMP CODE_27B1BE           

CODE_27B092:        CMP #$5B                  
CODE_27B094:        BNE CODE_27B0ED           
CODE_27B096:        LDY $070A                 
CODE_27B099:        CPY #$04                  
CODE_27B09B:        BEQ CODE_27B0A9           
CODE_27B09D:        CPY #$08                  
CODE_27B09F:        BEQ CODE_27B0A9           
CODE_27B0A1:        CPY #$0C                  
CODE_27B0A3:        BEQ CODE_27B0A9           
CODE_27B0A5:        CPY #$02                  
CODE_27B0A7:        BNE CODE_27B07F           
CODE_27B0A9:        LDA $0564                 
CODE_27B0AC:        BNE CODE_27B07F           
CODE_27B0AE:        JSR CODE_27DC85           
CODE_27B0B1:        LDA #$54                  
CODE_27B0B3:        STA $0671,x               
CODE_27B0B6:        LDA $04                   
CODE_27B0B8:        SEC                       
CODE_27B0B9:        SBC #$01                  
CODE_27B0BB:        STA $71,x                 
CODE_27B0BD:        LDA $02                   
CODE_27B0BF:        SBC #$00                  
CODE_27B0C1:        STA $56,x                 
CODE_27B0C3:        LDA $03                   
CODE_27B0C5:        STA $5F,x                 
CODE_27B0C7:        LDA $05                   
CODE_27B0C9:        STA $44,x                 
CODE_27B0CB:        LDA #$20                  
CODE_27B0CD:        STA $68,x                 
CODE_27B0CF:        LDA #$03                  
CODE_27B0D1:        STA $1FE9,x               
CODE_27B0D4:        LDA #$02                  
CODE_27B0D6:        STA $0564                 
CODE_27B0D9:        LDA $02                   
CODE_27B0DB:        STA $052A                 
CODE_27B0DE:        LDA $04                   
CODE_27B0E0:        STA $052B                 
CODE_27B0E3:        LDA $03                   
CODE_27B0E5:        STA $0529                 
CODE_27B0E8:        LDA $05                   
CODE_27B0EA:        STA $0528                 
CODE_27B0ED:        RTS                       

CODE_27B0EE:        LDA $70                   
CODE_27B0F0:        CLC                       
CODE_27B0F1:        ADC #$21                  
CODE_27B0F3:        AND #$F0                  
CODE_27B0F5:        STA $00                   
CODE_27B0F7:        STA $04                   
CODE_27B0F9:        LDA $55                   
CODE_27B0FB:        ADC #$00                  
CODE_27B0FD:        STA $02                   
CODE_27B0FF:        ORA #$20                  
CODE_27B101:        STA $01                   
CODE_27B103:        STA $D9                   
CODE_27B105:        CLC                       
CODE_27B106:        ADC #$20                  
CODE_27B108:        STA $DC                   
CODE_27B10A:        LDA $5E                   
CODE_27B10C:        CLC                       
CODE_27B10D:        ADC #$08                  
CODE_27B10F:        AND #$F0                  
CODE_27B111:        STA $03                   
CODE_27B113:        LSR A                     
CODE_27B114:        LSR A                     
CODE_27B115:        LSR A                     
CODE_27B116:        LSR A                     
CODE_27B117:        ORA $00                   
CODE_27B119:        STA $00                   
CODE_27B11B:        STA $D8                   
CODE_27B11D:        STA $DB                   
CODE_27B11F:        LDY #$00                  
CODE_27B121:        STY $05                   
CODE_27B123:        LDA #$7E                  
CODE_27B125:        STA $DA                   
CODE_27B127:        STA $DD                   
CODE_27B129:        LDA [$DB],y               
CODE_27B12B:        BEQ CODE_27B145           
CODE_27B12D:        PHX                       
CODE_27B12E:        LDA $070A                 
CODE_27B131:        ASL A                     
CODE_27B132:        TAX                       
CODE_27B133:        LDA $AB57,x               
CODE_27B136:        STA $DB                   
CODE_27B138:        LDA $AB58,x               
CODE_27B13B:        STA $DC                   
CODE_27B13D:        LDA [$D8],y               
CODE_27B13F:        TAY                       
CODE_27B140:        LDA ($DB),y               
CODE_27B142:        PLX                       
CODE_27B143:        BRA CODE_27B147           

CODE_27B145:        LDA [$D8],y               
CODE_27B147:        CMP #$5B                  
CODE_27B149:        BNE CODE_27B14E           
CODE_27B14B:        JMP CODE_27B096           

CODE_27B14E:        LDY $A6                   
CODE_27B150:        BNE CODE_27B0ED           
CODE_27B152:        LDY $07BD                 
CODE_27B155:        BNE CODE_27B0ED           
CODE_27B157:        CMP #$54                  
CODE_27B159:        BCC CODE_27B0ED           
CODE_27B15B:        CMP #$5D                  
CODE_27B15D:        BCS CODE_27B0ED                   
CODE_27B15F:        SEC                       
CODE_27B160:        SBC #$54                  
CODE_27B162:        TAY                       
CODE_27B163:        LDA #$FF                  
CODE_27B165:        STA $02                   
CODE_27B167:        LDX #$04                  
CODE_27B169:        LDA $0661,x               
CODE_27B16C:        BEQ CODE_27B17F           
CODE_27B16E:        LDA $0671,x               
CODE_27B171:        CMP #$A8                  
CODE_27B173:        BCC CODE_27B181           
CODE_27B175:        CMP #$AA                  
CODE_27B177:        BCS CODE_27B181                   
CODE_27B179:        JSR CODE_279C5F           
CODE_27B17C:        JMP CODE_27B17F           

CODE_27B17F:        STX $02                   
CODE_27B181:        DEX                       
CODE_27B182:        BPL CODE_27B169           
CODE_27B184:        LDX $02                   
CODE_27B186:        BMI CODE_27B1BD           
CODE_27B188:        LDA #$02                  
CODE_27B18A:        STA $0661,x               
CODE_27B18D:        LDA $C6C9,y               
CODE_27B190:        STA $0671,x               
CODE_27B193:        LDA $C6D2,y               
CODE_27B196:        STA $4D,x                 
CODE_27B198:        LDA $00                   
CODE_27B19A:        AND #$F0                  
CODE_27B19C:        SEC                       
CODE_27B19D:        SBC #$01                  
CODE_27B19F:        STA $71,x                 
CODE_27B1A1:        LDA $01                   
CODE_27B1A3:        SBC #$00                  
CODE_27B1A5:        AND #$0F                  
CODE_27B1A7:        STA $56,x                 
CODE_27B1A9:        LDA $00                   
CODE_27B1AB:        ASL A                     
CODE_27B1AC:        ASL A                     
CODE_27B1AD:        ASL A                     
CODE_27B1AE:        ASL A                     
CODE_27B1AF:        CLC                       
CODE_27B1B0:        ADC $C6DB,y               
CODE_27B1B3:        STA $5F,x                 
CODE_27B1B5:        LDA #$00                  
CODE_27B1B7:        STA $44,x                 
CODE_27B1B9:        LDA #$FF                  
CODE_27B1BB:        STA $68,x                 
CODE_27B1BD:        RTS                       

CODE_27B1BE:        LDA #$01                  
CODE_27B1C0:        STA $0578                 
CODE_27B1C3:        JSL CODE_27A546           
CODE_27B1C7:        RTS                       

CODE_27B1C8:        LDX $1600                 
CODE_27B1CB:        LDA $1CFB                 
CODE_27B1CE:        BEQ CODE_27B1FC           
CODE_27B1D0:        PHA                       
CODE_27B1D1:        AND #$03                  
CODE_27B1D3:        TAY                       
CODE_27B1D4:        DEC $1CFB                 
CODE_27B1D7:        PLA                       
CODE_27B1D8:        BPL CODE_27B1FD           
CODE_27B1DA:        AND #$7F                  
CODE_27B1DC:        BNE CODE_27B1E1           
CODE_27B1DE:        STA $1CFB                 
CODE_27B1E1:        TYA                       
CODE_27B1E2:        ASL A                     
CODE_27B1E3:        TAY                       
CODE_27B1E4:        REP #$20                  
CODE_27B1E6:        LDA $C6E4,y               
CODE_27B1E9:        STA $13A2                 
CODE_27B1EC:        STA $13A4                 
CODE_27B1EF:        STA $13A6                 
CODE_27B1F2:        STA $13C2                 
CODE_27B1F5:        SEP #$20                  
CODE_27B1F7:        LDA #$01                  
CODE_27B1F9:        STA $1500                 
CODE_27B1FC:        RTS                       

CODE_27B1FD:        REP #$20                  
CODE_27B1FF:        LDA $1CFB                 
CODE_27B202:        AND #$00FF                
CODE_27B205:        BEQ CODE_27B218           
CODE_27B207:        LDA $15                   
CODE_27B209:        AND #$0003                
CODE_27B20C:        PHX                       
CODE_27B20D:        TAX                       
CODE_27B20E:        LDA $27B223,x             
CODE_27B212:        STA $1300                 
CODE_27B215:        PLX                       
CODE_27B216:        BRA CODE_27B21B           

CODE_27B218:        STZ $1300                 
CODE_27B21B:        SEP #$20                  
CODE_27B21D:        LDA #$01                  
CODE_27B21F:        STA $1500                 
CODE_27B222:        RTS                       

CODE_27B223:        PHP                       
CODE_27B224:        ADC [$FF],y               
CODE_27B226:        ADC $08F018,x             
CODE_27B22A:        TYA                       
CODE_27B22B:        ASL A                     
CODE_27B22C:        TAY                       
CODE_27B22D:        LDA $C6E4,y               
CODE_27B230:        BRA CODE_27B235           

CODE_27B232:        LDA $02B9                 
CODE_27B235:        STA $DC                   
CODE_27B237:        AND #$1F                  
CODE_27B239:        ORA #$20                  
CODE_27B23B:        STA $D8                   
CODE_27B23D:        LDA $DC                   
CODE_27B23F:        LSR A                     
CODE_27B240:        LSR A                     
CODE_27B241:        LSR A                     
CODE_27B242:        LSR A                     
CODE_27B243:        LSR A                     
CODE_27B244:        AND #$1F                  
CODE_27B246:        ORA #$40                  
CODE_27B248:        STA $DA                   
CODE_27B24A:        LDA $DC                   
CODE_27B24C:        XBA                       
CODE_27B24D:        LSR A                     
CODE_27B24E:        LSR A                     
CODE_27B24F:        AND #$1F                  
CODE_27B251:        ORA #$80                  
CODE_27B253:        STA $DC                   
CODE_27B255:        SEP #$20                  
CODE_27B257:        LDA $D8                   
CODE_27B259:        STA $0205                 
CODE_27B25C:        LDA $DA                   
CODE_27B25E:        STA $0206                 
CODE_27B261:        LDA $DC                   
CODE_27B263:        STA $0207                 
CODE_27B266:        LDA #$01                  
CODE_27B268:        STA $1500                 
CODE_27B26B:        RTS                       

CODE_27B26C:        REP #$20                  
CODE_27B26E:        LDA $1CFB                 
CODE_27B271:        AND #$00FF                
CODE_27B274:        BEQ CODE_27B27E           
CODE_27B276:        TYA                       
CODE_27B277:        ASL A                     
CODE_27B278:        TAY                       
CODE_27B279:        LDA $C6E4,y               
CODE_27B27C:        BRA CODE_27B281           

CODE_27B27E:        LDA $02B9                 
CODE_27B281:        STA $1300                 
CODE_27B284:        SEP #$20                  
CODE_27B286:        LDA #$20                  
CODE_27B288:        STA $0205                 
CODE_27B28B:        ASL A                     
CODE_27B28C:        STA $0206                 
CODE_27B28F:        ASL A                     
CODE_27B290:        STA $0207                 
CODE_27B293:        LDA #$01                  
CODE_27B295:        STA $1500                 
CODE_27B298:        RTS                       

CODE_27B299:        JSR CODE_27B1C8           
CODE_27B29C:        JSR CODE_27B000           
CODE_27B29F:        JSR CODE_27BFDB           
CODE_27B2A2:        JSR CODE_27BA22           
CODE_27B2A5:        JSR CODE_27BB5E           
CODE_27B2A8:        JSR CODE_27BCD7           
CODE_27B2AB:        JSR CODE_27C294           
CODE_27B2AE:        JSR CODE_27C536           
CODE_27B2B1:        JSR CODE_27D83D           
CODE_27B2B4:        JSR CODE_27B42C           
CODE_27B2B7:        JSL CODE_29D713           
CODE_27B2BB:        LDA $BB                   
CODE_27B2BD:        CMP #$06                  
CODE_27B2BF:        BEQ CODE_27B2C5           
CODE_27B2C1:        CMP #$02                  
CODE_27B2C3:        BNE CODE_27B2DC           
CODE_27B2C5:        LDA $0556                 
CODE_27B2C8:        ORA $056F                 
CODE_27B2CB:        ORA $0557                 
CODE_27B2CE:        ORA $058C                 
CODE_27B2D1:        ORA $9C                   
CODE_27B2D3:        BNE CODE_27B2DC           
CODE_27B2D5:        BIT $18                   
CODE_27B2D7:        BVC CODE_27B2DC                   
CODE_27B2D9:        JSR CODE_27B3A3           
CODE_27B2DC:        LDA $1A46                 
CODE_27B2DF:        BNE CODE_27B2E4           
CODE_27B2E1:        BRL CODE_27B39A           

CODE_27B2E4:        DEC $1A46                 
CODE_27B2E7:        LDY #$00                  
CODE_27B2E9:        LDA $1A47                 
CODE_27B2EC:        SEC                       
CODE_27B2ED:        SBC $0543                 
CODE_27B2F0:        STA $0801,y               
CODE_27B2F3:        STA $0805,y               
CODE_27B2F6:        CLC                       
CODE_27B2F7:        ADC #$08                  
CODE_27B2F9:        STA $0809,y               
CODE_27B2FC:        STA $080D,y               
CODE_27B2FF:        LDA $027E                 
CODE_27B302:        XBA                       
CODE_27B303:        LDA $1A48                 
CODE_27B306:        REP #$20                  
CODE_27B308:        SEC                       
CODE_27B309:        SBC $0210                 
CODE_27B30C:        STA $D8                   
CODE_27B30E:        CLC                       
CODE_27B30F:        ADC #$0008                
CODE_27B312:        STA $DA                   
CODE_27B314:        SEP #$20                  
CODE_27B316:        LDA $D8                   
CODE_27B318:        STA $0800,y               
CODE_27B31B:        STA $0808,y               
CODE_27B31E:        LDA $DA                   
CODE_27B320:        STA $0804,y               
CODE_27B323:        STA $080C,y               
CODE_27B326:        LDA #$56                  
CODE_27B328:        STA $0802,y               
CODE_27B32B:        STA $0806,y               
CODE_27B32E:        INC A                     
CODE_27B32F:        STA $080A,y               
CODE_27B332:        STA $080E,y               
CODE_27B335:        LDA $15                   
CODE_27B337:        LSR A                     
CODE_27B338:        LSR A                     
CODE_27B339:        LSR A                     
CODE_27B33A:        ROR A                     
CODE_27B33B:        AND #$80                  
CODE_27B33D:        STA $00                   
CODE_27B33F:        LDA $15                   
CODE_27B341:        AND #$03                  
CODE_27B343:        ASL A                     
CODE_27B344:        ORA #$20                  
CODE_27B346:        ORA $00                   
CODE_27B348:        STA $0803,y               
CODE_27B34B:        STA $080B,y               
CODE_27B34E:        EOR #$C0                  
CODE_27B350:        STA $0807,y               
CODE_27B353:        STA $080F,y               
CODE_27B356:        LDA $0803,y               
CODE_27B359:        AND #$80                  
CODE_27B35B:        BEQ CODE_27B36B           
CODE_27B35D:        LDA $0802,y               
CODE_27B360:        PHA                       
CODE_27B361:        LDA $080A,y               
CODE_27B364:        STA $0802,y               
CODE_27B367:        PLA                       
CODE_27B368:        STA $080A,y               
CODE_27B36B:        LDA $0807,y               
CODE_27B36E:        AND #$80                  
CODE_27B370:        BEQ CODE_27B380           
CODE_27B372:        LDA $0806,y               
CODE_27B375:        PHA                       
CODE_27B376:        LDA $080E,y               
CODE_27B379:        STA $0806,y               
CODE_27B37C:        PLA                       
CODE_27B37D:        STA $080E,y               
CODE_27B380:        PHY                       
CODE_27B381:        TYA                       
CODE_27B382:        LSR A                     
CODE_27B383:        LSR A                     
CODE_27B384:        TAY                       
CODE_27B385:        LDA $D9                   
CODE_27B387:        AND #$01                  
CODE_27B389:        STA $0A20,y               
CODE_27B38C:        STA $0A22,y               
CODE_27B38F:        LDA $DB                   
CODE_27B391:        AND #$01                  
CODE_27B393:        STA $0A21,y               
CODE_27B396:        STA $0A23,y               
CODE_27B399:        PLY                       
CODE_27B39A:        LDA $0556                 
CODE_27B39D:        BNE CODE_27B3A2           
CODE_27B39F:        JSR CODE_27DDC8           
CODE_27B3A2:        RTL                       

CODE_27B3A3:        LDX #$01                  
CODE_27B3A5:        LDA $1CE1,x               
CODE_27B3A8:        BEQ CODE_27B3AE           
CODE_27B3AA:        DEX                       
CODE_27B3AB:        BPL CODE_27B3A5           
CODE_27B3AD:        RTS                       

CODE_27B3AE:        LDA #$06                  
CODE_27B3B0:        STA $1203                 
CODE_27B3B3:        LDA #$0B                  
CODE_27B3B5:        STA $0513                 
CODE_27B3B8:        LDA $5E                   
CODE_27B3BA:        CLC                       
CODE_27B3BB:        ADC #$04                  
CODE_27B3BD:        STA $1CE5,x               
CODE_27B3C0:        LDA $43                   
CODE_27B3C2:        ADC #$00                  
CODE_27B3C4:        STA $0247,x               
CODE_27B3C7:        LDA $0425                 
CODE_27B3CA:        BEQ CODE_27B3E1           
CODE_27B3CC:        LDA $BD                   
CODE_27B3CE:        AND #$40                  
CODE_27B3D0:        BEQ CODE_27B3E1           
CODE_27B3D2:        LDA $1CE5,x               
CODE_27B3D5:        CMP #$F8                  
CODE_27B3D7:        BCC CODE_27B3E1           
CODE_27B3D9:        LDA #$00                  
CODE_27B3DB:        STA $1CE5,x               
CODE_27B3DE:        STA $0247,x               
CODE_27B3E1:        LDA $70                   
CODE_27B3E3:        STA $1CE3,x               
CODE_27B3E6:        LDA $55                   
CODE_27B3E8:        STA $05FA,x               
CODE_27B3EB:        LDA #$01                  
CODE_27B3ED:        LDY $BB                   
CODE_27B3EF:        CPY #$06                  
CODE_27B3F1:        SEC                       
CODE_27B3F2:        BNE CODE_27B3F5           
CODE_27B3F4:        ASL A                     
CODE_27B3F5:        STA $1CE1,x               
CODE_27B3F8:        LDA #$03                  
CODE_27B3FA:        BCS CODE_27B3FE                   
CODE_27B3FC:        LDA #$FD                  
CODE_27B3FE:        STA $1CE7,x               
CODE_27B401:        LDA #$00                  
CODE_27B403:        STA $00                   
CODE_27B405:        LDA #$03                  
CODE_27B407:        BCS CODE_27B416                   
CODE_27B409:        LDA $BD                   
CODE_27B40B:        ASL A                     
CODE_27B40C:        EOR $8B                   
CODE_27B40E:        BPL CODE_27B414           
CODE_27B410:        LDA $8B                   
CODE_27B412:        STA $00                   
CODE_27B414:        LDA #$10                  
CODE_27B416:        LDY $BD                   
CODE_27B418:        BNE CODE_27B41E           
CODE_27B41A:        JSL CODE_27A859           
CODE_27B41E:        CLC                       
CODE_27B41F:        ADC $00                   
CODE_27B421:        STA $1CE9,x               
CODE_27B424:        STZ $1CED,x               
CODE_27B427:        STZ $1CEB,x               
CODE_27B42A:        RTS                       

CODE_27B42B:        RTS                       

CODE_27B42C:        LDX #$01                  
CODE_27B42E:        STX $9B                   
CODE_27B430:        JSR CODE_27B436           
CODE_27B433:        DEC $9B                   
CODE_27B435:        DEX                       
CODE_27B436:        LDA $1CE1,x               
CODE_27B439:        BEQ CODE_27B42B           
CODE_27B43B:        CMP #$03                  
CODE_27B43D:        BCC CODE_27B442           
CODE_27B43F:        JMP CODE_27B95E           

CODE_27B442:        LDA $05FE                 
CODE_27B445:        BEQ CODE_27B466           
CODE_27B447:        LDA $9C                   
CODE_27B449:        BNE CODE_27B466           
CODE_27B44B:        LDA $1CE5,x               
CODE_27B44E:        CLC                       
CODE_27B44F:        ADC $7E3952               
CODE_27B453:        STA $1CE5,x               
CODE_27B456:        LDA $1CE3,x               
CODE_27B459:        CLC                       
CODE_27B45A:        ADC $7E3953               
CODE_27B45E:        STA $1CE3,x               
CODE_27B461:        BCC CODE_27B466           
CODE_27B463:        INC $05FA,x               
CODE_27B466:        LDY $9C                   
CODE_27B468:        BNE CODE_27B4CC           
CODE_27B46A:        LDA $1CE7,x               
CODE_27B46D:        LDY $05FC                 
CODE_27B470:        BEQ CODE_27B476           
CODE_27B472:        CLC                       
CODE_27B473:        ADC $0780                 
CODE_27B476:        PHA                       
CODE_27B477:        LDY #$00                  
CODE_27B479:        PLA                       
CODE_27B47A:        BPL CODE_27B47D           
CODE_27B47C:        DEY                       
CODE_27B47D:        CLC                       
CODE_27B47E:        ADC $1CE3,x               
CODE_27B481:        STA $1CE3,x               
CODE_27B484:        TYA                       
CODE_27B485:        ADC $05FA,x               
CODE_27B488:        STA $05FA,x               
CODE_27B48B:        INC $1CED,x               
CODE_27B48E:        LDA $1CE1,x               
CODE_27B491:        CMP #$02                  
CODE_27B493:        BNE CODE_27B4CF           
CODE_27B495:        LDA $1CE9,x               
CODE_27B498:        ASL A                     
CODE_27B499:        ASL A                     
CODE_27B49A:        ASL A                     
CODE_27B49B:        ASL A                     
CODE_27B49C:        CLC                       
CODE_27B49D:        ADC $1A55,x               
CODE_27B4A0:        STA $1A55,x               
CODE_27B4A3:        PHP                       
CODE_27B4A4:        LDA $1CE9,x               
CODE_27B4A7:        LSR A                     
CODE_27B4A8:        LSR A                     
CODE_27B4A9:        LSR A                     
CODE_27B4AA:        LSR A                     
CODE_27B4AB:        CMP #$08                  
CODE_27B4AD:        LDY #$00                  
CODE_27B4AF:        BCC CODE_27B4B4           
CODE_27B4B1:        ORA #$F0                  
CODE_27B4B3:        DEY                       
CODE_27B4B4:        PLP                       
CODE_27B4B5:        ADC $1CE5,x               
CODE_27B4B8:        STA $1CE5,x               
CODE_27B4BB:        TYA                       
CODE_27B4BC:        ADC $0247,x               
CODE_27B4BF:        STA $0247,x               
CODE_27B4C2:        LDA $1CED,x               
CODE_27B4C5:        AND #$07                  
CODE_27B4C7:        BNE CODE_27B4CC           
CODE_27B4C9:        INC $1CE7,x               
CODE_27B4CC:        JMP CODE_27B505           

CODE_27B4CF:        LDA $0247,x               
CODE_27B4D2:        XBA                       
CODE_27B4D3:        LDA $1CE5,x               
CODE_27B4D6:        REP #$20                  
CODE_27B4D8:        STA $D8                   
CODE_27B4DA:        LDA $1CE9,x               
CODE_27B4DD:        AND #$00FF                
CODE_27B4E0:        CMP #$0080                
CODE_27B4E3:        BCC CODE_27B4E8           
CODE_27B4E5:        ORA #$FF00                
CODE_27B4E8:        CLC                       
CODE_27B4E9:        ADC $D8                   
CODE_27B4EB:        SEP #$20                  
CODE_27B4ED:        STA $1CE5,x               
CODE_27B4F0:        XBA                       
CODE_27B4F1:        STA $0247,x               
CODE_27B4F4:        LDA $1CE7,x               
CODE_27B4F7:        CMP #$04                  
CODE_27B4F9:        BEQ CODE_27B505           
CODE_27B4FB:        LDA $1CED,x               
CODE_27B4FE:        AND #$03                  
CODE_27B500:        BNE CODE_27B505           
CODE_27B502:        INC $1CE7,x               
CODE_27B505:        LDA $0247,x               
CODE_27B508:        XBA                       
CODE_27B509:        LDA $1CE5,x               
CODE_27B50C:        REP #$20                  
CODE_27B50E:        SEC                       
CODE_27B50F:        SBC $0210                 
CODE_27B512:        STA $DC                   
CODE_27B514:        CMP #$0100                
CODE_27B517:        BCC CODE_27B51E           
CODE_27B519:        CMP #$FFF8                
CODE_27B51C:        BCC CODE_27B526           
CODE_27B51E:        STA $0D                   
CODE_27B520:        SEP #$20                  
CODE_27B522:        STA $01                   
CODE_27B524:        BRA CODE_27B52E           

CODE_27B526:        SEP #$30                  
CODE_27B528:        LDA #$00                  
CODE_27B52A:        STA $1CE1,x               
CODE_27B52D:        RTS                       

CODE_27B52E:        ADC #$08                  
CODE_27B530:        STA $0D                   
CODE_27B532:        LDA $05FA,x               
CODE_27B535:        XBA                       
CODE_27B536:        LDA $1CE3,x               
CODE_27B539:        REP #$20                  
CODE_27B53B:        SEC                       
CODE_27B53C:        SBC $0216                 
CODE_27B53F:        STA $D8                   
CODE_27B541:        CMP #$00C0                
CODE_27B544:        BCC CODE_27B55E           
CODE_27B546:        CMP #$FFE0                
CODE_27B549:        BCS CODE_27B55E                   
CODE_27B54B:        SEP #$20                  
CODE_27B54D:        LDA $1CE1,x               
CODE_27B550:        CMP #$02                  
CODE_27B552:        BNE CODE_27B55B           
CODE_27B554:        LDA $D9                   
CODE_27B556:        BPL CODE_27B55B           
CODE_27B558:        BRL CODE_27B693           

CODE_27B55B:        BRL CODE_27B526           

CODE_27B55E:        SEP #$20                  
CODE_27B560:        JSR CODE_27D728           
CODE_27B563:        REP #$10                  
CODE_27B565:        LDY $C6,x                 
CODE_27B567:        LDA $01                   
CODE_27B569:        STA $0800,y               
CODE_27B56C:        STA $0804,y               
CODE_27B56F:        LDA $1CE3,x               
CODE_27B572:        SEC                       
CODE_27B573:        SBC $0543                 
CODE_27B576:        STA $0801,y               
CODE_27B579:        PHA                       
CODE_27B57A:        ADC #$0E                  
CODE_27B57C:        STA $0C                   
CODE_27B57E:        PLA                       
CODE_27B57F:        CLC                       
CODE_27B580:        ADC #$08                  
CODE_27B582:        STA $0805,y               
CODE_27B585:        REP #$20                  
CODE_27B587:        TYA                       
CODE_27B588:        LSR A                     
CODE_27B589:        LSR A                     
CODE_27B58A:        TAY                       
CODE_27B58B:        SEP #$20                  
CODE_27B58D:        LDA $DD                   
CODE_27B58F:        AND #$01                  
CODE_27B591:        STA $0A20,y               
CODE_27B594:        STA $0A21,y               
CODE_27B597:        SEP #$10                  
CODE_27B599:        LDA $1CE9,x               
CODE_27B59C:        LSR A                     
CODE_27B59D:        AND #$40                  
CODE_27B59F:        STA $02                   
CODE_27B5A1:        LDA $1CE1,x               
CODE_27B5A4:        CMP #$02                  
CODE_27B5A6:        BEQ CODE_27B5AB           
CODE_27B5A8:        BRL CODE_27B64B           

CODE_27B5AB:        LDA $BB                   
CODE_27B5AD:        CMP #$06                  
CODE_27B5AF:        BEQ CODE_27B5B4           
CODE_27B5B1:        BRL CODE_27B6A8           

CODE_27B5B4:        REP #$30                  
CODE_27B5B6:        LDY $C6,x                 
CODE_27B5B8:        LDA $1CED,x               
CODE_27B5BB:        LSR A                     
CODE_27B5BC:        LSR A                     
CODE_27B5BD:        AND #$0003                
CODE_27B5C0:        TAX                       
CODE_27B5C1:        LDA $0588                 
CODE_27B5C4:        AND #$00FF                
CODE_27B5C7:        STA $D8                   
CODE_27B5C9:        SEP #$20                  
CODE_27B5CB:        LDA $C6F9,x               
CODE_27B5CE:        BIT $02                   
CODE_27B5D0:        BVC CODE_27B5D4                   
CODE_27B5D2:        EOR #$06                  
CODE_27B5D4:        STA $DA                   
CODE_27B5D6:        STZ $DB                   
CODE_27B5D8:        CLC                       
CODE_27B5D9:        ADC $01                   
CODE_27B5DB:        STA $0800,y               
CODE_27B5DE:        STA $0804,y               
CODE_27B5E1:        LDA $C6F8,x               
CODE_27B5E4:        CLC                       
CODE_27B5E5:        ADC $0801,y               
CODE_27B5E8:        STA $0801,y               
CODE_27B5EB:        CLC                       
CODE_27B5EC:        ADC #$08                  
CODE_27B5EE:        STA $0805,y               
CODE_27B5F1:        LDA #$EE                  
CODE_27B5F3:        STA $0802,y               
CODE_27B5F6:        INC A                     
CODE_27B5F7:        STA $0806,y               
CODE_27B5FA:        LDA $02                   
CODE_27B5FC:        EOR $C6F4,x               
CODE_27B5FF:        SEC                       
CODE_27B600:        ORA #$21                  
CODE_27B602:        LDX $D8                   
CODE_27B604:        BEQ CODE_27B60A           
CODE_27B606:        AND #$CF                  
CODE_27B608:        ORA #$10                  
CODE_27B60A:        STA $0803,y               
CODE_27B60D:        STA $0807,y               
CODE_27B610:        AND #$80                  
CODE_27B612:        BEQ CODE_27B622           
CODE_27B614:        LDA $0802,y               
CODE_27B617:        PHA                       
CODE_27B618:        LDA $0806,y               
CODE_27B61B:        STA $0802,y               
CODE_27B61E:        PLA                       
CODE_27B61F:        STA $0806,y               
CODE_27B622:        PHY                       
CODE_27B623:        LDX $9B                   
CODE_27B625:        LDA $0247,x               
CODE_27B628:        XBA                       
CODE_27B629:        LDA $1CE5,x               
CODE_27B62C:        REP #$20                  
CODE_27B62E:        SEC                       
CODE_27B62F:        SBC $0210                 
CODE_27B632:        CLC                       
CODE_27B633:        ADC $DA                   
CODE_27B635:        STA $DC                   
CODE_27B637:        TYA                       
CODE_27B638:        LSR A                     
CODE_27B639:        LSR A                     
CODE_27B63A:        TAY                       
CODE_27B63B:        SEP #$20                  
CODE_27B63D:        LDA $DD                   
CODE_27B63F:        AND #$01                  
CODE_27B641:        STA $0A20,y               
CODE_27B644:        STA $0A21,y               
CODE_27B647:        PLY                       
CODE_27B648:        BRL CODE_27B693           

CODE_27B64B:        LDA $0588                 
CODE_27B64E:        STA $D8                   
CODE_27B650:        STZ $D9                   
CODE_27B652:        REP #$30                  
CODE_27B654:        LDY $C6,x                 
CODE_27B656:        LDA $0565                 
CODE_27B659:        LSR A                     
CODE_27B65A:        LSR A                     
CODE_27B65B:        AND #$0003                
CODE_27B65E:        TAX                       
CODE_27B65F:        SEP #$20                  
CODE_27B661:        LDA $C6EC,x               
CODE_27B664:        STA $0802,y               
CODE_27B667:        INC A                     
CODE_27B668:        STA $0806,y               
CODE_27B66B:        LDA $02                   
CODE_27B66D:        EOR $C6F0,x               
CODE_27B670:        CLC                       
CODE_27B671:        ORA #$20                  
CODE_27B673:        LDX $D8                   
CODE_27B675:        BEQ CODE_27B67B           
CODE_27B677:        AND #$CF                  
CODE_27B679:        ORA #$10                  
CODE_27B67B:        STA $0803,y               
CODE_27B67E:        STA $0807,y               
CODE_27B681:        AND #$80                  
CODE_27B683:        BEQ CODE_27B693           
CODE_27B685:        LDA $0802,y               
CODE_27B688:        PHA                       
CODE_27B689:        LDA $0806,y               
CODE_27B68C:        STA $0802,y               
CODE_27B68F:        PLA                       
CODE_27B690:        STA $0806,y               
CODE_27B693:        SEP #$10                  
CODE_27B695:        LDX $9B                   
CODE_27B697:        LDA $9C                   
CODE_27B699:        BNE CODE_27B6AD           
CODE_27B69B:        LDA $1CE1,x               
CODE_27B69E:        CMP #$02                  
CODE_27B6A0:        BEQ CODE_27B6A5           
CODE_27B6A2:        JSR CODE_27B6AE           
CODE_27B6A5:        JMP CODE_27B890           

CODE_27B6A8:        LDA #$03                  
CODE_27B6AA:        STA $1CE1,x               
CODE_27B6AD:        RTS                       

CODE_27B6AE:        LDA $0425                 
CODE_27B6B1:        BEQ CODE_27B6EB           
CODE_27B6B3:        LDA $0C                   
CODE_27B6B5:        CLC                       
CODE_27B6B6:        ADC $0543                 
CODE_27B6B9:        STA $05                   
CODE_27B6BB:        AND #$F0                  
CODE_27B6BD:        STA $02                   
CODE_27B6BF:        LDA $0542                 
CODE_27B6C2:        ADC #$20                  
CODE_27B6C4:        STA $01                   
CODE_27B6C6:        STA $D9                   
CODE_27B6C8:        CLC                       
CODE_27B6C9:        ADC #$20                  
CODE_27B6CB:        STA $DC                   
CODE_27B6CD:        LDA $1CE5,x               
CODE_27B6D0:        ADC #$04                  
CODE_27B6D2:        STA $0D                   
CODE_27B6D4:        LSR A                     
CODE_27B6D5:        LSR A                     
CODE_27B6D6:        LSR A                     
CODE_27B6D7:        LSR A                     
CODE_27B6D8:        ORA $02                   
CODE_27B6DA:        STA $00                   
CODE_27B6DC:        STA $D8                   
CODE_27B6DE:        STA $DB                   
CODE_27B6E0:        LDA #$7E                  
CODE_27B6E2:        STA $DA                   
CODE_27B6E4:        STA $DD                   
CODE_27B6E6:        LDY #$00                  
CODE_27B6E8:        JMP CODE_27B759           

CODE_27B6EB:        LDA $058B                 
CODE_27B6EE:        BEQ CODE_27B702           
CODE_27B6F0:        LDA $0C                   
CODE_27B6F2:        CMP #$A0                  
CODE_27B6F4:        BCC CODE_27B704           
CODE_27B6F6:        SBC #$10                  
CODE_27B6F8:        STA $05                   
CODE_27B6FA:        AND #$F0                  
CODE_27B6FC:        STA $02                   
CODE_27B6FE:        LDA #$01                  
CODE_27B700:        BRA CODE_27B713           

CODE_27B702:        LDA $0C                   
CODE_27B704:        CLC                       
CODE_27B705:        ADC $0543                 
CODE_27B708:        STA $05                   
CODE_27B70A:        AND #$F0                  
CODE_27B70C:        STA $02                   
CODE_27B70E:        LDA $0542                 
CODE_27B711:        ADC #$00                  
CODE_27B713:        STA $03                   
CODE_27B715:        BEQ CODE_27B724           
CODE_27B717:        CMP #$02                  
CODE_27B719:        BCS CODE_27B721                   
CODE_27B71B:        LDA $02                   
CODE_27B71D:        CMP #$B0                  
CODE_27B71F:        BCC CODE_27B724           
CODE_27B721:        BRL CODE_27B7A0           

CODE_27B724:        LDA $1CE5,x               
CODE_27B727:        STA $04                   
CODE_27B729:        PHX                       
CODE_27B72A:        LDA $0247,x               
CODE_27B72D:        STA $06                   
CODE_27B72F:        ASL A                     
CODE_27B730:        TAX                       
CODE_27B731:        LDA $218200,x             
CODE_27B735:        STA $D8                   
CODE_27B737:        STA $DB                   
CODE_27B739:        LDA $03                   
CODE_27B73B:        AND #$01                  
CODE_27B73D:        CLC                       
CODE_27B73E:        ADC $218201,x             
CODE_27B742:        STA $D9                   
CODE_27B744:        CLC                       
CODE_27B745:        ADC #$20                  
CODE_27B747:        STA $DC                   
CODE_27B749:        PLX                       
CODE_27B74A:        LDA $04                   
CODE_27B74C:        LSR A                     
CODE_27B74D:        LSR A                     
CODE_27B74E:        LSR A                     
CODE_27B74F:        LSR A                     
CODE_27B750:        ORA $02                   
CODE_27B752:        TAY                       
CODE_27B753:        LDA #$7E                  
CODE_27B755:        STA $DA                   
CODE_27B757:        STA $DD                   
CODE_27B759:        LDA [$DB],y               
CODE_27B75B:        BEQ CODE_27B775           
CODE_27B75D:        LDA [$D8],y               
CODE_27B75F:        TAY                       
CODE_27B760:        PHX                       
CODE_27B761:        LDA $070A                 
CODE_27B764:        ASL A                     
CODE_27B765:        TAX                       
CODE_27B766:        LDA $AB57,x               
CODE_27B769:        STA $DB                   
CODE_27B76B:        LDA $AB58,x               
CODE_27B76E:        STA $DC                   
CODE_27B770:        LDA ($DB),y               
CODE_27B772:        PLX                       
CODE_27B773:        BRA CODE_27B777           

CODE_27B775:        LDA [$D8],y               
CODE_27B777:        JSL CODE_278ED2           
CODE_27B77B:        PHA                       
CODE_27B77C:        ASL A                     
CODE_27B77D:        ROL A                     
CODE_27B77E:        ROL A                     
CODE_27B77F:        AND #$03                  
CODE_27B781:        TAY                       
CODE_27B782:        STY $01                   
CODE_27B784:        PLA                       
CODE_27B785:        STA $00                   
CODE_27B787:        CMP $1E96,y               
CODE_27B78A:        BCC CODE_27B7A0           
CODE_27B78C:        CMP $1E9A,y               
CODE_27B78F:        BCC CODE_27B7E8           
CODE_27B791:        LDY $0560                 
CODE_27B794:        CPY #$0B                  
CODE_27B796:        BNE CODE_27B7AF           
CODE_27B798:        CMP #$56                  
CODE_27B79A:        BNE CODE_27B7A6           
CODE_27B79C:        LDA #$10                  
CODE_27B79E:        BNE CODE_27B7AC           
CODE_27B7A0:        LDA #$00                  
CODE_27B7A2:        STA $1CEB,x               
CODE_27B7A5:        RTS                       

CODE_27B7A6:        CMP #$55                  
CODE_27B7A8:        BNE CODE_27B7AF           
CODE_27B7AA:        LDA #$11                  
CODE_27B7AC:        JSR CODE_27B7F6           
CODE_27B7AF:        LDA $00                   
CODE_27B7B1:        LDY $0563                 
CODE_27B7B4:        BEQ CODE_27B7C2           
CODE_27B7B6:        CMP #$37                  
CODE_27B7B8:        BEQ CODE_27B7DD           
CODE_27B7BA:        CMP #$AB                  
CODE_27B7BC:        BEQ CODE_27B7DD           
CODE_27B7BE:        CMP #$F9                  
CODE_27B7C0:        BEQ CODE_27B7DD           
CODE_27B7C2:        INC $1CEB,x               
CODE_27B7C5:        LDA $1CEB,x               
CODE_27B7C8:        CMP #$02                  
CODE_27B7CA:        BNE CODE_27B7CF           
CODE_27B7CC:        JMP CODE_27B884           

CODE_27B7CF:        LDA $1CE3,x               
CODE_27B7D2:        SEC                       
CODE_27B7D3:        SBC #$02                  
CODE_27B7D5:        STA $1CE3,x               
CODE_27B7D8:        BCS CODE_27B7DD                   
CODE_27B7DA:        DEC $05FA,x               
CODE_27B7DD:        LDA #$FD                  
CODE_27B7DF:        STA $1CE7,x               
CODE_27B7E2:        LDA #$03                  
CODE_27B7E4:        STA $1CED,x               
CODE_27B7E7:        RTS                       

CODE_27B7E8:        LDA $0563                 
CODE_27B7EB:        BNE CODE_27B827           
CODE_27B7ED:        LDA $05                   
CODE_27B7EF:        AND #$0F                  
CODE_27B7F1:        CMP #$05                  
CODE_27B7F3:        BCC CODE_27B7DD           
CODE_27B7F5:        RTS                       

CODE_27B7F6:        STA $0564                 
CODE_27B7F9:        JSL CODE_279544           
CODE_27B7FD:        LDA #$01                  
CODE_27B7FF:        STA $1F9C                 
CODE_27B802:        LDA $02                   
CODE_27B804:        STA $052B                 
CODE_27B807:        SBC $0543                 
CODE_27B80A:        STA $1F9F                 
CODE_27B80D:        LDA $03                   
CODE_27B80F:        STA $052A                 
CODE_27B812:        LDA $04                   
CODE_27B814:        AND #$F0                  
CODE_27B816:        STA $0529                 
CODE_27B819:        SBC $0210                 
CODE_27B81C:        STA $1FA2                 
CODE_27B81F:        LDA $06                   
CODE_27B821:        STA $0528                 
CODE_27B824:        JMP CODE_27B6A8           

CODE_27B827:        LDA $05                   
CODE_27B829:        AND #$0F                  
CODE_27B82B:        STA $05                   
CODE_27B82D:        LDA $04                   
CODE_27B82F:        AND #$0F                  
CODE_27B831:        STA $04                   
CODE_27B833:        LDY $01                   
CODE_27B835:        TYA                       
CODE_27B836:        ASL A                     
CODE_27B837:        TAX                       
CODE_27B838:        LDA $AAD0,x               
CODE_27B83B:        STA $02                   
CODE_27B83D:        LDA $AAD1,x               
CODE_27B840:        STA $03                   
CODE_27B842:        LDY $01                   
CODE_27B844:        LDX $9B                   
CODE_27B846:        LDA $00                   
CODE_27B848:        SEC                       
CODE_27B849:        SBC $1E96,y               
CODE_27B84C:        TAY                       
CODE_27B84D:        LDA ($02),y               
CODE_27B84F:        TAY                       
CODE_27B850:        LDA $AD70,y               
CODE_27B853:        CMP #$80                  
CODE_27B855:        BEQ CODE_27B884           
CODE_27B857:        STA $06                   
CODE_27B859:        TYA                       
CODE_27B85A:        ASL A                     
CODE_27B85B:        ASL A                     
CODE_27B85C:        ASL A                     
CODE_27B85D:        ASL A                     
CODE_27B85E:        CLC                       
CODE_27B85F:        ADC $04                   
CODE_27B861:        TAY                       
CODE_27B862:        LDA $AC0B,y               
CODE_27B865:        AND #$0F                  
CODE_27B867:        STA $01                   
CODE_27B869:        LDA $05                   
CODE_27B86B:        CMP #$0C                  
CODE_27B86D:        BCS CODE_27B873                   
CODE_27B86F:        CMP $01                   
CODE_27B871:        BCC CODE_27B88F           
CODE_27B873:        LDA $06                   
CODE_27B875:        BEQ CODE_27B88C           
CODE_27B877:        LDY #$FB                  
CODE_27B879:        EOR $1CE9,x               
CODE_27B87C:        BMI CODE_27B880           
CODE_27B87E:        LDY #$FE                  
CODE_27B880:        TYA                       
CODE_27B881:        JMP CODE_27B7DF           

CODE_27B884:        LDA #$01                  
CODE_27B886:        STA $1200                 
CODE_27B889:        JMP CODE_27B6A8           

CODE_27B88C:        JMP CODE_27B7DD           

CODE_27B88F:        RTS                       

CODE_27B890:        LDY #$04                  
CODE_27B892:        LDA $0651,y               
CODE_27B895:        ORA $0681,y               
CODE_27B898:        BNE CODE_27B8B1           
CODE_27B89A:        LDX $0661,y               
CODE_27B89D:        LDA $B033,x               
CODE_27B8A0:        BNE CODE_27B8B1           
CODE_27B8A2:        LDX $0671,y               
CODE_27B8A5:        LDA $AE78,x               
CODE_27B8A8:        STA $00                   
CODE_27B8AA:        AND #$20                  
CODE_27B8AC:        BNE CODE_27B8B1           
CODE_27B8AE:        JSR CODE_27B8B9           
CODE_27B8B1:        DEY                       
CODE_27B8B2:        BPL CODE_27B892           
CODE_27B8B4:        LDX $9B                   
CODE_27B8B6:        SEP #$20                  
CODE_27B8B8:        RTS                       

CODE_27B8B9:        LDA $00                   
CODE_27B8BB:        AND #$0F                  
CODE_27B8BD:        TAX                       
CODE_27B8BE:        STX $01                   
CODE_27B8C0:        LDA $C6FD,x               
CODE_27B8C3:        STA $DA                   
CODE_27B8C5:        STZ $DB                   
CODE_27B8C7:        LDA $C70D,x               
CODE_27B8CA:        STA $DC                   
CODE_27B8CC:        STZ $DD                   
CODE_27B8CE:        LDX $9B                   
CODE_27B8D0:        LDA $0071,y               
CODE_27B8D3:        STA $D8                   
CODE_27B8D5:        LDA $0056,y               
CODE_27B8D8:        STA $D9                   
CODE_27B8DA:        LDA $05FA,x               
CODE_27B8DD:        XBA                       
CODE_27B8DE:        LDA $1CE3,x               
CODE_27B8E1:        REP #$20                  
CODE_27B8E3:        CLC                       
CODE_27B8E4:        ADC #$000E                
CODE_27B8E7:        SEC                       
CODE_27B8E8:        SBC $D8                   
CODE_27B8EA:        CMP $DA                   
CODE_27B8EC:        BCS CODE_27B8B6                   
CODE_27B8EE:        SEP #$20                  
CODE_27B8F0:        LDA $005F,y               
CODE_27B8F3:        STA $D8                   
CODE_27B8F5:        LDA $0044,y               
CODE_27B8F8:        STA $D9                   
CODE_27B8FA:        LDA $0247,x               
CODE_27B8FD:        XBA                       
CODE_27B8FE:        LDA $1CE5,x               
CODE_27B901:        REP #$20                  
CODE_27B903:        CLC                       
CODE_27B904:        ADC #$0008                
CODE_27B907:        SEC                       
CODE_27B908:        SBC $D8                   
CODE_27B90A:        CMP $DC                   
CODE_27B90C:        BCS CODE_27B8B6
CODE_27B90E:        SEP #$20                  
CODE_27B910:        LDA $1CE1,x               
CODE_27B913:        CMP #$02                  
CODE_27B915:        BEQ CODE_27B91C           
CODE_27B917:        JSR CODE_27B6A8           
CODE_27B91A:        BRA CODE_27B922           

CODE_27B91C:        LDA $00                   
CODE_27B91E:        BMI CODE_27B95A           
CODE_27B920:        BPL CODE_27B928           
CODE_27B922:        LDA $00                   
CODE_27B924:        AND #$40                  
CODE_27B926:        BNE CODE_27B95B           
CODE_27B928:        LDA #$03                  
CODE_27B92A:        STA $1200                 
CODE_27B92D:        LDA $1CF6,y               
CODE_27B930:        BEQ CODE_27B939           
CODE_27B932:        SEC                       
CODE_27B933:        SBC #$01                  
CODE_27B935:        STA $1CF6,y               
CODE_27B938:        RTS                       

CODE_27B939:        LDA #$CC                  
CODE_27B93B:        STA $009E,y               
CODE_27B93E:        LDA $1CE9,x               
CODE_27B941:        ASL A                     
CODE_27B942:        LDA #$0C                  
CODE_27B944:        BCC CODE_27B948           
CODE_27B946:        LDA #$F4                  
CODE_27B948:        STA $008C,y               
CODE_27B94B:        TYA                       
CODE_27B94C:        TAX                       
CODE_27B94D:        LDA #$05                  
CODE_27B94F:        JSL CODE_278A94           
CODE_27B953:        LDX $9B                   
CODE_27B955:        LDA #$06                  
CODE_27B957:        STA $0661,y               
CODE_27B95A:        RTS                       

CODE_27B95B:        JMP CODE_27B884           

CODE_27B95E:        LDY $9C                   
CODE_27B960:        BNE CODE_27B974           
CODE_27B962:        INC $1CE1,x               
CODE_27B965:        LDA $1CE1,x               
CODE_27B968:        CMP #$10                  
CODE_27B96A:        BNE CODE_27B974           
CODE_27B96C:        SEP #$30                  
CODE_27B96E:        LDA #$00                  
CODE_27B970:        STA $1CE1,x               
CODE_27B973:        RTS                       

CODE_27B974:        JSL CODE_27A19D           
CODE_27B978:        LDA $0247,x               
CODE_27B97B:        XBA                       
CODE_27B97C:        LDA $1CE5,x               
CODE_27B97F:        REP #$30                  
CODE_27B981:        SBC #$0004                
CODE_27B984:        SEC                       
CODE_27B985:        SBC $0210                 
CODE_27B988:        STA $D8                   
CODE_27B98A:        CLC                       
CODE_27B98B:        ADC #$0008                
CODE_27B98E:        STA $DA                   
CODE_27B990:        SEP #$20                  
CODE_27B992:        LDY $C6,x                 
CODE_27B994:        LDA $D8                   
CODE_27B996:        STA $0800,y               
CODE_27B999:        STA $0808,y               
CODE_27B99C:        LDA $DA                   
CODE_27B99E:        STA $0804,y               
CODE_27B9A1:        STA $080C,y               
CODE_27B9A4:        LDA $05FA,x               
CODE_27B9A7:        XBA                       
CODE_27B9A8:        LDA $1CE3,x               
CODE_27B9AB:        REP #$20                  
CODE_27B9AD:        SEC                       
CODE_27B9AE:        SBC $0216                 
CODE_27B9B1:        CMP #$00D0                
CODE_27B9B4:        BCS CODE_27B96C                   
CODE_27B9B6:        SEP #$20                  
CODE_27B9B8:        STA $0801,y               
CODE_27B9BB:        STA $0805,y               
CODE_27B9BE:        CLC                       
CODE_27B9BF:        ADC #$08                  
CODE_27B9C1:        STA $0809,y               
CODE_27B9C4:        STA $080D,y               
CODE_27B9C7:        REP #$20                  
CODE_27B9C9:        LDA $1CE1,x               
CODE_27B9CC:        AND #$00FF                
CODE_27B9CF:        LSR A                     
CODE_27B9D0:        LSR A                     
CODE_27B9D1:        TAX                       
CODE_27B9D2:        SEP #$20                  
CODE_27B9D4:        LDA $C71D,x               
CODE_27B9D7:        STA $0802,y               
CODE_27B9DA:        STA $080E,y               
CODE_27B9DD:        INC A                     
CODE_27B9DE:        STA $080A,y               
CODE_27B9E1:        STA $0806,y               
CODE_27B9E4:        LDA #$22                  
CODE_27B9E6:        STA $DC                   
CODE_27B9E8:        LDA $0588                 
CODE_27B9EB:        BEQ CODE_27B9F1           
CODE_27B9ED:        LDA #$12                  
CODE_27B9EF:        STA $DC                   
CODE_27B9F1:        LDA $DC                   
CODE_27B9F3:        STA $0803,y               
CODE_27B9F6:        STA $080B,y               
CODE_27B9F9:        ORA #$C0                  
CODE_27B9FB:        STA $0807,y               
CODE_27B9FE:        STA $080F,y               
CODE_27BA01:        REP #$20                  
CODE_27BA03:        TYA                       
CODE_27BA04:        LSR A                     
CODE_27BA05:        LSR A                     
CODE_27BA06:        TAY                       
CODE_27BA07:        SEP #$20                  
CODE_27BA09:        LDA $D9                   
CODE_27BA0B:        AND #$01                  
CODE_27BA0D:        STA $0A20,y               
CODE_27BA10:        STA $0A22,y               
CODE_27BA13:        LDA $DB                   
CODE_27BA15:        AND #$01                  
CODE_27BA17:        STA $0A21,y               
CODE_27BA1A:        STA $0A23,y               
CODE_27BA1D:        SEP #$10                  
CODE_27BA1F:        LDX $9B                   
CODE_27BA21:        RTS                       

CODE_27BA22:        LDY $056E                 
CODE_27BA25:        INY                       
CODE_27BA26:        BNE CODE_27BA2B           
CODE_27BA28:        STY $05F4                 
CODE_27BA2B:        LDY $9C                   
CODE_27BA2D:        BNE CODE_27BA21           
CODE_27BA2F:        LDA $0575                 
CODE_27BA32:        BEQ CODE_27BA21           
CODE_27BA34:        STY $05F4                 
CODE_27BA37:        CMP #$01                  
CODE_27BA39:        BNE CODE_27BA3E           
CODE_27BA3B:        BRL CODE_27BAE7           

CODE_27BA3E:        LDA $9D                   
CODE_27BA40:        CMP #$3C                  
CODE_27BA42:        BPL CODE_27BA4D           
CODE_27BA44:        INC $9D                   
CODE_27BA46:        LDA $15                   
CODE_27BA48:        LSR A                     
CODE_27BA49:        BCC CODE_27BA4D           
CODE_27BA4B:        INC $9D                   
CODE_27BA4D:        LDX #$00                  
CODE_27BA4F:        JSL CODE_27A19D           
CODE_27BA53:        BEQ CODE_27BA21           
CODE_27BA55:        LDA $0583                 
CODE_27BA58:        BNE CODE_27BA21           
CODE_27BA5A:        REP #$10                  
CODE_27BA5C:        LDY $C6,x                 
CODE_27BA5E:        LDA #$46                  
CODE_27BA60:        STA $0802,y               
CODE_27BA63:        STA $0806,y               
CODE_27BA66:        INC A                     
CODE_27BA67:        STA $080A,y               
CODE_27BA6A:        STA $080E,y               
CODE_27BA6D:        SEP #$10                  
CODE_27BA6F:        LDA $15                   
CODE_27BA71:        LSR A                     
CODE_27BA72:        AND #$03                  
CODE_27BA74:        CLC                       
CODE_27BA75:        ADC #$05                  
CODE_27BA77:        LDX $056F                 
CODE_27BA7A:        BNE CODE_27BA81           
CODE_27BA7C:        LDX $00BB                 
CODE_27BA7F:        BNE CODE_27BA84           
CODE_27BA81:        CLC                       
CODE_27BA82:        ADC #$0A                  
CODE_27BA84:        STA $00                   
CODE_27BA86:        LDX $9B                   
CODE_27BA88:        REP #$10                  
CODE_27BA8A:        LDY $C6,x                 
CODE_27BA8C:        LDA $82                   
CODE_27BA8E:        CLC                       
CODE_27BA8F:        ADC $00                   
CODE_27BA91:        SEC                       
CODE_27BA92:        SBC #$0A                  
CODE_27BA94:        STA $0801,y               
CODE_27BA97:        STA $0805,y               
CODE_27BA9A:        CLC                       
CODE_27BA9B:        ADC #$08                  
CODE_27BA9D:        STA $0809,y               
CODE_27BAA0:        STA $080D,y               
CODE_27BAA3:        LDA $79                   
CODE_27BAA5:        STA $0800,y               
CODE_27BAA8:        STA $0804,y               
CODE_27BAAB:        CLC                       
CODE_27BAAC:        ADC #$08                  
CODE_27BAAE:        STA $0808,y               
CODE_27BAB1:        STA $080C,y               
CODE_27BAB4:        REP #$20                  
CODE_27BAB6:        TYA                       
CODE_27BAB7:        LSR A                     
CODE_27BAB8:        LSR A                     
CODE_27BAB9:        TAY                       
CODE_27BABA:        SEP #$20                  
CODE_27BABC:        LDA #$00                  
CODE_27BABE:        STA $0A20,y               
CODE_27BAC1:        STA $0A21,y               
CODE_27BAC4:        STA $0A22,y               
CODE_27BAC7:        STA $0A23,y               
CODE_27BACA:        SEP #$10                  
CODE_27BACC:        LDA #$80                  
CODE_27BACE:        STA $DC                   
CODE_27BAD0:        LDA $79                   
CODE_27BAD2:        STA $D8                   
CODE_27BAD4:        STZ $D9                   
CODE_27BAD6:        LDA $79                   
CODE_27BAD8:        STA $DA                   
CODE_27BADA:        STZ $DB                   
CODE_27BADC:        LDA $15                   
CODE_27BADE:        AND #$03                  
CODE_27BAE0:        SEC                       
CODE_27BAE1:        SBC #$02                  
CODE_27BAE3:        JSR CODE_27BE00           
CODE_27BAE6:        RTS                       

CODE_27BAE7:        LDY #$7F                  
CODE_27BAE9:        LDA $17                   
CODE_27BAEB:        AND #$83                  
CODE_27BAED:        BEQ CODE_27BAF1           
CODE_27BAEF:        LDY #$3F                  
CODE_27BAF1:        TYA                       
CODE_27BAF2:        AND $15                   
CODE_27BAF4:        BNE CODE_27BB02           
CODE_27BAF6:        LDX #$02                  
CODE_27BAF8:        STX $9B                   
CODE_27BAFA:        LDA $1F7C,x               
CODE_27BAFD:        BEQ CODE_27BB03           
CODE_27BAFF:        DEX                       
CODE_27BB00:        BPL CODE_27BAF8           
CODE_27BB02:        RTS                       

CODE_27BB03:        LDA $0783                 
CODE_27BB06:        ORA #$10                  
CODE_27BB08:        STA $1F7C,x               
CODE_27BB0B:        LDY #$00                  
CODE_27BB0D:        LDA $BC                   
CODE_27BB0F:        CMP #$12                  
CODE_27BB11:        BCC CODE_27BB2B           
CODE_27BB13:        LDY #$03                  
CODE_27BB15:        CMP #$15                  
CODE_27BB17:        BCC CODE_27BB2B           
CODE_27BB19:        LDY #$00                  
CODE_27BB1B:        CMP #$1F                  
CODE_27BB1D:        BCC CODE_27BB2B           
CODE_27BB1F:        INY                       
CODE_27BB20:        CMP #$23                  
CODE_27BB22:        BCC CODE_27BB2B           
CODE_27BB24:        INY                       
CODE_27BB25:        CMP #$27                  
CODE_27BB27:        BCC CODE_27BB2B           
CODE_27BB29:        LDY #$00                  
CODE_27BB2B:        TYA                       
CODE_27BB2C:        ASL A                     
CODE_27BB2D:        TAY                       
CODE_27BB2E:        BIT $BD                   
CODE_27BB30:        BVC CODE_27BB33                   
CODE_27BB32:        INY                       
CODE_27BB33:        LDA #$00                  
CODE_27BB35:        LDX $BB                   
CODE_27BB37:        BNE CODE_27BB3B           
CODE_27BB39:        LDA #$08                  
CODE_27BB3B:        LDX $9B                   
CODE_27BB3D:        CLC                       
CODE_27BB3E:        ADC $70                   
CODE_27BB40:        ADC $C721,y               
CODE_27BB43:        STA $1F84,x               
CODE_27BB46:        LDA $55                   
CODE_27BB48:        ADC #$00                  
CODE_27BB4A:        STA $1F80,x               
CODE_27BB4D:        LDA $5E                   
CODE_27BB4F:        CLC                       
CODE_27BB50:        ADC $C729,y               
CODE_27BB53:        STA $1F8C,x               
CODE_27BB56:        LDA $43                   
CODE_27BB58:        ADC #$00                  
CODE_27BB5A:        STA $1F88,x               
CODE_27BB5D:        RTS                       

CODE_27BB5E:        LDX #$03                  
CODE_27BB60:        STX $9B                   
CODE_27BB62:        LDA $1F7C,x               
CODE_27BB65:        BEQ CODE_27BB6A           
CODE_27BB67:        JSR CODE_27BB6E           
CODE_27BB6A:        DEX                       
CODE_27BB6B:        BPL CODE_27BB60           
CODE_27BB6D:        RTS                       

CODE_27BB6E:        LDA $9C                   
CODE_27BB70:        BEQ CODE_27BB75           
CODE_27BB72:        JMP CODE_27BB90           

CODE_27BB75:        INC $1F7C,x               
CODE_27BB78:        LDA $1F7C,x               
CODE_27BB7B:        ORA #$80                  
CODE_27BB7D:        STA $1F7C,x               
CODE_27BB80:        AND #$30                  
CODE_27BB82:        BEQ CODE_27BB90           
CODE_27BB84:        DEC $1F84,x               
CODE_27BB87:        LDY $1F84,x               
CODE_27BB8A:        INY                       
CODE_27BB8B:        BNE CODE_27BB90           
CODE_27BB8D:        DEC $1F80,x               
CODE_27BB90:        LDA $0425                 
CODE_27BB93:        BEQ CODE_27BBB5           
CODE_27BB95:        LDA $1F84,x               
CODE_27BB98:        CLC                       
CODE_27BB99:        ADC #$0A                  
CODE_27BB9B:        AND #$F0                  
CODE_27BB9D:        STA $02                   
CODE_27BB9F:        LDA $1F80,x               
CODE_27BBA2:        ADC #$60                  
CODE_27BBA4:        STA $01                   
CODE_27BBA6:        LDA $1F8C,x               
CODE_27BBA9:        LSR A                     
CODE_27BBAA:        LSR A                     
CODE_27BBAB:        LSR A                     
CODE_27BBAC:        LSR A                     
CODE_27BBAD:        ORA $02                   
CODE_27BBAF:        STA $00                   
CODE_27BBB1:        LDY #$00                  
CODE_27BBB3:        BEQ CODE_27BBF5           
CODE_27BBB5:        LDA $1F84,x               
CODE_27BBB8:        CLC                       
CODE_27BBB9:        ADC #$02                  
CODE_27BBBB:        AND #$F0                  
CODE_27BBBD:        STA $02                   
CODE_27BBBF:        LDA $1F80,x               
CODE_27BBC2:        ADC #$00                  
CODE_27BBC4:        PHA                       
CODE_27BBC5:        LDA $1F8C,x               
CODE_27BBC8:        STA $04                   
CODE_27BBCA:        PLA                       
CODE_27BBCB:        STA $01                   
CODE_27BBCD:        PHX                       
CODE_27BBCE:        LDA $1F88,x               
CODE_27BBD1:        ASL A                     
CODE_27BBD2:        TAX                       
CODE_27BBD3:        LDA $218200,x             
CODE_27BBD7:        STA $00                   
CODE_27BBD9:        STA $D8                   
CODE_27BBDB:        LDA $01                   
CODE_27BBDD:        AND #$01                  
CODE_27BBDF:        CLC                       
CODE_27BBE0:        ADC $218201,x             
CODE_27BBE4:        STA $01                   
CODE_27BBE6:        CLC                       
CODE_27BBE7:        ADC #$20                  
CODE_27BBE9:        STA $D9                   
CODE_27BBEB:        PLX                       
CODE_27BBEC:        LDA $04                   
CODE_27BBEE:        LSR A                     
CODE_27BBEF:        LSR A                     
CODE_27BBF0:        LSR A                     
CODE_27BBF1:        LSR A                     
CODE_27BBF2:        ORA $02                   
CODE_27BBF4:        TAY                       
CODE_27BBF5:        LDA #$7E                  
CODE_27BBF7:        STA $02                   
CODE_27BBF9:        STA $DA                   
CODE_27BBFB:        LDA [$D8],y               
CODE_27BBFD:        BEQ CODE_27BC17           
CODE_27BBFF:        PHX                       
CODE_27BC00:        LDA $070A                 
CODE_27BC03:        ASL A                     
CODE_27BC04:        TAX                       
CODE_27BC05:        LDA $AB57,x               
CODE_27BC08:        STA $D8                   
CODE_27BC0A:        LDA $AB58,x               
CODE_27BC0D:        STA $D9                   
CODE_27BC0F:        LDA [$00],y               
CODE_27BC11:        TAY                       
CODE_27BC12:        LDA ($D8),y               
CODE_27BC14:        PLX                       
CODE_27BC15:        BRA CODE_27BC19           

CODE_27BC17:        LDA [$00],y               
CODE_27BC19:        PHA                       
CODE_27BC1A:        ASL A                     
CODE_27BC1B:        ROL A                     
CODE_27BC1C:        ROL A                     
CODE_27BC1D:        AND #$03                  
CODE_27BC1F:        STA $00                   
CODE_27BC21:        PLA                       
CODE_27BC22:        STA $01                   
CODE_27BC24:        LDY $00                   
CODE_27BC26:        CMP $1E96,y               
CODE_27BC29:        BCS CODE_27BC45                   
CODE_27BC2B:        LDA $0560                 
CODE_27BC2E:        ASL A                     
CODE_27BC2F:        ASL A                     
CODE_27BC30:        CLC                       
CODE_27BC31:        ADC $00                   
CODE_27BC33:        TAY                       
CODE_27BC34:        LDA $01                   
CODE_27BC36:        CMP #$E0                  
CODE_27BC38:        BEQ CODE_27BC45           
CODE_27BC3A:        CMP #$E1                  
CODE_27BC3C:        BEQ CODE_27BC45           
CODE_27BC3E:        LDA $AD84,y               
CODE_27BC41:        CMP $01                   
CODE_27BC43:        BCC CODE_27BC4D           
CODE_27BC45:        SEP #$20                  
CODE_27BC47:        LDA #$00                  
CODE_27BC49:        STA $1F7C,x               
CODE_27BC4C:        RTS                       

CODE_27BC4D:        STZ $01                   
CODE_27BC4F:        LDA $0565                 
CODE_27BC52:        AND #$0C                  
CODE_27BC54:        LSR A                     
CODE_27BC55:        LSR A                     
CODE_27BC56:        TAY                       
CODE_27BC57:        LDA $C731,y               
CODE_27BC5A:        STA $00                   
CODE_27BC5C:        CMP #$80                  
CODE_27BC5E:        BCC CODE_27BC62           
CODE_27BC60:        DEC $01                   
CODE_27BC62:        LDA $15                   
CODE_27BC64:        AND #$03                  
CODE_27BC66:        ADC $9B                   
CODE_27BC68:        TAY                       
CODE_27BC69:        LDA $C735,y               
CODE_27BC6C:        BMI CODE_27BCD6           
CODE_27BC6E:        TAY                       
CODE_27BC6F:        LDA $0801,y               
CODE_27BC72:        CMP #$F0                  
CODE_27BC74:        BNE CODE_27BCD6           
CODE_27BC76:        LDA $0543                 
CODE_27BC79:        STA $D8                   
CODE_27BC7B:        LDA $0542                 
CODE_27BC7E:        STA $D9                   
CODE_27BC80:        LDA $1F80,x               
CODE_27BC83:        XBA                       
CODE_27BC84:        LDA $1F84,x               
CODE_27BC87:        REP #$20                  
CODE_27BC89:        SEC                       
CODE_27BC8A:        SBC $D8                   
CODE_27BC8C:        CMP #$00C8                
CODE_27BC8F:        BCS CODE_27BC45                   
CODE_27BC91:        SEP #$20                  
CODE_27BC93:        STA $0801,y               
CODE_27BC96:        STA $0805,y               
CODE_27BC99:        LDA $1F88,x               
CODE_27BC9C:        XBA                       
CODE_27BC9D:        LDA $1F8C,x               
CODE_27BCA0:        REP #$20                  
CODE_27BCA2:        CLC                       
CODE_27BCA3:        ADC $00                   
CODE_27BCA5:        SEC                       
CODE_27BCA6:        SBC $0210                 
CODE_27BCA9:        STA $D8                   
CODE_27BCAB:        SEP #$20                  
CODE_27BCAD:        CMP #$F8                  
CODE_27BCAF:        BCS CODE_27BC45                   
CODE_27BCB1:        STA $0800,y               
CODE_27BCB4:        STA $0804,y               
CODE_27BCB7:        LDA #$C6                  
CODE_27BCB9:        STA $0802,y               
CODE_27BCBC:        INC A                     
CODE_27BCBD:        STA $0806,y               
CODE_27BCC0:        LDA #$23                  
CODE_27BCC2:        STA $0803,y               
CODE_27BCC5:        STA $0807,y               
CODE_27BCC8:        TYA                       
CODE_27BCC9:        LSR A                     
CODE_27BCCA:        LSR A                     
CODE_27BCCB:        TAY                       
CODE_27BCCC:        LDA $D9                   
CODE_27BCCE:        AND #$01                  
CODE_27BCD0:        STA $0A20,y               
CODE_27BCD3:        STA $0A21,y               
CODE_27BCD6:        RTS                       

CODE_27BCD7:        LDX #$02                  
CODE_27BCD9:        STX $9B                   
CODE_27BCDB:        LDA $1F90,x               
CODE_27BCDE:        BEQ CODE_27BCFE           
CODE_27BCE0:        LDA $9C                   
CODE_27BCE2:        BNE CODE_27BCFB           
CODE_27BCE4:        INC $1F90,x               
CODE_27BCE7:        LDA $15                   
CODE_27BCE9:        LSR A                     
CODE_27BCEA:        BCC CODE_27BCEF           
CODE_27BCEC:        INC $1F90,x               
CODE_27BCEF:        LDA $1F90,x               
CODE_27BCF2:        CMP #$30                  
CODE_27BCF4:        BCC CODE_27BCFB           
CODE_27BCF6:        JSR CODE_27BD02           
CODE_27BCF9:        BEQ CODE_27BCFE           
CODE_27BCFB:        JSR CODE_27BD0A           
CODE_27BCFE:        DEX                       
CODE_27BCFF:        BPL CODE_27BCD9           
CODE_27BD01:        RTS                       

CODE_27BD02:        SEP #$30                  
CODE_27BD04:        LDA #$00                  
CODE_27BD06:        STA $1F90,x               
CODE_27BD09:        RTS                       

CODE_27BD0A:        LDA $0216                 
CODE_27BD0D:        STA $02A7                 
CODE_27BD10:        LDA $0217                 
CODE_27BD13:        STA $02A8                 
CODE_27BD16:        LDY #$01                  
CODE_27BD18:        JSL CODE_27DEF1           
CODE_27BD1C:        BCS CODE_27BD26                   
CODE_27BD1E:        LDA #$EF                  
CODE_27BD20:        STA $02A7                 
CODE_27BD23:        STZ $02A8                 
CODE_27BD26:        JSL CODE_27A19D           
CODE_27BD2A:        BEQ CODE_27BD09           
CODE_27BD2C:        LDA $EF,x                 
CODE_27BD2E:        XBA                       
CODE_27BD2F:        LDA $1F96,x               
CODE_27BD32:        REP #$30                  
CODE_27BD34:        SEC                       
CODE_27BD35:        SBC $0210                 
CODE_27BD38:        CMP #$FFF0                
CODE_27BD3B:        BCS CODE_27BD42                   
CODE_27BD3D:        CMP #$0100                
CODE_27BD40:        BCS CODE_27BD02                   
CODE_27BD42:        STA $D8                   
CODE_27BD44:        PHA                       
CODE_27BD45:        PHP                       
CODE_27BD46:        ADC #$0008                
CODE_27BD49:        STA $DA                   
CODE_27BD4B:        PLP                       
CODE_27BD4C:        PLA                       
CODE_27BD4D:        SEP #$20                  
CODE_27BD4F:        LDY $C6,x                 
CODE_27BD51:        STA $0800,y               
CODE_27BD54:        STA $0804,y               
CODE_27BD57:        ADC #$08                  
CODE_27BD59:        STA $0808,y               
CODE_27BD5C:        STA $080C,y               
CODE_27BD5F:        LDA $058E,x               
CODE_27BD62:        XBA                       
CODE_27BD63:        LDA $1F93,x               
CODE_27BD66:        REP #$20                  
CODE_27BD68:        STA $DC                   
CODE_27BD6A:        LDA $1F99,x               
CODE_27BD6D:        AND #$00FF                
CODE_27BD70:        PHP                       
CODE_27BD71:        LDA $DC                   
CODE_27BD73:        PLP                       
CODE_27BD74:        BNE CODE_27BD7A           
CODE_27BD76:        SEC                       
CODE_27BD77:        SBC $02A7                 
CODE_27BD7A:        CMP #$00AE                
CODE_27BD7D:        BCS CODE_27BD02                   
CODE_27BD7F:        SEP #$20                  
CODE_27BD81:        STA $0801,y               
CODE_27BD84:        STA $0809,y               
CODE_27BD87:        CLC                       
CODE_27BD88:        ADC #$08                  
CODE_27BD8A:        STA $0805,y               
CODE_27BD8D:        STA $080D,y               
CODE_27BD90:        REP #$20                  
CODE_27BD92:        LDA $1F90,x               
CODE_27BD95:        AND #$00FF                
CODE_27BD98:        LSR A                     
CODE_27BD99:        LSR A                     
CODE_27BD9A:        LSR A                     
CODE_27BD9B:        TAX                       
CODE_27BD9C:        SEP #$20                  
CODE_27BD9E:        STA $00                   
CODE_27BDA0:        LDA $C73C,x               
CODE_27BDA3:        STA $0802,y               
CODE_27BDA6:        STA $080A,y               
CODE_27BDA9:        INC A                     
CODE_27BDAA:        STA $0806,y               
CODE_27BDAD:        STA $080E,y               
CODE_27BDB0:        LDX #$0000                
CODE_27BDB3:        AND #$C0                  
CODE_27BDB5:        CMP #$C0                  
CODE_27BDB7:        BNE CODE_27BDBC           
CODE_27BDB9:        LDX #$0001                
CODE_27BDBC:        TXA                       
CODE_27BDBD:        STA $DC                   
CODE_27BDBF:        ORA #$22                  
CODE_27BDC1:        STA $0803,y               
CODE_27BDC4:        STA $0807,y               
CODE_27BDC7:        ORA #$62                  
CODE_27BDC9:        STA $080B,y               
CODE_27BDCC:        STA $080F,y               
CODE_27BDCF:        SEP #$10                  
CODE_27BDD1:        LDX $9B                   
CODE_27BDD3:        LDA $00                   
CODE_27BDD5:        CMP #$03                  
CODE_27BDD7:        BCS CODE_27BDDC                   
CODE_27BDD9:        BRL CODE_27BE5E           

CODE_27BDDC:        LDA $15                   
CODE_27BDDE:        AND #$01                  
CODE_27BDE0:        ORA $9C                   
CODE_27BDE2:        BNE CODE_27BDF5           
CODE_27BDE4:        LDA $1F93,x               
CODE_27BDE7:        CLC                       
CODE_27BDE8:        ADC #$01                  
CODE_27BDEA:        STA $1F93,x               
CODE_27BDED:        LDA $058E,x               
CODE_27BDF0:        ADC #$00                  
CODE_27BDF2:        STA $058E,x               
CODE_27BDF5:        LDA $1F90,x               
CODE_27BDF8:        SEC                       
CODE_27BDF9:        SBC #$18                  
CODE_27BDFB:        LSR A                     
CODE_27BDFC:        LSR A                     
CODE_27BDFD:        LSR A                     
CODE_27BDFE:        AND #$03                  
CODE_27BE00:        STA $00                   
CODE_27BE02:        STZ $01                   
CODE_27BE04:        REP #$30                  
CODE_27BE06:        LDA $D8                   
CODE_27BE08:        SEC                       
CODE_27BE09:        SBC $00                   
CODE_27BE0B:        STA $D8                   
CODE_27BE0D:        LDA $DA                   
CODE_27BE0F:        CLC                       
CODE_27BE10:        ADC $00                   
CODE_27BE12:        STA $DA                   
CODE_27BE14:        SEP #$20                  
CODE_27BE16:        LDY $C6,x                 
CODE_27BE18:        LDA $0800,y               
CODE_27BE1B:        SEC                       
CODE_27BE1C:        SBC $00                   
CODE_27BE1E:        STA $0800,y               
CODE_27BE21:        STA $0804,y               
CODE_27BE24:        LDA $0808,y               
CODE_27BE27:        CLC                       
CODE_27BE28:        ADC $00                   
CODE_27BE2A:        STA $0808,y               
CODE_27BE2D:        STA $080C,y               
CODE_27BE30:        LDA $DC                   
CODE_27BE32:        ORA #$22                  
CODE_27BE34:        STA $080B,y               
CODE_27BE37:        STA $080F,y               
CODE_27BE3A:        ORA #$40                  
CODE_27BE3C:        STA $0803,y               
CODE_27BE3F:        STA $0807,y               
CODE_27BE42:        LDA $0565                 
CODE_27BE45:        AND #$02                  
CODE_27BE47:        BNE CODE_27BE5E           
CODE_27BE49:        LDA $00                   
CODE_27BE4B:        ASL A                     
CODE_27BE4C:        ORA $DC                   
CODE_27BE4E:        ORA #$A0                  
CODE_27BE50:        STA $0803,y               
CODE_27BE53:        STA $0807,y               
CODE_27BE56:        ORA #$40                  
CODE_27BE58:        STA $080B,y               
CODE_27BE5B:        STA $080F,y               
CODE_27BE5E:        REP #$30                  
CODE_27BE60:        LDA $C6,x                 
CODE_27BE62:        LSR A                     
CODE_27BE63:        LSR A                     
CODE_27BE64:        TAY                       
CODE_27BE65:        SEP #$20                  
CODE_27BE67:        LDA $D9                   
CODE_27BE69:        AND #$01                  
CODE_27BE6B:        STA $0A20,y               
CODE_27BE6E:        STA $0A21,y               
CODE_27BE71:        LDA $DB                   
CODE_27BE73:        AND #$01                  
CODE_27BE75:        STA $0A22,y               
CODE_27BE78:        STA $0A23,y               
CODE_27BE7B:        SEP #$10                  
CODE_27BE7D:        RTS                       

CODE_27BE7E:        LDA $05F4                 
CODE_27BE81:        CMP #$08                  
CODE_27BE83:        BCC CODE_27BE8A           
CODE_27BE85:        LDA #$08                  
CODE_27BE87:        STA $05F4                 
CODE_27BE8A:        LDX #$04                  
CODE_27BE8C:        STX $9B                   
CODE_27BE8E:        LDA $079F,x               
CODE_27BE91:        AND #$7F                  
CODE_27BE93:        BEQ CODE_27BEAA           
CODE_27BE95:        CMP #$0D                  
CODE_27BE97:        BCC CODE_27BEA5           
CODE_27BE99:        LDA $079F,x               
CODE_27BE9C:        AND #$80                  
CODE_27BE9E:        ORA #$0D                  
CODE_27BEA0:        STA $079F,x               
CODE_27BEA3:        AND #$7F                  
CODE_27BEA5:        STA $00                   
CODE_27BEA7:        JSR CODE_27BEAE           
CODE_27BEAA:        DEX                       
CODE_27BEAB:        BPL CODE_27BE8C           
CODE_27BEAD:        RTL                       

CODE_27BEAE:        LDA $0551                 
CODE_27BEB1:        ORA $0555                 
CODE_27BEB4:        ORA $0554                 
CODE_27BEB7:        BNE CODE_27BEBD           
CODE_27BEB9:        LDA $9C                   
CODE_27BEBB:        BNE CODE_27BF13           
CODE_27BEBD:        LDA $07A4,x               
CODE_27BEC0:        BNE CODE_27BEC8           
CODE_27BEC2:        LDA #$00                  
CODE_27BEC4:        STA $079F,x               
CODE_27BEC7:        RTS                       

CODE_27BEC8:        DEC $07A4,x               
CODE_27BECB:        CMP #$2A                  
CODE_27BECD:        BNE CODE_27BEFA           
CODE_27BECF:        LDY $00                   
CODE_27BED1:        LDA $069C                 
CODE_27BED4:        CLC                       
CODE_27BED5:        ADC $C75B,y               
CODE_27BED8:        STA $069C                 
CODE_27BEDB:        LDA $069D                 
CODE_27BEDE:        ADC $C768,y               
CODE_27BEE1:        STA $069D                 
CODE_27BEE4:        CPY #$0D                  
CODE_27BEE6:        BNE CODE_27BEF8           
CODE_27BEE8:        LDA #$05                  
CODE_27BEEA:        STA $1203                 
CODE_27BEED:        LDX $0726                 
CODE_27BEF0:        LDA $0736,x               
CODE_27BEF3:        BMI CODE_27BEF8           
CODE_27BEF5:        INC $0736,x               
CODE_27BEF8:        LDX $9B                   
CODE_27BEFA:        LDA $07A4,x               
CODE_27BEFD:        LSR A                     
CODE_27BEFE:        LSR A                     
CODE_27BEFF:        LSR A                     
CODE_27BF00:        LSR A                     
CODE_27BF01:        TAY                       
CODE_27BF02:        LDA $15                   
CODE_27BF04:        AND $C776,y               
CODE_27BF07:        BNE CODE_27BF13           
CODE_27BF09:        LDA $07A9,x               
CODE_27BF0C:        CMP #$04                  
CODE_27BF0E:        BCC CODE_27BF13           
CODE_27BF10:        DEC $07A9,x               
CODE_27BF13:        STZ $D9                   
CODE_27BF15:        LDA $0781                 
CODE_27BF18:        STA $D8                   
CODE_27BF1A:        CMP #$80                  
CODE_27BF1C:        BCC CODE_27BF20           
CODE_27BF1E:        DEC $D9                   
CODE_27BF20:        LDA $0251,x               
CODE_27BF23:        XBA                       
CODE_27BF24:        LDA $07AE,x               
CODE_27BF27:        REP #$20                  
CODE_27BF29:        SEC                       
CODE_27BF2A:        SBC $D8                   
CODE_27BF2C:        SEP #$20                  
CODE_27BF2E:        STA $07AE,x               
CODE_27BF31:        XBA                       
CODE_27BF32:        STA $0251,x               
CODE_27BF35:        LDA $07AE,x               
CODE_27BF38:        CMP #$F8                  
CODE_27BF3A:        BCS CODE_27BEC2                   
CODE_27BF3C:        LDA $07A9,x               
CODE_27BF3F:        SEC                       
CODE_27BF40:        SBC $0780                 
CODE_27BF43:        STA $07A9,x               
CODE_27BF46:        CMP #$F8                  
CODE_27BF48:        BCC CODE_27BF4D           
CODE_27BF4A:        BRL CODE_27BEC2           

CODE_27BF4D:        JSL CODE_27A19D           
CODE_27BF51:        STZ $01                   
CODE_27BF53:        LDX $00                   
CODE_27BF55:        LDA $C741,x               
CODE_27BF58:        LDX $9B                   
CODE_27BF5A:        CMP #$FF                  
CODE_27BF5C:        BEQ CODE_27BF99           
CODE_27BF5E:        REP #$10                  
CODE_27BF60:        LDY $C6,x                 
CODE_27BF62:        STA $0802,y               
CODE_27BF65:        CMP $C74E                 
CODE_27BF68:        BNE CODE_27BF6E           
CODE_27BF6A:        LDA #$22                  
CODE_27BF6C:        BRA CODE_27BF70           

CODE_27BF6E:        LDA #$20                  
CODE_27BF70:        STA $0803,y               
CODE_27BF73:        LDA $07A9,x               
CODE_27BF76:        STA $0801,y               
CODE_27BF79:        LDA $07AE,x               
CODE_27BF7C:        STA $0800,y               
CODE_27BF7F:        REP #$20                  
CODE_27BF81:        LDA $C6,x                 
CODE_27BF83:        CLC                       
CODE_27BF84:        ADC #$0004                
CODE_27BF87:        STA $C6,x                 
CODE_27BF89:        TYA                       
CODE_27BF8A:        LSR A                     
CODE_27BF8B:        LSR A                     
CODE_27BF8C:        TAY                       
CODE_27BF8D:        SEP #$20                  
CODE_27BF8F:        LDA $0251,x               
CODE_27BF92:        AND #$01                  
CODE_27BF94:        STA $0A20,y               
CODE_27BF97:        SEP #$10                  
CODE_27BF99:        REP #$10                  
CODE_27BF9B:        LDY $C6,x                 
CODE_27BF9D:        LDA $07A9,x               
CODE_27BFA0:        STA $0801,y               
CODE_27BFA3:        LDA $07AE,x               
CODE_27BFA6:        CLC                       
CODE_27BFA7:        ADC #$08                  
CODE_27BFA9:        STA $0800,y               
CODE_27BFAC:        LDA $0251,x               
CODE_27BFAF:        ADC #$00                  
CODE_27BFB1:        STA $D8                   
CODE_27BFB3:        LDX $00                   
CODE_27BFB5:        LDA $C74E,x               
CODE_27BFB8:        STA $0802,y               
CODE_27BFBB:        LDA #$20                  
CODE_27BFBD:        CPX #$000D                
CODE_27BFC0:        BNE CODE_27BFC4           
CODE_27BFC2:        ORA #$02                  
CODE_27BFC4:        STA $0803,y               
CODE_27BFC7:        REP #$20                  
CODE_27BFC9:        TYA                       
CODE_27BFCA:        LSR A                     
CODE_27BFCB:        LSR A                     
CODE_27BFCC:        TAY                       
CODE_27BFCD:        SEP #$20                  
CODE_27BFCF:        LDA $D8                   
CODE_27BFD1:        AND #$01                  
CODE_27BFD3:        STA $0A20,y               
CODE_27BFD6:        SEP #$10                  
CODE_27BFD8:        LDX $9B                   
CODE_27BFDA:        RTS                       

CODE_27BFDB:        LDX #$01                  
CODE_27BFDD:        STX $9B                   
CODE_27BFDF:        JSR CODE_27BFE6           
CODE_27BFE2:        DEX                       
CODE_27BFE3:        BPL CODE_27BFDD           
CODE_27BFE5:        RTS                       

CODE_27BFE6:        LDA $1F9C,x               
CODE_27BFE9:        BEQ CODE_27BFE5           
CODE_27BFEB:        CMP #$02                  
CODE_27BFED:        BEQ CODE_27BFF2           
CODE_27BFEF:        JMP CODE_27C1CC           

CODE_27BFF2:        LDA $9C                   
CODE_27BFF4:        BNE CODE_27BFFF           
CODE_27BFF6:        LDA $15                   
CODE_27BFF8:        AND #$03                  
CODE_27BFFA:        BNE CODE_27BFFF           
CODE_27BFFC:        INC $1FA5,x               
CODE_27BFFF:        LDA $1FB1,x               
CODE_27C002:        STA $01                   
CODE_27C004:        LDA $1F9F,x               
CODE_27C007:        STA $00                   
CODE_27C009:        REP #$20                  
CODE_27C00B:        LDA $0780                 
CODE_27C00E:        AND #$00FF                
CODE_27C011:        CMP #$0080                
CODE_27C014:        BCC CODE_27C019           
CODE_27C016:        ORA #$FF00                
CODE_27C019:        STA $02                   
CODE_27C01B:        LDA $1FA5,x               
CODE_27C01E:        AND #$00FF                
CODE_27C021:        CMP #$0080                
CODE_27C024:        BCC CODE_27C029           
CODE_27C026:        ORA #$FF00                
CODE_27C029:        STA $D8                   
CODE_27C02B:        LDA $9C                   
CODE_27C02D:        AND #$00FF                
CODE_27C030:        BEQ CODE_27C037           
CODE_27C032:        LDA #$0000                
CODE_27C035:        BRA CODE_27C039           

CODE_27C037:        LDA $D8                   
CODE_27C039:        CLC                       
CODE_27C03A:        ADC $00                   
CODE_27C03C:        SEC                       
CODE_27C03D:        SBC $02                   
CODE_27C03F:        STA $00                   
CODE_27C041:        CLC                       
CODE_27C042:        ADC #$0010                
CODE_27C045:        STA $04                   
CODE_27C047:        SEP #$20                  
CODE_27C049:        LDA $00                   
CODE_27C04B:        STA $1F9F,x               
CODE_27C04E:        LDA $01                   
CODE_27C050:        STA $1FB1,x               
CODE_27C053:        LDA $05                   
CODE_27C055:        BEQ CODE_27C060           
CODE_27C057:        LDA $1FAE,x               
CODE_27C05A:        AND #$08                  
CODE_27C05C:        BNE CODE_27C06F           
CODE_27C05E:        BRA CODE_27C067           

CODE_27C060:        LDA $1FAE,x               
CODE_27C063:        AND #$08                  
CODE_27C065:        BEQ CODE_27C06F           
CODE_27C067:        LDA $1FAE,x               
CODE_27C06A:        EOR #$08                  
CODE_27C06C:        STA $1FAE,x               
CODE_27C06F:        LDA $9C                   
CODE_27C071:        BNE CODE_27C076           
CODE_27C073:        INC $1FA8,x               
CODE_27C076:        LDA $1FAB,x               
CODE_27C079:        STA $00                   
CODE_27C07B:        LDA $DF,x                 
CODE_27C07D:        STA $01                   
CODE_27C07F:        REP #$20                  
CODE_27C081:        LDA $9C                   
CODE_27C083:        AND #$00FF                
CODE_27C086:        BEQ CODE_27C08D           
CODE_27C088:        LDA #$0000                
CODE_27C08B:        BRA CODE_27C093           

CODE_27C08D:        LDA $D8                   
CODE_27C08F:        CLC                       
CODE_27C090:        ADC #$0002                
CODE_27C093:        CLC                       
CODE_27C094:        ADC $00                   
CODE_27C096:        SEC                       
CODE_27C097:        SBC $02                   
CODE_27C099:        STA $00                   
CODE_27C09B:        CLC                       
CODE_27C09C:        ADC #$0010                
CODE_27C09F:        STA $04                   
CODE_27C0A1:        SEP #$20                  
CODE_27C0A3:        LDA $00                   
CODE_27C0A5:        STA $1FAB,x               
CODE_27C0A8:        LDA $01                   
CODE_27C0AA:        STA $DF,x                 
CODE_27C0AC:        LDA $05                   
CODE_27C0AE:        BEQ CODE_27C0B9           
CODE_27C0B0:        LDA $1FAE,x               
CODE_27C0B3:        AND #$04                  
CODE_27C0B5:        BNE CODE_27C0C8           
CODE_27C0B7:        BRA CODE_27C0C0           

CODE_27C0B9:        LDA $1FAE,x               
CODE_27C0BC:        AND #$04                  
CODE_27C0BE:        BEQ CODE_27C0C8           
CODE_27C0C0:        LDA $1FAE,x               
CODE_27C0C3:        EOR #$04                  
CODE_27C0C5:        STA $1FAE,x               
CODE_27C0C8:        STZ $DD                   
CODE_27C0CA:        LDA $0781                 
CODE_27C0CD:        STA $DC                   
CODE_27C0CF:        BPL CODE_27C0D3           
CODE_27C0D1:        DEC $DD                   
CODE_27C0D3:        LDA $02AE,x               
CODE_27C0D6:        XBA                       
CODE_27C0D7:        LDA $1FA2,x               
CODE_27C0DA:        REP #$20                  
CODE_27C0DC:        SEC                       
CODE_27C0DD:        SBC $DC                   
CODE_27C0DF:        SEP #$20                  
CODE_27C0E1:        STA $1FA2,x               
CODE_27C0E4:        XBA                       
CODE_27C0E5:        STA $02AE,x               
CODE_27C0E8:        JSR CODE_27D788           
CODE_27C0EB:        BCC CODE_27C0EE           
CODE_27C0ED:        RTS                       

CODE_27C0EE:        LDA $1FAE,x               
CODE_27C0F1:        STA $03                   
CODE_27C0F3:        CMP #$0C                  
CODE_27C0F5:        BCC CODE_27C101           
CODE_27C0F7:        LDA $1FB1,x               
CODE_27C0FA:        CMP #$01                  
CODE_27C0FC:        BNE CODE_27C101           
CODE_27C0FE:        JMP CODE_27C1C6           

CODE_27C101:        LDA $03                   
CODE_27C103:        AND #$08                  
CODE_27C105:        BNE CODE_27C110           
CODE_27C107:        LDA $1F9F,x               
CODE_27C10A:        STA $0801,y               
CODE_27C10D:        STA $0805,y               
CODE_27C110:        LDA $03                   
CODE_27C112:        AND #$04                  
CODE_27C114:        BNE CODE_27C11F           
CODE_27C116:        LDA $1FAB,x               
CODE_27C119:        STA $0809,y               
CODE_27C11C:        STA $080D,y               
CODE_27C11F:        LSR $03                   
CODE_27C121:        BCC CODE_27C12B           
CODE_27C123:        LDA #$F0                  
CODE_27C125:        STA $0801,y               
CODE_27C128:        STA $0809,y               
CODE_27C12B:        LSR $03                   
CODE_27C12D:        BCC CODE_27C137           
CODE_27C12F:        LDA #$F0                  
CODE_27C131:        STA $0805,y               
CODE_27C134:        STA $080D,y               
CODE_27C137:        STZ $DD                   
CODE_27C139:        LDA $1FA8,x               
CODE_27C13C:        STA $DC                   
CODE_27C13E:        LDA $02AE,x               
CODE_27C141:        XBA                       
CODE_27C142:        LDA $1FA2,x               
CODE_27C145:        REP #$20                  
CODE_27C147:        CLC                       
CODE_27C148:        ADC $DC                   
CODE_27C14A:        CLC                       
CODE_27C14B:        ADC #$0008                
CODE_27C14E:        STA $DA                   
CODE_27C150:        SEP #$20                  
CODE_27C152:        STA $0800,y               
CODE_27C155:        STA $0808,y               
CODE_27C158:        LDA $DB                   
CODE_27C15A:        BEQ CODE_27C164           
CODE_27C15C:        LDA $1FAE,x               
CODE_27C15F:        ORA #$01                  
CODE_27C161:        STA $1FAE,x               
CODE_27C164:        LDA $02AE,x               
CODE_27C167:        XBA                       
CODE_27C168:        LDA $1FA2,x               
CODE_27C16B:        REP #$20                  
CODE_27C16D:        SEC                       
CODE_27C16E:        SBC $DC                   
CODE_27C170:        STA $DC                   
CODE_27C172:        SEP #$20                  
CODE_27C174:        STA $0804,y               
CODE_27C177:        STA $080C,y               
CODE_27C17A:        LDA $DD                   
CODE_27C17C:        BEQ CODE_27C186           
CODE_27C17E:        LDA $1FAE,x               
CODE_27C181:        ORA #$02                  
CODE_27C183:        STA $1FAE,x               
CODE_27C186:        LDA $0565                 
CODE_27C189:        AND #$06                  
CODE_27C18B:        LSR A                     
CODE_27C18C:        LSR A                     
CODE_27C18D:        ROR A                     
CODE_27C18E:        ROR A                     
CODE_27C18F:        ORA #$20                  
CODE_27C191:        STA $0803,y               
CODE_27C194:        STA $0807,y               
CODE_27C197:        STA $080B,y               
CODE_27C19A:        STA $080F,y               
CODE_27C19D:        LDA #$4A                  
CODE_27C19F:        STA $0802,y               
CODE_27C1A2:        STA $0806,y               
CODE_27C1A5:        STA $080A,y               
CODE_27C1A8:        STA $080E,y               
CODE_27C1AB:        PHY                       
CODE_27C1AC:        TYA                       
CODE_27C1AD:        LSR A                     
CODE_27C1AE:        LSR A                     
CODE_27C1AF:        TAY                       
CODE_27C1B0:        LDA $DB                   
CODE_27C1B2:        AND #$01                  
CODE_27C1B4:        STA $0A20,y               
CODE_27C1B7:        STA $0A22,y               
CODE_27C1BA:        LDA $DD                   
CODE_27C1BC:        AND #$01                  
CODE_27C1BE:        STA $0A21,y               
CODE_27C1C1:        STA $0A23,y               
CODE_27C1C4:        PLY                       
CODE_27C1C5:        RTS                       

CODE_27C1C6:        LDA #$00                  
CODE_27C1C8:        STA $1F9C,x               
CODE_27C1CB:        RTS                       

CODE_27C1CC:        LDA $1FAE,x               
CODE_27C1CF:        BEQ CODE_27C1C6           
CODE_27C1D1:        LDA $9C                   
CODE_27C1D3:        BNE CODE_27C1D8           
CODE_27C1D5:        DEC $1FAE,x               
CODE_27C1D8:        LDA $1F9F,x               
CODE_27C1DB:        LDY $05FC                 
CODE_27C1DE:        BNE CODE_27C1E7           
CODE_27C1E0:        SEC                       
CODE_27C1E1:        SBC $0780                 
CODE_27C1E4:        STA $1F9F,x               
CODE_27C1E7:        CMP #$D0                  
CODE_27C1E9:        BCS CODE_27C1C6                   
CODE_27C1EB:        CPY #$00                  
CODE_27C1ED:        BNE CODE_27C1F9           
CODE_27C1EF:        LDA $1FA2,x               
CODE_27C1F2:        SEC                       
CODE_27C1F3:        SBC $0781                 
CODE_27C1F6:        STA $1FA2,x               
CODE_27C1F9:        CMP #$F0                  
CODE_27C1FB:        BCS CODE_27C1C6                   
CODE_27C1FD:        TXA                       
CODE_27C1FE:        EOR $15                   
CODE_27C200:        AND #$01                  
CODE_27C202:        TAY                       
CODE_27C203:        LDA $C77C,y               
CODE_27C206:        TAY                       
CODE_27C207:        LDA $0801,y               
CODE_27C20A:        CMP #$F0                  
CODE_27C20C:        BNE CODE_27C1C5           
CODE_27C20E:        LDA $1FA2,x               
CODE_27C211:        STA $0800,y               
CODE_27C214:        STA $0808,y               
CODE_27C217:        CLC                       
CODE_27C218:        ADC #$08                  
CODE_27C21A:        STA $0804,y               
CODE_27C21D:        STA $080C,y               
CODE_27C220:        LDA $1F9F,x               
CODE_27C223:        STA $0801,y               
CODE_27C226:        STA $0805,y               
CODE_27C229:        CLC                       
CODE_27C22A:        ADC #$08                  
CODE_27C22C:        STA $0809,y               
CODE_27C22F:        STA $080D,y               
CODE_27C232:        LDA $0565                 
CODE_27C235:        LSR A                     
CODE_27C236:        LSR A                     
CODE_27C237:        LSR A                     
CODE_27C238:        ROR A                     
CODE_27C239:        AND #$80                  
CODE_27C23B:        STA $00                   
CODE_27C23D:        LDA #$22                  
CODE_27C23F:        ORA $00                   
CODE_27C241:        STA $0803,y               
CODE_27C244:        STA $080B,y               
CODE_27C247:        EOR #$C0                  
CODE_27C249:        STA $0807,y               
CODE_27C24C:        STA $080F,y               
CODE_27C24F:        LDA $1FAE,x               
CODE_27C252:        LSR A                     
CODE_27C253:        LSR A                     
CODE_27C254:        LSR A                     
CODE_27C255:        TAX                       
CODE_27C256:        LDA $C836,x               
CODE_27C259:        STA $D8                   
CODE_27C25B:        INC A                     
CODE_27C25C:        STA $D9                   
CODE_27C25E:        LDA $0803,y               
CODE_27C261:        AND #$80                  
CODE_27C263:        BEQ CODE_27C26F           
CODE_27C265:        LDA $D8                   
CODE_27C267:        PHA                       
CODE_27C268:        LDA $D9                   
CODE_27C26A:        STA $D8                   
CODE_27C26C:        PLA                       
CODE_27C26D:        STA $D9                   
CODE_27C26F:        LDA $D8                   
CODE_27C271:        STA $0802,y               
CODE_27C274:        STA $080E,y               
CODE_27C277:        LDA $D9                   
CODE_27C279:        STA $080A,y               
CODE_27C27C:        STA $0806,y               
CODE_27C27F:        TYA                       
CODE_27C280:        LSR A                     
CODE_27C281:        LSR A                     
CODE_27C282:        TAY                       
CODE_27C283:        LDA #$00                  
CODE_27C285:        STA $0A20,y               
CODE_27C288:        STA $0A21,y               
CODE_27C28B:        STA $0A22,y               
CODE_27C28E:        STA $0A23,y               
CODE_27C291:        LDX $9B                   
CODE_27C293:        RTS                       

CODE_27C294:        LDX #$03                  
CODE_27C296:        STX $9B                   
CODE_27C298:        LDA $1FB4,x               
CODE_27C29B:        BEQ CODE_27C2A0           
CODE_27C29D:        JSR CODE_27C2A4           
CODE_27C2A0:        DEX                       
CODE_27C2A1:        BPL CODE_27C296           
CODE_27C2A3:        RTS                       

CODE_27C2A4:        LDA $9C                   
CODE_27C2A6:        BNE CODE_27C30B           
CODE_27C2A8:        LDA $1FC0,x               
CODE_27C2AB:        CMP #$05                  
CODE_27C2AD:        BEQ CODE_27C2E2           
CODE_27C2AF:        INC $1FC4,x               
CODE_27C2B2:        LDA $1FB8,x               
CODE_27C2B5:        CLC                       
CODE_27C2B6:        ADC $1FC0,x               
CODE_27C2B9:        STA $1FB8,x               
CODE_27C2BC:        LDA $1FC4,x               
CODE_27C2BF:        AND #$03                  
CODE_27C2C1:        BNE CODE_27C2E2           
CODE_27C2C3:        INC $1FC0,x               
CODE_27C2C6:        LDA $1FC0,x               
CODE_27C2C9:        CMP #$05                  
CODE_27C2CB:        BNE CODE_27C2E2           
CODE_27C2CD:        LDA $1FB8,x               
CODE_27C2D0:        STA $7FC52E,x             
CODE_27C2D4:        STZ $1FC4,x               
CODE_27C2D7:        LDA $1FB4,x               
CODE_27C2DA:        PHA                       
CODE_27C2DB:        JSR CODE_27C412           
CODE_27C2DE:        PLA                       
CODE_27C2DF:        STA $1FB4,x               
CODE_27C2E2:        LDA $0781                 
CODE_27C2E5:        STA $D8                   
CODE_27C2E7:        STZ $D9                   
CODE_27C2E9:        CMP #$80                  
CODE_27C2EB:        BCC CODE_27C2EF           
CODE_27C2ED:        DEC $D9                   
CODE_27C2EF:        LDA $024C,x               
CODE_27C2F2:        XBA                       
CODE_27C2F3:        LDA $1FBC,x               
CODE_27C2F6:        REP #$20                  
CODE_27C2F8:        SEC                       
CODE_27C2F9:        SBC $D8                   
CODE_27C2FB:        SEP #$20                  
CODE_27C2FD:        STA $1FBC,x               
CODE_27C300:        XBA                       
CODE_27C301:        STA $024C,x               
CODE_27C304:        LDA $1FBC,x               
CODE_27C307:        CMP #$F8                  
CODE_27C309:        BCS CODE_27C327                   
CODE_27C30B:        LDA $1FC0,x               
CODE_27C30E:        CMP #$05                  
CODE_27C310:        BNE CODE_27C315           
CODE_27C312:        BRL CODE_27C39B           

CODE_27C315:        LDA $9C                   
CODE_27C317:        BEQ CODE_27C32A           
CODE_27C319:        LDA $1FB8,x               
CODE_27C31C:        SEC                       
CODE_27C31D:        SBC $0780                 
CODE_27C320:        STA $1FB8,x               
CODE_27C323:        CMP #$C5                  
CODE_27C325:        BCC CODE_27C32A           
CODE_27C327:        BRL CODE_27C43C           

CODE_27C32A:        JSL CODE_27A19D           
CODE_27C32E:        REP #$10                  
CODE_27C330:        LDY $C6,x                 
CODE_27C332:        LDA $1FB8,x               
CODE_27C335:        CMP #$A8                  
CODE_27C337:        BCC CODE_27C33B           
CODE_27C339:        LDA #$F0                  
CODE_27C33B:        STA $0801,y               
CODE_27C33E:        CLC                       
CODE_27C33F:        ADC #$08                  
CODE_27C341:        STA $0805,y               
CODE_27C344:        LDA $1FBC,x               
CODE_27C347:        STA $0800,y               
CODE_27C34A:        STA $0804,y               
CODE_27C34D:        LDA $024C,x               
CODE_27C350:        STA $D8                   
CODE_27C352:        REP #$20                  
CODE_27C354:        LDA $1FC4,x               
CODE_27C357:        LSR A                     
CODE_27C358:        LSR A                     
CODE_27C359:        AND #$0003                
CODE_27C35C:        TAX                       
CODE_27C35D:        SEP #$20                  
CODE_27C35F:        LDA $C77E,x               
CODE_27C362:        STA $0802,y               
CODE_27C365:        INC A                     
CODE_27C366:        STA $0806,y               
CODE_27C369:        LDA $C782,x               
CODE_27C36C:        STA $0803,y               
CODE_27C36F:        STA $0807,y               
CODE_27C372:        PHY                       
CODE_27C373:        REP #$20                  
CODE_27C375:        TYA                       
CODE_27C376:        LSR A                     
CODE_27C377:        LSR A                     
CODE_27C378:        TAY                       
CODE_27C379:        SEP #$20                  
CODE_27C37B:        LDA $D8                   
CODE_27C37D:        AND #$01                  
CODE_27C37F:        STA $0A20,y               
CODE_27C382:        STA $0A21,y               
CODE_27C385:        PLY                       
CODE_27C386:        SEP #$10                  
CODE_27C388:        LDX $9B                   
CODE_27C38A:        RTS                       

DATA_27C38B:        db $E0,$E0,$E0,$E0,$E2,$E2,$E2,$E2
                    db $E4,$E4,$E4,$E4,$E4,$E4,$E4,$E4

CODE_27C39B:        LDA $9C                   
CODE_27C39D:        BEQ CODE_27C3B2           
CODE_27C39F:        LDA $7FC52E,x             
CODE_27C3A3:        SEC                       
CODE_27C3A4:        SBC $0780                 
CODE_27C3A7:        STA $7FC52E,x             
CODE_27C3AB:        CMP #$C5                  
CODE_27C3AD:        BCC CODE_27C3B2           
CODE_27C3AF:        BRL CODE_27C43C           

CODE_27C3B2:        JSL CODE_27A19D           
CODE_27C3B6:        REP #$10                  
CODE_27C3B8:        LDY $C6,x                 
CODE_27C3BA:        LDA $7FC52E,x             
CODE_27C3BE:        STA $0801,y               
CODE_27C3C1:        LDA $024C,x               
CODE_27C3C4:        XBA                       
CODE_27C3C5:        LDA $1FBC,x               
CODE_27C3C8:        REP #$20                  
CODE_27C3CA:        CLC                       
CODE_27C3CB:        ADC #$FFFC                
CODE_27C3CE:        SEP #$20                  
CODE_27C3D0:        STA $0800,y               
CODE_27C3D3:        STA $0804,y               
CODE_27C3D6:        XBA                       
CODE_27C3D7:        STA $D8                   
CODE_27C3D9:        REP #$20                  
CODE_27C3DB:        LDA $1FC4,x               
CODE_27C3DE:        AND #$000F                
CODE_27C3E1:        TAX                       
CODE_27C3E2:        SEP #$20                  
CODE_27C3E4:        LDA.l DATA_27C38B,x             
CODE_27C3E8:        STA $0802,y               
CODE_27C3EB:        LDA #$21                  
CODE_27C3ED:        STA $0803,y               
CODE_27C3F0:        PHY                       
CODE_27C3F1:        REP #$20                  
CODE_27C3F3:        TYA                       
CODE_27C3F4:        LSR A                     
CODE_27C3F5:        LSR A                     
CODE_27C3F6:        TAY                       
CODE_27C3F7:        SEP #$20                  
CODE_27C3F9:        LDA $D8                   
CODE_27C3FB:        AND #$01                  
CODE_27C3FD:        ORA #$02                  
CODE_27C3FF:        STA $0A20,y               
CODE_27C402:        PLY                       
CODE_27C403:        SEP #$10                  
CODE_27C405:        LDX $9B                   
CODE_27C407:        INC $1FC4,x               
CODE_27C40A:        LDA $1FC4,x               
CODE_27C40D:        AND #$0F                  
CODE_27C40F:        BEQ CODE_27C43C           
CODE_27C411:        RTS                       

CODE_27C412:        JSR CODE_278ADB           
CODE_27C415:        LDA #$85                  
CODE_27C417:        STA $079F,y               
CODE_27C41A:        LDA #$30                  
CODE_27C41C:        STA $07A4,y               
CODE_27C41F:        LDA $1FB8,x               
CODE_27C422:        CMP #$C0                  
CODE_27C424:        BCC CODE_27C428           
CODE_27C426:        LDA #$05                  
CODE_27C428:        STA $07A9,y               
CODE_27C42B:        LDA $1FBC,x               
CODE_27C42E:        SEC                       
CODE_27C42F:        SBC #$04                  
CODE_27C431:        STA $07AE,y               
CODE_27C434:        LDA $024C,x               
CODE_27C437:        SBC #$00                  
CODE_27C439:        STA $0251,y               
CODE_27C43C:        LDA #$00                  
CODE_27C43E:        STA $1FB4,x               
CODE_27C441:        RTS                       

CODE_27C442:        LDA #$01                  
CODE_27C444:        STA $1A68,x               
CODE_27C447:        LDA $05BF,x               
CODE_27C44A:        CLC                       
CODE_27C44B:        ADC #$0C                  
CODE_27C44D:        STA $05                   
CODE_27C44F:        AND #$F0                  
CODE_27C451:        STA $02                   
CODE_27C453:        LDA $1FD7,x               
CODE_27C456:        ADC #$00                  
CODE_27C458:        PHA                       
CODE_27C459:        LDA $05C9,x               
CODE_27C45C:        CLC                       
CODE_27C45D:        ADC #$04                  
CODE_27C45F:        SEC                       
CODE_27C460:        SBC $0210                 
CODE_27C463:        CLC                       
CODE_27C464:        ADC $0210                 
CODE_27C467:        STA $04                   
CODE_27C469:        PLA                       
CODE_27C46A:        STA $01                   
CODE_27C46C:        PHX                       
CODE_27C46D:        LDA $12                   
CODE_27C46F:        ADC #$00                  
CODE_27C471:        ASL A                     
CODE_27C472:        TAX                       
CODE_27C473:        LDA $218200,x             
CODE_27C477:        STA $00                   
CODE_27C479:        STA $DB                   
CODE_27C47B:        LDA $01                   
CODE_27C47D:        AND #$01                  
CODE_27C47F:        CLC                       
CODE_27C480:        ADC $218201,x             
CODE_27C484:        STA $01                   
CODE_27C486:        CLC                       
CODE_27C487:        ADC #$20                  
CODE_27C489:        STA $DC                   
CODE_27C48B:        PLX                       
CODE_27C48C:        LDA $04                   
CODE_27C48E:        LSR A                     
CODE_27C48F:        LSR A                     
CODE_27C490:        LSR A                     
CODE_27C491:        LSR A                     
CODE_27C492:        ORA $02                   
CODE_27C494:        TAY                       
CODE_27C495:        LDA #$7E                  
CODE_27C497:        STA $02                   
CODE_27C499:        STA $DD                   
CODE_27C49B:        LDA [$DB],y               
CODE_27C49D:        BEQ CODE_27C4B7           
CODE_27C49F:        PHX                       
CODE_27C4A0:        LDA $070A                 
CODE_27C4A3:        ASL A                     
CODE_27C4A4:        TAX                       
CODE_27C4A5:        LDA $AB57,x               
CODE_27C4A8:        STA $DB                   
CODE_27C4AA:        LDA $AB58,x               
CODE_27C4AD:        STA $DC                   
CODE_27C4AF:        LDA [$00],y               
CODE_27C4B1:        TAY                       
CODE_27C4B2:        LDA ($DB),y               
CODE_27C4B4:        PLX                       
CODE_27C4B5:        BRA CODE_27C4B9           

CODE_27C4B7:        LDA [$00],y               
CODE_27C4B9:        PHA                       
CODE_27C4BA:        ASL A                     
CODE_27C4BB:        ROL A                     
CODE_27C4BC:        ROL A                     
CODE_27C4BD:        AND #$03                  
CODE_27C4BF:        TAY                       
CODE_27C4C0:        STY $01                   
CODE_27C4C2:        PLA                       
CODE_27C4C3:        STA $00                   
CODE_27C4C5:        CMP $1E96,y               
CODE_27C4C8:        BCC CODE_27C505           
CODE_27C4CA:        CMP $1E9A,y               
CODE_27C4CD:        BCC CODE_27C4F4           
CODE_27C4CF:        LDA $1FC8,x               
CODE_27C4D2:        CMP #$0C                  
CODE_27C4D4:        BEQ CODE_27C4D8           
CODE_27C4D6:        SEC                       
CODE_27C4D7:        RTS                       

CODE_27C4D8:        INC $06C7,x               
CODE_27C4DB:        LDA $06C7,x               
CODE_27C4DE:        CMP #$02                  
CODE_27C4E0:        BNE CODE_27C4E5           
CODE_27C4E2:        JMP CODE_27C527           

CODE_27C4E5:        DEC $05BF,x               
CODE_27C4E8:        DEC $05BF,x               
CODE_27C4EB:        DEC $05BF,x               
CODE_27C4EE:        LDA #$D4                  
CODE_27C4F0:        STA $05D3,x               
CODE_27C4F3:        RTS                       

CODE_27C4F4:        LDA $1FC8,x               
CODE_27C4F7:        CMP #$0C                  
CODE_27C4F9:        CLC                       
CODE_27C4FA:        BNE CODE_27C4F3           
CODE_27C4FC:        LDA $05                   
CODE_27C4FE:        AND #$0F                  
CODE_27C500:        CMP #$05                  
CODE_27C502:        BCC CODE_27C4EE           
CODE_27C504:        RTS                       

CODE_27C505:        LDA $1FC8,x               
CODE_27C508:        CMP #$14                  
CODE_27C50A:        CLC                       
CODE_27C50B:        BNE CODE_27C521           
CODE_27C50D:        LDA $0560                 
CODE_27C510:        ASL A                     
CODE_27C511:        ASL A                     
CODE_27C512:        CLC                       
CODE_27C513:        ADC $01                   
CODE_27C515:        TAY                       
CODE_27C516:        LDA $AD84,y               
CODE_27C519:        CMP $00                   
CODE_27C51B:        BCC CODE_27C520           
CODE_27C51D:        DEC $1A68,x               
CODE_27C520:        RTS                       

CODE_27C521:        LDA #$00                  
CODE_27C523:        STA $06C7,x               
CODE_27C526:        RTS                       

CODE_27C527:        LDA #$01                  
CODE_27C529:        STA $1200                 
CODE_27C52C:        NOP                       
CODE_27C52D:        NOP                       
CODE_27C52E:        NOP                       
CODE_27C52F:        NOP                       
CODE_27C530:        NOP                       
CODE_27C531:        NOP                       
CODE_27C532:        NOP                       
CODE_27C533:        JMP CODE_27D38A           

CODE_27C536:        LDA #$00                  
CODE_27C538:        STA $06B6                 
CODE_27C53B:        LDX #$09                  
CODE_27C53D:        STX $9B                   
CODE_27C53F:        JSR CODE_27C546           
CODE_27C542:        DEX                       
CODE_27C543:        BPL CODE_27C53D           
CODE_27C545:        RTS                       

CODE_27C546:        LDA $1FC8,x               
CODE_27C549:        BEQ CODE_27C545           
CODE_27C54B:        LDA $05FE                 
CODE_27C54E:        BEQ CODE_27C56F           
CODE_27C550:        LDA $9C                   
CODE_27C552:        BNE CODE_27C56F           
CODE_27C554:        LDA $05C9,x               
CODE_27C557:        CLC                       
CODE_27C558:        ADC $7E3952               
CODE_27C55C:        STA $05C9,x               
CODE_27C55F:        LDA $05BF,x               
CODE_27C562:        CLC                       
CODE_27C563:        ADC $7E3953               
CODE_27C567:        STA $05BF,x               
CODE_27C56A:        BCC CODE_27C56F           
CODE_27C56C:        INC $1FD7,x               
CODE_27C56F:        LDY $9C                   
CODE_27C571:        BNE CODE_27C57B           
CODE_27C573:        LDY $06D1,x               
CODE_27C576:        BEQ CODE_27C57B           
CODE_27C578:        DEC $06D1,x               
CODE_27C57B:        LDA $E2,x                 
CODE_27C57D:        XBA                       
CODE_27C57E:        LDA $05C9,x               
CODE_27C581:        REP #$20                  
CODE_27C583:        SEC                       
CODE_27C584:        SBC $0210                 
CODE_27C587:        CMP #$00F8                
CODE_27C58A:        BCC CODE_27C595           
CODE_27C58C:        CMP #$FFF8                
CODE_27C58F:        BCS CODE_27C595                   
CODE_27C591:        SEP #$20                  
CODE_27C593:        BRA CODE_27C5D1           

CODE_27C595:        SEP #$20                  
CODE_27C597:        LDA $05BF,x               
CODE_27C59A:        CLC                       
CODE_27C59B:        ADC #$14                  
CODE_27C59D:        PHA                       
CODE_27C59E:        LDA $1FD7,x               
CODE_27C5A1:        ADC #$00                  
CODE_27C5A3:        STA $00                   
CODE_27C5A5:        PLA                       
CODE_27C5A6:        CMP $0543                 
CODE_27C5A9:        LDA $00                   
CODE_27C5AB:        SBC $0542                 
CODE_27C5AE:        STA $0D                   
CODE_27C5B0:        BEQ CODE_27C5D6           
CODE_27C5B2:        LDA $1FC8,x               
CODE_27C5B5:        CMP #$0E                  
CODE_27C5B7:        BEQ CODE_27C5CD           
CODE_27C5B9:        CMP #$06                  
CODE_27C5BB:        BEQ CODE_27C5CD           
CODE_27C5BD:        CMP #$10                  
CODE_27C5BF:        BEQ CODE_27C5CD           
CODE_27C5C1:        CMP #$13                  
CODE_27C5C3:        BEQ CODE_27C5CD           
CODE_27C5C5:        CMP #$07                  
CODE_27C5C7:        BEQ CODE_27C5CD           
CODE_27C5C9:        CMP #$01                  
CODE_27C5CB:        BNE CODE_27C5D1           
CODE_27C5CD:        LDA $0D                   
CODE_27C5CF:        BMI CODE_27C5D6           
CODE_27C5D1:        SEP #$20                  
CODE_27C5D3:        JMP CODE_27D37F           

CODE_27C5D6:        LDA $1FC8,x               
CODE_27C5D9:        JSL CODE_20FB1F           

PNTR_27C5DD:        dw CODE_27C545
                    dw CODE_27D175
                    dw CODE_27D442
                    dw CODE_27D508
                    dw CODE_27D576
                    dw CODE_27D576
                    dw CODE_27D013
                    dw CODE_27CF6B
                    dw CODE_27CE2B
                    dw CODE_27CEC9
                    dw CODE_27CD7B
                    dw CODE_27CC31
                    dw CODE_27D576
                    dw CODE_27C91B
                    dw CODE_27CB74
                    dw CODE_27CAAE
                    dw CODE_27C995
                    dw CODE_27C7A7
                    dw CODE_27D576
                    dw CODE_27C7A7
                    dw CODE_27C6D6
                    dw CODE_27C60F
                    dw CODE_27D672
                    dw CODE_27DFF2
                    dw CODE_27E05B

CODE_27C60F:        JSR CODE_27C67F           ;Draw GFX for laser sprite
CODE_27C612:        LDA $9C                   ;\
CODE_27C614:        BNE CODE_27C65A           ;/
CODE_27C616:        LDA $05BF,x               ;\
CODE_27C619:        CLC                       ; |
CODE_27C61A:        ADC #$08                  ; |Y position decreases by 8 every frame
CODE_27C61C:        STA $05BF,x               ;/
CODE_27C61F:        LDA $E2,x                 ;\
CODE_27C621:        XBA                       ; |
CODE_27C622:        LDA $05C9,x               ; |
CODE_27C625:        REP #$20                  ; |
CODE_27C627:        SEC                       ; |
CODE_27C628:        SBC #$0008                ; |X position decreases by 8 every frame
CODE_27C62B:        SEP #$20                  ; |
CODE_27C62D:        STA $05C9,x               ; |
CODE_27C630:        XBA                       ; |
CODE_27C631:        STA $E2,x                 ;/
CODE_27C633:        JSR CODE_27C442           ;\Related to detecting solid tile for laser to
CODE_27C636:        BCC CODE_27C65A           ;/interact with? Return if none found
CODE_27C638:        LDA $05BF,x               ;\ Prepare smoke image position by altering own position
CODE_27C63B:        AND #$F0                  ; |(Extended sprite Y position &= 0xF0) + 0x05
CODE_27C63D:        CLC                       ; |
CODE_27C63E:        ADC #$05                  ; |
CODE_27C640:        STA $05BF,x               ;/
CODE_27C643:        LDA $05C9,x               ;\
CODE_27C646:        AND #$F0                  ; |(Extended sprite X position &= 0xF0) + 0x0B
CODE_27C648:        ADC #$0B                  ; |
CODE_27C64A:        STA $05C9,x               ;/
CODE_27C64D:        JSR CODE_27D37F           ;Remove self (store 00 to extended sprite number)
CODE_27C650:        LDY #$01                  ;\
CODE_27C652:        LDA $1F9C,y               ; |Search for free slot for smoke image
CODE_27C655:        BEQ CODE_27C65B           ; |
CODE_27C657:        DEY                       ; |
CODE_27C658:        BPL CODE_27C652           ; |
CODE_27C65A:        RTS                       ;/

CODE_27C65B:        LDA #$01                  ;\Smoke image = smoke
CODE_27C65D:        STA $1F9C,y               ;/
CODE_27C660:        LDA $05C9,x               ;\
CODE_27C663:        SEC                       ; |
CODE_27C664:        SBC #$08                  ; |Setup smoke image x position
CODE_27C666:        SEC                       ; |
CODE_27C667:        SBC $0210                 ; |
CODE_27C66A:        STA $1FA2,y               ;/
CODE_27C66D:        LDA $05BF,x               ;\
CODE_27C670:        CLC                       ; |
CODE_27C671:        ADC #$04                  ; |Setu smoke image Y position
CODE_27C673:        SBC $0543                 ; |
CODE_27C676:        STA $1F9F,y               ;/
CODE_27C679:        LDA #$17                  ;\How long does the smoke image last.
CODE_27C67B:        STA $1FAE,y               ;/
CODE_27C67E:        RTS                       

CODE_27C67F:        JSR CODE_27D728           
CODE_27C682:        LDA $E2,x                 
CODE_27C684:        XBA                       
CODE_27C685:        LDA $05C9,x               
CODE_27C688:        REP #$30                  
CODE_27C68A:        SEC                       
CODE_27C68B:        SBC $0210                 
CODE_27C68E:        STA $D8                   
CODE_27C690:        SEP #$20                  
CODE_27C692:        LDY $C6,x                 
CODE_27C694:        JSR CODE_27CE16           
CODE_27C697:        LDA $0800,y               
CODE_27C69A:        STA $0804,y               
CODE_27C69D:        LDA $0801,y               
CODE_27C6A0:        CLC                       
CODE_27C6A1:        ADC #$08                  
CODE_27C6A3:        STA $0805,y               
CODE_27C6A6:        LDA #$4A                  
CODE_27C6A8:        STA $0802,y               
CODE_27C6AB:        INC A                     
CODE_27C6AC:        STA $0806,y               
CODE_27C6AF:        LDA $15                   
CODE_27C6B1:        LSR A                     
CODE_27C6B2:        LSR A                     
CODE_27C6B3:        AND #$03                  
CODE_27C6B5:        ASL A                     
CODE_27C6B6:        ORA #$21                  
CODE_27C6B8:        STA $0803,y               
CODE_27C6BB:        STA $0807,y               
CODE_27C6BE:        REP #$20                  
CODE_27C6C0:        TYA                       
CODE_27C6C1:        LSR A                     
CODE_27C6C2:        LSR A                     
CODE_27C6C3:        TAY                       
CODE_27C6C4:        SEP #$20                  
CODE_27C6C6:        LDA $D9                   
CODE_27C6C8:        AND #$01                  
CODE_27C6CA:        STA $0A20,y               
CODE_27C6CD:        STA $0A21,y               
CODE_27C6D0:        SEP #$10                  
CODE_27C6D2:        JMP CODE_27D302           

CODE_27C6D5:        RTS                       

CODE_27C6D6:        LDA $9C                   
CODE_27C6D8:        BNE CODE_27C723           
CODE_27C6DA:        LDA $15                   
CODE_27C6DC:        AND #$07                  
CODE_27C6DE:        BNE CODE_27C710           
CODE_27C6E0:        LDA $06C7,x               
CODE_27C6E3:        AND #$01                  
CODE_27C6E5:        TAY                       
CODE_27C6E6:        LDA $05D3,x               
CODE_27C6E9:        CLC                       
CODE_27C6EA:        ADC $C78E,y               
CODE_27C6ED:        STA $05D3,x               
CODE_27C6F0:        CMP $C790,y               
CODE_27C6F3:        BNE CODE_27C6F8           
CODE_27C6F5:        INC $06C7,x               
CODE_27C6F8:        LDA $06BD,x               
CODE_27C6FB:        AND #$01                  
CODE_27C6FD:        TAY                       
CODE_27C6FE:        LDA $05DD,x               
CODE_27C701:        CLC                       
CODE_27C702:        ADC $C78E,y               
CODE_27C705:        STA $05DD,x               
CODE_27C708:        CMP $C790,y               
CODE_27C70B:        BNE CODE_27C710           
CODE_27C70D:        INC $06BD,x               
CODE_27C710:        JSR CODE_27D7E3           
CODE_27C713:        LDA $05D3,x               
CODE_27C716:        BPL CODE_27C720           
CODE_27C718:        JSR CODE_27C442           
CODE_27C71B:        LDA $1A68,x               
CODE_27C71E:        BEQ CODE_27C723           
CODE_27C720:        JSR CODE_27D80F           
CODE_27C723:        LDA $06D1,x               
CODE_27C726:        BEQ CODE_27C7A4           
CODE_27C728:        CMP #$30                  
CODE_27C72A:        BCS CODE_27C730                   
CODE_27C72C:        AND #$02                  
CODE_27C72E:        BNE CODE_27C7A1           
CODE_27C730:        JSR CODE_27D728           
CODE_27C733:        LDA $E2,x                 
CODE_27C735:        XBA                       
CODE_27C736:        LDA $05C9,x               
CODE_27C739:        REP #$20                  
CODE_27C73B:        SEC                       
CODE_27C73C:        SBC $0210                 
CODE_27C73F:        STA $D8                   
CODE_27C741:        SEP #$20                  
CODE_27C743:        REP #$10                  
CODE_27C745:        LDY $C6,x                 
CODE_27C747:        JSR CODE_27CE16           
CODE_27C74A:        LDA $0800,y               
CODE_27C74D:        STA $0804,y               
CODE_27C750:        REP #$20                  
CODE_27C752:        LDA $0565                 
CODE_27C755:        LSR A                     
CODE_27C756:        AND #$000F                
CODE_27C759:        TAX                       
CODE_27C75A:        SEP #$20                  
CODE_27C75C:        LDA $0801,y               
CODE_27C75F:        CLC                       
CODE_27C760:        ADC $C792,x               
CODE_27C763:        STA $0801,y               
CODE_27C766:        CLC                       
CODE_27C767:        ADC #$08                  
CODE_27C769:        STA $0805,y               
CODE_27C76C:        TXA                       
CODE_27C76D:        CMP #$08                  
CODE_27C76F:        LDA #$B4                  
CODE_27C771:        BCC CODE_27C775           
CODE_27C773:        LDA #$B6                  
CODE_27C775:        STA $0802,y               
CODE_27C778:        INC A                     
CODE_27C779:        STA $0806,y               
CODE_27C77C:        LDA #$2A                  
CODE_27C77E:        STA $0803,y               
CODE_27C781:        STA $0807,y               
CODE_27C784:        REP #$20                  
CODE_27C786:        TYA                       
CODE_27C787:        LSR A                     
CODE_27C788:        LSR A                     
CODE_27C789:        TAY                       
CODE_27C78A:        SEP #$20                  
CODE_27C78C:        LDA $D9                   
CODE_27C78E:        AND #$01                  
CODE_27C790:        STA $0A20,y               
CODE_27C793:        STA $0A21,y               
CODE_27C796:        SEP #$10                  
CODE_27C798:        LDX $9B                   
CODE_27C79A:        AND #$01                  
CODE_27C79C:        BNE CODE_27C7A1           
CODE_27C79E:        JMP CODE_27D302           

CODE_27C7A1:        SEP #$20                  
CODE_27C7A3:        RTS                       

CODE_27C7A4:        JMP CODE_27D37F           

CODE_27C7A7:        LDA $9C                   
CODE_27C7A9:        BNE CODE_27C7CC           
CODE_27C7AB:        INC $06BD,x               
CODE_27C7AE:        JSR CODE_27CC1B           
CODE_27C7B1:        LDA $1FC8,x               
CODE_27C7B4:        CMP #$13                  
CODE_27C7B6:        BNE CODE_27C7CC           
CODE_27C7B8:        LDA $05D3,x               
CODE_27C7BB:        BMI CODE_27C7C1           
CODE_27C7BD:        CMP #$70                  
CODE_27C7BF:        BCS CODE_27C7CC                   
CODE_27C7C1:        LDA $06C7,x               
CODE_27C7C4:        BNE CODE_27C7C9           
CODE_27C7C6:        INC $05D3,x               
CODE_27C7C9:        INC $05D3,x               
CODE_27C7CC:        JSR CODE_27D728           
CODE_27C7CF:        LDA $1FD7,x               
CODE_27C7D2:        XBA                       
CODE_27C7D3:        LDA $05BF,x               
CODE_27C7D6:        REP #$20                  
CODE_27C7D8:        SEC                       
CODE_27C7D9:        SBC $0216                 
CODE_27C7DC:        CMP #$0100                
CODE_27C7DF:        BCC CODE_27C7E6           
CODE_27C7E1:        CMP #$FFF0                
CODE_27C7E4:        BCC CODE_27C7A1           
CODE_27C7E6:        SEP #$20                  
CODE_27C7E8:        LDA $1FC8,x               
CODE_27C7EB:        CMP #$13                  
CODE_27C7ED:        BEQ CODE_27C7F2           
CODE_27C7EF:        BRL CODE_27C8A1           

CODE_27C7F2:        LDA $06C7,x               
CODE_27C7F5:        BEQ CODE_27C848           
CODE_27C7F7:        LDA $E2,x                 
CODE_27C7F9:        XBA                       
CODE_27C7FA:        LDA $05C9,x               
CODE_27C7FD:        REP #$30                  
CODE_27C7FF:        SEC                       
CODE_27C800:        SBC $0210                 
CODE_27C803:        STA $D8                   
CODE_27C805:        SEP #$20                  
CODE_27C807:        LDY $C6,x                 
CODE_27C809:        JSR CODE_27CE16           
CODE_27C80C:        LDA #$4A                  
CODE_27C80E:        STA $0802,y               
CODE_27C811:        LDA #$06                  
CODE_27C813:        STA $00                   
CODE_27C815:        LDA $06D1,x               
CODE_27C818:        BEQ CODE_27C826           
CODE_27C81A:        JSL CODE_27AA74           
CODE_27C81E:        ASL A                     
CODE_27C81F:        STA $00                   
CODE_27C821:        LDA #$4B                  
CODE_27C823:        STA $0802,y               
CODE_27C826:        LDA $0565                 
CODE_27C829:        ASL A                     
CODE_27C82A:        ASL A                     
CODE_27C82B:        ASL A                     
CODE_27C82C:        ASL A                     
CODE_27C82D:        AND #$C0                  
CODE_27C82F:        ORA #$20                  
CODE_27C831:        ORA $00                   
CODE_27C833:        STA $0803,y               
CODE_27C836:        REP #$20                  
CODE_27C838:        TYA                       
CODE_27C839:        LSR A                     
CODE_27C83A:        LSR A                     
CODE_27C83B:        TAY                       
CODE_27C83C:        SEP #$20                  
CODE_27C83E:        LDA $D9                   
CODE_27C840:        AND #$01                  
CODE_27C842:        STA $0A20,y               
CODE_27C845:        SEP #$10                  
CODE_27C847:        RTS                       

CODE_27C848:        LDA $E2,x                 
CODE_27C84A:        XBA                       
CODE_27C84B:        LDA $05C9,x               
CODE_27C84E:        REP #$30                  
CODE_27C850:        SEC                       
CODE_27C851:        SBC $0210                 
CODE_27C854:        STA $D8                   
CODE_27C856:        CLC                       
CODE_27C857:        ADC #$0008                
CODE_27C85A:        STA $DA                   
CODE_27C85C:        SEP #$20                  
CODE_27C85E:        LDY $C6,x                 
CODE_27C860:        JSR CODE_27CF49           
CODE_27C863:        LDA #$0C                  
CODE_27C865:        STA $0802,y               
CODE_27C868:        INC A                     
CODE_27C869:        STA $0806,y               
CODE_27C86C:        INC A                     
CODE_27C86D:        STA $080A,y               
CODE_27C870:        INC A                     
CODE_27C871:        STA $080E,y               
CODE_27C874:        LDA #$20                  
CODE_27C876:        STA $0803,y               
CODE_27C879:        STA $0807,y               
CODE_27C87C:        STA $080B,y               
CODE_27C87F:        STA $080F,y               
CODE_27C882:        REP #$20                  
CODE_27C884:        TYA                       
CODE_27C885:        LSR A                     
CODE_27C886:        LSR A                     
CODE_27C887:        TAY                       
CODE_27C888:        SEP #$20                  
CODE_27C88A:        LDA $D9                   
CODE_27C88C:        AND #$01                  
CODE_27C88E:        STA $0A20,y               
CODE_27C891:        STA $0A21,y               
CODE_27C894:        LDA $DB                   
CODE_27C896:        AND #$01                  
CODE_27C898:        STA $0A22,y               
CODE_27C89B:        STA $0A23,y               
CODE_27C89E:        SEP #$10                  
CODE_27C8A0:        RTS                       

CODE_27C8A1:        LDA $05D3,x               
CODE_27C8A4:        CMP #$20                  
CODE_27C8A6:        BMI CODE_27C8B6           
CODE_27C8A8:        JSR CODE_27D37F           
CODE_27C8AB:        INC $0422                 
CODE_27C8AE:        JSR CODE_278ADB           
CODE_27C8B1:        LDA #$89                  
CODE_27C8B3:        JMP CODE_27CD2B           

CODE_27C8B6:        LDA $E2,x                 
CODE_27C8B8:        XBA                       
CODE_27C8B9:        LDA $05C9,x               
CODE_27C8BC:        REP #$30                  
CODE_27C8BE:        SEC                       
CODE_27C8BF:        SBC $0210                 
CODE_27C8C2:        CLC                       
CODE_27C8C3:        ADC #$0004                
CODE_27C8C6:        STA $D8                   
CODE_27C8C8:        SEP #$20                  
CODE_27C8CA:        LDY $C6,x                 
CODE_27C8CC:        JSR CODE_27CE16           
CODE_27C8CF:        LDA $0800,y               
CODE_27C8D2:        CLC                       
CODE_27C8D3:        ADC #$04                  
CODE_27C8D5:        STA $0800,y               
CODE_27C8D8:        STA $0804,y               
CODE_27C8DB:        LDA $0801,y               
CODE_27C8DE:        CLC                       
CODE_27C8DF:        ADC #$08                  
CODE_27C8E1:        STA $0805,y               
CODE_27C8E4:        REP #$20                  
CODE_27C8E6:        LDA $06BD,x               
CODE_27C8E9:        LSR A                     
CODE_27C8EA:        LSR A                     
CODE_27C8EB:        AND #$0003                
CODE_27C8EE:        TAX                       
CODE_27C8EF:        SEP #$20                  
CODE_27C8F1:        LDA $C786,x               
CODE_27C8F4:        STA $0802,y               
CODE_27C8F7:        INC A                     
CODE_27C8F8:        STA $0806,y               
CODE_27C8FB:        LDA $C78A,x               
CODE_27C8FE:        STA $0803,y               
CODE_27C901:        STA $0807,y               
CODE_27C904:        REP #$20                  
CODE_27C906:        TYA                       
CODE_27C907:        LSR A                     
CODE_27C908:        LSR A                     
CODE_27C909:        TAY                       
CODE_27C90A:        SEP #$20                  
CODE_27C90C:        LDA $D9                   
CODE_27C90E:        AND #$01                  
CODE_27C910:        STA $0A20,y               
CODE_27C913:        STA $0A21,y               
CODE_27C916:        SEP #$10                  
CODE_27C918:        LDX $9B                   
CODE_27C91A:        RTS                       

CODE_27C91B:        LDA $06C7,x               
CODE_27C91E:        BNE CODE_27C991           
CODE_27C920:        LDA $06D1,x               
CODE_27C923:        BEQ CODE_27C992           
CODE_27C925:        LSR A                     
CODE_27C926:        LSR A                     
CODE_27C927:        LSR A                     
CODE_27C928:        LSR A                     
CODE_27C929:        AND #$03                  
CODE_27C92B:        TAY                       
CODE_27C92C:        LDA $15                   
CODE_27C92E:        AND $C7A2,y               
CODE_27C931:        BNE CODE_27C939           
CODE_27C933:        JSR CODE_27D7E3           
CODE_27C936:        JSR CODE_27D80F           
CODE_27C939:        JSR CODE_27D728           
CODE_27C93C:        LDA $E2,x                 
CODE_27C93E:        XBA                       
CODE_27C93F:        LDA $05C9,x               
CODE_27C942:        REP #$30                  
CODE_27C944:        SEC                       
CODE_27C945:        SBC $0210                 
CODE_27C948:        STA $D8                   
CODE_27C94A:        SEP #$20                  
CODE_27C94C:        LDY $C6,x                 
CODE_27C94E:        JSR CODE_27CE16           
CODE_27C951:        LDA $0800,y               
CODE_27C954:        STA $0804,y               
CODE_27C957:        LDA $0801,y               
CODE_27C95A:        CLC                       
CODE_27C95B:        ADC #$08                  
CODE_27C95D:        STA $0805,y               
CODE_27C960:        LDA #$3A                  
CODE_27C962:        STA $0802,y               
CODE_27C965:        INC A                     
CODE_27C966:        STA $0806,y               
CODE_27C969:        LDA $0565                 
CODE_27C96C:        LSR A                     
CODE_27C96D:        LSR A                     
CODE_27C96E:        CLC                       
CODE_27C96F:        ADC $9B                   
CODE_27C971:        AND #$03                  
CODE_27C973:        ASL A                     
CODE_27C974:        ORA #$21                  
CODE_27C976:        STA $0803,y               
CODE_27C979:        STA $0807,y               
CODE_27C97C:        REP #$20                  
CODE_27C97E:        TYA                       
CODE_27C97F:        LSR A                     
CODE_27C980:        LSR A                     
CODE_27C981:        TAY                       
CODE_27C982:        SEP #$20                  
CODE_27C984:        LDA $D9                   
CODE_27C986:        AND #$01                  
CODE_27C988:        STA $0A20,y               
CODE_27C98B:        STA $0A21,y               
CODE_27C98E:        SEP #$10                  
CODE_27C990:        RTS                       

CODE_27C991:        RTS                       

CODE_27C992:        JMP CODE_27D37F           

CODE_27C995:        LDA $9C                   
CODE_27C997:        BNE CODE_27C9F6           
CODE_27C999:        JSR CODE_27CC1B           
CODE_27C99C:        DEC $05D3,x               
CODE_27C99F:        LDA $1CFC                 
CODE_27C9A2:        CLC                       
CODE_27C9A3:        ADC $06BD,x               
CODE_27C9A6:        STA $1CFC                 
CODE_27C9A9:        BCC CODE_27C9AE           
CODE_27C9AB:        INC $1CFD                 
CODE_27C9AE:        JSR CODE_27C442           
CODE_27C9B1:        BCC CODE_27C9F6           
CODE_27C9B3:        LDA $05D3,x               
CODE_27C9B6:        BMI CODE_27C9F6           
CODE_27C9B8:        CMP #$20                  
CODE_27C9BA:        BCC CODE_27C9E3           
CODE_27C9BC:        LSR A                     
CODE_27C9BD:        JSL CODE_27A859           
CODE_27C9C1:        STA $05D3,x               
CODE_27C9C4:        DEC $05BF,x               
CODE_27C9C7:        DEC $05BF,x               
CODE_27C9CA:        LDA $1CFE                 
CODE_27C9CD:        BNE CODE_27C9D4           
CODE_27C9CF:        LDA #$38                  
CODE_27C9D1:        STA $1200                 
CODE_27C9D4:        INC $1CFE                 
CODE_27C9D7:        LDA $06BD,x               
CODE_27C9DA:        CLC                       
CODE_27C9DB:        ADC #$80                  
CODE_27C9DD:        STA $06BD,x               
CODE_27C9E0:        JMP CODE_27C9F6           

CODE_27C9E3:        LDA #$00                  
CODE_27C9E5:        STA $05D3,x               
CODE_27C9E8:        STA $1CFD                 
CODE_27C9EB:        LDA $05BF,x               
CODE_27C9EE:        AND #$F0                  
CODE_27C9F0:        CLC                       
CODE_27C9F1:        ADC #$05                  
CODE_27C9F3:        STA $05BF,x               
CODE_27C9F6:        JSR CODE_27D728           
CODE_27C9F9:        BEQ CODE_27C9FC           
CODE_27C9FB:        RTS                       

CODE_27C9FC:        LDA $E2,x                 
CODE_27C9FE:        XBA                       
CODE_27C9FF:        LDA $05C9,y               
CODE_27CA02:        REP #$30                  
CODE_27CA04:        SEC                       
CODE_27CA05:        SBC $0210                 
CODE_27CA08:        STA $D8                   
CODE_27CA0A:        CLC                       
CODE_27CA0B:        ADC #$0008                
CODE_27CA0E:        STA $DA                   
CODE_27CA10:        SEP #$20                  
CODE_27CA12:        LDY $C6,x                 
CODE_27CA14:        JSR CODE_27CF49           
CODE_27CA17:        LDA $0801,y               
CODE_27CA1A:        SBC #$04                  
CODE_27CA1C:        STA $0801,y               
CODE_27CA1F:        STA $0809,y               
CODE_27CA22:        CLC                       
CODE_27CA23:        ADC #$08                  
CODE_27CA25:        STA $0805,y               
CODE_27CA28:        STA $080D,y               
CODE_27CA2B:        REP #$20                  
CODE_27CA2D:        LDA $1CFE                 
CODE_27CA30:        AND #$00FF                
CODE_27CA33:        LSR A                     
CODE_27CA34:        LDA $1CFD                 
CODE_27CA37:        AND #$0007                
CODE_27CA3A:        BCC CODE_27CA3F           
CODE_27CA3C:        EOR #$0007                
CODE_27CA3F:        AND #$00FF                
CODE_27CA42:        TAX                       
CODE_27CA43:        SEP #$20                  
CODE_27CA45:        LDA $C7A6,x               
CODE_27CA48:        STA $0802,y               
CODE_27CA4B:        INC A                     
CODE_27CA4C:        STA $0806,y               
CODE_27CA4F:        LDA $C7AE,x               
CODE_27CA52:        STA $080A,y               
CODE_27CA55:        INC A                     
CODE_27CA56:        STA $080E,y               
CODE_27CA59:        LDA $C7B6,x               
CODE_27CA5C:        STA $0803,y               
CODE_27CA5F:        STA $0807,y               
CODE_27CA62:        ORA #$40                  
CODE_27CA64:        STA $080B,y               
CODE_27CA67:        STA $080F,y               
CODE_27CA6A:        AND #$80                  
CODE_27CA6C:        BEQ CODE_27CA8A           
CODE_27CA6E:        LDA $0802,y               
CODE_27CA71:        INC A                     
CODE_27CA72:        STA $0802,y               
CODE_27CA75:        LDA $0806,y               
CODE_27CA78:        DEC A                     
CODE_27CA79:        STA $0806,y               
CODE_27CA7C:        LDA $080A,y               
CODE_27CA7F:        INC A                     
CODE_27CA80:        STA $080A,y               
CODE_27CA83:        LDA $080E,y               
CODE_27CA86:        DEC A                     
CODE_27CA87:        STA $080E,y               
CODE_27CA8A:        REP #$20                  
CODE_27CA8C:        TYA                       
CODE_27CA8D:        LSR A                     
CODE_27CA8E:        LSR A                     
CODE_27CA8F:        TAY                       
CODE_27CA90:        SEP #$20                  
CODE_27CA92:        LDA $D9                   
CODE_27CA94:        AND #$01                  
CODE_27CA96:        STA $0A20,y               
CODE_27CA99:        STA $0A21,y               
CODE_27CA9C:        LDA $DB                   
CODE_27CA9E:        AND #$01                  
CODE_27CAA0:        STA $0A22,y               
CODE_27CAA3:        STA $0A23,y               
CODE_27CAA6:        SEP #$10                  
CODE_27CAA8:        LDX $9B                   
CODE_27CAAA:        JMP CODE_27D302           

CODE_27CAAD:        RTS                       

CODE_27CAAE:        LDA $9C                   
CODE_27CAB0:        BNE CODE_27CB05           
CODE_27CAB2:        LDA $0597,x               
CODE_27CAB5:        BEQ CODE_27CABF           
CODE_27CAB7:        LDA $15                   
CODE_27CAB9:        LSR A                     
CODE_27CABA:        BCC CODE_27CABF           
CODE_27CABC:        DEC $0597,x               
CODE_27CABF:        LDA $06C7,x               
CODE_27CAC2:        BEQ CODE_27CAF9           
CODE_27CAC4:        LDY $06BD,x               
CODE_27CAC7:        LDA $0661,y               
CODE_27CACA:        CMP #$02                  
CODE_27CACC:        BNE CODE_27CAEF           
CODE_27CACE:        LDA $0671,y               
CODE_27CAD1:        CMP #$67                  
CODE_27CAD3:        BNE CODE_27CAEF           
CODE_27CAD5:        LDA $0068,y               
CODE_27CAD8:        CMP #$4F                  
CODE_27CADA:        BCC CODE_27CAEF           
CODE_27CADC:        LDA $0565                 
CODE_27CADF:        INC $05C9,x               
CODE_27CAE2:        AND #$02                  
CODE_27CAE4:        BNE CODE_27CAEC           
CODE_27CAE6:        DEC $05C9,x               
CODE_27CAE9:        DEC $05C9,x               
CODE_27CAEC:        JMP CODE_27CB05           

CODE_27CAEF:        LDA #$00                  
CODE_27CAF1:        STA $06C7,x               
CODE_27CAF4:        LDA #$C0                  
CODE_27CAF6:        STA $0597,x               
CODE_27CAF9:        LDA $15                   
CODE_27CAFB:        AND #$03                  
CODE_27CAFD:        BNE CODE_27CB05           
CODE_27CAFF:        JSR CODE_27D7E3           
CODE_27CB02:        JSR CODE_27D80F           
CODE_27CB05:        LDA $0597,x               
CODE_27CB08:        BNE CODE_27CB0D           
CODE_27CB0A:        JMP CODE_27D37F           

CODE_27CB0D:        CMP #$30                  
CODE_27CB0F:        BCS CODE_27CB1A                   
CODE_27CB11:        TXA                       
CODE_27CB12:        ASL A                     
CODE_27CB13:        ADC $0597,x               
CODE_27CB16:        AND #$02                  
CODE_27CB18:        BNE CODE_27CB73           
CODE_27CB1A:        JSR CODE_27D728           
CODE_27CB1D:        LDA $E2,x                 
CODE_27CB1F:        XBA                       
CODE_27CB20:        LDA $05C9,x               
CODE_27CB23:        REP #$30                  
CODE_27CB25:        SEC                       
CODE_27CB26:        SBC $0210                 
CODE_27CB29:        STA $D8                   
CODE_27CB2B:        SEP #$20                  
CODE_27CB2D:        LDY $C6,x                 
CODE_27CB2F:        JSR CODE_27CE16           
CODE_27CB32:        LDA $0800,y               
CODE_27CB35:        STA $0804,y               
CODE_27CB38:        LDA $0801,y               
CODE_27CB3B:        CLC                       
CODE_27CB3C:        ADC #$08                  
CODE_27CB3E:        STA $0805,y               
CODE_27CB41:        LDA $0565                 
CODE_27CB44:        LSR A                     
CODE_27CB45:        LSR A                     
CODE_27CB46:        LSR A                     
CODE_27CB47:        LDA #$18                  
CODE_27CB49:        BCC CODE_27CB4D           
CODE_27CB4B:        LDA #$1A                  
CODE_27CB4D:        STA $0802,y               
CODE_27CB50:        INC A                     
CODE_27CB51:        STA $0806,y               
CODE_27CB54:        LDA #$23                  
CODE_27CB56:        STA $0803,y               
CODE_27CB59:        STA $0807,y               
CODE_27CB5C:        REP #$20                  
CODE_27CB5E:        TYA                       
CODE_27CB5F:        LSR A                     
CODE_27CB60:        LSR A                     
CODE_27CB61:        TAY                       
CODE_27CB62:        SEP #$20                  
CODE_27CB64:        LDA $D9                   
CODE_27CB66:        AND #$01                  
CODE_27CB68:        STA $0A20,y               
CODE_27CB6B:        STA $0A21,y               
CODE_27CB6E:        SEP #$10                  
CODE_27CB70:        JMP CODE_27D302           

CODE_27CB73:        RTS                       

CODE_27CB74:        LDA $9C                   
CODE_27CB76:        BNE CODE_27CBB7           
CODE_27CB78:        LDA $06D1,x               
CODE_27CB7B:        BNE CODE_27CB80           
CODE_27CB7D:        JMP CODE_27D37F           

CODE_27CB80:        LDA $06C7,x               
CODE_27CB83:        BNE CODE_27CBA5           
CODE_27CB85:        JSR CODE_27D80F           
CODE_27CB88:        LDA $05D3,x               
CODE_27CB8B:        BMI CODE_27CB97           
CODE_27CB8D:        SEC                       
CODE_27CB8E:        SBC #$07                  
CODE_27CB90:        STA $05D3,x               
CODE_27CB93:        BPL CODE_27CBA2           
CODE_27CB95:        BMI CODE_27CB9F           
CODE_27CB97:        CLC                       
CODE_27CB98:        ADC #$07                  
CODE_27CB9A:        STA $05D3,x               
CODE_27CB9D:        BMI CODE_27CBA2           
CODE_27CB9F:        INC $06C7,x               
CODE_27CBA2:        JMP CODE_27CBB7           

CODE_27CBA5:        INC $06BD,x               
CODE_27CBA8:        LDA $06BD,x               
CODE_27CBAB:        AND #$30                  
CODE_27CBAD:        BEQ CODE_27CBB7           
CODE_27CBAF:        DEC $05BF,x               
CODE_27CBB2:        BNE CODE_27CBB7           
CODE_27CBB4:        DEC $1FD7,x               
CODE_27CBB7:        LDA $0565                 
CODE_27CBBA:        AND #$0C                  
CODE_27CBBC:        LSR A                     
CODE_27CBBD:        LSR A                     
CODE_27CBBE:        TAY                       
CODE_27CBBF:        LDA $C731,y               
CODE_27CBC2:        STA $00                   
CODE_27CBC4:        JSR CODE_27D728           
CODE_27CBC7:        LDA $E2,x                 
CODE_27CBC9:        XBA                       
CODE_27CBCA:        LDA $05C9,x               
CODE_27CBCD:        REP #$30                  
CODE_27CBCF:        SEC                       
CODE_27CBD0:        SBC $0210                 
CODE_27CBD3:        STA $D8                   
CODE_27CBD5:        SEP #$20                  
CODE_27CBD7:        LDY $C6,x                 
CODE_27CBD9:        JSR CODE_27CE16           
CODE_27CBDC:        LDA $0801,y               
CODE_27CBDF:        CLC                       
CODE_27CBE0:        ADC #$08                  
CODE_27CBE2:        STA $0805,y               
CODE_27CBE5:        LDA $05C9,x               
CODE_27CBE8:        CLC                       
CODE_27CBE9:        ADC $00                   
CODE_27CBEB:        SEC                       
CODE_27CBEC:        SBC $0210                 
CODE_27CBEF:        STA $0800,y               
CODE_27CBF2:        STA $0804,y               
CODE_27CBF5:        LDA #$C6                  
CODE_27CBF7:        STA $0802,y               
CODE_27CBFA:        INC A                     
CODE_27CBFB:        STA $0806,y               
CODE_27CBFE:        LDA #$23                  
CODE_27CC00:        STA $0803,y               
CODE_27CC03:        STA $0807,y               
CODE_27CC06:        REP #$20                  
CODE_27CC08:        TYA                       
CODE_27CC09:        LSR A                     
CODE_27CC0A:        LSR A                     
CODE_27CC0B:        TAY                       
CODE_27CC0C:        SEP #$20                  
CODE_27CC0E:        LDA $D9                   
CODE_27CC10:        AND #$01                  
CODE_27CC12:        STA $0A20,y               
CODE_27CC15:        STA $0A21,y               
CODE_27CC18:        SEP #$10                  
CODE_27CC1A:        RTS                       

CODE_27CC1B:        JSR CODE_27D7E3           
CODE_27CC1E:        JSR CODE_27D80F           
CODE_27CC21:        LDA $05D3,x               
CODE_27CC24:        BMI CODE_27CC2A           
CODE_27CC26:        CMP #$6E                  
CODE_27CC28:        BCS CODE_27CC30                   
CODE_27CC2A:        INC $05D3,x               
CODE_27CC2D:        INC $05D3,x               
CODE_27CC30:        RTS                       

CODE_27CC31:        LDA $9C                   
CODE_27CC33:        BNE CODE_27CC46           
CODE_27CC35:        JSR CODE_27CC1B           
CODE_27CC38:        JSR CODE_27CD5F           
CODE_27CC3B:        LDA $06C7,x               
CODE_27CC3E:        BNE CODE_27CC46           
CODE_27CC40:        DEC $05D3,x               
CODE_27CC43:        DEC $05D3,x               
CODE_27CC46:        JSR CODE_27D728           
CODE_27CC49:        BNE CODE_27CC30           
CODE_27CC4B:        LDA $E2,x                 
CODE_27CC4D:        XBA                       
CODE_27CC4E:        LDA $05C9,x               
CODE_27CC51:        REP #$30                  
CODE_27CC53:        SEC                       
CODE_27CC54:        SBC $0210                 
CODE_27CC57:        STA $D8                   
CODE_27CC59:        CLC                       
CODE_27CC5A:        ADC #$0008                
CODE_27CC5D:        STA $DA                   
CODE_27CC5F:        SEP #$20                  
CODE_27CC61:        LDY $C6,x                 
CODE_27CC63:        JSR CODE_27CF49           
CODE_27CC66:        LDA #$2A                  
CODE_27CC68:        STA $0803,y               
CODE_27CC6B:        STA $0807,y               
CODE_27CC6E:        STA $080B,y               
CODE_27CC71:        STA $080F,y               
CODE_27CC74:        LDA #$CE                  
CODE_27CC76:        STA $080A,y               
CODE_27CC79:        INC A                     
CODE_27CC7A:        STA $080E,y               
CODE_27CC7D:        LDA #$CC                  
CODE_27CC7F:        STA $0802,y               
CODE_27CC82:        INC A                     
CODE_27CC83:        STA $0806,y               
CODE_27CC86:        REP #$20                  
CODE_27CC88:        TYA                       
CODE_27CC89:        LSR A                     
CODE_27CC8A:        LSR A                     
CODE_27CC8B:        TAY                       
CODE_27CC8C:        SEP #$20                  
CODE_27CC8E:        LDA $D9                   
CODE_27CC90:        AND #$01                  
CODE_27CC92:        STA $0A20,y               
CODE_27CC95:        STA $0A21,y               
CODE_27CC98:        LDA $DB                   
CODE_27CC9A:        AND #$01                  
CODE_27CC9C:        STA $0A22,y               
CODE_27CC9F:        STA $0A23,y               
CODE_27CCA2:        SEP #$10                  
CODE_27CCA4:        LDA $06C7,x               
CODE_27CCA7:        ORA $00BF                 
CODE_27CCAA:        ORA $0583                 
CODE_27CCAD:        BNE CODE_27CD25           
CODE_27CCAF:        LDY #$00                  
CODE_27CCB1:        LDA $BB                   
CODE_27CCB3:        BEQ CODE_27CCBB           
CODE_27CCB5:        LDA $056F                 
CODE_27CCB8:        BNE CODE_27CCBB           
CODE_27CCBA:        INY                       
CODE_27CCBB:        LDA $05BF,x               
CODE_27CCBE:        SEC                       
CODE_27CCBF:        SBC $70                   
CODE_27CCC1:        SEC                       
CODE_27CCC2:        SBC $C7BE,y               
CODE_27CCC5:        CMP $C7C0,y               
CODE_27CCC8:        BCS CODE_27CD25                   
CODE_27CCCA:        LDA $05C9,x               
CODE_27CCCD:        CLC                       
CODE_27CCCE:        ADC #$08                  
CODE_27CCD0:        SEC                       
CODE_27CCD1:        SBC $5E                   
CODE_27CCD3:        CMP #$14                  
CODE_27CCD5:        BCS CODE_27CD25                   
CODE_27CCD7:        LDA $0553                 
CODE_27CCDA:        BNE CODE_27CD09           
CODE_27CCDC:        LDA $9D                   
CODE_27CCDE:        BMI CODE_27CD22           
CODE_27CCE0:        LDA $1FD7,x               
CODE_27CCE3:        XBA                       
CODE_27CCE4:        LDA $05BF,x               
CODE_27CCE7:        REP #$20                  
CODE_27CCE9:        SEC                       
CODE_27CCEA:        SBC $0216                 
CODE_27CCED:        SEC                       
CODE_27CCEE:        SBC #$0013                
CODE_27CCF1:        STA $D8                   
CODE_27CCF3:        SEP #$20                  
CODE_27CCF5:        CMP $82                   
CODE_27CCF7:        PHP                       
CODE_27CCF8:        LDY $0544                 
CODE_27CCFB:        BPL CODE_27CD06           
CODE_27CCFD:        LDY $D9                   
CODE_27CCFF:        BMI CODE_27CD06           
CODE_27CD01:        PLP                       
CODE_27CD02:        BCS CODE_27CD22                   
CODE_27CD04:        BRA CODE_27CD09           

CODE_27CD06:        PLP                       
CODE_27CD07:        BCC CODE_27CD22           
CODE_27CD09:        LDA #$01                  
CODE_27CD0B:        STA $06C7,x               
CODE_27CD0E:        LDA #$00                  
CODE_27CD10:        STA $05DD,x               
CODE_27CD13:        STA $05D3,x               
CODE_27CD16:        LDA #$D0                  
CODE_27CD18:        STA $9D                   
CODE_27CD1A:        LDA #$02                  
CODE_27CD1C:        STA $1200                 
CODE_27CD1F:        JMP CODE_27CD26           

CODE_27CD22:        JMP CODE_27D336           

CODE_27CD25:        RTS                       

CODE_27CD26:        JSR CODE_278ADB           
CODE_27CD29:        LDA #$85                  
CODE_27CD2B:        CLC                       
CODE_27CD2C:        ADC $05F4                 
CODE_27CD2F:        STA $079F,y               
CODE_27CD32:        INC $05F4                 
CODE_27CD35:        LDA #$30                  
CODE_27CD37:        STA $07A4,y               
CODE_27CD3A:        LDA $05BF,x               
CODE_27CD3D:        SEC                       
CODE_27CD3E:        SBC $0543                 
CODE_27CD41:        SBC #$06                  
CODE_27CD43:        CMP #$C0                  
CODE_27CD45:        BCC CODE_27CD49           
CODE_27CD47:        LDA #$05                  
CODE_27CD49:        STA $07A9,y               
CODE_27CD4C:        LDA $05C9,x               
CODE_27CD4F:        SEC                       
CODE_27CD50:        SBC $0210                 
CODE_27CD53:        STA $07AE,y               
CODE_27CD56:        LDA $E2,x                 
CODE_27CD58:        SBC $0211                 
CODE_27CD5B:        STA $0251,y               
CODE_27CD5E:        RTS                       

CODE_27CD5F:        LDA $05FC                 
CODE_27CD62:        BEQ CODE_27CD7A           
CODE_27CD64:        LDY #$00                  
CODE_27CD66:        LDA $0780                 
CODE_27CD69:        BPL CODE_27CD6C           
CODE_27CD6B:        DEY                       
CODE_27CD6C:        CLC                       
CODE_27CD6D:        ADC $05BF,x               
CODE_27CD70:        STA $05BF,x               
CODE_27CD73:        TYA                       
CODE_27CD74:        ADC $1FD7,x               
CODE_27CD77:        STA $1FD7,x               
CODE_27CD7A:        RTS                       

CODE_27CD7B:        LDA $9C                   
CODE_27CD7D:        BNE CODE_27CD90           
CODE_27CD7F:        JSR CODE_27CD5F           
CODE_27CD82:        JSR CODE_27D7E3           
CODE_27CD85:        LDA $05D3,x               
CODE_27CD88:        BEQ CODE_27CD8D           
CODE_27CD8A:        INC $05D3,x               
CODE_27CD8D:        JSR CODE_27D80F           
CODE_27CD90:        JSR CODE_27D302           
CODE_27CD93:        JSR CODE_27D728           
CODE_27CD96:        BNE CODE_27CE15           
CODE_27CD98:        LDA $05DD,x               
CODE_27CD9B:        AND #$80                  
CODE_27CD9D:        STA $00                   
CODE_27CD9F:        LDA $E2,x                 
CODE_27CDA1:        XBA                       
CODE_27CDA2:        LDA $05C9,x               
CODE_27CDA5:        REP #$30                  
CODE_27CDA7:        SEC                       
CODE_27CDA8:        SBC $0210                 
CODE_27CDAB:        STA $D8                   
CODE_27CDAD:        LDY $C6,x                 
CODE_27CDAF:        LDA $0565                 
CODE_27CDB2:        LSR A                     
CODE_27CDB3:        CLC                       
CODE_27CDB4:        ADC $9B                   
CODE_27CDB6:        AND #$0003                
CODE_27CDB9:        TAX                       
CODE_27CDBA:        SEP #$20                  
CODE_27CDBC:        LDA $C7C2,x               
CODE_27CDBF:        STA $0802,y               
CODE_27CDC2:        INC A                     
CODE_27CDC3:        STA $0806,y               
CODE_27CDC6:        LDA $C7C6,x               
CODE_27CDC9:        EOR $00                   
CODE_27CDCB:        ORA #$20                  
CODE_27CDCD:        STA $0803,y               
CODE_27CDD0:        STA $0807,y               
CODE_27CDD3:        AND #$80                  
CODE_27CDD5:        BEQ CODE_27CDE5           
CODE_27CDD7:        LDA $0802,y               
CODE_27CDDA:        PHA                       
CODE_27CDDB:        LDA $0806,y               
CODE_27CDDE:        STA $0802,y               
CODE_27CDE1:        PLA                       
CODE_27CDE2:        STA $0806,y               
CODE_27CDE5:        REP #$20                  
CODE_27CDE7:        LDA $9B                   
CODE_27CDE9:        AND #$00FF                
CODE_27CDEC:        TAX                       
CODE_27CDED:        SEP #$20                  
CODE_27CDEF:        JSR CODE_27CE16           
CODE_27CDF2:        LDA $0800,y               
CODE_27CDF5:        STA $0804,y               
CODE_27CDF8:        LDA $0801,y               
CODE_27CDFB:        CLC                       
CODE_27CDFC:        ADC #$08                  
CODE_27CDFE:        STA $0805,y               
CODE_27CE01:        REP #$20                  
CODE_27CE03:        TYA                       
CODE_27CE04:        LSR A                     
CODE_27CE05:        LSR A                     
CODE_27CE06:        TAY                       
CODE_27CE07:        SEP #$20                  
CODE_27CE09:        LDA $D9                   
CODE_27CE0B:        AND #$01                  
CODE_27CE0D:        STA $0A20,y               
CODE_27CE10:        STA $0A21,y               
CODE_27CE13:        SEP #$10                  
CODE_27CE15:        RTS                       

CODE_27CE16:        LDA $05BF,x               
CODE_27CE19:        SEC                       
CODE_27CE1A:        SBC $0543                 
CODE_27CE1D:        STA $0801,y               
CODE_27CE20:        LDA $05C9,x               
CODE_27CE23:        SEC                       
CODE_27CE24:        SBC $0210                 
CODE_27CE27:        STA $0800,y               
CODE_27CE2A:        RTS                       

CODE_27CE2B:        LDA $9C                   
CODE_27CE2D:        BNE CODE_27CE35           
CODE_27CE2F:        JSR CODE_27D7E3           
CODE_27CE32:        JSR CODE_27D80F           
CODE_27CE35:        JSR CODE_27D728           
CODE_27CE38:        LDA $E2,x                 
CODE_27CE3A:        XBA                       
CODE_27CE3B:        LDA $05C9,x               
CODE_27CE3E:        REP #$30                  
CODE_27CE40:        SEC                       
CODE_27CE41:        SBC $0210                 
CODE_27CE44:        STA $D8                   
CODE_27CE46:        LDY $C6,x                 
CODE_27CE48:        LDA $06D1,x               
CODE_27CE4B:        AND #$00FF                
CODE_27CE4E:        TAX                       
CODE_27CE4F:        SEP #$20                  
CODE_27CE51:        LDA #$BE                  
CODE_27CE53:        CPX #$00E0                
CODE_27CE56:        BCS CODE_27CE61                   
CODE_27CE58:        LDA #$BA                  
CODE_27CE5A:        CPX #$00C0                
CODE_27CE5D:        BCS CODE_27CE61                   
CODE_27CE5F:        LDA #$BC                  
CODE_27CE61:        STA $0802,y               
CODE_27CE64:        INC A                     
CODE_27CE65:        STA $0806,y               
CODE_27CE68:        REP #$20                  
CODE_27CE6A:        LDA $9B                   
CODE_27CE6C:        AND #$00FF                
CODE_27CE6F:        TAX                       
CODE_27CE70:        SEP #$20                  
CODE_27CE72:        JSR CODE_27CE16           
CODE_27CE75:        LDA $0801,y               
CODE_27CE78:        CLC                       
CODE_27CE79:        ADC #$08                  
CODE_27CE7B:        STA $0805,y               
CODE_27CE7E:        LDA $0800,y               
CODE_27CE81:        STA $0804,y               
CODE_27CE84:        TXA                       
CODE_27CE85:        LSR A                     
CODE_27CE86:        ROR A                     
CODE_27CE87:        AND #$80                  
CODE_27CE89:        STA $00                   
CODE_27CE8B:        LDA $15                   
CODE_27CE8D:        LSR A                     
CODE_27CE8E:        LSR A                     
CODE_27CE8F:        LSR A                     
CODE_27CE90:        ROR A                     
CODE_27CE91:        AND #$80                  
CODE_27CE93:        ORA #$22                  
CODE_27CE95:        EOR $00                   
CODE_27CE97:        STA $0803,y               
CODE_27CE9A:        STA $0807,y               
CODE_27CE9D:        AND #$80                  
CODE_27CE9F:        BEQ CODE_27CEAF           
CODE_27CEA1:        LDA $0802,y               
CODE_27CEA4:        PHA                       
CODE_27CEA5:        LDA $0806,y               
CODE_27CEA8:        STA $0802,y               
CODE_27CEAB:        PLA                       
CODE_27CEAC:        STA $0806,y               
CODE_27CEAF:        PHY                       
CODE_27CEB0:        REP #$20                  
CODE_27CEB2:        TYA                       
CODE_27CEB3:        LSR A                     
CODE_27CEB4:        LSR A                     
CODE_27CEB5:        TAY                       
CODE_27CEB6:        SEP #$20                  
CODE_27CEB8:        LDA $D9                   
CODE_27CEBA:        AND #$01                  
CODE_27CEBC:        STA $0A20,y               
CODE_27CEBF:        STA $0A21,y               
CODE_27CEC2:        PLY                       
CODE_27CEC3:        SEP #$10                  
CODE_27CEC5:        JMP CODE_27D302           

CODE_27CEC8:        RTS                       

CODE_27CEC9:        LDA $9C                   
CODE_27CECB:        BNE CODE_27CED0           
CODE_27CECD:        JSR CODE_27CC1B           
CODE_27CED0:        JSR CODE_27D728           
CODE_27CED3:        LDA $E2,x                 
CODE_27CED5:        XBA                       
CODE_27CED6:        LDA $05C9,x               
CODE_27CED9:        REP #$30                  
CODE_27CEDB:        SEC                       
CODE_27CEDC:        SBC $0210                 
CODE_27CEDF:        STA $D8                   
CODE_27CEE1:        CLC                       
CODE_27CEE2:        ADC #$0008                
CODE_27CEE5:        STA $DA                   
CODE_27CEE7:        LDY $C6,x                 
CODE_27CEE9:        LDA $06C7,x               
CODE_27CEEC:        AND #$00FF                
CODE_27CEEF:        TAX                       
CODE_27CEF0:        SEP #$20                  
CODE_27CEF2:        LDA $C7D2,x               
CODE_27CEF5:        STA $0803,y               
CODE_27CEF8:        STA $0807,y               
CODE_27CEFB:        CPX #$0000                
CODE_27CEFE:        BEQ CODE_27CF02           
CODE_27CF00:        ORA #$40                  
CODE_27CF02:        STA $080B,y               
CODE_27CF05:        STA $080F,y               
CODE_27CF08:        TXA                       
CODE_27CF09:        ASL A                     
CODE_27CF0A:        TAX                       
CODE_27CF0B:        LDA $C7CA,x               
CODE_27CF0E:        STA $0802,y               
CODE_27CF11:        INC A                     
CODE_27CF12:        STA $0806,y               
CODE_27CF15:        LDA $C7CB,x               
CODE_27CF18:        STA $080A,y               
CODE_27CF1B:        INC A                     
CODE_27CF1C:        STA $080E,y               
CODE_27CF1F:        PHY                       
CODE_27CF20:        REP #$20                  
CODE_27CF22:        LDA $9B                   
CODE_27CF24:        AND #$00FF                
CODE_27CF27:        TAX                       
CODE_27CF28:        TYA                       
CODE_27CF29:        LSR A                     
CODE_27CF2A:        LSR A                     
CODE_27CF2B:        TAY                       
CODE_27CF2C:        SEP #$20                  
CODE_27CF2E:        LDA $D9                   
CODE_27CF30:        AND #$01                  
CODE_27CF32:        STA $0A20,y               
CODE_27CF35:        STA $0A21,y               
CODE_27CF38:        LDA $DB                   
CODE_27CF3A:        AND #$01                  
CODE_27CF3C:        STA $0A22,y               
CODE_27CF3F:        STA $0A23,y               
CODE_27CF42:        PLY                       
CODE_27CF43:        JSR CODE_27CF49           
CODE_27CF46:        SEP #$10                  
CODE_27CF48:        RTS                       

CODE_27CF49:        JSR CODE_27CE16           
CODE_27CF4C:        LDA $0801,y               
CODE_27CF4F:        STA $0809,y               
CODE_27CF52:        CLC                       
CODE_27CF53:        ADC #$08                  
CODE_27CF55:        STA $0805,y               
CODE_27CF58:        STA $080D,y               
CODE_27CF5B:        LDA $0800,y               
CODE_27CF5E:        STA $0804,y               
CODE_27CF61:        CLC                       
CODE_27CF62:        ADC #$08                  
CODE_27CF64:        STA $0808,y               
CODE_27CF67:        STA $080C,y               
CODE_27CF6A:        RTS                       

CODE_27CF6B:        LDA $9C                   
CODE_27CF6D:        BNE CODE_27CF7D           
CODE_27CF6F:        LDA $06C7,x               
CODE_27CF72:        BEQ CODE_27CF7A           
CODE_27CF74:        JSR CODE_27CC1B           
CODE_27CF77:        JMP CODE_27CF7D           

CODE_27CF7A:        JSR CODE_27D7E3           
CODE_27CF7D:        JSR CODE_27D728           
CODE_27CF80:        LDA $E2,x                 
CODE_27CF82:        XBA                       
CODE_27CF83:        LDA $05C9,x               
CODE_27CF86:        REP #$20                  
CODE_27CF88:        SEC                       
CODE_27CF89:        SBC $0210                 
CODE_27CF8C:        STA $D8                   
CODE_27CF8E:        CLC                       
CODE_27CF8F:        ADC #$0008                
CODE_27CF92:        STA $DA                   
CODE_27CF94:        SEP #$20                  
CODE_27CF96:        REP #$10                  
CODE_27CF98:        LDY $C6,x                 
CODE_27CF9A:        LDA #$94                  
CODE_27CF9C:        STA $0802,y               
CODE_27CF9F:        STA $080A,y               
CODE_27CFA2:        INC A                     
CODE_27CFA3:        STA $0806,y               
CODE_27CFA6:        STA $080E,y               
CODE_27CFA9:        JSR CODE_27CF49           
CODE_27CFAC:        LDA $0565                 
CODE_27CFAF:        LSR A                     
CODE_27CFB0:        LSR A                     
CODE_27CFB1:        LSR A                     
CODE_27CFB2:        ROR A                     
CODE_27CFB3:        AND #$80                  
CODE_27CFB5:        ORA #$2A                  
CODE_27CFB7:        STA $0803,y               
CODE_27CFBA:        STA $0807,y               
CODE_27CFBD:        EOR #$C0                  
CODE_27CFBF:        STA $080B,y               
CODE_27CFC2:        STA $080F,y               
CODE_27CFC5:        AND #$80                  
CODE_27CFC7:        BEQ CODE_27CFD7           
CODE_27CFC9:        LDA $080A,y               
CODE_27CFCC:        PHA                       
CODE_27CFCD:        LDA $080E,y               
CODE_27CFD0:        STA $080A,y               
CODE_27CFD3:        PLA                       
CODE_27CFD4:        STA $080E,y               
CODE_27CFD7:        LDA $0803,y               
CODE_27CFDA:        AND #$80                  
CODE_27CFDC:        BEQ CODE_27CFEC           
CODE_27CFDE:        LDA $0802,y               
CODE_27CFE1:        PHA                       
CODE_27CFE2:        LDA $0806,y               
CODE_27CFE5:        STA $0802,y               
CODE_27CFE8:        PLA                       
CODE_27CFE9:        STA $0806,y               
CODE_27CFEC:        REP #$20                  
CODE_27CFEE:        TYA                       
CODE_27CFEF:        LSR A                     
CODE_27CFF0:        LSR A                     
CODE_27CFF1:        TAY                       
CODE_27CFF2:        SEP #$20                  
CODE_27CFF4:        LDA $D9                   
CODE_27CFF6:        AND #$01                  
CODE_27CFF8:        STA $0A20,y               
CODE_27CFFB:        STA $0A21,y               
CODE_27CFFE:        LDA $DB                   
CODE_27D000:        AND #$01                  
CODE_27D002:        STA $0A22,y               
CODE_27D005:        STA $0A23,y               
CODE_27D008:        SEP #$10                  
CODE_27D00A:        LDA $06C7,x               
CODE_27D00D:        BNE CODE_27D012           
CODE_27D00F:        JMP CODE_27D302           

CODE_27D012:        RTS                       

CODE_27D013:        LDA $9C                   
CODE_27D015:        BEQ CODE_27D01A           
CODE_27D017:        JMP CODE_27D0DC           

CODE_27D01A:        LDA $06C7,x               
CODE_27D01D:        BNE CODE_27D022           
CODE_27D01F:        JMP CODE_27D0AE           

CODE_27D022:        BPL CODE_27D02A           
CODE_27D024:        JSR CODE_27CC1B           
CODE_27D027:        JMP CODE_27D0DC           

CODE_27D02A:        LDY $0553                 
CODE_27D02D:        BNE CODE_27D04F           
CODE_27D02F:        LDY $0575                 
CODE_27D032:        BNE CODE_27D04F           
CODE_27D034:        INC $06B6                 
CODE_27D037:        CMP #$05                  
CODE_27D039:        BCS CODE_27D044                   
CODE_27D03B:        LDA $15                   
CODE_27D03D:        AND #$0F                  
CODE_27D03F:        BNE CODE_27D044           
CODE_27D041:        INC $06C7,x               
CODE_27D044:        LDA $18                   
CODE_27D046:        AND #$FF                  
CODE_27D048:        BEQ CODE_27D065           
CODE_27D04A:        DEC $06C7,x               
CODE_27D04D:        BNE CODE_27D065           
CODE_27D04F:        LDA #$FF                  
CODE_27D051:        STA $06C7,x               
CODE_27D054:        LDA #$E0                  
CODE_27D056:        STA $05D3,x               
CODE_27D059:        LDA #$08                  
CODE_27D05B:        LDY $0783,x               
CODE_27D05E:        BPL CODE_27D062           
CODE_27D060:        LDA #$F8                  
CODE_27D062:        STA $05DD,x               
CODE_27D065:        INC $06BD,x               
CODE_27D068:        LDA $06BD,x               
CODE_27D06B:        LSR A                     
CODE_27D06C:        LSR A                     
CODE_27D06D:        AND #$1F                  
CODE_27D06F:        CMP #$10                  
CODE_27D071:        AND #$0F                  
CODE_27D073:        BCC CODE_27D079           
CODE_27D075:        EOR #$0F                  
CODE_27D077:        ADC #$00                  
CODE_27D079:        CLC                       
CODE_27D07A:        LDY $056F                 
CODE_27D07D:        BNE CODE_27D083           
CODE_27D07F:        LDY $BB                   
CODE_27D081:        BNE CODE_27D087           
CODE_27D083:        LSR A                     
CODE_27D084:        CLC                       
CODE_27D085:        ADC #$08                  
CODE_27D087:        ADC $70                   
CODE_27D089:        STA $05BF,x               
CODE_27D08C:        LDA $55                   
CODE_27D08E:        ADC #$00                  
CODE_27D090:        STA $1FD7,x               
CODE_27D093:        LDA $06BD,x               
CODE_27D096:        AND #$1F                  
CODE_27D098:        CMP #$10                  
CODE_27D09A:        AND #$0F                  
CODE_27D09C:        BCC CODE_27D0A2           
CODE_27D09E:        EOR #$0F                  
CODE_27D0A0:        ADC #$00                  
CODE_27D0A2:        SEC                       
CODE_27D0A3:        SBC #$03                  
CODE_27D0A5:        CLC                       
CODE_27D0A6:        ADC $5E                   
CODE_27D0A8:        STA $05C9,x               
CODE_27D0AB:        JMP CODE_27D0DC           

CODE_27D0AE:        JSR CODE_27D7E3           
CODE_27D0B1:        JSR CODE_27D80F           
CODE_27D0B4:        LDA $05D3,x               
CODE_27D0B7:        CMP #$10                  
CODE_27D0B9:        BPL CODE_27D0BE           
CODE_27D0BB:        INC $05D3,x               
CODE_27D0BE:        LDA $15                   
CODE_27D0C0:        AND #$00                  
CODE_27D0C2:        BNE CODE_27D0DC           
CODE_27D0C4:        LDA $06BD,x               
CODE_27D0C7:        AND #$01                  
CODE_27D0C9:        TAY                       
CODE_27D0CA:        LDA $05DD,x               
CODE_27D0CD:        CLC                       
CODE_27D0CE:        ADC $C7D6,y               
CODE_27D0D1:        STA $05DD,x               
CODE_27D0D4:        CMP $C7D8,y               
CODE_27D0D7:        BNE CODE_27D0DC           
CODE_27D0D9:        INC $06BD,x               
CODE_27D0DC:        JSR CODE_27D728           
CODE_27D0DF:        BEQ CODE_27D0E4           
CODE_27D0E1:        BRL CODE_27D16D           

CODE_27D0E4:        LDA $E2,x                 
CODE_27D0E6:        XBA                       
CODE_27D0E7:        LDA $05C9,x               
CODE_27D0EA:        REP #$30                  
CODE_27D0EC:        SEC                       
CODE_27D0ED:        SBC $0210                 
CODE_27D0F0:        STA $D8                   
CODE_27D0F2:        SEP #$20                  
CODE_27D0F4:        LDY $C6,x                 
CODE_27D0F6:        LDA $06C7,x               
CODE_27D0F9:        BEQ CODE_27D115           
CODE_27D0FB:        BMI CODE_27D115           
CODE_27D0FD:        TXA                       
CODE_27D0FE:        ASL A                     
CODE_27D0FF:        ASL A                     
CODE_27D100:        ASL A                     
CODE_27D101:        ASL A                     
CODE_27D102:        EOR $06BD,x               
CODE_27D105:        AND #$10                  
CODE_27D107:        BEQ CODE_27D115           
CODE_27D109:        PHX                       
CODE_27D10A:        REP #$20                  
CODE_27D10C:        TXA                       
CODE_27D10D:        ASL A                     
CODE_27D10E:        TAX                       
CODE_27D10F:        SEP #$20                  
CODE_27D111:        LDY $C7DA,x               
CODE_27D114:        PLX                       
CODE_27D115:        JSR CODE_27CE16           
CODE_27D118:        LDA $0800,y               
CODE_27D11B:        STA $0804,y               
CODE_27D11E:        LDA $0801,y               
CODE_27D121:        STA $0805,y               
CODE_27D124:        LDA #$FE                  
CODE_27D126:        STA $0802,y               
CODE_27D129:        INC A                     
CODE_27D12A:        STA $0806,y               
CODE_27D12D:        LDX #$0002                
CODE_27D130:        LDA $0565                 
CODE_27D133:        AND #$08                  
CODE_27D135:        BEQ CODE_27D13A           
CODE_27D137:        LDX #$0042                
CODE_27D13A:        TXA                       
CODE_27D13B:        ORA #$20                  
CODE_27D13D:        STA $0803,y               
CODE_27D140:        STA $0807,y               
CODE_27D143:        PHY                       
CODE_27D144:        REP #$20                  
CODE_27D146:        TYA                       
CODE_27D147:        LSR A                     
CODE_27D148:        LSR A                     
CODE_27D149:        TAY                       
CODE_27D14A:        SEP #$20                  
CODE_27D14C:        LDA $D9                   
CODE_27D14E:        AND #$01                  
CODE_27D150:        STA $0A20,y               
CODE_27D153:        STA $0A21,y               
CODE_27D156:        PLY                       
CODE_27D157:        REP #$20                  
CODE_27D159:        LDA $9B                   
CODE_27D15B:        TAX                       
CODE_27D15C:        SEP #$20                  
CODE_27D15E:        LDA $06C7,x               
CODE_27D161:        BEQ CODE_27D170           
CODE_27D163:        BPL CODE_27D16D           
CODE_27D165:        LDA #$A6                  
CODE_27D167:        STA $0803,y               
CODE_27D16A:        STA $0807,y               
CODE_27D16D:        SEP #$10                  
CODE_27D16F:        RTS                       

CODE_27D170:        SEP #$10                  
CODE_27D172:        JMP CODE_27D302           

CODE_27D175:        LDA $9C                   
CODE_27D177:        BEQ CODE_27D17C           
CODE_27D179:        JMP CODE_27D231           

CODE_27D17C:        LDA $06C7,x               
CODE_27D17F:        AND #$0F                  
CODE_27D181:        BNE CODE_27D186           
CODE_27D183:        BRL CODE_27D22B           

CODE_27D186:        DEC $06C7,x               
CODE_27D189:        LDA $1FC8,x               
CODE_27D18C:        CMP #$01                  
CODE_27D18E:        BNE CODE_27D19C           
CODE_27D190:        LDA $06C7,x               
CODE_27D193:        AND #$0F                  
CODE_27D195:        BNE CODE_27D19C           
CODE_27D197:        LDA #$37                  
CODE_27D199:        STA $1200                 
CODE_27D19C:        LDA $06C7,x               
CODE_27D19F:        LSR A                     
CODE_27D1A0:        LSR A                     
CODE_27D1A1:        LSR A                     
CODE_27D1A2:        LSR A                     
CODE_27D1A3:        TAY                       
CODE_27D1A4:        STY $01                   
CODE_27D1A6:        LDA $0661,y               
CODE_27D1A9:        CMP #$02                  
CODE_27D1AB:        BNE CODE_27D1B4           
CODE_27D1AD:        LDA $0651,y               
CODE_27D1B0:        AND #$C0                  
CODE_27D1B2:        BEQ CODE_27D1B7           
CODE_27D1B4:        JMP CODE_27D37F           

CODE_27D1B7:        LDA $0679,y               
CODE_27D1BA:        AND #$40                  
CODE_27D1BC:        STA $02                   
CODE_27D1BE:        ASL A                     
CODE_27D1BF:        ASL A                     
CODE_27D1C0:        ROL A                     
CODE_27D1C1:        AND #$01                  
CODE_27D1C3:        STA $00                   
CODE_27D1C5:        LDA $1FC8,x               
CODE_27D1C8:        CMP #$01                  
CODE_27D1CA:        BEQ CODE_27D1D0           
CODE_27D1CC:        INC $00                   
CODE_27D1CE:        INC $00                   
CODE_27D1D0:        LDA $0671,y               
CODE_27D1D3:        CMP #$86                  
CODE_27D1D5:        BNE CODE_27D1DE           
CODE_27D1D7:        LDA $00                   
CODE_27D1D9:        CLC                       
CODE_27D1DA:        ADC #$04                  
CODE_27D1DC:        STA $00                   
CODE_27D1DE:        LDA $005F,y               
CODE_27D1E1:        LDY $00                   
CODE_27D1E3:        CLC                       
CODE_27D1E4:        ADC $C7EE,y               
CODE_27D1E7:        STA $05C9,x               
CODE_27D1EA:        LDY $00                   
CODE_27D1EC:        STZ $DD                   
CODE_27D1EE:        LDA $C7F4,y               
CODE_27D1F1:        STA $DC                   
CODE_27D1F3:        BPL CODE_27D1F7           
CODE_27D1F5:        DEC $DD                   
CODE_27D1F7:        LDY $01                   
CODE_27D1F9:        LDA $0056,y               
CODE_27D1FC:        XBA                       
CODE_27D1FD:        LDA $0071,y               
CODE_27D200:        REP #$20                  
CODE_27D202:        CLC                       
CODE_27D203:        ADC $DC                   
CODE_27D205:        SEP #$20                  
CODE_27D207:        STA $05BF,x               
CODE_27D20A:        XBA                       
CODE_27D20B:        STA $1FD7,x               
CODE_27D20E:        LDA #$00                  
CODE_27D210:        LDY $05DD,x               
CODE_27D213:        BMI CODE_27D217           
CODE_27D215:        LDA #$40                  
CODE_27D217:        CMP $02                   
CODE_27D219:        BEQ CODE_27D228           
CODE_27D21B:        LDA $05DD,x               
CODE_27D21E:        JSL CODE_27A859           
CODE_27D222:        STA $05DD,x               
CODE_27D225:        INC $0597,x               
CODE_27D228:        JMP CODE_27D231           

CODE_27D22B:        INC $06BD,x               
CODE_27D22E:        JSR CODE_27CC1B           
CODE_27D231:        JSR CODE_27D728           
CODE_27D234:        BEQ CODE_27D237           
CODE_27D236:        RTS                       

CODE_27D237:        STY $01                   
CODE_27D239:        LDA $05DD,x               
CODE_27D23C:        LDY $1FC8,x               
CODE_27D23F:        CPY #$01                  
CODE_27D241:        BEQ CODE_27D245           
CODE_27D243:        EOR #$80                  
CODE_27D245:        LSR A                     
CODE_27D246:        AND #$40                  
CODE_27D248:        STA $00                   
CODE_27D24A:        CPY #$01                  
CODE_27D24C:        BNE CODE_27D256           
CODE_27D24E:        LDY $01                   
CODE_27D250:        JSR CODE_27D395           
CODE_27D253:        JMP CODE_27D2F0           

CODE_27D256:        LDA $E2,x                 
CODE_27D258:        XBA                       
CODE_27D259:        LDA $05C9,x               
CODE_27D25C:        REP #$30                  
CODE_27D25E:        SEC                       
CODE_27D25F:        SBC $0210                 
CODE_27D262:        STA $D8                   
CODE_27D264:        CLC                       
CODE_27D265:        ADC #$0008                
CODE_27D268:        STA $DA                   
CODE_27D26A:        LDY $C6,x                 
CODE_27D26C:        LDA $06BD,x               
CODE_27D26F:        AND #$000C                
CODE_27D272:        LSR A                     
CODE_27D273:        LSR A                     
CODE_27D274:        TAX                       
CODE_27D275:        SEP #$20                  
CODE_27D277:        LDA $00                   
CODE_27D279:        EOR $C81C,x               
CODE_27D27C:        ORA #$23                  
CODE_27D27E:        STA $0803,y               
CODE_27D281:        STA $0807,y               
CODE_27D284:        STA $080B,y               
CODE_27D287:        STA $080F,y               
CODE_27D28A:        LDA $00                   
CODE_27D28C:        BEQ CODE_27D290           
CODE_27D28E:        INX                       
CODE_27D28F:        INX                       
CODE_27D290:        REP #$20                  
CODE_27D292:        TXA                       
CODE_27D293:        AND #$0003                
CODE_27D296:        TAX                       
CODE_27D297:        SEP #$20                  
CODE_27D299:        LDA $C820,x               
CODE_27D29C:        STA $0802,y               
CODE_27D29F:        INC A                     
CODE_27D2A0:        STA $0806,y               
CODE_27D2A3:        LDA $C822,x               
CODE_27D2A6:        STA $080A,y               
CODE_27D2A9:        INC A                     
CODE_27D2AA:        STA $080E,y               
CODE_27D2AD:        LDA $0803,y               
CODE_27D2B0:        AND #$80                  
CODE_27D2B2:        BEQ CODE_27D2D0           
CODE_27D2B4:        LDA $0802,y               
CODE_27D2B7:        PHA                       
CODE_27D2B8:        LDA $0806,y               
CODE_27D2BB:        STA $0802,y               
CODE_27D2BE:        PLA                       
CODE_27D2BF:        STA $0806,y               
CODE_27D2C2:        LDA $080A,y               
CODE_27D2C5:        PHA                       
CODE_27D2C6:        LDA $080E,y               
CODE_27D2C9:        STA $080A,y               
CODE_27D2CC:        PLA                       
CODE_27D2CD:        STA $080E,y               
CODE_27D2D0:        PHY                       
CODE_27D2D1:        REP #$20                  
CODE_27D2D3:        TYA                       
CODE_27D2D4:        LSR A                     
CODE_27D2D5:        LSR A                     
CODE_27D2D6:        TAY                       
CODE_27D2D7:        SEP #$20                  
CODE_27D2D9:        LDA $D9                   
CODE_27D2DB:        AND #$01                  
CODE_27D2DD:        STA $0A20,y               
CODE_27D2E0:        STA $0A21,y               
CODE_27D2E3:        LDA $DB                   
CODE_27D2E5:        AND #$01                  
CODE_27D2E7:        STA $0A22,y               
CODE_27D2EA:        STA $0A23,y               
CODE_27D2ED:        PLY                       
CODE_27D2EE:        SEP #$10                  
CODE_27D2F0:        LDX $9B                   
CODE_27D2F2:        REP #$10                  
CODE_27D2F4:        LDY $C6,x                 
CODE_27D2F6:        JSR CODE_27CF49           
CODE_27D2F9:        SEP #$10                  
CODE_27D2FB:        LDA $06C7,x               
CODE_27D2FE:        AND #$0F                  
CODE_27D300:        BNE CODE_27D357           
CODE_27D302:        TXA                       
CODE_27D303:        CLC                       
CODE_27D304:        ADC $15                   
CODE_27D306:        LSR A                     
CODE_27D307:        BCC CODE_27D357           
CODE_27D309:        LDY #$00                  
CODE_27D30B:        LDA $BB                   
CODE_27D30D:        BEQ CODE_27D315           
CODE_27D30F:        LDA $056F                 
CODE_27D312:        BNE CODE_27D315           
CODE_27D314:        INY                       
CODE_27D315:        LDA $05BF,x               
CODE_27D318:        CLC                       
CODE_27D319:        ADC #$08                  
CODE_27D31B:        SEC                       
CODE_27D31C:        SBC $70                   
CODE_27D31E:        SEC                       
CODE_27D31F:        SBC $C7FA,y               
CODE_27D322:        CMP $C7FC,y               
CODE_27D325:        BCS CODE_27D384                   
CODE_27D327:        LDA $05C9,x               
CODE_27D32A:        CLC                       
CODE_27D32B:        ADC #$06                  
CODE_27D32D:        SEC                       
CODE_27D32E:        SBC $5E                   
CODE_27D330:        SBC #$00                  
CODE_27D332:        CMP #$10                  
CODE_27D334:        BCS CODE_27D384                   
CODE_27D336:        LDA $0552                 
CODE_27D339:        ORA $057A                 
CODE_27D33C:        ORA $9C                   
CODE_27D33E:        ORA $00BF                 
CODE_27D341:        ORA $0583                 
CODE_27D344:        ORA $0587                 
CODE_27D347:        ORA $0D                   
CODE_27D349:        BNE CODE_27D384           
CODE_27D34B:        LDA $1FC8,x               
CODE_27D34E:        CMP #$06                  
CODE_27D350:        BNE CODE_27D358           
CODE_27D352:        LDA #$05                  
CODE_27D354:        STA $06C7,x               
CODE_27D357:        RTS                       

CODE_27D358:        CMP #$10                  
CODE_27D35A:        BNE CODE_27D375           
CODE_27D35C:        INC $07BE                 
CODE_27D35F:        LDA #$01                  
CODE_27D361:        STA $02D9                 
CODE_27D364:        LDA #$0B                  
CODE_27D366:        STA $1202                 
CODE_27D369:        LDA #$60                  
CODE_27D36B:        STA $02E3                 
CODE_27D36E:        LDA #$01                  
CODE_27D370:        STA $02E4                 
CODE_27D373:        BRA CODE_27D37F           

CODE_27D375:        LDA $0553                 
CODE_27D378:        BNE CODE_27D385           
CODE_27D37A:        JSL CODE_27A4C6           
CODE_27D37E:        RTS                       

CODE_27D37F:        LDA #$00                  
CODE_27D381:        STA $1FC8,x               
CODE_27D384:        RTS                       

CODE_27D385:        LDA #$03                  
CODE_27D387:        STA $1200                 
CODE_27D38A:        LDA #$16                  
CODE_27D38C:        STA $1FC8,x               
CODE_27D38F:        LDA #$1F                  
CODE_27D391:        STA $06C7,x               
CODE_27D394:        RTS                       

CODE_27D395:        LDA $E2,x                 
CODE_27D397:        XBA                       
CODE_27D398:        LDA $05C9,x               
CODE_27D39B:        REP #$30                  
CODE_27D39D:        SEC                       
CODE_27D39E:        SBC $0210                 
CODE_27D3A1:        STA $D8                   
CODE_27D3A3:        CLC                       
CODE_27D3A4:        ADC #$0008                
CODE_27D3A7:        STA $DA                   
CODE_27D3A9:        LDY $C6,x                 
CODE_27D3AB:        LDA $06BD,x               
CODE_27D3AE:        AND #$001C                
CODE_27D3B1:        LSR A                     
CODE_27D3B2:        LSR A                     
CODE_27D3B3:        TAX                       
CODE_27D3B4:        SEP #$20                  
CODE_27D3B6:        LDA $D9                   
CODE_27D3B8:        STA $DC                   
CODE_27D3BA:        LDA $DB                   
CODE_27D3BC:        STA $DD                   
CODE_27D3BE:        LDA $00                   
CODE_27D3C0:        EOR $C800,x               
CODE_27D3C3:        ORA #$21                  
CODE_27D3C5:        STA $0803,y               
CODE_27D3C8:        STA $0807,y               
CODE_27D3CB:        STA $080B,y               
CODE_27D3CE:        STA $080F,y               
CODE_27D3D1:        LDA $00                   
CODE_27D3D3:        BEQ CODE_27D3D9           
CODE_27D3D5:        INX                       
CODE_27D3D6:        INX                       
CODE_27D3D7:        INX                       
CODE_27D3D8:        INX                       
CODE_27D3D9:        REP #$20                  
CODE_27D3DB:        TXA                       
CODE_27D3DC:        AND #$0007                
CODE_27D3DF:        TAX                       
CODE_27D3E0:        SEP #$20                  
CODE_27D3E2:        LDA $C808,x               
CODE_27D3E5:        STA $D8                   
CODE_27D3E7:        INC A                     
CODE_27D3E8:        STA $D9                   
CODE_27D3EA:        LDA $C80C,x               
CODE_27D3ED:        STA $DA                   
CODE_27D3EF:        INC A                     
CODE_27D3F0:        STA $DB                   
CODE_27D3F2:        LDA $0803,y               
CODE_27D3F5:        AND #$80                  
CODE_27D3F7:        BEQ CODE_27D40D           
CODE_27D3F9:        LDA $D8                   
CODE_27D3FB:        PHA                       
CODE_27D3FC:        LDA $D9                   
CODE_27D3FE:        STA $D8                   
CODE_27D400:        PLA                       
CODE_27D401:        STA $D9                   
CODE_27D403:        LDA $DA                   
CODE_27D405:        PHA                       
CODE_27D406:        LDA $DB                   
CODE_27D408:        STA $DA                   
CODE_27D40A:        PLA                       
CODE_27D40B:        STA $DB                   
CODE_27D40D:        LDA $D8                   
CODE_27D40F:        STA $0802,y               
CODE_27D412:        LDA $D9                   
CODE_27D414:        STA $0806,y               
CODE_27D417:        LDA $DA                   
CODE_27D419:        STA $080A,y               
CODE_27D41C:        LDA $DB                   
CODE_27D41E:        STA $080E,y               
CODE_27D421:        PHY                       
CODE_27D422:        REP #$20                  
CODE_27D424:        TYA                       
CODE_27D425:        LSR A                     
CODE_27D426:        LSR A                     
CODE_27D427:        TAY                       
CODE_27D428:        SEP #$20                  
CODE_27D42A:        LDA $DC                   
CODE_27D42C:        AND #$01                  
CODE_27D42E:        STA $0A20,y               
CODE_27D431:        STA $0A21,y               
CODE_27D434:        LDA $DD                   
CODE_27D436:        AND #$01                  
CODE_27D438:        STA $0A22,y               
CODE_27D43B:        STA $0A23,y               
CODE_27D43E:        PLY                       
CODE_27D43F:        SEP #$10                  
CODE_27D441:        RTS                       

CODE_27D442:        LDA $9C                   
CODE_27D444:        BEQ CODE_27D449           
CODE_27D446:        JMP CODE_27D231           

CODE_27D449:        LDA $06C7,x               
CODE_27D44C:        AND #$0F                  
CODE_27D44E:        BEQ CODE_27D453           
CODE_27D450:        JMP CODE_27D186           

CODE_27D453:        INC $06BD,x               
CODE_27D456:        LDA $15                   
CODE_27D458:        AND #$0A                  
CODE_27D45A:        BNE CODE_27D461           
CODE_27D45C:        LDA #$48                  
CODE_27D45E:        STA $1203                 
CODE_27D461:        LDA $0597,x               
CODE_27D464:        BMI CODE_27D492           
CODE_27D466:        LDA $06D1,x               
CODE_27D469:        BNE CODE_27D492           
CODE_27D46B:        LDA $0597,x               
CODE_27D46E:        AND #$01                  
CODE_27D470:        TAY                       
CODE_27D471:        LDA $05DD,x               
CODE_27D474:        CLC                       
CODE_27D475:        ADC $C814,y               
CODE_27D478:        STA $05DD,x               
CODE_27D47B:        CMP $C816,y               
CODE_27D47E:        BNE CODE_27D492           
CODE_27D480:        LDA #$30                  
CODE_27D482:        STA $06D1,x               
CODE_27D485:        INC $0597,x               
CODE_27D488:        LDA $05B5,x               
CODE_27D48B:        BEQ CODE_27D492           
CODE_27D48D:        LDA #$FF                  
CODE_27D48F:        STA $0597,x               
CODE_27D492:        LDA $15                   
CODE_27D494:        LSR A                     
CODE_27D495:        BCS CODE_27D4B8                   
CODE_27D497:        LDA $05B5,x               
CODE_27D49A:        CMP #$01                  
CODE_27D49C:        BCC CODE_27D4A3           
CODE_27D49E:        LDY $05D3,x               
CODE_27D4A1:        BEQ CODE_27D4B8           
CODE_27D4A3:        AND #$01                  
CODE_27D4A5:        TAY                       
CODE_27D4A6:        LDA $05D3,x               
CODE_27D4A9:        CLC                       
CODE_27D4AA:        ADC $C818,y               
CODE_27D4AD:        STA $05D3,x               
CODE_27D4B0:        CMP $C81A,y               
CODE_27D4B3:        BNE CODE_27D4B8           
CODE_27D4B5:        INC $05B5,x               
CODE_27D4B8:        JSR CODE_27D7E3           
CODE_27D4BB:        JSR CODE_27D80F           
CODE_27D4BE:        JSR CODE_27D231           
CODE_27D4C1:        LDA $0597,x               
CODE_27D4C4:        BPL CODE_27D507           
CODE_27D4C6:        TXA                       
CODE_27D4C7:        CLC                       
CODE_27D4C8:        ADC $15                   
CODE_27D4CA:        LSR A                     
CODE_27D4CB:        BCS CODE_27D507                   
CODE_27D4CD:        LDA $06C7,x               
CODE_27D4D0:        LSR A                     
CODE_27D4D1:        LSR A                     
CODE_27D4D2:        LSR A                     
CODE_27D4D3:        LSR A                     
CODE_27D4D4:        TAY                       
CODE_27D4D5:        LDA $0661,y               
CODE_27D4D8:        CMP #$02                  
CODE_27D4DA:        BNE CODE_27D507           
CODE_27D4DC:        LDA $0671,y               
CODE_27D4DF:        CMP #$82                  
CODE_27D4E1:        BNE CODE_27D507           
CODE_27D4E3:        LDA $05BF,x               
CODE_27D4E6:        CLC                       
CODE_27D4E7:        ADC #$08                  
CODE_27D4E9:        SEC                       
CODE_27D4EA:        SBC $0071,y               
CODE_27D4ED:        SEC                       
CODE_27D4EE:        SBC #$08                  
CODE_27D4F0:        CMP #$10                  
CODE_27D4F2:        BCS CODE_27D507                   
CODE_27D4F4:        LDA $05C9,x               
CODE_27D4F7:        CLC                       
CODE_27D4F8:        ADC #$08                  
CODE_27D4FA:        SEC                       
CODE_27D4FB:        SBC $005F,y               
CODE_27D4FE:        SBC #$00                  
CODE_27D500:        CMP #$10                  
CODE_27D502:        BCS CODE_27D507                   
CODE_27D504:        JMP CODE_27D37F           

CODE_27D507:        RTS                       

CODE_27D508:        LDA $9C                   
CODE_27D50A:        BEQ CODE_27D50F           
CODE_27D50C:        JMP CODE_27D231           

CODE_27D50F:        LDA $06C7,x               
CODE_27D512:        AND #$0F                  
CODE_27D514:        BEQ CODE_27D519           
CODE_27D516:        JMP CODE_27D186           

CODE_27D519:        DEC $06BD,x               
CODE_27D51C:        LDY $06D1,x               
CODE_27D51F:        BEQ CODE_27D527           
CODE_27D521:        DEY                       
CODE_27D522:        BNE CODE_27D54A           
CODE_27D524:        INC $05B5,x               
CODE_27D527:        LDA $15                   
CODE_27D529:        AND #$00                  
CODE_27D52B:        BNE CODE_27D54A           
CODE_27D52D:        LDA $0597,x               
CODE_27D530:        AND #$01                  
CODE_27D532:        TAY                       
CODE_27D533:        LDA $05DD,x               
CODE_27D536:        CLC                       
CODE_27D537:        ADC $C826,y               
CODE_27D53A:        STA $05DD,x               
CODE_27D53D:        CMP $C828,y               
CODE_27D540:        BNE CODE_27D54A           
CODE_27D542:        LDA #$50                  
CODE_27D544:        STA $06D1,x               
CODE_27D547:        INC $0597,x               
CODE_27D54A:        LDA $15                   
CODE_27D54C:        AND #$03                  
CODE_27D54E:        BNE CODE_27D573           
CODE_27D550:        LDA $05B5,x               
CODE_27D553:        BEQ CODE_27D573           
CODE_27D555:        CMP #$03                  
CODE_27D557:        BCC CODE_27D55E           
CODE_27D559:        LDY $05D3,x               
CODE_27D55C:        BEQ CODE_27D573           
CODE_27D55E:        AND #$01                  
CODE_27D560:        TAY                       
CODE_27D561:        LDA $05D3,x               
CODE_27D564:        CLC                       
CODE_27D565:        ADC $C82A,y               
CODE_27D568:        STA $05D3,x               
CODE_27D56B:        CMP $C82C,y               
CODE_27D56E:        BNE CODE_27D573           
CODE_27D570:        INC $05B5,x               
CODE_27D573:        JMP CODE_27D4B8           

CODE_27D576:        LDA $9C                   
CODE_27D578:        BNE CODE_27D5B1           
CODE_27D57A:        INC $06BD,x               
CODE_27D57D:        LDA $1FC8,x               
CODE_27D580:        CMP #$05                  
CODE_27D582:        BEQ CODE_27D5AB           
CODE_27D584:        CMP #$12                  
CODE_27D586:        BEQ CODE_27D5AB           
CODE_27D588:        JSR CODE_27CC1B           
CODE_27D58B:        LDA $05D3,x               
CODE_27D58E:        CMP #$30                  
CODE_27D590:        BPL CODE_27D598           
CODE_27D592:        INC $05D3,x               
CODE_27D595:        INC $05D3,x               
CODE_27D598:        LDA $1FC8,x               
CODE_27D59B:        CMP #$0C                  
CODE_27D59D:        BNE CODE_27D5A2           
CODE_27D59F:        JSR CODE_27C442           
CODE_27D5A2:        JMP CODE_27D5B1           

CODE_27D5A5:        JSR CODE_27CC1B           
CODE_27D5A8:        JMP CODE_27D5B1           

CODE_27D5AB:        JSR CODE_27D7E3           
CODE_27D5AE:        JSR CODE_27D80F           
CODE_27D5B1:        JSR CODE_27D728           
CODE_27D5B4:        BEQ CODE_27D5B9           
CODE_27D5B6:        BRL CODE_27D671           

CODE_27D5B9:        LDA $E2,x                 
CODE_27D5BB:        XBA                       
CODE_27D5BC:        LDA $05C9,x               
CODE_27D5BF:        REP #$30                  
CODE_27D5C1:        SEC                       
CODE_27D5C2:        SBC $0210                 
CODE_27D5C5:        STA $D8                   
CODE_27D5C7:        SEP #$20                  
CODE_27D5C9:        LDY $C6,x                 
CODE_27D5CB:        JSR CODE_27CE16           
CODE_27D5CE:        LDA $0801,y               
CODE_27D5D1:        CLC                       
CODE_27D5D2:        ADC #$08                  
CODE_27D5D4:        STA $0805,y               
CODE_27D5D7:        LDA $0800,y               
CODE_27D5DA:        STA $0804,y               
CODE_27D5DD:        LDA $1FC8,x               
CODE_27D5E0:        CMP #$12                  
CODE_27D5E2:        BNE CODE_27D5FA           
CODE_27D5E4:        LDA $0565                 
CODE_27D5E7:        LSR A                     
CODE_27D5E8:        LSR A                     
CODE_27D5E9:        LDA #$88                  
CODE_27D5EB:        BCC CODE_27D5EF           
CODE_27D5ED:        LDA #$8A                  
CODE_27D5EF:        STA $0802,y               
CODE_27D5F2:        INC A                     
CODE_27D5F3:        STA $0806,y               
CODE_27D5F6:        LDA #$2A                  
CODE_27D5F8:        BRA CODE_27D634           

CODE_27D5FA:        LDA $05DD,x               
CODE_27D5FD:        LSR A                     
CODE_27D5FE:        AND #$40                  
CODE_27D600:        PHA                       
CODE_27D601:        REP #$20                  
CODE_27D603:        LDA $06BD,x               
CODE_27D606:        AND #$00FF                
CODE_27D609:        LSR A                     
CODE_27D60A:        LSR A                     
CODE_27D60B:        AND #$0003                
CODE_27D60E:        TAX                       
CODE_27D60F:        SEP #$20                  
CODE_27D611:        LDA $C82E,x               
CODE_27D614:        CPX #$0002                
CODE_27D617:        BEQ CODE_27D627           
CODE_27D619:        CPX #$0003                
CODE_27D61C:        BEQ CODE_27D627           
CODE_27D61E:        STA $0802,y               
CODE_27D621:        INC A                     
CODE_27D622:        STA $0806,y               
CODE_27D625:        BRA CODE_27D62E           

CODE_27D627:        STA $0806,y               
CODE_27D62A:        INC A                     
CODE_27D62B:        STA $0802,y               
CODE_27D62E:        PLA                       
CODE_27D62F:        EOR $C832,x               
CODE_27D632:        ORA #$20                  
CODE_27D634:        STA $0803,y               
CODE_27D637:        STA $0807,y               
CODE_27D63A:        PHY                       
CODE_27D63B:        REP #$20                  
CODE_27D63D:        TYA                       
CODE_27D63E:        LSR A                     
CODE_27D63F:        LSR A                     
CODE_27D640:        TAY                       
CODE_27D641:        SEP #$20                  
CODE_27D643:        LDA $D9                   
CODE_27D645:        AND #$01                  
CODE_27D647:        STA $0A20,y               
CODE_27D64A:        STA $0A21,y               
CODE_27D64D:        PLY                       
CODE_27D64E:        SEP #$10                  
CODE_27D650:        LDX $9B                   
CODE_27D652:        LDA $BB                   
CODE_27D654:        CMP #$06                  
CODE_27D656:        BNE CODE_27D66E           
CODE_27D658:        LDA $056F                 
CODE_27D65B:        BEQ CODE_27D66E           
CODE_27D65D:        LDA $0553                 
CODE_27D660:        PHA                       
CODE_27D661:        LDA #$10                  
CODE_27D663:        STA $0553                 
CODE_27D666:        JSR CODE_27D302           
CODE_27D669:        PLA                       
CODE_27D66A:        STA $0553                 
CODE_27D66D:        RTS                       

CODE_27D66E:        JMP CODE_27D302           

CODE_27D671:        RTS                       

CODE_27D672:        LDA $06C7,x               
CODE_27D675:        BNE CODE_27D67A           
CODE_27D677:        JMP CODE_27D37F           

CODE_27D67A:        CMP #$18                  
CODE_27D67C:        BCC CODE_27D683           
CODE_27D67E:        LDA #$17                  
CODE_27D680:        STA $06C7,x               
CODE_27D683:        LDA $9C                   
CODE_27D685:        BNE CODE_27D68A           
CODE_27D687:        DEC $06C7,x               
CODE_27D68A:        JSR CODE_27D728           
CODE_27D68D:        BNE CODE_27D671           
CODE_27D68F:        LDA $00E2,x               
CODE_27D692:        XBA                       
CODE_27D693:        LDA $05C9,x               
CODE_27D696:        REP #$30                  
CODE_27D698:        SEC                       
CODE_27D699:        SBC $0210                 
CODE_27D69C:        STA $00                   
CODE_27D69E:        CLC                       
CODE_27D69F:        ADC #$0008                
CODE_27D6A2:        STA $02                   
CODE_27D6A4:        SEP #$20                  
CODE_27D6A6:        LDY $C6,x                 
CODE_27D6A8:        JSR CODE_27CF49           
CODE_27D6AB:        LDA $0565                 
CODE_27D6AE:        LSR A                     
CODE_27D6AF:        LSR A                     
CODE_27D6B0:        LSR A                     
CODE_27D6B1:        ROR A                     
CODE_27D6B2:        AND #$80                  
CODE_27D6B4:        ORA #$22                  
CODE_27D6B6:        STA $0803,y               
CODE_27D6B9:        STA $0807,y               
CODE_27D6BC:        EOR #$40                  
CODE_27D6BE:        STA $080B,y               
CODE_27D6C1:        STA $080F,y               
CODE_27D6C4:        REP #$20                  
CODE_27D6C6:        LDA $06C7,x               
CODE_27D6C9:        AND #$00FF                
CODE_27D6CC:        LSR A                     
CODE_27D6CD:        LSR A                     
CODE_27D6CE:        LSR A                     
CODE_27D6CF:        TAX                       
CODE_27D6D0:        SEP #$20                  
CODE_27D6D2:        LDA $C836,x               
CODE_27D6D5:        STA $0802,y               
CODE_27D6D8:        STA $080A,y               
CODE_27D6DB:        INC A                     
CODE_27D6DC:        STA $0806,y               
CODE_27D6DF:        STA $080E,y               
CODE_27D6E2:        LDA $0803,y               
CODE_27D6E5:        AND #$80                  
CODE_27D6E7:        BEQ CODE_27D705           
CODE_27D6E9:        LDA $0802,y               
CODE_27D6EC:        PHA                       
CODE_27D6ED:        LDA $0806,y               
CODE_27D6F0:        STA $0802,y               
CODE_27D6F3:        PLA                       
CODE_27D6F4:        STA $0806,y               
CODE_27D6F7:        LDA $080A,y               
CODE_27D6FA:        PHA                       
CODE_27D6FB:        LDA $080E,y               
CODE_27D6FE:        STA $080A,y               
CODE_27D701:        PLA                       
CODE_27D702:        STA $080E,y               
CODE_27D705:        PHY                       
CODE_27D706:        REP #$20                  
CODE_27D708:        TYA                       
CODE_27D709:        LSR A                     
CODE_27D70A:        LSR A                     
CODE_27D70B:        TAY                       
CODE_27D70C:        SEP #$20                  
CODE_27D70E:        LDA $01                   
CODE_27D710:        AND #$01                  
CODE_27D712:        STA $0A20,y               
CODE_27D715:        STA $0A21,y               
CODE_27D718:        LDA $03                   
CODE_27D71A:        AND #$01                  
CODE_27D71C:        STA $0A22,y               
CODE_27D71F:        STA $0A23,y               
CODE_27D722:        PLY                       
CODE_27D723:        SEP #$10                  
CODE_27D725:        LDX $9B                   
CODE_27D727:        RTS                       

CODE_27D728:        REP #$10                  
CODE_27D72A:        LDA #$07                  
CODE_27D72C:        STA $DA                   
CODE_27D72E:        STX $D8                   
CODE_27D730:        STZ $D9                   
CODE_27D732:        LDA #$00                  
CODE_27D734:        XBA                       
CODE_27D735:        REP #$20                  
CODE_27D737:        LDA $D8                   
CODE_27D739:        AND #$00FF                
CODE_27D73C:        ASL A                     
CODE_27D73D:        TAY                       
CODE_27D73E:        LDA $AF6E,y               
CODE_27D741:        STA $C6,x                 
CODE_27D743:        TAY                       
CODE_27D744:        SEP #$20                  
CODE_27D746:        LDA $D8                   
CODE_27D748:        INC A                     
CODE_27D749:        AND #$07                  
CODE_27D74B:        STA $D8                   
CODE_27D74D:        LDA $0801,y               
CODE_27D750:        CMP $0809,y               
CODE_27D753:        BNE CODE_27D759           
CODE_27D755:        CMP #$F0                  
CODE_27D757:        BEQ CODE_27D783           
CODE_27D759:        DEC $DA                   
CODE_27D75B:        BPL CODE_27D732           
CODE_27D75D:        LDY #$0080                
CODE_27D760:        STY $C6,x                 
CODE_27D762:        LDA $0801,y               
CODE_27D765:        CMP $0805,y               
CODE_27D768:        BNE CODE_27D76E           
CODE_27D76A:        CMP #$F0                  
CODE_27D76C:        BEQ CODE_27D783           
CODE_27D76E:        REP #$20                  
CODE_27D770:        TYA                       
CODE_27D771:        CLC                       
CODE_27D772:        ADC #$0008                
CODE_27D775:        TAY                       
CODE_27D776:        SEP #$20                  
CODE_27D778:        CPY #$0200                
CODE_27D77B:        BNE CODE_27D760           
CODE_27D77D:        LDA #$00                  
CODE_27D77F:        STA $C6,x                 
CODE_27D781:        STA $C7,x                 
CODE_27D783:        SEP #$10                  
CODE_27D785:        LDA $0D                   
CODE_27D787:        RTS                       

CODE_27D788:        TXA                       
CODE_27D789:        EOR $15                   
CODE_27D78B:        AND #$01                  
CODE_27D78D:        TAY                       
CODE_27D78E:        LDA $C77A,y               
CODE_27D791:        TAY                       
CODE_27D792:        LDA $0801,y               
CODE_27D795:        CMP $0805,y               
CODE_27D798:        BNE CODE_27D7A8           
CODE_27D79A:        CMP $0809,y               
CODE_27D79D:        BNE CODE_27D7A8           
CODE_27D79F:        CMP $080D,y               
CODE_27D7A2:        BNE CODE_27D7A8           
CODE_27D7A4:        CMP #$F0                  
CODE_27D7A6:        BEQ CODE_27D7CB           
CODE_27D7A8:        LDY #$00                  
CODE_27D7AA:        LDA $0801,y               
CODE_27D7AD:        CMP $0805,y               
CODE_27D7B0:        BNE CODE_27D7C0           
CODE_27D7B2:        CMP $0809,y               
CODE_27D7B5:        BNE CODE_27D7C0           
CODE_27D7B7:        CMP $080D,y               
CODE_27D7BA:        BNE CODE_27D7C0           
CODE_27D7BC:        CMP #$F0                  
CODE_27D7BE:        BEQ CODE_27D7CB           
CODE_27D7C0:        TYA                       
CODE_27D7C1:        CLC                       
CODE_27D7C2:        ADC #$10                  
CODE_27D7C4:        TAY                       
CODE_27D7C5:        CPY #$40                  
CODE_27D7C7:        BNE CODE_27D7AA           
CODE_27D7C9:        SEC                       
CODE_27D7CA:        RTS                       

CODE_27D7CB:        CLC                       
CODE_27D7CC:        RTS                       

CODE_27D7CD:        LDY #$00                  
CODE_27D7CF:        LDA $0801,y               
CODE_27D7D2:        CMP #$F0                  
CODE_27D7D4:        BEQ CODE_27D7E1           
CODE_27D7D6:        TYA                       
CODE_27D7D7:        CLC                       
CODE_27D7D8:        ADC #$04                  
CODE_27D7DA:        TAY                       
CODE_27D7DB:        CPY #$40                  
CODE_27D7DD:        BNE CODE_27D7CF           
CODE_27D7DF:        SEC                       
CODE_27D7E0:        RTS                       

CODE_27D7E1:        CLC                       
CODE_27D7E2:        RTS                       

CODE_27D7E3:        LDA $05DD,x               
CODE_27D7E6:        ASL A                     
CODE_27D7E7:        ASL A                     
CODE_27D7E8:        ASL A                     
CODE_27D7E9:        ASL A                     
CODE_27D7EA:        CLC                       
CODE_27D7EB:        ADC $05AB,x               
CODE_27D7EE:        STA $05AB,x               
CODE_27D7F1:        PHP                       
CODE_27D7F2:        LDA $05DD,x               
CODE_27D7F5:        LSR A                     
CODE_27D7F6:        LSR A                     
CODE_27D7F7:        LSR A                     
CODE_27D7F8:        LSR A                     
CODE_27D7F9:        CMP #$08                  
CODE_27D7FB:        LDY #$00                  
CODE_27D7FD:        BCC CODE_27D802           
CODE_27D7FF:        ORA #$F0                  
CODE_27D801:        DEY                       
CODE_27D802:        PLP                       
CODE_27D803:        ADC $05C9,x               
CODE_27D806:        STA $05C9,x               
CODE_27D809:        TYA                       
CODE_27D80A:        ADC $E2,x                 
CODE_27D80C:        STA $E2,x                 
CODE_27D80E:        RTS                       

CODE_27D80F:        LDA $05D3,x               
CODE_27D812:        ASL A                     
CODE_27D813:        ASL A                     
CODE_27D814:        ASL A                     
CODE_27D815:        ASL A                     
CODE_27D816:        CLC                       
CODE_27D817:        ADC $05A1,x               
CODE_27D81A:        STA $05A1,x               
CODE_27D81D:        PHP                       
CODE_27D81E:        LDA $05D3,x               
CODE_27D821:        LSR A                     
CODE_27D822:        LSR A                     
CODE_27D823:        LSR A                     
CODE_27D824:        LSR A                     
CODE_27D825:        CMP #$08                  
CODE_27D827:        LDY #$00                  
CODE_27D829:        BCC CODE_27D82E           
CODE_27D82B:        ORA #$F0                  
CODE_27D82D:        DEY                       
CODE_27D82E:        PLP                       
CODE_27D82F:        ADC $05BF,x               
CODE_27D832:        STA $05BF,x               
CODE_27D835:        TYA                       
CODE_27D836:        ADC $1FD7,x               
CODE_27D839:        STA $1FD7,x               
CODE_27D83C:        RTS                       

CODE_27D83D:        LDA $9C                   
CODE_27D83F:        ORA $7E3973               
CODE_27D843:        BNE CODE_27D84F           
CODE_27D845:        LDX #$07                  
CODE_27D847:        STX $9B                   
CODE_27D849:        JSR CODE_27D850           
CODE_27D84C:        DEX                       
CODE_27D84D:        BPL CODE_27D847           
CODE_27D84F:        RTS                       

CODE_27D850:        LDA $1A15,x               
CODE_27D853:        BEQ CODE_27D84F           
CODE_27D855:        PHA                       
CODE_27D856:        LDA $06E3,x               
CODE_27D859:        BEQ CODE_27D85E           
CODE_27D85B:        DEC $06E3,x               
CODE_27D85E:        LDA $1A57,x               
CODE_27D861:        BEQ CODE_27D866           
CODE_27D863:        DEC $1A57,x               
CODE_27D866:        PLA                       
CODE_27D867:        JSL CODE_20FB1F           

PNTR_27D86B:        dw CODE_27D84F
                    dw CODE_27DBE4
                    dw CODE_27DBE4
                    dw CODE_27DB84
                    dw CODE_27DA57
                    dw CODE_27D9E9
                    dw CODE_27D9E9
                    dw CODE_27D8ED
                    dw CODE_27D8ED
                    dw CODE_27D8ED
                    dw CODE_27D8ED
                    dw CODE_27D8ED
                    dw CODE_27D8ED
                    dw CODE_27D8ED
                    dw CODE_27D8ED
                    dw CODE_27D8ED
                    dw CODE_27D8ED
                    dw CODE_27D8ED
                    dw CODE_27D8ED
                    dw CODE_27D8ED
                    dw CODE_27D8ED
                    dw CODE_27D897

CODE_27D897:        LDA $1A35,x               ;\
CODE_27D89A:        CMP $0210                 ; |
CODE_27D89D:        LDA $1A2D,x               ; |
CODE_27D8A0:        SBC $12                   ;/
CODE_27D8A2:        BNE CODE_27D8BC           
CODE_27D8A4:        LDA $1A35,x               ;\
CODE_27D8A7:        SEC                       ; |If mario is not between $38 and $4C pixels 
CODE_27D8A8:        SBC $5E                   ; |close to the sprite (20 pixels area), branch
CODE_27D8AA:        CMP #$38                  ; |
CODE_27D8AC:        BCC CODE_27D8BC           ; |
CODE_27D8AE:        CMP #$4C                  ; |
CODE_27D8B0:        BCS CODE_27D8BC           ;/
CODE_27D8B2:        LDY #$07                  ;\
CODE_27D8B4:        LDA $1FC8,y               ; |
CODE_27D8B7:        BEQ CODE_27D8BD           ; |Search free slot for laser sprite
CODE_27D8B9:        DEY                       ; |(Not regular sprite index. rather it's some other type)
CODE_27D8BA:        BPL CODE_27D8B4           ;/ (Extended sprites maybe?)
CODE_27D8BC:        RTS                       ;return

CODE_27D8BD:        LDA #$01                  ;\Sound effect the bowser statue laser plays
CODE_27D8BF:        STA $1200                 ;/
CODE_27D8C2:        LDA #$15                  ;\Sprite: Laser sprite
CODE_27D8C4:        STA $1FC8,y               ;/
CODE_27D8C7:        LDA $1A2D,x               ;\
CODE_27D8CA:        XBA                       ; |
CODE_27D8CB:        LDA $1A35,x               ; |Set extended sprite X pos
CODE_27D8CE:        REP #$20                  ; |
CODE_27D8D0:        SEC                       ; |
CODE_27D8D1:        SBC #$0008                ; |
CODE_27D8D4:        SEP #$20                  ; |
CODE_27D8D6:        STA $05C9,y               ; |
CODE_27D8D9:        XBA                       ; |
CODE_27D8DA:        STA $00E2,y               ;/
CODE_27D8DD:        LDA $1A25,x               ;\
CODE_27D8E0:        CLC                       ; |Set extended sprite Y pos
CODE_27D8E1:        ADC #$08                  ; |
CODE_27D8E3:        STA $05BF,y               ;/
CODE_27D8E6:        LDA $1A1D,x               
CODE_27D8E9:        STA $1FD7,y               
CODE_27D8EC:        RTS                       

CODE_27D8ED:        LDA $06E3,x               
CODE_27D8F0:        BNE CODE_27D92C           
CODE_27D8F2:        LDA $1A35,x               
CODE_27D8F5:        CMP $0210                 
CODE_27D8F8:        LDA $1A2D,x               
CODE_27D8FB:        SBC $12                   
CODE_27D8FD:        BNE CODE_27D92C           
CODE_27D8FF:        LDA $1A35,x               
CODE_27D902:        SEC                       
CODE_27D903:        SBC $0210                 
CODE_27D906:        CMP #$F0                  
CODE_27D908:        BCS CODE_27D92C                   
CODE_27D90A:        LDA #$87                  
CODE_27D90C:        STA $06E3,x               
CODE_27D90F:        LDA $1A15,x               
CODE_27D912:        STA $00                   
CODE_27D914:        CMP #$12                  
CODE_27D916:        BEQ CODE_27D91C           
CODE_27D918:        CMP #$08                  
CODE_27D91A:        BNE CODE_27D91F           
CODE_27D91C:        JMP CODE_27D92D           

CODE_27D91F:        CMP #$13                  
CODE_27D921:        BCC CODE_27D926           
CODE_27D923:        JMP CODE_27D98A           

CODE_27D926:        CLC                       
CODE_27D927:        ADC #$01                  
CODE_27D929:        JMP CODE_27DADB           

CODE_27D92C:        RTS                       

CODE_27D92D:        JSR CODE_27DC85           
CODE_27D930:        LDA #$B0                  
CODE_27D932:        STA $0671,x               
CODE_27D935:        INC $1FF9,x               
CODE_27D938:        LDY $9B                   
CODE_27D93A:        LDA $1A25,y               
CODE_27D93D:        STA $71,x                 
CODE_27D93F:        LDA $1A1D,y               
CODE_27D942:        STA $56,x                 
CODE_27D944:        LDA $00                   
CODE_27D946:        CMP #$11                  
CODE_27D948:        LDA #$30                  
CODE_27D94A:        LDY #$12                  
CODE_27D94C:        BCS CODE_27D952                   
CODE_27D94E:        LDY #$09                  
CODE_27D950:        LDA #$D0                  
CODE_27D952:        STY $00                   
CODE_27D954:        STA $8C,x                 
CODE_27D956:        EOR #$80                  
CODE_27D958:        LDY $9B                   
CODE_27D95A:        ASL A                     
CODE_27D95B:        LDA $1A35,y               
CODE_27D95E:        BCS CODE_27D963                   
CODE_27D960:        SEC                       
CODE_27D961:        SBC #$10                  
CODE_27D963:        STA $5F,x                 
CODE_27D965:        LDA $1A2D,y               
CODE_27D968:        SBC #$00                  
CODE_27D96A:        STA $44,x                 
CODE_27D96C:        LDA #$05                  
CODE_27D96E:        STA $1FE9,x               
CODE_27D971:        JSR CODE_27D9E4           
CODE_27D974:        JSR CODE_27DB4E           
CODE_27D977:        LDA $1A25,x               
CODE_27D97A:        SEC                       
CODE_27D97B:        SBC $0543                 
CODE_27D97E:        CLC                       
CODE_27D97F:        ADC #$04                  
CODE_27D981:        STA $1F9F                 
CODE_27D984:        ADC #$08                  
CODE_27D986:        STA $1FA0                 
CODE_27D989:        RTS                       

CODE_27D98A:        JSR CODE_27DC85           
CODE_27D98D:        LDA #$50                  
CODE_27D98F:        STA $0671,x               
CODE_27D992:        LDA #$80                  
CODE_27D994:        STA $06A6,x               
CODE_27D997:        INC $1021,x               
CODE_27D99A:        INC $0689,x               
CODE_27D99D:        LDY $9B                   
CODE_27D99F:        LDA $1A25,y               
CODE_27D9A2:        SEC                       
CODE_27D9A3:        SBC #$08                  
CODE_27D9A5:        STA $71,x                 
CODE_27D9A7:        LDA $1A1D,y               
CODE_27D9AA:        SBC #$00                  
CODE_27D9AC:        STA $56,x                 
CODE_27D9AE:        LDA #$D0                  
CODE_27D9B0:        STA $9E,x                 
CODE_27D9B2:        LDA $00                   
CODE_27D9B4:        CMP #$14                  
CODE_27D9B6:        LDA #$10                  
CODE_27D9B8:        LDY #$0B                  
CODE_27D9BA:        BCS CODE_27D9BF                   
CODE_27D9BC:        DEY                       
CODE_27D9BD:        LDA #$F0                  
CODE_27D9BF:        STY $00                   
CODE_27D9C1:        STA $8C,x                 
CODE_27D9C3:        ASL A                     
CODE_27D9C4:        LDA #$00                  
CODE_27D9C6:        STA $01                   
CODE_27D9C8:        LDY $9B                   
CODE_27D9CA:        LDA #$08                  
CODE_27D9CC:        BCC CODE_27D9D2           
CODE_27D9CE:        LDA #$F8                  
CODE_27D9D0:        DEC $01                   
CODE_27D9D2:        CLC                       
CODE_27D9D3:        ADC $1A35,y               
CODE_27D9D6:        STA $5F,x                 
CODE_27D9D8:        LDA $1A2D,y               
CODE_27D9DB:        ADC $01                   
CODE_27D9DD:        STA $44,x                 
CODE_27D9DF:        LDA #$05                  
CODE_27D9E1:        STA $1FE9,x               
CODE_27D9E4:        LDX $9B                   
CODE_27D9E6:        JMP CODE_27DB4E           

CODE_27D9E9:        LDA $06E3,x               
CODE_27D9EC:        BNE CODE_27DA4F           
CODE_27D9EE:        TXA                       
CODE_27D9EF:        TAY                       
CODE_27D9F0:        LDA #$70                  
CODE_27D9F2:        STA $06E3,y               
CODE_27D9F5:        INC $06DB,x               
CODE_27D9F8:        LDA $06DB,x               
CODE_27D9FB:        AND #$03                  
CODE_27D9FD:        BEQ CODE_27DA4F           
CODE_27D9FF:        JSR CODE_27DC85           
CODE_27DA02:        LDA $1A35,y               
CODE_27DA05:        STA $5F,x                 
CODE_27DA07:        LDA $1A2D,y               
CODE_27DA0A:        STA $44,x                 
CODE_27DA0C:        JSL CODE_27A837           
CODE_27DA10:        STY $01                   
CODE_27DA12:        LDY $9B                   
CODE_27DA14:        LDA $1A15,y               
CODE_27DA17:        LDY #$00                  
CODE_27DA19:        CMP #$05                  
CODE_27DA1B:        BNE CODE_27DA1E           
CODE_27DA1D:        INY                       
CODE_27DA1E:        CPY $01                   
CODE_27DA20:        BNE CODE_27DA50           
CODE_27DA22:        LDA $C843,y               
CODE_27DA25:        STA $0679,x               
CODE_27DA28:        LDY $9B                   
CODE_27DA2A:        LDA $1A25,y               
CODE_27DA2D:        SEC                       
CODE_27DA2E:        SBC #$03                  
CODE_27DA30:        STA $71,x                 
CODE_27DA32:        LDA $1A1D,y               
CODE_27DA35:        SBC #$00                  
CODE_27DA37:        STA $56,x                 
CODE_27DA39:        LDA #$72                  
CODE_27DA3B:        STA $0671,x               
CODE_27DA3E:        LDA #$01                  
CODE_27DA40:        STA $1FE9,x               
CODE_27DA43:        LDA #$28                  
CODE_27DA45:        STA $0689,x               
CODE_27DA48:        LDA #$FF                  
CODE_27DA4A:        STA $0651,x               
CODE_27DA4D:        LDX $9B                   
CODE_27DA4F:        RTS                       

CODE_27DA50:        LDA #$00                  
CODE_27DA52:        STA $0661,x               
CODE_27DA55:        BEQ CODE_27DA4D           
CODE_27DA57:        LDA $1A57,x               
CODE_27DA5A:        BNE CODE_27DA92           
CODE_27DA5C:        LDA #$3D                  
CODE_27DA5E:        STA $1A57,x               
CODE_27DA61:        LDA $1A25,x               
CODE_27DA64:        CMP $0543                 
CODE_27DA67:        LDA $1A1D,x               
CODE_27DA6A:        SBC $0542                 
CODE_27DA6D:        BNE CODE_27DAC4           
CODE_27DA6F:        LDA $1A35,x               
CODE_27DA72:        CMP $0210                 
CODE_27DA75:        LDA $1A2D,x               
CODE_27DA78:        SBC $12                   
CODE_27DA7A:        BNE CODE_27DAC4           
CODE_27DA7C:        LDA $1A35,x               
CODE_27DA7F:        SEC                       
CODE_27DA80:        SBC $0210                 
CODE_27DA83:        CLC                       
CODE_27DA84:        ADC #$20                  
CODE_27DA86:        CMP #$28                  
CODE_27DA88:        BCC CODE_27DAC4           
CODE_27DA8A:        LDA #$20                  
CODE_27DA8C:        STA $06E3,x               
CODE_27DA8F:        INC $06DB,x               
CODE_27DA92:        LDA $06E3,x               
CODE_27DA95:        BEQ CODE_27DAC4           
CODE_27DA97:        CMP #$1D                  
CODE_27DA99:        BNE CODE_27DAC5           
CODE_27DA9B:        LDA $0564                 
CODE_27DA9E:        BEQ CODE_27DAA7           
CODE_27DAA0:        LDA #$1E                  
CODE_27DAA2:        STA $06E3,x               
CODE_27DAA5:        BRA CODE_27DAC4           

CODE_27DAA7:        LDA #$15                  
CODE_27DAA9:        STA $0564                 
CODE_27DAAC:        LDA $1A25,x               
CODE_27DAAF:        STA $052B                 
CODE_27DAB2:        LDA $1A1D,x               
CODE_27DAB5:        STA $052A                 
CODE_27DAB8:        LDA $1A35,x               
CODE_27DABB:        STA $0529                 
CODE_27DABE:        LDA $1A2D,x               
CODE_27DAC1:        STA $0528                 
CODE_27DAC4:        RTS                       

CODE_27DAC5:        CMP #$01                  
CODE_27DAC7:        BNE CODE_27DAEA           
CODE_27DAC9:        LDA $06DB,x               
CODE_27DACC:        AND #$07                  
CODE_27DACE:        STA $00                   
CODE_27DAD0:        JSR CODE_27DAE0           
CODE_27DAD3:        LDA $06DB,x               
CODE_27DAD6:        CLC                       
CODE_27DAD7:        ADC #$04                  
CODE_27DAD9:        AND #$07                  
CODE_27DADB:        STA $00                   
CODE_27DADD:        JMP CODE_27DAE0           

CODE_27DAE0:        LDY #$05                  
CODE_27DAE2:        LDA $1FC8,y               
CODE_27DAE5:        BEQ CODE_27DAEB           
CODE_27DAE7:        DEY                       
CODE_27DAE8:        BPL CODE_27DAE2           
CODE_27DAEA:        RTS                       

CODE_27DAEB:        LDA #$0B                  
CODE_27DAED:        STA $1FC8,y               
CODE_27DAF0:        LDA $1A2D,x               
CODE_27DAF3:        STA $D9                   
CODE_27DAF5:        LDA $1A35,x               
CODE_27DAF8:        STA $D8                   
CODE_27DAFA:        LDX $00                   
CODE_27DAFC:        REP #$20                  
CODE_27DAFE:        LDA $C875,x               
CODE_27DB01:        AND #$00FF                
CODE_27DB04:        CMP #$0080                
CODE_27DB07:        BCC CODE_27DB0C           
CODE_27DB09:        ORA #$FF00                
CODE_27DB0C:        CLC                       
CODE_27DB0D:        ADC $D8                   
CODE_27DB0F:        STA $D8                   
CODE_27DB11:        SEP #$20                  
CODE_27DB13:        LDA $D8                   
CODE_27DB15:        STA $05C9,y               
CODE_27DB18:        LDA $D9                   
CODE_27DB1A:        STA $00E2,y               
CODE_27DB1D:        LDA $C861,x               
CODE_27DB20:        STA $05D3,y               
CODE_27DB23:        LDA $C84D,x               
CODE_27DB26:        STA $05DD,y               
CODE_27DB29:        LDA #$00                  
CODE_27DB2B:        STA $02                   
CODE_27DB2D:        LDA $C88B,x               
CODE_27DB30:        BPL CODE_27DB34           
CODE_27DB32:        DEC $02                   
CODE_27DB34:        CLC                       
CODE_27DB35:        LDX $9B                   
CODE_27DB37:        ADC $1A25,x               
CODE_27DB3A:        STA $05BF,y               
CODE_27DB3D:        LDA $1A1D,x               
CODE_27DB40:        ADC $02                   
CODE_27DB42:        STA $1FD7,y               
CODE_27DB45:        LDA #$00                  
CODE_27DB47:        STA $06C7,y               
CODE_27DB4A:        JMP CODE_27DB4E           

CODE_27DB4D:        RTS                       

CODE_27DB4E:        LDA #$4A                  
CODE_27DB50:        STA $1203                 
CODE_27DB53:        JSL CODE_279544           
CODE_27DB57:        LDA #$01                  
CODE_27DB59:        STA $1F9C                 
CODE_27DB5C:        LDA $1A35,x               
CODE_27DB5F:        CLC                       
CODE_27DB60:        LDX $00                   
CODE_27DB62:        ADC $C875,x               
CODE_27DB65:        SEC                       
CODE_27DB66:        SBC $0210                 
CODE_27DB69:        STA $1FA2                 
CODE_27DB6C:        LDA $C88B,x               
CODE_27DB6F:        LDX $9B                   
CODE_27DB71:        CLC                       
CODE_27DB72:        ADC $1A25,x               
CODE_27DB75:        SEC                       
CODE_27DB76:        SBC $0543                 
CODE_27DB79:        STA $1F9F                 
CODE_27DB7C:        LDA #$1F                  
CODE_27DB7E:        STA $1FAE                 
CODE_27DB81:        RTS                       

DATA_27DB82:    db $60,$20

CODE_27DB84:        LDA $06E3,x
CODE_27DB87:        BNE CODE_27DBE3    
CODE_27DB89:        LDA $1A35,x               
CODE_27DB8C:        CMP $0210                 
CODE_27DB8F:        LDA $1A2D,x               
CODE_27DB92:        SBC $12                   
CODE_27DB94:        BNE CODE_27DBE3           
CODE_27DB96:        LDA $1A35,x               
CODE_27DB99:        SEC                       
CODE_27DB9A:        SBC $0210                 
CODE_27DB9D:        CMP #$F0                  
CODE_27DB9F:        BCS CODE_27DBE3                   
CODE_27DBA1:        LDA #$C0                  
CODE_27DBA3:        STA $06E3,x               
CODE_27DBA6:        JSR CODE_27DC85           
CODE_27DBA9:        LDY $9B                   
CODE_27DBAB:        LDA #$AD                  
CODE_27DBAD:        STA $0671,x               
CODE_27DBB0:        LDA $1A25,y               
CODE_27DBB3:        SEC                       
CODE_27DBB4:        SBC #$06                  
CODE_27DBB6:        STA $71,x                 
CODE_27DBB8:        LDA $1A1D,y               
CODE_27DBBB:        SBC #$00                  
CODE_27DBBD:        STA $56,x                 
CODE_27DBBF:        LDA $1A2D,y               
CODE_27DBC2:        STA $44,x                 
CODE_27DBC4:        LDA $1A35,y               
CODE_27DBC7:        STA $5F,x                 
CODE_27DBC9:        LDA #$00                  
CODE_27DBCB:        STA $68,x                 
CODE_27DBCD:        LDA #$28                  
CODE_27DBCF:        STA $0518,x               
CODE_27DBD2:        LDA #$05                  
CODE_27DBD4:        STA $1FE9,x               
CODE_27DBD7:        JSL CODE_27A837           
CODE_27DBDB:        LDA $DB82,y               
CODE_27DBDE:        STA $0679,x               
CODE_27DBE1:        LDX $9B                   
CODE_27DBE3:        RTS                       

CODE_27DBE4:        LDA $06E3,x               
CODE_27DBE7:        BNE CODE_27DBE3           
CODE_27DBE9:        LDA $1A25,x               
CODE_27DBEC:        CMP $0543                 
CODE_27DBEF:        LDA $1A1D,x               
CODE_27DBF2:        SBC $0542                 
CODE_27DBF5:        BNE CODE_27DBE3           
CODE_27DBF7:        LDA $1A35,x               
CODE_27DBFA:        CMP $0210                 
CODE_27DBFD:        LDA $1A2D,x               
CODE_27DC00:        SBC $12                   
CODE_27DC02:        BNE CODE_27DBE3           
CODE_27DC04:        LDA $0783,x               
CODE_27DC07:        AND #$1F                  
CODE_27DC09:        ORA #$80                  
CODE_27DC0B:        STA $06E3,x               
CODE_27DC0E:        LDA $1A35,x               
CODE_27DC11:        SEC                       
CODE_27DC12:        SBC $0210                 
CODE_27DC15:        CLC                       
CODE_27DC16:        ADC #$10                  
CODE_27DC18:        CMP #$20                  
CODE_27DC1A:        BCC CODE_27DBE3           
CODE_27DC1C:        LDA $5E                   
CODE_27DC1E:        SBC $1A35,x               
CODE_27DC21:        CLC                       
CODE_27DC22:        ADC #$11                  
CODE_27DC24:        CMP #$22                  
CODE_27DC26:        BCC CODE_27DBE3           
CODE_27DC28:        JSR CODE_27DC85           
CODE_27DC2B:        LDY $9B                   
CODE_27DC2D:        LDA $1A15,y               
CODE_27DC30:        LSR A                     
CODE_27DC31:        LDA #$78                  
CODE_27DC33:        BCS CODE_27DC37                   
CODE_27DC35:        LDA #$79                  
CODE_27DC37:        STA $0671,x               
CODE_27DC3A:        LDA #$00                  
CODE_27DC3C:        STA $1FE9,x               
CODE_27DC3F:        LDA $1A25,y               
CODE_27DC42:        SEC                       
CODE_27DC43:        SBC #$01                  
CODE_27DC45:        STA $71,x                 
CODE_27DC47:        LDA $1A1D,y               
CODE_27DC4A:        SBC #$00                  
CODE_27DC4C:        STA $56,x                 
CODE_27DC4E:        LDA $1A2D,y               
CODE_27DC51:        STA $44,x                 
CODE_27DC53:        LDA $1A35,y               
CODE_27DC56:        STA $5F,x                 
CODE_27DC58:        STA $1CD7,x               
CODE_27DC5B:        LDA #$0C                  
CODE_27DC5D:        STA $0518,x               
CODE_27DC60:        LDA #$20                  
CODE_27DC62:        STA $1FD2,x               
CODE_27DC65:        JSL CODE_27A837           
CODE_27DC69:        LDA $C8A1,y               
CODE_27DC6C:        STA $8C,x                 
CODE_27DC6E:        LDA $C8A3,y               
CODE_27DC71:        STA $0679,x               
CODE_27DC74:        LDA $C8A5,y               
CODE_27DC77:        STA $4D,x                 
CODE_27DC79:        LDX $9B                   
CODE_27DC7B:        TYA                       
CODE_27DC7C:        CLC                       
CODE_27DC7D:        ADC #$14                  
CODE_27DC7F:        STA $00                   
CODE_27DC81:        JSR CODE_27DB4E           
CODE_27DC84:        RTS                       

CODE_27DC85:        LDX #$04                  
CODE_27DC87:        LDA $0661,x               
CODE_27DC8A:        BEQ CODE_27DC94           
CODE_27DC8C:        DEX                       
CODE_27DC8D:        BPL CODE_27DC87           
CODE_27DC8F:        PLA                       
CODE_27DC90:        PLA                       
CODE_27DC91:        LDX $9B                   
CODE_27DC93:        RTS                       

CODE_27DC94:        JSL CODE_279C96           
CODE_27DC98:        LDA #$02                  
CODE_27DC9A:        STA $0661,x               
CODE_27DC9D:        RTS                       

CODE_27DC9E:        LDA $034E                 
CODE_27DCA1:        BNE CODE_27DCA4           
CODE_27DCA3:        RTL                       

CODE_27DCA4:        INC $034E                 
CODE_27DCA7:        CMP #$10                  
CODE_27DCA9:        BNE CODE_27DCB2           
CODE_27DCAB:        PHP                       
CODE_27DCAC:        LDX #$10                  
CODE_27DCAE:        STX $1203                 
CODE_27DCB1:        PLP                       
CODE_27DCB2:        BCS CODE_27DD0E                   
CODE_27DCB4:        JSR CODE_27DD64           
CODE_27DCB7:        LDX #$00                  
CODE_27DCB9:        JSR CODE_27D728           
CODE_27DCBC:        REP #$10                  
CODE_27DCBE:        LDY $C6                   
CODE_27DCC0:        LDX #$0000                
CODE_27DCC3:        LDA $0A                   
CODE_27DCC5:        STA $0800,y               
CODE_27DCC8:        CLC                       
CODE_27DCC9:        ADC #$08                  
CODE_27DCCB:        STA $0804,y               
CODE_27DCCE:        LDA $0B                   
CODE_27DCD0:        STA $0801,y               
CODE_27DCD3:        STA $0805,y               
CODE_27DCD6:        CLC                       
CODE_27DCD7:        ADC #$08                  
CODE_27DCD9:        STA $0B                   
CODE_27DCDB:        LDA $0C                   
CODE_27DCDD:        INC $0C                   
CODE_27DCDF:        INC $0C                   
CODE_27DCE1:        STA $0802,y               
CODE_27DCE4:        INC A                     
CODE_27DCE5:        STA $0806,y               
CODE_27DCE8:        LDA #$20                  
CODE_27DCEA:        STA $0803,y               
CODE_27DCED:        STA $0807,y               
CODE_27DCF0:        REP #$20                  
CODE_27DCF2:        TYA                       
CODE_27DCF3:        LSR A                     
CODE_27DCF4:        LSR A                     
CODE_27DCF5:        PHX                       
CODE_27DCF6:        TAX                       
CODE_27DCF7:        SEP #$20                  
CODE_27DCF9:        STZ $0A20,x               
CODE_27DCFC:        STZ $0A21,x               
CODE_27DCFF:        PLX                       
CODE_27DD00:        TYA                       
CODE_27DD01:        CLC                       
CODE_27DD02:        ADC #$08                  
CODE_27DD04:        TAY                       
CODE_27DD05:        INX                       
CODE_27DD06:        CPX #$0004                
CODE_27DD09:        BNE CODE_27DCC3           
CODE_27DD0B:        SEP #$10                  
CODE_27DD0D:        RTL                       

CODE_27DD0E:        CMP #$20                  
CODE_27DD10:        BCS CODE_27DD63                   
CODE_27DD12:        EOR #$1F                  
CODE_27DD14:        JSR CODE_27DD64           
CODE_27DD17:        LDA #$04                  
CODE_27DD19:        STA $0D                   
CODE_27DD1B:        JSR CODE_27D7CD           
CODE_27DD1E:        LDA $0A                   
CODE_27DD20:        STA $0800,y               
CODE_27DD23:        TYA                       
CODE_27DD24:        LSR A                     
CODE_27DD25:        LSR A                     
CODE_27DD26:        TAX                       
CODE_27DD27:        STZ $0A20,x               
CODE_27DD2A:        STZ $0A21,x               
CODE_27DD2D:        LDA $0B                   
CODE_27DD2F:        STA $0801,y               
CODE_27DD32:        LDA $0C                   
CODE_27DD34:        STA $0802,y               
CODE_27DD37:        LDA #$20                  
CODE_27DD39:        STA $0803,y               
CODE_27DD3C:        INC $0C                   
CODE_27DD3E:        JSR CODE_27D7CD           
CODE_27DD41:        LDA $0A                   
CODE_27DD43:        CLC                       
CODE_27DD44:        ADC #$08                  
CODE_27DD46:        STA $0800,y               
CODE_27DD49:        LDA $0B                   
CODE_27DD4B:        STA $0801,y               
CODE_27DD4E:        CLC                       
CODE_27DD4F:        ADC #$08                  
CODE_27DD51:        STA $0B                   
CODE_27DD53:        LDA $0C                   
CODE_27DD55:        STA $0802,y               
CODE_27DD58:        LDA #$20                  
CODE_27DD5A:        STA $0803,y               
CODE_27DD5D:        INC $0C                   
CODE_27DD5F:        DEC $0D                   
CODE_27DD61:        BNE CODE_27DD1B           
CODE_27DD63:        RTL                       

CODE_27DD64:        REP #$20                  
CODE_27DD66:        AND #$00FC                
CODE_27DD69:        LSR A                     
CODE_27DD6A:        LSR A                     
CODE_27DD6B:        XBA                       
CODE_27DD6C:        CLC                       
CODE_27DD6D:        ADC #$D000                
CODE_27DD70:        STA $022C                 
CODE_27DD73:        CLC                       
CODE_27DD74:        ADC #$0040                
CODE_27DD77:        STA $022E                 
CODE_27DD7A:        CLC                       
CODE_27DD7B:        ADC #$0040                
CODE_27DD7E:        STA $0230                 
CODE_27DD81:        CLC                       
CODE_27DD82:        ADC #$0040                
CODE_27DD85:        STA $0232                 
CODE_27DD88:        SEP #$20                  
CODE_27DD8A:        LDA #$32                  
CODE_27DD8C:        STA $0239                 
CODE_27DD8F:        LDA $70                   
CODE_27DD91:        STA $D8                   
CODE_27DD93:        LDA $55                   
CODE_27DD95:        STA $D9                   
CODE_27DD97:        LDA $43                   
CODE_27DD99:        XBA                       
CODE_27DD9A:        LDA $5E                   
CODE_27DD9C:        REP #$20                  
CODE_27DD9E:        SEC                       
CODE_27DD9F:        SBC $0210                 
CODE_27DDA2:        STA $0A                   
CODE_27DDA4:        LDA $D8                   
CODE_27DDA6:        SEC                       
CODE_27DDA7:        SBC $0216                 
CODE_27DDAA:        DEC A                     
CODE_27DDAB:        STA $0B                   
CODE_27DDAD:        SEP #$20                  
CODE_27DDAF:        LDA #$10                  
CODE_27DDB1:        STA $0C                   
CODE_27DDB3:        RTS                       

DATA_27DDB4:        dw $FFFF
                    dw $0002
                    dw $0005
                    dw $0008
                    dw $0008
                    dw $0005
                    dw $0002
                    dw $FFFF

DATA_27DDC4:        db $FA,$FB,$FC,$FD

CODE_27DDC8:        STZ $D8
CODE_27DDCA:        LDA $BC                   
CODE_27DDCC:        CMP $E984                 
CODE_27DDCF:        BEQ CODE_27DDE2           
CODE_27DDD1:        CMP $E985                 
CODE_27DDD4:        BEQ CODE_27DDE2           
CODE_27DDD6:        LDA $7FC522               
CODE_27DDDA:        ORA $7FC523               
CODE_27DDDE:        BEQ CODE_27DDB3           
CODE_27DDE0:        INC $D8                   
CODE_27DDE2:        LDA $1201                 
CODE_27DDE5:        BNE CODE_27DDF2           
CODE_27DDE7:        LDA $15                   
CODE_27DDE9:        AND #$07                  
CODE_27DDEB:        BNE CODE_27DDF2           
CODE_27DDED:        LDA #$04                  
CODE_27DDEF:        STA $1201                 
CODE_27DDF2:        LDX #$01                  
CODE_27DDF4:        LDA $7FC522,x             
CODE_27DDF8:        BEQ CODE_27DE4A           
CODE_27DDFA:        INC A                     
CODE_27DDFB:        STA $7FC522,x             
CODE_27DDFF:        AND #$0F                  
CODE_27DE01:        CMP #$04                  
CODE_27DE03:        BNE CODE_27DE40           
CODE_27DE05:        LDY $D8                   
CODE_27DE07:        BNE CODE_27DE40           
CODE_27DE09:        PHX                       
CODE_27DE0A:        TXA                       
CODE_27DE0B:        EOR #$01                  
CODE_27DE0D:        TAX                       
CODE_27DE0E:        LDA $7FC522,x             
CODE_27DE12:        AND #$F0                  
CODE_27DE14:        CMP #$40                  
CODE_27DE16:        BEQ CODE_27DE1B           
CODE_27DE18:        CLC                       
CODE_27DE19:        ADC #$10                  
CODE_27DE1B:        STA $7FC522,x             
CODE_27DE1F:        LDA $5E                   
CODE_27DE21:        STA $7FC524,x             
CODE_27DE25:        LDA $43                   
CODE_27DE27:        STA $7FC526,x             
CODE_27DE2B:        LDA $70                   
CODE_27DE2D:        STA $7FC528,x             
CODE_27DE31:        LDA $55                   
CODE_27DE33:        STA $7FC52A,x             
CODE_27DE37:        LDA $BD                   
CODE_27DE39:        STA $7FC52C,x             
CODE_27DE3D:        PLX                       
CODE_27DE3E:        BRA CODE_27DE4A           

CODE_27DE40:        CMP #$08                  
CODE_27DE42:        BNE CODE_27DE4A           
CODE_27DE44:        LDA #$00                  
CODE_27DE46:        STA $7FC522,x             
CODE_27DE4A:        DEX                       
CODE_27DE4B:        BPL CODE_27DDF4           
CODE_27DE4D:        LDX #$01                  
CODE_27DE4F:        LDA $7FC522,x             
CODE_27DE53:        BNE CODE_27DE58           
CODE_27DE55:        BRL CODE_27DEEA           

CODE_27DE58:        JSR CODE_27D7CD           
CODE_27DE5B:        PHX                       
CODE_27DE5C:        LDA $7FC52C,x             
CODE_27DE60:        AND #$40                  
CODE_27DE62:        LSR A                     
CODE_27DE63:        LSR A                     
CODE_27DE64:        LSR A                     
CODE_27DE65:        STA $D8                   
CODE_27DE67:        LDA $7FC522,x             
CODE_27DE6B:        STA $DC                   
CODE_27DE6D:        AND #$F0                  
CODE_27DE6F:        SEC                       
CODE_27DE70:        SBC #$10                  
CODE_27DE72:        LSR A                     
CODE_27DE73:        LSR A                     
CODE_27DE74:        LSR A                     
CODE_27DE75:        CLC                       
CODE_27DE76:        ADC $D8                   
CODE_27DE78:        TAX                       
CODE_27DE79:        REP #$20                  
CODE_27DE7B:        LDA.l DATA_27DDB4,x             
CODE_27DE7F:        STA $DA                   
CODE_27DE81:        SEP #$20                  
CODE_27DE83:        LDA $DC                   
CODE_27DE85:        AND #$0F                  
CODE_27DE87:        LSR A                     
CODE_27DE88:        TAX                       
CODE_27DE89:        LDA.l DATA_27DDC4,x             
CODE_27DE8D:        STA $DC                   
CODE_27DE8F:        PLX                       
CODE_27DE90:        LDA $7FC528,x             
CODE_27DE94:        STA $D8                   
CODE_27DE96:        LDA $7FC52A,x             
CODE_27DE9A:        STA $D9                   
CODE_27DE9C:        LDA $7FC526,x             
CODE_27DEA0:        XBA                       
CODE_27DEA1:        LDA $7FC524,x             
CODE_27DEA5:        REP #$20                  
CODE_27DEA7:        SEC                       
CODE_27DEA8:        SBC $0210                 
CODE_27DEAB:        CLC                       
CODE_27DEAC:        ADC $DA                   
CODE_27DEAE:        STA $0A                   
CODE_27DEB0:        LDA $D8                   
CODE_27DEB2:        SEC                       
CODE_27DEB3:        SBC $0216                 
CODE_27DEB6:        CLC                       
CODE_27DEB7:        ADC #$001A                
CODE_27DEBA:        STA $D8                   
CODE_27DEBC:        SEP #$20                  
CODE_27DEBE:        LDA $D9                   
CODE_27DEC0:        BNE CODE_27DEEA           
CODE_27DEC2:        LDA $0A                   
CODE_27DEC4:        STA $0800,y               
CODE_27DEC7:        LDA $D8                   
CODE_27DEC9:        STA $0801,y               
CODE_27DECC:        LDA $DC                   
CODE_27DECE:        STA $0802,y               
CODE_27DED1:        PHX                       
CODE_27DED2:        LDA #$21                  
CODE_27DED4:        LDX $0588                 
CODE_27DED7:        BEQ CODE_27DEDB           
CODE_27DED9:        LDA #$11                  
CODE_27DEDB:        STA $0803,y               
CODE_27DEDE:        PLX                       
CODE_27DEDF:        TYA                       
CODE_27DEE0:        LSR A                     
CODE_27DEE1:        LSR A                     
CODE_27DEE2:        TAY                       
CODE_27DEE3:        LDA $0B                   
CODE_27DEE5:        AND #$01                  
CODE_27DEE7:        STA $0A20,y               
CODE_27DEEA:        DEX                       
CODE_27DEEB:        BMI CODE_27DEF0           
CODE_27DEED:        BRL CODE_27DE4F           

CODE_27DEF0:        RTS                       

CODE_27DEF1:        LDA $0580                 
CODE_27DEF4:        BEQ CODE_27DF24           
CODE_27DEF6:        LDA $02C1                 
CODE_27DEF9:        CMP #$34                  
CODE_27DEFB:        BNE CODE_27DF24           
CODE_27DEFD:        CPY #$01                  
CODE_27DEFF:        BEQ CODE_27DF22           
CODE_27DF01:        LDA $71,x                 
CODE_27DF03:        SEC                       
CODE_27DF04:        SBC $0543                 
CODE_27DF07:        CMP #$9E                  
CODE_27DF09:        BCC CODE_27DF22           
CODE_27DF0B:        CMP #$A4                  
CODE_27DF0D:        BCS CODE_27DF22                   
CODE_27DF0F:        LDA $0520,x               
CODE_27DF12:        BNE CODE_27DF22           
CODE_27DF14:        LDA #$10                  
CODE_27DF16:        STA $0520,x               
CODE_27DF19:        JSL CODE_278F34           
CODE_27DF1D:        LDA #$82                  
CODE_27DF1F:        STA $1F93,y               
CODE_27DF22:        CLC                       
CODE_27DF23:        RTL                       

CODE_27DF24:        SEC                       
CODE_27DF25:        RTL                       

CODE_27DF26:        PHB                       
CODE_27DF27:        PHK                       
CODE_27DF28:        PLB                       
CODE_27DF29:        STA $08                   
CODE_27DF2B:        LDA $0671,x               
CODE_27DF2E:        CMP #$18                  
CODE_27DF30:        BNE CODE_27DF40           
CODE_27DF32:        LDA #$22                  
CODE_27DF34:        STA $0C                   
CODE_27DF36:        STZ $0D                   
CODE_27DF38:        LDA #$28                  
CODE_27DF3A:        STA $0E                   
CODE_27DF3C:        STZ $0F                   
CODE_27DF3E:        BRA CODE_27DF4C           

CODE_27DF40:        LDA #$1A                  
CODE_27DF42:        STA $0C                   
CODE_27DF44:        STZ $0D                   
CODE_27DF46:        LDA #$18                  
CODE_27DF48:        STA $0E                   
CODE_27DF4A:        STZ $0F                   
CODE_27DF4C:        LDA $5F,x                 
CODE_27DF4E:        STA $0A                   
CODE_27DF50:        LDA $44,x                 
CODE_27DF52:        STA $0B                   
CODE_27DF54:        REP #$20                  
CODE_27DF56:        LDA $0A                   
CODE_27DF58:        SEC                       
CODE_27DF59:        SBC $0210                 
CODE_27DF5C:        SEC                       
CODE_27DF5D:        SBC #$0009                
CODE_27DF60:        STA $0A                   
CODE_27DF62:        CLC                       
CODE_27DF63:        ADC $0C                   
CODE_27DF65:        STA $0C                   
CODE_27DF67:        SEP #$20                  
CODE_27DF69:        JSR CODE_27D7CD           
CODE_27DF6C:        LDA $0A                   
CODE_27DF6E:        PHX                       
CODE_27DF6F:        JSR CODE_27DFB1           
CODE_27DF72:        LDA $DFE6,x               
CODE_27DF75:        STA $0803,y               
CODE_27DF78:        REP #$20                  
CODE_27DF7A:        TYA                       
CODE_27DF7B:        LSR A                     
CODE_27DF7C:        LSR A                     
CODE_27DF7D:        TAY                       
CODE_27DF7E:        SEP #$20                  
CODE_27DF80:        LDA #$02                  
CODE_27DF82:        LDX $0B                   
CODE_27DF84:        BEQ CODE_27DF88           
CODE_27DF86:        ORA #$01                  
CODE_27DF88:        STA $0A20,y               
CODE_27DF8B:        PLX                       
CODE_27DF8C:        JSR CODE_27D7CD           
CODE_27DF8F:        LDA $0C                   
CODE_27DF91:        PHX                       
CODE_27DF92:        JSR CODE_27DFB1           
CODE_27DF95:        LDA $DFE9,x               
CODE_27DF98:        STA $0803,y               
CODE_27DF9B:        REP #$20                  
CODE_27DF9D:        TYA                       
CODE_27DF9E:        LSR A                     
CODE_27DF9F:        LSR A                     
CODE_27DFA0:        TAY                       
CODE_27DFA1:        SEP #$20                  
CODE_27DFA3:        LDA #$02                  
CODE_27DFA5:        LDX $0D                   
CODE_27DFA7:        BEQ CODE_27DFAB           
CODE_27DFA9:        ORA #$01                  
CODE_27DFAB:        STA $0A20,y               
CODE_27DFAE:        PLX                       
CODE_27DFAF:        PLB                       
CODE_27DFB0:        RTL                       

CODE_27DFB1:        STA $0800,y               
CODE_27DFB4:        LDA $56,x                 
CODE_27DFB6:        XBA                       
CODE_27DFB7:        LDA $71,x                 
CODE_27DFB9:        REP #$20                  
CODE_27DFBB:        SEC                       
CODE_27DFBC:        SBC $0216                 
CODE_27DFBF:        CLC                       
CODE_27DFC0:        ADC $0E                   
CODE_27DFC2:        SEP #$20                  
CODE_27DFC4:        XBA                       
CODE_27DFC5:        AND #$FF                  
CODE_27DFC7:        BNE CODE_27DFCC           
CODE_27DFC9:        XBA                       
CODE_27DFCA:        BRA CODE_27DFCE           

CODE_27DFCC:        LDA #$F0                  
CODE_27DFCE:        STA $0801,y               
CODE_27DFD1:        LDA $08                   
CODE_27DFD3:        CMP #$0B                  
CODE_27DFD5:        BCC CODE_27DFD9           
CODE_27DFD7:        LDA #$0B                  
CODE_27DFD9:        LSR A                     
CODE_27DFDA:        LSR A                     
CODE_27DFDB:        TAX                       
CODE_27DFDC:        LDA $DFE3,x               
CODE_27DFDF:        STA $0802,y               
CODE_27DFE2:        RTS                       

DATA_27DFE3:        db $20,$E6,$E8,$60                       

DATA_27DFE7:        db $61,$21,$20,$21,$21

DATA_27DFEC:        db $CC,$CD,$FD

DATA_27DFEF:        db $23,$23,$21

CODE_27DFF2:        LDA $9C
CODE_27DFF4:        BNE CODE_27E00F
CODE_27DFF6:        LDA $06D1,x               
CODE_27DFF9:        BNE CODE_27E00F           
CODE_27DFFB:        LDA #$04                  
CODE_27DFFD:        STA $06D1,x               
CODE_27E000:        INC $06BD,x               
CODE_27E003:        LDA $06BD,x               
CODE_27E006:        CMP #$03                  
CODE_27E008:        BCC CODE_27E00F           
CODE_27E00A:        STZ $1FC8,x               
CODE_27E00D:        BRA CODE_27E05A           

CODE_27E00F:        JSR CODE_27D728           
CODE_27E012:        BNE CODE_27E05A           
CODE_27E014:        LDA $06BD,x               
CODE_27E017:        CMP #$03                  
CODE_27E019:        BCS CODE_27E05A                   
CODE_27E01B:        PHX                       
CODE_27E01C:        TAX                       
CODE_27E01D:        LDA.l DATA_27DFEC,x             
CODE_27E021:        STA $DA                   
CODE_27E023:        LDA.l DATA_27DFEF,x             
CODE_27E027:        STA $DB                   
CODE_27E029:        PLX                       
CODE_27E02A:        LDA $E2,x                 
CODE_27E02C:        XBA                       
CODE_27E02D:        LDA $05C9,x               
CODE_27E030:        REP #$30                  
CODE_27E032:        SEC                       
CODE_27E033:        SBC $0210                 
CODE_27E036:        STA $D8                   
CODE_27E038:        SEP #$20                  
CODE_27E03A:        LDY $C6,x                 
CODE_27E03C:        JSR CODE_27CE16           
CODE_27E03F:        LDA $DA                   
CODE_27E041:        STA $0802,y               
CODE_27E044:        LDA $DB                   
CODE_27E046:        STA $0803,y               
CODE_27E049:        REP #$20                  
CODE_27E04B:        TYA                       
CODE_27E04C:        LSR A                     
CODE_27E04D:        LSR A                     
CODE_27E04E:        TAY                       
CODE_27E04F:        SEP #$20                  
CODE_27E051:        LDA $D9                   
CODE_27E053:        AND #$01                  
CODE_27E055:        STA $0A20,y               
CODE_27E058:        SEP #$10                  
CODE_27E05A:        RTS                       

CODE_27E05B:        LDA $06D1,x               
CODE_27E05E:        BNE CODE_27E064           
CODE_27E060:        STZ $1FC8,x               
CODE_27E063:        RTS                       

CODE_27E064:        PHB                       
CODE_27E065:        PHK                       
CODE_27E066:        PLB                       
CODE_27E067:        LDA $06D1,x               
CODE_27E06A:        AND #$FC                  
CODE_27E06C:        LSR A                     
CODE_27E06D:        TAY                       
CODE_27E06E:        LDA $05C9,x               
CODE_27E071:        STA $0E                   
CODE_27E073:        LDA $00E2,x               
CODE_27E076:        STA $0F                   
CODE_27E078:        REP #$30                  
CODE_27E07A:        LDA $0E                   
CODE_27E07C:        CLC                       
CODE_27E07D:        ADC #$0004                
CODE_27E080:        SEC                       
CODE_27E081:        SBC $0210                 
CODE_27E084:        STA $0E                   
CODE_27E086:        SEC                       
CODE_27E087:        SBC DATA_27E143,y               
CODE_27E08A:        STA $00                   
CODE_27E08C:        LDA $0E                   
CODE_27E08E:        SEC                       
CODE_27E08F:        SBC DATA_27E14F,y               
CODE_27E092:        STA $02                   
CODE_27E094:        LDA $0E                   
CODE_27E096:        CLC                       
CODE_27E097:        ADC DATA_27E143,y               
CODE_27E09A:        STA $04                   
CODE_27E09C:        LDA $0E                   
CODE_27E09E:        CLC                       
CODE_27E09F:        ADC DATA_27E14F,y               
CODE_27E0A2:        STA $06                   
CODE_27E0A4:        TYA                       
CODE_27E0A5:        LSR A                     
CODE_27E0A6:        TAY                       
CODE_27E0A7:        SEP #$20                  
CODE_27E0A9:        LDA $05BF,x               
CODE_27E0AC:        SEC                       
CODE_27E0AD:        SBC $0216                 
CODE_27E0B0:        STA $08                   
CODE_27E0B2:        CLC                       
CODE_27E0B3:        ADC DATA_27E161,y               
CODE_27E0B6:        STA $09                   
CODE_27E0B8:        LDA $08                   
CODE_27E0BA:        CLC                       
CODE_27E0BB:        ADC DATA_27E15B,y               
CODE_27E0BE:        STA $08                   
CODE_27E0C0:        LDA DATA_27E167,y               
CODE_27E0C3:        STA $0A                   
CODE_27E0C5:        LDA DATA_27E16D,y               
CODE_27E0C8:        STA $0B                   
CODE_27E0CA:        JSR CODE_27D728           
CODE_27E0CD:        REP #$10                  
CODE_27E0CF:        LDY $C6,x                 
CODE_27E0D1:        LDA $00                   
CODE_27E0D3:        STA $0800,y               
CODE_27E0D6:        LDA $02                   
CODE_27E0D8:        STA $0804,y               
CODE_27E0DB:        LDA $04                   
CODE_27E0DD:        STA $0808,y               
CODE_27E0E0:        LDA $06                   
CODE_27E0E2:        STA $080C,y               
CODE_27E0E5:        LDA $08                   
CODE_27E0E7:        STA $0801,y               
CODE_27E0EA:        STA $080D,y               
CODE_27E0ED:        LDA $09                   
CODE_27E0EF:        STA $0805,y               
CODE_27E0F2:        STA $0809,y               
CODE_27E0F5:        LDA $0A                   
CODE_27E0F7:        STA $0802,y               
CODE_27E0FA:        STA $0806,y               
CODE_27E0FD:        STA $080A,y               
CODE_27E100:        STA $080E,y               
CODE_27E103:        LDA $0B                   
CODE_27E105:        STA $0803,y               
CODE_27E108:        STA $0807,y               
CODE_27E10B:        ORA #$40                  
CODE_27E10D:        STA $080B,y               
CODE_27E110:        STA $080F,y               
CODE_27E113:        REP #$20                  
CODE_27E115:        TYA                       
CODE_27E116:        LSR A                     
CODE_27E117:        LSR A                     
CODE_27E118:        TAY                       
CODE_27E119:        SEP #$20                  
CODE_27E11B:        LDA $01                   
CODE_27E11D:        BEQ CODE_27E121           
CODE_27E11F:        LDA #$01                  
CODE_27E121:        STA $0A20,y               
CODE_27E124:        LDA $03                   
CODE_27E126:        BEQ CODE_27E12A           
CODE_27E128:        LDA #$01                  
CODE_27E12A:        STA $0A21,y               
CODE_27E12D:        LDA $05                   
CODE_27E12F:        BEQ CODE_27E133           
CODE_27E131:        LDA #$01                  
CODE_27E133:        STA $0A22,y               
CODE_27E136:        LDA $07                   
CODE_27E138:        BEQ CODE_27E13C           
CODE_27E13A:        LDA #$01                  
CODE_27E13C:        STA $0A23,y               
CODE_27E13F:        SEP #$10                  
CODE_27E141:        PLB                       
CODE_27E142:        RTS                       

DATA_27E143:        db $0F,$00,$0E,$00,$0D,$00,$0C,$00
                    db $0B,$00,$0A,$00

DATA_27E14F:        db $12,$00,$10,$00,$0E,$00,$0C,$00
                    db $0A,$00,$08,$00

DATA_27E15B:        db $0A,$09,$09,$0A,$0B,$0C

DATA_27E161:        db $06,$05,$04,$06,$08,$0A

DATA_27E167:        db $1D,$1D,$D1,$D1,$D0,$D0

DATA_27E16D:        db $22,$22,$23,$23,$23,$23

CODE_27E173:        PHB
CODE_27E174:        LDA #$27                  
CODE_27E176:        PHA                       
CODE_27E177:        PLB                       
CODE_27E178:        PHX                       
CODE_27E179:        PHY                       
CODE_27E17A:        LDA $1A80                 
CODE_27E17D:        ASL A                     
CODE_27E17E:        CLC                       
CODE_27E17F:        ADC $1A80                 
CODE_27E182:        TAX                       
CODE_27E183:        LDY #$00                  
CODE_27E185:        LDA.w DATA_27E1DF,x               
CODE_27E188:        STA $0800,y               
CODE_27E18B:        LDA #$60                  
CODE_27E18D:        STA $0801,y               
CODE_27E190:        LDA.w DATA_27E1E8,x               
CODE_27E193:        STA $0802,y               
CODE_27E196:        LDA #$22                  
CODE_27E198:        STA $0803,y               
CODE_27E19B:        PHY                       
CODE_27E19C:        TYA                       
CODE_27E19D:        LSR A                     
CODE_27E19E:        LSR A                     
CODE_27E19F:        TAY                       
CODE_27E1A0:        LDA #$02                  
CODE_27E1A2:        STA $0A20,y               
CODE_27E1A5:        PLY                       
CODE_27E1A6:        INY                       
CODE_27E1A7:        INY                       
CODE_27E1A8:        INY                       
CODE_27E1A9:        INY                       
CODE_27E1AA:        INX                       
CODE_27E1AB:        CPY #$0C                  
CODE_27E1AD:        BCC CODE_27E185           
CODE_27E1AF:        LDX #$00                  
CODE_27E1B1:        LDA.w DATA_27E1F1,x               
CODE_27E1B4:        STA $0800,y               
CODE_27E1B7:        LDA #$60                  
CODE_27E1B9:        STA $0801,y               
CODE_27E1BC:        LDA.w DATA_27E1F4,x               
CODE_27E1BF:        STA $0802,y               
CODE_27E1C2:        LDA #$22                  
CODE_27E1C4:        STA $0803,y               
CODE_27E1C7:        PHY                       
CODE_27E1C8:        TYA                       
CODE_27E1C9:        LSR A                     
CODE_27E1CA:        LSR A                     
CODE_27E1CB:        TAY                       
CODE_27E1CC:        LDA #$02                  
CODE_27E1CE:        STA $0A20,y               
CODE_27E1D1:        PLY                       
CODE_27E1D2:        INX                       
CODE_27E1D3:        INY                       
CODE_27E1D4:        INY                       
CODE_27E1D5:        INY                       
CODE_27E1D6:        INY                       
CODE_27E1D7:        CPX #$03                  
CODE_27E1D9:        BCC CODE_27E1B1           
CODE_27E1DB:        PLY                       
CODE_27E1DC:        PLX                       
CODE_27E1DD:        PLB                       
CODE_27E1DE:        RTL                       

DATA_27E1DF:        db $58,$68,$68,$58,$68,$68,$50,$60
                    db $70

DATA_27E1E8:        db $A0,$A2,$A2,$A4,$A6,$A6,$A8,$AA
                    db $AC

DATA_27E1F1:        db $80,$90,$98

DATA_27E1F4:        db $AE,$8C,$8D

DATA_27E1F7:        db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$00,$FF,$00,$FF,$02,$FF,$00
                    db $FF,$02,$FF,$01,$FF,$00,$FF,$00
                    db $FF,$00,$FF,$00,$FF,$00,$FF,$00
                    db $FF,$00,$FF,$01,$FF,$00,$FF,$00
                    db $FF,$00,$0E,$25,$06,$FF,$01,$5B
                    db $0D,$14,$5A,$13,$14,$5B,$26,$16
                    db $5A,$29,$16,$FF,$01,$34,$0D,$14
                    db $FF,$01,$34,$0D,$04,$FF,$01,$70
                    db $0A,$17,$2A,$10,$16,$A0,$2C,$12
                    db $73,$3E,$10,$74,$40,$10,$73,$42
                    db $10,$74,$44,$10,$73,$46,$10,$74
                    db $50,$10,$73,$55,$16,$74,$5C,$16
                    db $73,$5D,$16,$74,$5E,$16,$73,$5F
                    db $16,$74,$60,$16,$41,$68,$15,$FF
                    db $01,$6C,$14,$0F,$BC,$5E,$0F,$D3
                    db $61,$00,$FF,$01,$FF,$01,$FF,$01
                    db $FF,$01,$FF,$01,$FF,$01,$D3,$00
                    db $30,$5F,$11,$14,$60,$14,$14,$6C
                    db $34,$18,$6C,$36,$18,$6C,$38,$18
                    db $FF,$01,$3C,$08,$15,$3C,$38,$11
                    db $FF,$01,$58,$0D,$04,$58,$11,$11
                    db $6C,$1B,$18,$61,$1C,$16,$6C,$1D
                    db $18,$72,$21,$17,$6C,$29,$18,$6F
                    db $2A,$06,$6D,$2B,$13,$6C,$2D,$18
                    db $6D,$3B,$13,$6D,$3C,$13,$6D,$48
                    db $14,$6D,$4B,$14,$72,$4B,$18,$70
                    db $4D,$14,$70,$4F,$14,$72,$57,$14
                    db $72,$59,$14,$6C,$59,$18,$58,$5E
                    db $08,$6F,$65,$11,$6C,$6E,$18,$6C
                    db $70,$18,$81,$79,$13,$81,$7B,$13
                    db $41,$88,$15,$FF,$01,$25,$02,$0C
                    db $FF,$01,$25,$02,$0D,$FF,$01,$25
                    db $02,$0E,$FF,$01,$25,$02,$0F,$FF
                    db $01,$25,$02,$10,$FF,$01,$25,$02
                    db $11,$FF,$01,$25,$02,$05,$FF,$01
                    db $25,$02,$04,$FF,$01,$25,$02,$07
                    db $FF,$01,$25,$02,$08,$FF,$01,$25
                    db $02,$06,$FF,$01,$25,$02,$0B,$FF
                    db $01,$25,$02,$09,$FF,$01,$25,$02
                    db $0A,$FF,$01,$25,$02,$02,$FF,$01
                    db $25,$02,$03,$FF,$01,$25,$02,$01
                    db $FF,$01,$25,$02,$12,$FF,$01,$25
                    db $02,$13,$FF,$01,$25,$02,$14,$FF
                    db $01,$25,$02,$15,$FF,$01,$25,$02
                    db $16,$FF,$01,$25,$02,$17,$FF,$01
                    db $6D,$12,$19,$83,$56,$12,$41,$68
                    db $15,$FF,$01,$6E,$0C,$19,$6E,$12
                    db $19,$6D,$19,$06,$6D,$1C,$03,$55
                    db $25,$19,$55,$27,$19,$55,$29,$19
                    db $6C,$38,$19,$6C,$3A,$19,$6D,$4C
                    db $06,$6E,$4E,$19,$6E,$51,$19,$6E
                    db $54,$19,$6D,$56,$06,$55,$5D,$0A
                    db $6C,$63,$07,$71,$64,$19,$FF,$01
                    db $41,$18,$15,$FF,$01,$71,$0C,$19
                    db $71,$10,$19,$71,$12,$19,$2B,$1C
                    db $09,$2B,$23,$18,$71,$2F,$19,$71
                    db $32,$19,$71,$35,$19,$71,$38,$19
                    db $71,$4F,$19,$71,$51,$19,$71,$53
                    db $19,$71,$55,$19,$2B,$5F,$18,$71
                    db $6C,$19,$FF,$01,$6E,$11,$16,$6C
                    db $19,$19,$6C,$18,$15,$A0,$26,$16
                    db $6C,$2E,$14,$72,$32,$19,$72,$33
                    db $19,$6E,$42,$19,$6C,$4C,$19,$72
                    db $4B,$15,$A0,$56,$17,$A0,$5E,$16
                    db $72,$54,$19,$6C,$5D,$19,$6D,$6D
                    db $15,$6D,$6A,$19,$6E,$78,$16,$A0
                    db $78,$17,$6C,$82,$13,$6D,$81,$16
                    db $6E,$8D,$13,$6E,$9E,$19,$41,$A8
                    db $15,$FF,$01,$77,$0B,$12,$77,$0F
                    db $13,$61,$0B,$15,$A0,$14,$06,$A0
                    db $1A,$17,$A0,$22,$05,$A2,$29,$06
                    db $6C,$20,$09,$77,$2D,$12,$61,$26
                    db $15,$77,$21,$16,$6C,$32,$09,$6C
                    db $34,$09,$77,$30,$16,$FF,$01,$41
                    db $38,$15,$FF,$01,$41,$38,$15,$FF
                    db $01,$7A,$18,$14,$7A,$16,$18,$7E
                    db $11,$18,$7D,$26,$16,$7A,$2D,$13
                    db $7C,$30,$18,$7C,$32,$18,$7E,$42
                    db $18,$7A,$4B,$18,$7C,$4A,$14,$7C
                    db $54,$18,$7A,$5C,$18,$7D,$56,$17
                    db $7D,$5E,$16,$7B,$69,$18,$7B,$6D
                    db $14,$7E,$78,$15,$7D,$78,$17,$7B
                    db $80,$15,$7A,$81,$12,$7E,$8C,$12
                    db $7E,$9E,$18,$41,$A8,$15,$FF,$01
                    db $A2,$0C,$16,$2B,$08,$18,$A2,$0D
                    db $09,$A6,$12,$08,$A2,$17,$09,$71
                    db $1C,$18,$71,$1E,$18,$71,$20,$18
                    db $A2,$22,$16,$71,$26,$0A,$71,$28
                    db $0A,$71,$2A,$0A,$55,$32,$09,$A2
                    db $36,$15,$55,$3C,$17,$2B,$3D,$0A
                    db $A6,$42,$14,$A0,$4A,$16,$71,$4D
                    db $0A,$71,$51,$0A,$71,$55,$0A,$A2
                    db $59,$17,$2B,$5C,$0A,$71,$64,$18
                    db $A6,$66,$07,$71,$6A,$0A,$FF,$01
                    db $6C,$0D,$19,$82,$15,$18,$6D,$27
                    db $14,$6C,$32,$18,$72,$3A,$19,$73
                    db $42,$19,$73,$4A,$19,$82,$57,$17
                    db $72,$65,$19,$72,$67,$19,$6D,$68
                    db $13,$74,$79,$19,$6C,$78,$18,$07
                    db $96,$18,$41,$98,$15,$FF,$01,$3E
                    db $08,$17,$41,$28,$15,$FF,$01,$98
                    db $0A,$13,$41,$48,$15,$FF,$01,$A0
                    db $11,$18,$A4,$15,$14,$A6,$17,$14
                    db $A0,$1E,$15,$A0,$26,$17,$A3,$29
                    db $11,$A0,$2C,$18,$A3,$2F,$11,$A0
                    db $32,$17,$A6,$3C,$13,$A0,$45,$18
                    db $A2,$47,$16,$A4,$49,$14,$39,$4C
                    db $14,$A3,$58,$15,$2A,$5C,$18,$A2
                    db $5D,$16,$2A,$6A,$16,$A6,$6C,$17
                    db $39,$6F,$19,$A7,$78,$11,$A0,$78
                    db $15,$33,$80,$19,$33,$82,$19,$33
                    db $88,$19,$A2,$8B,$16,$46,$98,$16
                    db $2A,$A0,$18,$A6,$A3,$15,$33,$AD
                    db $19,$3D,$AF,$16,$41,$C8,$15,$FF
                    db $01,$6E,$12,$07,$A1,$16,$08,$BC
                    db $20,$09,$74,$22,$04,$55,$2D,$0A
                    db $55,$33,$0A,$77,$36,$18,$BC,$3A
                    db $0A,$55,$3D,$0A,$55,$46,$06,$BC
                    db $46,$0A,$55,$4E,$04,$55,$56,$0A
                    db $55,$5A,$0A,$77,$5B,$15,$55,$69
                    db $0A,$77,$6D,$14,$6C,$6F,$0A,$6E
                    db $7A,$0A,$6E,$7E,$05,$77,$83,$18
                    db $77,$8A,$14,$FF,$01,$41,$18,$15
                    db $FF,$01,$41,$48,$15,$FF,$01,$41
                    db $48,$15,$FF,$01,$40,$0B,$18,$89
                    db $14,$19,$89,$1A,$15,$89,$27,$14
                    db $33,$30,$0C,$33,$34,$0A,$33,$3A
                    db $07,$40,$3C,$06,$89,$44,$08,$89
                    db $54,$09,$39,$63,$19,$39,$68,$19
                    db $74,$6B,$0D,$39,$6D,$19,$41,$88
                    db $15,$33,$88,$19,$FF,$01,$D6,$32
                    db $0D,$52,$33,$0F,$BA,$34,$0F,$FF
                    db $01,$41,$18,$15,$FF,$01,$A4,$16
                    db $13,$A0,$1C,$16,$A4,$20,$13,$A0
                    db $24,$12,$6E,$33,$19,$BC,$37,$16
                    db $BC,$37,$18,$BC,$3C,$14,$BC,$3C
                    db $19,$BC,$4F,$18,$BC,$50,$13,$2F
                    db $51,$12,$6D,$59,$16,$A4,$5F,$14
                    db $6E,$6A,$17,$BC,$6B,$18,$6F,$6E
                    db $14,$BC,$72,$13,$BC,$72,$16,$BC
                    db $7A,$15,$BC,$7A,$18,$6C,$7F,$19
                    db $A2,$91,$15,$41,$A8,$15,$FF,$01
                    db $29,$0F,$16,$29,$12,$11,$29,$1E
                    db $10,$29,$20,$16,$29,$31,$14,$29
                    db $33,$16,$29,$3E,$19,$6C,$41,$18
                    db $29,$51,$19,$6C,$53,$18,$29,$55
                    db $19,$29,$59,$15,$A6,$60,$17,$29
                    db $6A,$19,$A6,$6C,$16,$29,$75,$17
                    db $29,$79,$15,$29,$7D,$13,$6E,$7E
                    db $11,$41,$98,$15,$29,$98,$19,$FF
                    db $01,$41,$18,$15,$FF,$01,$D3,$08
                    db $50,$6C,$22,$15,$6C,$24,$15,$6F
                    db $2C,$11,$6C,$3A,$10,$72,$3B,$14
                    db $72,$3C,$14,$28,$46,$0C,$6D,$4E
                    db $08,$6C,$52,$0D,$58,$57,$09,$6D
                    db $5F,$09,$6C,$62,$09,$6C,$63,$09
                    db $72,$6C,$0D,$72,$6D,$0D,$58,$77
                    db $06,$41,$88,$15,$FF,$01,$6C,$11
                    db $18,$73,$15,$18,$6D,$20,$14,$6C
                    db $23,$18,$A0,$25,$15,$A2,$2B,$16
                    db $A4,$32,$16,$6D,$3F,$18,$73,$44
                    db $18,$70,$4E,$18,$A6,$52,$14,$6D
                    db $5E,$12,$70,$66,$18,$A2,$69,$16
                    db $6F,$74,$16,$6D,$7D,$18,$6D,$7F
                    db $18,$6E,$8B,$11,$41,$A8,$15,$FF
                    db $01,$72,$0E,$19,$A6,$16,$17,$72
                    db $21,$19,$6D,$24,$16,$72,$34,$18
                    db $72,$37,$18,$73,$3B,$18,$6E,$53
                    db $13,$6E,$56,$13,$6E,$59,$13,$6C
                    db $5C,$19,$A0,$70,$18,$A4,$74,$17
                    db $6D,$83,$17,$41,$A8,$15,$FF,$01
                    db $41,$38,$15,$FF,$01,$41,$28,$15
                    db $FF,$01,$41,$18,$15,$FF,$01,$72
                    db $1A,$12,$6C,$18,$19,$C0,$10,$19
                    db $C1,$13,$19,$6D,$2D,$13,$C0,$34
                    db $12,$C1,$37,$12,$41,$58,$15,$FF
                    db $01,$41,$58,$15,$FF,$01,$82,$02
                    db $18,$41,$18,$15,$FF,$01,$FF,$01
                    db $D3,$00,$50,$2D,$00,$19,$64,$10
                    db $19,$64,$1C,$19,$43,$22,$19,$6C
                    db $2F,$13,$43,$52,$19,$92,$52,$15
                    db $6D,$63,$15,$43,$6C,$19,$43,$86
                    db $19,$43,$96,$19,$92,$9E,$11,$FF
                    db $01,$41,$28,$15,$FF,$01,$70,$10
                    db $0F,$70,$13,$12,$70,$23,$0F,$70
                    db $25,$19,$A2,$31,$13,$70,$32,$0A
                    db $70,$34,$19,$70,$3B,$14,$70,$40
                    db $0F,$70,$4B,$13,$70,$4E,$16,$68
                    db $63,$0C,$70,$67,$0F,$68,$6E,$0C
                    db $A0,$72,$0F,$FF,$01,$40,$0C,$18
                    db $40,$0F,$18,$40,$1E,$18,$40,$26
                    db $18,$40,$37,$14,$40,$3B,$14,$6C
                    db $4A,$18,$40,$50,$18,$33,$50,$08
                    db $33,$51,$08,$A6,$65,$18,$FF,$01
                    db $77,$0D,$16,$6A,$17,$14,$66,$1C
                    db $14,$A1,$23,$04,$63,$24,$16,$65
                    db $28,$17,$66,$31,$16,$A3,$33,$08
                    db $77,$44,$14,$6A,$4E,$14,$65,$57
                    db $18,$77,$58,$14,$A0,$65,$09,$66
                    db $65,$16,$A4,$6C,$08,$63,$6C,$13
                    db $FF,$01,$81,$0C,$14,$81,$09,$18
                    db $BA,$0D,$14,$FF,$01,$43,$10,$18
                    db $43,$17,$18,$A3,$18,$14,$29,$18
                    db $0E,$42,$22,$0B,$29,$23,$17,$A4
                    db $2C,$18,$29,$2F,$09,$A7,$34,$0E
                    db $77,$4D,$0F,$77,$47,$15,$77,$53
                    db $11,$77,$51,$15,$77,$5E,$0F,$77
                    db $63,$0D,$77,$6B,$12,$77,$70,$14
                    db $77,$76,$0F,$77,$78,$16,$77,$7E
                    db $12,$77,$8D,$0F,$A3,$80,$10,$A2
                    db $84,$11,$A3,$88,$10,$A2,$8C,$12
                    db $29,$A0,$0F,$29,$A6,$0F,$29,$A4
                    db $0F,$A4,$A8,$10,$42,$AD,$0F,$29
                    db $BC,$09,$FF,$01,$C1,$19,$13,$72
                    db $20,$18,$C1,$2B,$13,$73,$39,$15
                    db $A4,$4A,$11,$72,$53,$17,$72,$55
                    db $10,$73,$61,$14,$72,$6B,$16,$72
                    db $6C,$17,$A4,$6E,$16,$72,$7E,$18
                    db $A4,$81,$17,$C1,$8B,$14,$74,$9D
                    db $19,$41,$A8,$15,$FF,$01,$2B,$10
                    db $15,$83,$3F,$12,$B6,$63,$12,$6B
                    db $75,$16,$83,$91,$11,$B6,$B7,$11
                    db $41,$C8,$15,$FF,$01,$6C,$13,$13
                    db $6C,$17,$15,$6C,$1A,$16,$6C,$1E
                    db $19,$6C,$33,$13,$6C,$37,$15,$6E
                    db $3C,$17,$6E,$3F,$18,$71,$51,$14
                    db $71,$57,$17,$71,$59,$18,$A6,$60
                    db $19,$83,$65,$12,$C0,$92,$18,$C1
                    db $94,$18,$6E,$B3,$17,$6E,$B7,$17
                    db $41,$C8,$15,$FF,$01,$81,$0C,$18
                    db $BA,$0D,$14,$FF,$01,$D3,$00,$51
                    db $70,$18,$09,$70,$1B,$09,$A2,$20
                    db $0C,$A2,$25,$10,$A6,$29,$12,$A2
                    db $2E,$12,$43,$58,$11,$43,$65,$0E
                    db $70,$77,$0C,$70,$79,$0D,$D3,$7C
                    db $51,$FF,$01,$70,$0B,$12,$70,$0D
                    db $12,$41,$18,$15,$FF,$01,$6C,$38
                    db $06,$A3,$3C,$08,$A3,$40,$06,$A3
                    db $46,$04,$A3,$4A,$05,$A3,$4C,$06
                    db $A3,$4E,$07,$41,$88,$15,$FF,$01
                    db $6C,$1B,$16,$6C,$1F,$0A,$6C,$1F
                    db $10,$6C,$21,$10,$6C,$28,$0C,$6C
                    db $2A,$0C,$6C,$5C,$0B,$6C,$5E,$0B
                    db $6C,$5D,$13,$6C,$69,$11,$6C,$64
                    db $16,$6C,$66,$17,$6C,$70,$18,$FF
                    db $01,$70,$12,$13,$70,$15,$10,$70
                    db $19,$10,$A4,$1F,$16,$A3,$25,$0F
                    db $A3,$2C,$0C,$70,$2B,$0F,$70,$32
                    db $12,$70,$34,$14,$A4,$37,$18,$6C
                    db $4C,$09,$6C,$50,$0B,$6C,$56,$09
                    db $6C,$65,$0B,$A4,$64,$14,$A2,$66
                    db $16,$A2,$6C,$17,$70,$6A,$18,$A2
                    db $71,$15,$70,$76,$18,$A0,$78,$17
                    db $A1,$78,$13,$FF,$01,$C0,$17,$14
                    db $C1,$19,$14,$C0,$2C,$17,$6C,$33
                    db $17,$6C,$3B,$18,$6C,$41,$17,$C1
                    db $47,$17,$A0,$6B,$16,$A0,$70,$17
                    db $41,$88,$15,$FF,$01,$70,$12,$0D
                    db $70,$16,$0D,$A0,$19,$11,$A1,$26
                    db $09,$A1,$2B,$05,$A0,$2B,$0B,$70
                    db $28,$0C,$70,$2A,$0C,$70,$27,$09
                    db $70,$2D,$05,$A0,$41,$07,$70,$50
                    db $0C,$A1,$54,$09,$70,$68,$10,$A1
                    db $6A,$0E,$70,$6F,$10,$A0,$70,$0F
                    db $A1,$72,$0C,$FF,$01,$AF,$02,$11
                    db $A4,$1A,$1A,$6F,$1B,$12,$A4,$29
                    db $19,$A4,$2C,$19,$6C,$37,$19,$5D
                    db $51,$12,$6E,$7E,$16,$6E,$9E,$16
                    db $41,$D8,$15,$FF,$01,$70,$12,$16
                    db $70,$17,$18,$68,$15,$13,$70,$22
                    db $15,$80,$25,$14,$68,$33,$10,$69
                    db $48,$10,$70,$4B,$16,$6F,$50,$13
                    db $6F,$65,$13,$69,$61,$11,$70,$71
                    db $18,$70,$71,$18,$69,$7E,$14,$69
                    db $86,$17,$70,$88,$15,$FF,$01,$D4
                    db $00,$1E,$72,$0F,$15,$A4,$13,$19
                    db $A6,$26,$19,$77,$38,$17,$26,$33
                    db $14,$80,$39,$13,$77,$48,$18,$77
                    db $55,$17,$77,$5F,$18,$77,$67,$17
                    db $80,$60,$13,$80,$69,$12,$FF,$01
                    db $72,$2E,$13,$72,$30,$15,$72,$31
                    db $16,$72,$42,$16,$72,$43,$17,$6E
                    db $60,$16,$77,$84,$18,$40,$95,$14
                    db $A1,$99,$12,$A1,$9D,$12,$A5,$A8
                    db $16,$A3,$AE,$16,$40,$AA,$19,$A6
                    db $B4,$17,$40,$C4,$15,$40,$CF,$14
                    db $40,$D2,$19,$A3,$D7,$15,$A3,$E0
                    db $15,$40,$E0,$18,$40,$EA,$18,$FF
                    db $01,$AF,$02,$11,$74,$2E,$05,$A6
                    db $3A,$0A,$A6,$40,$0A,$A6,$46,$0A
                    db $A6,$50,$0B,$A6,$56,$0F,$A6,$5C
                    db $13,$A6,$8D,$13,$BB,$92,$01,$A6
                    db $93,$0F,$A6,$99,$0B,$80,$C1,$19
                    db $41,$E8,$15,$FF,$01,$70,$0E,$0F
                    db $70,$11,$12,$70,$13,$14,$70,$15
                    db $16,$A3,$27,$10,$70,$2C,$12,$A0
                    db $2D,$16,$6C,$48,$09,$6C,$4A,$0A
                    db $6C,$54,$09,$6C,$6C,$0A,$A6,$75
                    db $15,$A3,$7D,$14,$FF,$01,$D3,$00
                    db $51,$D4,$01,$2C,$2D,$06,$19,$6C
                    db $12,$15,$6C,$38,$16,$3E,$54,$18
                    db $FF,$01,$3F,$08,$0A,$3F,$14,$0F
                    db $2F,$1D,$0A,$3F,$23,$0F,$FF,$01
                    db $FF,$01,$94,$18,$05,$FF,$01,$98
                    db $16,$14,$94,$48,$09,$99,$58,$09
                    db $FF,$01,$94,$27,$14,$99,$37,$14
                    db $FF,$01,$94,$37,$10,$98,$77,$14
                    db $FF,$01,$94,$35,$14,$98,$57,$14
                    db $9A,$65,$06,$FF,$01,$9A,$44,$09
                    db $98,$67,$14,$FF,$01,$98,$18,$05
                    db $94,$48,$05,$FF,$01,$72,$0F,$17
                    db $72,$11,$18,$A2,$14,$17,$A6,$22
                    db $17,$72,$34,$15,$72,$36,$16,$72
                    db $38,$17,$77,$41,$19,$6C,$52,$14
                    db $6C,$54,$15,$6C,$56,$16,$74,$65
                    db $18,$A5,$66,$11,$73,$6B,$18,$83
                    db $92,$12,$41,$C8,$15,$FF,$01,$46
                    db $10,$15,$6C,$1A,$17,$33,$21,$17
                    db $33,$23,$17,$33,$27,$16,$39,$2A
                    db $15,$39,$2F,$16,$29,$37,$15,$29
                    db $3D,$14,$29,$43,$13,$40,$4A,$18
                    db $40,$54,$18,$40,$5D,$18,$33,$65
                    db $12,$33,$68,$12,$33,$6B,$12,$40
                    db $74,$18,$40,$7A,$19,$40,$7F,$19
                    db $41,$A8,$15,$FF,$01,$D3,$00,$60
                    db $3B,$00,$19,$3C,$0B,$11,$3C,$0F
                    db $17,$44,$1B,$15,$6F,$2F,$13,$64
                    db $37,$19,$64,$3C,$19,$64,$4A,$19
                    db $64,$4E,$19,$64,$5C,$19,$64,$5F
                    db $19,$44,$52,$15,$6F,$6B,$10,$64
                    db $6A,$19,$64,$6F,$19,$A4,$7B,$13
                    db $FF,$01,$3C,$0B,$08,$64,$12,$1A
                    db $41,$28,$15,$FF,$01,$D3,$00,$00
                    db $93,$1D,$14,$6D,$29,$12,$6D,$3B
                    db $12,$6D,$3C,$18,$6F,$44,$14,$6D
                    db $54,$14,$6E,$6E,$14,$6F,$76,$12
                    db $93,$7A,$13,$D3,$00,$00,$FF,$01
                    db $80,$10,$16,$41,$28,$15,$FF,$01
                    db $27,$12,$18,$6D,$13,$13,$6D,$2B
                    db $17,$6D,$35,$18,$27,$5A,$19,$27
                    db $6A,$18,$6F,$6D,$15,$6F,$71,$13
                    db $41,$88,$15,$FF,$01,$2F,$0E,$10
                    db $8B,$15,$15,$8C,$1C,$11,$8B,$2F
                    db $15,$8C,$34,$11,$60,$48,$17,$8C
                    db $4B,$11,$60,$57,$13,$2F,$57,$16
                    db $8C,$61,$15,$8B,$77,$18,$FF,$01
                    db $4B,$1D,$24,$FF,$01,$41,$58,$15
                    db $FF,$01,$6D,$12,$10,$6D,$1C,$15
                    db $6F,$29,$13,$6D,$38,$18,$73,$43
                    db $12,$73,$44,$12,$6D,$4B,$16,$27
                    db $5B,$15,$27,$62,$13,$72,$6F,$10
                    db $72,$71,$10,$6D,$79,$10,$6D,$79
                    db $18,$74,$8B,$14,$74,$8D,$14,$41
                    db $A8,$15,$FF,$01,$D4,$00,$1C,$6E
                    db $12,$15,$6E,$17,$15,$74,$14,$17
                    db $6E,$2D,$16,$A7,$30,$11,$A6,$37
                    db $17,$74,$4E,$17,$58,$52,$13,$A2
                    db $54,$17,$A7,$69,$10,$6E,$70,$15
                    db $74,$78,$17,$41,$98,$15,$FF,$01
                    db $6D,$1D,$15,$6F,$29,$16,$6D,$37
                    db $13,$6D,$38,$18,$FF,$01,$6D,$1D
                    db $16,$6F,$29,$17,$6D,$37,$14,$6D
                    db $38,$19,$FF,$01,$D3,$00,$02,$2C
                    db $0F,$18,$2C,$14,$15,$2C,$1C,$13
                    db $2C,$2A,$11,$24,$2C,$14,$2C,$3A
                    db $19,$6D,$30,$16,$2C,$49,$15,$2C
                    db $4E,$0C,$2C,$4D,$12,$24,$50,$10
                    db $2C,$53,$0D,$6D,$5C,$07,$2C,$67
                    db $0A,$2C,$69,$07,$2C,$79,$11,$2C
                    db $78,$15,$2C,$88,$16,$FF,$01,$3C
                    db $09,$0E,$6D,$1E,$06,$3C,$11,$08
                    db $3C,$14,$10,$3C,$27,$06,$3C,$27
                    db $13,$27,$3E,$08,$3C,$31,$03,$28
                    db $4A,$11,$6D,$52,$0E,$3C,$57,$0A
                    db $3C,$56,$18,$3C,$5F,$14,$27,$7B
                    db $11,$3C,$78,$09,$3C,$74,$18,$41
                    db $88,$15,$FF,$01,$46,$14,$16,$2A
                    db $24,$18,$A2,$2A,$17,$A4,$3A,$16
                    db $2A,$46,$18,$2A,$4A,$18,$2A,$5C
                    db $18,$73,$63,$19,$2A,$65,$18,$46
                    db $6C,$16,$41,$88,$15,$FF,$01,$D3
                    db $00,$53,$64,$11,$19,$64,$19,$19
                    db $64,$23,$19,$58,$40,$13,$6F,$4B
                    db $12,$59,$57,$10,$44,$5D,$15,$58
                    db $6B,$11,$64,$6B,$19,$43,$76,$19
                    db $FF,$01,$41,$28,$15,$FF,$01,$6D
                    db $13,$12,$6D,$1A,$18,$3C,$21,$13
                    db $6F,$30,$11,$6C,$36,$18,$44,$4D
                    db $18,$6F,$5C,$0D,$37,$74,$14,$44
                    db $78,$12,$6F,$82,$15,$41,$98,$15
                    db $6C,$98,$18,$FF,$01,$D3,$00,$00
                    db $D4,$01,$2C,$36,$17,$14,$36,$23
                    db $16,$36,$25,$13,$36,$27,$19,$36
                    db $2F,$15,$6D,$43,$15,$36,$44,$18
                    db $36,$4B,$14,$36,$56,$16,$36,$58
                    db $15,$36,$61,$13,$36,$6D,$18,$36
                    db $6F,$15,$36,$70,$1A,$6F,$75,$13
                    db $6D,$7C,$16,$FF,$01,$92,$12,$16
                    db $92,$19,$18,$72,$1E,$12,$72,$23
                    db $12,$72,$24,$12,$44,$2E,$13,$37
                    db $3F,$19,$3C,$46,$18,$3C,$4D,$16
                    db $91,$62,$15,$91,$6B,$16,$58,$77
                    db $10,$91,$75,$16,$91,$7E,$15,$91
                    db $87,$15,$91,$90,$16,$41,$A8,$15
                    db $FF,$01,$D3,$00,$09,$77,$12,$10
                    db $66,$18,$16,$77,$1D,$17,$61,$1F
                    db $11,$77,$2D,$15,$D2,$34,$11,$61
                    db $3B,$11,$D2,$3C,$0C,$6D,$44,$09
                    db $6F,$51,$03,$6D,$56,$07,$6C,$58
                    db $07,$6D,$61,$09,$66,$6C,$11,$66
                    db $72,$11,$77,$77,$15,$FF,$01,$82
                    db $03,$18,$82,$0E,$18,$41,$18,$15
                    db $FF,$01,$29,$2B,$19,$41,$38,$15
                    db $FF,$01,$6D,$0B,$13,$6D,$12,$14
                    db $6D,$24,$14,$6D,$26,$14,$40,$33
                    db $19,$40,$3C,$18,$73,$45,$19,$6F
                    db $52,$17,$40,$5E,$17,$40,$65,$17
                    db $40,$6B,$17,$40,$74,$17,$92,$81
                    db $15,$6D,$84,$15,$41,$A8,$15,$FF
                    db $01,$D3,$00,$0A,$D4,$01,$4E,$58
                    db $26,$0C,$58,$6F,$02,$FF,$01,$6E
                    db $06,$17,$41,$28,$15,$FF,$01,$6D
                    db $26,$0D,$41,$58,$15,$FF,$01,$A0
                    db $0A,$16,$A0,$12,$17,$A0,$22,$18
                    db $A0,$34,$18,$A0,$48,$18,$A0,$4C
                    db $18,$A0,$5C,$18,$A0,$6E,$18,$A0
                    db $96,$18,$A0,$B8,$18,$FF,$01,$D3
                    db $00,$54,$77,$11,$16,$77,$17,$14
                    db $66,$1A,$0E,$77,$1C,$17,$63,$22
                    db $15,$6A,$29,$10,$77,$2A,$14,$77
                    db $32,$16,$66,$41,$0E,$66,$43,$0F
                    db $77,$48,$16,$77,$4C,$14,$77,$50
                    db $17,$D2,$57,$15,$77,$60,$16,$66
                    db $65,$0E,$66,$69,$0E,$D2,$72,$15
                    db $6A,$78,$12,$FF,$01,$6F,$09,$07
                    db $6C,$02,$10,$6C,$04,$10,$A2,$0E
                    db $27,$57,$07,$2C,$56,$0E,$2F,$56
                    db $0A,$33,$6D,$01,$36,$6F,$04,$43
                    db $6D,$0C,$48,$6D,$07,$57,$A2,$08
                    db $5E,$57,$02,$60,$56,$08,$60,$6D
                    db $03,$6D,$FF,$01,$D3,$00,$0F,$B5
                    db $0F,$0F,$67,$14,$18,$63,$2E,$13
                    db $6A,$36,$13,$BB,$3F,$0F,$63,$56
                    db $0D,$6A,$63,$0C,$6A,$69,$10,$B5
                    db $6F,$0F,$67,$7E,$18,$63,$8A,$13
                    db $67,$97,$15,$FF,$01,$77,$0D,$12
                    db $63,$16,$15,$65,$1E,$17,$62,$24
                    db $11,$77,$2F,$14,$77,$31,$0C,$66
                    db $36,$0D,$65,$48,$18,$77,$49,$0D
                    db $77,$5D,$0D,$66,$5E,$12,$61,$6C
                    db $10,$63,$75,$15,$77,$79,$0F,$FF
                    db $01,$56,$08,$0D,$A2,$09,$2E,$A2
                    db $09,$37,$56,$06,$2F,$FF,$01,$65
                    db $14,$09,$62,$1D,$06,$65,$24,$09
                    db $62,$30,$11,$66,$33,$0C,$67,$3A
                    db $18,$67,$4E,$18,$66,$4E,$0C,$61
                    db $67,$0A,$67,$70,$18,$62,$7B,$05
                    db $65,$7D,$12,$FF,$01,$6C,$0F,$10
                    db $6C,$07,$10,$6C,$0E,$20,$FF,$01
                    db $57,$0B,$0D,$56,$05,$0F,$A0,$04
                    db $42,$6D,$05,$52,$56,$0B,$5B,$A0
                    db $04,$61,$6C,$0D,$67,$6C,$0F,$67
                    db $FF,$01,$83,$2A,$12,$6D,$55,$18
                    db $6D,$60,$18,$6F,$69,$14,$6F,$75
                    db $10,$FF,$01,$83,$0F,$12,$41,$18
                    db $15,$FF,$01,$D3,$00,$12,$D6,$2B
                    db $07,$52,$2C,$16,$BA,$2D,$16,$FF
                    db $01,$7F,$0C,$16,$7C,$10,$17,$7B
                    db $18,$15,$A6,$26,$07,$7E,$30,$17
                    db $7C,$42,$0F,$7E,$46,$11,$7B,$58
                    db $13,$7B,$5F,$15,$7B,$64,$13,$A6
                    db $72,$15,$7A,$7A,$17,$FF,$01,$D3
                    db $00,$55,$BB,$0A,$00,$6C,$1B,$18
                    db $6D,$20,$10,$B7,$21,$00,$B7,$3A
                    db $00,$BB,$50,$00,$58,$5E,$14,$58
                    db $6D,$11,$58,$79,$16,$FF,$01,$6C
                    db $0B,$18,$6B,$22,$16,$6B,$2E,$13
                    db $6B,$30,$13,$6B,$32,$13,$A4,$36
                    db $18,$6B,$3D,$13,$6B,$41,$13,$83
                    db $4F,$12,$6B,$55,$13,$BC,$60,$18
                    db $6B,$64,$18,$BC,$66,$17,$6B,$6A
                    db $18,$41,$88,$15,$FF,$01,$86,$11
                    db $17,$86,$25,$17,$FF,$01,$D3,$00
                    db $52,$D4,$01,$18,$7B,$10,$14,$3B
                    db $12,$19,$7B,$16,$15,$7F,$1B,$16
                    db $A6,$2E,$16,$A6,$3C,$14,$BB,$48
                    db $19,$7F,$50,$14,$B4,$5C,$19,$7F
                    db $63,$16,$B4,$65,$19,$BB,$7C,$19
                    db $FF,$01,$D3,$00,$07,$9F,$16,$16
                    db $9F,$18,$14,$9F,$1B,$13,$9F,$1D
                    db $16,$9F,$20,$17,$9F,$23,$18,$9F
                    db $26,$16,$9F,$29,$18,$9F,$2C,$17
                    db $9F,$2E,$16,$9F,$30,$15,$9F,$33
                    db $15,$9F,$36,$16,$6F,$37,$14,$9F
                    db $39,$18,$9F,$3C,$18,$9F,$3F,$18
                    db $58,$5D,$17,$FF,$01,$D3,$00,$20
                    db $6F,$0A,$10,$28,$10,$11,$28,$14
                    db $0D,$38,$18,$08,$28,$1C,$06,$28
                    db $2C,$11,$28,$33,$0C,$28,$37,$0A
                    db $27,$4C,$13,$28,$4E,$0F,$58,$56
                    db $14,$27,$58,$07,$38,$5D,$05,$28
                    db $74,$11,$28,$7A,$0A,$58,$7E,$14
                    db $27,$90,$12,$37,$95,$0E,$38,$96
                    db $0B,$FF,$01,$65,$06,$17,$83,$0F
                    db $03,$B6,$16,$03,$B6,$27,$0B,$83
                    db $30,$0B,$65,$44,$17,$FF,$01,$D3
                    db $00,$10,$FF,$01,$D3,$00,$10,$FF
                    db $01,$25,$00,$80,$FF,$01,$6D,$24
                    db $17,$25,$20,$80,$FF,$01,$6B,$10
                    db $15,$6B,$18,$14,$FF,$01,$7A,$10
                    db $13,$7E,$15,$0F,$7E,$1E,$17,$7F
                    db $22,$15,$BC,$2C,$17,$BD,$33,$16
                    db $BC,$3A,$15,$BD,$42,$17,$7F,$47
                    db $18,$BC,$55,$17,$BC,$56,$16,$BC
                    db $5D,$18,$BD,$5C,$13,$A2,$51,$16
                    db $7F,$60,$15,$BD,$66,$14,$BD,$6A
                    db $17,$7F,$73,$15,$BC,$79,$14,$FF
                    db $01,$D3,$00,$12,$FF,$01,$D3,$00
                    db $10,$FF,$01,$63,$0F,$13,$63,$17
                    db $17,$FF,$01,$91,$06,$12,$91,$12
                    db $15,$91,$1C,$17,$90,$28,$13,$92
                    db $2F,$15,$91,$2F,$19,$90,$37,$17
                    db $91,$44,$17,$91,$45,$05,$90,$5D
                    db $13,$6F,$61,$11,$93,$65,$15,$90
                    db $6C,$17,$93,$73,$19,$6E,$7C,$16
                    db $FF,$01,$A2,$0C,$13,$A6,$15,$14
                    db $A5,$1C,$10,$A1,$20,$15,$A6,$25
                    db $15,$6F,$34,$11,$FF,$01,$A4,$0A
                    db $14,$A4,$12,$14,$A0,$1E,$15,$A5
                    db $2C,$12,$A2,$31,$15,$A4,$33,$13
                    db $A4,$3A,$14,$FF,$01,$9E,$0E,$0D
                    db $9E,$12,$0F,$9E,$19,$10,$9E,$17
                    db $0D,$9E,$1E,$11,$9E,$23,$10,$9E
                    db $2B,$0F,$9E,$25,$0B,$9E,$33,$0F
                    db $FF,$01,$87,$0D,$14,$81,$1B,$18
                    db $81,$1D,$14,$82,$2D,$13,$86,$37
                    db $13,$FF,$01,$BB,$04,$19,$B4,$17
                    db $19,$B4,$5C,$19,$BB,$70,$19,$FF
                    db $01,$D6,$0C,$03,$52,$0D,$15,$BA
                    db $0E,$15,$FF,$01,$52,$0B,$13,$BA
                    db $0C,$13,$FF,$01,$52,$0B,$13,$BA
                    db $0C,$13,$FF,$01,$81,$0A,$17,$BA
                    db $0D,$14,$FF,$01,$D3,$00,$12,$FF
                    db $00,$82,$69,$18,$41,$78,$15,$FF
                    db $01,$41,$18,$15,$FF,$00,$D4,$00
                    db $2E,$39,$0E,$0A,$33,$1D,$08,$33
                    db $23,$06,$A6,$24,$05,$66,$2E,$13
                    db $39,$36,$02,$A6,$3C,$07,$6E,$49
                    db $08,$39,$55,$18,$39,$58,$18,$A6
                    db $5A,$03,$A6,$60,$09,$A6,$64,$04
                    db $A1,$66,$11,$A6,$6A,$08,$A2,$6E
                    db $07,$39,$71,$04,$A6,$72,$04,$A6
                    db $78,$07,$FF,$01,$81,$0B,$16,$81
                    db $07,$18,$BA,$0D,$14,$FF,$01,$81
                    db $0B,$16,$BA,$0D,$14,$FF,$00,$41
                    db $48,$15,$FF,$00,$6E,$0A,$14,$72
                    db $11,$05,$72,$1B,$05,$73,$1F,$09
                    db $72,$25,$05,$72,$29,$11,$72,$2D
                    db $11,$73,$3A,$16,$73,$3D,$16,$6E
                    db $55,$11,$72,$61,$05,$72,$6B,$05
                    db $72,$75,$05,$72,$7F,$05,$41,$B8
                    db $15,$FF,$00,$6B,$12,$17,$6B,$19
                    db $15,$6B,$1F,$16,$6B,$24,$18,$6B
                    db $29,$17,$6B,$2E,$16,$6D,$34,$19
                    db $6B,$40,$18,$59,$47,$19,$72,$56
                    db $11,$59,$5D,$19,$72,$64,$11,$59
                    db $83,$14,$A0,$9E,$17,$6B,$A1,$18
                    db $A0,$A4,$18,$6B,$B8,$19,$41,$B8
                    db $15,$FF,$00,$89,$09,$19,$89,$19
                    db $19,$6D,$22,$17,$89,$34,$19,$72
                    db $34,$13,$72,$35,$19,$72,$43,$11
                    db $72,$43,$17,$6D,$52,$11,$6D,$52
                    db $13,$6D,$64,$13,$6D,$69,$15,$6D
                    db $6F,$17,$41,$98,$15,$89,$9A,$19
                    db $FF,$00,$59,$0F,$13,$6D,$12,$17
                    db $59,$29,$13,$59,$29,$19,$59,$47
                    db $12,$6C,$42,$17,$6C,$48,$17,$6B
                    db $63,$13,$6C,$62,$13,$6C,$6F,$14
                    db $6B,$6C,$13,$6B,$6C,$18,$6B,$7D
                    db $14,$6B,$80,$17,$6C,$8B,$13,$6C
                    db $8D,$13,$FF,$00,$3F,$11,$19,$3F
                    db $1A,$19,$3F,$1C,$19,$8A,$1F,$11
                    db $3F,$28,$19,$3F,$2E,$16,$8A,$3D
                    db $11,$2F,$42,$12,$3F,$4C,$16,$8A
                    db $60,$01,$2F,$6D,$01,$8A,$76,$01
                    db $8A,$7A,$02,$8A,$7E,$03,$8A,$86
                    db $03,$4B,$AD,$18,$FF,$00,$D3,$04
                    db $31,$2F,$0C,$11,$2F,$1E,$11,$FF
                    db $00,$73,$11,$17,$6D,$14,$16,$77
                    db $16,$0A,$6D,$1A,$16,$6D,$23,$17
                    db $82,$30,$18,$6E,$3A,$19,$6D,$44
                    db $17,$82,$4E,$15,$6F,$55,$04,$6F
                    db $58,$04,$A4,$5E,$15,$82,$6B,$15
                    db $82,$95,$18,$41,$98,$15,$FF,$00
                    db $81,$18,$09,$6B,$18,$11,$6B,$18
                    db $15,$6B,$25,$18,$6B,$29,$18,$6C
                    db $2D,$08,$6C,$31,$0A,$FF,$00,$41
                    db $18,$15,$FF,$00,$41,$18,$15,$FF
                    db $00,$D5,$0A,$16,$FF,$00,$4C,$4C
                    db $27,$FF,$00,$9E,$06,$17,$9E,$0B
                    db $15,$9E,$0D,$11,$53,$12,$0F,$53
                    db $18,$0F,$9E,$1E,$12,$9E,$24,$16
                    db $9E,$2C,$15,$9E,$2E,$11,$3F,$28
                    db $17,$9E,$32,$11,$9E,$36,$12,$53
                    db $3A,$0F,$2F,$47,$17,$9E,$4B,$14
                    db $9E,$4E,$17,$9E,$51,$14,$53,$56
                    db $0F,$53,$5E,$0F,$9E,$63,$11,$2F
                    db $6F,$15,$9E,$6A,$10,$9E,$71,$12
                    db $9E,$78,$13,$53,$79,$0F,$3F,$7E
                    db $17,$FF,$00,$8A,$09,$04,$5B,$14
                    db $15,$5A,$1C,$15,$5B,$23,$15,$8A
                    db $24,$04,$5A,$28,$15,$4B,$4D,$17
                    db $FF,$00,$8A,$3E,$12,$5A,$45,$15
                    db $8A,$4B,$12,$FF,$00,$9E,$12,$12
                    db $9E,$18,$12,$9E,$1F,$12,$9E,$27
                    db $11,$5B,$38,$15,$5A,$47,$16,$9E
                    db $51,$11,$9E,$53,$14,$9E,$5E,$11
                    db $5A,$5B,$17,$3F,$6B,$18,$4B,$9D
                    db $17,$FF,$00,$D3,$01,$30,$D3,$1C
                    db $30,$D6,$44,$0C,$BA,$45,$11,$52
                    db $4A,$18,$FF,$00,$32,$2A,$17,$32
                    db $2D,$13,$31,$2D,$15,$31,$30,$11
                    db $32,$3A,$15,$31,$3D,$13,$32,$42
                    db $18,$32,$43,$13,$31,$45,$16,$FF
                    db $00,$5A,$11,$14,$77,$17,$13,$77
                    db $1F,$17,$5A,$25,$14,$77,$29,$13
                    db $4C,$5C,$28,$FF,$00,$5A,$10,$14
                    db $5B,$19,$15,$3F,$14,$18,$8A,$2B
                    db $11,$2F,$3F,$14,$3F,$36,$18,$8A
                    db $48,$11,$2F,$4F,$14,$3F,$5C,$18
                    db $3F,$55,$18,$8A,$6B,$11,$3F,$68
                    db $18,$3F,$72,$18,$3F,$74,$18,$3F
                    db $7D,$18,$4C,$AD,$17,$FF,$00,$77
                    db $21,$17,$77,$3A,$17,$77,$4C,$17
                    db $FF,$00,$9E,$0D,$13,$8A,$16,$12
                    db $5B,$11,$14,$5A,$23,$14,$5B,$2A
                    db $0F,$8A,$32,$0D,$5A,$3B,$0F,$5A
                    db $3B,$14,$2F,$49,$11,$8A,$4D,$0F
                    db $5B,$4C,$15,$8A,$5B,$0F,$5B,$5C
                    db $17,$8A,$70,$0F,$FF,$00,$4B,$3C
                    db $17,$FF,$00,$98,$06,$14,$98,$17
                    db $11,$98,$2A,$0A,$98,$37,$14,$98
                    db $47,$14,$98,$56,$11,$98,$6A,$14
                    db $98,$73,$0A,$FF,$00,$A2,$0C,$14
                    db $A2,$13,$17,$2F,$14,$10,$5B,$18
                    db $15,$A2,$1D,$15,$A6,$25,$16,$A2
                    db $2A,$13,$A2,$31,$18,$8A,$35,$0F
                    db $A2,$39,$14,$2F,$46,$16,$A2,$48
                    db $18,$A2,$4C,$18,$A0,$58,$15,$A3
                    db $58,$11,$A6,$60,$14,$A2,$66,$16
                    db $8A,$72,$0F,$2F,$7F,$10,$2F,$83
                    db $14,$A2,$87,$19,$FF,$00,$5A,$10
                    db $15,$3F,$11,$18,$3F,$13,$18,$5A
                    db $19,$15,$8A,$1A,$0F,$4B,$3C,$27
                    db $FF,$00,$60,$13,$15,$51,$1F,$15
                    db $2F,$26,$12,$2F,$2D,$12,$31,$38
                    db $17,$31,$3E,$15,$32,$3E,$17,$2F
                    db $44,$16,$31,$4D,$15,$5A,$54,$15
                    db $8A,$5A,$10,$5B,$64,$14,$5F,$7C
                    db $16,$31,$7A,$15,$31,$81,$15,$4B
                    db $AC,$37,$FF,$00,$D3,$08,$40,$2F
                    db $04,$14,$2F,$0C,$14,$2F,$0D,$17
                    db $FF,$00,$9E,$0C,$15,$3A,$09,$16
                    db $9E,$10,$13,$9E,$15,$0F,$9E,$1A
                    db $09,$9E,$1D,$06,$30,$46,$02,$5B
                    db $48,$08,$5B,$48,$12,$5A,$41,$0D
                    db $4C,$7C,$17,$FF,$00,$51,$08,$16
                    db $5B,$17,$14,$5B,$1E,$15,$5F,$25
                    db $0A,$5B,$30,$12,$FF,$00,$08,$0C
                    db $0B,$4C,$6C,$17,$FF,$00,$8A,$0C
                    db $04,$5B,$14,$15,$5A,$1C,$15,$5B
                    db $23,$15,$8A,$24,$04,$5A,$28,$15
                    db $FF,$00,$8A,$0A,$11,$5B,$10,$14
                    db $FF,$00,$3F,$2A,$16,$3F,$39,$16
                    db $3F,$49,$16,$3F,$54,$19,$3F,$5B
                    db $19,$3F,$62,$12,$3F,$63,$12,$3F
                    db $6C,$15,$5B,$6E,$14,$4B,$8D,$27
                    db $FF,$00,$30,$10,$10,$30,$18,$10
                    db $30,$27,$14,$8B,$22,$14,$8B,$30
                    db $15,$30,$32,$10,$30,$3A,$11,$8C
                    db $41,$10,$30,$4C,$14,$8A,$52,$13
                    db $30,$53,$14,$8C,$5C,$15,$4B,$8C
                    db $17,$FF,$00,$5A,$11,$16,$5F,$1C
                    db $16,$60,$28,$16,$3F,$31,$18,$5A
                    db $35,$17,$8F,$4C,$10,$8B,$50,$18
                    db $8A,$52,$10,$8F,$5C,$10,$2F,$83
                    db $17,$3F,$87,$13,$8A,$9A,$10,$5F
                    db $A0,$15,$3F,$A8,$13,$08,$AA,$13
                    db $5B,$B4,$17,$3F,$B9,$14,$4B,$EC
                    db $38,$FF,$00,$9E,$14,$13,$9E,$1E
                    db $11,$8A,$2E,$10,$9E,$32,$12,$9E
                    db $38,$13,$08,$3B,$15,$9E,$3C,$12
                    db $9E,$49,$13,$9E,$4E,$12,$8A,$52
                    db $10,$9E,$57,$13,$9E,$5C,$10,$9E
                    db $5E,$13,$9E,$69,$12,$08,$74,$16
                    db $5E,$A2,$14,$08,$AA,$13,$2F,$B2
                    db $12,$60,$B7,$16,$08,$C4,$13,$8B
                    db $CD,$18,$08,$CE,$13,$FF,$00,$D0
                    db $18,$14,$D0,$1D,$14,$D0,$22,$14
                    db $2E,$31,$10,$30,$4E,$15,$5A,$55
                    db $13,$5A,$58,$0D,$5A,$5B,$07,$9E
                    db $6A,$09,$9E,$6E,$09,$9E,$74,$09
                    db $9E,$7A,$09,$51,$89,$12,$8B,$9A
                    db $0F,$9E,$A1,$13,$5A,$A8,$18,$9E
                    db $AA,$13,$9E,$AF,$13,$18,$CC,$0B
                    db $18,$EC,$0B,$FF,$00,$3F,$04,$18
                    db $3F,$0A,$18,$8C,$16,$10,$D0,$40
                    db $15,$75,$62,$16,$75,$6C,$16,$75
                    db $73,$17,$75,$7E,$15,$D0,$A3,$16
                    db $75,$D1,$17,$75,$D6,$16,$75,$D9
                    db $16,$75,$E1,$14,$75,$E5,$17,$FF
                    db $00,$B8,$03,$03,$AE,$0E,$09,$BE
                    db $09,$09,$BE,$0D,$0C,$BE,$15,$0C
                    db $BE,$1D,$08,$AB,$16,$02,$AC,$21
                    db $0A,$BF,$29,$0A,$BE,$26,$07,$BE
                    db $29,$07,$AA,$28,$0D,$AB,$2E,$03
                    db $BE,$34,$0C,$BE,$38,$06,$BE,$3C
                    db $09,$AE,$4F,$0A,$BE,$43,$0D,$BE
                    db $46,$0D,$AB,$4C,$04,$AE,$5E,$08
                    db $BE,$5A,$0F,$AB,$58,$03,$AE,$64
                    db $08,$AE,$69,$08,$BE,$60,$0C,$AA
                    db $64,$0F,$AE,$72,$08,$AE,$77,$08
                    db $AB,$7B,$03,$BF,$80,$06,$AB,$86
                    db $04,$AB,$96,$02,$FF,$00,$09,$16
                    db $14,$FF,$00,$0E,$0D,$08,$FF,$00
                    db $D3,$00,$03,$C4,$17,$0F,$AC,$18
                    db $0D,$C8,$24,$15,$C8,$27,$15,$BC
                    db $2D,$0C,$CA,$38,$07,$CB,$3C,$08
                    db $C8,$44,$0F,$BF,$49,$0A,$CA,$4E
                    db $0D,$CA,$5D,$0A,$C9,$5F,$10,$BC
                    db $5A,$0E,$CA,$61,$0A,$C9,$62,$10
                    db $CB,$66,$0A,$C8,$65,$10,$CB,$6A
                    db $0A,$C8,$68,$10,$BC,$70,$0C,$FF
                    db $00,$D3,$00,$0B,$C4,$13,$0D,$AA
                    db $16,$13,$C4,$18,$0D,$BC,$1E,$0C
                    db $C4,$24,$10,$C6,$28,$09,$AA,$29
                    db $14,$BC,$2C,$0D,$C6,$2D,$09,$BF
                    db $38,$0A,$AA,$3D,$14,$C5,$47,$12
                    db $BC,$4D,$10,$C5,$4F,$12,$FF,$00
                    db $D3,$00,$04,$BC,$15,$0D,$BC,$18
                    db $0B,$C9,$21,$0A,$BC,$29,$0B,$BC
                    db $2F,$0D,$BC,$33,$0A,$BC,$36,$0F
                    db $BC,$42,$11,$BC,$42,$13,$BC,$42
                    db $15,$BC,$53,$10,$BC,$53,$12,$BE
                    db $63,$0F,$BE,$65,$0F,$BE,$67,$0F
                    db $BC,$6E,$0C,$BC,$71,$0B,$FF,$00
                    db $D3,$00,$01,$BE,$19,$11,$BE,$1B
                    db $11,$BE,$1D,$11,$BC,$1F,$0E,$C8
                    db $29,$0F,$CB,$2D,$10,$CB,$30,$10
                    db $BC,$37,$0E,$CA,$3B,$0A,$CA,$3F
                    db $0A,$C8,$3C,$10,$C8,$40,$10,$AE
                    db $4B,$0C,$B1,$4D,$11,$AC,$54,$10
                    db $BE,$66,$0C,$BE,$68,$0C,$BE,$6A
                    db $0C,$AC,$6B,$11,$FF,$00,$D3,$00
                    db $05,$B1,$14,$0B,$AA,$15,$0F,$AA
                    db $14,$11,$B1,$1B,$0D,$AE,$26,$0A
                    db $9D,$29,$0D,$9D,$2C,$0D,$9D,$2F
                    db $0D,$B1,$39,$11,$AC,$3F,$11,$B2
                    db $3D,$0E,$BE,$3A,$0B,$B2,$4A,$0E
                    db $B1,$49,$0A,$B2,$55,$0C,$AC,$57
                    db $0E,$B1,$52,$11,$9D,$58,$11,$B1
                    db $6B,$0B,$AC,$6A,$0D,$B1,$68,$10
                    db $9D,$62,$11,$AA,$77,$13,$FF,$00
                    db $D3,$00,$06,$AA,$13,$0F,$AA,$11
                    db $11,$AE,$18,$0F,$AE,$2E,$0D,$AE
                    db $34,$0F,$AB,$3B,$0A,$B1,$42,$12
                    db $9D,$49,$14,$9D,$53,$15,$B2,$55
                    db $15,$9D,$57,$15,$AC,$5D,$12,$B1
                    db $6A,$06,$FF,$00,$D3,$00,$0C,$9D
                    db $17,$07,$9D,$1E,$07,$AE,$14,$08
                    db $AA,$15,$0A,$AE,$2E,$08,$AA,$30
                    db $0D,$9D,$33,$08,$AA,$3F,$0E,$9D
                    db $43,$0B,$BE,$55,$0D,$BE,$5B,$0D
                    db $AE,$5A,$0A,$BE,$69,$0A,$AE,$75
                    db $0B,$BE,$85,$0D,$BE,$8B,$09,$AA
                    db $8A,$0D,$AA,$90,$09,$AE,$96,$0A
                    db $AE,$A0,$08,$AE,$AA,$0B,$AE,$BD
                    db $0D,$AE,$C1,$0A,$AE,$C4,$07,$AA
                    db $DB,$0D,$FF,$01,$D3,$00,$0D,$B1
                    db $0B,$15,$AD,$0E,$17,$B1,$11,$16
                    db $AD,$14,$19,$B1,$18,$18,$AD,$22
                    db $17,$B1,$26,$16,$AD,$2E,$17,$B1
                    db $31,$16,$B1,$3A,$13,$AD,$43,$14
                    db $B1,$45,$15,$B1,$4C,$16,$AD,$51
                    db $16,$B1,$53,$17,$B1,$64,$16,$B1
                    db $64,$17,$AD,$68,$11,$B1,$6A,$12
                    db $B1,$74,$18,$AD,$7C,$17,$B1,$7F
                    db $16,$AD,$84,$12,$B1,$87,$11,$AD
                    db $8F,$19,$B1,$92,$18,$AD,$96,$14
                    db $B1,$99,$13,$AD,$A3,$16,$B1,$A6
                    db $15,$AA,$BE,$17,$FF,$01,$D3,$00
                    db $0E,$BE,$0D,$13,$C2,$08,$14,$C6
                    db $15,$12,$C6,$19,$12,$C2,$1C,$14
                    db $BE,$20,$13,$CF,$22,$12,$BE,$2A
                    db $12,$CD,$2F,$12,$C2,$42,$15,$C2
                    db $47,$13,$BE,$4C,$12,$BE,$52,$11
                    db $BE,$57,$13,$BE,$5C,$12,$CD,$5F
                    db $12,$C3,$73,$13,$BE,$78,$12,$CE
                    db $7F,$15,$C2,$80,$14,$C2,$81,$13
                    db $C2,$82,$12,$CD,$8F,$12,$50,$95
                    db $13,$50,$97,$11,$FF,$01,$D3,$00
                    db $14,$C2,$0D,$16,$C6,$15,$10,$C4
                    db $1A,$16,$C4,$1B,$16,$C4,$1C,$16
                    db $C7,$21,$11,$CF,$23,$16,$C2,$2B
                    db $16,$C2,$2C,$15,$C7,$34,$10,$AD
                    db $35,$17,$AD,$3D,$17,$AD,$41,$17
                    db $AD,$49,$17,$AD,$4D,$17,$C7,$53
                    db $11,$C6,$58,$11,$C7,$5A,$11,$C4
                    db $61,$16,$C4,$67,$16,$C5,$68,$16
                    db $CF,$6D,$16,$C4,$73,$16,$C2,$76
                    db $15,$C2,$79,$13,$AD,$7D,$13,$FF
                    db $01,$D3,$00,$13,$C2,$15,$16,$C4
                    db $17,$15,$CF,$1A,$16,$C2,$20,$16
                    db $CE,$23,$15,$C4,$26,$16,$C2,$2A
                    db $16,$C4,$2D,$15,$AC,$34,$17,$AD
                    db $39,$17,$CF,$3B,$16,$C2,$41,$16
                    db $AD,$44,$15,$C2,$4E,$16,$AD,$51
                    db $15,$C2,$59,$18,$C2,$5B,$16,$AD
                    db $5E,$15,$CF,$60,$16,$C2,$66,$16
                    db $AD,$6B,$15,$C2,$76,$16,$AD,$7B
                    db $15,$C5,$7F,$16,$CF,$80,$16,$C2
                    db $86,$16,$AD,$8B,$15,$CF,$8F,$16
                    db $CE,$96,$16,$AD,$98,$15,$C5,$9A
                    db $14,$CF,$9B,$16,$C2,$A9,$18,$C3
                    db $B1,$14,$AD,$B5,$13,$C4,$B7,$12
                    db $C5,$B8,$12,$C5,$B9,$15,$FF,$01
                    db $0E,$0D,$08,$FF,$01,$0E,$0D,$06
                    db $FF,$01,$0E,$0D,$08,$FF,$01,$0E
                    db $0D,$08,$FF,$01,$0E,$0D,$07,$FF
                    db $01,$0E,$0D,$07,$FF,$01,$D3,$00
                    db $11,$B8,$01,$03,$AA,$3E,$0B,$FF
                    db $01,$82,$03,$17,$82,$0C,$17,$BA
                    db $0F,$11,$FF,$01,$4C,$0C,$47,$FF
                    db $01,$4B,$0C,$17,$FF,$01,$4C,$0C
                    db $27,$FF,$01,$82,$0C,$17,$D6,$0D
                    db $09,$BA,$0E,$17,$FF,$01,$D3,$00
                    db $50,$2D,$04,$19,$6D,$19,$10,$6D
                    db $1D,$10,$3E,$10,$18,$6C,$39,$11
                    db $3E,$31,$18,$74,$43,$11,$74,$45
                    db $11,$3E,$4C,$18,$92,$55,$11,$92
                    db $59,$12,$6D,$63,$10,$27,$72,$13
                    db $FF,$01,$41,$38,$15,$FF,$FF,$FF
                    db $FF
