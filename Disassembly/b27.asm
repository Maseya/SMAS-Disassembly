;Super Mario Bros. 3

CODE_278000:        AD 25 04      LDA $0425                 
CODE_278003:        F0 32         BEQ CODE_278037           
CODE_278005:        AD 2B 05      LDA $052B                 
CODE_278008:        AC 2A 05      LDY $052A                 
CODE_27800B:        22 C1 9F 20   JSL CODE_209FC1           
CODE_27800F:        8D 2B 05      STA $052B                 
CODE_278012:        8C 2A 05      STY $052A                 
CODE_278015:        B9 3C 82      LDA.w DATA_21823C,y               
CODE_278018:        85 2E         STA $2E                   
CODE_27801A:        B9 4C 82      LDA.w DATA_21824C,y               
CODE_27801D:        85 2F         STA $2F                   
CODE_27801F:        AD 2B 05      LDA $052B                 
CODE_278022:        29 F0         AND #$F0                  
CODE_278024:        85 05         STA $05                   
CODE_278026:        AD 29 05      LDA $0529                 
CODE_278029:        4A            LSR A                     
CODE_27802A:        4A            LSR A                     
CODE_27802B:        4A            LSR A                     
CODE_27802C:        4A            LSR A                     
CODE_27802D:        05 05         ORA $05                   
CODE_27802F:        85 04         STA $04                   
CODE_278031:        A9 00         LDA #$00                  
CODE_278033:        85 06         STA $06                   
CODE_278035:        F0 3C         BEQ CODE_278073           
CODE_278037:        AD 28 05      LDA $0528                 
CODE_27803A:        0A            ASL A                     
CODE_27803B:        AA            TAX                       
CODE_27803C:        BD 00 82      LDA.w DATA_218200,x               
CODE_27803F:        85 2E         STA $2E                   
CODE_278041:        BD 01 82      LDA.w DATA_218200+1,x               
CODE_278044:        85 2F         STA $2F                   
CODE_278046:        64 06         STZ $06                   
CODE_278048:        AD 2A 05      LDA $052A                 
CODE_27804B:        F0 02         BEQ CODE_27804F           
CODE_27804D:        E6 2F         INC $2F                   
CODE_27804F:        AD 2B 05      LDA $052B                 
CODE_278052:        29 F0         AND #$F0                  
CODE_278054:        85 05         STA $05                   
CODE_278056:        AD 29 05      LDA $0529                 
CODE_278059:        4A            LSR A                     
CODE_27805A:        4A            LSR A                     
CODE_27805B:        4A            LSR A                     
CODE_27805C:        4A            LSR A                     
CODE_27805D:        05 05         ORA $05                   
CODE_27805F:        85 04         STA $04                   
CODE_278061:        AD 2A 05      LDA $052A                 
CODE_278064:        D0 09         BNE CODE_27806F           
CODE_278066:        AD 2B 05      LDA $052B                 
CODE_278069:        29 F0         AND #$F0                  
CODE_27806B:        C9 F0         CMP #$F0                  
CODE_27806D:        D0 04         BNE CODE_278073           
CODE_27806F:        A9 01         LDA #$01                  
CODE_278071:        85 06         STA $06                   
CODE_278073:        AD 64 05      LDA $0564                 
CODE_278076:        D0 01         BNE CODE_278079           
CODE_278078:        6B            RTL                       

CODE_278079:        20 7D 80      JSR CODE_27807D           
CODE_27807C:        6B            RTL                       

CODE_27807D:        22 1F FB 20   JSL CODE_20FB1F           ; ExecutePtrShort

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

CODE_2780B3:        AE 64 05      LDX $0564                 
CODE_2780B6:        CA            DEX                       
CODE_2780B7:        A4 04         LDY $04                   
CODE_2780B9:        BD E6 84      LDA.w DATA_2184E6,x               
CODE_2780BC:        97 2E         STA [$2E],y               
CODE_2780BE:        8A            TXA                       
CODE_2780BF:        0A            ASL A                     
CODE_2780C0:        0A            ASL A                     
CODE_2780C1:        0A            ASL A                     
CODE_2780C2:        AA            TAX                       
CODE_2780C3:        A0 00         LDY #$00                  
CODE_2780C5:        BD F8 84      LDA.w DATA_2184F8,x               
CODE_2780C8:        99 6E 03      STA $036E,y               
CODE_2780CB:        E8            INX                       
CODE_2780CC:        C8            INY                       
CODE_2780CD:        C0 08         CPY #$08                  
CODE_2780CF:        D0 F4         BNE CODE_2780C5           
CODE_2780D1:        A5 05         LDA $05                   
CODE_2780D3:        0A            ASL A                     
CODE_2780D4:        69 00         ADC #$00                  
CODE_2780D6:        0A            ASL A                     
CODE_2780D7:        69 00         ADC #$00                  
CODE_2780D9:        48            PHA                       
CODE_2780DA:        29 0F         AND #$0F                  
CODE_2780DC:        A4 06         LDY $06                   
CODE_2780DE:        F0 07         BEQ CODE_2780E7           
CODE_2780E0:        AC 2A 05      LDY $052A                 
CODE_2780E3:        F0 02         BEQ CODE_2780E7           
CODE_2780E5:        09 08         ORA #$08                  
CODE_2780E7:        8D 6C 03      STA $036C                 
CODE_2780EA:        AD 28 05      LDA $0528                 
CODE_2780ED:        4A            LSR A                     
CODE_2780EE:        90 08         BCC CODE_2780F8           
CODE_2780F0:        AD 6C 03      LDA $036C                 
CODE_2780F3:        09 04         ORA #$04                  
CODE_2780F5:        8D 6C 03      STA $036C                 
CODE_2780F8:        68            PLA                       
CODE_2780F9:        29 F0         AND #$F0                  
CODE_2780FB:        85 01         STA $01                   
CODE_2780FD:        AD 29 05      LDA $0529                 
CODE_278100:        4A            LSR A                     
CODE_278101:        4A            LSR A                     
CODE_278102:        4A            LSR A                     
CODE_278103:        05 01         ORA $01                   
CODE_278105:        8D 6D 03      STA $036D                 
CODE_278108:        A9 00         LDA #$00                  
CODE_27810A:        8D 64 05      STA $0564                 
CODE_27810D:        AD 25 04      LDA $0425                 
CODE_278110:        F0 32         BEQ CODE_278144           
CODE_278112:        C2 20         REP #$20                  
CODE_278114:        A5 06         LDA $06                   
CODE_278116:        48            PHA                       
CODE_278117:        AD 2A 05      LDA $052A                 
CODE_27811A:        EB            XBA                       
CODE_27811B:        29 00 FF      AND #$FF00                
CODE_27811E:        4A            LSR A                     
CODE_27811F:        4A            LSR A                     
CODE_278120:        85 06         STA $06                   
CODE_278122:        AD 6C 03      LDA $036C                 
CODE_278125:        EB            XBA                       
CODE_278126:        38            SEC                       
CODE_278127:        E5 06         SBC $06                   
CODE_278129:        29 FF 0B      AND #$0BFF                
CODE_27812C:        EB            XBA                       
CODE_27812D:        8D 6C 03      STA $036C                 
CODE_278130:        68            PLA                       
CODE_278131:        85 06         STA $06                   
CODE_278133:        E2 20         SEP #$20                  
CODE_278135:        AD 2A 05      LDA $052A                 
CODE_278138:        29 01         AND #$01                  
CODE_27813A:        F0 08         BEQ CODE_278144           
CODE_27813C:        AD 6C 03      LDA $036C                 
CODE_27813F:        49 08         EOR #$08                  
CODE_278141:        8D 6C 03      STA $036C                 
CODE_278144:        60            RTS                       

CODE_278145:        A9 00         LDA #$00                  
CODE_278147:        8D 64 05      STA $0564                 
CODE_27814A:        A4 04         LDY $04                   
CODE_27814C:        A9 42         LDA #$42                  
CODE_27814E:        97 2E         STA [$2E],y               
CODE_278150:        98            TYA                       
CODE_278151:        18            CLC                       
CODE_278152:        69 10         ADC #$10                  
CODE_278154:        A8            TAY                       
CODE_278155:        90 02         BCC CODE_278159           
CODE_278157:        E6 2F         INC $2F                   
CODE_278159:        A9 42         LDA #$42                  
CODE_27815B:        97 2E         STA [$2E],y               
CODE_27815D:        C2 10         REP #$10                  
CODE_27815F:        A0 00 00      LDY #$0000                
CODE_278162:        AE 00 16      LDX $1600                 
CODE_278165:        B9 88 85      LDA.w DATA_218588,y               
CODE_278168:        9D 02 16      STA $1602,x               
CODE_27816B:        E8            INX                       
CODE_27816C:        C8            INY                       
CODE_27816D:        C0 0D 00      CPY #$000D                
CODE_278170:        D0 F3         BNE CODE_278165           
CODE_278172:        E2 10         SEP #$10                  
CODE_278174:        A5 05         LDA $05                   
CODE_278176:        0A            ASL A                     
CODE_278177:        69 00         ADC #$00                  
CODE_278179:        0A            ASL A                     
CODE_27817A:        69 00         ADC #$00                  
CODE_27817C:        48            PHA                       
CODE_27817D:        29 0F         AND #$0F                  
CODE_27817F:        A4 06         LDY $06                   
CODE_278181:        F0 02         BEQ CODE_278185           
CODE_278183:        09 08         ORA #$08                  
CODE_278185:        C2 10         REP #$10                  
CODE_278187:        AE 00 16      LDX $1600                 
CODE_27818A:        9D 02 16      STA $1602,x               
CODE_27818D:        9D 08 16      STA $1608,x               
CODE_278190:        68            PLA                       
CODE_278191:        29 F0         AND #$F0                  
CODE_278193:        85 01         STA $01                   
CODE_278195:        AD 29 05      LDA $0529                 
CODE_278198:        4A            LSR A                     
CODE_278199:        4A            LSR A                     
CODE_27819A:        4A            LSR A                     
CODE_27819B:        05 01         ORA $01                   
CODE_27819D:        9D 03 16      STA $1603,x               
CODE_2781A0:        18            CLC                       
CODE_2781A1:        69 01         ADC #$01                  
CODE_2781A3:        9D 09 16      STA $1609,x               
CODE_2781A6:        C2 20         REP #$20                  
CODE_2781A8:        AD 00 16      LDA $1600                 
CODE_2781AB:        18            CLC                       
CODE_2781AC:        69 0C 00      ADC #$000C                
CODE_2781AF:        8D 00 16      STA $1600                 
CODE_2781B2:        E2 30         SEP #$30                  
CODE_2781B4:        60            RTS                       

CODE_2781B5:        A9 00         LDA #$00                  
CODE_2781B7:        8D 64 05      STA $0564                 
CODE_2781BA:        A4 04         LDY $04                   
CODE_2781BC:        A9 86         LDA #$86                  
CODE_2781BE:        97 2E         STA [$2E],y               
CODE_2781C0:        C8            INY                       
CODE_2781C1:        A9 87         LDA #$87                  
CODE_2781C3:        97 2E         STA [$2E],y               
CODE_2781C5:        A2 00         LDX #$00                  
CODE_2781C7:        AC 00 16      LDY $1600                 
CODE_2781CA:        C2 20         REP #$20                  
CODE_2781CC:        BD 95 85      LDA.w DATA_218595,x               
CODE_2781CF:        99 02 16      STA $1602,y               
CODE_2781D2:        E8            INX                       
CODE_2781D3:        E8            INX                       
CODE_2781D4:        C8            INY                       
CODE_2781D5:        C8            INY                       
CODE_2781D6:        E0 1A         CPX #$1A                  
CODE_2781D8:        D0 F2         BNE CODE_2781CC           
CODE_2781DA:        E2 20         SEP #$20                  
CODE_2781DC:        AE 00 16      LDX $1600                 
CODE_2781DF:        A5 05         LDA $05                   
CODE_2781E1:        0A            ASL A                     
CODE_2781E2:        69 00         ADC #$00                  
CODE_2781E4:        0A            ASL A                     
CODE_2781E5:        69 00         ADC #$00                  
CODE_2781E7:        48            PHA                       
CODE_2781E8:        29 0F         AND #$0F                  
CODE_2781EA:        A4 06         LDY $06                   
CODE_2781EC:        F0 02         BEQ CODE_2781F0           
CODE_2781EE:        09 08         ORA #$08                  
CODE_2781F0:        9D 02 16      STA $1602,x               
CODE_2781F3:        9D 0E 16      STA $160E,x               
CODE_2781F6:        68            PLA                       
CODE_2781F7:        29 F0         AND #$F0                  
CODE_2781F9:        85 01         STA $01                   
CODE_2781FB:        AD 29 05      LDA $0529                 
CODE_2781FE:        4A            LSR A                     
CODE_2781FF:        4A            LSR A                     
CODE_278200:        4A            LSR A                     
CODE_278201:        05 01         ORA $01                   
CODE_278203:        9D 03 16      STA $1603,x               
CODE_278206:        18            CLC                       
CODE_278207:        69 20         ADC #$20                  
CODE_278209:        9D 0F 16      STA $160F,x               
CODE_27820C:        AD 00 16      LDA $1600                 
CODE_27820F:        18            CLC                       
CODE_278210:        69 1A         ADC #$1A                  
CODE_278212:        8D 00 16      STA $1600                 
CODE_278215:        60            RTS                       

CODE_278216:        A2 00         LDX #$00                  
CODE_278218:        AD 64 05      LDA $0564                 
CODE_27821B:        C9 15         CMP #$15                  
CODE_27821D:        D0 0A         BNE CODE_278229           
CODE_27821F:        A4 04         LDY $04                   
CODE_278221:        B7 2E         LDA [$2E],y               
CODE_278223:        C9 96         CMP #$96                  
CODE_278225:        F0 08         BEQ CODE_27822F           
CODE_278227:        D0 05         BNE CODE_27822E           
CODE_278229:        38            SEC                       
CODE_27822A:        E9 16         SBC #$16                  
CODE_27822C:        AA            TAX                       
CODE_27822D:        E8            INX                       
CODE_27822E:        E8            INX                       
CODE_27822F:        BC AF 85      LDY.w DATA_2185AF,x               
CODE_278232:        86 0A         STX $0A                   
CODE_278234:        C2 30         REP #$30                  
CODE_278236:        98            TYA                       
CODE_278237:        29 FF 00      AND #$00FF                
CODE_27823A:        A8            TAY                       
CODE_27823B:        E2 20         SEP #$20                  
CODE_27823D:        AE 00 16      LDX $1600                 
CODE_278240:        A9 31         LDA #$31                  
CODE_278242:        85 00         STA $00                   
CODE_278244:        B9 B4 85      LDA.w DATA_2185B4,y               
CODE_278247:        9D 02 16      STA $1602,x               
CODE_27824A:        E8            INX                       
CODE_27824B:        C8            INY                       
CODE_27824C:        C6 00         DEC $00                   
CODE_27824E:        D0 F4         BNE CODE_278244           
CODE_278250:        E2 10         SEP #$10                  
CODE_278252:        A5 0A         LDA $0A                   
CODE_278254:        0A            ASL A                     
CODE_278255:        0A            ASL A                     
CODE_278256:        85 0A         STA $0A                   
CODE_278258:        A9 00         LDA #$00                  
CODE_27825A:        85 02         STA $02                   
CODE_27825C:        A5 04         LDA $04                   
CODE_27825E:        29 F0         AND #$F0                  
CODE_278260:        A4 06         LDY $06                   
CODE_278262:        F0 03         BEQ CODE_278267           
CODE_278264:        18            CLC                       
CODE_278265:        69 10         ADC #$10                  
CODE_278267:        85 05         STA $05                   
CODE_278269:        A5 04         LDA $04                   
CODE_27826B:        29 0F         AND #$0F                  
CODE_27826D:        0A            ASL A                     
CODE_27826E:        85 07         STA $07                   
CODE_278270:        A5 05         LDA $05                   
CODE_278272:        0A            ASL A                     
CODE_278273:        69 00         ADC #$00                  
CODE_278275:        0A            ASL A                     
CODE_278276:        69 00         ADC #$00                  
CODE_278278:        48            PHA                       
CODE_278279:        29 03         AND #$03                  
CODE_27827B:        A4 06         LDY $06                   
CODE_27827D:        F0 02         BEQ CODE_278281           
CODE_27827F:        09 08         ORA #$08                  
CODE_278281:        85 08         STA $08                   
CODE_278283:        AD 28 05      LDA $0528                 
CODE_278286:        4A            LSR A                     
CODE_278287:        90 06         BCC CODE_27828F           
CODE_278289:        A5 08         LDA $08                   
CODE_27828B:        09 04         ORA #$04                  
CODE_27828D:        85 08         STA $08                   
CODE_27828F:        A2 00         LDX #$00                  
CODE_278291:        A5 02         LDA $02                   
CODE_278293:        F0 02         BEQ CODE_278297           
CODE_278295:        A2 18         LDX #$18                  
CODE_278297:        C2 30         REP #$30                  
CODE_278299:        8A            TXA                       
CODE_27829A:        29 FF 00      AND #$00FF                
CODE_27829D:        18            CLC                       
CODE_27829E:        6D 00 16      ADC $1600                 
CODE_2782A1:        AA            TAX                       
CODE_2782A2:        E2 20         SEP #$20                  
CODE_2782A4:        68            PLA                       
CODE_2782A5:        29 F0         AND #$F0                  
CODE_2782A7:        05 07         ORA $07                   
CODE_2782A9:        48            PHA                       
CODE_2782AA:        A5 08         LDA $08                   
CODE_2782AC:        29 08         AND #$08                  
CODE_2782AE:        F0 1A         BEQ CODE_2782CA           
CODE_2782B0:        68            PLA                       
CODE_2782B1:        C9 40         CMP #$40                  
CODE_2782B3:        B0 10         BCS CODE_2782C5
CODE_2782B5:        48            PHA                       
CODE_2782B6:        C6 08         DEC $08                   
CODE_2782B8:        A5 08         LDA $08                   
CODE_2782BA:        29 08         AND #$08                  
CODE_2782BC:        D0 06         BNE CODE_2782C4           
CODE_2782BE:        A5 08         LDA $08                   
CODE_2782C0:        29 03         AND #$03                  
CODE_2782C2:        85 08         STA $08                   
CODE_2782C4:        68            PLA                       
CODE_2782C5:        38            SEC                       
CODE_2782C6:        E9 40         SBC #$40                  
CODE_2782C8:        80 01         BRA CODE_2782CB           

CODE_2782CA:        68            PLA                       
CODE_2782CB:        85 03         STA $03                   
CODE_2782CD:        9D 03 16      STA $1603,x               
CODE_2782D0:        18            CLC                       
CODE_2782D1:        69 20         ADC #$20                  
CODE_2782D3:        9D 0F 16      STA $160F,x               
CODE_2782D6:        A5 08         LDA $08                   
CODE_2782D8:        9D 02 16      STA $1602,x               
CODE_2782DB:        9D 0E 16      STA $160E,x               
CODE_2782DE:        E2 10         SEP #$10                  
CODE_2782E0:        A4 04         LDY $04                   
CODE_2782E2:        A6 0A         LDX $0A                   
CODE_2782E4:        BD AB 86      LDA.w DATA_2186AB,x               
CODE_2782E7:        97 2E         STA [$2E],y               
CODE_2782E9:        C8            INY                       
CODE_2782EA:        BD AC 86      LDA.w DATA_2186AB+1,x               
CODE_2782ED:        97 2E         STA [$2E],y               
CODE_2782EF:        A5 04         LDA $04                   
CODE_2782F1:        18            CLC                       
CODE_2782F2:        69 10         ADC #$10                  
CODE_2782F4:        85 04         STA $04                   
CODE_2782F6:        A5 2F         LDA $2F                   
CODE_2782F8:        69 00         ADC #$00                  
CODE_2782FA:        85 2F         STA $2F                   
CODE_2782FC:        E6 0A         INC $0A                   
CODE_2782FE:        E6 0A         INC $0A                   
CODE_278300:        E6 02         INC $02                   
CODE_278302:        A5 02         LDA $02                   
CODE_278304:        C9 02         CMP #$02                  
CODE_278306:        F0 03         BEQ CODE_27830B           
CODE_278308:        4C 5C 82      JMP CODE_27825C           

CODE_27830B:        C2 20         REP #$20                  
CODE_27830D:        AD 00 16      LDA $1600                 
CODE_278310:        18            CLC                       
CODE_278311:        69 30 00      ADC #$0030                
CODE_278314:        8D 00 16      STA $1600                 
CODE_278317:        E2 20         SEP #$20                  
CODE_278319:        9C 64 05      STZ $0564                 
CODE_27831C:        EE 7B 03      INC $037B                 
CODE_27831F:        60            RTS                       

CODE_278320:        A5 15         LDA $15                   
CODE_278322:        29 07         AND #$07                  
CODE_278324:        D0 31         BNE CODE_278357           
CODE_278326:        A5 15         LDA $15                   
CODE_278328:        29 18         AND #$18                  
CODE_27832A:        4A            LSR A                     
CODE_27832B:        AA            TAX                       
CODE_27832C:        AC 00 16      LDY $1600                 
CODE_27832F:        A9 3F         LDA #$3F                  
CODE_278331:        99 01 16      STA $1601,y               
CODE_278334:        A9 04         LDA #$04                  
CODE_278336:        99 02 16      STA $1602,y               
CODE_278339:        99 03 16      STA $1603,y               
CODE_27833C:        BD BF 86      LDA.w DATA_2186BF,x               
CODE_27833F:        99 04 16      STA $1604,y               
CODE_278342:        C8            INY                       
CODE_278343:        E8            INX                       
CODE_278344:        8A            TXA                       
CODE_278345:        29 03         AND #$03                  
CODE_278347:        D0 F3         BNE CODE_27833C           
CODE_278349:        A9 00         LDA #$00                  
CODE_27834B:        99 04 16      STA $1604,y               
CODE_27834E:        AD 00 16      LDA $1600                 
CODE_278351:        18            CLC                       
CODE_278352:        69 07         ADC #$07                  
CODE_278354:        8D 00 16      STA $1600                 
CODE_278357:        60            RTS                       

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

CODE_278500:        AD 54 05      LDA $0554                 
CODE_278503:        0D 51 05      ORA $0551                 
CODE_278506:        05 9C         ORA $9C                   
CODE_278508:        F0 0D         BEQ CODE_278517           
CODE_27850A:        AD 02 1A      LDA $1A02                 
CODE_27850D:        C9 13         CMP #$13                  
CODE_27850F:        90 05         BCC CODE_278516           
CODE_278511:        A9 80         LDA #$80                  
CODE_278513:        8D F3 05      STA $05F3                 
CODE_278516:        6B            RTL                       

CODE_278517:        8D F3 05      STA $05F3                 
CODE_27851A:        AD 09 1A      LDA $1A09                 
CODE_27851D:        F0 03         BEQ CODE_278522           
CODE_27851F:        CE 09 1A      DEC $1A09                 
CODE_278522:        20 26 85      JSR CODE_278526           
CODE_278525:        6B            RTL                       

CODE_278526:        AD 01 1A      LDA $1A01                 
CODE_278529:        22 1F FB 20   JSL CODE_20FB1F           ; ExecutePtrShort

PNTR_27852D:        dw CODE_27855A
                    dw CODE_27855A
                    dw CODE_27888F
                    dw CODE_27876F
                    dw CODE_278723
                    dw CODE_27882D

CODE_278539:        CE 67 1A      DEC $1A67
CODE_27853C:        10 1B         BPL CODE_278559           
CODE_27853E:        A9 05         LDA #$05                  
CODE_278540:        8D 67 1A      STA $1A67                 
CODE_278543:        EE 66 1A      INC $1A66                 
CODE_278546:        AD 66 1A      LDA $1A66                 
CODE_278549:        C9 06         CMP #$06                  
CODE_27854B:        90 05         BCC CODE_278552           
CODE_27854D:        A9 00         LDA #$00                  
CODE_27854F:        8D 66 1A      STA $1A66                 
CODE_278552:        A8            TAY                       
CODE_278553:        B9 BE 84      LDA.w DATA_2184BE,y               
CODE_278556:        8D C9 07      STA $07C9                 
CODE_278559:        60            RTS                       

CODE_27855A:        A2 00         LDX #$00                  
CODE_27855C:        20 22 89      JSR CODE_278922           
CODE_27855F:        AD 02 1A      LDA $1A02                 
CODE_278562:        C9 11         CMP #$11                  
CODE_278564:        D0 05         BNE CODE_27856B           
CODE_278566:        48            PHA                       
CODE_278567:        20 39 85      JSR CODE_278539           
CODE_27856A:        68            PLA                       
CODE_27856B:        C9 0E         CMP #$0E                  
CODE_27856D:        D0 03         BNE CODE_278572           
CODE_27856F:        20 6A 88      JSR CODE_27886A           
CODE_278572:        20 97 86      JSR CODE_278697           
CODE_278575:        AD 09 1A      LDA $1A09                 
CODE_278578:        4A            LSR A                     
CODE_278579:        B0 3E         BCS CODE_2785B9                   
CODE_27857B:        48            PHA                       
CODE_27857C:        20 20 89      JSR CODE_278920           
CODE_27857F:        68            PLA                       
CODE_278580:        D0 37         BNE CODE_2785B9           
CODE_278582:        AD 08 1A      LDA $1A08                 
CODE_278585:        F0 03         BEQ CODE_27858A           
CODE_278587:        4C 14 86      JMP CODE_278614           

CODE_27858A:        AD 05 1A      LDA $1A05                 
CODE_27858D:        D0 59         BNE CODE_2785E8           
CODE_27858F:        86 DA         STX $DA                   
CODE_278591:        AE 02 1A      LDX $1A02                 
CODE_278594:        AD 03 1A      LDA $1A03                 
CODE_278597:        DF 5F AA 27   CMP $27AA5F,x             
CODE_27859B:        08            PHP                       
CODE_27859C:        9B            TXY                       
CODE_27859D:        A6 DA         LDX $DA                   
CODE_27859F:        28            PLP                       
CODE_2785A0:        D0 22         BNE CODE_2785C4           
CODE_2785A2:        C0 13         CPY #$13                  
CODE_2785A4:        90 03         BCC CODE_2785A9           
CODE_2785A6:        6E F3 05      ROR $05F3                 
CODE_2785A9:        A9 00         LDA #$00                  
CODE_2785AB:        8D 0E 1A      STA $1A0E                 
CODE_2785AE:        B9 5C 82      LDA.w DATA_21825C,y               
CODE_2785B1:        D0 07         BNE CODE_2785BA           
CODE_2785B3:        8D 0F 1A      STA $1A0F                 
CODE_2785B6:        8D 10 1A      STA $1A10                 
CODE_2785B9:        60            RTS                       

CODE_2785BA:        8D 04 1A      STA $1A04                 
CODE_2785BD:        A9 FF         LDA #$FF                  
CODE_2785BF:        8D 05 1A      STA $1A05                 
CODE_2785C2:        D0 1B         BNE CODE_2785DF           
CODE_2785C4:        EE 03 1A      INC $1A03                 
CODE_2785C7:        AC 03 1A      LDY $1A03                 
CODE_2785CA:        B9 71 82      LDA.w DATA_218271,y               
CODE_2785CD:        4A            LSR A                     
CODE_2785CE:        4A            LSR A                     
CODE_2785CF:        4A            LSR A                     
CODE_2785D0:        4A            LSR A                     
CODE_2785D1:        F0 3B         BEQ CODE_27860E           
CODE_2785D3:        8D 04 1A      STA $1A04                 
CODE_2785D6:        AC 03 1A      LDY $1A03                 
CODE_2785D9:        B9 5F 83      LDA.w DATA_21835F,y               
CODE_2785DC:        8D 05 1A      STA $1A05                 
CODE_2785DF:        AC 04 1A      LDY $1A04                 
CODE_2785E2:        B9 58 84      LDA.w DATA_218458,y               
CODE_2785E5:        8D 06 1A      STA $1A06                 
CODE_2785E8:        AC 04 1A      LDY $1A04                 
CODE_2785EB:        AD 06 1A      LDA $1A06                 
CODE_2785EE:        D9 59 84      CMP.w DATA_218458+1,y               
CODE_2785F1:        D0 10         BNE CODE_278603           
CODE_2785F3:        B9 58 84      LDA.w DATA_218458,y               
CODE_2785F6:        8D 06 1A      STA $1A06                 
CODE_2785F9:        AD 05 1A      LDA $1A05                 
CODE_2785FC:        30 05         BMI CODE_278603           
CODE_2785FE:        CE 05 1A      DEC $1A05                 
CODE_278601:        F0 8C         BEQ CODE_27858F           
CODE_278603:        EE 06 1A      INC $1A06                 
CODE_278606:        AC 06 1A      LDY $1A06                 
CODE_278609:        B9 90 84      LDA.w DATA_218490,y               
CODE_27860C:        D0 03         BNE CODE_278611           
CODE_27860E:        B9 5F 83      LDA.w DATA_21835F,y               
CODE_278611:        8D 08 1A      STA $1A08                 
CODE_278614:        CE 08 1A      DEC $1A08                 
CODE_278617:        AD 05 1A      LDA $1A05                 
CODE_27861A:        F0 08         BEQ CODE_278624           
CODE_27861C:        AC 06 1A      LDY $1A06                 
CODE_27861F:        B9 62 84      LDA.w DATA_218462,y               
CODE_278622:        10 06         BPL CODE_27862A           
CODE_278624:        AC 03 1A      LDY $1A03                 
CODE_278627:        B9 71 82      LDA.w DATA_218271,y               
CODE_27862A:        48            PHA                       
CODE_27862B:        4A            LSR A                     
CODE_27862C:        4A            LSR A                     
CODE_27862D:        29 03         AND #$03                  
CODE_27862F:        A8            TAY                       
CODE_278630:        B9 4D 84      LDA.w DATA_21844D,y               
CODE_278633:        18            CLC                       
CODE_278634:        6D 0E 1A      ADC $1A0E                 
CODE_278637:        8D 0E 1A      STA $1A0E                 
CODE_27863A:        68            PLA                       
CODE_27863B:        29 03         AND #$03                  
CODE_27863D:        A8            TAY                       
CODE_27863E:        B9 4D 84      LDA.w DATA_21844D,y               
CODE_278641:        18            CLC                       
CODE_278642:        6D 0F 1A      ADC $1A0F                 
CODE_278645:        8D 0F 1A      STA $1A0F                 
CODE_278648:        A9 04         LDA #$04                  
CODE_27864A:        8D 09 1A      STA $1A09                 
CODE_27864D:        AD BF 02      LDA $02BF                 
CODE_278650:        C9 03         CMP #$03                  
CODE_278652:        D0 05         BNE CODE_278659           
CODE_278654:        AE 27 07      LDX $0727                 
CODE_278657:        80 07         BRA CODE_278660           

CODE_278659:        A2 08         LDX #$08                  
CODE_27865B:        C9 04         CMP #$04                  
CODE_27865D:        F0 01         BEQ CODE_278660           
CODE_27865F:        60            RTS                       

CODE_278660:        AD 51 03      LDA $0351                 
CODE_278663:        1A            INC A                     
CODE_278664:        1A            INC A                     
CODE_278665:        DD 50 84      CMP.w DATA_218450,x               
CODE_278668:        90 03         BCC CODE_27866D           
CODE_27866A:        3D 50 84      AND.w DATA_218450,x               
CODE_27866D:        8D 51 03      STA $0351                 
CODE_278670:        AD 50 03      LDA $0350                 
CODE_278673:        C9 23         CMP #$23                  
CODE_278675:        F0 04         BEQ CODE_27867B           
CODE_278677:        22 56 D3 29   JSL CODE_29D356           
CODE_27867B:        C2 20         REP #$20                  
CODE_27867D:        AD 12 02      LDA $0212                 
CODE_278680:        8D 5D 03      STA $035D                 
CODE_278683:        4A            LSR A                     
CODE_278684:        8D 5B 03      STA $035B                 
CODE_278687:        4A            LSR A                     
CODE_278688:        8D 59 03      STA $0359                 
CODE_27868B:        4A            LSR A                     
CODE_27868C:        8D 57 03      STA $0357                 
CODE_27868F:        E2 20         SEP #$20                  
CODE_278691:        A9 07         LDA #$07                  
CODE_278693:        8D 27 04      STA $0427                 
CODE_278696:        60            RTS                       

CODE_278697:        A9 01         LDA #$01                  
CODE_278699:        8D FC 05      STA $05FC                 
CODE_27869C:        A4 A6         LDY $A6                   
CODE_27869E:        D0 1C         BNE CODE_2786BC           
CODE_2786A0:        AD 02 1A      LDA $1A02                 
CODE_2786A3:        C9 13         CMP #$13                  
CODE_2786A5:        90 11         BCC CODE_2786B8           
CODE_2786A7:        A9 04         LDA #$04                  
CODE_2786A9:        8D 27 04      STA $0427                 
CODE_2786AC:        A5 55         LDA $55                   
CODE_2786AE:        C9 01         CMP #$01                  
CODE_2786B0:        D0 06         BNE CODE_2786B8           
CODE_2786B2:        A5 70         LDA $70                   
CODE_2786B4:        C9 70         CMP #$70                  
CODE_2786B6:        B0 01         BCS CODE_2786B9                   
CODE_2786B8:        C8            INY                       
CODE_2786B9:        8C 14 1A      STY $1A14                 
CODE_2786BC:        A9 0F         LDA #$0F                  
CODE_2786BE:        38            SEC                       
CODE_2786BF:        E5 79         SBC $79                   
CODE_2786C1:        B0 07         BCS CODE_2786CA                   
CODE_2786C3:        A5 79         LDA $79                   
CODE_2786C5:        38            SEC                       
CODE_2786C6:        E9 E0         SBC #$E0                  
CODE_2786C8:        90 1B         BCC CODE_2786E5           
CODE_2786CA:        AD 0E 1A      LDA $1A0E                 
CODE_2786CD:        45 8B         EOR $8B                   
CODE_2786CF:        30 03         BMI CODE_2786D4           
CODE_2786D1:        9C 4E 07      STZ $074E                 
CODE_2786D4:        AD 0E 1A      LDA $1A0E                 
CODE_2786D7:        18            CLC                       
CODE_2786D8:        E5 8B         SBC $8B                   
CODE_2786DA:        45 79         EOR $79                   
CODE_2786DC:        30 18         BMI CODE_2786F6           
CODE_2786DE:        AD 0E 1A      LDA $1A0E                 
CODE_2786E1:        85 8B         STA $8B                   
CODE_2786E3:        80 11         BRA CODE_2786F6           

CODE_2786E5:        AD 14 1A      LDA $1A14                 
CODE_2786E8:        D0 0C         BNE CODE_2786F6           
CODE_2786EA:        A5 5E         LDA $5E                   
CODE_2786EC:        18            CLC                       
CODE_2786ED:        6D 12 1A      ADC $1A12                 
CODE_2786F0:        85 5E         STA $5E                   
CODE_2786F2:        90 02         BCC CODE_2786F6           
CODE_2786F4:        E6 43         INC $43                   
CODE_2786F6:        AD 0E 1A      LDA $1A0E                 
CODE_2786F9:        0A            ASL A                     
CODE_2786FA:        2A            ROL A                     
CODE_2786FB:        29 01         AND #$01                  
CODE_2786FD:        8D 07 1A      STA $1A07                 
CODE_278700:        A5 8B         LDA $8B                   
CODE_278702:        F0 1E         BEQ CODE_278722           
CODE_278704:        4D 0E 1A      EOR $1A0E                 
CODE_278707:        30 19         BMI CODE_278722           
CODE_278709:        A0 00         LDY #$00                  
CODE_27870B:        AD 12 1A      LDA $1A12                 
CODE_27870E:        F0 12         BEQ CODE_278722           
CODE_278710:        10 01         BPL CODE_278713           
CODE_278712:        88            DEY                       
CODE_278713:        18            CLC                       
CODE_278714:        65 5E         ADC $5E                   
CODE_278716:        85 5E         STA $5E                   
CODE_278718:        98            TYA                       
CODE_278719:        65 43         ADC $43                   
CODE_27871B:        85 43         STA $43                   
CODE_27871D:        A9 00         LDA #$00                  
CODE_27871F:        8D 4E 07      STA $074E                 
CODE_278722:        60            RTS                       

CODE_278723:        AD 04 1A      LDA $1A04                 
CODE_278726:        D0 14         BNE CODE_27873C           
CODE_278728:        AD 16 02      LDA $0216                 
CODE_27872B:        C9 EF         CMP #$EF                  
CODE_27872D:        D0 F3         BNE CODE_278722           
CODE_27872F:        AD 16 02      LDA $0216                 
CODE_278732:        8D 0D 1A      STA $1A0D                 
CODE_278735:        EE 04 1A      INC $1A04                 
CODE_278738:        A9 20         LDA #$20                  
CODE_27873A:        D0 1A         BNE CODE_278756           
CODE_27873C:        AD 09 1A      LDA $1A09                 
CODE_27873F:        F0 03         BEQ CODE_278744           
CODE_278741:        4C B8 87      JMP CODE_2787B8           

CODE_278744:        AD 0D 1A      LDA $1A0D                 
CODE_278747:        C9 0D         CMP #$0D                  
CODE_278749:        F0 21         BEQ CODE_27876C           
CODE_27874B:        C9 0F         CMP #$0F                  
CODE_27874D:        D0 0A         BNE CODE_278759           
CODE_27874F:        A9 09         LDA #$09                  
CODE_278751:        8D 03 12      STA $1203                 
CODE_278754:        A9 20         LDA #$20                  
CODE_278756:        8D 09 1A      STA $1A09                 
CODE_278759:        20 20 89      JSR CODE_278920           
CODE_27875C:        A5 15         LDA $15                   
CODE_27875E:        29 07         AND #$07                  
CODE_278760:        D0 0A         BNE CODE_27876C           
CODE_278762:        AD 0F 1A      LDA $1A0F                 
CODE_278765:        C9 F8         CMP #$F8                  
CODE_278767:        F0 03         BEQ CODE_27876C           
CODE_278769:        CE 0F 1A      DEC $1A0F                 
CODE_27876C:        4C C0 87      JMP CODE_2787C0           

CODE_27876F:        AD 09 1A      LDA $1A09                 
CODE_278772:        D0 44         BNE CODE_2787B8           
CODE_278774:        20 20 89      JSR CODE_278920           
CODE_278777:        A5 15         LDA $15                   
CODE_278779:        29 07         AND #$07                  
CODE_27877B:        D0 12         BNE CODE_27878F           
CODE_27877D:        AC 03 1A      LDY $1A03                 
CODE_278780:        AD 0F 1A      LDA $1A0F                 
CODE_278783:        D9 C8 84      CMP.w DATA_2184C8,y               
CODE_278786:        F0 07         BEQ CODE_27878F           
CODE_278788:        18            CLC                       
CODE_278789:        79 C6 84      ADC.w DATA_2184C6,y               
CODE_27878C:        8D 0F 1A      STA $1A0F                 
CODE_27878F:        AD 02 1A      LDA $1A02                 
CODE_278792:        0A            ASL A                     
CODE_278793:        0D 03 1A      ORA $1A03                 
CODE_278796:        A8            TAY                       
CODE_278797:        AD 0D 1A      LDA $1A0D                 
CODE_27879A:        D9 CA 84      CMP.w DATA_2184CA,y               
CODE_27879D:        D0 21         BNE CODE_2787C0           
CODE_27879F:        A9 00         LDA #$00                  
CODE_2787A1:        8D 0F 1A      STA $1A0F                 
CODE_2787A4:        AD 03 1A      LDA $1A03                 
CODE_2787A7:        49 01         EOR #$01                  
CODE_2787A9:        8D 03 1A      STA $1A03                 
CODE_2787AC:        F0 05         BEQ CODE_2787B3           
CODE_2787AE:        A9 09         LDA #$09                  
CODE_2787B0:        8D 03 12      STA $1203                 
CODE_2787B3:        A9 20         LDA #$20                  
CODE_2787B5:        8D 09 1A      STA $1A09                 
CODE_2787B8:        29 01         AND #$01                  
CODE_2787BA:        4D 0D 1A      EOR $1A0D                 
CODE_2787BD:        8D 0D 1A      STA $1A0D                 
CODE_2787C0:        A9 01         LDA #$01                  
CODE_2787C2:        8D 8B 05      STA $058B                 
CODE_2787C5:        A9 81         LDA #$81                  
CODE_2787C7:        8D 27 04      STA $0427                 
CODE_2787CA:        A9 06         LDA #$06                  
CODE_2787CC:        A4 BB         LDY $BB                   
CODE_2787CE:        D0 02         BNE CODE_2787D2           
CODE_2787D0:        A9 12         LDA #$12                  
CODE_2787D2:        65 70         ADC $70                   
CODE_2787D4:        29 F0         AND #$F0                  
CODE_2787D6:        85 08         STA $08                   
CODE_2787D8:        A5 55         LDA $55                   
CODE_2787DA:        69 00         ADC #$00                  
CODE_2787DC:        29 01         AND #$01                  
CODE_2787DE:        85 02         STA $02                   
CODE_2787E0:        A5 5E         LDA $5E                   
CODE_2787E2:        18            CLC                       
CODE_2787E3:        69 08         ADC #$08                  
CODE_2787E5:        85 09         STA $09                   
CODE_2787E7:        A5 43         LDA $43                   
CODE_2787E9:        69 00         ADC #$00                  
CODE_2787EB:        0A            ASL A                     
CODE_2787EC:        A8            TAY                       
CODE_2787ED:        B9 00 82      LDA.w DATA_218200,y               
CODE_2787F0:        85 00         STA $00                   
CODE_2787F2:        B9 01 82      LDA.w DATA_218200+1,y               
CODE_2787F5:        18            CLC                       
CODE_2787F6:        65 02         ADC $02                   
CODE_2787F8:        85 01         STA $01                   
CODE_2787FA:        A5 09         LDA $09                   
CODE_2787FC:        4A            LSR A                     
CODE_2787FD:        4A            LSR A                     
CODE_2787FE:        4A            LSR A                     
CODE_2787FF:        4A            LSR A                     
CODE_278800:        05 08         ORA $08                   
CODE_278802:        A8            TAY                       
CODE_278803:        A9 7E         LDA #$7E                  
CODE_278805:        85 02         STA $02                   
CODE_278807:        B7 00         LDA [$00],y               
CODE_278809:        85 00         STA $00                   
CODE_27880B:        AC 60 05      LDY $0560                 
CODE_27880E:        B9 56 AF      LDA.w DATA_21AF56,y               
CODE_278811:        C5 00         CMP $00                   
CODE_278813:        F0 0E         BEQ CODE_278823           
CODE_278815:        B9 3A AF      LDA.w DATA_21AF3A,y               
CODE_278818:        C9 FF         CMP #$FF                  
CODE_27881A:        F0 0B         BEQ CODE_278827           
CODE_27881C:        38            SEC                       
CODE_27881D:        E5 00         SBC $00                   
CODE_27881F:        C9 02         CMP #$02                  
CODE_278821:        B0 04         BCS CODE_278827                   
CODE_278823:        22 C6 A4 27   JSL CODE_27A4C6           
CODE_278827:        A9 81         LDA #$81                  
CODE_278829:        8D FC 05      STA $05FC                 
CODE_27882C:        60            RTS                       

CODE_27882D:        20 20 89      JSR CODE_278920           
CODE_278830:        A5 15         LDA $15                   
CODE_278832:        29 07         AND #$07                  
CODE_278834:        D0 12         BNE CODE_278848           
CODE_278836:        AC 03 1A      LDY $1A03                 
CODE_278839:        AD 0F 1A      LDA $1A0F                 
CODE_27883C:        D9 CE 84      CMP.w DATA_2184CE,y               
CODE_27883F:        F0 07         BEQ CODE_278848           
CODE_278841:        18            CLC                       
CODE_278842:        79 C6 84      ADC.w DATA_2184C6,y               
CODE_278845:        8D 0F 1A      STA $1A0F                 
CODE_278848:        AD 02 1A      LDA $1A02                 
CODE_27884B:        0A            ASL A                     
CODE_27884C:        0D 03 1A      ORA $1A03                 
CODE_27884F:        A8            TAY                       
CODE_278850:        AD 0D 1A      LDA $1A0D                 
CODE_278853:        D9 D0 84      CMP.w DATA_2184D0,y               
CODE_278856:        D0 08         BNE CODE_278860           
CODE_278858:        AD 03 1A      LDA $1A03                 
CODE_27885B:        49 01         EOR #$01                  
CODE_27885D:        8D 03 1A      STA $1A03                 
CODE_278860:        AD 02 1A      LDA $1A02                 
CODE_278863:        C9 04         CMP #$04                  
CODE_278865:        90 03         BCC CODE_27886A           
CODE_278867:        4C C0 87      JMP CODE_2787C0           

CODE_27886A:        A0 00         LDY #$00                  
CODE_27886C:        A9 00         LDA #$00                  
CODE_27886E:        20 C7 87      JSR CODE_2787C7           
CODE_278871:        AD 44 05      LDA $0544                 
CODE_278874:        D0 18         BNE CODE_27888E           
CODE_278876:        A8            TAY                       
CODE_278877:        AD 6F 05      LDA $056F                 
CODE_27887A:        D0 05         BNE CODE_278881           
CODE_27887C:        A5 BB         LDA $BB                   
CODE_27887E:        F0 01         BEQ CODE_278881           
CODE_278880:        C8            INY                       
CODE_278881:        A5 82         LDA $82                   
CODE_278883:        D9 C4 84      CMP.w DATA_2184C4,y               
CODE_278886:        A8            TAY                       
CODE_278887:        6A            ROR A                     
CODE_278888:        C0 80         CPY #$80                  
CODE_27888A:        6A            ROR A                     
CODE_27888B:        8D 84 05      STA $0584                 
CODE_27888E:        60            RTS                       

CODE_27888F:        EE 13 1A      INC $1A13                 
CODE_278892:        A9 00         LDA #$00                  
CODE_278894:        8D 0E 1A      STA $1A0E                 
CODE_278897:        8D 12 1A      STA $1A12                 
CODE_27889A:        AD 04 1A      LDA $1A04                 
CODE_27889D:        C9 05         CMP #$05                  
CODE_27889F:        B0 77         BCS CODE_278918                   
CODE_2788A1:        C2 20         REP #$20                  
CODE_2788A3:        AD 65 05      LDA $0565                 
CODE_2788A6:        29 03 00      AND #$0003                
CODE_2788A9:        D0 03         BNE CODE_2788AE           
CODE_2788AB:        EE CE 02      INC $02CE                 
CODE_2788AE:        AD 65 05      LDA $0565                 
CODE_2788B1:        29 03 00      AND #$0003                
CODE_2788B4:        D0 03         BNE CODE_2788B9           
CODE_2788B6:        CE CC 02      DEC $02CC                 
CODE_2788B9:        E2 20         SEP #$20                  
CODE_2788BB:        A9 08         LDA #$08                  
CODE_2788BD:        8D 0E 1A      STA $1A0E                 
CODE_2788C0:        A9 F8         LDA #$F8                  
CODE_2788C2:        8D 0F 1A      STA $1A0F                 
CODE_2788C5:        AD 13 1A      LDA $1A13                 
CODE_2788C8:        4A            LSR A                     
CODE_2788C9:        90 03         BCC CODE_2788CE           
CODE_2788CB:        EE 12 1A      INC $1A12                 
CODE_2788CE:        AD FF 05      LDA $05FF                 
CODE_2788D1:        D0 19         BNE CODE_2788EC           
CODE_2788D3:        90 48         BCC CODE_27891D           
CODE_2788D5:        EE 0C 1A      INC $1A0C                 
CODE_2788D8:        D0 03         BNE CODE_2788DD           
CODE_2788DA:        EE 0A 1A      INC $1A0A                 
CODE_2788DD:        AD 0D 1A      LDA $1A0D                 
CODE_2788E0:        D0 05         BNE CODE_2788E7           
CODE_2788E2:        EE 04 1A      INC $1A04                 
CODE_2788E5:        D0 29         BNE CODE_278910           
CODE_2788E7:        CE 0D 1A      DEC $1A0D                 
CODE_2788EA:        B0 31         BCS CODE_27891D                   
CODE_2788EC:        4A            LSR A                     
CODE_2788ED:        4A            LSR A                     
CODE_2788EE:        AD 04 1A      LDA $1A04                 
CODE_2788F1:        2A            ROL A                     
CODE_2788F2:        A8            TAY                       
CODE_2788F3:        AD 0C 1A      LDA $1A0C                 
CODE_2788F6:        18            CLC                       
CODE_2788F7:        69 04         ADC #$04                  
CODE_2788F9:        8D 0C 1A      STA $1A0C                 
CODE_2788FC:        90 03         BCC CODE_278901           
CODE_2788FE:        EE 0A 1A      INC $1A0A                 
CODE_278901:        29 F0         AND #$F0                  
CODE_278903:        D9 DC 84      CMP.w DATA_2184DC,y               
CODE_278906:        D0 15         BNE CODE_27891D           
CODE_278908:        8D 0C 1A      STA $1A0C                 
CODE_27890B:        A9 EF         LDA #$EF                  
CODE_27890D:        8D 0D 1A      STA $1A0D                 
CODE_278910:        AC FF 05      LDY $05FF                 
CODE_278913:        C8            INY                       
CODE_278914:        C0 04         CPY #$04                  
CODE_278916:        90 02         BCC CODE_27891A           
CODE_278918:        A0 00         LDY #$00                  
CODE_27891A:        8C FF 05      STY $05FF                 
CODE_27891D:        4C 97 86      JMP CODE_278697           

CODE_278920:        A2 01         LDX #$01                  
CODE_278922:        BD 0E 1A      LDA $1A0E,x               
CODE_278925:        0A            ASL A                     
CODE_278926:        0A            ASL A                     
CODE_278927:        0A            ASL A                     
CODE_278928:        0A            ASL A                     
CODE_278929:        18            CLC                       
CODE_27892A:        7D 10 1A      ADC $1A10,x               
CODE_27892D:        9D 10 1A      STA $1A10,x               
CODE_278930:        08            PHP                       
CODE_278931:        08            PHP                       
CODE_278932:        A0 00         LDY #$00                  
CODE_278934:        BD 0E 1A      LDA $1A0E,x               
CODE_278937:        4A            LSR A                     
CODE_278938:        4A            LSR A                     
CODE_278939:        4A            LSR A                     
CODE_27893A:        4A            LSR A                     
CODE_27893B:        C9 08         CMP #$08                  
CODE_27893D:        90 03         BCC CODE_278942           
CODE_27893F:        09 F0         ORA #$F0                  
CODE_278941:        88            DEY                       
CODE_278942:        28            PLP                       
CODE_278943:        48            PHA                       
CODE_278944:        7D 0C 1A      ADC $1A0C,x               
CODE_278947:        9D 0C 1A      STA $1A0C,x               
CODE_27894A:        98            TYA                       
CODE_27894B:        7D 0A 1A      ADC $1A0A,x               
CODE_27894E:        9D 0A 1A      STA $1A0A,x               
CODE_278951:        68            PLA                       
CODE_278952:        28            PLP                       
CODE_278953:        69 00         ADC #$00                  
CODE_278955:        8D 12 1A      STA $1A12                 
CODE_278958:        60            RTS                       

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

CODE_278A00:        A5 17         LDA $17
CODE_278A02:        29 03         AND #$03
CODE_278A04:        A8            TAY
CODE_278A05:        B9 6B AF      LDA.w DATA_21AF6B,y               
CODE_278A08:        85 8B         STA $8B                   
CODE_278A0A:        A5 17         LDA $17                   
CODE_278A0C:        4A            LSR A                     
CODE_278A0D:        4A            LSR A                     
CODE_278A0E:        29 03         AND #$03                  
CODE_278A10:        A8            TAY                       
CODE_278A11:        B9 6B AF      LDA.w DATA_21AF6B,y               
CODE_278A14:        85 9D         STA $9D                   
CODE_278A16:        60            RTS                       

CODE_278A17:        C2 20         REP #$20                  
CODE_278A19:        AD E3 02      LDA $02E3                 
CODE_278A1C:        F0 43         BEQ CODE_278A61           
CODE_278A1E:        C9 10 00      CMP #$0010                
CODE_278A21:        F0 05         BEQ CODE_278A28           
CODE_278A23:        CE E3 02      DEC $02E3                 
CODE_278A26:        80 39         BRA CODE_278A61           

CODE_278A28:        E2 20         SEP #$20                  
CODE_278A2A:        A0 01         LDY #$01                  
CODE_278A2C:        AD EE 05      LDA $05EE                 
CODE_278A2F:        0D EF 05      ORA $05EF                 
CODE_278A32:        D0 01         BNE CODE_278A35           
CODE_278A34:        C8            INY                       
CODE_278A35:        0D F0 05      ORA $05F0                 
CODE_278A38:        F0 2A         BEQ CODE_278A64           
CODE_278A3A:        98            TYA                       
CODE_278A3B:        AA            TAX                       
CODE_278A3C:        BD 8B AF      LDA.w DATA_21AF8B,x               
CODE_278A3F:        8D 9C 06      STA $069C                 
CODE_278A42:        DE EE 05      DEC $05EE,x               
CODE_278A45:        10 08         BPL CODE_278A4F           
CODE_278A47:        A9 09         LDA #$09                  
CODE_278A49:        9D EE 05      STA $05EE,x               
CODE_278A4C:        CA            DEX                       
CODE_278A4D:        10 F3         BPL CODE_278A42           
CODE_278A4F:        A6 9B         LDX $9B                   
CODE_278A51:        AD 43 21      LDA $2143                 
CODE_278A54:        29 7F         AND #$7F                  
CODE_278A56:        C9 4B         CMP #$4B                  
CODE_278A58:        F0 05         BEQ CODE_278A5F           
CODE_278A5A:        A9 4B         LDA #$4B                  
CODE_278A5C:        8D 03 12      STA $1203                 
CODE_278A5F:        A9 01         LDA #$01                  
CODE_278A61:        E2 20         SEP #$20                  
CODE_278A63:        6B            RTL                       

CODE_278A64:        A9 4C         LDA #$4C                  
CODE_278A66:        8D 03 12      STA $1203                 
CODE_278A69:        A9 00         LDA #$00                  
CODE_278A6B:        8D E3 02      STA $02E3                 
CODE_278A6E:        8D E4 02      STA $02E4                 
CODE_278A71:        6B            RTL                       

CODE_278A72:        A0 05         LDY #$05                  
CODE_278A74:        B9 C8 1F      LDA $1FC8,y               
CODE_278A77:        F0 05         BEQ CODE_278A7E           
CODE_278A79:        88            DEY                       
CODE_278A7A:        10 F8         BPL CODE_278A74           
CODE_278A7C:        38            SEC                       
CODE_278A7D:        6B            RTL                       

CODE_278A7E:        22 5F A8 27   JSL CODE_27A85F           
CODE_278A82:        D0 F8         BNE CODE_278A7C           
CODE_278A84:        18            CLC                       
CODE_278A85:        6B            RTL                       

CODE_278A86:        48            PHA                       
CODE_278A87:        98            TYA                       
CODE_278A88:        AA            TAX                       
CODE_278A89:        68            PLA                       
CODE_278A8A:        18            CLC                       
CODE_278A8B:        69 05         ADC #$05                  
CODE_278A8D:        22 94 8A 27   JSL CODE_278A94           
CODE_278A91:        A6 9B         LDX $9B                   
CODE_278A93:        6B            RTL                       

CODE_278A94:        48            PHA                       
CODE_278A95:        84 0E         STY $0E                   
CODE_278A97:        20 DB 8A      JSR CODE_278ADB           
CODE_278A9A:        68            PLA                       
CODE_278A9B:        99 9F 07      STA $079F,y               
CODE_278A9E:        B5 56         LDA $56,x                 
CODE_278AA0:        EB            XBA                       
CODE_278AA1:        B5 71         LDA $71,x                 
CODE_278AA3:        C2 20         REP #$20                  
CODE_278AA5:        38            SEC                       
CODE_278AA6:        ED 16 02      SBC $0216                 
CODE_278AA9:        38            SEC                       
CODE_278AAA:        E9 10 00      SBC #$0010                
CODE_278AAD:        10 03         BPL CODE_278AB2           
CODE_278AAF:        A9 05 00      LDA #$0005                
CODE_278AB2:        C9 C0 00      CMP #$00C0                
CODE_278AB5:        90 03         BCC CODE_278ABA           
CODE_278AB7:        A9 C0 00      LDA #$00C0                
CODE_278ABA:        E2 20         SEP #$20                  
CODE_278ABC:        99 A9 07      STA $07A9,y               
CODE_278ABF:        B5 44         LDA $44,x                 
CODE_278AC1:        EB            XBA                       
CODE_278AC2:        B5 5F         LDA $5F,x                 
CODE_278AC4:        C2 20         REP #$20                  
CODE_278AC6:        38            SEC                       
CODE_278AC7:        ED 10 02      SBC $0210                 
CODE_278ACA:        E2 20         SEP #$20                  
CODE_278ACC:        99 AE 07      STA $07AE,y               
CODE_278ACF:        EB            XBA                       
CODE_278AD0:        99 51 02      STA $0251,y               
CODE_278AD3:        A9 30         LDA #$30                  
CODE_278AD5:        99 A4 07      STA $07A4,y               
CODE_278AD8:        A4 0E         LDY $0E                   
CODE_278ADA:        6B            RTL                       

CODE_278ADB:        A0 04         LDY #$04                  
CODE_278ADD:        B9 9F 07      LDA $079F,y               
CODE_278AE0:        F0 05         BEQ CODE_278AE7           
CODE_278AE2:        88            DEY                       
CODE_278AE3:        10 F8         BPL CODE_278ADD           
CODE_278AE5:        A0 04         LDY #$04                  
CODE_278AE7:        60            RTS                       

CODE_278AE8:        A0 03         LDY #$03                  
CODE_278AEA:        B9 B4 1F      LDA $1FB4,y               
CODE_278AED:        F0 05         BEQ CODE_278AF4           
CODE_278AEF:        88            DEY                       
CODE_278AF0:        10 F8         BPL CODE_278AEA           
CODE_278AF2:        A0 03         LDY #$03                  
CODE_278AF4:        A9 01         LDA #$01                  
CODE_278AF6:        8D 03 12      STA $1203                 
CODE_278AF9:        A9 01         LDA #$01                  
CODE_278AFB:        99 B4 1F      STA $1FB4,y               
CODE_278AFE:        A5 00         LDA $00                   
CODE_278B00:        38            SEC                       
CODE_278B01:        ED 43 05      SBC $0543                 
CODE_278B04:        E9 18         SBC #$18                  
CODE_278B06:        99 B8 1F      STA $1FB8,y               
CODE_278B09:        A5 0E         LDA $0E                   
CODE_278B0B:        EB            XBA                       
CODE_278B0C:        A5 01         LDA $01                   
CODE_278B0E:        C2 20         REP #$20                  
CODE_278B10:        38            SEC                       
CODE_278B11:        ED 10 02      SBC $0210                 
CODE_278B14:        E2 20         SEP #$20                  
CODE_278B16:        99 BC 1F      STA $1FBC,y               
CODE_278B19:        EB            XBA                       
CODE_278B1A:        99 4C 02      STA $024C,y               
CODE_278B1D:        A9 FB         LDA #$FB                  
CODE_278B1F:        99 C0 1F      STA $1FC0,y               
CODE_278B22:        A9 01         LDA #$01                  
CODE_278B24:        99 C4 1F      STA $1FC4,y               
CODE_278B27:        6B            RTL                       

CODE_278B28:        B5 A7         LDA $A7,x                 
CODE_278B2A:        29 03         AND #$03                  
CODE_278B2C:        D0 19         BNE CODE_278B47           
CODE_278B2E:        AD 76 1F      LDA $1F76                 
CODE_278B31:        38            SEC                       
CODE_278B32:        E9 34         SBC #$34                  
CODE_278B34:        C9 02         CMP #$02                  
CODE_278B36:        B0 0F         BCS CODE_278B47                   
CODE_278B38:        A8            TAY                       
CODE_278B39:        B5 5F         LDA $5F,x                 
CODE_278B3B:        79 8E AF      ADC.w DATA_21AF8E,y               
CODE_278B3E:        95 5F         STA $5F,x                 
CODE_278B40:        B5 44         LDA $44,x                 
CODE_278B42:        79 90 AF      ADC.w DATA_21AF90,y               
CODE_278B45:        95 44         STA $44,x                 
CODE_278B47:        6B            RTL                       

CODE_278B48:        AD 67 05      LDA $0567                 
CODE_278B4B:        D0 FA         BNE CODE_278B47           
CODE_278B4D:        AD 76 1F      LDA $1F76                 
CODE_278B50:        38            SEC                       
CODE_278B51:        E9 34         SBC #$34                  
CODE_278B53:        C9 02         CMP #$02                  
CODE_278B55:        B0 F0         BCS CODE_278B47                   
CODE_278B57:        A8            TAY                       
CODE_278B58:        B9 8E AF      LDA.w DATA_21AF8E,y               
CODE_278B5B:        A0 FF         LDY #$FF                  
CODE_278B5D:        55 8C         EOR $8C,x                 
CODE_278B5F:        30 02         BMI CODE_278B63           
CODE_278B61:        A0 01         LDY #$01                  
CODE_278B63:        8C B5 07      STY $07B5                 
CODE_278B66:        6B            RTL                       

CODE_278B67:        B5 A7         LDA $A7,x                 
CODE_278B69:        10 19         BPL CODE_278B84           
CODE_278B6B:        B5 71         LDA $71,x                 
CODE_278B6D:        38            SEC                       
CODE_278B6E:        ED 43 05      SBC $0543                 
CODE_278B71:        29 F0         AND #$F0                  
CODE_278B73:        18            CLC                       
CODE_278B74:        69 01         ADC #$01                  
CODE_278B76:        18            CLC                       
CODE_278B77:        6D 43 05      ADC $0543                 
CODE_278B7A:        95 71         STA $71,x                 
CODE_278B7C:        A9 00         LDA #$00                  
CODE_278B7E:        69 00         ADC #$00                  
CODE_278B80:        95 56         STA $56,x                 
CODE_278B82:        80 0A         BRA CODE_278B8E           

CODE_278B84:        B5 71         LDA $71,x                 
CODE_278B86:        29 F0         AND #$F0                  
CODE_278B88:        18            CLC                       
CODE_278B89:        6D B3 06      ADC $06B3                 
CODE_278B8C:        95 71         STA $71,x                 
CODE_278B8E:        A9 00         LDA #$00                  
CODE_278B90:        95 9E         STA $9E,x                 
CODE_278B92:        6B            RTL                       

CODE_278B93:        A9 FF         LDA #$FF                  
CODE_278B95:        D0 06         BNE CODE_278B9D           
CODE_278B97:        A9 08         LDA #$08                  
CODE_278B99:        D0 02         BNE CODE_278B9D           
CODE_278B9B:        A9 04         LDA #$04                  
CODE_278B9D:        48            PHA                       
CODE_278B9E:        E0 05         CPX #$05                  
CODE_278BA0:        D0 08         BNE CODE_278BAA           
CODE_278BA2:        BD 4F 1A      LDA $1A4F,x               
CODE_278BA5:        F0 03         BEQ CODE_278BAA           
CODE_278BA7:        DE 4F 1A      DEC $1A4F,x               
CODE_278BAA:        B5 A7         LDA $A7,x                 
CODE_278BAC:        8D EF 1C      STA $1CEF                 
CODE_278BAF:        A9 00         LDA #$00                  
CODE_278BB1:        95 A7         STA $A7,x                 
CODE_278BB3:        8D B3 06      STA $06B3                 
CODE_278BB6:        8D B5 07      STA $07B5                 
CODE_278BB9:        22 F3 8C 27   JSL CODE_278CF3           
CODE_278BBD:        68            PLA                       
CODE_278BBE:        85 00         STA $00                   
CODE_278BC0:        AC 4F 06      LDY $064F                 
CODE_278BC3:        AD 4C 06      LDA $064C                 
CODE_278BC6:        D9 9A 1E      CMP $1E9A,y               
CODE_278BC9:        90 0B         BCC CODE_278BD6           
CODE_278BCB:        A9 01         LDA #$01                  
CODE_278BCD:        B4 8C         LDY $8C,x                 
CODE_278BCF:        10 01         BPL CODE_278BD2           
CODE_278BD1:        0A            ASL A                     
CODE_278BD2:        15 A7         ORA $A7,x                 
CODE_278BD4:        95 A7         STA $A7,x                 
CODE_278BD6:        AC 4E 06      LDY $064E                 
CODE_278BD9:        B5 9E         LDA $9E,x                 
CODE_278BDB:        10 1E         BPL CODE_278BFB           
CODE_278BDD:        AD 63 05      LDA $0563                 
CODE_278BE0:        F0 0A         BEQ CODE_278BEC           
CODE_278BE2:        AD 4B 06      LDA $064B                 
CODE_278BE5:        D9 96 1E      CMP $1E96,y               
CODE_278BE8:        90 10         BCC CODE_278BFA           
CODE_278BEA:        B0 08         BCS CODE_278BF4                   
CODE_278BEC:        AD 4B 06      LDA $064B                 
CODE_278BEF:        D9 9A 1E      CMP $1E9A,y               
CODE_278BF2:        90 06         BCC CODE_278BFA           
CODE_278BF4:        B5 A7         LDA $A7,x                 
CODE_278BF6:        09 08         ORA #$08                  
CODE_278BF8:        95 A7         STA $A7,x                 
CODE_278BFA:        6B            RTL                       

CODE_278BFB:        AD 4B 06      LDA $064B                 
CODE_278BFE:        D9 96 1E      CMP $1E96,y               
CODE_278C01:        B0 03         BCS CODE_278C06                   
CODE_278C03:        4C B1 8C      JMP CODE_278CB1           

CODE_278C06:        AC 63 05      LDY $0563                 
CODE_278C09:        D0 03         BNE CODE_278C0E           
CODE_278C0B:        4C 9D 8C      JMP CODE_278C9D           

CODE_278C0E:        C9 A8         CMP #$A8                  
CODE_278C10:        F0 10         BEQ CODE_278C22           
CODE_278C12:        C9 AA         CMP #$AA                  
CODE_278C14:        F0 0C         BEQ CODE_278C22           
CODE_278C16:        C9 37         CMP #$37                  
CODE_278C18:        F0 08         BEQ CODE_278C22           
CODE_278C1A:        C9 AB         CMP #$AB                  
CODE_278C1C:        F0 04         BEQ CODE_278C22           
CODE_278C1E:        C9 F9         CMP #$F9                  
CODE_278C20:        D0 03         BNE CODE_278C25           
CODE_278C22:        4C D4 8C      JMP CODE_278CD4           

CODE_278C25:        B5 71         LDA $71,x                 
CODE_278C27:        29 0F         AND #$0F                  
CODE_278C29:        85 00         STA $00                   
CODE_278C2B:        A5 0F         LDA $0F                   
CODE_278C2D:        29 0F         AND #$0F                  
CODE_278C2F:        85 0F         STA $0F                   
CODE_278C31:        AC 0D 06      LDY $060D                 
CODE_278C34:        B9 70 AD      LDA.w DATA_21AD70,y               
CODE_278C37:        C9 80         CMP #$80                  
CODE_278C39:        D0 03         BNE CODE_278C3E           
CODE_278C3B:        4C B1 8C      JMP CODE_278CB1           

CODE_278C3E:        98            TYA                       
CODE_278C3F:        0A            ASL A                     
CODE_278C40:        0A            ASL A                     
CODE_278C41:        0A            ASL A                     
CODE_278C42:        0A            ASL A                     
CODE_278C43:        18            CLC                       
CODE_278C44:        65 0F         ADC $0F                   
CODE_278C46:        A8            TAY                       
CODE_278C47:        B9 0B AC      LDA.w DATA_21AC0B,y               
CODE_278C4A:        29 0F         AND #$0F                  
CODE_278C4C:        85 01         STA $01                   
CODE_278C4E:        A5 00         LDA $00                   
CODE_278C50:        C9 0C         CMP #$0C                  
CODE_278C52:        B0 04         BCS CODE_278C58                   
CODE_278C54:        C5 01         CMP $01                   
CODE_278C56:        90 59         BCC CODE_278CB1           
CODE_278C58:        A5 01         LDA $01                   
CODE_278C5A:        8D B3 06      STA $06B3                 
CODE_278C5D:        B5 A7         LDA $A7,x                 
CODE_278C5F:        09 04         ORA #$04                  
CODE_278C61:        95 A7         STA $A7,x                 
CODE_278C63:        AC 0D 06      LDY $060D                 
CODE_278C66:        B5 8C         LDA $8C,x                 
CODE_278C68:        4A            LSR A                     
CODE_278C69:        4A            LSR A                     
CODE_278C6A:        4A            LSR A                     
CODE_278C6B:        4A            LSR A                     
CODE_278C6C:        D0 02         BNE CODE_278C70           
CODE_278C6E:        A9 01         LDA #$01                  
CODE_278C70:        C9 08         CMP #$08                  
CODE_278C72:        90 02         BCC CODE_278C76           
CODE_278C74:        09 F0         ORA #$F0                  
CODE_278C76:        BE 70 AD      LDX.w DATA_21AD70,y               
CODE_278C79:        E0 00         CPX #$00                  
CODE_278C7B:        D0 03         BNE CODE_278C80           
CODE_278C7D:        A2 00         LDX #$00                  
CODE_278C7F:        8A            TXA                       
CODE_278C80:        E0 00         CPX #$00                  
CODE_278C82:        10 04         BPL CODE_278C88           
CODE_278C84:        22 59 A8 27   JSL CODE_27A859           ;Invert Accumulator (8-bit)
CODE_278C88:        86 00         STX $00                   
CODE_278C8A:        A6 9B         LDX $9B                   
CODE_278C8C:        9D B6 07      STA $07B6,x               
CODE_278C8F:        A5 00         LDA $00                   
CODE_278C91:        B4 8C         LDY $8C,x                 
CODE_278C93:        10 04         BPL CODE_278C99           
CODE_278C95:        22 59 A8 27   JSL CODE_27A859           ;Invert Accumulator (8-bit)
CODE_278C99:        8D B5 07      STA $07B5                 
CODE_278C9C:        6B            RTL                       

CODE_278C9D:        AD 8B 05      LDA $058B                 
CODE_278CA0:        D0 08         BNE CODE_278CAA           
CODE_278CA2:        B5 71         LDA $71,x                 
CODE_278CA4:        29 0F         AND #$0F                  
CODE_278CA6:        C5 00         CMP $00                   
CODE_278CA8:        B0 06         BCS CODE_278CB0                   
CODE_278CAA:        B5 A7         LDA $A7,x                 
CODE_278CAC:        09 04         ORA #$04                  
CODE_278CAE:        95 A7         STA $A7,x                 
CODE_278CB0:        6B            RTL                       

CODE_278CB1:        AD 63 05      LDA $0563                 
CODE_278CB4:        F0 1D         BEQ CODE_278CD3           
CODE_278CB6:        A0 00         LDY #$00                  
CODE_278CB8:        BD B6 07      LDA $07B6,x               
CODE_278CBB:        F0 16         BEQ CODE_278CD3           
CODE_278CBD:        10 01         BPL CODE_278CC0           
CODE_278CBF:        88            DEY                       
CODE_278CC0:        18            CLC                       
CODE_278CC1:        75 71         ADC $71,x                 
CODE_278CC3:        95 71         STA $71,x                 
CODE_278CC5:        98            TYA                       
CODE_278CC6:        75 56         ADC $56,x                 
CODE_278CC8:        95 56         STA $56,x                 
CODE_278CCA:        A9 00         LDA #$00                  
CODE_278CCC:        9D B6 07      STA $07B6,x               
CODE_278CCF:        22 93 8B 27   JSL CODE_278B93           
CODE_278CD3:        6B            RTL                       

CODE_278CD4:        BD 61 06      LDA $0661,x               
CODE_278CD7:        C9 06         CMP #$06                  
CODE_278CD9:        F0 17         BEQ CODE_278CF2           
CODE_278CDB:        C9 04         CMP #$04                  
CODE_278CDD:        F0 13         BEQ CODE_278CF2           
CODE_278CDF:        B5 71         LDA $71,x                 
CODE_278CE1:        29 F0         AND #$F0                  
CODE_278CE3:        38            SEC                       
CODE_278CE4:        E9 01         SBC #$01                  
CODE_278CE6:        95 71         STA $71,x                 
CODE_278CE8:        B5 56         LDA $56,x                 
CODE_278CEA:        E9 00         SBC #$00                  
CODE_278CEC:        95 56         STA $56,x                 
CODE_278CEE:        22 93 8B 27   JSL CODE_278B93           
CODE_278CF2:        6B            RTL                       

CODE_278CF3:        A0 6C         LDY #$6C                  
CODE_278CF5:        22 13 8E 27   JSL CODE_278E13           
CODE_278CF9:        0A            ASL A                     
CODE_278CFA:        2A            ROL A                     
CODE_278CFB:        2A            ROL A                     
CODE_278CFC:        29 03         AND #$03                  
CODE_278CFE:        85 00         STA $00                   
CODE_278D00:        A8            TAY                       
CODE_278D01:        BD 71 06      LDA $0671,x               
CODE_278D04:        C9 64         CMP #$64                  
CODE_278D06:        D0 0A         BNE CODE_278D12           
CODE_278D08:        A5 B3         LDA $B3                   
CODE_278D0A:        C9 F0         CMP #$F0                  
CODE_278D0C:        D0 04         BNE CODE_278D12           
CODE_278D0E:        A9 80         LDA #$80                  
CODE_278D10:        85 B3         STA $B3                   
CODE_278D12:        A5 B3         LDA $B3                   
CODE_278D14:        D9 96 1E      CMP $1E96,y               
CODE_278D17:        B0 4D         BCS CODE_278D66                   
CODE_278D19:        A2 00         LDX #$00                  
CODE_278D1B:        C9 D7         CMP #$D7                  
CODE_278D1D:        F0 19         BEQ CODE_278D38           
CODE_278D1F:        C9 E0         CMP #$E0                  
CODE_278D21:        F0 15         BEQ CODE_278D38           
CODE_278D23:        C9 E1         CMP #$E1                  
CODE_278D25:        F0 11         BEQ CODE_278D38           
CODE_278D27:        AD 60 05      LDA $0560                 
CODE_278D2A:        0A            ASL A                     
CODE_278D2B:        0A            ASL A                     
CODE_278D2C:        18            CLC                       
CODE_278D2D:        65 00         ADC $00                   
CODE_278D2F:        A8            TAY                       
CODE_278D30:        B9 84 AD      LDA.w DATA_21AD84,y               
CODE_278D33:        C5 B3         CMP $B3                   
CODE_278D35:        B0 01         BCS CODE_278D38                   
CODE_278D37:        E8            INX                       
CODE_278D38:        8A            TXA                       
CODE_278D39:        A6 9B         LDX $9B                   
CODE_278D3B:        DD B7 06      CMP $06B7,x               
CODE_278D3E:        F0 23         BEQ CODE_278D63           
CODE_278D40:        48            PHA                       
CODE_278D41:        A5 B3         LDA $B3                   
CODE_278D43:        A4 00         LDY $00                   
CODE_278D45:        D9 96 1E      CMP $1E96,y               
CODE_278D48:        68            PLA                       
CODE_278D49:        B0 18         BCS CODE_278D63                  
CODE_278D4B:        48            PHA                       
CODE_278D4C:        BD E1 1F      LDA $1FE1,x               
CODE_278D4F:        48            PHA                       
CODE_278D50:        0A            ASL A                     
CODE_278D51:        2A            ROL A                     
CODE_278D52:        2A            ROL A                     
CODE_278D53:        29 03         AND #$03                  
CODE_278D55:        A8            TAY                       
CODE_278D56:        68            PLA                       
CODE_278D57:        D9 96 1E      CMP $1E96,y               
CODE_278D5A:        68            PLA                       
CODE_278D5B:        B0 06         BCS CODE_278D63                   
CODE_278D5D:        48            PHA                       
CODE_278D5E:        22 34 8F 27   JSL CODE_278F34           
CODE_278D62:        68            PLA                       
CODE_278D63:        9D B7 06      STA $06B7,x               
CODE_278D66:        A5 B3         LDA $B3                   
CODE_278D68:        9D E1 1F      STA $1FE1,x               
CODE_278D6B:        BC 71 06      LDY $0671,x               
CODE_278D6E:        B9 FB B0      LDA.w DATA_21B0FB,y               
CODE_278D71:        29 F0         AND #$F0                  
CODE_278D73:        4A            LSR A                     
CODE_278D74:        48            PHA                       
CODE_278D75:        A8            TAY                       
CODE_278D76:        B5 9E         LDA $9E,x                 
CODE_278D78:        10 02         BPL CODE_278D7C           
CODE_278D7A:        C8            INY                       
CODE_278D7B:        C8            INY                       
CODE_278D7C:        22 13 8E 27   JSL CODE_278E13           
CODE_278D80:        8D 76 1F      STA $1F76                 
CODE_278D83:        8D 4B 06      STA $064B                 
CODE_278D86:        48            PHA                       
CODE_278D87:        AD 60 05      LDA $0560                 
CODE_278D8A:        C9 02         CMP #$02                  
CODE_278D8C:        D0 12         BNE CODE_278DA0           
CODE_278D8E:        A5 B3         LDA $B3                   
CODE_278D90:        C9 49         CMP #$49                  
CODE_278D92:        F0 04         BEQ CODE_278D98           
CODE_278D94:        C9 4A         CMP #$4A                  
CODE_278D96:        D0 08         BNE CODE_278DA0           
CODE_278D98:        FE EB 06      INC $06EB,x               
CODE_278D9B:        A9 06         LDA #$06                  
CODE_278D9D:        9D 61 06      STA $0661,x               
CODE_278DA0:        68            PLA                       
CODE_278DA1:        0A            ASL A                     
CODE_278DA2:        2A            ROL A                     
CODE_278DA3:        2A            ROL A                     
CODE_278DA4:        29 03         AND #$03                  
CODE_278DA6:        8D 4E 06      STA $064E                 
CODE_278DA9:        A8            TAY                       
CODE_278DAA:        AD 7B 1F      LDA $1F7B                 
CODE_278DAD:        85 0F         STA $0F                   
CODE_278DAF:        AD 63 05      LDA $0563                 
CODE_278DB2:        F0 22         BEQ CODE_278DD6           
CODE_278DB4:        A5 B3         LDA $B3                   
CODE_278DB6:        D9 96 1E      CMP $1E96,y               
CODE_278DB9:        90 1B         BCC CODE_278DD6           
CODE_278DBB:        48            PHA                       
CODE_278DBC:        98            TYA                       
CODE_278DBD:        0A            ASL A                     
CODE_278DBE:        AA            TAX                       
CODE_278DBF:        BD D0 AA      LDA.w DATA_21AAD0,x               
CODE_278DC2:        85 02         STA $02                   
CODE_278DC4:        BD D1 AA      LDA.w DATA_21AAD0+1,x               
CODE_278DC7:        85 03         STA $03                   
CODE_278DC9:        68            PLA                       
CODE_278DCA:        38            SEC                       
CODE_278DCB:        F9 96 1E      SBC $1E96,y               
CODE_278DCE:        A8            TAY                       
CODE_278DCF:        B1 02         LDA ($02),y               
CODE_278DD1:        8D 0D 06      STA $060D                 
CODE_278DD4:        A6 9B         LDX $9B                   
CODE_278DD6:        A9 00         LDA #$00                  
CODE_278DD8:        8D 77 1F      STA $1F77                 
CODE_278DDB:        68            PLA                       
CODE_278DDC:        C9 08         CMP #$08                  
CODE_278DDE:        D0 15         BNE CODE_278DF5           
CODE_278DE0:        AC 63 05      LDY $0563                 
CODE_278DE3:        F0 10         BEQ CODE_278DF5           
CODE_278DE5:        48            PHA                       
CODE_278DE6:        AD EF 1C      LDA $1CEF                 
CODE_278DE9:        29 04         AND #$04                  
CODE_278DEB:        A8            TAY                       
CODE_278DEC:        68            PLA                       
CODE_278DED:        C0 00         CPY #$00                  
CODE_278DEF:        F0 04         BEQ CODE_278DF5           
CODE_278DF1:        A0 68         LDY #$68                  
CODE_278DF3:        80 05         BRA CODE_278DFA           

CODE_278DF5:        A8            TAY                       
CODE_278DF6:        C8            INY                       
CODE_278DF7:        C8            INY                       
CODE_278DF8:        C8            INY                       
CODE_278DF9:        C8            INY                       
CODE_278DFA:        B5 8C         LDA $8C,x                 
CODE_278DFC:        30 02         BMI CODE_278E00           
CODE_278DFE:        C8            INY                       
CODE_278DFF:        C8            INY                       
CODE_278E00:        22 13 8E 27   JSL CODE_278E13           
CODE_278E04:        8D 77 1F      STA $1F77                 
CODE_278E07:        8D 4C 06      STA $064C                 
CODE_278E0A:        0A            ASL A                     
CODE_278E0B:        2A            ROL A                     
CODE_278E0C:        2A            ROL A                     
CODE_278E0D:        29 03         AND #$03                  
CODE_278E0F:        8D 4F 06      STA $064F                 
CODE_278E12:        6B            RTL                       

CODE_278E13:        AD 25 04      LDA $0425                 
CODE_278E16:        F0 03         BEQ CODE_278E1B           
CODE_278E18:        4C EB 8E      JMP CODE_278EEB           

CODE_278E1B:        AD 8B 05      LDA $058B                 
CODE_278E1E:        F0 22         BEQ CODE_278E42           
CODE_278E20:        B5 71         LDA $71,x                 
CODE_278E22:        18            CLC                       
CODE_278E23:        79 CA AD      ADC.w DATA_21ADCA,y               
CODE_278E26:        38            SEC                       
CODE_278E27:        ED 43 05      SBC $0543                 
CODE_278E2A:        C9 A0         CMP #$A0                  
CODE_278E2C:        90 14         BCC CODE_278E42           
CODE_278E2E:        E9 10         SBC #$10                  
CODE_278E30:        29 F0         AND #$F0                  
CODE_278E32:        8D 79 1F      STA $1F79                 
CODE_278E35:        B5 A7         LDA $A7,x                 
CODE_278E37:        09 80         ORA #$80                  
CODE_278E39:        95 A7         STA $A7,x                 
CODE_278E3B:        A9 01         LDA #$01                  
CODE_278E3D:        8D 78 1F      STA $1F78                 
CODE_278E40:        80 18         BRA CODE_278E5A           

CODE_278E42:        B5 71         LDA $71,x                 
CODE_278E44:        18            CLC                       
CODE_278E45:        79 CA AD      ADC.w DATA_21ADCA,y               
CODE_278E48:        29 F0         AND #$F0                  
CODE_278E4A:        8D 79 1F      STA $1F79                 
CODE_278E4D:        B5 56         LDA $56,x                 
CODE_278E4F:        69 00         ADC #$00                  
CODE_278E51:        8D 78 1F      STA $1F78                 
CODE_278E54:        F0 0D         BEQ CODE_278E63           
CODE_278E56:        C9 02         CMP #$02                  
CODE_278E58:        B0 73         BCS CODE_278ECD                   
CODE_278E5A:        48            PHA                       
CODE_278E5B:        AD 79 1F      LDA $1F79                 
CODE_278E5E:        C9 B0         CMP #$B0                  
CODE_278E60:        68            PLA                       
CODE_278E61:        B0 6A         BCS CODE_278ECD                   
CODE_278E63:        29 01         AND #$01                  
CODE_278E65:        85 02         STA $02                   
CODE_278E67:        B5 5F         LDA $5F,x                 
CODE_278E69:        79 CB AD      ADC.w DATA_21ADCA+1,y               
CODE_278E6C:        8D 7B 1F      STA $1F7B                 
CODE_278E6F:        B5 44         LDA $44,x                 
CODE_278E71:        69 00         ADC #$00                  
CODE_278E73:        8D 7A 1F      STA $1F7A                 
CODE_278E76:        C9 10         CMP #$10                  
CODE_278E78:        B0 53         BCS CODE_278ECD                   
CODE_278E7A:        DA            PHX                       
CODE_278E7B:        0A            ASL A                     
CODE_278E7C:        AA            TAX                       
CODE_278E7D:        BF 00 82 21   LDA.l DATA_218200,x             
CODE_278E81:        85 00         STA $00                   
CODE_278E83:        BF 01 82 21   LDA.l DATA_218200+1,x             
CODE_278E87:        65 02         ADC $02                   
CODE_278E89:        85 01         STA $01                   
CODE_278E8B:        BD 1E 82      LDA.w DATA_21821E,x               
CODE_278E8E:        85 D8         STA $D8                   
CODE_278E90:        BD 1F 82      LDA.w DATA_21821E+1,x               
CODE_278E93:        65 02         ADC $02                   
CODE_278E95:        85 D9         STA $D9                   
CODE_278E97:        A9 7E         LDA #$7E                  
CODE_278E99:        85 02         STA $02                   
CODE_278E9B:        85 DA         STA $DA                   
CODE_278E9D:        FA            PLX                       
CODE_278E9E:        AD 7B 1F      LDA $1F7B                 
CODE_278EA1:        4A            LSR A                     
CODE_278EA2:        4A            LSR A                     
CODE_278EA3:        4A            LSR A                     
CODE_278EA4:        4A            LSR A                     
CODE_278EA5:        0D 79 1F      ORA $1F79                 
CODE_278EA8:        A8            TAY                       
CODE_278EA9:        B7 D8         LDA [$D8],y               
CODE_278EAB:        F0 18         BEQ CODE_278EC5           
CODE_278EAD:        DA            PHX                       
CODE_278EAE:        AD 0A 07      LDA $070A                 
CODE_278EB1:        0A            ASL A                     
CODE_278EB2:        AA            TAX                       
CODE_278EB3:        BD 57 AB      LDA.w DATA_21AB57,x               
CODE_278EB6:        85 DB         STA $DB                   
CODE_278EB8:        BD 58 AB      LDA.w DATA_21AB57+1,x               
CODE_278EBB:        85 DC         STA $DC                   
CODE_278EBD:        B7 00         LDA [$00],y               
CODE_278EBF:        A8            TAY                       
CODE_278EC0:        B1 DB         LDA ($DB),y               
CODE_278EC2:        FA            PLX                       
CODE_278EC3:        80 02         BRA CODE_278EC7           

CODE_278EC5:        B7 00         LDA [$00],y               
CODE_278EC7:        22 D2 8E 27   JSL CODE_278ED2           
CODE_278ECB:        80 02         BRA CODE_278ECF           

CODE_278ECD:        A9 00         LDA #$00                  
CODE_278ECF:        85 B3         STA $B3                   
CODE_278ED1:        6B            RTL                       

CODE_278ED2:        AC 67 05      LDY $0567                 
CODE_278ED5:        F0 13         BEQ CODE_278EEA           
CODE_278ED7:        A0 03         LDY #$03                  
CODE_278ED9:        D9 92 AF      CMP.w DATA_21AF92,y               
CODE_278EDC:        D0 09         BNE CODE_278EE7           
CODE_278EDE:        B9 9A AF      LDA.w DATA_21AF9A,y               
CODE_278EE1:        85 B4         STA $B4                   
CODE_278EE3:        B9 96 AF      LDA.w DATA_21AF96,y               
CODE_278EE6:        6B            RTL                       

CODE_278EE7:        88            DEY                       
CODE_278EE8:        10 EF         BPL CODE_278ED9           
CODE_278EEA:        6B            RTL                       

CODE_278EEB:        B5 71         LDA $71,x                 
CODE_278EED:        18            CLC                       
CODE_278EEE:        79 CA AD      ADC.w DATA_21ADCA,y               
CODE_278EF1:        29 F0         AND #$F0                  
CODE_278EF3:        8D 79 1F      STA $1F79                 
CODE_278EF6:        85 02         STA $02                   
CODE_278EF8:        B5 56         LDA $56,x                 
CODE_278EFA:        69 00         ADC #$00                  
CODE_278EFC:        8D 78 1F      STA $1F78                 
CODE_278EFF:        C9 10         CMP #$10                  
CODE_278F01:        B0 CA         BCS CODE_278ECD                   
CODE_278F03:        69 20         ADC #$20                  
CODE_278F05:        85 01         STA $01                   
CODE_278F07:        B5 44         LDA $44,x                 
CODE_278F09:        8D 7A 1F      STA $1F7A                 
CODE_278F0C:        B5 5F         LDA $5F,x                 
CODE_278F0E:        18            CLC                       
CODE_278F0F:        79 CB AD      ADC.w DATA_21ADCA+1,y               
CODE_278F12:        8D 7B 1F      STA $1F7B                 
CODE_278F15:        4A            LSR A                     
CODE_278F16:        4A            LSR A                     
CODE_278F17:        4A            LSR A                     
CODE_278F18:        4A            LSR A                     
CODE_278F19:        05 02         ORA $02                   
CODE_278F1B:        85 00         STA $00                   
CODE_278F1D:        C2 20         REP #$20                  
CODE_278F1F:        A5 00         LDA $00                   
CODE_278F21:        18            CLC                       
CODE_278F22:        69 00 20      ADC #$2000                
CODE_278F25:        85 D8         STA $D8                   
CODE_278F27:        E2 20         SEP #$20                  
CODE_278F29:        A9 7E         LDA #$7E                  
CODE_278F2B:        85 02         STA $02                   
CODE_278F2D:        85 DA         STA $DA                   
CODE_278F2F:        A0 00         LDY #$00                  
CODE_278F31:        4C A9 8E      JMP CODE_278EA9           

CODE_278F34:        A9 02         LDA #$02                  
CODE_278F36:        85 00         STA $00                   
CODE_278F38:        BD 4F 1A      LDA $1A4F,x               
CODE_278F3B:        D0 AD         BNE CODE_278EEA           
CODE_278F3D:        BD 71 06      LDA $0671,x               
CODE_278F40:        C9 1F         CMP #$1F                  
CODE_278F42:        F0 7C         BEQ CODE_278FC0           
CODE_278F44:        B5 9E         LDA $9E,x                 
CODE_278F46:        30 13         BMI CODE_278F5B           
CODE_278F48:        BD 71 06      LDA $0671,x               
CODE_278F4B:        C9 62         CMP #$62                  
CODE_278F4D:        F0 71         BEQ CODE_278FC0           
CODE_278F4F:        C9 6A         CMP #$6A                  
CODE_278F51:        F0 6D         BEQ CODE_278FC0           
CODE_278F53:        C9 61         CMP #$61                  
CODE_278F55:        F0 69         BEQ CODE_278FC0           
CODE_278F57:        A9 00         LDA #$00                  
CODE_278F59:        95 9E         STA $9E,x                 
CODE_278F5B:        A0 02         LDY #$02                  
CODE_278F5D:        EE 72 1A      INC $1A72                 
CODE_278F60:        AD 72 1A      LDA $1A72                 
CODE_278F63:        29 01         AND #$01                  
CODE_278F65:        A8            TAY                       
CODE_278F66:        C8            INY                       
CODE_278F67:        A9 01         LDA #$01                  
CODE_278F69:        99 90 1F      STA $1F90,y               
CODE_278F6C:        4A            LSR A                     
CODE_278F6D:        99 99 1F      STA $1F99,y               
CODE_278F70:        64 01         STZ $01                   
CODE_278F72:        B5 56         LDA $56,x                 
CODE_278F74:        EB            XBA                       
CODE_278F75:        B5 71         LDA $71,x                 
CODE_278F77:        C2 20         REP #$20                  
CODE_278F79:        38            SEC                       
CODE_278F7A:        E9 04 00      SBC #$0004                
CODE_278F7D:        29 F0 FF      AND #$FFF0                
CODE_278F80:        18            CLC                       
CODE_278F81:        65 00         ADC $00                   
CODE_278F83:        E2 20         SEP #$20                  
CODE_278F85:        99 93 1F      STA $1F93,y               
CODE_278F88:        EB            XBA                       
CODE_278F89:        99 8E 05      STA $058E,y               
CODE_278F8C:        B5 5F         LDA $5F,x                 
CODE_278F8E:        99 96 1F      STA $1F96,y               
CODE_278F91:        B5 44         LDA $44,x                 
CODE_278F93:        99 EF 00      STA $00EF,y               
CODE_278F96:        B5 9E         LDA $9E,x                 
CODE_278F98:        30 26         BMI CODE_278FC0           
CODE_278F9A:        AD 7F 1F      LDA $1F7F                 
CODE_278F9D:        D0 21         BNE CODE_278FC0           
CODE_278F9F:        A9 80         LDA #$80                  
CODE_278FA1:        8D 7F 1F      STA $1F7F                 
CODE_278FA4:        B5 71         LDA $71,x                 
CODE_278FA6:        69 06         ADC #$06                  
CODE_278FA8:        8D 87 1F      STA $1F87                 
CODE_278FAB:        B5 56         LDA $56,x                 
CODE_278FAD:        69 00         ADC #$00                  
CODE_278FAF:        8D 83 1F      STA $1F83                 
CODE_278FB2:        B5 5F         LDA $5F,x                 
CODE_278FB4:        69 04         ADC #$04                  
CODE_278FB6:        8D 8F 1F      STA $1F8F                 
CODE_278FB9:        B5 44         LDA $44,x                 
CODE_278FBB:        69 00         ADC #$00                  
CODE_278FBD:        8D 8B 1F      STA $1F8B                 
CODE_278FC0:        6B            RTL                       

CODE_278FC1:        4C D3 8F      JMP CODE_278FD3           

DATA_278FC4:        db $35

CODE_278FC5:        F0 0C         BEQ CODE_278FD3
CODE_278FC7:        A5 18         LDA $18
CODE_278FC9:        29 20         AND #$20                  
CODE_278FCB:        F0 06         BEQ CODE_278FD3           
CODE_278FCD:        4D FF 1C      EOR $1CFF                 
CODE_278FD0:        8D FF 1C      STA $1CFF                 
CODE_278FD3:        AD 45 1A      LDA $1A45                 
CODE_278FD6:        F0 03         BEQ CODE_278FDB           
CODE_278FD8:        CE 45 1A      DEC $1A45                 
CODE_278FDB:        A5 BB         LDA $BB                   
CODE_278FDD:        C9 06         CMP #$06                  
CODE_278FDF:        D0 05         BNE CODE_278FE6           
CODE_278FE1:        A9 4F         LDA #$4F                  
CODE_278FE3:        8D 1E 07      STA $071E                 
CODE_278FE6:        A5 BF         LDA $BF                   
CODE_278FE8:        C9 03         CMP #$03                  
CODE_278FEA:        D0 08         BNE CODE_278FF4           
CODE_278FEC:        AD 1B 07      LDA $071B                 
CODE_278FEF:        C9 52         CMP #$52                  
CODE_278FF1:        D0 01         BNE CODE_278FF4           
CODE_278FF3:        6B            RTL                       

CODE_278FF4:        AD A4 06      LDA $06A4                 
CODE_278FF7:        8D A5 06      STA $06A5                 
CODE_278FFA:        9C A4 06      STZ $06A4                 
CODE_278FFD:        9C BD 07      STZ $07BD                 
CODE_279000:        A9 FF         LDA #$FF                  
CODE_279002:        8D B3 07      STA $07B3                 
CODE_279005:        22 7B 9E 29   JSL CODE_299E7B           
CODE_279009:        22 9A 9A 29   JSL CODE_299A9A           
CODE_27900D:        CE 5D 05      DEC $055D                 
CODE_279010:        10 05         BPL CODE_279017           
CODE_279012:        A9 07         LDA #$07                  
CODE_279014:        8D 5D 05      STA $055D                 
CODE_279017:        A2 07         LDX #$07                  
CODE_279019:        86 9B         STX $9B                   
CODE_27901B:        A5 9C         LDA $9C                   
CODE_27901D:        D0 3B         BNE CODE_27905A           
CODE_27901F:        BD 18 05      LDA $0518,x               
CODE_279022:        F0 03         BEQ CODE_279027           
CODE_279024:        DE 18 05      DEC $0518,x               
CODE_279027:        BD 20 05      LDA $0520,x               
CODE_27902A:        F0 03         BEQ CODE_27902F           
CODE_27902C:        DE 20 05      DEC $0520,x               
CODE_27902F:        E0 05         CPX #$05                  
CODE_279031:        B0 27         BCS CODE_27905A                   
CODE_279033:        BD AB 06      LDA $06AB,x               
CODE_279036:        F0 03         BEQ CODE_27903B           
CODE_279038:        DE AB 06      DEC $06AB,x               
CODE_27903B:        BD A6 06      LDA $06A6,x               
CODE_27903E:        F0 1A         BEQ CODE_27905A           
CODE_279040:        C9 60         CMP #$60                  
CODE_279042:        90 13         BCC CODE_279057           
CODE_279044:        A9 01         LDA #$01                  
CODE_279046:        BC 61 06      LDY $0661,x               
CODE_279049:        C0 02         CPY #$02                  
CODE_27904B:        F0 0A         BEQ CODE_279057           
CODE_27904D:        C0 04         CPY #$04                  
CODE_27904F:        D0 02         BNE CODE_279053           
CODE_279051:        A9 03         LDA #$03                  
CODE_279053:        25 15         AND $15                   
CODE_279055:        D0 03         BNE CODE_27905A           
CODE_279057:        DE A6 06      DEC $06A6,x               
CODE_27905A:        8A            TXA                       
CODE_27905B:        18            CLC                       
CODE_27905C:        6D 5D 05      ADC $055D                 
CODE_27905F:        0A            ASL A                     
CODE_279060:        A8            TAY                       
CODE_279061:        C2 20         REP #$20                  
CODE_279063:        B9 6E AF      LDA.w DATA_21AF6E,y               
CODE_279066:        95 C6         STA $C6,x                 
CODE_279068:        E2 20         SEP #$20                  
CODE_27906A:        20 EC 90      JSR CODE_2790EC           
CODE_27906D:        20 BB A5      JSR CODE_27A5BB           
CODE_279070:        BD 61 06      LDA $0661,x               
CODE_279073:        D0 05         BNE CODE_27907A           
CODE_279075:        A9 FF         LDA #$FF                  
CODE_279077:        9D 59 06      STA $0659,x               
CODE_27907A:        CA            DEX                       
CODE_27907B:        10 9C         BPL CODE_279019           
CODE_27907D:        AD FD 05      LDA $05FD                 
CODE_279080:        F0 04         BEQ CODE_279086           
CODE_279082:        22 00 F0 22   JSL CODE_22F000           
CODE_279086:        AD 50 03      LDA $0350                 
CODE_279089:        C9 03         CMP #$03                  
CODE_27908B:        D0 04         BNE CODE_279091           
CODE_27908D:        22 C1 D3 29   JSL CODE_29D3C1           
CODE_279091:        AD 4F 05      LDA $054F                 
CODE_279094:        F0 11         BEQ CODE_2790A7           
CODE_279096:        AD 75 05      LDA $0575                 
CODE_279099:        0D 8A 05      ORA $058A                 
CODE_27909C:        D0 04         BNE CODE_2790A2           
CODE_27909E:        A5 A6         LDA $A6                   
CODE_2790A0:        D0 05         BNE CODE_2790A7           
CODE_2790A2:        A9 00         LDA #$00                  
CODE_2790A4:        8D 4F 05      STA $054F                 
CODE_2790A7:        AD 64 05      LDA $0564                 
CODE_2790AA:        D0 33         BNE CODE_2790DF           
CODE_2790AC:        A0 00         LDY #$00                  
CODE_2790AE:        B9 2E 05      LDA $052E,y               
CODE_2790B1:        D0 0C         BNE CODE_2790BF           
CODE_2790B3:        C8            INY                       
CODE_2790B4:        B9 2E 05      LDA $052E,y               
CODE_2790B7:        D0 06         BNE CODE_2790BF           
CODE_2790B9:        C8            INY                       
CODE_2790BA:        B9 2E 05      LDA $052E,y               
CODE_2790BD:        F0 20         BEQ CODE_2790DF           
CODE_2790BF:        8D 64 05      STA $0564                 
CODE_2790C2:        B9 31 05      LDA $0531,y               
CODE_2790C5:        8D 28 05      STA $0528                 
CODE_2790C8:        B9 34 05      LDA $0534,y               
CODE_2790CB:        8D 29 05      STA $0529                 
CODE_2790CE:        B9 37 05      LDA $0537,y               
CODE_2790D1:        8D 2A 05      STA $052A                 
CODE_2790D4:        B9 3A 05      LDA $053A,y               
CODE_2790D7:        8D 2B 05      STA $052B                 
CODE_2790DA:        A9 00         LDA #$00                  
CODE_2790DC:        99 2E 05      STA $052E,y               
CODE_2790DF:        AD 14 04      LDA $0414                 
CODE_2790E2:        F0 06         BEQ CODE_2790EA           
CODE_2790E4:        8D 5F 05      STA $055F                 
CODE_2790E7:        9C BE 07      STZ $07BE                 
CODE_2790EA:        6B            RTL                       

CODE_2790EB:        60            RTS                       

CODE_2790EC:        BD 61 06      LDA $0661,x               
CODE_2790EF:        F0 FA         BEQ CODE_2790EB           
CODE_2790F1:        C9 08         CMP #$08                  
CODE_2790F3:        F0 18         BEQ CODE_27910D           
CODE_2790F5:        A0 04         LDY #$04                  
CODE_2790F7:        BD 71 06      LDA $0671,x               
CODE_2790FA:        D9 A2 AF      CMP.w DATA_21AFA1+1,y               
CODE_2790FD:        B0 03         BCS CODE_279102                   
CODE_2790FF:        88            DEY                       
CODE_279100:        D0 F5         BNE CODE_2790F7           
CODE_279102:        84 DE         STY $DE                   
CODE_279104:        C8            INY                       
CODE_279105:        38            SEC                       
CODE_279106:        F9 A1 AF      SBC.w DATA_21AFA1,y               
CODE_279109:        8D 18 04      STA $0418                 
CODE_27910C:        A8            TAY                       
CODE_27910D:        22 94 A9 27   JSL CODE_27A994           
CODE_279111:        22 C8 A2 27   JSL CODE_27A2C8           
CODE_279115:        22 7C A2 27   JSL CODE_27A27C           
CODE_279119:        BD 61 06      LDA $0661,x               
CODE_27911C:        22 1F FB 20   JSL CODE_20FB1F           ; ExecutePtrShort

PNTR_279120:        dw CODE_279B7B
                    dw CODE_279B7D
                    dw CODE_279D14
                    dw CODE_2791E8
                    dw CODE_2795A1
                    dw CODE_2793E1
                    dw CODE_27974A
                    dw CODE_27980F
                    dw CODE_279132

CODE_279132:        BD 18 05      LDA $0518,x               
CODE_279135:        D0 03         BNE CODE_27913A           
CODE_279137:        4C 0C 98      JMP CODE_27980C           

CODE_27913A:        22 5F A8 27   JSL CODE_27A85F           
CODE_27913E:        F0 03         BEQ CODE_279143           
CODE_279140:        82 A4 00      BRL CODE_2791E7           

CODE_279143:        22 C2 9D 27   JSL CODE_279DC2           
CODE_279147:        C2 10         REP #$10                  
CODE_279149:        B4 C6         LDY $C6,x                 
CODE_27914B:        B5 7A         LDA $7A,x                 
CODE_27914D:        99 00 08      STA $0800,y               
CODE_279150:        99 08 08      STA $0808,y               
CODE_279153:        18            CLC                       
CODE_279154:        69 08         ADC #$08                  
CODE_279156:        99 04 08      STA $0804,y               
CODE_279159:        99 0C 08      STA $080C,y               
CODE_27915C:        B5 83         LDA $83,x                 
CODE_27915E:        99 01 08      STA $0801,y               
CODE_279161:        99 05 08      STA $0805,y               
CODE_279164:        18            CLC                       
CODE_279165:        69 08         ADC #$08                  
CODE_279167:        99 09 08      STA $0809,y               
CODE_27916A:        99 0D 08      STA $080D,y               
CODE_27916D:        C2 20         REP #$20                  
CODE_27916F:        BD 18 05      LDA $0518,x               
CODE_279172:        29 FF 00      AND #$00FF                
CODE_279175:        4A            LSR A                     
CODE_279176:        4A            LSR A                     
CODE_279177:        4A            LSR A                     
CODE_279178:        AA            TAX                       
CODE_279179:        E2 20         SEP #$20                  
CODE_27917B:        BD A7 AF      LDA.w DATA_21AFA7,x               
CODE_27917E:        99 02 08      STA $0802,y               
CODE_279181:        99 06 08      STA $0806,y               
CODE_279184:        1A            INC A                     
CODE_279185:        99 0A 08      STA $080A,y               
CODE_279188:        99 0E 08      STA $080E,y               
CODE_27918B:        AD 65 05      LDA $0565                 
CODE_27918E:        4A            LSR A                     
CODE_27918F:        4A            LSR A                     
CODE_279190:        6A            ROR A                     
CODE_279191:        29 80         AND #$80                  
CODE_279193:        09 22         ORA #$22                  
CODE_279195:        99 03 08      STA $0803,y               
CODE_279198:        99 0B 08      STA $080B,y               
CODE_27919B:        49 C0         EOR #$C0                  
CODE_27919D:        99 07 08      STA $0807,y               
CODE_2791A0:        99 0F 08      STA $080F,y               
CODE_2791A3:        B9 03 08      LDA $0803,y               
CODE_2791A6:        29 80         AND #$80                  
CODE_2791A8:        F0 0E         BEQ CODE_2791B8           
CODE_2791AA:        B9 02 08      LDA $0802,y               
CODE_2791AD:        48            PHA                       
CODE_2791AE:        B9 0A 08      LDA $080A,y               
CODE_2791B1:        99 02 08      STA $0802,y               
CODE_2791B4:        68            PLA                       
CODE_2791B5:        99 0A 08      STA $080A,y               
CODE_2791B8:        B9 07 08      LDA $0807,y               
CODE_2791BB:        29 80         AND #$80                  
CODE_2791BD:        F0 0E         BEQ CODE_2791CD           
CODE_2791BF:        B9 06 08      LDA $0806,y               
CODE_2791C2:        48            PHA                       
CODE_2791C3:        B9 0E 08      LDA $080E,y               
CODE_2791C6:        99 06 08      STA $0806,y               
CODE_2791C9:        68            PLA                       
CODE_2791CA:        99 0E 08      STA $080E,y               
CODE_2791CD:        C2 20         REP #$20                  
CODE_2791CF:        98            TYA                       
CODE_2791D0:        4A            LSR A                     
CODE_2791D1:        4A            LSR A                     
CODE_2791D2:        A8            TAY                       
CODE_2791D3:        E2 20         SEP #$20                  
CODE_2791D5:        A9 00         LDA #$00                  
CODE_2791D7:        99 20 0A      STA $0A20,y               
CODE_2791DA:        99 21 0A      STA $0A21,y               
CODE_2791DD:        99 22 0A      STA $0A22,y               
CODE_2791E0:        99 23 0A      STA $0A23,y               
CODE_2791E3:        E2 30         SEP #$30                  
CODE_2791E5:        A6 9B         LDX $9B                   
CODE_2791E7:        60            RTS                       

CODE_2791E8:        BC 71 06      LDY $0671,x               
CODE_2791EB:        B9 AF B1      LDA.w DATA_21B1AF,y               
CODE_2791EE:        29 10         AND #$10                  
CODE_2791F0:        F0 0B         BEQ CODE_2791FD           
CODE_2791F2:        A9 10         LDA #$10                  
CODE_2791F4:        9D A6 06      STA $06A6,x               
CODE_2791F7:        A9 07         LDA #$07                  
CODE_2791F9:        9D 61 06      STA $0661,x               
CODE_2791FC:        60            RTS                       

CODE_2791FD:        A5 9C         LDA $9C                   
CODE_2791FF:        D0 4D         BNE CODE_27924E           
CODE_279201:        20 86 98      JSR CODE_279886           
CODE_279204:        22 3B 98 27   JSL CODE_27983B           
CODE_279208:        B5 A7         LDA $A7,x                 
CODE_27920A:        29 04         AND #$04                  
CODE_27920C:        F0 29         BEQ CODE_279237           
CODE_27920E:        B5 9E         LDA $9E,x                 
CODE_279210:        30 25         BMI CODE_279237           
CODE_279212:        48            PHA                       
CODE_279213:        22 67 8B 27   JSL CODE_278B67           
CODE_279217:        B5 8C         LDA $8C,x                 
CODE_279219:        08            PHP                       
CODE_27921A:        10 04         BPL CODE_279220           
CODE_27921C:        22 59 A8 27   JSL CODE_27A859           ;Invert Accumulator (8-bit)
CODE_279220:        4A            LSR A                     
CODE_279221:        28            PLP                       
CODE_279222:        10 04         BPL CODE_279228           
CODE_279224:        22 59 A8 27   JSL CODE_27A859           ;Invert Accumulator (8-bit)
CODE_279228:        95 8C         STA $8C,x                 
CODE_27922A:        68            PLA                       
CODE_27922B:        4A            LSR A                     
CODE_27922C:        4A            LSR A                     
CODE_27922D:        22 59 A8 27   JSL CODE_27A859           ;Invert Accumulator (8-bit)
CODE_279231:        C9 FE         CMP #$FE                  
CODE_279233:        B0 02         BCS CODE_279237                   
CODE_279235:        95 9E         STA $9E,x                 
CODE_279237:        B5 A7         LDA $A7,x                 
CODE_279239:        29 08         AND #$08                  
CODE_27923B:        F0 04         BEQ CODE_279241           
CODE_27923D:        A9 10         LDA #$10                  
CODE_27923F:        95 9E         STA $9E,x                 
CODE_279241:        B5 A7         LDA $A7,x                 
CODE_279243:        29 03         AND #$03                  
CODE_279245:        F0 04         BEQ CODE_27924B           
CODE_279247:        22 05 99 27   JSL CODE_279905           
CODE_27924B:        20 16 99      JSR CODE_279916           
CODE_27924E:        20 94 93      JSR CODE_279394           
CODE_279251:        20 DF 9B      JSR CODE_279BDF           
CODE_279254:        A9 02         LDA #$02                  
CODE_279256:        9D 69 06      STA $0669,x               
CODE_279259:        BD F9 1F      LDA $1FF9,x               
CODE_27925C:        F0 11         BEQ CODE_27926F           
CODE_27925E:        22 64 C9 22   JSL CODE_22C964           
CODE_279262:        BD A6 06      LDA $06A6,x               
CODE_279265:        C9 60         CMP #$60                  
CODE_279267:        B0 05         BCS CODE_27926E                   
CODE_279269:        29 07         AND #$07                  
CODE_27926B:        9D AB 06      STA $06AB,x               
CODE_27926E:        60            RTS                       

CODE_27926F:        BD 71 06      LDA $0671,x               
CODE_279272:        C9 50         CMP #$50                  
CODE_279274:        F0 04         BEQ CODE_27927A           
CODE_279276:        C9 55         CMP #$55                  
CODE_279278:        D0 08         BNE CODE_279282           
CODE_27927A:        A5 BD         LDA $BD                   
CODE_27927C:        9D 79 06      STA $0679,x               
CODE_27927F:        4C A0 9E      JMP CODE_279EA0           

CODE_279282:        20 BF 9E      JSR CODE_279EBF           
CODE_279285:        20 BF A9      JSR CODE_27A9BF           
CODE_279288:        BC 71 06      LDY $0671,x               
CODE_27928B:        C0 5C         CPY #$5C                  
CODE_27928D:        D0 24         BNE CODE_2792B3           
CODE_27928F:        C2 10         REP #$10                  
CODE_279291:        B4 C6         LDY $C6,x                 
CODE_279293:        A9 74         LDA #$74                  
CODE_279295:        99 02 08      STA $0802,y               
CODE_279298:        1A            INC A                     
CODE_279299:        99 0A 08      STA $080A,y               
CODE_27929C:        A9 76         LDA #$76                  
CODE_27929E:        99 06 08      STA $0806,y               
CODE_2792A1:        1A            INC A                     
CODE_2792A2:        99 0E 08      STA $080E,y               
CODE_2792A5:        B9 07 08      LDA $0807,y               
CODE_2792A8:        29 BF         AND #$BF                  
CODE_2792AA:        99 07 08      STA $0807,y               
CODE_2792AD:        99 0F 08      STA $080F,y               
CODE_2792B0:        E2 10         SEP #$10                  
CODE_2792B2:        60            RTS                       

CODE_2792B3:        20 62 92      JSR CODE_279262           
CODE_2792B6:        C0 70         CPY #$70                  
CODE_2792B8:        D0 21         BNE CODE_2792DB           
CODE_2792BA:        BC 79 06      LDY $0679,x               
CODE_2792BD:        30 1B         BMI CODE_2792DA           
CODE_2792BF:        C2 10         REP #$10                  
CODE_2792C1:        B4 C6         LDY $C6,x                 
CODE_2792C3:        B9 01 08      LDA $0801,y               
CODE_2792C6:        18            CLC                       
CODE_2792C7:        69 01         ADC #$01                  
CODE_2792C9:        99 01 08      STA $0801,y               
CODE_2792CC:        99 05 08      STA $0805,y               
CODE_2792CF:        18            CLC                       
CODE_2792D0:        69 08         ADC #$08                  
CODE_2792D2:        99 09 08      STA $0809,y               
CODE_2792D5:        99 0D 08      STA $080D,y               
CODE_2792D8:        E2 10         SEP #$10                  
CODE_2792DA:        60            RTS                       

CODE_2792DB:        C0 71         CPY #$71                  
CODE_2792DD:        F0 FB         BEQ CODE_2792DA           
CODE_2792DF:        BD A6 06      LDA $06A6,x               
CODE_2792E2:        C9 50         CMP #$50                  
CODE_2792E4:        B0 F4         BCS CODE_2792DA                   
CODE_2792E6:        4A            LSR A                     
CODE_2792E7:        4A            LSR A                     
CODE_2792E8:        4A            LSR A                     
CODE_2792E9:        4A            LSR A                     
CODE_2792EA:        A8            TAY                       
CODE_2792EB:        BD A6 06      LDA $06A6,x               
CODE_2792EE:        39 AB AF      AND.w DATA_21AFAB,y               
CODE_2792F1:        F0 E7         BEQ CODE_2792DA           
CODE_2792F3:        A9 01         LDA #$01                  
CODE_2792F5:        BC 79 06      LDY $0679,x               
CODE_2792F8:        30 01         BMI CODE_2792FB           
CODE_2792FA:        4A            LSR A                     
CODE_2792FB:        C2 30         REP #$30                  
CODE_2792FD:        B4 C6         LDY $C6,x                 
CODE_2792FF:        29 FF 00      AND #$00FF                
CODE_279302:        AA            TAX                       
CODE_279303:        E2 20         SEP #$20                  
CODE_279305:        B9 01 08      LDA $0801,y               
CODE_279308:        C9 F0         CMP #$F0                  
CODE_27930A:        F0 11         BEQ CODE_27931D           
CODE_27930C:        18            CLC                       
CODE_27930D:        7D B1 AF      ADC.w DATA_21AFB1,x               
CODE_279310:        C9 C5         CMP #$C5                  
CODE_279312:        B0 1D         BCS CODE_279331                   
CODE_279314:        99 11 08      STA $0811,y               
CODE_279317:        18            CLC                       
CODE_279318:        69 08         ADC #$08                  
CODE_27931A:        99 19 08      STA $0819,y               
CODE_27931D:        B9 05 08      LDA $0805,y               
CODE_279320:        C9 F0         CMP #$F0                  
CODE_279322:        F0 0D         BEQ CODE_279331           
CODE_279324:        18            CLC                       
CODE_279325:        7D B1 AF      ADC.w DATA_21AFB1,x               
CODE_279328:        99 15 08      STA $0815,y               
CODE_27932B:        18            CLC                       
CODE_27932C:        69 08         ADC #$08                  
CODE_27932E:        99 1D 08      STA $081D,y               
CODE_279331:        B9 00 08      LDA $0800,y               
CODE_279334:        38            SEC                       
CODE_279335:        E9 03         SBC #$03                  
CODE_279337:        99 10 08      STA $0810,y               
CODE_27933A:        99 18 08      STA $0818,y               
CODE_27933D:        B9 04 08      LDA $0804,y               
CODE_279340:        18            CLC                       
CODE_279341:        69 03         ADC #$03                  
CODE_279343:        99 14 08      STA $0814,y               
CODE_279346:        99 1C 08      STA $081C,y               
CODE_279349:        B9 02 08      LDA $0802,y               
CODE_27934C:        29 80         AND #$80                  
CODE_27934E:        09 26         ORA #$26                  
CODE_279350:        99 13 08      STA $0813,y               
CODE_279353:        99 1B 08      STA $081B,y               
CODE_279356:        09 40         ORA #$40                  
CODE_279358:        99 17 08      STA $0817,y               
CODE_27935B:        99 1F 08      STA $081F,y               
CODE_27935E:        A9 F8         LDA #$F8                  
CODE_279360:        99 12 08      STA $0812,y               
CODE_279363:        99 16 08      STA $0816,y               
CODE_279366:        1A            INC A                     
CODE_279367:        99 1A 08      STA $081A,y               
CODE_27936A:        99 1E 08      STA $081E,y               
CODE_27936D:        C2 20         REP #$20                  
CODE_27936F:        5A            PHY                       
CODE_279370:        98            TYA                       
CODE_279371:        4A            LSR A                     
CODE_279372:        4A            LSR A                     
CODE_279373:        A8            TAY                       
CODE_279374:        E2 20         SEP #$20                  
CODE_279376:        B9 20 0A      LDA $0A20,y               
CODE_279379:        99 24 0A      STA $0A24,y               
CODE_27937C:        B9 21 0A      LDA $0A21,y               
CODE_27937F:        99 25 0A      STA $0A25,y               
CODE_279382:        B9 22 0A      LDA $0A22,y               
CODE_279385:        99 26 0A      STA $0A26,y               
CODE_279388:        B9 23 0A      LDA $0A23,y               
CODE_27938B:        99 27 0A      STA $0A27,y               
CODE_27938E:        7A            PLY                       
CODE_27938F:        E2 30         SEP #$30                  
CODE_279391:        A6 9B         LDX $9B                   
CODE_279393:        60            RTS                       

CODE_279394:        8A            TXA                       
CODE_279395:        18            CLC                       
CODE_279396:        65 15         ADC $15                   
CODE_279398:        4A            LSR A                     
CODE_279399:        B0 45         BCS CODE_2793E0                   
CODE_27939B:        22 5F A8 27   JSL CODE_27A85F           
CODE_27939F:        D0 3F         BNE CODE_2793E0           
CODE_2793A1:        22 39 A4 27   JSL CODE_27A439           
CODE_2793A5:        8A            TXA                       
CODE_2793A6:        F0 38         BEQ CODE_2793E0           
CODE_2793A8:        CA            DEX                       
CODE_2793A9:        BC 71 06      LDY $0671,x               
CODE_2793AC:        B9 78 AE      LDA.w DATA_21AE78,y               
CODE_2793AF:        29 10         AND #$10                  
CODE_2793B1:        F0 28         BEQ CODE_2793DB           
CODE_2793B3:        BD 61 06      LDA $0661,x               
CODE_2793B6:        C9 02         CMP #$02                  
CODE_2793B8:        D0 21         BNE CODE_2793DB           
CODE_2793BA:        22 5F A8 27   JSL CODE_27A85F           
CODE_2793BE:        D0 1B         BNE CODE_2793DB           
CODE_2793C0:        22 13 A4 27   JSL CODE_27A413           
CODE_2793C4:        22 5F A4 27   JSL CODE_27A45F           
CODE_2793C8:        90 11         BCC CODE_2793DB           
CODE_2793CA:        A4 9B         LDY $9B                   
CODE_2793CC:        B5 7A         LDA $7A,x                 
CODE_2793CE:        D9 7A 00      CMP $007A,y               
CODE_2793D1:        A0 00         LDY #$00                  
CODE_2793D3:        90 02         BCC CODE_2793D7           
CODE_2793D5:        A0 40         LDY #$40                  
CODE_2793D7:        98            TYA                       
CODE_2793D8:        9D 79 06      STA $0679,x               
CODE_2793DB:        CA            DEX                       
CODE_2793DC:        10 CB         BPL CODE_2793A9           
CODE_2793DE:        A6 9B         LDX $9B                   
CODE_2793E0:        60            RTS                       

CODE_2793E1:        A5 9C         LDA $9C                   
CODE_2793E3:        F0 03         BEQ CODE_2793E8           
CODE_2793E5:        4C B6 94      JMP CODE_2794B6           

CODE_2793E8:        22 3B 98 27   JSL CODE_27983B           
CODE_2793EC:        22 7C A2 27   JSL CODE_27A27C           
CODE_2793F0:        B5 A7         LDA $A7,x                 
CODE_2793F2:        29 04         AND #$04                  
CODE_2793F4:        F0 15         BEQ CODE_27940B           
CODE_2793F6:        B5 8C         LDA $8C,x                 
CODE_2793F8:        D0 09         BNE CODE_279403           
CODE_2793FA:        22 37 A8 27   JSL CODE_27A837           
CODE_2793FE:        B9 B3 AF      LDA.w DATA_21AFB3,y               
CODE_279401:        95 8C         STA $8C,x                 
CODE_279403:        22 67 8B 27   JSL CODE_278B67           
CODE_279407:        A9 0C         LDA #$0C                  
CODE_279409:        95 9E         STA $9E,x                 
CODE_27940B:        B5 A7         LDA $A7,x                 
CODE_27940D:        29 03         AND #$03                  
CODE_27940F:        D0 03         BNE CODE_279414           
CODE_279411:        4C 5B 94      JMP CODE_27945B           

CODE_279414:        BD 7A 00      LDA $007A,x               
CODE_279417:        B4 8C         LDY $8C,x                 
CODE_279419:        10 06         BPL CODE_279421           
CODE_27941B:        C9 06         CMP #$06                  
CODE_27941D:        90 29         BCC CODE_279448           
CODE_27941F:        B0 04         BCS CODE_279425                   
CODE_279421:        C9 E4         CMP #$E4                  
CODE_279423:        B0 23         BCS CODE_279448                   
CODE_279425:        22 5F A8 27   JSL CODE_27A85F           
CODE_279429:        D0 1D         BNE CODE_279448           
CODE_27942B:        AD 78 1F      LDA $1F78                 
CODE_27942E:        85 0C         STA $0C                   
CODE_279430:        AD 79 1F      LDA $1F79                 
CODE_279433:        85 0D         STA $0D                   
CODE_279435:        AD 7A 1F      LDA $1F7A                 
CODE_279438:        85 0E         STA $0E                   
CODE_27943A:        AD 7B 1F      LDA $1F7B                 
CODE_27943D:        85 0F         STA $0F                   
CODE_27943F:        AD 77 1F      LDA $1F77                 
CODE_279442:        22 3B D8 23   JSL CODE_23D83B           
CODE_279446:        A6 9B         LDX $9B                   
CODE_279448:        A9 01         LDA #$01                  
CODE_27944A:        8D 00 12      STA $1200                 
CODE_27944D:        BD 71 06      LDA $0671,x               
CODE_279450:        C9 5C         CMP #$5C                  
CODE_279452:        D0 03         BNE CODE_279457           
CODE_279454:        4C 55 9A      JMP CODE_279A55           

CODE_279457:        22 05 99 27   JSL CODE_279905           
CODE_27945B:        20 16 99      JSR CODE_279916           
CODE_27945E:        8A            TXA                       
CODE_27945F:        18            CLC                       
CODE_279460:        65 15         ADC $15                   
CODE_279462:        4A            LSR A                     
CODE_279463:        90 51         BCC CODE_2794B6           
CODE_279465:        20 EF A6      JSR CODE_27A6EF           
CODE_279468:        90 4C         BCC CODE_2794B6           
CODE_27946A:        A9 13         LDA #$13                  
CODE_27946C:        19 F5 05      ORA $05F5,y               
CODE_27946F:        C9 19         CMP #$19                  
CODE_279471:        90 06         BCC CODE_279479           
CODE_279473:        C9 1B         CMP #$1B                  
CODE_279475:        B0 05         BCS CODE_27947C                   
CODE_279477:        A9 19         LDA #$19                  
CODE_279479:        8D 00 12      STA $1200                 
CODE_27947C:        B5 8C         LDA $8C,x                 
CODE_27947E:        0A            ASL A                     
CODE_27947F:        A9 10         LDA #$10                  
CODE_279481:        90 02         BCC CODE_279485           
CODE_279483:        A9 F0         LDA #$F0                  
CODE_279485:        99 8C 00      STA $008C,y               
CODE_279488:        B9 61 06      LDA $0661,y               
CODE_27948B:        C9 05         CMP #$05                  
CODE_27948D:        D0 16         BNE CODE_2794A5           
CODE_27948F:        B9 F5 05      LDA $05F5,y               
CODE_279492:        22 8A 8A 27   JSL CODE_278A8A           
CODE_279496:        20 26 95      JSR CODE_279526           
CODE_279499:        B9 8C 00      LDA $008C,y               
CODE_27949C:        0A            ASL A                     
CODE_27949D:        A9 10         LDA #$10                  
CODE_27949F:        B0 02         BCS CODE_2794A3                   
CODE_2794A1:        A9 F0         LDA #$F0                  
CODE_2794A3:        95 8C         STA $8C,x                 
CODE_2794A5:        98            TYA                       
CODE_2794A6:        AA            TAX                       
CODE_2794A7:        20 26 95      JSR CODE_279526           
CODE_2794AA:        A6 9B         LDX $9B                   
CODE_2794AC:        BD F5 05      LDA $05F5,x               
CODE_2794AF:        FE F5 05      INC $05F5,x               
CODE_2794B2:        22 86 8A 27   JSL CODE_278A86           
CODE_2794B6:        20 DF 9B      JSR CODE_279BDF           
CODE_2794B9:        BD 71 06      LDA $0671,x               
CODE_2794BC:        C9 5C         CMP #$5C                  
CODE_2794BE:        F0 2D         BEQ CODE_2794ED           
CODE_2794C0:        C9 7A         CMP #$7A                  
CODE_2794C2:        B0 5D         BCS CODE_279521                   
CODE_2794C4:        AD 65 05      LDA $0565                 
CODE_2794C7:        4A            LSR A                     
CODE_2794C8:        29 03         AND #$03                  
CODE_2794CA:        A8            TAY                       
CODE_2794CB:        BD 79 06      LDA $0679,x               
CODE_2794CE:        29 BF         AND #$BF                  
CODE_2794D0:        19 B5 AF      ORA.w DATA_21AFB5,y               
CODE_2794D3:        9D 79 06      STA $0679,x               
CODE_2794D6:        B9 B9 AF      LDA.w DATA_21AFB9,y               
CODE_2794D9:        9D 69 06      STA $0669,x               
CODE_2794DC:        98            TYA                       
CODE_2794DD:        29 01         AND #$01                  
CODE_2794DF:        D0 05         BNE CODE_2794E6           
CODE_2794E1:        20 BF 9E      JSR CODE_279EBF           
CODE_2794E4:        80 03         BRA CODE_2794E9           

CODE_2794E6:        20 A0 9E      JSR CODE_279EA0           
CODE_2794E9:        20 BF A9      JSR CODE_27A9BF           
CODE_2794EC:        60            RTS                       

CODE_2794ED:        A5 15         LDA $15                   
CODE_2794EF:        4A            LSR A                     
CODE_2794F0:        9D 69 07      STA $0769,x               
CODE_2794F3:        20 BF 9E      JSR CODE_279EBF           
CODE_2794F6:        BC 71 06      LDY $0671,x               
CODE_2794F9:        C0 5C         CPY #$5C                  
CODE_2794FB:        D0 23         BNE CODE_279520           
CODE_2794FD:        C2 10         REP #$10                  
CODE_2794FF:        B4 C6         LDY $C6,x                 
CODE_279501:        A9 74         LDA #$74                  
CODE_279503:        99 02 08      STA $0802,y               
CODE_279506:        1A            INC A                     
CODE_279507:        99 0A 08      STA $080A,y               
CODE_27950A:        A9 76         LDA #$76                  
CODE_27950C:        99 06 08      STA $0806,y               
CODE_27950F:        1A            INC A                     
CODE_279510:        99 0E 08      STA $080E,y               
CODE_279513:        B9 07 08      LDA $0807,y               
CODE_279516:        29 BF         AND #$BF                  
CODE_279518:        99 07 08      STA $0807,y               
CODE_27951B:        99 0F 08      STA $080F,y               
CODE_27951E:        E2 10         SEP #$10                  
CODE_279520:        60            RTS                       

CODE_279521:        22 64 C9 22   JSL CODE_22C964           
CODE_279525:        60            RTS                       

CODE_279526:        A9 06         LDA #$06                  
CODE_279528:        9D 61 06      STA $0661,x               
CODE_27952B:        A9 D0         LDA #$D0                  
CODE_27952D:        95 9E         STA $9E,x                 
CODE_27952F:        B5 71         LDA $71,x                 
CODE_279531:        8D 47 1A      STA $1A47                 
CODE_279534:        B5 5F         LDA $5F,x                 
CODE_279536:        8D 48 1A      STA $1A48                 
CODE_279539:        B5 44         LDA $44,x                 
CODE_27953B:        8D 7E 02      STA $027E                 
CODE_27953E:        A9 0A         LDA #$0A                  
CODE_279540:        8D 46 1A      STA $1A46                 
CODE_279543:        60            RTS                       

CODE_279544:        AD 9C 1F      LDA $1F9C                 
CODE_279547:        8D 9D 1F      STA $1F9D                 
CODE_27954A:        AD 9F 1F      LDA $1F9F                 
CODE_27954D:        8D A0 1F      STA $1FA0                 
CODE_279550:        AD AB 1F      LDA $1FAB                 
CODE_279553:        8D AC 1F      STA $1FAC                 
CODE_279556:        AD A2 1F      LDA $1FA2                 
CODE_279559:        8D A3 1F      STA $1FA3                 
CODE_27955C:        AD A5 1F      LDA $1FA5                 
CODE_27955F:        8D A6 1F      STA $1FA6                 
CODE_279562:        AD A8 1F      LDA $1FA8                 
CODE_279565:        8D A9 1F      STA $1FA9                 
CODE_279568:        AD AE 1F      LDA $1FAE                 
CODE_27956B:        8D AF 1F      STA $1FAF                 
CODE_27956E:        AD B1 1F      LDA $1FB1                 
CODE_279571:        8D B2 1F      STA $1FB2                 
CODE_279574:        A5 DF         LDA $DF                   
CODE_279576:        85 E0         STA $E0                   
CODE_279578:        AD AE 02      LDA $02AE                 
CODE_27957B:        8D AF 02      STA $02AF                 
CODE_27957E:        6B            RTL                       

CODE_27957F:        AD 77 1F      LDA $1F77                 
CODE_279582:        85 07         STA $07                   
CODE_279584:        AD 78 1F      LDA $1F78                 
CODE_279587:        85 0C         STA $0C                   
CODE_279589:        AD 79 1F      LDA $1F79                 
CODE_27958C:        85 0D         STA $0D                   
CODE_27958E:        AD 7A 1F      LDA $1F7A                 
CODE_279591:        85 0E         STA $0E                   
CODE_279593:        AD 7B 1F      LDA $1F7B                 
CODE_279596:        85 0F         STA $0F                   
CODE_279598:        A5 07         LDA $07                   
CODE_27959A:        22 3B D8 23   JSL CODE_23D83B           
CODE_27959E:        A6 9B         LDX $9B                   
CODE_2795A0:        6B            RTL                       

CODE_2795A1:        A5 BF         LDA $BF                   
CODE_2795A3:        F0 03         BEQ CODE_2795A8           
CODE_2795A5:        4C 1E 97      JMP CODE_27971E           

CODE_2795A8:        20 86 98      JSR CODE_279886           
CODE_2795AB:        24 17         BIT $17                   
CODE_2795AD:        50 03         BVC CODE_2795B2                   
CODE_2795AF:        4C 70 96      JMP CODE_279670           

CODE_2795B2:        AD 71 05      LDA $0571                 
CODE_2795B5:        D0 F8         BNE CODE_2795AF           
CODE_2795B7:        A9 03         LDA #$03                  
CODE_2795B9:        8D 00 12      STA $1200                 
CODE_2795BC:        A9 0C         LDA #$0C                  
CODE_2795BE:        8D 57 05      STA $0557                 
CODE_2795C1:        A9 10         LDA #$10                  
CODE_2795C3:        9D 20 05      STA $0520,x               
CODE_2795C6:        BD 71 06      LDA $0671,x               
CODE_2795C9:        C9 50         CMP #$50                  
CODE_2795CB:        F0 04         BEQ CODE_2795D1           
CODE_2795CD:        C9 55         CMP #$55                  
CODE_2795CF:        D0 26         BNE CODE_2795F7           
CODE_2795D1:        A9 02         LDA #$02                  
CODE_2795D3:        9D 61 06      STA $0661,x               
CODE_2795D6:        A9 E0         LDA #$E0                  
CODE_2795D8:        95 9E         STA $9E,x                 
CODE_2795DA:        22 37 A8 27   JSL CODE_27A837           
CODE_2795DE:        B9 C1 AF      LDA.w DATA_21AFC1,y               
CODE_2795E1:        95 8C         STA $8C,x                 
CODE_2795E3:        45 8B         EOR $8B                   
CODE_2795E5:        30 0D         BMI CODE_2795F4           
CODE_2795E7:        A5 8B         LDA $8B                   
CODE_2795E9:        85 00         STA $00                   
CODE_2795EB:        06 00         ASL $00                   
CODE_2795ED:        6A            ROR A                     
CODE_2795EE:        18            CLC                       
CODE_2795EF:        79 BD AF      ADC.w DATA_21AFBD,y               
CODE_2795F2:        95 8C         STA $8C,x                 
CODE_2795F4:        4C A0 9E      JMP CODE_279EA0           

CODE_2795F7:        A9 00         LDA #$00                  
CODE_2795F9:        9D F5 05      STA $05F5,x               
CODE_2795FC:        BD 61 06      LDA $0661,x               
CODE_2795FF:        C9 04         CMP #$04                  
CODE_279601:        D0 3B         BNE CODE_27963E           
CODE_279603:        BD 71 06      LDA $0671,x               
CODE_279606:        C9 5C         CMP #$5C                  
CODE_279608:        F0 2A         BEQ CODE_279634           
CODE_27960A:        A0 01         LDY #$01                  
CODE_27960C:        A5 BD         LDA $BD                   
CODE_27960E:        D0 02         BNE CODE_279612           
CODE_279610:        A0 FF         LDY #$FF                  
CODE_279612:        94 8C         STY $8C,x                 
CODE_279614:        22 93 8B 27   JSL CODE_278B93           
CODE_279618:        B5 A7         LDA $A7,x                 
CODE_27961A:        29 03         AND #$03                  
CODE_27961C:        F0 16         BEQ CODE_279634           
CODE_27961E:        A9 05         LDA #$05                  
CODE_279620:        22 94 8A 27   JSL CODE_278A94           
CODE_279624:        A9 06         LDA #$06                  
CODE_279626:        9D 61 06      STA $0661,x               
CODE_279629:        A9 C0         LDA #$C0                  
CODE_27962B:        95 9E         STA $9E,x                 
CODE_27962D:        A9 00         LDA #$00                  
CODE_27962F:        95 8C         STA $8C,x                 
CODE_279631:        4C 1E 97      JMP CODE_27971E           

CODE_279634:        A0 00         LDY #$00                  
CODE_279636:        A5 BD         LDA $BD                   
CODE_279638:        F0 01         BEQ CODE_27963B           
CODE_27963A:        C8            INY                       
CODE_27963B:        4C 47 96      JMP CODE_279647           

CODE_27963E:        22 37 A8 27   JSL CODE_27A837           
CODE_279642:        B9 BF AF      LDA.w DATA_21AFBF,y               
CODE_279645:        85 BD         STA $BD                   
CODE_279647:        B9 BD AF      LDA.w DATA_21AFBD,y               
CODE_27964A:        95 8C         STA $8C,x                 
CODE_27964C:        45 8B         EOR $8B                   
CODE_27964E:        30 0D         BMI CODE_27965D           
CODE_279650:        A5 8B         LDA $8B                   
CODE_279652:        85 00         STA $00                   
CODE_279654:        06 00         ASL $00                   
CODE_279656:        6A            ROR A                     
CODE_279657:        18            CLC                       
CODE_279658:        79 BD AF      ADC.w DATA_21AFBD,y               
CODE_27965B:        95 8C         STA $8C,x                 
CODE_27965D:        BD 61 06      LDA $0661,x               
CODE_279660:        C9 06         CMP #$06                  
CODE_279662:        F0 05         BEQ CODE_279669           
CODE_279664:        A9 05         LDA #$05                  
CODE_279666:        9D 61 06      STA $0661,x               
CODE_279669:        A9 00         LDA #$00                  
CODE_27966B:        95 9E         STA $9E,x                 
CODE_27966D:        4C 1E 97      JMP CODE_27971E           

CODE_279670:        A9 01         LDA #$01                  
CODE_279672:        8D A4 06      STA $06A4                 
CODE_279675:        AD 71 05      LDA $0571                 
CODE_279678:        F0 04         BEQ CODE_27967E           
CODE_27967A:        A0 0A         LDY #$0A                  
CODE_27967C:        D0 1D         BNE CODE_27969B           
CODE_27967E:        A0 00         LDY #$00                  
CODE_279680:        A5 BD         LDA $BD                   
CODE_279682:        D0 01         BNE CODE_279685           
CODE_279684:        C8            INY                       
CODE_279685:        BD F9 1F      LDA $1FF9,x               
CODE_279688:        F0 05         BEQ CODE_27968F           
CODE_27968A:        C8            INY                       
CODE_27968B:        C8            INY                       
CODE_27968C:        C8            INY                       
CODE_27968D:        C8            INY                       
CODE_27968E:        C8            INY                       
CODE_27968F:        AD 58 05      LDA $0558                 
CODE_279692:        F0 10         BEQ CODE_2796A4           
CODE_279694:        C8            INY                       
CODE_279695:        C8            INY                       
CODE_279696:        C9 05         CMP #$05                  
CODE_279698:        90 01         BCC CODE_27969B           
CODE_27969A:        C8            INY                       
CODE_27969B:        C2 20         REP #$20                  
CODE_27969D:        A9 20 00      LDA #$0020                
CODE_2796A0:        95 C6         STA $C6,x                 
CODE_2796A2:        E2 20         SEP #$20                  
CODE_2796A4:        A5 5E         LDA $5E                   
CODE_2796A6:        18            CLC                       
CODE_2796A7:        79 C3 AF      ADC.w DATA_21AFC3,y               
CODE_2796AA:        95 5F         STA $5F,x                 
CODE_2796AC:        A5 43         LDA $43                   
CODE_2796AE:        79 CE AF      ADC.w DATA_21AFCE,y               
CODE_2796B1:        95 44         STA $44,x                 
CODE_2796B3:        A9 FE         LDA #$FE                  
CODE_2796B5:        BC F9 1F      LDY $1FF9,x               
CODE_2796B8:        D0 08         BNE CODE_2796C2           
CODE_2796BA:        A9 0D         LDA #$0D                  
CODE_2796BC:        A4 BB         LDY $BB                   
CODE_2796BE:        D0 02         BNE CODE_2796C2           
CODE_2796C0:        A9 0F         LDA #$0F                  
CODE_2796C2:        48            PHA                       
CODE_2796C3:        18            CLC                       
CODE_2796C4:        65 70         ADC $70                   
CODE_2796C6:        95 71         STA $71,x                 
CODE_2796C8:        A0 00         LDY #$00                  
CODE_2796CA:        68            PLA                       
CODE_2796CB:        10 01         BPL CODE_2796CE           
CODE_2796CD:        88            DEY                       
CODE_2796CE:        98            TYA                       
CODE_2796CF:        65 55         ADC $55                   
CODE_2796D1:        95 56         STA $56,x                 
CODE_2796D3:        A5 8B         LDA $8B                   
CODE_2796D5:        95 8C         STA $8C,x                 
CODE_2796D7:        A5 9D         LDA $9D                   
CODE_2796D9:        95 9E         STA $9E,x                 
CODE_2796DB:        22 93 8B 27   JSL CODE_278B93           
CODE_2796DF:        22 C2 9D 27   JSL CODE_279DC2           
CODE_2796E3:        20 EF A6      JSR CODE_27A6EF           
CODE_2796E6:        90 36         BCC CODE_27971E           
CODE_2796E8:        BD 20 05      LDA $0520,x               
CODE_2796EB:        0D 71 05      ORA $0571                 
CODE_2796EE:        D0 2E         BNE CODE_27971E           
CODE_2796F0:        A9 03         LDA #$03                  
CODE_2796F2:        8D 00 12      STA $1200                 
CODE_2796F5:        A9 06         LDA #$06                  
CODE_2796F7:        9D 61 06      STA $0661,x               
CODE_2796FA:        A9 D0         LDA #$D0                  
CODE_2796FC:        95 9E         STA $9E,x                 
CODE_2796FE:        A9 06         LDA #$06                  
CODE_279700:        99 61 06      STA $0661,y               
CODE_279703:        A9 D0         LDA #$D0                  
CODE_279705:        99 9E 00      STA $009E,y               
CODE_279708:        A9 00         LDA #$00                  
CODE_27970A:        22 8A 8A 27   JSL CODE_278A8A           
CODE_27970E:        A9 10         LDA #$10                  
CODE_279710:        9D 20 05      STA $0520,x               
CODE_279713:        98            TYA                       
CODE_279714:        AA            TAX                       
CODE_279715:        22 37 A8 27   JSL CODE_27A837           
CODE_279719:        B9 D9 AF      LDA.w DATA_21AFD9,y               
CODE_27971C:        95 8C         STA $8C,x                 
CODE_27971E:        A6 9B         LDX $9B                   
CODE_279720:        A5 BF         LDA $BF                   
CODE_279722:        D0 07         BNE CODE_27972B           
CODE_279724:        AD 51 08      LDA $0851                 
CODE_279727:        C9 F0         CMP #$F0                  
CODE_279729:        F0 1E         BEQ CODE_279749           
CODE_27972B:        BD 79 06      LDA $0679,x               
CODE_27972E:        09 20         ORA #$20                  
CODE_279730:        85 D8         STA $D8                   
CODE_279732:        AD 71 05      LDA $0571                 
CODE_279735:        29 80         AND #$80                  
CODE_279737:        F0 08         BEQ CODE_279741           
CODE_279739:        A5 D8         LDA $D8                   
CODE_27973B:        29 CF         AND #$CF                  
CODE_27973D:        09 10         ORA #$10                  
CODE_27973F:        85 D8         STA $D8                   
CODE_279741:        A5 D8         LDA $D8                   
CODE_279743:        9D 79 06      STA $0679,x               
CODE_279746:        20 54 92      JSR CODE_279254           
CODE_279749:        60            RTS                       

CODE_27974A:        20 F9 97      JSR CODE_2797F9           
CODE_27974D:        BC 71 06      LDY $0671,x               
CODE_279750:        B9 17 B3      LDA.w DATA_21B317,y               
CODE_279753:        29 0F         AND #$0F                  
CODE_279755:        F0 0B         BEQ CODE_279762           
CODE_279757:        E0 05         CPX #$05                  
CODE_279759:        B0 07         BCS CODE_279762                   
CODE_27975B:        48            PHA                       
CODE_27975C:        A9 02         LDA #$02                  
CODE_27975E:        9D 69 06      STA $0669,x               
CODE_279761:        68            PLA                       
CODE_279762:        22 1F FB 20   JSL CODE_20FB1F           ; ExecutePtrShort

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

CODE_27977A:        22 6E 9D 27   JSL CODE_279D6E
CODE_27977E:        4C BB 97      JMP CODE_2797BB           

CODE_279781:        22 44 9D 27   JSL CODE_279D44           
CODE_279785:        4C BB 97      JMP CODE_2797BB           

CODE_279788:        22 44 9D 27   JSL CODE_279D44           
CODE_27978C:        60            RTS                       

CODE_27978D:        22 64 C9 22   JSL CODE_22C964           
CODE_279791:        4C BB 97      JMP CODE_2797BB           

CODE_279794:        A9 08         LDA #$08                  
CODE_279796:        9D 61 06      STA $0661,x               
CODE_279799:        A9 1F         LDA #$1F                  
CODE_27979B:        9D 18 05      STA $0518,x               
CODE_27979E:        60            RTS                       

CODE_27979F:        20 A0 9E      JSR CODE_279EA0           
CODE_2797A2:        4C F0 97      JMP CODE_2797F0           

CODE_2797A5:        22 E1 9E 27   JSL CODE_279EE1           
CODE_2797A9:        4C BB 97      JMP CODE_2797BB           

CODE_2797AC:        20 11 9F      JSR CODE_279F11           
CODE_2797AF:        4C BB 97      JMP CODE_2797BB           

CODE_2797B2:        20 BF 9E      JSR CODE_279EBF           
CODE_2797B5:        4C BB 97      JMP CODE_2797BB           

CODE_2797B8:        20 A0 9E      JSR CODE_279EA0           
CODE_2797BB:        A5 9C         LDA $9C                   
CODE_2797BD:        D0 39         BNE CODE_2797F8           
CODE_2797BF:        BD EB 06      LDA $06EB,x               
CODE_2797C2:        F0 24         BEQ CODE_2797E8           
CODE_2797C4:        FE EB 06      INC $06EB,x               
CODE_2797C7:        C9 90         CMP #$90                  
CODE_2797C9:        D0 03         BNE CODE_2797CE           
CODE_2797CB:        4C 33 9C      JMP CODE_279C33           

CODE_2797CE:        A9 04         LDA #$04                  
CODE_2797D0:        95 9E         STA $9E,x                 
CODE_2797D2:        22 E4 A7 27   JSL CODE_27A7E4           
CODE_2797D6:        BD 79 06      LDA $0679,x               
CODE_2797D9:        29 CF         AND #$CF                  
CODE_2797DB:        09 10         ORA #$10                  
CODE_2797DD:        9D 79 06      STA $0679,x               
CODE_2797E0:        E0 05         CPX #$05                  
CODE_2797E2:        90 03         BCC CODE_2797E7           
CODE_2797E4:        4C 1F A3      JMP CODE_27A31F           

CODE_2797E7:        60            RTS                       

CODE_2797E8:        BD 79 06      LDA $0679,x               
CODE_2797EB:        09 80         ORA #$80                  
CODE_2797ED:        9D 79 06      STA $0679,x               
CODE_2797F0:        A5 9C         LDA $9C                   
CODE_2797F2:        D0 04         BNE CODE_2797F8           
CODE_2797F4:        22 3B 98 27   JSL CODE_27983B           
CODE_2797F8:        60            RTS                       

CODE_2797F9:        AD 25 04      LDA $0425                 
CODE_2797FC:        F0 06         BEQ CODE_279804           
CODE_2797FE:        B5 83         LDA $83,x                 
CODE_279800:        C9 C8         CMP #$C8                  
CODE_279802:        90 F4         BCC CODE_2797F8           
CODE_279804:        B5 56         LDA $56,x                 
CODE_279806:        C9 02         CMP #$02                  
CODE_279808:        30 EE         BMI CODE_2797F8           
CODE_27980A:        68            PLA                       
CODE_27980B:        68            PLA                       
CODE_27980C:        4C 5F 9C      JMP CODE_279C5F           

CODE_27980F:        BD A6 06      LDA $06A6,x               
CODE_279812:        F0 24         BEQ CODE_279838           
CODE_279814:        22 3B 98 27   JSL CODE_27983B           
CODE_279818:        B5 A7         LDA $A7,x                 
CODE_27981A:        29 04         AND #$04                  
CODE_27981C:        F0 06         BEQ CODE_279824           
CODE_27981E:        22 67 8B 27   JSL CODE_278B67           
CODE_279822:        95 8C         STA $8C,x                 
CODE_279824:        A9 03         LDA #$03                  
CODE_279826:        9D 69 06      STA $0669,x               
CODE_279829:        BD 71 06      LDA $0671,x               
CODE_27982C:        C9 72         CMP #$72                  
CODE_27982E:        D0 03         BNE CODE_279833           
CODE_279830:        4C BF 9E      JMP CODE_279EBF           

CODE_279833:        22 64 C9 22   JSL CODE_22C964           
CODE_279837:        60            RTS                       

CODE_279838:        4C 5F 9C      JMP CODE_279C5F           

CODE_27983B:        B5 8C         LDA $8C,x                 
CODE_27983D:        48            PHA                       
CODE_27983E:        BC B7 06      LDY $06B7,x               
CODE_279841:        F0 0A         BEQ CODE_27984D           
CODE_279843:        BC 61 06      LDY $0661,x               
CODE_279846:        C0 02         CPY #$02                  
CODE_279848:        F0 03         BEQ CODE_27984D           
CODE_27984A:        0A            ASL A                     
CODE_27984B:        76 8C         ROR $8C,x                 
CODE_27984D:        22 EF A7 27   JSL CODE_27A7EF           
CODE_279851:        68            PLA                       
CODE_279852:        95 8C         STA $8C,x                 
CODE_279854:        22 E4 A7 27   JSL CODE_27A7E4           
CODE_279858:        22 9B 8B 27   JSL CODE_278B9B           
CODE_27985C:        BC B7 06      LDY $06B7,x               
CODE_27985F:        B5 9E         LDA $9E,x                 
CODE_279861:        10 0E         BPL CODE_279871           
CODE_279863:        C0 00         CPY #$00                  
CODE_279865:        F0 0A         BEQ CODE_279871           
CODE_279867:        C9 E8         CMP #$E8                  
CODE_279869:        B0 06         BCS CODE_279871                   
CODE_27986B:        A9 E8         LDA #$E8                  
CODE_27986D:        95 9E         STA $9E,x                 
CODE_27986F:        D0 00         BNE CODE_279871           
CODE_279871:        B5 9E         LDA $9E,x                 
CODE_279873:        18            CLC                       
CODE_279874:        79 DD AF      ADC.w DATA_21AFDD,y               
CODE_279877:        95 9E         STA $9E,x                 
CODE_279879:        30 0A         BMI CODE_279885           
CODE_27987B:        D9 DB AF      CMP.w DATA_21AFDB,y               
CODE_27987E:        90 05         BCC CODE_279885           
CODE_279880:        B9 DB AF      LDA.w DATA_21AFDB,y               
CODE_279883:        95 9E         STA $9E,x                 
CODE_279885:        6B            RTL                       

CODE_279886:        BD 71 06      LDA $0671,x               
CODE_279889:        C9 50         CMP #$50                  
CODE_27988B:        F0 04         BEQ CODE_279891           
CODE_27988D:        C9 55         CMP #$55                  
CODE_27988F:        D0 17         BNE CODE_2798A8           
CODE_279891:        BD 18 05      LDA $0518,x               
CODE_279894:        D0 0A         BNE CODE_2798A0           
CODE_279896:        A9 02         LDA #$02                  
CODE_279898:        9D 61 06      STA $0661,x               
CODE_27989B:        22 85 D4 28   JSL CODE_28D485           
CODE_27989F:        60            RTS                       

CODE_2798A0:        C9 40         CMP #$40                  
CODE_2798A2:        B0 03         BCS CODE_2798A7                   
CODE_2798A4:        9D 69 07      STA $0769,x               
CODE_2798A7:        60            RTS                       

CODE_2798A8:        C9 5C         CMP #$5C                  
CODE_2798AA:        D0 1B         BNE CODE_2798C7           
CODE_2798AC:        BD A6 06      LDA $06A6,x               
CODE_2798AF:        D0 03         BNE CODE_2798B4           
CODE_2798B1:        4C 94 97      JMP CODE_279794           

CODE_2798B4:        C9 60         CMP #$60                  
CODE_2798B6:        B0 0B         BCS CODE_2798C3                   
CODE_2798B8:        C9 30         CMP #$30                  
CODE_2798BA:        B0 06         BCS CODE_2798C2                   
CODE_2798BC:        C9 10         CMP #$10                  
CODE_2798BE:        B0 01         BCS CODE_2798C1                   
CODE_2798C0:        4A            LSR A                     
CODE_2798C1:        4A            LSR A                     
CODE_2798C2:        4A            LSR A                     
CODE_2798C3:        9D 69 07      STA $0769,x               
CODE_2798C6:        60            RTS                       

CODE_2798C7:        BD A6 06      LDA $06A6,x               
CODE_2798CA:        D0 38         BNE CODE_279904           
CODE_2798CC:        BD 61 06      LDA $0661,x               
CODE_2798CF:        C9 04         CMP #$04                  
CODE_2798D1:        D0 1D         BNE CODE_2798F0           
CODE_2798D3:        22 93 8B 27   JSL CODE_278B93           
CODE_2798D7:        B5 A7         LDA $A7,x                 
CODE_2798D9:        F0 15         BEQ CODE_2798F0           
CODE_2798DB:        A9 05         LDA #$05                  
CODE_2798DD:        22 94 8A 27   JSL CODE_278A94           
CODE_2798E1:        A9 06         LDA #$06                  
CODE_2798E3:        9D 61 06      STA $0661,x               
CODE_2798E6:        A9 C0         LDA #$C0                  
CODE_2798E8:        95 9E         STA $9E,x                 
CODE_2798EA:        A9 00         LDA #$00                  
CODE_2798EC:        95 8C         STA $8C,x                 
CODE_2798EE:        F0 0F         BEQ CODE_2798FF           
CODE_2798F0:        A9 02         LDA #$02                  
CODE_2798F2:        9D 61 06      STA $0661,x               
CODE_2798F5:        22 37 A8 27   JSL CODE_27A837           
CODE_2798F9:        B9 DF AF      LDA.w DATA_21AFDF,y               
CODE_2798FC:        9D 79 06      STA $0679,x               
CODE_2798FF:        68            PLA                       
CODE_279900:        68            PLA                       
CODE_279901:        4C 51 92      JMP CODE_279251           

CODE_279904:        60            RTS                       

CODE_279905:        B5 8C         LDA $8C,x                 
CODE_279907:        22 59 A8 27   JSL CODE_27A859           ;Invert Accumulator (8-bit)
CODE_27990B:        95 8C         STA $8C,x                 
CODE_27990D:        BD 79 06      LDA $0679,x               
CODE_279910:        49 40         EOR #$40                  
CODE_279912:        9D 79 06      STA $0679,x               
CODE_279915:        6B            RTL                       

CODE_279916:        22 5F A8 27   JSL CODE_27A85F           
CODE_27991A:        D0 68         BNE CODE_279984           
CODE_27991C:        AD 76 1F      LDA $1F76                 
CODE_27991F:        C9 F3         CMP #$F3                  
CODE_279921:        D0 57         BNE CODE_27997A           
CODE_279923:        A9 D0         LDA #$D0                  
CODE_279925:        95 9E         STA $9E,x                 
CODE_279927:        22 37 A8 27   JSL CODE_27A837           
CODE_27992B:        B9 E1 AF      LDA.w DATA_21AFE1,y               
CODE_27992E:        95 8C         STA $8C,x                 
CODE_279930:        A9 80         LDA #$80                  
CODE_279932:        9D 79 06      STA $0679,x               
CODE_279935:        BC 71 06      LDY $0671,x               
CODE_279938:        B9 AF B1      LDA.w DATA_21B1AF,y               
CODE_27993B:        29 40         AND #$40                  
CODE_27993D:        D0 0C         BNE CODE_27994B           
CODE_27993F:        A9 06         LDA #$06                  
CODE_279941:        9D 61 06      STA $0661,x               
CODE_279944:        A9 00         LDA #$00                  
CODE_279946:        22 8A 8A 27   JSL CODE_278A8A           
CODE_27994A:        60            RTS                       

CODE_27994B:        DA            PHX                       
CODE_27994C:        C2 30         REP #$30                  
CODE_27994E:        BD 71 06      LDA $0671,x               
CODE_279951:        29 FF 00      AND #$00FF                
CODE_279954:        85 D8         STA $D8                   
CODE_279956:        0A            ASL A                     
CODE_279957:        18            CLC                       
CODE_279958:        65 D8         ADC $D8                   
CODE_27995A:        AA            TAX                       
CODE_27995B:        BF 38 84 28   LDA.l PNTR_288438,x             
CODE_27995F:        85 D8         STA $D8                   
CODE_279961:        E2 30         SEP #$30                  
CODE_279963:        FA            PLX                       
CODE_279964:        A5 D9         LDA $D9                   
CODE_279966:        29 F8         AND #$F8                  
CODE_279968:        C9 08         CMP #$08                  
CODE_27996A:        D0 0B         BNE CODE_279977           
CODE_27996C:        A5 D8         LDA $D8                   
CODE_27996E:        9D 71 06      STA $0671,x               
CODE_279971:        A9 00         LDA #$00                  
CODE_279973:        22 8A 8A 27   JSL CODE_278A8A           
CODE_279977:        4C EE 9A      JMP CODE_279AEE           

CODE_27997A:        20 1B A3      JSR CODE_27A31B           
CODE_27997D:        A9 00         LDA #$00                  
CODE_27997F:        9D 97 07      STA $0797,x               
CODE_279982:        B0 01         BCS CODE_279985                   
CODE_279984:        60            RTS                       

CODE_279985:        BD 20 05      LDA $0520,x               
CODE_279988:        D0 FA         BNE CODE_279984           
CODE_27998A:        AD 45 05      LDA $0545                 
CODE_27998D:        D0 0C         BNE CODE_27999B           
CODE_27998F:        BC 71 06      LDY $0671,x               
CODE_279992:        B9 FB B0      LDA.w DATA_21B0FB,y               
CODE_279995:        29 02         AND #$02                  
CODE_279997:        F0 3F         BEQ CODE_2799D8           
CODE_279999:        D0 2A         BNE CODE_2799C5           
CODE_27999B:        20 D8 99      JSR CODE_2799D8           
CODE_27999E:        BD 61 06      LDA $0661,x               
CODE_2799A1:        C9 02         CMP #$02                  
CODE_2799A3:        F0 1F         BEQ CODE_2799C4           
CODE_2799A5:        85 03         STA $03                   
CODE_2799A7:        20 79 A6      JSR CODE_27A679           
CODE_2799AA:        BD 83 07      LDA $0783,x               
CODE_2799AD:        29 1F         AND #$1F                  
CODE_2799AF:        69 B4         ADC #$B4                  
CODE_2799B1:        95 9E         STA $9E,x                 
CODE_2799B3:        A9 06         LDA #$06                  
CODE_2799B5:        9D 61 06      STA $0661,x               
CODE_2799B8:        A5 8B         LDA $8B                   
CODE_2799BA:        85 00         STA $00                   
CODE_2799BC:        06 00         ASL $00                   
CODE_2799BE:        6A            ROR A                     
CODE_2799BF:        18            CLC                       
CODE_2799C0:        75 8C         ADC $8C,x                 
CODE_2799C2:        95 8C         STA $8C,x                 
CODE_2799C4:        60            RTS                       

CODE_2799C5:        A5 A6         LDA $A6                   
CODE_2799C7:        D0 0F         BNE CODE_2799D8           
CODE_2799C9:        B5 9E         LDA $9E,x                 
CODE_2799CB:        C9 0A         CMP #$0A                  
CODE_2799CD:        30 03         BMI CODE_2799D2           
CODE_2799CF:        4C F9 9A      JMP CODE_279AF9           

CODE_2799D2:        B5 A7         LDA $A7,x                 
CODE_2799D4:        29 04         AND #$04                  
CODE_2799D6:        D0 F7         BNE CODE_2799CF           
CODE_2799D8:        A0 11         LDY #$11                  
CODE_2799DA:        BD 71 06      LDA $0671,x               
CODE_2799DD:        C9 6B         CMP #$6B                  
CODE_2799DF:        F0 0D         BEQ CODE_2799EE           
CODE_2799E1:        C9 64         CMP #$64                  
CODE_2799E3:        F0 09         BEQ CODE_2799EE           
CODE_2799E5:        A0 13         LDY #$13                  
CODE_2799E7:        BD F9 1F      LDA $1FF9,x               
CODE_2799EA:        F0 02         BEQ CODE_2799EE           
CODE_2799EC:        A0 08         LDY #$08                  
CODE_2799EE:        84 01         STY $01                   
CODE_2799F0:        B5 71         LDA $71,x                 
CODE_2799F2:        38            SEC                       
CODE_2799F3:        E5 01         SBC $01                   
CODE_2799F5:        26 00         ROL $00                   
CODE_2799F7:        C5 70         CMP $70                   
CODE_2799F9:        08            PHP                       
CODE_2799FA:        46 00         LSR $00                   
CODE_2799FC:        B5 56         LDA $56,x                 
CODE_2799FE:        E9 00         SBC #$00                  
CODE_279A00:        28            PLP                       
CODE_279A01:        E5 55         SBC $55                   
CODE_279A03:        30 CA         BMI CODE_2799CF           
CODE_279A05:        A5 9D         LDA $9D                   
CODE_279A07:        10 0A         BPL CODE_279A13           
CODE_279A09:        AD 6E 05      LDA $056E                 
CODE_279A0C:        D0 05         BNE CODE_279A13           
CODE_279A0E:        AD F4 05      LDA $05F4                 
CODE_279A11:        F0 BC         BEQ CODE_2799CF           
CODE_279A13:        A9 01         LDA #$01                  
CODE_279A15:        9D 97 07      STA $0797,x               
CODE_279A18:        AD 75 05      LDA $0575                 
CODE_279A1B:        D0 0A         BNE CODE_279A27           
CODE_279A1D:        BC 71 06      LDY $0671,x               
CODE_279A20:        B9 AF B1      LDA.w DATA_21B1AF,y               
CODE_279A23:        29 20         AND #$20                  
CODE_279A25:        F0 0B         BEQ CODE_279A32           
CODE_279A27:        AD 77 05      LDA $0577                 
CODE_279A2A:        0D 7A 05      ORA $057A                 
CODE_279A2D:        D0 03         BNE CODE_279A32           
CODE_279A2F:        4C 1D 9B      JMP CODE_279B1D           

CODE_279A32:        BC 71 06      LDY $0671,x               
CODE_279A35:        B9 FB B0      LDA.w DATA_21B0FB,y               
CODE_279A38:        29 04         AND #$04                  
CODE_279A3A:        D0 38         BNE CODE_279A74           
CODE_279A3C:        AD 7A 05      LDA $057A                 
CODE_279A3F:        0D 77 05      ORA $0577                 
CODE_279A42:        F0 17         BEQ CODE_279A5B           
CODE_279A44:        20 75 9A      JSR CODE_279A75           
CODE_279A47:        BC 71 06      LDY $0671,x               
CODE_279A4A:        B9 AF B1      LDA.w DATA_21B1AF,y               
CODE_279A4D:        29 10         AND #$10                  
CODE_279A4F:        F0 04         BEQ CODE_279A55           
CODE_279A51:        A9 03         LDA #$03                  
CODE_279A53:        D0 02         BNE CODE_279A57           
CODE_279A55:        A9 06         LDA #$06                  
CODE_279A57:        9D 61 06      STA $0661,x               
CODE_279A5A:        60            RTS                       

CODE_279A5B:        BD 61 06      LDA $0661,x               
CODE_279A5E:        C9 03         CMP #$03                  
CODE_279A60:        D0 13         BNE CODE_279A75           
CODE_279A62:        AD F4 05      LDA $05F4                 
CODE_279A65:        EE F4 05      INC $05F4                 
CODE_279A68:        22 8A 8A 27   JSL CODE_278A8A           
CODE_279A6C:        20 B2 95      JSR CODE_2795B2           
CODE_279A6F:        A9 00         LDA #$00                  
CODE_279A71:        8D 57 05      STA $0557                 
CODE_279A74:        60            RTS                       

CODE_279A75:        A9 08         LDA #$08                  
CODE_279A77:        9D 20 05      STA $0520,x               
CODE_279A7A:        A9 C0         LDA #$C0                  
CODE_279A7C:        85 9D         STA $9D                   
CODE_279A7E:        A9 02         LDA #$02                  
CODE_279A80:        8D 00 12      STA $1200                 
CODE_279A83:        DE F6 1C      DEC $1CF6,x               
CODE_279A86:        10 EC         BPL CODE_279A74           
CODE_279A88:        DA            PHX                       
CODE_279A89:        C2 30         REP #$30                  
CODE_279A8B:        BD 71 06      LDA $0671,x               
CODE_279A8E:        29 FF 00      AND #$00FF                
CODE_279A91:        85 D8         STA $D8                   
CODE_279A93:        0A            ASL A                     
CODE_279A94:        18            CLC                       
CODE_279A95:        65 D8         ADC $D8                   
CODE_279A97:        AA            TAX                       
CODE_279A98:        BF 38 84 28   LDA.l PNTR_288438,x             
CODE_279A9C:        85 D8         STA $D8                   
CODE_279A9E:        E2 30         SEP #$30                  
CODE_279AA0:        FA            PLX                       
CODE_279AA1:        A5 D9         LDA $D9                   
CODE_279AA3:        29 F4         AND #$F4                  
CODE_279AA5:        C9 04         CMP #$04                  
CODE_279AA7:        D0 08         BNE CODE_279AB1           
CODE_279AA9:        AD F4 05      LDA $05F4                 
CODE_279AAC:        18            CLC                       
CODE_279AAD:        69 04         ADC #$04                  
CODE_279AAF:        D0 03         BNE CODE_279AB4           
CODE_279AB1:        AD F4 05      LDA $05F4                 
CODE_279AB4:        EE F4 05      INC $05F4                 
CODE_279AB7:        22 8A 8A 27   JSL CODE_278A8A           
CODE_279ABB:        A5 D9         LDA $D9                   
CODE_279ABD:        29 F8         AND #$F8                  
CODE_279ABF:        C9 08         CMP #$08                  
CODE_279AC1:        D0 0B         BNE CODE_279ACE           
CODE_279AC3:        A5 D8         LDA $D8                   
CODE_279AC5:        9D 71 06      STA $0671,x               
CODE_279AC8:        FE F6 1C      INC $1CF6,x               
CODE_279ACB:        4C E6 9A      JMP CODE_279AE6           

CODE_279ACE:        BC 71 06      LDY $0671,x               
CODE_279AD1:        B9 FB B0      LDA.w DATA_21B0FB,y               
CODE_279AD4:        29 01         AND #$01                  
CODE_279AD6:        F0 13         BEQ CODE_279AEB           
CODE_279AD8:        A9 03         LDA #$03                  
CODE_279ADA:        8D 00 12      STA $1200                 
CODE_279ADD:        A9 06         LDA #$06                  
CODE_279ADF:        9D 61 06      STA $0661,x               
CODE_279AE2:        A9 00         LDA #$00                  
CODE_279AE4:        95 8C         STA $8C,x                 
CODE_279AE6:        A9 00         LDA #$00                  
CODE_279AE8:        95 9E         STA $9E,x                 
CODE_279AEA:        60            RTS                       

CODE_279AEB:        FE F6 1C      INC $1CF6,x               
CODE_279AEE:        A9 03         LDA #$03                  
CODE_279AF0:        9D 61 06      STA $0661,x               
CODE_279AF3:        A9 FF         LDA #$FF                  
CODE_279AF5:        9D A6 06      STA $06A6,x               
CODE_279AF8:        60            RTS                       

CODE_279AF9:        BD 61 06      LDA $0661,x               
CODE_279AFC:        C9 03         CMP #$03                  
CODE_279AFE:        D0 1D         BNE CODE_279B1D           
CODE_279B00:        AD 77 05      LDA $0577                 
CODE_279B03:        0D 7A 05      ORA $057A                 
CODE_279B06:        F0 03         BEQ CODE_279B0B           
CODE_279B08:        4C 62 9A      JMP CODE_279A62           

CODE_279B0B:        AD A5 06      LDA $06A5                 
CODE_279B0E:        D0 5A         BNE CODE_279B6A           
CODE_279B10:        24 17         BIT $17                   
CODE_279B12:        70 03         BVS CODE_279B17           
CODE_279B14:        4C B2 95      JMP CODE_2795B2           

CODE_279B17:        A9 04         LDA #$04                  
CODE_279B19:        9D 61 06      STA $0661,x               
CODE_279B1C:        60            RTS                       

CODE_279B1D:        AD 52 05      LDA $0552                 
CODE_279B20:        0D 7A 05      ORA $057A                 
CODE_279B23:        1D 20 05      ORA $0520,x               
CODE_279B26:        0D 53 05      ORA $0553                 
CODE_279B29:        D0 3F         BNE CODE_279B6A           
CODE_279B2B:        BD 61 06      LDA $0661,x               
CODE_279B2E:        C9 05         CMP #$05                  
CODE_279B30:        D0 19         BNE CODE_279B4B           
CODE_279B32:        A0 00         LDY #$00                  
CODE_279B34:        A5 8B         LDA $8B                   
CODE_279B36:        F0 13         BEQ CODE_279B4B           
CODE_279B38:        10 01         BPL CODE_279B3B           
CODE_279B3A:        C8            INY                       
CODE_279B3B:        84 00         STY $00                   
CODE_279B3D:        55 8C         EOR $8C,x                 
CODE_279B3F:        30 0A         BMI CODE_279B4B           
CODE_279B41:        22 37 A8 27   JSL CODE_27A837           
CODE_279B45:        C4 00         CPY $00                   
CODE_279B47:        D0 21         BNE CODE_279B6A           
CODE_279B49:        F0 1B         BEQ CODE_279B66           
CODE_279B4B:        BC 71 06      LDY $0671,x               
CODE_279B4E:        B9 78 AE      LDA.w DATA_21AE78,y               
CODE_279B51:        29 10         AND #$10                  
CODE_279B53:        F0 11         BEQ CODE_279B66           
CODE_279B55:        22 37 A8 27   JSL CODE_27A837           
CODE_279B59:        BD 79 06      LDA $0679,x               
CODE_279B5C:        29 BF         AND #$BF                  
CODE_279B5E:        88            DEY                       
CODE_279B5F:        F0 02         BEQ CODE_279B63           
CODE_279B61:        09 40         ORA #$40                  
CODE_279B63:        9D 79 06      STA $0679,x               
CODE_279B66:        22 C6 A4 27   JSL CODE_27A4C6           
CODE_279B6A:        60            RTS                       

CODE_279B6B:        20 16 99      JSR CODE_279916           
CODE_279B6E:        6B            RTL                       

CODE_279B6F:        20 7A 99      JSR CODE_27997A           
CODE_279B72:        6B            RTL                       

CODE_279B73:        20 75 9A      JSR CODE_279A75           
CODE_279B76:        6B            RTL                       

CODE_279B77:        20 EE 9A      JSR CODE_279AEE           
CODE_279B7A:        6B            RTL                       

CODE_279B7B:        60            RTS                       

CODE_279B7C:        6B            RTL                       

CODE_279B7D:        22 82 9B 27   JSL CODE_279B82           
CODE_279B81:        60            RTS                       

CODE_279B82:        22 96 9C 27   JSL CODE_279C96           ;Sprite INIT Routines
CODE_279B86:        FE 61 06      INC $0661,x               
CODE_279B89:        22 B7 9B 27   JSL CODE_279BB7           
CODE_279B8D:        DA            PHX                       
CODE_279B8E:        C2 30         REP #$30                  ;\
CODE_279B90:        BD 71 06      LDA $0671,x               ; |
CODE_279B93:        29 FF 00      AND #$00FF                ; |
CODE_279B96:        85 00         STA $00                   ; |
CODE_279B98:        0A            ASL A                     ; |
CODE_279B99:        18            CLC                       ; |
CODE_279B9A:        65 00         ADC $00                   ; |Sprite # to 24-bit pointer index
CODE_279B9C:        AA            TAX                       ; | then jump to pointer code.
CODE_279B9D:        E2 20         SEP #$20                  ; |
CODE_279B9F:        BF 00 80 28   LDA.l PNTR_288000,x      ; |
CODE_279BA3:        85 00         STA $00                   ; |
CODE_279BA5:        BF 01 80 28   LDA.l PNTR_288000+1,x    ; |
CODE_279BA9:        85 01         STA $01                   ; |
CODE_279BAB:        BF 02 80 28   LDA.l PNTR_288000+2,x    ; |
CODE_279BAF:        85 02         STA $02                   ; |
CODE_279BB1:        E2 10         SEP #$10                  ; |
CODE_279BB3:        FA            PLX                       ; |
CODE_279BB4:        DC 00 00      JML [$0000]               ;/

CODE_279BB7:        BC 71 06      LDY $0671,x               ;\
CODE_279BBA:        B9 63 B2      LDA.w DATA_21B263,y               ; |$21:B263, NOT bank $27
CODE_279BBD:        29 07         AND #$07                  ; |
CODE_279BBF:        9D E9 1F      STA $1FE9,x               ; |
CODE_279BC2:        6B            RTL                       ;/

CODE_279BC3:        20 DF 9B      JSR CODE_279BDF           
CODE_279BC6:        6B            RTL                       

CODE_279BC7:        20 DB 9B      JSR CODE_279BDB           
CODE_279BCA:        6B            RTL                       

CODE_279BCB:        20 D7 9B      JSR CODE_279BD7           
CODE_279BCE:        6B            RTL                       

CODE_279BCF:        20 33 9C      JSR CODE_279C33           
CODE_279BD2:        6B            RTL                       

CODE_279BD3:        20 52 9C      JSR CODE_279C52           
CODE_279BD6:        6B            RTL                       

CODE_279BD7:        A9 04         LDA #$04                  
CODE_279BD9:        D0 13         BNE CODE_279BEE           
CODE_279BDB:        A9 02         LDA #$02                  
CODE_279BDD:        D0 0F         BNE CODE_279BEE           
CODE_279BDF:        BD F1 1F      LDA $1FF1,x               
CODE_279BE2:        F0 08         BEQ CODE_279BEC           
CODE_279BE4:        BD 51 06      LDA $0651,x               
CODE_279BE7:        D0 F2         BNE CODE_279BDB           
CODE_279BE9:        9D F1 1F      STA $1FF1,x               
CODE_279BEC:        A9 00         LDA #$00                  
CODE_279BEE:        85 00         STA $00                   
CODE_279BF0:        22 5F A8 27   JSL CODE_27A85F           
CODE_279BF4:        F0 6E         BEQ CODE_279C64           
CODE_279BF6:        AD 25 04      LDA $0425                 
CODE_279BF9:        D0 6A         BNE CODE_279C65           
CODE_279BFB:        B5 56         LDA $56,x                 
CODE_279BFD:        C9 02         CMP #$02                  
CODE_279BFF:        10 32         BPL CODE_279C33           
CODE_279C01:        8A            TXA                       
CODE_279C02:        18            CLC                       
CODE_279C03:        65 15         ADC $15                   
CODE_279C05:        4A            LSR A                     
CODE_279C06:        B0 5C         BCS CODE_279C64                   
CODE_279C08:        29 01         AND #$01                  
CODE_279C0A:        85 01         STA $01                   
CODE_279C0C:        65 00         ADC $00                   
CODE_279C0E:        A8            TAY                       
CODE_279C0F:        AD 10 02      LDA $0210                 
CODE_279C12:        18            CLC                       
CODE_279C13:        79 E7 AF      ADC.w DATA_21AFE7,y               
CODE_279C16:        26 00         ROL $00                   
CODE_279C18:        D5 5F         CMP $5F,x                 
CODE_279C1A:        08            PHP                       
CODE_279C1B:        A5 12         LDA $12                   
CODE_279C1D:        46 00         LSR $00                   
CODE_279C1F:        79 ED AF      ADC.w DATA_21AFED,y               
CODE_279C22:        28            PLP                       
CODE_279C23:        F5 44         SBC $44,x                 
CODE_279C25:        85 00         STA $00                   
CODE_279C27:        A4 01         LDY $01                   
CODE_279C29:        F0 04         BEQ CODE_279C2F           
CODE_279C2B:        49 80         EOR #$80                  
CODE_279C2D:        85 00         STA $00                   
CODE_279C2F:        A5 00         LDA $00                   
CODE_279C31:        10 31         BPL CODE_279C64           
CODE_279C33:        BD 71 06      LDA $0671,x               
CODE_279C36:        C9 58         CMP #$58                  
CODE_279C38:        F0 10         BEQ CODE_279C4A           
CODE_279C3A:        C9 4F         CMP #$4F                  
CODE_279C3C:        F0 0C         BEQ CODE_279C4A           
CODE_279C3E:        C9 6A         CMP #$6A                  
CODE_279C40:        F0 08         BEQ CODE_279C4A           
CODE_279C42:        C9 61         CMP #$61                  
CODE_279C44:        F0 04         BEQ CODE_279C4A           
CODE_279C46:        C9 59         CMP #$59                  
CODE_279C48:        D0 08         BNE CODE_279C52           
CODE_279C4A:        BC 71 07      LDY $0771,x               
CODE_279C4D:        A9 00         LDA #$00                  
CODE_279C4F:        99 B4 06      STA $06B4,y               
CODE_279C52:        BC 59 06      LDY $0659,x               
CODE_279C55:        30 08         BMI CODE_279C5F           
CODE_279C57:        B9 10 1B      LDA $1B10,y               
CODE_279C5A:        29 7F         AND #$7F                  
CODE_279C5C:        99 10 1B      STA $1B10,y               
CODE_279C5F:        A9 00         LDA #$00                  
CODE_279C61:        9D 61 06      STA $0661,x               
CODE_279C64:        60            RTS                       

CODE_279C65:        A5 15         LDA $15                   
CODE_279C67:        4A            LSR A                     
CODE_279C68:        B0 FA         BCS CODE_279C64                   
CODE_279C6A:        29 01         AND #$01                  
CODE_279C6C:        85 01         STA $01                   
CODE_279C6E:        A8            TAY                       
CODE_279C6F:        AD 43 05      LDA $0543                 
CODE_279C72:        18            CLC                       
CODE_279C73:        79 E3 AF      ADC.w DATA_21AFE3,y               
CODE_279C76:        26 00         ROL $00                   
CODE_279C78:        D5 71         CMP $71,x                 
CODE_279C7A:        08            PHP                       
CODE_279C7B:        AD 42 05      LDA $0542                 
CODE_279C7E:        46 00         LSR $00                   
CODE_279C80:        79 E5 AF      ADC.w DATA_21AFE5,y               
CODE_279C83:        28            PLP                       
CODE_279C84:        F5 56         SBC $56,x                 
CODE_279C86:        85 00         STA $00                   
CODE_279C88:        A4 01         LDY $01                   
CODE_279C8A:        F0 04         BEQ CODE_279C90           
CODE_279C8C:        49 80         EOR #$80                  
CODE_279C8E:        85 00         STA $00                   
CODE_279C90:        A5 00         LDA $00                   
CODE_279C92:        10 D0         BPL CODE_279C64           
CODE_279C94:        30 9D         BMI CODE_279C33           
CODE_279C96:        9E 91 06      STZ $0691,x               
CODE_279C99:        BD 71 06      LDA $0671,x               
CODE_279C9C:        C9 7F         CMP #$7F                  
CODE_279C9E:        F0 04         BEQ CODE_279CA4           
CODE_279CA0:        C9 7D         CMP #$7D                  
CODE_279CA2:        D0 05         BNE CODE_279CA9           
CODE_279CA4:        B5 71         LDA $71,x                 
CODE_279CA6:        9D 91 06      STA $0691,x               
CODE_279CA9:        A9 00         LDA #$00                  
CODE_279CAB:        9D 89 06      STA $0689,x               
CODE_279CAE:        95 7A         STA $7A,x                 
CODE_279CB0:        9D 18 05      STA $0518,x               
CODE_279CB3:        9D 20 05      STA $0520,x               
CODE_279CB6:        95 8C         STA $8C,x                 
CODE_279CB8:        95 9E         STA $9E,x                 
CODE_279CBA:        9D 79 06      STA $0679,x               
CODE_279CBD:        9D 69 06      STA $0669,x               
CODE_279CC0:        9D 69 07      STA $0769,x               
CODE_279CC3:        95 A7         STA $A7,x                 
CODE_279CC5:        E0 06         CPX #$06                  
CODE_279CC7:        B0 0C         BCS CODE_279CD5                   
CODE_279CC9:        9D 49 1A      STA $1A49,x               
CODE_279CCC:        9D 4F 1A      STA $1A4F,x               
CODE_279CCF:        9D EB 06      STA $06EB,x               
CODE_279CD2:        9D B7 06      STA $06B7,x               
CODE_279CD5:        E0 05         CPX #$05                  
CODE_279CD7:        B0 3A         BCS CODE_279D13                   
CODE_279CD9:        9D 97 07      STA $0797,x               
CODE_279CDC:        9D AB 06      STA $06AB,x               
CODE_279CDF:        9D A6 06      STA $06A6,x               
CODE_279CE2:        9D B6 07      STA $07B6,x               
CODE_279CE5:        9D 21 10      STA $1021,x               
CODE_279CE8:        95 68         STA $68,x                 
CODE_279CEA:        95 4D         STA $4D,x                 
CODE_279CEC:        9D D2 1F      STA $1FD2,x               
CODE_279CEF:        9D 71 07      STA $0771,x               
CODE_279CF2:        9D 76 07      STA $0776,x               
CODE_279CF5:        9D 7B 07      STA $077B,x               
CODE_279CF8:        9D F9 1F      STA $1FF9,x               
CODE_279CFB:        9D F1 1F      STA $1FF1,x               
CODE_279CFE:        9D F6 1C      STA $1CF6,x               
CODE_279D01:        9D 49 1A      STA $1A49,x               
CODE_279D04:        9D C8 1C      STA $1CC8,x               
CODE_279D07:        9D CD 1C      STA $1CCD,x               
CODE_279D0A:        9D D2 1C      STA $1CD2,x               
CODE_279D0D:        9D D7 1C      STA $1CD7,x               
CODE_279D10:        9D DC 1C      STA $1CDC,x               
CODE_279D13:        6B            RTL                       

CODE_279D14:        A5 9C         LDA $9C                   
CODE_279D16:        F0 27         BEQ CODE_279D3F           
CODE_279D18:        BD 71 06      LDA $0671,x               
CODE_279D1B:        C9 2E         CMP #$2E                  
CODE_279D1D:        D0 04         BNE CODE_279D23           
CODE_279D1F:        B5 68         LDA $68,x                 
CODE_279D21:        F0 08         BEQ CODE_279D2B           
CODE_279D23:        C9 2F         CMP #$2F                  
CODE_279D25:        F0 04         BEQ CODE_279D2B           
CODE_279D27:        22 6E 9D 27   JSL CODE_279D6E           
CODE_279D2B:        BC 71 06      LDY $0671,x               
CODE_279D2E:        B9 AF B1      LDA.w DATA_21B1AF,y               
CODE_279D31:        29 0F         AND #$0F                  
CODE_279D33:        C9 05         CMP #$05                  
CODE_279D35:        F0 08         BEQ CODE_279D3F           
CODE_279D37:        BD 61 06      LDA $0661,x               
CODE_279D3A:        C9 02         CMP #$02                  
CODE_279D3C:        F0 01         BEQ CODE_279D3F           
CODE_279D3E:        60            RTS                       

CODE_279D3F:        22 44 9D 27   JSL CODE_279D44           
CODE_279D43:        60            RTS                       

CODE_279D44:        DA            PHX                       ;Sprite MAIN Routines
CODE_279D45:        C2 30         REP #$30                  
CODE_279D47:        BD 71 06      LDA $0671,x               
CODE_279D4A:        29 FF 00      AND #$00FF                
CODE_279D4D:        85 00         STA $00                   
CODE_279D4F:        0A            ASL A                     
CODE_279D50:        18            CLC                       
CODE_279D51:        65 00         ADC $00                   
CODE_279D53:        AA            TAX                       
CODE_279D54:        E2 20         SEP #$20                  
CODE_279D56:        BF 1C 82 28   LDA.l PNTR_28821C,x             
CODE_279D5A:        85 00         STA $00                   
CODE_279D5C:        BF 1D 82 28   LDA.l PNTR_28821C+1,x             
CODE_279D60:        85 01         STA $01                   
CODE_279D62:        BF 1E 82 28   LDA.l PNTR_28821C+2,x             
CODE_279D66:        85 02         STA $02                   
CODE_279D68:        E2 10         SEP #$10                  
CODE_279D6A:        FA            PLX                       
CODE_279D6B:        DC 00 00      JML [$0000]               

CODE_279D6E:        DA            PHX                       
CODE_279D6F:        BC 71 06      LDY $0671,x               
CODE_279D72:        B9 AF B1      LDA.w DATA_21B1AF,y               
CODE_279D75:        29 0F         AND #$0F                  
CODE_279D77:        85 00         STA $00                   
CODE_279D79:        0A            ASL A                     
CODE_279D7A:        18            CLC                       
CODE_279D7B:        65 00         ADC $00                   
CODE_279D7D:        AA            TAX                       
CODE_279D7E:        BF 94 9D 27   LDA.l PNTR_279D94,x             
CODE_279D82:        85 00         STA $00                   
CODE_279D84:        BF 95 9D 27   LDA.l PNTR_279D94+1,x             
CODE_279D88:        85 01         STA $01                   
CODE_279D8A:        BF 96 9D 27   LDA.l PNTR_279D94+2,x             
CODE_279D8E:        85 02         STA $02                   
CODE_279D90:        FA            PLX                       
CODE_279D91:        DC 00 00      JML [$0000]               

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

CODE_279DC1:        6B            RTL                       

CODE_279DC2:        B5 71         LDA $71,x                 
CODE_279DC4:        38            SEC                       
CODE_279DC5:        ED 43 05      SBC $0543                 
CODE_279DC8:        95 83         STA $83,x                 
CODE_279DCA:        B5 5F         LDA $5F,x                 
CODE_279DCC:        38            SEC                       
CODE_279DCD:        ED 10 02      SBC $0210                 
CODE_279DD0:        95 7A         STA $7A,x                 
CODE_279DD2:        6B            RTL                       

CODE_279DD3:        B5 A7         LDA $A7,x                 
CODE_279DD5:        29 04         AND #$04                  
CODE_279DD7:        D0 1E         BNE CODE_279DF7           
CODE_279DD9:        AD FC 05      LDA $05FC                 
CODE_279DDC:        F0 19         BEQ CODE_279DF7           
CODE_279DDE:        AD 24 04      LDA $0424                 
CODE_279DE1:        C9 01         CMP #$01                  
CODE_279DE3:        F0 12         BEQ CODE_279DF7           
CODE_279DE5:        A0 00         LDY #$00                  
CODE_279DE7:        AD 80 07      LDA $0780                 
CODE_279DEA:        10 01         BPL CODE_279DED           
CODE_279DEC:        88            DEY                       
CODE_279DED:        18            CLC                       
CODE_279DEE:        75 71         ADC $71,x                 
CODE_279DF0:        95 71         STA $71,x                 
CODE_279DF2:        98            TYA                       
CODE_279DF3:        75 56         ADC $56,x                 
CODE_279DF5:        95 56         STA $56,x                 
CODE_279DF7:        6B            RTL                       

CODE_279DF8:        B5 71         LDA $71,x                 
CODE_279DFA:        38            SEC                       
CODE_279DFB:        ED 43 05      SBC $0543                 
CODE_279DFE:        95 83         STA $83,x                 
CODE_279E00:        85 00         STA $00                   
CODE_279E02:        38            SEC                       
CODE_279E03:        BD AB 06      LDA $06AB,x               
CODE_279E06:        F0 07         BEQ CODE_279E0F           
CODE_279E08:        C9 40         CMP #$40                  
CODE_279E0A:        90 02         BCC CODE_279E0E           
CODE_279E0C:        4A            LSR A                     
CODE_279E0D:        4A            LSR A                     
CODE_279E0E:        4A            LSR A                     
CODE_279E0F:        B5 5F         LDA $5F,x                 
CODE_279E11:        ED 10 02      SBC $0210                 
CODE_279E14:        95 7A         STA $7A,x                 
CODE_279E16:        85 01         STA $01                   
CODE_279E18:        BD 79 06      LDA $0679,x               
CODE_279E1B:        85 02         STA $02                   
CODE_279E1D:        29 30         AND #$30                  
CODE_279E1F:        C9 10         CMP #$10                  
CODE_279E21:        F0 04         BEQ CODE_279E27           
CODE_279E23:        A9 20         LDA #$20                  
CODE_279E25:        04 02         TSB $02                   
CODE_279E27:        BC 71 06      LDY $0671,x               
CODE_279E2A:        B9 CB B3      LDA.w DATA_21B3CB,y               
CODE_279E2D:        29 01         AND #$01                  
CODE_279E2F:        04 02         TSB $02                   
CODE_279E31:        AC 18 04      LDY $0418                 
CODE_279E34:        BD 69 07      LDA $0769,x               
CODE_279E37:        F0 1E         BEQ CODE_279E57           
CODE_279E39:        DE 69 07      DEC $0769,x               
CODE_279E3C:        BD 71 06      LDA $0671,x               
CODE_279E3F:        C9 19         CMP #$19                  
CODE_279E41:        F0 14         BEQ CODE_279E57           
CODE_279E43:        C9 4B         CMP #$4B                  
CODE_279E45:        F0 0A         BEQ CODE_279E51           
CODE_279E47:        C9 4C         CMP #$4C                  
CODE_279E49:        F0 06         BEQ CODE_279E51           
CODE_279E4B:        22 8D AA 27   JSL CODE_27AA8D           
CODE_279E4F:        80 04         BRA CODE_279E55           

CODE_279E51:        22 74 AA 27   JSL CODE_27AA74           
CODE_279E55:        10 03         BPL CODE_279E5A           
CODE_279E57:        BD E9 1F      LDA $1FE9,x               
CODE_279E5A:        0A            ASL A                     
CODE_279E5B:        85 03         STA $03                   
CODE_279E5D:        BD 71 06      LDA $0671,x               
CODE_279E60:        C9 55         CMP #$55                  
CODE_279E62:        D0 02         BNE CODE_279E66           
CODE_279E64:        E6 03         INC $03                   
CODE_279E66:        BD 81 06      LDA $0681,x               
CODE_279E69:        85 04         STA $04                   
CODE_279E6B:        BD 51 06      LDA $0651,x               
CODE_279E6E:        85 07         STA $07                   
CODE_279E70:        BD 69 06      LDA $0669,x               
CODE_279E73:        0A            ASL A                     
CODE_279E74:        85 05         STA $05                   
CODE_279E76:        A5 DE         LDA $DE                   
CODE_279E78:        0A            ASL A                     
CODE_279E79:        18            CLC                       
CODE_279E7A:        65 DE         ADC $DE                   
CODE_279E7C:        AA            TAX                       
CODE_279E7D:        BF 7F B4 21   LDA.l DATA_21B47F,x             
CODE_279E81:        85 D8         STA $D8                   
CODE_279E83:        BF 80 B4 21   LDA.l DATA_21B47F+1,x             
CODE_279E87:        85 D9         STA $D9                   
CODE_279E89:        BF 81 B4 21   LDA.l DATA_21B47F+2,x             
CODE_279E8D:        85 DA         STA $DA                   
CODE_279E8F:        B7 D8         LDA [$D8],y               
CODE_279E91:        18            CLC                       
CODE_279E92:        65 05         ADC $05                   
CODE_279E94:        85 05         STA $05                   
CODE_279E96:        AA            TAX                       
CODE_279E97:        A4 9B         LDY $9B                   
CODE_279E99:        B9 C6 00      LDA $00C6,y               
CODE_279E9C:        85 06         STA $06                   
CODE_279E9E:        A8            TAY                       
CODE_279E9F:        6B            RTL                       

CODE_279EA0:        22 F8 9D 27   JSL CODE_279DF8           
CODE_279EA4:        22 90 9F 27   JSL CODE_279F90           
CODE_279EA8:        A6 9B         LDX $9B                   
CODE_279EAA:        BD 71 06      LDA $0671,x               
CODE_279EAD:        C9 2F         CMP #$2F                  
CODE_279EAF:        D0 09         BNE CODE_279EBA           
CODE_279EB1:        BD 61 06      LDA $0661,x               
CODE_279EB4:        C9 06         CMP #$06                  
CODE_279EB6:        22 12 A4 29   JSL CODE_29A412           
CODE_279EBA:        60            RTS                       

CODE_279EBB:        20 A0 9E      JSR CODE_279EA0           
CODE_279EBE:        6B            RTL                       

CODE_279EBF:        20 A0 9E      JSR CODE_279EA0           
CODE_279EC2:        C2 10         REP #$10                  
CODE_279EC4:        BC C6 00      LDY $00C6,x               
CODE_279EC7:        B9 03 08      LDA $0803,y               
CODE_279ECA:        29 BF         AND #$BF                  
CODE_279ECC:        99 03 08      STA $0803,y               
CODE_279ECF:        99 0B 08      STA $080B,y               
CODE_279ED2:        09 40         ORA #$40                  
CODE_279ED4:        99 07 08      STA $0807,y               
CODE_279ED7:        99 0F 08      STA $080F,y               
CODE_279EDA:        E2 10         SEP #$10                  
CODE_279EDC:        60            RTS                       

CODE_279EDD:        20 BF 9E      JSR CODE_279EBF           
CODE_279EE0:        6B            RTL                       

CODE_279EE1:        20 11 9F      JSR CODE_279F11           
CODE_279EE4:        C2 10         REP #$10                  
CODE_279EE6:        B4 C6         LDY $C6,x                 
CODE_279EE8:        B9 F3 07      LDA $07F3,y               
CODE_279EEB:        29 BF         AND #$BF                  
CODE_279EED:        99 F3 07      STA $07F3,y               
CODE_279EF0:        99 FB 07      STA $07FB,y               
CODE_279EF3:        09 40         ORA #$40                  
CODE_279EF5:        99 F7 07      STA $07F7,y               
CODE_279EF8:        99 FF 07      STA $07FF,y               
CODE_279EFB:        B9 03 08      LDA $0803,y               
CODE_279EFE:        29 BF         AND #$BF                  
CODE_279F00:        99 03 08      STA $0803,y               
CODE_279F03:        99 0B 08      STA $080B,y               
CODE_279F06:        09 40         ORA #$40                  
CODE_279F08:        99 07 08      STA $0807,y               
CODE_279F0B:        99 0F 08      STA $080F,y               
CODE_279F0E:        E2 10         SEP #$10                  
CODE_279F10:        6B            RTL                       

CODE_279F11:        22 F8 9D 27   JSL CODE_279DF8           
CODE_279F15:        A6 9B         LDX $9B                   
CODE_279F17:        BD 69 06      LDA $0669,x               
CODE_279F1A:        0A            ASL A                     
CODE_279F1B:        18            CLC                       
CODE_279F1C:        65 05         ADC $05                   
CODE_279F1E:        85 05         STA $05                   
CODE_279F20:        AA            TAX                       
CODE_279F21:        A5 02         LDA $02                   
CODE_279F23:        10 02         BPL CODE_279F27           
CODE_279F25:        E8            INX                       
CODE_279F26:        E8            INX                       
CODE_279F27:        22 90 9F 27   JSL CODE_279F90           
CODE_279F2B:        C2 20         REP #$20                  
CODE_279F2D:        A6 9B         LDX $9B                   
CODE_279F2F:        B5 C6         LDA $C6,x                 
CODE_279F31:        18            CLC                       
CODE_279F32:        69 10 00      ADC #$0010                
CODE_279F35:        95 C6         STA $C6,x                 
CODE_279F37:        E2 20         SEP #$20                  
CODE_279F39:        46 04         LSR $04                   
CODE_279F3B:        A6 05         LDX $05                   
CODE_279F3D:        A5 02         LDA $02                   
CODE_279F3F:        30 02         BMI CODE_279F43           
CODE_279F41:        E8            INX                       
CODE_279F42:        E8            INX                       
CODE_279F43:        A9 10         LDA #$10                  
CODE_279F45:        18            CLC                       
CODE_279F46:        65 00         ADC $00                   
CODE_279F48:        85 00         STA $00                   
CODE_279F4A:        22 90 9F 27   JSL CODE_279F90           
CODE_279F4E:        A6 9B         LDX $9B                   
CODE_279F50:        60            RTS                       

CODE_279F51:        20 11 9F      JSR CODE_279F11           
CODE_279F54:        6B            RTL                       

CODE_279F55:        22 F8 9D 27   JSL CODE_279DF8           
CODE_279F59:        A6 9B         LDX $9B                   
CODE_279F5B:        BD 69 06      LDA $0669,x               
CODE_279F5E:        18            CLC                       
CODE_279F5F:        65 05         ADC $05                   
CODE_279F61:        85 05         STA $05                   
CODE_279F63:        AA            TAX                       
CODE_279F64:        22 79 A0 27   JSL CODE_27A079           
CODE_279F68:        A6 9B         LDX $9B                   
CODE_279F6A:        60            RTS                       

CODE_279F6B:        20 55 9F      JSR CODE_279F55           
CODE_279F6E:        6B            RTL                       

CODE_279F6F:        B5 8C         LDA $8C,x                 
CODE_279F71:        D0 01         BNE CODE_279F74           
CODE_279F73:        6B            RTL                       

CODE_279F74:        10 04         BPL CODE_279F7A           
CODE_279F76:        22 59 A8 27   JSL CODE_27A859           ;Invert Accumulator (8-bit)
CODE_279F7A:        29 F0         AND #$F0                  
CODE_279F7C:        4A            LSR A                     
CODE_279F7D:        4A            LSR A                     
CODE_279F7E:        4A            LSR A                     
CODE_279F7F:        4A            LSR A                     
CODE_279F80:        A8            TAY                       
CODE_279F81:        B9 F7 AF      LDA.w DATA_21AFF7,y               
CODE_279F84:        A0 00         LDY #$00                  
CODE_279F86:        25 15         AND $15                   
CODE_279F88:        F0 01         BEQ CODE_279F8B           
CODE_279F8A:        C8            INY                       
CODE_279F8B:        98            TYA                       
CODE_279F8C:        9D 69 06      STA $0669,x               
CODE_279F8F:        6B            RTL                       

CODE_279F90:        A4 9B         LDY $9B                   
CODE_279F92:        C2 30         REP #$30                  
CODE_279F94:        B9 C6 00      LDA $00C6,y               
CODE_279F97:        A8            TAY                       
CODE_279F98:        E2 20         SEP #$20                  
CODE_279F9A:        A5 04         LDA $04                   
CODE_279F9C:        4A            LSR A                     
CODE_279F9D:        90 03         BCC CODE_279FA2           
CODE_279F9F:        82 D4 00      BRL CODE_27A076           

CODE_279FA2:        A5 00         LDA $00                   
CODE_279FA4:        99 01 08      STA $0801,y               
CODE_279FA7:        99 05 08      STA $0805,y               
CODE_279FAA:        18            CLC                       
CODE_279FAB:        69 08         ADC #$08                  
CODE_279FAD:        99 09 08      STA $0809,y               
CODE_279FB0:        99 0D 08      STA $080D,y               
CODE_279FB3:        A5 01         LDA $01                   
CODE_279FB5:        99 00 08      STA $0800,y               
CODE_279FB8:        99 08 08      STA $0808,y               
CODE_279FBB:        18            CLC                       
CODE_279FBC:        69 08         ADC #$08                  
CODE_279FBE:        99 04 08      STA $0804,y               
CODE_279FC1:        99 0C 08      STA $080C,y               
CODE_279FC4:        5A            PHY                       
CODE_279FC5:        DA            PHX                       
CODE_279FC6:        9B            TXY                       
CODE_279FC7:        C2 20         REP #$20                  
CODE_279FC9:        A5 DE         LDA $DE                   
CODE_279FCB:        29 FF 00      AND #$00FF                
CODE_279FCE:        85 D8         STA $D8                   
CODE_279FD0:        0A            ASL A                     
CODE_279FD1:        18            CLC                       
CODE_279FD2:        65 D8         ADC $D8                   
CODE_279FD4:        AA            TAX                       
CODE_279FD5:        E2 20         SEP #$20                  
CODE_279FD7:        BD 8E B4      LDA.w DATA_21B48E,x               
CODE_279FDA:        85 D8         STA $D8                   
CODE_279FDC:        BD 8F B4      LDA.w DATA_21B48E+1,x               
CODE_279FDF:        85 D9         STA $D9                   
CODE_279FE1:        BD 90 B4      LDA.w DATA_21B48E+2,x               
CODE_279FE4:        85 DA         STA $DA                   
CODE_279FE6:        B7 D8         LDA [$D8],y               
CODE_279FE8:        48            PHA                       
CODE_279FE9:        C8            INY                       
CODE_279FEA:        B7 D8         LDA [$D8],y               
CODE_279FEC:        85 D9         STA $D9                   
CODE_279FEE:        68            PLA                       
CODE_279FEF:        85 D8         STA $D8                   
CODE_279FF1:        FA            PLX                       
CODE_279FF2:        7A            PLY                       
CODE_279FF3:        A5 D8         LDA $D8                   
CODE_279FF5:        99 02 08      STA $0802,y               
CODE_279FF8:        1A            INC A                     
CODE_279FF9:        99 0A 08      STA $080A,y               
CODE_279FFC:        A5 D9         LDA $D9                   
CODE_279FFE:        99 06 08      STA $0806,y               
CODE_27A001:        1A            INC A                     
CODE_27A002:        99 0E 08      STA $080E,y               
CODE_27A005:        A5 02         LDA $02                   
CODE_27A007:        05 03         ORA $03                   
CODE_27A009:        99 03 08      STA $0803,y               
CODE_27A00C:        99 0B 08      STA $080B,y               
CODE_27A00F:        99 07 08      STA $0807,y               
CODE_27A012:        99 0F 08      STA $080F,y               
CODE_27A015:        24 02         BIT $02                   
CODE_27A017:        50 1C         BVC CODE_27A035                   
CODE_27A019:        B9 02 08      LDA $0802,y               
CODE_27A01C:        48            PHA                       
CODE_27A01D:        B9 06 08      LDA $0806,y               
CODE_27A020:        99 02 08      STA $0802,y               
CODE_27A023:        68            PLA                       
CODE_27A024:        99 06 08      STA $0806,y               
CODE_27A027:        B9 0A 08      LDA $080A,y               
CODE_27A02A:        48            PHA                       
CODE_27A02B:        B9 0E 08      LDA $080E,y               
CODE_27A02E:        99 0A 08      STA $080A,y               
CODE_27A031:        68            PLA                       
CODE_27A032:        99 0E 08      STA $080E,y               
CODE_27A035:        24 02         BIT $02                   
CODE_27A037:        10 1C         BPL CODE_27A055           
CODE_27A039:        B9 02 08      LDA $0802,y               
CODE_27A03C:        48            PHA                       
CODE_27A03D:        B9 0A 08      LDA $080A,y               
CODE_27A040:        99 02 08      STA $0802,y               
CODE_27A043:        68            PLA                       
CODE_27A044:        99 0A 08      STA $080A,y               
CODE_27A047:        B9 06 08      LDA $0806,y               
CODE_27A04A:        48            PHA                       
CODE_27A04B:        B9 0E 08      LDA $080E,y               
CODE_27A04E:        99 06 08      STA $0806,y               
CODE_27A051:        68            PLA                       
CODE_27A052:        99 0E 08      STA $080E,y               
CODE_27A055:        C2 20         REP #$20                  
CODE_27A057:        5A            PHY                       
CODE_27A058:        98            TYA                       
CODE_27A059:        4A            LSR A                     
CODE_27A05A:        4A            LSR A                     
CODE_27A05B:        A8            TAY                       
CODE_27A05C:        E2 20         SEP #$20                  
CODE_27A05E:        A5 07         LDA $07                   
CODE_27A060:        2A            ROL A                     
CODE_27A061:        2A            ROL A                     
CODE_27A062:        08            PHP                       
CODE_27A063:        29 01         AND #$01                  
CODE_27A065:        99 20 0A      STA $0A20,y               
CODE_27A068:        99 22 0A      STA $0A22,y               
CODE_27A06B:        28            PLP                       
CODE_27A06C:        2A            ROL A                     
CODE_27A06D:        29 01         AND #$01                  
CODE_27A06F:        99 21 0A      STA $0A21,y               
CODE_27A072:        99 23 0A      STA $0A23,y               
CODE_27A075:        7A            PLY                       
CODE_27A076:        E2 30         SEP #$30                  
CODE_27A078:        6B            RTL                       

CODE_27A079:        A4 9B         LDY $9B                   
CODE_27A07B:        C2 30         REP #$30                  
CODE_27A07D:        B9 C6 00      LDA $00C6,y               
CODE_27A080:        A8            TAY                       
CODE_27A081:        E2 20         SEP #$20                  
CODE_27A083:        A5 04         LDA $04                   
CODE_27A085:        4A            LSR A                     
CODE_27A086:        B0 EE         BCS CODE_27A076                   
CODE_27A088:        A5 00         LDA $00                   
CODE_27A08A:        99 01 08      STA $0801,y               
CODE_27A08D:        99 05 08      STA $0805,y               
CODE_27A090:        99 09 08      STA $0809,y               
CODE_27A093:        18            CLC                       
CODE_27A094:        69 08         ADC #$08                  
CODE_27A096:        99 0D 08      STA $080D,y               
CODE_27A099:        99 11 08      STA $0811,y               
CODE_27A09C:        99 15 08      STA $0815,y               
CODE_27A09F:        A5 01         LDA $01                   
CODE_27A0A1:        99 00 08      STA $0800,y               
CODE_27A0A4:        99 0C 08      STA $080C,y               
CODE_27A0A7:        18            CLC                       
CODE_27A0A8:        69 08         ADC #$08                  
CODE_27A0AA:        99 04 08      STA $0804,y               
CODE_27A0AD:        99 10 08      STA $0810,y               
CODE_27A0B0:        18            CLC                       
CODE_27A0B1:        69 08         ADC #$08                  
CODE_27A0B3:        99 08 08      STA $0808,y               
CODE_27A0B6:        99 14 08      STA $0814,y               
CODE_27A0B9:        5A            PHY                       
CODE_27A0BA:        DA            PHX                       
CODE_27A0BB:        9B            TXY                       
CODE_27A0BC:        C2 20         REP #$20                  
CODE_27A0BE:        A5 DE         LDA $DE                   
CODE_27A0C0:        29 FF 00      AND #$00FF                
CODE_27A0C3:        85 D8         STA $D8                   
CODE_27A0C5:        0A            ASL A                     
CODE_27A0C6:        18            CLC                       
CODE_27A0C7:        65 D8         ADC $D8                   
CODE_27A0C9:        AA            TAX                       
CODE_27A0CA:        E2 20         SEP #$20                  
CODE_27A0CC:        BD 8E B4      LDA.w DATA_21B48E,x               
CODE_27A0CF:        85 D8         STA $D8                   
CODE_27A0D1:        BD 8F B4      LDA.w DATA_21B48E+1,x               
CODE_27A0D4:        85 D9         STA $D9                   
CODE_27A0D6:        BD 90 B4      LDA.w DATA_21B48E+2,x               
CODE_27A0D9:        85 DA         STA $DA                   
CODE_27A0DB:        B7 D8         LDA [$D8],y               
CODE_27A0DD:        85 DB         STA $DB                   
CODE_27A0DF:        C8            INY                       
CODE_27A0E0:        B7 D8         LDA [$D8],y               
CODE_27A0E2:        85 DC         STA $DC                   
CODE_27A0E4:        C8            INY                       
CODE_27A0E5:        B7 D8         LDA [$D8],y               
CODE_27A0E7:        85 DD         STA $DD                   
CODE_27A0E9:        FA            PLX                       
CODE_27A0EA:        7A            PLY                       
CODE_27A0EB:        A5 DB         LDA $DB                   
CODE_27A0ED:        99 02 08      STA $0802,y               
CODE_27A0F0:        1A            INC A                     
CODE_27A0F1:        99 0E 08      STA $080E,y               
CODE_27A0F4:        A5 DC         LDA $DC                   
CODE_27A0F6:        99 06 08      STA $0806,y               
CODE_27A0F9:        1A            INC A                     
CODE_27A0FA:        99 12 08      STA $0812,y               
CODE_27A0FD:        A5 DD         LDA $DD                   
CODE_27A0FF:        99 0A 08      STA $080A,y               
CODE_27A102:        1A            INC A                     
CODE_27A103:        99 16 08      STA $0816,y               
CODE_27A106:        A5 02         LDA $02                   
CODE_27A108:        05 03         ORA $03                   
CODE_27A10A:        99 03 08      STA $0803,y               
CODE_27A10D:        99 0F 08      STA $080F,y               
CODE_27A110:        99 07 08      STA $0807,y               
CODE_27A113:        99 13 08      STA $0813,y               
CODE_27A116:        99 0B 08      STA $080B,y               
CODE_27A119:        99 17 08      STA $0817,y               
CODE_27A11C:        24 02         BIT $02                   
CODE_27A11E:        10 2A         BPL CODE_27A14A           
CODE_27A120:        B9 02 08      LDA $0802,y               
CODE_27A123:        48            PHA                       
CODE_27A124:        B9 0E 08      LDA $080E,y               
CODE_27A127:        99 02 08      STA $0802,y               
CODE_27A12A:        68            PLA                       
CODE_27A12B:        99 0E 08      STA $080E,y               
CODE_27A12E:        B9 06 08      LDA $0806,y               
CODE_27A131:        48            PHA                       
CODE_27A132:        B9 12 08      LDA $0812,y               
CODE_27A135:        99 06 08      STA $0806,y               
CODE_27A138:        68            PLA                       
CODE_27A139:        99 12 08      STA $0812,y               
CODE_27A13C:        B9 0A 08      LDA $080A,y               
CODE_27A13F:        48            PHA                       
CODE_27A140:        B9 16 08      LDA $0816,y               
CODE_27A143:        99 0A 08      STA $080A,y               
CODE_27A146:        68            PLA                       
CODE_27A147:        99 16 08      STA $0816,y               
CODE_27A14A:        24 02         BIT $02                   
CODE_27A14C:        50 1C         BVC CODE_27A16A                   
CODE_27A14E:        B9 02 08      LDA $0802,y               
CODE_27A151:        48            PHA                       
CODE_27A152:        B9 0A 08      LDA $080A,y               
CODE_27A155:        99 02 08      STA $0802,y               
CODE_27A158:        68            PLA                       
CODE_27A159:        99 0A 08      STA $080A,y               
CODE_27A15C:        B9 0E 08      LDA $080E,y               
CODE_27A15F:        48            PHA                       
CODE_27A160:        B9 16 08      LDA $0816,y               
CODE_27A163:        99 0E 08      STA $080E,y               
CODE_27A166:        68            PLA                       
CODE_27A167:        99 16 08      STA $0816,y               
CODE_27A16A:        C2 20         REP #$20                  
CODE_27A16C:        5A            PHY                       
CODE_27A16D:        98            TYA                       
CODE_27A16E:        4A            LSR A                     
CODE_27A16F:        4A            LSR A                     
CODE_27A170:        A8            TAY                       
CODE_27A171:        E2 20         SEP #$20                  
CODE_27A173:        A5 07         LDA $07                   
CODE_27A175:        2A            ROL A                     
CODE_27A176:        2A            ROL A                     
CODE_27A177:        85 09         STA $09                   
CODE_27A179:        08            PHP                       
CODE_27A17A:        29 01         AND #$01                  
CODE_27A17C:        99 20 0A      STA $0A20,y               
CODE_27A17F:        99 23 0A      STA $0A23,y               
CODE_27A182:        A5 09         LDA $09                   
CODE_27A184:        28            PLP                       
CODE_27A185:        2A            ROL A                     
CODE_27A186:        08            PHP                       
CODE_27A187:        29 01         AND #$01                  
CODE_27A189:        99 21 0A      STA $0A21,y               
CODE_27A18C:        99 24 0A      STA $0A24,y               
CODE_27A18F:        28            PLP                       
CODE_27A190:        2A            ROL A                     
CODE_27A191:        29 01         AND #$01                  
CODE_27A193:        99 22 0A      STA $0A22,y               
CODE_27A196:        99 25 0A      STA $0A25,y               
CODE_27A199:        7A            PLY                       
CODE_27A19A:        E2 30         SEP #$30                  
CODE_27A19C:        6B            RTL                       

CODE_27A19D:        DA            PHX                       
CODE_27A19E:        A0 07         LDY #$07                  
CODE_27A1A0:        84 06         STY $06                   
CODE_27A1A2:        A6 9B         LDX $9B                   
CODE_27A1A4:        BD 83 07      LDA $0783,x               
CODE_27A1A7:        29 07         AND #$07                  
CODE_27A1A9:        18            CLC                       
CODE_27A1AA:        65 06         ADC $06                   
CODE_27A1AC:        A8            TAY                       
CODE_27A1AD:        B9 FB AF      LDA.w DATA_21AFFB,y               
CODE_27A1B0:        A8            TAY                       
CODE_27A1B1:        84 08         STY $08                   
CODE_27A1B3:        B9 61 06      LDA $0661,y               
CODE_27A1B6:        F0 19         BEQ CODE_27A1D1           
CODE_27A1B8:        A4 06         LDY $06                   
CODE_27A1BA:        88            DEY                       
CODE_27A1BB:        10 E3         BPL CODE_27A1A0           
CODE_27A1BD:        20 02 A2      JSR CODE_27A202           
CODE_27A1C0:        B0 2F         BCS CODE_27A1F1                   
CODE_27A1C2:        A2 20         LDX #$20                  
CODE_27A1C4:        AD 83 07      LDA $0783                 
CODE_27A1C7:        10 02         BPL CODE_27A1CB           
CODE_27A1C9:        A2 30         LDX #$30                  
CODE_27A1CB:        86 D8         STX $D8                   
CODE_27A1CD:        64 D9         STZ $D9                   
CODE_27A1CF:        80 20         BRA CODE_27A1F1           

CODE_27A1D1:        98            TYA                       
CODE_27A1D2:        18            CLC                       
CODE_27A1D3:        6D 5D 05      ADC $055D                 
CODE_27A1D6:        0A            ASL A                     
CODE_27A1D7:        A8            TAY                       
CODE_27A1D8:        C2 20         REP #$20                  
CODE_27A1DA:        B9 6E AF      LDA.w DATA_21AF6E,y               
CODE_27A1DD:        85 D8         STA $D8                   
CODE_27A1DF:        E2 20         SEP #$20                  
CODE_27A1E1:        C2 10         REP #$10                  
CODE_27A1E3:        A6 D8         LDX $D8                   
CODE_27A1E5:        BD 01 08      LDA $0801,x               
CODE_27A1E8:        C9 F0         CMP #$F0                  
CODE_27A1EA:        F0 05         BEQ CODE_27A1F1           
CODE_27A1EC:        E2 10         SEP #$10                  
CODE_27A1EE:        82 C7 FF      BRL CODE_27A1B8           

CODE_27A1F1:        E2 10         SEP #$10                  
CODE_27A1F3:        A6 D8         LDX $D8                   
CODE_27A1F5:        86 06         STX $06                   
CODE_27A1F7:        9B            TXY                       
CODE_27A1F8:        FA            PLX                       
CODE_27A1F9:        A5 D8         LDA $D8                   
CODE_27A1FB:        95 C6         STA $C6,x                 
CODE_27A1FD:        A5 D9         LDA $D9                   
CODE_27A1FF:        95 C7         STA $C7,x                 
CODE_27A201:        6B            RTL                       

CODE_27A202:        DA            PHX                       
CODE_27A203:        C2 30         REP #$30                  
CODE_27A205:        A0 0E 00      LDY #$000E                
CODE_27A208:        B9 6E AF      LDA.w DATA_21AF6E,y               
CODE_27A20B:        85 D8         STA $D8                   
CODE_27A20D:        AA            TAX                       
CODE_27A20E:        BD 01 08      LDA $0801,x               
CODE_27A211:        29 FF 00      AND #$00FF                
CODE_27A214:        C9 F0 00      CMP #$00F0                
CODE_27A217:        F0 09         BEQ CODE_27A222           
CODE_27A219:        88            DEY                       
CODE_27A21A:        88            DEY                       
CODE_27A21B:        10 EB         BPL CODE_27A208           
CODE_27A21D:        E2 30         SEP #$30                  
CODE_27A21F:        FA            PLX                       
CODE_27A220:        18            CLC                       
CODE_27A221:        60            RTS                       

CODE_27A222:        E2 30         SEP #$30                  
CODE_27A224:        FA            PLX                       
CODE_27A225:        38            SEC                       
CODE_27A226:        60            RTS                       

CODE_27A227:        DA            PHX                       
CODE_27A228:        B5 C6         LDA $C6,x                 
CODE_27A22A:        85 DA         STA $DA                   
CODE_27A22C:        B5 C7         LDA $C7,x                 
CODE_27A22E:        85 DB         STA $DB                   
CODE_27A230:        A0 07         LDY #$07                  
CODE_27A232:        84 06         STY $06                   
CODE_27A234:        B9 61 06      LDA $0661,y               
CODE_27A237:        D0 1E         BNE CODE_27A257           
CODE_27A239:        98            TYA                       
CODE_27A23A:        18            CLC                       
CODE_27A23B:        6D 5D 05      ADC $055D                 
CODE_27A23E:        0A            ASL A                     
CODE_27A23F:        A8            TAY                       
CODE_27A240:        C2 30         REP #$30                  
CODE_27A242:        B9 6E AF      LDA.w DATA_21AF6E,y               
CODE_27A245:        C5 DA         CMP $DA                   
CODE_27A247:        F0 0E         BEQ CODE_27A257           
CODE_27A249:        85 D8         STA $D8                   
CODE_27A24B:        A8            TAY                       
CODE_27A24C:        B9 01 08      LDA $0801,y               
CODE_27A24F:        29 FF 00      AND #$00FF                
CODE_27A252:        C9 F0 00      CMP #$00F0                
CODE_27A255:        F0 14         BEQ CODE_27A26B           
CODE_27A257:        E2 30         SEP #$30                  
CODE_27A259:        A4 06         LDY $06                   
CODE_27A25B:        88            DEY                       
CODE_27A25C:        10 D4         BPL CODE_27A232           
CODE_27A25E:        A2 20         LDX #$20                  
CODE_27A260:        AD 83 07      LDA $0783                 
CODE_27A263:        10 02         BPL CODE_27A267           
CODE_27A265:        A2 30         LDX #$30                  
CODE_27A267:        86 D8         STX $D8                   
CODE_27A269:        64 D9         STZ $D9                   
CODE_27A26B:        E2 30         SEP #$30                  
CODE_27A26D:        A6 D8         LDX $D8                   
CODE_27A26F:        86 06         STX $06                   
CODE_27A271:        9B            TXY                       
CODE_27A272:        FA            PLX                       
CODE_27A273:        A5 D8         LDA $D8                   
CODE_27A275:        95 C6         STA $C6,x                 
CODE_27A277:        A5 D9         LDA $D9                   
CODE_27A279:        95 C7         STA $C7,x                 
CODE_27A27B:        6B            RTL                       

CODE_27A27C:        BC 71 06      LDY $0671,x               
CODE_27A27F:        B9 47 B0      LDA.w DATA_21B047,y               
CODE_27A282:        29 70         AND #$70                  
CODE_27A284:        4A            LSR A                     
CODE_27A285:        4A            LSR A                     
CODE_27A286:        4A            LSR A                     
CODE_27A287:        4A            LSR A                     
CODE_27A288:        A8            TAY                       
CODE_27A289:        BD 61 06      LDA $0661,x               
CODE_27A28C:        C9 02         CMP #$02                  
CODE_27A28E:        10 06         BPL CODE_27A296           
CODE_27A290:        A9 FC         LDA #$FC                  
CODE_27A292:        9D 51 06      STA $0651,x               
CODE_27A295:        6B            RTL                       

CODE_27A296:        A9 00         LDA #$00                  
CODE_27A298:        9D 51 06      STA $0651,x               
CODE_27A29B:        B5 5F         LDA $5F,x                 
CODE_27A29D:        85 0E         STA $0E                   
CODE_27A29F:        B5 44         LDA $44,x                 
CODE_27A2A1:        85 0F         STA $0F                   
CODE_27A2A3:        C2 20         REP #$20                  
CODE_27A2A5:        B9 0A B0      LDA.w DATA_21B00A,y               
CODE_27A2A8:        29 FF 00      AND #$00FF                
CODE_27A2AB:        18            CLC                       
CODE_27A2AC:        65 0E         ADC $0E                   
CODE_27A2AE:        38            SEC                       
CODE_27A2AF:        ED 10 02      SBC $0210                 
CODE_27A2B2:        C9 00 01      CMP #$0100                
CODE_27A2B5:        90 0B         BCC CODE_27A2C2           
CODE_27A2B7:        E2 20         SEP #$20                  
CODE_27A2B9:        BD 51 06      LDA $0651,x               
CODE_27A2BC:        19 10 B0      ORA.w DATA_21B010,y               
CODE_27A2BF:        9D 51 06      STA $0651,x               
CODE_27A2C2:        E2 20         SEP #$20                  
CODE_27A2C4:        88            DEY                       
CODE_27A2C5:        10 D4         BPL CODE_27A29B           
CODE_27A2C7:        6B            RTL                       

CODE_27A2C8:        BC 71 06      LDY $0671,x               
CODE_27A2CB:        B9 47 B0      LDA.w DATA_21B047,y               
CODE_27A2CE:        29 0C         AND #$0C                  
CODE_27A2D0:        4A            LSR A                     
CODE_27A2D1:        4A            LSR A                     
CODE_27A2D2:        A8            TAY                       
CODE_27A2D3:        A9 01         LDA #$01                  
CODE_27A2D5:        85 02         STA $02                   
CODE_27A2D7:        A9 00         LDA #$00                  
CODE_27A2D9:        9D 81 06      STA $0681,x               
CODE_27A2DC:        B5 56         LDA $56,x                 
CODE_27A2DE:        85 00         STA $00                   
CODE_27A2E0:        B5 71         LDA $71,x                 
CODE_27A2E2:        85 01         STA $01                   
CODE_27A2E4:        A5 01         LDA $01                   
CODE_27A2E6:        18            CLC                       
CODE_27A2E7:        69 10         ADC #$10                  
CODE_27A2E9:        85 01         STA $01                   
CODE_27A2EB:        90 02         BCC CODE_27A2EF           
CODE_27A2ED:        E6 00         INC $00                   
CODE_27A2EF:        A5 01         LDA $01                   
CODE_27A2F1:        38            SEC                       
CODE_27A2F2:        ED 43 05      SBC $0543                 
CODE_27A2F5:        85 03         STA $03                   
CODE_27A2F7:        A5 00         LDA $00                   
CODE_27A2F9:        ED 42 05      SBC $0542                 
CODE_27A2FC:        D0 06         BNE CODE_27A304           
CODE_27A2FE:        A5 03         LDA $03                   
CODE_27A300:        C9 F0         CMP #$F0                  
CODE_27A302:        90 08         BCC CODE_27A30C           
CODE_27A304:        A5 02         LDA $02                   
CODE_27A306:        1D 81 06      ORA $0681,x               
CODE_27A309:        9D 81 06      STA $0681,x               
CODE_27A30C:        06 02         ASL $02                   
CODE_27A30E:        88            DEY                       
CODE_27A30F:        10 D3         BPL CODE_27A2E4           
CODE_27A311:        6B            RTL                       

CODE_27A312:        20 1B A3      JSR CODE_27A31B           
CODE_27A315:        6B            RTL                       

CODE_27A316:        20 1F A3      JSR CODE_27A31F           
CODE_27A319:        6B            RTL                       

CODE_27A31A:        60            RTS                       

CODE_27A31B:        A9 01         LDA #$01                  
CODE_27A31D:        80 02         BRA CODE_27A321           

CODE_27A31F:        A9 00         LDA #$00                  
CODE_27A321:        85 0F         STA $0F                   
CODE_27A323:        BD 97 07      LDA $0797,x               
CODE_27A326:        29 FC         AND #$FC                  
CODE_27A328:        9D 97 07      STA $0797,x               
CODE_27A32B:        18            CLC                       
CODE_27A32C:        A5 BF         LDA $BF                   
CODE_27A32E:        0D 83 05      ORA $0583                 
CODE_27A331:        0D 87 05      ORA $0587                 
CODE_27A334:        D0 E4         BNE CODE_27A31A           
CODE_27A336:        22 13 A4 27   JSL CODE_27A413           
CODE_27A33A:        A5 BB         LDA $BB                   
CODE_27A33C:        F0 09         BEQ CODE_27A347           
CODE_27A33E:        A9 00         LDA #$00                  
CODE_27A340:        AC 6F 05      LDY $056F                 
CODE_27A343:        D0 02         BNE CODE_27A347           
CODE_27A345:        A9 01         LDA #$01                  
CODE_27A347:        0A            ASL A                     
CODE_27A348:        0A            ASL A                     
CODE_27A349:        A8            TAY                       
CODE_27A34A:        A5 79         LDA $79                   
CODE_27A34C:        18            CLC                       
CODE_27A34D:        79 16 B0      ADC.w DATA_21B016,y               
CODE_27A350:        85 02         STA $02                   
CODE_27A352:        A5 82         LDA $82                   
CODE_27A354:        18            CLC                       
CODE_27A355:        79 18 B0      ADC.w DATA_21B016+2,y               
CODE_27A358:        85 06         STA $06                   
CODE_27A35A:        B9 17 B0      LDA.w DATA_21B016+1,y               
CODE_27A35D:        85 03         STA $03                   
CODE_27A35F:        B9 19 B0      LDA.w DATA_21B016+3,y               
CODE_27A362:        85 07         STA $07                   
CODE_27A364:        22 5F A4 27   JSL CODE_27A45F           
CODE_27A368:        90 B0         BCC CODE_27A31A           
CODE_27A36A:        85 00         STA $00                   
CODE_27A36C:        AD 25 04      LDA $0425                 
CODE_27A36F:        D0 27         BNE CODE_27A398           
CODE_27A371:        A5 5E         LDA $5E                   
CODE_27A373:        38            SEC                       
CODE_27A374:        F5 5F         SBC $5F,x                 
CODE_27A376:        85 0E         STA $0E                   
CODE_27A378:        A5 43         LDA $43                   
CODE_27A37A:        F5 44         SBC $44,x                 
CODE_27A37C:        85 0D         STA $0D                   
CODE_27A37E:        10 10         BPL CODE_27A390           
CODE_27A380:        A5 0E         LDA $0E                   
CODE_27A382:        22 59 A8 27   JSL CODE_27A859           ;Invert Accumulator (8-bit)
CODE_27A386:        85 0E         STA $0E                   
CODE_27A388:        A5 0D         LDA $0D                   
CODE_27A38A:        49 FF         EOR #$FF                  
CODE_27A38C:        69 00         ADC #$00                  
CODE_27A38E:        85 0D         STA $0D                   
CODE_27A390:        A5 0D         LDA $0D                   
CODE_27A392:        D0 73         BNE CODE_27A407           
CODE_27A394:        A5 0E         LDA $0E                   
CODE_27A396:        30 6F         BMI CODE_27A407           
CODE_27A398:        A5 70         LDA $70                   
CODE_27A39A:        38            SEC                       
CODE_27A39B:        F5 71         SBC $71,x                 
CODE_27A39D:        85 0E         STA $0E                   
CODE_27A39F:        A5 55         LDA $55                   
CODE_27A3A1:        F5 56         SBC $56,x                 
CODE_27A3A3:        85 0D         STA $0D                   
CODE_27A3A5:        10 10         BPL CODE_27A3B7           
CODE_27A3A7:        A5 0E         LDA $0E                   
CODE_27A3A9:        22 59 A8 27   JSL CODE_27A859           ;Invert Accumulator (8-bit)
CODE_27A3AD:        85 0E         STA $0E                   
CODE_27A3AF:        A5 0D         LDA $0D                   
CODE_27A3B1:        49 FF         EOR #$FF                  
CODE_27A3B3:        69 00         ADC #$00                  
CODE_27A3B5:        85 0D         STA $0D                   
CODE_27A3B7:        A5 0D         LDA $0D                   
CODE_27A3B9:        D0 4C         BNE CODE_27A407           
CODE_27A3BB:        A5 0E         LDA $0E                   
CODE_27A3BD:        30 48         BMI CODE_27A407           
CODE_27A3BF:        A5 0B         LDA $0B                   
CODE_27A3C1:        4A            LSR A                     
CODE_27A3C2:        90 0F         BCC CODE_27A3D3           
CODE_27A3C4:        A5 00         LDA $00                   
CODE_27A3C6:        38            SEC                       
CODE_27A3C7:        E5 0A         SBC $0A                   
CODE_27A3C9:        C9 08         CMP #$08                  
CODE_27A3CB:        30 06         BMI CODE_27A3D3           
CODE_27A3CD:        A5 0B         LDA $0B                   
CODE_27A3CF:        49 01         EOR #$01                  
CODE_27A3D1:        85 0B         STA $0B                   
CODE_27A3D3:        A5 0B         LDA $0B                   
CODE_27A3D5:        1D 97 07      ORA $0797,x               
CODE_27A3D8:        9D 97 07      STA $0797,x               
CODE_27A3DB:        AD 53 05      LDA $0553                 
CODE_27A3DE:        F0 29         BEQ CODE_27A409           
CODE_27A3E0:        BC 71 06      LDY $0671,x               
CODE_27A3E3:        B9 78 AE      LDA.w DATA_21AE78,y               
CODE_27A3E6:        29 80         AND #$80                  
CODE_27A3E8:        D0 1F         BNE CODE_27A409           
CODE_27A3EA:        A9 06         LDA #$06                  
CODE_27A3EC:        9D 61 06      STA $0661,x               
CODE_27A3EF:        A9 C8         LDA #$C8                  
CODE_27A3F1:        95 9E         STA $9E,x                 
CODE_27A3F3:        A9 03         LDA #$03                  
CODE_27A3F5:        8D 00 12      STA $1200                 
CODE_27A3F8:        A9 05         LDA #$05                  
CODE_27A3FA:        22 94 8A 27   JSL CODE_278A94           
CODE_27A3FE:        22 37 A8 27   JSL CODE_27A837           
CODE_27A402:        B9 1E B0      LDA.w DATA_21B01E,y               
CODE_27A405:        95 8C         STA $8C,x                 
CODE_27A407:        18            CLC                       
CODE_27A408:        60            RTS                       

CODE_27A409:        A5 0F         LDA $0F                   
CODE_27A40B:        D0 04         BNE CODE_27A411           
CODE_27A40D:        22 9C A4 27   JSL CODE_27A49C           
CODE_27A411:        38            SEC                       
CODE_27A412:        60            RTS                       

CODE_27A413:        BC 71 06      LDY $0671,x               
CODE_27A416:        B9 78 AE      LDA.w DATA_21AE78,y               
CODE_27A419:        29 0F         AND #$0F                  
CODE_27A41B:        0A            ASL A                     
CODE_27A41C:        0A            ASL A                     
CODE_27A41D:        A8            TAY                       
CODE_27A41E:        B5 7A         LDA $7A,x                 
CODE_27A420:        18            CLC                       
CODE_27A421:        79 38 AE      ADC.w DATA_21AE38,y               
CODE_27A424:        85 00         STA $00                   
CODE_27A426:        B5 83         LDA $83,x                 
CODE_27A428:        18            CLC                       
CODE_27A429:        79 3A AE      ADC.w DATA_21AE38+2,y               
CODE_27A42C:        85 04         STA $04                   
CODE_27A42E:        B9 39 AE      LDA.w DATA_21AE38+1,y               
CODE_27A431:        85 01         STA $01                   
CODE_27A433:        B9 3B AE      LDA.w DATA_21AE38+3,y               
CODE_27A436:        85 05         STA $05                   
CODE_27A438:        6B            RTL                       

CODE_27A439:        BC 71 06      LDY $0671,x               
CODE_27A43C:        B9 78 AE      LDA.w DATA_21AE78,y               
CODE_27A43F:        29 0F         AND #$0F                  
CODE_27A441:        0A            ASL A                     
CODE_27A442:        0A            ASL A                     
CODE_27A443:        A8            TAY                       
CODE_27A444:        B5 7A         LDA $7A,x                 
CODE_27A446:        18            CLC                       
CODE_27A447:        79 38 AE      ADC.w DATA_21AE38,y               
CODE_27A44A:        85 02         STA $02                   
CODE_27A44C:        B5 83         LDA $83,x                 
CODE_27A44E:        18            CLC                       
CODE_27A44F:        79 3A AE      ADC.w DATA_21AE38+2,y               
CODE_27A452:        85 06         STA $06                   
CODE_27A454:        B9 39 AE      LDA.w DATA_21AE38+1,y               
CODE_27A457:        85 03         STA $03                   
CODE_27A459:        B9 3B AE      LDA.w DATA_21AE38+3,y               
CODE_27A45C:        85 07         STA $07                   
CODE_27A45E:        6B            RTL                       

CODE_27A45F:        A0 00         LDY #$00                  
CODE_27A461:        84 0B         STY $0B                   
CODE_27A463:        A5 02         LDA $02                   
CODE_27A465:        38            SEC                       
CODE_27A466:        E5 00         SBC $00                   
CODE_27A468:        85 0A         STA $0A                   
CODE_27A46A:        0A            ASL A                     
CODE_27A46B:        A5 01         LDA $01                   
CODE_27A46D:        90 0C         BCC CODE_27A47B           
CODE_27A46F:        A5 0A         LDA $0A                   
CODE_27A471:        49 FF         EOR #$FF                  
CODE_27A473:        85 0A         STA $0A                   
CODE_27A475:        E6 0A         INC $0A                   
CODE_27A477:        E6 0B         INC $0B                   
CODE_27A479:        A5 03         LDA $03                   
CODE_27A47B:        C5 0A         CMP $0A                   
CODE_27A47D:        90 1C         BCC CODE_27A49B           
CODE_27A47F:        06 0B         ASL $0B                   
CODE_27A481:        A5 06         LDA $06                   
CODE_27A483:        38            SEC                       
CODE_27A484:        E5 04         SBC $04                   
CODE_27A486:        85 0A         STA $0A                   
CODE_27A488:        0A            ASL A                     
CODE_27A489:        A5 05         LDA $05                   
CODE_27A48B:        90 0C         BCC CODE_27A499           
CODE_27A48D:        A5 0A         LDA $0A                   
CODE_27A48F:        49 FF         EOR #$FF                  
CODE_27A491:        85 0A         STA $0A                   
CODE_27A493:        E6 0A         INC $0A                   
CODE_27A495:        E6 0B         INC $0B                   
CODE_27A497:        A5 07         LDA $07                   
CODE_27A499:        C5 0A         CMP $0A                   
CODE_27A49B:        6B            RTL                       

CODE_27A49C:        C2 30         REP #$30                  
CODE_27A49E:        BD 71 06      LDA $0671,x               
CODE_27A4A1:        29 FF 00      AND #$00FF                
CODE_27A4A4:        85 00         STA $00                   
CODE_27A4A6:        0A            ASL A                     
CODE_27A4A7:        18            CLC                       
CODE_27A4A8:        65 00         ADC $00                   
CODE_27A4AA:        AA            TAX                       
CODE_27A4AB:        E2 20         SEP #$20                  
CODE_27A4AD:        BF 38 84 28   LDA.l PNTR_288438,x             
CODE_27A4B1:        85 00         STA $00                   
CODE_27A4B3:        BF 39 84 28   LDA.l PNTR_288438+1,x             
CODE_27A4B7:        85 01         STA $01                   
CODE_27A4B9:        BF 3A 84 28   LDA.l PNTR_288438+2,x             
CODE_27A4BD:        85 02         STA $02                   
CODE_27A4BF:        E2 10         SEP #$10                  
CODE_27A4C1:        A6 9B         LDX $9B                   
CODE_27A4C3:        DC 00 00      JML [$0000]               

CODE_27A4C6:        AD 52 05      LDA $0552                 
CODE_27A4C9:        0D 7A 05      ORA $057A                 
CODE_27A4CC:        0D 53 05      ORA $0553                 
CODE_27A4CF:        0D 54 05      ORA $0554                 
CODE_27A4D2:        05 9C         ORA $9C                   
CODE_27A4D4:        0D 56 05      ORA $0556                 
CODE_27A4D7:        0D FF 1C      ORA $1CFF                 
CODE_27A4DA:        F0 03         BEQ CODE_27A4DF           
CODE_27A4DC:        4C 43 A5      JMP CODE_27A543           

CODE_27A4DF:        AD 77 05      LDA $0577                 
CODE_27A4E2:        D0 06         BNE CODE_27A4EA           
CODE_27A4E4:        A5 BB         LDA $BB                   
CODE_27A4E6:        C9 04         CMP #$04                  
CODE_27A4E8:        30 2B         BMI CODE_27A515           
CODE_27A4EA:        A9 0F         LDA #$0F                  
CODE_27A4EC:        8D 00 12      STA $1200                 
CODE_27A4EF:        AD 77 05      LDA $0577                 
CODE_27A4F2:        F0 04         BEQ CODE_27A4F8           
CODE_27A4F4:        A9 00         LDA #$00                  
CODE_27A4F6:        80 05         BRA CODE_27A4FD           

CODE_27A4F8:        A4 BB         LDY $BB                   
CODE_27A4FA:        B9 24 B0      LDA.w DATA_21B024,y               
CODE_27A4FD:        85 00         STA $00                   
CODE_27A4FF:        20 7F A5      JSR CODE_27A57F           
CODE_27A502:        AD 77 05      LDA $0577                 
CODE_27A505:        F0 07         BEQ CODE_27A50E           
CODE_27A507:        A9 00         LDA #$00                  
CODE_27A509:        8D 77 05      STA $0577                 
CODE_27A50C:        80 29         BRA CODE_27A537           

CODE_27A50E:        A9 02         LDA #$02                  
CODE_27A510:        8D 78 05      STA $0578                 
CODE_27A513:        80 22         BRA CODE_27A537           

CODE_27A515:        A5 BB         LDA $BB                   
CODE_27A517:        F0 2B         BEQ CODE_27A544           
CODE_27A519:        A9 02         LDA #$02                  
CODE_27A51B:        8D 78 05      STA $0578                 
CODE_27A51E:        A5 BB         LDA $BB                   
CODE_27A520:        C9 04         CMP #$04                  
CODE_27A522:        10 07         BPL CODE_27A52B           
CODE_27A524:        A9 04         LDA #$04                  
CODE_27A526:        8D 00 12      STA $1200                 
CODE_27A529:        A5 BB         LDA $BB                   
CODE_27A52B:        C9 02         CMP #$02                  
CODE_27A52D:        B0 08         BCS CODE_27A537                   
CODE_27A52F:        A9 2F         LDA #$2F                  
CODE_27A531:        8D 51 05      STA $0551                 
CODE_27A534:        CE 78 05      DEC $0578                 
CODE_27A537:        A9 71         LDA #$71                  
CODE_27A539:        8D 52 05      STA $0552                 
CODE_27A53C:        A9 00         LDA #$00                  
CODE_27A53E:        8D 4F 05      STA $054F                 
CODE_27A541:        F0 35         BEQ CODE_27A578           
CODE_27A543:        6B            RTL                       

CODE_27A544:        A6 9B         LDX $9B                   
CODE_27A546:        A9 09         LDA #$09                  
CODE_27A548:        8D 02 12      STA $1202                 
CODE_27A54B:        A9 01         LDA #$01                  
CODE_27A54D:        8D D9 02      STA $02D9                 
CODE_27A550:        64 8B         STZ $8B                   
CODE_27A552:        64 C1         STZ $C1                   
CODE_27A554:        9C 4F 05      STZ $054F                 
CODE_27A557:        9C 52 05      STZ $0552                 
CODE_27A55A:        9C 77 05      STZ $0577                 
CODE_27A55D:        9C 53 05      STZ $0553                 
CODE_27A560:        9C 67 05      STZ $0567                 
CODE_27A563:        9C 7A 05      STZ $057A                 
CODE_27A566:        A9 01         LDA #$01                  
CODE_27A568:        8D 78 05      STA $0578                 
CODE_27A56B:        A9 C0         LDA #$C0                  
CODE_27A56D:        85 9D         STA $9D                   
CODE_27A56F:        A9 30         LDA #$30                  
CODE_27A571:        8D 10 05      STA $0510                 
CODE_27A574:        A9 01         LDA #$01                  
CODE_27A576:        85 BF         STA $BF                   
CODE_27A578:        A5 BD         LDA $BD                   
CODE_27A57A:        29 7F         AND #$7F                  
CODE_27A57C:        85 BD         STA $BD                   
CODE_27A57E:        6B            RTL                       

CODE_27A57F:        A0 05         LDY #$05                  
CODE_27A581:        B9 C8 1F      LDA $1FC8,y               
CODE_27A584:        F0 04         BEQ CODE_27A58A           
CODE_27A586:        88            DEY                       
CODE_27A587:        10 F8         BPL CODE_27A581           
CODE_27A589:        60            RTS                       

CODE_27A58A:        A9 09         LDA #$09                  
CODE_27A58C:        99 C8 1F      STA $1FC8,y               
CODE_27A58F:        A5 70         LDA $70                   
CODE_27A591:        99 BF 05      STA $05BF,y               
CODE_27A594:        A5 55         LDA $55                   
CODE_27A596:        99 D7 1F      STA $1FD7,y               
CODE_27A599:        A5 5E         LDA $5E                   
CODE_27A59B:        99 C9 05      STA $05C9,y               
CODE_27A59E:        A5 43         LDA $43                   
CODE_27A5A0:        99 E2 00      STA $00E2,y               
CODE_27A5A3:        A9 D0         LDA #$D0                  
CODE_27A5A5:        99 D3 05      STA $05D3,y               
CODE_27A5A8:        A9 00         LDA #$00                  
CODE_27A5AA:        C5 BD         CMP $BD                   
CODE_27A5AC:        A9 10         LDA #$10                  
CODE_27A5AE:        B0 02         BCS CODE_27A5B2                   
CODE_27A5B0:        A9 F0         LDA #$F0                  
CODE_27A5B2:        99 DD 05      STA $05DD,y               
CODE_27A5B5:        A5 00         LDA $00                   
CODE_27A5B7:        99 C7 06      STA $06C7,y               
CODE_27A5BA:        60            RTS                       

CODE_27A5BB:        BD 97 07      LDA $0797,x               
CODE_27A5BE:        29 F7         AND #$F7                  
CODE_27A5C0:        9D 97 07      STA $0797,x               
CODE_27A5C3:        20 E0 A5      JSR CODE_27A5E0           
CODE_27A5C6:        AD B3 07      LDA $07B3                 
CODE_27A5C9:        C9 FF         CMP #$FF                  
CODE_27A5CB:        F0 12         BEQ CODE_27A5DF           
CODE_27A5CD:        85 06         STA $06                   
CODE_27A5CF:        A9 0F         LDA #$0F                  
CODE_27A5D1:        85 07         STA $07                   
CODE_27A5D3:        AD B4 07      LDA $07B4                 
CODE_27A5D6:        85 02         STA $02                   
CODE_27A5D8:        A9 0F         LDA #$0F                  
CODE_27A5DA:        85 03         STA $03                   
CODE_27A5DC:        20 14 A6      JSR CODE_27A614           
CODE_27A5DF:        60            RTS                       

CODE_27A5E0:        AD 17 05      LDA $0517                 
CODE_27A5E3:        F0 FA         BEQ CODE_27A5DF           
CODE_27A5E5:        C9 0C         CMP #$0C                  
CODE_27A5E7:        F0 04         BEQ CODE_27A5ED           
CODE_27A5E9:        C9 09         CMP #$09                  
CODE_27A5EB:        D0 F2         BNE CODE_27A5DF           
CODE_27A5ED:        A5 BD         LDA $BD                   
CODE_27A5EF:        29 40         AND #$40                  
CODE_27A5F1:        A8            TAY                       
CODE_27A5F2:        F0 02         BEQ CODE_27A5F6           
CODE_27A5F4:        A0 01         LDY #$01                  
CODE_27A5F6:        B9 2D B0      LDA.w DATA_21B02D,y               
CODE_27A5F9:        18            CLC                       
CODE_27A5FA:        65 79         ADC $79                   
CODE_27A5FC:        85 02         STA $02                   
CODE_27A5FE:        A9 0A         LDA #$0A                  
CODE_27A600:        85 03         STA $03                   
CODE_27A602:        A5 82         LDA $82                   
CODE_27A604:        18            CLC                       
CODE_27A605:        69 10         ADC #$10                  
CODE_27A607:        85 06         STA $06                   
CODE_27A609:        A9 0F         LDA #$0F                  
CODE_27A60B:        85 07         STA $07                   
CODE_27A60D:        AD 44 05      LDA $0544                 
CODE_27A610:        C9 FE         CMP #$FE                  
CODE_27A612:        F0 CB         BEQ CODE_27A5DF           
CODE_27A614:        BC 61 06      LDY $0661,x               
CODE_27A617:        B9 33 B0      LDA.w DATA_21B033,y               
CODE_27A61A:        D0 C3         BNE CODE_27A5DF           
CODE_27A61C:        22 5F A8 27   JSL CODE_27A85F           
CODE_27A620:        D0 BD         BNE CODE_27A5DF           
CODE_27A622:        22 13 A4 27   JSL CODE_27A413           
CODE_27A626:        22 5F A4 27   JSL CODE_27A45F           
CODE_27A62A:        90 B3         BCC CODE_27A5DF           
CODE_27A62C:        BD 97 07      LDA $0797,x               
CODE_27A62F:        09 08         ORA #$08                  
CODE_27A631:        9D 97 07      STA $0797,x               
CODE_27A634:        BC 71 06      LDY $0671,x               
CODE_27A637:        B9 AF B1      LDA.w DATA_21B1AF,y               
CODE_27A63A:        29 80         AND #$80                  
CODE_27A63C:        D0 A1         BNE CODE_27A5DF           
CODE_27A63E:        A5 03         LDA $03                   
CODE_27A640:        C9 0F         CMP #$0F                  
CODE_27A642:        F0 35         BEQ CODE_27A679           
CODE_27A644:        A0 00         LDY #$00                  
CODE_27A646:        A5 BD         LDA $BD                   
CODE_27A648:        F0 01         BEQ CODE_27A64B           
CODE_27A64A:        C8            INY                       
CODE_27A64B:        A5 5E         LDA $5E                   
CODE_27A64D:        85 D8         STA $D8                   
CODE_27A64F:        A5 43         LDA $43                   
CODE_27A651:        85 D9         STA $D9                   
CODE_27A653:        E2 20         SEP #$20                  
CODE_27A655:        B9 31 B0      LDA.w DATA_21B031,y               
CODE_27A658:        29 FF         AND #$FF                  
CODE_27A65A:        C9 80         CMP #$80                  
CODE_27A65C:        90 02         BCC CODE_27A660           
CODE_27A65E:        09 00         ORA #$00                  
CODE_27A660:        18            CLC                       
CODE_27A661:        65 D8         ADC $D8                   
CODE_27A663:        E2 20         SEP #$20                  
CODE_27A665:        8D 48 1A      STA $1A48                 
CODE_27A668:        EB            XBA                       
CODE_27A669:        8D 7E 02      STA $027E                 
CODE_27A66C:        A5 70         LDA $70                   
CODE_27A66E:        18            CLC                       
CODE_27A66F:        69 10         ADC #$10                  
CODE_27A671:        8D 47 1A      STA $1A47                 
CODE_27A674:        A9 0A         LDA #$0A                  
CODE_27A676:        8D 46 1A      STA $1A46                 
CODE_27A679:        A9 0C         LDA #$0C                  
CODE_27A67B:        9D 20 05      STA $0520,x               
CODE_27A67E:        A9 03         LDA #$03                  
CODE_27A680:        8D 00 12      STA $1200                 
CODE_27A683:        BC 71 06      LDY $0671,x               
CODE_27A686:        B9 AF B1      LDA.w DATA_21B1AF,y               
CODE_27A689:        29 40         AND #$40                  
CODE_27A68B:        D0 10         BNE CODE_27A69D           
CODE_27A68D:        AD 45 05      LDA $0545                 
CODE_27A690:        D0 07         BNE CODE_27A699           
CODE_27A692:        AD F4 05      LDA $05F4                 
CODE_27A695:        22 8A 8A 27   JSL CODE_278A8A           
CODE_27A699:        A9 06         LDA #$06                  
CODE_27A69B:        D0 2D         BNE CODE_27A6CA           
CODE_27A69D:        DA            PHX                       
CODE_27A69E:        C2 30         REP #$30                  
CODE_27A6A0:        BD 71 06      LDA $0671,x               
CODE_27A6A3:        29 FF 00      AND #$00FF                
CODE_27A6A6:        85 D8         STA $D8                   
CODE_27A6A8:        0A            ASL A                     
CODE_27A6A9:        18            CLC                       
CODE_27A6AA:        65 D8         ADC $D8                   
CODE_27A6AC:        AA            TAX                       
CODE_27A6AD:        BF 38 84 28   LDA.l PNTR_288438,x             
CODE_27A6B1:        85 D8         STA $D8                   
CODE_27A6B3:        E2 30         SEP #$30                  
CODE_27A6B5:        FA            PLX                       
CODE_27A6B6:        A5 D9         LDA $D9                   
CODE_27A6B8:        29 F8         AND #$F8                  
CODE_27A6BA:        C9 08         CMP #$08                  
CODE_27A6BC:        D0 05         BNE CODE_27A6C3           
CODE_27A6BE:        A5 D8         LDA $D8                   
CODE_27A6C0:        9D 71 06      STA $0671,x               
CODE_27A6C3:        A9 FF         LDA #$FF                  
CODE_27A6C5:        9D A6 06      STA $06A6,x               
CODE_27A6C8:        A9 03         LDA #$03                  
CODE_27A6CA:        9D 61 06      STA $0661,x               
CODE_27A6CD:        A9 D0         LDA #$D0                  
CODE_27A6CF:        A4 03         LDY $03                   
CODE_27A6D1:        C0 0F         CPY #$0F                  
CODE_27A6D3:        F0 02         BEQ CODE_27A6D7           
CODE_27A6D5:        A9 B0         LDA #$B0                  
CODE_27A6D7:        95 9E         STA $9E,x                 
CODE_27A6D9:        22 37 A8 27   JSL CODE_27A837           
CODE_27A6DD:        B9 2B B0      LDA.w DATA_21B02B,y               
CODE_27A6E0:        95 8C         STA $8C,x                 
CODE_27A6E2:        BD 79 06      LDA $0679,x               
CODE_27A6E5:        09 80         ORA #$80                  
CODE_27A6E7:        9D 79 06      STA $0679,x               
CODE_27A6EA:        60            RTS                       

CODE_27A6EB:        20 EF A6      JSR CODE_27A6EF           
CODE_27A6EE:        6B            RTL                       

CODE_27A6EF:        BD 81 06      LDA $0681,x               
CODE_27A6F2:        D0 5A         BNE CODE_27A74E           
CODE_27A6F4:        BD 51 06      LDA $0651,x               
CODE_27A6F7:        29 C0         AND #$C0                  
CODE_27A6F9:        C9 C0         CMP #$C0                  
CODE_27A6FB:        F0 51         BEQ CODE_27A74E           
CODE_27A6FD:        22 39 A4 27   JSL CODE_27A439           
CODE_27A701:        A2 04         LDX #$04                  
CODE_27A703:        E4 9B         CPX $9B                   
CODE_27A705:        F0 44         BEQ CODE_27A74B           
CODE_27A707:        BC 61 06      LDY $0661,x               
CODE_27A70A:        B9 33 B0      LDA.w DATA_21B033,y               
CODE_27A70D:        D0 3C         BNE CODE_27A74B           
CODE_27A70F:        BD 81 06      LDA $0681,x               
CODE_27A712:        D0 37         BNE CODE_27A74B           
CODE_27A714:        BD 51 06      LDA $0651,x               
CODE_27A717:        29 C0         AND #$C0                  
CODE_27A719:        C9 C0         CMP #$C0                  
CODE_27A71B:        F0 2E         BEQ CODE_27A74B           
CODE_27A71D:        22 13 A4 27   JSL CODE_27A413           
CODE_27A721:        22 5F A4 27   JSL CODE_27A45F           
CODE_27A725:        90 24         BCC CODE_27A74B           
CODE_27A727:        A4 9B         LDY $9B                   
CODE_27A729:        B5 5F         LDA $5F,x                 
CODE_27A72B:        38            SEC                       
CODE_27A72C:        F9 5F 00      SBC $005F,y               
CODE_27A72F:        48            PHA                       
CODE_27A730:        B5 44         LDA $44,x                 
CODE_27A732:        F9 44 00      SBC $0044,y               
CODE_27A735:        85 00         STA $00                   
CODE_27A737:        68            PLA                       
CODE_27A738:        69 80         ADC #$80                  
CODE_27A73A:        A5 00         LDA $00                   
CODE_27A73C:        69 00         ADC #$00                  
CODE_27A73E:        D0 0B         BNE CODE_27A74B           
CODE_27A740:        38            SEC                       
CODE_27A741:        BC 71 06      LDY $0671,x               
CODE_27A744:        B9 78 AE      LDA.w DATA_21AE78,y               
CODE_27A747:        29 80         AND #$80                  
CODE_27A749:        F0 06         BEQ CODE_27A751           
CODE_27A74B:        CA            DEX                       
CODE_27A74C:        10 B5         BPL CODE_27A703           
CODE_27A74E:        18            CLC                       
CODE_27A74F:        90 05         BCC CODE_27A756           
CODE_27A751:        8A            TXA                       
CODE_27A752:        A8            TAY                       
CODE_27A753:        B9 71 06      LDA $0671,y               
CODE_27A756:        A6 9B         LDX $9B                   
CODE_27A758:        60            RTS                       

CODE_27A759:        20 01 A7      JSR CODE_27A701           
CODE_27A75C:        6B            RTL                       

CODE_27A75D:        48            PHA                       
CODE_27A75E:        AD 25 04      LDA $0425                 
CODE_27A761:        F0 1B         BEQ CODE_27A77E           
CODE_27A763:        A4 0C         LDY $0C                   
CODE_27A765:        A5 0D         LDA $0D                   
CODE_27A767:        22 C1 9F 20   JSL CODE_209FC1           
CODE_27A76B:        48            PHA                       
CODE_27A76C:        DA            PHX                       
CODE_27A76D:        BB            TYX                       
CODE_27A76E:        BF 3C 82 21   LDA.l DATA_21823C,x             
CODE_27A772:        85 00         STA $00                   
CODE_27A774:        BF 4C 82 21   LDA.l DATA_21824C,x             
CODE_27A778:        85 01         STA $01                   
CODE_27A77A:        FA            PLX                       
CODE_27A77B:        68            PLA                       
CODE_27A77C:        80 1A         BRA CODE_27A798           

CODE_27A77E:        DA            PHX                       
CODE_27A77F:        A5 0E         LDA $0E                   
CODE_27A781:        0A            ASL A                     
CODE_27A782:        AA            TAX                       
CODE_27A783:        BF 00 82 21   LDA.l DATA_218200,x             
CODE_27A787:        85 00         STA $00                   
CODE_27A789:        BF 01 82 21   LDA.l DATA_218200+1,x             
CODE_27A78D:        85 01         STA $01                   
CODE_27A78F:        FA            PLX                       
CODE_27A790:        A5 0C         LDA $0C                   
CODE_27A792:        F0 02         BEQ CODE_27A796           
CODE_27A794:        E6 01         INC $01                   
CODE_27A796:        A5 0D         LDA $0D                   
CODE_27A798:        29 F0         AND #$F0                  
CODE_27A79A:        85 02         STA $02                   
CODE_27A79C:        A5 0F         LDA $0F                   
CODE_27A79E:        4A            LSR A                     
CODE_27A79F:        4A            LSR A                     
CODE_27A7A0:        4A            LSR A                     
CODE_27A7A1:        4A            LSR A                     
CODE_27A7A2:        05 02         ORA $02                   
CODE_27A7A4:        A8            TAY                       
CODE_27A7A5:        A9 7E         LDA #$7E                  
CODE_27A7A7:        85 02         STA $02                   
CODE_27A7A9:        68            PLA                       
CODE_27A7AA:        97 00         STA [$00],y               
CODE_27A7AC:        6B            RTL                       

CODE_27A7AD:        B5 5F         LDA $5F,x                 
CODE_27A7AF:        38            SEC                       
CODE_27A7B0:        E5 5E         SBC $5E                   
CODE_27A7B2:        85 0E         STA $0E                   
CODE_27A7B4:        B5 44         LDA $44,x                 
CODE_27A7B6:        E5 43         SBC $43                   
CODE_27A7B8:        4A            LSR A                     
CODE_27A7B9:        66 0E         ROR $0E                   
CODE_27A7BB:        4A            LSR A                     
CODE_27A7BC:        66 0E         ROR $0E                   
CODE_27A7BE:        0A            ASL A                     
CODE_27A7BF:        29 40         AND #$40                  
CODE_27A7C1:        85 0F         STA $0F                   
CODE_27A7C3:        6B            RTL                       

CODE_27A7C4:        B5 71         LDA $71,x                 
CODE_27A7C6:        38            SEC                       
CODE_27A7C7:        E5 70         SBC $70                   
CODE_27A7C9:        85 0E         STA $0E                   
CODE_27A7CB:        B5 56         LDA $56,x                 
CODE_27A7CD:        E5 55         SBC $55                   
CODE_27A7CF:        85 0F         STA $0F                   
CODE_27A7D1:        4A            LSR A                     
CODE_27A7D2:        66 0E         ROR $0E                   
CODE_27A7D4:        4A            LSR A                     
CODE_27A7D5:        66 0E         ROR $0E                   
CODE_27A7D7:        6B            RTL                       

CODE_27A7D8:        B5 9E         LDA $9E,x                 
CODE_27A7DA:        30 08         BMI CODE_27A7E4           
CODE_27A7DC:        C9 40         CMP #$40                  
CODE_27A7DE:        30 04         BMI CODE_27A7E4           
CODE_27A7E0:        A9 40         LDA #$40                  
CODE_27A7E2:        95 9E         STA $9E,x                 
CODE_27A7E4:        8A            TXA                       
CODE_27A7E5:        18            CLC                       
CODE_27A7E6:        69 12         ADC #$12                  
CODE_27A7E8:        AA            TAX                       
CODE_27A7E9:        20 06 A8      JSR CODE_27A806           
CODE_27A7EC:        A6 9B         LDX $9B                   
CODE_27A7EE:        6B            RTL                       

CODE_27A7EF:        20 06 A8      JSR CODE_27A806           
CODE_27A7F2:        AC 25 04      LDY $0425                 
CODE_27A7F5:        F0 0E         BEQ CODE_27A805           
CODE_27A7F7:        48            PHA                       
CODE_27A7F8:        AC 71 06      LDY $0671                 
CODE_27A7FB:        BD FB B0      LDA.w DATA_21B0FB,x               
CODE_27A7FE:        29 08         AND #$08                  
CODE_27A800:        D0 02         BNE CODE_27A804           
CODE_27A802:        95 44         STA $44,x                 
CODE_27A804:        68            PLA                       
CODE_27A805:        6B            RTL                       

CODE_27A806:        B5 8C         LDA $8C,x                 
CODE_27A808:        0A            ASL A                     
CODE_27A809:        0A            ASL A                     
CODE_27A80A:        0A            ASL A                     
CODE_27A80B:        0A            ASL A                     
CODE_27A80C:        18            CLC                       
CODE_27A80D:        7D 4F 07      ADC $074F,x               
CODE_27A810:        9D 4F 07      STA $074F,x               
CODE_27A813:        08            PHP                       
CODE_27A814:        08            PHP                       
CODE_27A815:        A0 00         LDY #$00                  
CODE_27A817:        B5 8C         LDA $8C,x                 
CODE_27A819:        4A            LSR A                     
CODE_27A81A:        4A            LSR A                     
CODE_27A81B:        4A            LSR A                     
CODE_27A81C:        4A            LSR A                     
CODE_27A81D:        C9 08         CMP #$08                  
CODE_27A81F:        90 03         BCC CODE_27A824           
CODE_27A821:        09 F0         ORA #$F0                  
CODE_27A823:        88            DEY                       
CODE_27A824:        28            PLP                       
CODE_27A825:        48            PHA                       
CODE_27A826:        75 5F         ADC $5F,x                 
CODE_27A828:        95 5F         STA $5F,x                 
CODE_27A82A:        98            TYA                       
CODE_27A82B:        75 44         ADC $44,x                 
CODE_27A82D:        95 44         STA $44,x                 
CODE_27A82F:        68            PLA                       
CODE_27A830:        28            PLP                       
CODE_27A831:        69 00         ADC #$00                  
CODE_27A833:        8D 4D 07      STA $074D                 
CODE_27A836:        60            RTS                       

CODE_27A837:        A5 5E         LDA $5E                   
CODE_27A839:        38            SEC                       
CODE_27A83A:        F5 5F         SBC $5F,x                 
CODE_27A83C:        85 0F         STA $0F                   
CODE_27A83E:        A0 00         LDY #$00                  
CODE_27A840:        A5 43         LDA $43                   
CODE_27A842:        F5 44         SBC $44,x                 
CODE_27A844:        10 01         BPL CODE_27A847           
CODE_27A846:        C8            INY                       
CODE_27A847:        6B            RTL                       

CODE_27A848:        A5 70         LDA $70                   
CODE_27A84A:        38            SEC                       
CODE_27A84B:        F5 71         SBC $71,x                 
CODE_27A84D:        85 0F         STA $0F                   
CODE_27A84F:        A0 00         LDY #$00                  
CODE_27A851:        A5 55         LDA $55                   
CODE_27A853:        F5 56         SBC $56,x                 
CODE_27A855:        10 01         BPL CODE_27A858           
CODE_27A857:        C8            INY                       
CODE_27A858:        6B            RTL                       

CODE_27A859:        49 FF         EOR #$FF                  ;\Invert accumulator (8-bit)
CODE_27A85B:        18            CLC                       ; |
CODE_27A85C:        69 01         ADC #$01                  ; |Something tells me SMW's version (InvertAccum) is better
CODE_27A85E:        6B            RTL                       ;/ (Because it uses INC A instead)

CODE_27A85F:        BD 51 06      LDA $0651,x               ;
CODE_27A862:        1D 81 06      ORA $0681,x               ;
CODE_27A865:        6B            RTL                       ;

CODE_27A866:        A0 04         LDY #$04                  
CODE_27A868:        B9 61 06      LDA $0661,y               
CODE_27A86B:        F0 03         BEQ CODE_27A870           
CODE_27A86D:        88            DEY                       
CODE_27A86E:        10 F8         BPL CODE_27A868           
CODE_27A870:        60            RTS                       

CODE_27A871:        A5 55         LDA $55                   
CODE_27A873:        85 0C         STA $0C                   
CODE_27A875:        A5 09         LDA $09                   
CODE_27A877:        18            CLC                       
CODE_27A878:        65 70         ADC $70                   
CODE_27A87A:        85 0D         STA $0D                   
CODE_27A87C:        90 02         BCC CODE_27A880           
CODE_27A87E:        E6 0C         INC $0C                   
CODE_27A880:        A5 0C         LDA $0C                   
CODE_27A882:        D0 0B         BNE CODE_27A88F           
CODE_27A884:        A5 0D         LDA $0D                   
CODE_27A886:        38            SEC                       
CODE_27A887:        E9 10         SBC #$10                  
CODE_27A889:        85 0D         STA $0D                   
CODE_27A88B:        B0 02         BCS CODE_27A88F                   
CODE_27A88D:        C6 0C         DEC $0C                   
CODE_27A88F:        A5 43         LDA $43                   
CODE_27A891:        85 0E         STA $0E                   
CODE_27A893:        A5 0A         LDA $0A                   
CODE_27A895:        10 02         BPL CODE_27A899           
CODE_27A897:        C6 0E         DEC $0E                   
CODE_27A899:        A5 5E         LDA $5E                   
CODE_27A89B:        18            CLC                       
CODE_27A89C:        65 0A         ADC $0A                   
CODE_27A89E:        85 0F         STA $0F                   
CODE_27A8A0:        90 02         BCC CODE_27A8A4           
CODE_27A8A2:        E6 0E         INC $0E                   
CODE_27A8A4:        84 09         STY $09                   
CODE_27A8A6:        86 0A         STX $0A                   
CODE_27A8A8:        22 E0 9F 20   JSL CODE_209FE0           
CODE_27A8AC:        A4 09         LDY $09                   
CODE_27A8AE:        A6 0A         LDX $0A                   
CODE_27A8B0:        60            RTS                       

CODE_27A8B1:        A0 00         LDY #$00                  
CODE_27A8B3:        B9 2E 05      LDA $052E,y               
CODE_27A8B6:        F0 06         BEQ CODE_27A8BE           
CODE_27A8B8:        C8            INY                       
CODE_27A8B9:        B9 2E 05      LDA $052E,y               
CODE_27A8BC:        D0 19         BNE CODE_27A8D7           
CODE_27A8BE:        A5 0B         LDA $0B                   
CODE_27A8C0:        99 2E 05      STA $052E,y               
CODE_27A8C3:        A5 0E         LDA $0E                   
CODE_27A8C5:        99 31 05      STA $0531,y               
CODE_27A8C8:        A5 0F         LDA $0F                   
CODE_27A8CA:        99 34 05      STA $0534,y               
CODE_27A8CD:        A5 0C         LDA $0C                   
CODE_27A8CF:        99 37 05      STA $0537,y               
CODE_27A8D2:        A5 0D         LDA $0D                   
CODE_27A8D4:        99 3A 05      STA $053A,y               
CODE_27A8D7:        6B            RTL                       

CODE_27A8D8:        8E 69 06      STX $0669                 
CODE_27A8DB:        85 5F         STA $5F                   
CODE_27A8DD:        4A            LSR A                     
CODE_27A8DE:        4A            LSR A                     
CODE_27A8DF:        85 00         STA $00                   
CODE_27A8E1:        AC 26 07      LDY $0726                 
CODE_27A8E4:        F0 02         BEQ CODE_27A8E8           
CODE_27A8E6:        A0 23         LDY #$23                  
CODE_27A8E8:        A2 00         LDX #$00                  
CODE_27A8EA:        B9 80 1D      LDA $1D80,y               
CODE_27A8ED:        F0 06         BEQ CODE_27A8F5           
CODE_27A8EF:        C8            INY                       
CODE_27A8F0:        E8            INX                       
CODE_27A8F1:        E0 1B         CPX #$1B                  
CODE_27A8F3:        90 F5         BCC CODE_27A8EA           
CODE_27A8F5:        8C 89 06      STY $0689                 
CODE_27A8F8:        8A            TXA                       
CODE_27A8F9:        A0 03         LDY #$03                  
CODE_27A8FB:        C9 07         CMP #$07                  
CODE_27A8FD:        90 05         BCC CODE_27A904           
CODE_27A8FF:        E9 07         SBC #$07                  
CODE_27A901:        88            DEY                       
CODE_27A902:        D0 F7         BNE CODE_27A8FB           
CODE_27A904:        AA            TAX                       
CODE_27A905:        B9 3C B0      LDA.w DATA_21B03C,y               
CODE_27A908:        8D 91 06      STA $0691                 
CODE_27A90B:        A9 02         LDA #$02                  
CODE_27A90D:        8D 61 06      STA $0661                 
CODE_27A910:        A9 35         LDA #$35                  
CODE_27A912:        8D 71 06      STA $0671                 
CODE_27A915:        A9 90         LDA #$90                  
CODE_27A917:        85 71         STA $71                   
CODE_27A919:        BD 40 B0      LDA.w DATA_21B040,x               
CODE_27A91C:        4A            LSR A                     
CODE_27A91D:        4A            LSR A                     
CODE_27A91E:        38            SEC                       
CODE_27A91F:        E5 00         SBC $00                   
CODE_27A921:        85 8C         STA $8C                   
CODE_27A923:        A9 D0         LDA #$D0                  
CODE_27A925:        85 9E         STA $9E                   
CODE_27A927:        A9 00         LDA #$00                  
CODE_27A929:        8D 4F 07      STA $074F                 
CODE_27A92C:        8D 58 07      STA $0758                 
CODE_27A92F:        A9 FF         LDA #$FF                  
CODE_27A931:        8D 18 05      STA $0518                 
CODE_27A934:        85 4D         STA $4D                   
CODE_27A936:        A9 3E         LDA #$3E                  
CODE_27A938:        8D 03 12      STA $1203                 
CODE_27A93B:        6B            RTL                       

CODE_27A93C:        AD FF 05      LDA $05FF                 
CODE_27A93F:        8D FE 05      STA $05FE                 
CODE_27A942:        20 B2 A9      JSR CODE_27A9B2           
CODE_27A945:        A0 00         LDY #$00                  
CODE_27A947:        AD 13 1A      LDA $1A13                 
CODE_27A94A:        4A            LSR A                     
CODE_27A94B:        90 04         BCC CODE_27A951           
CODE_27A94D:        C8            INY                       
CODE_27A94E:        CE 81 07      DEC $0781                 
CODE_27A951:        AD 81 07      LDA $0781                 
CODE_27A954:        8F 52 39 7E   STA $7E3952               
CODE_27A958:        8C 81 07      STY $0781                 
CODE_27A95B:        18            CLC                       
CODE_27A95C:        65 5E         ADC $5E                   
CODE_27A95E:        85 5E         STA $5E                   
CODE_27A960:        90 02         BCC CODE_27A964           
CODE_27A962:        E6 43         INC $43                   
CODE_27A964:        A0 00         LDY #$00                  
CODE_27A966:        AD 13 1A      LDA $1A13                 
CODE_27A969:        4A            LSR A                     
CODE_27A96A:        90 04         BCC CODE_27A970           
CODE_27A96C:        88            DEY                       
CODE_27A96D:        EE 80 07      INC $0780                 
CODE_27A970:        AD 80 07      LDA $0780                 
CODE_27A973:        8F 53 39 7E   STA $7E3953               
CODE_27A977:        8C 80 07      STY $0780                 
CODE_27A97A:        A4 A6         LDY $A6                   
CODE_27A97C:        F0 0B         BEQ CODE_27A989           
CODE_27A97E:        A0 00         LDY #$00                  
CODE_27A980:        18            CLC                       
CODE_27A981:        6D 80 07      ADC $0780                 
CODE_27A984:        C9 FF         CMP #$FF                  
CODE_27A986:        D0 01         BNE CODE_27A989           
CODE_27A988:        88            DEY                       
CODE_27A989:        18            CLC                       
CODE_27A98A:        65 70         ADC $70                   
CODE_27A98C:        85 70         STA $70                   
CODE_27A98E:        98            TYA                       
CODE_27A98F:        65 55         ADC $55                   
CODE_27A991:        85 55         STA $55                   
CODE_27A993:        6B            RTL                       

CODE_27A994:        20 B2 A9      JSR CODE_27A9B2           
CODE_27A997:        B5 5F         LDA $5F,x                 
CODE_27A999:        18            CLC                       
CODE_27A99A:        6F 52 39 7E   ADC $7E3952               
CODE_27A99E:        95 5F         STA $5F,x                 
CODE_27A9A0:        90 02         BCC CODE_27A9A4           
CODE_27A9A2:        F6 44         INC $44,x                 
CODE_27A9A4:        B5 71         LDA $71,x                 
CODE_27A9A6:        18            CLC                       
CODE_27A9A7:        6F 53 39 7E   ADC $7E3953               
CODE_27A9AB:        95 71         STA $71,x                 
CODE_27A9AD:        90 02         BCC CODE_27A9B1           
CODE_27A9AF:        F6 56         INC $56,x                 
CODE_27A9B1:        6B            RTL                       

CODE_27A9B2:        AD FE 05      LDA $05FE                 
CODE_27A9B5:        F0 04         BEQ CODE_27A9BB           
CODE_27A9B7:        A5 9C         LDA $9C                   
CODE_27A9B9:        F0 03         BEQ CODE_27A9BE           
CODE_27A9BB:        68            PLA                       
CODE_27A9BC:        68            PLA                       
CODE_27A9BD:        6B            RTL                       

CODE_27A9BE:        60            RTS                       

CODE_27A9BF:        AD 25 04      LDA $0425                 
CODE_27A9C2:        F0 39         BEQ CODE_27A9FD           
CODE_27A9C4:        B5 C6         LDA $C6,x                 
CODE_27A9C6:        85 DA         STA $DA                   
CODE_27A9C8:        B5 C7         LDA $C7,x                 
CODE_27A9CA:        85 DB         STA $DB                   
CODE_27A9CC:        22 9D A1 27   JSL CODE_27A19D           
CODE_27A9D0:        C2 30         REP #$30                  
CODE_27A9D2:        A5 DA         LDA $DA                   
CODE_27A9D4:        4A            LSR A                     
CODE_27A9D5:        4A            LSR A                     
CODE_27A9D6:        A8            TAY                       
CODE_27A9D7:        E2 20         SEP #$20                  
CODE_27A9D9:        A9 00         LDA #$00                  
CODE_27A9DB:        99 20 0A      STA $0A20,y               
CODE_27A9DE:        99 21 0A      STA $0A21,y               
CODE_27A9E1:        99 22 0A      STA $0A22,y               
CODE_27A9E4:        99 23 0A      STA $0A23,y               
CODE_27A9E7:        A4 DA         LDY $DA                   
CODE_27A9E9:        A2 00 00      LDX #$0000                
CODE_27A9EC:        B9 00 08      LDA $0800,y               
CODE_27A9EF:        C9 F8         CMP #$F8                  
CODE_27A9F1:        B0 0D         BCS CODE_27AA00                   
CODE_27A9F3:        A2 04 00      LDX #$0004                
CODE_27A9F6:        B9 04 08      LDA $0804,y               
CODE_27A9F9:        C9 F8         CMP #$F8                  
CODE_27A9FB:        B0 03         BCS CODE_27AA00                   
CODE_27A9FD:        82 59 00      BRL CODE_27AA59           

CODE_27AA00:        86 DC         STX $DC                   
CODE_27AA02:        C2 20         REP #$20                  
CODE_27AA04:        98            TYA                       
CODE_27AA05:        18            CLC                       
CODE_27AA06:        65 DC         ADC $DC                   
CODE_27AA08:        A8            TAY                       
CODE_27AA09:        A5 D8         LDA $D8                   
CODE_27AA0B:        18            CLC                       
CODE_27AA0C:        65 DC         ADC $DC                   
CODE_27AA0E:        AA            TAX                       
CODE_27AA0F:        E2 20         SEP #$20                  
CODE_27AA11:        B9 00 08      LDA $0800,y               
CODE_27AA14:        9D 00 08      STA $0800,x               
CODE_27AA17:        9D 08 08      STA $0808,x               
CODE_27AA1A:        B9 01 08      LDA $0801,y               
CODE_27AA1D:        9D 01 08      STA $0801,x               
CODE_27AA20:        B9 09 08      LDA $0809,y               
CODE_27AA23:        9D 09 08      STA $0809,x               
CODE_27AA26:        B9 02 08      LDA $0802,y               
CODE_27AA29:        9D 02 08      STA $0802,x               
CODE_27AA2C:        B9 0A 08      LDA $080A,y               
CODE_27AA2F:        9D 0A 08      STA $080A,x               
CODE_27AA32:        B9 03 08      LDA $0803,y               
CODE_27AA35:        9D 03 08      STA $0803,x               
CODE_27AA38:        B9 0B 08      LDA $080B,y               
CODE_27AA3B:        9D 0B 08      STA $080B,x               
CODE_27AA3E:        C2 20         REP #$20                  
CODE_27AA40:        8A            TXA                       
CODE_27AA41:        4A            LSR A                     
CODE_27AA42:        4A            LSR A                     
CODE_27AA43:        AA            TAX                       
CODE_27AA44:        98            TYA                       
CODE_27AA45:        4A            LSR A                     
CODE_27AA46:        4A            LSR A                     
CODE_27AA47:        A8            TAY                       
CODE_27AA48:        E2 20         SEP #$20                  
CODE_27AA4A:        A9 00         LDA #$00                  
CODE_27AA4C:        9D 20 0A      STA $0A20,x               
CODE_27AA4F:        9D 22 0A      STA $0A22,x               
CODE_27AA52:        1A            INC A                     
CODE_27AA53:        99 20 0A      STA $0A20,y               
CODE_27AA56:        99 22 0A      STA $0A22,y               
CODE_27AA59:        E2 10         SEP #$10                  
CODE_27AA5B:        A6 9B         LDX $9B                   
CODE_27AA5D:        60            RTS                       

DATA_27AA5E:        db $FF,$02,$13,$14,$26,$32,$4D,$60
                    db $62,$71,$85,$90,$A5,$C6,$C9,$CF
                    db $E4,$E5,$E6,$E8,$EB,$ED

CODE_27AA74:        8B            PHB
CODE_27AA75:        4B            PHK
CODE_27AA76:        AB            PLB                       
CODE_27AA77:        DA            PHX                       
CODE_27AA78:        A5 15         LDA $15                   
CODE_27AA7A:        4A            LSR A                     
CODE_27AA7B:        4A            LSR A                     
CODE_27AA7C:        29 07         AND #$07                  
CODE_27AA7E:        AA            TAX                       
CODE_27AA7F:        BD 85 AA      LDA.w DATA_21AA85,x               
CODE_27AA82:        FA            PLX                       
CODE_27AA83:        AB            PLB                       
CODE_27AA84:        6B            RTL                       

DATA_27AA85:        db $02,$04,$03,$04,$00,$04,$01,$04

CODE_27AA8D:        8B            PHB                       
CODE_27AA8E:        4B            PHK                       
CODE_27AA8F:        AB            PLB                       
CODE_27AA90:        DA            PHX                       
CODE_27AA91:        A5 15         LDA $15                   
CODE_27AA93:        4A            LSR A                     
CODE_27AA94:        29 03         AND #$03                  
CODE_27AA96:        AA            TAX                       
CODE_27AA97:        BD 9D AA      LDA.w DATA_27AA9D,x               
CODE_27AA9A:        FA            PLX                       
CODE_27AA9B:        AB            PLB                       
CODE_27AA9C:        6B            RTL                       

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

CODE_27B000:        A5 BF         LDA $BF
CODE_27B002:        D0 7B         BNE CODE_27B07F
CODE_27B004:        AD 25 04      LDA $0425
CODE_27B007:        F0 03         BEQ CODE_27B00C           
CODE_27B009:        4C EE B0      JMP CODE_27B0EE           

CODE_27B00C:        A5 70         LDA $70                   
CODE_27B00E:        18            CLC                       
CODE_27B00F:        69 20         ADC #$20                  
CODE_27B011:        29 F0         AND #$F0                  
CODE_27B013:        85 04         STA $04                   
CODE_27B015:        A5 55         LDA $55                   
CODE_27B017:        69 00         ADC #$00                  
CODE_27B019:        29 01         AND #$01                  
CODE_27B01B:        85 02         STA $02                   
CODE_27B01D:        A5 5E         LDA $5E                   
CODE_27B01F:        18            CLC                       
CODE_27B020:        69 08         ADC #$08                  
CODE_27B022:        29 F0         AND #$F0                  
CODE_27B024:        85 03         STA $03                   
CODE_27B026:        A5 43         LDA $43                   
CODE_27B028:        69 00         ADC #$00                  
CODE_27B02A:        85 05         STA $05                   
CODE_27B02C:        C9 10         CMP #$10                  
CODE_27B02E:        B0 4F         BCS CODE_27B07F                   
CODE_27B030:        DA            PHX                       
CODE_27B031:        0A            ASL A                     
CODE_27B032:        AA            TAX                       
CODE_27B033:        BF 00 82 21   LDA.l DATA_218200,x             
CODE_27B037:        85 2E         STA $2E                   
CODE_27B039:        85 D8         STA $D8                   
CODE_27B03B:        BF 01 82 21   LDA.l DATA_218200+1,x             
CODE_27B03F:        18            CLC                       
CODE_27B040:        65 02         ADC $02                   
CODE_27B042:        85 2F         STA $2F                   
CODE_27B044:        18            CLC                       
CODE_27B045:        69 20         ADC #$20                  
CODE_27B047:        85 D9         STA $D9                   
CODE_27B049:        A9 7E         LDA #$7E                  
CODE_27B04B:        85 30         STA $30                   
CODE_27B04D:        85 DA         STA $DA                   
CODE_27B04F:        FA            PLX                       
CODE_27B050:        A5 03         LDA $03                   
CODE_27B052:        4A            LSR A                     
CODE_27B053:        4A            LSR A                     
CODE_27B054:        4A            LSR A                     
CODE_27B055:        4A            LSR A                     
CODE_27B056:        05 04         ORA $04                   
CODE_27B058:        A8            TAY                       
CODE_27B059:        B7 D8         LDA [$D8],y               
CODE_27B05B:        F0 18         BEQ CODE_27B075           
CODE_27B05D:        DA            PHX                       
CODE_27B05E:        AD 0A 07      LDA $070A                 
CODE_27B061:        0A            ASL A                     
CODE_27B062:        AA            TAX                       
CODE_27B063:        BD 57 AB      LDA.w DATA_21AB57,x               
CODE_27B066:        85 DB         STA $DB                   
CODE_27B068:        BD 58 AB      LDA.w DATA_21AB57+1,x               
CODE_27B06B:        85 DC         STA $DC                   
CODE_27B06D:        B7 2E         LDA [$2E],y               
CODE_27B06F:        A8            TAY                       
CODE_27B070:        B1 DB         LDA ($DB),y               
CODE_27B072:        FA            PLX                       
CODE_27B073:        80 02         BRA CODE_27B077           

CODE_27B075:        B7 2E         LDA [$2E],y               
CODE_27B077:        C9 F3         CMP #$F3                  
CODE_27B079:        D0 05         BNE CODE_27B080           
CODE_27B07B:        A9 D0         LDA #$D0                  
CODE_27B07D:        85 9D         STA $9D                   
CODE_27B07F:        60            RTS                       

CODE_27B080:        C9 94         CMP #$94                  
CODE_27B082:        D0 0E         BNE CODE_27B092           
CODE_27B084:        AC 0A 07      LDY $070A                 
CODE_27B087:        C0 0B         CPY #$0B                  
CODE_27B089:        F0 04         BEQ CODE_27B08F           
CODE_27B08B:        C0 02         CPY #$02                  
CODE_27B08D:        D0 03         BNE CODE_27B092           
CODE_27B08F:        4C BE B1      JMP CODE_27B1BE           

CODE_27B092:        C9 5B         CMP #$5B                  
CODE_27B094:        D0 57         BNE CODE_27B0ED           
CODE_27B096:        AC 0A 07      LDY $070A                 
CODE_27B099:        C0 04         CPY #$04                  
CODE_27B09B:        F0 0C         BEQ CODE_27B0A9           
CODE_27B09D:        C0 08         CPY #$08                  
CODE_27B09F:        F0 08         BEQ CODE_27B0A9           
CODE_27B0A1:        C0 0C         CPY #$0C                  
CODE_27B0A3:        F0 04         BEQ CODE_27B0A9           
CODE_27B0A5:        C0 02         CPY #$02                  
CODE_27B0A7:        D0 D6         BNE CODE_27B07F           
CODE_27B0A9:        AD 64 05      LDA $0564                 
CODE_27B0AC:        D0 D1         BNE CODE_27B07F           
CODE_27B0AE:        20 85 DC      JSR CODE_27DC85           
CODE_27B0B1:        A9 54         LDA #$54                  
CODE_27B0B3:        9D 71 06      STA $0671,x               
CODE_27B0B6:        A5 04         LDA $04                   
CODE_27B0B8:        38            SEC                       
CODE_27B0B9:        E9 01         SBC #$01                  
CODE_27B0BB:        95 71         STA $71,x                 
CODE_27B0BD:        A5 02         LDA $02                   
CODE_27B0BF:        E9 00         SBC #$00                  
CODE_27B0C1:        95 56         STA $56,x                 
CODE_27B0C3:        A5 03         LDA $03                   
CODE_27B0C5:        95 5F         STA $5F,x                 
CODE_27B0C7:        A5 05         LDA $05                   
CODE_27B0C9:        95 44         STA $44,x                 
CODE_27B0CB:        A9 20         LDA #$20                  
CODE_27B0CD:        95 68         STA $68,x                 
CODE_27B0CF:        A9 03         LDA #$03                  
CODE_27B0D1:        9D E9 1F      STA $1FE9,x               
CODE_27B0D4:        A9 02         LDA #$02                  
CODE_27B0D6:        8D 64 05      STA $0564                 
CODE_27B0D9:        A5 02         LDA $02                   
CODE_27B0DB:        8D 2A 05      STA $052A                 
CODE_27B0DE:        A5 04         LDA $04                   
CODE_27B0E0:        8D 2B 05      STA $052B                 
CODE_27B0E3:        A5 03         LDA $03                   
CODE_27B0E5:        8D 29 05      STA $0529                 
CODE_27B0E8:        A5 05         LDA $05                   
CODE_27B0EA:        8D 28 05      STA $0528                 
CODE_27B0ED:        60            RTS                       

CODE_27B0EE:        A5 70         LDA $70                   
CODE_27B0F0:        18            CLC                       
CODE_27B0F1:        69 21         ADC #$21                  
CODE_27B0F3:        29 F0         AND #$F0                  
CODE_27B0F5:        85 00         STA $00                   
CODE_27B0F7:        85 04         STA $04                   
CODE_27B0F9:        A5 55         LDA $55                   
CODE_27B0FB:        69 00         ADC #$00                  
CODE_27B0FD:        85 02         STA $02                   
CODE_27B0FF:        09 20         ORA #$20                  
CODE_27B101:        85 01         STA $01                   
CODE_27B103:        85 D9         STA $D9                   
CODE_27B105:        18            CLC                       
CODE_27B106:        69 20         ADC #$20                  
CODE_27B108:        85 DC         STA $DC                   
CODE_27B10A:        A5 5E         LDA $5E                   
CODE_27B10C:        18            CLC                       
CODE_27B10D:        69 08         ADC #$08                  
CODE_27B10F:        29 F0         AND #$F0                  
CODE_27B111:        85 03         STA $03                   
CODE_27B113:        4A            LSR A                     
CODE_27B114:        4A            LSR A                     
CODE_27B115:        4A            LSR A                     
CODE_27B116:        4A            LSR A                     
CODE_27B117:        05 00         ORA $00                   
CODE_27B119:        85 00         STA $00                   
CODE_27B11B:        85 D8         STA $D8                   
CODE_27B11D:        85 DB         STA $DB                   
CODE_27B11F:        A0 00         LDY #$00                  
CODE_27B121:        84 05         STY $05                   
CODE_27B123:        A9 7E         LDA #$7E                  
CODE_27B125:        85 DA         STA $DA                   
CODE_27B127:        85 DD         STA $DD                   
CODE_27B129:        B7 DB         LDA [$DB],y               
CODE_27B12B:        F0 18         BEQ CODE_27B145           
CODE_27B12D:        DA            PHX                       
CODE_27B12E:        AD 0A 07      LDA $070A                 
CODE_27B131:        0A            ASL A                     
CODE_27B132:        AA            TAX                       
CODE_27B133:        BD 57 AB      LDA.w DATA_21AB57,x               
CODE_27B136:        85 DB         STA $DB                   
CODE_27B138:        BD 58 AB      LDA.w DATA_21AB57+1,x               
CODE_27B13B:        85 DC         STA $DC                   
CODE_27B13D:        B7 D8         LDA [$D8],y               
CODE_27B13F:        A8            TAY                       
CODE_27B140:        B1 DB         LDA ($DB),y               
CODE_27B142:        FA            PLX                       
CODE_27B143:        80 02         BRA CODE_27B147           

CODE_27B145:        B7 D8         LDA [$D8],y               
CODE_27B147:        C9 5B         CMP #$5B                  
CODE_27B149:        D0 03         BNE CODE_27B14E           
CODE_27B14B:        4C 96 B0      JMP CODE_27B096           

CODE_27B14E:        A4 A6         LDY $A6                   
CODE_27B150:        D0 9B         BNE CODE_27B0ED           
CODE_27B152:        AC BD 07      LDY $07BD                 
CODE_27B155:        D0 96         BNE CODE_27B0ED           
CODE_27B157:        C9 54         CMP #$54                  
CODE_27B159:        90 92         BCC CODE_27B0ED           
CODE_27B15B:        C9 5D         CMP #$5D                  
CODE_27B15D:        B0 8E         BCS CODE_27B0ED                   
CODE_27B15F:        38            SEC                       
CODE_27B160:        E9 54         SBC #$54                  
CODE_27B162:        A8            TAY                       
CODE_27B163:        A9 FF         LDA #$FF                  
CODE_27B165:        85 02         STA $02                   
CODE_27B167:        A2 04         LDX #$04                  
CODE_27B169:        BD 61 06      LDA $0661,x               
CODE_27B16C:        F0 11         BEQ CODE_27B17F           
CODE_27B16E:        BD 71 06      LDA $0671,x               
CODE_27B171:        C9 A8         CMP #$A8                  
CODE_27B173:        90 0C         BCC CODE_27B181           
CODE_27B175:        C9 AA         CMP #$AA                  
CODE_27B177:        B0 08         BCS CODE_27B181                   
CODE_27B179:        20 5F 9C      JSR CODE_279C5F           
CODE_27B17C:        4C 7F B1      JMP CODE_27B17F           

CODE_27B17F:        86 02         STX $02                   
CODE_27B181:        CA            DEX                       
CODE_27B182:        10 E5         BPL CODE_27B169           
CODE_27B184:        A6 02         LDX $02                   
CODE_27B186:        30 35         BMI CODE_27B1BD           
CODE_27B188:        A9 02         LDA #$02                  
CODE_27B18A:        9D 61 06      STA $0661,x               
CODE_27B18D:        B9 C9 C6      LDA.w DATA_21C6C9,y               
CODE_27B190:        9D 71 06      STA $0671,x               
CODE_27B193:        B9 D2 C6      LDA.w DATA_21C6D2,y               
CODE_27B196:        95 4D         STA $4D,x                 
CODE_27B198:        A5 00         LDA $00                   
CODE_27B19A:        29 F0         AND #$F0                  
CODE_27B19C:        38            SEC                       
CODE_27B19D:        E9 01         SBC #$01                  
CODE_27B19F:        95 71         STA $71,x                 
CODE_27B1A1:        A5 01         LDA $01                   
CODE_27B1A3:        E9 00         SBC #$00                  
CODE_27B1A5:        29 0F         AND #$0F                  
CODE_27B1A7:        95 56         STA $56,x                 
CODE_27B1A9:        A5 00         LDA $00                   
CODE_27B1AB:        0A            ASL A                     
CODE_27B1AC:        0A            ASL A                     
CODE_27B1AD:        0A            ASL A                     
CODE_27B1AE:        0A            ASL A                     
CODE_27B1AF:        18            CLC                       
CODE_27B1B0:        79 DB C6      ADC.w DATA_21C6DB,y               
CODE_27B1B3:        95 5F         STA $5F,x                 
CODE_27B1B5:        A9 00         LDA #$00                  
CODE_27B1B7:        95 44         STA $44,x                 
CODE_27B1B9:        A9 FF         LDA #$FF                  
CODE_27B1BB:        95 68         STA $68,x                 
CODE_27B1BD:        60            RTS                       

CODE_27B1BE:        A9 01         LDA #$01                  
CODE_27B1C0:        8D 78 05      STA $0578                 
CODE_27B1C3:        22 46 A5 27   JSL CODE_27A546           
CODE_27B1C7:        60            RTS                       

CODE_27B1C8:        AE 00 16      LDX $1600                 
CODE_27B1CB:        AD FB 1C      LDA $1CFB                 
CODE_27B1CE:        F0 2C         BEQ CODE_27B1FC           
CODE_27B1D0:        48            PHA                       
CODE_27B1D1:        29 03         AND #$03                  
CODE_27B1D3:        A8            TAY                       
CODE_27B1D4:        CE FB 1C      DEC $1CFB                 
CODE_27B1D7:        68            PLA                       
CODE_27B1D8:        10 23         BPL CODE_27B1FD           
CODE_27B1DA:        29 7F         AND #$7F                  
CODE_27B1DC:        D0 03         BNE CODE_27B1E1           
CODE_27B1DE:        8D FB 1C      STA $1CFB                 
CODE_27B1E1:        98            TYA                       
CODE_27B1E2:        0A            ASL A                     
CODE_27B1E3:        A8            TAY                       
CODE_27B1E4:        C2 20         REP #$20                  
CODE_27B1E6:        B9 E4 C6      LDA.w DATA_21C6E4,y               
CODE_27B1E9:        8D A2 13      STA $13A2                 
CODE_27B1EC:        8D A4 13      STA $13A4                 
CODE_27B1EF:        8D A6 13      STA $13A6                 
CODE_27B1F2:        8D C2 13      STA $13C2                 
CODE_27B1F5:        E2 20         SEP #$20                  
CODE_27B1F7:        A9 01         LDA #$01                  
CODE_27B1F9:        8D 00 15      STA $1500                 
CODE_27B1FC:        60            RTS                       

CODE_27B1FD:        C2 20         REP #$20                  
CODE_27B1FF:        AD FB 1C      LDA $1CFB                 
CODE_27B202:        29 FF 00      AND #$00FF                
CODE_27B205:        F0 11         BEQ CODE_27B218           
CODE_27B207:        A5 15         LDA $15                   
CODE_27B209:        29 03 00      AND #$0003                
CODE_27B20C:        DA            PHX                       
CODE_27B20D:        AA            TAX                       
CODE_27B20E:        BF 23 B2 27   LDA.l DATA_27B223,x             
CODE_27B212:        8D 00 13      STA $1300                 
CODE_27B215:        FA            PLX                       
CODE_27B216:        80 03         BRA CODE_27B21B           

CODE_27B218:        9C 00 13      STZ $1300                 
CODE_27B21B:        E2 20         SEP #$20                  
CODE_27B21D:        A9 01         LDA #$01                  
CODE_27B21F:        8D 00 15      STA $1500                 
CODE_27B222:        60            RTS                       

DATA_27B223:        db $08,$77,$FF

CODE_27B226:        7F 18 F0 08   ADC.l DATA_08F000+$18,x             ;INVALID: this points to graphics data???
CODE_27B22A:        98            TYA                       
CODE_27B22B:        0A            ASL A                     
CODE_27B22C:        A8            TAY                       
CODE_27B22D:        B9 E4 C6      LDA.w DATA_21C6E4,y               
CODE_27B230:        80 03         BRA CODE_27B235           

CODE_27B232:        AD B9 02      LDA $02B9                 
CODE_27B235:        85 DC         STA $DC                   
CODE_27B237:        29 1F         AND #$1F                  
CODE_27B239:        09 20         ORA #$20                  
CODE_27B23B:        85 D8         STA $D8                   
CODE_27B23D:        A5 DC         LDA $DC                   
CODE_27B23F:        4A            LSR A                     
CODE_27B240:        4A            LSR A                     
CODE_27B241:        4A            LSR A                     
CODE_27B242:        4A            LSR A                     
CODE_27B243:        4A            LSR A                     
CODE_27B244:        29 1F         AND #$1F                  
CODE_27B246:        09 40         ORA #$40                  
CODE_27B248:        85 DA         STA $DA                   
CODE_27B24A:        A5 DC         LDA $DC                   
CODE_27B24C:        EB            XBA                       
CODE_27B24D:        4A            LSR A                     
CODE_27B24E:        4A            LSR A                     
CODE_27B24F:        29 1F         AND #$1F                  
CODE_27B251:        09 80         ORA #$80                  
CODE_27B253:        85 DC         STA $DC                   
CODE_27B255:        E2 20         SEP #$20                  
CODE_27B257:        A5 D8         LDA $D8                   
CODE_27B259:        8D 05 02      STA $0205                 
CODE_27B25C:        A5 DA         LDA $DA                   
CODE_27B25E:        8D 06 02      STA $0206                 
CODE_27B261:        A5 DC         LDA $DC                   
CODE_27B263:        8D 07 02      STA $0207                 
CODE_27B266:        A9 01         LDA #$01                  
CODE_27B268:        8D 00 15      STA $1500                 
CODE_27B26B:        60            RTS                       

CODE_27B26C:        C2 20         REP #$20                  
CODE_27B26E:        AD FB 1C      LDA $1CFB                 
CODE_27B271:        29 FF 00      AND #$00FF                
CODE_27B274:        F0 08         BEQ CODE_27B27E           
CODE_27B276:        98            TYA                       
CODE_27B277:        0A            ASL A                     
CODE_27B278:        A8            TAY                       
CODE_27B279:        B9 E4 C6      LDA.w DATA_21C6E4,y               
CODE_27B27C:        80 03         BRA CODE_27B281           

CODE_27B27E:        AD B9 02      LDA $02B9                 
CODE_27B281:        8D 00 13      STA $1300                 
CODE_27B284:        E2 20         SEP #$20                  
CODE_27B286:        A9 20         LDA #$20                  
CODE_27B288:        8D 05 02      STA $0205                 
CODE_27B28B:        0A            ASL A                     
CODE_27B28C:        8D 06 02      STA $0206                 
CODE_27B28F:        0A            ASL A                     
CODE_27B290:        8D 07 02      STA $0207                 
CODE_27B293:        A9 01         LDA #$01                  
CODE_27B295:        8D 00 15      STA $1500                 
CODE_27B298:        60            RTS                       

CODE_27B299:        20 C8 B1      JSR CODE_27B1C8           
CODE_27B29C:        20 00 B0      JSR CODE_27B000           
CODE_27B29F:        20 DB BF      JSR CODE_27BFDB           
CODE_27B2A2:        20 22 BA      JSR CODE_27BA22           
CODE_27B2A5:        20 5E BB      JSR CODE_27BB5E           
CODE_27B2A8:        20 D7 BC      JSR CODE_27BCD7           
CODE_27B2AB:        20 94 C2      JSR CODE_27C294           
CODE_27B2AE:        20 36 C5      JSR CODE_27C536           
CODE_27B2B1:        20 3D D8      JSR CODE_27D83D           
CODE_27B2B4:        20 2C B4      JSR CODE_27B42C           
CODE_27B2B7:        22 13 D7 29   JSL CODE_29D713           
CODE_27B2BB:        A5 BB         LDA $BB                   
CODE_27B2BD:        C9 06         CMP #$06                  
CODE_27B2BF:        F0 04         BEQ CODE_27B2C5           
CODE_27B2C1:        C9 02         CMP #$02                  
CODE_27B2C3:        D0 17         BNE CODE_27B2DC           
CODE_27B2C5:        AD 56 05      LDA $0556                 
CODE_27B2C8:        0D 6F 05      ORA $056F                 
CODE_27B2CB:        0D 57 05      ORA $0557                 
CODE_27B2CE:        0D 8C 05      ORA $058C                 
CODE_27B2D1:        05 9C         ORA $9C                   
CODE_27B2D3:        D0 07         BNE CODE_27B2DC           
CODE_27B2D5:        24 18         BIT $18                   
CODE_27B2D7:        50 03         BVC CODE_27B2DC                   
CODE_27B2D9:        20 A3 B3      JSR CODE_27B3A3           
CODE_27B2DC:        AD 46 1A      LDA $1A46                 
CODE_27B2DF:        D0 03         BNE CODE_27B2E4           
CODE_27B2E1:        82 B6 00      BRL CODE_27B39A           

CODE_27B2E4:        CE 46 1A      DEC $1A46                 
CODE_27B2E7:        A0 00         LDY #$00                  
CODE_27B2E9:        AD 47 1A      LDA $1A47                 
CODE_27B2EC:        38            SEC                       
CODE_27B2ED:        ED 43 05      SBC $0543                 
CODE_27B2F0:        99 01 08      STA $0801,y               
CODE_27B2F3:        99 05 08      STA $0805,y               
CODE_27B2F6:        18            CLC                       
CODE_27B2F7:        69 08         ADC #$08                  
CODE_27B2F9:        99 09 08      STA $0809,y               
CODE_27B2FC:        99 0D 08      STA $080D,y               
CODE_27B2FF:        AD 7E 02      LDA $027E                 
CODE_27B302:        EB            XBA                       
CODE_27B303:        AD 48 1A      LDA $1A48                 
CODE_27B306:        C2 20         REP #$20                  
CODE_27B308:        38            SEC                       
CODE_27B309:        ED 10 02      SBC $0210                 
CODE_27B30C:        85 D8         STA $D8                   
CODE_27B30E:        18            CLC                       
CODE_27B30F:        69 08 00      ADC #$0008                
CODE_27B312:        85 DA         STA $DA                   
CODE_27B314:        E2 20         SEP #$20                  
CODE_27B316:        A5 D8         LDA $D8                   
CODE_27B318:        99 00 08      STA $0800,y               
CODE_27B31B:        99 08 08      STA $0808,y               
CODE_27B31E:        A5 DA         LDA $DA                   
CODE_27B320:        99 04 08      STA $0804,y               
CODE_27B323:        99 0C 08      STA $080C,y               
CODE_27B326:        A9 56         LDA #$56                  
CODE_27B328:        99 02 08      STA $0802,y               
CODE_27B32B:        99 06 08      STA $0806,y               
CODE_27B32E:        1A            INC A                     
CODE_27B32F:        99 0A 08      STA $080A,y               
CODE_27B332:        99 0E 08      STA $080E,y               
CODE_27B335:        A5 15         LDA $15                   
CODE_27B337:        4A            LSR A                     
CODE_27B338:        4A            LSR A                     
CODE_27B339:        4A            LSR A                     
CODE_27B33A:        6A            ROR A                     
CODE_27B33B:        29 80         AND #$80                  
CODE_27B33D:        85 00         STA $00                   
CODE_27B33F:        A5 15         LDA $15                   
CODE_27B341:        29 03         AND #$03                  
CODE_27B343:        0A            ASL A                     
CODE_27B344:        09 20         ORA #$20                  
CODE_27B346:        05 00         ORA $00                   
CODE_27B348:        99 03 08      STA $0803,y               
CODE_27B34B:        99 0B 08      STA $080B,y               
CODE_27B34E:        49 C0         EOR #$C0                  
CODE_27B350:        99 07 08      STA $0807,y               
CODE_27B353:        99 0F 08      STA $080F,y               
CODE_27B356:        B9 03 08      LDA $0803,y               
CODE_27B359:        29 80         AND #$80                  
CODE_27B35B:        F0 0E         BEQ CODE_27B36B           
CODE_27B35D:        B9 02 08      LDA $0802,y               
CODE_27B360:        48            PHA                       
CODE_27B361:        B9 0A 08      LDA $080A,y               
CODE_27B364:        99 02 08      STA $0802,y               
CODE_27B367:        68            PLA                       
CODE_27B368:        99 0A 08      STA $080A,y               
CODE_27B36B:        B9 07 08      LDA $0807,y               
CODE_27B36E:        29 80         AND #$80                  
CODE_27B370:        F0 0E         BEQ CODE_27B380           
CODE_27B372:        B9 06 08      LDA $0806,y               
CODE_27B375:        48            PHA                       
CODE_27B376:        B9 0E 08      LDA $080E,y               
CODE_27B379:        99 06 08      STA $0806,y               
CODE_27B37C:        68            PLA                       
CODE_27B37D:        99 0E 08      STA $080E,y               
CODE_27B380:        5A            PHY                       
CODE_27B381:        98            TYA                       
CODE_27B382:        4A            LSR A                     
CODE_27B383:        4A            LSR A                     
CODE_27B384:        A8            TAY                       
CODE_27B385:        A5 D9         LDA $D9                   
CODE_27B387:        29 01         AND #$01                  
CODE_27B389:        99 20 0A      STA $0A20,y               
CODE_27B38C:        99 22 0A      STA $0A22,y               
CODE_27B38F:        A5 DB         LDA $DB                   
CODE_27B391:        29 01         AND #$01                  
CODE_27B393:        99 21 0A      STA $0A21,y               
CODE_27B396:        99 23 0A      STA $0A23,y               
CODE_27B399:        7A            PLY                       
CODE_27B39A:        AD 56 05      LDA $0556                 
CODE_27B39D:        D0 03         BNE CODE_27B3A2           
CODE_27B39F:        20 C8 DD      JSR CODE_27DDC8           
CODE_27B3A2:        6B            RTL                       

CODE_27B3A3:        A2 01         LDX #$01                  
CODE_27B3A5:        BD E1 1C      LDA $1CE1,x               
CODE_27B3A8:        F0 04         BEQ CODE_27B3AE           
CODE_27B3AA:        CA            DEX                       
CODE_27B3AB:        10 F8         BPL CODE_27B3A5           
CODE_27B3AD:        60            RTS                       

CODE_27B3AE:        A9 06         LDA #$06                  
CODE_27B3B0:        8D 03 12      STA $1203                 
CODE_27B3B3:        A9 0B         LDA #$0B                  
CODE_27B3B5:        8D 13 05      STA $0513                 
CODE_27B3B8:        A5 5E         LDA $5E                   
CODE_27B3BA:        18            CLC                       
CODE_27B3BB:        69 04         ADC #$04                  
CODE_27B3BD:        9D E5 1C      STA $1CE5,x               
CODE_27B3C0:        A5 43         LDA $43                   
CODE_27B3C2:        69 00         ADC #$00                  
CODE_27B3C4:        9D 47 02      STA $0247,x               
CODE_27B3C7:        AD 25 04      LDA $0425                 
CODE_27B3CA:        F0 15         BEQ CODE_27B3E1           
CODE_27B3CC:        A5 BD         LDA $BD                   
CODE_27B3CE:        29 40         AND #$40                  
CODE_27B3D0:        F0 0F         BEQ CODE_27B3E1           
CODE_27B3D2:        BD E5 1C      LDA $1CE5,x               
CODE_27B3D5:        C9 F8         CMP #$F8                  
CODE_27B3D7:        90 08         BCC CODE_27B3E1           
CODE_27B3D9:        A9 00         LDA #$00                  
CODE_27B3DB:        9D E5 1C      STA $1CE5,x               
CODE_27B3DE:        9D 47 02      STA $0247,x               
CODE_27B3E1:        A5 70         LDA $70                   
CODE_27B3E3:        9D E3 1C      STA $1CE3,x               
CODE_27B3E6:        A5 55         LDA $55                   
CODE_27B3E8:        9D FA 05      STA $05FA,x               
CODE_27B3EB:        A9 01         LDA #$01                  
CODE_27B3ED:        A4 BB         LDY $BB                   
CODE_27B3EF:        C0 06         CPY #$06                  
CODE_27B3F1:        38            SEC                       
CODE_27B3F2:        D0 01         BNE CODE_27B3F5           
CODE_27B3F4:        0A            ASL A                     
CODE_27B3F5:        9D E1 1C      STA $1CE1,x               
CODE_27B3F8:        A9 03         LDA #$03                  
CODE_27B3FA:        B0 02         BCS CODE_27B3FE                   
CODE_27B3FC:        A9 FD         LDA #$FD                  
CODE_27B3FE:        9D E7 1C      STA $1CE7,x               
CODE_27B401:        A9 00         LDA #$00                  
CODE_27B403:        85 00         STA $00                   
CODE_27B405:        A9 03         LDA #$03                  
CODE_27B407:        B0 0D         BCS CODE_27B416                   
CODE_27B409:        A5 BD         LDA $BD                   
CODE_27B40B:        0A            ASL A                     
CODE_27B40C:        45 8B         EOR $8B                   
CODE_27B40E:        10 04         BPL CODE_27B414           
CODE_27B410:        A5 8B         LDA $8B                   
CODE_27B412:        85 00         STA $00                   
CODE_27B414:        A9 10         LDA #$10                  
CODE_27B416:        A4 BD         LDY $BD                   
CODE_27B418:        D0 04         BNE CODE_27B41E           
CODE_27B41A:        22 59 A8 27   JSL CODE_27A859           ;Invert Accumulator (8-bit)
CODE_27B41E:        18            CLC                       
CODE_27B41F:        65 00         ADC $00                   
CODE_27B421:        9D E9 1C      STA $1CE9,x               
CODE_27B424:        9E ED 1C      STZ $1CED,x               
CODE_27B427:        9E EB 1C      STZ $1CEB,x               
CODE_27B42A:        60            RTS                       

CODE_27B42B:        60            RTS                       

CODE_27B42C:        A2 01         LDX #$01                  
CODE_27B42E:        86 9B         STX $9B                   
CODE_27B430:        20 36 B4      JSR CODE_27B436           
CODE_27B433:        C6 9B         DEC $9B                   
CODE_27B435:        CA            DEX                       
CODE_27B436:        BD E1 1C      LDA $1CE1,x               
CODE_27B439:        F0 F0         BEQ CODE_27B42B           
CODE_27B43B:        C9 03         CMP #$03                  
CODE_27B43D:        90 03         BCC CODE_27B442           
CODE_27B43F:        4C 5E B9      JMP CODE_27B95E           

CODE_27B442:        AD FE 05      LDA $05FE                 
CODE_27B445:        F0 1F         BEQ CODE_27B466           
CODE_27B447:        A5 9C         LDA $9C                   
CODE_27B449:        D0 1B         BNE CODE_27B466           
CODE_27B44B:        BD E5 1C      LDA $1CE5,x               
CODE_27B44E:        18            CLC                       
CODE_27B44F:        6F 52 39 7E   ADC $7E3952               
CODE_27B453:        9D E5 1C      STA $1CE5,x               
CODE_27B456:        BD E3 1C      LDA $1CE3,x               
CODE_27B459:        18            CLC                       
CODE_27B45A:        6F 53 39 7E   ADC $7E3953               
CODE_27B45E:        9D E3 1C      STA $1CE3,x               
CODE_27B461:        90 03         BCC CODE_27B466           
CODE_27B463:        FE FA 05      INC $05FA,x               
CODE_27B466:        A4 9C         LDY $9C                   
CODE_27B468:        D0 62         BNE CODE_27B4CC           
CODE_27B46A:        BD E7 1C      LDA $1CE7,x               
CODE_27B46D:        AC FC 05      LDY $05FC                 
CODE_27B470:        F0 04         BEQ CODE_27B476           
CODE_27B472:        18            CLC                       
CODE_27B473:        6D 80 07      ADC $0780                 
CODE_27B476:        48            PHA                       
CODE_27B477:        A0 00         LDY #$00                  
CODE_27B479:        68            PLA                       
CODE_27B47A:        10 01         BPL CODE_27B47D           
CODE_27B47C:        88            DEY                       
CODE_27B47D:        18            CLC                       
CODE_27B47E:        7D E3 1C      ADC $1CE3,x               
CODE_27B481:        9D E3 1C      STA $1CE3,x               
CODE_27B484:        98            TYA                       
CODE_27B485:        7D FA 05      ADC $05FA,x               
CODE_27B488:        9D FA 05      STA $05FA,x               
CODE_27B48B:        FE ED 1C      INC $1CED,x               
CODE_27B48E:        BD E1 1C      LDA $1CE1,x               
CODE_27B491:        C9 02         CMP #$02                  
CODE_27B493:        D0 3A         BNE CODE_27B4CF           
CODE_27B495:        BD E9 1C      LDA $1CE9,x               
CODE_27B498:        0A            ASL A                     
CODE_27B499:        0A            ASL A                     
CODE_27B49A:        0A            ASL A                     
CODE_27B49B:        0A            ASL A                     
CODE_27B49C:        18            CLC                       
CODE_27B49D:        7D 55 1A      ADC $1A55,x               
CODE_27B4A0:        9D 55 1A      STA $1A55,x               
CODE_27B4A3:        08            PHP                       
CODE_27B4A4:        BD E9 1C      LDA $1CE9,x               
CODE_27B4A7:        4A            LSR A                     
CODE_27B4A8:        4A            LSR A                     
CODE_27B4A9:        4A            LSR A                     
CODE_27B4AA:        4A            LSR A                     
CODE_27B4AB:        C9 08         CMP #$08                  
CODE_27B4AD:        A0 00         LDY #$00                  
CODE_27B4AF:        90 03         BCC CODE_27B4B4           
CODE_27B4B1:        09 F0         ORA #$F0                  
CODE_27B4B3:        88            DEY                       
CODE_27B4B4:        28            PLP                       
CODE_27B4B5:        7D E5 1C      ADC $1CE5,x               
CODE_27B4B8:        9D E5 1C      STA $1CE5,x               
CODE_27B4BB:        98            TYA                       
CODE_27B4BC:        7D 47 02      ADC $0247,x               
CODE_27B4BF:        9D 47 02      STA $0247,x               
CODE_27B4C2:        BD ED 1C      LDA $1CED,x               
CODE_27B4C5:        29 07         AND #$07                  
CODE_27B4C7:        D0 03         BNE CODE_27B4CC           
CODE_27B4C9:        FE E7 1C      INC $1CE7,x               
CODE_27B4CC:        4C 05 B5      JMP CODE_27B505           

CODE_27B4CF:        BD 47 02      LDA $0247,x               
CODE_27B4D2:        EB            XBA                       
CODE_27B4D3:        BD E5 1C      LDA $1CE5,x               
CODE_27B4D6:        C2 20         REP #$20                  
CODE_27B4D8:        85 D8         STA $D8                   
CODE_27B4DA:        BD E9 1C      LDA $1CE9,x               
CODE_27B4DD:        29 FF 00      AND #$00FF                
CODE_27B4E0:        C9 80 00      CMP #$0080                
CODE_27B4E3:        90 03         BCC CODE_27B4E8           
CODE_27B4E5:        09 00 FF      ORA #$FF00                
CODE_27B4E8:        18            CLC                       
CODE_27B4E9:        65 D8         ADC $D8                   
CODE_27B4EB:        E2 20         SEP #$20                  
CODE_27B4ED:        9D E5 1C      STA $1CE5,x               
CODE_27B4F0:        EB            XBA                       
CODE_27B4F1:        9D 47 02      STA $0247,x               
CODE_27B4F4:        BD E7 1C      LDA $1CE7,x               
CODE_27B4F7:        C9 04         CMP #$04                  
CODE_27B4F9:        F0 0A         BEQ CODE_27B505           
CODE_27B4FB:        BD ED 1C      LDA $1CED,x               
CODE_27B4FE:        29 03         AND #$03                  
CODE_27B500:        D0 03         BNE CODE_27B505           
CODE_27B502:        FE E7 1C      INC $1CE7,x               
CODE_27B505:        BD 47 02      LDA $0247,x               
CODE_27B508:        EB            XBA                       
CODE_27B509:        BD E5 1C      LDA $1CE5,x               
CODE_27B50C:        C2 20         REP #$20                  
CODE_27B50E:        38            SEC                       
CODE_27B50F:        ED 10 02      SBC $0210                 
CODE_27B512:        85 DC         STA $DC                   
CODE_27B514:        C9 00 01      CMP #$0100                
CODE_27B517:        90 05         BCC CODE_27B51E           
CODE_27B519:        C9 F8 FF      CMP #$FFF8                
CODE_27B51C:        90 08         BCC CODE_27B526           
CODE_27B51E:        85 0D         STA $0D                   
CODE_27B520:        E2 20         SEP #$20                  
CODE_27B522:        85 01         STA $01                   
CODE_27B524:        80 08         BRA CODE_27B52E           

CODE_27B526:        E2 30         SEP #$30                  
CODE_27B528:        A9 00         LDA #$00                  
CODE_27B52A:        9D E1 1C      STA $1CE1,x               
CODE_27B52D:        60            RTS                       

CODE_27B52E:        69 08         ADC #$08                  
CODE_27B530:        85 0D         STA $0D                   
CODE_27B532:        BD FA 05      LDA $05FA,x               
CODE_27B535:        EB            XBA                       
CODE_27B536:        BD E3 1C      LDA $1CE3,x               
CODE_27B539:        C2 20         REP #$20                  
CODE_27B53B:        38            SEC                       
CODE_27B53C:        ED 16 02      SBC $0216                 
CODE_27B53F:        85 D8         STA $D8                   
CODE_27B541:        C9 C0 00      CMP #$00C0                
CODE_27B544:        90 18         BCC CODE_27B55E           
CODE_27B546:        C9 E0 FF      CMP #$FFE0                
CODE_27B549:        B0 13         BCS CODE_27B55E                   
CODE_27B54B:        E2 20         SEP #$20                  
CODE_27B54D:        BD E1 1C      LDA $1CE1,x               
CODE_27B550:        C9 02         CMP #$02                  
CODE_27B552:        D0 07         BNE CODE_27B55B           
CODE_27B554:        A5 D9         LDA $D9                   
CODE_27B556:        10 03         BPL CODE_27B55B           
CODE_27B558:        82 38 01      BRL CODE_27B693           

CODE_27B55B:        82 C8 FF      BRL CODE_27B526           

CODE_27B55E:        E2 20         SEP #$20                  
CODE_27B560:        20 28 D7      JSR CODE_27D728           
CODE_27B563:        C2 10         REP #$10                  
CODE_27B565:        B4 C6         LDY $C6,x                 
CODE_27B567:        A5 01         LDA $01                   
CODE_27B569:        99 00 08      STA $0800,y               
CODE_27B56C:        99 04 08      STA $0804,y               
CODE_27B56F:        BD E3 1C      LDA $1CE3,x               
CODE_27B572:        38            SEC                       
CODE_27B573:        ED 43 05      SBC $0543                 
CODE_27B576:        99 01 08      STA $0801,y               
CODE_27B579:        48            PHA                       
CODE_27B57A:        69 0E         ADC #$0E                  
CODE_27B57C:        85 0C         STA $0C                   
CODE_27B57E:        68            PLA                       
CODE_27B57F:        18            CLC                       
CODE_27B580:        69 08         ADC #$08                  
CODE_27B582:        99 05 08      STA $0805,y               
CODE_27B585:        C2 20         REP #$20                  
CODE_27B587:        98            TYA                       
CODE_27B588:        4A            LSR A                     
CODE_27B589:        4A            LSR A                     
CODE_27B58A:        A8            TAY                       
CODE_27B58B:        E2 20         SEP #$20                  
CODE_27B58D:        A5 DD         LDA $DD                   
CODE_27B58F:        29 01         AND #$01                  
CODE_27B591:        99 20 0A      STA $0A20,y               
CODE_27B594:        99 21 0A      STA $0A21,y               
CODE_27B597:        E2 10         SEP #$10                  
CODE_27B599:        BD E9 1C      LDA $1CE9,x               
CODE_27B59C:        4A            LSR A                     
CODE_27B59D:        29 40         AND #$40                  
CODE_27B59F:        85 02         STA $02                   
CODE_27B5A1:        BD E1 1C      LDA $1CE1,x               
CODE_27B5A4:        C9 02         CMP #$02                  
CODE_27B5A6:        F0 03         BEQ CODE_27B5AB           
CODE_27B5A8:        82 A0 00      BRL CODE_27B64B           

CODE_27B5AB:        A5 BB         LDA $BB                   
CODE_27B5AD:        C9 06         CMP #$06                  
CODE_27B5AF:        F0 03         BEQ CODE_27B5B4           
CODE_27B5B1:        82 F4 00      BRL CODE_27B6A8           

CODE_27B5B4:        C2 30         REP #$30                  
CODE_27B5B6:        B4 C6         LDY $C6,x                 
CODE_27B5B8:        BD ED 1C      LDA $1CED,x               
CODE_27B5BB:        4A            LSR A                     
CODE_27B5BC:        4A            LSR A                     
CODE_27B5BD:        29 03 00      AND #$0003                
CODE_27B5C0:        AA            TAX                       
CODE_27B5C1:        AD 88 05      LDA $0588                 
CODE_27B5C4:        29 FF 00      AND #$00FF                
CODE_27B5C7:        85 D8         STA $D8                   
CODE_27B5C9:        E2 20         SEP #$20                  
CODE_27B5CB:        BD F9 C6      LDA.w DATA_21C6F8+1,x               
CODE_27B5CE:        24 02         BIT $02                   
CODE_27B5D0:        50 02         BVC CODE_27B5D4                   
CODE_27B5D2:        49 06         EOR #$06                  
CODE_27B5D4:        85 DA         STA $DA                   
CODE_27B5D6:        64 DB         STZ $DB                   
CODE_27B5D8:        18            CLC                       
CODE_27B5D9:        65 01         ADC $01                   
CODE_27B5DB:        99 00 08      STA $0800,y               
CODE_27B5DE:        99 04 08      STA $0804,y               
CODE_27B5E1:        BD F8 C6      LDA.w DATA_21C6F8,x               
CODE_27B5E4:        18            CLC                       
CODE_27B5E5:        79 01 08      ADC $0801,y               
CODE_27B5E8:        99 01 08      STA $0801,y               
CODE_27B5EB:        18            CLC                       
CODE_27B5EC:        69 08         ADC #$08                  
CODE_27B5EE:        99 05 08      STA $0805,y               
CODE_27B5F1:        A9 EE         LDA #$EE                  
CODE_27B5F3:        99 02 08      STA $0802,y               
CODE_27B5F6:        1A            INC A                     
CODE_27B5F7:        99 06 08      STA $0806,y               
CODE_27B5FA:        A5 02         LDA $02                   
CODE_27B5FC:        5D F4 C6      EOR.w DATA_21C6F4,x               
CODE_27B5FF:        38            SEC                       
CODE_27B600:        09 21         ORA #$21                  
CODE_27B602:        A6 D8         LDX $D8                   
CODE_27B604:        F0 04         BEQ CODE_27B60A           
CODE_27B606:        29 CF         AND #$CF                  
CODE_27B608:        09 10         ORA #$10                  
CODE_27B60A:        99 03 08      STA $0803,y               
CODE_27B60D:        99 07 08      STA $0807,y               
CODE_27B610:        29 80         AND #$80                  
CODE_27B612:        F0 0E         BEQ CODE_27B622           
CODE_27B614:        B9 02 08      LDA $0802,y               
CODE_27B617:        48            PHA                       
CODE_27B618:        B9 06 08      LDA $0806,y               
CODE_27B61B:        99 02 08      STA $0802,y               
CODE_27B61E:        68            PLA                       
CODE_27B61F:        99 06 08      STA $0806,y               
CODE_27B622:        5A            PHY                       
CODE_27B623:        A6 9B         LDX $9B                   
CODE_27B625:        BD 47 02      LDA $0247,x               
CODE_27B628:        EB            XBA                       
CODE_27B629:        BD E5 1C      LDA $1CE5,x               
CODE_27B62C:        C2 20         REP #$20                  
CODE_27B62E:        38            SEC                       
CODE_27B62F:        ED 10 02      SBC $0210                 
CODE_27B632:        18            CLC                       
CODE_27B633:        65 DA         ADC $DA                   
CODE_27B635:        85 DC         STA $DC                   
CODE_27B637:        98            TYA                       
CODE_27B638:        4A            LSR A                     
CODE_27B639:        4A            LSR A                     
CODE_27B63A:        A8            TAY                       
CODE_27B63B:        E2 20         SEP #$20                  
CODE_27B63D:        A5 DD         LDA $DD                   
CODE_27B63F:        29 01         AND #$01                  
CODE_27B641:        99 20 0A      STA $0A20,y               
CODE_27B644:        99 21 0A      STA $0A21,y               
CODE_27B647:        7A            PLY                       
CODE_27B648:        82 48 00      BRL CODE_27B693           

CODE_27B64B:        AD 88 05      LDA $0588                 
CODE_27B64E:        85 D8         STA $D8                   
CODE_27B650:        64 D9         STZ $D9                   
CODE_27B652:        C2 30         REP #$30                  
CODE_27B654:        B4 C6         LDY $C6,x                 
CODE_27B656:        AD 65 05      LDA $0565                 
CODE_27B659:        4A            LSR A                     
CODE_27B65A:        4A            LSR A                     
CODE_27B65B:        29 03 00      AND #$0003                
CODE_27B65E:        AA            TAX                       
CODE_27B65F:        E2 20         SEP #$20                  
CODE_27B661:        BD EC C6      LDA.w DATA_21C6EC,x               
CODE_27B664:        99 02 08      STA $0802,y               
CODE_27B667:        1A            INC A                     
CODE_27B668:        99 06 08      STA $0806,y               
CODE_27B66B:        A5 02         LDA $02                   
CODE_27B66D:        5D F0 C6      EOR.w DATA_21C6F0,x               
CODE_27B670:        18            CLC                       
CODE_27B671:        09 20         ORA #$20                  
CODE_27B673:        A6 D8         LDX $D8                   
CODE_27B675:        F0 04         BEQ CODE_27B67B           
CODE_27B677:        29 CF         AND #$CF                  
CODE_27B679:        09 10         ORA #$10                  
CODE_27B67B:        99 03 08      STA $0803,y               
CODE_27B67E:        99 07 08      STA $0807,y               
CODE_27B681:        29 80         AND #$80                  
CODE_27B683:        F0 0E         BEQ CODE_27B693           
CODE_27B685:        B9 02 08      LDA $0802,y               
CODE_27B688:        48            PHA                       
CODE_27B689:        B9 06 08      LDA $0806,y               
CODE_27B68C:        99 02 08      STA $0802,y               
CODE_27B68F:        68            PLA                       
CODE_27B690:        99 06 08      STA $0806,y               
CODE_27B693:        E2 10         SEP #$10                  
CODE_27B695:        A6 9B         LDX $9B                   
CODE_27B697:        A5 9C         LDA $9C                   
CODE_27B699:        D0 12         BNE CODE_27B6AD           
CODE_27B69B:        BD E1 1C      LDA $1CE1,x               
CODE_27B69E:        C9 02         CMP #$02                  
CODE_27B6A0:        F0 03         BEQ CODE_27B6A5           
CODE_27B6A2:        20 AE B6      JSR CODE_27B6AE           
CODE_27B6A5:        4C 90 B8      JMP CODE_27B890           

CODE_27B6A8:        A9 03         LDA #$03                  
CODE_27B6AA:        9D E1 1C      STA $1CE1,x               
CODE_27B6AD:        60            RTS                       

CODE_27B6AE:        AD 25 04      LDA $0425                 
CODE_27B6B1:        F0 38         BEQ CODE_27B6EB           
CODE_27B6B3:        A5 0C         LDA $0C                   
CODE_27B6B5:        18            CLC                       
CODE_27B6B6:        6D 43 05      ADC $0543                 
CODE_27B6B9:        85 05         STA $05                   
CODE_27B6BB:        29 F0         AND #$F0                  
CODE_27B6BD:        85 02         STA $02                   
CODE_27B6BF:        AD 42 05      LDA $0542                 
CODE_27B6C2:        69 20         ADC #$20                  
CODE_27B6C4:        85 01         STA $01                   
CODE_27B6C6:        85 D9         STA $D9                   
CODE_27B6C8:        18            CLC                       
CODE_27B6C9:        69 20         ADC #$20                  
CODE_27B6CB:        85 DC         STA $DC                   
CODE_27B6CD:        BD E5 1C      LDA $1CE5,x               
CODE_27B6D0:        69 04         ADC #$04                  
CODE_27B6D2:        85 0D         STA $0D                   
CODE_27B6D4:        4A            LSR A                     
CODE_27B6D5:        4A            LSR A                     
CODE_27B6D6:        4A            LSR A                     
CODE_27B6D7:        4A            LSR A                     
CODE_27B6D8:        05 02         ORA $02                   
CODE_27B6DA:        85 00         STA $00                   
CODE_27B6DC:        85 D8         STA $D8                   
CODE_27B6DE:        85 DB         STA $DB                   
CODE_27B6E0:        A9 7E         LDA #$7E                  
CODE_27B6E2:        85 DA         STA $DA                   
CODE_27B6E4:        85 DD         STA $DD                   
CODE_27B6E6:        A0 00         LDY #$00                  
CODE_27B6E8:        4C 59 B7      JMP CODE_27B759           

CODE_27B6EB:        AD 8B 05      LDA $058B                 
CODE_27B6EE:        F0 12         BEQ CODE_27B702           
CODE_27B6F0:        A5 0C         LDA $0C                   
CODE_27B6F2:        C9 A0         CMP #$A0                  
CODE_27B6F4:        90 0E         BCC CODE_27B704           
CODE_27B6F6:        E9 10         SBC #$10                  
CODE_27B6F8:        85 05         STA $05                   
CODE_27B6FA:        29 F0         AND #$F0                  
CODE_27B6FC:        85 02         STA $02                   
CODE_27B6FE:        A9 01         LDA #$01                  
CODE_27B700:        80 11         BRA CODE_27B713           

CODE_27B702:        A5 0C         LDA $0C                   
CODE_27B704:        18            CLC                       
CODE_27B705:        6D 43 05      ADC $0543                 
CODE_27B708:        85 05         STA $05                   
CODE_27B70A:        29 F0         AND #$F0                  
CODE_27B70C:        85 02         STA $02                   
CODE_27B70E:        AD 42 05      LDA $0542                 
CODE_27B711:        69 00         ADC #$00                  
CODE_27B713:        85 03         STA $03                   
CODE_27B715:        F0 0D         BEQ CODE_27B724           
CODE_27B717:        C9 02         CMP #$02                  
CODE_27B719:        B0 06         BCS CODE_27B721                   
CODE_27B71B:        A5 02         LDA $02                   
CODE_27B71D:        C9 B0         CMP #$B0                  
CODE_27B71F:        90 03         BCC CODE_27B724           
CODE_27B721:        82 7C 00      BRL CODE_27B7A0           

CODE_27B724:        BD E5 1C      LDA $1CE5,x               
CODE_27B727:        85 04         STA $04                   
CODE_27B729:        DA            PHX                       
CODE_27B72A:        BD 47 02      LDA $0247,x               
CODE_27B72D:        85 06         STA $06                   
CODE_27B72F:        0A            ASL A                     
CODE_27B730:        AA            TAX                       
CODE_27B731:        BF 00 82 21   LDA.l DATA_218200,x             
CODE_27B735:        85 D8         STA $D8                   
CODE_27B737:        85 DB         STA $DB                   
CODE_27B739:        A5 03         LDA $03                   
CODE_27B73B:        29 01         AND #$01                  
CODE_27B73D:        18            CLC                       
CODE_27B73E:        7F 01 82 21   ADC.l DATA_218200+1,x             
CODE_27B742:        85 D9         STA $D9                   
CODE_27B744:        18            CLC                       
CODE_27B745:        69 20         ADC #$20                  
CODE_27B747:        85 DC         STA $DC                   
CODE_27B749:        FA            PLX                       
CODE_27B74A:        A5 04         LDA $04                   
CODE_27B74C:        4A            LSR A                     
CODE_27B74D:        4A            LSR A                     
CODE_27B74E:        4A            LSR A                     
CODE_27B74F:        4A            LSR A                     
CODE_27B750:        05 02         ORA $02                   
CODE_27B752:        A8            TAY                       
CODE_27B753:        A9 7E         LDA #$7E                  
CODE_27B755:        85 DA         STA $DA                   
CODE_27B757:        85 DD         STA $DD                   
CODE_27B759:        B7 DB         LDA [$DB],y               
CODE_27B75B:        F0 18         BEQ CODE_27B775           
CODE_27B75D:        B7 D8         LDA [$D8],y               
CODE_27B75F:        A8            TAY                       
CODE_27B760:        DA            PHX                       
CODE_27B761:        AD 0A 07      LDA $070A                 
CODE_27B764:        0A            ASL A                     
CODE_27B765:        AA            TAX                       
CODE_27B766:        BD 57 AB      LDA.w DATA_21AB57,x               
CODE_27B769:        85 DB         STA $DB                   
CODE_27B76B:        BD 58 AB      LDA.w DATA_21AB57+1,x               
CODE_27B76E:        85 DC         STA $DC                   
CODE_27B770:        B1 DB         LDA ($DB),y               
CODE_27B772:        FA            PLX                       
CODE_27B773:        80 02         BRA CODE_27B777           

CODE_27B775:        B7 D8         LDA [$D8],y               
CODE_27B777:        22 D2 8E 27   JSL CODE_278ED2           
CODE_27B77B:        48            PHA                       
CODE_27B77C:        0A            ASL A                     
CODE_27B77D:        2A            ROL A                     
CODE_27B77E:        2A            ROL A                     
CODE_27B77F:        29 03         AND #$03                  
CODE_27B781:        A8            TAY                       
CODE_27B782:        84 01         STY $01                   
CODE_27B784:        68            PLA                       
CODE_27B785:        85 00         STA $00                   
CODE_27B787:        D9 96 1E      CMP $1E96,y               
CODE_27B78A:        90 14         BCC CODE_27B7A0           
CODE_27B78C:        D9 9A 1E      CMP $1E9A,y               
CODE_27B78F:        90 57         BCC CODE_27B7E8           
CODE_27B791:        AC 60 05      LDY $0560                 
CODE_27B794:        C0 0B         CPY #$0B                  
CODE_27B796:        D0 17         BNE CODE_27B7AF           
CODE_27B798:        C9 56         CMP #$56                  
CODE_27B79A:        D0 0A         BNE CODE_27B7A6           
CODE_27B79C:        A9 10         LDA #$10                  
CODE_27B79E:        D0 0C         BNE CODE_27B7AC           
CODE_27B7A0:        A9 00         LDA #$00                  
CODE_27B7A2:        9D EB 1C      STA $1CEB,x               
CODE_27B7A5:        60            RTS                       

CODE_27B7A6:        C9 55         CMP #$55                  
CODE_27B7A8:        D0 05         BNE CODE_27B7AF           
CODE_27B7AA:        A9 11         LDA #$11                  
CODE_27B7AC:        20 F6 B7      JSR CODE_27B7F6           
CODE_27B7AF:        A5 00         LDA $00                   
CODE_27B7B1:        AC 63 05      LDY $0563                 
CODE_27B7B4:        F0 0C         BEQ CODE_27B7C2           
CODE_27B7B6:        C9 37         CMP #$37                  
CODE_27B7B8:        F0 23         BEQ CODE_27B7DD           
CODE_27B7BA:        C9 AB         CMP #$AB                  
CODE_27B7BC:        F0 1F         BEQ CODE_27B7DD           
CODE_27B7BE:        C9 F9         CMP #$F9                  
CODE_27B7C0:        F0 1B         BEQ CODE_27B7DD           
CODE_27B7C2:        FE EB 1C      INC $1CEB,x               
CODE_27B7C5:        BD EB 1C      LDA $1CEB,x               
CODE_27B7C8:        C9 02         CMP #$02                  
CODE_27B7CA:        D0 03         BNE CODE_27B7CF           
CODE_27B7CC:        4C 84 B8      JMP CODE_27B884           

CODE_27B7CF:        BD E3 1C      LDA $1CE3,x               
CODE_27B7D2:        38            SEC                       
CODE_27B7D3:        E9 02         SBC #$02                  
CODE_27B7D5:        9D E3 1C      STA $1CE3,x               
CODE_27B7D8:        B0 03         BCS CODE_27B7DD                   
CODE_27B7DA:        DE FA 05      DEC $05FA,x               
CODE_27B7DD:        A9 FD         LDA #$FD                  
CODE_27B7DF:        9D E7 1C      STA $1CE7,x               
CODE_27B7E2:        A9 03         LDA #$03                  
CODE_27B7E4:        9D ED 1C      STA $1CED,x               
CODE_27B7E7:        60            RTS                       

CODE_27B7E8:        AD 63 05      LDA $0563                 
CODE_27B7EB:        D0 3A         BNE CODE_27B827           
CODE_27B7ED:        A5 05         LDA $05                   
CODE_27B7EF:        29 0F         AND #$0F                  
CODE_27B7F1:        C9 05         CMP #$05                  
CODE_27B7F3:        90 E8         BCC CODE_27B7DD           
CODE_27B7F5:        60            RTS                       

CODE_27B7F6:        8D 64 05      STA $0564                 
CODE_27B7F9:        22 44 95 27   JSL CODE_279544           
CODE_27B7FD:        A9 01         LDA #$01                  
CODE_27B7FF:        8D 9C 1F      STA $1F9C                 
CODE_27B802:        A5 02         LDA $02                   
CODE_27B804:        8D 2B 05      STA $052B                 
CODE_27B807:        ED 43 05      SBC $0543                 
CODE_27B80A:        8D 9F 1F      STA $1F9F                 
CODE_27B80D:        A5 03         LDA $03                   
CODE_27B80F:        8D 2A 05      STA $052A                 
CODE_27B812:        A5 04         LDA $04                   
CODE_27B814:        29 F0         AND #$F0                  
CODE_27B816:        8D 29 05      STA $0529                 
CODE_27B819:        ED 10 02      SBC $0210                 
CODE_27B81C:        8D A2 1F      STA $1FA2                 
CODE_27B81F:        A5 06         LDA $06                   
CODE_27B821:        8D 28 05      STA $0528                 
CODE_27B824:        4C A8 B6      JMP CODE_27B6A8           

CODE_27B827:        A5 05         LDA $05                   
CODE_27B829:        29 0F         AND #$0F                  
CODE_27B82B:        85 05         STA $05                   
CODE_27B82D:        A5 04         LDA $04                   
CODE_27B82F:        29 0F         AND #$0F                  
CODE_27B831:        85 04         STA $04                   
CODE_27B833:        A4 01         LDY $01                   
CODE_27B835:        98            TYA                       
CODE_27B836:        0A            ASL A                     
CODE_27B837:        AA            TAX                       
CODE_27B838:        BD D0 AA      LDA.w DATA_21AAD0,x               
CODE_27B83B:        85 02         STA $02                   
CODE_27B83D:        BD D1 AA      LDA.w DATA_21AAD0+1,x               
CODE_27B840:        85 03         STA $03                   
CODE_27B842:        A4 01         LDY $01                   
CODE_27B844:        A6 9B         LDX $9B                   
CODE_27B846:        A5 00         LDA $00                   
CODE_27B848:        38            SEC                       
CODE_27B849:        F9 96 1E      SBC $1E96,y               
CODE_27B84C:        A8            TAY                       
CODE_27B84D:        B1 02         LDA ($02),y               
CODE_27B84F:        A8            TAY                       
CODE_27B850:        B9 70 AD      LDA.w DATA_21AD70,y               
CODE_27B853:        C9 80         CMP #$80                  
CODE_27B855:        F0 2D         BEQ CODE_27B884           
CODE_27B857:        85 06         STA $06                   
CODE_27B859:        98            TYA                       
CODE_27B85A:        0A            ASL A                     
CODE_27B85B:        0A            ASL A                     
CODE_27B85C:        0A            ASL A                     
CODE_27B85D:        0A            ASL A                     
CODE_27B85E:        18            CLC                       
CODE_27B85F:        65 04         ADC $04                   
CODE_27B861:        A8            TAY                       
CODE_27B862:        B9 0B AC      LDA.w DATA_21AC0B,y               
CODE_27B865:        29 0F         AND #$0F                  
CODE_27B867:        85 01         STA $01                   
CODE_27B869:        A5 05         LDA $05                   
CODE_27B86B:        C9 0C         CMP #$0C                  
CODE_27B86D:        B0 04         BCS CODE_27B873                   
CODE_27B86F:        C5 01         CMP $01                   
CODE_27B871:        90 1C         BCC CODE_27B88F           
CODE_27B873:        A5 06         LDA $06                   
CODE_27B875:        F0 15         BEQ CODE_27B88C           
CODE_27B877:        A0 FB         LDY #$FB                  
CODE_27B879:        5D E9 1C      EOR $1CE9,x               
CODE_27B87C:        30 02         BMI CODE_27B880           
CODE_27B87E:        A0 FE         LDY #$FE                  
CODE_27B880:        98            TYA                       
CODE_27B881:        4C DF B7      JMP CODE_27B7DF           

CODE_27B884:        A9 01         LDA #$01                  
CODE_27B886:        8D 00 12      STA $1200                 
CODE_27B889:        4C A8 B6      JMP CODE_27B6A8           

CODE_27B88C:        4C DD B7      JMP CODE_27B7DD           

CODE_27B88F:        60            RTS                       

CODE_27B890:        A0 04         LDY #$04                  
CODE_27B892:        B9 51 06      LDA $0651,y               
CODE_27B895:        19 81 06      ORA $0681,y               
CODE_27B898:        D0 17         BNE CODE_27B8B1           
CODE_27B89A:        BE 61 06      LDX $0661,y               
CODE_27B89D:        BD 33 B0      LDA.w DATA_21B033,x               
CODE_27B8A0:        D0 0F         BNE CODE_27B8B1           
CODE_27B8A2:        BE 71 06      LDX $0671,y               
CODE_27B8A5:        BD 78 AE      LDA.w DATA_21AE78,x               
CODE_27B8A8:        85 00         STA $00                   
CODE_27B8AA:        29 20         AND #$20                  
CODE_27B8AC:        D0 03         BNE CODE_27B8B1           
CODE_27B8AE:        20 B9 B8      JSR CODE_27B8B9           
CODE_27B8B1:        88            DEY                       
CODE_27B8B2:        10 DE         BPL CODE_27B892           
CODE_27B8B4:        A6 9B         LDX $9B                   
CODE_27B8B6:        E2 20         SEP #$20                  
CODE_27B8B8:        60            RTS                       

CODE_27B8B9:        A5 00         LDA $00                   
CODE_27B8BB:        29 0F         AND #$0F                  
CODE_27B8BD:        AA            TAX                       
CODE_27B8BE:        86 01         STX $01                   
CODE_27B8C0:        BD FD C6      LDA.w DATA_21C6FD,x               
CODE_27B8C3:        85 DA         STA $DA                   
CODE_27B8C5:        64 DB         STZ $DB                   
CODE_27B8C7:        BD 0D C7      LDA.w DATA_21C70D,x               
CODE_27B8CA:        85 DC         STA $DC                   
CODE_27B8CC:        64 DD         STZ $DD                   
CODE_27B8CE:        A6 9B         LDX $9B                   
CODE_27B8D0:        B9 71 00      LDA $0071,y               
CODE_27B8D3:        85 D8         STA $D8                   
CODE_27B8D5:        B9 56 00      LDA $0056,y               
CODE_27B8D8:        85 D9         STA $D9                   
CODE_27B8DA:        BD FA 05      LDA $05FA,x               
CODE_27B8DD:        EB            XBA                       
CODE_27B8DE:        BD E3 1C      LDA $1CE3,x               
CODE_27B8E1:        C2 20         REP #$20                  
CODE_27B8E3:        18            CLC                       
CODE_27B8E4:        69 0E 00      ADC #$000E                
CODE_27B8E7:        38            SEC                       
CODE_27B8E8:        E5 D8         SBC $D8                   
CODE_27B8EA:        C5 DA         CMP $DA                   
CODE_27B8EC:        B0 C8         BCS CODE_27B8B6                   
CODE_27B8EE:        E2 20         SEP #$20                  
CODE_27B8F0:        B9 5F 00      LDA $005F,y               
CODE_27B8F3:        85 D8         STA $D8                   
CODE_27B8F5:        B9 44 00      LDA $0044,y               
CODE_27B8F8:        85 D9         STA $D9                   
CODE_27B8FA:        BD 47 02      LDA $0247,x               
CODE_27B8FD:        EB            XBA                       
CODE_27B8FE:        BD E5 1C      LDA $1CE5,x               
CODE_27B901:        C2 20         REP #$20                  
CODE_27B903:        18            CLC                       
CODE_27B904:        69 08 00      ADC #$0008                
CODE_27B907:        38            SEC                       
CODE_27B908:        E5 D8         SBC $D8                   
CODE_27B90A:        C5 DC         CMP $DC                   
CODE_27B90C:        B0 A8         BCS CODE_27B8B6
CODE_27B90E:        E2 20         SEP #$20                  
CODE_27B910:        BD E1 1C      LDA $1CE1,x               
CODE_27B913:        C9 02         CMP #$02                  
CODE_27B915:        F0 05         BEQ CODE_27B91C           
CODE_27B917:        20 A8 B6      JSR CODE_27B6A8           
CODE_27B91A:        80 06         BRA CODE_27B922           

CODE_27B91C:        A5 00         LDA $00                   
CODE_27B91E:        30 3A         BMI CODE_27B95A           
CODE_27B920:        10 06         BPL CODE_27B928           
CODE_27B922:        A5 00         LDA $00                   
CODE_27B924:        29 40         AND #$40                  
CODE_27B926:        D0 33         BNE CODE_27B95B           
CODE_27B928:        A9 03         LDA #$03                  
CODE_27B92A:        8D 00 12      STA $1200                 
CODE_27B92D:        B9 F6 1C      LDA $1CF6,y               
CODE_27B930:        F0 07         BEQ CODE_27B939           
CODE_27B932:        38            SEC                       
CODE_27B933:        E9 01         SBC #$01                  
CODE_27B935:        99 F6 1C      STA $1CF6,y               
CODE_27B938:        60            RTS                       

CODE_27B939:        A9 CC         LDA #$CC                  
CODE_27B93B:        99 9E 00      STA $009E,y               
CODE_27B93E:        BD E9 1C      LDA $1CE9,x               
CODE_27B941:        0A            ASL A                     
CODE_27B942:        A9 0C         LDA #$0C                  
CODE_27B944:        90 02         BCC CODE_27B948           
CODE_27B946:        A9 F4         LDA #$F4                  
CODE_27B948:        99 8C 00      STA $008C,y               
CODE_27B94B:        98            TYA                       
CODE_27B94C:        AA            TAX                       
CODE_27B94D:        A9 05         LDA #$05                  
CODE_27B94F:        22 94 8A 27   JSL CODE_278A94           
CODE_27B953:        A6 9B         LDX $9B                   
CODE_27B955:        A9 06         LDA #$06                  
CODE_27B957:        99 61 06      STA $0661,y               
CODE_27B95A:        60            RTS                       

CODE_27B95B:        4C 84 B8      JMP CODE_27B884           

CODE_27B95E:        A4 9C         LDY $9C                   
CODE_27B960:        D0 12         BNE CODE_27B974           
CODE_27B962:        FE E1 1C      INC $1CE1,x               
CODE_27B965:        BD E1 1C      LDA $1CE1,x               
CODE_27B968:        C9 10         CMP #$10                  
CODE_27B96A:        D0 08         BNE CODE_27B974           
CODE_27B96C:        E2 30         SEP #$30                  
CODE_27B96E:        A9 00         LDA #$00                  
CODE_27B970:        9D E1 1C      STA $1CE1,x               
CODE_27B973:        60            RTS                       

CODE_27B974:        22 9D A1 27   JSL CODE_27A19D           
CODE_27B978:        BD 47 02      LDA $0247,x               
CODE_27B97B:        EB            XBA                       
CODE_27B97C:        BD E5 1C      LDA $1CE5,x               
CODE_27B97F:        C2 30         REP #$30                  
CODE_27B981:        E9 04 00      SBC #$0004                
CODE_27B984:        38            SEC                       
CODE_27B985:        ED 10 02      SBC $0210                 
CODE_27B988:        85 D8         STA $D8                   
CODE_27B98A:        18            CLC                       
CODE_27B98B:        69 08 00      ADC #$0008                
CODE_27B98E:        85 DA         STA $DA                   
CODE_27B990:        E2 20         SEP #$20                  
CODE_27B992:        B4 C6         LDY $C6,x                 
CODE_27B994:        A5 D8         LDA $D8                   
CODE_27B996:        99 00 08      STA $0800,y               
CODE_27B999:        99 08 08      STA $0808,y               
CODE_27B99C:        A5 DA         LDA $DA                   
CODE_27B99E:        99 04 08      STA $0804,y               
CODE_27B9A1:        99 0C 08      STA $080C,y               
CODE_27B9A4:        BD FA 05      LDA $05FA,x               
CODE_27B9A7:        EB            XBA                       
CODE_27B9A8:        BD E3 1C      LDA $1CE3,x               
CODE_27B9AB:        C2 20         REP #$20                  
CODE_27B9AD:        38            SEC                       
CODE_27B9AE:        ED 16 02      SBC $0216                 
CODE_27B9B1:        C9 D0 00      CMP #$00D0                
CODE_27B9B4:        B0 B6         BCS CODE_27B96C                   
CODE_27B9B6:        E2 20         SEP #$20                  
CODE_27B9B8:        99 01 08      STA $0801,y               
CODE_27B9BB:        99 05 08      STA $0805,y               
CODE_27B9BE:        18            CLC                       
CODE_27B9BF:        69 08         ADC #$08                  
CODE_27B9C1:        99 09 08      STA $0809,y               
CODE_27B9C4:        99 0D 08      STA $080D,y               
CODE_27B9C7:        C2 20         REP #$20                  
CODE_27B9C9:        BD E1 1C      LDA $1CE1,x               
CODE_27B9CC:        29 FF 00      AND #$00FF                
CODE_27B9CF:        4A            LSR A                     
CODE_27B9D0:        4A            LSR A                     
CODE_27B9D1:        AA            TAX                       
CODE_27B9D2:        E2 20         SEP #$20                  
CODE_27B9D4:        BD 1D C7      LDA.w DATA_21C71D,x               
CODE_27B9D7:        99 02 08      STA $0802,y               
CODE_27B9DA:        99 0E 08      STA $080E,y               
CODE_27B9DD:        1A            INC A                     
CODE_27B9DE:        99 0A 08      STA $080A,y               
CODE_27B9E1:        99 06 08      STA $0806,y               
CODE_27B9E4:        A9 22         LDA #$22                  
CODE_27B9E6:        85 DC         STA $DC                   
CODE_27B9E8:        AD 88 05      LDA $0588                 
CODE_27B9EB:        F0 04         BEQ CODE_27B9F1           
CODE_27B9ED:        A9 12         LDA #$12                  
CODE_27B9EF:        85 DC         STA $DC                   
CODE_27B9F1:        A5 DC         LDA $DC                   
CODE_27B9F3:        99 03 08      STA $0803,y               
CODE_27B9F6:        99 0B 08      STA $080B,y               
CODE_27B9F9:        09 C0         ORA #$C0                  
CODE_27B9FB:        99 07 08      STA $0807,y               
CODE_27B9FE:        99 0F 08      STA $080F,y               
CODE_27BA01:        C2 20         REP #$20                  
CODE_27BA03:        98            TYA                       
CODE_27BA04:        4A            LSR A                     
CODE_27BA05:        4A            LSR A                     
CODE_27BA06:        A8            TAY                       
CODE_27BA07:        E2 20         SEP #$20                  
CODE_27BA09:        A5 D9         LDA $D9                   
CODE_27BA0B:        29 01         AND #$01                  
CODE_27BA0D:        99 20 0A      STA $0A20,y               
CODE_27BA10:        99 22 0A      STA $0A22,y               
CODE_27BA13:        A5 DB         LDA $DB                   
CODE_27BA15:        29 01         AND #$01                  
CODE_27BA17:        99 21 0A      STA $0A21,y               
CODE_27BA1A:        99 23 0A      STA $0A23,y               
CODE_27BA1D:        E2 10         SEP #$10                  
CODE_27BA1F:        A6 9B         LDX $9B                   
CODE_27BA21:        60            RTS                       

CODE_27BA22:        AC 6E 05      LDY $056E                 
CODE_27BA25:        C8            INY                       
CODE_27BA26:        D0 03         BNE CODE_27BA2B           
CODE_27BA28:        8C F4 05      STY $05F4                 
CODE_27BA2B:        A4 9C         LDY $9C                   
CODE_27BA2D:        D0 F2         BNE CODE_27BA21           
CODE_27BA2F:        AD 75 05      LDA $0575                 
CODE_27BA32:        F0 ED         BEQ CODE_27BA21           
CODE_27BA34:        8C F4 05      STY $05F4                 
CODE_27BA37:        C9 01         CMP #$01                  
CODE_27BA39:        D0 03         BNE CODE_27BA3E           
CODE_27BA3B:        82 A9 00      BRL CODE_27BAE7           

CODE_27BA3E:        A5 9D         LDA $9D                   
CODE_27BA40:        C9 3C         CMP #$3C                  
CODE_27BA42:        10 09         BPL CODE_27BA4D           
CODE_27BA44:        E6 9D         INC $9D                   
CODE_27BA46:        A5 15         LDA $15                   
CODE_27BA48:        4A            LSR A                     
CODE_27BA49:        90 02         BCC CODE_27BA4D           
CODE_27BA4B:        E6 9D         INC $9D                   
CODE_27BA4D:        A2 00         LDX #$00                  
CODE_27BA4F:        22 9D A1 27   JSL CODE_27A19D           
CODE_27BA53:        F0 CC         BEQ CODE_27BA21           
CODE_27BA55:        AD 83 05      LDA $0583                 
CODE_27BA58:        D0 C7         BNE CODE_27BA21           
CODE_27BA5A:        C2 10         REP #$10                  
CODE_27BA5C:        B4 C6         LDY $C6,x                 
CODE_27BA5E:        A9 46         LDA #$46                  
CODE_27BA60:        99 02 08      STA $0802,y               
CODE_27BA63:        99 06 08      STA $0806,y               
CODE_27BA66:        1A            INC A                     
CODE_27BA67:        99 0A 08      STA $080A,y               
CODE_27BA6A:        99 0E 08      STA $080E,y               
CODE_27BA6D:        E2 10         SEP #$10                  
CODE_27BA6F:        A5 15         LDA $15                   
CODE_27BA71:        4A            LSR A                     
CODE_27BA72:        29 03         AND #$03                  
CODE_27BA74:        18            CLC                       
CODE_27BA75:        69 05         ADC #$05                  
CODE_27BA77:        AE 6F 05      LDX $056F                 
CODE_27BA7A:        D0 05         BNE CODE_27BA81           
CODE_27BA7C:        AE BB 00      LDX $00BB                 
CODE_27BA7F:        D0 03         BNE CODE_27BA84           
CODE_27BA81:        18            CLC                       
CODE_27BA82:        69 0A         ADC #$0A                  
CODE_27BA84:        85 00         STA $00                   
CODE_27BA86:        A6 9B         LDX $9B                   
CODE_27BA88:        C2 10         REP #$10                  
CODE_27BA8A:        B4 C6         LDY $C6,x                 
CODE_27BA8C:        A5 82         LDA $82                   
CODE_27BA8E:        18            CLC                       
CODE_27BA8F:        65 00         ADC $00                   
CODE_27BA91:        38            SEC                       
CODE_27BA92:        E9 0A         SBC #$0A                  
CODE_27BA94:        99 01 08      STA $0801,y               
CODE_27BA97:        99 05 08      STA $0805,y               
CODE_27BA9A:        18            CLC                       
CODE_27BA9B:        69 08         ADC #$08                  
CODE_27BA9D:        99 09 08      STA $0809,y               
CODE_27BAA0:        99 0D 08      STA $080D,y               
CODE_27BAA3:        A5 79         LDA $79                   
CODE_27BAA5:        99 00 08      STA $0800,y               
CODE_27BAA8:        99 04 08      STA $0804,y               
CODE_27BAAB:        18            CLC                       
CODE_27BAAC:        69 08         ADC #$08                  
CODE_27BAAE:        99 08 08      STA $0808,y               
CODE_27BAB1:        99 0C 08      STA $080C,y               
CODE_27BAB4:        C2 20         REP #$20                  
CODE_27BAB6:        98            TYA                       
CODE_27BAB7:        4A            LSR A                     
CODE_27BAB8:        4A            LSR A                     
CODE_27BAB9:        A8            TAY                       
CODE_27BABA:        E2 20         SEP #$20                  
CODE_27BABC:        A9 00         LDA #$00                  
CODE_27BABE:        99 20 0A      STA $0A20,y               
CODE_27BAC1:        99 21 0A      STA $0A21,y               
CODE_27BAC4:        99 22 0A      STA $0A22,y               
CODE_27BAC7:        99 23 0A      STA $0A23,y               
CODE_27BACA:        E2 10         SEP #$10                  
CODE_27BACC:        A9 80         LDA #$80                  
CODE_27BACE:        85 DC         STA $DC                   
CODE_27BAD0:        A5 79         LDA $79                   
CODE_27BAD2:        85 D8         STA $D8                   
CODE_27BAD4:        64 D9         STZ $D9                   
CODE_27BAD6:        A5 79         LDA $79                   
CODE_27BAD8:        85 DA         STA $DA                   
CODE_27BADA:        64 DB         STZ $DB                   
CODE_27BADC:        A5 15         LDA $15                   
CODE_27BADE:        29 03         AND #$03                  
CODE_27BAE0:        38            SEC                       
CODE_27BAE1:        E9 02         SBC #$02                  
CODE_27BAE3:        20 00 BE      JSR CODE_27BE00           
CODE_27BAE6:        60            RTS                       

CODE_27BAE7:        A0 7F         LDY #$7F                  
CODE_27BAE9:        A5 17         LDA $17                   
CODE_27BAEB:        29 83         AND #$83                  
CODE_27BAED:        F0 02         BEQ CODE_27BAF1           
CODE_27BAEF:        A0 3F         LDY #$3F                  
CODE_27BAF1:        98            TYA                       
CODE_27BAF2:        25 15         AND $15                   
CODE_27BAF4:        D0 0C         BNE CODE_27BB02           
CODE_27BAF6:        A2 02         LDX #$02                  
CODE_27BAF8:        86 9B         STX $9B                   
CODE_27BAFA:        BD 7C 1F      LDA $1F7C,x               
CODE_27BAFD:        F0 04         BEQ CODE_27BB03           
CODE_27BAFF:        CA            DEX                       
CODE_27BB00:        10 F6         BPL CODE_27BAF8           
CODE_27BB02:        60            RTS                       

CODE_27BB03:        AD 83 07      LDA $0783                 
CODE_27BB06:        09 10         ORA #$10                  
CODE_27BB08:        9D 7C 1F      STA $1F7C,x               
CODE_27BB0B:        A0 00         LDY #$00                  
CODE_27BB0D:        A5 BC         LDA $BC                   
CODE_27BB0F:        C9 12         CMP #$12                  
CODE_27BB11:        90 18         BCC CODE_27BB2B           
CODE_27BB13:        A0 03         LDY #$03                  
CODE_27BB15:        C9 15         CMP #$15                  
CODE_27BB17:        90 12         BCC CODE_27BB2B           
CODE_27BB19:        A0 00         LDY #$00                  
CODE_27BB1B:        C9 1F         CMP #$1F                  
CODE_27BB1D:        90 0C         BCC CODE_27BB2B           
CODE_27BB1F:        C8            INY                       
CODE_27BB20:        C9 23         CMP #$23                  
CODE_27BB22:        90 07         BCC CODE_27BB2B           
CODE_27BB24:        C8            INY                       
CODE_27BB25:        C9 27         CMP #$27                  
CODE_27BB27:        90 02         BCC CODE_27BB2B           
CODE_27BB29:        A0 00         LDY #$00                  
CODE_27BB2B:        98            TYA                       
CODE_27BB2C:        0A            ASL A                     
CODE_27BB2D:        A8            TAY                       
CODE_27BB2E:        24 BD         BIT $BD                   
CODE_27BB30:        50 01         BVC CODE_27BB33                   
CODE_27BB32:        C8            INY                       
CODE_27BB33:        A9 00         LDA #$00                  
CODE_27BB35:        A6 BB         LDX $BB                   
CODE_27BB37:        D0 02         BNE CODE_27BB3B           
CODE_27BB39:        A9 08         LDA #$08                  
CODE_27BB3B:        A6 9B         LDX $9B                   
CODE_27BB3D:        18            CLC                       
CODE_27BB3E:        65 70         ADC $70                   
CODE_27BB40:        79 21 C7      ADC.w DATA_21C721,y               
CODE_27BB43:        9D 84 1F      STA $1F84,x               
CODE_27BB46:        A5 55         LDA $55                   
CODE_27BB48:        69 00         ADC #$00                  
CODE_27BB4A:        9D 80 1F      STA $1F80,x               
CODE_27BB4D:        A5 5E         LDA $5E                   
CODE_27BB4F:        18            CLC                       
CODE_27BB50:        79 29 C7      ADC.w DATA_21C729,y               
CODE_27BB53:        9D 8C 1F      STA $1F8C,x               
CODE_27BB56:        A5 43         LDA $43                   
CODE_27BB58:        69 00         ADC #$00                  
CODE_27BB5A:        9D 88 1F      STA $1F88,x               
CODE_27BB5D:        60            RTS                       

CODE_27BB5E:        A2 03         LDX #$03                  
CODE_27BB60:        86 9B         STX $9B                   
CODE_27BB62:        BD 7C 1F      LDA $1F7C,x               
CODE_27BB65:        F0 03         BEQ CODE_27BB6A           
CODE_27BB67:        20 6E BB      JSR CODE_27BB6E           
CODE_27BB6A:        CA            DEX                       
CODE_27BB6B:        10 F3         BPL CODE_27BB60           
CODE_27BB6D:        60            RTS                       

CODE_27BB6E:        A5 9C         LDA $9C                   
CODE_27BB70:        F0 03         BEQ CODE_27BB75           
CODE_27BB72:        4C 90 BB      JMP CODE_27BB90           

CODE_27BB75:        FE 7C 1F      INC $1F7C,x               
CODE_27BB78:        BD 7C 1F      LDA $1F7C,x               
CODE_27BB7B:        09 80         ORA #$80                  
CODE_27BB7D:        9D 7C 1F      STA $1F7C,x               
CODE_27BB80:        29 30         AND #$30                  
CODE_27BB82:        F0 0C         BEQ CODE_27BB90           
CODE_27BB84:        DE 84 1F      DEC $1F84,x               
CODE_27BB87:        BC 84 1F      LDY $1F84,x               
CODE_27BB8A:        C8            INY                       
CODE_27BB8B:        D0 03         BNE CODE_27BB90           
CODE_27BB8D:        DE 80 1F      DEC $1F80,x               
CODE_27BB90:        AD 25 04      LDA $0425                 
CODE_27BB93:        F0 20         BEQ CODE_27BBB5           
CODE_27BB95:        BD 84 1F      LDA $1F84,x               
CODE_27BB98:        18            CLC                       
CODE_27BB99:        69 0A         ADC #$0A                  
CODE_27BB9B:        29 F0         AND #$F0                  
CODE_27BB9D:        85 02         STA $02                   
CODE_27BB9F:        BD 80 1F      LDA $1F80,x               
CODE_27BBA2:        69 60         ADC #$60                  
CODE_27BBA4:        85 01         STA $01                   
CODE_27BBA6:        BD 8C 1F      LDA $1F8C,x               
CODE_27BBA9:        4A            LSR A                     
CODE_27BBAA:        4A            LSR A                     
CODE_27BBAB:        4A            LSR A                     
CODE_27BBAC:        4A            LSR A                     
CODE_27BBAD:        05 02         ORA $02                   
CODE_27BBAF:        85 00         STA $00                   
CODE_27BBB1:        A0 00         LDY #$00                  
CODE_27BBB3:        F0 40         BEQ CODE_27BBF5           
CODE_27BBB5:        BD 84 1F      LDA $1F84,x               
CODE_27BBB8:        18            CLC                       
CODE_27BBB9:        69 02         ADC #$02                  
CODE_27BBBB:        29 F0         AND #$F0                  
CODE_27BBBD:        85 02         STA $02                   
CODE_27BBBF:        BD 80 1F      LDA $1F80,x               
CODE_27BBC2:        69 00         ADC #$00                  
CODE_27BBC4:        48            PHA                       
CODE_27BBC5:        BD 8C 1F      LDA $1F8C,x               
CODE_27BBC8:        85 04         STA $04                   
CODE_27BBCA:        68            PLA                       
CODE_27BBCB:        85 01         STA $01                   
CODE_27BBCD:        DA            PHX                       
CODE_27BBCE:        BD 88 1F      LDA $1F88,x               
CODE_27BBD1:        0A            ASL A                     
CODE_27BBD2:        AA            TAX                       
CODE_27BBD3:        BF 00 82 21   LDA.l DATA_218200,x             
CODE_27BBD7:        85 00         STA $00                   
CODE_27BBD9:        85 D8         STA $D8                   
CODE_27BBDB:        A5 01         LDA $01                   
CODE_27BBDD:        29 01         AND #$01                  
CODE_27BBDF:        18            CLC                       
CODE_27BBE0:        7F 01 82 21   ADC.l DATA_218200+1,x             
CODE_27BBE4:        85 01         STA $01                   
CODE_27BBE6:        18            CLC                       
CODE_27BBE7:        69 20         ADC #$20                  
CODE_27BBE9:        85 D9         STA $D9                   
CODE_27BBEB:        FA            PLX                       
CODE_27BBEC:        A5 04         LDA $04                   
CODE_27BBEE:        4A            LSR A                     
CODE_27BBEF:        4A            LSR A                     
CODE_27BBF0:        4A            LSR A                     
CODE_27BBF1:        4A            LSR A                     
CODE_27BBF2:        05 02         ORA $02                   
CODE_27BBF4:        A8            TAY                       
CODE_27BBF5:        A9 7E         LDA #$7E                  
CODE_27BBF7:        85 02         STA $02                   
CODE_27BBF9:        85 DA         STA $DA                   
CODE_27BBFB:        B7 D8         LDA [$D8],y               
CODE_27BBFD:        F0 18         BEQ CODE_27BC17           
CODE_27BBFF:        DA            PHX                       
CODE_27BC00:        AD 0A 07      LDA $070A                 
CODE_27BC03:        0A            ASL A                     
CODE_27BC04:        AA            TAX                       
CODE_27BC05:        BD 57 AB      LDA.w DATA_21AB57,x               
CODE_27BC08:        85 D8         STA $D8                   
CODE_27BC0A:        BD 58 AB      LDA.w DATA_21AB57+1,x               
CODE_27BC0D:        85 D9         STA $D9                   
CODE_27BC0F:        B7 00         LDA [$00],y               
CODE_27BC11:        A8            TAY                       
CODE_27BC12:        B1 D8         LDA ($D8),y               
CODE_27BC14:        FA            PLX                       
CODE_27BC15:        80 02         BRA CODE_27BC19           

CODE_27BC17:        B7 00         LDA [$00],y               
CODE_27BC19:        48            PHA                       
CODE_27BC1A:        0A            ASL A                     
CODE_27BC1B:        2A            ROL A                     
CODE_27BC1C:        2A            ROL A                     
CODE_27BC1D:        29 03         AND #$03                  
CODE_27BC1F:        85 00         STA $00                   
CODE_27BC21:        68            PLA                       
CODE_27BC22:        85 01         STA $01                   
CODE_27BC24:        A4 00         LDY $00                   
CODE_27BC26:        D9 96 1E      CMP $1E96,y               
CODE_27BC29:        B0 1A         BCS CODE_27BC45                   
CODE_27BC2B:        AD 60 05      LDA $0560                 
CODE_27BC2E:        0A            ASL A                     
CODE_27BC2F:        0A            ASL A                     
CODE_27BC30:        18            CLC                       
CODE_27BC31:        65 00         ADC $00                   
CODE_27BC33:        A8            TAY                       
CODE_27BC34:        A5 01         LDA $01                   
CODE_27BC36:        C9 E0         CMP #$E0                  
CODE_27BC38:        F0 0B         BEQ CODE_27BC45           
CODE_27BC3A:        C9 E1         CMP #$E1                  
CODE_27BC3C:        F0 07         BEQ CODE_27BC45           
CODE_27BC3E:        B9 84 AD      LDA.w DATA_21AD84,y               
CODE_27BC41:        C5 01         CMP $01                   
CODE_27BC43:        90 08         BCC CODE_27BC4D           
CODE_27BC45:        E2 20         SEP #$20                  
CODE_27BC47:        A9 00         LDA #$00                  
CODE_27BC49:        9D 7C 1F      STA $1F7C,x               
CODE_27BC4C:        60            RTS                       

CODE_27BC4D:        64 01         STZ $01                   
CODE_27BC4F:        AD 65 05      LDA $0565                 
CODE_27BC52:        29 0C         AND #$0C                  
CODE_27BC54:        4A            LSR A                     
CODE_27BC55:        4A            LSR A                     
CODE_27BC56:        A8            TAY                       
CODE_27BC57:        B9 31 C7      LDA.w DATA_21C731,y               
CODE_27BC5A:        85 00         STA $00                   
CODE_27BC5C:        C9 80         CMP #$80                  
CODE_27BC5E:        90 02         BCC CODE_27BC62           
CODE_27BC60:        C6 01         DEC $01                   
CODE_27BC62:        A5 15         LDA $15                   
CODE_27BC64:        29 03         AND #$03                  
CODE_27BC66:        65 9B         ADC $9B                   
CODE_27BC68:        A8            TAY                       
CODE_27BC69:        B9 35 C7      LDA.w DATA_21C735,y               
CODE_27BC6C:        30 68         BMI CODE_27BCD6           
CODE_27BC6E:        A8            TAY                       
CODE_27BC6F:        B9 01 08      LDA $0801,y               
CODE_27BC72:        C9 F0         CMP #$F0                  
CODE_27BC74:        D0 60         BNE CODE_27BCD6           
CODE_27BC76:        AD 43 05      LDA $0543                 
CODE_27BC79:        85 D8         STA $D8                   
CODE_27BC7B:        AD 42 05      LDA $0542                 
CODE_27BC7E:        85 D9         STA $D9                   
CODE_27BC80:        BD 80 1F      LDA $1F80,x               
CODE_27BC83:        EB            XBA                       
CODE_27BC84:        BD 84 1F      LDA $1F84,x               
CODE_27BC87:        C2 20         REP #$20                  
CODE_27BC89:        38            SEC                       
CODE_27BC8A:        E5 D8         SBC $D8                   
CODE_27BC8C:        C9 C8 00      CMP #$00C8                
CODE_27BC8F:        B0 B4         BCS CODE_27BC45                   
CODE_27BC91:        E2 20         SEP #$20                  
CODE_27BC93:        99 01 08      STA $0801,y               
CODE_27BC96:        99 05 08      STA $0805,y               
CODE_27BC99:        BD 88 1F      LDA $1F88,x               
CODE_27BC9C:        EB            XBA                       
CODE_27BC9D:        BD 8C 1F      LDA $1F8C,x               
CODE_27BCA0:        C2 20         REP #$20                  
CODE_27BCA2:        18            CLC                       
CODE_27BCA3:        65 00         ADC $00                   
CODE_27BCA5:        38            SEC                       
CODE_27BCA6:        ED 10 02      SBC $0210                 
CODE_27BCA9:        85 D8         STA $D8                   
CODE_27BCAB:        E2 20         SEP #$20                  
CODE_27BCAD:        C9 F8         CMP #$F8                  
CODE_27BCAF:        B0 94         BCS CODE_27BC45                   
CODE_27BCB1:        99 00 08      STA $0800,y               
CODE_27BCB4:        99 04 08      STA $0804,y               
CODE_27BCB7:        A9 C6         LDA #$C6                  
CODE_27BCB9:        99 02 08      STA $0802,y               
CODE_27BCBC:        1A            INC A                     
CODE_27BCBD:        99 06 08      STA $0806,y               
CODE_27BCC0:        A9 23         LDA #$23                  
CODE_27BCC2:        99 03 08      STA $0803,y               
CODE_27BCC5:        99 07 08      STA $0807,y               
CODE_27BCC8:        98            TYA                       
CODE_27BCC9:        4A            LSR A                     
CODE_27BCCA:        4A            LSR A                     
CODE_27BCCB:        A8            TAY                       
CODE_27BCCC:        A5 D9         LDA $D9                   
CODE_27BCCE:        29 01         AND #$01                  
CODE_27BCD0:        99 20 0A      STA $0A20,y               
CODE_27BCD3:        99 21 0A      STA $0A21,y               
CODE_27BCD6:        60            RTS                       

CODE_27BCD7:        A2 02         LDX #$02                  
CODE_27BCD9:        86 9B         STX $9B                   
CODE_27BCDB:        BD 90 1F      LDA $1F90,x               
CODE_27BCDE:        F0 1E         BEQ CODE_27BCFE           
CODE_27BCE0:        A5 9C         LDA $9C                   
CODE_27BCE2:        D0 17         BNE CODE_27BCFB           
CODE_27BCE4:        FE 90 1F      INC $1F90,x               
CODE_27BCE7:        A5 15         LDA $15                   
CODE_27BCE9:        4A            LSR A                     
CODE_27BCEA:        90 03         BCC CODE_27BCEF           
CODE_27BCEC:        FE 90 1F      INC $1F90,x               
CODE_27BCEF:        BD 90 1F      LDA $1F90,x               
CODE_27BCF2:        C9 30         CMP #$30                  
CODE_27BCF4:        90 05         BCC CODE_27BCFB           
CODE_27BCF6:        20 02 BD      JSR CODE_27BD02           
CODE_27BCF9:        F0 03         BEQ CODE_27BCFE           
CODE_27BCFB:        20 0A BD      JSR CODE_27BD0A           
CODE_27BCFE:        CA            DEX                       
CODE_27BCFF:        10 D8         BPL CODE_27BCD9           
CODE_27BD01:        60            RTS                       

CODE_27BD02:        E2 30         SEP #$30                  
CODE_27BD04:        A9 00         LDA #$00                  
CODE_27BD06:        9D 90 1F      STA $1F90,x               
CODE_27BD09:        60            RTS                       

CODE_27BD0A:        AD 16 02      LDA $0216                 
CODE_27BD0D:        8D A7 02      STA $02A7                 
CODE_27BD10:        AD 17 02      LDA $0217                 
CODE_27BD13:        8D A8 02      STA $02A8                 
CODE_27BD16:        A0 01         LDY #$01                  
CODE_27BD18:        22 F1 DE 27   JSL CODE_27DEF1           
CODE_27BD1C:        B0 08         BCS CODE_27BD26                   
CODE_27BD1E:        A9 EF         LDA #$EF                  
CODE_27BD20:        8D A7 02      STA $02A7                 
CODE_27BD23:        9C A8 02      STZ $02A8                 
CODE_27BD26:        22 9D A1 27   JSL CODE_27A19D           
CODE_27BD2A:        F0 DD         BEQ CODE_27BD09           
CODE_27BD2C:        B5 EF         LDA $EF,x                 
CODE_27BD2E:        EB            XBA                       
CODE_27BD2F:        BD 96 1F      LDA $1F96,x               
CODE_27BD32:        C2 30         REP #$30                  
CODE_27BD34:        38            SEC                       
CODE_27BD35:        ED 10 02      SBC $0210                 
CODE_27BD38:        C9 F0 FF      CMP #$FFF0                
CODE_27BD3B:        B0 05         BCS CODE_27BD42                   
CODE_27BD3D:        C9 00 01      CMP #$0100                
CODE_27BD40:        B0 C0         BCS CODE_27BD02                   
CODE_27BD42:        85 D8         STA $D8                   
CODE_27BD44:        48            PHA                       
CODE_27BD45:        08            PHP                       
CODE_27BD46:        69 08 00      ADC #$0008                
CODE_27BD49:        85 DA         STA $DA                   
CODE_27BD4B:        28            PLP                       
CODE_27BD4C:        68            PLA                       
CODE_27BD4D:        E2 20         SEP #$20                  
CODE_27BD4F:        B4 C6         LDY $C6,x                 
CODE_27BD51:        99 00 08      STA $0800,y               
CODE_27BD54:        99 04 08      STA $0804,y               
CODE_27BD57:        69 08         ADC #$08                  
CODE_27BD59:        99 08 08      STA $0808,y               
CODE_27BD5C:        99 0C 08      STA $080C,y               
CODE_27BD5F:        BD 8E 05      LDA $058E,x               
CODE_27BD62:        EB            XBA                       
CODE_27BD63:        BD 93 1F      LDA $1F93,x               
CODE_27BD66:        C2 20         REP #$20                  
CODE_27BD68:        85 DC         STA $DC                   
CODE_27BD6A:        BD 99 1F      LDA $1F99,x               
CODE_27BD6D:        29 FF 00      AND #$00FF                
CODE_27BD70:        08            PHP                       
CODE_27BD71:        A5 DC         LDA $DC                   
CODE_27BD73:        28            PLP                       
CODE_27BD74:        D0 04         BNE CODE_27BD7A           
CODE_27BD76:        38            SEC                       
CODE_27BD77:        ED A7 02      SBC $02A7                 
CODE_27BD7A:        C9 AE 00      CMP #$00AE                
CODE_27BD7D:        B0 83         BCS CODE_27BD02                   
CODE_27BD7F:        E2 20         SEP #$20                  
CODE_27BD81:        99 01 08      STA $0801,y               
CODE_27BD84:        99 09 08      STA $0809,y               
CODE_27BD87:        18            CLC                       
CODE_27BD88:        69 08         ADC #$08                  
CODE_27BD8A:        99 05 08      STA $0805,y               
CODE_27BD8D:        99 0D 08      STA $080D,y               
CODE_27BD90:        C2 20         REP #$20                  
CODE_27BD92:        BD 90 1F      LDA $1F90,x               
CODE_27BD95:        29 FF 00      AND #$00FF                
CODE_27BD98:        4A            LSR A                     
CODE_27BD99:        4A            LSR A                     
CODE_27BD9A:        4A            LSR A                     
CODE_27BD9B:        AA            TAX                       
CODE_27BD9C:        E2 20         SEP #$20                  
CODE_27BD9E:        85 00         STA $00                   
CODE_27BDA0:        BD 3C C7      LDA.w DATA_21C73C,x               
CODE_27BDA3:        99 02 08      STA $0802,y               
CODE_27BDA6:        99 0A 08      STA $080A,y               
CODE_27BDA9:        1A            INC A                     
CODE_27BDAA:        99 06 08      STA $0806,y               
CODE_27BDAD:        99 0E 08      STA $080E,y               
CODE_27BDB0:        A2 00 00      LDX #$0000                
CODE_27BDB3:        29 C0         AND #$C0                  
CODE_27BDB5:        C9 C0         CMP #$C0                  
CODE_27BDB7:        D0 03         BNE CODE_27BDBC           
CODE_27BDB9:        A2 01 00      LDX #$0001                
CODE_27BDBC:        8A            TXA                       
CODE_27BDBD:        85 DC         STA $DC                   
CODE_27BDBF:        09 22         ORA #$22                  
CODE_27BDC1:        99 03 08      STA $0803,y               
CODE_27BDC4:        99 07 08      STA $0807,y               
CODE_27BDC7:        09 62         ORA #$62                  
CODE_27BDC9:        99 0B 08      STA $080B,y               
CODE_27BDCC:        99 0F 08      STA $080F,y               
CODE_27BDCF:        E2 10         SEP #$10                  
CODE_27BDD1:        A6 9B         LDX $9B                   
CODE_27BDD3:        A5 00         LDA $00                   
CODE_27BDD5:        C9 03         CMP #$03                  
CODE_27BDD7:        B0 03         BCS CODE_27BDDC                   
CODE_27BDD9:        82 82 00      BRL CODE_27BE5E           

CODE_27BDDC:        A5 15         LDA $15                   
CODE_27BDDE:        29 01         AND #$01                  
CODE_27BDE0:        05 9C         ORA $9C                   
CODE_27BDE2:        D0 11         BNE CODE_27BDF5           
CODE_27BDE4:        BD 93 1F      LDA $1F93,x               
CODE_27BDE7:        18            CLC                       
CODE_27BDE8:        69 01         ADC #$01                  
CODE_27BDEA:        9D 93 1F      STA $1F93,x               
CODE_27BDED:        BD 8E 05      LDA $058E,x               
CODE_27BDF0:        69 00         ADC #$00                  
CODE_27BDF2:        9D 8E 05      STA $058E,x               
CODE_27BDF5:        BD 90 1F      LDA $1F90,x               
CODE_27BDF8:        38            SEC                       
CODE_27BDF9:        E9 18         SBC #$18                  
CODE_27BDFB:        4A            LSR A                     
CODE_27BDFC:        4A            LSR A                     
CODE_27BDFD:        4A            LSR A                     
CODE_27BDFE:        29 03         AND #$03                  
CODE_27BE00:        85 00         STA $00                   
CODE_27BE02:        64 01         STZ $01                   
CODE_27BE04:        C2 30         REP #$30                  
CODE_27BE06:        A5 D8         LDA $D8                   
CODE_27BE08:        38            SEC                       
CODE_27BE09:        E5 00         SBC $00                   
CODE_27BE0B:        85 D8         STA $D8                   
CODE_27BE0D:        A5 DA         LDA $DA                   
CODE_27BE0F:        18            CLC                       
CODE_27BE10:        65 00         ADC $00                   
CODE_27BE12:        85 DA         STA $DA                   
CODE_27BE14:        E2 20         SEP #$20                  
CODE_27BE16:        B4 C6         LDY $C6,x                 
CODE_27BE18:        B9 00 08      LDA $0800,y               
CODE_27BE1B:        38            SEC                       
CODE_27BE1C:        E5 00         SBC $00                   
CODE_27BE1E:        99 00 08      STA $0800,y               
CODE_27BE21:        99 04 08      STA $0804,y               
CODE_27BE24:        B9 08 08      LDA $0808,y               
CODE_27BE27:        18            CLC                       
CODE_27BE28:        65 00         ADC $00                   
CODE_27BE2A:        99 08 08      STA $0808,y               
CODE_27BE2D:        99 0C 08      STA $080C,y               
CODE_27BE30:        A5 DC         LDA $DC                   
CODE_27BE32:        09 22         ORA #$22                  
CODE_27BE34:        99 0B 08      STA $080B,y               
CODE_27BE37:        99 0F 08      STA $080F,y               
CODE_27BE3A:        09 40         ORA #$40                  
CODE_27BE3C:        99 03 08      STA $0803,y               
CODE_27BE3F:        99 07 08      STA $0807,y               
CODE_27BE42:        AD 65 05      LDA $0565                 
CODE_27BE45:        29 02         AND #$02                  
CODE_27BE47:        D0 15         BNE CODE_27BE5E           
CODE_27BE49:        A5 00         LDA $00                   
CODE_27BE4B:        0A            ASL A                     
CODE_27BE4C:        05 DC         ORA $DC                   
CODE_27BE4E:        09 A0         ORA #$A0                  
CODE_27BE50:        99 03 08      STA $0803,y               
CODE_27BE53:        99 07 08      STA $0807,y               
CODE_27BE56:        09 40         ORA #$40                  
CODE_27BE58:        99 0B 08      STA $080B,y               
CODE_27BE5B:        99 0F 08      STA $080F,y               
CODE_27BE5E:        C2 30         REP #$30                  
CODE_27BE60:        B5 C6         LDA $C6,x                 
CODE_27BE62:        4A            LSR A                     
CODE_27BE63:        4A            LSR A                     
CODE_27BE64:        A8            TAY                       
CODE_27BE65:        E2 20         SEP #$20                  
CODE_27BE67:        A5 D9         LDA $D9                   
CODE_27BE69:        29 01         AND #$01                  
CODE_27BE6B:        99 20 0A      STA $0A20,y               
CODE_27BE6E:        99 21 0A      STA $0A21,y               
CODE_27BE71:        A5 DB         LDA $DB                   
CODE_27BE73:        29 01         AND #$01                  
CODE_27BE75:        99 22 0A      STA $0A22,y               
CODE_27BE78:        99 23 0A      STA $0A23,y               
CODE_27BE7B:        E2 10         SEP #$10                  
CODE_27BE7D:        60            RTS                       

CODE_27BE7E:        AD F4 05      LDA $05F4                 
CODE_27BE81:        C9 08         CMP #$08                  
CODE_27BE83:        90 05         BCC CODE_27BE8A           
CODE_27BE85:        A9 08         LDA #$08                  
CODE_27BE87:        8D F4 05      STA $05F4                 
CODE_27BE8A:        A2 04         LDX #$04                  
CODE_27BE8C:        86 9B         STX $9B                   
CODE_27BE8E:        BD 9F 07      LDA $079F,x               
CODE_27BE91:        29 7F         AND #$7F                  
CODE_27BE93:        F0 15         BEQ CODE_27BEAA           
CODE_27BE95:        C9 0D         CMP #$0D                  
CODE_27BE97:        90 0C         BCC CODE_27BEA5           
CODE_27BE99:        BD 9F 07      LDA $079F,x               
CODE_27BE9C:        29 80         AND #$80                  
CODE_27BE9E:        09 0D         ORA #$0D                  
CODE_27BEA0:        9D 9F 07      STA $079F,x               
CODE_27BEA3:        29 7F         AND #$7F                  
CODE_27BEA5:        85 00         STA $00                   
CODE_27BEA7:        20 AE BE      JSR CODE_27BEAE           
CODE_27BEAA:        CA            DEX                       
CODE_27BEAB:        10 DF         BPL CODE_27BE8C           
CODE_27BEAD:        6B            RTL                       

CODE_27BEAE:        AD 51 05      LDA $0551                 
CODE_27BEB1:        0D 55 05      ORA $0555                 
CODE_27BEB4:        0D 54 05      ORA $0554                 
CODE_27BEB7:        D0 04         BNE CODE_27BEBD           
CODE_27BEB9:        A5 9C         LDA $9C                   
CODE_27BEBB:        D0 56         BNE CODE_27BF13           
CODE_27BEBD:        BD A4 07      LDA $07A4,x               
CODE_27BEC0:        D0 06         BNE CODE_27BEC8           
CODE_27BEC2:        A9 00         LDA #$00                  
CODE_27BEC4:        9D 9F 07      STA $079F,x               
CODE_27BEC7:        60            RTS                       

CODE_27BEC8:        DE A4 07      DEC $07A4,x               
CODE_27BECB:        C9 2A         CMP #$2A                  
CODE_27BECD:        D0 2B         BNE CODE_27BEFA           
CODE_27BECF:        A4 00         LDY $00                   
CODE_27BED1:        AD 9C 06      LDA $069C                 
CODE_27BED4:        18            CLC                       
CODE_27BED5:        79 5B C7      ADC.w DATA_21C75B,y               
CODE_27BED8:        8D 9C 06      STA $069C                 
CODE_27BEDB:        AD 9D 06      LDA $069D                 
CODE_27BEDE:        79 68 C7      ADC.w DATA_21C768,y               
CODE_27BEE1:        8D 9D 06      STA $069D                 
CODE_27BEE4:        C0 0D         CPY #$0D                  
CODE_27BEE6:        D0 10         BNE CODE_27BEF8           
CODE_27BEE8:        A9 05         LDA #$05                  
CODE_27BEEA:        8D 03 12      STA $1203                 
CODE_27BEED:        AE 26 07      LDX $0726                 
CODE_27BEF0:        BD 36 07      LDA $0736,x               
CODE_27BEF3:        30 03         BMI CODE_27BEF8           
CODE_27BEF5:        FE 36 07      INC $0736,x               
CODE_27BEF8:        A6 9B         LDX $9B                   
CODE_27BEFA:        BD A4 07      LDA $07A4,x               
CODE_27BEFD:        4A            LSR A                     
CODE_27BEFE:        4A            LSR A                     
CODE_27BEFF:        4A            LSR A                     
CODE_27BF00:        4A            LSR A                     
CODE_27BF01:        A8            TAY                       
CODE_27BF02:        A5 15         LDA $15                   
CODE_27BF04:        39 76 C7      AND.w DATA_21C776,y               
CODE_27BF07:        D0 0A         BNE CODE_27BF13           
CODE_27BF09:        BD A9 07      LDA $07A9,x               
CODE_27BF0C:        C9 04         CMP #$04                  
CODE_27BF0E:        90 03         BCC CODE_27BF13           
CODE_27BF10:        DE A9 07      DEC $07A9,x               
CODE_27BF13:        64 D9         STZ $D9                   
CODE_27BF15:        AD 81 07      LDA $0781                 
CODE_27BF18:        85 D8         STA $D8                   
CODE_27BF1A:        C9 80         CMP #$80                  
CODE_27BF1C:        90 02         BCC CODE_27BF20           
CODE_27BF1E:        C6 D9         DEC $D9                   
CODE_27BF20:        BD 51 02      LDA $0251,x               
CODE_27BF23:        EB            XBA                       
CODE_27BF24:        BD AE 07      LDA $07AE,x               
CODE_27BF27:        C2 20         REP #$20                  
CODE_27BF29:        38            SEC                       
CODE_27BF2A:        E5 D8         SBC $D8                   
CODE_27BF2C:        E2 20         SEP #$20                  
CODE_27BF2E:        9D AE 07      STA $07AE,x               
CODE_27BF31:        EB            XBA                       
CODE_27BF32:        9D 51 02      STA $0251,x               
CODE_27BF35:        BD AE 07      LDA $07AE,x               
CODE_27BF38:        C9 F8         CMP #$F8                  
CODE_27BF3A:        B0 86         BCS CODE_27BEC2                   
CODE_27BF3C:        BD A9 07      LDA $07A9,x               
CODE_27BF3F:        38            SEC                       
CODE_27BF40:        ED 80 07      SBC $0780                 
CODE_27BF43:        9D A9 07      STA $07A9,x               
CODE_27BF46:        C9 F8         CMP #$F8                  
CODE_27BF48:        90 03         BCC CODE_27BF4D           
CODE_27BF4A:        82 75 FF      BRL CODE_27BEC2           

CODE_27BF4D:        22 9D A1 27   JSL CODE_27A19D           
CODE_27BF51:        64 01         STZ $01                   
CODE_27BF53:        A6 00         LDX $00                   
CODE_27BF55:        BD 41 C7      LDA.w DATA_21C741,x               
CODE_27BF58:        A6 9B         LDX $9B                   
CODE_27BF5A:        C9 FF         CMP #$FF                  
CODE_27BF5C:        F0 3B         BEQ CODE_27BF99           
CODE_27BF5E:        C2 10         REP #$10                  
CODE_27BF60:        B4 C6         LDY $C6,x                 
CODE_27BF62:        99 02 08      STA $0802,y               
CODE_27BF65:        CD 4E C7      CMP.w DATA_21C74E                 
CODE_27BF68:        D0 04         BNE CODE_27BF6E           
CODE_27BF6A:        A9 22         LDA #$22                  
CODE_27BF6C:        80 02         BRA CODE_27BF70           

CODE_27BF6E:        A9 20         LDA #$20                  
CODE_27BF70:        99 03 08      STA $0803,y               
CODE_27BF73:        BD A9 07      LDA $07A9,x               
CODE_27BF76:        99 01 08      STA $0801,y               
CODE_27BF79:        BD AE 07      LDA $07AE,x               
CODE_27BF7C:        99 00 08      STA $0800,y               
CODE_27BF7F:        C2 20         REP #$20                  
CODE_27BF81:        B5 C6         LDA $C6,x                 
CODE_27BF83:        18            CLC                       
CODE_27BF84:        69 04 00      ADC #$0004                
CODE_27BF87:        95 C6         STA $C6,x                 
CODE_27BF89:        98            TYA                       
CODE_27BF8A:        4A            LSR A                     
CODE_27BF8B:        4A            LSR A                     
CODE_27BF8C:        A8            TAY                       
CODE_27BF8D:        E2 20         SEP #$20                  
CODE_27BF8F:        BD 51 02      LDA $0251,x               
CODE_27BF92:        29 01         AND #$01                  
CODE_27BF94:        99 20 0A      STA $0A20,y               
CODE_27BF97:        E2 10         SEP #$10                  
CODE_27BF99:        C2 10         REP #$10                  
CODE_27BF9B:        B4 C6         LDY $C6,x                 
CODE_27BF9D:        BD A9 07      LDA $07A9,x               
CODE_27BFA0:        99 01 08      STA $0801,y               
CODE_27BFA3:        BD AE 07      LDA $07AE,x               
CODE_27BFA6:        18            CLC                       
CODE_27BFA7:        69 08         ADC #$08                  
CODE_27BFA9:        99 00 08      STA $0800,y               
CODE_27BFAC:        BD 51 02      LDA $0251,x               
CODE_27BFAF:        69 00         ADC #$00                  
CODE_27BFB1:        85 D8         STA $D8                   
CODE_27BFB3:        A6 00         LDX $00                   
CODE_27BFB5:        BD 4E C7      LDA.w DATA_21C74E,x               
CODE_27BFB8:        99 02 08      STA $0802,y               
CODE_27BFBB:        A9 20         LDA #$20                  
CODE_27BFBD:        E0 0D 00      CPX #$000D                
CODE_27BFC0:        D0 02         BNE CODE_27BFC4           
CODE_27BFC2:        09 02         ORA #$02                  
CODE_27BFC4:        99 03 08      STA $0803,y               
CODE_27BFC7:        C2 20         REP #$20                  
CODE_27BFC9:        98            TYA                       
CODE_27BFCA:        4A            LSR A                     
CODE_27BFCB:        4A            LSR A                     
CODE_27BFCC:        A8            TAY                       
CODE_27BFCD:        E2 20         SEP #$20                  
CODE_27BFCF:        A5 D8         LDA $D8                   
CODE_27BFD1:        29 01         AND #$01                  
CODE_27BFD3:        99 20 0A      STA $0A20,y               
CODE_27BFD6:        E2 10         SEP #$10                  
CODE_27BFD8:        A6 9B         LDX $9B                   
CODE_27BFDA:        60            RTS                       

CODE_27BFDB:        A2 01         LDX #$01                  
CODE_27BFDD:        86 9B         STX $9B                   
CODE_27BFDF:        20 E6 BF      JSR CODE_27BFE6           
CODE_27BFE2:        CA            DEX                       
CODE_27BFE3:        10 F8         BPL CODE_27BFDD           
CODE_27BFE5:        60            RTS                       

CODE_27BFE6:        BD 9C 1F      LDA $1F9C,x               
CODE_27BFE9:        F0 FA         BEQ CODE_27BFE5           
CODE_27BFEB:        C9 02         CMP #$02                  
CODE_27BFED:        F0 03         BEQ CODE_27BFF2           
CODE_27BFEF:        4C CC C1      JMP CODE_27C1CC           

CODE_27BFF2:        A5 9C         LDA $9C                   
CODE_27BFF4:        D0 09         BNE CODE_27BFFF           
CODE_27BFF6:        A5 15         LDA $15                   
CODE_27BFF8:        29 03         AND #$03                  
CODE_27BFFA:        D0 03         BNE CODE_27BFFF           
CODE_27BFFC:        FE A5 1F      INC $1FA5,x               
CODE_27BFFF:        BD B1 1F      LDA $1FB1,x               
CODE_27C002:        85 01         STA $01                   
CODE_27C004:        BD 9F 1F      LDA $1F9F,x               
CODE_27C007:        85 00         STA $00                   
CODE_27C009:        C2 20         REP #$20                  
CODE_27C00B:        AD 80 07      LDA $0780                 
CODE_27C00E:        29 FF 00      AND #$00FF                
CODE_27C011:        C9 80 00      CMP #$0080                
CODE_27C014:        90 03         BCC CODE_27C019           
CODE_27C016:        09 00 FF      ORA #$FF00                
CODE_27C019:        85 02         STA $02                   
CODE_27C01B:        BD A5 1F      LDA $1FA5,x               
CODE_27C01E:        29 FF 00      AND #$00FF                
CODE_27C021:        C9 80 00      CMP #$0080                
CODE_27C024:        90 03         BCC CODE_27C029           
CODE_27C026:        09 00 FF      ORA #$FF00                
CODE_27C029:        85 D8         STA $D8                   
CODE_27C02B:        A5 9C         LDA $9C                   
CODE_27C02D:        29 FF 00      AND #$00FF                
CODE_27C030:        F0 05         BEQ CODE_27C037           
CODE_27C032:        A9 00 00      LDA #$0000                
CODE_27C035:        80 02         BRA CODE_27C039           

CODE_27C037:        A5 D8         LDA $D8                   
CODE_27C039:        18            CLC                       
CODE_27C03A:        65 00         ADC $00                   
CODE_27C03C:        38            SEC                       
CODE_27C03D:        E5 02         SBC $02                   
CODE_27C03F:        85 00         STA $00                   
CODE_27C041:        18            CLC                       
CODE_27C042:        69 10 00      ADC #$0010                
CODE_27C045:        85 04         STA $04                   
CODE_27C047:        E2 20         SEP #$20                  
CODE_27C049:        A5 00         LDA $00                   
CODE_27C04B:        9D 9F 1F      STA $1F9F,x               
CODE_27C04E:        A5 01         LDA $01                   
CODE_27C050:        9D B1 1F      STA $1FB1,x               
CODE_27C053:        A5 05         LDA $05                   
CODE_27C055:        F0 09         BEQ CODE_27C060           
CODE_27C057:        BD AE 1F      LDA $1FAE,x               
CODE_27C05A:        29 08         AND #$08                  
CODE_27C05C:        D0 11         BNE CODE_27C06F           
CODE_27C05E:        80 07         BRA CODE_27C067           

CODE_27C060:        BD AE 1F      LDA $1FAE,x               
CODE_27C063:        29 08         AND #$08                  
CODE_27C065:        F0 08         BEQ CODE_27C06F           
CODE_27C067:        BD AE 1F      LDA $1FAE,x               
CODE_27C06A:        49 08         EOR #$08                  
CODE_27C06C:        9D AE 1F      STA $1FAE,x               
CODE_27C06F:        A5 9C         LDA $9C                   
CODE_27C071:        D0 03         BNE CODE_27C076           
CODE_27C073:        FE A8 1F      INC $1FA8,x               
CODE_27C076:        BD AB 1F      LDA $1FAB,x               
CODE_27C079:        85 00         STA $00                   
CODE_27C07B:        B5 DF         LDA $DF,x                 
CODE_27C07D:        85 01         STA $01                   
CODE_27C07F:        C2 20         REP #$20                  
CODE_27C081:        A5 9C         LDA $9C                   
CODE_27C083:        29 FF 00      AND #$00FF                
CODE_27C086:        F0 05         BEQ CODE_27C08D           
CODE_27C088:        A9 00 00      LDA #$0000                
CODE_27C08B:        80 06         BRA CODE_27C093           

CODE_27C08D:        A5 D8         LDA $D8                   
CODE_27C08F:        18            CLC                       
CODE_27C090:        69 02 00      ADC #$0002                
CODE_27C093:        18            CLC                       
CODE_27C094:        65 00         ADC $00                   
CODE_27C096:        38            SEC                       
CODE_27C097:        E5 02         SBC $02                   
CODE_27C099:        85 00         STA $00                   
CODE_27C09B:        18            CLC                       
CODE_27C09C:        69 10 00      ADC #$0010                
CODE_27C09F:        85 04         STA $04                   
CODE_27C0A1:        E2 20         SEP #$20                  
CODE_27C0A3:        A5 00         LDA $00                   
CODE_27C0A5:        9D AB 1F      STA $1FAB,x               
CODE_27C0A8:        A5 01         LDA $01                   
CODE_27C0AA:        95 DF         STA $DF,x                 
CODE_27C0AC:        A5 05         LDA $05                   
CODE_27C0AE:        F0 09         BEQ CODE_27C0B9           
CODE_27C0B0:        BD AE 1F      LDA $1FAE,x               
CODE_27C0B3:        29 04         AND #$04                  
CODE_27C0B5:        D0 11         BNE CODE_27C0C8           
CODE_27C0B7:        80 07         BRA CODE_27C0C0           

CODE_27C0B9:        BD AE 1F      LDA $1FAE,x               
CODE_27C0BC:        29 04         AND #$04                  
CODE_27C0BE:        F0 08         BEQ CODE_27C0C8           
CODE_27C0C0:        BD AE 1F      LDA $1FAE,x               
CODE_27C0C3:        49 04         EOR #$04                  
CODE_27C0C5:        9D AE 1F      STA $1FAE,x               
CODE_27C0C8:        64 DD         STZ $DD                   
CODE_27C0CA:        AD 81 07      LDA $0781                 
CODE_27C0CD:        85 DC         STA $DC                   
CODE_27C0CF:        10 02         BPL CODE_27C0D3           
CODE_27C0D1:        C6 DD         DEC $DD                   
CODE_27C0D3:        BD AE 02      LDA $02AE,x               
CODE_27C0D6:        EB            XBA                       
CODE_27C0D7:        BD A2 1F      LDA $1FA2,x               
CODE_27C0DA:        C2 20         REP #$20                  
CODE_27C0DC:        38            SEC                       
CODE_27C0DD:        E5 DC         SBC $DC                   
CODE_27C0DF:        E2 20         SEP #$20                  
CODE_27C0E1:        9D A2 1F      STA $1FA2,x               
CODE_27C0E4:        EB            XBA                       
CODE_27C0E5:        9D AE 02      STA $02AE,x               
CODE_27C0E8:        20 88 D7      JSR CODE_27D788           
CODE_27C0EB:        90 01         BCC CODE_27C0EE           
CODE_27C0ED:        60            RTS                       

CODE_27C0EE:        BD AE 1F      LDA $1FAE,x               
CODE_27C0F1:        85 03         STA $03                   
CODE_27C0F3:        C9 0C         CMP #$0C                  
CODE_27C0F5:        90 0A         BCC CODE_27C101           
CODE_27C0F7:        BD B1 1F      LDA $1FB1,x               
CODE_27C0FA:        C9 01         CMP #$01                  
CODE_27C0FC:        D0 03         BNE CODE_27C101           
CODE_27C0FE:        4C C6 C1      JMP CODE_27C1C6           

CODE_27C101:        A5 03         LDA $03                   
CODE_27C103:        29 08         AND #$08                  
CODE_27C105:        D0 09         BNE CODE_27C110           
CODE_27C107:        BD 9F 1F      LDA $1F9F,x               
CODE_27C10A:        99 01 08      STA $0801,y               
CODE_27C10D:        99 05 08      STA $0805,y               
CODE_27C110:        A5 03         LDA $03                   
CODE_27C112:        29 04         AND #$04                  
CODE_27C114:        D0 09         BNE CODE_27C11F           
CODE_27C116:        BD AB 1F      LDA $1FAB,x               
CODE_27C119:        99 09 08      STA $0809,y               
CODE_27C11C:        99 0D 08      STA $080D,y               
CODE_27C11F:        46 03         LSR $03                   
CODE_27C121:        90 08         BCC CODE_27C12B           
CODE_27C123:        A9 F0         LDA #$F0                  
CODE_27C125:        99 01 08      STA $0801,y               
CODE_27C128:        99 09 08      STA $0809,y               
CODE_27C12B:        46 03         LSR $03                   
CODE_27C12D:        90 08         BCC CODE_27C137           
CODE_27C12F:        A9 F0         LDA #$F0                  
CODE_27C131:        99 05 08      STA $0805,y               
CODE_27C134:        99 0D 08      STA $080D,y               
CODE_27C137:        64 DD         STZ $DD                   
CODE_27C139:        BD A8 1F      LDA $1FA8,x               
CODE_27C13C:        85 DC         STA $DC                   
CODE_27C13E:        BD AE 02      LDA $02AE,x               
CODE_27C141:        EB            XBA                       
CODE_27C142:        BD A2 1F      LDA $1FA2,x               
CODE_27C145:        C2 20         REP #$20                  
CODE_27C147:        18            CLC                       
CODE_27C148:        65 DC         ADC $DC                   
CODE_27C14A:        18            CLC                       
CODE_27C14B:        69 08 00      ADC #$0008                
CODE_27C14E:        85 DA         STA $DA                   
CODE_27C150:        E2 20         SEP #$20                  
CODE_27C152:        99 00 08      STA $0800,y               
CODE_27C155:        99 08 08      STA $0808,y               
CODE_27C158:        A5 DB         LDA $DB                   
CODE_27C15A:        F0 08         BEQ CODE_27C164           
CODE_27C15C:        BD AE 1F      LDA $1FAE,x               
CODE_27C15F:        09 01         ORA #$01                  
CODE_27C161:        9D AE 1F      STA $1FAE,x               
CODE_27C164:        BD AE 02      LDA $02AE,x               
CODE_27C167:        EB            XBA                       
CODE_27C168:        BD A2 1F      LDA $1FA2,x               
CODE_27C16B:        C2 20         REP #$20                  
CODE_27C16D:        38            SEC                       
CODE_27C16E:        E5 DC         SBC $DC                   
CODE_27C170:        85 DC         STA $DC                   
CODE_27C172:        E2 20         SEP #$20                  
CODE_27C174:        99 04 08      STA $0804,y               
CODE_27C177:        99 0C 08      STA $080C,y               
CODE_27C17A:        A5 DD         LDA $DD                   
CODE_27C17C:        F0 08         BEQ CODE_27C186           
CODE_27C17E:        BD AE 1F      LDA $1FAE,x               
CODE_27C181:        09 02         ORA #$02                  
CODE_27C183:        9D AE 1F      STA $1FAE,x               
CODE_27C186:        AD 65 05      LDA $0565                 
CODE_27C189:        29 06         AND #$06                  
CODE_27C18B:        4A            LSR A                     
CODE_27C18C:        4A            LSR A                     
CODE_27C18D:        6A            ROR A                     
CODE_27C18E:        6A            ROR A                     
CODE_27C18F:        09 20         ORA #$20                  
CODE_27C191:        99 03 08      STA $0803,y               
CODE_27C194:        99 07 08      STA $0807,y               
CODE_27C197:        99 0B 08      STA $080B,y               
CODE_27C19A:        99 0F 08      STA $080F,y               
CODE_27C19D:        A9 4A         LDA #$4A                  
CODE_27C19F:        99 02 08      STA $0802,y               
CODE_27C1A2:        99 06 08      STA $0806,y               
CODE_27C1A5:        99 0A 08      STA $080A,y               
CODE_27C1A8:        99 0E 08      STA $080E,y               
CODE_27C1AB:        5A            PHY                       
CODE_27C1AC:        98            TYA                       
CODE_27C1AD:        4A            LSR A                     
CODE_27C1AE:        4A            LSR A                     
CODE_27C1AF:        A8            TAY                       
CODE_27C1B0:        A5 DB         LDA $DB                   
CODE_27C1B2:        29 01         AND #$01                  
CODE_27C1B4:        99 20 0A      STA $0A20,y               
CODE_27C1B7:        99 22 0A      STA $0A22,y               
CODE_27C1BA:        A5 DD         LDA $DD                   
CODE_27C1BC:        29 01         AND #$01                  
CODE_27C1BE:        99 21 0A      STA $0A21,y               
CODE_27C1C1:        99 23 0A      STA $0A23,y               
CODE_27C1C4:        7A            PLY                       
CODE_27C1C5:        60            RTS                       

CODE_27C1C6:        A9 00         LDA #$00                  
CODE_27C1C8:        9D 9C 1F      STA $1F9C,x               
CODE_27C1CB:        60            RTS                       

CODE_27C1CC:        BD AE 1F      LDA $1FAE,x               
CODE_27C1CF:        F0 F5         BEQ CODE_27C1C6           
CODE_27C1D1:        A5 9C         LDA $9C                   
CODE_27C1D3:        D0 03         BNE CODE_27C1D8           
CODE_27C1D5:        DE AE 1F      DEC $1FAE,x               
CODE_27C1D8:        BD 9F 1F      LDA $1F9F,x               
CODE_27C1DB:        AC FC 05      LDY $05FC                 
CODE_27C1DE:        D0 07         BNE CODE_27C1E7           
CODE_27C1E0:        38            SEC                       
CODE_27C1E1:        ED 80 07      SBC $0780                 
CODE_27C1E4:        9D 9F 1F      STA $1F9F,x               
CODE_27C1E7:        C9 D0         CMP #$D0                  
CODE_27C1E9:        B0 DB         BCS CODE_27C1C6                   
CODE_27C1EB:        C0 00         CPY #$00                  
CODE_27C1ED:        D0 0A         BNE CODE_27C1F9           
CODE_27C1EF:        BD A2 1F      LDA $1FA2,x               
CODE_27C1F2:        38            SEC                       
CODE_27C1F3:        ED 81 07      SBC $0781                 
CODE_27C1F6:        9D A2 1F      STA $1FA2,x               
CODE_27C1F9:        C9 F0         CMP #$F0                  
CODE_27C1FB:        B0 C9         BCS CODE_27C1C6                   
CODE_27C1FD:        8A            TXA                       
CODE_27C1FE:        45 15         EOR $15                   
CODE_27C200:        29 01         AND #$01                  
CODE_27C202:        A8            TAY                       
CODE_27C203:        B9 7C C7      LDA.w DATA_21C77C,y               
CODE_27C206:        A8            TAY                       
CODE_27C207:        B9 01 08      LDA $0801,y               
CODE_27C20A:        C9 F0         CMP #$F0                  
CODE_27C20C:        D0 B7         BNE CODE_27C1C5           
CODE_27C20E:        BD A2 1F      LDA $1FA2,x               
CODE_27C211:        99 00 08      STA $0800,y               
CODE_27C214:        99 08 08      STA $0808,y               
CODE_27C217:        18            CLC                       
CODE_27C218:        69 08         ADC #$08                  
CODE_27C21A:        99 04 08      STA $0804,y               
CODE_27C21D:        99 0C 08      STA $080C,y               
CODE_27C220:        BD 9F 1F      LDA $1F9F,x               
CODE_27C223:        99 01 08      STA $0801,y               
CODE_27C226:        99 05 08      STA $0805,y               
CODE_27C229:        18            CLC                       
CODE_27C22A:        69 08         ADC #$08                  
CODE_27C22C:        99 09 08      STA $0809,y               
CODE_27C22F:        99 0D 08      STA $080D,y               
CODE_27C232:        AD 65 05      LDA $0565                 
CODE_27C235:        4A            LSR A                     
CODE_27C236:        4A            LSR A                     
CODE_27C237:        4A            LSR A                     
CODE_27C238:        6A            ROR A                     
CODE_27C239:        29 80         AND #$80                  
CODE_27C23B:        85 00         STA $00                   
CODE_27C23D:        A9 22         LDA #$22                  
CODE_27C23F:        05 00         ORA $00                   
CODE_27C241:        99 03 08      STA $0803,y               
CODE_27C244:        99 0B 08      STA $080B,y               
CODE_27C247:        49 C0         EOR #$C0                  
CODE_27C249:        99 07 08      STA $0807,y               
CODE_27C24C:        99 0F 08      STA $080F,y               
CODE_27C24F:        BD AE 1F      LDA $1FAE,x               
CODE_27C252:        4A            LSR A                     
CODE_27C253:        4A            LSR A                     
CODE_27C254:        4A            LSR A                     
CODE_27C255:        AA            TAX                       
CODE_27C256:        BD 36 C8      LDA.w DATA_21C836,x               
CODE_27C259:        85 D8         STA $D8                   
CODE_27C25B:        1A            INC A                     
CODE_27C25C:        85 D9         STA $D9                   
CODE_27C25E:        B9 03 08      LDA $0803,y               
CODE_27C261:        29 80         AND #$80                  
CODE_27C263:        F0 0A         BEQ CODE_27C26F           
CODE_27C265:        A5 D8         LDA $D8                   
CODE_27C267:        48            PHA                       
CODE_27C268:        A5 D9         LDA $D9                   
CODE_27C26A:        85 D8         STA $D8                   
CODE_27C26C:        68            PLA                       
CODE_27C26D:        85 D9         STA $D9                   
CODE_27C26F:        A5 D8         LDA $D8                   
CODE_27C271:        99 02 08      STA $0802,y               
CODE_27C274:        99 0E 08      STA $080E,y               
CODE_27C277:        A5 D9         LDA $D9                   
CODE_27C279:        99 0A 08      STA $080A,y               
CODE_27C27C:        99 06 08      STA $0806,y               
CODE_27C27F:        98            TYA                       
CODE_27C280:        4A            LSR A                     
CODE_27C281:        4A            LSR A                     
CODE_27C282:        A8            TAY                       
CODE_27C283:        A9 00         LDA #$00                  
CODE_27C285:        99 20 0A      STA $0A20,y               
CODE_27C288:        99 21 0A      STA $0A21,y               
CODE_27C28B:        99 22 0A      STA $0A22,y               
CODE_27C28E:        99 23 0A      STA $0A23,y               
CODE_27C291:        A6 9B         LDX $9B                   
CODE_27C293:        60            RTS                       

CODE_27C294:        A2 03         LDX #$03                  
CODE_27C296:        86 9B         STX $9B                   
CODE_27C298:        BD B4 1F      LDA $1FB4,x               
CODE_27C29B:        F0 03         BEQ CODE_27C2A0           
CODE_27C29D:        20 A4 C2      JSR CODE_27C2A4           
CODE_27C2A0:        CA            DEX                       
CODE_27C2A1:        10 F3         BPL CODE_27C296           
CODE_27C2A3:        60            RTS                       

CODE_27C2A4:        A5 9C         LDA $9C                   
CODE_27C2A6:        D0 63         BNE CODE_27C30B           
CODE_27C2A8:        BD C0 1F      LDA $1FC0,x               
CODE_27C2AB:        C9 05         CMP #$05                  
CODE_27C2AD:        F0 33         BEQ CODE_27C2E2           
CODE_27C2AF:        FE C4 1F      INC $1FC4,x               
CODE_27C2B2:        BD B8 1F      LDA $1FB8,x               
CODE_27C2B5:        18            CLC                       
CODE_27C2B6:        7D C0 1F      ADC $1FC0,x               
CODE_27C2B9:        9D B8 1F      STA $1FB8,x               
CODE_27C2BC:        BD C4 1F      LDA $1FC4,x               
CODE_27C2BF:        29 03         AND #$03                  
CODE_27C2C1:        D0 1F         BNE CODE_27C2E2           
CODE_27C2C3:        FE C0 1F      INC $1FC0,x               
CODE_27C2C6:        BD C0 1F      LDA $1FC0,x               
CODE_27C2C9:        C9 05         CMP #$05                  
CODE_27C2CB:        D0 15         BNE CODE_27C2E2           
CODE_27C2CD:        BD B8 1F      LDA $1FB8,x               
CODE_27C2D0:        9F 2E C5 7F   STA $7FC52E,x             
CODE_27C2D4:        9E C4 1F      STZ $1FC4,x               
CODE_27C2D7:        BD B4 1F      LDA $1FB4,x               
CODE_27C2DA:        48            PHA                       
CODE_27C2DB:        20 12 C4      JSR CODE_27C412           
CODE_27C2DE:        68            PLA                       
CODE_27C2DF:        9D B4 1F      STA $1FB4,x               
CODE_27C2E2:        AD 81 07      LDA $0781                 
CODE_27C2E5:        85 D8         STA $D8                   
CODE_27C2E7:        64 D9         STZ $D9                   
CODE_27C2E9:        C9 80         CMP #$80                  
CODE_27C2EB:        90 02         BCC CODE_27C2EF           
CODE_27C2ED:        C6 D9         DEC $D9                   
CODE_27C2EF:        BD 4C 02      LDA $024C,x               
CODE_27C2F2:        EB            XBA                       
CODE_27C2F3:        BD BC 1F      LDA $1FBC,x               
CODE_27C2F6:        C2 20         REP #$20                  
CODE_27C2F8:        38            SEC                       
CODE_27C2F9:        E5 D8         SBC $D8                   
CODE_27C2FB:        E2 20         SEP #$20                  
CODE_27C2FD:        9D BC 1F      STA $1FBC,x               
CODE_27C300:        EB            XBA                       
CODE_27C301:        9D 4C 02      STA $024C,x               
CODE_27C304:        BD BC 1F      LDA $1FBC,x               
CODE_27C307:        C9 F8         CMP #$F8                  
CODE_27C309:        B0 1C         BCS CODE_27C327                   
CODE_27C30B:        BD C0 1F      LDA $1FC0,x               
CODE_27C30E:        C9 05         CMP #$05                  
CODE_27C310:        D0 03         BNE CODE_27C315           
CODE_27C312:        82 86 00      BRL CODE_27C39B           

CODE_27C315:        A5 9C         LDA $9C                   
CODE_27C317:        F0 11         BEQ CODE_27C32A           
CODE_27C319:        BD B8 1F      LDA $1FB8,x               
CODE_27C31C:        38            SEC                       
CODE_27C31D:        ED 80 07      SBC $0780                 
CODE_27C320:        9D B8 1F      STA $1FB8,x               
CODE_27C323:        C9 C5         CMP #$C5                  
CODE_27C325:        90 03         BCC CODE_27C32A           
CODE_27C327:        82 12 01      BRL CODE_27C43C           

CODE_27C32A:        22 9D A1 27   JSL CODE_27A19D           
CODE_27C32E:        C2 10         REP #$10                  
CODE_27C330:        B4 C6         LDY $C6,x                 
CODE_27C332:        BD B8 1F      LDA $1FB8,x               
CODE_27C335:        C9 A8         CMP #$A8                  
CODE_27C337:        90 02         BCC CODE_27C33B           
CODE_27C339:        A9 F0         LDA #$F0                  
CODE_27C33B:        99 01 08      STA $0801,y               
CODE_27C33E:        18            CLC                       
CODE_27C33F:        69 08         ADC #$08                  
CODE_27C341:        99 05 08      STA $0805,y               
CODE_27C344:        BD BC 1F      LDA $1FBC,x               
CODE_27C347:        99 00 08      STA $0800,y               
CODE_27C34A:        99 04 08      STA $0804,y               
CODE_27C34D:        BD 4C 02      LDA $024C,x               
CODE_27C350:        85 D8         STA $D8                   
CODE_27C352:        C2 20         REP #$20                  
CODE_27C354:        BD C4 1F      LDA $1FC4,x               
CODE_27C357:        4A            LSR A                     
CODE_27C358:        4A            LSR A                     
CODE_27C359:        29 03 00      AND #$0003                
CODE_27C35C:        AA            TAX                       
CODE_27C35D:        E2 20         SEP #$20                  
CODE_27C35F:        BD 7E C7      LDA.w DATA_21C77E,x               
CODE_27C362:        99 02 08      STA $0802,y               
CODE_27C365:        1A            INC A                     
CODE_27C366:        99 06 08      STA $0806,y               
CODE_27C369:        BD 82 C7      LDA.w DATA_21C782,x               
CODE_27C36C:        99 03 08      STA $0803,y               
CODE_27C36F:        99 07 08      STA $0807,y               
CODE_27C372:        5A            PHY                       
CODE_27C373:        C2 20         REP #$20                  
CODE_27C375:        98            TYA                       
CODE_27C376:        4A            LSR A                     
CODE_27C377:        4A            LSR A                     
CODE_27C378:        A8            TAY                       
CODE_27C379:        E2 20         SEP #$20                  
CODE_27C37B:        A5 D8         LDA $D8                   
CODE_27C37D:        29 01         AND #$01                  
CODE_27C37F:        99 20 0A      STA $0A20,y               
CODE_27C382:        99 21 0A      STA $0A21,y               
CODE_27C385:        7A            PLY                       
CODE_27C386:        E2 10         SEP #$10                  
CODE_27C388:        A6 9B         LDX $9B                   
CODE_27C38A:        60            RTS                       

DATA_27C38B:        db $E0,$E0,$E0,$E0,$E2,$E2,$E2,$E2
                    db $E4,$E4,$E4,$E4,$E4,$E4,$E4,$E4

CODE_27C39B:        A5 9C         LDA $9C                   
CODE_27C39D:        F0 13         BEQ CODE_27C3B2           
CODE_27C39F:        BF 2E C5 7F   LDA $7FC52E,x             
CODE_27C3A3:        38            SEC                       
CODE_27C3A4:        ED 80 07      SBC $0780                 
CODE_27C3A7:        9F 2E C5 7F   STA $7FC52E,x             
CODE_27C3AB:        C9 C5         CMP #$C5                  
CODE_27C3AD:        90 03         BCC CODE_27C3B2           
CODE_27C3AF:        82 8A 00      BRL CODE_27C43C           

CODE_27C3B2:        22 9D A1 27   JSL CODE_27A19D           
CODE_27C3B6:        C2 10         REP #$10                  
CODE_27C3B8:        B4 C6         LDY $C6,x                 
CODE_27C3BA:        BF 2E C5 7F   LDA $7FC52E,x             
CODE_27C3BE:        99 01 08      STA $0801,y               
CODE_27C3C1:        BD 4C 02      LDA $024C,x               
CODE_27C3C4:        EB            XBA                       
CODE_27C3C5:        BD BC 1F      LDA $1FBC,x               
CODE_27C3C8:        C2 20         REP #$20                  
CODE_27C3CA:        18            CLC                       
CODE_27C3CB:        69 FC FF      ADC #$FFFC                
CODE_27C3CE:        E2 20         SEP #$20                  
CODE_27C3D0:        99 00 08      STA $0800,y               
CODE_27C3D3:        99 04 08      STA $0804,y               
CODE_27C3D6:        EB            XBA                       
CODE_27C3D7:        85 D8         STA $D8                   
CODE_27C3D9:        C2 20         REP #$20                  
CODE_27C3DB:        BD C4 1F      LDA $1FC4,x               
CODE_27C3DE:        29 0F 00      AND #$000F                
CODE_27C3E1:        AA            TAX                       
CODE_27C3E2:        E2 20         SEP #$20                  
CODE_27C3E4:        BF 8B C3 27   LDA.l DATA_27C38B,x             
CODE_27C3E8:        99 02 08      STA $0802,y               
CODE_27C3EB:        A9 21         LDA #$21                  
CODE_27C3ED:        99 03 08      STA $0803,y               
CODE_27C3F0:        5A            PHY                       
CODE_27C3F1:        C2 20         REP #$20                  
CODE_27C3F3:        98            TYA                       
CODE_27C3F4:        4A            LSR A                     
CODE_27C3F5:        4A            LSR A                     
CODE_27C3F6:        A8            TAY                       
CODE_27C3F7:        E2 20         SEP #$20                  
CODE_27C3F9:        A5 D8         LDA $D8                   
CODE_27C3FB:        29 01         AND #$01                  
CODE_27C3FD:        09 02         ORA #$02                  
CODE_27C3FF:        99 20 0A      STA $0A20,y               
CODE_27C402:        7A            PLY                       
CODE_27C403:        E2 10         SEP #$10                  
CODE_27C405:        A6 9B         LDX $9B                   
CODE_27C407:        FE C4 1F      INC $1FC4,x               
CODE_27C40A:        BD C4 1F      LDA $1FC4,x               
CODE_27C40D:        29 0F         AND #$0F                  
CODE_27C40F:        F0 2B         BEQ CODE_27C43C           
CODE_27C411:        60            RTS                       

CODE_27C412:        20 DB 8A      JSR CODE_278ADB           
CODE_27C415:        A9 85         LDA #$85                  
CODE_27C417:        99 9F 07      STA $079F,y               
CODE_27C41A:        A9 30         LDA #$30                  
CODE_27C41C:        99 A4 07      STA $07A4,y               
CODE_27C41F:        BD B8 1F      LDA $1FB8,x               
CODE_27C422:        C9 C0         CMP #$C0                  
CODE_27C424:        90 02         BCC CODE_27C428           
CODE_27C426:        A9 05         LDA #$05                  
CODE_27C428:        99 A9 07      STA $07A9,y               
CODE_27C42B:        BD BC 1F      LDA $1FBC,x               
CODE_27C42E:        38            SEC                       
CODE_27C42F:        E9 04         SBC #$04                  
CODE_27C431:        99 AE 07      STA $07AE,y               
CODE_27C434:        BD 4C 02      LDA $024C,x               
CODE_27C437:        E9 00         SBC #$00                  
CODE_27C439:        99 51 02      STA $0251,y               
CODE_27C43C:        A9 00         LDA #$00                  
CODE_27C43E:        9D B4 1F      STA $1FB4,x               
CODE_27C441:        60            RTS                       

CODE_27C442:        A9 01         LDA #$01                  
CODE_27C444:        9D 68 1A      STA $1A68,x               
CODE_27C447:        BD BF 05      LDA $05BF,x               
CODE_27C44A:        18            CLC                       
CODE_27C44B:        69 0C         ADC #$0C                  
CODE_27C44D:        85 05         STA $05                   
CODE_27C44F:        29 F0         AND #$F0                  
CODE_27C451:        85 02         STA $02                   
CODE_27C453:        BD D7 1F      LDA $1FD7,x               
CODE_27C456:        69 00         ADC #$00                  
CODE_27C458:        48            PHA                       
CODE_27C459:        BD C9 05      LDA $05C9,x               
CODE_27C45C:        18            CLC                       
CODE_27C45D:        69 04         ADC #$04                  
CODE_27C45F:        38            SEC                       
CODE_27C460:        ED 10 02      SBC $0210                 
CODE_27C463:        18            CLC                       
CODE_27C464:        6D 10 02      ADC $0210                 
CODE_27C467:        85 04         STA $04                   
CODE_27C469:        68            PLA                       
CODE_27C46A:        85 01         STA $01                   
CODE_27C46C:        DA            PHX                       
CODE_27C46D:        A5 12         LDA $12                   
CODE_27C46F:        69 00         ADC #$00                  
CODE_27C471:        0A            ASL A                     
CODE_27C472:        AA            TAX                       
CODE_27C473:        BF 00 82 21   LDA.l DATA_218200,x             
CODE_27C477:        85 00         STA $00                   
CODE_27C479:        85 DB         STA $DB                   
CODE_27C47B:        A5 01         LDA $01                   
CODE_27C47D:        29 01         AND #$01                  
CODE_27C47F:        18            CLC                       
CODE_27C480:        7F 01 82 21   ADC.l DATA_218200+1,x             
CODE_27C484:        85 01         STA $01                   
CODE_27C486:        18            CLC                       
CODE_27C487:        69 20         ADC #$20                  
CODE_27C489:        85 DC         STA $DC                   
CODE_27C48B:        FA            PLX                       
CODE_27C48C:        A5 04         LDA $04                   
CODE_27C48E:        4A            LSR A                     
CODE_27C48F:        4A            LSR A                     
CODE_27C490:        4A            LSR A                     
CODE_27C491:        4A            LSR A                     
CODE_27C492:        05 02         ORA $02                   
CODE_27C494:        A8            TAY                       
CODE_27C495:        A9 7E         LDA #$7E                  
CODE_27C497:        85 02         STA $02                   
CODE_27C499:        85 DD         STA $DD                   
CODE_27C49B:        B7 DB         LDA [$DB],y               
CODE_27C49D:        F0 18         BEQ CODE_27C4B7           
CODE_27C49F:        DA            PHX                       
CODE_27C4A0:        AD 0A 07      LDA $070A                 
CODE_27C4A3:        0A            ASL A                     
CODE_27C4A4:        AA            TAX                       
CODE_27C4A5:        BD 57 AB      LDA.w DATA_21AB57,x               
CODE_27C4A8:        85 DB         STA $DB                   
CODE_27C4AA:        BD 58 AB      LDA.w DATA_21AB57+1,x               
CODE_27C4AD:        85 DC         STA $DC                   
CODE_27C4AF:        B7 00         LDA [$00],y               
CODE_27C4B1:        A8            TAY                       
CODE_27C4B2:        B1 DB         LDA ($DB),y               
CODE_27C4B4:        FA            PLX                       
CODE_27C4B5:        80 02         BRA CODE_27C4B9           

CODE_27C4B7:        B7 00         LDA [$00],y               
CODE_27C4B9:        48            PHA                       
CODE_27C4BA:        0A            ASL A                     
CODE_27C4BB:        2A            ROL A                     
CODE_27C4BC:        2A            ROL A                     
CODE_27C4BD:        29 03         AND #$03                  
CODE_27C4BF:        A8            TAY                       
CODE_27C4C0:        84 01         STY $01                   
CODE_27C4C2:        68            PLA                       
CODE_27C4C3:        85 00         STA $00                   
CODE_27C4C5:        D9 96 1E      CMP $1E96,y               
CODE_27C4C8:        90 3B         BCC CODE_27C505           
CODE_27C4CA:        D9 9A 1E      CMP $1E9A,y               
CODE_27C4CD:        90 25         BCC CODE_27C4F4           
CODE_27C4CF:        BD C8 1F      LDA $1FC8,x               
CODE_27C4D2:        C9 0C         CMP #$0C                  
CODE_27C4D4:        F0 02         BEQ CODE_27C4D8           
CODE_27C4D6:        38            SEC                       
CODE_27C4D7:        60            RTS                       

CODE_27C4D8:        FE C7 06      INC $06C7,x               
CODE_27C4DB:        BD C7 06      LDA $06C7,x               
CODE_27C4DE:        C9 02         CMP #$02                  
CODE_27C4E0:        D0 03         BNE CODE_27C4E5           
CODE_27C4E2:        4C 27 C5      JMP CODE_27C527           

CODE_27C4E5:        DE BF 05      DEC $05BF,x               
CODE_27C4E8:        DE BF 05      DEC $05BF,x               
CODE_27C4EB:        DE BF 05      DEC $05BF,x               
CODE_27C4EE:        A9 D4         LDA #$D4                  
CODE_27C4F0:        9D D3 05      STA $05D3,x               
CODE_27C4F3:        60            RTS                       

CODE_27C4F4:        BD C8 1F      LDA $1FC8,x               
CODE_27C4F7:        C9 0C         CMP #$0C                  
CODE_27C4F9:        18            CLC                       
CODE_27C4FA:        D0 F7         BNE CODE_27C4F3           
CODE_27C4FC:        A5 05         LDA $05                   
CODE_27C4FE:        29 0F         AND #$0F                  
CODE_27C500:        C9 05         CMP #$05                  
CODE_27C502:        90 EA         BCC CODE_27C4EE           
CODE_27C504:        60            RTS                       

CODE_27C505:        BD C8 1F      LDA $1FC8,x               
CODE_27C508:        C9 14         CMP #$14                  
CODE_27C50A:        18            CLC                       
CODE_27C50B:        D0 14         BNE CODE_27C521           
CODE_27C50D:        AD 60 05      LDA $0560                 
CODE_27C510:        0A            ASL A                     
CODE_27C511:        0A            ASL A                     
CODE_27C512:        18            CLC                       
CODE_27C513:        65 01         ADC $01                   
CODE_27C515:        A8            TAY                       
CODE_27C516:        B9 84 AD      LDA.w DATA_21AD84,y               
CODE_27C519:        C5 00         CMP $00                   
CODE_27C51B:        90 03         BCC CODE_27C520           
CODE_27C51D:        DE 68 1A      DEC $1A68,x               
CODE_27C520:        60            RTS                       

CODE_27C521:        A9 00         LDA #$00                  
CODE_27C523:        9D C7 06      STA $06C7,x               
CODE_27C526:        60            RTS                       

CODE_27C527:        A9 01         LDA #$01                  
CODE_27C529:        8D 00 12      STA $1200                 
CODE_27C52C:        EA            NOP                       
CODE_27C52D:        EA            NOP                       
CODE_27C52E:        EA            NOP                       
CODE_27C52F:        EA            NOP                       
CODE_27C530:        EA            NOP                       
CODE_27C531:        EA            NOP                       
CODE_27C532:        EA            NOP                       
CODE_27C533:        4C 8A D3      JMP CODE_27D38A           

CODE_27C536:        A9 00         LDA #$00                  
CODE_27C538:        8D B6 06      STA $06B6                 
CODE_27C53B:        A2 09         LDX #$09                  
CODE_27C53D:        86 9B         STX $9B                   
CODE_27C53F:        20 46 C5      JSR CODE_27C546           
CODE_27C542:        CA            DEX                       
CODE_27C543:        10 F8         BPL CODE_27C53D           
CODE_27C545:        60            RTS                       

CODE_27C546:        BD C8 1F      LDA $1FC8,x               
CODE_27C549:        F0 FA         BEQ CODE_27C545           
CODE_27C54B:        AD FE 05      LDA $05FE                 
CODE_27C54E:        F0 1F         BEQ CODE_27C56F           
CODE_27C550:        A5 9C         LDA $9C                   
CODE_27C552:        D0 1B         BNE CODE_27C56F           
CODE_27C554:        BD C9 05      LDA $05C9,x               
CODE_27C557:        18            CLC                       
CODE_27C558:        6F 52 39 7E   ADC $7E3952               
CODE_27C55C:        9D C9 05      STA $05C9,x               
CODE_27C55F:        BD BF 05      LDA $05BF,x               
CODE_27C562:        18            CLC                       
CODE_27C563:        6F 53 39 7E   ADC $7E3953               
CODE_27C567:        9D BF 05      STA $05BF,x               
CODE_27C56A:        90 03         BCC CODE_27C56F           
CODE_27C56C:        FE D7 1F      INC $1FD7,x               
CODE_27C56F:        A4 9C         LDY $9C                   
CODE_27C571:        D0 08         BNE CODE_27C57B           
CODE_27C573:        BC D1 06      LDY $06D1,x               
CODE_27C576:        F0 03         BEQ CODE_27C57B           
CODE_27C578:        DE D1 06      DEC $06D1,x               
CODE_27C57B:        B5 E2         LDA $E2,x                 
CODE_27C57D:        EB            XBA                       
CODE_27C57E:        BD C9 05      LDA $05C9,x               
CODE_27C581:        C2 20         REP #$20                  
CODE_27C583:        38            SEC                       
CODE_27C584:        ED 10 02      SBC $0210                 
CODE_27C587:        C9 F8 00      CMP #$00F8                
CODE_27C58A:        90 09         BCC CODE_27C595           
CODE_27C58C:        C9 F8 FF      CMP #$FFF8                
CODE_27C58F:        B0 04         BCS CODE_27C595                   
CODE_27C591:        E2 20         SEP #$20                  
CODE_27C593:        80 3C         BRA CODE_27C5D1           

CODE_27C595:        E2 20         SEP #$20                  
CODE_27C597:        BD BF 05      LDA $05BF,x               
CODE_27C59A:        18            CLC                       
CODE_27C59B:        69 14         ADC #$14                  
CODE_27C59D:        48            PHA                       
CODE_27C59E:        BD D7 1F      LDA $1FD7,x               
CODE_27C5A1:        69 00         ADC #$00                  
CODE_27C5A3:        85 00         STA $00                   
CODE_27C5A5:        68            PLA                       
CODE_27C5A6:        CD 43 05      CMP $0543                 
CODE_27C5A9:        A5 00         LDA $00                   
CODE_27C5AB:        ED 42 05      SBC $0542                 
CODE_27C5AE:        85 0D         STA $0D                   
CODE_27C5B0:        F0 24         BEQ CODE_27C5D6           
CODE_27C5B2:        BD C8 1F      LDA $1FC8,x               
CODE_27C5B5:        C9 0E         CMP #$0E                  
CODE_27C5B7:        F0 14         BEQ CODE_27C5CD           
CODE_27C5B9:        C9 06         CMP #$06                  
CODE_27C5BB:        F0 10         BEQ CODE_27C5CD           
CODE_27C5BD:        C9 10         CMP #$10                  
CODE_27C5BF:        F0 0C         BEQ CODE_27C5CD           
CODE_27C5C1:        C9 13         CMP #$13                  
CODE_27C5C3:        F0 08         BEQ CODE_27C5CD           
CODE_27C5C5:        C9 07         CMP #$07                  
CODE_27C5C7:        F0 04         BEQ CODE_27C5CD           
CODE_27C5C9:        C9 01         CMP #$01                  
CODE_27C5CB:        D0 04         BNE CODE_27C5D1           
CODE_27C5CD:        A5 0D         LDA $0D                   
CODE_27C5CF:        30 05         BMI CODE_27C5D6           
CODE_27C5D1:        E2 20         SEP #$20                  
CODE_27C5D3:        4C 7F D3      JMP CODE_27D37F           

CODE_27C5D6:        BD C8 1F      LDA $1FC8,x               ; Extended sprites
CODE_27C5D9:        22 1F FB 20   JSL CODE_20FB1F           ; ExecutePtrShort

PNTR_27C5DD:        dw CODE_27C545                          ; $00 - None
                    dw CODE_27D175                          ; $01 - Hammer
                    dw CODE_27D442                          ; $02 - Boomerang
                    dw CODE_27D508                          ; $03 - Boomerang??
                    dw CODE_27D576                          ; $04 - Nipper Plant fireball
                    dw CODE_27D576                          ; $05 - Venus Fire Trap fireball
                    dw CODE_27D013                          ; $06 - Baby Goomba
                    dw CODE_27CF6B                          ; $07 - Ptooie spiked ball (uninteractable)
                    dw CODE_27CE2B                          ; $08 -
                    dw CODE_27CEC9                          ; $09 -
                    dw CODE_27CD7B                          ; $0A - Wrench
                    dw CODE_27CC31                          ; $0B - Cannonball
                    dw CODE_27D576                          ; $0C - Fire Bros. fireball
                    dw CODE_27C91B                          ; $0D -
                    dw CODE_27CB74                          ; $0E -
                    dw CODE_27CAAE                          ; $0F -
                    dw CODE_27C995                          ; $10 - Magic Wand
                    dw CODE_27C7A7                          ; $11 - Enemy morphed into coin (at level end when there are enemies present)
                    dw CODE_27D576                          ; $12 - 
                    dw CODE_27C7A7                          ; $13 - Brick shatter
                    dw CODE_27C6D6                          ; $14 -
                    dw CODE_27C60F                          ; $15 - Bowser statue laser
                    dw CODE_27D672                          ; $16 - Puff of smoke
                    dw CODE_27DFF2                          ; $17 - Podoboo fire trail
                    dw CODE_27E05B                          ; $18 - Podoboo lava splash

CODE_27C60F:        20 7F C6      JSR CODE_27C67F           ;Draw GFX for laser sprite
CODE_27C612:        A5 9C         LDA $9C                   ;\
CODE_27C614:        D0 44         BNE CODE_27C65A           ;/
CODE_27C616:        BD BF 05      LDA $05BF,x               ;\
CODE_27C619:        18            CLC                       ; |
CODE_27C61A:        69 08         ADC #$08                  ; |Y position decreases by 8 every frame
CODE_27C61C:        9D BF 05      STA $05BF,x               ;/
CODE_27C61F:        B5 E2         LDA $E2,x                 ;\
CODE_27C621:        EB            XBA                       ; |
CODE_27C622:        BD C9 05      LDA $05C9,x               ; |
CODE_27C625:        C2 20         REP #$20                  ; |
CODE_27C627:        38            SEC                       ; |
CODE_27C628:        E9 08 00      SBC #$0008                ; |X position decreases by 8 every frame
CODE_27C62B:        E2 20         SEP #$20                  ; |
CODE_27C62D:        9D C9 05      STA $05C9,x               ; |
CODE_27C630:        EB            XBA                       ; |
CODE_27C631:        95 E2         STA $E2,x                 ;/
CODE_27C633:        20 42 C4      JSR CODE_27C442           ;\Related to detecting solid tile for laser to
CODE_27C636:        90 22         BCC CODE_27C65A           ;/interact with? Return if none found
CODE_27C638:        BD BF 05      LDA $05BF,x               ;\ Prepare smoke image position by altering own position
CODE_27C63B:        29 F0         AND #$F0                  ; |(Extended sprite Y position &= 0xF0) + 0x05
CODE_27C63D:        18            CLC                       ; |
CODE_27C63E:        69 05         ADC #$05                  ; |
CODE_27C640:        9D BF 05      STA $05BF,x               ;/
CODE_27C643:        BD C9 05      LDA $05C9,x               ;\
CODE_27C646:        29 F0         AND #$F0                  ; |(Extended sprite X position &= 0xF0) + 0x0B
CODE_27C648:        69 0B         ADC #$0B                  ; |
CODE_27C64A:        9D C9 05      STA $05C9,x               ;/
CODE_27C64D:        20 7F D3      JSR CODE_27D37F           ;Remove self (store 00 to extended sprite number)
CODE_27C650:        A0 01         LDY #$01                  ;\
CODE_27C652:        B9 9C 1F      LDA $1F9C,y               ; |Search for free slot for smoke image
CODE_27C655:        F0 04         BEQ CODE_27C65B           ; |
CODE_27C657:        88            DEY                       ; |
CODE_27C658:        10 F8         BPL CODE_27C652           ; |
CODE_27C65A:        60            RTS                       ;/

CODE_27C65B:        A9 01         LDA #$01                  ;\Smoke image = smoke
CODE_27C65D:        99 9C 1F      STA $1F9C,y               ;/
CODE_27C660:        BD C9 05      LDA $05C9,x               ;\
CODE_27C663:        38            SEC                       ; |
CODE_27C664:        E9 08         SBC #$08                  ; |Setup smoke image x position
CODE_27C666:        38            SEC                       ; |
CODE_27C667:        ED 10 02      SBC $0210                 ; |
CODE_27C66A:        99 A2 1F      STA $1FA2,y               ;/
CODE_27C66D:        BD BF 05      LDA $05BF,x               ;\
CODE_27C670:        18            CLC                       ; |
CODE_27C671:        69 04         ADC #$04                  ; |Setu smoke image Y position
CODE_27C673:        ED 43 05      SBC $0543                 ; |
CODE_27C676:        99 9F 1F      STA $1F9F,y               ;/
CODE_27C679:        A9 17         LDA #$17                  ;\How long does the smoke image last.
CODE_27C67B:        99 AE 1F      STA $1FAE,y               ;/
CODE_27C67E:        60            RTS                       

CODE_27C67F:        20 28 D7      JSR CODE_27D728           
CODE_27C682:        B5 E2         LDA $E2,x                 
CODE_27C684:        EB            XBA                       
CODE_27C685:        BD C9 05      LDA $05C9,x               
CODE_27C688:        C2 30         REP #$30                  
CODE_27C68A:        38            SEC                       
CODE_27C68B:        ED 10 02      SBC $0210                 
CODE_27C68E:        85 D8         STA $D8                   
CODE_27C690:        E2 20         SEP #$20                  
CODE_27C692:        B4 C6         LDY $C6,x                 
CODE_27C694:        20 16 CE      JSR CODE_27CE16           
CODE_27C697:        B9 00 08      LDA $0800,y               
CODE_27C69A:        99 04 08      STA $0804,y               
CODE_27C69D:        B9 01 08      LDA $0801,y               
CODE_27C6A0:        18            CLC                       
CODE_27C6A1:        69 08         ADC #$08                  
CODE_27C6A3:        99 05 08      STA $0805,y               
CODE_27C6A6:        A9 4A         LDA #$4A                  
CODE_27C6A8:        99 02 08      STA $0802,y               
CODE_27C6AB:        1A            INC A                     
CODE_27C6AC:        99 06 08      STA $0806,y               
CODE_27C6AF:        A5 15         LDA $15                   
CODE_27C6B1:        4A            LSR A                     
CODE_27C6B2:        4A            LSR A                     
CODE_27C6B3:        29 03         AND #$03                  
CODE_27C6B5:        0A            ASL A                     
CODE_27C6B6:        09 21         ORA #$21                  
CODE_27C6B8:        99 03 08      STA $0803,y               
CODE_27C6BB:        99 07 08      STA $0807,y               
CODE_27C6BE:        C2 20         REP #$20                  
CODE_27C6C0:        98            TYA                       
CODE_27C6C1:        4A            LSR A                     
CODE_27C6C2:        4A            LSR A                     
CODE_27C6C3:        A8            TAY                       
CODE_27C6C4:        E2 20         SEP #$20                  
CODE_27C6C6:        A5 D9         LDA $D9                   
CODE_27C6C8:        29 01         AND #$01                  
CODE_27C6CA:        99 20 0A      STA $0A20,y               
CODE_27C6CD:        99 21 0A      STA $0A21,y               
CODE_27C6D0:        E2 10         SEP #$10                  
CODE_27C6D2:        4C 02 D3      JMP CODE_27D302           

CODE_27C6D5:        60            RTS                       

CODE_27C6D6:        A5 9C         LDA $9C                   
CODE_27C6D8:        D0 49         BNE CODE_27C723           
CODE_27C6DA:        A5 15         LDA $15                   
CODE_27C6DC:        29 07         AND #$07                  
CODE_27C6DE:        D0 30         BNE CODE_27C710           
CODE_27C6E0:        BD C7 06      LDA $06C7,x               
CODE_27C6E3:        29 01         AND #$01                  
CODE_27C6E5:        A8            TAY                       
CODE_27C6E6:        BD D3 05      LDA $05D3,x               
CODE_27C6E9:        18            CLC                       
CODE_27C6EA:        79 8E C7      ADC.w DATA_21C78E,y               
CODE_27C6ED:        9D D3 05      STA $05D3,x               
CODE_27C6F0:        D9 90 C7      CMP.w DATA_21C790,y               
CODE_27C6F3:        D0 03         BNE CODE_27C6F8           
CODE_27C6F5:        FE C7 06      INC $06C7,x               
CODE_27C6F8:        BD BD 06      LDA $06BD,x               
CODE_27C6FB:        29 01         AND #$01                  
CODE_27C6FD:        A8            TAY                       
CODE_27C6FE:        BD DD 05      LDA $05DD,x               
CODE_27C701:        18            CLC                       
CODE_27C702:        79 8E C7      ADC.w DATA_21C78E,y               
CODE_27C705:        9D DD 05      STA $05DD,x               
CODE_27C708:        D9 90 C7      CMP.w DATA_21C790,y               
CODE_27C70B:        D0 03         BNE CODE_27C710           
CODE_27C70D:        FE BD 06      INC $06BD,x               
CODE_27C710:        20 E3 D7      JSR CODE_27D7E3           
CODE_27C713:        BD D3 05      LDA $05D3,x               
CODE_27C716:        10 08         BPL CODE_27C720           
CODE_27C718:        20 42 C4      JSR CODE_27C442           
CODE_27C71B:        BD 68 1A      LDA $1A68,x               
CODE_27C71E:        F0 03         BEQ CODE_27C723           
CODE_27C720:        20 0F D8      JSR CODE_27D80F           
CODE_27C723:        BD D1 06      LDA $06D1,x               
CODE_27C726:        F0 7C         BEQ CODE_27C7A4           
CODE_27C728:        C9 30         CMP #$30                  
CODE_27C72A:        B0 04         BCS CODE_27C730                   
CODE_27C72C:        29 02         AND #$02                  
CODE_27C72E:        D0 71         BNE CODE_27C7A1           
CODE_27C730:        20 28 D7      JSR CODE_27D728           
CODE_27C733:        B5 E2         LDA $E2,x                 
CODE_27C735:        EB            XBA                       
CODE_27C736:        BD C9 05      LDA $05C9,x               
CODE_27C739:        C2 20         REP #$20                  
CODE_27C73B:        38            SEC                       
CODE_27C73C:        ED 10 02      SBC $0210                 
CODE_27C73F:        85 D8         STA $D8                   
CODE_27C741:        E2 20         SEP #$20                  
CODE_27C743:        C2 10         REP #$10                  
CODE_27C745:        B4 C6         LDY $C6,x                 
CODE_27C747:        20 16 CE      JSR CODE_27CE16           
CODE_27C74A:        B9 00 08      LDA $0800,y               
CODE_27C74D:        99 04 08      STA $0804,y               
CODE_27C750:        C2 20         REP #$20                  
CODE_27C752:        AD 65 05      LDA $0565                 
CODE_27C755:        4A            LSR A                     
CODE_27C756:        29 0F 00      AND #$000F                
CODE_27C759:        AA            TAX                       
CODE_27C75A:        E2 20         SEP #$20                  
CODE_27C75C:        B9 01 08      LDA $0801,y               
CODE_27C75F:        18            CLC                       
CODE_27C760:        7D 92 C7      ADC.w DATA_21C792,x               
CODE_27C763:        99 01 08      STA $0801,y               
CODE_27C766:        18            CLC                       
CODE_27C767:        69 08         ADC #$08                  
CODE_27C769:        99 05 08      STA $0805,y               
CODE_27C76C:        8A            TXA                       
CODE_27C76D:        C9 08         CMP #$08                  
CODE_27C76F:        A9 B4         LDA #$B4                  
CODE_27C771:        90 02         BCC CODE_27C775           
CODE_27C773:        A9 B6         LDA #$B6                  
CODE_27C775:        99 02 08      STA $0802,y               
CODE_27C778:        1A            INC A                     
CODE_27C779:        99 06 08      STA $0806,y               
CODE_27C77C:        A9 2A         LDA #$2A                  
CODE_27C77E:        99 03 08      STA $0803,y               
CODE_27C781:        99 07 08      STA $0807,y               
CODE_27C784:        C2 20         REP #$20                  
CODE_27C786:        98            TYA                       
CODE_27C787:        4A            LSR A                     
CODE_27C788:        4A            LSR A                     
CODE_27C789:        A8            TAY                       
CODE_27C78A:        E2 20         SEP #$20                  
CODE_27C78C:        A5 D9         LDA $D9                   
CODE_27C78E:        29 01         AND #$01                  
CODE_27C790:        99 20 0A      STA $0A20,y               
CODE_27C793:        99 21 0A      STA $0A21,y               
CODE_27C796:        E2 10         SEP #$10                  
CODE_27C798:        A6 9B         LDX $9B                   
CODE_27C79A:        29 01         AND #$01                  
CODE_27C79C:        D0 03         BNE CODE_27C7A1           
CODE_27C79E:        4C 02 D3      JMP CODE_27D302           

CODE_27C7A1:        E2 20         SEP #$20                  
CODE_27C7A3:        60            RTS                       

CODE_27C7A4:        4C 7F D3      JMP CODE_27D37F           

CODE_27C7A7:        A5 9C         LDA $9C                   
CODE_27C7A9:        D0 21         BNE CODE_27C7CC           
CODE_27C7AB:        FE BD 06      INC $06BD,x               
CODE_27C7AE:        20 1B CC      JSR CODE_27CC1B           
CODE_27C7B1:        BD C8 1F      LDA $1FC8,x               
CODE_27C7B4:        C9 13         CMP #$13                  
CODE_27C7B6:        D0 14         BNE CODE_27C7CC           
CODE_27C7B8:        BD D3 05      LDA $05D3,x               
CODE_27C7BB:        30 04         BMI CODE_27C7C1           
CODE_27C7BD:        C9 70         CMP #$70                  
CODE_27C7BF:        B0 0B         BCS CODE_27C7CC                   
CODE_27C7C1:        BD C7 06      LDA $06C7,x               
CODE_27C7C4:        D0 03         BNE CODE_27C7C9           
CODE_27C7C6:        FE D3 05      INC $05D3,x               
CODE_27C7C9:        FE D3 05      INC $05D3,x               
CODE_27C7CC:        20 28 D7      JSR CODE_27D728           
CODE_27C7CF:        BD D7 1F      LDA $1FD7,x               
CODE_27C7D2:        EB            XBA                       
CODE_27C7D3:        BD BF 05      LDA $05BF,x               
CODE_27C7D6:        C2 20         REP #$20                  
CODE_27C7D8:        38            SEC                       
CODE_27C7D9:        ED 16 02      SBC $0216                 
CODE_27C7DC:        C9 00 01      CMP #$0100                
CODE_27C7DF:        90 05         BCC CODE_27C7E6           
CODE_27C7E1:        C9 F0 FF      CMP #$FFF0                
CODE_27C7E4:        90 BB         BCC CODE_27C7A1           
CODE_27C7E6:        E2 20         SEP #$20                  
CODE_27C7E8:        BD C8 1F      LDA $1FC8,x               
CODE_27C7EB:        C9 13         CMP #$13                  
CODE_27C7ED:        F0 03         BEQ CODE_27C7F2           
CODE_27C7EF:        82 AF 00      BRL CODE_27C8A1           

CODE_27C7F2:        BD C7 06      LDA $06C7,x               
CODE_27C7F5:        F0 51         BEQ CODE_27C848           
CODE_27C7F7:        B5 E2         LDA $E2,x                 
CODE_27C7F9:        EB            XBA                       
CODE_27C7FA:        BD C9 05      LDA $05C9,x               
CODE_27C7FD:        C2 30         REP #$30                  
CODE_27C7FF:        38            SEC                       
CODE_27C800:        ED 10 02      SBC $0210                 
CODE_27C803:        85 D8         STA $D8                   
CODE_27C805:        E2 20         SEP #$20                  
CODE_27C807:        B4 C6         LDY $C6,x                 
CODE_27C809:        20 16 CE      JSR CODE_27CE16           
CODE_27C80C:        A9 4A         LDA #$4A                  
CODE_27C80E:        99 02 08      STA $0802,y               
CODE_27C811:        A9 06         LDA #$06                  
CODE_27C813:        85 00         STA $00                   
CODE_27C815:        BD D1 06      LDA $06D1,x               
CODE_27C818:        F0 0C         BEQ CODE_27C826           
CODE_27C81A:        22 74 AA 27   JSL CODE_27AA74           
CODE_27C81E:        0A            ASL A                     
CODE_27C81F:        85 00         STA $00                   
CODE_27C821:        A9 4B         LDA #$4B                  
CODE_27C823:        99 02 08      STA $0802,y               
CODE_27C826:        AD 65 05      LDA $0565                 
CODE_27C829:        0A            ASL A                     
CODE_27C82A:        0A            ASL A                     
CODE_27C82B:        0A            ASL A                     
CODE_27C82C:        0A            ASL A                     
CODE_27C82D:        29 C0         AND #$C0                  
CODE_27C82F:        09 20         ORA #$20                  
CODE_27C831:        05 00         ORA $00                   
CODE_27C833:        99 03 08      STA $0803,y               
CODE_27C836:        C2 20         REP #$20                  
CODE_27C838:        98            TYA                       
CODE_27C839:        4A            LSR A                     
CODE_27C83A:        4A            LSR A                     
CODE_27C83B:        A8            TAY                       
CODE_27C83C:        E2 20         SEP #$20                  
CODE_27C83E:        A5 D9         LDA $D9                   
CODE_27C840:        29 01         AND #$01                  
CODE_27C842:        99 20 0A      STA $0A20,y               
CODE_27C845:        E2 10         SEP #$10                  
CODE_27C847:        60            RTS                       

CODE_27C848:        B5 E2         LDA $E2,x                 
CODE_27C84A:        EB            XBA                       
CODE_27C84B:        BD C9 05      LDA $05C9,x               
CODE_27C84E:        C2 30         REP #$30                  
CODE_27C850:        38            SEC                       
CODE_27C851:        ED 10 02      SBC $0210                 
CODE_27C854:        85 D8         STA $D8                   
CODE_27C856:        18            CLC                       
CODE_27C857:        69 08 00      ADC #$0008                
CODE_27C85A:        85 DA         STA $DA                   
CODE_27C85C:        E2 20         SEP #$20                  
CODE_27C85E:        B4 C6         LDY $C6,x                 
CODE_27C860:        20 49 CF      JSR CODE_27CF49           
CODE_27C863:        A9 0C         LDA #$0C                  
CODE_27C865:        99 02 08      STA $0802,y               
CODE_27C868:        1A            INC A                     
CODE_27C869:        99 06 08      STA $0806,y               
CODE_27C86C:        1A            INC A                     
CODE_27C86D:        99 0A 08      STA $080A,y               
CODE_27C870:        1A            INC A                     
CODE_27C871:        99 0E 08      STA $080E,y               
CODE_27C874:        A9 20         LDA #$20                  
CODE_27C876:        99 03 08      STA $0803,y               
CODE_27C879:        99 07 08      STA $0807,y               
CODE_27C87C:        99 0B 08      STA $080B,y               
CODE_27C87F:        99 0F 08      STA $080F,y               
CODE_27C882:        C2 20         REP #$20                  
CODE_27C884:        98            TYA                       
CODE_27C885:        4A            LSR A                     
CODE_27C886:        4A            LSR A                     
CODE_27C887:        A8            TAY                       
CODE_27C888:        E2 20         SEP #$20                  
CODE_27C88A:        A5 D9         LDA $D9                   
CODE_27C88C:        29 01         AND #$01                  
CODE_27C88E:        99 20 0A      STA $0A20,y               
CODE_27C891:        99 21 0A      STA $0A21,y               
CODE_27C894:        A5 DB         LDA $DB                   
CODE_27C896:        29 01         AND #$01                  
CODE_27C898:        99 22 0A      STA $0A22,y               
CODE_27C89B:        99 23 0A      STA $0A23,y               
CODE_27C89E:        E2 10         SEP #$10                  
CODE_27C8A0:        60            RTS                       

CODE_27C8A1:        BD D3 05      LDA $05D3,x               
CODE_27C8A4:        C9 20         CMP #$20                  
CODE_27C8A6:        30 0E         BMI CODE_27C8B6           
CODE_27C8A8:        20 7F D3      JSR CODE_27D37F           
CODE_27C8AB:        EE 22 04      INC $0422                 
CODE_27C8AE:        20 DB 8A      JSR CODE_278ADB           
CODE_27C8B1:        A9 89         LDA #$89                  
CODE_27C8B3:        4C 2B CD      JMP CODE_27CD2B           

CODE_27C8B6:        B5 E2         LDA $E2,x                 
CODE_27C8B8:        EB            XBA                       
CODE_27C8B9:        BD C9 05      LDA $05C9,x               
CODE_27C8BC:        C2 30         REP #$30                  
CODE_27C8BE:        38            SEC                       
CODE_27C8BF:        ED 10 02      SBC $0210                 
CODE_27C8C2:        18            CLC                       
CODE_27C8C3:        69 04 00      ADC #$0004                
CODE_27C8C6:        85 D8         STA $D8                   
CODE_27C8C8:        E2 20         SEP #$20                  
CODE_27C8CA:        B4 C6         LDY $C6,x                 
CODE_27C8CC:        20 16 CE      JSR CODE_27CE16           
CODE_27C8CF:        B9 00 08      LDA $0800,y               
CODE_27C8D2:        18            CLC                       
CODE_27C8D3:        69 04         ADC #$04                  
CODE_27C8D5:        99 00 08      STA $0800,y               
CODE_27C8D8:        99 04 08      STA $0804,y               
CODE_27C8DB:        B9 01 08      LDA $0801,y               
CODE_27C8DE:        18            CLC                       
CODE_27C8DF:        69 08         ADC #$08                  
CODE_27C8E1:        99 05 08      STA $0805,y               
CODE_27C8E4:        C2 20         REP #$20                  
CODE_27C8E6:        BD BD 06      LDA $06BD,x               
CODE_27C8E9:        4A            LSR A                     
CODE_27C8EA:        4A            LSR A                     
CODE_27C8EB:        29 03 00      AND #$0003                
CODE_27C8EE:        AA            TAX                       
CODE_27C8EF:        E2 20         SEP #$20                  
CODE_27C8F1:        BD 86 C7      LDA.w DATA_21C786,x               
CODE_27C8F4:        99 02 08      STA $0802,y               
CODE_27C8F7:        1A            INC A                     
CODE_27C8F8:        99 06 08      STA $0806,y               
CODE_27C8FB:        BD 8A C7      LDA.w DATA_21C78A,x               
CODE_27C8FE:        99 03 08      STA $0803,y               
CODE_27C901:        99 07 08      STA $0807,y               
CODE_27C904:        C2 20         REP #$20                  
CODE_27C906:        98            TYA                       
CODE_27C907:        4A            LSR A                     
CODE_27C908:        4A            LSR A                     
CODE_27C909:        A8            TAY                       
CODE_27C90A:        E2 20         SEP #$20                  
CODE_27C90C:        A5 D9         LDA $D9                   
CODE_27C90E:        29 01         AND #$01                  
CODE_27C910:        99 20 0A      STA $0A20,y               
CODE_27C913:        99 21 0A      STA $0A21,y               
CODE_27C916:        E2 10         SEP #$10                  
CODE_27C918:        A6 9B         LDX $9B                   
CODE_27C91A:        60            RTS                       

CODE_27C91B:        BD C7 06      LDA $06C7,x               
CODE_27C91E:        D0 71         BNE CODE_27C991           
CODE_27C920:        BD D1 06      LDA $06D1,x               
CODE_27C923:        F0 6D         BEQ CODE_27C992           
CODE_27C925:        4A            LSR A                     
CODE_27C926:        4A            LSR A                     
CODE_27C927:        4A            LSR A                     
CODE_27C928:        4A            LSR A                     
CODE_27C929:        29 03         AND #$03                  
CODE_27C92B:        A8            TAY                       
CODE_27C92C:        A5 15         LDA $15                   
CODE_27C92E:        39 A2 C7      AND.w DATA_21C7A2,y               
CODE_27C931:        D0 06         BNE CODE_27C939           
CODE_27C933:        20 E3 D7      JSR CODE_27D7E3           
CODE_27C936:        20 0F D8      JSR CODE_27D80F           
CODE_27C939:        20 28 D7      JSR CODE_27D728           
CODE_27C93C:        B5 E2         LDA $E2,x                 
CODE_27C93E:        EB            XBA                       
CODE_27C93F:        BD C9 05      LDA $05C9,x               
CODE_27C942:        C2 30         REP #$30                  
CODE_27C944:        38            SEC                       
CODE_27C945:        ED 10 02      SBC $0210                 
CODE_27C948:        85 D8         STA $D8                   
CODE_27C94A:        E2 20         SEP #$20                  
CODE_27C94C:        B4 C6         LDY $C6,x                 
CODE_27C94E:        20 16 CE      JSR CODE_27CE16           
CODE_27C951:        B9 00 08      LDA $0800,y               
CODE_27C954:        99 04 08      STA $0804,y               
CODE_27C957:        B9 01 08      LDA $0801,y               
CODE_27C95A:        18            CLC                       
CODE_27C95B:        69 08         ADC #$08                  
CODE_27C95D:        99 05 08      STA $0805,y               
CODE_27C960:        A9 3A         LDA #$3A                  
CODE_27C962:        99 02 08      STA $0802,y               
CODE_27C965:        1A            INC A                     
CODE_27C966:        99 06 08      STA $0806,y               
CODE_27C969:        AD 65 05      LDA $0565                 
CODE_27C96C:        4A            LSR A                     
CODE_27C96D:        4A            LSR A                     
CODE_27C96E:        18            CLC                       
CODE_27C96F:        65 9B         ADC $9B                   
CODE_27C971:        29 03         AND #$03                  
CODE_27C973:        0A            ASL A                     
CODE_27C974:        09 21         ORA #$21                  
CODE_27C976:        99 03 08      STA $0803,y               
CODE_27C979:        99 07 08      STA $0807,y               
CODE_27C97C:        C2 20         REP #$20                  
CODE_27C97E:        98            TYA                       
CODE_27C97F:        4A            LSR A                     
CODE_27C980:        4A            LSR A                     
CODE_27C981:        A8            TAY                       
CODE_27C982:        E2 20         SEP #$20                  
CODE_27C984:        A5 D9         LDA $D9                   
CODE_27C986:        29 01         AND #$01                  
CODE_27C988:        99 20 0A      STA $0A20,y               
CODE_27C98B:        99 21 0A      STA $0A21,y               
CODE_27C98E:        E2 10         SEP #$10                  
CODE_27C990:        60            RTS                       

CODE_27C991:        60            RTS                       

CODE_27C992:        4C 7F D3      JMP CODE_27D37F           

CODE_27C995:        A5 9C         LDA $9C                   
CODE_27C997:        D0 5D         BNE CODE_27C9F6           
CODE_27C999:        20 1B CC      JSR CODE_27CC1B           
CODE_27C99C:        DE D3 05      DEC $05D3,x               
CODE_27C99F:        AD FC 1C      LDA $1CFC                 
CODE_27C9A2:        18            CLC                       
CODE_27C9A3:        7D BD 06      ADC $06BD,x               
CODE_27C9A6:        8D FC 1C      STA $1CFC                 
CODE_27C9A9:        90 03         BCC CODE_27C9AE           
CODE_27C9AB:        EE FD 1C      INC $1CFD                 
CODE_27C9AE:        20 42 C4      JSR CODE_27C442           
CODE_27C9B1:        90 43         BCC CODE_27C9F6           
CODE_27C9B3:        BD D3 05      LDA $05D3,x               
CODE_27C9B6:        30 3E         BMI CODE_27C9F6           
CODE_27C9B8:        C9 20         CMP #$20                  
CODE_27C9BA:        90 27         BCC CODE_27C9E3           
CODE_27C9BC:        4A            LSR A                     
CODE_27C9BD:        22 59 A8 27   JSL CODE_27A859           ;Invert Accumulator (8-bit)
CODE_27C9C1:        9D D3 05      STA $05D3,x               
CODE_27C9C4:        DE BF 05      DEC $05BF,x               
CODE_27C9C7:        DE BF 05      DEC $05BF,x               
CODE_27C9CA:        AD FE 1C      LDA $1CFE                 
CODE_27C9CD:        D0 05         BNE CODE_27C9D4           
CODE_27C9CF:        A9 38         LDA #$38                  
CODE_27C9D1:        8D 00 12      STA $1200                 
CODE_27C9D4:        EE FE 1C      INC $1CFE                 
CODE_27C9D7:        BD BD 06      LDA $06BD,x               
CODE_27C9DA:        18            CLC                       
CODE_27C9DB:        69 80         ADC #$80                  
CODE_27C9DD:        9D BD 06      STA $06BD,x               
CODE_27C9E0:        4C F6 C9      JMP CODE_27C9F6           

CODE_27C9E3:        A9 00         LDA #$00                  
CODE_27C9E5:        9D D3 05      STA $05D3,x               
CODE_27C9E8:        8D FD 1C      STA $1CFD                 
CODE_27C9EB:        BD BF 05      LDA $05BF,x               
CODE_27C9EE:        29 F0         AND #$F0                  
CODE_27C9F0:        18            CLC                       
CODE_27C9F1:        69 05         ADC #$05                  
CODE_27C9F3:        9D BF 05      STA $05BF,x               
CODE_27C9F6:        20 28 D7      JSR CODE_27D728           
CODE_27C9F9:        F0 01         BEQ CODE_27C9FC           
CODE_27C9FB:        60            RTS                       

CODE_27C9FC:        B5 E2         LDA $E2,x                 
CODE_27C9FE:        EB            XBA                       
CODE_27C9FF:        B9 C9 05      LDA $05C9,y               
CODE_27CA02:        C2 30         REP #$30                  
CODE_27CA04:        38            SEC                       
CODE_27CA05:        ED 10 02      SBC $0210                 
CODE_27CA08:        85 D8         STA $D8                   
CODE_27CA0A:        18            CLC                       
CODE_27CA0B:        69 08 00      ADC #$0008                
CODE_27CA0E:        85 DA         STA $DA                   
CODE_27CA10:        E2 20         SEP #$20                  
CODE_27CA12:        B4 C6         LDY $C6,x                 
CODE_27CA14:        20 49 CF      JSR CODE_27CF49           
CODE_27CA17:        B9 01 08      LDA $0801,y               
CODE_27CA1A:        E9 04         SBC #$04                  
CODE_27CA1C:        99 01 08      STA $0801,y               
CODE_27CA1F:        99 09 08      STA $0809,y               
CODE_27CA22:        18            CLC                       
CODE_27CA23:        69 08         ADC #$08                  
CODE_27CA25:        99 05 08      STA $0805,y               
CODE_27CA28:        99 0D 08      STA $080D,y               
CODE_27CA2B:        C2 20         REP #$20                  
CODE_27CA2D:        AD FE 1C      LDA $1CFE                 
CODE_27CA30:        29 FF 00      AND #$00FF                
CODE_27CA33:        4A            LSR A                     
CODE_27CA34:        AD FD 1C      LDA $1CFD                 
CODE_27CA37:        29 07 00      AND #$0007                
CODE_27CA3A:        90 03         BCC CODE_27CA3F           
CODE_27CA3C:        49 07 00      EOR #$0007                
CODE_27CA3F:        29 FF 00      AND #$00FF                
CODE_27CA42:        AA            TAX                       
CODE_27CA43:        E2 20         SEP #$20                  
CODE_27CA45:        BD A6 C7      LDA.w DATA_21C7A6,x               
CODE_27CA48:        99 02 08      STA $0802,y               
CODE_27CA4B:        1A            INC A                     
CODE_27CA4C:        99 06 08      STA $0806,y               
CODE_27CA4F:        BD AE C7      LDA.w DATA_21C7AE,x               
CODE_27CA52:        99 0A 08      STA $080A,y               
CODE_27CA55:        1A            INC A                     
CODE_27CA56:        99 0E 08      STA $080E,y               
CODE_27CA59:        BD B6 C7      LDA.w DATA_21C7B6,x               
CODE_27CA5C:        99 03 08      STA $0803,y               
CODE_27CA5F:        99 07 08      STA $0807,y               
CODE_27CA62:        09 40         ORA #$40                  
CODE_27CA64:        99 0B 08      STA $080B,y               
CODE_27CA67:        99 0F 08      STA $080F,y               
CODE_27CA6A:        29 80         AND #$80                  
CODE_27CA6C:        F0 1C         BEQ CODE_27CA8A           
CODE_27CA6E:        B9 02 08      LDA $0802,y               
CODE_27CA71:        1A            INC A                     
CODE_27CA72:        99 02 08      STA $0802,y               
CODE_27CA75:        B9 06 08      LDA $0806,y               
CODE_27CA78:        3A            DEC A                     
CODE_27CA79:        99 06 08      STA $0806,y               
CODE_27CA7C:        B9 0A 08      LDA $080A,y               
CODE_27CA7F:        1A            INC A                     
CODE_27CA80:        99 0A 08      STA $080A,y               
CODE_27CA83:        B9 0E 08      LDA $080E,y               
CODE_27CA86:        3A            DEC A                     
CODE_27CA87:        99 0E 08      STA $080E,y               
CODE_27CA8A:        C2 20         REP #$20                  
CODE_27CA8C:        98            TYA                       
CODE_27CA8D:        4A            LSR A                     
CODE_27CA8E:        4A            LSR A                     
CODE_27CA8F:        A8            TAY                       
CODE_27CA90:        E2 20         SEP #$20                  
CODE_27CA92:        A5 D9         LDA $D9                   
CODE_27CA94:        29 01         AND #$01                  
CODE_27CA96:        99 20 0A      STA $0A20,y               
CODE_27CA99:        99 21 0A      STA $0A21,y               
CODE_27CA9C:        A5 DB         LDA $DB                   
CODE_27CA9E:        29 01         AND #$01                  
CODE_27CAA0:        99 22 0A      STA $0A22,y               
CODE_27CAA3:        99 23 0A      STA $0A23,y               
CODE_27CAA6:        E2 10         SEP #$10                  
CODE_27CAA8:        A6 9B         LDX $9B                   
CODE_27CAAA:        4C 02 D3      JMP CODE_27D302           

CODE_27CAAD:        60            RTS                       

CODE_27CAAE:        A5 9C         LDA $9C                   
CODE_27CAB0:        D0 53         BNE CODE_27CB05           
CODE_27CAB2:        BD 97 05      LDA $0597,x               
CODE_27CAB5:        F0 08         BEQ CODE_27CABF           
CODE_27CAB7:        A5 15         LDA $15                   
CODE_27CAB9:        4A            LSR A                     
CODE_27CABA:        90 03         BCC CODE_27CABF           
CODE_27CABC:        DE 97 05      DEC $0597,x               
CODE_27CABF:        BD C7 06      LDA $06C7,x               
CODE_27CAC2:        F0 35         BEQ CODE_27CAF9           
CODE_27CAC4:        BC BD 06      LDY $06BD,x               
CODE_27CAC7:        B9 61 06      LDA $0661,y               
CODE_27CACA:        C9 02         CMP #$02                  
CODE_27CACC:        D0 21         BNE CODE_27CAEF           
CODE_27CACE:        B9 71 06      LDA $0671,y               
CODE_27CAD1:        C9 67         CMP #$67                  
CODE_27CAD3:        D0 1A         BNE CODE_27CAEF           
CODE_27CAD5:        B9 68 00      LDA $0068,y               
CODE_27CAD8:        C9 4F         CMP #$4F                  
CODE_27CADA:        90 13         BCC CODE_27CAEF           
CODE_27CADC:        AD 65 05      LDA $0565                 
CODE_27CADF:        FE C9 05      INC $05C9,x               
CODE_27CAE2:        29 02         AND #$02                  
CODE_27CAE4:        D0 06         BNE CODE_27CAEC           
CODE_27CAE6:        DE C9 05      DEC $05C9,x               
CODE_27CAE9:        DE C9 05      DEC $05C9,x               
CODE_27CAEC:        4C 05 CB      JMP CODE_27CB05           

CODE_27CAEF:        A9 00         LDA #$00                  
CODE_27CAF1:        9D C7 06      STA $06C7,x               
CODE_27CAF4:        A9 C0         LDA #$C0                  
CODE_27CAF6:        9D 97 05      STA $0597,x               
CODE_27CAF9:        A5 15         LDA $15                   
CODE_27CAFB:        29 03         AND #$03                  
CODE_27CAFD:        D0 06         BNE CODE_27CB05           
CODE_27CAFF:        20 E3 D7      JSR CODE_27D7E3           
CODE_27CB02:        20 0F D8      JSR CODE_27D80F           
CODE_27CB05:        BD 97 05      LDA $0597,x               
CODE_27CB08:        D0 03         BNE CODE_27CB0D           
CODE_27CB0A:        4C 7F D3      JMP CODE_27D37F           

CODE_27CB0D:        C9 30         CMP #$30                  
CODE_27CB0F:        B0 09         BCS CODE_27CB1A                   
CODE_27CB11:        8A            TXA                       
CODE_27CB12:        0A            ASL A                     
CODE_27CB13:        7D 97 05      ADC $0597,x               
CODE_27CB16:        29 02         AND #$02                  
CODE_27CB18:        D0 59         BNE CODE_27CB73           
CODE_27CB1A:        20 28 D7      JSR CODE_27D728           
CODE_27CB1D:        B5 E2         LDA $E2,x                 
CODE_27CB1F:        EB            XBA                       
CODE_27CB20:        BD C9 05      LDA $05C9,x               
CODE_27CB23:        C2 30         REP #$30                  
CODE_27CB25:        38            SEC                       
CODE_27CB26:        ED 10 02      SBC $0210                 
CODE_27CB29:        85 D8         STA $D8                   
CODE_27CB2B:        E2 20         SEP #$20                  
CODE_27CB2D:        B4 C6         LDY $C6,x                 
CODE_27CB2F:        20 16 CE      JSR CODE_27CE16           
CODE_27CB32:        B9 00 08      LDA $0800,y               
CODE_27CB35:        99 04 08      STA $0804,y               
CODE_27CB38:        B9 01 08      LDA $0801,y               
CODE_27CB3B:        18            CLC                       
CODE_27CB3C:        69 08         ADC #$08                  
CODE_27CB3E:        99 05 08      STA $0805,y               
CODE_27CB41:        AD 65 05      LDA $0565                 
CODE_27CB44:        4A            LSR A                     
CODE_27CB45:        4A            LSR A                     
CODE_27CB46:        4A            LSR A                     
CODE_27CB47:        A9 18         LDA #$18                  
CODE_27CB49:        90 02         BCC CODE_27CB4D           
CODE_27CB4B:        A9 1A         LDA #$1A                  
CODE_27CB4D:        99 02 08      STA $0802,y               
CODE_27CB50:        1A            INC A                     
CODE_27CB51:        99 06 08      STA $0806,y               
CODE_27CB54:        A9 23         LDA #$23                  
CODE_27CB56:        99 03 08      STA $0803,y               
CODE_27CB59:        99 07 08      STA $0807,y               
CODE_27CB5C:        C2 20         REP #$20                  
CODE_27CB5E:        98            TYA                       
CODE_27CB5F:        4A            LSR A                     
CODE_27CB60:        4A            LSR A                     
CODE_27CB61:        A8            TAY                       
CODE_27CB62:        E2 20         SEP #$20                  
CODE_27CB64:        A5 D9         LDA $D9                   
CODE_27CB66:        29 01         AND #$01                  
CODE_27CB68:        99 20 0A      STA $0A20,y               
CODE_27CB6B:        99 21 0A      STA $0A21,y               
CODE_27CB6E:        E2 10         SEP #$10                  
CODE_27CB70:        4C 02 D3      JMP CODE_27D302           

CODE_27CB73:        60            RTS                       

CODE_27CB74:        A5 9C         LDA $9C                   
CODE_27CB76:        D0 3F         BNE CODE_27CBB7           
CODE_27CB78:        BD D1 06      LDA $06D1,x               
CODE_27CB7B:        D0 03         BNE CODE_27CB80           
CODE_27CB7D:        4C 7F D3      JMP CODE_27D37F           

CODE_27CB80:        BD C7 06      LDA $06C7,x               
CODE_27CB83:        D0 20         BNE CODE_27CBA5           
CODE_27CB85:        20 0F D8      JSR CODE_27D80F           
CODE_27CB88:        BD D3 05      LDA $05D3,x               
CODE_27CB8B:        30 0A         BMI CODE_27CB97           
CODE_27CB8D:        38            SEC                       
CODE_27CB8E:        E9 07         SBC #$07                  
CODE_27CB90:        9D D3 05      STA $05D3,x               
CODE_27CB93:        10 0D         BPL CODE_27CBA2           
CODE_27CB95:        30 08         BMI CODE_27CB9F           
CODE_27CB97:        18            CLC                       
CODE_27CB98:        69 07         ADC #$07                  
CODE_27CB9A:        9D D3 05      STA $05D3,x               
CODE_27CB9D:        30 03         BMI CODE_27CBA2           
CODE_27CB9F:        FE C7 06      INC $06C7,x               
CODE_27CBA2:        4C B7 CB      JMP CODE_27CBB7           

CODE_27CBA5:        FE BD 06      INC $06BD,x               
CODE_27CBA8:        BD BD 06      LDA $06BD,x               
CODE_27CBAB:        29 30         AND #$30                  
CODE_27CBAD:        F0 08         BEQ CODE_27CBB7           
CODE_27CBAF:        DE BF 05      DEC $05BF,x               
CODE_27CBB2:        D0 03         BNE CODE_27CBB7           
CODE_27CBB4:        DE D7 1F      DEC $1FD7,x               
CODE_27CBB7:        AD 65 05      LDA $0565                 
CODE_27CBBA:        29 0C         AND #$0C                  
CODE_27CBBC:        4A            LSR A                     
CODE_27CBBD:        4A            LSR A                     
CODE_27CBBE:        A8            TAY                       
CODE_27CBBF:        B9 31 C7      LDA.w DATA_21C731,y               
CODE_27CBC2:        85 00         STA $00                   
CODE_27CBC4:        20 28 D7      JSR CODE_27D728           
CODE_27CBC7:        B5 E2         LDA $E2,x                 
CODE_27CBC9:        EB            XBA                       
CODE_27CBCA:        BD C9 05      LDA $05C9,x               
CODE_27CBCD:        C2 30         REP #$30                  
CODE_27CBCF:        38            SEC                       
CODE_27CBD0:        ED 10 02      SBC $0210                 
CODE_27CBD3:        85 D8         STA $D8                   
CODE_27CBD5:        E2 20         SEP #$20                  
CODE_27CBD7:        B4 C6         LDY $C6,x                 
CODE_27CBD9:        20 16 CE      JSR CODE_27CE16           
CODE_27CBDC:        B9 01 08      LDA $0801,y               
CODE_27CBDF:        18            CLC                       
CODE_27CBE0:        69 08         ADC #$08                  
CODE_27CBE2:        99 05 08      STA $0805,y               
CODE_27CBE5:        BD C9 05      LDA $05C9,x               
CODE_27CBE8:        18            CLC                       
CODE_27CBE9:        65 00         ADC $00                   
CODE_27CBEB:        38            SEC                       
CODE_27CBEC:        ED 10 02      SBC $0210                 
CODE_27CBEF:        99 00 08      STA $0800,y               
CODE_27CBF2:        99 04 08      STA $0804,y               
CODE_27CBF5:        A9 C6         LDA #$C6                  
CODE_27CBF7:        99 02 08      STA $0802,y               
CODE_27CBFA:        1A            INC A                     
CODE_27CBFB:        99 06 08      STA $0806,y               
CODE_27CBFE:        A9 23         LDA #$23                  
CODE_27CC00:        99 03 08      STA $0803,y               
CODE_27CC03:        99 07 08      STA $0807,y               
CODE_27CC06:        C2 20         REP #$20                  
CODE_27CC08:        98            TYA                       
CODE_27CC09:        4A            LSR A                     
CODE_27CC0A:        4A            LSR A                     
CODE_27CC0B:        A8            TAY                       
CODE_27CC0C:        E2 20         SEP #$20                  
CODE_27CC0E:        A5 D9         LDA $D9                   
CODE_27CC10:        29 01         AND #$01                  
CODE_27CC12:        99 20 0A      STA $0A20,y               
CODE_27CC15:        99 21 0A      STA $0A21,y               
CODE_27CC18:        E2 10         SEP #$10                  
CODE_27CC1A:        60            RTS                       

CODE_27CC1B:        20 E3 D7      JSR CODE_27D7E3           
CODE_27CC1E:        20 0F D8      JSR CODE_27D80F           
CODE_27CC21:        BD D3 05      LDA $05D3,x               
CODE_27CC24:        30 04         BMI CODE_27CC2A           
CODE_27CC26:        C9 6E         CMP #$6E                  
CODE_27CC28:        B0 06         BCS CODE_27CC30                   
CODE_27CC2A:        FE D3 05      INC $05D3,x               
CODE_27CC2D:        FE D3 05      INC $05D3,x               
CODE_27CC30:        60            RTS                       

CODE_27CC31:        A5 9C         LDA $9C                   
CODE_27CC33:        D0 11         BNE CODE_27CC46           
CODE_27CC35:        20 1B CC      JSR CODE_27CC1B           
CODE_27CC38:        20 5F CD      JSR CODE_27CD5F           
CODE_27CC3B:        BD C7 06      LDA $06C7,x               
CODE_27CC3E:        D0 06         BNE CODE_27CC46           
CODE_27CC40:        DE D3 05      DEC $05D3,x               
CODE_27CC43:        DE D3 05      DEC $05D3,x               
CODE_27CC46:        20 28 D7      JSR CODE_27D728           
CODE_27CC49:        D0 E5         BNE CODE_27CC30           
CODE_27CC4B:        B5 E2         LDA $E2,x                 
CODE_27CC4D:        EB            XBA                       
CODE_27CC4E:        BD C9 05      LDA $05C9,x               
CODE_27CC51:        C2 30         REP #$30                  
CODE_27CC53:        38            SEC                       
CODE_27CC54:        ED 10 02      SBC $0210                 
CODE_27CC57:        85 D8         STA $D8                   
CODE_27CC59:        18            CLC                       
CODE_27CC5A:        69 08 00      ADC #$0008                
CODE_27CC5D:        85 DA         STA $DA                   
CODE_27CC5F:        E2 20         SEP #$20                  
CODE_27CC61:        B4 C6         LDY $C6,x                 
CODE_27CC63:        20 49 CF      JSR CODE_27CF49           
CODE_27CC66:        A9 2A         LDA #$2A                  
CODE_27CC68:        99 03 08      STA $0803,y               
CODE_27CC6B:        99 07 08      STA $0807,y               
CODE_27CC6E:        99 0B 08      STA $080B,y               
CODE_27CC71:        99 0F 08      STA $080F,y               
CODE_27CC74:        A9 CE         LDA #$CE                  
CODE_27CC76:        99 0A 08      STA $080A,y               
CODE_27CC79:        1A            INC A                     
CODE_27CC7A:        99 0E 08      STA $080E,y               
CODE_27CC7D:        A9 CC         LDA #$CC                  
CODE_27CC7F:        99 02 08      STA $0802,y               
CODE_27CC82:        1A            INC A                     
CODE_27CC83:        99 06 08      STA $0806,y               
CODE_27CC86:        C2 20         REP #$20                  
CODE_27CC88:        98            TYA                       
CODE_27CC89:        4A            LSR A                     
CODE_27CC8A:        4A            LSR A                     
CODE_27CC8B:        A8            TAY                       
CODE_27CC8C:        E2 20         SEP #$20                  
CODE_27CC8E:        A5 D9         LDA $D9                   
CODE_27CC90:        29 01         AND #$01                  
CODE_27CC92:        99 20 0A      STA $0A20,y               
CODE_27CC95:        99 21 0A      STA $0A21,y               
CODE_27CC98:        A5 DB         LDA $DB                   
CODE_27CC9A:        29 01         AND #$01                  
CODE_27CC9C:        99 22 0A      STA $0A22,y               
CODE_27CC9F:        99 23 0A      STA $0A23,y               
CODE_27CCA2:        E2 10         SEP #$10                  
CODE_27CCA4:        BD C7 06      LDA $06C7,x               
CODE_27CCA7:        0D BF 00      ORA $00BF                 
CODE_27CCAA:        0D 83 05      ORA $0583                 
CODE_27CCAD:        D0 76         BNE CODE_27CD25           
CODE_27CCAF:        A0 00         LDY #$00                  
CODE_27CCB1:        A5 BB         LDA $BB                   
CODE_27CCB3:        F0 06         BEQ CODE_27CCBB           
CODE_27CCB5:        AD 6F 05      LDA $056F                 
CODE_27CCB8:        D0 01         BNE CODE_27CCBB           
CODE_27CCBA:        C8            INY                       
CODE_27CCBB:        BD BF 05      LDA $05BF,x               
CODE_27CCBE:        38            SEC                       
CODE_27CCBF:        E5 70         SBC $70                   
CODE_27CCC1:        38            SEC                       
CODE_27CCC2:        F9 BE C7      SBC.w DATA_21C7BE,y               
CODE_27CCC5:        D9 C0 C7      CMP.w DATA_21C7C0,y               
CODE_27CCC8:        B0 5B         BCS CODE_27CD25                   
CODE_27CCCA:        BD C9 05      LDA $05C9,x               
CODE_27CCCD:        18            CLC                       
CODE_27CCCE:        69 08         ADC #$08                  
CODE_27CCD0:        38            SEC                       
CODE_27CCD1:        E5 5E         SBC $5E                   
CODE_27CCD3:        C9 14         CMP #$14                  
CODE_27CCD5:        B0 4E         BCS CODE_27CD25                   
CODE_27CCD7:        AD 53 05      LDA $0553                 
CODE_27CCDA:        D0 2D         BNE CODE_27CD09           
CODE_27CCDC:        A5 9D         LDA $9D                   
CODE_27CCDE:        30 42         BMI CODE_27CD22           
CODE_27CCE0:        BD D7 1F      LDA $1FD7,x               
CODE_27CCE3:        EB            XBA                       
CODE_27CCE4:        BD BF 05      LDA $05BF,x               
CODE_27CCE7:        C2 20         REP #$20                  
CODE_27CCE9:        38            SEC                       
CODE_27CCEA:        ED 16 02      SBC $0216                 
CODE_27CCED:        38            SEC                       
CODE_27CCEE:        E9 13 00      SBC #$0013                
CODE_27CCF1:        85 D8         STA $D8                   
CODE_27CCF3:        E2 20         SEP #$20                  
CODE_27CCF5:        C5 82         CMP $82                   
CODE_27CCF7:        08            PHP                       
CODE_27CCF8:        AC 44 05      LDY $0544                 
CODE_27CCFB:        10 09         BPL CODE_27CD06           
CODE_27CCFD:        A4 D9         LDY $D9                   
CODE_27CCFF:        30 05         BMI CODE_27CD06           
CODE_27CD01:        28            PLP                       
CODE_27CD02:        B0 1E         BCS CODE_27CD22                   
CODE_27CD04:        80 03         BRA CODE_27CD09           

CODE_27CD06:        28            PLP                       
CODE_27CD07:        90 19         BCC CODE_27CD22           
CODE_27CD09:        A9 01         LDA #$01                  
CODE_27CD0B:        9D C7 06      STA $06C7,x               
CODE_27CD0E:        A9 00         LDA #$00                  
CODE_27CD10:        9D DD 05      STA $05DD,x               
CODE_27CD13:        9D D3 05      STA $05D3,x               
CODE_27CD16:        A9 D0         LDA #$D0                  
CODE_27CD18:        85 9D         STA $9D                   
CODE_27CD1A:        A9 02         LDA #$02                  
CODE_27CD1C:        8D 00 12      STA $1200                 
CODE_27CD1F:        4C 26 CD      JMP CODE_27CD26           

CODE_27CD22:        4C 36 D3      JMP CODE_27D336           

CODE_27CD25:        60            RTS                       

CODE_27CD26:        20 DB 8A      JSR CODE_278ADB           
CODE_27CD29:        A9 85         LDA #$85                  
CODE_27CD2B:        18            CLC                       
CODE_27CD2C:        6D F4 05      ADC $05F4                 
CODE_27CD2F:        99 9F 07      STA $079F,y               
CODE_27CD32:        EE F4 05      INC $05F4                 
CODE_27CD35:        A9 30         LDA #$30                  
CODE_27CD37:        99 A4 07      STA $07A4,y               
CODE_27CD3A:        BD BF 05      LDA $05BF,x               
CODE_27CD3D:        38            SEC                       
CODE_27CD3E:        ED 43 05      SBC $0543                 
CODE_27CD41:        E9 06         SBC #$06                  
CODE_27CD43:        C9 C0         CMP #$C0                  
CODE_27CD45:        90 02         BCC CODE_27CD49           
CODE_27CD47:        A9 05         LDA #$05                  
CODE_27CD49:        99 A9 07      STA $07A9,y               
CODE_27CD4C:        BD C9 05      LDA $05C9,x               
CODE_27CD4F:        38            SEC                       
CODE_27CD50:        ED 10 02      SBC $0210                 
CODE_27CD53:        99 AE 07      STA $07AE,y               
CODE_27CD56:        B5 E2         LDA $E2,x                 
CODE_27CD58:        ED 11 02      SBC $0211                 
CODE_27CD5B:        99 51 02      STA $0251,y               
CODE_27CD5E:        60            RTS                       

CODE_27CD5F:        AD FC 05      LDA $05FC                 
CODE_27CD62:        F0 16         BEQ CODE_27CD7A           
CODE_27CD64:        A0 00         LDY #$00                  
CODE_27CD66:        AD 80 07      LDA $0780                 
CODE_27CD69:        10 01         BPL CODE_27CD6C           
CODE_27CD6B:        88            DEY                       
CODE_27CD6C:        18            CLC                       
CODE_27CD6D:        7D BF 05      ADC $05BF,x               
CODE_27CD70:        9D BF 05      STA $05BF,x               
CODE_27CD73:        98            TYA                       
CODE_27CD74:        7D D7 1F      ADC $1FD7,x               
CODE_27CD77:        9D D7 1F      STA $1FD7,x               
CODE_27CD7A:        60            RTS                       

CODE_27CD7B:        A5 9C         LDA $9C                   
CODE_27CD7D:        D0 11         BNE CODE_27CD90           
CODE_27CD7F:        20 5F CD      JSR CODE_27CD5F           
CODE_27CD82:        20 E3 D7      JSR CODE_27D7E3           
CODE_27CD85:        BD D3 05      LDA $05D3,x               
CODE_27CD88:        F0 03         BEQ CODE_27CD8D           
CODE_27CD8A:        FE D3 05      INC $05D3,x               
CODE_27CD8D:        20 0F D8      JSR CODE_27D80F           
CODE_27CD90:        20 02 D3      JSR CODE_27D302           
CODE_27CD93:        20 28 D7      JSR CODE_27D728           
CODE_27CD96:        D0 7D         BNE CODE_27CE15           
CODE_27CD98:        BD DD 05      LDA $05DD,x               
CODE_27CD9B:        29 80         AND #$80                  
CODE_27CD9D:        85 00         STA $00                   
CODE_27CD9F:        B5 E2         LDA $E2,x                 
CODE_27CDA1:        EB            XBA                       
CODE_27CDA2:        BD C9 05      LDA $05C9,x               
CODE_27CDA5:        C2 30         REP #$30                  
CODE_27CDA7:        38            SEC                       
CODE_27CDA8:        ED 10 02      SBC $0210                 
CODE_27CDAB:        85 D8         STA $D8                   
CODE_27CDAD:        B4 C6         LDY $C6,x                 
CODE_27CDAF:        AD 65 05      LDA $0565                 
CODE_27CDB2:        4A            LSR A                     
CODE_27CDB3:        18            CLC                       
CODE_27CDB4:        65 9B         ADC $9B                   
CODE_27CDB6:        29 03 00      AND #$0003                
CODE_27CDB9:        AA            TAX                       
CODE_27CDBA:        E2 20         SEP #$20                  
CODE_27CDBC:        BD C2 C7      LDA.w DATA_21C7C2,x               
CODE_27CDBF:        99 02 08      STA $0802,y               
CODE_27CDC2:        1A            INC A                     
CODE_27CDC3:        99 06 08      STA $0806,y               
CODE_27CDC6:        BD C6 C7      LDA.w DATA_21C7C6,x               
CODE_27CDC9:        45 00         EOR $00                   
CODE_27CDCB:        09 20         ORA #$20                  
CODE_27CDCD:        99 03 08      STA $0803,y               
CODE_27CDD0:        99 07 08      STA $0807,y               
CODE_27CDD3:        29 80         AND #$80                  
CODE_27CDD5:        F0 0E         BEQ CODE_27CDE5           
CODE_27CDD7:        B9 02 08      LDA $0802,y               
CODE_27CDDA:        48            PHA                       
CODE_27CDDB:        B9 06 08      LDA $0806,y               
CODE_27CDDE:        99 02 08      STA $0802,y               
CODE_27CDE1:        68            PLA                       
CODE_27CDE2:        99 06 08      STA $0806,y               
CODE_27CDE5:        C2 20         REP #$20                  
CODE_27CDE7:        A5 9B         LDA $9B                   
CODE_27CDE9:        29 FF 00      AND #$00FF                
CODE_27CDEC:        AA            TAX                       
CODE_27CDED:        E2 20         SEP #$20                  
CODE_27CDEF:        20 16 CE      JSR CODE_27CE16           
CODE_27CDF2:        B9 00 08      LDA $0800,y               
CODE_27CDF5:        99 04 08      STA $0804,y               
CODE_27CDF8:        B9 01 08      LDA $0801,y               
CODE_27CDFB:        18            CLC                       
CODE_27CDFC:        69 08         ADC #$08                  
CODE_27CDFE:        99 05 08      STA $0805,y               
CODE_27CE01:        C2 20         REP #$20                  
CODE_27CE03:        98            TYA                       
CODE_27CE04:        4A            LSR A                     
CODE_27CE05:        4A            LSR A                     
CODE_27CE06:        A8            TAY                       
CODE_27CE07:        E2 20         SEP #$20                  
CODE_27CE09:        A5 D9         LDA $D9                   
CODE_27CE0B:        29 01         AND #$01                  
CODE_27CE0D:        99 20 0A      STA $0A20,y               
CODE_27CE10:        99 21 0A      STA $0A21,y               
CODE_27CE13:        E2 10         SEP #$10                  
CODE_27CE15:        60            RTS                       

CODE_27CE16:        BD BF 05      LDA $05BF,x               
CODE_27CE19:        38            SEC                       
CODE_27CE1A:        ED 43 05      SBC $0543                 
CODE_27CE1D:        99 01 08      STA $0801,y               
CODE_27CE20:        BD C9 05      LDA $05C9,x               
CODE_27CE23:        38            SEC                       
CODE_27CE24:        ED 10 02      SBC $0210                 
CODE_27CE27:        99 00 08      STA $0800,y               
CODE_27CE2A:        60            RTS                       

CODE_27CE2B:        A5 9C         LDA $9C                   
CODE_27CE2D:        D0 06         BNE CODE_27CE35           
CODE_27CE2F:        20 E3 D7      JSR CODE_27D7E3           
CODE_27CE32:        20 0F D8      JSR CODE_27D80F           
CODE_27CE35:        20 28 D7      JSR CODE_27D728           
CODE_27CE38:        B5 E2         LDA $E2,x                 
CODE_27CE3A:        EB            XBA                       
CODE_27CE3B:        BD C9 05      LDA $05C9,x               
CODE_27CE3E:        C2 30         REP #$30                  
CODE_27CE40:        38            SEC                       
CODE_27CE41:        ED 10 02      SBC $0210                 
CODE_27CE44:        85 D8         STA $D8                   
CODE_27CE46:        B4 C6         LDY $C6,x                 
CODE_27CE48:        BD D1 06      LDA $06D1,x               
CODE_27CE4B:        29 FF 00      AND #$00FF                
CODE_27CE4E:        AA            TAX                       
CODE_27CE4F:        E2 20         SEP #$20                  
CODE_27CE51:        A9 BE         LDA #$BE                  
CODE_27CE53:        E0 E0 00      CPX #$00E0                
CODE_27CE56:        B0 09         BCS CODE_27CE61                   
CODE_27CE58:        A9 BA         LDA #$BA                  
CODE_27CE5A:        E0 C0 00      CPX #$00C0                
CODE_27CE5D:        B0 02         BCS CODE_27CE61                   
CODE_27CE5F:        A9 BC         LDA #$BC                  
CODE_27CE61:        99 02 08      STA $0802,y               
CODE_27CE64:        1A            INC A                     
CODE_27CE65:        99 06 08      STA $0806,y               
CODE_27CE68:        C2 20         REP #$20                  
CODE_27CE6A:        A5 9B         LDA $9B                   
CODE_27CE6C:        29 FF 00      AND #$00FF                
CODE_27CE6F:        AA            TAX                       
CODE_27CE70:        E2 20         SEP #$20                  
CODE_27CE72:        20 16 CE      JSR CODE_27CE16           
CODE_27CE75:        B9 01 08      LDA $0801,y               
CODE_27CE78:        18            CLC                       
CODE_27CE79:        69 08         ADC #$08                  
CODE_27CE7B:        99 05 08      STA $0805,y               
CODE_27CE7E:        B9 00 08      LDA $0800,y               
CODE_27CE81:        99 04 08      STA $0804,y               
CODE_27CE84:        8A            TXA                       
CODE_27CE85:        4A            LSR A                     
CODE_27CE86:        6A            ROR A                     
CODE_27CE87:        29 80         AND #$80                  
CODE_27CE89:        85 00         STA $00                   
CODE_27CE8B:        A5 15         LDA $15                   
CODE_27CE8D:        4A            LSR A                     
CODE_27CE8E:        4A            LSR A                     
CODE_27CE8F:        4A            LSR A                     
CODE_27CE90:        6A            ROR A                     
CODE_27CE91:        29 80         AND #$80                  
CODE_27CE93:        09 22         ORA #$22                  
CODE_27CE95:        45 00         EOR $00                   
CODE_27CE97:        99 03 08      STA $0803,y               
CODE_27CE9A:        99 07 08      STA $0807,y               
CODE_27CE9D:        29 80         AND #$80                  
CODE_27CE9F:        F0 0E         BEQ CODE_27CEAF           
CODE_27CEA1:        B9 02 08      LDA $0802,y               
CODE_27CEA4:        48            PHA                       
CODE_27CEA5:        B9 06 08      LDA $0806,y               
CODE_27CEA8:        99 02 08      STA $0802,y               
CODE_27CEAB:        68            PLA                       
CODE_27CEAC:        99 06 08      STA $0806,y               
CODE_27CEAF:        5A            PHY                       
CODE_27CEB0:        C2 20         REP #$20                  
CODE_27CEB2:        98            TYA                       
CODE_27CEB3:        4A            LSR A                     
CODE_27CEB4:        4A            LSR A                     
CODE_27CEB5:        A8            TAY                       
CODE_27CEB6:        E2 20         SEP #$20                  
CODE_27CEB8:        A5 D9         LDA $D9                   
CODE_27CEBA:        29 01         AND #$01                  
CODE_27CEBC:        99 20 0A      STA $0A20,y               
CODE_27CEBF:        99 21 0A      STA $0A21,y               
CODE_27CEC2:        7A            PLY                       
CODE_27CEC3:        E2 10         SEP #$10                  
CODE_27CEC5:        4C 02 D3      JMP CODE_27D302           

CODE_27CEC8:        60            RTS                       

CODE_27CEC9:        A5 9C         LDA $9C                   
CODE_27CECB:        D0 03         BNE CODE_27CED0           
CODE_27CECD:        20 1B CC      JSR CODE_27CC1B           
CODE_27CED0:        20 28 D7      JSR CODE_27D728           
CODE_27CED3:        B5 E2         LDA $E2,x                 
CODE_27CED5:        EB            XBA                       
CODE_27CED6:        BD C9 05      LDA $05C9,x               
CODE_27CED9:        C2 30         REP #$30                  
CODE_27CEDB:        38            SEC                       
CODE_27CEDC:        ED 10 02      SBC $0210                 
CODE_27CEDF:        85 D8         STA $D8                   
CODE_27CEE1:        18            CLC                       
CODE_27CEE2:        69 08 00      ADC #$0008                
CODE_27CEE5:        85 DA         STA $DA                   
CODE_27CEE7:        B4 C6         LDY $C6,x                 
CODE_27CEE9:        BD C7 06      LDA $06C7,x               
CODE_27CEEC:        29 FF 00      AND #$00FF                
CODE_27CEEF:        AA            TAX                       
CODE_27CEF0:        E2 20         SEP #$20                  
CODE_27CEF2:        BD D2 C7      LDA.w DATA_21C7D2,x               
CODE_27CEF5:        99 03 08      STA $0803,y               
CODE_27CEF8:        99 07 08      STA $0807,y               
CODE_27CEFB:        E0 00 00      CPX #$0000                
CODE_27CEFE:        F0 02         BEQ CODE_27CF02           
CODE_27CF00:        09 40         ORA #$40                  
CODE_27CF02:        99 0B 08      STA $080B,y               
CODE_27CF05:        99 0F 08      STA $080F,y               
CODE_27CF08:        8A            TXA                       
CODE_27CF09:        0A            ASL A                     
CODE_27CF0A:        AA            TAX                       
CODE_27CF0B:        BD CA C7      LDA.w DATA_21C7CA,x               
CODE_27CF0E:        99 02 08      STA $0802,y               
CODE_27CF11:        1A            INC A                     
CODE_27CF12:        99 06 08      STA $0806,y               
CODE_27CF15:        BD CB C7      LDA.w DATA_21C7CA+1,x               
CODE_27CF18:        99 0A 08      STA $080A,y               
CODE_27CF1B:        1A            INC A                     
CODE_27CF1C:        99 0E 08      STA $080E,y               
CODE_27CF1F:        5A            PHY                       
CODE_27CF20:        C2 20         REP #$20                  
CODE_27CF22:        A5 9B         LDA $9B                   
CODE_27CF24:        29 FF 00      AND #$00FF                
CODE_27CF27:        AA            TAX                       
CODE_27CF28:        98            TYA                       
CODE_27CF29:        4A            LSR A                     
CODE_27CF2A:        4A            LSR A                     
CODE_27CF2B:        A8            TAY                       
CODE_27CF2C:        E2 20         SEP #$20                  
CODE_27CF2E:        A5 D9         LDA $D9                   
CODE_27CF30:        29 01         AND #$01                  
CODE_27CF32:        99 20 0A      STA $0A20,y               
CODE_27CF35:        99 21 0A      STA $0A21,y               
CODE_27CF38:        A5 DB         LDA $DB                   
CODE_27CF3A:        29 01         AND #$01                  
CODE_27CF3C:        99 22 0A      STA $0A22,y               
CODE_27CF3F:        99 23 0A      STA $0A23,y               
CODE_27CF42:        7A            PLY                       
CODE_27CF43:        20 49 CF      JSR CODE_27CF49           
CODE_27CF46:        E2 10         SEP #$10                  
CODE_27CF48:        60            RTS                       

CODE_27CF49:        20 16 CE      JSR CODE_27CE16           
CODE_27CF4C:        B9 01 08      LDA $0801,y               
CODE_27CF4F:        99 09 08      STA $0809,y               
CODE_27CF52:        18            CLC                       
CODE_27CF53:        69 08         ADC #$08                  
CODE_27CF55:        99 05 08      STA $0805,y               
CODE_27CF58:        99 0D 08      STA $080D,y               
CODE_27CF5B:        B9 00 08      LDA $0800,y               
CODE_27CF5E:        99 04 08      STA $0804,y               
CODE_27CF61:        18            CLC                       
CODE_27CF62:        69 08         ADC #$08                  
CODE_27CF64:        99 08 08      STA $0808,y               
CODE_27CF67:        99 0C 08      STA $080C,y               
CODE_27CF6A:        60            RTS                       

CODE_27CF6B:        A5 9C         LDA $9C                   
CODE_27CF6D:        D0 0E         BNE CODE_27CF7D           
CODE_27CF6F:        BD C7 06      LDA $06C7,x               
CODE_27CF72:        F0 06         BEQ CODE_27CF7A           
CODE_27CF74:        20 1B CC      JSR CODE_27CC1B           
CODE_27CF77:        4C 7D CF      JMP CODE_27CF7D           

CODE_27CF7A:        20 E3 D7      JSR CODE_27D7E3           
CODE_27CF7D:        20 28 D7      JSR CODE_27D728           
CODE_27CF80:        B5 E2         LDA $E2,x                 
CODE_27CF82:        EB            XBA                       
CODE_27CF83:        BD C9 05      LDA $05C9,x               
CODE_27CF86:        C2 20         REP #$20                  
CODE_27CF88:        38            SEC                       
CODE_27CF89:        ED 10 02      SBC $0210                 
CODE_27CF8C:        85 D8         STA $D8                   
CODE_27CF8E:        18            CLC                       
CODE_27CF8F:        69 08 00      ADC #$0008                
CODE_27CF92:        85 DA         STA $DA                   
CODE_27CF94:        E2 20         SEP #$20                  
CODE_27CF96:        C2 10         REP #$10                  
CODE_27CF98:        B4 C6         LDY $C6,x                 
CODE_27CF9A:        A9 94         LDA #$94                  
CODE_27CF9C:        99 02 08      STA $0802,y               
CODE_27CF9F:        99 0A 08      STA $080A,y               
CODE_27CFA2:        1A            INC A                     
CODE_27CFA3:        99 06 08      STA $0806,y               
CODE_27CFA6:        99 0E 08      STA $080E,y               
CODE_27CFA9:        20 49 CF      JSR CODE_27CF49           
CODE_27CFAC:        AD 65 05      LDA $0565                 
CODE_27CFAF:        4A            LSR A                     
CODE_27CFB0:        4A            LSR A                     
CODE_27CFB1:        4A            LSR A                     
CODE_27CFB2:        6A            ROR A                     
CODE_27CFB3:        29 80         AND #$80                  
CODE_27CFB5:        09 2A         ORA #$2A                  
CODE_27CFB7:        99 03 08      STA $0803,y               
CODE_27CFBA:        99 07 08      STA $0807,y               
CODE_27CFBD:        49 C0         EOR #$C0                  
CODE_27CFBF:        99 0B 08      STA $080B,y               
CODE_27CFC2:        99 0F 08      STA $080F,y               
CODE_27CFC5:        29 80         AND #$80                  
CODE_27CFC7:        F0 0E         BEQ CODE_27CFD7           
CODE_27CFC9:        B9 0A 08      LDA $080A,y               
CODE_27CFCC:        48            PHA                       
CODE_27CFCD:        B9 0E 08      LDA $080E,y               
CODE_27CFD0:        99 0A 08      STA $080A,y               
CODE_27CFD3:        68            PLA                       
CODE_27CFD4:        99 0E 08      STA $080E,y               
CODE_27CFD7:        B9 03 08      LDA $0803,y               
CODE_27CFDA:        29 80         AND #$80                  
CODE_27CFDC:        F0 0E         BEQ CODE_27CFEC           
CODE_27CFDE:        B9 02 08      LDA $0802,y               
CODE_27CFE1:        48            PHA                       
CODE_27CFE2:        B9 06 08      LDA $0806,y               
CODE_27CFE5:        99 02 08      STA $0802,y               
CODE_27CFE8:        68            PLA                       
CODE_27CFE9:        99 06 08      STA $0806,y               
CODE_27CFEC:        C2 20         REP #$20                  
CODE_27CFEE:        98            TYA                       
CODE_27CFEF:        4A            LSR A                     
CODE_27CFF0:        4A            LSR A                     
CODE_27CFF1:        A8            TAY                       
CODE_27CFF2:        E2 20         SEP #$20                  
CODE_27CFF4:        A5 D9         LDA $D9                   
CODE_27CFF6:        29 01         AND #$01                  
CODE_27CFF8:        99 20 0A      STA $0A20,y               
CODE_27CFFB:        99 21 0A      STA $0A21,y               
CODE_27CFFE:        A5 DB         LDA $DB                   
CODE_27D000:        29 01         AND #$01                  
CODE_27D002:        99 22 0A      STA $0A22,y               
CODE_27D005:        99 23 0A      STA $0A23,y               
CODE_27D008:        E2 10         SEP #$10                  
CODE_27D00A:        BD C7 06      LDA $06C7,x               
CODE_27D00D:        D0 03         BNE CODE_27D012           
CODE_27D00F:        4C 02 D3      JMP CODE_27D302           

CODE_27D012:        60            RTS                       

CODE_27D013:        A5 9C         LDA $9C                   
CODE_27D015:        F0 03         BEQ CODE_27D01A           
CODE_27D017:        4C DC D0      JMP CODE_27D0DC           

CODE_27D01A:        BD C7 06      LDA $06C7,x               
CODE_27D01D:        D0 03         BNE CODE_27D022           
CODE_27D01F:        4C AE D0      JMP CODE_27D0AE           

CODE_27D022:        10 06         BPL CODE_27D02A           
CODE_27D024:        20 1B CC      JSR CODE_27CC1B           
CODE_27D027:        4C DC D0      JMP CODE_27D0DC           

CODE_27D02A:        AC 53 05      LDY $0553                 
CODE_27D02D:        D0 20         BNE CODE_27D04F           
CODE_27D02F:        AC 75 05      LDY $0575                 
CODE_27D032:        D0 1B         BNE CODE_27D04F           
CODE_27D034:        EE B6 06      INC $06B6                 
CODE_27D037:        C9 05         CMP #$05                  
CODE_27D039:        B0 09         BCS CODE_27D044                   
CODE_27D03B:        A5 15         LDA $15                   
CODE_27D03D:        29 0F         AND #$0F                  
CODE_27D03F:        D0 03         BNE CODE_27D044           
CODE_27D041:        FE C7 06      INC $06C7,x               
CODE_27D044:        A5 18         LDA $18                   
CODE_27D046:        29 FF         AND #$FF                  
CODE_27D048:        F0 1B         BEQ CODE_27D065           
CODE_27D04A:        DE C7 06      DEC $06C7,x               
CODE_27D04D:        D0 16         BNE CODE_27D065           
CODE_27D04F:        A9 FF         LDA #$FF                  
CODE_27D051:        9D C7 06      STA $06C7,x               
CODE_27D054:        A9 E0         LDA #$E0                  
CODE_27D056:        9D D3 05      STA $05D3,x               
CODE_27D059:        A9 08         LDA #$08                  
CODE_27D05B:        BC 83 07      LDY $0783,x               
CODE_27D05E:        10 02         BPL CODE_27D062           
CODE_27D060:        A9 F8         LDA #$F8                  
CODE_27D062:        9D DD 05      STA $05DD,x               
CODE_27D065:        FE BD 06      INC $06BD,x               
CODE_27D068:        BD BD 06      LDA $06BD,x               
CODE_27D06B:        4A            LSR A                     
CODE_27D06C:        4A            LSR A                     
CODE_27D06D:        29 1F         AND #$1F                  
CODE_27D06F:        C9 10         CMP #$10                  
CODE_27D071:        29 0F         AND #$0F                  
CODE_27D073:        90 04         BCC CODE_27D079           
CODE_27D075:        49 0F         EOR #$0F                  
CODE_27D077:        69 00         ADC #$00                  
CODE_27D079:        18            CLC                       
CODE_27D07A:        AC 6F 05      LDY $056F                 
CODE_27D07D:        D0 04         BNE CODE_27D083           
CODE_27D07F:        A4 BB         LDY $BB                   
CODE_27D081:        D0 04         BNE CODE_27D087           
CODE_27D083:        4A            LSR A                     
CODE_27D084:        18            CLC                       
CODE_27D085:        69 08         ADC #$08                  
CODE_27D087:        65 70         ADC $70                   
CODE_27D089:        9D BF 05      STA $05BF,x               
CODE_27D08C:        A5 55         LDA $55                   
CODE_27D08E:        69 00         ADC #$00                  
CODE_27D090:        9D D7 1F      STA $1FD7,x               
CODE_27D093:        BD BD 06      LDA $06BD,x               
CODE_27D096:        29 1F         AND #$1F                  
CODE_27D098:        C9 10         CMP #$10                  
CODE_27D09A:        29 0F         AND #$0F                  
CODE_27D09C:        90 04         BCC CODE_27D0A2           
CODE_27D09E:        49 0F         EOR #$0F                  
CODE_27D0A0:        69 00         ADC #$00                  
CODE_27D0A2:        38            SEC                       
CODE_27D0A3:        E9 03         SBC #$03                  
CODE_27D0A5:        18            CLC                       
CODE_27D0A6:        65 5E         ADC $5E                   
CODE_27D0A8:        9D C9 05      STA $05C9,x               
CODE_27D0AB:        4C DC D0      JMP CODE_27D0DC           

CODE_27D0AE:        20 E3 D7      JSR CODE_27D7E3           
CODE_27D0B1:        20 0F D8      JSR CODE_27D80F           
CODE_27D0B4:        BD D3 05      LDA $05D3,x               
CODE_27D0B7:        C9 10         CMP #$10                  
CODE_27D0B9:        10 03         BPL CODE_27D0BE           
CODE_27D0BB:        FE D3 05      INC $05D3,x               
CODE_27D0BE:        A5 15         LDA $15                   
CODE_27D0C0:        29 00         AND #$00                  
CODE_27D0C2:        D0 18         BNE CODE_27D0DC           
CODE_27D0C4:        BD BD 06      LDA $06BD,x               
CODE_27D0C7:        29 01         AND #$01                  
CODE_27D0C9:        A8            TAY                       
CODE_27D0CA:        BD DD 05      LDA $05DD,x               
CODE_27D0CD:        18            CLC                       
CODE_27D0CE:        79 D6 C7      ADC.w DATA_21C7D6,y               
CODE_27D0D1:        9D DD 05      STA $05DD,x               
CODE_27D0D4:        D9 D8 C7      CMP.w DATA_21C7D8,y               
CODE_27D0D7:        D0 03         BNE CODE_27D0DC           
CODE_27D0D9:        FE BD 06      INC $06BD,x               
CODE_27D0DC:        20 28 D7      JSR CODE_27D728           
CODE_27D0DF:        F0 03         BEQ CODE_27D0E4           
CODE_27D0E1:        82 89 00      BRL CODE_27D16D           

CODE_27D0E4:        B5 E2         LDA $E2,x                 
CODE_27D0E6:        EB            XBA                       
CODE_27D0E7:        BD C9 05      LDA $05C9,x               
CODE_27D0EA:        C2 30         REP #$30                  
CODE_27D0EC:        38            SEC                       
CODE_27D0ED:        ED 10 02      SBC $0210                 
CODE_27D0F0:        85 D8         STA $D8                   
CODE_27D0F2:        E2 20         SEP #$20                  
CODE_27D0F4:        B4 C6         LDY $C6,x                 
CODE_27D0F6:        BD C7 06      LDA $06C7,x               
CODE_27D0F9:        F0 1A         BEQ CODE_27D115           
CODE_27D0FB:        30 18         BMI CODE_27D115           
CODE_27D0FD:        8A            TXA                       
CODE_27D0FE:        0A            ASL A                     
CODE_27D0FF:        0A            ASL A                     
CODE_27D100:        0A            ASL A                     
CODE_27D101:        0A            ASL A                     
CODE_27D102:        5D BD 06      EOR $06BD,x               
CODE_27D105:        29 10         AND #$10                  
CODE_27D107:        F0 0C         BEQ CODE_27D115           
CODE_27D109:        DA            PHX                       
CODE_27D10A:        C2 20         REP #$20                  
CODE_27D10C:        8A            TXA                       
CODE_27D10D:        0A            ASL A                     
CODE_27D10E:        AA            TAX                       
CODE_27D10F:        E2 20         SEP #$20                  
CODE_27D111:        BC DA C7      LDY.w DATA_21C7DA,x               
CODE_27D114:        FA            PLX                       
CODE_27D115:        20 16 CE      JSR CODE_27CE16           
CODE_27D118:        B9 00 08      LDA $0800,y               
CODE_27D11B:        99 04 08      STA $0804,y               
CODE_27D11E:        B9 01 08      LDA $0801,y               
CODE_27D121:        99 05 08      STA $0805,y               
CODE_27D124:        A9 FE         LDA #$FE                  
CODE_27D126:        99 02 08      STA $0802,y               
CODE_27D129:        1A            INC A                     
CODE_27D12A:        99 06 08      STA $0806,y               
CODE_27D12D:        A2 02 00      LDX #$0002                
CODE_27D130:        AD 65 05      LDA $0565                 
CODE_27D133:        29 08         AND #$08                  
CODE_27D135:        F0 03         BEQ CODE_27D13A           
CODE_27D137:        A2 42 00      LDX #$0042                
CODE_27D13A:        8A            TXA                       
CODE_27D13B:        09 20         ORA #$20                  
CODE_27D13D:        99 03 08      STA $0803,y               
CODE_27D140:        99 07 08      STA $0807,y               
CODE_27D143:        5A            PHY                       
CODE_27D144:        C2 20         REP #$20                  
CODE_27D146:        98            TYA                       
CODE_27D147:        4A            LSR A                     
CODE_27D148:        4A            LSR A                     
CODE_27D149:        A8            TAY                       
CODE_27D14A:        E2 20         SEP #$20                  
CODE_27D14C:        A5 D9         LDA $D9                   
CODE_27D14E:        29 01         AND #$01                  
CODE_27D150:        99 20 0A      STA $0A20,y               
CODE_27D153:        99 21 0A      STA $0A21,y               
CODE_27D156:        7A            PLY                       
CODE_27D157:        C2 20         REP #$20                  
CODE_27D159:        A5 9B         LDA $9B                   
CODE_27D15B:        AA            TAX                       
CODE_27D15C:        E2 20         SEP #$20                  
CODE_27D15E:        BD C7 06      LDA $06C7,x               
CODE_27D161:        F0 0D         BEQ CODE_27D170           
CODE_27D163:        10 08         BPL CODE_27D16D           
CODE_27D165:        A9 A6         LDA #$A6                  
CODE_27D167:        99 03 08      STA $0803,y               
CODE_27D16A:        99 07 08      STA $0807,y               
CODE_27D16D:        E2 10         SEP #$10                  
CODE_27D16F:        60            RTS                       

CODE_27D170:        E2 10         SEP #$10                  
CODE_27D172:        4C 02 D3      JMP CODE_27D302           

CODE_27D175:        A5 9C         LDA $9C                   
CODE_27D177:        F0 03         BEQ CODE_27D17C           
CODE_27D179:        4C 31 D2      JMP CODE_27D231           

CODE_27D17C:        BD C7 06      LDA $06C7,x               
CODE_27D17F:        29 0F         AND #$0F                  
CODE_27D181:        D0 03         BNE CODE_27D186           
CODE_27D183:        82 A5 00      BRL CODE_27D22B           

CODE_27D186:        DE C7 06      DEC $06C7,x               
CODE_27D189:        BD C8 1F      LDA $1FC8,x               
CODE_27D18C:        C9 01         CMP #$01                  
CODE_27D18E:        D0 0C         BNE CODE_27D19C           
CODE_27D190:        BD C7 06      LDA $06C7,x               
CODE_27D193:        29 0F         AND #$0F                  
CODE_27D195:        D0 05         BNE CODE_27D19C           
CODE_27D197:        A9 37         LDA #$37                  
CODE_27D199:        8D 00 12      STA $1200                 
CODE_27D19C:        BD C7 06      LDA $06C7,x               
CODE_27D19F:        4A            LSR A                     
CODE_27D1A0:        4A            LSR A                     
CODE_27D1A1:        4A            LSR A                     
CODE_27D1A2:        4A            LSR A                     
CODE_27D1A3:        A8            TAY                       
CODE_27D1A4:        84 01         STY $01                   
CODE_27D1A6:        B9 61 06      LDA $0661,y               
CODE_27D1A9:        C9 02         CMP #$02                  
CODE_27D1AB:        D0 07         BNE CODE_27D1B4           
CODE_27D1AD:        B9 51 06      LDA $0651,y               
CODE_27D1B0:        29 C0         AND #$C0                  
CODE_27D1B2:        F0 03         BEQ CODE_27D1B7           
CODE_27D1B4:        4C 7F D3      JMP CODE_27D37F           

CODE_27D1B7:        B9 79 06      LDA $0679,y               
CODE_27D1BA:        29 40         AND #$40                  
CODE_27D1BC:        85 02         STA $02                   
CODE_27D1BE:        0A            ASL A                     
CODE_27D1BF:        0A            ASL A                     
CODE_27D1C0:        2A            ROL A                     
CODE_27D1C1:        29 01         AND #$01                  
CODE_27D1C3:        85 00         STA $00                   
CODE_27D1C5:        BD C8 1F      LDA $1FC8,x               
CODE_27D1C8:        C9 01         CMP #$01                  
CODE_27D1CA:        F0 04         BEQ CODE_27D1D0           
CODE_27D1CC:        E6 00         INC $00                   
CODE_27D1CE:        E6 00         INC $00                   
CODE_27D1D0:        B9 71 06      LDA $0671,y               
CODE_27D1D3:        C9 86         CMP #$86                  
CODE_27D1D5:        D0 07         BNE CODE_27D1DE           
CODE_27D1D7:        A5 00         LDA $00                   
CODE_27D1D9:        18            CLC                       
CODE_27D1DA:        69 04         ADC #$04                  
CODE_27D1DC:        85 00         STA $00                   
CODE_27D1DE:        B9 5F 00      LDA $005F,y               
CODE_27D1E1:        A4 00         LDY $00                   
CODE_27D1E3:        18            CLC                       
CODE_27D1E4:        79 EE C7      ADC.w DATA_21C7EE,y               
CODE_27D1E7:        9D C9 05      STA $05C9,x               
CODE_27D1EA:        A4 00         LDY $00                   
CODE_27D1EC:        64 DD         STZ $DD                   
CODE_27D1EE:        B9 F4 C7      LDA.w DATA_21C7F4,y               
CODE_27D1F1:        85 DC         STA $DC                   
CODE_27D1F3:        10 02         BPL CODE_27D1F7           
CODE_27D1F5:        C6 DD         DEC $DD                   
CODE_27D1F7:        A4 01         LDY $01                   
CODE_27D1F9:        B9 56 00      LDA $0056,y               
CODE_27D1FC:        EB            XBA                       
CODE_27D1FD:        B9 71 00      LDA $0071,y               
CODE_27D200:        C2 20         REP #$20                  
CODE_27D202:        18            CLC                       
CODE_27D203:        65 DC         ADC $DC                   
CODE_27D205:        E2 20         SEP #$20                  
CODE_27D207:        9D BF 05      STA $05BF,x               
CODE_27D20A:        EB            XBA                       
CODE_27D20B:        9D D7 1F      STA $1FD7,x               
CODE_27D20E:        A9 00         LDA #$00                  
CODE_27D210:        BC DD 05      LDY $05DD,x               
CODE_27D213:        30 02         BMI CODE_27D217           
CODE_27D215:        A9 40         LDA #$40                  
CODE_27D217:        C5 02         CMP $02                   
CODE_27D219:        F0 0D         BEQ CODE_27D228           
CODE_27D21B:        BD DD 05      LDA $05DD,x               
CODE_27D21E:        22 59 A8 27   JSL CODE_27A859           ;Invert Accumulator (8-bit)
CODE_27D222:        9D DD 05      STA $05DD,x               
CODE_27D225:        FE 97 05      INC $0597,x               
CODE_27D228:        4C 31 D2      JMP CODE_27D231           

CODE_27D22B:        FE BD 06      INC $06BD,x               
CODE_27D22E:        20 1B CC      JSR CODE_27CC1B           
CODE_27D231:        20 28 D7      JSR CODE_27D728           
CODE_27D234:        F0 01         BEQ CODE_27D237           
CODE_27D236:        60            RTS                       

CODE_27D237:        84 01         STY $01                   
CODE_27D239:        BD DD 05      LDA $05DD,x               
CODE_27D23C:        BC C8 1F      LDY $1FC8,x               
CODE_27D23F:        C0 01         CPY #$01                  
CODE_27D241:        F0 02         BEQ CODE_27D245           
CODE_27D243:        49 80         EOR #$80                  
CODE_27D245:        4A            LSR A                     
CODE_27D246:        29 40         AND #$40                  
CODE_27D248:        85 00         STA $00                   
CODE_27D24A:        C0 01         CPY #$01                  
CODE_27D24C:        D0 08         BNE CODE_27D256           
CODE_27D24E:        A4 01         LDY $01                   
CODE_27D250:        20 95 D3      JSR CODE_27D395           
CODE_27D253:        4C F0 D2      JMP CODE_27D2F0           

CODE_27D256:        B5 E2         LDA $E2,x                 
CODE_27D258:        EB            XBA                       
CODE_27D259:        BD C9 05      LDA $05C9,x               
CODE_27D25C:        C2 30         REP #$30                  
CODE_27D25E:        38            SEC                       
CODE_27D25F:        ED 10 02      SBC $0210                 
CODE_27D262:        85 D8         STA $D8                   
CODE_27D264:        18            CLC                       
CODE_27D265:        69 08 00      ADC #$0008                
CODE_27D268:        85 DA         STA $DA                   
CODE_27D26A:        B4 C6         LDY $C6,x                 
CODE_27D26C:        BD BD 06      LDA $06BD,x               
CODE_27D26F:        29 0C 00      AND #$000C                
CODE_27D272:        4A            LSR A                     
CODE_27D273:        4A            LSR A                     
CODE_27D274:        AA            TAX                       
CODE_27D275:        E2 20         SEP #$20                  
CODE_27D277:        A5 00         LDA $00                   
CODE_27D279:        5D 1C C8      EOR.w DATA_21C81C,x               
CODE_27D27C:        09 23         ORA #$23                  
CODE_27D27E:        99 03 08      STA $0803,y               
CODE_27D281:        99 07 08      STA $0807,y               
CODE_27D284:        99 0B 08      STA $080B,y               
CODE_27D287:        99 0F 08      STA $080F,y               
CODE_27D28A:        A5 00         LDA $00                   
CODE_27D28C:        F0 02         BEQ CODE_27D290           
CODE_27D28E:        E8            INX                       
CODE_27D28F:        E8            INX                       
CODE_27D290:        C2 20         REP #$20                  
CODE_27D292:        8A            TXA                       
CODE_27D293:        29 03 00      AND #$0003                
CODE_27D296:        AA            TAX                       
CODE_27D297:        E2 20         SEP #$20                  
CODE_27D299:        BD 20 C8      LDA.w DATA_21C820,x               
CODE_27D29C:        99 02 08      STA $0802,y               
CODE_27D29F:        1A            INC A                     
CODE_27D2A0:        99 06 08      STA $0806,y               
CODE_27D2A3:        BD 22 C8      LDA.w DATA_21C822,x               
CODE_27D2A6:        99 0A 08      STA $080A,y               
CODE_27D2A9:        1A            INC A                     
CODE_27D2AA:        99 0E 08      STA $080E,y               
CODE_27D2AD:        B9 03 08      LDA $0803,y               
CODE_27D2B0:        29 80         AND #$80                  
CODE_27D2B2:        F0 1C         BEQ CODE_27D2D0           
CODE_27D2B4:        B9 02 08      LDA $0802,y               
CODE_27D2B7:        48            PHA                       
CODE_27D2B8:        B9 06 08      LDA $0806,y               
CODE_27D2BB:        99 02 08      STA $0802,y               
CODE_27D2BE:        68            PLA                       
CODE_27D2BF:        99 06 08      STA $0806,y               
CODE_27D2C2:        B9 0A 08      LDA $080A,y               
CODE_27D2C5:        48            PHA                       
CODE_27D2C6:        B9 0E 08      LDA $080E,y               
CODE_27D2C9:        99 0A 08      STA $080A,y               
CODE_27D2CC:        68            PLA                       
CODE_27D2CD:        99 0E 08      STA $080E,y               
CODE_27D2D0:        5A            PHY                       
CODE_27D2D1:        C2 20         REP #$20                  
CODE_27D2D3:        98            TYA                       
CODE_27D2D4:        4A            LSR A                     
CODE_27D2D5:        4A            LSR A                     
CODE_27D2D6:        A8            TAY                       
CODE_27D2D7:        E2 20         SEP #$20                  
CODE_27D2D9:        A5 D9         LDA $D9                   
CODE_27D2DB:        29 01         AND #$01                  
CODE_27D2DD:        99 20 0A      STA $0A20,y               
CODE_27D2E0:        99 21 0A      STA $0A21,y               
CODE_27D2E3:        A5 DB         LDA $DB                   
CODE_27D2E5:        29 01         AND #$01                  
CODE_27D2E7:        99 22 0A      STA $0A22,y               
CODE_27D2EA:        99 23 0A      STA $0A23,y               
CODE_27D2ED:        7A            PLY                       
CODE_27D2EE:        E2 10         SEP #$10                  
CODE_27D2F0:        A6 9B         LDX $9B                   
CODE_27D2F2:        C2 10         REP #$10                  
CODE_27D2F4:        B4 C6         LDY $C6,x                 
CODE_27D2F6:        20 49 CF      JSR CODE_27CF49           
CODE_27D2F9:        E2 10         SEP #$10                  
CODE_27D2FB:        BD C7 06      LDA $06C7,x               
CODE_27D2FE:        29 0F         AND #$0F                  
CODE_27D300:        D0 55         BNE CODE_27D357           
CODE_27D302:        8A            TXA                       
CODE_27D303:        18            CLC                       
CODE_27D304:        65 15         ADC $15                   
CODE_27D306:        4A            LSR A                     
CODE_27D307:        90 4E         BCC CODE_27D357           
CODE_27D309:        A0 00         LDY #$00                  
CODE_27D30B:        A5 BB         LDA $BB                   
CODE_27D30D:        F0 06         BEQ CODE_27D315           
CODE_27D30F:        AD 6F 05      LDA $056F                 
CODE_27D312:        D0 01         BNE CODE_27D315           
CODE_27D314:        C8            INY                       
CODE_27D315:        BD BF 05      LDA $05BF,x               
CODE_27D318:        18            CLC                       
CODE_27D319:        69 08         ADC #$08                  
CODE_27D31B:        38            SEC                       
CODE_27D31C:        E5 70         SBC $70                   
CODE_27D31E:        38            SEC                       
CODE_27D31F:        F9 FA C7      SBC.w DATA_21C7FA,y               
CODE_27D322:        D9 FC C7      CMP.w DATA_21C7FC,y               
CODE_27D325:        B0 5D         BCS CODE_27D384                   
CODE_27D327:        BD C9 05      LDA $05C9,x               
CODE_27D32A:        18            CLC                       
CODE_27D32B:        69 06         ADC #$06                  
CODE_27D32D:        38            SEC                       
CODE_27D32E:        E5 5E         SBC $5E                   
CODE_27D330:        E9 00         SBC #$00                  
CODE_27D332:        C9 10         CMP #$10                  
CODE_27D334:        B0 4E         BCS CODE_27D384                   
CODE_27D336:        AD 52 05      LDA $0552                 
CODE_27D339:        0D 7A 05      ORA $057A                 
CODE_27D33C:        05 9C         ORA $9C                   
CODE_27D33E:        0D BF 00      ORA $00BF                 
CODE_27D341:        0D 83 05      ORA $0583                 
CODE_27D344:        0D 87 05      ORA $0587                 
CODE_27D347:        05 0D         ORA $0D                   
CODE_27D349:        D0 39         BNE CODE_27D384           
CODE_27D34B:        BD C8 1F      LDA $1FC8,x               
CODE_27D34E:        C9 06         CMP #$06                  
CODE_27D350:        D0 06         BNE CODE_27D358           
CODE_27D352:        A9 05         LDA #$05                  
CODE_27D354:        9D C7 06      STA $06C7,x               
CODE_27D357:        60            RTS                       

CODE_27D358:        C9 10         CMP #$10                  
CODE_27D35A:        D0 19         BNE CODE_27D375           
CODE_27D35C:        EE BE 07      INC $07BE                 
CODE_27D35F:        A9 01         LDA #$01                  
CODE_27D361:        8D D9 02      STA $02D9                 
CODE_27D364:        A9 0B         LDA #$0B                  ;\ Doomship wand obtained music
CODE_27D366:        8D 02 12      STA $1202                 ;/
CODE_27D369:        A9 60         LDA #$60                  
CODE_27D36B:        8D E3 02      STA $02E3                 
CODE_27D36E:        A9 01         LDA #$01                  
CODE_27D370:        8D E4 02      STA $02E4                 
CODE_27D373:        80 0A         BRA CODE_27D37F           

CODE_27D375:        AD 53 05      LDA $0553                 
CODE_27D378:        D0 0B         BNE CODE_27D385           
CODE_27D37A:        22 C6 A4 27   JSL CODE_27A4C6           
CODE_27D37E:        60            RTS                       

CODE_27D37F:        A9 00         LDA #$00                  
CODE_27D381:        9D C8 1F      STA $1FC8,x               
CODE_27D384:        60            RTS                       

CODE_27D385:        A9 03         LDA #$03                  
CODE_27D387:        8D 00 12      STA $1200                 
CODE_27D38A:        A9 16         LDA #$16                  
CODE_27D38C:        9D C8 1F      STA $1FC8,x               
CODE_27D38F:        A9 1F         LDA #$1F                  
CODE_27D391:        9D C7 06      STA $06C7,x               
CODE_27D394:        60            RTS                       

CODE_27D395:        B5 E2         LDA $E2,x                 
CODE_27D397:        EB            XBA                       
CODE_27D398:        BD C9 05      LDA $05C9,x               
CODE_27D39B:        C2 30         REP #$30                  
CODE_27D39D:        38            SEC                       
CODE_27D39E:        ED 10 02      SBC $0210                 
CODE_27D3A1:        85 D8         STA $D8                   
CODE_27D3A3:        18            CLC                       
CODE_27D3A4:        69 08 00      ADC #$0008                
CODE_27D3A7:        85 DA         STA $DA                   
CODE_27D3A9:        B4 C6         LDY $C6,x                 
CODE_27D3AB:        BD BD 06      LDA $06BD,x               
CODE_27D3AE:        29 1C 00      AND #$001C                
CODE_27D3B1:        4A            LSR A                     
CODE_27D3B2:        4A            LSR A                     
CODE_27D3B3:        AA            TAX                       
CODE_27D3B4:        E2 20         SEP #$20                  
CODE_27D3B6:        A5 D9         LDA $D9                   
CODE_27D3B8:        85 DC         STA $DC                   
CODE_27D3BA:        A5 DB         LDA $DB                   
CODE_27D3BC:        85 DD         STA $DD                   
CODE_27D3BE:        A5 00         LDA $00                   
CODE_27D3C0:        5D 00 C8      EOR.w DATA_21C800,x               
CODE_27D3C3:        09 21         ORA #$21                  
CODE_27D3C5:        99 03 08      STA $0803,y               
CODE_27D3C8:        99 07 08      STA $0807,y               
CODE_27D3CB:        99 0B 08      STA $080B,y               
CODE_27D3CE:        99 0F 08      STA $080F,y               
CODE_27D3D1:        A5 00         LDA $00                   
CODE_27D3D3:        F0 04         BEQ CODE_27D3D9           
CODE_27D3D5:        E8            INX                       
CODE_27D3D6:        E8            INX                       
CODE_27D3D7:        E8            INX                       
CODE_27D3D8:        E8            INX                       
CODE_27D3D9:        C2 20         REP #$20                  
CODE_27D3DB:        8A            TXA                       
CODE_27D3DC:        29 07 00      AND #$0007                
CODE_27D3DF:        AA            TAX                       
CODE_27D3E0:        E2 20         SEP #$20                  
CODE_27D3E2:        BD 08 C8      LDA.w DATA_21C808,x               
CODE_27D3E5:        85 D8         STA $D8                   
CODE_27D3E7:        1A            INC A                     
CODE_27D3E8:        85 D9         STA $D9                   
CODE_27D3EA:        BD 0C C8      LDA.w DATA_21C80C,x               
CODE_27D3ED:        85 DA         STA $DA                   
CODE_27D3EF:        1A            INC A                     
CODE_27D3F0:        85 DB         STA $DB                   
CODE_27D3F2:        B9 03 08      LDA $0803,y               
CODE_27D3F5:        29 80         AND #$80                  
CODE_27D3F7:        F0 14         BEQ CODE_27D40D           
CODE_27D3F9:        A5 D8         LDA $D8                   
CODE_27D3FB:        48            PHA                       
CODE_27D3FC:        A5 D9         LDA $D9                   
CODE_27D3FE:        85 D8         STA $D8                   
CODE_27D400:        68            PLA                       
CODE_27D401:        85 D9         STA $D9                   
CODE_27D403:        A5 DA         LDA $DA                   
CODE_27D405:        48            PHA                       
CODE_27D406:        A5 DB         LDA $DB                   
CODE_27D408:        85 DA         STA $DA                   
CODE_27D40A:        68            PLA                       
CODE_27D40B:        85 DB         STA $DB                   
CODE_27D40D:        A5 D8         LDA $D8                   
CODE_27D40F:        99 02 08      STA $0802,y               
CODE_27D412:        A5 D9         LDA $D9                   
CODE_27D414:        99 06 08      STA $0806,y               
CODE_27D417:        A5 DA         LDA $DA                   
CODE_27D419:        99 0A 08      STA $080A,y               
CODE_27D41C:        A5 DB         LDA $DB                   
CODE_27D41E:        99 0E 08      STA $080E,y               
CODE_27D421:        5A            PHY                       
CODE_27D422:        C2 20         REP #$20                  
CODE_27D424:        98            TYA                       
CODE_27D425:        4A            LSR A                     
CODE_27D426:        4A            LSR A                     
CODE_27D427:        A8            TAY                       
CODE_27D428:        E2 20         SEP #$20                  
CODE_27D42A:        A5 DC         LDA $DC                   
CODE_27D42C:        29 01         AND #$01                  
CODE_27D42E:        99 20 0A      STA $0A20,y               
CODE_27D431:        99 21 0A      STA $0A21,y               
CODE_27D434:        A5 DD         LDA $DD                   
CODE_27D436:        29 01         AND #$01                  
CODE_27D438:        99 22 0A      STA $0A22,y               
CODE_27D43B:        99 23 0A      STA $0A23,y               
CODE_27D43E:        7A            PLY                       
CODE_27D43F:        E2 10         SEP #$10                  
CODE_27D441:        60            RTS                       

CODE_27D442:        A5 9C         LDA $9C                   
CODE_27D444:        F0 03         BEQ CODE_27D449           
CODE_27D446:        4C 31 D2      JMP CODE_27D231           

CODE_27D449:        BD C7 06      LDA $06C7,x               
CODE_27D44C:        29 0F         AND #$0F                  
CODE_27D44E:        F0 03         BEQ CODE_27D453           
CODE_27D450:        4C 86 D1      JMP CODE_27D186           

CODE_27D453:        FE BD 06      INC $06BD,x               
CODE_27D456:        A5 15         LDA $15                   
CODE_27D458:        29 0A         AND #$0A                  
CODE_27D45A:        D0 05         BNE CODE_27D461           
CODE_27D45C:        A9 48         LDA #$48                  
CODE_27D45E:        8D 03 12      STA $1203                 
CODE_27D461:        BD 97 05      LDA $0597,x               
CODE_27D464:        30 2C         BMI CODE_27D492           
CODE_27D466:        BD D1 06      LDA $06D1,x               
CODE_27D469:        D0 27         BNE CODE_27D492           
CODE_27D46B:        BD 97 05      LDA $0597,x               
CODE_27D46E:        29 01         AND #$01                  
CODE_27D470:        A8            TAY                       
CODE_27D471:        BD DD 05      LDA $05DD,x               
CODE_27D474:        18            CLC                       
CODE_27D475:        79 14 C8      ADC.w DATA_21C814,y               
CODE_27D478:        9D DD 05      STA $05DD,x               
CODE_27D47B:        D9 16 C8      CMP.w DATA_21C816,y               
CODE_27D47E:        D0 12         BNE CODE_27D492           
CODE_27D480:        A9 30         LDA #$30                  
CODE_27D482:        9D D1 06      STA $06D1,x               
CODE_27D485:        FE 97 05      INC $0597,x               
CODE_27D488:        BD B5 05      LDA $05B5,x               
CODE_27D48B:        F0 05         BEQ CODE_27D492           
CODE_27D48D:        A9 FF         LDA #$FF                  
CODE_27D48F:        9D 97 05      STA $0597,x               
CODE_27D492:        A5 15         LDA $15                   
CODE_27D494:        4A            LSR A                     
CODE_27D495:        B0 21         BCS CODE_27D4B8                   
CODE_27D497:        BD B5 05      LDA $05B5,x               
CODE_27D49A:        C9 01         CMP #$01                  
CODE_27D49C:        90 05         BCC CODE_27D4A3           
CODE_27D49E:        BC D3 05      LDY $05D3,x               
CODE_27D4A1:        F0 15         BEQ CODE_27D4B8           
CODE_27D4A3:        29 01         AND #$01                  
CODE_27D4A5:        A8            TAY                       
CODE_27D4A6:        BD D3 05      LDA $05D3,x               
CODE_27D4A9:        18            CLC                       
CODE_27D4AA:        79 18 C8      ADC.w DATA_21C818,y               
CODE_27D4AD:        9D D3 05      STA $05D3,x               
CODE_27D4B0:        D9 1A C8      CMP.w DATA_21C81A,y               
CODE_27D4B3:        D0 03         BNE CODE_27D4B8           
CODE_27D4B5:        FE B5 05      INC $05B5,x               
CODE_27D4B8:        20 E3 D7      JSR CODE_27D7E3           
CODE_27D4BB:        20 0F D8      JSR CODE_27D80F           
CODE_27D4BE:        20 31 D2      JSR CODE_27D231           
CODE_27D4C1:        BD 97 05      LDA $0597,x               
CODE_27D4C4:        10 41         BPL CODE_27D507           
CODE_27D4C6:        8A            TXA                       
CODE_27D4C7:        18            CLC                       
CODE_27D4C8:        65 15         ADC $15                   
CODE_27D4CA:        4A            LSR A                     
CODE_27D4CB:        B0 3A         BCS CODE_27D507                   
CODE_27D4CD:        BD C7 06      LDA $06C7,x               
CODE_27D4D0:        4A            LSR A                     
CODE_27D4D1:        4A            LSR A                     
CODE_27D4D2:        4A            LSR A                     
CODE_27D4D3:        4A            LSR A                     
CODE_27D4D4:        A8            TAY                       
CODE_27D4D5:        B9 61 06      LDA $0661,y               
CODE_27D4D8:        C9 02         CMP #$02                  
CODE_27D4DA:        D0 2B         BNE CODE_27D507           
CODE_27D4DC:        B9 71 06      LDA $0671,y               
CODE_27D4DF:        C9 82         CMP #$82                  
CODE_27D4E1:        D0 24         BNE CODE_27D507           
CODE_27D4E3:        BD BF 05      LDA $05BF,x               
CODE_27D4E6:        18            CLC                       
CODE_27D4E7:        69 08         ADC #$08                  
CODE_27D4E9:        38            SEC                       
CODE_27D4EA:        F9 71 00      SBC $0071,y               
CODE_27D4ED:        38            SEC                       
CODE_27D4EE:        E9 08         SBC #$08                  
CODE_27D4F0:        C9 10         CMP #$10                  
CODE_27D4F2:        B0 13         BCS CODE_27D507                   
CODE_27D4F4:        BD C9 05      LDA $05C9,x               
CODE_27D4F7:        18            CLC                       
CODE_27D4F8:        69 08         ADC #$08                  
CODE_27D4FA:        38            SEC                       
CODE_27D4FB:        F9 5F 00      SBC $005F,y               
CODE_27D4FE:        E9 00         SBC #$00                  
CODE_27D500:        C9 10         CMP #$10                  
CODE_27D502:        B0 03         BCS CODE_27D507                   
CODE_27D504:        4C 7F D3      JMP CODE_27D37F           

CODE_27D507:        60            RTS                       

CODE_27D508:        A5 9C         LDA $9C                   
CODE_27D50A:        F0 03         BEQ CODE_27D50F           
CODE_27D50C:        4C 31 D2      JMP CODE_27D231           

CODE_27D50F:        BD C7 06      LDA $06C7,x               
CODE_27D512:        29 0F         AND #$0F                  
CODE_27D514:        F0 03         BEQ CODE_27D519           
CODE_27D516:        4C 86 D1      JMP CODE_27D186           

CODE_27D519:        DE BD 06      DEC $06BD,x               
CODE_27D51C:        BC D1 06      LDY $06D1,x               
CODE_27D51F:        F0 06         BEQ CODE_27D527           
CODE_27D521:        88            DEY                       
CODE_27D522:        D0 26         BNE CODE_27D54A           
CODE_27D524:        FE B5 05      INC $05B5,x               
CODE_27D527:        A5 15         LDA $15                   
CODE_27D529:        29 00         AND #$00                  
CODE_27D52B:        D0 1D         BNE CODE_27D54A           
CODE_27D52D:        BD 97 05      LDA $0597,x               
CODE_27D530:        29 01         AND #$01                  
CODE_27D532:        A8            TAY                       
CODE_27D533:        BD DD 05      LDA $05DD,x               
CODE_27D536:        18            CLC                       
CODE_27D537:        79 26 C8      ADC.w DATA_21C826,y               
CODE_27D53A:        9D DD 05      STA $05DD,x               
CODE_27D53D:        D9 28 C8      CMP.w DATA_21C828,y               
CODE_27D540:        D0 08         BNE CODE_27D54A           
CODE_27D542:        A9 50         LDA #$50                  
CODE_27D544:        9D D1 06      STA $06D1,x               
CODE_27D547:        FE 97 05      INC $0597,x               
CODE_27D54A:        A5 15         LDA $15                   
CODE_27D54C:        29 03         AND #$03                  
CODE_27D54E:        D0 23         BNE CODE_27D573           
CODE_27D550:        BD B5 05      LDA $05B5,x               
CODE_27D553:        F0 1E         BEQ CODE_27D573           
CODE_27D555:        C9 03         CMP #$03                  
CODE_27D557:        90 05         BCC CODE_27D55E           
CODE_27D559:        BC D3 05      LDY $05D3,x               
CODE_27D55C:        F0 15         BEQ CODE_27D573           
CODE_27D55E:        29 01         AND #$01                  
CODE_27D560:        A8            TAY                       
CODE_27D561:        BD D3 05      LDA $05D3,x               
CODE_27D564:        18            CLC                       
CODE_27D565:        79 2A C8      ADC.w DATA_21C82A,y               
CODE_27D568:        9D D3 05      STA $05D3,x               
CODE_27D56B:        D9 2C C8      CMP.w DATA_21C82C,y               
CODE_27D56E:        D0 03         BNE CODE_27D573           
CODE_27D570:        FE B5 05      INC $05B5,x               
CODE_27D573:        4C B8 D4      JMP CODE_27D4B8           

CODE_27D576:        A5 9C         LDA $9C                   
CODE_27D578:        D0 37         BNE CODE_27D5B1           
CODE_27D57A:        FE BD 06      INC $06BD,x               
CODE_27D57D:        BD C8 1F      LDA $1FC8,x               
CODE_27D580:        C9 05         CMP #$05                  
CODE_27D582:        F0 27         BEQ CODE_27D5AB           
CODE_27D584:        C9 12         CMP #$12                  
CODE_27D586:        F0 23         BEQ CODE_27D5AB           
CODE_27D588:        20 1B CC      JSR CODE_27CC1B           
CODE_27D58B:        BD D3 05      LDA $05D3,x               
CODE_27D58E:        C9 30         CMP #$30                  
CODE_27D590:        10 06         BPL CODE_27D598           
CODE_27D592:        FE D3 05      INC $05D3,x               
CODE_27D595:        FE D3 05      INC $05D3,x               
CODE_27D598:        BD C8 1F      LDA $1FC8,x               
CODE_27D59B:        C9 0C         CMP #$0C                  
CODE_27D59D:        D0 03         BNE CODE_27D5A2           
CODE_27D59F:        20 42 C4      JSR CODE_27C442           
CODE_27D5A2:        4C B1 D5      JMP CODE_27D5B1           

CODE_27D5A5:        20 1B CC      JSR CODE_27CC1B           
CODE_27D5A8:        4C B1 D5      JMP CODE_27D5B1           

CODE_27D5AB:        20 E3 D7      JSR CODE_27D7E3           
CODE_27D5AE:        20 0F D8      JSR CODE_27D80F           
CODE_27D5B1:        20 28 D7      JSR CODE_27D728           
CODE_27D5B4:        F0 03         BEQ CODE_27D5B9           
CODE_27D5B6:        82 B8 00      BRL CODE_27D671           

CODE_27D5B9:        B5 E2         LDA $E2,x                 
CODE_27D5BB:        EB            XBA                       
CODE_27D5BC:        BD C9 05      LDA $05C9,x               
CODE_27D5BF:        C2 30         REP #$30                  
CODE_27D5C1:        38            SEC                       
CODE_27D5C2:        ED 10 02      SBC $0210                 
CODE_27D5C5:        85 D8         STA $D8                   
CODE_27D5C7:        E2 20         SEP #$20                  
CODE_27D5C9:        B4 C6         LDY $C6,x                 
CODE_27D5CB:        20 16 CE      JSR CODE_27CE16           
CODE_27D5CE:        B9 01 08      LDA $0801,y               
CODE_27D5D1:        18            CLC                       
CODE_27D5D2:        69 08         ADC #$08                  
CODE_27D5D4:        99 05 08      STA $0805,y               
CODE_27D5D7:        B9 00 08      LDA $0800,y               
CODE_27D5DA:        99 04 08      STA $0804,y               
CODE_27D5DD:        BD C8 1F      LDA $1FC8,x               
CODE_27D5E0:        C9 12         CMP #$12                  
CODE_27D5E2:        D0 16         BNE CODE_27D5FA           
CODE_27D5E4:        AD 65 05      LDA $0565                 
CODE_27D5E7:        4A            LSR A                     
CODE_27D5E8:        4A            LSR A                     
CODE_27D5E9:        A9 88         LDA #$88                  
CODE_27D5EB:        90 02         BCC CODE_27D5EF           
CODE_27D5ED:        A9 8A         LDA #$8A                  
CODE_27D5EF:        99 02 08      STA $0802,y               
CODE_27D5F2:        1A            INC A                     
CODE_27D5F3:        99 06 08      STA $0806,y               
CODE_27D5F6:        A9 2A         LDA #$2A                  
CODE_27D5F8:        80 3A         BRA CODE_27D634           

CODE_27D5FA:        BD DD 05      LDA $05DD,x               
CODE_27D5FD:        4A            LSR A                     
CODE_27D5FE:        29 40         AND #$40                  
CODE_27D600:        48            PHA                       
CODE_27D601:        C2 20         REP #$20                  
CODE_27D603:        BD BD 06      LDA $06BD,x               
CODE_27D606:        29 FF 00      AND #$00FF                
CODE_27D609:        4A            LSR A                     
CODE_27D60A:        4A            LSR A                     
CODE_27D60B:        29 03 00      AND #$0003                
CODE_27D60E:        AA            TAX                       
CODE_27D60F:        E2 20         SEP #$20                  
CODE_27D611:        BD 2E C8      LDA.w DATA_21C82E,x               
CODE_27D614:        E0 02 00      CPX #$0002                
CODE_27D617:        F0 0E         BEQ CODE_27D627           
CODE_27D619:        E0 03 00      CPX #$0003                
CODE_27D61C:        F0 09         BEQ CODE_27D627           
CODE_27D61E:        99 02 08      STA $0802,y               
CODE_27D621:        1A            INC A                     
CODE_27D622:        99 06 08      STA $0806,y               
CODE_27D625:        80 07         BRA CODE_27D62E           

CODE_27D627:        99 06 08      STA $0806,y               
CODE_27D62A:        1A            INC A                     
CODE_27D62B:        99 02 08      STA $0802,y               
CODE_27D62E:        68            PLA                       
CODE_27D62F:        5D 32 C8      EOR.w DATA_21C832,x               
CODE_27D632:        09 20         ORA #$20                  
CODE_27D634:        99 03 08      STA $0803,y               
CODE_27D637:        99 07 08      STA $0807,y               
CODE_27D63A:        5A            PHY                       
CODE_27D63B:        C2 20         REP #$20                  
CODE_27D63D:        98            TYA                       
CODE_27D63E:        4A            LSR A                     
CODE_27D63F:        4A            LSR A                     
CODE_27D640:        A8            TAY                       
CODE_27D641:        E2 20         SEP #$20                  
CODE_27D643:        A5 D9         LDA $D9                   
CODE_27D645:        29 01         AND #$01                  
CODE_27D647:        99 20 0A      STA $0A20,y               
CODE_27D64A:        99 21 0A      STA $0A21,y               
CODE_27D64D:        7A            PLY                       
CODE_27D64E:        E2 10         SEP #$10                  
CODE_27D650:        A6 9B         LDX $9B                   
CODE_27D652:        A5 BB         LDA $BB                   
CODE_27D654:        C9 06         CMP #$06                  
CODE_27D656:        D0 16         BNE CODE_27D66E           
CODE_27D658:        AD 6F 05      LDA $056F                 
CODE_27D65B:        F0 11         BEQ CODE_27D66E           
CODE_27D65D:        AD 53 05      LDA $0553                 
CODE_27D660:        48            PHA                       
CODE_27D661:        A9 10         LDA #$10                  
CODE_27D663:        8D 53 05      STA $0553                 
CODE_27D666:        20 02 D3      JSR CODE_27D302           
CODE_27D669:        68            PLA                       
CODE_27D66A:        8D 53 05      STA $0553                 
CODE_27D66D:        60            RTS                       

CODE_27D66E:        4C 02 D3      JMP CODE_27D302           

CODE_27D671:        60            RTS                       

CODE_27D672:        BD C7 06      LDA $06C7,x               
CODE_27D675:        D0 03         BNE CODE_27D67A           
CODE_27D677:        4C 7F D3      JMP CODE_27D37F           

CODE_27D67A:        C9 18         CMP #$18                  
CODE_27D67C:        90 05         BCC CODE_27D683           
CODE_27D67E:        A9 17         LDA #$17                  
CODE_27D680:        9D C7 06      STA $06C7,x               
CODE_27D683:        A5 9C         LDA $9C                   
CODE_27D685:        D0 03         BNE CODE_27D68A           
CODE_27D687:        DE C7 06      DEC $06C7,x               
CODE_27D68A:        20 28 D7      JSR CODE_27D728           
CODE_27D68D:        D0 E2         BNE CODE_27D671           
CODE_27D68F:        BD E2 00      LDA $00E2,x               
CODE_27D692:        EB            XBA                       
CODE_27D693:        BD C9 05      LDA $05C9,x               
CODE_27D696:        C2 30         REP #$30                  
CODE_27D698:        38            SEC                       
CODE_27D699:        ED 10 02      SBC $0210                 
CODE_27D69C:        85 00         STA $00                   
CODE_27D69E:        18            CLC                       
CODE_27D69F:        69 08 00      ADC #$0008                
CODE_27D6A2:        85 02         STA $02                   
CODE_27D6A4:        E2 20         SEP #$20                  
CODE_27D6A6:        B4 C6         LDY $C6,x                 
CODE_27D6A8:        20 49 CF      JSR CODE_27CF49           
CODE_27D6AB:        AD 65 05      LDA $0565                 
CODE_27D6AE:        4A            LSR A                     
CODE_27D6AF:        4A            LSR A                     
CODE_27D6B0:        4A            LSR A                     
CODE_27D6B1:        6A            ROR A                     
CODE_27D6B2:        29 80         AND #$80                  
CODE_27D6B4:        09 22         ORA #$22                  
CODE_27D6B6:        99 03 08      STA $0803,y               
CODE_27D6B9:        99 07 08      STA $0807,y               
CODE_27D6BC:        49 40         EOR #$40                  
CODE_27D6BE:        99 0B 08      STA $080B,y               
CODE_27D6C1:        99 0F 08      STA $080F,y               
CODE_27D6C4:        C2 20         REP #$20                  
CODE_27D6C6:        BD C7 06      LDA $06C7,x               
CODE_27D6C9:        29 FF 00      AND #$00FF                
CODE_27D6CC:        4A            LSR A                     
CODE_27D6CD:        4A            LSR A                     
CODE_27D6CE:        4A            LSR A                     
CODE_27D6CF:        AA            TAX                       
CODE_27D6D0:        E2 20         SEP #$20                  
CODE_27D6D2:        BD 36 C8      LDA.w DATA_21C836,x               
CODE_27D6D5:        99 02 08      STA $0802,y               
CODE_27D6D8:        99 0A 08      STA $080A,y               
CODE_27D6DB:        1A            INC A                     
CODE_27D6DC:        99 06 08      STA $0806,y               
CODE_27D6DF:        99 0E 08      STA $080E,y               
CODE_27D6E2:        B9 03 08      LDA $0803,y               
CODE_27D6E5:        29 80         AND #$80                  
CODE_27D6E7:        F0 1C         BEQ CODE_27D705           
CODE_27D6E9:        B9 02 08      LDA $0802,y               
CODE_27D6EC:        48            PHA                       
CODE_27D6ED:        B9 06 08      LDA $0806,y               
CODE_27D6F0:        99 02 08      STA $0802,y               
CODE_27D6F3:        68            PLA                       
CODE_27D6F4:        99 06 08      STA $0806,y               
CODE_27D6F7:        B9 0A 08      LDA $080A,y               
CODE_27D6FA:        48            PHA                       
CODE_27D6FB:        B9 0E 08      LDA $080E,y               
CODE_27D6FE:        99 0A 08      STA $080A,y               
CODE_27D701:        68            PLA                       
CODE_27D702:        99 0E 08      STA $080E,y               
CODE_27D705:        5A            PHY                       
CODE_27D706:        C2 20         REP #$20                  
CODE_27D708:        98            TYA                       
CODE_27D709:        4A            LSR A                     
CODE_27D70A:        4A            LSR A                     
CODE_27D70B:        A8            TAY                       
CODE_27D70C:        E2 20         SEP #$20                  
CODE_27D70E:        A5 01         LDA $01                   
CODE_27D710:        29 01         AND #$01                  
CODE_27D712:        99 20 0A      STA $0A20,y               
CODE_27D715:        99 21 0A      STA $0A21,y               
CODE_27D718:        A5 03         LDA $03                   
CODE_27D71A:        29 01         AND #$01                  
CODE_27D71C:        99 22 0A      STA $0A22,y               
CODE_27D71F:        99 23 0A      STA $0A23,y               
CODE_27D722:        7A            PLY                       
CODE_27D723:        E2 10         SEP #$10                  
CODE_27D725:        A6 9B         LDX $9B                   
CODE_27D727:        60            RTS                       

CODE_27D728:        C2 10         REP #$10                  
CODE_27D72A:        A9 07         LDA #$07                  
CODE_27D72C:        85 DA         STA $DA                   
CODE_27D72E:        86 D8         STX $D8                   
CODE_27D730:        64 D9         STZ $D9                   
CODE_27D732:        A9 00         LDA #$00                  
CODE_27D734:        EB            XBA                       
CODE_27D735:        C2 20         REP #$20                  
CODE_27D737:        A5 D8         LDA $D8                   
CODE_27D739:        29 FF 00      AND #$00FF                
CODE_27D73C:        0A            ASL A                     
CODE_27D73D:        A8            TAY                       
CODE_27D73E:        B9 6E AF      LDA.w DATA_21AF6E,y               
CODE_27D741:        95 C6         STA $C6,x                 
CODE_27D743:        A8            TAY                       
CODE_27D744:        E2 20         SEP #$20                  
CODE_27D746:        A5 D8         LDA $D8                   
CODE_27D748:        1A            INC A                     
CODE_27D749:        29 07         AND #$07                  
CODE_27D74B:        85 D8         STA $D8                   
CODE_27D74D:        B9 01 08      LDA $0801,y               
CODE_27D750:        D9 09 08      CMP $0809,y               
CODE_27D753:        D0 04         BNE CODE_27D759           
CODE_27D755:        C9 F0         CMP #$F0                  
CODE_27D757:        F0 2A         BEQ CODE_27D783           
CODE_27D759:        C6 DA         DEC $DA                   
CODE_27D75B:        10 D5         BPL CODE_27D732           
CODE_27D75D:        A0 80 00      LDY #$0080                
CODE_27D760:        94 C6         STY $C6,x                 
CODE_27D762:        B9 01 08      LDA $0801,y               
CODE_27D765:        D9 05 08      CMP $0805,y               
CODE_27D768:        D0 04         BNE CODE_27D76E           
CODE_27D76A:        C9 F0         CMP #$F0                  
CODE_27D76C:        F0 15         BEQ CODE_27D783           
CODE_27D76E:        C2 20         REP #$20                  
CODE_27D770:        98            TYA                       
CODE_27D771:        18            CLC                       
CODE_27D772:        69 08 00      ADC #$0008                
CODE_27D775:        A8            TAY                       
CODE_27D776:        E2 20         SEP #$20                  
CODE_27D778:        C0 00 02      CPY #$0200                
CODE_27D77B:        D0 E3         BNE CODE_27D760           
CODE_27D77D:        A9 00         LDA #$00                  
CODE_27D77F:        95 C6         STA $C6,x                 
CODE_27D781:        95 C7         STA $C7,x                 
CODE_27D783:        E2 10         SEP #$10                  
CODE_27D785:        A5 0D         LDA $0D                   
CODE_27D787:        60            RTS                       

CODE_27D788:        8A            TXA                       
CODE_27D789:        45 15         EOR $15                   
CODE_27D78B:        29 01         AND #$01                  
CODE_27D78D:        A8            TAY                       
CODE_27D78E:        B9 7A C7      LDA.w DATA_21C77A,y               
CODE_27D791:        A8            TAY                       
CODE_27D792:        B9 01 08      LDA $0801,y               
CODE_27D795:        D9 05 08      CMP $0805,y               
CODE_27D798:        D0 0E         BNE CODE_27D7A8           
CODE_27D79A:        D9 09 08      CMP $0809,y               
CODE_27D79D:        D0 09         BNE CODE_27D7A8           
CODE_27D79F:        D9 0D 08      CMP $080D,y               
CODE_27D7A2:        D0 04         BNE CODE_27D7A8           
CODE_27D7A4:        C9 F0         CMP #$F0                  
CODE_27D7A6:        F0 23         BEQ CODE_27D7CB           
CODE_27D7A8:        A0 00         LDY #$00                  
CODE_27D7AA:        B9 01 08      LDA $0801,y               
CODE_27D7AD:        D9 05 08      CMP $0805,y               
CODE_27D7B0:        D0 0E         BNE CODE_27D7C0           
CODE_27D7B2:        D9 09 08      CMP $0809,y               
CODE_27D7B5:        D0 09         BNE CODE_27D7C0           
CODE_27D7B7:        D9 0D 08      CMP $080D,y               
CODE_27D7BA:        D0 04         BNE CODE_27D7C0           
CODE_27D7BC:        C9 F0         CMP #$F0                  
CODE_27D7BE:        F0 0B         BEQ CODE_27D7CB           
CODE_27D7C0:        98            TYA                       
CODE_27D7C1:        18            CLC                       
CODE_27D7C2:        69 10         ADC #$10                  
CODE_27D7C4:        A8            TAY                       
CODE_27D7C5:        C0 40         CPY #$40                  
CODE_27D7C7:        D0 E1         BNE CODE_27D7AA           
CODE_27D7C9:        38            SEC                       
CODE_27D7CA:        60            RTS                       

CODE_27D7CB:        18            CLC                       
CODE_27D7CC:        60            RTS                       

CODE_27D7CD:        A0 00         LDY #$00                  
CODE_27D7CF:        B9 01 08      LDA $0801,y               
CODE_27D7D2:        C9 F0         CMP #$F0                  
CODE_27D7D4:        F0 0B         BEQ CODE_27D7E1           
CODE_27D7D6:        98            TYA                       
CODE_27D7D7:        18            CLC                       
CODE_27D7D8:        69 04         ADC #$04                  
CODE_27D7DA:        A8            TAY                       
CODE_27D7DB:        C0 40         CPY #$40                  
CODE_27D7DD:        D0 F0         BNE CODE_27D7CF           
CODE_27D7DF:        38            SEC                       
CODE_27D7E0:        60            RTS                       

CODE_27D7E1:        18            CLC                       
CODE_27D7E2:        60            RTS                       

CODE_27D7E3:        BD DD 05      LDA $05DD,x               
CODE_27D7E6:        0A            ASL A                     
CODE_27D7E7:        0A            ASL A                     
CODE_27D7E8:        0A            ASL A                     
CODE_27D7E9:        0A            ASL A                     
CODE_27D7EA:        18            CLC                       
CODE_27D7EB:        7D AB 05      ADC $05AB,x               
CODE_27D7EE:        9D AB 05      STA $05AB,x               
CODE_27D7F1:        08            PHP                       
CODE_27D7F2:        BD DD 05      LDA $05DD,x               
CODE_27D7F5:        4A            LSR A                     
CODE_27D7F6:        4A            LSR A                     
CODE_27D7F7:        4A            LSR A                     
CODE_27D7F8:        4A            LSR A                     
CODE_27D7F9:        C9 08         CMP #$08                  
CODE_27D7FB:        A0 00         LDY #$00                  
CODE_27D7FD:        90 03         BCC CODE_27D802           
CODE_27D7FF:        09 F0         ORA #$F0                  
CODE_27D801:        88            DEY                       
CODE_27D802:        28            PLP                       
CODE_27D803:        7D C9 05      ADC $05C9,x               
CODE_27D806:        9D C9 05      STA $05C9,x               
CODE_27D809:        98            TYA                       
CODE_27D80A:        75 E2         ADC $E2,x                 
CODE_27D80C:        95 E2         STA $E2,x                 
CODE_27D80E:        60            RTS                       

CODE_27D80F:        BD D3 05      LDA $05D3,x               
CODE_27D812:        0A            ASL A                     
CODE_27D813:        0A            ASL A                     
CODE_27D814:        0A            ASL A                     
CODE_27D815:        0A            ASL A                     
CODE_27D816:        18            CLC                       
CODE_27D817:        7D A1 05      ADC $05A1,x               
CODE_27D81A:        9D A1 05      STA $05A1,x               
CODE_27D81D:        08            PHP                       
CODE_27D81E:        BD D3 05      LDA $05D3,x               
CODE_27D821:        4A            LSR A                     
CODE_27D822:        4A            LSR A                     
CODE_27D823:        4A            LSR A                     
CODE_27D824:        4A            LSR A                     
CODE_27D825:        C9 08         CMP #$08                  
CODE_27D827:        A0 00         LDY #$00                  
CODE_27D829:        90 03         BCC CODE_27D82E           
CODE_27D82B:        09 F0         ORA #$F0                  
CODE_27D82D:        88            DEY                       
CODE_27D82E:        28            PLP                       
CODE_27D82F:        7D BF 05      ADC $05BF,x               
CODE_27D832:        9D BF 05      STA $05BF,x               
CODE_27D835:        98            TYA                       
CODE_27D836:        7D D7 1F      ADC $1FD7,x               
CODE_27D839:        9D D7 1F      STA $1FD7,x               
CODE_27D83C:        60            RTS                       

CODE_27D83D:        A5 9C         LDA $9C                   
CODE_27D83F:        0F 73 39 7E   ORA $7E3973               
CODE_27D843:        D0 0A         BNE CODE_27D84F           
CODE_27D845:        A2 07         LDX #$07                  
CODE_27D847:        86 9B         STX $9B                   
CODE_27D849:        20 50 D8      JSR CODE_27D850           
CODE_27D84C:        CA            DEX                       
CODE_27D84D:        10 F8         BPL CODE_27D847           
CODE_27D84F:        60            RTS                       

CODE_27D850:        BD 15 1A      LDA $1A15,x               
CODE_27D853:        F0 FA         BEQ CODE_27D84F           
CODE_27D855:        48            PHA                       
CODE_27D856:        BD E3 06      LDA $06E3,x               
CODE_27D859:        F0 03         BEQ CODE_27D85E           
CODE_27D85B:        DE E3 06      DEC $06E3,x               
CODE_27D85E:        BD 57 1A      LDA $1A57,x               
CODE_27D861:        F0 03         BEQ CODE_27D866           
CODE_27D863:        DE 57 1A      DEC $1A57,x               
CODE_27D866:        68            PLA                       
CODE_27D867:        22 1F FB 20   JSL CODE_20FB1F           ; ExecutePtrShort

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

CODE_27D897:        BD 35 1A      LDA $1A35,x               ;\
CODE_27D89A:        CD 10 02      CMP $0210                 ; |
CODE_27D89D:        BD 2D 1A      LDA $1A2D,x               ; |
CODE_27D8A0:        E5 12         SBC $12                   ;/
CODE_27D8A2:        D0 18         BNE CODE_27D8BC           
CODE_27D8A4:        BD 35 1A      LDA $1A35,x               ;\
CODE_27D8A7:        38            SEC                       ; |If mario is not between $38 and $4C pixels 
CODE_27D8A8:        E5 5E         SBC $5E                   ; |close to the sprite (20 pixels area), branch
CODE_27D8AA:        C9 38         CMP #$38                  ; |
CODE_27D8AC:        90 0E         BCC CODE_27D8BC           ; |
CODE_27D8AE:        C9 4C         CMP #$4C                  ; |
CODE_27D8B0:        B0 0A         BCS CODE_27D8BC           ;/
CODE_27D8B2:        A0 07         LDY #$07                  ;\
CODE_27D8B4:        B9 C8 1F      LDA $1FC8,y               ; |
CODE_27D8B7:        F0 04         BEQ CODE_27D8BD           ; |Search free slot for laser sprite
CODE_27D8B9:        88            DEY                       ; |(Not regular sprite index. rather it's some other type)
CODE_27D8BA:        10 F8         BPL CODE_27D8B4           ;/ (Extended sprites maybe?)
CODE_27D8BC:        60            RTS                       ;return

CODE_27D8BD:        A9 01         LDA #$01                  ;\Sound effect the bowser statue laser plays
CODE_27D8BF:        8D 00 12      STA $1200                 ;/
CODE_27D8C2:        A9 15         LDA #$15                  ;\Sprite: Laser sprite
CODE_27D8C4:        99 C8 1F      STA $1FC8,y               ;/
CODE_27D8C7:        BD 2D 1A      LDA $1A2D,x               ;\
CODE_27D8CA:        EB            XBA                       ; |
CODE_27D8CB:        BD 35 1A      LDA $1A35,x               ; |Set extended sprite X pos
CODE_27D8CE:        C2 20         REP #$20                  ; |
CODE_27D8D0:        38            SEC                       ; |
CODE_27D8D1:        E9 08 00      SBC #$0008                ; |
CODE_27D8D4:        E2 20         SEP #$20                  ; |
CODE_27D8D6:        99 C9 05      STA $05C9,y               ; |
CODE_27D8D9:        EB            XBA                       ; |
CODE_27D8DA:        99 E2 00      STA $00E2,y               ;/
CODE_27D8DD:        BD 25 1A      LDA $1A25,x               ;\
CODE_27D8E0:        18            CLC                       ; |Set extended sprite Y pos
CODE_27D8E1:        69 08         ADC #$08                  ; |
CODE_27D8E3:        99 BF 05      STA $05BF,y               ;/
CODE_27D8E6:        BD 1D 1A      LDA $1A1D,x               
CODE_27D8E9:        99 D7 1F      STA $1FD7,y               
CODE_27D8EC:        60            RTS                       

CODE_27D8ED:        BD E3 06      LDA $06E3,x               
CODE_27D8F0:        D0 3A         BNE CODE_27D92C           
CODE_27D8F2:        BD 35 1A      LDA $1A35,x               
CODE_27D8F5:        CD 10 02      CMP $0210                 
CODE_27D8F8:        BD 2D 1A      LDA $1A2D,x               
CODE_27D8FB:        E5 12         SBC $12                   
CODE_27D8FD:        D0 2D         BNE CODE_27D92C           
CODE_27D8FF:        BD 35 1A      LDA $1A35,x               
CODE_27D902:        38            SEC                       
CODE_27D903:        ED 10 02      SBC $0210                 
CODE_27D906:        C9 F0         CMP #$F0                  
CODE_27D908:        B0 22         BCS CODE_27D92C                   
CODE_27D90A:        A9 87         LDA #$87                  
CODE_27D90C:        9D E3 06      STA $06E3,x               
CODE_27D90F:        BD 15 1A      LDA $1A15,x               
CODE_27D912:        85 00         STA $00                   
CODE_27D914:        C9 12         CMP #$12                  
CODE_27D916:        F0 04         BEQ CODE_27D91C           
CODE_27D918:        C9 08         CMP #$08                  
CODE_27D91A:        D0 03         BNE CODE_27D91F           
CODE_27D91C:        4C 2D D9      JMP CODE_27D92D           

CODE_27D91F:        C9 13         CMP #$13                  
CODE_27D921:        90 03         BCC CODE_27D926           
CODE_27D923:        4C 8A D9      JMP CODE_27D98A           

CODE_27D926:        18            CLC                       
CODE_27D927:        69 01         ADC #$01                  
CODE_27D929:        4C DB DA      JMP CODE_27DADB           

CODE_27D92C:        60            RTS                       

CODE_27D92D:        20 85 DC      JSR CODE_27DC85           
CODE_27D930:        A9 B0         LDA #$B0                  
CODE_27D932:        9D 71 06      STA $0671,x               
CODE_27D935:        FE F9 1F      INC $1FF9,x               
CODE_27D938:        A4 9B         LDY $9B                   
CODE_27D93A:        B9 25 1A      LDA $1A25,y               
CODE_27D93D:        95 71         STA $71,x                 
CODE_27D93F:        B9 1D 1A      LDA $1A1D,y               
CODE_27D942:        95 56         STA $56,x                 
CODE_27D944:        A5 00         LDA $00                   
CODE_27D946:        C9 11         CMP #$11                  
CODE_27D948:        A9 30         LDA #$30                  
CODE_27D94A:        A0 12         LDY #$12                  
CODE_27D94C:        B0 04         BCS CODE_27D952                   
CODE_27D94E:        A0 09         LDY #$09                  
CODE_27D950:        A9 D0         LDA #$D0                  
CODE_27D952:        84 00         STY $00                   
CODE_27D954:        95 8C         STA $8C,x                 
CODE_27D956:        49 80         EOR #$80                  
CODE_27D958:        A4 9B         LDY $9B                   
CODE_27D95A:        0A            ASL A                     
CODE_27D95B:        B9 35 1A      LDA $1A35,y               
CODE_27D95E:        B0 03         BCS CODE_27D963                   
CODE_27D960:        38            SEC                       
CODE_27D961:        E9 10         SBC #$10                  
CODE_27D963:        95 5F         STA $5F,x                 
CODE_27D965:        B9 2D 1A      LDA $1A2D,y               
CODE_27D968:        E9 00         SBC #$00                  
CODE_27D96A:        95 44         STA $44,x                 
CODE_27D96C:        A9 05         LDA #$05                  
CODE_27D96E:        9D E9 1F      STA $1FE9,x               
CODE_27D971:        20 E4 D9      JSR CODE_27D9E4           
CODE_27D974:        20 4E DB      JSR CODE_27DB4E           
CODE_27D977:        BD 25 1A      LDA $1A25,x               
CODE_27D97A:        38            SEC                       
CODE_27D97B:        ED 43 05      SBC $0543                 
CODE_27D97E:        18            CLC                       
CODE_27D97F:        69 04         ADC #$04                  
CODE_27D981:        8D 9F 1F      STA $1F9F                 
CODE_27D984:        69 08         ADC #$08                  
CODE_27D986:        8D A0 1F      STA $1FA0                 
CODE_27D989:        60            RTS                       

CODE_27D98A:        20 85 DC      JSR CODE_27DC85           
CODE_27D98D:        A9 50         LDA #$50                  
CODE_27D98F:        9D 71 06      STA $0671,x               
CODE_27D992:        A9 80         LDA #$80                  
CODE_27D994:        9D A6 06      STA $06A6,x               
CODE_27D997:        FE 21 10      INC $1021,x               
CODE_27D99A:        FE 89 06      INC $0689,x               
CODE_27D99D:        A4 9B         LDY $9B                   
CODE_27D99F:        B9 25 1A      LDA $1A25,y               
CODE_27D9A2:        38            SEC                       
CODE_27D9A3:        E9 08         SBC #$08                  
CODE_27D9A5:        95 71         STA $71,x                 
CODE_27D9A7:        B9 1D 1A      LDA $1A1D,y               
CODE_27D9AA:        E9 00         SBC #$00                  
CODE_27D9AC:        95 56         STA $56,x                 
CODE_27D9AE:        A9 D0         LDA #$D0                  
CODE_27D9B0:        95 9E         STA $9E,x                 
CODE_27D9B2:        A5 00         LDA $00                   
CODE_27D9B4:        C9 14         CMP #$14                  
CODE_27D9B6:        A9 10         LDA #$10                  
CODE_27D9B8:        A0 0B         LDY #$0B                  
CODE_27D9BA:        B0 03         BCS CODE_27D9BF                   
CODE_27D9BC:        88            DEY                       
CODE_27D9BD:        A9 F0         LDA #$F0                  
CODE_27D9BF:        84 00         STY $00                   
CODE_27D9C1:        95 8C         STA $8C,x                 
CODE_27D9C3:        0A            ASL A                     
CODE_27D9C4:        A9 00         LDA #$00                  
CODE_27D9C6:        85 01         STA $01                   
CODE_27D9C8:        A4 9B         LDY $9B                   
CODE_27D9CA:        A9 08         LDA #$08                  
CODE_27D9CC:        90 04         BCC CODE_27D9D2           
CODE_27D9CE:        A9 F8         LDA #$F8                  
CODE_27D9D0:        C6 01         DEC $01                   
CODE_27D9D2:        18            CLC                       
CODE_27D9D3:        79 35 1A      ADC $1A35,y               
CODE_27D9D6:        95 5F         STA $5F,x                 
CODE_27D9D8:        B9 2D 1A      LDA $1A2D,y               
CODE_27D9DB:        65 01         ADC $01                   
CODE_27D9DD:        95 44         STA $44,x                 
CODE_27D9DF:        A9 05         LDA #$05                  
CODE_27D9E1:        9D E9 1F      STA $1FE9,x               
CODE_27D9E4:        A6 9B         LDX $9B                   
CODE_27D9E6:        4C 4E DB      JMP CODE_27DB4E           

CODE_27D9E9:        BD E3 06      LDA $06E3,x               
CODE_27D9EC:        D0 61         BNE CODE_27DA4F           
CODE_27D9EE:        8A            TXA                       
CODE_27D9EF:        A8            TAY                       
CODE_27D9F0:        A9 70         LDA #$70                  
CODE_27D9F2:        99 E3 06      STA $06E3,y               
CODE_27D9F5:        FE DB 06      INC $06DB,x               
CODE_27D9F8:        BD DB 06      LDA $06DB,x               
CODE_27D9FB:        29 03         AND #$03                  
CODE_27D9FD:        F0 50         BEQ CODE_27DA4F           
CODE_27D9FF:        20 85 DC      JSR CODE_27DC85           
CODE_27DA02:        B9 35 1A      LDA $1A35,y               
CODE_27DA05:        95 5F         STA $5F,x                 
CODE_27DA07:        B9 2D 1A      LDA $1A2D,y               
CODE_27DA0A:        95 44         STA $44,x                 
CODE_27DA0C:        22 37 A8 27   JSL CODE_27A837           
CODE_27DA10:        84 01         STY $01                   
CODE_27DA12:        A4 9B         LDY $9B                   
CODE_27DA14:        B9 15 1A      LDA $1A15,y               
CODE_27DA17:        A0 00         LDY #$00                  
CODE_27DA19:        C9 05         CMP #$05                  
CODE_27DA1B:        D0 01         BNE CODE_27DA1E           
CODE_27DA1D:        C8            INY                       
CODE_27DA1E:        C4 01         CPY $01                   
CODE_27DA20:        D0 2E         BNE CODE_27DA50           
CODE_27DA22:        B9 43 C8      LDA.w DATA_21C843,y               
CODE_27DA25:        9D 79 06      STA $0679,x               
CODE_27DA28:        A4 9B         LDY $9B                   
CODE_27DA2A:        B9 25 1A      LDA $1A25,y               
CODE_27DA2D:        38            SEC                       
CODE_27DA2E:        E9 03         SBC #$03                  
CODE_27DA30:        95 71         STA $71,x                 
CODE_27DA32:        B9 1D 1A      LDA $1A1D,y               
CODE_27DA35:        E9 00         SBC #$00                  
CODE_27DA37:        95 56         STA $56,x                 
CODE_27DA39:        A9 72         LDA #$72                  
CODE_27DA3B:        9D 71 06      STA $0671,x               
CODE_27DA3E:        A9 01         LDA #$01                  
CODE_27DA40:        9D E9 1F      STA $1FE9,x               
CODE_27DA43:        A9 28         LDA #$28                  
CODE_27DA45:        9D 89 06      STA $0689,x               
CODE_27DA48:        A9 FF         LDA #$FF                  
CODE_27DA4A:        9D 51 06      STA $0651,x               
CODE_27DA4D:        A6 9B         LDX $9B                   
CODE_27DA4F:        60            RTS                       

CODE_27DA50:        A9 00         LDA #$00                  
CODE_27DA52:        9D 61 06      STA $0661,x               
CODE_27DA55:        F0 F6         BEQ CODE_27DA4D           
CODE_27DA57:        BD 57 1A      LDA $1A57,x               
CODE_27DA5A:        D0 36         BNE CODE_27DA92           
CODE_27DA5C:        A9 3D         LDA #$3D                  
CODE_27DA5E:        9D 57 1A      STA $1A57,x               
CODE_27DA61:        BD 25 1A      LDA $1A25,x               
CODE_27DA64:        CD 43 05      CMP $0543                 
CODE_27DA67:        BD 1D 1A      LDA $1A1D,x               
CODE_27DA6A:        ED 42 05      SBC $0542                 
CODE_27DA6D:        D0 55         BNE CODE_27DAC4           
CODE_27DA6F:        BD 35 1A      LDA $1A35,x               
CODE_27DA72:        CD 10 02      CMP $0210                 
CODE_27DA75:        BD 2D 1A      LDA $1A2D,x               
CODE_27DA78:        E5 12         SBC $12                   
CODE_27DA7A:        D0 48         BNE CODE_27DAC4           
CODE_27DA7C:        BD 35 1A      LDA $1A35,x               
CODE_27DA7F:        38            SEC                       
CODE_27DA80:        ED 10 02      SBC $0210                 
CODE_27DA83:        18            CLC                       
CODE_27DA84:        69 20         ADC #$20                  
CODE_27DA86:        C9 28         CMP #$28                  
CODE_27DA88:        90 3A         BCC CODE_27DAC4           
CODE_27DA8A:        A9 20         LDA #$20                  
CODE_27DA8C:        9D E3 06      STA $06E3,x               
CODE_27DA8F:        FE DB 06      INC $06DB,x               
CODE_27DA92:        BD E3 06      LDA $06E3,x               
CODE_27DA95:        F0 2D         BEQ CODE_27DAC4           
CODE_27DA97:        C9 1D         CMP #$1D                  
CODE_27DA99:        D0 2A         BNE CODE_27DAC5           
CODE_27DA9B:        AD 64 05      LDA $0564                 
CODE_27DA9E:        F0 07         BEQ CODE_27DAA7           
CODE_27DAA0:        A9 1E         LDA #$1E                  
CODE_27DAA2:        9D E3 06      STA $06E3,x               
CODE_27DAA5:        80 1D         BRA CODE_27DAC4           

CODE_27DAA7:        A9 15         LDA #$15                  
CODE_27DAA9:        8D 64 05      STA $0564                 
CODE_27DAAC:        BD 25 1A      LDA $1A25,x               
CODE_27DAAF:        8D 2B 05      STA $052B                 
CODE_27DAB2:        BD 1D 1A      LDA $1A1D,x               
CODE_27DAB5:        8D 2A 05      STA $052A                 
CODE_27DAB8:        BD 35 1A      LDA $1A35,x               
CODE_27DABB:        8D 29 05      STA $0529                 
CODE_27DABE:        BD 2D 1A      LDA $1A2D,x               
CODE_27DAC1:        8D 28 05      STA $0528                 
CODE_27DAC4:        60            RTS                       

CODE_27DAC5:        C9 01         CMP #$01                  
CODE_27DAC7:        D0 21         BNE CODE_27DAEA           
CODE_27DAC9:        BD DB 06      LDA $06DB,x               
CODE_27DACC:        29 07         AND #$07                  
CODE_27DACE:        85 00         STA $00                   
CODE_27DAD0:        20 E0 DA      JSR CODE_27DAE0           
CODE_27DAD3:        BD DB 06      LDA $06DB,x               
CODE_27DAD6:        18            CLC                       
CODE_27DAD7:        69 04         ADC #$04                  
CODE_27DAD9:        29 07         AND #$07                  
CODE_27DADB:        85 00         STA $00                   
CODE_27DADD:        4C E0 DA      JMP CODE_27DAE0           

CODE_27DAE0:        A0 05         LDY #$05                  
CODE_27DAE2:        B9 C8 1F      LDA $1FC8,y               
CODE_27DAE5:        F0 04         BEQ CODE_27DAEB           
CODE_27DAE7:        88            DEY                       
CODE_27DAE8:        10 F8         BPL CODE_27DAE2           
CODE_27DAEA:        60            RTS                       

CODE_27DAEB:        A9 0B         LDA #$0B                  
CODE_27DAED:        99 C8 1F      STA $1FC8,y               
CODE_27DAF0:        BD 2D 1A      LDA $1A2D,x               
CODE_27DAF3:        85 D9         STA $D9                   
CODE_27DAF5:        BD 35 1A      LDA $1A35,x               
CODE_27DAF8:        85 D8         STA $D8                   
CODE_27DAFA:        A6 00         LDX $00                   
CODE_27DAFC:        C2 20         REP #$20                  
CODE_27DAFE:        BD 75 C8      LDA.w DATA_21C875,x               
CODE_27DB01:        29 FF 00      AND #$00FF                
CODE_27DB04:        C9 80 00      CMP #$0080                
CODE_27DB07:        90 03         BCC CODE_27DB0C           
CODE_27DB09:        09 00 FF      ORA #$FF00                
CODE_27DB0C:        18            CLC                       
CODE_27DB0D:        65 D8         ADC $D8                   
CODE_27DB0F:        85 D8         STA $D8                   
CODE_27DB11:        E2 20         SEP #$20                  
CODE_27DB13:        A5 D8         LDA $D8                   
CODE_27DB15:        99 C9 05      STA $05C9,y               
CODE_27DB18:        A5 D9         LDA $D9                   
CODE_27DB1A:        99 E2 00      STA $00E2,y               
CODE_27DB1D:        BD 61 C8      LDA.w DATA_21C861,x               
CODE_27DB20:        99 D3 05      STA $05D3,y               
CODE_27DB23:        BD 4D C8      LDA.w DATA_21C84D,x               
CODE_27DB26:        99 DD 05      STA $05DD,y               
CODE_27DB29:        A9 00         LDA #$00                  
CODE_27DB2B:        85 02         STA $02                   
CODE_27DB2D:        BD 8B C8      LDA.w DATA_21C88B,x               
CODE_27DB30:        10 02         BPL CODE_27DB34           
CODE_27DB32:        C6 02         DEC $02                   
CODE_27DB34:        18            CLC                       
CODE_27DB35:        A6 9B         LDX $9B                   
CODE_27DB37:        7D 25 1A      ADC $1A25,x               
CODE_27DB3A:        99 BF 05      STA $05BF,y               
CODE_27DB3D:        BD 1D 1A      LDA $1A1D,x               
CODE_27DB40:        65 02         ADC $02                   
CODE_27DB42:        99 D7 1F      STA $1FD7,y               
CODE_27DB45:        A9 00         LDA #$00                  
CODE_27DB47:        99 C7 06      STA $06C7,y               
CODE_27DB4A:        4C 4E DB      JMP CODE_27DB4E           

CODE_27DB4D:        60            RTS                       

CODE_27DB4E:        A9 4A         LDA #$4A                  
CODE_27DB50:        8D 03 12      STA $1203                 
CODE_27DB53:        22 44 95 27   JSL CODE_279544           
CODE_27DB57:        A9 01         LDA #$01                  
CODE_27DB59:        8D 9C 1F      STA $1F9C                 
CODE_27DB5C:        BD 35 1A      LDA $1A35,x               
CODE_27DB5F:        18            CLC                       
CODE_27DB60:        A6 00         LDX $00                   
CODE_27DB62:        7D 75 C8      ADC.w DATA_21C875,x               
CODE_27DB65:        38            SEC                       
CODE_27DB66:        ED 10 02      SBC $0210                 
CODE_27DB69:        8D A2 1F      STA $1FA2                 
CODE_27DB6C:        BD 8B C8      LDA.w DATA_21C88B,x               
CODE_27DB6F:        A6 9B         LDX $9B                   
CODE_27DB71:        18            CLC                       
CODE_27DB72:        7D 25 1A      ADC $1A25,x               
CODE_27DB75:        38            SEC                       
CODE_27DB76:        ED 43 05      SBC $0543                 
CODE_27DB79:        8D 9F 1F      STA $1F9F                 
CODE_27DB7C:        A9 1F         LDA #$1F                  
CODE_27DB7E:        8D AE 1F      STA $1FAE                 
CODE_27DB81:        60            RTS                       

DATA_27DB82:    db $60,$20

CODE_27DB84:        BD E3 06      LDA $06E3,x
CODE_27DB87:        D0 5A         BNE CODE_27DBE3    
CODE_27DB89:        BD 35 1A      LDA $1A35,x               
CODE_27DB8C:        CD 10 02      CMP $0210                 
CODE_27DB8F:        BD 2D 1A      LDA $1A2D,x               
CODE_27DB92:        E5 12         SBC $12                   
CODE_27DB94:        D0 4D         BNE CODE_27DBE3           
CODE_27DB96:        BD 35 1A      LDA $1A35,x               
CODE_27DB99:        38            SEC                       
CODE_27DB9A:        ED 10 02      SBC $0210                 
CODE_27DB9D:        C9 F0         CMP #$F0                  
CODE_27DB9F:        B0 42         BCS CODE_27DBE3                   
CODE_27DBA1:        A9 C0         LDA #$C0                  
CODE_27DBA3:        9D E3 06      STA $06E3,x               
CODE_27DBA6:        20 85 DC      JSR CODE_27DC85           
CODE_27DBA9:        A4 9B         LDY $9B                   
CODE_27DBAB:        A9 AD         LDA #$AD                  
CODE_27DBAD:        9D 71 06      STA $0671,x               
CODE_27DBB0:        B9 25 1A      LDA $1A25,y               
CODE_27DBB3:        38            SEC                       
CODE_27DBB4:        E9 06         SBC #$06                  
CODE_27DBB6:        95 71         STA $71,x                 
CODE_27DBB8:        B9 1D 1A      LDA $1A1D,y               
CODE_27DBBB:        E9 00         SBC #$00                  
CODE_27DBBD:        95 56         STA $56,x                 
CODE_27DBBF:        B9 2D 1A      LDA $1A2D,y               
CODE_27DBC2:        95 44         STA $44,x                 
CODE_27DBC4:        B9 35 1A      LDA $1A35,y               
CODE_27DBC7:        95 5F         STA $5F,x                 
CODE_27DBC9:        A9 00         LDA #$00                  
CODE_27DBCB:        95 68         STA $68,x                 
CODE_27DBCD:        A9 28         LDA #$28                  
CODE_27DBCF:        9D 18 05      STA $0518,x               
CODE_27DBD2:        A9 05         LDA #$05                  
CODE_27DBD4:        9D E9 1F      STA $1FE9,x               
CODE_27DBD7:        22 37 A8 27   JSL CODE_27A837           
CODE_27DBDB:        B9 82 DB      LDA.w DATA_21DB82,y               
CODE_27DBDE:        9D 79 06      STA $0679,x               
CODE_27DBE1:        A6 9B         LDX $9B                   
CODE_27DBE3:        60            RTS                       

CODE_27DBE4:        BD E3 06      LDA $06E3,x               
CODE_27DBE7:        D0 FA         BNE CODE_27DBE3           
CODE_27DBE9:        BD 25 1A      LDA $1A25,x               
CODE_27DBEC:        CD 43 05      CMP $0543                 
CODE_27DBEF:        BD 1D 1A      LDA $1A1D,x               
CODE_27DBF2:        ED 42 05      SBC $0542                 
CODE_27DBF5:        D0 EC         BNE CODE_27DBE3           
CODE_27DBF7:        BD 35 1A      LDA $1A35,x               
CODE_27DBFA:        CD 10 02      CMP $0210                 
CODE_27DBFD:        BD 2D 1A      LDA $1A2D,x               
CODE_27DC00:        E5 12         SBC $12                   
CODE_27DC02:        D0 DF         BNE CODE_27DBE3           
CODE_27DC04:        BD 83 07      LDA $0783,x               
CODE_27DC07:        29 1F         AND #$1F                  
CODE_27DC09:        09 80         ORA #$80                  
CODE_27DC0B:        9D E3 06      STA $06E3,x               
CODE_27DC0E:        BD 35 1A      LDA $1A35,x               
CODE_27DC11:        38            SEC                       
CODE_27DC12:        ED 10 02      SBC $0210                 
CODE_27DC15:        18            CLC                       
CODE_27DC16:        69 10         ADC #$10                  
CODE_27DC18:        C9 20         CMP #$20                  
CODE_27DC1A:        90 C7         BCC CODE_27DBE3           
CODE_27DC1C:        A5 5E         LDA $5E                   
CODE_27DC1E:        FD 35 1A      SBC $1A35,x               
CODE_27DC21:        18            CLC                       
CODE_27DC22:        69 11         ADC #$11                  
CODE_27DC24:        C9 22         CMP #$22                  
CODE_27DC26:        90 BB         BCC CODE_27DBE3           
CODE_27DC28:        20 85 DC      JSR CODE_27DC85           
CODE_27DC2B:        A4 9B         LDY $9B                   
CODE_27DC2D:        B9 15 1A      LDA $1A15,y               
CODE_27DC30:        4A            LSR A                     
CODE_27DC31:        A9 78         LDA #$78                  
CODE_27DC33:        B0 02         BCS CODE_27DC37                   
CODE_27DC35:        A9 79         LDA #$79                  
CODE_27DC37:        9D 71 06      STA $0671,x               
CODE_27DC3A:        A9 00         LDA #$00                  
CODE_27DC3C:        9D E9 1F      STA $1FE9,x               
CODE_27DC3F:        B9 25 1A      LDA $1A25,y               
CODE_27DC42:        38            SEC                       
CODE_27DC43:        E9 01         SBC #$01                  
CODE_27DC45:        95 71         STA $71,x                 
CODE_27DC47:        B9 1D 1A      LDA $1A1D,y               
CODE_27DC4A:        E9 00         SBC #$00                  
CODE_27DC4C:        95 56         STA $56,x                 
CODE_27DC4E:        B9 2D 1A      LDA $1A2D,y               
CODE_27DC51:        95 44         STA $44,x                 
CODE_27DC53:        B9 35 1A      LDA $1A35,y               
CODE_27DC56:        95 5F         STA $5F,x                 
CODE_27DC58:        9D D7 1C      STA $1CD7,x               
CODE_27DC5B:        A9 0C         LDA #$0C                  
CODE_27DC5D:        9D 18 05      STA $0518,x               
CODE_27DC60:        A9 20         LDA #$20                  
CODE_27DC62:        9D D2 1F      STA $1FD2,x               
CODE_27DC65:        22 37 A8 27   JSL CODE_27A837           
CODE_27DC69:        B9 A1 C8      LDA.w DATA_21C8A1,y               
CODE_27DC6C:        95 8C         STA $8C,x                 
CODE_27DC6E:        B9 A3 C8      LDA.w DATA_21C8A3,y               
CODE_27DC71:        9D 79 06      STA $0679,x               
CODE_27DC74:        B9 A5 C8      LDA.w DATA_21C8A5,y               
CODE_27DC77:        95 4D         STA $4D,x                 
CODE_27DC79:        A6 9B         LDX $9B                   
CODE_27DC7B:        98            TYA                       
CODE_27DC7C:        18            CLC                       
CODE_27DC7D:        69 14         ADC #$14                  
CODE_27DC7F:        85 00         STA $00                   
CODE_27DC81:        20 4E DB      JSR CODE_27DB4E           
CODE_27DC84:        60            RTS                       

CODE_27DC85:        A2 04         LDX #$04                  
CODE_27DC87:        BD 61 06      LDA $0661,x               
CODE_27DC8A:        F0 08         BEQ CODE_27DC94           
CODE_27DC8C:        CA            DEX                       
CODE_27DC8D:        10 F8         BPL CODE_27DC87           
CODE_27DC8F:        68            PLA                       
CODE_27DC90:        68            PLA                       
CODE_27DC91:        A6 9B         LDX $9B                   
CODE_27DC93:        60            RTS                       

CODE_27DC94:        22 96 9C 27   JSL CODE_279C96           
CODE_27DC98:        A9 02         LDA #$02                  
CODE_27DC9A:        9D 61 06      STA $0661,x               
CODE_27DC9D:        60            RTS                       

CODE_27DC9E:        AD 4E 03      LDA $034E                 
CODE_27DCA1:        D0 01         BNE CODE_27DCA4           
CODE_27DCA3:        6B            RTL                       

CODE_27DCA4:        EE 4E 03      INC $034E                 
CODE_27DCA7:        C9 10         CMP #$10                  
CODE_27DCA9:        D0 07         BNE CODE_27DCB2           
CODE_27DCAB:        08            PHP                       
CODE_27DCAC:        A2 10         LDX #$10                  
CODE_27DCAE:        8E 03 12      STX $1203                 
CODE_27DCB1:        28            PLP                       
CODE_27DCB2:        B0 5A         BCS CODE_27DD0E                   
CODE_27DCB4:        20 64 DD      JSR CODE_27DD64           
CODE_27DCB7:        A2 00         LDX #$00                  
CODE_27DCB9:        20 28 D7      JSR CODE_27D728           
CODE_27DCBC:        C2 10         REP #$10                  
CODE_27DCBE:        A4 C6         LDY $C6                   
CODE_27DCC0:        A2 00 00      LDX #$0000                
CODE_27DCC3:        A5 0A         LDA $0A                   
CODE_27DCC5:        99 00 08      STA $0800,y               
CODE_27DCC8:        18            CLC                       
CODE_27DCC9:        69 08         ADC #$08                  
CODE_27DCCB:        99 04 08      STA $0804,y               
CODE_27DCCE:        A5 0B         LDA $0B                   
CODE_27DCD0:        99 01 08      STA $0801,y               
CODE_27DCD3:        99 05 08      STA $0805,y               
CODE_27DCD6:        18            CLC                       
CODE_27DCD7:        69 08         ADC #$08                  
CODE_27DCD9:        85 0B         STA $0B                   
CODE_27DCDB:        A5 0C         LDA $0C                   
CODE_27DCDD:        E6 0C         INC $0C                   
CODE_27DCDF:        E6 0C         INC $0C                   
CODE_27DCE1:        99 02 08      STA $0802,y               
CODE_27DCE4:        1A            INC A                     
CODE_27DCE5:        99 06 08      STA $0806,y               
CODE_27DCE8:        A9 20         LDA #$20                  
CODE_27DCEA:        99 03 08      STA $0803,y               
CODE_27DCED:        99 07 08      STA $0807,y               
CODE_27DCF0:        C2 20         REP #$20                  
CODE_27DCF2:        98            TYA                       
CODE_27DCF3:        4A            LSR A                     
CODE_27DCF4:        4A            LSR A                     
CODE_27DCF5:        DA            PHX                       
CODE_27DCF6:        AA            TAX                       
CODE_27DCF7:        E2 20         SEP #$20                  
CODE_27DCF9:        9E 20 0A      STZ $0A20,x               
CODE_27DCFC:        9E 21 0A      STZ $0A21,x               
CODE_27DCFF:        FA            PLX                       
CODE_27DD00:        98            TYA                       
CODE_27DD01:        18            CLC                       
CODE_27DD02:        69 08         ADC #$08                  
CODE_27DD04:        A8            TAY                       
CODE_27DD05:        E8            INX                       
CODE_27DD06:        E0 04 00      CPX #$0004                
CODE_27DD09:        D0 B8         BNE CODE_27DCC3           
CODE_27DD0B:        E2 10         SEP #$10                  
CODE_27DD0D:        6B            RTL                       

CODE_27DD0E:        C9 20         CMP #$20                  
CODE_27DD10:        B0 51         BCS CODE_27DD63                   
CODE_27DD12:        49 1F         EOR #$1F                  
CODE_27DD14:        20 64 DD      JSR CODE_27DD64           
CODE_27DD17:        A9 04         LDA #$04                  
CODE_27DD19:        85 0D         STA $0D                   
CODE_27DD1B:        20 CD D7      JSR CODE_27D7CD           
CODE_27DD1E:        A5 0A         LDA $0A                   
CODE_27DD20:        99 00 08      STA $0800,y               
CODE_27DD23:        98            TYA                       
CODE_27DD24:        4A            LSR A                     
CODE_27DD25:        4A            LSR A                     
CODE_27DD26:        AA            TAX                       
CODE_27DD27:        9E 20 0A      STZ $0A20,x               
CODE_27DD2A:        9E 21 0A      STZ $0A21,x               
CODE_27DD2D:        A5 0B         LDA $0B                   
CODE_27DD2F:        99 01 08      STA $0801,y               
CODE_27DD32:        A5 0C         LDA $0C                   
CODE_27DD34:        99 02 08      STA $0802,y               
CODE_27DD37:        A9 20         LDA #$20                  
CODE_27DD39:        99 03 08      STA $0803,y               
CODE_27DD3C:        E6 0C         INC $0C                   
CODE_27DD3E:        20 CD D7      JSR CODE_27D7CD           
CODE_27DD41:        A5 0A         LDA $0A                   
CODE_27DD43:        18            CLC                       
CODE_27DD44:        69 08         ADC #$08                  
CODE_27DD46:        99 00 08      STA $0800,y               
CODE_27DD49:        A5 0B         LDA $0B                   
CODE_27DD4B:        99 01 08      STA $0801,y               
CODE_27DD4E:        18            CLC                       
CODE_27DD4F:        69 08         ADC #$08                  
CODE_27DD51:        85 0B         STA $0B                   
CODE_27DD53:        A5 0C         LDA $0C                   
CODE_27DD55:        99 02 08      STA $0802,y               
CODE_27DD58:        A9 20         LDA #$20                  
CODE_27DD5A:        99 03 08      STA $0803,y               
CODE_27DD5D:        E6 0C         INC $0C                   
CODE_27DD5F:        C6 0D         DEC $0D                   
CODE_27DD61:        D0 B8         BNE CODE_27DD1B           
CODE_27DD63:        6B            RTL                       

CODE_27DD64:        C2 20         REP #$20                  
CODE_27DD66:        29 FC 00      AND #$00FC                
CODE_27DD69:        4A            LSR A                     
CODE_27DD6A:        4A            LSR A                     
CODE_27DD6B:        EB            XBA                       
CODE_27DD6C:        18            CLC                       
CODE_27DD6D:        69 00 D0      ADC #$D000                
CODE_27DD70:        8D 2C 02      STA $022C                 
CODE_27DD73:        18            CLC                       
CODE_27DD74:        69 40 00      ADC #$0040                
CODE_27DD77:        8D 2E 02      STA $022E                 
CODE_27DD7A:        18            CLC                       
CODE_27DD7B:        69 40 00      ADC #$0040                
CODE_27DD7E:        8D 30 02      STA $0230                 
CODE_27DD81:        18            CLC                       
CODE_27DD82:        69 40 00      ADC #$0040                
CODE_27DD85:        8D 32 02      STA $0232                 
CODE_27DD88:        E2 20         SEP #$20                  
CODE_27DD8A:        A9 32         LDA #$32                  
CODE_27DD8C:        8D 39 02      STA $0239                 
CODE_27DD8F:        A5 70         LDA $70                   
CODE_27DD91:        85 D8         STA $D8                   
CODE_27DD93:        A5 55         LDA $55                   
CODE_27DD95:        85 D9         STA $D9                   
CODE_27DD97:        A5 43         LDA $43                   
CODE_27DD99:        EB            XBA                       
CODE_27DD9A:        A5 5E         LDA $5E                   
CODE_27DD9C:        C2 20         REP #$20                  
CODE_27DD9E:        38            SEC                       
CODE_27DD9F:        ED 10 02      SBC $0210                 
CODE_27DDA2:        85 0A         STA $0A                   
CODE_27DDA4:        A5 D8         LDA $D8                   
CODE_27DDA6:        38            SEC                       
CODE_27DDA7:        ED 16 02      SBC $0216                 
CODE_27DDAA:        3A            DEC A                     
CODE_27DDAB:        85 0B         STA $0B                   
CODE_27DDAD:        E2 20         SEP #$20                  
CODE_27DDAF:        A9 10         LDA #$10                  
CODE_27DDB1:        85 0C         STA $0C                   
CODE_27DDB3:        60            RTS                       

DATA_27DDB4:        dw $FFFF
                    dw $0002
                    dw $0005
                    dw $0008
                    dw $0008
                    dw $0005
                    dw $0002
                    dw $FFFF

DATA_27DDC4:        db $FA,$FB,$FC,$FD

CODE_27DDC8:        64 D8         STZ $D8
CODE_27DDCA:        A5 BC         LDA $BC                   
CODE_27DDCC:        CD 84 E9      CMP.w DATA_21E984                 
CODE_27DDCF:        F0 11         BEQ CODE_27DDE2           
CODE_27DDD1:        CD 85 E9      CMP.w DATA_21E984+1                 
CODE_27DDD4:        F0 0C         BEQ CODE_27DDE2           
CODE_27DDD6:        AF 22 C5 7F   LDA $7FC522               
CODE_27DDDA:        0F 23 C5 7F   ORA $7FC523               
CODE_27DDDE:        F0 D3         BEQ CODE_27DDB3           
CODE_27DDE0:        E6 D8         INC $D8                   
CODE_27DDE2:        AD 01 12      LDA $1201                 
CODE_27DDE5:        D0 0B         BNE CODE_27DDF2           
CODE_27DDE7:        A5 15         LDA $15                   
CODE_27DDE9:        29 07         AND #$07                  
CODE_27DDEB:        D0 05         BNE CODE_27DDF2           
CODE_27DDED:        A9 04         LDA #$04                  
CODE_27DDEF:        8D 01 12      STA $1201                 
CODE_27DDF2:        A2 01         LDX #$01                  
CODE_27DDF4:        BF 22 C5 7F   LDA $7FC522,x             
CODE_27DDF8:        F0 50         BEQ CODE_27DE4A           
CODE_27DDFA:        1A            INC A                     
CODE_27DDFB:        9F 22 C5 7F   STA $7FC522,x             
CODE_27DDFF:        29 0F         AND #$0F                  
CODE_27DE01:        C9 04         CMP #$04                  
CODE_27DE03:        D0 3B         BNE CODE_27DE40           
CODE_27DE05:        A4 D8         LDY $D8                   
CODE_27DE07:        D0 37         BNE CODE_27DE40           
CODE_27DE09:        DA            PHX                       
CODE_27DE0A:        8A            TXA                       
CODE_27DE0B:        49 01         EOR #$01                  
CODE_27DE0D:        AA            TAX                       
CODE_27DE0E:        BF 22 C5 7F   LDA $7FC522,x             
CODE_27DE12:        29 F0         AND #$F0                  
CODE_27DE14:        C9 40         CMP #$40                  
CODE_27DE16:        F0 03         BEQ CODE_27DE1B           
CODE_27DE18:        18            CLC                       
CODE_27DE19:        69 10         ADC #$10                  
CODE_27DE1B:        9F 22 C5 7F   STA $7FC522,x             
CODE_27DE1F:        A5 5E         LDA $5E                   
CODE_27DE21:        9F 24 C5 7F   STA $7FC524,x             
CODE_27DE25:        A5 43         LDA $43                   
CODE_27DE27:        9F 26 C5 7F   STA $7FC526,x             
CODE_27DE2B:        A5 70         LDA $70                   
CODE_27DE2D:        9F 28 C5 7F   STA $7FC528,x             
CODE_27DE31:        A5 55         LDA $55                   
CODE_27DE33:        9F 2A C5 7F   STA $7FC52A,x             
CODE_27DE37:        A5 BD         LDA $BD                   
CODE_27DE39:        9F 2C C5 7F   STA $7FC52C,x             
CODE_27DE3D:        FA            PLX                       
CODE_27DE3E:        80 0A         BRA CODE_27DE4A           

CODE_27DE40:        C9 08         CMP #$08                  
CODE_27DE42:        D0 06         BNE CODE_27DE4A           
CODE_27DE44:        A9 00         LDA #$00                  
CODE_27DE46:        9F 22 C5 7F   STA $7FC522,x             
CODE_27DE4A:        CA            DEX                       
CODE_27DE4B:        10 A7         BPL CODE_27DDF4           
CODE_27DE4D:        A2 01         LDX #$01                  
CODE_27DE4F:        BF 22 C5 7F   LDA $7FC522,x             
CODE_27DE53:        D0 03         BNE CODE_27DE58           
CODE_27DE55:        82 92 00      BRL CODE_27DEEA           

CODE_27DE58:        20 CD D7      JSR CODE_27D7CD           
CODE_27DE5B:        DA            PHX                       
CODE_27DE5C:        BF 2C C5 7F   LDA $7FC52C,x             
CODE_27DE60:        29 40         AND #$40                  
CODE_27DE62:        4A            LSR A                     
CODE_27DE63:        4A            LSR A                     
CODE_27DE64:        4A            LSR A                     
CODE_27DE65:        85 D8         STA $D8                   
CODE_27DE67:        BF 22 C5 7F   LDA $7FC522,x             
CODE_27DE6B:        85 DC         STA $DC                   
CODE_27DE6D:        29 F0         AND #$F0                  
CODE_27DE6F:        38            SEC                       
CODE_27DE70:        E9 10         SBC #$10                  
CODE_27DE72:        4A            LSR A                     
CODE_27DE73:        4A            LSR A                     
CODE_27DE74:        4A            LSR A                     
CODE_27DE75:        18            CLC                       
CODE_27DE76:        65 D8         ADC $D8                   
CODE_27DE78:        AA            TAX                       
CODE_27DE79:        C2 20         REP #$20                  
CODE_27DE7B:        BF B4 DD 27   LDA.l DATA_27DDB4,x             
CODE_27DE7F:        85 DA         STA $DA                   
CODE_27DE81:        E2 20         SEP #$20                  
CODE_27DE83:        A5 DC         LDA $DC                   
CODE_27DE85:        29 0F         AND #$0F                  
CODE_27DE87:        4A            LSR A                     
CODE_27DE88:        AA            TAX                       
CODE_27DE89:        BF C4 DD 27   LDA.l DATA_27DDC4,x             
CODE_27DE8D:        85 DC         STA $DC                   
CODE_27DE8F:        FA            PLX                       
CODE_27DE90:        BF 28 C5 7F   LDA $7FC528,x             
CODE_27DE94:        85 D8         STA $D8                   
CODE_27DE96:        BF 2A C5 7F   LDA $7FC52A,x             
CODE_27DE9A:        85 D9         STA $D9                   
CODE_27DE9C:        BF 26 C5 7F   LDA $7FC526,x             
CODE_27DEA0:        EB            XBA                       
CODE_27DEA1:        BF 24 C5 7F   LDA $7FC524,x             
CODE_27DEA5:        C2 20         REP #$20                  
CODE_27DEA7:        38            SEC                       
CODE_27DEA8:        ED 10 02      SBC $0210                 
CODE_27DEAB:        18            CLC                       
CODE_27DEAC:        65 DA         ADC $DA                   
CODE_27DEAE:        85 0A         STA $0A                   
CODE_27DEB0:        A5 D8         LDA $D8                   
CODE_27DEB2:        38            SEC                       
CODE_27DEB3:        ED 16 02      SBC $0216                 
CODE_27DEB6:        18            CLC                       
CODE_27DEB7:        69 1A 00      ADC #$001A                
CODE_27DEBA:        85 D8         STA $D8                   
CODE_27DEBC:        E2 20         SEP #$20                  
CODE_27DEBE:        A5 D9         LDA $D9                   
CODE_27DEC0:        D0 28         BNE CODE_27DEEA           
CODE_27DEC2:        A5 0A         LDA $0A                   
CODE_27DEC4:        99 00 08      STA $0800,y               
CODE_27DEC7:        A5 D8         LDA $D8                   
CODE_27DEC9:        99 01 08      STA $0801,y               
CODE_27DECC:        A5 DC         LDA $DC                   
CODE_27DECE:        99 02 08      STA $0802,y               
CODE_27DED1:        DA            PHX                       
CODE_27DED2:        A9 21         LDA #$21                  
CODE_27DED4:        AE 88 05      LDX $0588                 
CODE_27DED7:        F0 02         BEQ CODE_27DEDB           
CODE_27DED9:        A9 11         LDA #$11                  
CODE_27DEDB:        99 03 08      STA $0803,y               
CODE_27DEDE:        FA            PLX                       
CODE_27DEDF:        98            TYA                       
CODE_27DEE0:        4A            LSR A                     
CODE_27DEE1:        4A            LSR A                     
CODE_27DEE2:        A8            TAY                       
CODE_27DEE3:        A5 0B         LDA $0B                   
CODE_27DEE5:        29 01         AND #$01                  
CODE_27DEE7:        99 20 0A      STA $0A20,y               
CODE_27DEEA:        CA            DEX                       
CODE_27DEEB:        30 03         BMI CODE_27DEF0           
CODE_27DEED:        82 5F FF      BRL CODE_27DE4F           

CODE_27DEF0:        60            RTS                       

CODE_27DEF1:        AD 80 05      LDA $0580                 
CODE_27DEF4:        F0 2E         BEQ CODE_27DF24           
CODE_27DEF6:        AD C1 02      LDA $02C1                 
CODE_27DEF9:        C9 34         CMP #$34                  
CODE_27DEFB:        D0 27         BNE CODE_27DF24           
CODE_27DEFD:        C0 01         CPY #$01                  
CODE_27DEFF:        F0 21         BEQ CODE_27DF22           
CODE_27DF01:        B5 71         LDA $71,x                 
CODE_27DF03:        38            SEC                       
CODE_27DF04:        ED 43 05      SBC $0543                 
CODE_27DF07:        C9 9E         CMP #$9E                  
CODE_27DF09:        90 17         BCC CODE_27DF22           
CODE_27DF0B:        C9 A4         CMP #$A4                  
CODE_27DF0D:        B0 13         BCS CODE_27DF22                   
CODE_27DF0F:        BD 20 05      LDA $0520,x               
CODE_27DF12:        D0 0E         BNE CODE_27DF22           
CODE_27DF14:        A9 10         LDA #$10                  
CODE_27DF16:        9D 20 05      STA $0520,x               
CODE_27DF19:        22 34 8F 27   JSL CODE_278F34           
CODE_27DF1D:        A9 82         LDA #$82                  
CODE_27DF1F:        99 93 1F      STA $1F93,y               
CODE_27DF22:        18            CLC                       
CODE_27DF23:        6B            RTL                       

CODE_27DF24:        38            SEC                       
CODE_27DF25:        6B            RTL                       

CODE_27DF26:        8B            PHB                       
CODE_27DF27:        4B            PHK                       
CODE_27DF28:        AB            PLB                       
CODE_27DF29:        85 08         STA $08                   
CODE_27DF2B:        BD 71 06      LDA $0671,x               
CODE_27DF2E:        C9 18         CMP #$18                  
CODE_27DF30:        D0 0E         BNE CODE_27DF40           
CODE_27DF32:        A9 22         LDA #$22                  
CODE_27DF34:        85 0C         STA $0C                   
CODE_27DF36:        64 0D         STZ $0D                   
CODE_27DF38:        A9 28         LDA #$28                  
CODE_27DF3A:        85 0E         STA $0E                   
CODE_27DF3C:        64 0F         STZ $0F                   
CODE_27DF3E:        80 0C         BRA CODE_27DF4C           

CODE_27DF40:        A9 1A         LDA #$1A                  
CODE_27DF42:        85 0C         STA $0C                   
CODE_27DF44:        64 0D         STZ $0D                   
CODE_27DF46:        A9 18         LDA #$18                  
CODE_27DF48:        85 0E         STA $0E                   
CODE_27DF4A:        64 0F         STZ $0F                   
CODE_27DF4C:        B5 5F         LDA $5F,x                 
CODE_27DF4E:        85 0A         STA $0A                   
CODE_27DF50:        B5 44         LDA $44,x                 
CODE_27DF52:        85 0B         STA $0B                   
CODE_27DF54:        C2 20         REP #$20                  
CODE_27DF56:        A5 0A         LDA $0A                   
CODE_27DF58:        38            SEC                       
CODE_27DF59:        ED 10 02      SBC $0210                 
CODE_27DF5C:        38            SEC                       
CODE_27DF5D:        E9 09 00      SBC #$0009                
CODE_27DF60:        85 0A         STA $0A                   
CODE_27DF62:        18            CLC                       
CODE_27DF63:        65 0C         ADC $0C                   
CODE_27DF65:        85 0C         STA $0C                   
CODE_27DF67:        E2 20         SEP #$20                  
CODE_27DF69:        20 CD D7      JSR CODE_27D7CD           
CODE_27DF6C:        A5 0A         LDA $0A                   
CODE_27DF6E:        DA            PHX                       
CODE_27DF6F:        20 B1 DF      JSR CODE_27DFB1           
CODE_27DF72:        BD E6 DF      LDA.w DATA_21DFE6,x               
CODE_27DF75:        99 03 08      STA $0803,y               
CODE_27DF78:        C2 20         REP #$20                  
CODE_27DF7A:        98            TYA                       
CODE_27DF7B:        4A            LSR A                     
CODE_27DF7C:        4A            LSR A                     
CODE_27DF7D:        A8            TAY                       
CODE_27DF7E:        E2 20         SEP #$20                  
CODE_27DF80:        A9 02         LDA #$02                  
CODE_27DF82:        A6 0B         LDX $0B                   
CODE_27DF84:        F0 02         BEQ CODE_27DF88           
CODE_27DF86:        09 01         ORA #$01                  
CODE_27DF88:        99 20 0A      STA $0A20,y               
CODE_27DF8B:        FA            PLX                       
CODE_27DF8C:        20 CD D7      JSR CODE_27D7CD           
CODE_27DF8F:        A5 0C         LDA $0C                   
CODE_27DF91:        DA            PHX                       
CODE_27DF92:        20 B1 DF      JSR CODE_27DFB1           
CODE_27DF95:        BD E9 DF      LDA.w DATA_21DFE9,x               
CODE_27DF98:        99 03 08      STA $0803,y               
CODE_27DF9B:        C2 20         REP #$20                  
CODE_27DF9D:        98            TYA                       
CODE_27DF9E:        4A            LSR A                     
CODE_27DF9F:        4A            LSR A                     
CODE_27DFA0:        A8            TAY                       
CODE_27DFA1:        E2 20         SEP #$20                  
CODE_27DFA3:        A9 02         LDA #$02                  
CODE_27DFA5:        A6 0D         LDX $0D                   
CODE_27DFA7:        F0 02         BEQ CODE_27DFAB           
CODE_27DFA9:        09 01         ORA #$01                  
CODE_27DFAB:        99 20 0A      STA $0A20,y               
CODE_27DFAE:        FA            PLX                       
CODE_27DFAF:        AB            PLB                       
CODE_27DFB0:        6B            RTL                       

CODE_27DFB1:        99 00 08      STA $0800,y               
CODE_27DFB4:        B5 56         LDA $56,x                 
CODE_27DFB6:        EB            XBA                       
CODE_27DFB7:        B5 71         LDA $71,x                 
CODE_27DFB9:        C2 20         REP #$20                  
CODE_27DFBB:        38            SEC                       
CODE_27DFBC:        ED 16 02      SBC $0216                 
CODE_27DFBF:        18            CLC                       
CODE_27DFC0:        65 0E         ADC $0E                   
CODE_27DFC2:        E2 20         SEP #$20                  
CODE_27DFC4:        EB            XBA                       
CODE_27DFC5:        29 FF         AND #$FF                  
CODE_27DFC7:        D0 03         BNE CODE_27DFCC           
CODE_27DFC9:        EB            XBA                       
CODE_27DFCA:        80 02         BRA CODE_27DFCE           

CODE_27DFCC:        A9 F0         LDA #$F0                  
CODE_27DFCE:        99 01 08      STA $0801,y               
CODE_27DFD1:        A5 08         LDA $08                   
CODE_27DFD3:        C9 0B         CMP #$0B                  
CODE_27DFD5:        90 02         BCC CODE_27DFD9           
CODE_27DFD7:        A9 0B         LDA #$0B                  
CODE_27DFD9:        4A            LSR A                     
CODE_27DFDA:        4A            LSR A                     
CODE_27DFDB:        AA            TAX                       
CODE_27DFDC:        BD E3 DF      LDA.w DATA_21DFE3,x               
CODE_27DFDF:        99 02 08      STA $0802,y               
CODE_27DFE2:        60            RTS                       

DATA_27DFE3:        db $20,$E6,$E8,$60                       

DATA_27DFE7:        db $61,$21,$20,$21,$21

DATA_27DFEC:        db $CC,$CD,$FD

DATA_27DFEF:        db $23,$23,$21

CODE_27DFF2:        A5 9C         LDA $9C
CODE_27DFF4:        D0 19         BNE CODE_27E00F
CODE_27DFF6:        BD D1 06      LDA $06D1,x               
CODE_27DFF9:        D0 14         BNE CODE_27E00F           
CODE_27DFFB:        A9 04         LDA #$04                  
CODE_27DFFD:        9D D1 06      STA $06D1,x               
CODE_27E000:        FE BD 06      INC $06BD,x               
CODE_27E003:        BD BD 06      LDA $06BD,x               
CODE_27E006:        C9 03         CMP #$03                  
CODE_27E008:        90 05         BCC CODE_27E00F           
CODE_27E00A:        9E C8 1F      STZ $1FC8,x               
CODE_27E00D:        80 4B         BRA CODE_27E05A           

CODE_27E00F:        20 28 D7      JSR CODE_27D728           
CODE_27E012:        D0 46         BNE CODE_27E05A           
CODE_27E014:        BD BD 06      LDA $06BD,x               
CODE_27E017:        C9 03         CMP #$03                  
CODE_27E019:        B0 3F         BCS CODE_27E05A                   
CODE_27E01B:        DA            PHX                       
CODE_27E01C:        AA            TAX                       
CODE_27E01D:        BF EC DF 27   LDA.l DATA_27DFEC,x             
CODE_27E021:        85 DA         STA $DA                   
CODE_27E023:        BF EF DF 27   LDA.l DATA_27DFEF,x             
CODE_27E027:        85 DB         STA $DB                   
CODE_27E029:        FA            PLX                       
CODE_27E02A:        B5 E2         LDA $E2,x                 
CODE_27E02C:        EB            XBA                       
CODE_27E02D:        BD C9 05      LDA $05C9,x               
CODE_27E030:        C2 30         REP #$30                  
CODE_27E032:        38            SEC                       
CODE_27E033:        ED 10 02      SBC $0210                 
CODE_27E036:        85 D8         STA $D8                   
CODE_27E038:        E2 20         SEP #$20                  
CODE_27E03A:        B4 C6         LDY $C6,x                 
CODE_27E03C:        20 16 CE      JSR CODE_27CE16           
CODE_27E03F:        A5 DA         LDA $DA                   
CODE_27E041:        99 02 08      STA $0802,y               
CODE_27E044:        A5 DB         LDA $DB                   
CODE_27E046:        99 03 08      STA $0803,y               
CODE_27E049:        C2 20         REP #$20                  
CODE_27E04B:        98            TYA                       
CODE_27E04C:        4A            LSR A                     
CODE_27E04D:        4A            LSR A                     
CODE_27E04E:        A8            TAY                       
CODE_27E04F:        E2 20         SEP #$20                  
CODE_27E051:        A5 D9         LDA $D9                   
CODE_27E053:        29 01         AND #$01                  
CODE_27E055:        99 20 0A      STA $0A20,y               
CODE_27E058:        E2 10         SEP #$10                  
CODE_27E05A:        60            RTS                       

CODE_27E05B:        BD D1 06      LDA $06D1,x               
CODE_27E05E:        D0 04         BNE CODE_27E064           
CODE_27E060:        9E C8 1F      STZ $1FC8,x               
CODE_27E063:        60            RTS                       

CODE_27E064:        8B            PHB                       
CODE_27E065:        4B            PHK                       
CODE_27E066:        AB            PLB                       
CODE_27E067:        BD D1 06      LDA $06D1,x               
CODE_27E06A:        29 FC         AND #$FC                  
CODE_27E06C:        4A            LSR A                     
CODE_27E06D:        A8            TAY                       
CODE_27E06E:        BD C9 05      LDA $05C9,x               
CODE_27E071:        85 0E         STA $0E                   
CODE_27E073:        BD E2 00      LDA $00E2,x               
CODE_27E076:        85 0F         STA $0F                   
CODE_27E078:        C2 30         REP #$30                  
CODE_27E07A:        A5 0E         LDA $0E                   
CODE_27E07C:        18            CLC                       
CODE_27E07D:        69 04 00      ADC #$0004                
CODE_27E080:        38            SEC                       
CODE_27E081:        ED 10 02      SBC $0210                 
CODE_27E084:        85 0E         STA $0E                   
CODE_27E086:        38            SEC                       
CODE_27E087:        F9 43 E1      SBC DATA_27E143,y               
CODE_27E08A:        85 00         STA $00                   
CODE_27E08C:        A5 0E         LDA $0E                   
CODE_27E08E:        38            SEC                       
CODE_27E08F:        F9 4F E1      SBC DATA_27E14F,y               
CODE_27E092:        85 02         STA $02                   
CODE_27E094:        A5 0E         LDA $0E                   
CODE_27E096:        18            CLC                       
CODE_27E097:        79 43 E1      ADC DATA_27E143,y               
CODE_27E09A:        85 04         STA $04                   
CODE_27E09C:        A5 0E         LDA $0E                   
CODE_27E09E:        18            CLC                       
CODE_27E09F:        79 4F E1      ADC DATA_27E14F,y               
CODE_27E0A2:        85 06         STA $06                   
CODE_27E0A4:        98            TYA                       
CODE_27E0A5:        4A            LSR A                     
CODE_27E0A6:        A8            TAY                       
CODE_27E0A7:        E2 20         SEP #$20                  
CODE_27E0A9:        BD BF 05      LDA $05BF,x               
CODE_27E0AC:        38            SEC                       
CODE_27E0AD:        ED 16 02      SBC $0216                 
CODE_27E0B0:        85 08         STA $08                   
CODE_27E0B2:        18            CLC                       
CODE_27E0B3:        79 61 E1      ADC DATA_27E161,y               
CODE_27E0B6:        85 09         STA $09                   
CODE_27E0B8:        A5 08         LDA $08                   
CODE_27E0BA:        18            CLC                       
CODE_27E0BB:        79 5B E1      ADC DATA_27E15B,y               
CODE_27E0BE:        85 08         STA $08                   
CODE_27E0C0:        B9 67 E1      LDA DATA_27E167,y               
CODE_27E0C3:        85 0A         STA $0A                   
CODE_27E0C5:        B9 6D E1      LDA DATA_27E16D,y               
CODE_27E0C8:        85 0B         STA $0B                   
CODE_27E0CA:        20 28 D7      JSR CODE_27D728           
CODE_27E0CD:        C2 10         REP #$10                  
CODE_27E0CF:        B4 C6         LDY $C6,x                 
CODE_27E0D1:        A5 00         LDA $00                   
CODE_27E0D3:        99 00 08      STA $0800,y               
CODE_27E0D6:        A5 02         LDA $02                   
CODE_27E0D8:        99 04 08      STA $0804,y               
CODE_27E0DB:        A5 04         LDA $04                   
CODE_27E0DD:        99 08 08      STA $0808,y               
CODE_27E0E0:        A5 06         LDA $06                   
CODE_27E0E2:        99 0C 08      STA $080C,y               
CODE_27E0E5:        A5 08         LDA $08                   
CODE_27E0E7:        99 01 08      STA $0801,y               
CODE_27E0EA:        99 0D 08      STA $080D,y               
CODE_27E0ED:        A5 09         LDA $09                   
CODE_27E0EF:        99 05 08      STA $0805,y               
CODE_27E0F2:        99 09 08      STA $0809,y               
CODE_27E0F5:        A5 0A         LDA $0A                   
CODE_27E0F7:        99 02 08      STA $0802,y               
CODE_27E0FA:        99 06 08      STA $0806,y               
CODE_27E0FD:        99 0A 08      STA $080A,y               
CODE_27E100:        99 0E 08      STA $080E,y               
CODE_27E103:        A5 0B         LDA $0B                   
CODE_27E105:        99 03 08      STA $0803,y               
CODE_27E108:        99 07 08      STA $0807,y               
CODE_27E10B:        09 40         ORA #$40                  
CODE_27E10D:        99 0B 08      STA $080B,y               
CODE_27E110:        99 0F 08      STA $080F,y               
CODE_27E113:        C2 20         REP #$20                  
CODE_27E115:        98            TYA                       
CODE_27E116:        4A            LSR A                     
CODE_27E117:        4A            LSR A                     
CODE_27E118:        A8            TAY                       
CODE_27E119:        E2 20         SEP #$20                  
CODE_27E11B:        A5 01         LDA $01                   
CODE_27E11D:        F0 02         BEQ CODE_27E121           
CODE_27E11F:        A9 01         LDA #$01                  
CODE_27E121:        99 20 0A      STA $0A20,y               
CODE_27E124:        A5 03         LDA $03                   
CODE_27E126:        F0 02         BEQ CODE_27E12A           
CODE_27E128:        A9 01         LDA #$01                  
CODE_27E12A:        99 21 0A      STA $0A21,y               
CODE_27E12D:        A5 05         LDA $05                   
CODE_27E12F:        F0 02         BEQ CODE_27E133           
CODE_27E131:        A9 01         LDA #$01                  
CODE_27E133:        99 22 0A      STA $0A22,y               
CODE_27E136:        A5 07         LDA $07                   
CODE_27E138:        F0 02         BEQ CODE_27E13C           
CODE_27E13A:        A9 01         LDA #$01                  
CODE_27E13C:        99 23 0A      STA $0A23,y               
CODE_27E13F:        E2 10         SEP #$10                  
CODE_27E141:        AB            PLB                       
CODE_27E142:        60            RTS                       

DATA_27E143:        db $0F,$00,$0E,$00,$0D,$00,$0C,$00
                    db $0B,$00,$0A,$00

DATA_27E14F:        db $12,$00,$10,$00,$0E,$00,$0C,$00
                    db $0A,$00,$08,$00

DATA_27E15B:        db $0A,$09,$09,$0A,$0B,$0C

DATA_27E161:        db $06,$05,$04,$06,$08,$0A

DATA_27E167:        db $1D,$1D,$D1,$D1,$D0,$D0

DATA_27E16D:        db $22,$22,$23,$23,$23,$23

CODE_27E173:        8B            PHB
CODE_27E174:        A9 27         LDA #$27                  
CODE_27E176:        48            PHA                       
CODE_27E177:        AB            PLB                       
CODE_27E178:        DA            PHX                       
CODE_27E179:        5A            PHY                       
CODE_27E17A:        AD 80 1A      LDA $1A80                 
CODE_27E17D:        0A            ASL A                     
CODE_27E17E:        18            CLC                       
CODE_27E17F:        6D 80 1A      ADC $1A80                 
CODE_27E182:        AA            TAX                       
CODE_27E183:        A0 00         LDY #$00                  
CODE_27E185:        BD DF E1      LDA.w DATA_27E1DF,x               
CODE_27E188:        99 00 08      STA $0800,y               
CODE_27E18B:        A9 60         LDA #$60                  
CODE_27E18D:        99 01 08      STA $0801,y               
CODE_27E190:        BD E8 E1      LDA.w DATA_27E1E8,x               
CODE_27E193:        99 02 08      STA $0802,y               
CODE_27E196:        A9 22         LDA #$22                  
CODE_27E198:        99 03 08      STA $0803,y               
CODE_27E19B:        5A            PHY                       
CODE_27E19C:        98            TYA                       
CODE_27E19D:        4A            LSR A                     
CODE_27E19E:        4A            LSR A                     
CODE_27E19F:        A8            TAY                       
CODE_27E1A0:        A9 02         LDA #$02                  
CODE_27E1A2:        99 20 0A      STA $0A20,y               
CODE_27E1A5:        7A            PLY                       
CODE_27E1A6:        C8            INY                       
CODE_27E1A7:        C8            INY                       
CODE_27E1A8:        C8            INY                       
CODE_27E1A9:        C8            INY                       
CODE_27E1AA:        E8            INX                       
CODE_27E1AB:        C0 0C         CPY #$0C                  
CODE_27E1AD:        90 D6         BCC CODE_27E185           
CODE_27E1AF:        A2 00         LDX #$00                  
CODE_27E1B1:        BD F1 E1      LDA.w DATA_27E1F1,x               
CODE_27E1B4:        99 00 08      STA $0800,y               
CODE_27E1B7:        A9 60         LDA #$60                  
CODE_27E1B9:        99 01 08      STA $0801,y               
CODE_27E1BC:        BD F4 E1      LDA.w DATA_27E1F4,x               
CODE_27E1BF:        99 02 08      STA $0802,y               
CODE_27E1C2:        A9 22         LDA #$22                  
CODE_27E1C4:        99 03 08      STA $0803,y               
CODE_27E1C7:        5A            PHY                       
CODE_27E1C8:        98            TYA                       
CODE_27E1C9:        4A            LSR A                     
CODE_27E1CA:        4A            LSR A                     
CODE_27E1CB:        A8            TAY                       
CODE_27E1CC:        A9 02         LDA #$02                  
CODE_27E1CE:        99 20 0A      STA $0A20,y               
CODE_27E1D1:        7A            PLY                       
CODE_27E1D2:        E8            INX                       
CODE_27E1D3:        C8            INY                       
CODE_27E1D4:        C8            INY                       
CODE_27E1D5:        C8            INY                       
CODE_27E1D6:        C8            INY                       
CODE_27E1D7:        E0 03         CPX #$03                  
CODE_27E1D9:        90 D6         BCC CODE_27E1B1           
CODE_27E1DB:        7A            PLY                       
CODE_27E1DC:        FA            PLX                       
CODE_27E1DD:        AB            PLB                       
CODE_27E1DE:        6B            RTL                       

DATA_27E1DF:        db $58,$68,$68,$58,$68,$68,$50,$60
                    db $70

DATA_27E1E8:        db $A0,$A2,$A2,$A4,$A6,$A6,$A8,$AA
                    db $AC

DATA_27E1F1:        db $80,$90,$98

DATA_27E1F4:        db $AE,$8C,$8D

DATA_27E1F7:        db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
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
                    db $FF,$00,$FF,$00,$FF,$02,$FF,$00 ;
                    db $FF,$02,$FF,$01,$FF,$00,$FF,$00 ;
                    db $FF,$00,$FF,$00,$FF,$00,$FF,$00 ;
                    db $FF,$00,$FF,$01,$FF,$00,$FF,$00 ;
                    db $FF,$00,$0E,$25,$06,$FF,$01,$5B ;
                    db $0D,$14,$5A,$13,$14,$5B,$26,$16 ;
                    db $5A,$29,$16,$FF,$01,$34,$0D,$14 ;
                    db $FF,$01,$34,$0D,$04,$FF,$01,$70 ;
                    db $0A,$17,$2A,$10,$16,$A0,$2C,$12 ;
                    db $73,$3E,$10,$74,$40,$10,$73,$42 ;
                    db $10,$74,$44,$10,$73,$46,$10,$74 ;
                    db $50,$10,$73,$55,$16,$74,$5C,$16 ;
                    db $73,$5D,$16,$74,$5E,$16,$73,$5F ;
                    db $16,$74,$60,$16,$41,$68,$15,$FF ;
                    db $01,$6C,$14,$0F,$BC,$5E,$0F,$D3 ;
                    db $61,$00,$FF,$01,$FF,$01,$FF,$01 ;
                    db $FF,$01,$FF,$01,$FF,$01,$D3,$00 ;
                    db $30,$5F,$11,$14,$60,$14,$14,$6C ;
                    db $34,$18,$6C,$36,$18,$6C,$38,$18 ;
                    db $FF,$01,$3C,$08,$15,$3C,$38,$11 ;
                    db $FF,$01,$58,$0D,$04,$58,$11,$11 ;
                    db $6C,$1B,$18,$61,$1C,$16,$6C,$1D ;
                    db $18,$72,$21,$17,$6C,$29,$18,$6F ;
                    db $2A,$06,$6D,$2B,$13,$6C,$2D,$18 ;
                    db $6D,$3B,$13,$6D,$3C,$13,$6D,$48 ;
                    db $14,$6D,$4B,$14,$72,$4B,$18,$70 ;
                    db $4D,$14,$70,$4F,$14,$72,$57,$14 ;
                    db $72,$59,$14,$6C,$59,$18,$58,$5E ;
                    db $08,$6F,$65,$11,$6C,$6E,$18,$6C ;
                    db $70,$18,$81,$79,$13,$81,$7B,$13 ;
                    db $41,$88,$15,$FF,$01,$25,$02,$0C ;
                    db $FF,$01,$25,$02,$0D,$FF,$01,$25 ;
                    db $02,$0E,$FF,$01,$25,$02,$0F,$FF ;
                    db $01,$25,$02,$10,$FF,$01,$25,$02 ;
                    db $11,$FF,$01,$25,$02,$05,$FF,$01 ;
                    db $25,$02,$04,$FF,$01,$25,$02,$07 ;
                    db $FF,$01,$25,$02,$08,$FF,$01,$25 ;
                    db $02,$06,$FF,$01,$25,$02,$0B,$FF ;
                    db $01,$25,$02,$09,$FF,$01,$25,$02 ;
                    db $0A,$FF,$01,$25,$02,$02,$FF,$01 ;
                    db $25,$02,$03,$FF,$01,$25,$02,$01 ;
                    db $FF,$01,$25,$02,$12,$FF,$01,$25 ;
                    db $02,$13,$FF,$01,$25,$02,$14,$FF ;
                    db $01,$25,$02,$15,$FF,$01,$25,$02 ;
                    db $16,$FF,$01,$25,$02,$17,$FF,$01 ;
                    db $6D,$12,$19,$83,$56,$12,$41,$68 ;
                    db $15,$FF,$01,$6E,$0C,$19,$6E,$12 ;
                    db $19,$6D,$19,$06,$6D,$1C,$03,$55 ;
                    db $25,$19,$55,$27,$19,$55,$29,$19 ;
                    db $6C,$38,$19,$6C,$3A,$19,$6D,$4C ;
                    db $06,$6E,$4E,$19,$6E,$51,$19,$6E ;
                    db $54,$19,$6D,$56,$06,$55,$5D,$0A ;
                    db $6C,$63,$07,$71,$64,$19,$FF,$01 ;
                    db $41,$18,$15,$FF,$01,$71,$0C,$19 ;
                    db $71,$10,$19,$71,$12,$19,$2B,$1C ;
                    db $09,$2B,$23,$18,$71,$2F,$19,$71 ;
                    db $32,$19,$71,$35,$19,$71,$38,$19 ;
                    db $71,$4F,$19,$71,$51,$19,$71,$53 ;
                    db $19,$71,$55,$19,$2B,$5F,$18,$71 ;
                    db $6C,$19,$FF,$01,$6E,$11,$16,$6C ;
                    db $19,$19,$6C,$18,$15,$A0,$26,$16 ;
                    db $6C,$2E,$14,$72,$32,$19,$72,$33 ;
                    db $19,$6E,$42,$19,$6C,$4C,$19,$72 ;
                    db $4B,$15,$A0,$56,$17,$A0,$5E,$16 ;
                    db $72,$54,$19,$6C,$5D,$19,$6D,$6D ;
                    db $15,$6D,$6A,$19,$6E,$78,$16,$A0 ;
                    db $78,$17,$6C,$82,$13,$6D,$81,$16 ;
                    db $6E,$8D,$13,$6E,$9E,$19,$41,$A8 ;
                    db $15,$FF,$01,$77,$0B,$12,$77,$0F ;
                    db $13,$61,$0B,$15,$A0,$14,$06,$A0 ;
                    db $1A,$17,$A0,$22,$05,$A2,$29,$06 ;
                    db $6C,$20,$09,$77,$2D,$12,$61,$26 ;
                    db $15,$77,$21,$16,$6C,$32,$09,$6C ;
                    db $34,$09,$77,$30,$16,$FF,$01,$41 ;
                    db $38,$15,$FF,$01,$41,$38,$15,$FF ;
                    db $01,$7A,$18,$14,$7A,$16,$18,$7E ;
                    db $11,$18,$7D,$26,$16,$7A,$2D,$13 ;
                    db $7C,$30,$18,$7C,$32,$18,$7E,$42 ;
                    db $18,$7A,$4B,$18,$7C,$4A,$14,$7C ;
                    db $54,$18,$7A,$5C,$18,$7D,$56,$17 ;
                    db $7D,$5E,$16,$7B,$69,$18,$7B,$6D ;
                    db $14,$7E,$78,$15,$7D,$78,$17,$7B ;
                    db $80,$15,$7A,$81,$12,$7E,$8C,$12 ;
                    db $7E,$9E,$18,$41,$A8,$15,$FF,$01 ;
                    db $A2,$0C,$16,$2B,$08,$18,$A2,$0D ;
                    db $09,$A6,$12,$08,$A2,$17,$09,$71 ;
                    db $1C,$18,$71,$1E,$18,$71,$20,$18 ;
                    db $A2,$22,$16,$71,$26,$0A,$71,$28 ;
                    db $0A,$71,$2A,$0A,$55,$32,$09,$A2 ;
                    db $36,$15,$55,$3C,$17,$2B,$3D,$0A ;
                    db $A6,$42,$14,$A0,$4A,$16,$71,$4D ;
                    db $0A,$71,$51,$0A,$71,$55,$0A,$A2 ;
                    db $59,$17,$2B,$5C,$0A,$71,$64,$18 ;
                    db $A6,$66,$07,$71,$6A,$0A,$FF,$01 ;
                    db $6C,$0D,$19,$82,$15,$18,$6D,$27 ;
                    db $14,$6C,$32,$18,$72,$3A,$19,$73 ;
                    db $42,$19,$73,$4A,$19,$82,$57,$17 ;
                    db $72,$65,$19,$72,$67,$19,$6D,$68 ;
                    db $13,$74,$79,$19,$6C,$78,$18,$07 ;
                    db $96,$18,$41,$98,$15,$FF,$01,$3E ;
                    db $08,$17,$41,$28,$15,$FF,$01,$98 ;
                    db $0A,$13,$41,$48,$15,$FF,$01,$A0 ;
                    db $11,$18,$A4,$15,$14,$A6,$17,$14 ;
                    db $A0,$1E,$15,$A0,$26,$17,$A3,$29 ;
                    db $11,$A0,$2C,$18,$A3,$2F,$11,$A0 ;
                    db $32,$17,$A6,$3C,$13,$A0,$45,$18 ;
                    db $A2,$47,$16,$A4,$49,$14,$39,$4C ;
                    db $14,$A3,$58,$15,$2A,$5C,$18,$A2 ;
                    db $5D,$16,$2A,$6A,$16,$A6,$6C,$17 ;
                    db $39,$6F,$19,$A7,$78,$11,$A0,$78 ;
                    db $15,$33,$80,$19,$33,$82,$19,$33 ;
                    db $88,$19,$A2,$8B,$16,$46,$98,$16 ;
                    db $2A,$A0,$18,$A6,$A3,$15,$33,$AD ;
                    db $19,$3D,$AF,$16,$41,$C8,$15,$FF ;
                    db $01,$6E,$12,$07,$A1,$16,$08,$BC ;
                    db $20,$09,$74,$22,$04,$55,$2D,$0A ;
                    db $55,$33,$0A,$77,$36,$18,$BC,$3A ;
                    db $0A,$55,$3D,$0A,$55,$46,$06,$BC ;
                    db $46,$0A,$55,$4E,$04,$55,$56,$0A ;
                    db $55,$5A,$0A,$77,$5B,$15,$55,$69 ;
                    db $0A,$77,$6D,$14,$6C,$6F,$0A,$6E ;
                    db $7A,$0A,$6E,$7E,$05,$77,$83,$18 ;
                    db $77,$8A,$14,$FF,$01,$41,$18,$15 ;
                    db $FF,$01,$41,$48,$15,$FF,$01,$41 ;
                    db $48,$15,$FF,$01,$40,$0B,$18,$89 ;
                    db $14,$19,$89,$1A,$15,$89,$27,$14 ;
                    db $33,$30,$0C,$33,$34,$0A,$33,$3A ;
                    db $07,$40,$3C,$06,$89,$44,$08,$89 ;
                    db $54,$09,$39,$63,$19,$39,$68,$19 ;
                    db $74,$6B,$0D,$39,$6D,$19,$41,$88 ;
                    db $15,$33,$88,$19,$FF,$01,$D6,$32 ;
                    db $0D,$52,$33,$0F,$BA,$34,$0F,$FF ;
                    db $01,$41,$18,$15,$FF,$01,$A4,$16 ;
                    db $13,$A0,$1C,$16,$A4,$20,$13,$A0 ;
                    db $24,$12,$6E,$33,$19,$BC,$37,$16 ;
                    db $BC,$37,$18,$BC,$3C,$14,$BC,$3C ;
                    db $19,$BC,$4F,$18,$BC,$50,$13,$2F ;
                    db $51,$12,$6D,$59,$16,$A4,$5F,$14 ;
                    db $6E,$6A,$17,$BC,$6B,$18,$6F,$6E ;
                    db $14,$BC,$72,$13,$BC,$72,$16,$BC ;
                    db $7A,$15,$BC,$7A,$18,$6C,$7F,$19 ;
                    db $A2,$91,$15,$41,$A8,$15,$FF,$01 ;
                    db $29,$0F,$16,$29,$12,$11,$29,$1E ;
                    db $10,$29,$20,$16,$29,$31,$14,$29 ;
                    db $33,$16,$29,$3E,$19,$6C,$41,$18 ;
                    db $29,$51,$19,$6C,$53,$18,$29,$55 ;
                    db $19,$29,$59,$15,$A6,$60,$17,$29 ;
                    db $6A,$19,$A6,$6C,$16,$29,$75,$17 ;
                    db $29,$79,$15,$29,$7D,$13,$6E,$7E ;
                    db $11,$41,$98,$15,$29,$98,$19,$FF ;
                    db $01,$41,$18,$15,$FF,$01,$D3,$08 ;
                    db $50,$6C,$22,$15,$6C,$24,$15,$6F ;
                    db $2C,$11,$6C,$3A,$10,$72,$3B,$14 ;
                    db $72,$3C,$14,$28,$46,$0C,$6D,$4E ;
                    db $08,$6C,$52,$0D,$58,$57,$09,$6D ;
                    db $5F,$09,$6C,$62,$09,$6C,$63,$09 ;
                    db $72,$6C,$0D,$72,$6D,$0D,$58,$77 ;
                    db $06,$41,$88,$15,$FF,$01,$6C,$11 ;
                    db $18,$73,$15,$18,$6D,$20,$14,$6C ;
                    db $23,$18,$A0,$25,$15,$A2,$2B,$16 ;
                    db $A4,$32,$16,$6D,$3F,$18,$73,$44 ;
                    db $18,$70,$4E,$18,$A6,$52,$14,$6D ;
                    db $5E,$12,$70,$66,$18,$A2,$69,$16 ;
                    db $6F,$74,$16,$6D,$7D,$18,$6D,$7F ;
                    db $18,$6E,$8B,$11,$41,$A8,$15,$FF ;
                    db $01,$72,$0E,$19,$A6,$16,$17,$72 ;
                    db $21,$19,$6D,$24,$16,$72,$34,$18 ;
                    db $72,$37,$18,$73,$3B,$18,$6E,$53 ;
                    db $13,$6E,$56,$13,$6E,$59,$13,$6C ;
                    db $5C,$19,$A0,$70,$18,$A4,$74,$17 ;
                    db $6D,$83,$17,$41,$A8,$15,$FF,$01 ;
                    db $41,$38,$15,$FF,$01,$41,$28,$15 ;
                    db $FF,$01,$41,$18,$15,$FF,$01,$72 ;
                    db $1A,$12,$6C,$18,$19,$C0,$10,$19 ;
                    db $C1,$13,$19,$6D,$2D,$13,$C0,$34 ;
                    db $12,$C1,$37,$12,$41,$58,$15,$FF ;
                    db $01,$41,$58,$15,$FF,$01,$82,$02 ;
                    db $18,$41,$18,$15,$FF,$01,$FF,$01 ;
                    db $D3,$00,$50,$2D,$00,$19,$64,$10 ;
                    db $19,$64,$1C,$19,$43,$22,$19,$6C ;
                    db $2F,$13,$43,$52,$19,$92,$52,$15 ;
                    db $6D,$63,$15,$43,$6C,$19,$43,$86 ;
                    db $19,$43,$96,$19,$92,$9E,$11,$FF ;
                    db $01,$41,$28,$15,$FF,$01,$70,$10 ;
                    db $0F,$70,$13,$12,$70,$23,$0F,$70 ;
                    db $25,$19,$A2,$31,$13,$70,$32,$0A ;
                    db $70,$34,$19,$70,$3B,$14,$70,$40 ;
                    db $0F,$70,$4B,$13,$70,$4E,$16,$68 ;
                    db $63,$0C,$70,$67,$0F,$68,$6E,$0C ;
                    db $A0,$72,$0F,$FF,$01,$40,$0C,$18 ;
                    db $40,$0F,$18,$40,$1E,$18,$40,$26 ;
                    db $18,$40,$37,$14,$40,$3B,$14,$6C ;
                    db $4A,$18,$40,$50,$18,$33,$50,$08 ;
                    db $33,$51,$08,$A6,$65,$18,$FF,$01 ;
                    db $77,$0D,$16,$6A,$17,$14,$66,$1C ;
                    db $14,$A1,$23,$04,$63,$24,$16,$65 ;
                    db $28,$17,$66,$31,$16,$A3,$33,$08 ;
                    db $77,$44,$14,$6A,$4E,$14,$65,$57 ;
                    db $18,$77,$58,$14,$A0,$65,$09,$66 ;
                    db $65,$16,$A4,$6C,$08,$63,$6C,$13 ;
                    db $FF,$01,$81,$0C,$14,$81,$09,$18 ;
                    db $BA,$0D,$14,$FF,$01,$43,$10,$18 ;
                    db $43,$17,$18,$A3,$18,$14,$29,$18 ;
                    db $0E,$42,$22,$0B,$29,$23,$17,$A4 ;
                    db $2C,$18,$29,$2F,$09,$A7,$34,$0E ;
                    db $77,$4D,$0F,$77,$47,$15,$77,$53 ;
                    db $11,$77,$51,$15,$77,$5E,$0F,$77 ;
                    db $63,$0D,$77,$6B,$12,$77,$70,$14 ;
                    db $77,$76,$0F,$77,$78,$16,$77,$7E ;
                    db $12,$77,$8D,$0F,$A3,$80,$10,$A2 ;
                    db $84,$11,$A3,$88,$10,$A2,$8C,$12 ;
                    db $29,$A0,$0F,$29,$A6,$0F,$29,$A4 ;
                    db $0F,$A4,$A8,$10,$42,$AD,$0F,$29 ;
                    db $BC,$09,$FF,$01,$C1,$19,$13,$72 ;
                    db $20,$18,$C1,$2B,$13,$73,$39,$15 ;
                    db $A4,$4A,$11,$72,$53,$17,$72,$55 ;
                    db $10,$73,$61,$14,$72,$6B,$16,$72 ;
                    db $6C,$17,$A4,$6E,$16,$72,$7E,$18 ;
                    db $A4,$81,$17,$C1,$8B,$14,$74,$9D ;
                    db $19,$41,$A8,$15,$FF,$01,$2B,$10 ;
                    db $15,$83,$3F,$12,$B6,$63,$12,$6B ;
                    db $75,$16,$83,$91,$11,$B6,$B7,$11 ;
                    db $41,$C8,$15,$FF,$01,$6C,$13,$13 ;
                    db $6C,$17,$15,$6C,$1A,$16,$6C,$1E ;
                    db $19,$6C,$33,$13,$6C,$37,$15,$6E ;
                    db $3C,$17,$6E,$3F,$18,$71,$51,$14 ;
                    db $71,$57,$17,$71,$59,$18,$A6,$60 ;
                    db $19,$83,$65,$12,$C0,$92,$18,$C1 ;
                    db $94,$18,$6E,$B3,$17,$6E,$B7,$17 ;
                    db $41,$C8,$15,$FF,$01,$81,$0C,$18 ;
                    db $BA,$0D,$14,$FF,$01,$D3,$00,$51 ;
                    db $70,$18,$09,$70,$1B,$09,$A2,$20 ;
                    db $0C,$A2,$25,$10,$A6,$29,$12,$A2 ;
                    db $2E,$12,$43,$58,$11,$43,$65,$0E ;
                    db $70,$77,$0C,$70,$79,$0D,$D3,$7C ;
                    db $51,$FF,$01,$70,$0B,$12,$70,$0D ;
                    db $12,$41,$18,$15,$FF,$01,$6C,$38 ;
                    db $06,$A3,$3C,$08,$A3,$40,$06,$A3 ;
                    db $46,$04,$A3,$4A,$05,$A3,$4C,$06 ;
                    db $A3,$4E,$07,$41,$88,$15,$FF,$01 ;
                    db $6C,$1B,$16,$6C,$1F,$0A,$6C,$1F ;
                    db $10,$6C,$21,$10,$6C,$28,$0C,$6C ;
                    db $2A,$0C,$6C,$5C,$0B,$6C,$5E,$0B ;
                    db $6C,$5D,$13,$6C,$69,$11,$6C,$64 ;
                    db $16,$6C,$66,$17,$6C,$70,$18,$FF ;
                    db $01,$70,$12,$13,$70,$15,$10,$70 ;
                    db $19,$10,$A4,$1F,$16,$A3,$25,$0F ;
                    db $A3,$2C,$0C,$70,$2B,$0F,$70,$32 ;
                    db $12,$70,$34,$14,$A4,$37,$18,$6C ;
                    db $4C,$09,$6C,$50,$0B,$6C,$56,$09 ;
                    db $6C,$65,$0B,$A4,$64,$14,$A2,$66 ;
                    db $16,$A2,$6C,$17,$70,$6A,$18,$A2 ;
                    db $71,$15,$70,$76,$18,$A0,$78,$17 ;
                    db $A1,$78,$13,$FF,$01,$C0,$17,$14 ;
                    db $C1,$19,$14,$C0,$2C,$17,$6C,$33 ;
                    db $17,$6C,$3B,$18,$6C,$41,$17,$C1 ;
                    db $47,$17,$A0,$6B,$16,$A0,$70,$17 ;
                    db $41,$88,$15,$FF,$01,$70,$12,$0D ;
                    db $70,$16,$0D,$A0,$19,$11,$A1,$26 ;
                    db $09,$A1,$2B,$05,$A0,$2B,$0B,$70 ;
                    db $28,$0C,$70,$2A,$0C,$70,$27,$09 ;
                    db $70,$2D,$05,$A0,$41,$07,$70,$50 ;
                    db $0C,$A1,$54,$09,$70,$68,$10,$A1 ;
                    db $6A,$0E,$70,$6F,$10,$A0,$70,$0F ;
                    db $A1,$72,$0C,$FF,$01,$AF,$02,$11 ;
                    db $A4,$1A,$1A,$6F,$1B,$12,$A4,$29 ;
                    db $19,$A4,$2C,$19,$6C,$37,$19,$5D ;
                    db $51,$12,$6E,$7E,$16,$6E,$9E,$16 ;
                    db $41,$D8,$15,$FF,$01,$70,$12,$16 ;
                    db $70,$17,$18,$68,$15,$13,$70,$22 ;
                    db $15,$80,$25,$14,$68,$33,$10,$69 ;
                    db $48,$10,$70,$4B,$16,$6F,$50,$13 ;
                    db $6F,$65,$13,$69,$61,$11,$70,$71 ;
                    db $18,$70,$71,$18,$69,$7E,$14,$69 ;
                    db $86,$17,$70,$88,$15,$FF,$01,$D4 ;
                    db $00,$1E,$72,$0F,$15,$A4,$13,$19 ;
                    db $A6,$26,$19,$77,$38,$17,$26,$33 ;
                    db $14,$80,$39,$13,$77,$48,$18,$77 ;
                    db $55,$17,$77,$5F,$18,$77,$67,$17 ;
                    db $80,$60,$13,$80,$69,$12,$FF,$01 ;
                    db $72,$2E,$13,$72,$30,$15,$72,$31 ;
                    db $16,$72,$42,$16,$72,$43,$17,$6E ;
                    db $60,$16,$77,$84,$18,$40,$95,$14 ;
                    db $A1,$99,$12,$A1,$9D,$12,$A5,$A8 ;
                    db $16,$A3,$AE,$16,$40,$AA,$19,$A6 ;
                    db $B4,$17,$40,$C4,$15,$40,$CF,$14 ;
                    db $40,$D2,$19,$A3,$D7,$15,$A3,$E0 ;
                    db $15,$40,$E0,$18,$40,$EA,$18,$FF ;
                    db $01,$AF,$02,$11,$74,$2E,$05,$A6 ;
                    db $3A,$0A,$A6,$40,$0A,$A6,$46,$0A ;
                    db $A6,$50,$0B,$A6,$56,$0F,$A6,$5C ;
                    db $13,$A6,$8D,$13,$BB,$92,$01,$A6 ;
                    db $93,$0F,$A6,$99,$0B,$80,$C1,$19 ;
                    db $41,$E8,$15,$FF,$01,$70,$0E,$0F ;
                    db $70,$11,$12,$70,$13,$14,$70,$15 ;
                    db $16,$A3,$27,$10,$70,$2C,$12,$A0 ;
                    db $2D,$16,$6C,$48,$09,$6C,$4A,$0A ;
                    db $6C,$54,$09,$6C,$6C,$0A,$A6,$75 ;
                    db $15,$A3,$7D,$14,$FF,$01,$D3,$00 ;
                    db $51,$D4,$01,$2C,$2D,$06,$19,$6C ;
                    db $12,$15,$6C,$38,$16,$3E,$54,$18 ;
                    db $FF,$01,$3F,$08,$0A,$3F,$14,$0F ;
                    db $2F,$1D,$0A,$3F,$23,$0F,$FF,$01 ;
                    db $FF,$01,$94,$18,$05,$FF,$01,$98 ;
                    db $16,$14,$94,$48,$09,$99,$58,$09 ;
                    db $FF,$01,$94,$27,$14,$99,$37,$14 ;
                    db $FF,$01,$94,$37,$10,$98,$77,$14 ;
                    db $FF,$01,$94,$35,$14,$98,$57,$14 ;
                    db $9A,$65,$06,$FF,$01,$9A,$44,$09 ;
                    db $98,$67,$14,$FF,$01,$98,$18,$05 ;
                    db $94,$48,$05,$FF,$01,$72,$0F,$17 ;
                    db $72,$11,$18,$A2,$14,$17,$A6,$22 ;
                    db $17,$72,$34,$15,$72,$36,$16,$72 ;
                    db $38,$17,$77,$41,$19,$6C,$52,$14 ;
                    db $6C,$54,$15,$6C,$56,$16,$74,$65 ;
                    db $18,$A5,$66,$11,$73,$6B,$18,$83 ;
                    db $92,$12,$41,$C8,$15,$FF,$01,$46 ;
                    db $10,$15,$6C,$1A,$17,$33,$21,$17 ;
                    db $33,$23,$17,$33,$27,$16,$39,$2A ;
                    db $15,$39,$2F,$16,$29,$37,$15,$29 ;
                    db $3D,$14,$29,$43,$13,$40,$4A,$18 ;
                    db $40,$54,$18,$40,$5D,$18,$33,$65 ;
                    db $12,$33,$68,$12,$33,$6B,$12,$40 ;
                    db $74,$18,$40,$7A,$19,$40,$7F,$19 ;
                    db $41,$A8,$15,$FF,$01,$D3,$00,$60 ;
                    db $3B,$00,$19,$3C,$0B,$11,$3C,$0F ;
                    db $17,$44,$1B,$15,$6F,$2F,$13,$64 ;
                    db $37,$19,$64,$3C,$19,$64,$4A,$19 ;
                    db $64,$4E,$19,$64,$5C,$19,$64,$5F ;
                    db $19,$44,$52,$15,$6F,$6B,$10,$64 ;
                    db $6A,$19,$64,$6F,$19,$A4,$7B,$13 ;
                    db $FF,$01,$3C,$0B,$08,$64,$12,$1A ;
                    db $41,$28,$15,$FF,$01,$D3,$00,$00 ;
                    db $93,$1D,$14,$6D,$29,$12,$6D,$3B ;
                    db $12,$6D,$3C,$18,$6F,$44,$14,$6D ;
                    db $54,$14,$6E,$6E,$14,$6F,$76,$12 ;
                    db $93,$7A,$13,$D3,$00,$00,$FF,$01 ;
                    db $80,$10,$16,$41,$28,$15,$FF,$01 ;
                    db $27,$12,$18,$6D,$13,$13,$6D,$2B ;
                    db $17,$6D,$35,$18,$27,$5A,$19,$27 ;
                    db $6A,$18,$6F,$6D,$15,$6F,$71,$13 ;
                    db $41,$88,$15,$FF,$01,$2F,$0E,$10 ;
                    db $8B,$15,$15,$8C,$1C,$11,$8B,$2F ;
                    db $15,$8C,$34,$11,$60,$48,$17,$8C ;
                    db $4B,$11,$60,$57,$13,$2F,$57,$16 ;
                    db $8C,$61,$15,$8B,$77,$18,$FF,$01 ;
                    db $4B,$1D,$24,$FF,$01,$41,$58,$15 ;
                    db $FF,$01,$6D,$12,$10,$6D,$1C,$15 ;
                    db $6F,$29,$13,$6D,$38,$18,$73,$43 ;
                    db $12,$73,$44,$12,$6D,$4B,$16,$27 ;
                    db $5B,$15,$27,$62,$13,$72,$6F,$10 ;
                    db $72,$71,$10,$6D,$79,$10,$6D,$79 ;
                    db $18,$74,$8B,$14,$74,$8D,$14,$41 ;
                    db $A8,$15,$FF,$01,$D4,$00,$1C,$6E ;
                    db $12,$15,$6E,$17,$15,$74,$14,$17 ;
                    db $6E,$2D,$16,$A7,$30,$11,$A6,$37 ;
                    db $17,$74,$4E,$17,$58,$52,$13,$A2 ;
                    db $54,$17,$A7,$69,$10,$6E,$70,$15 ;
                    db $74,$78,$17,$41,$98,$15,$FF,$01 ;
                    db $6D,$1D,$15,$6F,$29,$16,$6D,$37 ;
                    db $13,$6D,$38,$18,$FF,$01,$6D,$1D ;
                    db $16,$6F,$29,$17,$6D,$37,$14,$6D ;
                    db $38,$19,$FF,$01,$D3,$00,$02,$2C ;
                    db $0F,$18,$2C,$14,$15,$2C,$1C,$13 ;
                    db $2C,$2A,$11,$24,$2C,$14,$2C,$3A ;
                    db $19,$6D,$30,$16,$2C,$49,$15,$2C ;
                    db $4E,$0C,$2C,$4D,$12,$24,$50,$10 ;
                    db $2C,$53,$0D,$6D,$5C,$07,$2C,$67 ;
                    db $0A,$2C,$69,$07,$2C,$79,$11,$2C ;
                    db $78,$15,$2C,$88,$16,$FF,$01,$3C ;
                    db $09,$0E,$6D,$1E,$06,$3C,$11,$08 ;
                    db $3C,$14,$10,$3C,$27,$06,$3C,$27 ;
                    db $13,$27,$3E,$08,$3C,$31,$03,$28 ;
                    db $4A,$11,$6D,$52,$0E,$3C,$57,$0A ;
                    db $3C,$56,$18,$3C,$5F,$14,$27,$7B ;
                    db $11,$3C,$78,$09,$3C,$74,$18,$41 ;
                    db $88,$15,$FF,$01,$46,$14,$16,$2A ;
                    db $24,$18,$A2,$2A,$17,$A4,$3A,$16 ;
                    db $2A,$46,$18,$2A,$4A,$18,$2A,$5C ;
                    db $18,$73,$63,$19,$2A,$65,$18,$46 ;
                    db $6C,$16,$41,$88,$15,$FF,$01,$D3 ;
                    db $00,$53,$64,$11,$19,$64,$19,$19 ;
                    db $64,$23,$19,$58,$40,$13,$6F,$4B ;
                    db $12,$59,$57,$10,$44,$5D,$15,$58 ;
                    db $6B,$11,$64,$6B,$19,$43,$76,$19 ;
                    db $FF,$01,$41,$28,$15,$FF,$01,$6D ;
                    db $13,$12,$6D,$1A,$18,$3C,$21,$13 ;
                    db $6F,$30,$11,$6C,$36,$18,$44,$4D ;
                    db $18,$6F,$5C,$0D,$37,$74,$14,$44 ;
                    db $78,$12,$6F,$82,$15,$41,$98,$15 ;
                    db $6C,$98,$18,$FF,$01,$D3,$00,$00 ;
                    db $D4,$01,$2C,$36,$17,$14,$36,$23 ;
                    db $16,$36,$25,$13,$36,$27,$19,$36 ;
                    db $2F,$15,$6D,$43,$15,$36,$44,$18 ;
                    db $36,$4B,$14,$36,$56,$16,$36,$58 ;
                    db $15,$36,$61,$13,$36,$6D,$18,$36 ;
                    db $6F,$15,$36,$70,$1A,$6F,$75,$13 ;
                    db $6D,$7C,$16,$FF,$01,$92,$12,$16 ;
                    db $92,$19,$18,$72,$1E,$12,$72,$23 ;
                    db $12,$72,$24,$12,$44,$2E,$13,$37 ;
                    db $3F,$19,$3C,$46,$18,$3C,$4D,$16 ;
                    db $91,$62,$15,$91,$6B,$16,$58,$77 ;
                    db $10,$91,$75,$16,$91,$7E,$15,$91 ;
                    db $87,$15,$91,$90,$16,$41,$A8,$15 ;
                    db $FF,$01,$D3,$00,$09,$77,$12,$10 ;
                    db $66,$18,$16,$77,$1D,$17,$61,$1F ;
                    db $11,$77,$2D,$15,$D2,$34,$11,$61 ;
                    db $3B,$11,$D2,$3C,$0C,$6D,$44,$09 ;
                    db $6F,$51,$03,$6D,$56,$07,$6C,$58 ;
                    db $07,$6D,$61,$09,$66,$6C,$11,$66 ;
                    db $72,$11,$77,$77,$15,$FF,$01,$82 ;
                    db $03,$18,$82,$0E,$18,$41,$18,$15 ;
                    db $FF,$01,$29,$2B,$19,$41,$38,$15 ;
                    db $FF,$01,$6D,$0B,$13,$6D,$12,$14 ;
                    db $6D,$24,$14,$6D,$26,$14,$40,$33 ;
                    db $19,$40,$3C,$18,$73,$45,$19,$6F ;
                    db $52,$17,$40,$5E,$17,$40,$65,$17 ;
                    db $40,$6B,$17,$40,$74,$17,$92,$81 ;
                    db $15,$6D,$84,$15,$41,$A8,$15,$FF ;
                    db $01,$D3,$00,$0A,$D4,$01,$4E,$58 ;
                    db $26,$0C,$58,$6F,$02,$FF,$01,$6E ;
                    db $06,$17,$41,$28,$15,$FF,$01,$6D ;
                    db $26,$0D,$41,$58,$15,$FF,$01,$A0 ;
                    db $0A,$16,$A0,$12,$17,$A0,$22,$18 ;
                    db $A0,$34,$18,$A0,$48,$18,$A0,$4C ;
                    db $18,$A0,$5C,$18,$A0,$6E,$18,$A0 ;
                    db $96,$18,$A0,$B8,$18,$FF,$01,$D3 ;
                    db $00,$54,$77,$11,$16,$77,$17,$14 ;
                    db $66,$1A,$0E,$77,$1C,$17,$63,$22 ;
                    db $15,$6A,$29,$10,$77,$2A,$14,$77 ;
                    db $32,$16,$66,$41,$0E,$66,$43,$0F ;
                    db $77,$48,$16,$77,$4C,$14,$77,$50 ;
                    db $17,$D2,$57,$15,$77,$60,$16,$66 ;
                    db $65,$0E,$66,$69,$0E,$D2,$72,$15 ;
                    db $6A,$78,$12,$FF,$01,$6F,$09,$07 ;
                    db $6C,$02,$10,$6C,$04,$10,$A2,$0E ;
                    db $27,$57,$07,$2C,$56,$0E,$2F,$56 ;
                    db $0A,$33,$6D,$01,$36,$6F,$04,$43 ;
                    db $6D,$0C,$48,$6D,$07,$57,$A2,$08 ;
                    db $5E,$57,$02,$60,$56,$08,$60,$6D ;
                    db $03,$6D,$FF,$01,$D3,$00,$0F,$B5 ;
                    db $0F,$0F,$67,$14,$18,$63,$2E,$13 ;
                    db $6A,$36,$13,$BB,$3F,$0F,$63,$56 ;
                    db $0D,$6A,$63,$0C,$6A,$69,$10,$B5 ;
                    db $6F,$0F,$67,$7E,$18,$63,$8A,$13 ;
                    db $67,$97,$15,$FF,$01,$77,$0D,$12 ;
                    db $63,$16,$15,$65,$1E,$17,$62,$24 ;
                    db $11,$77,$2F,$14,$77,$31,$0C,$66 ;
                    db $36,$0D,$65,$48,$18,$77,$49,$0D ;
                    db $77,$5D,$0D,$66,$5E,$12,$61,$6C ;
                    db $10,$63,$75,$15,$77,$79,$0F,$FF ;
                    db $01,$56,$08,$0D,$A2,$09,$2E,$A2 ;
                    db $09,$37,$56,$06,$2F,$FF,$01,$65 ;
                    db $14,$09,$62,$1D,$06,$65,$24,$09 ;
                    db $62,$30,$11,$66,$33,$0C,$67,$3A ;
                    db $18,$67,$4E,$18,$66,$4E,$0C,$61 ;
                    db $67,$0A,$67,$70,$18,$62,$7B,$05 ;
                    db $65,$7D,$12,$FF,$01,$6C,$0F,$10 ;
                    db $6C,$07,$10,$6C,$0E,$20,$FF,$01 ;
                    db $57,$0B,$0D,$56,$05,$0F,$A0,$04 ;
                    db $42,$6D,$05,$52,$56,$0B,$5B,$A0 ;
                    db $04,$61,$6C,$0D,$67,$6C,$0F,$67 ;
                    db $FF,$01,$83,$2A,$12,$6D,$55,$18 ;
                    db $6D,$60,$18,$6F,$69,$14,$6F,$75 ;
                    db $10,$FF,$01,$83,$0F,$12,$41,$18 ;
                    db $15,$FF,$01,$D3,$00,$12,$D6,$2B ;
                    db $07,$52,$2C,$16,$BA,$2D,$16,$FF ;
                    db $01,$7F,$0C,$16,$7C,$10,$17,$7B ;
                    db $18,$15,$A6,$26,$07,$7E,$30,$17 ;
                    db $7C,$42,$0F,$7E,$46,$11,$7B,$58 ;
                    db $13,$7B,$5F,$15,$7B,$64,$13,$A6 ;
                    db $72,$15,$7A,$7A,$17,$FF,$01,$D3 ;
                    db $00,$55,$BB,$0A,$00,$6C,$1B,$18 ;
                    db $6D,$20,$10,$B7,$21,$00,$B7,$3A ;
                    db $00,$BB,$50,$00,$58,$5E,$14,$58 ;
                    db $6D,$11,$58,$79,$16,$FF ;

DATA_27F48D:        db $01,$6C,$0B,$18,$6B,$22,$16,$6B ;
                    db $2E,$13,$6B,$30,$13,$6B,$32,$13 ;
                    db $A4,$36,$18,$6B,$3D,$13,$6B,$41 ;
                    db $13,$83,$4F,$12,$6B,$55,$13,$BC ;
                    db $60,$18,$6B,$64,$18,$BC,$66,$17 ;
                    db $6B,$6A,$18,$41,$88,$15,$FF,$01 ;
                    db $86,$11,$17,$86,$25,$17,$FF,$01 ;
                    db $D3,$00,$52,$D4,$01,$18,$7B,$10 ;
                    db $14,$3B,$12,$19,$7B,$16,$15,$7F ;
                    db $1B,$16,$A6,$2E,$16,$A6,$3C,$14 ;
                    db $BB,$48,$19,$7F,$50,$14,$B4,$5C ;
                    db $19,$7F,$63,$16,$B4,$65,$19,$BB ;
                    db $7C,$19,$FF,$01,$D3,$00,$07,$9F ;
                    db $16,$16,$9F,$18,$14,$9F,$1B,$13 ;
                    db $9F,$1D,$16,$9F,$20,$17,$9F,$23 ;
                    db $18,$9F,$26,$16,$9F,$29,$18,$9F ;
                    db $2C,$17,$9F,$2E,$16,$9F,$30,$15 ;
                    db $9F,$33,$15,$9F,$36,$16,$6F,$37 ;
                    db $14,$9F,$39,$18,$9F,$3C,$18,$9F ;
                    db $3F,$18,$58,$5D,$17,$FF,$01,$D3 ;
                    db $00,$20,$6F,$0A,$10,$28,$10,$11 ;
                    db $28,$14,$0D,$38,$18,$08,$28,$1C ;
                    db $06,$28,$2C,$11,$28,$33,$0C,$28 ;
                    db $37,$0A,$27,$4C,$13,$28,$4E,$0F ;
                    db $58,$56,$14,$27,$58,$07,$38,$5D ;
                    db $05,$28,$74,$11,$28,$7A,$0A,$58 ;
                    db $7E,$14,$27,$90,$12,$37,$95,$0E ;
                    db $38,$96,$0B,$FF,$01,$65,$06,$17 ;
                    db $83,$0F,$03,$B6,$16,$03,$B6,$27 ;
                    db $0B,$83,$30,$0B,$65,$44,$17,$FF ;
                    db $01,$D3,$00,$10,$FF,$01,$D3,$00 ;
                    db $10,$FF,$01,$25,$00,$80,$FF,$01 ;
                    db $6D,$24,$17,$25,$20,$80,$FF,$01 ;
                    db $6B,$10,$15,$6B,$18,$14,$FF,$01 ;
                    db $7A,$10,$13,$7E,$15,$0F,$7E,$1E ;
                    db $17,$7F,$22,$15,$BC,$2C,$17,$BD ;
                    db $33,$16,$BC,$3A,$15,$BD,$42,$17 ;
                    db $7F,$47,$18,$BC,$55,$17,$BC,$56 ;
                    db $16,$BC,$5D,$18,$BD,$5C,$13,$A2 ;
                    db $51,$16,$7F,$60,$15,$BD,$66,$14 ;
                    db $BD,$6A,$17,$7F,$73,$15,$BC,$79 ;
                    db $14,$FF,$01,$D3,$00,$12,$FF,$01 ;
                    db $D3,$00,$10,$FF,$01,$63,$0F,$13 ;
                    db $63,$17,$17,$FF,$01,$91,$06,$12 ;
                    db $91,$12,$15,$91,$1C,$17,$90,$28 ;
                    db $13,$92,$2F,$15,$91,$2F,$19,$90 ;
                    db $37,$17,$91,$44,$17,$91,$45,$05 ;
                    db $90,$5D,$13,$6F,$61,$11,$93,$65 ;
                    db $15,$90,$6C,$17,$93,$73,$19,$6E ;
                    db $7C,$16,$FF,$01,$A2,$0C,$13,$A6 ;
                    db $15,$14,$A5,$1C,$10,$A1,$20,$15 ;
                    db $A6,$25,$15,$6F,$34,$11,$FF,$01 ;
                    db $A4,$0A,$14,$A4,$12,$14,$A0,$1E ;
                    db $15,$A5,$2C,$12,$A2,$31,$15,$A4 ;
                    db $33,$13,$A4,$3A,$14,$FF,$01,$9E ;
                    db $0E,$0D,$9E,$12,$0F,$9E,$19,$10 ;
                    db $9E,$17,$0D,$9E,$1E,$11,$9E,$23 ;
                    db $10,$9E,$2B,$0F,$9E,$25,$0B,$9E ;
                    db $33,$0F,$FF,$01,$87,$0D,$14,$81 ;
                    db $1B,$18,$81,$1D,$14,$82,$2D,$13 ;
                    db $86,$37,$13,$FF,$01,$BB,$04,$19 ;
                    db $B4,$17,$19,$B4,$5C,$19,$BB,$70 ;
                    db $19,$FF,$01,$D6,$0C,$03,$52,$0D ;
                    db $15,$BA,$0E,$15,$FF,$01,$52,$0B ;
                    db $13,$BA,$0C,$13,$FF,$01,$52,$0B ;
                    db $13,$BA,$0C,$13,$FF,$01,$81,$0A ;
                    db $17,$BA,$0D,$14,$FF,$01,$D3,$00 ;
                    db $12,$FF ;

DATA_27F6A7:        db $00,$82,$69,$18,$41,$78,$15,$FF ;
                    db $01,$41,$18,$15,$FF,$00,$D4,$00 ;
                    db $2E,$39,$0E,$0A,$33,$1D,$08,$33 ;
                    db $23,$06,$A6,$24,$05,$66,$2E,$13 ;
                    db $39,$36,$02,$A6,$3C,$07,$6E,$49 ;
                    db $08,$39,$55,$18,$39,$58,$18,$A6 ;
                    db $5A,$03,$A6,$60,$09,$A6,$64,$04 ;
                    db $A1,$66,$11,$A6,$6A,$08,$A2,$6E ;
                    db $07,$39,$71,$04,$A6,$72,$04,$A6 ;
                    db $78,$07,$FF,$01,$81,$0B,$16,$81 ;
                    db $07,$18,$BA,$0D,$14,$FF,$01,$81 ;
                    db $0B,$16,$BA,$0D,$14,$FF,$00,$41 ;
                    db $48,$15,$FF,$00,$6E,$0A,$14,$72 ;
                    db $11,$05,$72,$1B,$05,$73,$1F,$09 ;
                    db $72,$25,$05,$72,$29,$11,$72,$2D ;
                    db $11,$73,$3A,$16,$73,$3D,$16,$6E ;
                    db $55,$11,$72,$61,$05,$72,$6B,$05 ;
                    db $72,$75,$05,$72,$7F,$05,$41,$B8 ;
                    db $15,$FF,$00,$6B,$12,$17,$6B,$19 ;
                    db $15,$6B,$1F,$16,$6B,$24,$18,$6B ;
                    db $29,$17,$6B,$2E,$16,$6D,$34,$19 ;
                    db $6B,$40,$18,$59,$47,$19,$72,$56 ;
                    db $11,$59,$5D,$19,$72,$64,$11,$59 ;
                    db $83,$14,$A0,$9E,$17,$6B,$A1,$18 ;
                    db $A0,$A4,$18,$6B,$B8,$19,$41,$B8 ;
                    db $15,$FF,$00,$89,$09,$19,$89,$19 ;
                    db $19,$6D,$22,$17,$89,$34,$19,$72 ;
                    db $34,$13,$72,$35,$19,$72,$43,$11 ;
                    db $72,$43,$17,$6D,$52,$11,$6D,$52 ;
                    db $13,$6D,$64,$13,$6D,$69,$15,$6D ;
                    db $6F,$17,$41,$98,$15,$89,$9A,$19 ;
                    db $FF,$00,$59,$0F,$13,$6D,$12,$17 ;
                    db $59,$29,$13,$59,$29,$19,$59,$47 ;
                    db $12,$6C,$42,$17,$6C,$48,$17,$6B ;
                    db $63,$13,$6C,$62,$13,$6C,$6F,$14 ;
                    db $6B,$6C,$13,$6B,$6C,$18,$6B,$7D ;
                    db $14,$6B,$80,$17,$6C,$8B,$13,$6C ;
                    db $8D,$13,$FF,$00,$3F,$11,$19,$3F ;
                    db $1A,$19,$3F,$1C,$19,$8A,$1F,$11 ;
                    db $3F,$28,$19,$3F,$2E,$16,$8A,$3D ;
                    db $11,$2F,$42,$12,$3F,$4C,$16,$8A ;
                    db $60,$01,$2F,$6D,$01,$8A,$76,$01 ;
                    db $8A,$7A,$02,$8A,$7E,$03,$8A,$86 ;
                    db $03,$4B,$AD,$18,$FF,$00,$D3,$04 ;
                    db $31,$2F,$0C,$11,$2F,$1E,$11,$FF ;
                    db $00,$73,$11,$17,$6D,$14,$16,$77 ;
                    db $16,$0A,$6D,$1A,$16,$6D,$23,$17 ;
                    db $82,$30,$18,$6E,$3A,$19,$6D,$44 ;
                    db $17,$82,$4E,$15,$6F,$55,$04,$6F ;
                    db $58,$04,$A4,$5E,$15,$82,$6B,$15 ;
                    db $82,$95,$18,$41,$98,$15,$FF,$00 ;
                    db $81,$18,$09,$6B,$18,$11,$6B,$18 ;
                    db $15,$6B,$25,$18,$6B,$29,$18,$6C ;
                    db $2D,$08,$6C,$31,$0A,$FF,$00,$41 ;
                    db $18,$15,$FF,$00,$41,$18,$15,$FF ;
                    db $00,$D5,$0A,$16,$FF,$00,$4C,$4C ;
                    db $27,$FF,$00,$9E,$06,$17,$9E,$0B ;
                    db $15,$9E,$0D,$11,$53,$12,$0F,$53 ;
                    db $18,$0F,$9E,$1E,$12,$9E,$24,$16 ;
                    db $9E,$2C,$15,$9E,$2E,$11,$3F,$28 ;
                    db $17,$9E,$32,$11,$9E,$36,$12,$53 ;
                    db $3A,$0F,$2F,$47,$17,$9E,$4B,$14 ;
                    db $9E,$4E,$17,$9E,$51,$14,$53,$56 ;
                    db $0F,$53,$5E,$0F,$9E,$63,$11,$2F ;
                    db $6F,$15,$9E,$6A,$10,$9E,$71,$12 ;
                    db $9E,$78,$13,$53,$79,$0F,$3F,$7E ;
                    db $17,$FF,$00,$8A,$09,$04,$5B,$14 ;
                    db $15,$5A,$1C,$15,$5B,$23,$15,$8A ;
                    db $24,$04,$5A,$28,$15,$4B,$4D,$17 ;
                    db $FF,$00,$8A,$3E,$12,$5A,$45,$15 ;
                    db $8A,$4B,$12,$FF,$00,$9E,$12,$12 ;
                    db $9E,$18,$12,$9E,$1F,$12,$9E,$27 ;
                    db $11,$5B,$38,$15,$5A,$47,$16,$9E ;
                    db $51,$11,$9E,$53,$14,$9E,$5E,$11 ;
                    db $5A,$5B,$17,$3F,$6B,$18,$4B,$9D ;
                    db $17,$FF,$00,$D3,$01,$30,$D3,$1C ;
                    db $30,$D6,$44,$0C,$BA,$45,$11,$52 ;
                    db $4A,$18,$FF,$00,$32,$2A,$17,$32 ;
                    db $2D,$13,$31,$2D,$15,$31,$30,$11 ;
                    db $32,$3A,$15,$31,$3D,$13,$32,$42 ;
                    db $18,$32,$43,$13,$31,$45,$16,$FF ;
                    db $00,$5A,$11,$14,$77,$17,$13,$77 ;
                    db $1F,$17,$5A,$25,$14,$77,$29,$13 ;
                    db $4C,$5C,$28,$FF,$00,$5A,$10,$14 ;
                    db $5B,$19,$15,$3F,$14,$18,$8A,$2B ;
                    db $11,$2F,$3F,$14,$3F,$36,$18,$8A ;
                    db $48,$11,$2F,$4F,$14,$3F,$5C,$18 ;
                    db $3F,$55,$18,$8A,$6B,$11,$3F,$68 ;
                    db $18,$3F,$72,$18,$3F,$74,$18,$3F ;
                    db $7D,$18,$4C,$AD,$17,$FF,$00,$77 ;
                    db $21,$17,$77,$3A,$17,$77,$4C,$17 ;
                    db $FF,$00,$9E,$0D,$13,$8A,$16,$12 ;
                    db $5B,$11,$14,$5A,$23,$14,$5B,$2A ;
                    db $0F,$8A,$32,$0D,$5A,$3B,$0F,$5A ;
                    db $3B,$14,$2F,$49,$11,$8A,$4D,$0F ;
                    db $5B,$4C,$15,$8A,$5B,$0F,$5B,$5C ;
                    db $17,$8A,$70,$0F,$FF,$00,$4B,$3C ;
                    db $17,$FF,$00,$98,$06,$14,$98,$17 ;
                    db $11,$98,$2A,$0A,$98,$37,$14,$98 ;
                    db $47,$14,$98,$56,$11,$98,$6A,$14 ;
                    db $98,$73,$0A,$FF,$00,$A2,$0C,$14 ;
                    db $A2,$13,$17,$2F,$14,$10,$5B,$18 ;
                    db $15,$A2,$1D,$15,$A6,$25,$16,$A2 ;
                    db $2A,$13,$A2,$31,$18,$8A,$35,$0F ;
                    db $A2,$39,$14,$2F,$46,$16,$A2,$48 ;
                    db $18,$A2,$4C,$18,$A0,$58,$15,$A3 ;
                    db $58,$11,$A6,$60,$14,$A2,$66,$16 ;
                    db $8A,$72,$0F,$2F,$7F,$10,$2F,$83 ;
                    db $14,$A2,$87,$19,$FF,$00,$5A,$10 ;
                    db $15,$3F,$11,$18,$3F,$13,$18,$5A ;
                    db $19,$15,$8A,$1A,$0F,$4B,$3C,$27 ;
                    db $FF,$00,$60,$13,$15,$51,$1F,$15 ;
                    db $2F,$26,$12,$2F,$2D,$12,$31,$38 ;
                    db $17,$31,$3E,$15,$32,$3E,$17,$2F ;
                    db $44,$16,$31,$4D,$15,$5A,$54,$15 ;
                    db $8A,$5A,$10,$5B,$64,$14,$5F,$7C ;
                    db $16,$31,$7A,$15,$31,$81,$15,$4B ;
                    db $AC,$37,$FF,$00,$D3,$08,$40,$2F ;
                    db $04,$14,$2F,$0C,$14,$2F,$0D,$17 ;
                    db $FF,$00,$9E,$0C,$15,$3A,$09,$16 ;
                    db $9E,$10,$13,$9E,$15,$0F,$9E,$1A ;
                    db $09,$9E,$1D,$06,$30,$46,$02,$5B ;
                    db $48,$08,$5B,$48,$12,$5A,$41,$0D ;
                    db $4C,$7C,$17,$FF,$00,$51,$08,$16 ;
                    db $5B,$17,$14,$5B,$1E,$15,$5F,$25 ;
                    db $0A,$5B,$30,$12,$FF,$00,$08,$0C ;
                    db $0B,$4C,$6C,$17,$FF,$00,$8A,$0C ;
                    db $04,$5B,$14,$15,$5A,$1C,$15,$5B ;
                    db $23,$15,$8A,$24,$04,$5A,$28,$15 ;
                    db $FF,$00,$8A,$0A,$11,$5B,$10,$14 ;
                    db $FF,$00,$3F,$2A,$16,$3F,$39,$16 ;
                    db $3F,$49,$16,$3F,$54,$19,$3F,$5B ;
                    db $19,$3F,$62,$12,$3F,$63,$12,$3F ;
                    db $6C,$15,$5B,$6E,$14,$4B,$8D,$27 ;
                    db $FF,$00,$30,$10,$10,$30,$18,$10 ;
                    db $30,$27,$14,$8B,$22,$14,$8B,$30 ;
                    db $15,$30,$32,$10,$30,$3A,$11,$8C ;
                    db $41,$10,$30,$4C,$14,$8A,$52,$13 ;
                    db $30,$53,$14,$8C,$5C,$15,$4B,$8C ;
                    db $17,$FF,$00,$5A,$11,$16,$5F,$1C ;
                    db $16,$60,$28,$16,$3F,$31,$18,$5A ;
                    db $35,$17,$8F,$4C,$10,$8B,$50,$18 ;
                    db $8A,$52,$10,$8F,$5C,$10,$2F,$83 ;
                    db $17,$3F,$87,$13,$8A,$9A,$10,$5F ;
                    db $A0,$15,$3F,$A8,$13,$08,$AA,$13 ;
                    db $5B,$B4,$17,$3F,$B9,$14,$4B,$EC ;
                    db $38,$FF,$00,$9E,$14,$13,$9E,$1E ;
                    db $11,$8A,$2E,$10,$9E,$32,$12,$9E ;
                    db $38,$13,$08,$3B,$15,$9E,$3C,$12 ;
                    db $9E,$49,$13,$9E,$4E,$12,$8A,$52 ;
                    db $10,$9E,$57,$13,$9E,$5C,$10,$9E ;
                    db $5E,$13,$9E,$69,$12,$08,$74,$16 ;
                    db $5E,$A2,$14,$08,$AA,$13,$2F,$B2 ;
                    db $12,$60,$B7,$16,$08,$C4,$13,$8B ;
                    db $CD,$18,$08,$CE,$13,$FF,$00,$D0 ;
                    db $18,$14,$D0,$1D,$14,$D0,$22,$14 ;
                    db $2E,$31,$10,$30,$4E,$15,$5A,$55 ;
                    db $13,$5A,$58,$0D,$5A,$5B,$07,$9E ;
                    db $6A,$09,$9E,$6E,$09,$9E,$74,$09 ;
                    db $9E,$7A,$09,$51,$89,$12,$8B,$9A ;
                    db $0F,$9E,$A1,$13,$5A,$A8,$18,$9E ;
                    db $AA,$13,$9E,$AF,$13,$18,$CC,$0B ;
                    db $18,$EC,$0B,$FF,$00,$3F,$04,$18 ;
                    db $3F,$0A,$18,$8C,$16,$10,$D0,$40 ;
                    db $15,$75,$62,$16,$75,$6C,$16,$75 ;
                    db $73,$17,$75,$7E,$15,$D0,$A3,$16 ;
                    db $75,$D1,$17,$75,$D6,$16,$75,$D9 ;
                    db $16,$75,$E1,$14,$75,$E5,$17,$FF ;
                    db $00,$B8,$03,$03,$AE,$0E,$09,$BE ;
                    db $09,$09,$BE,$0D,$0C,$BE,$15,$0C ;
                    db $BE,$1D,$08,$AB,$16,$02,$AC,$21 ;
                    db $0A,$BF,$29,$0A,$BE,$26,$07,$BE ;
                    db $29,$07,$AA,$28,$0D,$AB,$2E,$03 ;
                    db $BE,$34,$0C,$BE,$38,$06,$BE,$3C ;
                    db $09,$AE,$4F,$0A,$BE,$43,$0D,$BE ;
                    db $46,$0D,$AB,$4C,$04,$AE,$5E,$08 ;
                    db $BE,$5A,$0F,$AB,$58,$03,$AE,$64 ;
                    db $08,$AE,$69,$08,$BE,$60,$0C,$AA ;
                    db $64,$0F,$AE,$72,$08,$AE,$77,$08 ;
                    db $AB,$7B,$03,$BF,$80,$06,$AB,$86 ;
                    db $04,$AB,$96,$02,$FF,$00,$09,$16 ;
                    db $14,$FF,$00,$0E,$0D,$08,$FF,$00 ;
                    db $D3,$00,$03,$C4,$17,$0F,$AC,$18 ;
                    db $0D,$C8,$24,$15,$C8,$27,$15,$BC ;
                    db $2D,$0C,$CA,$38,$07,$CB,$3C,$08 ;
                    db $C8,$44,$0F,$BF,$49,$0A,$CA,$4E ;
                    db $0D,$CA,$5D,$0A,$C9,$5F,$10,$BC ;
                    db $5A,$0E,$CA,$61,$0A,$C9,$62,$10 ;
                    db $CB,$66,$0A,$C8,$65,$10,$CB,$6A ;
                    db $0A,$C8,$68,$10,$BC,$70,$0C,$FF ;
                    db $00,$D3,$00,$0B,$C4,$13,$0D,$AA ;
                    db $16,$13,$C4,$18,$0D,$BC,$1E,$0C ;
                    db $C4,$24,$10,$C6,$28,$09,$AA,$29 ;
                    db $14,$BC,$2C,$0D,$C6,$2D,$09,$BF ;
                    db $38,$0A,$AA,$3D,$14,$C5,$47,$12 ;
                    db $BC,$4D,$10,$C5,$4F,$12,$FF,$00 ;
                    db $D3,$00,$04,$BC,$15,$0D,$BC,$18 ;
                    db $0B,$C9,$21,$0A,$BC,$29,$0B,$BC ;
                    db $2F,$0D,$BC,$33,$0A,$BC,$36,$0F ;
                    db $BC,$42,$11,$BC,$42,$13,$BC,$42 ;
                    db $15,$BC,$53,$10,$BC,$53,$12,$BE ;
                    db $63,$0F,$BE,$65,$0F,$BE,$67,$0F ;
                    db $BC,$6E,$0C,$BC,$71,$0B,$FF,$00 ;
                    db $D3,$00,$01,$BE,$19,$11,$BE,$1B ;
                    db $11,$BE,$1D,$11,$BC,$1F,$0E,$C8 ;
                    db $29,$0F,$CB,$2D,$10,$CB,$30,$10 ;
                    db $BC,$37,$0E,$CA,$3B,$0A,$CA,$3F ;
                    db $0A,$C8,$3C,$10,$C8,$40,$10,$AE ;
                    db $4B,$0C,$B1,$4D,$11,$AC,$54,$10 ;
                    db $BE,$66,$0C,$BE,$68,$0C,$BE,$6A ;
                    db $0C,$AC,$6B,$11,$FF,$00,$D3,$00 ;
                    db $05,$B1,$14,$0B,$AA,$15,$0F,$AA ;
                    db $14,$11,$B1,$1B,$0D,$AE,$26,$0A ;
                    db $9D,$29,$0D,$9D,$2C,$0D,$9D,$2F ;
                    db $0D,$B1,$39,$11,$AC,$3F,$11,$B2 ;
                    db $3D,$0E,$BE,$3A,$0B,$B2,$4A,$0E ;
                    db $B1,$49,$0A,$B2,$55,$0C,$AC,$57 ;
                    db $0E,$B1,$52,$11,$9D,$58,$11,$B1 ;
                    db $6B,$0B,$AC,$6A,$0D,$B1,$68,$10 ;
                    db $9D,$62,$11,$AA,$77,$13,$FF,$00 ;
                    db $D3,$00,$06,$AA,$13,$0F,$AA,$11 ;
                    db $11,$AE,$18,$0F,$AE,$2E,$0D,$AE ;
                    db $34,$0F,$AB,$3B,$0A,$B1,$42,$12 ;
                    db $9D,$49,$14,$9D,$53,$15,$B2,$55 ;
                    db $15,$9D,$57,$15,$AC,$5D,$12,$B1 ;
                    db $6A,$06,$FF,$00,$D3,$00,$0C,$9D ;
                    db $17,$07,$9D,$1E,$07,$AE,$14,$08 ;
                    db $AA,$15,$0A,$AE,$2E,$08,$AA,$30 ;
                    db $0D,$9D,$33,$08,$AA,$3F,$0E,$9D ;
                    db $43,$0B,$BE,$55,$0D,$BE,$5B,$0D ;
                    db $AE,$5A,$0A,$BE,$69,$0A,$AE,$75 ;
                    db $0B,$BE,$85,$0D,$BE,$8B,$09,$AA ;
                    db $8A,$0D,$AA,$90,$09,$AE,$96,$0A ;
                    db $AE,$A0,$08,$AE,$AA,$0B,$AE,$BD ;
                    db $0D,$AE,$C1,$0A,$AE,$C4,$07,$AA ;
                    db $DB,$0D,$FF,$01,$D3,$00,$0D,$B1 ;
                    db $0B,$15,$AD,$0E,$17,$B1,$11,$16 ;
                    db $AD,$14,$19,$B1,$18,$18,$AD,$22 ;
                    db $17,$B1,$26,$16,$AD,$2E,$17,$B1 ;
                    db $31,$16,$B1,$3A,$13,$AD,$43,$14 ;
                    db $B1,$45,$15,$B1,$4C,$16,$AD,$51 ;
                    db $16,$B1,$53,$17,$B1,$64,$16,$B1 ;
                    db $64,$17,$AD,$68,$11,$B1,$6A,$12 ;
                    db $B1,$74,$18,$AD,$7C,$17,$B1,$7F ;
                    db $16,$AD,$84,$12,$B1,$87,$11,$AD ;
                    db $8F,$19,$B1,$92,$18,$AD,$96,$14 ;
                    db $B1,$99,$13,$AD,$A3,$16,$B1,$A6 ;
                    db $15,$AA,$BE,$17,$FF,$01,$D3,$00 ;
                    db $0E,$BE,$0D,$13,$C2,$08,$14,$C6 ;
                    db $15,$12,$C6,$19,$12,$C2,$1C,$14 ;
                    db $BE,$20,$13,$CF,$22,$12,$BE,$2A ;
                    db $12,$CD,$2F,$12,$C2,$42,$15,$C2 ;
                    db $47,$13,$BE,$4C,$12,$BE,$52,$11 ;
                    db $BE,$57,$13,$BE,$5C,$12,$CD,$5F ;
                    db $12,$C3,$73,$13,$BE,$78,$12,$CE ;
                    db $7F,$15,$C2,$80,$14,$C2,$81,$13 ;
                    db $C2,$82,$12,$CD,$8F,$12,$50,$95 ;
                    db $13,$50,$97,$11,$FF,$01,$D3,$00 ;
                    db $14,$C2,$0D,$16,$C6,$15,$10,$C4 ;
                    db $1A,$16,$C4,$1B,$16,$C4,$1C,$16 ;
                    db $C7,$21,$11,$CF,$23,$16,$C2,$2B ;
                    db $16,$C2,$2C,$15,$C7,$34,$10,$AD ;
                    db $35,$17,$AD,$3D,$17,$AD,$41,$17 ;
                    db $AD,$49,$17,$AD,$4D,$17,$C7,$53 ;
                    db $11,$C6,$58,$11,$C7,$5A,$11,$C4 ;
                    db $61,$16,$C4,$67,$16,$C5,$68,$16 ;
                    db $CF,$6D,$16,$C4,$73,$16,$C2,$76 ;
                    db $15,$C2,$79,$13,$AD,$7D,$13,$FF ;
                    db $01,$D3,$00,$13,$C2,$15,$16,$C4 ;
                    db $17,$15,$CF,$1A,$16,$C2,$20,$16 ;
                    db $CE,$23,$15,$C4,$26,$16,$C2,$2A ;
                    db $16,$C4,$2D,$15,$AC,$34,$17,$AD ;
                    db $39,$17,$CF,$3B,$16,$C2,$41,$16 ;
                    db $AD,$44,$15,$C2,$4E,$16,$AD,$51 ;
                    db $15,$C2,$59,$18,$C2,$5B,$16,$AD ;
                    db $5E,$15,$CF,$60,$16,$C2,$66,$16 ;
                    db $AD,$6B,$15,$C2,$76,$16,$AD,$7B ;
                    db $15,$C5,$7F,$16,$CF,$80,$16,$C2 ;
                    db $86,$16,$AD,$8B,$15,$CF,$8F,$16 ;
                    db $CE,$96,$16,$AD,$98,$15,$C5,$9A ;
                    db $14,$CF,$9B,$16,$C2,$A9,$18,$C3 ;
                    db $B1,$14,$AD,$B5,$13,$C4,$B7,$12 ;
                    db $C5,$B8,$12,$C5,$B9,$15,$FF,$01 ;
                    db $0E,$0D,$08,$FF,$01,$0E,$0D,$06 ;
                    db $FF,$01,$0E,$0D,$08,$FF,$01,$0E ;
                    db $0D,$08,$FF,$01,$0E,$0D,$07,$FF ;
                    db $01,$0E,$0D,$07,$FF,$01,$D3,$00 ;
                    db $11,$B8,$01,$03,$AA,$3E,$0B,$FF ;
                    db $01,$82,$03,$17,$82,$0C,$17,$BA ;
                    db $0F,$11,$FF,$01,$4C,$0C,$47,$FF ;
                    db $01,$4B,$0C,$17,$FF,$01,$4C,$0C ;
                    db $27,$FF,$01,$82,$0C,$17,$D6,$0D ;
                    db $09,$BA,$0E,$17,$FF,$01,$D3,$00 ;
                    db $50,$2D,$04,$19,$6D,$19,$10,$6D ;
                    db $1D,$10,$3E,$10,$18,$6C,$39,$11 ;
                    db $3E,$31,$18,$74,$43,$11,$74,$45 ;
                    db $11,$3E,$4C,$18,$92,$55,$11,$92 ;
                    db $59,$12,$6D,$63,$10,$27,$72,$13 ;
                    db $FF,$01,$41,$38,$15,$FF,$FF,$FF ;
                    db $FF ;