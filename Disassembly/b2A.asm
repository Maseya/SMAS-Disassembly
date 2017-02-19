;Super Mario Bros. 3

CODE_2A8000:        AD 0B 10      LDA $100B                 
CODE_2A8003:        C9 04         CMP #$04                  
CODE_2A8005:        90 11         BCC CODE_2A8018           
CODE_2A8007:        8B            PHB                       
CODE_2A8008:        4B            PHK                       
CODE_2A8009:        AB            PLB                       ;
CODE_2A800A:        DA            PHX                       
CODE_2A800B:        EE 4A 03      INC $034A                 
CODE_2A800E:        AD 4B 03      LDA $034B                 
CODE_2A8011:        0A            ASL A                     
CODE_2A8012:        AA            TAX                       
CODE_2A8013:        FC 19 80      JSR (PNTR_2A8019,x)             
CODE_2A8016:        FA            PLX                       
CODE_2A8017:        AB            PLB                       ;
CODE_2A8018:        6B            RTL                       

PNTR_2A8019:        dw CODE_2A801D
                    dw CODE_2A8083

CODE_2A801D:        AD 4A 03      LDA $034A
CODE_2A8020:        29 07         AND #$07
CODE_2A8022:        D0 2A         BNE CODE_2A804E
CODE_2A8024:        C2 20         REP #$20                  
CODE_2A8026:        AD 4A 03      LDA $034A                 
CODE_2A8029:        29 18 00      AND #$0018                
CODE_2A802C:        0A            ASL A                     
CODE_2A802D:        85 00         STA $00                   
CODE_2A802F:        AD 06 10      LDA $1006                 
CODE_2A8032:        29 0F 00      AND #$000F                
CODE_2A8035:        0A            ASL A                     
CODE_2A8036:        05 00         ORA $00                   
CODE_2A8038:        AA            TAX                       
CODE_2A8039:        BD C5 80      LDA.w DATA_2A80C5,x               
CODE_2A803C:        85 00         STA $00                   
CODE_2A803E:        1A            INC A                     
CODE_2A803F:        85 04         STA $04                   
CODE_2A8041:        BD CD 80      LDA.w DATA_2A80CD,x               
CODE_2A8044:        85 02         STA $02                   
CODE_2A8046:        1A            INC A                     
CODE_2A8047:        85 06         STA $06                   
CODE_2A8049:        20 7E 81      JSR CODE_2A817E           
CODE_2A804C:        E2 20         SEP #$20                  
CODE_2A804E:        AD 4A 03      LDA $034A                 
CODE_2A8051:        C9 18         CMP #$18                  
CODE_2A8053:        D0 2D         BNE CODE_2A8082           
CODE_2A8055:        C2 20         REP #$20                  
CODE_2A8057:        AD 06 10      LDA $1006                 
CODE_2A805A:        29 0F 00      AND #$000F                
CODE_2A805D:        0A            ASL A                     
CODE_2A805E:        AA            TAX                       
CODE_2A805F:        BD B2 82      LDA.w DATA_2A82B2,x               
CODE_2A8062:        85 0A         STA $0A                   
CODE_2A8064:        A9 FC 00      LDA #$00FC                
CODE_2A8067:        85 00         STA $00                   
CODE_2A8069:        85 04         STA $04                   
CODE_2A806B:        A9 FC 00      LDA #$00FC                
CODE_2A806E:        85 02         STA $02                   
CODE_2A8070:        85 06         STA $06                   
CODE_2A8072:        BD 05 81      LDA.w DATA_2A8105,x               
CODE_2A8075:        85 08         STA $08                   
CODE_2A8077:        20 87 82      JSR CODE_2A8287           
CODE_2A807A:        E2 20         SEP #$20                  
CODE_2A807C:        9C 4A 03      STZ $034A                 
CODE_2A807F:        EE 4B 03      INC $034B                 
CODE_2A8082:        60            RTS                       

CODE_2A8083:        AD 4A 03      LDA $034A                 
CODE_2A8086:        29 07         AND #$07                  
CODE_2A8088:        D0 3A         BNE CODE_2A80C4           
CODE_2A808A:        AD 4A 03      LDA $034A                 
CODE_2A808D:        29 18         AND #$18                  
CODE_2A808F:        0A            ASL A                     
CODE_2A8090:        85 00         STA $00                   
CODE_2A8092:        AD 06 10      LDA $1006                 
CODE_2A8095:        0A            ASL A                     
CODE_2A8096:        65 00         ADC $00                   
CODE_2A8098:        A8            TAY                       
CODE_2A8099:        AD 4A 03      LDA $034A                 
CODE_2A809C:        29 60         AND #$60                  
CODE_2A809E:        4A            LSR A                     
CODE_2A809F:        4A            LSR A                     
CODE_2A80A0:        4A            LSR A                     
CODE_2A80A1:        4A            LSR A                     
CODE_2A80A2:        AA            TAX                       
CODE_2A80A3:        C2 20         REP #$20                  
CODE_2A80A5:        BD B2 82      LDA.w DATA_2A82B2,x               
CODE_2A80A8:        85 0A         STA $0A                   
CODE_2A80AA:        B9 C5 80      LDA DATA_2A80C5,y               
CODE_2A80AD:        85 00         STA $00                   
CODE_2A80AF:        1A            INC A                     
CODE_2A80B0:        85 04         STA $04                   
CODE_2A80B2:        B9 CD 80      LDA DATA_2A80CD,y               
CODE_2A80B5:        85 02         STA $02                   
CODE_2A80B7:        1A            INC A                     
CODE_2A80B8:        85 06         STA $06                   
CODE_2A80BA:        BD 05 81      LDA.w DATA_2A8105,x               
CODE_2A80BD:        85 08         STA $08                   
CODE_2A80BF:        20 87 82      JSR CODE_2A8287           
CODE_2A80C2:        E2 20         SEP #$20                  
CODE_2A80C4:        60            RTS                       

DATA_2A80C5:        dw $00FC
                    dw $00FC
                    dw $00FC
                    dw $00FC

DATA_2A80CD:        dw $00FC
                    dw $00FC
                    dw $00FC
                    dw $00FC
                    dw $0997
                    dw $0599
                    dw $0997
                    dw $09A3
                    dw $4997
                    dw $4599
                    dw $4997
                    dw $49A3
                    dw $099A
                    dw $059C
                    dw $099A
                    dw $099E
                    dw $499A
                    dw $459C
                    dw $499A
                    dw $499E
                    dw $09A5
                    dw $05A7
                    dw $09A5
                    dw $09A9
                    dw $49A5
                    dw $45A7
                    dw $49A5
                    dw $49A9

DATA_2A8105:        dw $0006
                    dw $0005
                    dw $0006
                    dw $0007

CODE_2A810D:        8B            PHB
CODE_2A810E:        4B            PHK                       
CODE_2A810F:        AB            PLB                       ;
CODE_2A8110:        DA            PHX                       
CODE_2A8111:        5A            PHY                       
CODE_2A8112:        C2 20         REP #$20                  
CODE_2A8114:        A2 80         LDX #$80                  
CODE_2A8116:        8E 15 21      STX $2115                 
CODE_2A8119:        A9 FC 00      LDA #$00FC                
CODE_2A811C:        85 00         STA $00                   
CODE_2A811E:        85 04         STA $04                   
CODE_2A8120:        A9 FC 00      LDA #$00FC                
CODE_2A8123:        85 02         STA $02                   
CODE_2A8125:        85 06         STA $06                   
CODE_2A8127:        20 7E 81      JSR CODE_2A817E           
CODE_2A812A:        AD 06 10      LDA $1006                 
CODE_2A812D:        29 0F 00      AND #$000F                
CODE_2A8130:        0A            ASL A                     
CODE_2A8131:        AA            TAX                       
CODE_2A8132:        BD 56 81      LDA.w DATA_2A8156,x               
CODE_2A8135:        85 00         STA $00                   
CODE_2A8137:        A0 00         LDY #$00                  
CODE_2A8139:        B9 BA 82      LDA DATA_2A82BA,y               
CODE_2A813C:        8D 16 21      STA $2116                 
CODE_2A813F:        A5 00         LDA $00                   
CODE_2A8141:        8D 18 21      STA $2118                 
CODE_2A8144:        C8            INY                       
CODE_2A8145:        C8            INY                       
CODE_2A8146:        C0 30         CPY #$30                  
CODE_2A8148:        D0 EF         BNE CODE_2A8139           
CODE_2A814A:        E2 20         SEP #$20                  
CODE_2A814C:        7A            PLY                       
CODE_2A814D:        FA            PLX                       
CODE_2A814E:        AB            PLB                       ;
CODE_2A814F:        9C 4A 03      STZ $034A                 
CODE_2A8152:        9C 4B 03      STZ $034B                 
CODE_2A8155:        6B            RTL                       

DATA_2A8156:        dw $09AB,$09AC,$09AB,$09AD

DATA_2A815E:        dw $BBF2,$BBFC,$BBE6,$BBFC
                    dw $BBF2,$BBFC,$BBE6,$BBF2

DATA_2A816E:        dw $0005,$0006,$0005,$0006
     
DATA_2A8176:        dw $0007,$0007,$0007,$0005

CODE_2A817E:        AD 06 10      LDA $1006                 
CODE_2A8181:        29 0F 00      AND #$000F                  
CODE_2A8184:        0A            ASL A
CODE_2A8185:        A8            TAY                       
CODE_2A8186:        0A            ASL A                     
CODE_2A8187:        AA            TAX                       
CODE_2A8188:        BD 5E 81      LDA.w DATA_2A815E,x               
CODE_2A818B:        85 0A         STA $0A                   
CODE_2A818D:        B9 6E 81      LDA DATA_2A816E,y               
CODE_2A8190:        85 08         STA $08                   
CODE_2A8192:        5A            PHY                       
CODE_2A8193:        20 87 82      JSR CODE_2A8287           
CODE_2A8196:        7A            PLY                       
CODE_2A8197:        BD 60 81      LDA.w DATA_2A815E+2,x               
CODE_2A819A:        85 0A         STA $0A                   
CODE_2A819C:        B9 76 81      LDA DATA_2A8176,y               
CODE_2A819F:        85 08         STA $08                   
CODE_2A81A1:        20 87 82      JSR CODE_2A8287           
CODE_2A81A4:        60            RTS                       

CODE_2A81A5:        8B            PHB                       
CODE_2A81A6:        4B            PHK                       
CODE_2A81A7:        AB            PLB                       ;
CODE_2A81A8:        9C 15 21      STZ $2115                 
CODE_2A81AB:        C2 20         REP #$20                  
CODE_2A81AD:        A9 FC 00      LDA #$00FC                
CODE_2A81B0:        85 00         STA $00                   
CODE_2A81B2:        A9 00 10      LDA #$1000                
CODE_2A81B5:        8D 16 21      STA $2116                 
CODE_2A81B8:        A9 08 18      LDA #$1808                
CODE_2A81BB:        8D 00 43      STA $4300                 
CODE_2A81BE:        A9 00 00      LDA #$0000                
CODE_2A81C1:        8D 02 43      STA $4302                 
CODE_2A81C4:        9C 04 43      STZ $4304                 
CODE_2A81C7:        A9 00 10      LDA #$1000                
CODE_2A81CA:        8D 05 43      STA $4305                 
CODE_2A81CD:        A0 01         LDY #$01                  
CODE_2A81CF:        8C 0B 42      STY $420B                 
CODE_2A81D2:        A2 80         LDX #$80                  
CODE_2A81D4:        8E 15 21      STX $2115                 
CODE_2A81D7:        8D 05 43      STA $4305                 
CODE_2A81DA:        A9 00 10      LDA #$1000                
CODE_2A81DD:        8D 16 21      STA $2116                 
CODE_2A81E0:        A9 08 19      LDA #$1908                
CODE_2A81E3:        8D 00 43      STA $4300                 
CODE_2A81E6:        A9 01 00      LDA #$0001                
CODE_2A81E9:        8D 02 43      STA $4302                 
CODE_2A81EC:        8C 0B 42      STY $420B                 
CODE_2A81EF:        AD B2 82      LDA.w DATA_2A82B2                 
CODE_2A81F2:        85 0A         STA $0A                   
CODE_2A81F4:        A9 A5 09      LDA #$09A5                
CODE_2A81F7:        85 00         STA $00                   
CODE_2A81F9:        1A            INC A                     
CODE_2A81FA:        85 04         STA $04                   
CODE_2A81FC:        A9 A5 49      LDA #$49A5                
CODE_2A81FF:        85 02         STA $02                   
CODE_2A8201:        1A            INC A                     
CODE_2A8202:        85 06         STA $06                   
CODE_2A8204:        A9 06 00      LDA #$0006                
CODE_2A8207:        85 08         STA $08                   
CODE_2A8209:        20 87 82      JSR CODE_2A8287           
CODE_2A820C:        AD B4 82      LDA.w DATA_2A82B4                 
CODE_2A820F:        85 0A         STA $0A                   
CODE_2A8211:        A9 A7 05      LDA #$05A7                
CODE_2A8214:        85 00         STA $00                   
CODE_2A8216:        1A            INC A                     
CODE_2A8217:        85 04         STA $04                   
CODE_2A8219:        A9 A7 45      LDA #$45A7                
CODE_2A821C:        85 02         STA $02                   
CODE_2A821E:        1A            INC A                     
CODE_2A821F:        85 06         STA $06                   
CODE_2A8221:        A9 05 00      LDA #$0005                
CODE_2A8224:        85 08         STA $08                   
CODE_2A8226:        20 87 82      JSR CODE_2A8287           
CODE_2A8229:        AD B8 82      LDA.w DATA_2A82B8                 
CODE_2A822C:        85 0A         STA $0A                   
CODE_2A822E:        A9 A9 09      LDA #$09A9                
CODE_2A8231:        85 00         STA $00                   
CODE_2A8233:        1A            INC A                     
CODE_2A8234:        85 04         STA $04                   
CODE_2A8236:        A9 A9 49      LDA #$49A9                
CODE_2A8239:        85 02         STA $02                   
CODE_2A823B:        1A            INC A                     
CODE_2A823C:        85 06         STA $06                   
CODE_2A823E:        A9 07 00      LDA #$0007                
CODE_2A8241:        85 08         STA $08                   
CODE_2A8243:        20 87 82      JSR CODE_2A8287           
CODE_2A8246:        A9 AE 09      LDA #$09AE                
CODE_2A8249:        85 02         STA $02                   
CODE_2A824B:        A9 AF 09      LDA #$09AF                
CODE_2A824E:        85 04         STA $04                   
CODE_2A8250:        A0 00         LDY #$00                  
CODE_2A8252:        A9 AB 09      LDA #$09AB                
CODE_2A8255:        85 00         STA $00                   
CODE_2A8257:        B9 BA 82      LDA DATA_2A82BA,y               
CODE_2A825A:        8D 16 21      STA $2116                 
CODE_2A825D:        A5 00         LDA $00                   
CODE_2A825F:        8D 18 21      STA $2118                 
CODE_2A8262:        A5 02         LDA $02                   
CODE_2A8264:        8D 18 21      STA $2118                 
CODE_2A8267:        A5 04         LDA $04                   
CODE_2A8269:        8D 18 21      STA $2118                 
CODE_2A826C:        C8            INY                       
CODE_2A826D:        C8            INY                       
CODE_2A826E:        C0 30         CPY #$30                  
CODE_2A8270:        F0 11         BEQ CODE_2A8283           
CODE_2A8272:        98            TYA                       
CODE_2A8273:        29 02 00      AND #$0002                
CODE_2A8276:        D0 DF         BNE CODE_2A8257           
CODE_2A8278:        E6 00         INC $00                   
CODE_2A827A:        A5 00         LDA $00                   
CODE_2A827C:        C9 AE 09      CMP #$09AE                
CODE_2A827F:        D0 D6         BNE CODE_2A8257           
CODE_2A8281:        80 CF         BRA CODE_2A8252           

CODE_2A8283:        E2 20         SEP #$20                  
CODE_2A8285:        AB            PLB                       ;
CODE_2A8286:        6B            RTL                       

CODE_2A8287:        A0 00         LDY #$00                  
CODE_2A8289:        B1 0A         LDA ($0A),y               
CODE_2A828B:        8D 16 21      STA $2116                 
CODE_2A828E:        A5 00         LDA $00                   
CODE_2A8290:        8D 18 21      STA $2118                 
CODE_2A8293:        A5 02         LDA $02                   
CODE_2A8295:        8D 18 21      STA $2118                 
CODE_2A8298:        B1 0A         LDA ($0A),y               
CODE_2A829A:        18            CLC                       
CODE_2A829B:        69 20         ADC #$0020              
CODE_2A829E:        8D 16 21      STA $2116
CODE_2A82A1:        A5 04         LDA $04                   
CODE_2A82A3:        8D 18 21      STA $2118                 
CODE_2A82A6:        A5 06         LDA $06                   
CODE_2A82A8:        8D 18 21      STA $2118                 
CODE_2A82AB:        C8            INY                       
CODE_2A82AC:        C8            INY                       
CODE_2A82AD:        C6 08         DEC $08                   
CODE_2A82AF:        D0 D8         BNE CODE_2A8289           
CODE_2A82B1:        60            RTS                       

DATA_2A82B2:        dw $BBE6

DATA_2A82B4:        dw $BBF2,$BBE6

DATA_2A82B8:        dw $BBFC

DATA_2A82BA:        dw $1076,$1283,$122B,$1294
                    dw $1146,$1177,$1476,$1683
                    dw $162B,$1694,$1546,$1577
                    dw $1876,$1A83,$1A2B,$1A94
                    dw $1946,$1977,$1C76,$1E83
                    dw $1E2B,$1E94,$1D46,$1D77
     
CODE_2A82EA:        A9 80         LDA #$80                  
CODE_2A82EC:        8D 15 21      STA $2115                 
CODE_2A82EF:        C2 20         REP #$20                  
CODE_2A82F1:        A9 00 68      LDA #$6800                
CODE_2A82F4:        8D 16 21      STA $2116                 
CODE_2A82F7:        A9 01 18      LDA #$1801                
CODE_2A82FA:        8D 00 43      STA $4300                 
CODE_2A82FD:        A9 00 F0      LDA #$F000                
CODE_2A8300:        8D 02 43      STA $4302                 
CODE_2A8303:        A2 37         LDX #$37                  
CODE_2A8305:        8E 04 43      STX $4304                 
CODE_2A8308:        A9 00 10      LDA #$1000                
CODE_2A830B:        8D 05 43      STA $4305                 
CODE_2A830E:        A2 01         LDX #$01                  
CODE_2A8310:        8E 0B 42      STX $420B                 
CODE_2A8313:        E2 20         SEP #$20                  
CODE_2A8315:        A9 0F         LDA #$0F                  
CODE_2A8317:        85 16         STA $16                   
CODE_2A8319:        AD 26 07      LDA $0726                 
CODE_2A831C:        8D 80 1A      STA $1A80                 
CODE_2A831F:        AD 1D 00      LDA $001D                 
CODE_2A8322:        29 02         AND #$02                  
CODE_2A8324:        F0 09         BEQ CODE_2A832F           
CODE_2A8326:        A6 B3         LDX $B3                   
CODE_2A8328:        E0 BC         CPX #$BC                  
CODE_2A832A:        F0 03         BEQ CODE_2A832F           
CODE_2A832C:        8D 80 1A      STA $1A80                 
CODE_2A832F:        22 A9 E0 22   JSL CODE_22E0A9           
CODE_2A8333:        22 73 E1 27   JSL CODE_27E173           
CODE_2A8337:        6B            RTL                       

CODE_2A8338:        AD 06 07      LDA $0706                 
CODE_2A833B:        29 0F         AND #$0F                  
CODE_2A833D:        85 02         STA $02                   
CODE_2A833F:        AC 00 07      LDY $0700                 
CODE_2A8342:        A9 BA         LDA #$BA                  
CODE_2A8344:        97 2E         STA [$2E],y               
CODE_2A8346:        22 3A B7 2A   JSL CODE_2AB73A           
CODE_2A834A:        C8            INY                       
CODE_2A834B:        A9 BB         LDA #$BB                  
CODE_2A834D:        97 2E         STA [$2E],y               
CODE_2A834F:        22 3A B7 2A   JSL CODE_2AB73A           
CODE_2A8353:        AD 00 07      LDA $0700                 
CODE_2A8356:        18            CLC                       
CODE_2A8357:        69 10         ADC #$10                  
CODE_2A8359:        8D 00 07      STA $0700                 
CODE_2A835C:        A5 2F         LDA $2F                   
CODE_2A835E:        69 00         ADC #$00                  
CODE_2A8360:        85 2F         STA $2F                   
CODE_2A8362:        C6 02         DEC $02                   
CODE_2A8364:        D0 D9         BNE CODE_2A833F           
CODE_2A8366:        C2 20         REP #$20                  
CODE_2A8368:        A5 2E         LDA $2E                   
CODE_2A836A:        85 D8         STA $D8                   
CODE_2A836C:        E2 20         SEP #$20                  
CODE_2A836E:        A5 30         LDA $30                   
CODE_2A8370:        85 DA         STA $DA                   
CODE_2A8372:        AC 00 07      LDY $0700                 
CODE_2A8375:        A9 02         LDA #$02                  
CODE_2A8377:        97 D8         STA [$D8],y               
CODE_2A8379:        20 D2 8A      JSR CODE_2A8AD2           
CODE_2A837C:        C8            INY                       
CODE_2A837D:        A5 D9         LDA $D9                   
CODE_2A837F:        38            SEC                       
CODE_2A8380:        E9 20         SBC #$20                  
CODE_2A8382:        85 D9         STA $D9                   
CODE_2A8384:        A9 03         LDA #$03                  
CODE_2A8386:        97 D8         STA [$D8],y               
CODE_2A8388:        20 D2 8A      JSR CODE_2A8AD2           
CODE_2A838B:        6B            RTL                       

CODE_2A838C:        AC 00 07      LDY $0700                 
CODE_2A838F:        A9 E2         LDA #$E2                  
CODE_2A8391:        97 2E         STA [$2E],y               
CODE_2A8393:        6B            RTL                       

CODE_2A8394:        8B            PHB                       
CODE_2A8395:        4B            PHK                       
CODE_2A8396:        AB            PLB                       ;
CODE_2A8397:        A5 30         LDA $30                   
CODE_2A8399:        85 DA         STA $DA                   
CODE_2A839B:        C2 20         REP #$20                  
CODE_2A839D:        A5 2E         LDA $2E                   
CODE_2A839F:        18            CLC                       
CODE_2A83A0:        69 00 20      ADC #$2000                
CODE_2A83A3:        85 D8         STA $D8                   
CODE_2A83A5:        E2 20         SEP #$20                  
CODE_2A83A7:        AD 00 07      LDA $0700                 
CODE_2A83AA:        85 03         STA $03                   
CODE_2A83AC:        A2 00         LDX #$00                  
CODE_2A83AE:        A4 03         LDY $03                   
CODE_2A83B0:        BD DB 83      LDA.w DATA_2A83DB,x               
CODE_2A83B3:        C9 80         CMP #$80                  
CODE_2A83B5:        F0 0E         BEQ CODE_2A83C5           
CODE_2A83B7:        C9 FF         CMP #$FF                  
CODE_2A83B9:        F0 1E         BEQ CODE_2A83D9           
CODE_2A83BB:        97 2E         STA [$2E],y               
CODE_2A83BD:        29 F0         AND #$F0                  
CODE_2A83BF:        D0 04         BNE CODE_2A83C5           
CODE_2A83C1:        A9 01         LDA #$01                  
CODE_2A83C3:        97 D8         STA [$D8],y               
CODE_2A83C5:        E8            INX                       
CODE_2A83C6:        E6 03         INC $03                   
CODE_2A83C8:        A5 03         LDA $03                   
CODE_2A83CA:        29 07         AND #$07                  
CODE_2A83CC:        D0 E0         BNE CODE_2A83AE           
CODE_2A83CE:        A5 03         LDA $03                   
CODE_2A83D0:        29 F0         AND #$F0                  
CODE_2A83D2:        18            CLC                       
CODE_2A83D3:        69 10         ADC #$10                  
CODE_2A83D5:        85 03         STA $03                   
CODE_2A83D7:        80 D5         BRA CODE_2A83AE           

CODE_2A83D9:        AB            PLB                       ;
CODE_2A83DA:        6B            RTL                       

DATA_2A83DB:        db $80,$80,$80,$90,$91,$80,$80,$80
                    db $80,$80,$80,$94,$92,$91,$80,$80
                    db $80,$80,$80,$94,$03,$95,$80,$80
                    db $80,$80,$90,$93,$03,$95,$80,$80
                    db $80,$90,$93,$98,$03,$95,$80,$80
                    db $90,$93,$98,$92,$93,$92,$91,$80
                    db $94,$92,$02,$03,$98,$03,$92,$91
                    db $94,$03,$98,$03,$92,$93,$03,$95
                    db $FF

CODE_2A841C:        6B            RTL                       

CODE_2A841D:        8B            PHB                       
CODE_2A841E:        A9 7F         LDA #$7F                  
CODE_2A8420:        48            PHA                       
CODE_2A8421:        AB            PLB                       ;
CODE_2A8422:        AF 49 02 00   LDA $000249               
CODE_2A8426:        29 FE         AND #$FE                  
CODE_2A8428:        AA            TAX                       
CODE_2A8429:        A0 00         LDY #$00                  
CODE_2A842B:        C2 20         REP #$20                  
CODE_2A842D:        A9 1F 00      LDA #$001F                
CODE_2A8430:        85 00         STA $00                   
CODE_2A8432:        AF 12 02 00   LDA $000212               
CODE_2A8436:        85 02         STA $02                   
CODE_2A8438:        BF 0A BC 2A   LDA.l DATA_2ABC0A,x             
CODE_2A843C:        18            CLC                       
CODE_2A843D:        65 02         ADC $02                   
CODE_2A843F:        99 00 92      STA $9200,y               
CODE_2A8442:        99 40 92      STA $9240,y               
CODE_2A8445:        99 80 92      STA $9280,y               
CODE_2A8448:        99 C0 92      STA $92C0,y               
CODE_2A844B:        99 00 93      STA $9300,y               
CODE_2A844E:        99 40 93      STA $9340,y               
CODE_2A8451:        99 80 93      STA $9380,y               
CODE_2A8454:        99 C0 93      STA $93C0,y               
CODE_2A8457:        E8            INX                       
CODE_2A8458:        E8            INX                       
CODE_2A8459:        C8            INY                       
CODE_2A845A:        C8            INY                       
CODE_2A845B:        C6 00         DEC $00                   
CODE_2A845D:        10 D9         BPL CODE_2A8438           
CODE_2A845F:        E2 20         SEP #$20                  
CODE_2A8461:        AB            PLB                       ;
CODE_2A8462:        A5 15         LDA $15                   
CODE_2A8464:        29 03         AND #$03                  
CODE_2A8466:        D0 06         BNE CODE_2A846E           
CODE_2A8468:        EE 49 02      INC $0249                 
CODE_2A846B:        EE 49 02      INC $0249                 
CODE_2A846E:        AD 93 02      LDA $0293                 
CODE_2A8471:        09 80         ORA #$80                  
CODE_2A8473:        8D 93 02      STA $0293                 
CODE_2A8476:        6B            RTL                       

DATA_2A8477:        db $55,$56,$56,$56,$56,$57

DATA_2A847D:        db $5B,$5C,$5C,$5C,$5C,$5D
             
CODE_2A8483:        8B            PHB
CODE_2A8484:        4B            PHK
CODE_2A8485:        AB            PLB                       ;
CODE_2A8486:        A2 00         LDX #$00                  
CODE_2A8488:        AC 00 07      LDY $0700                 
CODE_2A848B:        A5 30         LDA $30                   
CODE_2A848D:        85 DA         STA $DA                   
CODE_2A848F:        C2 20         REP #$20                  
CODE_2A8491:        A5 2E         LDA $2E                   
CODE_2A8493:        18            CLC                       
CODE_2A8494:        69 10 00      ADC #$0010                
CODE_2A8497:        85 D8         STA $D8                   
CODE_2A8499:        E2 20         SEP #$20                  
CODE_2A849B:        BD 77 84      LDA.w DATA_2A8477,x               
CODE_2A849E:        97 2E         STA [$2E],y               
CODE_2A84A0:        BD 7D 84      LDA.w DATA_2A847D,x               
CODE_2A84A3:        97 D8         STA [$D8],y               
CODE_2A84A5:        22 BB BE 23   JSL CODE_23BEBB           
CODE_2A84A9:        E8            INX                       
CODE_2A84AA:        E0 06         CPX #$06                  
CODE_2A84AC:        D0 E1         BNE CODE_2A848F           
CODE_2A84AE:        AB            PLB                       ;
CODE_2A84AF:        6B            RTL                       

CODE_2A84B0:        AD 50 03      LDA $0350                 
CODE_2A84B3:        F0 35         BEQ CODE_2A84EA           
CODE_2A84B5:        9C 49 02      STZ $0249                 
CODE_2A84B8:        A9 B0         LDA #$B0                  
CODE_2A84BA:        8D 4B 02      STA $024B                 
CODE_2A84BD:        A9 1A         LDA #$1A                  
CODE_2A84BF:        8D 12 06      STA $0612                 
CODE_2A84C2:        64 D8         STZ $D8                   
CODE_2A84C4:        64 D9         STZ $D9                   
CODE_2A84C6:        20 18 85      JSR CODE_2A8518           
CODE_2A84C9:        EE 49 02      INC $0249                 
CODE_2A84CC:        AD 49 02      LDA $0249                 
CODE_2A84CF:        29 01         AND #$01                  
CODE_2A84D1:        D0 10         BNE CODE_2A84E3           
CODE_2A84D3:        AD 4B 02      LDA $024B                 
CODE_2A84D6:        18            CLC                       
CODE_2A84D7:        69 10         ADC #$10                  
CODE_2A84D9:        8D 4B 02      STA $024B                 
CODE_2A84DC:        29 F0         AND #$F0                  
CODE_2A84DE:        D0 03         BNE CODE_2A84E3           
CODE_2A84E0:        EE 4B 02      INC $024B                 
CODE_2A84E3:        CE 12 06      DEC $0612                 
CODE_2A84E6:        D0 DE         BNE CODE_2A84C6           
CODE_2A84E8:        80 29         BRA CODE_2A8513           

CODE_2A84EA:        C2 20         REP #$20                  
CODE_2A84EC:        A2 00         LDX #$00                  
CODE_2A84EE:        A9 FF 00      LDA #$00FF                
CODE_2A84F1:        9F 00 20 7F   STA $7F2000,x             
CODE_2A84F5:        9F 00 21 7F   STA $7F2100,x             
CODE_2A84F9:        9F 00 22 7F   STA $7F2200,x             
CODE_2A84FD:        9F 00 23 7F   STA $7F2300,x             
CODE_2A8501:        9F 00 24 7F   STA $7F2400,x             
CODE_2A8505:        9F 00 25 7F   STA $7F2500,x             
CODE_2A8509:        9F 00 26 7F   STA $7F2600,x             
CODE_2A850D:        CA            DEX                       
CODE_2A850E:        CA            DEX                       
CODE_2A850F:        D0 E0         BNE CODE_2A84F1           
CODE_2A8511:        E2 20         SEP #$20                  
CODE_2A8513:        64 D8         STZ $D8                   
CODE_2A8515:        64 D9         STZ $D9                   
CODE_2A8517:        6B            RTL                       

CODE_2A8518:        8B            PHB                       
CODE_2A8519:        4B            PHK                       
CODE_2A851A:        AB            PLB                       ;
CODE_2A851B:        AD 49 02      LDA $0249                 
CODE_2A851E:        29 01         AND #$01                  
CODE_2A8520:        85 C2         STA $C2                   
CODE_2A8522:        AD 50 03      LDA $0350                 
CODE_2A8525:        0A            ASL A                     
CODE_2A8526:        18            CLC                       
CODE_2A8527:        6D 50 03      ADC $0350                 
CODE_2A852A:        A8            TAY                       
CODE_2A852B:        B9 45 B5      LDA.w DATA_2AB546-1,y               
CODE_2A852E:        85 08         STA $08                   
CODE_2A8530:        C2 20         REP #$20                  
CODE_2A8532:        B9 43 B5      LDA.w DATA_2AB546-3,y               
CODE_2A8535:        85 06         STA $06                   
CODE_2A8537:        E2 20         SEP #$20                  
CODE_2A8539:        A9 7F         LDA #$7F                  
CODE_2A853B:        85 0F         STA $0F                   
CODE_2A853D:        C2 20         REP #$20                  
CODE_2A853F:        64 0D         STZ $0D                   
CODE_2A8541:        A9 10 00      LDA #$0010                
CODE_2A8544:        85 00         STA $00                   
CODE_2A8546:        AD 4B 02      LDA $024B                 
CODE_2A8549:        29 F0 00      AND #$00F0                
CODE_2A854C:        85 09         STA $09                   
CODE_2A854E:        C2 10         REP #$10                  
CODE_2A8550:        AD 4B 02      LDA $024B                 
CODE_2A8553:        29 01 00      AND #$0001                
CODE_2A8556:        F0 08         BEQ CODE_2A8560           
CODE_2A8558:        A5 0D         LDA $0D                   
CODE_2A855A:        18            CLC                       
CODE_2A855B:        69 00 01      ADC #$0100                
CODE_2A855E:        85 0D         STA $0D                   
CODE_2A8560:        A6 D8         LDX $D8                   
CODE_2A8562:        A4 09         LDY $09                   
CODE_2A8564:        B7 0D         LDA [$0D],y               
CODE_2A8566:        29 FF 00      AND #$00FF                
CODE_2A8569:        0A            ASL A                     
CODE_2A856A:        0A            ASL A                     
CODE_2A856B:        0A            ASL A                     
CODE_2A856C:        A8            TAY                       
CODE_2A856D:        A5 C2         LDA $C2                   
CODE_2A856F:        29 FF 00      AND #$00FF                
CODE_2A8572:        F0 02         BEQ CODE_2A8576           
CODE_2A8574:        C8            INY                       
CODE_2A8575:        C8            INY                       
CODE_2A8576:        B7 06         LDA [$06],y               
CODE_2A8578:        9F 00 20 7F   STA $7F2000,x             
CODE_2A857C:        C8            INY                       
CODE_2A857D:        C8            INY                       
CODE_2A857E:        C8            INY                       
CODE_2A857F:        C8            INY                       
CODE_2A8580:        B7 06         LDA [$06],y               
CODE_2A8582:        9F 02 20 7F   STA $7F2002,x             
CODE_2A8586:        E6 09         INC $09                   
CODE_2A8588:        E6 D8         INC $D8                   
CODE_2A858A:        E6 D8         INC $D8                   
CODE_2A858C:        E6 D8         INC $D8                   
CODE_2A858E:        E6 D8         INC $D8                   
CODE_2A8590:        C6 00         DEC $00                   
CODE_2A8592:        D0 CC         BNE CODE_2A8560           
CODE_2A8594:        E2 30         SEP #$30                  
CODE_2A8596:        AB            PLB                       ;
CODE_2A8597:        60            RTS                       

CODE_2A8598:        8B            PHB                       
CODE_2A8599:        4B            PHK                       
CODE_2A859A:        AB            PLB                       ;
CODE_2A859B:        C2 20         REP #$20                  
CODE_2A859D:        A5 2E         LDA $2E                   
CODE_2A859F:        85 D8         STA $D8                   
CODE_2A85A1:        A9 10 00      LDA #$0010                
CODE_2A85A4:        85 DB         STA $DB                   
CODE_2A85A6:        E2 20         SEP #$20                  
CODE_2A85A8:        A5 30         LDA $30                   
CODE_2A85AA:        85 DA         STA $DA                   
CODE_2A85AC:        AD 06 07      LDA $0706                 
CODE_2A85AF:        29 0F         AND #$0F                  
CODE_2A85B1:        AA            TAX                       
CODE_2A85B2:        AC 00 07      LDY $0700                 
CODE_2A85B5:        BD CB 85      LDA.w DATA_2A85CB,x               
CODE_2A85B8:        97 D8         STA [$D8],y               
CODE_2A85BA:        20 D2 8A      JSR CODE_2A8AD2           
CODE_2A85BD:        20 F5 86      JSR CODE_2A86F5           
CODE_2A85C0:        E8            INX                       
CODE_2A85C1:        BD CB 85      LDA.w DATA_2A85CB,x               
CODE_2A85C4:        97 D8         STA [$D8],y               
CODE_2A85C6:        20 D2 8A      JSR CODE_2A8AD2           
CODE_2A85C9:        AB            PLB                       ;
CODE_2A85CA:        6B            RTL                       

DATA_2A85CB:        db $02,$03,$04,$05

CODE_2A85CF:        8B            PHB                       
CODE_2A85D0:        4B            PHK                       
CODE_2A85D1:        AB            PLB                       ;
CODE_2A85D2:        A7 2B         LDA [$2B]                 
CODE_2A85D4:        AA            TAX                       
CODE_2A85D5:        C2 20         REP #$20                  
CODE_2A85D7:        E6 2B         INC $2B                   
CODE_2A85D9:        A5 2E         LDA $2E                   
CODE_2A85DB:        85 D8         STA $D8                   
CODE_2A85DD:        A9 01 00      LDA #$0001                
CODE_2A85E0:        85 DB         STA $DB                   
CODE_2A85E2:        E2 20         SEP #$20                  
CODE_2A85E4:        A5 30         LDA $30                   
CODE_2A85E6:        85 DA         STA $DA                   
CODE_2A85E8:        AD 06 07      LDA $0706                 
CODE_2A85EB:        29 0F         AND #$0F                  
CODE_2A85ED:        85 03         STA $03                   
CODE_2A85EF:        AC 00 07      LDY $0700                 
CODE_2A85F2:        8A            TXA                       
CODE_2A85F3:        F0 53         BEQ CODE_2A8648           
CODE_2A85F5:        E0 04         CPX #$04                  
CODE_2A85F7:        D0 1C         BNE CODE_2A8615           
CODE_2A85F9:        C2 20         REP #$20                  
CODE_2A85FB:        C6 D8         DEC $D8                   
CODE_2A85FD:        C6 D8         DEC $D8                   
CODE_2A85FF:        E2 20         SEP #$20                  
CODE_2A8601:        A9 48         LDA #$48                  
CODE_2A8603:        97 D8         STA [$D8],y               
CODE_2A8605:        C2 20         REP #$20                  
CODE_2A8607:        E6 D8         INC $D8                   
CODE_2A8609:        E2 20         SEP #$20                  
CODE_2A860B:        A9 48         LDA #$48                  
CODE_2A860D:        97 D8         STA [$D8],y               
CODE_2A860F:        C2 20         REP #$20                  
CODE_2A8611:        E6 D8         INC $D8                   
CODE_2A8613:        E2 20         SEP #$20                  
CODE_2A8615:        BD 67 86      LDA.w DATA_2A8668-1,x               
CODE_2A8618:        97 D8         STA [$D8],y               
CODE_2A861A:        20 D2 8A      JSR CODE_2A8AD2           
CODE_2A861D:        20 F5 86      JSR CODE_2A86F5           
CODE_2A8620:        C6 03         DEC $03                   
CODE_2A8622:        A9 02         LDA #$02                  
CODE_2A8624:        85 02         STA $02                   
CODE_2A8626:        20 55 86      JSR CODE_2A8655           
CODE_2A8629:        BD 6D 86      LDA.w DATA_2A866D,x               
CODE_2A862C:        97 D8         STA [$D8],y               
CODE_2A862E:        20 D2 8A      JSR CODE_2A8AD2           
CODE_2A8631:        20 F5 86      JSR CODE_2A86F5           
CODE_2A8634:        E0 04         CPX #$04                  
CODE_2A8636:        D0 1B         BNE CODE_2A8653           
CODE_2A8638:        A9 48         LDA #$48                  
CODE_2A863A:        97 D8         STA [$D8],y               
CODE_2A863C:        C2 20         REP #$20                  
CODE_2A863E:        E6 D8         INC $D8                   
CODE_2A8640:        E2 20         SEP #$20                  
CODE_2A8642:        A9 48         LDA #$48                  
CODE_2A8644:        97 D8         STA [$D8],y               
CODE_2A8646:        80 0B         BRA CODE_2A8653           

CODE_2A8648:        A9 10         LDA #$10                  
CODE_2A864A:        85 DB         STA $DB                   
CODE_2A864C:        A9 07         LDA #$07                  
CODE_2A864E:        85 02         STA $02                   
CODE_2A8650:        20 55 86      JSR CODE_2A8655           
CODE_2A8653:        AB            PLB                       ;
CODE_2A8654:        6B            RTL                       

CODE_2A8655:        A5 03         LDA $03                   
CODE_2A8657:        F0 0E         BEQ CODE_2A8667           
CODE_2A8659:        A5 02         LDA $02                   
CODE_2A865B:        97 D8         STA [$D8],y               
CODE_2A865D:        20 D2 8A      JSR CODE_2A8AD2           
CODE_2A8660:        20 F5 86      JSR CODE_2A86F5           
CODE_2A8663:        C6 03         DEC $03                   
CODE_2A8665:        80 EE         BRA CODE_2A8655           

CODE_2A8667:        60            RTS                       

DATA_2A8668:        db $03,$03,$06,$08,$0B ;

DATA_2A866D:        db $08,$04,$05,$04,$09,$09,$0A ;
             
CODE_2A8674:        8B            PHB                       
CODE_2A8675:        4B            PHK                       
CODE_2A8676:        AB            PLB                       ;
CODE_2A8677:        A7 2B         LDA [$2B]                 
CODE_2A8679:        85 03         STA $03                   
CODE_2A867B:        85 DD         STA $DD                   
CODE_2A867D:        C2 20         REP #$20                  
CODE_2A867F:        E6 2B         INC $2B                   
CODE_2A8681:        A5 2E         LDA $2E                   
CODE_2A8683:        85 D8         STA $D8                   
CODE_2A8685:        E2 20         SEP #$20                  
CODE_2A8687:        A5 30         LDA $30                   
CODE_2A8689:        85 DA         STA $DA                   
CODE_2A868B:        AD 06 07      LDA $0706                 
CODE_2A868E:        29 0F         AND #$0F                  
CODE_2A8690:        AA            TAX                       
CODE_2A8691:        BD D5 86      LDA.w DATA_2A86D5,x               
CODE_2A8694:        85 DB         STA $DB                   
CODE_2A8696:        64 DC         STZ $DC                   
CODE_2A8698:        64 02         STZ $02                   
CODE_2A869A:        8A            TXA                       
CODE_2A869B:        D0 0A         BNE CODE_2A86A7           
CODE_2A869D:        A7 2B         LDA [$2B]                 
CODE_2A869F:        85 02         STA $02                   
CODE_2A86A1:        C2 20         REP #$20                  
CODE_2A86A3:        E6 2B         INC $2B                   
CODE_2A86A5:        E2 20         SEP #$20                  
CODE_2A86A7:        AC 00 07      LDY $0700                 
CODE_2A86AA:        BD E5 86      LDA.w DATA_2A86E5,x               
CODE_2A86AD:        97 D8         STA [$D8],y               
CODE_2A86AF:        20 D2 8A      JSR CODE_2A8AD2           
CODE_2A86B2:        20 F5 86      JSR CODE_2A86F5           
CODE_2A86B5:        C6 03         DEC $03                   
CODE_2A86B7:        D0 F1         BNE CODE_2A86AA           
CODE_2A86B9:        A5 02         LDA $02                   
CODE_2A86BB:        F0 16         BEQ CODE_2A86D3           
CODE_2A86BD:        C6 02         DEC $02                   
CODE_2A86BF:        C2 20         REP #$20                  
CODE_2A86C1:        A5 2E         LDA $2E                   
CODE_2A86C3:        18            CLC                       
CODE_2A86C4:        69 10 00      ADC #$0010                
CODE_2A86C7:        85 2E         STA $2E                   
CODE_2A86C9:        85 D8         STA $D8                   
CODE_2A86CB:        E2 20         SEP #$20                  
CODE_2A86CD:        A5 DD         LDA $DD                   
CODE_2A86CF:        85 03         STA $03                   
CODE_2A86D1:        80 D7         BRA CODE_2A86AA           

CODE_2A86D3:        AB            PLB                       ;
CODE_2A86D4:        6B            RTL                       

DATA_2A86D5:        db $01,$0F,$01,$11,$10,$10,$11,$01
                    db $0F,$0F,$11,$11,$0F,$01,$01,$01
					
DATA_2A86E5:        db $13,$14,$15,$16,$17,$18,$19,$1A
                    db $1B,$1C,$1D,$1E,$1F,$20,$21,$22
   
CODE_2A86F5:        C2 20         REP #$20                  
CODE_2A86F7:        A5 D8         LDA $D8                   
CODE_2A86F9:        38            SEC                       
CODE_2A86FA:        E9 00 20      SBC #$2000                
CODE_2A86FD:        18            CLC                       
CODE_2A86FE:        65 DB         ADC $DB                   
CODE_2A8700:        85 D8         STA $D8                   
CODE_2A8702:        E2 20         SEP #$20                  
CODE_2A8704:        60            RTS                       

CODE_2A8705:        8B            PHB                       
CODE_2A8706:        4B            PHK                       
CODE_2A8707:        AB            PLB                       ;
CODE_2A8708:        A5 00         LDA $00                   
CODE_2A870A:        48            PHA                       
CODE_2A870B:        A5 01         LDA $01                   
CODE_2A870D:        48            PHA                       
CODE_2A870E:        DA            PHX                       
CODE_2A870F:        A5 30         LDA $30                   
CODE_2A8711:        85 DA         STA $DA                   
CODE_2A8713:        85 DD         STA $DD                   
CODE_2A8715:        C2 20         REP #$20                  
CODE_2A8717:        A5 2E         LDA $2E                   
CODE_2A8719:        85 D8         STA $D8                   
CODE_2A871B:        18            CLC                       
CODE_2A871C:        69 00 20      ADC #$2000                
CODE_2A871F:        85 DB         STA $DB                   
CODE_2A8721:        E2 20         SEP #$20                  
CODE_2A8723:        A2 00         LDX #$00                  
CODE_2A8725:        20 61 87      JSR CODE_2A8761           
CODE_2A8728:        B7 D8         LDA [$D8],y               
CODE_2A872A:        C9 9C         CMP #$9C                  
CODE_2A872C:        F0 27         BEQ CODE_2A8755           
CODE_2A872E:        C9 E4         CMP #$E4                  
CODE_2A8730:        F0 23         BEQ CODE_2A8755           
CODE_2A8732:        BD 5E 87      LDA.w DATA_2A875E,x               
CODE_2A8735:        97 D8         STA [$D8],y               
CODE_2A8737:        E0 02         CPX #$02                  
CODE_2A8739:        F0 03         BEQ CODE_2A873E           
CODE_2A873B:        E8            INX                       
CODE_2A873C:        80 E7         BRA CODE_2A8725           

CODE_2A873E:        20 61 87      JSR CODE_2A8761           
CODE_2A8741:        B7 D8         LDA [$D8],y               
CODE_2A8743:        C9 9C         CMP #$9C                  
CODE_2A8745:        F0 0E         BEQ CODE_2A8755           
CODE_2A8747:        C9 E4         CMP #$E4                  
CODE_2A8749:        F0 0A         BEQ CODE_2A8755           
CODE_2A874B:        A9 04         LDA #$04                  
CODE_2A874D:        97 D8         STA [$D8],y               
CODE_2A874F:        A9 01         LDA #$01                  
CODE_2A8751:        97 DB         STA [$DB],y               
CODE_2A8753:        80 E9         BRA CODE_2A873E           

CODE_2A8755:        FA            PLX                       
CODE_2A8756:        68            PLA                       
CODE_2A8757:        85 01         STA $01                   
CODE_2A8759:        68            PLA                       
CODE_2A875A:        85 00         STA $00                   
CODE_2A875C:        AB            PLB                       ;
CODE_2A875D:        6B            RTL                       

DATA_2A875E:        db $06,$07

CODE_2A8760:        08            PHP                       
CODE_2A8761:        C2 20         REP #$20                  
CODE_2A8763:        A5 D8         LDA $D8                   
CODE_2A8765:        38            SEC                       
CODE_2A8766:        E9 10 00      SBC #$0010                
CODE_2A8769:        85 D8         STA $D8                   
CODE_2A876B:        A5 DB         LDA $DB                   
CODE_2A876D:        38            SEC                       
CODE_2A876E:        E9 10 00      SBC #$0010                
CODE_2A8771:        85 DB         STA $DB                   
CODE_2A8773:        E2 20         SEP #$20                  
CODE_2A8775:        60            RTS                       

CODE_2A8776:        C2 20         REP #$20                  
CODE_2A8778:        A5 2E         LDA $2E                   
CODE_2A877A:        38            SEC                       
CODE_2A877B:        E9 10 00      SBC #$0010                
CODE_2A877E:        85 D8         STA $D8                   
CODE_2A8780:        E2 20         SEP #$20                  
CODE_2A8782:        A5 30         LDA $30                   
CODE_2A8784:        85 DA         STA $DA                   
CODE_2A8786:        B7 D8         LDA [$D8],y               
CODE_2A8788:        C9 AB         CMP #$AB                  
CODE_2A878A:        D0 07         BNE CODE_2A8793           
CODE_2A878C:        A9 0B         LDA #$0B                  
CODE_2A878E:        97 D8         STA [$D8],y               
CODE_2A8790:        20 D2 8A      JSR CODE_2A8AD2           
CODE_2A8793:        6B            RTL                       

CODE_2A8794:        C2 20         REP #$20                  
CODE_2A8796:        A5 2E         LDA $2E                   
CODE_2A8798:        18            CLC                       
CODE_2A8799:        69 10 00      ADC #$0010                
CODE_2A879C:        85 D8         STA $D8                   
CODE_2A879E:        E2 20         SEP #$20                  
CODE_2A87A0:        A5 30         LDA $30                   
CODE_2A87A2:        85 DA         STA $DA                   
CODE_2A87A4:        B7 D8         LDA [$D8],y               
CODE_2A87A6:        C9 9A         CMP #$9A                  
CODE_2A87A8:        D0 07         BNE CODE_2A87B1           
CODE_2A87AA:        A9 0D         LDA #$0D                  
CODE_2A87AC:        97 D8         STA [$D8],y               
CODE_2A87AE:        20 D2 8A      JSR CODE_2A8AD2           
CODE_2A87B1:        6B            RTL                       

CODE_2A87B2:        5A            PHY                       
CODE_2A87B3:        A5 30         LDA $30                   
CODE_2A87B5:        85 DA         STA $DA                   
CODE_2A87B7:        C2 20         REP #$20                  
CODE_2A87B9:        A5 2E         LDA $2E                   
CODE_2A87BB:        18            CLC                       
CODE_2A87BC:        69 0F 00      ADC #$000F                
CODE_2A87BF:        85 D8         STA $D8                   
CODE_2A87C1:        98            TYA                       
CODE_2A87C2:        29 FF 00      AND #$00FF                
CODE_2A87C5:        D0 08         BNE CODE_2A87CF           
CODE_2A87C7:        A5 D8         LDA $D8                   
CODE_2A87C9:        38            SEC                       
CODE_2A87CA:        E9 A0 01      SBC #$01A0                
CODE_2A87CD:        85 D8         STA $D8                   
CODE_2A87CF:        E2 20         SEP #$20                  
CODE_2A87D1:        B7 D8         LDA [$D8],y               
CODE_2A87D3:        C9 AA         CMP #$AA                  
CODE_2A87D5:        D0 0E         BNE CODE_2A87E5           
CODE_2A87D7:        A5 D8         LDA $D8                   
CODE_2A87D9:        38            SEC                       
CODE_2A87DA:        E9 10         SBC #$10                  
CODE_2A87DC:        85 D8         STA $D8                   
CODE_2A87DE:        A9 06         LDA #$06                  
CODE_2A87E0:        97 D8         STA [$D8],y               
CODE_2A87E2:        20 D2 8A      JSR CODE_2A8AD2           
CODE_2A87E5:        C2 20         REP #$20                  
CODE_2A87E7:        A5 2E         LDA $2E                   
CODE_2A87E9:        38            SEC                       
CODE_2A87EA:        E9 10 00      SBC #$0010                
CODE_2A87ED:        85 D8         STA $D8                   
CODE_2A87EF:        E2 20         SEP #$20                  
CODE_2A87F1:        C8            INY                       
CODE_2A87F2:        98            TYA                       
CODE_2A87F3:        29 0F         AND #$0F                  
CODE_2A87F5:        D0 0C         BNE CODE_2A8803           
CODE_2A87F7:        C2 20         REP #$20                  
CODE_2A87F9:        A5 D8         LDA $D8                   
CODE_2A87FB:        18            CLC                       
CODE_2A87FC:        69 A0 01      ADC #$01A0                
CODE_2A87FF:        85 D8         STA $D8                   
CODE_2A8801:        E2 20         SEP #$20                  
CODE_2A8803:        B7 D8         LDA [$D8],y               
CODE_2A8805:        C9 A8         CMP #$A8                  
CODE_2A8807:        D0 13         BNE CODE_2A881C           
CODE_2A8809:        C2 20         REP #$20                  
CODE_2A880B:        A5 D8         LDA $D8                   
CODE_2A880D:        18            CLC                       
CODE_2A880E:        69 10 00      ADC #$0010                
CODE_2A8811:        85 D8         STA $D8                   
CODE_2A8813:        E2 20         SEP #$20                  
CODE_2A8815:        A9 02         LDA #$02                  
CODE_2A8817:        97 D8         STA [$D8],y               
CODE_2A8819:        20 D2 8A      JSR CODE_2A8AD2           
CODE_2A881C:        7A            PLY                       
CODE_2A881D:        6B            RTL                       

CODE_2A881E:        5A            PHY                       
CODE_2A881F:        C2 20         REP #$20                  
CODE_2A8821:        A5 2E         LDA $2E                   
CODE_2A8823:        38            SEC                       
CODE_2A8824:        E9 10 00      SBC #$0010                
CODE_2A8827:        85 D8         STA $D8                   
CODE_2A8829:        E2 20         SEP #$20                  
CODE_2A882B:        A5 30         LDA $30                   
CODE_2A882D:        85 DA         STA $DA                   
CODE_2A882F:        B7 D8         LDA [$D8],y               
CODE_2A8831:        C9 A8         CMP #$A8                  
CODE_2A8833:        F0 0B         BEQ CODE_2A8840           
CODE_2A8835:        C9 34         CMP #$34                  
CODE_2A8837:        F0 07         BEQ CODE_2A8840           
CODE_2A8839:        A9 05         LDA #$05                  
CODE_2A883B:        97 D8         STA [$D8],y               
CODE_2A883D:        20 D2 8A      JSR CODE_2A8AD2           
CODE_2A8840:        7A            PLY                       
CODE_2A8841:        6B            RTL                       

DATA_2A8842:        db $06,$0C

CODE_2A8844:        8B            PHB                       
CODE_2A8845:        4B            PHK                       
CODE_2A8846:        AB            PLB                       ;
CODE_2A8847:        DA            PHX                       
CODE_2A8848:        5A            PHY                       
CODE_2A8849:        A5 30         LDA $30                   
CODE_2A884B:        85 DA         STA $DA                   
CODE_2A884D:        C2 20         REP #$20                  
CODE_2A884F:        A5 2E         LDA $2E                   
CODE_2A8851:        38            SEC                       
CODE_2A8852:        E9 10 00      SBC #$0010                
CODE_2A8855:        85 D8         STA $D8                   
CODE_2A8857:        E2 20         SEP #$20                  
CODE_2A8859:        B7 D8         LDA [$D8],y               
CODE_2A885B:        C9 AA         CMP #$AA                  
CODE_2A885D:        F0 0C         BEQ CODE_2A886B           
CODE_2A885F:        C9 A9         CMP #$A9                  
CODE_2A8861:        F0 08         BEQ CODE_2A886B           
CODE_2A8863:        BD 42 88      LDA.w DATA_2A8842,x               
CODE_2A8866:        97 D8         STA [$D8],y               
CODE_2A8868:        20 D2 8A      JSR CODE_2A8AD2           
CODE_2A886B:        7A            PLY                       
CODE_2A886C:        FA            PLX                       
CODE_2A886D:        AB            PLB                       ;
CODE_2A886E:        6B            RTL                       

CODE_2A886F:        DA            PHX                       
CODE_2A8870:        5A            PHY                       
CODE_2A8871:        B7 2E         LDA [$2E],y               
CODE_2A8873:        C9 A6         CMP #$A6                  
CODE_2A8875:        D0 49         BNE CODE_2A88C0           
CODE_2A8877:        A5 30         LDA $30                   
CODE_2A8879:        85 DA         STA $DA                   
CODE_2A887B:        C2 20         REP #$20                  
CODE_2A887D:        A5 2E         LDA $2E                   
CODE_2A887F:        48            PHA                       
CODE_2A8880:        18            CLC                       
CODE_2A8881:        69 11 00      ADC #$0011                
CODE_2A8884:        85 D8         STA $D8                   
CODE_2A8886:        68            PLA                       
CODE_2A8887:        18            CLC                       
CODE_2A8888:        69 0F 00      ADC #$000F                
CODE_2A888B:        85 DB         STA $DB                   
CODE_2A888D:        98            TYA                       
CODE_2A888E:        29 0F 00      AND #$000F                
CODE_2A8891:        D0 10         BNE CODE_2A88A3           
CODE_2A8893:        A5 D8         LDA $D8                   
CODE_2A8895:        18            CLC                       
CODE_2A8896:        69 A0 01      ADC #$01A0                
CODE_2A8899:        85 D8         STA $D8                   
CODE_2A889B:        A5 DB         LDA $DB                   
CODE_2A889D:        18            CLC                       
CODE_2A889E:        69 A0 01      ADC #$01A0                
CODE_2A88A1:        85 DB         STA $DB                   
CODE_2A88A3:        E2 20         SEP #$20                  
CODE_2A88A5:        B7 D8         LDA [$D8],y               
CODE_2A88A7:        C9 A8         CMP #$A8                  
CODE_2A88A9:        D0 15         BNE CODE_2A88C0           
CODE_2A88AB:        C2 20         REP #$20                  
CODE_2A88AD:        A5 D8         LDA $D8                   
CODE_2A88AF:        38            SEC                       
CODE_2A88B0:        E9 10 00      SBC #$0010                
CODE_2A88B3:        85 D8         STA $D8                   
CODE_2A88B5:        E2 20         SEP #$20                  
CODE_2A88B7:        A9 05         LDA #$05                  
CODE_2A88B9:        97 D8         STA [$D8],y               
CODE_2A88BB:        20 D2 8A      JSR CODE_2A8AD2           
CODE_2A88BE:        80 25         BRA CODE_2A88E5           

CODE_2A88C0:        C2 20         REP #$20                  
CODE_2A88C2:        A5 DB         LDA $DB                   
CODE_2A88C4:        85 D8         STA $D8                   
CODE_2A88C6:        E2 20         SEP #$20                  
CODE_2A88C8:        B7 D8         LDA [$D8],y               
CODE_2A88CA:        C9 AA         CMP #$AA                  
CODE_2A88CC:        F0 04         BEQ CODE_2A88D2           
CODE_2A88CE:        C9 BF         CMP #$BF                  
CODE_2A88D0:        D0 13         BNE CODE_2A88E5           
CODE_2A88D2:        C2 20         REP #$20                  
CODE_2A88D4:        A5 D8         LDA $D8                   
CODE_2A88D6:        38            SEC                       
CODE_2A88D7:        E9 10 00      SBC #$0010                
CODE_2A88DA:        85 D8         STA $D8                   
CODE_2A88DC:        E2 20         SEP #$20                  
CODE_2A88DE:        A9 06         LDA #$06                  
CODE_2A88E0:        97 D8         STA [$D8],y               
CODE_2A88E2:        20 D2 8A      JSR CODE_2A8AD2           
CODE_2A88E5:        7A            PLY                       
CODE_2A88E6:        FA            PLX                       
CODE_2A88E7:        6B            RTL                       

CODE_2A88E8:        5A            PHY                       
CODE_2A88E9:        A5 30         LDA $30                   
CODE_2A88EB:        85 DA         STA $DA                   
CODE_2A88ED:        C2 20         REP #$20                  
CODE_2A88EF:        A5 2E         LDA $2E                   
CODE_2A88F1:        85 D8         STA $D8                   
CODE_2A88F3:        E2 20         SEP #$20                  
CODE_2A88F5:        98            TYA                       
CODE_2A88F6:        18            CLC                       
CODE_2A88F7:        69 0F         ADC #$0F                  
CODE_2A88F9:        A8            TAY                       
CODE_2A88FA:        29 F0         AND #$F0                  
CODE_2A88FC:        D0 02         BNE CODE_2A8900           
CODE_2A88FE:        E6 D9         INC $D9                   
CODE_2A8900:        B7 D8         LDA [$D8],y               
CODE_2A8902:        C9 9A         CMP #$9A                  
CODE_2A8904:        F0 08         BEQ CODE_2A890E           
CODE_2A8906:        C9 99         CMP #$99                  
CODE_2A8908:        F0 04         BEQ CODE_2A890E           
CODE_2A890A:        C9 E3         CMP #$E3                  
CODE_2A890C:        D0 19         BNE CODE_2A8927           
CODE_2A890E:        C8            INY                       
CODE_2A890F:        98            TYA                       
CODE_2A8910:        29 0F         AND #$0F                  
CODE_2A8912:        D0 0C         BNE CODE_2A8920           
CODE_2A8914:        C2 20         REP #$20                  
CODE_2A8916:        A5 D8         LDA $D8                   
CODE_2A8918:        18            CLC                       
CODE_2A8919:        69 A0 01      ADC #$01A0                
CODE_2A891C:        85 D8         STA $D8                   
CODE_2A891E:        E2 20         SEP #$20                  
CODE_2A8920:        A9 02         LDA #$02                  
CODE_2A8922:        97 D8         STA [$D8],y               
CODE_2A8924:        20 D2 8A      JSR CODE_2A8AD2           
CODE_2A8927:        7A            PLY                       
CODE_2A8928:        6B            RTL                       

DATA_2A8929:        db $0A,$04,$08

CODE_2A892C:        8B            PHB                       
CODE_2A892D:        4B            PHK                       
CODE_2A892E:        AB            PLB                       ;
CODE_2A892F:        5A            PHY                       
CODE_2A8930:        DA            PHX                       
CODE_2A8931:        A5 30         LDA $30                   
CODE_2A8933:        85 DA         STA $DA                   
CODE_2A8935:        85 DD         STA $DD                   
CODE_2A8937:        C2 20         REP #$20                  
CODE_2A8939:        A5 2E         LDA $2E                   
CODE_2A893B:        85 D8         STA $D8                   
CODE_2A893D:        38            SEC                       
CODE_2A893E:        E9 0F 00      SBC #$000F                
CODE_2A8941:        85 DB         STA $DB                   
CODE_2A8943:        98            TYA                       
CODE_2A8944:        29 0F 00      AND #$000F                
CODE_2A8947:        D0 08         BNE CODE_2A8951           
CODE_2A8949:        A5 D8         LDA $D8                   
CODE_2A894B:        38            SEC                       
CODE_2A894C:        E9 A0 01      SBC #$01A0                
CODE_2A894F:        85 D8         STA $D8                   
CODE_2A8951:        A5 D8         LDA $D8                   
CODE_2A8953:        38            SEC                       
CODE_2A8954:        E9 11 00      SBC #$0011                
CODE_2A8957:        85 D8         STA $D8                   
CODE_2A8959:        E2 20         SEP #$20                  
CODE_2A895B:        A2 00         LDX #$00                  
CODE_2A895D:        B7 D8         LDA [$D8],y               
CODE_2A895F:        C9 9F         CMP #$9F                  
CODE_2A8961:        F0 1E         BEQ CODE_2A8981           
CODE_2A8963:        C9 27         CMP #$27                  
CODE_2A8965:        F0 1C         BEQ CODE_2A8983           
CODE_2A8967:        C9 35         CMP #$35                  
CODE_2A8969:        F0 18         BEQ CODE_2A8983           
CODE_2A896B:        C9 36         CMP #$36                  
CODE_2A896D:        F0 14         BEQ CODE_2A8983           
CODE_2A896F:        C9 E4         CMP #$E4                  
CODE_2A8971:        F0 0F         BEQ CODE_2A8982           
CODE_2A8973:        C9 F8         CMP #$F8                  
CODE_2A8975:        F0 0B         BEQ CODE_2A8982           
CODE_2A8977:        C9 9B         CMP #$9B                  
CODE_2A8979:        F0 07         BEQ CODE_2A8982           
CODE_2A897B:        C9 AA         CMP #$AA                  
CODE_2A897D:        F0 03         BEQ CODE_2A8982           
CODE_2A897F:        80 16         BRA CODE_2A8997           

CODE_2A8981:        E8            INX                       
CODE_2A8982:        E8            INX                       
CODE_2A8983:        C2 20         REP #$20                  
CODE_2A8985:        A5 D8         LDA $D8                   
CODE_2A8987:        18            CLC                       
CODE_2A8988:        69 10 00      ADC #$0010                
CODE_2A898B:        85 D8         STA $D8                   
CODE_2A898D:        E2 20         SEP #$20                  
CODE_2A898F:        BD 29 89      LDA.w DATA_2A8929,x               
CODE_2A8992:        97 D8         STA [$D8],y               
CODE_2A8994:        20 D2 8A      JSR CODE_2A8AD2           
CODE_2A8997:        B7 DB         LDA [$DB],y               
CODE_2A8999:        C9 A8         CMP #$A8                  
CODE_2A899B:        F0 04         BEQ CODE_2A89A1           
CODE_2A899D:        C9 F6         CMP #$F6                  
CODE_2A899F:        D0 1B         BNE CODE_2A89BC           
CODE_2A89A1:        C2 20         REP #$20                  
CODE_2A89A3:        A5 DB         LDA $DB                   
CODE_2A89A5:        18            CLC                       
CODE_2A89A6:        69 10 00      ADC #$0010                
CODE_2A89A9:        85 DB         STA $DB                   
CODE_2A89AB:        E2 20         SEP #$20                  
CODE_2A89AD:        A9 02         LDA #$02                  
CODE_2A89AF:        97 DB         STA [$DB],y               
CODE_2A89B1:        A5 DC         LDA $DC                   
CODE_2A89B3:        18            CLC                       
CODE_2A89B4:        69 20         ADC #$20                  
CODE_2A89B6:        85 DC         STA $DC                   
CODE_2A89B8:        A9 01         LDA #$01                  
CODE_2A89BA:        97 DB         STA [$DB],y               
CODE_2A89BC:        98            TYA                       
CODE_2A89BD:        18            CLC                       
CODE_2A89BE:        69 10         ADC #$10                  
CODE_2A89C0:        A8            TAY                       
CODE_2A89C1:        B7 2E         LDA [$2E],y               
CODE_2A89C3:        C9 02         CMP #$02                  
CODE_2A89C5:        F0 04         BEQ CODE_2A89CB           
CODE_2A89C7:        C9 04         CMP #$04                  
CODE_2A89C9:        D0 08         BNE CODE_2A89D3           
CODE_2A89CB:        22 3A B7 2A   JSL CODE_2AB73A           
CODE_2A89CF:        A9 AB         LDA #$AB                  
CODE_2A89D1:        97 2E         STA [$2E],y               
CODE_2A89D3:        FA            PLX                       
CODE_2A89D4:        7A            PLY                       
CODE_2A89D5:        AB            PLB                       ;
CODE_2A89D6:        6B            RTL                       

DATA_2A89D7:        db $0A,$04,$04 ;

DATA_2A89DA:        db $08,$0A ;

CODE_2A89DC:        8B            PHB                       
CODE_2A89DD:        4B            PHK                       
CODE_2A89DE:        AB            PLB                       ;
CODE_2A89DF:        DA            PHX                       
CODE_2A89E0:        5A            PHY                       
CODE_2A89E1:        C2 20         REP #$20                  
CODE_2A89E3:        A5 2E         LDA $2E                   
CODE_2A89E5:        85 D8         STA $D8                   
CODE_2A89E7:        E2 20         SEP #$20                  
CODE_2A89E9:        A5 30         LDA $30                   
CODE_2A89EB:        85 DA         STA $DA                   
CODE_2A89ED:        C2 20         REP #$20                  
CODE_2A89EF:        C8            INY                       
CODE_2A89F0:        98            TYA                       
CODE_2A89F1:        29 0F 00      AND #$000F                
CODE_2A89F4:        D0 08         BNE CODE_2A89FE           
CODE_2A89F6:        A5 D8         LDA $D8                   
CODE_2A89F8:        18            CLC                       
CODE_2A89F9:        69 A0 01      ADC #$01A0                
CODE_2A89FC:        85 D8         STA $D8                   
CODE_2A89FE:        E2 20         SEP #$20                  
CODE_2A8A00:        B7 D8         LDA [$D8],y               
CODE_2A8A02:        C9 C2         CMP #$C2                  
CODE_2A8A04:        D0 08         BNE CODE_2A8A0E           
CODE_2A8A06:        88            DEY                       
CODE_2A8A07:        A9 03         LDA #$03                  
CODE_2A8A09:        97 D8         STA [$D8],y               
CODE_2A8A0B:        20 D2 8A      JSR CODE_2A8AD2           
CODE_2A8A0E:        7A            PLY                       
CODE_2A8A0F:        FA            PLX                       
CODE_2A8A10:        DA            PHX                       
CODE_2A8A11:        5A            PHY                       
CODE_2A8A12:        B7 2E         LDA [$2E],y               
CODE_2A8A14:        C9 9F         CMP #$9F                  
CODE_2A8A16:        F0 38         BEQ CODE_2A8A50           
CODE_2A8A18:        C2 20         REP #$20                  
CODE_2A8A1A:        A5 2E         LDA $2E                   
CODE_2A8A1C:        85 D8         STA $D8                   
CODE_2A8A1E:        E2 20         SEP #$20                  
CODE_2A8A20:        98            TYA                       
CODE_2A8A21:        29 0F         AND #$0F                  
CODE_2A8A23:        D0 0C         BNE CODE_2A8A31           
CODE_2A8A25:        C2 20         REP #$20                  
CODE_2A8A27:        A5 D8         LDA $D8                   
CODE_2A8A29:        38            SEC                       
CODE_2A8A2A:        E9 A0 01      SBC #$01A0                
CODE_2A8A2D:        85 D8         STA $D8                   
CODE_2A8A2F:        E2 20         SEP #$20                  
CODE_2A8A31:        88            DEY                       
CODE_2A8A32:        B7 D8         LDA [$D8],y               
CODE_2A8A34:        C9 26         CMP #$26                  
CODE_2A8A36:        F0 18         BEQ CODE_2A8A50           
CODE_2A8A38:        C9 33         CMP #$33                  
CODE_2A8A3A:        F0 14         BEQ CODE_2A8A50           
CODE_2A8A3C:        C9 9A         CMP #$9A                  
CODE_2A8A3E:        F0 10         BEQ CODE_2A8A50           
CODE_2A8A40:        C9 E3         CMP #$E3                  
CODE_2A8A42:        F0 0C         BEQ CODE_2A8A50           
CODE_2A8A44:        C9 0D         CMP #$0D                  
CODE_2A8A46:        F0 08         BEQ CODE_2A8A50           
CODE_2A8A48:        BD D7 89      LDA.w DATA_2A89D7,x               
CODE_2A8A4B:        97 D8         STA [$D8],y               
CODE_2A8A4D:        20 D2 8A      JSR CODE_2A8AD2           
CODE_2A8A50:        7A            PLY                       
CODE_2A8A51:        5A            PHY                       
CODE_2A8A52:        B7 2E         LDA [$2E],y               
CODE_2A8A54:        C9 9B         CMP #$9B                  
CODE_2A8A56:        F0 06         BEQ CODE_2A8A5E           
CODE_2A8A58:        C9 E4         CMP #$E4                  
CODE_2A8A5A:        F0 02         BEQ CODE_2A8A5E           
CODE_2A8A5C:        C9 9F         CMP #$9F                  
CODE_2A8A5E:        D0 48         BNE CODE_2A8AA8           
CODE_2A8A60:        C2 20         REP #$20                  
CODE_2A8A62:        A5 2E         LDA $2E                   
CODE_2A8A64:        18            CLC                       
CODE_2A8A65:        69 10 00      ADC #$0010                
CODE_2A8A68:        85 D8         STA $D8                   
CODE_2A8A6A:        E2 20         SEP #$20                  
CODE_2A8A6C:        C8            INY                       
CODE_2A8A6D:        98            TYA                       
CODE_2A8A6E:        29 0F         AND #$0F                  
CODE_2A8A70:        D0 0C         BNE CODE_2A8A7E           
CODE_2A8A72:        C2 20         REP #$20                  
CODE_2A8A74:        A5 D8         LDA $D8                   
CODE_2A8A76:        18            CLC                       
CODE_2A8A77:        69 A0 01      ADC #$01A0                
CODE_2A8A7A:        85 D8         STA $D8                   
CODE_2A8A7C:        E2 20         SEP #$20                  
CODE_2A8A7E:        A2 03         LDX #$03                  
CODE_2A8A80:        B7 D8         LDA [$D8],y               
CODE_2A8A82:        C9 E3         CMP #$E3                  
CODE_2A8A84:        F0 17         BEQ CODE_2A8A9D           
CODE_2A8A86:        C9 9A         CMP #$9A                  
CODE_2A8A88:        D0 1E         BNE CODE_2A8AA8           
CODE_2A8A8A:        98            TYA                       
CODE_2A8A8B:        29 0F         AND #$0F                  
CODE_2A8A8D:        D0 0C         BNE CODE_2A8A9B           
CODE_2A8A8F:        C2 20         REP #$20                  
CODE_2A8A91:        A5 D8         LDA $D8                   
CODE_2A8A93:        38            SEC                       
CODE_2A8A94:        E9 A0 01      SBC #$01A0                
CODE_2A8A97:        85 D8         STA $D8                   
CODE_2A8A99:        E2 20         SEP #$20                  
CODE_2A8A9B:        80 02         BRA CODE_2A8A9F           

CODE_2A8A9D:        A2 02         LDX #$02                  
CODE_2A8A9F:        88            DEY                       
CODE_2A8AA0:        BD D7 89      LDA.w DATA_2A89D7,x               
CODE_2A8AA3:        97 D8         STA [$D8],y               
CODE_2A8AA5:        20 D2 8A      JSR CODE_2A8AD2           
CODE_2A8AA8:        98            TYA                       
CODE_2A8AA9:        29 0F         AND #$0F                  
CODE_2A8AAB:        D0 0C         BNE CODE_2A8AB9           
CODE_2A8AAD:        C2 20         REP #$20                  
CODE_2A8AAF:        A5 D8         LDA $D8                   
CODE_2A8AB1:        38            SEC                       
CODE_2A8AB2:        E9 A0 01      SBC #$01A0                
CODE_2A8AB5:        85 D8         STA $D8                   
CODE_2A8AB7:        E2 20         SEP #$20                  
CODE_2A8AB9:        88            DEY                       
CODE_2A8ABA:        B7 2E         LDA [$2E],y               
CODE_2A8ABC:        C9 9F         CMP #$9F                  
CODE_2A8ABE:        D0 0E         BNE CODE_2A8ACE           
CODE_2A8AC0:        B7 D8         LDA [$D8],y               
CODE_2A8AC2:        C9 86         CMP #$86                  
CODE_2A8AC4:        D0 08         BNE CODE_2A8ACE           
CODE_2A8AC6:        AD DA 89      LDA.w DATA_2A89DA                 
CODE_2A8AC9:        97 D8         STA [$D8],y               
CODE_2A8ACB:        20 D2 8A      JSR CODE_2A8AD2           
CODE_2A8ACE:        7A            PLY                       
CODE_2A8ACF:        FA            PLX                       
CODE_2A8AD0:        AB            PLB                       ;
CODE_2A8AD1:        6B            RTL                       

CODE_2A8AD2:        A5 D9         LDA $D9                   
CODE_2A8AD4:        18            CLC                       
CODE_2A8AD5:        69 20         ADC #$20                  
CODE_2A8AD7:        85 D9         STA $D9                   
CODE_2A8AD9:        A9 01         LDA #$01                  
CODE_2A8ADB:        97 D8         STA [$D8],y               
CODE_2A8ADD:        60            RTS                       

DATA_2A8ADE:        db $09,$02,$02,$07
              
CODE_2A8AE2:        8B            PHB                       
CODE_2A8AE3:        4B            PHK                       
CODE_2A8AE4:        AB            PLB                       ;
CODE_2A8AE5:        DA            PHX                       
CODE_2A8AE6:        5A            PHY                       
CODE_2A8AE7:        C2 20         REP #$20                  
CODE_2A8AE9:        A5 2E         LDA $2E                   
CODE_2A8AEB:        85 D8         STA $D8                   
CODE_2A8AED:        85 DB         STA $DB                   
CODE_2A8AEF:        E2 20         SEP #$20                  
CODE_2A8AF1:        A5 30         LDA $30                   
CODE_2A8AF3:        85 DA         STA $DA                   
CODE_2A8AF5:        85 DD         STA $DD                   
CODE_2A8AF7:        98            TYA                       
CODE_2A8AF8:        18            CLC                       
CODE_2A8AF9:        69 10         ADC #$10                  
CODE_2A8AFB:        A8            TAY                       
CODE_2A8AFC:        29 F0         AND #$F0                  
CODE_2A8AFE:        D0 02         BNE CODE_2A8B02           
CODE_2A8B00:        E6 D9         INC $D9                   
CODE_2A8B02:        B7 D8         LDA [$D8],y               
CODE_2A8B04:        C9 9A         CMP #$9A                  
CODE_2A8B06:        F0 10         BEQ CODE_2A8B18           
CODE_2A8B08:        C9 A8         CMP #$A8                  
CODE_2A8B0A:        F0 0C         BEQ CODE_2A8B18           
CODE_2A8B0C:        C9 F6         CMP #$F6                  
CODE_2A8B0E:        F0 08         BEQ CODE_2A8B18           
CODE_2A8B10:        BD DE 8A      LDA.w DATA_2A8ADE,x               
CODE_2A8B13:        97 D8         STA [$D8],y               
CODE_2A8B15:        20 D2 8A      JSR CODE_2A8AD2           
CODE_2A8B18:        7A            PLY                       
CODE_2A8B19:        5A            PHY                       
CODE_2A8B1A:        98            TYA                       
CODE_2A8B1B:        29 0F         AND #$0F                  
CODE_2A8B1D:        D0 0C         BNE CODE_2A8B2B           
CODE_2A8B1F:        C2 20         REP #$20                  
CODE_2A8B21:        A5 DB         LDA $DB                   
CODE_2A8B23:        38            SEC                       
CODE_2A8B24:        E9 A0 01      SBC #$01A0                
CODE_2A8B27:        85 DB         STA $DB                   
CODE_2A8B29:        E2 20         SEP #$20                  
CODE_2A8B2B:        88            DEY                       
CODE_2A8B2C:        B7 DB         LDA [$DB],y               
CODE_2A8B2E:        C9 C2         CMP #$C2                  
CODE_2A8B30:        D0 15         BNE CODE_2A8B47           
CODE_2A8B32:        7A            PLY                       
CODE_2A8B33:        5A            PHY                       
CODE_2A8B34:        A9 12         LDA #$12                  
CODE_2A8B36:        97 2E         STA [$2E],y               
CODE_2A8B38:        C2 30         REP #$30                  
CODE_2A8B3A:        98            TYA                       
CODE_2A8B3B:        09 00 20      ORA #$2000                
CODE_2A8B3E:        A8            TAY                       
CODE_2A8B3F:        E2 20         SEP #$20                  
CODE_2A8B41:        A9 01         LDA #$01                  
CODE_2A8B43:        97 2E         STA [$2E],y               
CODE_2A8B45:        E2 10         SEP #$10                  
CODE_2A8B47:        7A            PLY                       
CODE_2A8B48:        FA            PLX                       
CODE_2A8B49:        AB            PLB                       ;
CODE_2A8B4A:        6B            RTL                       

CODE_2A8B4B:        C2 20         REP #$20                  
CODE_2A8B4D:        A9 00 10      LDA #$1000                
CODE_2A8B50:        EB            XBA                       
CODE_2A8B51:        8D 02 16      STA $1602                 
CODE_2A8B54:        A9 BE 40      LDA #$40BE                
CODE_2A8B57:        EB            XBA                       
CODE_2A8B58:        8D 04 16      STA $1604                 
CODE_2A8B5B:        A9 FB 30      LDA #$30FB                
CODE_2A8B5E:        8D 06 16      STA $1606                 
CODE_2A8B61:        A9 FF FF      LDA #$FFFF                
CODE_2A8B64:        8D 08 16      STA $1608                 
CODE_2A8B67:        E2 20         SEP #$20                  
CODE_2A8B69:        20 9A 8C      JSR CODE_2A8C9A           
CODE_2A8B6C:        C2 20         REP #$20                  
CODE_2A8B6E:        A9 00 13      LDA #$1300                
CODE_2A8B71:        EB            XBA                       
CODE_2A8B72:        8D 02 16      STA $1602                 
CODE_2A8B75:        A9 3E 40      LDA #$403E                
CODE_2A8B78:        EB            XBA                       
CODE_2A8B79:        8D 04 16      STA $1604                 
CODE_2A8B7C:        E2 20         SEP #$20                  
CODE_2A8B7E:        20 9A 8C      JSR CODE_2A8C9A           
CODE_2A8B81:        C2 20         REP #$20                  
CODE_2A8B83:        A9 60 10      LDA #$1060                
CODE_2A8B86:        EB            XBA                       
CODE_2A8B87:        8D 02 16      STA $1602                 
CODE_2A8B8A:        A9 3F 00      LDA #$003F                
CODE_2A8B8D:        EB            XBA                       
CODE_2A8B8E:        8D 04 16      STA $1604                 
CODE_2A8B91:        A2 40         LDX #$40                  
CODE_2A8B93:        A9 D9 04      LDA #$04D9                
CODE_2A8B96:        9D 06 16      STA $1606,x               
CODE_2A8B99:        CA            DEX                       
CODE_2A8B9A:        CA            DEX                       
CODE_2A8B9B:        10 F9         BPL CODE_2A8B96           
CODE_2A8B9D:        A9 E7 04      LDA #$04E7                
CODE_2A8BA0:        8D 24 16      STA $1624                 
CODE_2A8BA3:        A9 E8 04      LDA #$04E8                
CODE_2A8BA6:        8D 26 16      STA $1626                 
CODE_2A8BA9:        A9 FF FF      LDA #$FFFF                
CODE_2A8BAC:        8D 46 16      STA $1646                 
CODE_2A8BAF:        E2 20         SEP #$20                  
CODE_2A8BB1:        20 9A 8C      JSR CODE_2A8C9A           
CODE_2A8BB4:        C2 20         REP #$20                  
CODE_2A8BB6:        A9 E0 12      LDA #$12E0                
CODE_2A8BB9:        EB            XBA                       
CODE_2A8BBA:        8D 02 16      STA $1602                 
CODE_2A8BBD:        A2 40         LDX #$40                  
CODE_2A8BBF:        A9 E5 04      LDA #$04E5                
CODE_2A8BC2:        9D 06 16      STA $1606,x               
CODE_2A8BC5:        CA            DEX                       
CODE_2A8BC6:        CA            DEX                       
CODE_2A8BC7:        10 F9         BPL CODE_2A8BC2           
CODE_2A8BC9:        A9 E9 04      LDA #$04E9                
CODE_2A8BCC:        8D 24 16      STA $1624                 
CODE_2A8BCF:        A9 EA 04      LDA #$04EA                
CODE_2A8BD2:        8D 26 16      STA $1626                 
CODE_2A8BD5:        A9 FF FF      LDA #$FFFF                
CODE_2A8BD8:        8D 46 16      STA $1646                 
CODE_2A8BDB:        E2 20         SEP #$20                  
CODE_2A8BDD:        20 9A 8C      JSR CODE_2A8C9A           
CODE_2A8BE0:        C2 20         REP #$20                  
CODE_2A8BE2:        A9 00 10      LDA #$1000                
CODE_2A8BE5:        EB            XBA                       
CODE_2A8BE6:        8D 02 16      STA $1602                 
CODE_2A8BE9:        A9 2E C0      LDA #$C02E                
CODE_2A8BEC:        EB            XBA                       
CODE_2A8BED:        8D 04 16      STA $1604                 
CODE_2A8BF0:        A9 FB 30      LDA #$30FB                
CODE_2A8BF3:        8D 06 16      STA $1606                 
CODE_2A8BF6:        A9 FF FF      LDA #$FFFF                
CODE_2A8BF9:        8D 08 16      STA $1608                 
CODE_2A8BFC:        E2 20         SEP #$20                  
CODE_2A8BFE:        20 9A 8C      JSR CODE_2A8C9A           
CODE_2A8C01:        A9 10         LDA #$10                  
CODE_2A8C03:        8D 02 16      STA $1602                 
CODE_2A8C06:        A9 1F         LDA #$1F                  
CODE_2A8C08:        8D 03 16      STA $1603                 
CODE_2A8C0B:        20 9A 8C      JSR CODE_2A8C9A           
CODE_2A8C0E:        C2 20         REP #$20                  
CODE_2A8C10:        A9 61 10      LDA #$1061                
CODE_2A8C13:        EB            XBA                       
CODE_2A8C14:        8D 02 16      STA $1602                 
CODE_2A8C17:        A9 29 80      LDA #$8029                
CODE_2A8C1A:        EB            XBA                       
CODE_2A8C1B:        8D 04 16      STA $1604                 
CODE_2A8C1E:        A9 D8 24      LDA #$24D8                
CODE_2A8C21:        8D 06 16      STA $1606                 
CODE_2A8C24:        A9 DB 24      LDA #$24DB                
CODE_2A8C27:        A2 24         LDX #$24                  
CODE_2A8C29:        9D 08 16      STA $1608,x               
CODE_2A8C2C:        CA            DEX                       
CODE_2A8C2D:        CA            DEX                       
CODE_2A8C2E:        10 F9         BPL CODE_2A8C29           
CODE_2A8C30:        A9 EB 24      LDA #$24EB                
CODE_2A8C33:        8D 18 16      STA $1618                 
CODE_2A8C36:        A9 EC 24      LDA #$24EC                
CODE_2A8C39:        8D 1A 16      STA $161A                 
CODE_2A8C3C:        A9 ED 24      LDA #$24ED                
CODE_2A8C3F:        8D 1C 16      STA $161C                 
CODE_2A8C42:        A9 E4 24      LDA #$24E4                
CODE_2A8C45:        8D 2E 16      STA $162E                 
CODE_2A8C48:        A9 FF FF      LDA #$FFFF                
CODE_2A8C4B:        8D 30 16      STA $1630                 
CODE_2A8C4E:        E2 20         SEP #$20                  
CODE_2A8C50:        20 9A 8C      JSR CODE_2A8C9A           
CODE_2A8C53:        C2 20         REP #$20                  
CODE_2A8C55:        A9 7E 10      LDA #$107E                
CODE_2A8C58:        EB            XBA                       
CODE_2A8C59:        8D 02 16      STA $1602                 
CODE_2A8C5C:        A9 DA 24      LDA #$24DA                
CODE_2A8C5F:        8D 06 16      STA $1606                 
CODE_2A8C62:        A9 E3 24      LDA #$24E3                
CODE_2A8C65:        A2 24         LDX #$24                  
CODE_2A8C67:        9D 08 16      STA $1608,x               
CODE_2A8C6A:        CA            DEX                       
CODE_2A8C6B:        CA            DEX                       
CODE_2A8C6C:        10 F9         BPL CODE_2A8C67           
CODE_2A8C6E:        A9 EE 24      LDA #$24EE                
CODE_2A8C71:        8D 18 16      STA $1618                 
CODE_2A8C74:        A9 F0 24      LDA #$24F0                
CODE_2A8C77:        8D 1A 16      STA $161A                 
CODE_2A8C7A:        A9 F1 24      LDA #$24F1                
CODE_2A8C7D:        8D 1C 16      STA $161C                 
CODE_2A8C80:        A9 E6 24      LDA #$24E6                
CODE_2A8C83:        8D 2E 16      STA $162E                 
CODE_2A8C86:        E2 20         SEP #$20                  
CODE_2A8C88:        20 9A 8C      JSR CODE_2A8C9A           
CODE_2A8C8B:        9C 00 16      STZ $1600                 
CODE_2A8C8E:        9C 01 16      STZ $1601                 
CODE_2A8C91:        A9 FF         LDA #$FF                  
CODE_2A8C93:        8D 02 16      STA $1602                 
CODE_2A8C96:        8D 03 16      STA $1603                 
CODE_2A8C99:        6B            RTL                       

CODE_2A8C9A:        C2 20         REP #$20                  
CODE_2A8C9C:        A9 02 16      LDA #$1602                
CODE_2A8C9F:        85 36         STA $36                   
CODE_2A8CA1:        A2 00         LDX #$00                  
CODE_2A8CA3:        86 38         STX $38                   
CODE_2A8CA5:        E2 20         SEP #$20                  
CODE_2A8CA7:        22 AB E8 29   JSL CODE_29E8AB           
CODE_2A8CAB:        60            RTS                       

CODE_2A8CAC:        8B            PHB                       
CODE_2A8CAD:        A9 7F         LDA #$7F                  
CODE_2A8CAF:        48            PHA                       
CODE_2A8CB0:        AB            PLB                       ;
CODE_2A8CB1:        C2 30         REP #$30                  
CODE_2A8CB3:        A2 AE 01      LDX #$01AE                
CODE_2A8CB6:        9E 00 00      STZ $0000,x               
CODE_2A8CB9:        9E B0 01      STZ $01B0,x               
CODE_2A8CBC:        9E 60 03      STZ $0360,x               
CODE_2A8CBF:        9E 10 05      STZ $0510,x               
CODE_2A8CC2:        9E C0 06      STZ $06C0,x               
CODE_2A8CC5:        9E 70 08      STZ $0870,x               
CODE_2A8CC8:        9E 20 0A      STZ $0A20,x               
CODE_2A8CCB:        9E D0 0B      STZ $0BD0,x               
CODE_2A8CCE:        9E 80 0D      STZ $0D80,x               
CODE_2A8CD1:        CA            DEX                       
CODE_2A8CD2:        CA            DEX                       
CODE_2A8CD3:        10 E1         BPL CODE_2A8CB6           
CODE_2A8CD5:        E2 30         SEP #$30                  
CODE_2A8CD7:        AB            PLB                       ;
CODE_2A8CD8:        60            RTS                       

CODE_2A8CD9:        9F 00 00 7F   STA $7F0000,x             
CODE_2A8CDD:        9F 60 03 7F   STA $7F0360,x             
CODE_2A8CE1:        9F C0 06 7F   STA $7F06C0,x             
CODE_2A8CE5:        9F 20 0A 7F   STA $7F0A20,x             
CODE_2A8CE9:        9F 80 0D 7F   STA $7F0D80,x             
CODE_2A8CED:        60            RTS                       

CODE_2A8CEE:        9F 10 00 7F   STA $7F0010,x             
CODE_2A8CF2:        9F 70 03 7F   STA $7F0370,x             
CODE_2A8CF6:        9F D0 06 7F   STA $7F06D0,x             
CODE_2A8CFA:        9F 30 0A 7F   STA $7F0A30,x             
CODE_2A8CFE:        9F 90 0D 7F   STA $7F0D90,x             
CODE_2A8D02:        60            RTS                       

CODE_2A8D03:        8B            PHB                       
CODE_2A8D04:        A0 7F         LDY #$7F                  
CODE_2A8D06:        5A            PHY                       
CODE_2A8D07:        AB            PLB                       ;
CODE_2A8D08:        9D 00 00      STA $0000,x               
CODE_2A8D0B:        9D B0 01      STA $01B0,x               
CODE_2A8D0E:        9D 60 03      STA $0360,x               
CODE_2A8D11:        9D 10 05      STA $0510,x               
CODE_2A8D14:        9D C0 06      STA $06C0,x               
CODE_2A8D17:        9D 70 08      STA $0870,x               
CODE_2A8D1A:        9D 20 0A      STA $0A20,x               
CODE_2A8D1D:        9D D0 0B      STA $0BD0,x               
CODE_2A8D20:        9D 80 0D      STA $0D80,x               
CODE_2A8D23:        AB            PLB                       ;
CODE_2A8D24:        60            RTS                       

CODE_2A8D25:        8B            PHB                       
CODE_2A8D26:        A0 7F         LDY #$7F                  
CODE_2A8D28:        5A            PHY                       
CODE_2A8D29:        AB            PLB                       ;
CODE_2A8D2A:        9D 00 01      STA $0100,x               
CODE_2A8D2D:        9D B0 02      STA $02B0,x               
CODE_2A8D30:        9D 60 04      STA $0460,x               
CODE_2A8D33:        9D 10 06      STA $0610,x               
CODE_2A8D36:        9D C0 07      STA $07C0,x               
CODE_2A8D39:        9D 70 09      STA $0970,x               
CODE_2A8D3C:        9D 20 0B      STA $0B20,x               
CODE_2A8D3F:        9D D0 0C      STA $0CD0,x               
CODE_2A8D42:        9D 80 0E      STA $0E80,x               
CODE_2A8D45:        AB            PLB                       ;
CODE_2A8D46:        60            RTS                       

PNTR_2A8D47:        dl DATA_2ADC80
                    dl DATA_2ADCE6
                    dl DATA_2ADCFB
                    dl DATA_2ADD3A
                    dl DATA_2ADD43
                    dl DATA_2ADD59
                    dl DATA_2ADD89
                    dl DATA_2ADD9E
                    dl DATA_2ADDB9
                    dl DATA_2ADE3C
                    dl DATA_2ADE70
                    dl DATA_2ADECF
                    dl DATA_2ADEDE
                    dl DATA_2ADEFF
                    dl DATA_2ADF36
                    dl DATA_2ADF96
                    dl DATA_2AE059
                    dl DATA_2AE07D
                    dl DATA_2AE080
                    dl DATA_2AE083
                    dl DATA_2ADE70
                    dl DATA_2AE086
                    dl DATA_2AE092
                    dl DATA_2ADF36
                    dl DATA_2ADEFF
                    dl DATA_2ADD43
                    dl DATA_2AE0A4
                    dl DATA_2AE0C7
                    dl DATA_2AE13C
                    dl DATA_2AE086
                    dl DATA_2AE1D8
                    dl DATA_2AE23E
                    dl DATA_2ADCB0
                    dl DATA_2AE241
                    dl DATA_2ADCE6
                    dl DATA_2ADCFB
                    dl DATA_2ADCD4
                  
CODE_2A8DB6:        8B            PHB                       ;Is this the level loading routine?
CODE_2A8DB7:        4B            PHK                       ;
CODE_2A8DB8:        AB            PLB                       ;
CODE_2A8DB9:        AD 50 03      LDA $0350                 
CODE_2A8DBC:        C9 17         CMP #$17                  
CODE_2A8DBE:        F0 00         BEQ CODE_2A8DC0           
CODE_2A8DC0:        20 AC 8C      JSR CODE_2A8CAC           
CODE_2A8DC3:        9C 93 02      STZ $0293                 
CODE_2A8DC6:        9C 0C 42      STZ $420C                 
CODE_2A8DC9:        AD 50 03      LDA $0350                 
CODE_2A8DCC:        0A            ASL A                     
CODE_2A8DCD:        18            CLC                       
CODE_2A8DCE:        6D 50 03      ADC $0350                 
CODE_2A8DD1:        AA            TAX                       
CODE_2A8DD2:        BD 46 8D      LDA.w PNTR_2A8D47-1,x               
CODE_2A8DD5:        85 2D         STA $2D                   
CODE_2A8DD7:        C2 20         REP #$20                  
CODE_2A8DD9:        BD 44 8D      LDA.w PNTR_2A8D47-3,x               
CODE_2A8DDC:        85 2B         STA $2B                   
CODE_2A8DDE:        E2 20         SEP #$20                  
CODE_2A8DE0:        A0 00         LDY #$00                  
CODE_2A8DE2:        B7 2B         LDA [$2B],y               
CODE_2A8DE4:        8D C5 02      STA $02C5                 
CODE_2A8DE7:        C8            INY                       
CODE_2A8DE8:        B7 2B         LDA [$2B],y               
CODE_2A8DEA:        8D 4F 03      STA $034F                 
CODE_2A8DED:        C2 30         REP #$30                  
CODE_2A8DEF:        A5 2B         LDA $2B                   
CODE_2A8DF1:        18            CLC                       
CODE_2A8DF2:        69 02 00      ADC #$0002                
CODE_2A8DF5:        85 2B         STA $2B                   
CODE_2A8DF7:        AD 50 03      LDA $0350                 
CODE_2A8DFA:        29 FF 00      AND #$00FF                
CODE_2A8DFD:        0A            ASL A                     
CODE_2A8DFE:        AA            TAX                       
CODE_2A8DFF:        E2 20         SEP #$20                  
CODE_2A8E01:        7C 08 8E      JMP (PNTR_2A8E08,x)             

CODE_2A8E04:        E2 10         SEP #$10                  
CODE_2A8E06:        AB            PLB                       ;
CODE_2A8E07:        6B            RTL                       

PNTR_2A8E08:        dw CODE_2A8E04
                    dw CODE_2A8EBA
                    dw CODE_2A9144
                    dw CODE_2A9342
                    dw CODE_2A948E
                    dw CODE_2A95FA
                    dw CODE_2A98B5
                    dw CODE_2A9AB4
                    dw CODE_2A9BC5
                    dw CODE_2A9C9D
                    dw CODE_2A9F2D
                    dw CODE_2AA0A7
                    dw CODE_2AA181
                    dw CODE_2AA339
                    dw CODE_2AA44A
                    dw CODE_2AA69A
                    dw CODE_2AA948
                    dw CODE_2AAA8F
                    dw CODE_2A8E04
                    dw CODE_2AAC05
                    dw CODE_2AAC05
                    dw CODE_2AA0A7
                    dw CODE_2AACA9
                    dw CODE_2AAE8C
                    dw CODE_2AA69A
                    dw CODE_2AA44A
                    dw CODE_2A95FA
                    dw CODE_2AAF58
                    dw CODE_2AB13F
                    dw CODE_2AA69A
                    dw CODE_2AACA9
                    dw CODE_2AB2B3
                    dw CODE_2AB3A1
                    dw CODE_2A8EBA
                    dw CODE_2AB3FE
                    dw CODE_2A9144
                    dw CODE_2A9342
                    dw CODE_2A8EBA

CODE_2A8E54:        48            PHA
CODE_2A8E55:        2A            ROL A
CODE_2A8E56:        2A            ROL A                     
CODE_2A8E57:        2A            ROL A                     
CODE_2A8E58:        2A            ROL A                     
CODE_2A8E59:        29 07         AND #$07                  
CODE_2A8E5B:        85 04         STA $04                   
CODE_2A8E5D:        68            PLA                       
CODE_2A8E5E:        29 1F         AND #$1F                  
CODE_2A8E60:        EB            XBA                       
CODE_2A8E61:        C8            INY                       
CODE_2A8E62:        B7 2B         LDA [$2B],y               
CODE_2A8E64:        C2 20         REP #$20                  
CODE_2A8E66:        4A            LSR A                     
CODE_2A8E67:        4A            LSR A                     
CODE_2A8E68:        4A            LSR A                     
CODE_2A8E69:        4A            LSR A                     
CODE_2A8E6A:        85 00         STA $00                   
CODE_2A8E6C:        E2 20         SEP #$20                  
CODE_2A8E6E:        B7 2B         LDA [$2B],y               
CODE_2A8E70:        29 0F         AND #$0F                  
CODE_2A8E72:        F0 14         BEQ CODE_2A8E88           
CODE_2A8E74:        85 02         STA $02                   
CODE_2A8E76:        64 03         STZ $03                   
CODE_2A8E78:        C2 20         REP #$20                  
CODE_2A8E7A:        A5 00         LDA $00                   
CODE_2A8E7C:        18            CLC                       
CODE_2A8E7D:        69 B0 01      ADC #$01B0                
CODE_2A8E80:        85 00         STA $00                   
CODE_2A8E82:        C6 02         DEC $02                   
CODE_2A8E84:        D0 F4         BNE CODE_2A8E7A           
CODE_2A8E86:        E2 20         SEP #$20                  
CODE_2A8E88:        C8            INY                       
CODE_2A8E89:        B7 2B         LDA [$2B],y               
CODE_2A8E8B:        29 0F         AND #$0F                  
CODE_2A8E8D:        85 D8         STA $D8                   
CODE_2A8E8F:        64 D9         STZ $D9                   
CODE_2A8E91:        B7 2B         LDA [$2B],y               
CODE_2A8E93:        29 F0         AND #$F0                  
CODE_2A8E95:        4A            LSR A                     
CODE_2A8E96:        4A            LSR A                     
CODE_2A8E97:        4A            LSR A                     
CODE_2A8E98:        AA            TAX                       
CODE_2A8E99:        64 DA         STZ $DA                   
CODE_2A8E9B:        64 DB         STZ $DB                   
CODE_2A8E9D:        A5 04         LDA $04                   
CODE_2A8E9F:        F0 05         BEQ CODE_2A8EA6           
CODE_2A8EA1:        C8            INY                       
CODE_2A8EA2:        B7 2B         LDA [$2B],y               
CODE_2A8EA4:        85 DA         STA $DA                   
CODE_2A8EA6:        C2 20         REP #$20                  
CODE_2A8EA8:        A5 04         LDA $04                   
CODE_2A8EAA:        29 FF 00      AND #$00FF                
CODE_2A8EAD:        F0 02         BEQ CODE_2A8EB1           
CODE_2A8EAF:        E6 2B         INC $2B                   
CODE_2A8EB1:        E6 2B         INC $2B                   
CODE_2A8EB3:        E6 2B         INC $2B                   
CODE_2A8EB5:        E6 2B         INC $2B                   
CODE_2A8EB7:        E2 20         SEP #$20                  
CODE_2A8EB9:        60            RTS                       

CODE_2A8EBA:        E2 10         SEP #$10                  
CODE_2A8EBC:        A0 00         LDY #$00                  
CODE_2A8EBE:        A2 70         LDX #$70                  
CODE_2A8EC0:        A9 15         LDA #$15                  
CODE_2A8EC2:        20 25 8D      JSR CODE_2A8D25           
CODE_2A8EC5:        E8            INX                       
CODE_2A8EC6:        8A            TXA                       
CODE_2A8EC7:        29 0F         AND #$0F                  
CODE_2A8EC9:        D0 F5         BNE CODE_2A8EC0           
CODE_2A8ECB:        A9 15         LDA #$15                  
CODE_2A8ECD:        20 25 8D      JSR CODE_2A8D25           
CODE_2A8ED0:        E8            INX                       
CODE_2A8ED1:        8A            TXA                       
CODE_2A8ED2:        29 0F         AND #$0F                  
CODE_2A8ED4:        D0 F5         BNE CODE_2A8ECB           
CODE_2A8ED6:        C2 10         REP #$10                  
CODE_2A8ED8:        A2 70 01      LDX #$0170                
CODE_2A8EDB:        A9 20         LDA #$20                  
CODE_2A8EDD:        20 D9 8C      JSR CODE_2A8CD9           
CODE_2A8EE0:        E8            INX                       
CODE_2A8EE1:        A9 23         LDA #$23                  
CODE_2A8EE3:        20 D9 8C      JSR CODE_2A8CD9           
CODE_2A8EE6:        E8            INX                       
CODE_2A8EE7:        20 D9 8C      JSR CODE_2A8CD9           
CODE_2A8EEA:        E8            INX                       
CODE_2A8EEB:        20 D9 8C      JSR CODE_2A8CD9           
CODE_2A8EEE:        E8            INX                       
CODE_2A8EEF:        20 D9 8C      JSR CODE_2A8CD9           
CODE_2A8EF2:        E8            INX                       
CODE_2A8EF3:        A9 21         LDA #$21                  
CODE_2A8EF5:        20 D9 8C      JSR CODE_2A8CD9           
CODE_2A8EF8:        E8            INX                       
CODE_2A8EF9:        A9 0F         LDA #$0F                  
CODE_2A8EFB:        20 D9 8C      JSR CODE_2A8CD9           
CODE_2A8EFE:        A2 24 03      LDX #$0324                
CODE_2A8F01:        20 D9 8C      JSR CODE_2A8CD9           
CODE_2A8F04:        E2 10         SEP #$10                  
CODE_2A8F06:        A0 00         LDY #$00                  
CODE_2A8F08:        B7 2B         LDA [$2B],y               
CODE_2A8F0A:        C9 FF         CMP #$FF                  
CODE_2A8F0C:        F0 08         BEQ CODE_2A8F16           
CODE_2A8F0E:        20 54 8E      JSR CODE_2A8E54           
CODE_2A8F11:        FC 18 8F      JSR (PNTR_2A8F18,x)             
CODE_2A8F14:        80 F0         BRA CODE_2A8F06           

CODE_2A8F16:        AB            PLB                       
CODE_2A8F17:        6B            RTL                       

PNTR_2A8F18:        dw CODE_2A8F1E
                    dw CODE_2A8F58
                    dw CODE_2A8F78

CODE_2A8F1E:        C2 10         REP #$10
CODE_2A8F20:        A6 00         LDX $00
CODE_2A8F22:        A9 11         LDA #$11                  
CODE_2A8F24:        20 D9 8C      JSR CODE_2A8CD9
CODE_2A8F27:        A9 16         LDA #$16
CODE_2A8F29:        20 EE 8C      JSR CODE_2A8CEE
CODE_2A8F2C:        A5 D8         LDA $D8
CODE_2A8F2E:        F0 1A         BEQ CODE_2A8F4A           
CODE_2A8F30:        E8            INX                       
CODE_2A8F31:        A9 19         LDA #$19                  
CODE_2A8F33:        20 D9 8C      JSR CODE_2A8CD9           
CODE_2A8F36:        A9 1C         LDA #$1C                  
CODE_2A8F38:        20 EE 8C      JSR CODE_2A8CEE           
CODE_2A8F3B:        E8            INX                       
CODE_2A8F3C:        A9 1A         LDA #$1A                  
CODE_2A8F3E:        20 D9 8C      JSR CODE_2A8CD9           
CODE_2A8F41:        A9 1D         LDA #$1D                  
CODE_2A8F43:        20 EE 8C      JSR CODE_2A8CEE           
CODE_2A8F46:        C6 D8         DEC $D8                   
CODE_2A8F48:        D0 E6         BNE CODE_2A8F30           
CODE_2A8F4A:        E8            INX                       
CODE_2A8F4B:        A9 12         LDA #$12                  
CODE_2A8F4D:        20 D9 8C      JSR CODE_2A8CD9           
CODE_2A8F50:        A9 17         LDA #$17                  
CODE_2A8F52:        20 EE 8C      JSR CODE_2A8CEE           
CODE_2A8F55:        E2 10         SEP #$10                  
CODE_2A8F57:        60            RTS                       

CODE_2A8F58:        C2 10         REP #$10                  
CODE_2A8F5A:        A6 00         LDX $00                   
CODE_2A8F5C:        A9 25         LDA #$25                  
CODE_2A8F5E:        20 D9 8C      JSR CODE_2A8CD9           
CODE_2A8F61:        A5 D8         LDA $D8                   
CODE_2A8F63:        F0 0A         BEQ CODE_2A8F6F           
CODE_2A8F65:        E8            INX                       
CODE_2A8F66:        A9 26         LDA #$26                  
CODE_2A8F68:        20 D9 8C      JSR CODE_2A8CD9           
CODE_2A8F6B:        C6 D8         DEC $D8                   
CODE_2A8F6D:        D0 F6         BNE CODE_2A8F65           
CODE_2A8F6F:        E8            INX                       
CODE_2A8F70:        A9 27         LDA #$27                  
CODE_2A8F72:        20 D9 8C      JSR CODE_2A8CD9           
CODE_2A8F75:        E2 10         SEP #$10                  
CODE_2A8F77:        60            RTS                       

CODE_2A8F78:        A9 2A         LDA #$2A                  
CODE_2A8F7A:        85 08         STA $08                   
CODE_2A8F7C:        85 0B         STA $0B                   
CODE_2A8F7E:        85 0E         STA $0E                   
CODE_2A8F80:        C2 30         REP #$30                  
CODE_2A8F82:        A6 D8         LDX $D8                   
CODE_2A8F84:        BD F3 8F      LDA.w PNTR_2A8FF3,x               
CODE_2A8F87:        85 06         STA $06                   
CODE_2A8F89:        BD 01 90      LDA.w PNTR_2A9001,x               
CODE_2A8F8C:        85 09         STA $09                   
CODE_2A8F8E:        BD 0F 90      LDA.w PNTR_2A900F,x               
CODE_2A8F91:        85 0C         STA $0C                   
CODE_2A8F93:        E2 20         SEP #$20                  
CODE_2A8F95:        BD E5 8F      LDA.w DATA_2A8FE5,x               
CODE_2A8F98:        85 0F         STA $0F                   
CODE_2A8F9A:        A6 00         LDX $00                   
CODE_2A8F9C:        A0 00 00      LDY #$0000                
CODE_2A8F9F:        A7 0C         LDA [$0C]                 
CODE_2A8FA1:        85 02         STA $02                   
CODE_2A8FA3:        64 04         STZ $04                   
CODE_2A8FA5:        64 05         STZ $05                   
CODE_2A8FA7:        B7 06         LDA [$06],y               
CODE_2A8FA9:        20 D9 8C      JSR CODE_2A8CD9           
CODE_2A8FAC:        C8            INY                       
CODE_2A8FAD:        E8            INX                       
CODE_2A8FAE:        8A            TXA                       
CODE_2A8FAF:        29 0F         AND #$0F                  
CODE_2A8FB1:        D0 0A         BNE CODE_2A8FBD           
CODE_2A8FB3:        C2 20         REP #$20                  
CODE_2A8FB5:        8A            TXA                       
CODE_2A8FB6:        18            CLC                       
CODE_2A8FB7:        69 A0 01      ADC #$01A0                
CODE_2A8FBA:        AA            TAX                       
CODE_2A8FBB:        E2 20         SEP #$20                  
CODE_2A8FBD:        C6 02         DEC $02                   
CODE_2A8FBF:        D0 E6         BNE CODE_2A8FA7           
CODE_2A8FC1:        C6 0F         DEC $0F                   
CODE_2A8FC3:        F0 1D         BEQ CODE_2A8FE2           
CODE_2A8FC5:        5A            PHY                       
CODE_2A8FC6:        C2 20         REP #$20                  
CODE_2A8FC8:        A5 04         LDA $04                   
CODE_2A8FCA:        0A            ASL A                     
CODE_2A8FCB:        A8            TAY                       
CODE_2A8FCC:        A5 00         LDA $00                   
CODE_2A8FCE:        18            CLC                       
CODE_2A8FCF:        77 09         ADC [$09],y               
CODE_2A8FD1:        85 00         STA $00                   
CODE_2A8FD3:        E2 20         SEP #$20                  
CODE_2A8FD5:        E6 04         INC $04                   
CODE_2A8FD7:        A4 04         LDY $04                   
CODE_2A8FD9:        B7 0C         LDA [$0C],y               
CODE_2A8FDB:        85 02         STA $02                   
CODE_2A8FDD:        A6 00         LDX $00                   
CODE_2A8FDF:        7A            PLY                       
CODE_2A8FE0:        80 C5         BRA CODE_2A8FA7           

CODE_2A8FE2:        E2 10         SEP #$10                  
CODE_2A8FE4:        60            RTS                       

DATA_2A8FE5:        dw $0005,$0004,$0002,$0002
                    dw $0005,$0005,$0006

PNTR_2A8FF3:        dw $901D,$9047,$9064,$906A
                    dw $9072,$909D,$90CB

PNTR_2A9001:        dw $90FB,$9103,$9109,$910B
                    dw $910D,$9115,$911D

PNTR_2A900F:        dw $9127,$912C,$9130,$9132
                    dw $9134,$9139,$913E
        
DATA_2A901D:        db $0E,$0F,$0F,$10,$13,$14,$15,$15
                    db $0F,$10,$0E,$15,$15,$15,$15,$15
                    db $14,$10,$0E,$20,$21,$15,$15,$15
                    db $15,$15,$15,$15,$1B,$0E,$15,$15
                    db $15,$15,$15,$15,$15,$15,$15,$15
                    db $15,$10

DATA_2A9047:        db $0E,$0F,$10,$0E,$15,$15,$18,$22
                    db $23,$23,$23,$23,$21,$15,$15,$15
                    db $14,$10,$13,$15,$15,$15,$15,$15
                    db $15,$15,$15,$15,$18

DATA_2A9064:        db $01,$02,$03,$0D,$07,$0A

DATA_2A906A:        db $01,$02,$02,$03,$0D,$07,$06,$0A

DATA_2A9072:        db $00,$00,$01,$03,$01,$02,$04,$04
                    db $03,$01,$28,$28,$03,$01,$02,$02
                    db $04,$04,$04,$09,$07,$06,$07,$06
                    db $08,$03,$0D,$07,$08,$09,$07,$06
                    db $06,$0B,$00,$00,$0C,$07,$0A,$0C
                    db $07,$06,$0B

DATA_2A909D:        db $01,$02,$03,$01,$02,$04,$04
                    db $04,$02,$28,$03,$03,$00,$01,$04
                    db $04,$04,$04,$04,$04,$04,$04,$02
                    db $03,$04,$05,$06,$07,$07,$06,$08
                    db $09,$07,$07,$06,$07,$0A,$06,$06
                    db $0B,$00,$00,$0C,$07,$06,$0B

DATA_2A90CB:        db $01
                    db $02,$28,$02,$03,$01,$02,$04,$04
                    db $04,$04,$04,$02,$01,$02,$02,$04
                    db $04,$04,$04,$04,$04,$04,$04,$01
                    db $04,$04,$04,$04,$04,$04,$04,$07
                    db $07,$06,$07,$0D,$06,$07,$24,$07
                    db $06,$07,$06,$0B,$0C,$06,$0B

DATA_2A90FB:        db $10
                    db $00,$0F,$00,$0D,$00,$0F,$00

DATA_2A9103:        db $0F
                    db $00,$0A,$00,$10,$00

DATA_2A9109:        db $10,$00

DATA_2A910B:        db $10,$00

DATA_2A910D:        db $10,$00,$0D,$00,$10,$00,$11
                    db $00

DATA_2A9115:        db $0E,$00,$0D,$00,$10,$00,$10
                    db $00

DATA_2A911D:        db $0E,$00,$0D,$00,$0F,$00,$10
                    db $00,$12,$00

DATA_2A9127:        db $04,$06,$08,$0B,$0D

DATA_2A912C:        db $03,$04,$0B,$0B

DATA_2A9130:        db $03,$03

DATA_2A9132:        db $04,$04

DATA_2A9134:        db $04,$09,$0D,$0D,$04

DATA_2A9139:        db $03,$08,$0D,$0D,$09

DATA_2A913E:        db $05,$08,$0B,$0C,$09,$03

CODE_2A9144:        E2 10         SEP #$10                  
CODE_2A9146:        9C D9 02      STZ $02D9                 
CODE_2A9149:        AD 50 03      LDA $0350                 
CODE_2A914C:        C9 23         CMP #$23                  
CODE_2A914E:        D0 05         BNE CODE_2A9155           
CODE_2A9150:        A9 01         LDA #$01                  
CODE_2A9152:        8D D9 02      STA $02D9                 
CODE_2A9155:        A2 A0         LDX #$A0                  
CODE_2A9157:        A9 40         LDA #$40                  
CODE_2A9159:        85 00         STA $00                   
CODE_2A915B:        A9 06         LDA #$06                  
CODE_2A915D:        20 03 8D      JSR CODE_2A8D03           
CODE_2A9160:        E8            INX                       
CODE_2A9161:        C6 00         DEC $00                   
CODE_2A9163:        D0 F8         BNE CODE_2A915D           
CODE_2A9165:        A9 0C         LDA #$0C                  
CODE_2A9167:        85 02         STA $02                   
CODE_2A9169:        A9 0D         LDA #$0D                  
CODE_2A916B:        85 03         STA $03                   
CODE_2A916D:        A9 02         LDA #$02                  
CODE_2A916F:        85 01         STA $01                   
CODE_2A9171:        A9 08         LDA #$08                  
CODE_2A9173:        85 00         STA $00                   
CODE_2A9175:        A5 02         LDA $02                   
CODE_2A9177:        20 03 8D      JSR CODE_2A8D03           
CODE_2A917A:        E8            INX                       
CODE_2A917B:        A5 03         LDA $03                   
CODE_2A917D:        20 03 8D      JSR CODE_2A8D03           
CODE_2A9180:        E8            INX                       
CODE_2A9181:        C6 00         DEC $00                   
CODE_2A9183:        D0 F0         BNE CODE_2A9175           
CODE_2A9185:        E6 02         INC $02                   
CODE_2A9187:        E6 02         INC $02                   
CODE_2A9189:        E6 03         INC $03                   
CODE_2A918B:        E6 03         INC $03                   
CODE_2A918D:        C6 01         DEC $01                   
CODE_2A918F:        D0 E0         BNE CODE_2A9171           
CODE_2A9191:        A9 04         LDA #$04                  
CODE_2A9193:        85 01         STA $01                   
CODE_2A9195:        A9 08         LDA #$08                  
CODE_2A9197:        85 00         STA $00                   
CODE_2A9199:        A9 10         LDA #$10                  
CODE_2A919B:        20 25 8D      JSR CODE_2A8D25           
CODE_2A919E:        E8            INX                       
CODE_2A919F:        A9 10         LDA #$10                  
CODE_2A91A1:        20 25 8D      JSR CODE_2A8D25           
CODE_2A91A4:        E8            INX                       
CODE_2A91A5:        C6 00         DEC $00                   
CODE_2A91A7:        D0 F0         BNE CODE_2A9199           
CODE_2A91A9:        C6 01         DEC $01                   
CODE_2A91AB:        D0 E8         BNE CODE_2A9195           
CODE_2A91AD:        A0 00         LDY #$00                  
CODE_2A91AF:        B7 2B         LDA [$2B],y               
CODE_2A91B1:        C9 FF         CMP #$FF                  
CODE_2A91B3:        F0 08         BEQ CODE_2A91BD           
CODE_2A91B5:        20 54 8E      JSR CODE_2A8E54           
CODE_2A91B8:        FC BF 91      JSR (PNTR_2A91BF,x)             
CODE_2A91BB:        80 F0         BRA CODE_2A91AD           

CODE_2A91BD:        AB            PLB                       
CODE_2A91BE:        6B            RTL                       

PNTR_2A91BF:        dw CODE_2A91C3
                    dw CODE_2A9221

CODE_2A91C3:        AD 50 03      LDA $0350                 
CODE_2A91C6:        C9 23         CMP #$23                  
CODE_2A91C8:        F0 4C         BEQ CODE_2A9216           
CODE_2A91CA:        C2 10         REP #$10                  
CODE_2A91CC:        A6 00         LDX $00                   
CODE_2A91CE:        A9 08         LDA #$08                  
CODE_2A91D0:        85 02         STA $02                   
CODE_2A91D2:        64 03         STZ $03                   
CODE_2A91D4:        A9 11         LDA #$11                  
CODE_2A91D6:        85 04         STA $04                   
CODE_2A91D8:        A4 D8         LDY $D8                   
CODE_2A91DA:        A5 04         LDA $04                   
CODE_2A91DC:        20 D9 8C      JSR CODE_2A8CD9           
CODE_2A91DF:        E6 04         INC $04                   
CODE_2A91E1:        E8            INX                       
CODE_2A91E2:        8A            TXA                       
CODE_2A91E3:        29 0F         AND #$0F                  
CODE_2A91E5:        D0 0A         BNE CODE_2A91F1           
CODE_2A91E7:        C2 20         REP #$20                  
CODE_2A91E9:        8A            TXA                       
CODE_2A91EA:        18            CLC                       
CODE_2A91EB:        69 A0 01      ADC #$01A0                
CODE_2A91EE:        AA            TAX                       
CODE_2A91EF:        E2 20         SEP #$20                  
CODE_2A91F1:        88            DEY                       
CODE_2A91F2:        D0 E6         BNE CODE_2A91DA           
CODE_2A91F4:        A4 02         LDY $02                   
CODE_2A91F6:        C2 20         REP #$20                  
CODE_2A91F8:        A5 00         LDA $00                   
CODE_2A91FA:        18            CLC                       
CODE_2A91FB:        79 17 92      ADC DATA_2A9217,y               
CODE_2A91FE:        85 00         STA $00                   
CODE_2A9200:        AA            TAX                       
CODE_2A9201:        E2 20         SEP #$20                  
CODE_2A9203:        C6 02         DEC $02                   
CODE_2A9205:        C6 02         DEC $02                   
CODE_2A9207:        10 CF         BPL CODE_2A91D8           
CODE_2A9209:        A9 17         LDA #$17                  
CODE_2A920B:        20 D9 8C      JSR CODE_2A8CD9           
CODE_2A920E:        A9 18         LDA #$18                  
CODE_2A9210:        E8            INX                       
CODE_2A9211:        20 D9 8C      JSR CODE_2A8CD9           
CODE_2A9214:        E2 10         SEP #$10                  
CODE_2A9216:        60            RTS                       

DATA_2A9217:        dw $0010,$000F,$0010,$0010
                    dw $0010
           
CODE_2A9221:        A9 2A         LDA #$2A                  
CODE_2A9223:        85 08         STA $08                   
CODE_2A9225:        85 0B         STA $0B                   
CODE_2A9227:        85 0E         STA $0E                   
CODE_2A9229:        C2 30         REP #$30                  
CODE_2A922B:        A6 D8         LDX $D8                   
CODE_2A922D:        BD 5C 92      LDA.w PNTR_2A925C,x               
CODE_2A9230:        85 06         STA $06                   
CODE_2A9232:        BD 66 92      LDA.w PNTR_2A9266,x               
CODE_2A9235:        85 09         STA $09                   
CODE_2A9237:        BD 70 92      LDA.w PNTR_2A9270,x               
CODE_2A923A:        85 0C         STA $0C                   
CODE_2A923C:        64 04         STZ $04                   
CODE_2A923E:        E2 20         SEP #$20                  
CODE_2A9240:        BD 52 92      LDA.w DATA_2A9252,x               
CODE_2A9243:        85 0F         STA $0F                   
CODE_2A9245:        A6 00         LDX $00                   
CODE_2A9247:        A0 00 00      LDY #$0000                
CODE_2A924A:        A7 0C         LDA [$0C]                 
CODE_2A924C:        85 02         STA $02                   
CODE_2A924E:        20 A7 8F      JSR CODE_2A8FA7           
CODE_2A9251:        60            RTS                       

DATA_2A9252:        db $05,$00,$06,$00,$05,$00,$06,$00
                    db $04,$00

PNTR_2A925C:        dw DATA_2A927A
                    dw DATA_2A929A
                    dw DATA_2A92B9
                    dw DATA_2A92DC
                    dw DATA_2A92EB
     
PNTR_2A9266:        dw DATA_2A92FE
                    dw DATA_2A9306
                    dw DATA_2A9310
                    dw DATA_2A9318
                    dw DATA_2A9322
     
PNTR_2A9270:        dw DATA_2A9328
                    dw DATA_2A932D
                    dw DATA_2A9333
                    dw DATA_2A9338
                    dw DATA_2A933E

DATA_2A927A:        db $01,$02,$01,$03,$04,$05,$03,$02
                    db $01,$04,$06,$06,$06,$06,$07,$02
                    db $08,$09,$06,$07,$09,$07,$04,$05
                    db $06,$05,$08,$04,$05,$04,$06,$06

DATA_2A929A:        db $03,$03,$02,$06,$06,$05,$02,$01
                    db $02,$07,$08,$09,$07,$04,$05,$02
                    db $00,$07,$08,$04,$06,$05,$04,$06
                    db $06,$05,$03,$07,$04,$05,$04

DATA_2A92B9:        db $01,$03,$02,$01,$02,$00,$01,$04       
                    db $06,$05,$03,$02,$01,$0A,$05,$03
                    db $04,$06,$06,$06,$06,$06,$09,$06
                    db $0B,$06,$06,$06,$06,$06,$06,$06
                    db $05,$08,$04

DATA_2A92DC:        db $01,$02,$01,$03,$04,$05,$01,$03
                    db $04,$09,$05,$08,$09,$05,$04

DATA_2A92EB:        db $07,$09,$07,$08,$09,$06,$07,$08
                    db $04,$05,$04,$07,$04,$06,$05,$08
                    db $04,$05,$04

DATA_2A92FE:        db $0E,$00,$0F,$00,$10,$00,$10,$00

DATA_2A9306:        db $10,$00,$10,$00,$0E,$00,$0F,$00
                    db $0F,$00

DATA_2A9310:        db $0C,$00,$0F,$00,$10,$00,$10,$00

DATA_2A9318:        db $0E,$00,$0E,$00,$10,$00,$10,$00
                    db $12,$00

DATA_2A9322:        db $0A,$00,$0F,$00,$0F,$00

DATA_2A9328:        db $02,$06,$08,$08,$08

DATA_2A932D:        db $03,$06,$08,$0A,$02,$02

DATA_2A9333:        db $03,$09,$0A,$0A,$03

DATA_2A9338:        db $02,$04,$03,$01,$03,$02

DATA_2A933E:        db $02,$09,$06,$02

CODE_2A9342:        E2 10         SEP #$10
CODE_2A9344:        A2 00         LDX #$00
CODE_2A9346:        A9 02         LDA #$02
CODE_2A9348:        9F 00 00 7F   STA $7F0000,x
CODE_2A934C:        E8            INX
CODE_2A934D:        E0 30         CPX #$30        
CODE_2A934F:        D0 F5         BNE CODE_2A9346           
CODE_2A9351:        A9 04         LDA #$04                  
CODE_2A9353:        9F 00 00 7F   STA $7F0000,x             
CODE_2A9357:        E8            INX                       
CODE_2A9358:        A9 07         LDA #$07                  
CODE_2A935A:        9F 00 00 7F   STA $7F0000,x             
CODE_2A935E:        E8            INX                       
CODE_2A935F:        E0 40         CPX #$40     
CODE_2A9361:        D0 EE         BNE CODE_2A9351
CODE_2A9363:        A2 50         LDX #$50               
CODE_2A9365:        A9 90         LDA #$90                  
CODE_2A9367:        85 00         STA $00                   
CODE_2A9369:        A9 10         LDA #$10                  
CODE_2A936B:        9F 00 00 7F   STA $7F0000,x             
CODE_2A936F:        E8            INX                       
CODE_2A9370:        C6 00         DEC $00                   
CODE_2A9372:        D0 F7         BNE CODE_2A936B           
CODE_2A9374:        A0 00         LDY #$00                
CODE_2A9376:        B7 2B         LDA [$2B],y                       
CODE_2A9378:        C9 FF         CMP #$FF                  
CODE_2A937A:        F0 08         BEQ CODE_2A9384           
CODE_2A937C:        20 54 8E      JSR CODE_2A8E54           
CODE_2A937F:        FC 86 93      JSR (PNTR_2A9386,x)             
CODE_2A9382:        80 F0         BRA CODE_2A9374           

CODE_2A9384:        AB            PLB                       
CODE_2A9385:        6B            RTL                       

PNTR_2A9386:        dw CODE_2A9392
                    dw CODE_2A93D7
                    dw CODE_2A93FD
                    dw CODE_2A9453
                    dw CODE_2A9465
                    dw CODE_2A9480

CODE_2A9392:        C2 10         REP #$10                 
CODE_2A9394:        A6 00         LDX $00
CODE_2A9396:        A9 01         LDA #$01                  
CODE_2A9398:        9F 00 00 7F   STA $7F0000,x
CODE_2A939C:        C2 20         REP #$20
CODE_2A939E:        8A            TXA                      
CODE_2A939F:        18            CLC                       
CODE_2A93A0:        69 10 00      ADC #$0010                  
CODE_2A93A3:        AA            TAX                
CODE_2A93A4:        E2 20         SEP #$20                  
CODE_2A93A6:        BF 00 00 7F   LDA $7F0000,x             
CODE_2A93AA:        C9 07         CMP #$07                  
CODE_2A93AC:        F0 18         BEQ CODE_2A93C6           
CODE_2A93AE:        A9 03         LDA #$03                  
CODE_2A93B0:        9F 00 00 7F   STA $7F0000,x             
CODE_2A93B4:        C2 20         REP #$20                  
CODE_2A93B6:        8A            TXA                       
CODE_2A93B7:        18            CLC                       
CODE_2A93B8:        69 10 00      ADC #$0010                
CODE_2A93BB:        AA            TAX                       
CODE_2A93BC:        E2 20         SEP #$20                  
CODE_2A93BE:        C6 D8         DEC $D8                   
CODE_2A93C0:        C6 D8         DEC $D8                   
CODE_2A93C2:        10 D2         BPL CODE_2A9396           
CODE_2A93C4:        80 0E         BRA CODE_2A93D4           

CODE_2A93C6:        A9 05         LDA #$05                  
CODE_2A93C8:        9F 00 00 7F   STA $7F0000,x             
CODE_2A93CC:        A9 06         LDA #$06                  
CODE_2A93CE:        9F 01 00 7F   STA $7F0001,x             
CODE_2A93D2:        80 E0         BRA CODE_2A93B4           

CODE_2A93D4:        E2 10         SEP #$10                  
CODE_2A93D6:        60            RTS                       

CODE_2A93D7:        A0 00         LDY #$00                  
CODE_2A93D9:        A6 00         LDX $00                   
CODE_2A93DB:        BF 00 00 7F   LDA $7F0000,x             
CODE_2A93DF:        D0 08         BNE CODE_2A93E9           
CODE_2A93E1:        B9 EF 93      LDA.w DATA_2A93EF,y               
CODE_2A93E4:        9F 00 00 7F   STA $7F0000,x             
CODE_2A93E8:        C8            INY                       
CODE_2A93E9:        E8            INX                       
CODE_2A93EA:        C6 D8         DEC $D8                   
CODE_2A93EC:        10 ED         BPL CODE_2A93DB           
CODE_2A93EE:        60            RTS                       

DATA_2A93EF:        db $08,$09,$0A,$0A,$0A,$0B,$0C,$08
                    db $08,$08,$0D,$0E,$0F,$08     
              
CODE_2A93FD:        A0 00         LDY #$00                  
CODE_2A93FF:        A6 00         LDX $00                   
CODE_2A9401:        AD BF 1E      LDA $1EBF                 
CODE_2A9404:        C9 24         CMP #$24                  
CODE_2A9406:        F0 1D         BEQ CODE_2A9425           
CODE_2A9408:        B9 41 94      LDA.w DATA_2A9441,y               
CODE_2A940B:        9F 00 00 7F   STA $7F0000,x             
CODE_2A940F:        B9 44 94      LDA.w DATA_2A9444,y               
CODE_2A9412:        9F 10 00 7F   STA $7F0010,x             
CODE_2A9416:        B9 47 94      LDA.w DATA_2A9447,y               
CODE_2A9419:        9F 20 00 7F   STA $7F0020,x             
CODE_2A941D:        E8            INX                       
CODE_2A941E:        C8            INY                       
CODE_2A941F:        C6 D8         DEC $D8                   
CODE_2A9421:        10 E5         BPL CODE_2A9408           
CODE_2A9423:        80 1B         BRA CODE_2A9440           

CODE_2A9425:        B9 4A 94      LDA.w DATA_2A944A,y               
CODE_2A9428:        9F 00 00 7F   STA $7F0000,x             
CODE_2A942C:        B9 4D 94      LDA.w DATA_2A944D,y               
CODE_2A942F:        9F 10 00 7F   STA $7F0010,x             
CODE_2A9433:        B9 50 94      LDA.w DATA_2A9450,y               
CODE_2A9436:        9F 20 00 7F   STA $7F0020,x             
CODE_2A943A:        E8            INX                       
CODE_2A943B:        C8            INY                       
CODE_2A943C:        C6 D8         DEC $D8                   
CODE_2A943E:        10 E5         BPL CODE_2A9425           
CODE_2A9440:        60            RTS                       

DATA_2A9441:        db $12,$13,$14

DATA_2A9444:        db $16,$17,$14

DATA_2A9447:        db $18,$19,$1A

DATA_2A944A:        db $21,$22,$14

DATA_2A944D:        db $23,$24,$14

DATA_2A9450:        db $18,$19,$1A

CODE_2A9453:        A6 00         LDX $00
CODE_2A9455:        A9 11         LDA #$11
CODE_2A9457:        9F 00 00 7F   STA $7F0000,X
CODE_2A945B:        8A            TXA
CODE_2A945C:        18            CLC
CODE_2A945D:        69 10         ADC #$10
CODE_2A945F:        AA            TAX          
CODE_2A9460:        C6 D8         DEC $D8                   
CODE_2A9462:        10 F1         BPL CODE_2A9455           
CODE_2A9464:        60            RTS                       

CODE_2A9465:        A6 00         LDX $00                   
CODE_2A9467:        BF 00 00 7F   LDA $7F0000,x             
CODE_2A946B:        C9 11         CMP #$11                  
CODE_2A946D:        F0 04         BEQ CODE_2A9473           
CODE_2A946F:        A9 1B         LDA #$1B                  
CODE_2A9471:        80 02         BRA CODE_2A9475           

CODE_2A9473:        A9 1D         LDA #$1D                  
CODE_2A9475:        9F 00 00 7F   STA $7F0000,x             
CODE_2A9479:        A9 1C         LDA #$1C                  
CODE_2A947B:        9F 01 00 7F   STA $7F0001,x             
CODE_2A947F:        60            RTS                       

CODE_2A9480:        A6 00         LDX $00                   
CODE_2A9482:        A4 D8         LDY $D8                   
CODE_2A9484:        B9 8C 94      LDA.w DATA_2A948C,y               
CODE_2A9487:        9F 00 00 7F   STA $7F0000,x             
CODE_2A948B:        60            RTS                       

DATA_2A948C:        db $15,$1E
                
CODE_2A948E:        E2 10         SEP #$10                  
CODE_2A9490:        A2 60         LDX #$60                  
CODE_2A9492:        A9 3D         LDA #$3D                  
CODE_2A9494:        20 03 8D      JSR CODE_2A8D03           
CODE_2A9497:        E8            INX                       
CODE_2A9498:        E0 70         CPX #$70                  
CODE_2A949A:        D0 F8         BNE CODE_2A9494           
CODE_2A949C:        A9 01         LDA #$01                  
CODE_2A949E:        20 03 8D      JSR CODE_2A8D03           
CODE_2A94A1:        E8            INX                       
CODE_2A94A2:        E0 80         CPX #$80                  
CODE_2A94A4:        D0 F8         BNE CODE_2A949E           
CODE_2A94A6:        A9 02         LDA #$02                  
CODE_2A94A8:        85 00         STA $00                   
CODE_2A94AA:        A9 03         LDA #$03                  
CODE_2A94AC:        85 01         STA $01                   
CODE_2A94AE:        A9 08         LDA #$08                  
CODE_2A94B0:        85 02         STA $02                   
CODE_2A94B2:        A9 04         LDA #$04                  
CODE_2A94B4:        85 03         STA $03                   
CODE_2A94B6:        A5 00         LDA $00                   
CODE_2A94B8:        20 03 8D      JSR CODE_2A8D03           
CODE_2A94BB:        E8            INX                       
CODE_2A94BC:        A5 01         LDA $01                   
CODE_2A94BE:        20 03 8D      JSR CODE_2A8D03           
CODE_2A94C1:        E8            INX                       
CODE_2A94C2:        C6 02         DEC $02                   
CODE_2A94C4:        D0 F0         BNE CODE_2A94B6           
CODE_2A94C6:        A9 08         LDA #$08                  
CODE_2A94C8:        85 02         STA $02                   
CODE_2A94CA:        E6 00         INC $00                   
CODE_2A94CC:        E6 00         INC $00                   
CODE_2A94CE:        E6 01         INC $01                   
CODE_2A94D0:        E6 01         INC $01                   
CODE_2A94D2:        C6 03         DEC $03                   
CODE_2A94D4:        D0 E0         BNE CODE_2A94B6           
CODE_2A94D6:        A9 10         LDA #$10                  
CODE_2A94D8:        85 02         STA $02                   
CODE_2A94DA:        A9 0A         LDA #$0A                  
CODE_2A94DC:        20 03 8D      JSR CODE_2A8D03           
CODE_2A94DF:        E8            INX                       
CODE_2A94E0:        C6 02         DEC $02                   
CODE_2A94E2:        D0 F8         BNE CODE_2A94DC           
CODE_2A94E4:        A9 04         LDA #$04                  
CODE_2A94E6:        85 04         STA $04                   
CODE_2A94E8:        A9 0B         LDA #$0B                  
CODE_2A94EA:        85 00         STA $00                   
CODE_2A94EC:        1A            INC A                     
CODE_2A94ED:        85 01         STA $01                   
CODE_2A94EF:        1A            INC A                     
CODE_2A94F0:        85 02         STA $02                   
CODE_2A94F2:        1A            INC A                     
CODE_2A94F3:        85 03         STA $03                   
CODE_2A94F5:        20 B9 95      JSR CODE_2A95B9           
CODE_2A94F8:        A9 04         LDA #$04                  
CODE_2A94FA:        85 04         STA $04                   
CODE_2A94FC:        A9 0F         LDA #$0F                  
CODE_2A94FE:        85 00         STA $00                   
CODE_2A9500:        1A            INC A                     
CODE_2A9501:        85 01         STA $01                   
CODE_2A9503:        1A            INC A                     
CODE_2A9504:        85 02         STA $02                   
CODE_2A9506:        1A            INC A                     
CODE_2A9507:        85 03         STA $03                   
CODE_2A9509:        20 B9 95      JSR CODE_2A95B9           
CODE_2A950C:        A9 04         LDA #$04                  
CODE_2A950E:        85 04         STA $04                   
CODE_2A9510:        A9 13         LDA #$13                  
CODE_2A9512:        85 00         STA $00                   
CODE_2A9514:        A9 14         LDA #$14                  
CODE_2A9516:        85 01         STA $01                   
CODE_2A9518:        A9 19         LDA #$19                  
CODE_2A951A:        85 02         STA $02                   
CODE_2A951C:        A9 1A         LDA #$1A                  
CODE_2A951E:        85 03         STA $03                   
CODE_2A9520:        20 B9 95      JSR CODE_2A95B9           
CODE_2A9523:        A2 70         LDX #$70                  
CODE_2A9525:        A9 04         LDA #$04                  
CODE_2A9527:        85 04         STA $04                   
CODE_2A9529:        A9 2D         LDA #$2D                  
CODE_2A952B:        85 00         STA $00                   
CODE_2A952D:        A9 2E         LDA #$2E                  
CODE_2A952F:        85 01         STA $01                   
CODE_2A9531:        A9 33         LDA #$33                  
CODE_2A9533:        85 02         STA $02                   
CODE_2A9535:        A9 34         LDA #$34                  
CODE_2A9537:        85 03         STA $03                   
CODE_2A9539:        20 5C 97      JSR CODE_2A975C           
CODE_2A953C:        A9 04         LDA #$04                  
CODE_2A953E:        85 04         STA $04                   
CODE_2A9540:        A9 35         LDA #$35                  
CODE_2A9542:        85 00         STA $00                   
CODE_2A9544:        1A            INC A                     
CODE_2A9545:        85 01         STA $01                   
CODE_2A9547:        1A            INC A                     
CODE_2A9548:        85 02         STA $02                   
CODE_2A954A:        1A            INC A                     
CODE_2A954B:        85 03         STA $03                   
CODE_2A954D:        20 5C 97      JSR CODE_2A975C           
CODE_2A9550:        A9 04         LDA #$04                  
CODE_2A9552:        85 04         STA $04                   
CODE_2A9554:        A9 39         LDA #$39                  
CODE_2A9556:        85 00         STA $00                   
CODE_2A9558:        1A            INC A                     
CODE_2A9559:        85 01         STA $01                   
CODE_2A955B:        1A            INC A                     
CODE_2A955C:        85 02         STA $02                   
CODE_2A955E:        1A            INC A                     
CODE_2A955F:        85 03         STA $03                   
CODE_2A9561:        20 5C 97      JSR CODE_2A975C           
CODE_2A9564:        A9 0A         LDA #$0A                  
CODE_2A9566:        20 25 8D      JSR CODE_2A8D25           
CODE_2A9569:        E8            INX                       
CODE_2A956A:        E0 B0         CPX #$B0                  
CODE_2A956C:        D0 F6         BNE CODE_2A9564           
CODE_2A956E:        A0 00         LDY #$00                  
CODE_2A9570:        B7 2B         LDA [$2B],y               
CODE_2A9572:        C9 FF         CMP #$FF                  
CODE_2A9574:        F0 41         BEQ CODE_2A95B7           
CODE_2A9576:        20 54 8E      JSR CODE_2A8E54           
CODE_2A9579:        64 02         STZ $02                   
CODE_2A957B:        C2 20         REP #$20                  
CODE_2A957D:        A5 00         LDA $00                   
CODE_2A957F:        85 04         STA $04                   
CODE_2A9581:        E2 20         SEP #$20                  
CODE_2A9583:        A9 09         LDA #$09                  
CODE_2A9585:        85 03         STA $03                   
CODE_2A9587:        A6 02         LDX $02                   
CODE_2A9589:        BD D6 95      LDA.w DATA_2A95D6,x               
CODE_2A958C:        C2 10         REP #$10                  
CODE_2A958E:        A6 04         LDX $04                   
CODE_2A9590:        20 D9 8C      JSR CODE_2A8CD9           
CODE_2A9593:        C2 20         REP #$20                  
CODE_2A9595:        A5 04         LDA $04                   
CODE_2A9597:        18            CLC                       
CODE_2A9598:        69 10 00      ADC #$0010                
CODE_2A959B:        85 04         STA $04                   
CODE_2A959D:        E2 30         SEP #$30                  
CODE_2A959F:        E6 02         INC $02                   
CODE_2A95A1:        C6 03         DEC $03                   
CODE_2A95A3:        D0 E2         BNE CODE_2A9587           
CODE_2A95A5:        E6 00         INC $00                   
CODE_2A95A7:        A5 02         LDA $02                   
CODE_2A95A9:        C9 24         CMP #$24                  
CODE_2A95AB:        D0 CE         BNE CODE_2A957B           
CODE_2A95AD:        A5 D8         LDA $D8                   
CODE_2A95AF:        F0 04         BEQ CODE_2A95B5           
CODE_2A95B1:        C6 D8         DEC $D8                   
CODE_2A95B3:        80 C4         BRA CODE_2A9579           

CODE_2A95B5:        80 B7         BRA CODE_2A956E           

CODE_2A95B7:        AB            PLB                       
CODE_2A95B8:        6B            RTL                       

CODE_2A95B9:        A5 00         LDA $00                   
CODE_2A95BB:        20 03 8D      JSR CODE_2A8D03           
CODE_2A95BE:        E8            INX                       
CODE_2A95BF:        A5 01         LDA $01                   
CODE_2A95C1:        20 03 8D      JSR CODE_2A8D03           
CODE_2A95C4:        E8            INX                       
CODE_2A95C5:        A5 02         LDA $02                   
CODE_2A95C7:        20 03 8D      JSR CODE_2A8D03           
CODE_2A95CA:        E8            INX                       
CODE_2A95CB:        A5 03         LDA $03                   
CODE_2A95CD:        20 03 8D      JSR CODE_2A8D03           
CODE_2A95D0:        E8            INX                       
CODE_2A95D1:        C6 04         DEC $04                   
CODE_2A95D3:        D0 E4         BNE CODE_2A95B9           
CODE_2A95D5:        60            RTS                       

DATA_2A95D6:        db $15,$1B,$00,$00,$00,$00,$00,$29
                    db $2F,$16,$1C,$1F,$21,$23,$25,$27
                    db $2A,$30,$17,$1D,$20,$22,$24,$26
                    db $28,$2B,$31,$18,$1E,$00,$00,$00
                    db $00,$00,$2C,$32

CODE_2A95FA:        E2 10         SEP #$10
CODE_2A95FC:        A9 3A         LDA #$3A
CODE_2A95FE:        85 00         STA $00                   
CODE_2A9600:        A9 01         LDA #$01                  
CODE_2A9602:        85 01         STA $01                   
CODE_2A9604:        A9 08         LDA #$08                  
CODE_2A9606:        85 04         STA $04                   
CODE_2A9608:        A2 E0         LDX #$E0                  
CODE_2A960A:        20 3A 97      JSR CODE_2A973A           
CODE_2A960D:        A9 02         LDA #$02                  
CODE_2A960F:        85 00         STA $00                   
CODE_2A9611:        A9 03         LDA #$03                  
CODE_2A9613:        85 01         STA $01                   
CODE_2A9615:        A9 08         LDA #$08                  
CODE_2A9617:        85 04         STA $04                   
CODE_2A9619:        20 3A 97      JSR CODE_2A973A           
CODE_2A961C:        A9 04         LDA #$04                  
CODE_2A961E:        85 00         STA $00                   
CODE_2A9620:        A9 05         LDA #$05                  
CODE_2A9622:        85 01         STA $01                   
CODE_2A9624:        A9 08         LDA #$08                  
CODE_2A9626:        85 04         STA $04                   
CODE_2A9628:        20 4B 97      JSR CODE_2A974B           
CODE_2A962B:        A9 0B         LDA #$0B                  
CODE_2A962D:        85 00         STA $00                   
CODE_2A962F:        A9 0C         LDA #$0C                  
CODE_2A9631:        85 01         STA $01                   
CODE_2A9633:        A9 08         LDA #$08                  
CODE_2A9635:        85 04         STA $04                   
CODE_2A9637:        20 4B 97      JSR CODE_2A974B           
CODE_2A963A:        A9 20         LDA #$20                  
CODE_2A963C:        85 04         STA $04                   
CODE_2A963E:        A9 13         LDA #$13                  
CODE_2A9640:        20 25 8D      JSR CODE_2A8D25           
CODE_2A9643:        E8            INX                       
CODE_2A9644:        C6 04         DEC $04                   
CODE_2A9646:        D0 F6         BNE CODE_2A963E           
CODE_2A9648:        A2 30         LDX #$30                  
CODE_2A964A:        A9 10         LDA #$10                  
CODE_2A964C:        85 04         STA $04                   
CODE_2A964E:        A9 13         LDA #$13                  
CODE_2A9650:        20 25 8D      JSR CODE_2A8D25           
CODE_2A9653:        E8            INX                       
CODE_2A9654:        C6 04         DEC $04                   
CODE_2A9656:        D0 F8         BNE CODE_2A9650           
CODE_2A9658:        20 ED 96      JSR CODE_2A96ED           
CODE_2A965B:        20 AD 96      JSR CODE_2A96AD           
CODE_2A965E:        AD 50 03      LDA $0350                 
CODE_2A9661:        C9 1A         CMP #$1A                  
CODE_2A9663:        D0 46         BNE CODE_2A96AB           
CODE_2A9665:        A9 00         LDA #$00                  
CODE_2A9667:        EB            XBA                       
CODE_2A9668:        EE 4F 03      INC $034F                 
CODE_2A966B:        C2 10         REP #$10                  
CODE_2A966D:        A0 10 05      LDY #$0510                
CODE_2A9670:        A2 C0 05      LDX #$05C0                
CODE_2A9673:        A9 CF         LDA #$CF                  
CODE_2A9675:        54 7F 7F      MVN $7F, $7F                 
CODE_2A9678:        A9 00         LDA #$00                  
CODE_2A967A:        EB            XBA                       
CODE_2A967B:        A0 C0 06      LDY #$06C0                
CODE_2A967E:        A2 70 07      LDX #$0770                
CODE_2A9681:        A9 CF         LDA #$CF                  
CODE_2A9683:        54 7F 7F      MVN $7F, $7F                 
CODE_2A9686:        E2 10         SEP #$10                  
CODE_2A9688:        A2 E0         LDX #$E0                  
CODE_2A968A:        A9 13         LDA #$13                  
CODE_2A968C:        9F E0 05 7F   STA $7F05E0,x             
CODE_2A9690:        9F 90 07 7F   STA $7F0790,x             
CODE_2A9694:        CA            DEX                       
CODE_2A9695:        D0 F5         BNE CODE_2A968C           
CODE_2A9697:        A2 70         LDX #$70                  
CODE_2A9699:        20 ED 96      JSR CODE_2A96ED           
CODE_2A969C:        8B            PHB                       
CODE_2A969D:        A9 2A         LDA #$2A                  ;
CODE_2A969F:        48            PHA                       
CODE_2A96A0:        AB            PLB                       ;
CODE_2A96A1:        C2 20         REP #$20                  
CODE_2A96A3:        E6 2B         INC $2B                   
CODE_2A96A5:        E2 20         SEP #$20                  
CODE_2A96A7:        20 AD 96      JSR CODE_2A96AD           
CODE_2A96AA:        AB            PLB                       ;
CODE_2A96AB:        AB            PLB                       ;
CODE_2A96AC:        6B            RTL                       

CODE_2A96AD:        A0 00         LDY #$00                  
CODE_2A96AF:        B7 2B         LDA [$2B],y               
CODE_2A96B1:        C9 FF         CMP #$FF                  
CODE_2A96B3:        F0 37         BEQ CODE_2A96EC           
CODE_2A96B5:        20 54 8E      JSR CODE_2A8E54           
CODE_2A96B8:        A9 2A         LDA #$2A                  
CODE_2A96BA:        85 08         STA $08                   
CODE_2A96BC:        85 0B         STA $0B                   
CODE_2A96BE:        85 0E         STA $0E                   
CODE_2A96C0:        C2 30         REP #$30                  
CODE_2A96C2:        A6 D8         LDX $D8                   
CODE_2A96C4:        BD 96 97      LDA.w DATA_2A9796,x               
CODE_2A96C7:        85 06         STA $06                   
CODE_2A96C9:        BD A2 97      LDA.w DATA_2A97A2,x               
CODE_2A96CC:        85 09         STA $09                   
CODE_2A96CE:        BD AE 97      LDA.w DATA_2A97AE,x               
CODE_2A96D1:        85 0C         STA $0C                   
CODE_2A96D3:        64 04         STZ $04                   
CODE_2A96D5:        E2 20         SEP #$20                  
CODE_2A96D7:        BD 8A 97      LDA.w DATA_2A978A,x               
CODE_2A96DA:        85 0F         STA $0F                   
CODE_2A96DC:        A6 00         LDX $00                   
CODE_2A96DE:        A0 00 00      LDY #$0000                
CODE_2A96E1:        A7 0C         LDA [$0C]                 
CODE_2A96E3:        85 02         STA $02                   
CODE_2A96E5:        20 A7 8F      JSR CODE_2A8FA7           
CODE_2A96E8:        E2 10         SEP #$10                  
CODE_2A96EA:        80 C1         BRA CODE_2A96AD           

CODE_2A96EC:        60            RTS                       

CODE_2A96ED:        A9 18         LDA #$18                  
CODE_2A96EF:        85 00         STA $00                   
CODE_2A96F1:        A9 19         LDA #$19                  
CODE_2A96F3:        85 01         STA $01                   
CODE_2A96F5:        A9 1E         LDA #$1E                  
CODE_2A96F7:        85 02         STA $02                   
CODE_2A96F9:        A9 1B         LDA #$1B                  
CODE_2A96FB:        85 03         STA $03                   
CODE_2A96FD:        A9 04         LDA #$04                  
CODE_2A96FF:        85 04         STA $04                   
CODE_2A9701:        20 5C 97      JSR CODE_2A975C           
CODE_2A9704:        A9 21         LDA #$21                  
CODE_2A9706:        85 00         STA $00                   
CODE_2A9708:        A9 22         LDA #$22                  
CODE_2A970A:        85 01         STA $01                   
CODE_2A970C:        A9 26         LDA #$26                  
CODE_2A970E:        85 02         STA $02                   
CODE_2A9710:        A9 24         LDA #$24                  
CODE_2A9712:        85 03         STA $03                   
CODE_2A9714:        A9 04         LDA #$04                  
CODE_2A9716:        85 04         STA $04                   
CODE_2A9718:        20 5C 97      JSR CODE_2A975C           
CODE_2A971B:        A9 28         LDA #$28                  
CODE_2A971D:        85 00         STA $00                   
CODE_2A971F:        A9 29         LDA #$29                  
CODE_2A9721:        85 01         STA $01                   
CODE_2A9723:        A9 08         LDA #$08                  
CODE_2A9725:        85 04         STA $04                   
CODE_2A9727:        20 79 97      JSR CODE_2A9779           
CODE_2A972A:        A9 38         LDA #$38                  
CODE_2A972C:        85 00         STA $00                   
CODE_2A972E:        A9 39         LDA #$39                  
CODE_2A9730:        85 01         STA $01                   
CODE_2A9732:        A9 08         LDA #$08                  
CODE_2A9734:        85 04         STA $04                   
CODE_2A9736:        20 79 97      JSR CODE_2A9779           
CODE_2A9739:        60            RTS                       

CODE_2A973A:        A5 00         LDA $00                   
CODE_2A973C:        20 03 8D      JSR CODE_2A8D03           
CODE_2A973F:        E8            INX                       
CODE_2A9740:        A5 01         LDA $01                   
CODE_2A9742:        20 03 8D      JSR CODE_2A8D03           
CODE_2A9745:        E8            INX                       
CODE_2A9746:        C6 04         DEC $04                   
CODE_2A9748:        D0 F0         BNE CODE_2A973A           
CODE_2A974A:        60            RTS                       

CODE_2A974B:        A5 00         LDA $00                   
CODE_2A974D:        20 25 8D      JSR CODE_2A8D25           
CODE_2A9750:        E8            INX                       
CODE_2A9751:        A5 01         LDA $01                   
CODE_2A9753:        20 25 8D      JSR CODE_2A8D25           
CODE_2A9756:        E8            INX                       
CODE_2A9757:        C6 04         DEC $04                   
CODE_2A9759:        D0 F0         BNE CODE_2A974B           
CODE_2A975B:        60            RTS                       

CODE_2A975C:        A5 00         LDA $00                   
CODE_2A975E:        20 25 8D      JSR CODE_2A8D25           
CODE_2A9761:        E8            INX                       
CODE_2A9762:        A5 01         LDA $01                   
CODE_2A9764:        20 25 8D      JSR CODE_2A8D25           
CODE_2A9767:        E8            INX                       
CODE_2A9768:        A5 02         LDA $02                   
CODE_2A976A:        20 25 8D      JSR CODE_2A8D25           
CODE_2A976D:        E8            INX                       
CODE_2A976E:        A5 03         LDA $03                   
CODE_2A9770:        20 25 8D      JSR CODE_2A8D25           
CODE_2A9773:        E8            INX                       
CODE_2A9774:        C6 04         DEC $04                   
CODE_2A9776:        D0 E4         BNE CODE_2A975C           
CODE_2A9778:        60            RTS                       

CODE_2A9779:        A5 00         LDA $00                   
CODE_2A977B:        20 25 8D      JSR CODE_2A8D25           
CODE_2A977E:        E8            INX                       
CODE_2A977F:        A5 01         LDA $01                   
CODE_2A9781:        20 25 8D      JSR CODE_2A8D25           
CODE_2A9784:        E8            INX                       
CODE_2A9785:        C6 04         DEC $04                   
CODE_2A9787:        D0 F0         BNE CODE_2A9779           
CODE_2A9789:        60            RTS                       

DATA_2A978A:        db $06,$00,$04,$00,$06,$00,$06,$00 ;
                    db $09,$00,$06,$00 ;

DATA_2A9796:        db $BA,$97,$D4,$97,$E6,$97,$FF,$97 ;
                    db $1D,$98,$33,$98 ;

DATA_2A97A2:        db $52,$98,$5C,$98,$62,$98,$6C,$98 ;
                    db $76,$98,$86,$98 ;

DATA_2A97AE:        db $90,$98,$96,$98,$9A,$98,$A0,$98 ;
                    db $A6,$98,$AF,$98,$06,$07,$08,$0D ;
                    db $0E,$0F,$10,$0D,$0E,$14,$15,$09 ;
                    db $16,$16,$1A,$15,$11,$1C,$1C,$23 ;
                    db $15,$2A,$2B,$2C,$2D,$2E,$09,$16 ;
                    db $0A,$11,$1C,$12,$1D,$10,$11,$1C ;
                    db $12,$25,$15,$2F,$2C,$30,$31,$32 ;
                    db $09,$16,$0A,$11,$1C,$12,$11,$1C ;
                    db $12,$17,$06,$07,$1F,$12,$20,$0D ;
                    db $0E,$27,$12,$20,$33,$34,$35,$36 ;
                    db $37,$09,$16,$0A,$11,$1C,$12,$06 ;
                    db $07,$07,$1F,$12,$17,$0D,$0E,$0E ;
                    db $27,$12,$20,$0D,$0E,$0E,$27,$12 ;
                    db $20,$33,$34,$34,$35,$36,$37,$09 ;
                    db $16,$16,$11,$1C,$1C,$11,$1C,$1C ;
                    db $2A,$2B,$2C,$0F,$10,$1A,$15,$23 ;
                    db $15,$23,$15,$2D,$2E,$09,$16,$0A ;
                    db $11,$1C,$12,$11,$1C,$12,$17,$06 ;
                    db $07,$07,$07,$1F,$12,$20,$0D,$0E ;
                    db $0E,$0E,$27,$12,$20,$33,$34,$34 ;
                    db $34,$35,$36,$37,$10,$00,$10,$00 ;
                    db $0F,$00,$10,$00,$10,$00,$10,$00 ;
                    db $10,$00,$10,$00,$10,$00,$10,$00 ;
                    db $0F,$00,$10,$00,$10,$00,$10,$00 ;
                    db $0E,$00,$10,$00,$10,$00,$10,$00 ;
                    db $10,$00,$10,$00,$10,$00,$63,$01 ;
                    db $10,$00,$10,$00,$10,$00,$10,$00 ;
                    db $10,$00,$10,$00,$0D,$00,$10,$00 ;
                    db $10,$00,$03,$04,$04,$05,$05,$05 ;
                    db $03,$05,$05,$05,$03,$03,$04,$05 ;
                    db $05,$05,$03,$03,$06,$06,$06,$06 ;
                    db $03,$03,$03,$03,$02,$02,$02,$02 ;
                    db $02,$03,$03,$04,$07,$07,$07 ;

CODE_2A98B5:        E2 10         SEP #$10                  
CODE_2A98B7:        A2 10         LDX #$10                  
CODE_2A98B9:        A9 01         LDA #$01                  
CODE_2A98BB:        85 00         STA $00                   
CODE_2A98BD:        20 24 99      JSR CODE_2A9924           
CODE_2A98C0:        A2 A0         LDX #$A0                  
CODE_2A98C2:        A9 14         LDA #$14                  
CODE_2A98C4:        85 00         STA $00                   
CODE_2A98C6:        20 24 99      JSR CODE_2A9924           
CODE_2A98C9:        E8            INX                       
CODE_2A98CA:        A9 18         LDA #$18                  
CODE_2A98CC:        20 03 8D      JSR CODE_2A8D03           
CODE_2A98CF:        E8            INX                       
CODE_2A98D0:        8A            TXA                       
CODE_2A98D1:        29 0F         AND #$0F                  
CODE_2A98D3:        D0 F4         BNE CODE_2A98C9           
CODE_2A98D5:        A9 1C         LDA #$1C                  
CODE_2A98D7:        20 03 8D      JSR CODE_2A8D03           
CODE_2A98DA:        E8            INX                       
CODE_2A98DB:        A9 1D         LDA #$1D                  
CODE_2A98DD:        20 03 8D      JSR CODE_2A8D03           
CODE_2A98E0:        E8            INX                       
CODE_2A98E1:        8A            TXA                       
CODE_2A98E2:        29 0F         AND #$0F                  
CODE_2A98E4:        D0 EF         BNE CODE_2A98D5           
CODE_2A98E6:        A9 21         LDA #$21                  
CODE_2A98E8:        85 00         STA $00                   
CODE_2A98EA:        20 24 99      JSR CODE_2A9924           
CODE_2A98ED:        A9 22         LDA #$22                  
CODE_2A98EF:        85 00         STA $00                   
CODE_2A98F1:        20 24 99      JSR CODE_2A9924           
CODE_2A98F4:        A9 29         LDA #$29                  
CODE_2A98F6:        85 00         STA $00                   
CODE_2A98F8:        20 24 99      JSR CODE_2A9924           
CODE_2A98FB:        A9 2A         LDA #$2A                  
CODE_2A98FD:        85 00         STA $00                   
CODE_2A98FF:        20 30 99      JSR CODE_2A9930           
CODE_2A9902:        E0 B0         CPX #$B0                  
CODE_2A9904:        D0 F9         BNE CODE_2A98FF           
CODE_2A9906:        A0 00         LDY #$00                  
CODE_2A9908:        B7 2B         LDA [$2B],y               
CODE_2A990A:        C9 FF         CMP #$FF                  
CODE_2A990C:        F0 08         BEQ CODE_2A9916           
CODE_2A990E:        20 54 8E      JSR CODE_2A8E54           
CODE_2A9911:        FC 18 99      JSR (PNTR_2A9918,x)             
CODE_2A9914:        80 F0         BRA CODE_2A9906           

CODE_2A9916:        AB            PLB                       
CODE_2A9917:        6B            RTL                       

PNTR_2A9918:        dw CODE_2A994C
                    dw CODE_2A9988
                    dw CODE_2A99BB
                    dw CODE_2A99F7
                    dw CODE_2A9A23
                    dw CODE_2A9A3E

CODE_2A9924:        A5 00         LDA $00
CODE_2A9926:        20 03 8D      JSR CODE_2A8D03
CODE_2A9929:        E8            INX                       
CODE_2A992A:        8A            TXA                       
CODE_2A992B:        29 0F         AND #$0F                  
CODE_2A992D:        D0 F5         BNE CODE_2A9924           
CODE_2A992F:        60            RTS                       

CODE_2A9930:        A5 00         LDA $00                   
CODE_2A9932:        20 25 8D      JSR CODE_2A8D25           
CODE_2A9935:        E8            INX                       
CODE_2A9936:        8A            TXA                       
CODE_2A9937:        29 0F         AND #$0F                  
CODE_2A9939:        D0 F5         BNE CODE_2A9930           
CODE_2A993B:        60            RTS                       

DATA_2A993C:        db $34,$35,$34,$36,$34,$36,$34,$35
                    db $34,$36,$37,$34,$38,$35,$37,$37

CODE_2A994C:        C2 10         REP #$10                  ;
CODE_2A994E:        A6 00         LDX $00                   ;
CODE_2A9950:        BF 00 00 7F   LDA $7F0000,x             ;
CODE_2A9954:        C9 14         CMP #$14                  ;
CODE_2A9956:        F0 13         BEQ CODE_2A996B           ;
CODE_2A9958:        A9 02         LDA #$02                  ;
CODE_2A995A:        20 D9 8C      JSR CODE_2A8CD9           ;
CODE_2A995D:        C2 20         REP #$20                  ;
CODE_2A995F:        A5 00         LDA $00                   ;
CODE_2A9961:        18            CLC                       ;
CODE_2A9962:        69 10 00      ADC #$0010                ;
CODE_2A9965:        85 00         STA $00                   ;
CODE_2A9967:        E2 20         SEP #$20                  ;
CODE_2A9969:        80 E3         BRA CODE_2A994E           ;

CODE_2A996B:        A9 17         LDA #$17                  ;
CODE_2A996D:        20 D9 8C      JSR CODE_2A8CD9           ;
CODE_2A9970:        C2 20         REP #$20                  ;
CODE_2A9972:        A5 00         LDA $00                   ;
CODE_2A9974:        18            CLC                       ;
CODE_2A9975:        69 10 00      ADC #$0010                ;
CODE_2A9978:        AA            TAX                       ;
CODE_2A9979:        E2 20         SEP #$20                  ;
CODE_2A997B:        A9 1B         LDA #$1B                  ;
CODE_2A997D:        20 D9 8C      JSR CODE_2A8CD9           ;
CODE_2A9980:        A9 20         LDA #$20                  ;
CODE_2A9982:        20 EE 8C      JSR CODE_2A8CEE           ;
CODE_2A9985:        E2 10         SEP #$10                  ;
CODE_2A9987:        60            RTS                       ;

CODE_2A9988:        C2 10         REP #$10                  
CODE_2A998A:        A0 00 00      LDY #$0000                
CODE_2A998D:        A6 00         LDX $00                   
CODE_2A998F:        B9 B1 99      LDA.w DATA_2A99B1,y               
CODE_2A9992:        20 D9 8C      JSR CODE_2A8CD9           
CODE_2A9995:        C8            INY                       
CODE_2A9996:        C2 20         REP #$20                  
CODE_2A9998:        8A            TXA                       
CODE_2A9999:        18            CLC                       
CODE_2A999A:        69 10 00      ADC #$0010                
CODE_2A999D:        AA            TAX                       
CODE_2A999E:        E2 20         SEP #$20                  
CODE_2A99A0:        C0 0A 00      CPY #$000A                
CODE_2A99A3:        F0 09         BEQ CODE_2A99AE           
CODE_2A99A5:        C0 05 00      CPY #$0005                
CODE_2A99A8:        D0 E5         BNE CODE_2A998F           
CODE_2A99AA:        E6 00         INC $00                   
CODE_2A99AC:        80 DF         BRA CODE_2A998D           

CODE_2A99AE:        E2 10         SEP #$10                  
CODE_2A99B0:        60            RTS                       

DATA_2A99B1:        db $03,$08,$0D,$10,$12,$04,$09,$0E
                    db $11,$13
              
CODE_2A99BB:        C2 10         REP #$10                  
CODE_2A99BD:        A6 00         LDX $00                   
CODE_2A99BF:        A9 05         LDA #$05                  
CODE_2A99C1:        20 E9 99      JSR CODE_2A99E9           
CODE_2A99C4:        C2 20         REP #$20                  
CODE_2A99C6:        A5 00         LDA $00                   
CODE_2A99C8:        18            CLC                       
CODE_2A99C9:        69 10 00      ADC #$0010                
CODE_2A99CC:        85 00         STA $00                   
CODE_2A99CE:        AA            TAX                       
CODE_2A99CF:        E2 20         SEP #$20                  
CODE_2A99D1:        A9 0A         LDA #$0A                  
CODE_2A99D3:        20 E9 99      JSR CODE_2A99E9           
CODE_2A99D6:        C2 20         REP #$20                  
CODE_2A99D8:        A5 00         LDA $00                   
CODE_2A99DA:        18            CLC                       
CODE_2A99DB:        69 11 00      ADC #$0011                
CODE_2A99DE:        AA            TAX                       
CODE_2A99DF:        E2 20         SEP #$20                  
CODE_2A99E1:        A9 0F         LDA #$0F                  
CODE_2A99E3:        20 D9 8C      JSR CODE_2A8CD9           
CODE_2A99E6:        E2 10         SEP #$10                  
CODE_2A99E8:        60            RTS                       

CODE_2A99E9:        20 D9 8C      JSR CODE_2A8CD9           
CODE_2A99EC:        E8            INX                       
CODE_2A99ED:        1A            INC A                     
CODE_2A99EE:        20 D9 8C      JSR CODE_2A8CD9           
CODE_2A99F1:        E8            INX                       
CODE_2A99F2:        1A            INC A                     
CODE_2A99F3:        20 D9 8C      JSR CODE_2A8CD9           
CODE_2A99F6:        60            RTS                       

CODE_2A99F7:        C2 10         REP #$10                  
CODE_2A99F9:        A6 00         LDX $00                   
CODE_2A99FB:        A9 15         LDA #$15                  
CODE_2A99FD:        20 0D 9A      JSR CODE_2A9A0D           
CODE_2A9A00:        A9 19         LDA #$19                  
CODE_2A9A02:        20 0D 9A      JSR CODE_2A9A0D           
CODE_2A9A05:        A9 1E         LDA #$1E                  
CODE_2A9A07:        20 0D 9A      JSR CODE_2A9A0D           
CODE_2A9A0A:        E2 10         SEP #$10                  
CODE_2A9A0C:        60            RTS                       

CODE_2A9A0D:        20 D9 8C      JSR CODE_2A8CD9           
CODE_2A9A10:        E8            INX                       
CODE_2A9A11:        1A            INC A                     
CODE_2A9A12:        20 D9 8C      JSR CODE_2A8CD9           
CODE_2A9A15:        C2 20         REP #$20                  
CODE_2A9A17:        A5 00         LDA $00                   
CODE_2A9A19:        18            CLC                       
CODE_2A9A1A:        69 10 00      ADC #$0010                
CODE_2A9A1D:        85 00         STA $00                   
CODE_2A9A1F:        AA            TAX                       
CODE_2A9A20:        E2 20         SEP #$20                  
CODE_2A9A22:        60            RTS                       

CODE_2A9A23:        C2 10         REP #$10                  
CODE_2A9A25:        A6 00         LDX $00                   
CODE_2A9A27:        A0 00 00      LDY #$0000                
CODE_2A9A2A:        B9 39 9A      LDA.w DATA_2A9A39,y               
CODE_2A9A2D:        20 D9 8C      JSR CODE_2A8CD9           
CODE_2A9A30:        E8            INX                       
CODE_2A9A31:        C8            INY                       
CODE_2A9A32:        C0 05 00      CPY #$0005                
CODE_2A9A35:        D0 F3         BNE CODE_2A9A2A           
CODE_2A9A37:        80 14         BRA CODE_2A9A4D           

DATA_2A9A39:        db $23,$24,$28,$26,$27

CODE_2A9A3E:        C2 10         REP #$10                  
CODE_2A9A40:        A6 00         LDX $00                   
CODE_2A9A42:        A9 23         LDA #$23                  
CODE_2A9A44:        20 D9 8C      JSR CODE_2A8CD9           
CODE_2A9A47:        E8            INX                       
CODE_2A9A48:        1A            INC A                     
CODE_2A9A49:        C9 28         CMP #$28                  
CODE_2A9A4B:        D0 F7         BNE CODE_2A9A44           
CODE_2A9A4D:        A0 00 00      LDY #$0000                
CODE_2A9A50:        C2 20         REP #$20                  
CODE_2A9A52:        A5 00         LDA $00                   
CODE_2A9A54:        18            CLC                       
CODE_2A9A55:        69 11 00      ADC #$0011                
CODE_2A9A58:        AA            TAX                       
CODE_2A9A59:        E2 20         SEP #$20                  
CODE_2A9A5B:        B9 AE 9A      LDA.w DATA_2A9AAE,y               
CODE_2A9A5E:        20 D9 8C      JSR CODE_2A8CD9           
CODE_2A9A61:        B9 B1 9A      LDA.w DATA_2A9AB1,y               
CODE_2A9A64:        20 EE 8C      JSR CODE_2A8CEE           
CODE_2A9A67:        E8            INX                       
CODE_2A9A68:        C8            INY                       
CODE_2A9A69:        C0 03 00      CPY #$0003                
CODE_2A9A6C:        D0 ED         BNE CODE_2A9A5B           
CODE_2A9A6E:        C2 20         REP #$20                  
CODE_2A9A70:        A5 00         LDA $00                   
CODE_2A9A72:        18            CLC                       
CODE_2A9A73:        69 32 00      ADC #$0032                
CODE_2A9A76:        AA            TAX                       
CODE_2A9A77:        E2 20         SEP #$20                  
CODE_2A9A79:        BF 00 00 7F   LDA $7F0000,x             
CODE_2A9A7D:        C9 2A         CMP #$2A                  
CODE_2A9A7F:        D0 11         BNE CODE_2A9A92           
CODE_2A9A81:        A9 30         LDA #$30                  
CODE_2A9A83:        20 D9 8C      JSR CODE_2A8CD9           
CODE_2A9A86:        C2 20         REP #$20                  
CODE_2A9A88:        8A            TXA                       
CODE_2A9A89:        18            CLC                       
CODE_2A9A8A:        69 10 00      ADC #$0010                
CODE_2A9A8D:        AA            TAX                       
CODE_2A9A8E:        E2 20         SEP #$20                  
CODE_2A9A90:        80 E7         BRA CODE_2A9A79           

CODE_2A9A92:        C2 20         REP #$20                  
CODE_2A9A94:        8A            TXA                       
CODE_2A9A95:        38            SEC                       
CODE_2A9A96:        E9 11 00      SBC #$0011                
CODE_2A9A99:        AA            TAX                       
CODE_2A9A9A:        E2 20         SEP #$20                  
CODE_2A9A9C:        A9 31         LDA #$31                  
CODE_2A9A9E:        20 D9 8C      JSR CODE_2A8CD9           
CODE_2A9AA1:        1A            INC A                     
CODE_2A9AA2:        E8            INX                       
CODE_2A9AA3:        20 D9 8C      JSR CODE_2A8CD9           
CODE_2A9AA6:        1A            INC A                     
CODE_2A9AA7:        E8            INX                       
CODE_2A9AA8:        20 D9 8C      JSR CODE_2A8CD9           
CODE_2A9AAB:        E2 10         SEP #$10                  
CODE_2A9AAD:        60            RTS                       

DATA_2A9AAE:        db $2B,$28,$2C ;

DATA_2A9AB1:        db $2D,$2E,$2F ;

CODE_2A9AB4:        E2 10         SEP #$10                  ;
CODE_2A9AB6:        AD 27 07      LDA $0727                 ;
CODE_2A9AB9:        C9 07         CMP #$07                  ;
CODE_2A9ABB:        F0 05         BEQ CODE_2A9AC2           ;
CODE_2A9ABD:        A9 01         LDA #$01                  
CODE_2A9ABF:        8D D9 02      STA $02D9                 
CODE_2A9AC2:        A2 10         LDX #$10                  
CODE_2A9AC4:        A9 01         LDA #$01                  
CODE_2A9AC6:        85 00         STA $00                   
CODE_2A9AC8:        20 30 99      JSR CODE_2A9930           
CODE_2A9ACB:        A9 05         LDA #$05                  
CODE_2A9ACD:        85 00         STA $00                   
CODE_2A9ACF:        20 30 99      JSR CODE_2A9930           
CODE_2A9AD2:        A9 09         LDA #$09                  
CODE_2A9AD4:        85 00         STA $00                   
CODE_2A9AD6:        20 30 99      JSR CODE_2A9930           
CODE_2A9AD9:        20 30 99      JSR CODE_2A9930           
CODE_2A9ADC:        20 30 99      JSR CODE_2A9930           
CODE_2A9ADF:        A9 11         LDA #$11                  
CODE_2A9AE1:        85 00         STA $00                   
CODE_2A9AE3:        20 30 99      JSR CODE_2A9930           
CODE_2A9AE6:        A9 19         LDA #$19                  
CODE_2A9AE8:        85 00         STA $00                   
CODE_2A9AEA:        20 30 99      JSR CODE_2A9930           
CODE_2A9AED:        A9 22         LDA #$22                  
CODE_2A9AEF:        85 00         STA $00                   
CODE_2A9AF1:        20 30 99      JSR CODE_2A9930           
CODE_2A9AF4:        A0 00         LDY #$00                  
CODE_2A9AF6:        B7 2B         LDA [$2B],y               
CODE_2A9AF8:        C9 FF         CMP #$FF                  
CODE_2A9AFA:        F0 08         BEQ CODE_2A9B04           
CODE_2A9AFC:        20 54 8E      JSR CODE_2A8E54           
CODE_2A9AFF:        FC 06 9B      JSR (PNTR_2A9B06,x)             
CODE_2A9B02:        80 F0         BRA CODE_2A9AF4           

CODE_2A9B04:        AB            PLB                       
CODE_2A9B05:        6B            RTL                       

PNTR_2A9B06:        dw CODE_2A9B0C
                    dw CODE_2A9B6A                      
                    dw CODE_2A9B86  

                
CODE_2A9B0C:        A6 00         LDX $00                   
CODE_2A9B0E:        86 01         STX $01                   
CODE_2A9B10:        A9 03         LDA #$03                  
CODE_2A9B12:        85 D8         STA $D8                   
CODE_2A9B14:        A9 02         LDA #$02                  
CODE_2A9B16:        20 58 9B      JSR CODE_2A9B58           
CODE_2A9B19:        A9 03         LDA #$03                  
CODE_2A9B1B:        85 D8         STA $D8                   
CODE_2A9B1D:        A9 06         LDA #$06                  
CODE_2A9B1F:        20 58 9B      JSR CODE_2A9B58           
CODE_2A9B22:        A9 03         LDA #$03                  
CODE_2A9B24:        85 D8         STA $D8                   
CODE_2A9B26:        A9 0A         LDA #$0A                  
CODE_2A9B28:        20 58 9B      JSR CODE_2A9B58           
CODE_2A9B2B:        64 D8         STZ $D8                   
CODE_2A9B2D:        A9 0D         LDA #$0D                  
CODE_2A9B2F:        20 25 8D      JSR CODE_2A8D25           
CODE_2A9B32:        E8            INX                       
CODE_2A9B33:        A9 0B         LDA #$0B                  
CODE_2A9B35:        20 25 8D      JSR CODE_2A8D25           
CODE_2A9B38:        E8            INX                       
CODE_2A9B39:        A9 0E         LDA #$0E                  
CODE_2A9B3B:        20 25 8D      JSR CODE_2A8D25           
CODE_2A9B3E:        A5 00         LDA $00                   
CODE_2A9B40:        18            CLC                       
CODE_2A9B41:        69 10         ADC #$10                  
CODE_2A9B43:        85 00         STA $00                   
CODE_2A9B45:        AA            TAX                       
CODE_2A9B46:        A5 D8         LDA $D8                   
CODE_2A9B48:        D0 04         BNE CODE_2A9B4E           
CODE_2A9B4A:        E6 D8         INC $D8                   
CODE_2A9B4C:        80 DF         BRA CODE_2A9B2D           

CODE_2A9B4E:        A9 03         LDA #$03                  
CODE_2A9B50:        85 D8         STA $D8                   
CODE_2A9B52:        A9 12         LDA #$12                  
CODE_2A9B54:        20 58 9B      JSR CODE_2A9B58           
CODE_2A9B57:        60            RTS                       

CODE_2A9B58:        20 25 8D      JSR CODE_2A8D25           
CODE_2A9B5B:        1A            INC A                     
CODE_2A9B5C:        E8            INX                       
CODE_2A9B5D:        C6 D8         DEC $D8                   
CODE_2A9B5F:        D0 F7         BNE CODE_2A9B58           
CODE_2A9B61:        A5 00         LDA $00                   
CODE_2A9B63:        18            CLC                       
CODE_2A9B64:        69 10         ADC #$10                  
CODE_2A9B66:        85 00         STA $00                   
CODE_2A9B68:        AA            TAX                       
CODE_2A9B69:        60            RTS                       

CODE_2A9B6A:        C2 10         REP #$10                  
CODE_2A9B6C:        A6 00         LDX $00                   
CODE_2A9B6E:        A9 18         LDA #$18                  
CODE_2A9B70:        20 D9 8C      JSR CODE_2A8CD9           
CODE_2A9B73:        A9 21         LDA #$21                  
CODE_2A9B75:        20 EE 8C      JSR CODE_2A8CEE           
CODE_2A9B78:        E8            INX                       
CODE_2A9B79:        A9 18         LDA #$18                  
CODE_2A9B7B:        20 D9 8C      JSR CODE_2A8CD9           
CODE_2A9B7E:        A9 21         LDA #$21                  
CODE_2A9B80:        20 EE 8C      JSR CODE_2A8CEE           
CODE_2A9B83:        E2 10         SEP #$10                  
CODE_2A9B85:        60            RTS                       

CODE_2A9B86:        C2 10         REP #$10                  
CODE_2A9B88:        A0 00 00      LDY #$0000                
CODE_2A9B8B:        A6 00         LDX $00                   
CODE_2A9B8D:        B9 AA 9B      LDA.w DATA_2A9BAA,y               
CODE_2A9B90:        20 D9 8C      JSR CODE_2A8CD9           
CODE_2A9B93:        C8            INY                       
CODE_2A9B94:        E8            INX                       
CODE_2A9B95:        8A            TXA                       
CODE_2A9B96:        29 0F         AND #$0F                  
CODE_2A9B98:        C9 09         CMP #$09                  
CODE_2A9B9A:        D0 F1         BNE CODE_2A9B8D           
CODE_2A9B9C:        A5 00         LDA $00                   
CODE_2A9B9E:        18            CLC                       
CODE_2A9B9F:        69 10         ADC #$10                  
CODE_2A9BA1:        85 00         STA $00                   
CODE_2A9BA3:        C9 40         CMP #$40                  
CODE_2A9BA5:        D0 E4         BNE CODE_2A9B8B           
CODE_2A9BA7:        E2 10         SEP #$10                  
CODE_2A9BA9:        60            RTS                       

DATA_2A9BAA:        db $0F,$09,$09,$09,$0D,$0B,$0E,$09
                    db $10,$15,$16,$16,$09,$0D,$0B,$0E
                    db $09,$17,$1A,$1B,$1B,$1C,$1D,$1E
                    db $1F,$1C,$20

CODE_2A9BC5:        E2 10         SEP #$10                  ;
CODE_2A9BC7:        A2 C0         LDX #$C0                  ;
CODE_2A9BC9:        A9 30         LDA #$30                  ;
CODE_2A9BCB:        85 00         STA $00                   ;
CODE_2A9BCD:        20 24 99      JSR CODE_2A9924           ;
CODE_2A9BD0:        A9 01         LDA #$01                  
CODE_2A9BD2:        85 00         STA $00                   
CODE_2A9BD4:        20 24 99      JSR CODE_2A9924           
CODE_2A9BD7:        E6 00         INC $00                   
CODE_2A9BD9:        A5 00         LDA $00                   
CODE_2A9BDB:        29 03         AND #$03                  
CODE_2A9BDD:        D0 F5         BNE CODE_2A9BD4           
CODE_2A9BDF:        20 30 99      JSR CODE_2A9930           
CODE_2A9BE2:        20 30 99      JSR CODE_2A9930           
CODE_2A9BE5:        A2 70         LDX #$70                  
CODE_2A9BE7:        A9 2F         LDA #$2F                  
CODE_2A9BE9:        85 00         STA $00                   
CODE_2A9BEB:        20 30 99      JSR CODE_2A9930           
CODE_2A9BEE:        A0 00         LDY #$00                  
CODE_2A9BF0:        B7 2B         LDA [$2B],y               
CODE_2A9BF2:        C9 FF         CMP #$FF                  
CODE_2A9BF4:        F0 08         BEQ CODE_2A9BFE           
CODE_2A9BF6:        20 54 8E      JSR CODE_2A8E54           
CODE_2A9BF9:        FC 00 9C      JSR (PNTR_2A9C00,x)             
CODE_2A9BFC:        80 F0         BRA CODE_2A9BEE           

CODE_2A9BFE:        AB            PLB                       
CODE_2A9BFF:        6B            RTL                       

PNTR_2A9C00:        dw CODE_2A9C06
                    dw CODE_2A9C14
                    dw CODE_2A9C22 

CODE_2A9C06:        C2 30         REP #$30                  ;
CODE_2A9C08:        A9 59 9C      LDA #$9C59                ;
CODE_2A9C0B:        85 02         STA $02                   ;
CODE_2A9C0D:        A9 07 00      LDA #$0007                ;
CODE_2A9C10:        85 05         STA $05                   ;
CODE_2A9C12:        80 1A         BRA CODE_2A9C2E           ;

CODE_2A9C14:        C2 30         REP #$30                  ;
CODE_2A9C16:        A9 75 9C      LDA #$9C75                ;
CODE_2A9C19:        85 02         STA $02                   ;
CODE_2A9C1B:        A9 05 00      LDA #$0005                ;
CODE_2A9C1E:        85 05         STA $05                   ;
CODE_2A9C20:        80 0C         BRA CODE_2A9C2E           ;

CODE_2A9C22:        C2 30         REP #$30                  
CODE_2A9C24:        A9 89 9C      LDA #$9C89                
CODE_2A9C27:        85 02         STA $02                   
CODE_2A9C29:        A9 05 00      LDA #$0005                
CODE_2A9C2C:        85 05         STA $05                   
CODE_2A9C2E:        E2 20         SEP #$20                  
CODE_2A9C30:        A9 04         LDA #$04                  
CODE_2A9C32:        85 04         STA $04                   
CODE_2A9C34:        A6 00         LDX $00                   
CODE_2A9C36:        B2 02         LDA ($02)                 
CODE_2A9C38:        20 D9 8C      JSR CODE_2A8CD9           
CODE_2A9C3B:        E8            INX                       
CODE_2A9C3C:        C2 20         REP #$20                  
CODE_2A9C3E:        E6 02         INC $02                   
CODE_2A9C40:        E2 20         SEP #$20                  
CODE_2A9C42:        C6 04         DEC $04                   
CODE_2A9C44:        D0 F0         BNE CODE_2A9C36           
CODE_2A9C46:        C2 20         REP #$20                  
CODE_2A9C48:        A5 00         LDA $00                   
CODE_2A9C4A:        18            CLC                       
CODE_2A9C4B:        69 10 00      ADC #$0010                
CODE_2A9C4E:        85 00         STA $00                   
CODE_2A9C50:        E2 20         SEP #$20                  
CODE_2A9C52:        C6 05         DEC $05                   
CODE_2A9C54:        D0 DA         BNE CODE_2A9C30           
CODE_2A9C56:        E2 10         SEP #$10                  
CODE_2A9C58:        60            RTS                       

DATA_2A9C59:        db $04,$05,$06,$04,$07,$08,$09,$0A
                    db $0B,$0C,$0D,$0E,$13,$14,$15,$16
                    db $1B,$1C,$1D,$1E,$23,$24,$25,$26
                    db $29,$2A,$2B,$2C,$0F,$12,$0F,$12
                    db $17,$1A,$17,$1A,$1F,$22,$1F,$22
                    db $23,$26,$23,$26,$29,$2C,$29,$2C
                    db $0F,$10,$11,$12,$17,$18,$19,$1A
                    db $1F,$20,$21,$22,$23,$27,$28,$26
                    db $29,$2D,$2E,$2C
 
                
CODE_2A9C9D:        E2 10         SEP #$10                  
CODE_2A9C9F:        A0 00         LDY #$00                  
CODE_2A9CA1:        B7 2B         LDA [$2B],y               
CODE_2A9CA3:        C9 FF         CMP #$FF                  
CODE_2A9CA5:        F0 08         BEQ CODE_2A9CAF           
CODE_2A9CA7:        20 54 8E      JSR CODE_2A8E54           
CODE_2A9CAA:        FC C3 9C      JSR (PNTR_2A9CC3,x)             
CODE_2A9CAD:        80 F0         BRA CODE_2A9C9F           

CODE_2A9CAF:        A9 00         LDA #$00                  
CODE_2A9CB1:        EB            XBA                       
CODE_2A9CB2:        C2 10         REP #$10                  
CODE_2A9CB4:        A0 00 01      LDY #$0100                
CODE_2A9CB7:        A2 B0 01      LDX #$01B0                
CODE_2A9CBA:        A9 AF         LDA #$AF                  
CODE_2A9CBC:        54 7F 7F      MVN $7F, $7F                 
CODE_2A9CBF:        E2 10         SEP #$10                  
CODE_2A9CC1:        AB            PLB                       
CODE_2A9CC2:        6B            RTL                       

PNTR_2A9CC3:        dw CODE_2A9CCF
                    dw CODE_2A9D61
                    dw CODE_2A9DC0
                    dw CODE_2A9E6B
                    dw CODE_2A9ED2
                    dw CODE_2A9EE8

CODE_2A9CCF:        C2 30         REP #$30                  ;
CODE_2A9CD1:        A5 DA         LDA $DA                   ;
CODE_2A9CD3:        0A            ASL A                     ;
CODE_2A9CD4:        A8            TAY                       ;
CODE_2A9CD5:        B9 E0 9C      LDA.w DATA_2A9CE0,y               ;
CODE_2A9CD8:        85 02         STA $02                   ;
CODE_2A9CDA:        E2 20         SEP #$20                  ;
CODE_2A9CDC:        20 3A 9D      JSR CODE_2A9D3A           ;
CODE_2A9CDF:        60            RTS                       ;

DATA_2A9CE0:        db $EA,$9C,$FA,$9C,$0A,$9D,$1A,$9D
                    db $2A,$9D,$02,$06,$1F,$02,$06,$06
                    db $1F,$03,$03,$02,$03,$03,$10,$17
                    db $03,$03,$03,$06,$1F,$02,$06,$09
                    db $1F,$03,$03,$02,$03,$03,$10,$17
                    db $03,$03,$02,$03,$10,$17,$1D,$1F
                    db $10,$17,$02,$06,$1F,$02,$31,$1F
                    db $10,$17,$02,$09,$10,$17,$1E,$1F
                    db $10,$17,$02,$1E,$1F,$02,$09,$1F
                    db $10,$17,$00,$00,$00,$00,$00,$06
                    db $1F,$03,$03,$02,$03,$03,$10,$17
                    db $03,$03

CODE_2A9D3A:        A6 00         LDX $00                   ;
CODE_2A9D3C:        A0 00 00      LDY #$0000                ;
CODE_2A9D3F:        B1 02         LDA ($02),y               ;
CODE_2A9D41:        20 D9 8C      JSR CODE_2A8CD9           ;
CODE_2A9D44:        C2 20         REP #$20                  ;
CODE_2A9D46:        8A            TXA                       ;
CODE_2A9D47:        18            CLC                       ;
CODE_2A9D48:        69 10 00      ADC #$0010                ;
CODE_2A9D4B:        AA            TAX                       ;
CODE_2A9D4C:        E2 20         SEP #$20                  ;
CODE_2A9D4E:        C8            INY                       ;
CODE_2A9D4F:        C0 10 00      CPY #$0010                ;
CODE_2A9D52:        D0 EB         BNE CODE_2A9D3F           ;
CODE_2A9D54:        A5 D8         LDA $D8                   ;
CODE_2A9D56:        F0 06         BEQ CODE_2A9D5E           ;
CODE_2A9D58:        C6 D8         DEC $D8                   ;
CODE_2A9D5A:        E6 00         INC $00                   ;
CODE_2A9D5C:        80 DC         BRA CODE_2A9D3A           ;

CODE_2A9D5E:        E2 10         SEP #$10                  ;
CODE_2A9D60:        60            RTS                       ;

CODE_2A9D61:        C2 30         REP #$30                  
CODE_2A9D63:        A5 DA         LDA $DA                   
CODE_2A9D65:        0A            ASL A                     
CODE_2A9D66:        AA            TAX                       
CODE_2A9D67:        BD 74 9D      LDA.w DATA_2A9D74,x               
CODE_2A9D6A:        85 02         STA $02                   
CODE_2A9D6C:        E2 20         SEP #$20                  
CODE_2A9D6E:        A6 00         LDX $00                   
CODE_2A9D70:        20 A6 9D      JSR CODE_2A9DA6           
CODE_2A9D73:        60            RTS                       

DATA_2A9D74:        db $80,$9D           
                    db $88,$9D,$8D,$9D,$95,$9D,$9D,$9D
                    db $A2,$9D,$07,$08,$07,$08,$1A,$07
                    db $08,$1A,$1A,$08,$1A,$07,$00,$1A
                    db $1A,$08,$1A,$1A,$1B,$1C,$07,$08
                    db $1A,$08,$08,$1A,$2C,$08,$1A,$1A
                    db $08,$06,$1A,$00,$07,$08,$06,$00

                
CODE_2A9DA6:        BF 00 00 7F   LDA $7F0000,x             
CODE_2A9DAA:        D0 0B         BNE CODE_2A9DB7           
CODE_2A9DAC:        B2 02         LDA ($02)                 
CODE_2A9DAE:        20 D9 8C      JSR CODE_2A8CD9           
CODE_2A9DB1:        C2 20         REP #$20                  
CODE_2A9DB3:        E6 02         INC $02                   
CODE_2A9DB5:        E2 20         SEP #$20                  
CODE_2A9DB7:        E8            INX                       
CODE_2A9DB8:        8A            TXA                       
CODE_2A9DB9:        29 0F         AND #$0F                  
CODE_2A9DBB:        D0 E9         BNE CODE_2A9DA6           
CODE_2A9DBD:        E2 10         SEP #$10                  
CODE_2A9DBF:        60            RTS                       

CODE_2A9DC0:        C2 30         REP #$30                  
CODE_2A9DC2:        A5 DA         LDA $DA                   
CODE_2A9DC4:        0A            ASL A                     
CODE_2A9DC5:        AA            TAX                       
CODE_2A9DC6:        BD E3 9D      LDA.w DATA_2A9DE3,x               
CODE_2A9DC9:        85 02         STA $02                   
CODE_2A9DCB:        E2 20         SEP #$20                  
CODE_2A9DCD:        20 3A 9D      JSR CODE_2A9D3A           
CODE_2A9DD0:        C2 30         REP #$30                  
CODE_2A9DD2:        98            TYA                       
CODE_2A9DD3:        29 FF 00      AND #$00FF                
CODE_2A9DD6:        18            CLC                       
CODE_2A9DD7:        65 02         ADC $02                   
CODE_2A9DD9:        85 02         STA $02                   
CODE_2A9DDB:        E6 00         INC $00                   
CODE_2A9DDD:        E2 20         SEP #$20                  
CODE_2A9DDF:        20 3A 9D      JSR CODE_2A9D3A           
CODE_2A9DE2:        60            RTS                       

DATA_2A9DE3:        db $EB,$9D,$0B,$9E,$2B,$9E,$4B,$9E
                    db $04,$1B,$20,$33,$1B,$20,$35,$04
                    db $20,$20,$35,$04,$2E,$30,$35,$04
                    db $05,$1C,$21,$34,$1C,$21,$01,$05
                    db $2D,$2F,$01,$05,$2D,$2F,$01,$05
                    db $04,$1B,$20,$33,$1B,$1B,$35,$04
                    db $2E,$30,$20,$35,$22,$27,$04,$20
                    db $05,$1C,$21,$34,$1C,$1C,$01,$05
                    db $21,$21,$21,$01,$23,$28,$05,$21
                    db $35,$04,$0B,$12,$1B,$35,$22,$27
                    db $04,$1B,$20,$20,$20,$35,$22,$27
                    db $01,$05,$0C,$13,$1C,$01,$23,$28
                    db $05,$1C,$21,$2D,$2F,$01,$23,$28
                    db $35,$04,$0B,$12,$1B,$35,$22,$27
                    db $04,$1B,$20,$2E,$30,$35,$22,$27
                    db $01,$05,$0C,$13,$1C,$01,$23,$28
                    db $05,$1C,$21,$21,$21,$01,$23,$28
 
              
CODE_2A9E6B:        C2 30         REP #$30                  
CODE_2A9E6D:        A5 DA         LDA $DA                   
CODE_2A9E6F:        0A            ASL A                     
CODE_2A9E70:        AA            TAX                       
CODE_2A9E71:        BD 8C 9E      LDA.w DATA_2A9E8C,x               
CODE_2A9E74:        85 02         STA $02                   
CODE_2A9E76:        E2 20         SEP #$20                  
CODE_2A9E78:        A6 00         LDX $00                   
CODE_2A9E7A:        20 A6 9D      JSR CODE_2A9DA6           
CODE_2A9E7D:        C2 30         REP #$30                  
CODE_2A9E7F:        A5 00         LDA $00                   
CODE_2A9E81:        18            CLC                       
CODE_2A9E82:        69 10 00      ADC #$0010                
CODE_2A9E85:        AA            TAX                       
CODE_2A9E86:        E2 20         SEP #$20                  
CODE_2A9E88:        20 A6 9D      JSR CODE_2A9DA6           
CODE_2A9E8B:        60            RTS                       

DATA_2A9E8C:        db $94,$9E,$A2,$9E,$B2,$9E,$C2,$9E
                    db $0A,$0A,$0D,$0E,$0D,$0E,$0A,$11
                    db $2A,$14,$15,$14,$15,$11,$0A,$0D
                    db $0E,$0F,$0F,$0A,$0A,$0F,$11,$14
                    db $15,$16,$16,$18,$19,$16,$0D,$0E
                    db $0D,$0E,$0F,$24,$25,$0F,$26,$29
                    db $26,$15,$16,$11,$2A,$16,$0D,$0E
                    db $0D,$0E,$0F,$10,$0A,$0F,$26,$29
                    db $26,$15,$16,$17,$11,$16
  
            
CODE_2A9ED2:        C2 10         REP #$10                  
CODE_2A9ED4:        A6 00         LDX $00                   
CODE_2A9ED6:        A4 DA         LDY $DA                   
CODE_2A9ED8:        B9 E1 9E      LDA.w DATA_2A9EE1,y               
CODE_2A9EDB:        20 D9 8C      JSR CODE_2A8CD9           
CODE_2A9EDE:        E2 10         SEP #$10                  
CODE_2A9EE0:        60            RTS                       

DATA_2A9EE1:        db $02,$32,$03,$06,$1F,$20,$21

CODE_2A9EE8:        C2 30         REP #$30                  ;
CODE_2A9EEA:        A5 DA         LDA $DA                   ;
CODE_2A9EEC:        0A            ASL A                     ;
CODE_2A9EED:        AA            TAX                       ;
CODE_2A9EEE:        BD 1B 9F      LDA.w DATA_2A9F1B,x               ;
CODE_2A9EF1:        85 02         STA $02                   ;
CODE_2A9EF3:        E2 20         SEP #$20                  ;
CODE_2A9EF5:        A0 02 00      LDY #$0002                ;
CODE_2A9EF8:        B2 02         LDA ($02)                 ;
CODE_2A9EFA:        A6 00         LDX $00                   ;
CODE_2A9EFC:        20 D9 8C      JSR CODE_2A8CD9           ;
CODE_2A9EFF:        B1 02         LDA ($02),y               ;
CODE_2A9F01:        20 EE 8C      JSR CODE_2A8CEE           ;
CODE_2A9F04:        C2 20         REP #$20                  ;
CODE_2A9F06:        E6 02         INC $02                   ;
CODE_2A9F08:        E6 00         INC $00                   ;
CODE_2A9F0A:        E2 20         SEP #$20                  ;
CODE_2A9F0C:        B2 02         LDA ($02)                 ;
CODE_2A9F0E:        A6 00         LDX $00                   ;
CODE_2A9F10:        20 D9 8C      JSR CODE_2A8CD9           ;
CODE_2A9F13:        B1 02         LDA ($02),y               ;
CODE_2A9F15:        20 EE 8C      JSR CODE_2A8CEE           ;
CODE_2A9F18:        E2 10         SEP #$10                  ;
CODE_2A9F1A:        60            RTS                       ;

DATA_2A9F1B:        db $21,$9F,$25,$9F,$29,$9F,$0D,$0E
                    db $14,$15,$0A,$0D,$2A,$14,$0A,$0A
                    db $11,$11

CODE_2A9F2D:        E2 10         SEP #$10                  
CODE_2A9F2F:        AD 27 07      LDA $0727                 
CODE_2A9F32:        C9 01         CMP #$01                  
CODE_2A9F34:        D0 05         BNE CODE_2A9F3B           
CODE_2A9F36:        A9 18         LDA #$18                  
CODE_2A9F38:        8D C5 02      STA $02C5                 
CODE_2A9F3B:        A2 D0         LDX #$D0                  
CODE_2A9F3D:        A9 23         LDA #$23                  
CODE_2A9F3F:        85 00         STA $00                   
CODE_2A9F41:        20 24 99      JSR CODE_2A9924           
CODE_2A9F44:        A9 24         LDA #$24                  
CODE_2A9F46:        85 00         STA $00                   
CODE_2A9F48:        20 24 99      JSR CODE_2A9924           
CODE_2A9F4B:        A9 01         LDA #$01                  
CODE_2A9F4D:        85 00         STA $00                   
CODE_2A9F4F:        20 24 99      JSR CODE_2A9924           
CODE_2A9F52:        20 30 99      JSR CODE_2A9930           
CODE_2A9F55:        20 30 99      JSR CODE_2A9930           
CODE_2A9F58:        20 30 99      JSR CODE_2A9930           
CODE_2A9F5B:        A0 00         LDY #$00                  
CODE_2A9F5D:        B7 2B         LDA [$2B],y               
CODE_2A9F5F:        C9 FF         CMP #$FF                  
CODE_2A9F61:        F0 08         BEQ CODE_2A9F6B           
CODE_2A9F63:        20 54 8E      JSR CODE_2A8E54           
CODE_2A9F66:        FC 6D 9F      JSR (PNTR_2A9F6D,x)             
CODE_2A9F69:        80 F0         BRA CODE_2A9F5B           

CODE_2A9F6B:        AB            PLB                       
CODE_2A9F6C:        6B            RTL                       

PNTR_2A9F6D:        dw CODE_2A9F7D
                    dw CODE_2A9F84
                    dw CODE_2A9F8B
                    dw CODE_2A9F92
                    dw CODE_2A9F99
                    dw CODE_2A9FA0
                    dw CODE_2A9FA7
                    dw CODE_2AA066

CODE_2A9F7D:        C2 10         REP #$10                  ;
CODE_2A9F7F:        A0 00 00      LDY #$0000                ;
CODE_2A9F82:        80 28         BRA CODE_2A9FAC           ;

CODE_2A9F84:        C2 10         REP #$10                  
CODE_2A9F86:        A0 08 00      LDY #$0008                
CODE_2A9F89:        80 21         BRA CODE_2A9FAC           

CODE_2A9F8B:        C2 10         REP #$10                  
CODE_2A9F8D:        A0 10 00      LDY #$0010                
CODE_2A9F90:        80 1A         BRA CODE_2A9FAC           

CODE_2A9F92:        C2 10         REP #$10                  
CODE_2A9F94:        A0 18 00      LDY #$0018                
CODE_2A9F97:        80 13         BRA CODE_2A9FAC           

CODE_2A9F99:        C2 10         REP #$10                  
CODE_2A9F9B:        A0 20 00      LDY #$0020                
CODE_2A9F9E:        80 0C         BRA CODE_2A9FAC           

CODE_2A9FA0:        C2 10         REP #$10                  
CODE_2A9FA2:        A0 28 00      LDY #$0028                
CODE_2A9FA5:        80 05         BRA CODE_2A9FAC           

CODE_2A9FA7:        C2 10         REP #$10                  
CODE_2A9FA9:        A0 30 00      LDY #$0030                
CODE_2A9FAC:        A9 01         LDA #$01                  
CODE_2A9FAE:        85 02         STA $02                   
CODE_2A9FB0:        A6 00         LDX $00                   
CODE_2A9FB2:        A9 04         LDA #$04                  
CODE_2A9FB4:        85 04         STA $04                   
CODE_2A9FB6:        B9 26 A0      LDA.w DATA_2AA026,y               
CODE_2A9FB9:        20 D9 8C      JSR CODE_2A8CD9           
CODE_2A9FBC:        E8            INX                       
CODE_2A9FBD:        20 09 A0      JSR CODE_2AA009           
CODE_2A9FC0:        C8            INY                       
CODE_2A9FC1:        C6 04         DEC $04                   
CODE_2A9FC3:        D0 F1         BNE CODE_2A9FB6           
CODE_2A9FC5:        C2 20         REP #$20                  
CODE_2A9FC7:        A5 00         LDA $00                   
CODE_2A9FC9:        18            CLC                       
CODE_2A9FCA:        69 10 00      ADC #$0010                
CODE_2A9FCD:        85 00         STA $00                   
CODE_2A9FCF:        E2 20         SEP #$20                  
CODE_2A9FD1:        C6 02         DEC $02                   
CODE_2A9FD3:        F0 DB         BEQ CODE_2A9FB0           
CODE_2A9FD5:        A0 00 00      LDY #$0000                
CODE_2A9FD8:        A9 04         LDA #$04                  
CODE_2A9FDA:        85 04         STA $04                   
CODE_2A9FDC:        A6 00         LDX $00                   
CODE_2A9FDE:        B9 5E A0      LDA.w DATA_2AA05E,y               
CODE_2A9FE1:        20 D9 8C      JSR CODE_2A8CD9           
CODE_2A9FE4:        E8            INX                       
CODE_2A9FE5:        20 09 A0      JSR CODE_2AA009           
CODE_2A9FE8:        C8            INY                       
CODE_2A9FE9:        C2 20         REP #$20                  
CODE_2A9FEB:        98            TYA                       
CODE_2A9FEC:        29 07 00      AND #$0007                
CODE_2A9FEF:        A8            TAY                       
CODE_2A9FF0:        E2 20         SEP #$20                  
CODE_2A9FF2:        C6 04         DEC $04                   
CODE_2A9FF4:        D0 E8         BNE CODE_2A9FDE           
CODE_2A9FF6:        C2 20         REP #$20                  
CODE_2A9FF8:        A5 00         LDA $00                   
CODE_2A9FFA:        18            CLC                       
CODE_2A9FFB:        69 10 00      ADC #$0010                
CODE_2A9FFE:        85 00         STA $00                   
CODE_2AA000:        E2 20         SEP #$20                  
CODE_2AA002:        C6 D8         DEC $D8                   
CODE_2AA004:        D0 D2         BNE CODE_2A9FD8           
CODE_2AA006:        E2 10         SEP #$10                  
CODE_2AA008:        60            RTS                       

CODE_2AA009:        C2 20         REP #$20                  
CODE_2AA00B:        8A            TXA                       
CODE_2AA00C:        29 0F 00      AND #$000F                
CODE_2AA00F:        D0 12         BNE CODE_2AA023           
CODE_2AA011:        A5 DA         LDA $DA                   
CODE_2AA013:        D0 08         BNE CODE_2AA01D           
CODE_2AA015:        8A            TXA                       
CODE_2AA016:        18            CLC                       
CODE_2AA017:        69 A0 01      ADC #$01A0                
CODE_2AA01A:        AA            TAX                       
CODE_2AA01B:        80 06         BRA CODE_2AA023           

CODE_2AA01D:        8A            TXA                       
CODE_2AA01E:        38            SEC                       
CODE_2AA01F:        E9 C0 01      SBC #$01C0                
CODE_2AA022:        AA            TAX                       
CODE_2AA023:        E2 20         SEP #$20                  
CODE_2AA025:        60            RTS                       

DATA_2AA026:        db $1D,$1E,$1F,$20,$21,$08,$09,$22 ;
                    db $29,$04,$0B,$0C,$07,$08,$09,$0F ;
                    db $14,$15,$05,$2A,$1A,$08,$09,$0A ;
                    db $33,$17,$16,$32,$1C,$08,$09,$1B ;
                    db $14,$15,$0B,$0C,$1A,$08,$09,$0F ;
                    db $14,$15,$16,$32,$1A,$08,$09,$1B ;
                    db $29,$04,$05,$2A,$07,$08,$09,$0A ;

DATA_2AA05E:        db $12,$13,$0D,$0E,$18,$19,$10,$11 ;
            
CODE_2AA066:        C2 10         REP #$10                  
CODE_2AA068:        A0 00 00      LDY #$0000                
CODE_2AA06B:        A6 00         LDX $00                   
CODE_2AA06D:        A9 04         LDA #$04                  
CODE_2AA06F:        85 02         STA $02                   
CODE_2AA071:        BF 00 00 7F   LDA $7F0000,x             
CODE_2AA075:        C9 01         CMP #$01                  
CODE_2AA077:        D0 06         BNE CODE_2AA07F           
CODE_2AA079:        B9 9B A0      LDA.w DATA_2AA09B,y               
CODE_2AA07C:        20 D9 8C      JSR CODE_2A8CD9           
CODE_2AA07F:        E8            INX                       
CODE_2AA080:        C8            INY                       
CODE_2AA081:        C0 0C 00      CPY #$000C                
CODE_2AA084:        B0 12         BCS CODE_2AA098                   
CODE_2AA086:        C6 02         DEC $02                   
CODE_2AA088:        D0 E7         BNE CODE_2AA071           
CODE_2AA08A:        C2 20         REP #$20                  
CODE_2AA08C:        A5 00         LDA $00                   
CODE_2AA08E:        18            CLC                       
CODE_2AA08F:        69 10 00      ADC #$0010                
CODE_2AA092:        85 00         STA $00                   
CODE_2AA094:        E2 20         SEP #$20                  
CODE_2AA096:        80 D3         BRA CODE_2AA06B           

CODE_2AA098:        E2 10         SEP #$10                  
CODE_2AA09A:        60            RTS                       
     
DATA_2AA09B:        db $25,$26,$27,$28,$2B,$2C,$2D,$2E
                    db $2F,$2F,$30,$31

CODE_2AA0A7:        E2 10         SEP #$10                  
CODE_2AA0A9:        A2 00         LDX #$00                  
CODE_2AA0AB:        A9 02         LDA #$02                  
CODE_2AA0AD:        85 00         STA $00                   
CODE_2AA0AF:        A9 03         LDA #$03                  
CODE_2AA0B1:        85 01         STA $01                   
CODE_2AA0B3:        64 02         STZ $02                   
CODE_2AA0B5:        A9 01         LDA #$01                  
CODE_2AA0B7:        85 03         STA $03                   
CODE_2AA0B9:        A5 00         LDA $00                   
CODE_2AA0BB:        20 03 8D      JSR CODE_2A8D03           
CODE_2AA0BE:        E8            INX                       
CODE_2AA0BF:        A5 01         LDA $01                   
CODE_2AA0C1:        20 03 8D      JSR CODE_2A8D03           
CODE_2AA0C4:        E8            INX                       
CODE_2AA0C5:        8A            TXA                       
CODE_2AA0C6:        29 0F         AND #$0F                  
CODE_2AA0C8:        D0 EF         BNE CODE_2AA0B9           
CODE_2AA0CA:        A5 02         LDA $02                   
CODE_2AA0CC:        20 03 8D      JSR CODE_2A8D03           
CODE_2AA0CF:        E8            INX                       
CODE_2AA0D0:        A5 03         LDA $03                   
CODE_2AA0D2:        20 03 8D      JSR CODE_2A8D03           
CODE_2AA0D5:        E8            INX                       
CODE_2AA0D6:        8A            TXA                       
CODE_2AA0D7:        29 0F         AND #$0F                  
CODE_2AA0D9:        D0 EF         BNE CODE_2AA0CA           
CODE_2AA0DB:        8A            TXA                       
CODE_2AA0DC:        D0 DB         BNE CODE_2AA0B9           
CODE_2AA0DE:        A5 00         LDA $00                   
CODE_2AA0E0:        20 25 8D      JSR CODE_2A8D25           
CODE_2AA0E3:        E8            INX                       
CODE_2AA0E4:        A5 01         LDA $01                   
CODE_2AA0E6:        20 25 8D      JSR CODE_2A8D25           
CODE_2AA0E9:        E8            INX                       
CODE_2AA0EA:        8A            TXA                       
CODE_2AA0EB:        29 0F         AND #$0F                  
CODE_2AA0ED:        D0 EF         BNE CODE_2AA0DE           
CODE_2AA0EF:        E0 B0         CPX #$B0                  
CODE_2AA0F1:        B0 13         BCS CODE_2AA106                   
CODE_2AA0F3:        A5 02         LDA $02                   
CODE_2AA0F5:        20 25 8D      JSR CODE_2A8D25           
CODE_2AA0F8:        E8            INX                       
CODE_2AA0F9:        A5 03         LDA $03                   
CODE_2AA0FB:        20 25 8D      JSR CODE_2A8D25           
CODE_2AA0FE:        E8            INX                       
CODE_2AA0FF:        8A            TXA                       
CODE_2AA100:        29 0F         AND #$0F                  
CODE_2AA102:        D0 EF         BNE CODE_2AA0F3           
CODE_2AA104:        80 D8         BRA CODE_2AA0DE           

CODE_2AA106:        A0 00         LDY #$00                  
CODE_2AA108:        B7 2B         LDA [$2B],y               
CODE_2AA10A:        C9 FF         CMP #$FF                  
CODE_2AA10C:        F0 08         BEQ CODE_2AA116           
CODE_2AA10E:        20 54 8E      JSR CODE_2A8E54           
CODE_2AA111:        FC 18 A1      JSR (PNTR_2AA118,x)             
CODE_2AA114:        80 F0         BRA CODE_2AA106           

CODE_2AA116:        AB            PLB                       
CODE_2AA117:        6B            RTL                       

PNTR_2AA118:        dw CODE_2AA120
                    dw CODE_2AA143
                    dw CODE_2AA153
                    dw CODE_2AA15F

CODE_2AA120:        20 43 A1      JSR CODE_2AA143           ;
CODE_2AA123:        C2 10         REP #$10                  ;
CODE_2AA125:        A5 DA         LDA $DA                   ;
CODE_2AA127:        F0 02         BEQ CODE_2AA12B           ;
CODE_2AA129:        85 D8         STA $D8                   ;
CODE_2AA12B:        20 36 A1      JSR CODE_2AA136           ;
CODE_2AA12E:        A9 04         LDA #$04                  ;
CODE_2AA130:        20 D9 8C      JSR CODE_2A8CD9           ;
CODE_2AA133:        E2 10         SEP #$10                  ;
CODE_2AA135:        60            RTS                       ;

CODE_2AA136:        C2 20         REP #$20                  
CODE_2AA138:        A5 00         LDA $00                   
CODE_2AA13A:        18            CLC                       
CODE_2AA13B:        65 D8         ADC $D8                   
CODE_2AA13D:        85 00         STA $00                   
CODE_2AA13F:        AA            TAX                       
CODE_2AA140:        E2 20         SEP #$20                  
CODE_2AA142:        60            RTS                       

CODE_2AA143:        20 53 A1      JSR CODE_2AA153           
CODE_2AA146:        C2 10         REP #$10                  
CODE_2AA148:        20 36 A1      JSR CODE_2AA136           
CODE_2AA14B:        A9 04         LDA #$04                  
CODE_2AA14D:        20 D9 8C      JSR CODE_2A8CD9           
CODE_2AA150:        E2 10         SEP #$10                  
CODE_2AA152:        60            RTS                       

CODE_2AA153:        C2 10         REP #$10                  
CODE_2AA155:        A6 00         LDX $00                   
CODE_2AA157:        A9 04         LDA #$04                  
CODE_2AA159:        20 D9 8C      JSR CODE_2A8CD9           
CODE_2AA15C:        E2 10         SEP #$10                  
CODE_2AA15E:        60            RTS                       

CODE_2AA15F:        C2 10         REP #$10                  
CODE_2AA161:        20 53 A1      JSR CODE_2AA153           
CODE_2AA164:        20 36 A1      JSR CODE_2AA136           
CODE_2AA167:        20 53 A1      JSR CODE_2AA153           
CODE_2AA16A:        20 36 A1      JSR CODE_2AA136           
CODE_2AA16D:        20 53 A1      JSR CODE_2AA153           
CODE_2AA170:        A5 DA         LDA $DA                   
CODE_2AA172:        F0 02         BEQ CODE_2AA176           
CODE_2AA174:        85 D8         STA $D8                   
CODE_2AA176:        20 36 A1      JSR CODE_2AA136           
CODE_2AA179:        A9 04         LDA #$04                  
CODE_2AA17B:        20 D9 8C      JSR CODE_2A8CD9           
CODE_2AA17E:        E2 10         SEP #$10                  
CODE_2AA180:        60            RTS                       

CODE_2AA181:        E2 10         SEP #$10                  
CODE_2AA183:        A2 40         LDX #$40                  
CODE_2AA185:        A9 3C         LDA #$3C                  
CODE_2AA187:        85 00         STA $00                   
CODE_2AA189:        A9 40         LDA #$40                  
CODE_2AA18B:        85 01         STA $01                   
CODE_2AA18D:        A9 08         LDA #$08                  
CODE_2AA18F:        85 04         STA $04                   
CODE_2AA191:        20 4B 97      JSR CODE_2A974B           
CODE_2AA194:        A9 41         LDA #$41                  
CODE_2AA196:        85 00         STA $00                   
CODE_2AA198:        A9 42         LDA #$42                  
CODE_2AA19A:        85 01         STA $01                   
CODE_2AA19C:        A9 08         LDA #$08                  
CODE_2AA19E:        85 04         STA $04                   
CODE_2AA1A0:        20 4B 97      JSR CODE_2A974B           
CODE_2AA1A3:        A9 43         LDA #$43                  
CODE_2AA1A5:        85 00         STA $00                   
CODE_2AA1A7:        20 30 99      JSR CODE_2A9930           
CODE_2AA1AA:        E6 00         INC $00                   
CODE_2AA1AC:        20 30 99      JSR CODE_2A9930           
CODE_2AA1AF:        20 30 99      JSR CODE_2A9930           
CODE_2AA1B2:        A0 00         LDY #$00                  
CODE_2AA1B4:        B7 2B         LDA [$2B],y               
CODE_2AA1B6:        C9 FF         CMP #$FF                  
CODE_2AA1B8:        F0 08         BEQ CODE_2AA1C2           
CODE_2AA1BA:        20 54 8E      JSR CODE_2A8E54           
CODE_2AA1BD:        FC 19 A2      JSR (PNTR_2AA219,x)             
CODE_2AA1C0:        80 F0         BRA CODE_2AA1B2           

CODE_2AA1C2:        AD BF 1E      LDA $1EBF                 
CODE_2AA1C5:        C9 0B         CMP #$0B                  
CODE_2AA1C7:        F0 04         BEQ CODE_2AA1CD           
CODE_2AA1C9:        C9 2F         CMP #$2F                  
CODE_2AA1CB:        D0 4A         BNE CODE_2AA217           
CODE_2AA1CD:        A9 00         LDA #$00                  
CODE_2AA1CF:        EB            XBA                       
CODE_2AA1D0:        C2 10         REP #$10                  
CODE_2AA1D2:        A0 C0 00      LDY #$00C0                
CODE_2AA1D5:        A2 D0 00      LDX #$00D0                
CODE_2AA1D8:        A9 AF         LDA #$AF                  
CODE_2AA1DA:        54 7F 7F      MVN $7F, $7F                 
CODE_2AA1DD:        A9 00         LDA #$00                  
CODE_2AA1DF:        EB            XBA                       
CODE_2AA1E0:        A0 70 02      LDY #$0270                
CODE_2AA1E3:        A2 80 02      LDX #$0280                
CODE_2AA1E6:        A9 AF         LDA #$AF                  
CODE_2AA1E8:        54 7F 7F      MVN $7F, $7F                 
CODE_2AA1EB:        A9 00         LDA #$00                  
CODE_2AA1ED:        EB            XBA                       
CODE_2AA1EE:        A0 20 04      LDY #$0420                
CODE_2AA1F1:        A2 30 04      LDX #$0430                
CODE_2AA1F4:        A9 AF         LDA #$AF                  
CODE_2AA1F6:        54 7F 7F      MVN $7F, $7F                 
CODE_2AA1F9:        A9 00         LDA #$00                  
CODE_2AA1FB:        EB            XBA                       
CODE_2AA1FC:        A0 D0 05      LDY #$05D0                
CODE_2AA1FF:        A2 E0 05      LDX #$05E0                
CODE_2AA202:        A9 AF         LDA #$AF                  
CODE_2AA204:        54 7F 7F      MVN $7F, $7F                 
CODE_2AA207:        A9 00         LDA #$00                  
CODE_2AA209:        EB            XBA                       
CODE_2AA20A:        A0 80 07      LDY #$0780                
CODE_2AA20D:        A2 90 07      LDX #$0790                
CODE_2AA210:        A9 AF         LDA #$AF                  
CODE_2AA212:        54 7F 7F      MVN $7F, $7F                 
CODE_2AA215:        E2 10         SEP #$10                  
CODE_2AA217:        AB            PLB                       
CODE_2AA218:        6B            RTL                       

PNTR_2AA219:        dw CODE_2AA221               
                    dw CODE_2AA225               
                    dw CODE_2AA229                 
                    dw CODE_2AA22D

CODE_2AA221:        A0 00         LDY #$00                  ;
CODE_2AA223:        80 0A         BRA CODE_2AA22F           ;

CODE_2AA225:        A0 02         LDY #$02                  ;
CODE_2AA227:        80 06         BRA CODE_2AA22F           

CODE_2AA229:        A0 04         LDY #$04                  
CODE_2AA22B:        80 02         BRA CODE_2AA22F           

CODE_2AA22D:        A0 06         LDY #$06                  
CODE_2AA22F:        A9 2A         LDA #$2A                  
CODE_2AA231:        85 08         STA $08                   
CODE_2AA233:        85 0B         STA $0B                   
CODE_2AA235:        85 0E         STA $0E                   
CODE_2AA237:        C2 30         REP #$30                  
CODE_2AA239:        B9 68 A2      LDA.w DATA_2AA268,y               
CODE_2AA23C:        85 06         STA $06                   
CODE_2AA23E:        B9 70 A2      LDA.w DATA_2AA270,y               
CODE_2AA241:        85 09         STA $09                   
CODE_2AA243:        B9 78 A2      LDA.w DATA_2AA278,y               
CODE_2AA246:        85 0C         STA $0C                   
CODE_2AA248:        64 04         STZ $04                   
CODE_2AA24A:        E2 20         SEP #$20                  
CODE_2AA24C:        B9 60 A2      LDA.w DATA_2AA260,y               
CODE_2AA24F:        85 0F         STA $0F                   
CODE_2AA251:        A6 00         LDX $00                   
CODE_2AA253:        A0 00 00      LDY #$0000                
CODE_2AA256:        A7 0C         LDA [$0C]                 
CODE_2AA258:        85 02         STA $02                   
CODE_2AA25A:        20 A7 8F      JSR CODE_2A8FA7           
CODE_2AA25D:        E2 10         SEP #$10                  
CODE_2AA25F:        60            RTS                       

DATA_2AA260:        db $07,$00,$06,$00,$04,$00,$05,$00 ;

DATA_2AA268:        db $80,$A2,$BD,$A2,$CE,$A2,$E4,$A2 ;

DATA_2AA270:        db $FF,$A2,$0B,$A3,$15,$A3,$1B,$A3 ;

DATA_2AA278:        db $23,$A3,$2A,$A3,$30,$A3,$34,$A3 ;
                    db $45,$01,$02,$03,$04,$05,$06,$07 ;
                    db $03,$0A,$0B,$0C,$0D,$0E,$0F,$03 ;
                    db $0A,$16,$17,$18,$16,$19,$1A,$1B ;
                    db $03,$0A,$20,$21,$16,$16,$16,$22 ;
                    db $23,$24,$1B,$03,$29,$2A,$16,$16 ;
                    db $16,$16,$2B,$2C,$2D,$2E,$2F,$1B ;
                    db $35,$36,$35,$36,$35,$36,$35,$36 ;
                    db $35,$36,$37,$38,$37,$08,$09,$10 ;
                    db $11,$12,$1C,$1D,$12,$25,$26,$12 ;
                    db $30,$26,$12,$39,$3A,$3B,$45,$01 ;
                    db $02,$03,$04,$05,$06,$0F,$03,$31 ;
                    db $0B,$0C,$32,$33,$1B,$36,$35,$36 ;
                    db $35,$36,$37,$38,$13,$14,$15,$1E ;
                    db $10,$1C,$1F,$12,$10,$1C,$1C,$27 ;
                    db $28,$12,$1C,$1C,$1C,$34,$26,$12 ;
                    db $3D,$3E,$3D,$3E,$3A,$3B,$3F,$0F ;
                    db $00,$0F,$00,$0F,$00,$0F,$00,$0F ;
                    db $00,$10,$00,$10,$00,$11,$00,$11 ;
                    db $00,$11,$00,$10,$00,$0F,$00,$0F ;
                    db $00,$10,$00,$0F,$00,$10,$00,$11 ;
                    db $00,$10,$00,$03,$05,$07,$09,$0B ;
                    db $0D,$0D,$02,$03,$03,$03,$03,$03 ;
                    db $03,$05,$07,$07,$03,$05,$06,$06 ;
                    db $07 ;

                  
CODE_2AA339:        E2 10         SEP #$10                  
CODE_2AA33B:        20 8B A3      JSR CODE_2AA38B           
CODE_2AA33E:        A2 40         LDX #$40                  
CODE_2AA340:        A9 05         LDA #$05                  
CODE_2AA342:        85 00         STA $00                   
CODE_2AA344:        A5 00         LDA $00                   
CODE_2AA346:        20 25 8D      JSR CODE_2A8D25           
CODE_2AA349:        1A            INC A                     
CODE_2AA34A:        E8            INX                       
CODE_2AA34B:        20 25 8D      JSR CODE_2A8D25           
CODE_2AA34E:        C9 0C         CMP #$0C                  
CODE_2AA350:        D0 F7         BNE CODE_2AA349           
CODE_2AA352:        E8            INX                       
CODE_2AA353:        8A            TXA                       
CODE_2AA354:        29 0F         AND #$0F                  
CODE_2AA356:        D0 EC         BNE CODE_2AA344           
CODE_2AA358:        C2 10         REP #$10                  
CODE_2AA35A:        A2 46 01      LDX #$0146                
CODE_2AA35D:        A9 07         LDA #$07                  
CODE_2AA35F:        85 00         STA $00                   
CODE_2AA361:        20 D9 8C      JSR CODE_2A8CD9           
CODE_2AA364:        1A            INC A                     
CODE_2AA365:        E8            INX                       
CODE_2AA366:        20 D9 8C      JSR CODE_2A8CD9           
CODE_2AA369:        1A            INC A                     
CODE_2AA36A:        E8            INX                       
CODE_2AA36B:        20 D9 8C      JSR CODE_2A8CD9           
CODE_2AA36E:        1A            INC A                     
CODE_2AA36F:        E8            INX                       
CODE_2AA370:        20 D9 8C      JSR CODE_2A8CD9           
CODE_2AA373:        E2 10         SEP #$10                  
CODE_2AA375:        A0 00         LDY #$00                  
CODE_2AA377:        B7 2B         LDA [$2B],y               
CODE_2AA379:        C9 FF         CMP #$FF                  
CODE_2AA37B:        F0 08         BEQ CODE_2AA385           
CODE_2AA37D:        20 54 8E      JSR CODE_2A8E54           
CODE_2AA380:        FC 87 A3      JSR (PNTR_2AA387,x)             
CODE_2AA383:        80 F0         BRA CODE_2AA375           

CODE_2AA385:        AB            PLB                       
CODE_2AA386:        6B            RTL                       

PNTR_2AA387:        dw CODE_2AA3E1              
                    dw CODE_2AA40E

CODE_2AA38B:        A2 B0         LDX #$B0
CODE_2AA38D:        A9 41         LDA #$41                  ;
CODE_2AA38F:        85 00         STA $00                   ;
CODE_2AA391:        20 24 99      JSR CODE_2A9924           ;
CODE_2AA394:        A9 01         LDA #$01                  
CODE_2AA396:        85 00         STA $00                   
CODE_2AA398:        20 24 99      JSR CODE_2A9924           
CODE_2AA39B:        E6 00         INC $00                   
CODE_2AA39D:        20 24 99      JSR CODE_2A9924           
CODE_2AA3A0:        E6 00         INC $00                   
CODE_2AA3A2:        20 24 99      JSR CODE_2A9924           
CODE_2AA3A5:        E6 00         INC $00                   
CODE_2AA3A7:        20 24 99      JSR CODE_2A9924           
CODE_2AA3AA:        20 30 99      JSR CODE_2A9930           
CODE_2AA3AD:        E0 50         CPX #$50                  
CODE_2AA3AF:        D0 F9         BNE CODE_2AA3AA           
CODE_2AA3B1:        A2 50         LDX #$50                  
CODE_2AA3B3:        A9 0D         LDA #$0D                  
CODE_2AA3B5:        85 00         STA $00                   
CODE_2AA3B7:        A9 0E         LDA #$0E                  
CODE_2AA3B9:        85 01         STA $01                   
CODE_2AA3BB:        A9 0F         LDA #$0F                  
CODE_2AA3BD:        85 02         STA $02                   
CODE_2AA3BF:        A9 10         LDA #$10                  
CODE_2AA3C1:        85 03         STA $03                   
CODE_2AA3C3:        A9 04         LDA #$04                  
CODE_2AA3C5:        85 04         STA $04                   
CODE_2AA3C7:        20 5C 97      JSR CODE_2A975C           
CODE_2AA3CA:        A9 11         LDA #$11                  
CODE_2AA3CC:        85 00         STA $00                   
CODE_2AA3CE:        A9 12         LDA #$12                  
CODE_2AA3D0:        85 01         STA $01                   
CODE_2AA3D2:        A9 08         LDA #$08                  
CODE_2AA3D4:        85 04         STA $04                   
CODE_2AA3D6:        20 4B 97      JSR CODE_2A974B           
CODE_2AA3D9:        A9 14         LDA #$14                  
CODE_2AA3DB:        85 00         STA $00                   
CODE_2AA3DD:        20 30 99      JSR CODE_2A9930           
CODE_2AA3E0:        60            RTS                       

CODE_2AA3E1:        C2 10         REP #$10                  
CODE_2AA3E3:        A6 00         LDX $00                   
CODE_2AA3E5:        A9 3B         LDA #$3B                  
CODE_2AA3E7:        20 D9 8C      JSR CODE_2A8CD9           
CODE_2AA3EA:        A9 3E         LDA #$3E                  
CODE_2AA3EC:        20 EE 8C      JSR CODE_2A8CEE           
CODE_2AA3EF:        C6 D8         DEC $D8                   
CODE_2AA3F1:        F0 0D         BEQ CODE_2AA400           
CODE_2AA3F3:        E8            INX                       
CODE_2AA3F4:        A9 3C         LDA #$3C                  
CODE_2AA3F6:        20 D9 8C      JSR CODE_2A8CD9           
CODE_2AA3F9:        A9 3F         LDA #$3F                  
CODE_2AA3FB:        20 EE 8C      JSR CODE_2A8CEE           
CODE_2AA3FE:        80 EF         BRA CODE_2AA3EF           

CODE_2AA400:        E8            INX                       
CODE_2AA401:        A9 3D         LDA #$3D                  
CODE_2AA403:        20 D9 8C      JSR CODE_2A8CD9           
CODE_2AA406:        A9 40         LDA #$40                  
CODE_2AA408:        20 EE 8C      JSR CODE_2A8CEE           
CODE_2AA40B:        E2 10         SEP #$10                  
CODE_2AA40D:        60            RTS                       

CODE_2AA40E:        C2 10         REP #$10                  
CODE_2AA410:        A6 00         LDX $00                   
CODE_2AA412:        A9 35         LDA #$35                  
CODE_2AA414:        20 D9 8C      JSR CODE_2A8CD9           
CODE_2AA417:        A9 38         LDA #$38                  
CODE_2AA419:        20 EE 8C      JSR CODE_2A8CEE           
CODE_2AA41C:        C6 D8         DEC $D8                   
CODE_2AA41E:        F0 1C         BEQ CODE_2AA43C           
CODE_2AA420:        E8            INX                       
CODE_2AA421:        8A            TXA                       
CODE_2AA422:        29 0F         AND #$0F                  
CODE_2AA424:        D0 0A         BNE CODE_2AA430           
CODE_2AA426:        C2 20         REP #$20                  
CODE_2AA428:        8A            TXA                       
CODE_2AA429:        18            CLC                       
CODE_2AA42A:        69 A0 01      ADC #$01A0                
CODE_2AA42D:        AA            TAX                       
CODE_2AA42E:        E2 20         SEP #$20                  
CODE_2AA430:        A9 36         LDA #$36                  
CODE_2AA432:        20 D9 8C      JSR CODE_2A8CD9           
CODE_2AA435:        A9 39         LDA #$39                  
CODE_2AA437:        20 EE 8C      JSR CODE_2A8CEE           
CODE_2AA43A:        80 E0         BRA CODE_2AA41C           

CODE_2AA43C:        E8            INX                       
CODE_2AA43D:        A9 37         LDA #$37                  
CODE_2AA43F:        20 D9 8C      JSR CODE_2A8CD9           
CODE_2AA442:        A9 3A         LDA #$3A                  
CODE_2AA444:        20 EE 8C      JSR CODE_2A8CEE           
CODE_2AA447:        E2 10         SEP #$10                  
CODE_2AA449:        60            RTS                       

CODE_2AA44A:        E2 10         SEP #$10                  
CODE_2AA44C:        20 8B A3      JSR CODE_2AA38B           
CODE_2AA44F:        A2 50         LDX #$50                  
CODE_2AA451:        A9 0F         LDA #$0F                  
CODE_2AA453:        85 00         STA $00                   
CODE_2AA455:        A9 10         LDA #$10                  
CODE_2AA457:        85 01         STA $01                   
CODE_2AA459:        A9 0D         LDA #$0D                  
CODE_2AA45B:        85 02         STA $02                   
CODE_2AA45D:        A9 0E         LDA #$0E                  
CODE_2AA45F:        85 03         STA $03                   
CODE_2AA461:        A9 04         LDA #$04                  
CODE_2AA463:        85 04         STA $04                   
CODE_2AA465:        20 5C 97      JSR CODE_2A975C           
CODE_2AA468:        A0 00         LDY #$00                  
CODE_2AA46A:        B7 2B         LDA [$2B],y               
CODE_2AA46C:        C9 FF         CMP #$FF                  
CODE_2AA46E:        F0 08         BEQ CODE_2AA478           
CODE_2AA470:        20 54 8E      JSR CODE_2A8E54           
CODE_2AA473:        FC F9 A4      JSR (PNTR_2AA4F9,x)             
CODE_2AA476:        80 F0         BRA CODE_2AA468           

CODE_2AA478:        AD 50 03      LDA $0350                 
CODE_2AA47B:        C9 19         CMP #$19                  
CODE_2AA47D:        D0 78         BNE CODE_2AA4F7           
CODE_2AA47F:        A9 00         LDA #$00                  
CODE_2AA481:        EB            XBA                       
CODE_2AA482:        EE 4F 03      INC $034F                 
CODE_2AA485:        C2 10         REP #$10                  
CODE_2AA487:        A0 00 00      LDY #$0000                
CODE_2AA48A:        A2 B0 00      LDX #$00B0                
CODE_2AA48D:        A9 CF         LDA #$CF                  
CODE_2AA48F:        54 7F 7F      MVN $7F, $7F                 
CODE_2AA492:        A9 00         LDA #$00                  
CODE_2AA494:        EB            XBA                       
CODE_2AA495:        A0 B0 01      LDY #$01B0                
CODE_2AA498:        A2 60 02      LDX #$0260                
CODE_2AA49B:        A9 CF         LDA #$CF                  
CODE_2AA49D:        54 7F 7F      MVN $7F, $7F                 
CODE_2AA4A0:        E2 10         SEP #$10                  
CODE_2AA4A2:        A9 42         LDA #$42                  
CODE_2AA4A4:        85 00         STA $00                   
CODE_2AA4A6:        A9 43         LDA #$43                  
CODE_2AA4A8:        85 01         STA $01                   
CODE_2AA4AA:        C2 20         REP #$20                  
CODE_2AA4AC:        8B            PHB                       
CODE_2AA4AD:        A0 7F         LDY #$7F                  
CODE_2AA4AF:        5A            PHY                       
CODE_2AA4B0:        AB            PLB                       
CODE_2AA4B1:        A0 00         LDY #$00                  
CODE_2AA4B3:        A2 00         LDX #$00                  
CODE_2AA4B5:        A5 00         LDA $00                   
CODE_2AA4B7:        9D D0 00      STA $00D0,x               
CODE_2AA4BA:        9D F0 00      STA $00F0,x               
CODE_2AA4BD:        9D 10 01      STA $0110,x               
CODE_2AA4C0:        9D 30 01      STA $0130,x               
CODE_2AA4C3:        9D 50 01      STA $0150,x               
CODE_2AA4C6:        9D 70 01      STA $0170,x               
CODE_2AA4C9:        9D 90 01      STA $0190,x               
CODE_2AA4CC:        9D 80 02      STA $0280,x               
CODE_2AA4CF:        9D A0 02      STA $02A0,x               
CODE_2AA4D2:        9D C0 02      STA $02C0,x               
CODE_2AA4D5:        9D E0 02      STA $02E0,x               
CODE_2AA4D8:        9D 00 03      STA $0300,x               
CODE_2AA4DB:        9D 20 03      STA $0320,x               
CODE_2AA4DE:        9D 40 03      STA $0340,x               
CODE_2AA4E1:        E8            INX                       
CODE_2AA4E2:        E8            INX                       
CODE_2AA4E3:        8A            TXA                       
CODE_2AA4E4:        29 0F 00      AND #$000F                
CODE_2AA4E7:        D0 CC         BNE CODE_2AA4B5           
CODE_2AA4E9:        98            TYA                       
CODE_2AA4EA:        D0 08         BNE CODE_2AA4F4           
CODE_2AA4EC:        C8            INY                       
CODE_2AA4ED:        A5 00         LDA $00                   
CODE_2AA4EF:        EB            XBA                       
CODE_2AA4F0:        85 00         STA $00                   
CODE_2AA4F2:        80 C1         BRA CODE_2AA4B5           

CODE_2AA4F4:        AB            PLB                       
CODE_2AA4F5:        E2 20         SEP #$20                  
CODE_2AA4F7:        AB            PLB                       
CODE_2AA4F8:        6B            RTL                       

PNTR_2AA4F9:        dw CODE_2AA3E1              
                    dw CODE_2AA40E
                    dw CODE_2AA505
                    dw CODE_2AA5AB
                    dw CODE_2AA600
                    dw CODE_2AA65A

CODE_2AA505:        C2 10         REP #$10                  ;
CODE_2AA507:        64 02         STZ $02                   ;
CODE_2AA509:        A6 00         LDX $00                   ;
CODE_2AA50B:        BF 00 00 7F   LDA $7F0000,x             ;
CODE_2AA50F:        C9 04         CMP #$04                  ;
CODE_2AA511:        D0 4F         BNE CODE_2AA562           ;
CODE_2AA513:        A5 02         LDA $02                   ;
CODE_2AA515:        85 03         STA $03                   ;
CODE_2AA517:        A9 16         LDA #$16                  ;
CODE_2AA519:        20 D9 8C      JSR CODE_2A8CD9           ;
CODE_2AA51C:        A5 03         LDA $03                   ;
CODE_2AA51E:        F0 12         BEQ CODE_2AA532           ;
CODE_2AA520:        E8            INX                       ;               
CODE_2AA521:        A9 18         LDA #$18                  
CODE_2AA523:        20 D9 8C      JSR CODE_2A8CD9           
CODE_2AA526:        C6 03         DEC $03                   
CODE_2AA528:        F0 08         BEQ CODE_2AA532           
CODE_2AA52A:        E8            INX                       
CODE_2AA52B:        A9 1A         LDA #$1A                  
CODE_2AA52D:        20 D9 8C      JSR CODE_2A8CD9           
CODE_2AA530:        80 F4         BRA CODE_2AA526           

CODE_2AA532:        A5 02         LDA $02                   
CODE_2AA534:        85 03         STA $03                   
CODE_2AA536:        A5 03         LDA $03                   
CODE_2AA538:        F0 12         BEQ CODE_2AA54C           
CODE_2AA53A:        C6 03         DEC $03                   
CODE_2AA53C:        F0 08         BEQ CODE_2AA546           
CODE_2AA53E:        E8            INX                       
CODE_2AA53F:        A9 1B         LDA #$1B                  
CODE_2AA541:        20 D9 8C      JSR CODE_2A8CD9           
CODE_2AA544:        80 F0         BRA CODE_2AA536           

CODE_2AA546:        E8            INX                       
CODE_2AA547:        A9 19         LDA #$19                  
CODE_2AA549:        20 D9 8C      JSR CODE_2A8CD9           
CODE_2AA54C:        E8            INX                       
CODE_2AA54D:        A9 17         LDA #$17                  
CODE_2AA54F:        20 D9 8C      JSR CODE_2A8CD9           
CODE_2AA552:        E6 02         INC $02                   
CODE_2AA554:        C2 20         REP #$20                  
CODE_2AA556:        A5 00         LDA $00                   
CODE_2AA558:        18            CLC                       
CODE_2AA559:        69 0F 00      ADC #$000F                
CODE_2AA55C:        85 00         STA $00                   
CODE_2AA55E:        E2 20         SEP #$20                  
CODE_2AA560:        80 A7         BRA CODE_2AA509           

CODE_2AA562:        E8            INX                       
CODE_2AA563:        A9 2D         LDA #$2D                  
CODE_2AA565:        85 02         STA $02                   
CODE_2AA567:        BF F0 FF 7E   LDA $7EFFF0,x             
CODE_2AA56B:        C9 1B         CMP #$1B                  
CODE_2AA56D:        F0 10         BEQ CODE_2AA57F           
CODE_2AA56F:        A5 02         LDA $02                   
CODE_2AA571:        20 D9 8C      JSR CODE_2A8CD9           
CODE_2AA574:        E8            INX                       
CODE_2AA575:        E6 02         INC $02                   
CODE_2AA577:        A5 02         LDA $02                   
CODE_2AA579:        C9 31         CMP #$31                  
CODE_2AA57B:        F0 E6         BEQ CODE_2AA563           
CODE_2AA57D:        80 E8         BRA CODE_2AA567           

CODE_2AA57F:        A5 02         LDA $02                   
CODE_2AA581:        18            CLC                       
CODE_2AA582:        69 06         ADC #$06                  
CODE_2AA584:        C9 35         CMP #$35                  
CODE_2AA586:        D0 02         BNE CODE_2AA58A           
CODE_2AA588:        A9 31         LDA #$31                  
CODE_2AA58A:        85 02         STA $02                   
CODE_2AA58C:        BF F0 FF 7E   LDA $7EFFF0,x             
CODE_2AA590:        C9 04         CMP #$04                  
CODE_2AA592:        F0 14         BEQ CODE_2AA5A8           
CODE_2AA594:        A5 02         LDA $02                   
CODE_2AA596:        20 D9 8C      JSR CODE_2A8CD9           
CODE_2AA599:        E8            INX                       
CODE_2AA59A:        E6 02         INC $02                   
CODE_2AA59C:        A5 02         LDA $02                   
CODE_2AA59E:        C9 35         CMP #$35                  
CODE_2AA5A0:        D0 EA         BNE CODE_2AA58C           
CODE_2AA5A2:        A9 31         LDA #$31                  
CODE_2AA5A4:        85 02         STA $02                   
CODE_2AA5A6:        80 E4         BRA CODE_2AA58C           

CODE_2AA5A8:        E2 10         SEP #$10                  
CODE_2AA5AA:        60            RTS                       

CODE_2AA5AB:        C2 10         REP #$10                  
CODE_2AA5AD:        C2 20         REP #$20                  
CODE_2AA5AF:        A5 DA         LDA $DA                   
CODE_2AA5B1:        0A            ASL A                     
CODE_2AA5B2:        A8            TAY                       
CODE_2AA5B3:        B9 EE A5      LDA.w DATA_2AA5EE,y               
CODE_2AA5B6:        85 02         STA $02                   
CODE_2AA5B8:        E2 20         SEP #$20                  
CODE_2AA5BA:        A6 00         LDX $00                   
CODE_2AA5BC:        B2 02         LDA ($02)                 
CODE_2AA5BE:        30 2B         BMI CODE_2AA5EB           
CODE_2AA5C0:        20 D9 8C      JSR CODE_2A8CD9           
CODE_2AA5C3:        C2 20         REP #$20                  
CODE_2AA5C5:        E6 02         INC $02                   
CODE_2AA5C7:        E2 20         SEP #$20                  
CODE_2AA5C9:        E8            INX                       
CODE_2AA5CA:        8A            TXA                       
CODE_2AA5CB:        29 0F         AND #$0F                  
CODE_2AA5CD:        D0 ED         BNE CODE_2AA5BC           
CODE_2AA5CF:        A5 DA         LDA $DA                   
CODE_2AA5D1:        D0 0C         BNE CODE_2AA5DF           
CODE_2AA5D3:        C2 20         REP #$20                  
CODE_2AA5D5:        8A            TXA                       
CODE_2AA5D6:        18            CLC                       
CODE_2AA5D7:        69 A0 01      ADC #$01A0                
CODE_2AA5DA:        AA            TAX                       
CODE_2AA5DB:        E2 20         SEP #$20                  
CODE_2AA5DD:        80 DD         BRA CODE_2AA5BC           

CODE_2AA5DF:        C2 20         REP #$20                  
CODE_2AA5E1:        8A            TXA                       
CODE_2AA5E2:        38            SEC                       
CODE_2AA5E3:        E9 C0 01      SBC #$01C0                
CODE_2AA5E6:        AA            TAX                       
CODE_2AA5E7:        E2 20         SEP #$20                  
CODE_2AA5E9:        80 D1         BRA CODE_2AA5BC           

CODE_2AA5EB:        E2 10         SEP #$10                  
CODE_2AA5ED:        60            RTS                       

     
DATA_2AA5EE:        db $F2,$A5,$FB,$A5,$26,$27,$2B,$2C
                    db $09,$0A,$0B,$0C,$FF,$26,$27,$28
                    db $29,$FF

CODE_2AA600:        C2 10         REP #$10                  
CODE_2AA602:        A6 00         LDX $00                   
CODE_2AA604:        A9 1C         LDA #$1C                  
CODE_2AA606:        20 D9 8C      JSR CODE_2A8CD9           
CODE_2AA609:        C2 20         REP #$20                  
CODE_2AA60B:        A5 00         LDA $00                   
CODE_2AA60D:        18            CLC                       
CODE_2AA60E:        69 0F 00      ADC #$000F                
CODE_2AA611:        85 00         STA $00                   
CODE_2AA613:        AA            TAX                       
CODE_2AA614:        E2 20         SEP #$20                  
CODE_2AA616:        BF 00 00 7F   LDA $7F0000,x             
CODE_2AA61A:        C9 19         CMP #$19                  
CODE_2AA61C:        F0 33         BEQ CODE_2AA651           
CODE_2AA61E:        A9 1D         LDA #$1D                  
CODE_2AA620:        20 D9 8C      JSR CODE_2A8CD9           
CODE_2AA623:        E8            INX                       
CODE_2AA624:        8A            TXA                       
CODE_2AA625:        29 0F         AND #$0F                  
CODE_2AA627:        D0 0A         BNE CODE_2AA633           
CODE_2AA629:        C2 20         REP #$20                  
CODE_2AA62B:        8A            TXA                       
CODE_2AA62C:        38            SEC                       
CODE_2AA62D:        E9 C0 01      SBC #$01C0                
CODE_2AA630:        AA            TAX                       
CODE_2AA631:        E2 20         SEP #$20                  
CODE_2AA633:        BF F0 FF 7E   LDA $7EFFF0,x             
CODE_2AA637:        C9 04         CMP #$04                  
CODE_2AA639:        F0 07         BEQ CODE_2AA642           
CODE_2AA63B:        A9 1E         LDA #$1E                  
CODE_2AA63D:        20 D9 8C      JSR CODE_2A8CD9           
CODE_2AA640:        80 E1         BRA CODE_2AA623           

CODE_2AA642:        BF 00 00 7F   LDA $7F0000,x             
CODE_2AA646:        C9 04         CMP #$04                  
CODE_2AA648:        D0 BF         BNE CODE_2AA609           
CODE_2AA64A:        A9 1F         LDA #$1F                  
CODE_2AA64C:        20 D9 8C      JSR CODE_2A8CD9           
CODE_2AA64F:        80 B8         BRA CODE_2AA609           

CODE_2AA651:        E8            INX                       
CODE_2AA652:        A9 25         LDA #$25                  
CODE_2AA654:        20 D9 8C      JSR CODE_2A8CD9           
CODE_2AA657:        E2 10         SEP #$10                  
CODE_2AA659:        60            RTS                       

CODE_2AA65A:        C2 10         REP #$10                  
CODE_2AA65C:        A6 00         LDX $00                   
CODE_2AA65E:        A9 20         LDA #$20                  
CODE_2AA660:        20 D9 8C      JSR CODE_2A8CD9           
CODE_2AA663:        E8            INX                       
CODE_2AA664:        A9 21         LDA #$21                  
CODE_2AA666:        20 D9 8C      JSR CODE_2A8CD9           
CODE_2AA669:        C2 20         REP #$20                  
CODE_2AA66B:        A5 00         LDA $00                   
CODE_2AA66D:        18            CLC                       
CODE_2AA66E:        69 0F 00      ADC #$000F                
CODE_2AA671:        85 00         STA $00                   
CODE_2AA673:        AA            TAX                       
CODE_2AA674:        E2 20         SEP #$20                  
CODE_2AA676:        A9 22         LDA #$22                  
CODE_2AA678:        20 D9 8C      JSR CODE_2A8CD9           
CODE_2AA67B:        E8            INX                       
CODE_2AA67C:        A9 23         LDA #$23                  
CODE_2AA67E:        20 D9 8C      JSR CODE_2A8CD9           
CODE_2AA681:        E8            INX                       
CODE_2AA682:        A9 24         LDA #$24                  
CODE_2AA684:        20 D9 8C      JSR CODE_2A8CD9           
CODE_2AA687:        C2 20         REP #$20                  
CODE_2AA689:        A5 00         LDA $00                   
CODE_2AA68B:        18            CLC                       
CODE_2AA68C:        69 11 00      ADC #$0011                
CODE_2AA68F:        AA            TAX                       
CODE_2AA690:        E2 20         SEP #$20                  
CODE_2AA692:        A9 2A         LDA #$2A                  
CODE_2AA694:        20 D9 8C      JSR CODE_2A8CD9           
CODE_2AA697:        E2 10         SEP #$10                  
CODE_2AA699:        60            RTS                       

CODE_2AA69A:        E2 10         SEP #$10                  
CODE_2AA69C:        AD 27 07      LDA $0727                 
CODE_2AA69F:        C9 05         CMP #$05                  
CODE_2AA6A1:        D0 05         BNE CODE_2AA6A8           
CODE_2AA6A3:        A9 12         LDA #$12                  
CODE_2AA6A5:        8D C5 02      STA $02C5                 
CODE_2AA6A8:        A2 40         LDX #$40                  
CODE_2AA6AA:        A9 28         LDA #$28                  
CODE_2AA6AC:        85 00         STA $00                   
CODE_2AA6AE:        20 30 99      JSR CODE_2A9930           
CODE_2AA6B1:        E0 80         CPX #$80                  
CODE_2AA6B3:        D0 F9         BNE CODE_2AA6AE           
CODE_2AA6B5:        A0 00         LDY #$00                  
CODE_2AA6B7:        B7 2B         LDA [$2B],y               
CODE_2AA6B9:        C9 FF         CMP #$FF                  
CODE_2AA6BB:        F0 08         BEQ CODE_2AA6C5           
CODE_2AA6BD:        20 54 8E      JSR CODE_2A8E54           
CODE_2AA6C0:        FC C7 A6      JSR (PNTR_2AA6C7,x)             
CODE_2AA6C3:        80 F0         BRA CODE_2AA6B5           

CODE_2AA6C5:        AB            PLB                       
CODE_2AA6C6:        6B            RTL                       

PNTR_2AA6C7:        dw CODE_2AA6D7
                    dw CODE_2AA755
                    dw CODE_2AA8A5
                    dw CODE_2AA8D5
                    dw CODE_2AA926
                    dw CODE_2AA92C
                    dw CODE_2AA932
                    dw CODE_2AA938

CODE_2AA6D7:        C2 10         REP #$10                  ;
CODE_2AA6D9:        A6 00         LDX $00                   ;
CODE_2AA6DB:        BF 00 00 7F   LDA $7F0000,x             ;
CODE_2AA6DF:        D0 04         BNE CODE_2AA6E5           ;
CODE_2AA6E1:        A9 05         LDA #$05                  ;
CODE_2AA6E3:        80 02         BRA CODE_2AA6E7           ;

CODE_2AA6E5:        A9 0C         LDA #$0C                  ;
CODE_2AA6E7:        20 D9 8C      JSR CODE_2A8CD9           ;
CODE_2AA6EA:        E8            INX                       ;
CODE_2AA6EB:        8A            TXA                       ;
CODE_2AA6EC:        29 0F         AND #$0F                  ;
CODE_2AA6EE:        D0 0A         BNE CODE_2AA6FA           ;
CODE_2AA6F0:        C2 20         REP #$20                  ;
CODE_2AA6F2:        8A            TXA                       
CODE_2AA6F3:        18            CLC                       
CODE_2AA6F4:        69 A0 01      ADC #$01A0                
CODE_2AA6F7:        AA            TAX                       
CODE_2AA6F8:        E2 20         SEP #$20                  
CODE_2AA6FA:        BF 00 00 7F   LDA $7F0000,x             
CODE_2AA6FE:        D0 04         BNE CODE_2AA704           
CODE_2AA700:        A9 2E         LDA #$2E                  
CODE_2AA702:        80 02         BRA CODE_2AA706           

CODE_2AA704:        A9 0B         LDA #$0B                  
CODE_2AA706:        20 D9 8C      JSR CODE_2A8CD9           
CODE_2AA709:        C2 20         REP #$20                  
CODE_2AA70B:        A5 00         LDA $00                   
CODE_2AA70D:        18            CLC                       
CODE_2AA70E:        69 10 00      ADC #$0010                
CODE_2AA711:        85 00         STA $00                   
CODE_2AA713:        AA            TAX                       
CODE_2AA714:        E2 20         SEP #$20                  
CODE_2AA716:        C6 D8         DEC $D8                   
CODE_2AA718:        F0 1C         BEQ CODE_2AA736           
CODE_2AA71A:        A9 19         LDA #$19                  
CODE_2AA71C:        20 D9 8C      JSR CODE_2A8CD9           
CODE_2AA71F:        E8            INX                       
CODE_2AA720:        8A            TXA                       
CODE_2AA721:        29 0F         AND #$0F                  
CODE_2AA723:        D0 0A         BNE CODE_2AA72F           
CODE_2AA725:        C2 20         REP #$20                  
CODE_2AA727:        8A            TXA                       
CODE_2AA728:        18            CLC                       
CODE_2AA729:        69 A0 01      ADC #$01A0                
CODE_2AA72C:        AA            TAX                       
CODE_2AA72D:        E2 20         SEP #$20                  
CODE_2AA72F:        A9 06         LDA #$06                  
CODE_2AA731:        20 D9 8C      JSR CODE_2A8CD9           
CODE_2AA734:        80 D3         BRA CODE_2AA709           

CODE_2AA736:        A5 DA         LDA $DA                   
CODE_2AA738:        F0 0D         BEQ CODE_2AA747           
CODE_2AA73A:        A9 1E         LDA #$1E                  
CODE_2AA73C:        20 D9 8C      JSR CODE_2A8CD9           
CODE_2AA73F:        E8            INX                       
CODE_2AA740:        A9 1F         LDA #$1F                  
CODE_2AA742:        20 D9 8C      JSR CODE_2A8CD9           
CODE_2AA745:        80 0B         BRA CODE_2AA752           

CODE_2AA747:        A9 26         LDA #$26                  
CODE_2AA749:        20 D9 8C      JSR CODE_2A8CD9           
CODE_2AA74C:        E8            INX                       
CODE_2AA74D:        A9 27         LDA #$27                  
CODE_2AA74F:        20 D9 8C      JSR CODE_2A8CD9           
CODE_2AA752:        E2 10         SEP #$10                  
CODE_2AA754:        60            RTS                       

CODE_2AA755:        C2 10         REP #$10                  
CODE_2AA757:        A5 D8         LDA $D8                   
CODE_2AA759:        85 DA         STA $DA                   
CODE_2AA75B:        A6 00         LDX $00                   
CODE_2AA75D:        A0 01 00      LDY #$0001                
CODE_2AA760:        A9 19         LDA #$19                  
CODE_2AA762:        85 02         STA $02                   
CODE_2AA764:        20 79 A8      JSR CODE_2AA879           
CODE_2AA767:        20 D9 8C      JSR CODE_2A8CD9           
CODE_2AA76A:        C6 DA         DEC $DA                   
CODE_2AA76C:        20 6E A8      JSR CODE_2AA86E           
CODE_2AA76F:        A0 07 00      LDY #$0007                
CODE_2AA772:        20 8F A8      JSR CODE_2AA88F           
CODE_2AA775:        20 D9 8C      JSR CODE_2A8CD9           
CODE_2AA778:        C6 DA         DEC $DA                   
CODE_2AA77A:        A9 13         LDA #$13                  
CODE_2AA77C:        85 02         STA $02                   
CODE_2AA77E:        20 61 A8      JSR CODE_2AA861           
CODE_2AA781:        20 6E A8      JSR CODE_2AA86E           
CODE_2AA784:        A9 22         LDA #$22                  
CODE_2AA786:        20 D9 8C      JSR CODE_2A8CD9           
CODE_2AA789:        A5 D8         LDA $D8                   
CODE_2AA78B:        85 DA         STA $DA                   
CODE_2AA78D:        C2 20         REP #$20                  
CODE_2AA78F:        E6 00         INC $00                   
CODE_2AA791:        E2 20         SEP #$20                  
CODE_2AA793:        A5 00         LDA $00                   
CODE_2AA795:        29 0F         AND #$0F                  
CODE_2AA797:        D0 11         BNE CODE_2AA7AA           
CODE_2AA799:        C2 20         REP #$20                  
CODE_2AA79B:        A5 00         LDA $00                   
CODE_2AA79D:        38            SEC                       
CODE_2AA79E:        E9 C0 01      SBC #$01C0                
CODE_2AA7A1:        85 00         STA $00                   
CODE_2AA7A3:        AA            TAX                       
CODE_2AA7A4:        E2 20         SEP #$20                  
CODE_2AA7A6:        A9 0E         LDA #$0E                  
CODE_2AA7A8:        80 0C         BRA CODE_2AA7B6           

CODE_2AA7AA:        A6 00         LDX $00                   
CODE_2AA7AC:        A9 06         LDA #$06                  
CODE_2AA7AE:        85 02         STA $02                   
CODE_2AA7B0:        A0 02 00      LDY #$0002                
CODE_2AA7B3:        20 79 A8      JSR CODE_2AA879           
CODE_2AA7B6:        20 D9 8C      JSR CODE_2A8CD9           
CODE_2AA7B9:        C6 DA         DEC $DA                   
CODE_2AA7BB:        20 6E A8      JSR CODE_2AA86E           
CODE_2AA7BE:        A9 08         LDA #$08                  
CODE_2AA7C0:        20 D9 8C      JSR CODE_2A8CD9           
CODE_2AA7C3:        C6 DA         DEC $DA                   
CODE_2AA7C5:        A9 14         LDA #$14                  
CODE_2AA7C7:        85 02         STA $02                   
CODE_2AA7C9:        20 61 A8      JSR CODE_2AA861           
CODE_2AA7CC:        20 6E A8      JSR CODE_2AA86E           
CODE_2AA7CF:        A9 23         LDA #$23                  
CODE_2AA7D1:        20 D9 8C      JSR CODE_2A8CD9           
CODE_2AA7D4:        C2 20         REP #$20                  
CODE_2AA7D6:        E6 00         INC $00                   
CODE_2AA7D8:        E2 20         SEP #$20                  
CODE_2AA7DA:        A6 00         LDX $00                   
CODE_2AA7DC:        A5 D8         LDA $D8                   
CODE_2AA7DE:        85 DA         STA $DA                   
CODE_2AA7E0:        A9 13         LDA #$13                  
CODE_2AA7E2:        85 02         STA $02                   
CODE_2AA7E4:        A0 03 00      LDY #$0003                
CODE_2AA7E7:        20 79 A8      JSR CODE_2AA879           
CODE_2AA7EA:        20 D9 8C      JSR CODE_2A8CD9           
CODE_2AA7ED:        C6 DA         DEC $DA                   
CODE_2AA7EF:        20 6E A8      JSR CODE_2AA86E           
CODE_2AA7F2:        A9 09         LDA #$09                  
CODE_2AA7F4:        20 D9 8C      JSR CODE_2A8CD9           
CODE_2AA7F7:        C6 DA         DEC $DA                   
CODE_2AA7F9:        A9 11         LDA #$11                  
CODE_2AA7FB:        85 02         STA $02                   
CODE_2AA7FD:        20 61 A8      JSR CODE_2AA861           
CODE_2AA800:        20 6E A8      JSR CODE_2AA86E           
CODE_2AA803:        A9 24         LDA #$24                  
CODE_2AA805:        20 D9 8C      JSR CODE_2A8CD9           
CODE_2AA808:        C2 20         REP #$20                  
CODE_2AA80A:        E6 00         INC $00                   
CODE_2AA80C:        E2 20         SEP #$20                  
CODE_2AA80E:        A6 00         LDX $00                   
CODE_2AA810:        A5 D8         LDA $D8                   
CODE_2AA812:        85 DA         STA $DA                   
CODE_2AA814:        A9 14         LDA #$14                  
CODE_2AA816:        85 02         STA $02                   
CODE_2AA818:        A0 04 00      LDY #$0004                
CODE_2AA81B:        20 79 A8      JSR CODE_2AA879           
CODE_2AA81E:        20 D9 8C      JSR CODE_2A8CD9           
CODE_2AA821:        C6 DA         DEC $DA                   
CODE_2AA823:        20 6E A8      JSR CODE_2AA86E           
CODE_2AA826:        A9 06         LDA #$06                  
CODE_2AA828:        85 02         STA $02                   
CODE_2AA82A:        A0 0A 00      LDY #$000A                
CODE_2AA82D:        20 8F A8      JSR CODE_2AA88F           
CODE_2AA830:        BF 00 00 7F   LDA $7F0000,x             
CODE_2AA834:        C9 14         CMP #$14                  
CODE_2AA836:        D0 03         BNE CODE_2AA83B           
CODE_2AA838:        A0 1B 00      LDY #$001B                
CODE_2AA83B:        98            TYA                       
CODE_2AA83C:        20 D9 8C      JSR CODE_2A8CD9           
CODE_2AA83F:        C6 DA         DEC $DA                   
CODE_2AA841:        A9 12         LDA #$12                  
CODE_2AA843:        85 02         STA $02                   
CODE_2AA845:        20 61 A8      JSR CODE_2AA861           
CODE_2AA848:        20 6E A8      JSR CODE_2AA86E           
CODE_2AA84B:        A9 25         LDA #$25                  
CODE_2AA84D:        20 D9 8C      JSR CODE_2A8CD9           
CODE_2AA850:        E8            INX                       
CODE_2AA851:        BF 00 00 7F   LDA $7F0000,x             
CODE_2AA855:        C9 2A         CMP #$2A                  
CODE_2AA857:        D0 05         BNE CODE_2AA85E           
CODE_2AA859:        A9 2C         LDA #$2C                  
CODE_2AA85B:        20 D9 8C      JSR CODE_2A8CD9           
CODE_2AA85E:        E2 10         SEP #$10                  
CODE_2AA860:        60            RTS                       

CODE_2AA861:        20 6E A8      JSR CODE_2AA86E           
CODE_2AA864:        A5 02         LDA $02                   
CODE_2AA866:        20 D9 8C      JSR CODE_2A8CD9           
CODE_2AA869:        C6 DA         DEC $DA                   
CODE_2AA86B:        D0 F4         BNE CODE_2AA861           
CODE_2AA86D:        60            RTS                       

CODE_2AA86E:        C2 20         REP #$20                  
CODE_2AA870:        8A            TXA                       
CODE_2AA871:        18            CLC                       
CODE_2AA872:        69 10 00      ADC #$0010                
CODE_2AA875:        AA            TAX                       
CODE_2AA876:        E2 20         SEP #$20                  
CODE_2AA878:        60            RTS                       

CODE_2AA879:        BF 00 00 7F   LDA $7F0000,x             
CODE_2AA87D:        F0 0E         BEQ CODE_2AA88D           
CODE_2AA87F:        C5 02         CMP $02                   
CODE_2AA881:        F0 05         BEQ CODE_2AA888           
CODE_2AA883:        98            TYA                       
CODE_2AA884:        18            CLC                       
CODE_2AA885:        69 08         ADC #$08                  
CODE_2AA887:        A8            TAY                       
CODE_2AA888:        98            TYA                       
CODE_2AA889:        18            CLC                       
CODE_2AA88A:        69 0C         ADC #$0C                  
CODE_2AA88C:        A8            TAY                       
CODE_2AA88D:        98            TYA                       
CODE_2AA88E:        60            RTS                       

CODE_2AA88F:        BF 00 00 7F   LDA $7F0000,x             
CODE_2AA893:        F0 0E         BEQ CODE_2AA8A3           
CODE_2AA895:        C5 02         CMP $02                   
CODE_2AA897:        F0 05         BEQ CODE_2AA89E           
CODE_2AA899:        98            TYA                       
CODE_2AA89A:        18            CLC                       
CODE_2AA89B:        69 02         ADC #$02                  
CODE_2AA89D:        A8            TAY                       
CODE_2AA89E:        98            TYA                       
CODE_2AA89F:        18            CLC                       
CODE_2AA8A0:        69 13         ADC #$13                  
CODE_2AA8A2:        A8            TAY                       
CODE_2AA8A3:        98            TYA                       
CODE_2AA8A4:        60            RTS                       

CODE_2AA8A5:        C2 10         REP #$10                  
CODE_2AA8A7:        A6 00         LDX $00                   
CODE_2AA8A9:        BF FF FF 7E   LDA $7EFFFF,x             
CODE_2AA8AD:        C9 25         CMP #$25                  
CODE_2AA8AF:        F0 04         BEQ CODE_2AA8B5           
CODE_2AA8B1:        A9 2A         LDA #$2A                  
CODE_2AA8B3:        80 02         BRA CODE_2AA8B7           

CODE_2AA8B5:        A9 2C         LDA #$2C                  
CODE_2AA8B7:        20 D9 8C      JSR CODE_2A8CD9           
CODE_2AA8BA:        E8            INX                       
CODE_2AA8BB:        A9 2A         LDA #$2A                  
CODE_2AA8BD:        20 D9 8C      JSR CODE_2A8CD9           
CODE_2AA8C0:        E8            INX                       
CODE_2AA8C1:        BF 01 00 7F   LDA $7F0001,x             
CODE_2AA8C5:        C9 22         CMP #$22                  
CODE_2AA8C7:        F0 04         BEQ CODE_2AA8CD           
CODE_2AA8C9:        A9 2A         LDA #$2A                  
CODE_2AA8CB:        80 02         BRA CODE_2AA8CF           

CODE_2AA8CD:        A9 2B         LDA #$2B                  
CODE_2AA8CF:        20 D9 8C      JSR CODE_2A8CD9           
CODE_2AA8D2:        E2 10         SEP #$10                  
CODE_2AA8D4:        60            RTS                       

CODE_2AA8D5:        C2 10         REP #$10                  
CODE_2AA8D7:        A6 00         LDX $00                   
CODE_2AA8D9:        BF 00 00 7F   LDA $7F0000,x             
CODE_2AA8DD:        C9 27         CMP #$27                  
CODE_2AA8DF:        F0 08         BEQ CODE_2AA8E9           
CODE_2AA8E1:        C9 28         CMP #$28                  
CODE_2AA8E3:        D0 09         BNE CODE_2AA8EE           
CODE_2AA8E5:        A9 21         LDA #$21                  
CODE_2AA8E7:        80 02         BRA CODE_2AA8EB           

CODE_2AA8E9:        A9 29         LDA #$29                  
CODE_2AA8EB:        20 D9 8C      JSR CODE_2A8CD9           
CODE_2AA8EE:        E8            INX                       
CODE_2AA8EF:        8A            TXA                       
CODE_2AA8F0:        29 0F         AND #$0F                  
CODE_2AA8F2:        D0 0A         BNE CODE_2AA8FE           
CODE_2AA8F4:        C2 20         REP #$20                  
CODE_2AA8F6:        8A            TXA                       
CODE_2AA8F7:        18            CLC                       
CODE_2AA8F8:        69 A0 01      ADC #$01A0                
CODE_2AA8FB:        AA            TAX                       
CODE_2AA8FC:        E2 20         SEP #$20                  
CODE_2AA8FE:        A5 D8         LDA $D8                   
CODE_2AA900:        F0 14         BEQ CODE_2AA916           
CODE_2AA902:        C6 D8         DEC $D8                   
CODE_2AA904:        BF 00 00 7F   LDA $7F0000,x             
CODE_2AA908:        C9 28         CMP #$28                  
CODE_2AA90A:        D0 05         BNE CODE_2AA911           
CODE_2AA90C:        A9 2D         LDA #$2D                  
CODE_2AA90E:        20 D9 8C      JSR CODE_2A8CD9           
CODE_2AA911:        E8            INX                       
CODE_2AA912:        C6 D8         DEC $D8                   
CODE_2AA914:        D0 EE         BNE CODE_2AA904           
CODE_2AA916:        BF 00 00 7F   LDA $7F0000,x             
CODE_2AA91A:        C9 28         CMP #$28                  
CODE_2AA91C:        D0 05         BNE CODE_2AA923           
CODE_2AA91E:        A9 20         LDA #$20                  
CODE_2AA920:        20 D9 8C      JSR CODE_2A8CD9           
CODE_2AA923:        E2 10         SEP #$10                  
CODE_2AA925:        60            RTS                       

CODE_2AA926:        A9 2F         LDA #$2F                  
CODE_2AA928:        85 02         STA $02                   
CODE_2AA92A:        80 10         BRA CODE_2AA93C           

CODE_2AA92C:        A9 30         LDA #$30                  
CODE_2AA92E:        85 02         STA $02                   
CODE_2AA930:        80 0A         BRA CODE_2AA93C           

CODE_2AA932:        A9 31         LDA #$31                  
CODE_2AA934:        85 02         STA $02                   
CODE_2AA936:        80 04         BRA CODE_2AA93C           

CODE_2AA938:        A9 32         LDA #$32                  
CODE_2AA93A:        85 02         STA $02                   
CODE_2AA93C:        C2 10         REP #$10                  
CODE_2AA93E:        A6 00         LDX $00                   
CODE_2AA940:        A5 02         LDA $02                   
CODE_2AA942:        20 D9 8C      JSR CODE_2A8CD9           
CODE_2AA945:        E2 10         SEP #$10                  
CODE_2AA947:        60            RTS                       

CODE_2AA948:        E2 10         SEP #$10                  
CODE_2AA94A:        A0 00         LDY #$00                  
CODE_2AA94C:        B7 2B         LDA [$2B],y               
CODE_2AA94E:        C9 FF         CMP #$FF                  
CODE_2AA950:        F0 08         BEQ CODE_2AA95A           
CODE_2AA952:        20 54 8E      JSR CODE_2A8E54           
CODE_2AA955:        FC 5C A9      JSR (PNTR_2AA95C,x)             
CODE_2AA958:        80 F0         BRA CODE_2AA94A           

CODE_2AA95A:        AB            PLB                       
CODE_2AA95B:        6B            RTL                       

PNTR_2AA95C:        dw CODE_2AA966                   
                    dw CODE_2AA9B7          
                    dw CODE_2AA9F6                
                    dw CODE_2AAA12                 
                    dw CODE_2AAA57

               
CODE_2AA966:        C2 30         REP #$30                  
CODE_2AA968:        A9 AF A9      LDA #$A9AF                
CODE_2AA96B:        85 02         STA $02                   
CODE_2AA96D:        A9 B3 A9      LDA #$A9B3                
CODE_2AA970:        85 04         STA $04                   
CODE_2AA972:        E2 20         SEP #$20                  
CODE_2AA974:        20 7A A9      JSR CODE_2AA97A           
CODE_2AA977:        E2 10         SEP #$10                  
CODE_2AA979:        60            RTS                       

CODE_2AA97A:        A6 00         LDX $00                   ;
CODE_2AA97C:        A0 00 00      LDY #$0000                ;
CODE_2AA97F:        B1 02         LDA ($02),y               ;
CODE_2AA981:        20 D9 8C      JSR CODE_2A8CD9           ;
CODE_2AA984:        B1 04         LDA ($04),y               ;
CODE_2AA986:        20 EE 8C      JSR CODE_2A8CEE           ;
CODE_2AA989:        E8            INX                       ;
CODE_2AA98A:        8A            TXA                       ;
CODE_2AA98B:        29 0F         AND #$0F                  ;
CODE_2AA98D:        D0 15         BNE CODE_2AA9A4           ;
CODE_2AA98F:        C2 20         REP #$20                  ;
CODE_2AA991:        8A            TXA                       ;
CODE_2AA992:        C9 B0 01      CMP #$01B0                ;
CODE_2AA995:        B0 06         BCS CODE_2AA99D           ;
CODE_2AA997:        18            CLC                       ;
CODE_2AA998:        69 A0 01      ADC #$01A0                ;
CODE_2AA99B:        80 04         BRA CODE_2AA9A1           ;

CODE_2AA99D:        38            SEC                       
CODE_2AA99E:        E9 C0 01      SBC #$01C0                
CODE_2AA9A1:        AA            TAX                       
CODE_2AA9A2:        E2 20         SEP #$20                  
CODE_2AA9A4:        C8            INY                       
CODE_2AA9A5:        98            TYA                       
CODE_2AA9A6:        29 03         AND #$03                  
CODE_2AA9A8:        D0 D5         BNE CODE_2AA97F           
CODE_2AA9AA:        C6 D8         DEC $D8                   
CODE_2AA9AC:        D0 CE         BNE CODE_2AA97C           
CODE_2AA9AE:        60            RTS                       

DATA_2AA9AF:        db $04,$05,$06,$07

DATA_2AA9B3:        db $02,$03,$00,$01
                 
CODE_2AA9B7:        C2 30         REP #$30                  
CODE_2AA9B9:        A9 EE A9      LDA #$A9EE                
CODE_2AA9BC:        85 02         STA $02                   
CODE_2AA9BE:        A9 F2 A9      LDA #$A9F2                
CODE_2AA9C1:        85 04         STA $04                   
CODE_2AA9C3:        E2 20         SEP #$20                  
CODE_2AA9C5:        20 CB A9      JSR CODE_2AA9CB           
CODE_2AA9C8:        E2 10         SEP #$10                  
CODE_2AA9CA:        60            RTS                       

CODE_2AA9CB:        A0 00 00      LDY #$0000                ;
CODE_2AA9CE:        A6 00         LDX $00                   ;
CODE_2AA9D0:        B1 02         LDA ($02),y               ;
CODE_2AA9D2:        20 D9 8C      JSR CODE_2A8CD9           ;
CODE_2AA9D5:        E8            INX                       ;
CODE_2AA9D6:        B1 04         LDA ($04),y               ;
CODE_2AA9D8:        20 D9 8C      JSR CODE_2A8CD9           ;
CODE_2AA9DB:        C2 20         REP #$20                  ;
CODE_2AA9DD:        A5 00         LDA $00                   ;
CODE_2AA9DF:        18            CLC                       ;
CODE_2AA9E0:        69 10 00      ADC #$0010                ;
CODE_2AA9E3:        85 00         STA $00                   ;
CODE_2AA9E5:        E2 20         SEP #$20                  ;
CODE_2AA9E7:        C8            INY                       ;
CODE_2AA9E8:        98            TYA                       ;
CODE_2AA9E9:        29 03         AND #$03                  ;
CODE_2AA9EB:        D0 E1         BNE CODE_2AA9CE           ;
CODE_2AA9ED:        60            RTS                       ;

DATA_2AA9EE:        db $04,$08,$08,$02

DATA_2AA9F2:        db $07,$09,$09,$01

CODE_2AA9F6:        C2 10         REP #$10                  ;
CODE_2AA9F8:        A6 00         LDX $00                   ;
CODE_2AA9FA:        A9 04         LDA #$04                  ;
CODE_2AA9FC:        20 D9 8C      JSR CODE_2A8CD9           ;
CODE_2AA9FF:        A9 02         LDA #$02                  ;
CODE_2AAA01:        20 EE 8C      JSR CODE_2A8CEE           ;
CODE_2AAA04:        E8            INX                       ;
CODE_2AAA05:        A9 07         LDA #$07                  ;
CODE_2AAA07:        20 D9 8C      JSR CODE_2A8CD9           ;
CODE_2AAA0A:        A9 01         LDA #$01                  ;
CODE_2AAA0C:        20 EE 8C      JSR CODE_2A8CEE           ;
CODE_2AAA0F:        E2 10         SEP #$10                  ;
CODE_2AAA11:        60            RTS                       ;                       

CODE_2AAA12:        C2 30         REP #$30                  
CODE_2AAA14:        A5 D8         LDA $D8                   
CODE_2AAA16:        85 DA         STA $DA                   
CODE_2AAA18:        A9 47 AA      LDA #$AA47                
CODE_2AAA1B:        85 02         STA $02                   
CODE_2AAA1D:        A9 4B AA      LDA #$AA4B                
CODE_2AAA20:        85 04         STA $04                   
CODE_2AAA22:        E2 20         SEP #$20                  
CODE_2AAA24:        20 7A A9      JSR CODE_2AA97A           
CODE_2AAA27:        C2 20         REP #$20                  
CODE_2AAA29:        A5 DA         LDA $DA                   
CODE_2AAA2B:        85 D8         STA $D8                   
CODE_2AAA2D:        A5 00         LDA $00                   
CODE_2AAA2F:        18            CLC                       
CODE_2AAA30:        69 20 00      ADC #$0020                
CODE_2AAA33:        85 00         STA $00                   
CODE_2AAA35:        A9 4F AA      LDA #$AA4F                
CODE_2AAA38:        85 02         STA $02                   
CODE_2AAA3A:        A9 53 AA      LDA #$AA53                
CODE_2AAA3D:        85 04         STA $04                   
CODE_2AAA3F:        E2 20         SEP #$20                  
CODE_2AAA41:        20 7A A9      JSR CODE_2AA97A           
CODE_2AAA44:        E2 10         SEP #$10                  
CODE_2AAA46:        60            RTS                       

DATA_2AAA47:        db $04,$05,$06,$07

DATA_2AAA4B:        db $0E,$0F,$10,$11

DATA_2AAA4F:        db $0E,$0F,$10,$11

DATA_2AAA53:        db $02,$03,$00,$01

CODE_2AAA57:        C2 30         REP #$30                  ;
CODE_2AAA59:        A9 87 AA      LDA #$AA87                ;
CODE_2AAA5C:        85 02         STA $02                   ;
CODE_2AAA5E:        A9 8B AA      LDA #$AA8B                ;
CODE_2AAA61:        85 04         STA $04                   ;
CODE_2AAA63:        A5 00         LDA $00                   
CODE_2AAA65:        48            PHA                       
CODE_2AAA66:        E2 20         SEP #$20                  
CODE_2AAA68:        20 CB A9      JSR CODE_2AA9CB           
CODE_2AAA6B:        C2 20         REP #$20                  
CODE_2AAA6D:        68            PLA                       
CODE_2AAA6E:        1A            INC A                     
CODE_2AAA6F:        1A            INC A                     
CODE_2AAA70:        85 00         STA $00                   
CODE_2AAA72:        29 0F 00      AND #$000F                
CODE_2AAA75:        D0 08         BNE CODE_2AAA7F           
CODE_2AAA77:        A5 00         LDA $00                   
CODE_2AAA79:        18            CLC                       
CODE_2AAA7A:        69 A0 01      ADC #$01A0                
CODE_2AAA7D:        85 00         STA $00                   
CODE_2AAA7F:        E2 20         SEP #$20                  
CODE_2AAA81:        20 CB A9      JSR CODE_2AA9CB           
CODE_2AAA84:        E2 10         SEP #$10                  
CODE_2AAA86:        60            RTS                       

DATA_2AAA87:        db $0A,$0C,$0D,$0A

DATA_2AAA8B:        db $0B,$0C,$0D,$0B
                
CODE_2AAA8F:        E2 10         SEP #$10                  
CODE_2AAA91:        A2 10         LDX #$10                  
CODE_2AAA93:        A9 1B         LDA #$1B                  
CODE_2AAA95:        85 00         STA $00                   
CODE_2AAA97:        20 30 99      JSR CODE_2A9930           
CODE_2AAA9A:        A9 1E         LDA #$1E                  
CODE_2AAA9C:        85 00         STA $00                   
CODE_2AAA9E:        20 30 99      JSR CODE_2A9930           
CODE_2AAAA1:        A2 50         LDX #$50                  
CODE_2AAAA3:        A9 3B         LDA #$3B                  
CODE_2AAAA5:        85 00         STA $00                   
CODE_2AAAA7:        20 30 99      JSR CODE_2A9930           
CODE_2AAAAA:        20 30 99      JSR CODE_2A9930           
CODE_2AAAAD:        20 30 99      JSR CODE_2A9930           
CODE_2AAAB0:        20 30 99      JSR CODE_2A9930           
CODE_2AAAB3:        20 30 99      JSR CODE_2A9930           
CODE_2AAAB6:        A0 00         LDY #$00                  
CODE_2AAAB8:        B7 2B         LDA [$2B],y               
CODE_2AAABA:        C9 FF         CMP #$FF                  
CODE_2AAABC:        F0 08         BEQ CODE_2AAAC6           
CODE_2AAABE:        20 54 8E      JSR CODE_2A8E54           
CODE_2AAAC1:        FC C8 AA      JSR (PNTR_2AAAC8,x)             
CODE_2AAAC4:        80 F0         BRA CODE_2AAAB6           

CODE_2AAAC6:        AB            PLB                       
CODE_2AAAC7:        6B            RTL                       

PNTR_2AAAC8:        dw CODE_2AAACE
                    dw CODE_2AAB8D                      
                    dw CODE_2AABB1   

CODE_2AAACE:        A9 2A         LDA #$2A                  
CODE_2AAAD0:        85 08         STA $08                   
CODE_2AAAD2:        85 0B         STA $0B                   
CODE_2AAAD4:        85 0E         STA $0E                   
CODE_2AAAD6:        C2 30         REP #$30                  
CODE_2AAAD8:        A6 D8         LDX $D8                   
CODE_2AAADA:        BD 0D AB      LDA.w DATA_2AAB0D,x               
CODE_2AAADD:        85 06         STA $06                   
CODE_2AAADF:        BD 19 AB      LDA.w DATA_2AAB19,x               
CODE_2AAAE2:        85 09         STA $09                   
CODE_2AAAE4:        BD 25 AB      LDA.w DATA_2AAB25,x               
CODE_2AAAE7:        85 0C         STA $0C                   
CODE_2AAAE9:        64 04         STZ $04                   
CODE_2AAAEB:        E2 20         SEP #$20                  
CODE_2AAAED:        BD 01 AB      LDA.w DATA_2AAB01,x               
CODE_2AAAF0:        85 0F         STA $0F                   
CODE_2AAAF2:        A6 00         LDX $00                   
CODE_2AAAF4:        A0 00 00      LDY #$0000                
CODE_2AAAF7:        A7 0C         LDA [$0C]                 
CODE_2AAAF9:        85 02         STA $02                   
CODE_2AAAFB:        20 A7 8F      JSR CODE_2A8FA7           
CODE_2AAAFE:        E2 10         SEP #$10                  
CODE_2AAB00:        60            RTS                       

DATA_2AAB01:        db $04,$00,$02,$00,$02,$00,$02,$00 ;
                    db $02,$00,$03,$00 ;

DATA_2AAB0D:        db $31,$AB,$3E,$AB,$46,$AB,$52,$AB ;
                    db $56,$AB,$63,$AB ;

DATA_2AAB19:        db $72,$AB,$78,$AB,$78,$AB,$78,$AB ;
                    db $78,$AB,$7A,$AB ;

DATA_2AAB25:        db $7E,$AB,$82,$AB,$84,$AB,$86,$AB ;
                    db $88,$AB,$8A,$AB,$03,$04,$0C,$0D ;
                    db $0E,$0C,$12,$16,$10,$11,$17,$1C ;
                    db $1A,$0F,$03,$04,$06,$18,$0C,$12 ;
                    db $13,$16,$06,$19,$03,$04,$06,$1C ;
                    db $1D,$1A,$1B,$1C,$1D,$10,$11,$05 ;
                    db $1A,$02,$05,$03,$04,$06,$07,$0B ;
                    db $0C,$0C,$12,$13,$14,$15,$01,$00 ;
                    db $02,$02,$05,$08,$09,$0A,$0B,$0B ;
                    db $0C,$0C,$0C,$0C,$0C,$10,$00,$10 ;
                    db $00,$12,$00,$10,$00,$0D,$00,$10 ;
                    db $00,$02,$03,$06,$02,$04,$04,$06 ;
                    db $06,$03,$01,$06,$07,$03,$06,$06 ;

CODE_2AAB8D:        C2 10         REP #$10                  
CODE_2AAB8F:        A6 00         LDX $00                   
CODE_2AAB91:        A9 2B         LDA #$2B                  
CODE_2AAB93:        85 02         STA $02                   
CODE_2AAB95:        A9 37         LDA #$37                  
CODE_2AAB97:        85 03         STA $03                   
CODE_2AAB99:        A5 02         LDA $02                   
CODE_2AAB9B:        20 D9 8C      JSR CODE_2A8CD9           
CODE_2AAB9E:        A5 03         LDA $03                   
CODE_2AABA0:        20 EE 8C      JSR CODE_2A8CEE           
CODE_2AABA3:        C9 3A         CMP #$3A                  
CODE_2AABA5:        F0 07         BEQ CODE_2AABAE           
CODE_2AABA7:        E8            INX                       
CODE_2AABA8:        E6 02         INC $02                   
CODE_2AABAA:        E6 03         INC $03                   
CODE_2AABAC:        80 EB         BRA CODE_2AAB99           

CODE_2AABAE:        E2 10         SEP #$10                  
CODE_2AABB0:        60            RTS                       

CODE_2AABB1:        C2 10         REP #$10                  
CODE_2AABB3:        A6 00         LDX $00                   
CODE_2AABB5:        A0 04 00      LDY #$0004                
CODE_2AABB8:        A9 1F         LDA #$1F                  
CODE_2AABBA:        85 02         STA $02                   
CODE_2AABBC:        20 EA AB      JSR CODE_2AABEA           
CODE_2AABBF:        A0 08 00      LDY #$0008                
CODE_2AABC2:        C2 20         REP #$20                  
CODE_2AABC4:        A5 00         LDA $00                   
CODE_2AABC6:        18            CLC                       
CODE_2AABC7:        69 0E 00      ADC #$000E                
CODE_2AABCA:        85 00         STA $00                   
CODE_2AABCC:        AA            TAX                       
CODE_2AABCD:        E2 20         SEP #$20                  
CODE_2AABCF:        20 EA AB      JSR CODE_2AABEA           
CODE_2AABD2:        A0 08 00      LDY #$0008                
CODE_2AABD5:        A9 2F         LDA #$2F                  
CODE_2AABD7:        85 02         STA $02                   
CODE_2AABD9:        C2 20         REP #$20                  
CODE_2AABDB:        A5 00         LDA $00                   
CODE_2AABDD:        18            CLC                       
CODE_2AABDE:        69 10 00      ADC #$0010                
CODE_2AABE1:        AA            TAX                       
CODE_2AABE2:        E2 20         SEP #$20                  
CODE_2AABE4:        20 EA AB      JSR CODE_2AABEA           
CODE_2AABE7:        E2 10         SEP #$10                  
CODE_2AABE9:        60            RTS                       

CODE_2AABEA:        A5 02         LDA $02                   
CODE_2AABEC:        20 D9 8C      JSR CODE_2A8CD9           
CODE_2AABEF:        E6 02         INC $02                   
CODE_2AABF1:        E8            INX                       
CODE_2AABF2:        8A            TXA                       
CODE_2AABF3:        29 0F         AND #$0F                  
CODE_2AABF5:        D0 0A         BNE CODE_2AAC01           
CODE_2AABF7:        C2 20         REP #$20                  
CODE_2AABF9:        8A            TXA                       
CODE_2AABFA:        38            SEC                       
CODE_2AABFB:        E9 C0 01      SBC #$01C0                
CODE_2AABFE:        AA            TAX                       
CODE_2AABFF:        E2 20         SEP #$20                  
CODE_2AAC01:        88            DEY                       
CODE_2AAC02:        D0 E6         BNE CODE_2AABEA           
CODE_2AAC04:        60            RTS                       

CODE_2AAC05:        E2 10         SEP #$10                  
CODE_2AAC07:        A9 00         LDA #$00                  
CODE_2AAC09:        85 00         STA $00                   
CODE_2AAC0B:        1A            INC A                     
CODE_2AAC0C:        85 01         STA $01                   
CODE_2AAC0E:        1A            INC A                     
CODE_2AAC0F:        85 02         STA $02                   
CODE_2AAC11:        1A            INC A                     
CODE_2AAC12:        85 03         STA $03                   
CODE_2AAC14:        A2 00         LDX #$00                  
CODE_2AAC16:        20 59 AC      JSR CODE_2AAC59           
CODE_2AAC19:        A9 04         LDA #$04                  
CODE_2AAC1B:        85 00         STA $00                   
CODE_2AAC1D:        1A            INC A                     
CODE_2AAC1E:        85 01         STA $01                   
CODE_2AAC20:        1A            INC A                     
CODE_2AAC21:        85 02         STA $02                   
CODE_2AAC23:        1A            INC A                     
CODE_2AAC24:        85 03         STA $03                   
CODE_2AAC26:        A2 10         LDX #$10                  
CODE_2AAC28:        20 59 AC      JSR CODE_2AAC59           
CODE_2AAC2B:        A9 08         LDA #$08                  
CODE_2AAC2D:        85 00         STA $00                   
CODE_2AAC2F:        1A            INC A                     
CODE_2AAC30:        85 01         STA $01                   
CODE_2AAC32:        1A            INC A                     
CODE_2AAC33:        85 02         STA $02                   
CODE_2AAC35:        1A            INC A                     
CODE_2AAC36:        85 03         STA $03                   
CODE_2AAC38:        A2 20         LDX #$20                  
CODE_2AAC3A:        20 59 AC      JSR CODE_2AAC59           
CODE_2AAC3D:        A9 0C         LDA #$0C                  
CODE_2AAC3F:        85 00         STA $00                   
CODE_2AAC41:        1A            INC A                     
CODE_2AAC42:        85 01         STA $01                   
CODE_2AAC44:        1A            INC A                     
CODE_2AAC45:        85 02         STA $02                   
CODE_2AAC47:        1A            INC A                     
CODE_2AAC48:        85 03         STA $03                   
CODE_2AAC4A:        A2 30         LDX #$30                  
CODE_2AAC4C:        20 59 AC      JSR CODE_2AAC59           
CODE_2AAC4F:        8A            TXA                       
CODE_2AAC50:        18            CLC                       
CODE_2AAC51:        69 30         ADC #$30                  
CODE_2AAC53:        AA            TAX                       
CODE_2AAC54:        20 8B AC      JSR CODE_2AAC8B           
CODE_2AAC57:        AB            PLB                       
CODE_2AAC58:        6B            RTL                       

CODE_2AAC59:        A5 00         LDA $00                   
CODE_2AAC5B:        20 03 8D      JSR CODE_2A8D03           
CODE_2AAC5E:        20 25 8D      JSR CODE_2A8D25           
CODE_2AAC61:        E8            INX                       
CODE_2AAC62:        A5 01         LDA $01                   
CODE_2AAC64:        20 03 8D      JSR CODE_2A8D03           
CODE_2AAC67:        20 25 8D      JSR CODE_2A8D25           
CODE_2AAC6A:        E8            INX                       
CODE_2AAC6B:        A5 02         LDA $02                   
CODE_2AAC6D:        20 03 8D      JSR CODE_2A8D03           
CODE_2AAC70:        20 25 8D      JSR CODE_2A8D25           
CODE_2AAC73:        E8            INX                       
CODE_2AAC74:        A5 03         LDA $03                   
CODE_2AAC76:        20 03 8D      JSR CODE_2A8D03           
CODE_2AAC79:        20 25 8D      JSR CODE_2A8D25           
CODE_2AAC7C:        E8            INX                       
CODE_2AAC7D:        8A            TXA                       
CODE_2AAC7E:        29 0F         AND #$0F                  
CODE_2AAC80:        D0 D7         BNE CODE_2AAC59           
CODE_2AAC82:        8A            TXA                       
CODE_2AAC83:        18            CLC                       
CODE_2AAC84:        69 30         ADC #$30                  
CODE_2AAC86:        AA            TAX                       
CODE_2AAC87:        E0 B0         CPX #$B0                  
CODE_2AAC89:        90 CE         BCC CODE_2AAC59           
CODE_2AAC8B:        A5 00         LDA $00                   
CODE_2AAC8D:        20 03 8D      JSR CODE_2A8D03           
CODE_2AAC90:        E8            INX                       
CODE_2AAC91:        A5 01         LDA $01                   
CODE_2AAC93:        20 03 8D      JSR CODE_2A8D03           
CODE_2AAC96:        E8            INX                       
CODE_2AAC97:        A5 02         LDA $02                   
CODE_2AAC99:        20 03 8D      JSR CODE_2A8D03           
CODE_2AAC9C:        E8            INX                       
CODE_2AAC9D:        A5 03         LDA $03                   
CODE_2AAC9F:        20 03 8D      JSR CODE_2A8D03           
CODE_2AACA2:        E8            INX                       
CODE_2AACA3:        8A            TXA                       
CODE_2AACA4:        29 0F         AND #$0F                  
CODE_2AACA6:        D0 E3         BNE CODE_2AAC8B           
CODE_2AACA8:        60            RTS                       

CODE_2AACA9:        E2 10         SEP #$10                  
CODE_2AACAB:        A2 D0         LDX #$D0                  
CODE_2AACAD:        A9 1B         LDA #$1B                  
CODE_2AACAF:        85 00         STA $00                   
CODE_2AACB1:        20 24 99      JSR CODE_2A9924           
CODE_2AACB4:        20 24 99      JSR CODE_2A9924           
CODE_2AACB7:        20 24 99      JSR CODE_2A9924           
CODE_2AACBA:        20 30 99      JSR CODE_2A9930           
CODE_2AACBD:        20 30 99      JSR CODE_2A9930           
CODE_2AACC0:        20 30 99      JSR CODE_2A9930           
CODE_2AACC3:        C2 10         REP #$10                  
CODE_2AACC5:        A0 00 00      LDY #$0000                
CODE_2AACC8:        A2 B0 00      LDX #$00B0                
CODE_2AACCB:        C2 20         REP #$20                  
CODE_2AACCD:        A9 A3 AD      LDA #$ADA3                
CODE_2AACD0:        85 00         STA $00                   
CODE_2AACD2:        E2 20         SEP #$20                  
CODE_2AACD4:        20 96 AD      JSR CODE_2AAD96           
CODE_2AACD7:        A2 E1 00      LDX #$00E1                
CODE_2AACDA:        A9 19         LDA #$19                  
CODE_2AACDC:        20 D9 8C      JSR CODE_2A8CD9           
CODE_2AACDF:        A2 F8 00      LDX #$00F8                
CODE_2AACE2:        20 D9 8C      JSR CODE_2A8CD9           
CODE_2AACE5:        E8            INX                       
CODE_2AACE6:        20 D9 8C      JSR CODE_2A8CD9           
CODE_2AACE9:        A2 96 02      LDX #$0296                
CODE_2AACEC:        20 D9 8C      JSR CODE_2A8CD9           
CODE_2AACEF:        A2 9A 02      LDX #$029A                
CODE_2AACF2:        20 D9 8C      JSR CODE_2A8CD9           
CODE_2AACF5:        E8            INX                       
CODE_2AACF6:        20 D9 8C      JSR CODE_2A8CD9           
CODE_2AACF9:        A2 A2 02      LDX #$02A2                
CODE_2AACFC:        20 D9 8C      JSR CODE_2A8CD9           
CODE_2AACFF:        A0 00 00      LDY #$0000                
CODE_2AAD02:        A2 E5 00      LDX #$00E5                
CODE_2AAD05:        B9 D3 AD      LDA.w DATA_2AADD3,y               
CODE_2AAD08:        20 D9 8C      JSR CODE_2A8CD9           
CODE_2AAD0B:        E8            INX                       
CODE_2AAD0C:        C8            INY                       
CODE_2AAD0D:        C0 08 00      CPY #$0008                
CODE_2AAD10:        D0 F3         BNE CODE_2AAD05           
CODE_2AAD12:        A0 00 00      LDY #$0000                
CODE_2AAD15:        A2 60 02      LDX #$0260                
CODE_2AAD18:        C2 20         REP #$20                  
CODE_2AAD1A:        A9 DB AD      LDA #$ADDB                
CODE_2AAD1D:        85 00         STA $00                   
CODE_2AAD1F:        E2 20         SEP #$20                  
CODE_2AAD21:        20 96 AD      JSR CODE_2AAD96           
CODE_2AAD24:        A0 00 00      LDY #$0000                
CODE_2AAD27:        A2 91 02      LDX #$0291                
CODE_2AAD2A:        B9 0B AE      LDA.w DATA_2AAE0B,y               
CODE_2AAD2D:        20 D9 8C      JSR CODE_2A8CD9           
CODE_2AAD30:        E8            INX                       
CODE_2AAD31:        C8            INY                       
CODE_2AAD32:        C0 04 00      CPY #$0004                
CODE_2AAD35:        D0 F3         BNE CODE_2AAD2A           
CODE_2AAD37:        E2 10         SEP #$10                  
CODE_2AAD39:        A2 30         LDX #$30                  
CODE_2AAD3B:        A9 24         LDA #$24                  
CODE_2AAD3D:        85 00         STA $00                   
CODE_2AAD3F:        20 30 99      JSR CODE_2A9930           
CODE_2AAD42:        20 30 99      JSR CODE_2A9930           
CODE_2AAD45:        20 30 99      JSR CODE_2A9930           
CODE_2AAD48:        A9 2E         LDA #$2E                  
CODE_2AAD4A:        85 00         STA $00                   
CODE_2AAD4C:        20 30 99      JSR CODE_2A9930           
CODE_2AAD4F:        A9 29         LDA #$29                  
CODE_2AAD51:        85 00         STA $00                   
CODE_2AAD53:        20 30 99      JSR CODE_2A9930           
CODE_2AAD56:        A9 26         LDA #$26                  
CODE_2AAD58:        85 00         STA $00                   
CODE_2AAD5A:        20 30 99      JSR CODE_2A9930           
CODE_2AAD5D:        A0 00         LDY #$00                  
CODE_2AAD5F:        B7 2B         LDA [$2B],y               
CODE_2AAD61:        C9 FF         CMP #$FF                  
CODE_2AAD63:        F0 08         BEQ CODE_2AAD6D           
CODE_2AAD65:        20 54 8E      JSR CODE_2A8E54           
CODE_2AAD68:        20 0F AE      JSR CODE_2AAE0F           
CODE_2AAD6B:        80 F0         BRA CODE_2AAD5D           

CODE_2AAD6D:        AD 50 03      LDA $0350                 
CODE_2AAD70:        C9 1E         CMP #$1E                  
CODE_2AAD72:        D0 20         BNE CODE_2AAD94           
CODE_2AAD74:        A9 00         LDA #$00                  
CODE_2AAD76:        EB            XBA                       
CODE_2AAD77:        C2 10         REP #$10                  
CODE_2AAD79:        A0 10 01      LDY #$0110                
CODE_2AAD7C:        A2 20 01      LDX #$0120                
CODE_2AAD7F:        A9 EF         LDA #$EF                  
CODE_2AAD81:        54 7F 7F      MVN $7F, $7F                 
CODE_2AAD84:        A9 00         LDA #$00                  
CODE_2AAD86:        EB            XBA                       
CODE_2AAD87:        A0 C0 02      LDY #$02C0                
CODE_2AAD8A:        A2 D0 02      LDX #$02D0                
CODE_2AAD8D:        A9 EF         LDA #$EF                  
CODE_2AAD8F:        54 7F 7F      MVN $7F, $7F                 
CODE_2AAD92:        E2 10         SEP #$10                  
CODE_2AAD94:        AB            PLB                       
CODE_2AAD95:        6B            RTL                       

CODE_2AAD96:        B1 00         LDA ($00),y               ;
CODE_2AAD98:        20 D9 8C      JSR CODE_2A8CD9           ;
CODE_2AAD9B:        E8            INX                       ;
CODE_2AAD9C:        C8            INY                       ;
CODE_2AAD9D:        C0 30 00      CPY #$0030                ;
CODE_2AADA0:        D0 F4         BNE CODE_2AAD96           ;
CODE_2AADA2:        60            RTS                       ;

DATA_2AADA3:        db $08,$08,$09,$00,$04,$09,$00,$00 ;
                    db $00,$00,$04,$08,$09,$00,$04,$08 ;
                    db $0F,$10,$11,$01,$0B,$11,$12,$08 ;
                    db $03,$01,$0B,$10,$11,$01,$0B,$10 ;
                    db $17,$0E,$15,$1A,$13,$0E,$0D,$10 ;
                    db $06,$06,$06,$06,$0C,$15,$1A,$1A ;

DATA_2AADD3:        db $19,$1D,$13,$0E,$0E,$15,$1A,$16 ;
                    db $03,$01,$02,$00,$04,$03,$01,$05 ;
                    db $06,$06,$06,$06,$06,$06,$06,$07 ;
                    db $06,$06,$0A,$01,$0B,$06,$06,$06 ;
                    db $06,$06,$06,$06,$06,$06,$0C,$0E ;
                    db $13,$0D,$06,$06,$14,$13,$0E,$15 ;
                    db $16,$17,$0E,$0E,$15,$13,$18,$19 ;

DATA_2AAE0B:        db $17,$0E,$15,$1C ;     
          
CODE_2AAE0F:        C2 10         REP #$10                  
CODE_2AAE11:        E6 00         INC $00                   
CODE_2AAE13:        A6 00         LDX $00                   
CODE_2AAE15:        A0 00 00      LDY #$0000                
CODE_2AAE18:        B9 71 AE      LDA.w DATA_2AAE71,y               
CODE_2AAE1B:        20 D9 8C      JSR CODE_2A8CD9           
CODE_2AAE1E:        20 80 AE      JSR CODE_2AAE80           
CODE_2AAE21:        C0 05 00      CPY #$0005                
CODE_2AAE24:        D0 F2         BNE CODE_2AAE18           
CODE_2AAE26:        E6 00         INC $00                   
CODE_2AAE28:        A6 00         LDX $00                   
CODE_2AAE2A:        C6 D8         DEC $D8                   
CODE_2AAE2C:        A0 00 00      LDY #$0000                
CODE_2AAE2F:        B9 76 AE      LDA.w DATA_2AAE76,y               
CODE_2AAE32:        20 D9 8C      JSR CODE_2A8CD9           
CODE_2AAE35:        20 80 AE      JSR CODE_2AAE80           
CODE_2AAE38:        C0 05 00      CPY #$0005                
CODE_2AAE3B:        D0 F2         BNE CODE_2AAE2F           
CODE_2AAE3D:        E6 00         INC $00                   
CODE_2AAE3F:        A5 00         LDA $00                   
CODE_2AAE41:        29 0F         AND #$0F                  
CODE_2AAE43:        D0 0C         BNE CODE_2AAE51           
CODE_2AAE45:        C2 20         REP #$20                  
CODE_2AAE47:        A5 00         LDA $00                   
CODE_2AAE49:        38            SEC                       
CODE_2AAE4A:        E9 C0 01      SBC #$01C0                
CODE_2AAE4D:        85 00         STA $00                   
CODE_2AAE4F:        E2 20         SEP #$20                  
CODE_2AAE51:        E2 20         SEP #$20                  
CODE_2AAE53:        A6 00         LDX $00                   
CODE_2AAE55:        C6 D8         DEC $D8                   
CODE_2AAE57:        D0 D3         BNE CODE_2AAE2C           
CODE_2AAE59:        A0 00 00      LDY #$0000                
CODE_2AAE5C:        B9 7B AE      LDA.w DATA_2AAE7B,y               
CODE_2AAE5F:        20 D9 8C      JSR CODE_2A8CD9           
CODE_2AAE62:        20 80 AE      JSR CODE_2AAE80           
CODE_2AAE65:        C0 05 00      CPY #$0005                
CODE_2AAE68:        D0 F2         BNE CODE_2AAE5C           
CODE_2AAE6A:        E6 00         INC $00                   
CODE_2AAE6C:        A6 00         LDX $00                   
CODE_2AAE6E:        E2 10         SEP #$10                  
CODE_2AAE70:        60            RTS                       

DATA_2AAE71:        db $1E,$21,$25,$28,$2C ;

DATA_2AAE76:        db $1E,$22,$26,$29,$26 ;

DATA_2AAE7B:        db $1E,$23,$27,$2A,$2D ;

CODE_2AAE80:        C2 20         REP #$20                  ;
CODE_2AAE82:        8A            TXA                       ;
CODE_2AAE83:        18            CLC                       
CODE_2AAE84:        69 10         ADC #$0010                  
CODE_2AAE87:        AA            TAX
CODE_2AAE88:        E2 20         SEP #$20                  
CODE_2AAE8A:        C8            INY                       
CODE_2AAE8B:        60            RTS                       

CODE_2AAE8C:        E2 10         SEP #$10                  
CODE_2AAE8E:        A9 01         LDA #$01                  
CODE_2AAE90:        8D D9 02      STA $02D9                 
CODE_2AAE93:        A2 00         LDX #$00                  
CODE_2AAE95:        A9 13         LDA #$13                  
CODE_2AAE97:        85 00         STA $00                   
CODE_2AAE99:        A9 14         LDA #$14                  
CODE_2AAE9B:        85 01         STA $01                   
CODE_2AAE9D:        A9 15         LDA #$15                  
CODE_2AAE9F:        85 02         STA $02                   
CODE_2AAEA1:        A9 16         LDA #$16                  
CODE_2AAEA3:        85 03         STA $03                   
CODE_2AAEA5:        A9 04         LDA #$04                  
CODE_2AAEA7:        85 04         STA $04                   
CODE_2AAEA9:        20 5C 97      JSR CODE_2A975C           
CODE_2AAEAC:        A2 10         LDX #$10                  
CODE_2AAEAE:        A9 17         LDA #$17                  
CODE_2AAEB0:        85 00         STA $00                   
CODE_2AAEB2:        A9 18         LDA #$18                  
CODE_2AAEB4:        85 01         STA $01                   
CODE_2AAEB6:        A9 08         LDA #$08                  
CODE_2AAEB8:        85 04         STA $04                   
CODE_2AAEBA:        20 79 97      JSR CODE_2A9779           
CODE_2AAEBD:        8A            TXA                       
CODE_2AAEBE:        18            CLC                       
CODE_2AAEBF:        69 10         ADC #$10                  
CODE_2AAEC1:        AA            TAX                       
CODE_2AAEC2:        E0 B0         CPX #$B0                  
CODE_2AAEC4:        D0 F0         BNE CODE_2AAEB6           
CODE_2AAEC6:        A2 20         LDX #$20                  
CODE_2AAEC8:        A9 13         LDA #$13                  
CODE_2AAECA:        85 00         STA $00                   
CODE_2AAECC:        A9 16         LDA #$16                  
CODE_2AAECE:        85 01         STA $01                   
CODE_2AAED0:        A9 08         LDA #$08                  
CODE_2AAED2:        85 04         STA $04                   
CODE_2AAED4:        20 79 97      JSR CODE_2A9779           
CODE_2AAED7:        8A            TXA                       
CODE_2AAED8:        18            CLC                       
CODE_2AAED9:        69 10         ADC #$10                  
CODE_2AAEDB:        AA            TAX                       
CODE_2AAEDC:        E0 A0         CPX #$A0                  
CODE_2AAEDE:        D0 F0         BNE CODE_2AAED0           
CODE_2AAEE0:        A0 00         LDY #$00                  
CODE_2AAEE2:        B7 2B         LDA [$2B],y               
CODE_2AAEE4:        C9 FF         CMP #$FF                  
CODE_2AAEE6:        F0 08         BEQ CODE_2AAEF0           
CODE_2AAEE8:        20 54 8E      JSR CODE_2A8E54           
CODE_2AAEEB:        FC F2 AE      JSR (PNTR_2AAEF2,x)             
CODE_2AAEEE:        80 F0         BRA CODE_2AAEE0           

CODE_2AAEF0:        AB            PLB                       
CODE_2AAEF1:        6B            RTL                       

PNTR_2AAEF2:        dw CODE_2AAEF6
                    dw CODE_2AAF39

CODE_2AAEF6:        A6 00         LDX $00                   ;
CODE_2AAEF8:        A9 01         LDA #$01                  ;
CODE_2AAEFA:        20 03 8D      JSR CODE_2A8D03           ;
CODE_2AAEFD:        E8            INX                       ;
CODE_2AAEFE:        A9 02         LDA #$02                  ;
CODE_2AAF00:        20 03 8D      JSR CODE_2A8D03           
CODE_2AAF03:        A5 00         LDA $00                   
CODE_2AAF05:        18            CLC                       
CODE_2AAF06:        69 0F         ADC #$0F                  
CODE_2AAF08:        AA            TAX                       
CODE_2AAF09:        85 00         STA $00                   
CODE_2AAF0B:        64 01         STZ $01                   
CODE_2AAF0D:        A9 04         LDA #$04                  
CODE_2AAF0F:        85 02         STA $02                   
CODE_2AAF11:        A4 01         LDY $01                   
CODE_2AAF13:        B9 2D AF      LDA.w DATA_2AAF2D,y               
CODE_2AAF16:        20 03 8D      JSR CODE_2A8D03           
CODE_2AAF19:        E8            INX                       
CODE_2AAF1A:        E6 01         INC $01                   
CODE_2AAF1C:        C6 02         DEC $02                   
CODE_2AAF1E:        D0 F1         BNE CODE_2AAF11           
CODE_2AAF20:        A5 00         LDA $00                   
CODE_2AAF22:        18            CLC                       
CODE_2AAF23:        69 10         ADC #$10                  
CODE_2AAF25:        AA            TAX                       
CODE_2AAF26:        85 00         STA $00                   
CODE_2AAF28:        C6 D8         DEC $D8                   
CODE_2AAF2A:        D0 E1         BNE CODE_2AAF0D           
CODE_2AAF2C:        60            RTS                       

DATA_2AAF2D:        db $05,$06,$07,$08,$0B,$0C,$0D,$0E
                    db $0F,$10,$11,$12

CODE_2AAF39:        A6 00         LDX $00                   
CODE_2AAF3B:        A9 03         LDA #$03                  
CODE_2AAF3D:        20 03 8D      JSR CODE_2A8D03           
CODE_2AAF40:        E8            INX                       
CODE_2AAF41:        A9 04         LDA #$04                  
CODE_2AAF43:        20 03 8D      JSR CODE_2A8D03           
CODE_2AAF46:        A5 00         LDA $00                   
CODE_2AAF48:        18            CLC                       
CODE_2AAF49:        69 10         ADC #$10                  
CODE_2AAF4B:        AA            TAX                       
CODE_2AAF4C:        A9 09         LDA #$09                  
CODE_2AAF4E:        20 03 8D      JSR CODE_2A8D03           
CODE_2AAF51:        E8            INX                       
CODE_2AAF52:        A9 0A         LDA #$0A                  
CODE_2AAF54:        20 03 8D      JSR CODE_2A8D03           
CODE_2AAF57:        60            RTS                       

CODE_2AAF58:        E2 10         SEP #$10                  
CODE_2AAF5A:        A2 07         LDX #$07                  
CODE_2AAF5C:        A9 06         LDA #$06                  
CODE_2AAF5E:        20 03 8D      JSR CODE_2A8D03           
CODE_2AAF61:        8A            TXA                       
CODE_2AAF62:        18            CLC                       
CODE_2AAF63:        69 10         ADC #$10                  
CODE_2AAF65:        AA            TAX                       
CODE_2AAF66:        E0 E0         CPX #$E0                  
CODE_2AAF68:        90 F2         BCC CODE_2AAF5C           
CODE_2AAF6A:        A2 0F         LDX #$0F                  
CODE_2AAF6C:        A9 06         LDA #$06                  
CODE_2AAF6E:        20 03 8D      JSR CODE_2A8D03           
CODE_2AAF71:        8A            TXA                       
CODE_2AAF72:        18            CLC                       
CODE_2AAF73:        69 10         ADC #$10                  
CODE_2AAF75:        AA            TAX                       
CODE_2AAF76:        E0 E0         CPX #$E0                  
CODE_2AAF78:        90 F2         BCC CODE_2AAF6C           
CODE_2AAF7A:        A2 51         LDX #$51                  
CODE_2AAF7C:        A9 11         LDA #$11                  
CODE_2AAF7E:        85 01         STA $01                   
CODE_2AAF80:        20 F4 AF      JSR CODE_2AAFF4           
CODE_2AAF83:        A2 59         LDX #$59                  
CODE_2AAF85:        A9 11         LDA #$11                  
CODE_2AAF87:        85 01         STA $01                   
CODE_2AAF89:        20 F4 AF      JSR CODE_2AAFF4           
CODE_2AAF8C:        A2 D1         LDX #$D1                  
CODE_2AAF8E:        A9 03         LDA #$03                  
CODE_2AAF90:        85 01         STA $01                   
CODE_2AAF92:        20 F4 AF      JSR CODE_2AAFF4           
CODE_2AAF95:        A2 D9         LDX #$D9                  
CODE_2AAF97:        A9 03         LDA #$03                  
CODE_2AAF99:        85 01         STA $01                   
CODE_2AAF9B:        20 F4 AF      JSR CODE_2AAFF4           
CODE_2AAF9E:        A2 E0         LDX #$E0                  
CODE_2AAFA0:        A9 11         LDA #$11                  
CODE_2AAFA2:        85 00         STA $00                   
CODE_2AAFA4:        20 24 99      JSR CODE_2A9924           
CODE_2AAFA7:        A9 29         LDA #$29                  
CODE_2AAFA9:        85 00         STA $00                   
CODE_2AAFAB:        20 24 99      JSR CODE_2A9924           
CODE_2AAFAE:        A2 00         LDX #$00                  
CODE_2AAFB0:        A9 2A         LDA #$2A                  
CODE_2AAFB2:        85 00         STA $00                   
CODE_2AAFB4:        20 03 B0      JSR CODE_2AB003           
CODE_2AAFB7:        A9 2A         LDA #$2A                  
CODE_2AAFB9:        85 00         STA $00                   
CODE_2AAFBB:        20 03 B0      JSR CODE_2AB003           
CODE_2AAFBE:        A2 10         LDX #$10                  
CODE_2AAFC0:        A9 32         LDA #$32                  
CODE_2AAFC2:        85 00         STA $00                   
CODE_2AAFC4:        20 03 B0      JSR CODE_2AB003           
CODE_2AAFC7:        A9 32         LDA #$32                  
CODE_2AAFC9:        85 00         STA $00                   
CODE_2AAFCB:        20 03 B0      JSR CODE_2AB003           
CODE_2AAFCE:        A2 90         LDX #$90                  
CODE_2AAFD0:        A9 11         LDA #$11                  
CODE_2AAFD2:        85 00         STA $00                   
CODE_2AAFD4:        20 30 99      JSR CODE_2A9930           
CODE_2AAFD7:        20 30 99      JSR CODE_2A9930           
CODE_2AAFDA:        A0 00         LDY #$00                  
CODE_2AAFDC:        B7 2B         LDA [$2B],y               
CODE_2AAFDE:        C9 FF         CMP #$FF                  
CODE_2AAFE0:        F0 08         BEQ CODE_2AAFEA           
CODE_2AAFE2:        20 54 8E      JSR CODE_2A8E54           
CODE_2AAFE5:        FC EC AF      JSR (PNTR_2AAFEC,x)             
CODE_2AAFE8:        80 F0         BRA CODE_2AAFDA           

CODE_2AAFEA:        AB            PLB                       
CODE_2AAFEB:        6B            RTL                       

PNTR_2AAFEC:        dw CODE_2AB011             
                    dw CODE_2AB064                 
                    dw CODE_2AB08B
                    dw CODE_2AB0DD

CODE_2AAFF4:        A9 06         LDA #$06                  ;
CODE_2AAFF6:        85 00         STA $00                   ;
CODE_2AAFF8:        A5 01         LDA $01                   ;
CODE_2AAFFA:        20 03 8D      JSR CODE_2A8D03           ;
CODE_2AAFFD:        E8            INX                       ;
CODE_2AAFFE:        C6 00         DEC $00                   ;
CODE_2AB000:        D0 F8         BNE CODE_2AAFFA           ;
CODE_2AB002:        60            RTS                       ;

CODE_2AB003:        A5 00         LDA $00                   
CODE_2AB005:        20 25 8D      JSR CODE_2A8D25           
CODE_2AB008:        E6 00         INC $00                   
CODE_2AB00A:        E8            INX                       
CODE_2AB00B:        8A            TXA                       
CODE_2AB00C:        29 07         AND #$07                  
CODE_2AB00E:        D0 F3         BNE CODE_2AB003           
CODE_2AB010:        60            RTS                       

CODE_2AB011:        A6 00         LDX $00                   
CODE_2AB013:        A5 D8         LDA $D8                   
CODE_2AB015:        85 02         STA $02                   
CODE_2AB017:        A4 DA         LDY $DA                   
CODE_2AB019:        B9 39 B0      LDA.w DATA_2AB039,y               
CODE_2AB01C:        C9 FF         CMP #$FF                  
CODE_2AB01E:        F0 18         BEQ CODE_2AB038           
CODE_2AB020:        20 03 8D      JSR CODE_2A8D03           
CODE_2AB023:        E6 DA         INC $DA                   
CODE_2AB025:        E8            INX                       
CODE_2AB026:        C6 02         DEC $02                   
CODE_2AB028:        D0 ED         BNE CODE_2AB017           
CODE_2AB02A:        C2 20         REP #$20                  
CODE_2AB02C:        A5 00         LDA $00                   
CODE_2AB02E:        18            CLC                       
CODE_2AB02F:        69 10 00      ADC #$0010                
CODE_2AB032:        85 00         STA $00                   
CODE_2AB034:        E2 20         SEP #$20                  
CODE_2AB036:        80 D9         BRA CODE_2AB011           

CODE_2AB038:        60            RTS                       
     
DATA_2AB039:        db $03,$03,$03,$03,$12,$03,$0D,$13
                    db $08,$05,$02,$14,$07,$05,$04,$07
                    db $02,$01,$08,$09,$0A,$0B,$0C,$08
                    db $0D,$04,$04,$0B,$0E,$01,$07,$0B
                    db $0D,$04,$05,$04,$03,$0F,$02,$01
                    db $10,$01,$FF

CODE_2AB064:        A9 15         LDA #$15                  
CODE_2AB066:        85 02         STA $02                   
CODE_2AB068:        A5 D8         LDA $D8                   
CODE_2AB06A:        85 D9         STA $D9                   
CODE_2AB06C:        A6 00         LDX $00                   
CODE_2AB06E:        A5 02         LDA $02                   
CODE_2AB070:        20 03 8D      JSR CODE_2A8D03           
CODE_2AB073:        E6 02         INC $02                   
CODE_2AB075:        E8            INX                       
CODE_2AB076:        C6 D9         DEC $D9                   
CODE_2AB078:        D0 F4         BNE CODE_2AB06E           
CODE_2AB07A:        C2 20         REP #$20                  
CODE_2AB07C:        A5 00         LDA $00                   
CODE_2AB07E:        18            CLC                       
CODE_2AB07F:        69 10 00      ADC #$0010                
CODE_2AB082:        85 00         STA $00                   
CODE_2AB084:        E2 20         SEP #$20                  
CODE_2AB086:        C6 DA         DEC $DA                   
CODE_2AB088:        D0 DE         BNE CODE_2AB068           
CODE_2AB08A:        60            RTS                       

CODE_2AB08B:        A6 00         LDX $00                   
CODE_2AB08D:        A9 3A         LDA #$3A                  
CODE_2AB08F:        20 25 8D      JSR CODE_2A8D25           
CODE_2AB092:        E8            INX                       
CODE_2AB093:        1A            INC A                     
CODE_2AB094:        20 25 8D      JSR CODE_2A8D25           
CODE_2AB097:        E8            INX                       
CODE_2AB098:        1A            INC A                     
CODE_2AB099:        20 25 8D      JSR CODE_2A8D25           
CODE_2AB09C:        E8            INX                       
CODE_2AB09D:        A9 54         LDA #$54                  
CODE_2AB09F:        20 25 8D      JSR CODE_2A8D25           
CODE_2AB0A2:        A5 00         LDA $00                   
CODE_2AB0A4:        18            CLC                       
CODE_2AB0A5:        69 10         ADC #$10                  
CODE_2AB0A7:        85 00         STA $00                   
CODE_2AB0A9:        AA            TAX                       
CODE_2AB0AA:        A5 D8         LDA $D8                   
CODE_2AB0AC:        85 D9         STA $D9                   
CODE_2AB0AE:        A9 40         LDA #$40                  
CODE_2AB0B0:        85 02         STA $02                   
CODE_2AB0B2:        20 2F B1      JSR CODE_2AB12F           
CODE_2AB0B5:        E6 00         INC $00                   
CODE_2AB0B7:        A6 00         LDX $00                   
CODE_2AB0B9:        A5 D8         LDA $D8                   
CODE_2AB0BB:        85 D9         STA $D9                   
CODE_2AB0BD:        E6 02         INC $02                   
CODE_2AB0BF:        20 2F B1      JSR CODE_2AB12F           
CODE_2AB0C2:        E6 00         INC $00                   
CODE_2AB0C4:        A6 00         LDX $00                   
CODE_2AB0C6:        A5 D8         LDA $D8                   
CODE_2AB0C8:        85 D9         STA $D9                   
CODE_2AB0CA:        A9 54         LDA #$54                  
CODE_2AB0CC:        85 02         STA $02                   
CODE_2AB0CE:        20 2F B1      JSR CODE_2AB12F           
CODE_2AB0D1:        E6 00         INC $00                   
CODE_2AB0D3:        A6 00         LDX $00                   
CODE_2AB0D5:        A5 D8         LDA $D8                   
CODE_2AB0D7:        85 D9         STA $D9                   
CODE_2AB0D9:        20 2F B1      JSR CODE_2AB12F           
CODE_2AB0DC:        60            RTS                       

CODE_2AB0DD:        A6 00         LDX $00                   
CODE_2AB0DF:        A9 54         LDA #$54                  
CODE_2AB0E1:        20 25 8D      JSR CODE_2A8D25           
CODE_2AB0E4:        E8            INX                       
CODE_2AB0E5:        A9 3D         LDA #$3D                  
CODE_2AB0E7:        20 25 8D      JSR CODE_2A8D25           
CODE_2AB0EA:        E8            INX                       
CODE_2AB0EB:        1A            INC A                     
CODE_2AB0EC:        20 25 8D      JSR CODE_2A8D25           
CODE_2AB0EF:        E8            INX                       
CODE_2AB0F0:        1A            INC A                     
CODE_2AB0F1:        20 25 8D      JSR CODE_2A8D25           
CODE_2AB0F4:        A5 00         LDA $00                   
CODE_2AB0F6:        18            CLC                       
CODE_2AB0F7:        69 10         ADC #$10                  
CODE_2AB0F9:        85 00         STA $00                   
CODE_2AB0FB:        AA            TAX                       
CODE_2AB0FC:        A5 D8         LDA $D8                   
CODE_2AB0FE:        85 D9         STA $D9                   
CODE_2AB100:        A9 54         LDA #$54                  
CODE_2AB102:        85 02         STA $02                   
CODE_2AB104:        20 2F B1      JSR CODE_2AB12F           
CODE_2AB107:        E6 00         INC $00                   
CODE_2AB109:        A6 00         LDX $00                   
CODE_2AB10B:        A5 D8         LDA $D8                   
CODE_2AB10D:        85 D9         STA $D9                   
CODE_2AB10F:        20 2F B1      JSR CODE_2AB12F           
CODE_2AB112:        E6 00         INC $00                   
CODE_2AB114:        A6 00         LDX $00                   
CODE_2AB116:        A5 D8         LDA $D8                   
CODE_2AB118:        85 D9         STA $D9                   
CODE_2AB11A:        A9 42         LDA #$42                  
CODE_2AB11C:        85 02         STA $02                   
CODE_2AB11E:        20 2F B1      JSR CODE_2AB12F           
CODE_2AB121:        E6 00         INC $00                   
CODE_2AB123:        A6 00         LDX $00                   
CODE_2AB125:        A5 D8         LDA $D8                   
CODE_2AB127:        85 D9         STA $D9                   
CODE_2AB129:        E6 02         INC $02                   
CODE_2AB12B:        20 2F B1      JSR CODE_2AB12F           
CODE_2AB12E:        60            RTS                       

CODE_2AB12F:        AD 02 00      LDA $0002                 
CODE_2AB132:        20 25 8D      JSR CODE_2A8D25           
CODE_2AB135:        8A            TXA                       
CODE_2AB136:        18            CLC                       
CODE_2AB137:        69 10         ADC #$10                  
CODE_2AB139:        AA            TAX                       
CODE_2AB13A:        C6 D9         DEC $D9                   
CODE_2AB13C:        D0 F1         BNE CODE_2AB12F           
CODE_2AB13E:        60            RTS                       

CODE_2AB13F:        E2 10         SEP #$10                  
CODE_2AB141:        A2 90         LDX #$90                  
CODE_2AB143:        A9 03         LDA #$03                  
CODE_2AB145:        85 00         STA $00                   
CODE_2AB147:        20 BD B1      JSR CODE_2AB1BD           
CODE_2AB14A:        A9 07         LDA #$07                  
CODE_2AB14C:        85 00         STA $00                   
CODE_2AB14E:        20 BD B1      JSR CODE_2AB1BD           
CODE_2AB151:        A9 0B         LDA #$0B                  
CODE_2AB153:        85 00         STA $00                   
CODE_2AB155:        20 BD B1      JSR CODE_2AB1BD           
CODE_2AB158:        A9 09         LDA #$09                  
CODE_2AB15A:        20 03 8D      JSR CODE_2A8D03           
CODE_2AB15D:        E8            INX                       
CODE_2AB15E:        A9 0A         LDA #$0A                  
CODE_2AB160:        20 03 8D      JSR CODE_2A8D03           
CODE_2AB163:        E8            INX                       
CODE_2AB164:        A9 07         LDA #$07                  
CODE_2AB166:        20 03 8D      JSR CODE_2A8D03           
CODE_2AB169:        E8            INX                       
CODE_2AB16A:        A9 08         LDA #$08                  
CODE_2AB16C:        20 03 8D      JSR CODE_2A8D03           
CODE_2AB16F:        E8            INX                       
CODE_2AB170:        8A            TXA                       
CODE_2AB171:        29 0F         AND #$0F                  
CODE_2AB173:        D0 E3         BNE CODE_2AB158           
CODE_2AB175:        A9 0F         LDA #$0F                  
CODE_2AB177:        85 00         STA $00                   
CODE_2AB179:        20 24 99      JSR CODE_2A9924           
CODE_2AB17C:        20 24 99      JSR CODE_2A9924           
CODE_2AB17F:        20 24 99      JSR CODE_2A9924           
CODE_2AB182:        20 30 99      JSR CODE_2A9930           
CODE_2AB185:        20 30 99      JSR CODE_2A9930           
CODE_2AB188:        A9 18         LDA #$18                  
CODE_2AB18A:        85 00         STA $00                   
CODE_2AB18C:        20 D8 B1      JSR CODE_2AB1D8           
CODE_2AB18F:        A9 1C         LDA #$1C                  
CODE_2AB191:        85 00         STA $00                   
CODE_2AB193:        20 D8 B1      JSR CODE_2AB1D8           
CODE_2AB196:        A9 20         LDA #$20                  
CODE_2AB198:        85 00         STA $00                   
CODE_2AB19A:        20 D8 B1      JSR CODE_2AB1D8           
CODE_2AB19D:        A9 24         LDA #$24                  
CODE_2AB19F:        85 00         STA $00                   
CODE_2AB1A1:        20 D8 B1      JSR CODE_2AB1D8           
CODE_2AB1A4:        A9 28         LDA #$28                  
CODE_2AB1A6:        85 00         STA $00                   
CODE_2AB1A8:        20 D8 B1      JSR CODE_2AB1D8           
CODE_2AB1AB:        A0 00         LDY #$00                  
CODE_2AB1AD:        B7 2B         LDA [$2B],y               
CODE_2AB1AF:        C9 FF         CMP #$FF                  
CODE_2AB1B1:        F0 08         BEQ CODE_2AB1BB           
CODE_2AB1B3:        20 54 8E      JSR CODE_2A8E54           
CODE_2AB1B6:        FC F3 B1      JSR (PNTR_2AB1F3,x)             
CODE_2AB1B9:        80 F0         BRA CODE_2AB1AB           

CODE_2AB1BB:        AB            PLB                       
CODE_2AB1BC:        6B            RTL                       

CODE_2AB1BD:        A5 00         LDA $00                   
CODE_2AB1BF:        20 03 8D      JSR CODE_2A8D03           
CODE_2AB1C2:        1A            INC A                     
CODE_2AB1C3:        E8            INX                       
CODE_2AB1C4:        20 03 8D      JSR CODE_2A8D03           
CODE_2AB1C7:        1A            INC A                     
CODE_2AB1C8:        E8            INX                       
CODE_2AB1C9:        20 03 8D      JSR CODE_2A8D03           
CODE_2AB1CC:        1A            INC A                     
CODE_2AB1CD:        E8            INX                       
CODE_2AB1CE:        20 03 8D      JSR CODE_2A8D03           
CODE_2AB1D1:        E8            INX                       
CODE_2AB1D2:        8A            TXA                       
CODE_2AB1D3:        29 0F         AND #$0F                  
CODE_2AB1D5:        D0 E6         BNE CODE_2AB1BD           
CODE_2AB1D7:        60            RTS                       

CODE_2AB1D8:        A5 00         LDA $00                   
CODE_2AB1DA:        20 25 8D      JSR CODE_2A8D25           
CODE_2AB1DD:        1A            INC A                     
CODE_2AB1DE:        E8            INX                       
CODE_2AB1DF:        20 25 8D      JSR CODE_2A8D25           
CODE_2AB1E2:        1A            INC A                     
CODE_2AB1E3:        E8            INX                       
CODE_2AB1E4:        20 25 8D      JSR CODE_2A8D25           
CODE_2AB1E7:        1A            INC A                     
CODE_2AB1E8:        E8            INX                       
CODE_2AB1E9:        20 25 8D      JSR CODE_2A8D25           
CODE_2AB1EC:        E8            INX                       
CODE_2AB1ED:        8A            TXA                       
CODE_2AB1EE:        29 0F         AND #$0F                  
CODE_2AB1F0:        D0 E6         BNE CODE_2AB1D8           
CODE_2AB1F2:        60            RTS                       

PNTR_2AB1F3:        dw CODE_2AB1FF
                    dw CODE_2AB205           
                    dw CODE_2AB241             
                    dw CODE_2AB252               
                    dw CODE_2AB20B
                    dw CODE_2AB211

CODE_2AB1FF:        A9 01         LDA #$01                  ;
CODE_2AB201:        85 03         STA $03                   ;
CODE_2AB203:        80 10         BRA CODE_2AB215           ;

CODE_2AB205:        A9 02         LDA #$02                  ;
CODE_2AB207:        85 03         STA $03                   ;
CODE_2AB209:        80 0A         BRA CODE_2AB215           ;

CODE_2AB20B:        A9 2C         LDA #$2C                  ;
CODE_2AB20D:        85 03         STA $03                   ;
CODE_2AB20F:        80 04         BRA CODE_2AB215           ;

CODE_2AB211:        A9 2D         LDA #$2D                  
CODE_2AB213:        85 03         STA $03                   
CODE_2AB215:        C2 10         REP #$10                  
CODE_2AB217:        A6 00         LDX $00                   
CODE_2AB219:        A5 03         LDA $03                   
CODE_2AB21B:        20 D9 8C      JSR CODE_2A8CD9           
CODE_2AB21E:        A5 D8         LDA $D8                   
CODE_2AB220:        F0 1C         BEQ CODE_2AB23E           
CODE_2AB222:        18            CLC                       
CODE_2AB223:        65 00         ADC $00                   
CODE_2AB225:        85 00         STA $00                   
CODE_2AB227:        A6 00         LDX $00                   
CODE_2AB229:        A5 03         LDA $03                   
CODE_2AB22B:        20 D9 8C      JSR CODE_2A8CD9           
CODE_2AB22E:        A5 DA         LDA $DA                   
CODE_2AB230:        F0 0C         BEQ CODE_2AB23E           
CODE_2AB232:        18            CLC                       
CODE_2AB233:        65 00         ADC $00                   
CODE_2AB235:        85 00         STA $00                   
CODE_2AB237:        A6 00         LDX $00                   
CODE_2AB239:        A5 03         LDA $03                   
CODE_2AB23B:        20 D9 8C      JSR CODE_2A8CD9           
CODE_2AB23E:        E2 10         SEP #$10                  
CODE_2AB240:        60            RTS                       

CODE_2AB241:        C2 20         REP #$20                  
CODE_2AB243:        A9 A3 B2      LDA #$B2A3                
CODE_2AB246:        85 03         STA $03                   
CODE_2AB248:        1A            INC A                     
CODE_2AB249:        1A            INC A                     
CODE_2AB24A:        1A            INC A                     
CODE_2AB24B:        1A            INC A                     
CODE_2AB24C:        85 05         STA $05                   
CODE_2AB24E:        E2 20         SEP #$20                  
CODE_2AB250:        80 0F         BRA CODE_2AB261           

CODE_2AB252:        C2 20         REP #$20                  
CODE_2AB254:        A9 AB B2      LDA #$B2AB                
CODE_2AB257:        85 03         STA $03                   
CODE_2AB259:        1A            INC A                     
CODE_2AB25A:        1A            INC A                     
CODE_2AB25B:        1A            INC A                     
CODE_2AB25C:        1A            INC A                     
CODE_2AB25D:        85 05         STA $05                   
CODE_2AB25F:        E2 20         SEP #$20                  
CODE_2AB261:        C2 10         REP #$10                  
CODE_2AB263:        A0 00 00      LDY #$0000                
CODE_2AB266:        A6 00         LDX $00                   
CODE_2AB268:        B1 03         LDA ($03),y               
CODE_2AB26A:        20 D9 8C      JSR CODE_2A8CD9           
CODE_2AB26D:        B1 05         LDA ($05),y               
CODE_2AB26F:        20 EE 8C      JSR CODE_2A8CEE           
CODE_2AB272:        C8            INY                       
CODE_2AB273:        C0 04 00      CPY #$0004                
CODE_2AB276:        F0 28         BEQ CODE_2AB2A0           
CODE_2AB278:        E6 00         INC $00                   
CODE_2AB27A:        A5 00         LDA $00                   
CODE_2AB27C:        29 0F         AND #$0F                  
CODE_2AB27E:        D0 E6         BNE CODE_2AB266           
CODE_2AB280:        A5 D8         LDA $D8                   
CODE_2AB282:        D0 0E         BNE CODE_2AB292           
CODE_2AB284:        C2 20         REP #$20                  
CODE_2AB286:        A5 00         LDA $00                   
CODE_2AB288:        18            CLC                       
CODE_2AB289:        69 A0 01      ADC #$01A0                
CODE_2AB28C:        85 00         STA $00                   
CODE_2AB28E:        E2 20         SEP #$20                  
CODE_2AB290:        80 D4         BRA CODE_2AB266           

CODE_2AB292:        C2 20         REP #$20                  
CODE_2AB294:        A5 00         LDA $00                   
CODE_2AB296:        38            SEC                       
CODE_2AB297:        E9 C0 01      SBC #$01C0                
CODE_2AB29A:        85 00         STA $00                   
CODE_2AB29C:        E2 20         SEP #$20                  
CODE_2AB29E:        80 C6         BRA CODE_2AB266           

CODE_2AB2A0:        E2 10         SEP #$10                  
CODE_2AB2A2:        60            RTS                       

DATA_2AB2A3:        db $10,$11,$12,$13,$14,$15,$16,$17

DATA_2AB2AB:        db $0D,$0E,$0B,$0C,$07,$08,$09,$0A
                
CODE_2AB2B3:        E2 10         SEP #$10                  
CODE_2AB2B5:        A2 F0         LDX #$F0                  
CODE_2AB2B7:        A9 12         LDA #$12                  
CODE_2AB2B9:        20 03 8D      JSR CODE_2A8D03           
CODE_2AB2BC:        E8            INX                       
CODE_2AB2BD:        A9 13         LDA #$13                  
CODE_2AB2BF:        20 03 8D      JSR CODE_2A8D03           
CODE_2AB2C2:        E8            INX                       
CODE_2AB2C3:        A9 14         LDA #$14                  
CODE_2AB2C5:        20 03 8D      JSR CODE_2A8D03           
CODE_2AB2C8:        E8            INX                       
CODE_2AB2C9:        A9 15         LDA #$15                  
CODE_2AB2CB:        20 03 8D      JSR CODE_2A8D03           
CODE_2AB2CE:        E8            INX                       
CODE_2AB2CF:        8A            TXA                       
CODE_2AB2D0:        29 0F         AND #$0F                  
CODE_2AB2D2:        D0 E3         BNE CODE_2AB2B7           
CODE_2AB2D4:        A2 00         LDX #$00                  
CODE_2AB2D6:        A9 16         LDA #$16                  
CODE_2AB2D8:        20 25 8D      JSR CODE_2A8D25           
CODE_2AB2DB:        E8            INX                       
CODE_2AB2DC:        A9 17         LDA #$17                  
CODE_2AB2DE:        20 25 8D      JSR CODE_2A8D25           
CODE_2AB2E1:        E8            INX                       
CODE_2AB2E2:        A9 18         LDA #$18                  
CODE_2AB2E4:        20 25 8D      JSR CODE_2A8D25           
CODE_2AB2E7:        E8            INX                       
CODE_2AB2E8:        A9 19         LDA #$19                  
CODE_2AB2EA:        20 25 8D      JSR CODE_2A8D25           
CODE_2AB2ED:        E8            INX                       
CODE_2AB2EE:        8A            TXA                       
CODE_2AB2EF:        29 0F         AND #$0F                  
CODE_2AB2F1:        D0 E3         BNE CODE_2AB2D6           
CODE_2AB2F3:        A0 00         LDY #$00                  
CODE_2AB2F5:        B7 2B         LDA [$2B],y               
CODE_2AB2F7:        C9 FF         CMP #$FF                  
CODE_2AB2F9:        F0 08         BEQ CODE_2AB303           
CODE_2AB2FB:        20 54 8E      JSR CODE_2A8E54           
CODE_2AB2FE:        FC 05 B3      JSR (PNTR_2AB305,x)             
CODE_2AB301:        80 F0         BRA CODE_2AB2F3           

CODE_2AB303:        AB            PLB                       
CODE_2AB304:        6B            RTL                       

     
PNTR_2AB305:        dw CODE_2AA966
      dw CODE_2AA9F6
      dw CODE_2AAA12
      dw CODE_2AAA57
      dw CODE_2AB315
      dw CODE_2AB331
      dw CODE_2AB34D
      dw CODE_2AB369

CODE_2AB315:        C2 30         REP #$30                  ;
CODE_2AB317:        A9 29 B3      LDA #$B329                ;
CODE_2AB31A:        85 02         STA $02                   ;
CODE_2AB31C:        A9 2D B3      LDA #$B32D                ;
CODE_2AB31F:        85 04         STA $04                   ;
CODE_2AB321:        E2 20         SEP #$20                  ;
CODE_2AB323:        20 7A A9      JSR CODE_2AA97A           ;
CODE_2AB326:        E2 10         SEP #$10                  ;
CODE_2AB328:        60            RTS                       ;

           
DATA_2AB329:        db $1A,$1B,$1C,$1D

DATA_2AB32B:        db $1E,$1F,$20,$21

CODE_2AB331:        C2 30         REP #$30                  ;
CODE_2AB333:        A9 45 B3      LDA #$B345                ;
CODE_2AB336:        85 02         STA $02                   ;
CODE_2AB338:        A9 49 B3      LDA #$B349                ;
CODE_2AB33B:        85 04         STA $04                   ;
CODE_2AB33D:        E2 20         SEP #$20                  ;
CODE_2AB33F:        20 CB A9      JSR CODE_2AA9CB           ;
CODE_2AB342:        E2 10         SEP #$10                  ;
CODE_2AB344:        60            RTS                       ;

DATA_2AB345:        db $1A,$22,$22,$1E

DATA_2AB349:        db $1D,$23,$23,$21

CODE_2AB34D:        C2 10         REP #$10
CODE_2AB34F:        A6 00         LDX $00
CODE_2AB351:        A9 1A         LDA #$1A
CODE_2AB353:        20 D9 8C      JSR CODE_2A8CD9           ;
CODE_2AB356:        A9 1E         LDA #$1E                  ;
CODE_2AB358:        20 EE 8C      JSR CODE_2A8CEE           ;
CODE_2AB35B:        E8            INX                       ;
CODE_2AB35C:        A9 1D         LDA #$1D                  ;
CODE_2AB35E:        20 D9 8C      JSR CODE_2A8CD9           ;
CODE_2AB361:        A9 21         LDA #$21                  ;
CODE_2AB363:        20 EE 8C      JSR CODE_2A8CEE           ;
CODE_2AB366:        E2 10         SEP #$10                  ;
CODE_2AB368:        60            RTS                       ;

CODE_2AB369:        C2 30         REP #$30                  
CODE_2AB36B:        A9 99 B3      LDA #$B399                
CODE_2AB36E:        85 02         STA $02                   
CODE_2AB370:        A9 9D B3      LDA #$B39D                
CODE_2AB373:        85 04         STA $04                   
CODE_2AB375:        A5 00         LDA $00                   
CODE_2AB377:        48            PHA                       
CODE_2AB378:        E2 20         SEP #$20                  
CODE_2AB37A:        20 CB A9      JSR CODE_2AA9CB           
CODE_2AB37D:        C2 20         REP #$20                  
CODE_2AB37F:        68            PLA                       
CODE_2AB380:        1A            INC A                     
CODE_2AB381:        1A            INC A                     
CODE_2AB382:        85 00         STA $00                   
CODE_2AB384:        29 0F 00      AND #$000F                
CODE_2AB387:        D0 08         BNE CODE_2AB391           
CODE_2AB389:        A5 00         LDA $00                   
CODE_2AB38B:        18            CLC                       
CODE_2AB38C:        69 A0 01      ADC #$01A0                
CODE_2AB38F:        85 00         STA $00                   
CODE_2AB391:        E2 20         SEP #$20                  
CODE_2AB393:        20 CB A9      JSR CODE_2AA9CB           
CODE_2AB396:        E2 10         SEP #$10                  
CODE_2AB398:        60            RTS                       

DATA_2AB399:        db $24,$26,$27,$24

DATA_2AB39D:        db $25,$26,$27,$25

CODE_2AB3A1:        AD 13 02      LDA $0213                 
CODE_2AB3A4:        F0 0B         BEQ CODE_2AB3B1           
CODE_2AB3A6:        A9 05         LDA #$05                  
CODE_2AB3A8:        8D 50 03      STA $0350                 
CODE_2AB3AB:        E2 10         SEP #$10                  
CODE_2AB3AD:        AB            PLB                       
CODE_2AB3AE:        4C B6 8D      JMP CODE_2A8DB6           

CODE_2AB3B1:        C2 10         REP #$10                  
CODE_2AB3B3:        A9 10         LDA #$10                  
CODE_2AB3B5:        85 00         STA $00                   
CODE_2AB3B7:        64 01         STZ $01                   
CODE_2AB3B9:        A9 08         LDA #$08                  
CODE_2AB3BB:        85 02         STA $02                   
CODE_2AB3BD:        20 DF B3      JSR CODE_2AB3DF           
CODE_2AB3C0:        A9 01         LDA #$01                  
CODE_2AB3C2:        85 00         STA $00                   
CODE_2AB3C4:        64 01         STZ $01                   
CODE_2AB3C6:        A9 08         LDA #$08                  
CODE_2AB3C8:        85 02         STA $02                   
CODE_2AB3CA:        20 DF B3      JSR CODE_2AB3DF           
CODE_2AB3CD:        A0 B0 01      LDY #$01B0                
CODE_2AB3D0:        A2 00 00      LDX #$0000                
CODE_2AB3D3:        A9 01         LDA #$01                  
CODE_2AB3D5:        EB            XBA                       
CODE_2AB3D6:        A9 AF         LDA #$AF                  
CODE_2AB3D8:        54 7F 7F      MVN $7F, $7F                 
CODE_2AB3DB:        E2 10         SEP #$10                  
CODE_2AB3DD:        AB            PLB                       
CODE_2AB3DE:        6B            RTL                       

CODE_2AB3DF:        A6 00         LDX $00                   
CODE_2AB3E1:        A9 01         LDA #$01                  
CODE_2AB3E3:        20 D9 8C      JSR CODE_2A8CD9           
CODE_2AB3E6:        C2 20         REP #$20                  
CODE_2AB3E8:        8A            TXA                       
CODE_2AB3E9:        18            CLC                       
CODE_2AB3EA:        69 20 00      ADC #$0020                
CODE_2AB3ED:        AA            TAX                       
CODE_2AB3EE:        E2 20         SEP #$20                  ;
CODE_2AB3F0:        E0 B0 01      CPX #$01B0                ;
CODE_2AB3F3:        90 EC         BCC CODE_2AB3E1           ;
CODE_2AB3F5:        E6 00         INC $00                   ;
CODE_2AB3F7:        E6 00         INC $00                   ;
CODE_2AB3F9:        C6 02         DEC $02                   ;
CODE_2AB3FB:        D0 E2         BNE CODE_2AB3DF           ;
CODE_2AB3FD:        60            RTS                       ;

CODE_2AB3FE:        E2 10         SEP #$10                  
CODE_2AB400:        A2 F0         LDX #$F0                  
CODE_2AB402:        A9 29         LDA #$29                  
CODE_2AB404:        85 00         STA $00                   
CODE_2AB406:        20 24 99      JSR CODE_2A9924           
CODE_2AB409:        A2 00         LDX #$00                  
CODE_2AB40B:        A9 2A         LDA #$2A                  
CODE_2AB40D:        85 00         STA $00                   
CODE_2AB40F:        20 03 B0      JSR CODE_2AB003           
CODE_2AB412:        A9 2A         LDA #$2A                  
CODE_2AB414:        85 00         STA $00                   
CODE_2AB416:        20 03 B0      JSR CODE_2AB003           
CODE_2AB419:        A2 10         LDX #$10                  
CODE_2AB41B:        A9 32         LDA #$32                  
CODE_2AB41D:        85 00         STA $00                   
CODE_2AB41F:        20 03 B0      JSR CODE_2AB003           
CODE_2AB422:        A9 32         LDA #$32                  
CODE_2AB424:        85 00         STA $00                   
CODE_2AB426:        20 03 B0      JSR CODE_2AB003           
CODE_2AB429:        A0 00         LDY #$00                  
CODE_2AB42B:        B7 2B         LDA [$2B],y               
CODE_2AB42D:        C9 FF         CMP #$FF                  
CODE_2AB42F:        F0 08         BEQ CODE_2AB439           
CODE_2AB431:        20 54 8E      JSR CODE_2A8E54           
CODE_2AB434:        FC 3B B4      JSR (PNTR_2AB43B,x)             
CODE_2AB437:        80 F0         BRA CODE_2AB429           

CODE_2AB439:        AB            PLB                       
CODE_2AB43A:        6B            RTL                       

PNTR_2AB43B:        dw CODE_2AB08B
                    dw CODE_2AB0DD
                    dw CODE_2AB441

                  
CODE_2AB441:        A6 00         LDX $00
CODE_2AB443:        A4 DA         LDY $DA
CODE_2AB445:        B9 72 B4      LDA DATA_2AB472,y               
CODE_2AB448:        20 03 8D      JSR CODE_2A8D03           
CODE_2AB44B:        E8            INX                       
CODE_2AB44C:        A4 DB         LDY $DB                   
CODE_2AB44E:        B9 76 B4      LDA DATA_2AB476,y               
CODE_2AB451:        C9 FF         CMP #$FF                  
CODE_2AB453:        F0 08         BEQ CODE_2AB45D           
CODE_2AB455:        20 03 8D      JSR CODE_2A8D03           
CODE_2AB458:        E8            INX                       
CODE_2AB459:        E6 DB         INC $DB                   
CODE_2AB45B:        80 EF         BRA CODE_2AB44C           

CODE_2AB45D:        A9 06         LDA #$06                  
CODE_2AB45F:        20 03 8D      JSR CODE_2A8D03           
CODE_2AB462:        A5 00         LDA $00                   
CODE_2AB464:        18            CLC                       
CODE_2AB465:        69 10         ADC #$10                  
CODE_2AB467:        85 00         STA $00                   
CODE_2AB469:        E6 DA         INC $DA                   
CODE_2AB46B:        E6 DB         INC $DB                   
CODE_2AB46D:        C6 D8         DEC $D8                   
CODE_2AB46F:        D0 D0         BNE CODE_2AB441           
CODE_2AB471:        60            RTS                       

DATA_2AB472:        db $01,$07,$08,$0D ; TODO: indices for next table, split next table

DATA_2AB476:        db $44,$45,$46,$47,$05,$FF,$48,$49
                    db $4A,$4B,$01,$FF,$4C,$4D,$4E,$4F
                    db $08,$FF,$50,$51,$52,$53,$01,$FF

CODE_2AB48E:        AD 50 03      LDA $0350
CODE_2AB491:        F0 6A         BEQ CODE_2AB4FD           
CODE_2AB493:        C9 12         CMP #$12                  
CODE_2AB495:        D0 07         BNE CODE_2AB49E           
CODE_2AB497:        22 76 E5 22   JSL CODE_22E576           
CODE_2AB49B:        4C FD B4      JMP CODE_2AB4FD           

CODE_2AB49E:        AD 25 04      LDA $0425                 
CODE_2AB4A1:        D0 5B         BNE CODE_2AB4FE           
CODE_2AB4A3:        AD 12 02      LDA $0212                 
CODE_2AB4A6:        8D 49 02      STA $0249                 
CODE_2AB4A9:        AD 13 02      LDA $0213                 
CODE_2AB4AC:        0A            ASL A                     
CODE_2AB4AD:        0A            ASL A                     
CODE_2AB4AE:        0A            ASL A                     
CODE_2AB4AF:        0A            ASL A                     
CODE_2AB4B0:        8D 4B 02      STA $024B                 
CODE_2AB4B3:        22 B5 B5 2A   JSL CODE_2AB5B5           
CODE_2AB4B7:        AD 50 03      LDA $0350                 
CODE_2AB4BA:        C9 02         CMP #$02                  
CODE_2AB4BC:        F0 0A         BEQ CODE_2AB4C8           
CODE_2AB4BE:        C9 23         CMP #$23                  
CODE_2AB4C0:        F0 06         BEQ CODE_2AB4C8           
CODE_2AB4C2:        22 A3 E9 29   JSL CODE_29E9A3           
CODE_2AB4C6:        80 04         BRA CODE_2AB4CC           

CODE_2AB4C8:        22 FE E2 22   JSL CODE_22E2FE           
CODE_2AB4CC:        AD 49 02      LDA $0249                 
CODE_2AB4CF:        18            CLC                       
CODE_2AB4D0:        6D 95 CE      ADC.w DATA_2ACE95                 
CODE_2AB4D3:        8D 49 02      STA $0249                 
CODE_2AB4D6:        AD 49 02      LDA $0249                 
CODE_2AB4D9:        29 08         AND #$08                  
CODE_2AB4DB:        CD 97 CE      CMP.w DATA_2ACE97                 
CODE_2AB4DE:        D0 03         BNE CODE_2AB4E3           
CODE_2AB4E0:        EE 4B 02      INC $024B                 
CODE_2AB4E3:        CE 12 06      DEC $0612                 
CODE_2AB4E6:        D0 CB         BNE CODE_2AB4B3           
CODE_2AB4E8:        A9 FF         LDA #$FF                  
CODE_2AB4EA:        8D 49 02      STA $0249                 
CODE_2AB4ED:        AD 50 03      LDA $0350                 
CODE_2AB4F0:        C9 02         CMP #$02                  
CODE_2AB4F2:        F0 04         BEQ CODE_2AB4F8           
CODE_2AB4F4:        C9 23         CMP #$23                  
CODE_2AB4F6:        D0 05         BNE CODE_2AB4FD           
CODE_2AB4F8:        A9 51         LDA #$51                  
CODE_2AB4FA:        8D 09 21      STA $2109                 
CODE_2AB4FD:        6B            RTL                       

CODE_2AB4FE:        64 25         STZ $25                   
CODE_2AB500:        A9 70         LDA #$70                  
CODE_2AB502:        8D 18 02      STA $0218                 
CODE_2AB505:        18            CLC                       
CODE_2AB506:        69 08         ADC #$08                  
CODE_2AB508:        8D 49 02      STA $0249                 
CODE_2AB50B:        9C 4B 02      STZ $024B                 
CODE_2AB50E:        20 7D B6      JSR CODE_2AB67D           
CODE_2AB511:        22 F8 E9 29   JSL CODE_29E9F8           
CODE_2AB515:        AD 18 02      LDA $0218                 
CODE_2AB518:        18            CLC                       
CODE_2AB519:        69 08         ADC #$08                  
CODE_2AB51B:        8D 18 02      STA $0218                 
CODE_2AB51E:        29 08         AND #$08                  
CODE_2AB520:        D0 18         BNE CODE_2AB53A           
CODE_2AB522:        AD 4B 02      LDA $024B                 
CODE_2AB525:        18            CLC                       
CODE_2AB526:        69 10         ADC #$10                  
CODE_2AB528:        8D 4B 02      STA $024B                 
CODE_2AB52B:        29 F0         AND #$F0                  
CODE_2AB52D:        D0 0B         BNE CODE_2AB53A           
CODE_2AB52F:        EE 4B 02      INC $024B                 
CODE_2AB532:        A9 0F         LDA #$0F                  
CODE_2AB534:        2D 4B 02      AND $024B                 
CODE_2AB537:        8D 4B 02      STA $024B                 
CODE_2AB53A:        CE 12 06      DEC $0612                 
CODE_2AB53D:        D0 CF         BNE CODE_2AB50E           
CODE_2AB53F:        9C 18 02      STZ $0218                 
CODE_2AB542:        9C 49 02      STZ $0249                 
CODE_2AB545:        6B            RTL                       

DATA_2AB546:        db $10,$BD,$2A,$58,$BE,$2A,$30,$BF
                    db $2A,$30,$C2,$2A,$58,$C0,$2A,$20
                    db $C4,$2A,$E8,$C5,$2A,$00,$C7,$2A
                    db $88,$C8,$2A,$38,$CA,$2A,$D8,$CB
                    db $2A,$08,$CC,$2A,$38,$CE,$2A,$38
                    db $CE,$2A,$58,$D0,$2A,$F0,$D1,$2A
                    db $30,$D3,$2A,$10,$D5,$2A,$10,$D5
                    db $2A,$90,$D5,$2A,$D8,$CB,$2A,$10
                    db $D6,$2A,$88,$D7,$2A,$58,$D0,$2A
                    db $38,$CE,$2A,$58,$C0,$2A,$50,$D8
                    db $2A,$F8,$DA,$2A,$58,$D0,$2A,$10
                    db $D6,$2A,$F0,$D1,$2A,$68,$DC,$2A
                    db $10,$BD,$2A,$50,$D8,$2A,$58,$BE
                    db $2A,$30,$BF,$2A,$10,$BD,$2A
  
               
CODE_2AB5B5:        8B            PHB                       
CODE_2AB5B6:        4B            PHK                       
CODE_2AB5B7:        AB            PLB                       
CODE_2AB5B8:        AD 49 02      LDA $0249                 
CODE_2AB5BB:        29 08         AND #$08                  
CODE_2AB5BD:        4A            LSR A                     
CODE_2AB5BE:        4A            LSR A                     
CODE_2AB5BF:        4A            LSR A                     
CODE_2AB5C0:        85 C2         STA $C2                   
CODE_2AB5C2:        AD 50 03      LDA $0350                 
CODE_2AB5C5:        0A            ASL A                     
CODE_2AB5C6:        18            CLC                       
CODE_2AB5C7:        6D 50 03      ADC $0350                 
CODE_2AB5CA:        A8            TAY                       
CODE_2AB5CB:        B9 45 B5      LDA.w DATA_2AB546-1,y               
CODE_2AB5CE:        85 08         STA $08                   
CODE_2AB5D0:        C2 20         REP #$20                  
CODE_2AB5D2:        B9 43 B5      LDA.w DATA_2AB546-3,y               
CODE_2AB5D5:        85 06         STA $06                   
CODE_2AB5D7:        E2 20         SEP #$20                  
CODE_2AB5D9:        A6 25         LDX $25                   
CODE_2AB5DB:        AD 4B 02      LDA $024B                 
CODE_2AB5DE:        4A            LSR A                     
CODE_2AB5DF:        4A            LSR A                     
CODE_2AB5E0:        4A            LSR A                     
CODE_2AB5E1:        4A            LSR A                     
CODE_2AB5E2:        1A            INC A                     
CODE_2AB5E3:        29 0F         AND #$0F                  
CODE_2AB5E5:        A8            TAY                       
CODE_2AB5E6:        A9 7F         LDA #$7F                  
CODE_2AB5E8:        85 0F         STA $0F                   
CODE_2AB5EA:        C2 20         REP #$20                  
CODE_2AB5EC:        64 0D         STZ $0D                   
CODE_2AB5EE:        88            DEY                       
CODE_2AB5EF:        F0 0A         BEQ CODE_2AB5FB           
CODE_2AB5F1:        A5 0D         LDA $0D                   
CODE_2AB5F3:        18            CLC                       
CODE_2AB5F4:        69 B0 01      ADC #$01B0                
CODE_2AB5F7:        85 0D         STA $0D                   
CODE_2AB5F9:        80 F3         BRA CODE_2AB5EE           

CODE_2AB5FB:        A9 1A 00      LDA #$001A                
CODE_2AB5FE:        85 00         STA $00                   
CODE_2AB600:        AD 4B 02      LDA $024B                 
CODE_2AB603:        29 0F 00      AND #$000F                
CODE_2AB606:        85 09         STA $09                   
CODE_2AB608:        C2 10         REP #$10                  
CODE_2AB60A:        A2 00 00      LDX #$0000                
CODE_2AB60D:        A4 09         LDY $09                   
CODE_2AB60F:        B7 0D         LDA [$0D],y               
CODE_2AB611:        29 FF 00      AND #$00FF                
CODE_2AB614:        0A            ASL A                     
CODE_2AB615:        0A            ASL A                     
CODE_2AB616:        0A            ASL A                     
CODE_2AB617:        A8            TAY                       
CODE_2AB618:        A5 C2         LDA $C2                   
CODE_2AB61A:        29 FF 00      AND #$00FF                
CODE_2AB61D:        F0 04         BEQ CODE_2AB623           
CODE_2AB61F:        C8            INY                       
CODE_2AB620:        C8            INY                       
CODE_2AB621:        C8            INY                       
CODE_2AB622:        C8            INY                       
CODE_2AB623:        B7 06         LDA [$06],y               
CODE_2AB625:        9F 02 20 7F   STA $7F2002,x             
CODE_2AB629:        C8            INY                       
CODE_2AB62A:        C8            INY                       
CODE_2AB62B:        B7 06         LDA [$06],y               
CODE_2AB62D:        9F 04 20 7F   STA $7F2004,x             
CODE_2AB631:        A5 09         LDA $09                   
CODE_2AB633:        18            CLC                       
CODE_2AB634:        69 10 00      ADC #$0010                
CODE_2AB637:        85 09         STA $09                   
CODE_2AB639:        E8            INX                       
CODE_2AB63A:        E8            INX                       
CODE_2AB63B:        E8            INX                       
CODE_2AB63C:        E8            INX                       
CODE_2AB63D:        C6 00         DEC $00                   
CODE_2AB63F:        10 CC         BPL CODE_2AB60D           
CODE_2AB641:        E2 30         SEP #$30                  
CODE_2AB643:        A6 25         LDX $25                   
CODE_2AB645:        AD 4B 02      LDA $024B                 
CODE_2AB648:        29 0F         AND #$0F                  
CODE_2AB64A:        0A            ASL A                     
CODE_2AB64B:        05 C2         ORA $C2                   
CODE_2AB64D:        8F 01 20 7F   STA $7F2001               
CODE_2AB651:        AD 4B 02      LDA $024B                 
CODE_2AB654:        29 10         AND #$10                  
CODE_2AB656:        F0 02         BEQ CODE_2AB65A           
CODE_2AB658:        A9 04         LDA #$04                  
CODE_2AB65A:        09 10         ORA #$10                  
CODE_2AB65C:        8F 00 20 7F   STA $7F2000               
CODE_2AB660:        AD 50 03      LDA $0350                 
CODE_2AB663:        C9 02         CMP #$02                  
CODE_2AB665:        F0 04         BEQ CODE_2AB66B           
CODE_2AB667:        C9 23         CMP #$23                  
CODE_2AB669:        D0 10         BNE CODE_2AB67B           
CODE_2AB66B:        C2 20         REP #$20                  
CODE_2AB66D:        AF 00 20 7F   LDA $7F2000               
CODE_2AB671:        18            CLC                       
CODE_2AB672:        69 40 00      ADC #$0040                
CODE_2AB675:        8F 00 20 7F   STA $7F2000               
CODE_2AB679:        E2 20         SEP #$20                  
CODE_2AB67B:        AB            PLB                       
CODE_2AB67C:        6B            RTL                       

CODE_2AB67D:        C2 20         REP #$20                  
CODE_2AB67F:        AD 4B 02      LDA $024B                 
CODE_2AB682:        29 F0 00      AND #$00F0                
CODE_2AB685:        0A            ASL A                     
CODE_2AB686:        0A            ASL A                     
CODE_2AB687:        18            CLC                       
CODE_2AB688:        69 00 10      ADC #$1000                
CODE_2AB68B:        8F 00 20 7F   STA $7F2000               
CODE_2AB68F:        EB            XBA                       
CODE_2AB690:        8F 00 20 7F   STA $7F2000               
CODE_2AB694:        E2 20         SEP #$20                  
CODE_2AB696:        AD 4B 02      LDA $024B                 
CODE_2AB699:        29 01         AND #$01                  
CODE_2AB69B:        F0 0A         BEQ CODE_2AB6A7           
CODE_2AB69D:        AF 00 20 7F   LDA $7F2000               
CODE_2AB6A1:        49 08         EOR #$08                  
CODE_2AB6A3:        8F 00 20 7F   STA $7F2000               
CODE_2AB6A7:        AD 18 02      LDA $0218                 
CODE_2AB6AA:        29 08         AND #$08                  
CODE_2AB6AC:        F0 0B         BEQ CODE_2AB6B9           
CODE_2AB6AE:        AF 01 20 7F   LDA $7F2001               
CODE_2AB6B2:        18            CLC                       
CODE_2AB6B3:        69 20         ADC #$20                  
CODE_2AB6B5:        8F 01 20 7F   STA $7F2001               
CODE_2AB6B9:        8B            PHB                       
CODE_2AB6BA:        4B            PHK                       
CODE_2AB6BB:        AB            PLB                       
CODE_2AB6BC:        AD 50 03      LDA $0350                 
CODE_2AB6BF:        0A            ASL A                     
CODE_2AB6C0:        18            CLC                       
CODE_2AB6C1:        6D 50 03      ADC $0350                 
CODE_2AB6C4:        A8            TAY                       
CODE_2AB6C5:        B9 45 B5      LDA.w DATA_2AB546-1,y               
CODE_2AB6C8:        85 0E         STA $0E                   
CODE_2AB6CA:        C2 20         REP #$20                  
CODE_2AB6CC:        B9 43 B5      LDA.w DATA_2AB546-3,y               
CODE_2AB6CF:        85 0C         STA $0C                   
CODE_2AB6D1:        64 D8         STZ $D8                   
CODE_2AB6D3:        E2 20         SEP #$20                  
CODE_2AB6D5:        A9 7F         LDA #$7F                  
CODE_2AB6D7:        85 DA         STA $DA                   
CODE_2AB6D9:        AD 4B 02      LDA $024B                 
CODE_2AB6DC:        29 0F         AND #$0F                  
CODE_2AB6DE:        A8            TAY                       
CODE_2AB6DF:        F0 0F         BEQ CODE_2AB6F0           
CODE_2AB6E1:        C2 20         REP #$20                  
CODE_2AB6E3:        A5 D8         LDA $D8                   
CODE_2AB6E5:        18            CLC                       
CODE_2AB6E6:        69 B0 01      ADC #$01B0                
CODE_2AB6E9:        85 D8         STA $D8                   
CODE_2AB6EB:        E2 20         SEP #$20                  
CODE_2AB6ED:        88            DEY                       
CODE_2AB6EE:        D0 F1         BNE CODE_2AB6E1           
CODE_2AB6F0:        C2 20         REP #$20                  
CODE_2AB6F2:        AD 4B 02      LDA $024B                 
CODE_2AB6F5:        29 F0 00      AND #$00F0                
CODE_2AB6F8:        85 06         STA $06                   
CODE_2AB6FA:        64 08         STZ $08                   
CODE_2AB6FC:        C2 10         REP #$10                  
CODE_2AB6FE:        A4 06         LDY $06                   
CODE_2AB700:        B7 D8         LDA [$D8],y               
CODE_2AB702:        85 0A         STA $0A                   
CODE_2AB704:        E6 06         INC $06                   
CODE_2AB706:        A5 0A         LDA $0A                   
CODE_2AB708:        29 FF 00      AND #$00FF                
CODE_2AB70B:        0A            ASL A                     
CODE_2AB70C:        0A            ASL A                     
CODE_2AB70D:        0A            ASL A                     
CODE_2AB70E:        A8            TAY                       
CODE_2AB70F:        A6 08         LDX $08                   
CODE_2AB711:        AD 18 02      LDA $0218                 
CODE_2AB714:        29 08 00      AND #$0008                
CODE_2AB717:        F0 02         BEQ CODE_2AB71B           
CODE_2AB719:        C8            INY                       
CODE_2AB71A:        C8            INY                       
CODE_2AB71B:        B7 0C         LDA [$0C],y               
CODE_2AB71D:        9F 02 20 7F   STA $7F2002,x             
CODE_2AB721:        C8            INY                       
CODE_2AB722:        C8            INY                       
CODE_2AB723:        C8            INY                       
CODE_2AB724:        C8            INY                       
CODE_2AB725:        B7 0C         LDA [$0C],y               
CODE_2AB727:        9F 04 20 7F   STA $7F2004,x             
CODE_2AB72B:        E8            INX                       
CODE_2AB72C:        E8            INX                       
CODE_2AB72D:        E8            INX                       
CODE_2AB72E:        E8            INX                       
CODE_2AB72F:        86 08         STX $08                   
CODE_2AB731:        E0 40 00      CPX #$0040                
CODE_2AB734:        90 C8         BCC CODE_2AB6FE           
CODE_2AB736:        E2 30         SEP #$30                  
CODE_2AB738:        AB            PLB                       
CODE_2AB739:        60            RTS                       

CODE_2AB73A:        48            PHA                       
CODE_2AB73B:        DA            PHX                       
CODE_2AB73C:        5A            PHY                       
CODE_2AB73D:        C2 30         REP #$30                  
CODE_2AB73F:        98            TYA                       
CODE_2AB740:        29 FF 00      AND #$00FF                
CODE_2AB743:        09 00 20      ORA #$2000                
CODE_2AB746:        A8            TAY                       
CODE_2AB747:        E2 20         SEP #$20                  
CODE_2AB749:        A9 00         LDA #$00                  
CODE_2AB74B:        97 2E         STA [$2E],y               
CODE_2AB74D:        E2 10         SEP #$10                  
CODE_2AB74F:        7A            PLY                       
CODE_2AB750:        FA            PLX                       
CODE_2AB751:        68            PLA                       
CODE_2AB752:        6B            RTL                       

CODE_2AB753:        DA            PHX                       
CODE_2AB754:        A5 30         LDA $30                   
CODE_2AB756:        85 DA         STA $DA                   
CODE_2AB758:        C2 20         REP #$20                  
CODE_2AB75A:        A5 2E         LDA $2E                   
CODE_2AB75C:        85 D8         STA $D8                   
CODE_2AB75E:        E2 20         SEP #$20                  
CODE_2AB760:        AD 06 07      LDA $0706                 
CODE_2AB763:        29 0F         AND #$0F                  
CODE_2AB765:        AA            TAX                       
CODE_2AB766:        BF 78 B7 2A   LDA.l DATA_2AB778,x             
CODE_2AB76A:        85 02         STA $02                   
CODE_2AB76C:        AC 00 07      LDY $0700                 
CODE_2AB76F:        A5 02         LDA $02                   
CODE_2AB771:        97 D8         STA [$D8],y               
CODE_2AB773:        20 D2 8A      JSR CODE_2A8AD2           
CODE_2AB776:        FA            PLX                       
CODE_2AB777:        6B            RTL                       

DATA_2AB778:        db $20,$21,$24,$25

CODE_2AB77C:        AC 00 07      LDY $0700              
CODE_2AB77F:        A9 23         LDA #$23                  
CODE_2AB781:        97 2E         STA [$2E],y               
CODE_2AB783:        C8            INY                       
CODE_2AB784:        97 2E         STA [$2E],y               
CODE_2AB786:        6B            RTL                       

CODE_2AB787:        8B            PHB                       
CODE_2AB788:        4B            PHK                       
CODE_2AB789:        AB            PLB                       
CODE_2AB78A:        A7 2B         LDA [$2B]                 
CODE_2AB78C:        85 02         STA $02                   
CODE_2AB78E:        C2 20         REP #$20                  
CODE_2AB790:        64 DB         STZ $DB                   
CODE_2AB792:        EE 2B 00      INC $002B                 
CODE_2AB795:        A5 2E         LDA $2E                   
CODE_2AB797:        85 D8         STA $D8                   
CODE_2AB799:        E2 20         SEP #$20                  
CODE_2AB79B:        A5 30         LDA $30                   
CODE_2AB79D:        85 DA         STA $DA                   
CODE_2AB79F:        AD 06 07      LDA $0706                 
CODE_2AB7A2:        29 0F         AND #$0F                  
CODE_2AB7A4:        AA            TAX                       
CODE_2AB7A5:        E0 08         CPX #$08                  
CODE_2AB7A7:        F0 1D         BEQ CODE_2AB7C6           
CODE_2AB7A9:        BD EF B7      LDA.w DATA_2AB7EF,x               
CODE_2AB7AC:        85 03         STA $03                   
CODE_2AB7AE:        BD F9 B7      LDA.w DATA_2AB7F9,x               
CODE_2AB7B1:        85 DB         STA $DB                   
CODE_2AB7B3:        AC 00 07      LDY $0700                 
CODE_2AB7B6:        A5 03         LDA $03                   
CODE_2AB7B8:        97 D8         STA [$D8],y               
CODE_2AB7BA:        20 D2 8A      JSR CODE_2A8AD2           
CODE_2AB7BD:        C6 02         DEC $02                   
CODE_2AB7BF:        30 2C         BMI CODE_2AB7ED           
CODE_2AB7C1:        20 F5 86      JSR CODE_2A86F5           
CODE_2AB7C4:        80 F0         BRA CODE_2AB7B6           

CODE_2AB7C6:        AC 00 07      LDY $0700                 
CODE_2AB7C9:        A9 22         LDA #$22                  
CODE_2AB7CB:        97 2E         STA [$2E],y               
CODE_2AB7CD:        20 D2 8A      JSR CODE_2A8AD2           
CODE_2AB7D0:        22 BB BE 23   JSL CODE_23BEBB           
CODE_2AB7D4:        B7 2E         LDA [$2E],y               
CODE_2AB7D6:        C9 C2         CMP #$C2                  
CODE_2AB7D8:        F0 F6         BEQ CODE_2AB7D0           
CODE_2AB7DA:        C9 F5         CMP #$F5                  
CODE_2AB7DC:        D0 0F         BNE CODE_2AB7ED           
CODE_2AB7DE:        C2 20         REP #$20                  
CODE_2AB7E0:        A5 2E         LDA $2E                   
CODE_2AB7E2:        85 D8         STA $D8                   
CODE_2AB7E4:        E2 20         SEP #$20                  
CODE_2AB7E6:        A9 23         LDA #$23                  
CODE_2AB7E8:        97 2E         STA [$2E],y               
CODE_2AB7EA:        20 D2 8A      JSR CODE_2A8AD2           
CODE_2AB7ED:        AB            PLB                       
CODE_2AB7EE:        6B            RTL                       

DATA_2AB7EF:        db $02,$04,$05,$06,$07,$08,$0B,$0C ;
                    db $00,$0D ;

DATA_2AB7F9:        db $0F,$11,$11,$0F,$0E,$12,$12,$0E ;
                    db $00,$01,$00,$00,$13,$14,$00,$00 ;
                    db $00,$17,$18,$19,$00,$00,$00,$00 ;
                    db $00,$00,$00,$00,$15,$16,$00,$00 ;
                    db $00,$1A,$00,$1B,$00,$00,$00,$00 ;
                    db $00,$00,$00,$00,$15,$0E,$14,$00 ;
                    db $00,$1C,$1D,$1E,$00,$00,$00,$00 ;
                    db $00,$00,$00,$00,$15,$0F,$16,$00 ;
                    db $00,$00,$00,$00,$00,$00,$00,$13 ;
                    db $14,$00,$00,$00,$15,$10,$0E,$14 ;
                    db $00,$00,$00,$00,$00,$00,$00,$15 ;
                    db $16,$00,$00,$13,$11,$10,$0F,$16 ;
                    db $00,$00,$00,$00,$00,$00,$13,$11 ;
                    db $16,$00,$00,$11,$12,$12,$13,$00 ;
                    db $00,$17,$18,$19,$00,$00,$00,$00 ;
                    db $00,$00,$00,$14,$15,$15,$16,$00 ;
                    db $00,$1A,$00,$1B,$00,$00,$00,$11 ;
                    db $12,$13,$00,$14,$15,$15,$16,$00 ;
                    db $00,$1C,$1D,$1E,$00,$00,$00,$14 ;
                    db $15,$16,$00,$14,$15,$15,$16,$00 ;
                    db $00,$00,$00,$00,$00,$11,$12,$02 ;
                    db $15,$16,$00,$14,$15,$03,$12,$12 ;
                    db $13,$00,$00,$00,$00,$14,$15,$16 ;
                    db $15,$16,$00,$14,$15,$14,$15,$15 ;
                    db $16,$00,$00,$00,$00,$14,$15,$16 ;
                    db $15,$16,$00,$00,$00,$00,$00,$00 ;
                    db $00,$17,$18,$19,$00,$00,$00,$00 ;
                    db $00,$00,$00,$00,$00,$00,$00,$00 ;
                    db $00,$1A,$00,$1B,$00,$00,$00,$00 ;
                    db $00,$00,$00,$00,$00,$00,$00,$00 ;
                    db $00,$1C,$1D,$1E,$00,$00,$00,$00 ;
                    db $00,$00,$00,$00,$00,$00,$14,$15 ;
                    db $00,$00,$00,$00,$00,$00,$00,$00 ;
                    db $00,$00,$00,$00,$00,$14,$01,$02 ;
                    db $04,$14,$15,$00,$00,$00,$00,$00 ;
                    db $00,$00,$00,$00,$14,$01,$01,$02 ;
                    db $03,$01,$02,$04,$00,$00,$14,$15 ;
                    db $00,$00,$00,$00,$00,$00,$00,$00 ;
                    db $00,$17,$18,$19,$00,$00,$00,$15 ;
                    db $16,$00,$00,$00,$15,$16,$00,$00 ;
                    db $00,$1A,$00,$1B,$00,$00,$00,$00 ;
                    db $00,$00,$00,$00,$00,$00,$00,$00 ;
                    db $00,$1C,$1D,$1E,$00,$00,$00,$00 ;
                    db $00,$00,$00,$00,$00,$00,$00,$00 ;
                    db $00,$00,$00,$00,$15,$16,$00,$00 ;
                    db $00,$00,$00,$00,$00,$00,$00,$00 ;
                    db $00,$00,$00,$00,$00,$00,$00,$00 ;
                    db $00,$00,$00,$00,$00,$00,$00,$00 ;
                    db $00,$00,$00,$00,$00,$00,$00,$00 ;
                    db $00,$00,$00,$04,$05,$05,$06,$00 ;
                    db $00,$17,$18,$19,$00,$00,$00,$00 ;
                    db $00,$00,$00,$07,$08,$08,$09,$00 ;
                    db $00,$1A,$00,$1B,$00,$00,$00,$04 ;
                    db $05,$06,$00,$07,$08,$08,$09,$00 ;
                    db $00,$1C,$1D,$1E,$00,$00,$00,$07 ;
                    db $08,$09,$00,$07,$08,$08,$09,$00 ;
                    db $00,$00,$00,$00,$00,$04,$05,$0A ;
                    db $08,$09,$00,$07,$08,$0B,$05,$05 ;
                    db $06,$00,$00,$00,$00,$07,$08,$09 ;
                    db $08,$09,$00,$07,$08,$07,$08,$08 ;
                    db $09,$00,$00,$00,$00,$07,$08,$09 ;
                    db $08,$09 ;

DATA_2AB9E3:        db $03,$B8,$63,$B8,$C3,$B8,$23,$B9 ;
                    db $83,$B9,$03,$B8,$03,$B8 ;

DATA_2AB9F1:        db $01,$04,$09,$0D,$0C,$03,$0E,$00 ;
                    db $00,$00,$00,$00,$00,$00,$00,$00 ;
                    db $00,$00,$00,$00,$00,$00,$00,$00 ;
                    db $00,$00,$00,$00,$00,$00,$00,$00 ;
                    db $00,$00,$00,$00,$00,$00,$00,$00 ;
                    db $00,$00,$01,$00,$00,$00,$00,$00 ;
                    db $00,$00,$00,$00,$00,$00,$00,$00 ;
                    db $00,$00,$01,$00,$00,$00,$00,$00 ;
                    db $00,$00,$00,$00,$00,$00,$00,$00 ;
                    db $00,$00,$01,$01,$00,$00,$00,$00 ;
                    db $00,$00,$00,$00,$00,$00,$00,$00 ;
                    db $00,$01,$01,$01,$00,$00,$00,$00 ;
                    db $00,$00,$00,$00,$01,$00,$00,$00 ;
                    db $00,$00,$00,$00,$00,$00,$00,$00 ;
                    db $00,$00,$00,$00,$00,$00,$00,$00 ;
                    db $00,$00,$00,$00,$00,$00,$00,$00 ;
                    db $00,$00,$00,$00,$00,$00,$00,$00 ;
                    db $00,$00,$00,$00,$00,$00,$00,$00 ;
                    db $00,$00,$00,$00,$00,$00,$00,$00 ;
                    db $00,$00,$00,$00,$00,$00,$00,$00 ;
                    db $00,$00,$00,$00,$01,$00,$00,$00 ;
                    db $00,$00,$01,$00,$00,$00,$00,$00 ;
                    db $00,$00,$00,$00,$00,$00,$00,$00 ;
                    db $00,$00,$00,$00,$00,$00,$00,$00 ;
                    db $00,$00,$00,$00,$00,$00,$00,$00 ;
                    db $00,$00,$00,$00,$00,$00,$00,$00 ;
                    db $00,$00,$00,$00,$00,$00,$00,$00 ;
                    db $00,$00,$00,$00,$00,$00,$00,$00 ;
                    db $00,$00,$00,$00,$00,$00,$00,$00 ;
                    db $00,$00,$00,$00,$00,$00,$00,$00 ;
                    db $00,$00,$00,$00,$00,$00,$00,$00 ;
                    db $00,$00,$00,$00,$00,$00,$00,$00 ;
                    db $00,$00,$00,$00,$00,$00,$00,$00 ;
                    db $00,$00,$00,$01,$01,$01,$00,$00 ;
                    db $00,$00,$00,$00,$00,$00,$00,$00 ;
                    db $00,$00,$01,$01,$01,$01,$01,$01 ;
                    db $01,$00,$00,$00,$00,$00,$00,$00 ;
                    db $00,$00,$00,$00,$00,$00,$00,$00 ;
                    db $00,$00,$00,$00,$00,$00,$00,$00 ;
                    db $00,$00,$00,$00,$00,$00,$00,$00 ;
                    db $00,$00,$00,$00,$00,$00,$00,$00 ;
                    db $00,$00,$00,$00,$00,$00,$00,$00 ;
                    db $00,$00,$00,$00,$00,$00,$00,$00 ;
                    db $00,$00,$00,$00,$00,$00,$00,$00 ;
                    db $00,$00,$00,$00,$00,$00,$00,$00 ;
                    db $00,$00,$00,$00,$00,$00,$00,$00 ;
                    db $00,$00,$00,$00,$00,$00,$00,$00 ;
                    db $00,$00,$00,$00,$00,$00,$00,$00 ;
                    db $00,$00,$00,$00,$00,$00,$00,$00 ;
                    db $01,$01,$01,$01,$00,$00,$00,$00 ;
                    db $00,$00,$00,$00,$00,$00,$00,$00 ;
                    db $01,$01,$01,$01,$00,$00,$00,$00 ;
                    db $00,$00,$00,$00,$01,$01,$01,$00 ;
                    db $01,$01,$01,$01,$00,$00,$00,$00 ;
                    db $00,$00,$00,$00,$01,$01,$01,$00 ;
                    db $01,$01,$01,$01,$00,$00,$00,$00 ;
                    db $00,$00,$01,$01,$01,$01,$01,$00 ;
                    db $01,$01,$01,$01,$01,$01,$00,$00 ;
                    db $00,$00,$01,$01,$01,$01,$01,$00 ;
                    db $01,$01,$01,$01,$01,$01,$00,$00 ;
                    db $00,$00,$01,$01,$01,$01,$01 ;

DATA_2ABBD8:        db $F8,$B9,$58,$BA,$B8,$BA,$18,$BB ;
                    db $78,$BB,$F8,$B9,$F8,$B9,$83,$10 ;
                    db $E0,$10,$0F,$11,$E5,$11,$FD,$11 ;
                    db $6F,$12,$C7,$10,$D5,$10,$B2,$11 ;
                    db $21,$12,$9A,$12,$8B,$10,$9A,$10 ;
                    db $3D,$11,$63,$11,$8B,$11,$37,$12 ;
                    db $68,$12 ;

DATA_2ABC0A:        db $08,$00,$07,$00,$07,$00,$06,$00 ;
                    db $06,$00,$06,$00,$06,$00,$06,$00 ;
                    db $06,$00,$06,$00,$06,$00,$06,$00 ;
                    db $06,$00,$06,$00,$07,$00,$07,$00 ;
                    db $08,$00,$08,$00,$08,$00,$09,$00 ;
                    db $09,$00,$09,$00,$09,$00,$09,$00 ;
                    db $09,$00,$09,$00,$09,$00,$09,$00 ;
                    db $09,$00,$09,$00,$08,$00,$08,$00 ;
                    db $08,$00,$07,$00,$07,$00,$06,$00 ;
                    db $06,$00,$06,$00,$06,$00,$06,$00 ;
                    db $06,$00,$06,$00,$06,$00,$06,$00 ;
                    db $06,$00,$06,$00,$07,$00,$07,$00 ;
                    db $08,$00,$08,$00,$08,$00,$09,$00 ;
                    db $09,$00,$09,$00,$09,$00,$09,$00 ;
                    db $09,$00,$09,$00,$09,$00,$09,$00 ;
                    db $09,$00,$09,$00,$08,$00,$08,$00 ;
                    db $08,$00,$07,$00,$07,$00,$06,$00 ;
                    db $06,$00,$06,$00,$06,$00,$06,$00 ;
                    db $06,$00,$06,$00,$06,$00,$06,$00 ;
                    db $06,$00,$06,$00,$07,$00,$07,$00 ;
                    db $08,$00,$08,$00,$08,$00,$09,$00 ;
                    db $09,$00,$09,$00,$09,$00,$09,$00 ;
                    db $09,$00,$09,$00,$09,$00,$09,$00 ;
                    db $09,$00,$09,$00,$08,$00,$08,$00 ;
                    db $08,$00,$07,$00,$07,$00,$06,$00 ;
                    db $06,$00,$06,$00,$06,$00,$06,$00 ;
                    db $06,$00,$06,$00,$06,$00,$06,$00 ;
                    db $06,$00,$06,$00,$07,$00,$07,$00 ;
                    db $08,$00,$08,$00,$08,$00,$09,$00 ;
                    db $09,$00,$09,$00,$09,$00,$09,$00 ;
                    db $09,$00,$09,$00,$09,$00,$09,$00 ;
                    db $09,$00,$09,$00,$08,$00,$08,$00 ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$00 ;
                    db $FF,$00,$FF,$00,$FF,$00,$FF,$00 ;
                    db $76,$09,$67,$09,$77,$09,$56,$09 ;
                    db $5C,$09,$57,$09,$5D,$09,$48,$09 ;
                    db $58,$09,$49,$09,$59,$09,$4C,$09 ;
                    db $5C,$09,$4D,$09,$5D,$09,$56,$09 ;
                    db $5C,$09,$57,$09,$4E,$09,$80,$09 ;
                    db $90,$09,$81,$09,$91,$09,$6A,$09 ;
                    db $7A,$09,$6B,$09,$7B,$09,$4C,$09 ;
                    db $66,$09,$4D,$09,$5D,$09,$4C,$09 ;
                    db $5C,$09,$4D,$09,$4E,$09,$80,$09 ;
                    db $90,$09,$A0,$09,$FF,$00,$4B,$09 ;
                    db $5B,$09,$FF,$00,$FF,$00,$FF,$00 ;
                    db $FF,$00,$4A,$09,$5A,$09,$A1,$09 ;
                    db $FF,$00,$81,$09,$91,$09,$FF,$00 ;
                    db $76,$05,$67,$05,$77,$05,$56,$05 ;
                    db $7C,$05,$57,$05,$7D,$05,$48,$05 ;
                    db $58,$05,$49,$05,$59,$05,$FF,$00 ;
                    db $50,$05,$41,$05,$51,$05,$42,$05 ;
                    db $52,$05,$43,$05,$53,$05,$68,$05 ;
                    db $78,$05,$6D,$05,$7D,$05,$6C,$05 ;
                    db $7C,$05,$4F,$05,$7D,$05,$6C,$05 ;
                    db $7C,$05,$6D,$05,$7D,$05,$60,$05 ;
                    db $70,$05,$61,$05,$71,$05,$62,$05 ;
                    db $72,$05,$63,$05,$73,$05,$6C,$05 ;
                    db $7C,$05,$46,$05,$47,$05,$42,$05 ;
                    db $52,$05,$44,$05,$54,$05,$45,$05 ;
                    db $55,$05,$41,$05,$51,$05,$6D,$05 ;
                    db $7D,$05,$46,$05,$47,$05,$62,$05 ;
                    db $72,$05,$64,$05,$74,$05,$65,$05 ;
                    db $75,$05,$61,$05,$71,$05,$5E,$09 ;
                    db $6E,$09,$5F,$09,$6F,$09,$7E,$09 ;
                    db $6E,$09,$7F,$09,$6F,$09,$56,$05 ;
                    db $7C,$05,$B1,$05,$7D,$05,$B0,$05 ;
                    db $7C,$05,$57,$05,$7D,$05,$FF,$00 ;
                    db $76,$05,$40,$05,$77,$05,$B0,$05 ;
                    db $7C,$05,$B1,$05,$7D,$05,$4C,$09 ;
                    db $66,$09,$4D,$09,$4E,$09,$FF,$00 ;
                    db $FF,$00,$82,$09,$92,$09,$83,$09 ;
                    db $93,$09,$84,$09,$94,$09,$85,$09 ;
                    db $95,$09,$FF,$00,$FF,$00,$A2,$09 ;
                    db $5C,$09,$A3,$09,$5D,$09,$1C,$05 ;
                    db $1C,$05,$1C,$05,$1C,$05,$00,$09 ;
                    db $10,$09,$01,$09,$11,$09,$04,$09 ;
                    db $13,$49,$05,$09,$15,$09,$02,$09 ;
                    db $11,$09,$03,$09,$11,$09,$13,$09 ;
                    db $11,$09,$11,$09,$11,$09,$11,$09 ;
                    db $11,$09,$13,$49,$11,$09,$11,$09 ;
                    db $11,$09,$11,$09,$11,$09,$20,$09 ;
                    db $30,$09,$21,$09,$11,$09,$22,$09 ;
                    db $11,$09,$23,$09,$11,$09,$24,$09 ;
                    db $13,$49,$25,$09,$35,$09,$26,$09 ;
                    db $36,$09,$11,$09,$37,$09,$06,$09 ;
                    db $16,$09,$11,$09,$11,$09,$08,$0D ;
                    db $18,$0D,$09,$0D,$19,$0D,$0A,$0D ;
                    db $1A,$0D,$0B,$0D,$1B,$0D,$28,$0D ;
                    db $38,$0D,$29,$0D,$39,$0D,$2A,$0D ;
                    db $3A,$0D,$2B,$0D,$3B,$0D,$FF,$01 ;
                    db $FF,$01,$FF,$01,$FF,$01,$0F,$49 ;
                    db $1F,$49,$1C,$45,$1E,$49,$1C,$45 ;
                    db $1D,$45,$1C,$45,$1C,$45,$2F,$49 ;
                    db $3F,$49,$2E,$49,$3E,$49,$2D,$49 ;
                    db $3D,$49,$1C,$45,$1C,$45,$1C,$45 ;
                    db $1D,$09,$1C,$45,$1E,$09,$0F,$49 ;
                    db $1F,$09,$1C,$45,$1C,$45,$2D,$09 ;
                    db $3D,$09,$2E,$09,$3E,$09,$2F,$09 ;
                    db $3F,$09,$1C,$45,$1C,$45,$1C,$05 ;
                    db $1D,$09,$1C,$05,$1E,$09,$0F,$09 ;
                    db $1F,$09,$1C,$05,$1C,$05,$FF,$00 ;
                    db $FF,$00,$FF,$00,$FF,$00,$60,$09 ;
                    db $70,$09,$61,$09,$71,$09,$45,$09 ;
                    db $45,$09,$45,$09,$45,$09,$62,$09 ;
                    db $72,$09,$63,$09,$73,$09,$40,$09 ;
                    db $50,$09,$41,$09,$51,$09,$49,$09 ;
                    db $59,$09,$4A,$09,$5A,$09,$44,$09 ;
                    db $54,$09,$41,$09,$51,$09,$42,$09 ;
                    db $52,$09,$43,$09,$53,$09,$57,$09 ;
                    db $78,$09,$48,$09,$79,$09,$55,$09 ;
                    db $56,$09,$57,$09,$79,$09,$48,$09 ;
                    db $78,$09,$57,$09,$79,$09,$57,$09 ;
                    db $79,$09,$58,$09,$7A,$09,$47,$09 ;
                    db $77,$09,$48,$09,$78,$09,$57,$09 ;
                    db $78,$09,$4D,$09,$5D,$09,$4E,$09 ;
                    db $5E,$09,$4F,$09,$5F,$09,$55,$09 ;
                    db $56,$09,$48,$09,$79,$09,$68,$09 ;
                    db $78,$09,$69,$09,$79,$09,$46,$09 ;
                    db $56,$09,$69,$09,$79,$09,$75,$09 ;
                    db $64,$09,$66,$09,$4B,$09,$66,$09 ;
                    db $4B,$09,$76,$09,$64,$09,$6D,$09 ;
                    db $7D,$09,$69,$09,$79,$09,$6E,$09 ;
                    db $78,$09,$6F,$09,$79,$09,$74,$09 ;
                    db $65,$09,$4B,$09,$4B,$09,$4B,$09 ;
                    db $4B,$09,$74,$09,$65,$09,$75,$09 ;
                    db $7E,$09,$76,$09,$7F,$09,$66,$09 ;
                    db $7E,$09,$76,$09,$7F,$09,$6D,$09 ;
                    db $78,$09,$69,$09,$79,$09,$69,$09 ;
                    db $79,$09,$6A,$09,$7A,$09,$67,$09 ;
                    db $77,$09,$68,$09,$78,$09,$46,$09 ;
                    db $56,$09,$6A,$09,$7A,$09,$46,$09 ;
                    db $56,$09,$68,$09,$78,$09,$68,$09 ;
                    db $78,$09,$6A,$09,$7A,$09,$60,$09 ;
                    db $70,$09,$63,$09,$73,$09,$75,$09 ;
                    db $64,$09,$66,$09,$FF,$00,$66,$09 ;
                    db $FF,$00,$76,$09,$64,$09,$74,$09 ;
                    db $65,$09,$FF,$00,$FF,$00,$FF,$00 ;
                    db $FF,$00,$74,$09,$65,$09,$FF,$00 ;
                    db $FF,$00,$FF,$00,$FF,$00,$5A,$45 ;
                    db $6A,$45,$59,$45,$69,$45,$4D,$05 ;
                    db $49,$05,$4E,$05,$4A,$45,$4E,$45 ;
                    db $49,$45,$4D,$45,$4A,$05,$4B,$05 ;
                    db $5B,$05,$4C,$05,$5C,$05,$4C,$45 ;
                    db $5C,$45,$4B,$45,$5B,$45,$40,$05 ;
                    db $50,$05,$41,$05,$77,$06,$41,$05 ;
                    db $77,$06,$41,$05,$77,$06,$41,$05 ;
                    db $77,$06,$42,$05,$52,$05,$44,$05 ;
                    db $54,$05,$45,$05,$7C,$06,$45,$05 ;
                    db $7C,$06,$46,$05,$56,$05,$5D,$05 ;
                    db $7F,$06,$5E,$05,$7F,$06,$5E,$45 ;
                    db $7F,$06,$5D,$45,$7F,$06,$50,$05 ;
                    db $50,$05,$77,$06,$77,$06,$77,$06 ;
                    db $77,$06,$77,$06,$77,$06,$44,$09 ;
                    db $54,$09,$45,$09,$7C,$0A,$45,$09 ;
                    db $7C,$0A,$46,$09,$56,$09,$54,$05 ;
                    db $54,$05,$7C,$06,$7C,$06,$7C,$06 ;
                    db $7C,$06,$56,$05,$56,$05,$7F,$06 ;
                    db $7F,$06,$7F,$06,$7F,$06,$54,$09 ;
                    db $54,$09,$7C,$0A,$7C,$0A,$7C,$0A ;
                    db $7C,$0A,$56,$09,$56,$09,$45,$05 ;
                    db $7C,$06,$45,$05,$7C,$06,$47,$09 ;
                    db $58,$09,$46,$09,$56,$09,$6F,$09 ;
                    db $76,$09,$70,$09,$77,$09,$71,$09 ;
                    db $78,$09,$7F,$06,$73,$09,$46,$05 ;
                    db $56,$05,$57,$09,$58,$09,$74,$09 ;
                    db $7A,$09,$75,$09,$7B,$09,$7C,$06 ;
                    db $7C,$06,$7C,$06,$7C,$06,$47,$09 ;
                    db $58,$09,$45,$09,$7C,$0A,$72,$09 ;
                    db $7F,$0A,$73,$09,$79,$09,$42,$05 ;
                    db $52,$05,$57,$05,$58,$05,$58,$09 ;
                    db $58,$09,$56,$09,$56,$09,$7C,$09 ;
                    db $63,$09,$68,$09,$68,$09,$63,$09 ;
                    db $63,$09,$7D,$09,$68,$09,$56,$05 ;
                    db $56,$05,$58,$09,$58,$09,$63,$09 ;
                    db $63,$09,$7F,$09,$68,$09,$58,$09 ;
                    db $58,$09,$7C,$0A,$7C,$0A,$7E,$09 ;
                    db $63,$09,$68,$09,$68,$09,$52,$05 ;
                    db $52,$05,$58,$05,$58,$05,$63,$09 ;
                    db $51,$09,$68,$09,$55,$09,$63,$09 ;
                    db $4F,$09,$68,$09,$5F,$09,$64,$05 ;
                    db $51,$09,$65,$05,$55,$09,$65,$05 ;
                    db $4F,$09,$65,$05,$5F,$09,$65,$05 ;
                    db $51,$09,$65,$05,$55,$09,$66,$05 ;
                    db $4F,$09,$67,$09,$5F,$09,$65,$09 ;
                    db $51,$09,$66,$09,$55,$09,$64,$05 ;
                    db $4F,$09,$65,$05,$5F,$09,$65,$05 ;
                    db $4F,$09,$66,$05,$5F,$09,$67,$09 ;
                    db $51,$09,$65,$09,$55,$09,$65,$09 ;
                    db $4F,$09,$66,$09,$5F,$09,$60,$05 ;
                    db $4F,$09,$61,$05,$5F,$09,$61,$05 ;
                    db $51,$09,$61,$05,$55,$09,$62,$05 ;
                    db $4F,$09,$67,$05,$5F,$09,$65,$05 ;
                    db $51,$09,$66,$05,$55,$09,$67,$09 ;
                    db $4F,$09,$66,$09,$5F,$09,$6B,$09 ;
                    db $6D,$09,$6C,$09,$6E,$09,$6D,$09 ;
                    db $6B,$09,$6E,$09,$6C,$09,$59,$05 ;
                    db $69,$05,$5A,$05,$6A,$05,$FF,$00 ;
                    db $FF,$00,$FF,$00,$FF,$00,$A1,$09 ;
                    db $A2,$49,$A1,$49,$A2,$09,$A4,$49 ;
                    db $7E,$0A,$A3,$49,$7E,$0A,$A3,$09 ;
                    db $7E,$0A,$A4,$09,$7E,$0A,$A5,$09 ;
                    db $9E,$09,$A6,$09,$9F,$09,$A6,$49 ;
                    db $9F,$49,$A5,$49,$9E,$49,$7A,$0A ;
                    db $70,$09,$7A,$0A,$71,$09,$7A,$0A ;
                    db $72,$09,$7A,$0A,$73,$09,$7C,$09 ;
                    db $9A,$09,$7D,$09,$9D,$09,$7E,$09 ;
                    db $8E,$09,$7F,$09,$8F,$09,$77,$06 ;
                    db $77,$06,$77,$06,$77,$06,$40,$05 ;
                    db $50,$05,$41,$05,$51,$05,$42,$05 ;
                    db $52,$05,$43,$05,$53,$05,$44,$05 ;
                    db $54,$05,$45,$05,$55,$05,$46,$05 ;
                    db $56,$05,$47,$05,$57,$05,$48,$05 ;
                    db $58,$05,$49,$05,$59,$05,$4A,$05 ;
                    db $5A,$05,$4B,$05,$5B,$05,$4C,$05 ;
                    db $5C,$05,$4D,$05,$5D,$05,$4E,$05 ;
                    db $5E,$05,$4F,$05,$5F,$05,$60,$05 ;
                    db $FF,$00,$61,$05,$FF,$00,$62,$05 ;
                    db $FF,$00,$63,$05,$FF,$00,$64,$05 ;
                    db $74,$05,$65,$05,$75,$05,$66,$05 ;
                    db $76,$05,$67,$05,$77,$05,$68,$05 ;
                    db $78,$05,$69,$05,$79,$05,$6A,$05 ;
                    db $7A,$05,$6B,$05,$7B,$05,$6C,$05 ;
                    db $FF,$00,$6D,$05,$FF,$00,$6E,$05 ;
                    db $FF,$00,$6F,$05,$FF,$00,$FF,$00 ;
                    db $FF,$00,$80,$05,$FF,$00,$81,$05 ;
                    db $91,$05,$82,$05,$92,$05,$83,$05 ;
                    db $93,$05,$84,$05,$94,$05,$85,$05 ;
                    db $FF,$00,$FF,$00,$FF,$00,$86,$05 ;
                    db $96,$05,$87,$05,$97,$05,$88,$05 ;
                    db $98,$05,$89,$05,$99,$05,$8A,$05 ;
                    db $FF,$00,$8B,$05,$9B,$05,$8C,$05 ;
                    db $9C,$05,$8D,$05,$FF,$00,$FF,$00 ;
                    db $FF,$00,$90,$05,$90,$85,$95,$05 ;
                    db $95,$85,$FF,$00,$FF,$00,$FF,$00 ;
                    db $8A,$85,$9B,$85,$8B,$85,$9C,$85 ;
                    db $8C,$85,$FF,$00,$8D,$85,$96,$85 ;
                    db $86,$85,$97,$85,$87,$85,$98,$85 ;
                    db $88,$85,$99,$85,$89,$85,$FF,$00 ;
                    db $FF,$00,$FF,$00,$80,$85,$91,$85 ;
                    db $81,$85,$92,$85,$82,$85,$93,$85 ;
                    db $83,$85,$94,$85,$84,$85,$FF,$00 ;
                    db $85,$85,$FF,$00,$FF,$00,$FF,$00 ;
                    db $60,$85,$FF,$00,$61,$85,$FF,$00 ;
                    db $62,$85,$FF,$00,$63,$85,$74,$85 ;
                    db $64,$85,$75,$85,$65,$85,$76,$85 ;
                    db $66,$85,$77,$85,$67,$85,$78,$85 ;
                    db $68,$85,$79,$85,$69,$85,$7A,$85 ;
                    db $6A,$85,$7B,$85,$6B,$85,$FF,$00 ;
                    db $6C,$85,$FF,$00,$6D,$85,$FF,$00 ;
                    db $6E,$85,$FF,$00,$6F,$85,$58,$85 ;
                    db $48,$85,$59,$85,$49,$85,$5A,$85 ;
                    db $4A,$85,$5B,$85,$4B,$85,$5C,$85 ;
                    db $4C,$85,$5D,$85,$4D,$85,$5E,$85 ;
                    db $4E,$85,$5F,$85,$4F,$85,$50,$85 ;
                    db $40,$85,$51,$85,$41,$85,$52,$85 ;
                    db $42,$85,$53,$85,$43,$85,$54,$85 ;
                    db $44,$85,$55,$85,$45,$85,$56,$85 ;
                    db $46,$85,$57,$85,$47,$85,$FF,$00 ;
                    db $A0,$09,$FF,$00,$A0,$09,$40,$05 ;
                    db $40,$05,$40,$05,$40,$05,$40,$05 ;
                    db $A1,$05,$40,$05,$A1,$05,$A2,$05 ;
                    db $A2,$05,$A3,$05,$A3,$05,$84,$05 ;
                    db $94,$05,$85,$05,$95,$05,$86,$05 ;
                    db $96,$05,$87,$05,$97,$05,$40,$05 ;
                    db $40,$05,$40,$05,$9C,$05,$40,$05 ;
                    db $9F,$05,$40,$05,$9F,$45,$40,$05 ;
                    db $9C,$45,$40,$05,$40,$05,$A4,$05 ;
                    db $88,$05,$A5,$05,$89,$05,$A6,$05 ;
                    db $8A,$05,$A7,$05,$8B,$05,$40,$05 ;
                    db $40,$05,$AC,$05,$BC,$05,$9D,$05 ;
                    db $AD,$05,$9E,$05,$AE,$05,$AC,$45 ;
                    db $BC,$45,$40,$05,$40,$05,$98,$05 ;
                    db $A8,$05,$99,$05,$A9,$05,$9A,$05 ;
                    db $AA,$05,$9B,$05,$AB,$05,$BD,$05 ;
                    db $40,$05,$BE,$05,$40,$05,$B8,$05 ;
                    db $B4,$05,$B9,$05,$B5,$05,$BA,$05 ;
                    db $B6,$05,$BB,$05,$B7,$05,$82,$05 ;
                    db $8C,$05,$83,$05,$8D,$05,$B0,$05 ;
                    db $8E,$05,$B1,$05,$8F,$05,$40,$05 ;
                    db $45,$05,$40,$05,$46,$05,$40,$05 ;
                    db $45,$05,$41,$05,$51,$05,$42,$05 ;
                    db $52,$05,$63,$05,$55,$05,$A2,$05 ;
                    db $45,$05,$A3,$05,$46,$05,$47,$05 ;
                    db $57,$05,$48,$05,$58,$05,$40,$05 ;
                    db $40,$05,$61,$05,$71,$05,$62,$05 ;
                    db $72,$05,$64,$05,$74,$05,$92,$05 ;
                    db $A2,$05,$93,$05,$A3,$05,$40,$05 ;
                    db $76,$05,$40,$05,$76,$05,$67,$05 ;
                    db $77,$05,$68,$05,$75,$05,$40,$05 ;
                    db $76,$05,$43,$05,$53,$05,$44,$05 ;
                    db $54,$05,$56,$05,$75,$05,$A2,$05 ;
                    db $B2,$05,$A3,$05,$B3,$05,$50,$05 ;
                    db $60,$05,$50,$05,$60,$05,$66,$05 ;
                    db $65,$05,$66,$05,$65,$05,$65,$05 ;
                    db $49,$05,$65,$05,$4A,$05,$65,$05 ;
                    db $4B,$05,$65,$05,$65,$05,$59,$05 ;
                    db $69,$05,$5A,$05,$6A,$05,$65,$05 ;
                    db $65,$05,$65,$05,$4D,$05,$65,$05 ;
                    db $4E,$05,$65,$05,$4F,$05,$65,$05 ;
                    db $65,$05,$65,$05,$65,$05,$65,$05 ;
                    db $5F,$05,$65,$05,$5F,$05,$FF,$00 ;
                    db $FF,$00,$FF,$00,$FF,$00,$5B,$05 ;
                    db $FF,$00,$5C,$05,$6C,$05,$5D,$05 ;
                    db $6D,$05,$5E,$05,$FF,$00,$FF,$00 ;
                    db $FF,$00,$7C,$05,$FF,$00,$4C,$05 ;
                    db $79,$05,$4C,$05,$7A,$05,$7D,$05 ;
                    db $FF,$00,$FF,$00,$FF,$00,$6B,$05 ;
                    db $6B,$05,$7B,$05,$7B,$05,$FF,$00 ;
                    db $FF,$00,$FF,$00,$6E,$05,$6B,$05 ;
                    db $6F,$05,$7B,$05,$7E,$05,$FF,$00 ;
                    db $7F,$05,$FF,$00,$FF,$00,$81,$05 ;
                    db $65,$05,$81,$05,$A0,$05,$80,$05 ;
                    db $91,$05,$80,$05,$90,$05,$80,$05 ;
                    db $90,$05,$81,$05,$65,$05,$81,$05 ;
                    db $65,$05,$81,$05,$65,$05,$80,$05 ;
                    db $91,$05,$80,$05,$91,$05,$FD,$08 ;
                    db $FD,$08,$FD,$08,$FD,$08,$FD,$08 ;
                    db $B0,$09,$FD,$08,$B1,$09,$FD,$08 ;
                    db $B8,$09,$FD,$08,$B9,$09,$FD,$08 ;
                    db $B0,$09,$FD,$08,$BB,$09,$FD,$08 ;
                    db $BC,$09,$FD,$08,$BD,$09,$40,$09 ;
                    db $50,$09,$41,$09,$51,$09,$48,$09 ;
                    db $42,$09,$49,$09,$43,$09,$4A,$09 ;
                    db $44,$09,$4B,$09,$45,$09,$4C,$09 ;
                    db $46,$09,$4D,$09,$47,$09,$51,$09 ;
                    db $50,$09,$50,$09,$51,$09,$B2,$09 ;
                    db $42,$09,$B3,$09,$43,$09,$54,$09 ;
                    db $44,$09,$51,$09,$45,$09,$B3,$49 ;
                    db $46,$09,$B7,$09,$47,$09,$52,$09 ;
                    db $42,$09,$53,$09,$43,$09,$56,$09 ;
                    db $46,$09,$57,$09,$47,$09,$51,$09 ;
                    db $AA,$09,$50,$09,$67,$09,$51,$09 ;
                    db $66,$09,$50,$09,$AB,$09,$51,$09 ;
                    db $AA,$09,$50,$09,$AB,$09,$52,$09 ;
                    db $58,$09,$53,$09,$59,$09,$54,$09 ;
                    db $5A,$09,$51,$09,$5B,$09,$56,$09 ;
                    db $5C,$09,$57,$09,$5D,$09,$AC,$09 ;
                    db $AE,$09,$77,$09,$AF,$09,$51,$09 ;
                    db $BE,$09,$50,$09,$BF,$09,$76,$09 ;
                    db $AE,$09,$AD,$09,$AF,$09,$AC,$09 ;
                    db $B6,$09,$AD,$09,$A9,$09,$AC,$09 ;
                    db $AE,$09,$AD,$09,$AF,$09,$6C,$09 ;
                    db $7C,$09,$68,$09,$78,$09,$4E,$09 ;
                    db $5E,$09,$4F,$09,$5F,$09,$63,$09 ;
                    db $6A,$09,$6A,$09,$63,$09,$60,$09 ;
                    db $70,$09,$61,$09,$71,$09,$62,$09 ;
                    db $72,$09,$63,$09,$73,$09,$64,$09 ;
                    db $74,$09,$65,$09,$75,$09,$6B,$09 ;
                    db $7B,$09,$6D,$09,$7D,$09,$6E,$09 ;
                    db $7E,$09,$6F,$09,$7F,$09,$6C,$09 ;
                    db $7C,$09,$6D,$09,$7D,$09,$FF,$00 ;
                    db $FF,$00,$FF,$00,$FF,$00,$59,$09 ;
                    db $62,$09,$59,$09,$62,$09,$6B,$09 ;
                    db $74,$09,$6B,$09,$74,$09,$7F,$09 ;
                    db $8B,$09,$7F,$09,$8B,$09,$FE,$04 ;
                    db $FE,$04,$FE,$04,$FE,$04,$FE,$04 ;
                    db $41,$05,$FE,$04,$42,$05,$FE,$04 ;
                    db $43,$05,$FE,$04,$44,$05,$FE,$04 ;
                    db $FE,$04,$FE,$04,$4A,$05,$45,$05 ;
                    db $4B,$05,$46,$05,$4C,$05,$47,$05 ;
                    db $4D,$05,$48,$05,$4E,$05,$FE,$04 ;
                    db $4F,$05,$FE,$04,$FE,$04,$51,$05 ;
                    db $5A,$05,$52,$05,$5B,$05,$53,$05 ;
                    db $5C,$05,$54,$05,$5D,$05,$55,$05 ;
                    db $5E,$05,$56,$05,$5F,$05,$57,$05 ;
                    db $60,$05,$58,$05,$61,$05,$51,$05 ;
                    db $5A,$05,$FE,$04,$7E,$05,$FE,$04 ;
                    db $7E,$49,$FE,$04,$7D,$49,$FE,$04 ;
                    db $7D,$09,$FE,$04,$7E,$09,$FE,$04 ;
                    db $8A,$05,$58,$05,$61,$05,$63,$05 ;
                    db $6C,$05,$64,$05,$6D,$05,$65,$05 ;
                    db $6E,$05,$66,$05,$6F,$05,$67,$05 ;
                    db $70,$05,$68,$05,$71,$05,$69,$05 ;
                    db $72,$05,$6A,$05,$73,$05,$94,$05 ;
                    db $9A,$05,$95,$05,$9B,$05,$89,$49 ;
                    db $7A,$0A,$88,$49,$91,$49,$88,$09 ;
                    db $91,$09,$89,$09,$7A,$0A,$92,$05 ;
                    db $98,$05,$93,$05,$99,$05,$75,$05 ;
                    db $80,$05,$76,$05,$81,$05,$77,$05 ;
                    db $82,$05,$78,$05,$83,$05,$79,$05 ;
                    db $84,$05,$7A,$05,$85,$05,$7B,$05 ;
                    db $86,$05,$7C,$05,$87,$05,$A0,$05 ;
                    db $80,$05,$A1,$05,$81,$05,$7A,$0A ;
                    db $9D,$49,$97,$49,$9C,$49,$97,$09 ;
                    db $9C,$09,$7A,$0A,$9D,$09,$9E,$05 ;
                    db $86,$05,$9F,$05,$87,$05,$8C,$05 ;
                    db $8C,$05,$A3,$05,$40,$45,$A5,$05 ;
                    db $40,$05,$8D,$05,$8D,$05,$8E,$05 ;
                    db $8E,$05,$A3,$05,$40,$45,$A5,$05 ;
                    db $40,$05,$90,$05,$8C,$45,$A3,$45 ;
                    db $40,$05,$A2,$49,$A4,$49,$A2,$09 ;
                    db $A4,$09,$A3,$09,$40,$45,$8C,$05 ;
                    db $96,$09,$40,$45,$96,$49,$40,$05 ;
                    db $96,$09,$8F,$05,$96,$49,$8E,$05 ;
                    db $96,$09,$40,$45,$96,$49,$40,$05 ;
                    db $96,$09,$8C,$45,$96,$49,$40,$05 ;
                    db $96,$09,$A4,$49,$96,$49,$A4,$09 ;
                    db $96,$09,$40,$45,$96,$49,$7F,$0A ;
                    db $7F,$0A,$7F,$0A,$7F,$0A,$FF,$00 ;
                    db $50,$09,$FF,$00,$50,$09,$FF,$00 ;
                    db $FF,$00,$FF,$00,$FF,$00,$42,$05 ;
                    db $52,$05,$43,$05,$53,$05,$70,$05 ;
                    db $80,$05,$71,$05,$81,$05,$70,$05 ;
                    db $70,$05,$71,$05,$71,$05,$60,$05 ;
                    db $40,$05,$61,$05,$41,$05,$62,$05 ;
                    db $42,$05,$63,$05,$43,$05,$4D,$05 ;
                    db $5D,$05,$4E,$05,$5E,$05,$73,$05 ;
                    db $83,$05,$73,$05,$83,$05,$73,$05 ;
                    db $83,$05,$72,$05,$82,$05,$6F,$05 ;
                    db $7F,$05,$71,$05,$71,$05,$44,$05 ;
                    db $54,$05,$44,$05,$54,$05,$4B,$05 ;
                    db $5B,$05,$41,$05,$41,$05,$42,$05 ;
                    db $42,$05,$4C,$05,$5C,$05,$44,$05 ;
                    db $54,$05,$45,$05,$55,$05,$46,$05 ;
                    db $56,$05,$44,$05,$54,$05,$45,$05 ;
                    db $55,$05,$46,$05,$56,$05,$6D,$05 ;
                    db $54,$05,$6E,$05,$54,$05,$64,$05 ;
                    db $74,$05,$64,$05,$74,$05,$6B,$05 ;
                    db $7B,$05,$41,$05,$41,$05,$42,$05 ;
                    db $42,$05,$6C,$05,$7C,$05,$64,$05 ;
                    db $74,$05,$65,$05,$75,$05,$66,$05 ;
                    db $76,$05,$64,$05,$74,$05,$65,$05 ;
                    db $75,$05,$66,$05,$76,$05,$64,$05 ;
                    db $7D,$05,$64,$05,$7E,$05,$88,$05 ;
                    db $90,$05,$89,$05,$41,$05,$8A,$05 ;
                    db $42,$05,$64,$05,$91,$05,$72,$05 ;
                    db $82,$05,$73,$05,$83,$05,$69,$05 ;
                    db $79,$05,$41,$05,$41,$05,$42,$05 ;
                    db $42,$05,$6A,$05,$7A,$05,$67,$05 ;
                    db $77,$05,$68,$05,$78,$05,$86,$05 ;
                    db $84,$05,$87,$05,$85,$05,$80,$05 ;
                    db $70,$05,$81,$05,$71,$05,$40,$05 ;
                    db $40,$05,$41,$05,$41,$05,$42,$05 ;
                    db $42,$05,$43,$05,$43,$05,$8C,$05 ;
                    db $9C,$05,$8D,$05,$9D,$05,$8D,$45 ;
                    db $9D,$45,$8F,$05,$9F,$05,$A0,$05 ;
                    db $98,$05,$41,$05,$99,$05,$42,$05 ;
                    db $9A,$05,$A1,$05,$9B,$05,$64,$05 ;
                    db $74,$05,$65,$05,$75,$05,$A2,$05 ;
                    db $94,$05,$A3,$05,$8E,$05,$A3,$45 ;
                    db $8E,$45,$9E,$05,$8B,$05,$66,$05 ;
                    db $76,$05,$64,$05,$74,$05,$A8,$05 ;
                    db $EC,$04,$64,$05,$74,$05,$ED,$04 ;
                    db $EE,$04,$FF,$00,$FF,$00,$73,$05 ;
                    db $84,$05,$73,$05,$85,$05,$92,$05 ;
                    db $96,$05,$93,$05,$54,$05,$A0,$05 ;
                    db $54,$05,$95,$05,$97,$05,$A6,$05 ;
                    db $42,$05,$64,$05,$91,$05,$64,$05 ;
                    db $A4,$05,$A7,$05,$A5,$05,$6F,$05 ;
                    db $7F,$05,$4F,$05,$5F,$05,$86,$05 ;
                    db $83,$05,$87,$05,$83,$05,$50,$05 ;
                    db $60,$05,$51,$05,$61,$05,$52,$05 ;
                    db $62,$05,$53,$05,$63,$05,$40,$05 ;
                    db $50,$05,$41,$05,$51,$05,$FF,$00 ;
                    db $FF,$00,$FF,$00,$FF,$00,$B8,$09 ;
                    db $B8,$09,$B8,$09,$B8,$09,$FF,$00 ;
                    db $FF,$00,$FF,$00,$FF,$00,$FF,$00 ;
                    db $86,$05,$80,$05,$87,$05,$81,$05 ;
                    db $52,$05,$82,$05,$53,$05,$83,$05 ;
                    db $54,$05,$84,$05,$55,$05,$85,$05 ;
                    db $88,$05,$FF,$00,$89,$05,$8A,$05 ;
                    db $8C,$05,$61,$05,$71,$05,$62,$05 ;
                    db $72,$05,$63,$05,$73,$05,$64,$05 ;
                    db $74,$05,$65,$05,$75,$05,$66,$05 ;
                    db $76,$05,$8B,$05,$8D,$05,$44,$05 ;
                    db $54,$05,$45,$05,$55,$05,$46,$05 ;
                    db $56,$05,$47,$05,$57,$05,$40,$05 ;
                    db $5C,$05,$4D,$05,$5D,$05,$4E,$05 ;
                    db $5E,$05,$4F,$05,$5F,$05,$66,$05 ;
                    db $76,$05,$67,$05,$77,$05,$5C,$85 ;
                    db $40,$85,$5D,$85,$4D,$85,$5E,$85 ;
                    db $4E,$85,$5F,$85,$4F,$85,$48,$05 ;
                    db $58,$05,$49,$05,$59,$05,$4A,$05 ;
                    db $5A,$05,$47,$05,$5B,$05,$40,$05 ;
                    db $50,$05,$41,$05,$51,$05,$42,$05 ;
                    db $52,$05,$43,$05,$53,$05,$9D,$05 ;
                    db $54,$05,$9E,$05,$55,$05,$9B,$05 ;
                    db $52,$05,$9C,$05,$53,$05,$58,$85 ;
                    db $48,$85,$59,$85,$49,$85,$5A,$85 ;
                    db $4A,$85,$5B,$85,$47,$85,$60,$05 ;
                    db $70,$05,$61,$05,$71,$05,$66,$05 ;
                    db $76,$05,$AD,$05,$BD,$05,$AC,$05 ;
                    db $BC,$05,$61,$05,$71,$05,$FF,$00 ;
                    db $6E,$05,$68,$05,$6F,$05,$69,$05 ;
                    db $52,$05,$6A,$05,$53,$05,$6B,$05 ;
                    db $54,$05,$6C,$05,$55,$05,$6D,$05 ;
                    db $78,$05,$FF,$00,$79,$05,$7A,$05 ;
                    db $7B,$05,$61,$05,$71,$05,$66,$05 ;
                    db $76,$05,$7C,$05,$7D,$05,$90,$09 ;
                    db $97,$09,$90,$09,$97,$09,$98,$09 ;
                    db $99,$09,$98,$09,$99,$09,$B8,$09 ;
                    db $A0,$09,$91,$09,$A1,$09,$92,$09 ;
                    db $A2,$09,$93,$09,$A3,$09,$94,$09 ;
                    db $A4,$09,$95,$09,$A5,$09,$96,$09 ;
                    db $A6,$09,$B8,$09,$A7,$09,$B8,$09 ;
                    db $86,$05,$80,$05,$87,$05,$85,$05 ;
                    db $88,$05,$B8,$09,$89,$05,$B0,$09 ;
                    db $B9,$09,$B1,$09,$FD,$08,$B2,$09 ;
                    db $FD,$08,$B3,$09,$8F,$09,$B3,$49 ;
                    db $8F,$49,$B5,$09,$AE,$09,$B6,$09 ;
                    db $AF,$09,$B7,$09,$B4,$09,$FD,$08 ;
                    db $FD,$08,$FD,$08,$FD,$08,$FD,$08 ;
                    db $FD,$08,$AE,$09,$AE,$09,$7E,$09 ;
                    db $7E,$09,$7F,$09,$7F,$09,$9F,$05 ;
                    db $AA,$05,$FD,$08,$AB,$05,$FD,$08 ;
                    db $A8,$05,$9A,$05,$A9,$05,$70,$05 ;
                    db $74,$05,$71,$05,$75,$05,$72,$05 ;
                    db $76,$05,$73,$05,$77,$05,$78,$05 ;
                    db $7C,$05,$79,$05,$7D,$05,$7A,$05 ;
                    db $7E,$05,$7B,$05,$7F,$05,$67,$05 ;
                    db $69,$05,$68,$05,$6A,$05,$FF,$00 ;
                    db $FF,$00,$FF,$00,$FF,$00,$FF,$00 ;
                    db $FF,$00,$FF,$00,$FF,$00,$41,$05 ;
                    db $7C,$06,$42,$05,$44,$05,$43,$05 ;
                    db $45,$05,$FF,$00,$4B,$05,$FF,$00 ;
                    db $49,$05,$49,$05,$4A,$05,$4A,$05 ;
                    db $7C,$06,$7C,$06,$58,$05,$7C,$06 ;
                    db $51,$05,$7C,$06,$7C,$06,$47,$05 ;
                    db $7C,$06,$48,$05,$46,$05,$4B,$05 ;
                    db $48,$05,$FF,$00,$4B,$05,$FF,$00 ;
                    db $40,$09,$FF,$00,$41,$09,$FF,$00 ;
                    db $42,$09,$FF,$00,$43,$09,$4A,$05 ;
                    db $7C,$06,$7C,$06,$7C,$06,$7C,$06 ;
                    db $57,$05,$7C,$06,$7C,$06,$57,$05 ;
                    db $7C,$06,$7C,$06,$7C,$06,$7C,$06 ;
                    db $52,$05,$47,$05,$7C,$06,$55,$05 ;
                    db $46,$05,$48,$05,$7B,$06,$4B,$05 ;
                    db $48,$05,$49,$09,$4C,$05,$4A,$09 ;
                    db $7C,$0A,$7C,$0A,$7C,$0A,$44,$09 ;
                    db $7C,$0A,$45,$09,$47,$09,$4B,$09 ;
                    db $48,$09,$FF,$00,$4B,$09,$FF,$00 ;
                    db $49,$09,$40,$09,$4A,$09,$41,$09 ;
                    db $7C,$0A,$42,$09,$44,$09,$43,$09 ;
                    db $45,$09,$FF,$00,$4B,$09,$7C,$06 ;
                    db $7C,$06,$7C,$06,$7C,$06,$58,$05 ;
                    db $7C,$06,$7C,$06,$7C,$06,$7C,$06 ;
                    db $7C,$06,$7C,$06,$50,$05,$47,$05 ;
                    db $7C,$06,$7B,$06,$46,$05,$54,$05 ;
                    db $7B,$06,$48,$05,$7B,$06,$4D,$05 ;
                    db $48,$05,$7C,$0A,$4D,$05,$7C,$0A ;
                    db $7C,$0A,$7C,$0A,$7C,$0A,$46,$09 ;
                    db $47,$09,$48,$09,$7B,$0A,$FF,$00 ;
                    db $49,$09,$49,$09,$4A,$09,$47,$09 ;
                    db $7C,$0A,$48,$09,$46,$09,$7C,$06 ;
                    db $7C,$06,$50,$05,$7C,$06,$7C,$06 ;
                    db $7C,$06,$7C,$06,$51,$05,$51,$05 ;
                    db $7C,$06,$47,$05,$7C,$06,$7B,$06 ;
                    db $46,$05,$7B,$06,$7B,$06,$7B,$06 ;
                    db $53,$05,$48,$05,$7B,$06,$7C,$0A ;
                    db $7C,$0A,$46,$09,$47,$09,$7B,$0A ;
                    db $7B,$0A,$48,$09,$7B,$0A,$7C,$0A ;
                    db $7C,$0A,$47,$09,$7C,$0A,$7B,$0A ;
                    db $46,$09,$48,$09,$7B,$0A,$4A,$05 ;
                    db $7C,$06,$7C,$06,$50,$05,$7C,$06 ;
                    db $7C,$06,$57,$05,$7C,$06,$7C,$06 ;
                    db $7C,$06,$56,$05,$7C,$06,$7C,$06 ;
                    db $7C,$06,$7C,$06,$52,$05,$47,$05 ;
                    db $7C,$06,$55,$05,$46,$05,$7B,$06 ;
                    db $7B,$06,$7B,$06,$7B,$06,$7B,$06 ;
                    db $7B,$06,$48,$05,$53,$05,$46,$09 ;
                    db $47,$09,$7B,$0A,$7B,$0A,$4A,$05 ;
                    db $7C,$06,$52,$05,$7C,$06,$7C,$06 ;
                    db $50,$05,$47,$05,$7C,$06,$7B,$06 ;
                    db $46,$05,$48,$05,$54,$05,$47,$09 ;
                    db $7C,$0A,$7B,$0A,$46,$09,$59,$05 ;
                    db $66,$09,$5A,$05,$67,$09,$5B,$05 ;
                    db $68,$09,$5C,$05,$69,$09,$5D,$05 ;
                    db $66,$09,$5E,$05,$67,$09,$60,$05 ;
                    db $68,$09,$61,$05,$69,$09,$5B,$09 ;
                    db $68,$09,$61,$09,$69,$09,$5D,$09 ;
                    db $66,$09,$5E,$09,$67,$09,$60,$09 ;
                    db $68,$09,$61,$09,$69,$09,$62,$05 ;
                    db $66,$09,$63,$05,$67,$09,$59,$09 ;
                    db $66,$09,$5A,$09,$67,$09,$5B,$09 ;
                    db $68,$09,$5C,$09,$69,$09,$62,$09 ;
                    db $66,$09,$63,$09,$67,$09,$64,$09 ;
                    db $68,$09,$65,$09,$69,$09,$6A,$09 ;
                    db $6E,$09,$6B,$09,$6F,$09,$6C,$09 ;
                    db $6E,$09,$6D,$09,$6F,$09,$70,$09 ;
                    db $4E,$05,$71,$09,$4F,$05,$5F,$05 ;
                    db $5F,$05,$5F,$05,$5F,$05,$FF,$00 ;
                    db $49,$05,$40,$05,$4A,$05,$FF,$00 ;
                    db $FF,$00,$FF,$00,$FF,$00,$8D,$09 ;
                    db $8E,$09,$8D,$09,$8E,$09,$8F,$09 ;
                    db $98,$09,$8F,$09,$98,$09,$99,$09 ;
                    db $9A,$09,$99,$09,$9A,$09,$FC,$08 ;
                    db $FC,$08,$FC,$08,$FC,$08,$FC,$08 ;
                    db $50,$09,$FC,$08,$51,$09,$FC,$08 ;
                    db $52,$09,$40,$09,$53,$09,$41,$09 ;
                    db $54,$09,$42,$09,$55,$09,$43,$09 ;
                    db $56,$09,$44,$09,$57,$09,$45,$09 ;
                    db $58,$09,$46,$09,$59,$09,$47,$09 ;
                    db $5A,$09,$48,$09,$5B,$09,$49,$09 ;
                    db $5C,$09,$FC ;

DATA_2ACE95:        db $08,$5D ;

DATA_2ACE97:        db $09,$FC,$08,$5E,$09,$FC,$08,$5F ;
                    db $09,$60,$09,$70,$09,$61,$09,$71 ;
                    db $09,$62,$09,$72,$09,$63,$09,$73 ;
                    db $09,$64,$09,$74,$09,$65,$09,$75 ;
                    db $09,$66,$09,$76,$09,$67,$09,$77 ;
                    db $09,$4A,$09,$8A,$05,$4B,$09,$8B ;
                    db $05,$4C,$09,$88,$05,$4D,$09,$89 ;
                    db $05,$4C,$09,$8A,$05,$4D,$09,$8B ;
                    db $05,$68,$05,$78,$05,$69,$05,$79 ;
                    db $05,$79,$C5,$78,$C5,$78,$C5,$79 ;
                    db $C5,$FC,$08,$4E,$05,$4E,$05,$6A ;
                    db $05,$4F,$05,$6B,$05,$FC,$08,$4F ;
                    db $05,$6A,$05,$7A,$05,$7A,$05,$7A ;
                    db $05,$7B,$05,$7B,$05,$6B,$05,$7B ;
                    db $05,$7A,$05,$7A,$05,$7A,$05,$7A ;
                    db $05,$7B,$05,$7B,$05,$7B,$05,$7B ;
                    db $05,$FC,$08,$6F,$05,$FC,$08,$6F ;
                    db $45,$FC,$08,$6F,$05,$6F,$05,$FC ;
                    db $04,$FC,$04,$FC,$04,$FC,$04,$FC ;
                    db $04,$6F,$45,$FC,$04,$FC,$08,$6F ;
                    db $45,$FC,$08,$6E,$45,$6E,$45,$7E ;
                    db $06,$6E,$05,$7E,$06,$FC,$08,$6E ;
                    db $05,$6F,$45,$FC,$04,$6E,$45,$7D ;
                    db $45,$7E,$06,$7E,$06,$7E,$06,$7E ;
                    db $06,$7E,$06,$6C,$05,$6C,$05,$7E ;
                    db $05,$6D,$05,$6B,$05,$FC,$04,$6D ;
                    db $05,$FC,$04,$50,$05,$FC,$04,$51 ;
                    db $05,$FC,$04,$52,$05,$40,$05,$53 ;
                    db $05,$49,$05,$5C,$05,$FC,$04,$5D ;
                    db $05,$FC,$04,$5E,$05,$FC,$04,$5F ;
                    db $05,$7D,$45,$7C,$05,$6C,$05,$6A ;
                    db $05,$41,$05,$54,$09,$42,$05,$55 ;
                    db $09,$43,$05,$56,$09,$44,$05,$57 ;
                    db $09,$90,$05,$70,$09,$91,$05,$71 ;
                    db $09,$92,$05,$72,$09,$93,$05,$73 ;
                    db $09,$94,$05,$74,$09,$95,$05,$75 ;
                    db $09,$96,$05,$76,$09,$67,$05,$77 ;
                    db $09,$84,$05,$74,$09,$85,$05,$75 ;
                    db $09,$86,$05,$76,$09,$67,$05,$77 ;
                    db $09,$80,$05,$70,$09,$81,$05,$71 ;
                    db $09,$82,$05,$72,$09,$83,$05,$73 ;
                    db $09,$FF,$00,$9C,$09,$9B,$09,$9D ;
                    db $09,$9B,$49,$9D,$49,$9B,$09,$9D ;
                    db $09,$9B,$49,$9D,$49,$FF,$00,$9C ;
                    db $49,$9E,$09,$FF,$00,$9F,$09,$A0 ;
                    db $09,$9F,$49,$A0,$49,$9F,$09,$A0 ;
                    db $09,$9F,$49,$A0,$49,$9E,$49,$FF ;
                    db $00,$FF,$00,$A2,$09,$A1,$09,$A3 ;
                    db $09,$A1,$49,$A3,$49,$A1,$09,$A3 ;
                    db $09,$A1,$49,$A3,$49,$FF,$00,$A2 ;
                    db $49,$A4,$09,$FF,$00,$A5,$09,$FF ;
                    db $00,$A5,$49,$FF,$00,$A5,$09,$FF ;
                    db $00,$A5,$49,$FF,$00,$A4,$49,$FF ;
                    db $00,$FF,$00,$8C,$09,$FF,$00,$8C ;
                    db $09,$A6,$05,$AA,$05,$A7,$05,$AB ;
                    db $05,$A8,$05,$AC,$05,$A9,$05,$AD ;
                    db $05,$FF,$00,$FF,$00,$FF,$00,$FF ;
                    db $00,$FF,$00,$50,$05,$41,$05,$51 ;
                    db $05,$42,$05,$52,$05,$43,$05,$53 ;
                    db $05,$44,$05,$54,$05,$45,$05,$55 ;
                    db $05,$46,$05,$56,$05,$FF,$00,$57 ;
                    db $05,$88,$05,$8C,$05,$89,$05,$8D ;
                    db $05,$92,$05,$92,$05,$93,$05,$93 ;
                    db $05,$48,$05,$58,$05,$49,$05,$59 ;
                    db $05,$4A,$05,$5A,$05,$4B,$05,$5B ;
                    db $05,$4C,$05,$5C,$05,$4D,$05,$5D ;
                    db $05,$4E,$05,$5E,$05,$4F,$05,$5F ;
                    db $05,$84,$05,$8E,$05,$85,$05,$87 ;
                    db $05,$82,$05,$86,$05,$83,$05,$8D ;
                    db $05,$90,$05,$7A,$05,$74,$05,$7B ;
                    db $05,$75,$05,$52,$05,$76,$05,$53 ;
                    db $05,$63,$05,$54,$05,$64,$05,$55 ;
                    db $05,$65,$05,$70,$05,$6B,$05,$71 ;
                    db $05,$6C,$05,$6C,$85,$6D,$05,$6D ;
                    db $85,$6E,$05,$6E,$85,$6F,$05,$6F ;
                    db $85,$68,$05,$68,$85,$69,$05,$69 ;
                    db $85,$6A,$05,$6A,$85,$6B,$05,$6B ;
                    db $85,$6C,$05,$66,$05,$60,$05,$67 ;
                    db $05,$61,$05,$52,$05,$62,$05,$53 ;
                    db $05,$77,$05,$54,$05,$78,$05,$55 ;
                    db $05,$79,$05,$7C,$05,$93,$05,$7D ;
                    db $05,$90,$05,$90,$05,$91,$05,$91 ;
                    db $05,$7E,$05,$7F,$05,$49,$05,$59 ;
                    db $05,$4E,$05,$5E,$05,$40,$05,$47 ;
                    db $05,$72,$05,$73,$05,$49,$05,$59 ;
                    db $05,$4E,$05,$5E,$05,$80,$05,$81 ;
                    db $05,$90,$05,$9C,$05,$91,$05,$9D ;
                    db $05,$92,$05,$9E,$05,$93,$05,$9F ;
                    db $05,$FC,$04,$A0,$05,$FC,$04,$FC ;
                    db $04,$FC,$04,$FC,$04,$FC,$04,$A0 ;
                    db $45,$68,$05,$94,$05,$69,$05,$95 ;
                    db $05,$6A,$05,$96,$05,$6B,$05,$97 ;
                    db $05,$6C,$05,$98,$05,$6D,$05,$99 ;
                    db $05,$6E,$05,$9A,$05,$6F,$05,$9B ;
                    db $05,$9C,$05,$FC,$04,$9D,$05,$FC ;
                    db $04,$9E,$05,$FC,$04,$9F,$05,$FC ;
                    db $04,$FC,$04,$FC,$04,$FC,$04,$FC ;
                    db $04,$9E,$05,$FC,$04,$9F,$05,$A0 ;
                    db $45,$A0,$45,$FC,$04,$A0,$05,$FC ;
                    db $04,$A0,$45,$FC,$04,$A0,$05,$A0 ;
                    db $45,$A0,$45,$A0,$05,$A0,$05,$FC ;
                    db $04,$FC,$04,$A0,$05,$FC,$04,$A0 ;
                    db $45,$8A,$05,$8E,$05,$8B,$05,$8F ;
                    db $05,$A2,$09,$FF,$00,$FF,$00,$FF ;
                    db $00,$FF,$00,$FF,$00,$A2,$09,$FF ;
                    db $00,$FF,$00,$A3,$09,$FF,$00,$FF ;
                    db $00,$FF,$00,$FF,$00,$FF,$00,$A4 ;
                    db $09,$4C,$09,$5C,$09,$4D,$09,$5D ;
                    db $09,$4E,$09,$5E,$09,$4F,$09,$5F ;
                    db $09,$48,$09,$58,$09,$49,$09,$59 ;
                    db $09,$4A,$09,$5A,$09,$4B,$09,$5B ;
                    db $09,$40,$09,$50,$09,$41,$09,$51 ;
                    db $09,$42,$09,$52,$09,$43,$09,$53 ;
                    db $09,$44,$09,$54,$09,$45,$09,$55 ;
                    db $09,$46,$09,$56,$09,$47,$09,$57 ;
                    db $09,$50,$09,$48,$09,$51,$09,$49 ;
                    db $09,$56,$09,$4E,$09,$57,$09,$4F ;
                    db $09,$40,$09,$58,$09,$41,$09,$59 ;
                    db $09,$46,$09,$5E,$09,$47,$09,$5F ;
                    db $09,$60,$09,$61,$09,$60,$09,$61 ;
                    db $09,$61,$89,$60,$89,$61,$89,$60 ;
                    db $89,$48,$09,$50,$09,$49,$09,$51 ;
                    db $09,$4A,$09,$52,$09,$4B,$09,$53 ;
                    db $09,$4C,$09,$54,$09,$4D,$09,$55 ;
                    db $09,$4E,$09,$56,$09,$4F,$09,$57 ;
                    db $09,$40,$09,$62,$09,$41,$09,$63 ;
                    db $09,$42,$09,$64,$09,$43,$09,$65 ;
                    db $09,$44,$09,$66,$09,$45,$09,$67 ;
                    db $09,$46,$09,$68,$09,$47,$09,$69 ;
                    db $09,$6A,$09,$58,$05,$6B,$09,$59 ;
                    db $05,$6C,$09,$5A,$05,$6D,$09,$5B ;
                    db $05,$6E,$09,$5C,$05,$6F,$09,$5D ;
                    db $05,$70,$09,$5E,$05,$71,$09,$5F ;
                    db $05,$40,$05,$50,$05,$41,$05,$51 ;
                    db $05,$42,$05,$52,$05,$43,$05,$53 ;
                    db $05,$44,$05,$54,$05,$45,$05,$55 ;
                    db $05,$46,$05,$56,$05,$47,$05,$57 ;
                    db $05,$48,$05,$58,$05,$49,$05,$59 ;
                    db $05,$4A,$05,$5A,$05,$4B,$05,$5B ;
                    db $05,$4C,$05,$5C,$05,$4D,$05,$5D ;
                    db $05,$4E,$05,$5E,$05,$4F,$05,$5F ;
                    db $05,$50,$05,$48,$05,$51,$05,$49 ;
                    db $05,$56,$05,$4E,$05,$57,$05,$4F ;
                    db $05,$40,$05,$58,$05,$41,$05,$59 ;
                    db $05,$46,$05,$5E,$05,$47,$05,$5F ;
                    db $05,$60,$05,$61,$05,$60,$05,$61 ;
                    db $05,$61,$85,$60,$85,$61,$85,$60 ;
                    db $85,$FF,$00,$FF,$00,$FF,$00,$FF ;
                    db $00,$FF,$00,$4B,$45,$FF,$00,$45 ;
                    db $45,$FF,$00,$43,$45,$FF,$00,$42 ;
                    db $45,$45,$05,$4C,$05,$4B,$05,$4D ;
                    db $05,$FF,$00,$4E,$05,$FF,$00,$4F ;
                    db $05,$61,$05,$41,$45,$62,$05,$41 ;
                    db $05,$FF,$00,$61,$05,$FF,$00,$62 ;
                    db $05,$FF,$00,$45,$05,$FF,$00,$4B ;
                    db $05,$4F,$45,$41,$45,$4E,$45,$7E ;
                    db $06,$4D,$45,$7E,$06,$4C,$45,$7E ;
                    db $06,$51,$05,$7E,$06,$52,$05,$41 ;
                    db $05,$44,$45,$41,$45,$7E,$06,$7E ;
                    db $06,$7E,$06,$7E,$06,$7E,$06,$7E ;
                    db $06,$7E,$06,$7E,$06,$41,$05,$41 ;
                    db $85,$53,$45,$5C,$45,$FF,$00,$FF ;
                    db $00,$FF,$00,$52,$45,$FF,$00,$51 ;
                    db $45,$FF,$00,$4F,$45,$FF,$00,$4E ;
                    db $45,$4B,$45,$4D,$45,$45,$45,$4C ;
                    db $45,$7E,$06,$7E,$06,$41,$05,$7E ;
                    db $06,$41,$45,$7E,$06,$41,$05,$7E ;
                    db $06,$4C,$05,$7E,$06,$4D,$05,$7E ;
                    db $06,$4E,$05,$7E,$06,$4F,$05,$41 ;
                    db $05,$42,$05,$7E,$06,$43,$05,$44 ;
                    db $05,$52,$45,$41,$45,$51,$45,$7E ;
                    db $06,$41,$45,$7E,$06,$7E,$06,$7E ;
                    db $06,$FF,$00,$52,$45,$FF,$00,$51 ;
                    db $45,$41,$45,$A7,$05,$7E,$06,$A7 ;
                    db $05,$7E,$06,$A7,$05,$7E,$06,$A7 ;
                    db $05,$7E,$06,$A7,$05,$41,$05,$A7 ;
                    db $05,$41,$45,$A7,$05,$41,$05,$A7 ;
                    db $05,$40,$05,$50,$05,$40,$05,$50 ;
                    db $05,$40,$05,$54,$05,$40,$05,$55 ;
                    db $05,$46,$05,$56,$05,$47,$05,$57 ;
                    db $05,$48,$05,$58,$05,$49,$05,$59 ;
                    db $05,$4A,$05,$5A,$05,$40,$05,$5B ;
                    db $05,$60,$05,$70,$05,$60,$05,$71 ;
                    db $05,$60,$05,$72,$05,$63,$05,$73 ;
                    db $05,$64,$05,$74,$05,$65,$05,$75 ;
                    db $05,$66,$05,$76,$05,$67,$05,$77 ;
                    db $05,$68,$05,$78,$05,$69,$05,$79 ;
                    db $05,$6A,$05,$7A,$05,$6B,$05,$7B ;
                    db $05,$6C,$05,$7C,$05,$60,$05,$7D ;
                    db $05,$60,$05,$7E,$05,$60,$05,$7F ;
                    db $05,$60,$05,$5D,$05,$60,$05,$5E ;
                    db $05,$60,$05,$5F,$05,$60,$05,$98 ;
                    db $05,$60,$05,$99,$05,$60,$05,$9B ;
                    db $05,$60,$05,$A0,$05,$60,$05,$A1 ;
                    db $05,$80,$05,$90,$05,$81,$05,$91 ;
                    db $05,$82,$05,$92,$05,$83,$05,$93 ;
                    db $05,$84,$05,$94,$05,$85,$05,$95 ;
                    db $05,$86,$05,$96,$05,$87,$05,$97 ;
                    db $05,$88,$05,$FC,$04,$89,$05,$FC ;
                    db $04,$8A,$05,$9A,$05,$8B,$05,$FC ;
                    db $04,$8C,$05,$9C,$05,$8D,$05,$9D ;
                    db $05,$8E,$05,$9E,$05,$8F,$05,$9F ;
                    db $05,$6D,$05,$90,$05,$6E,$05,$91 ;
                    db $05,$6F,$05,$92,$05,$A2,$05,$93 ;
                    db $05,$A3,$05,$94,$05,$A4,$05,$95 ;
                    db $05,$A5,$05,$95,$05,$A6,$05,$95 ;
                    db $05,$FC,$04,$FC,$04,$FC,$04,$FC ;
                    db $04,$64,$09,$6C,$09,$65,$09,$6D ;
                    db $09,$4A,$49,$7C,$0A,$68,$09,$43 ;
                    db $49,$69,$09,$42,$49,$4D,$49,$7D ;
                    db $0A,$66,$09,$6E,$09,$67,$09,$6F ;
                    db $09,$5B,$49,$6A,$09,$7C,$0A,$6B ;
                    db $09,$4E,$09,$5E,$09,$4F,$09,$5F ;
                    db $09,$60,$09,$70,$09,$61,$09,$71 ;
                    db $09,$7D,$0A,$62,$09,$46,$49,$63 ;
                    db $09,$4C,$09,$46,$09,$4D,$09,$7D ;
                    db $0A,$5C,$09,$47,$09,$48,$09,$58 ;
                    db $09,$49,$09,$59,$09,$5D,$09,$5A ;
                    db $09,$4A,$09,$7C,$0A,$4B,$09,$5B ;
                    db $09,$40,$09,$50,$09,$41,$09,$51 ;
                    db $09,$7D,$0A,$52,$09,$42,$09,$53 ;
                    db $09,$43,$09,$54,$09,$7C,$0A,$55 ;
                    db $09,$44,$09,$56,$09,$45,$09,$57 ;
                    db $09,$40,$09,$50,$09,$41,$09,$51 ;
                    db $09,$42,$09,$52,$09,$43,$09,$53 ;
                    db $09,$44,$09,$54,$09,$45,$09,$55 ;
                    db $09,$46,$09,$56,$09,$47,$09,$57 ;
                    db $09,$60,$09,$70,$09,$61,$09,$71 ;
                    db $09,$62,$09,$72,$09,$63,$09,$73 ;
                    db $09,$64,$09,$74,$09,$65,$09,$75 ;
                    db $09,$66,$09,$76,$09,$67,$09,$77 ;
                    db $09,$48,$09,$58,$09,$49,$09,$59 ;
                    db $09,$4A,$09,$5A,$09,$4B,$09,$5B ;
                    db $09,$4C,$09,$5C,$09,$4D,$09,$5D ;
                    db $09,$4E,$09,$5E,$09,$4F,$09,$5F ;
                    db $09,$68,$09,$78,$09,$69,$09,$79 ;
                    db $09,$6A,$09,$7A,$09,$6B,$09,$7B ;
                    db $09,$6C,$09,$7C,$09,$6D,$09,$7D ;
                    db $09,$6E,$09,$7E,$09,$6F,$09,$7F ;
                    db $09,$FD,$08,$FD,$08,$FD,$08,$FD ;
                    db $08,$62,$49,$64,$09,$62,$09,$64 ;
                    db $49,$62,$49,$6C,$09,$FD,$08,$FD ;
                    db $08,$FD,$08,$67,$49,$62,$09,$66 ;
                    db $49,$FD,$08,$FD,$08,$FD,$08,$62 ;
                    db $09,$6E,$49,$FE,$08,$6D,$49,$FE ;
                    db $08,$FE,$08,$FE,$08,$FE,$08,$FE ;
                    db $08,$6C,$09,$6D,$09,$FD,$08,$6E ;
                    db $09,$FD,$08,$62,$49,$FD,$08,$62 ;
                    db $09,$FD,$08,$62,$49,$FD,$08,$FD ;
                    db $08,$ED,$09,$FE,$08,$6E,$09,$FE ;
                    db $08,$67,$49,$FE,$08,$66,$49,$FE ;
                    db $08,$FE,$08,$FE,$08,$FE,$08,$63 ;
                    db $09,$FE,$08,$63,$49,$FE,$08,$FE ;
                    db $08,$FE,$08,$63,$49,$FE,$08,$63 ;
                    db $09,$64,$09,$63,$49,$64,$49,$FE ;
                    db $08,$64,$09,$FE,$08,$64,$49,$FE ;
                    db $08,$66,$09,$FE,$08,$67,$09,$FE ;
                    db $08,$62,$49,$66,$09,$FD,$08,$67 ;
                    db $09,$63,$49,$6A,$09,$FE,$08,$6B ;
                    db $09,$FE,$08,$FE,$08,$63,$09,$6F ;
                    db $49,$FE,$08,$6B,$49,$63,$09,$6A ;
                    db $49,$6B,$49,$FF,$00,$6A,$49,$FF ;
                    db $00,$6F,$09,$72,$09,$FE,$08,$73 ;
                    db $09,$FE,$08,$73,$49,$6F,$49,$72 ;
                    db $49,$68,$09,$FF,$00,$68,$49,$FF ;
                    db $00,$63,$49,$68,$09,$63,$09,$68 ;
                    db $49,$FF,$00,$FF,$00,$FF,$00,$FF ;
                    db $00,$73,$49,$FF,$00,$72,$49,$FF ;
                    db $00,$6A,$09,$FF,$00,$6B,$09,$FF ;
                    db $00,$FF,$00,$40,$05,$FF,$00,$41 ;
                    db $05,$FF,$00,$74,$45,$FF,$00,$FF ;
                    db $00,$FF,$00,$FF,$00,$FF,$00,$74 ;
                    db $05,$44,$05,$54,$05,$45,$05,$55 ;
                    db $05,$50,$05,$43,$05,$51,$05,$42 ;
                    db $05,$46,$05,$56,$05,$47,$05,$57 ;
                    db $05,$5D,$05,$5C,$05,$5C,$05,$5D ;
                    db $05,$48,$05,$58,$05,$75,$05,$76 ;
                    db $05,$53,$05,$42,$05,$52,$05,$43 ;
                    db $05,$49,$45,$59,$45,$5A,$05,$5B ;
                    db $05,$4A,$05,$54,$05,$4B,$05,$55 ;
                    db $05,$52,$05,$43,$05,$53,$05,$42 ;
                    db $05,$4C,$05,$56,$05,$4D,$05,$57 ;
                    db $05,$5D,$05,$CC,$04,$5C,$05,$CD ;
                    db $04,$C2,$04,$C3,$04,$75,$05,$43 ;
                    db $05,$49,$45,$42,$05,$C0,$04,$C1 ;
                    db $04,$CC,$04,$CE,$04,$CD,$04,$CF ;
                    db $04,$4C,$09,$4C,$09,$4C,$09,$4C ;
                    db $09,$4C,$09,$4C,$09,$4C,$09,$5B ;
                    db $09,$4C,$09,$5B,$49,$4C,$09,$4C ;
                    db $09,$4C,$09,$4C,$09,$5B,$09,$4D ;
                    db $09,$5B,$49,$4D,$49,$4C,$09,$4C ;
                    db $09,$4C,$09,$40,$09,$4C,$09,$41 ;
                    db $09,$4C,$09,$42,$09,$4D,$09,$43 ;
                    db $09,$4D,$49,$43,$49,$4C,$09,$42 ;
                    db $49,$4C,$09,$41,$49,$4C,$09,$40 ;
                    db $49,$4C,$09,$41,$49,$5C,$09,$40 ;
                    db $49,$5C,$49,$40,$09,$4C,$09,$41 ;
                    db $09,$50,$09,$44,$09,$51,$09,$45 ;
                    db $09,$52,$09,$46,$09,$53,$09,$47 ;
                    db $09,$53,$49,$47,$49,$52,$49,$46 ;
                    db $49,$51,$49,$45,$49,$50,$49,$44 ;
                    db $49,$54,$09,$48,$09,$55,$09,$49 ;
                    db $09,$56,$09,$4A,$09,$57,$09,$4B ;
                    db $09,$57,$49,$4B,$49,$56,$49,$4A ;
                    db $49,$55,$49,$49,$49,$54,$49,$48 ;
                    db $49,$5E,$09,$60,$09,$5F,$09,$5E ;
                    db $09,$58,$09,$5E,$49,$59,$09,$60 ;
                    db $49,$59,$49,$60,$09,$58,$49,$5E ;
                    db $09,$5F,$49,$5E,$49,$5E,$49,$60 ;
                    db $49,$5D,$09,$4E,$09,$4E,$09,$4F ;
                    db $09,$4E,$49,$4F,$49,$5D,$49,$4E ;
                    db $49,$76,$45,$86,$45,$75,$45,$85 ;
                    db $45,$B4,$05,$B7,$05,$B5,$05,$B4 ;
                    db $05,$B4,$05,$B5,$05,$B5,$05,$B6 ;
                    db $05,$B6,$05,$B7,$05,$B7,$05,$B6 ;
                    db $05,$B4,$05,$B5,$05,$B5,$05,$B4 ;
                    db $05,$B6,$05,$B5,$05,$B7,$05,$B4 ;
                    db $05,$75,$05,$85,$05,$76,$05,$86 ;
                    db $05,$40,$05,$B5,$05,$41,$05,$B4 ;
                    db $05,$B4,$05,$41,$05,$B5,$05,$B4 ;
                    db $05,$B6,$05,$B5,$05,$B7,$05,$40 ;
                    db $05,$40,$05,$41,$05,$41,$05,$B4 ;
                    db $05,$B4,$05,$B5,$05,$B5,$05,$40 ;
                    db $05,$B4,$05,$41,$05,$B5,$05,$40 ;
                    db $05,$B6,$05,$41,$05,$B7,$05,$B4 ;
                    db $05,$B4,$05,$41,$05,$B5,$05,$B6 ;
                    db $05,$40,$05,$B7,$05,$41,$05,$B4 ;
                    db $05,$B6,$05,$B5,$05,$B7,$05,$B6 ;
                    db $05,$95,$05,$A5,$05,$96,$05,$A6 ;
                    db $05,$40,$05,$B7,$05,$41,$05,$B6 ;
                    db $05,$40,$05,$B5,$05,$41,$05,$40 ;
                    db $05,$B6,$05,$B7,$05,$B7,$05,$B4 ;
                    db $05,$48,$09,$58,$09,$49,$09,$59 ;
                    db $09,$4A,$09,$5A,$09,$4B,$09,$5B ;
                    db $09,$4C,$09,$5C,$09,$4D,$09,$5D ;
                    db $09,$49,$09,$5E,$09,$4F,$09,$5F ;
                    db $09,$68,$09,$78,$09,$69,$09,$79 ;
                    db $09,$6A,$09,$7A,$09,$6B,$09,$7B ;
                    db $09,$6C,$09,$7C,$09,$6D,$09,$7D ;
                    db $09,$6E,$09,$7E,$09,$6F,$09,$7F ;
                    db $09,$88,$09,$98,$09,$89,$09,$99 ;
                    db $09,$8A,$09,$9A,$09,$8B,$09,$9B ;
                    db $09,$8C,$09,$9C,$09,$8D,$09,$9D ;
                    db $09,$8E,$09,$9E,$09,$8F,$09,$9F ;
                    db $09,$A8,$09,$B8,$09,$A9,$09,$B9 ;
                    db $09,$AA,$09,$BA,$09,$AB,$09,$BB ;
                    db $09,$AC,$09,$BC,$09,$AD,$09,$BD ;
                    db $09,$AE,$09,$BE,$09,$AF,$09,$BF ;
                    db $09,$94,$09,$B7,$05,$A4,$09,$B4 ;
                    db $05,$67,$09,$B5,$05,$77,$09,$B6 ;
                    db $05,$87,$09,$B7,$05,$97,$09,$B4 ;
                    db $05,$A7,$09,$B5,$05,$4E,$09,$B6 ;
                    db $05,$96,$05,$A6,$05,$95,$05,$A5 ;
                    db $05,$40,$05,$50,$05,$41,$05,$51 ;
                    db $05,$42,$05,$52,$05,$43,$05,$53 ;
                    db $05,$44,$05,$54,$05,$45,$05,$55 ;
                    db $05,$46,$05,$56,$05,$47,$05,$57 ;
                    db $05,$47,$45,$57,$45,$46,$45,$56 ;
                    db $45,$45,$45,$55,$45,$44,$45,$54 ;
                    db $45,$43,$45,$53,$45,$42,$45,$52 ;
                    db $45,$41,$45,$51,$45,$40,$45,$50 ;
                    db $45,$60,$05,$70,$05,$61,$05,$71 ;
                    db $05,$62,$05,$72,$05,$63,$05,$73 ;
                    db $05,$64,$05,$74,$05,$65,$05,$FF ;
                    db $00,$66,$05,$FF,$00,$FF,$00,$FF ;
                    db $00,$FF,$00,$FF,$00,$66,$45,$FF ;
                    db $00,$65,$45,$FF,$00,$64,$45,$74 ;
                    db $45,$63,$45,$73,$45,$62,$45,$72 ;
                    db $45,$61,$45,$71,$45,$60,$45,$70 ;
                    db $45,$80,$05,$90,$05,$81,$05,$91 ;
                    db $05,$82,$05,$92,$05,$83,$05,$93 ;
                    db $05,$84,$05,$FF,$00,$FF,$00,$FF ;
                    db $00,$FF,$00,$FF,$00,$84,$45,$FF ;
                    db $00,$83,$45,$93,$45,$82,$45,$92 ;
                    db $45,$81,$45,$91,$45,$80,$45,$90 ;
                    db $45,$A0,$05,$B0,$05,$A1,$05,$B1 ;
                    db $05,$A2,$05,$B2,$05,$A3,$05,$B3 ;
                    db $05,$A3,$45,$B3,$45,$A2,$45,$B2 ;
                    db $45,$A1,$45,$B1,$45,$A0,$45,$B0 ;
                    db $45,$48,$05,$58,$05,$49,$05,$59 ;
                    db $05,$4A,$05,$5A,$05,$4B,$05,$5B ;
                    db $05,$4C,$05,$5C,$05,$4D,$05,$5D ;
                    db $05,$4E,$05,$5E,$05,$4F,$05,$5F ;
                    db $05,$68,$05,$78,$05,$69,$05,$79 ;
                    db $05,$6A,$05,$7A,$05,$6B,$05,$7B ;
                    db $05,$6B,$45,$7B,$45,$6A,$45,$7A ;
                    db $45,$69,$45,$79,$45,$68,$45,$78 ;
                    db $45,$78,$05,$68,$05,$79,$05,$69 ;
                    db $05,$7A,$05,$6A,$05,$7B,$05,$6B ;
                    db $05,$7B,$45,$6B,$45,$7A,$45,$6A ;
                    db $45,$79,$45,$69,$45,$78,$45,$68 ;
                    db $45,$78,$05,$88,$05,$79,$05,$89 ;
                    db $05,$7A,$05,$8A,$05,$7B,$05,$8B ;
                    db $05,$7B,$45,$8B,$45,$7A,$45,$8A ;
                    db $45,$79,$45,$89,$45,$78,$45,$88 ;
                    db $45,$FF,$00,$FF,$00,$FF,$00,$FF ;
                    db $00,$FF,$00,$FF,$00,$FF,$00,$FF ;
                    db $00,$A6,$09,$FF,$00,$FF,$00,$FF ;
                    db $00,$FF,$00,$FF,$00,$A7,$09,$FF ;
                    db $00,$FF,$00,$5F,$05,$6D,$05,$59 ;
                    db $05,$6E,$05,$5A,$05,$6F,$05,$5B ;
                    db $05,$6F,$45,$5B,$45,$6E,$45,$5A ;
                    db $45,$6D,$45,$59,$45,$FF,$00,$5F ;
                    db $45,$68,$05,$78,$05,$69,$05,$79 ;
                    db $05,$6A,$05,$7A,$05,$6B,$05,$7B ;
                    db $05,$6B,$45,$7B,$45,$6A,$45,$7A ;
                    db $45,$69,$45,$79,$45,$68,$45,$78 ;
                    db $45,$5E,$45,$5B,$45,$5D,$45,$5A ;
                    db $45,$5C,$45,$59,$45,$88,$45,$58 ;
                    db $45,$88,$05,$58,$05,$5C,$05,$59 ;
                    db $05,$5D,$05,$5A,$05,$5E,$05,$5B ;
                    db $05,$88,$05,$88,$05,$88,$05,$88 ;
                    db $05,$88,$05,$88,$05,$88,$05,$7D ;
                    db $05,$89,$05,$7E,$05,$8A,$05,$7F ;
                    db $05,$8A,$45,$7F,$45,$89,$45,$7E ;
                    db $45,$88,$45,$7D,$45,$88,$45,$88 ;
                    db $45,$88,$05,$88,$05,$8B,$05,$88 ;
                    db $05,$8C,$05,$88,$05,$8D,$05,$7C ;
                    db $05,$8D,$45,$7C,$45,$8C,$45,$88 ;
                    db $45,$8B,$45,$88,$45,$88,$45,$88 ;
                    db $45,$88,$05,$40,$05,$88,$05,$41 ;
                    db $05,$88,$05,$42,$05,$88,$05,$43 ;
                    db $05,$88,$05,$44,$05,$88,$05,$45 ;
                    db $05,$88,$05,$46,$05,$88,$05,$47 ;
                    db $05,$50,$05,$60,$05,$51,$05,$61 ;
                    db $05,$52,$05,$62,$05,$53,$05,$63 ;
                    db $05,$54,$05,$64,$05,$55,$05,$65 ;
                    db $05,$56,$05,$66,$05,$57,$05,$67 ;
                    db $05,$70,$05,$80,$05,$71,$05,$81 ;
                    db $05,$72,$05,$82,$05,$73,$05,$83 ;
                    db $05,$74,$05,$84,$05,$75,$05,$85 ;
                    db $05,$76,$05,$86,$05,$77,$05,$87 ;
                    db $05,$90,$05,$A0,$05,$91,$05,$A1 ;
                    db $05,$92,$05,$A2,$05,$93,$05,$A3 ;
                    db $05,$94,$05,$A4,$05,$95,$05,$A5 ;
                    db $05,$96,$05,$8E,$05,$97,$05,$8F ;
                    db $05,$98,$05,$48,$05,$99,$05,$49 ;
                    db $05,$9A,$05,$4A,$05,$9B,$05,$4B ;
                    db $05,$9C,$05,$4C,$05,$9D,$05,$4D ;
                    db $05,$9E,$05,$4E,$05,$9F,$05,$4F ;
                    db $05,$FF,$00,$FF,$00,$A8,$09,$FF ;
                    db $00,$FF,$00,$FF,$00,$FF,$00,$A9 ;
                    db $09,$97,$09,$89,$09,$98,$09,$86 ;
                    db $09,$99,$09,$87,$09,$96,$09,$88 ;
                    db $09,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF ;

DATA_2ADC80:        db $06,$00,$07,$F0,$28,$08,$00,$24 ;
                    db $0B,$50,$2A,$0B,$80,$11,$0C,$B0 ;
                    db $10,$12,$C0,$20,$13,$90,$00,$15 ;
                    db $00,$02,$07,$41,$12,$07,$D1,$24 ;
                    db $0B,$B1,$11,$0C,$A1,$2C,$11,$31 ;
                    db $26,$13,$C1,$22,$13,$51,$02,$FF ;

DATA_2ADCB0:        db $06,$00,$0B,$50,$2A,$0B,$80,$11 ;
                    db $0C,$B0,$10,$12,$C0,$20,$13,$90 ;
                    db $00,$15,$00,$02,$0B,$B1,$11,$0C ;
                    db $A1,$2C,$11,$31,$26,$13,$C1,$22 ;
                    db $13,$51,$02,$FF ;

DATA_2ADCD4:        db $06,$00,$12,$C0,$20,$13,$90,$00 ;
                    db $15,$00,$02,$13,$C1,$22,$13,$51 ;
                    db $02,$FF ;

DATA_2ADCE6:        db $07,$00,$05,$30,$10,$08,$80,$12 ;
                    db $03,$F0,$02,$06,$B1,$14,$08,$41 ;
                    db $16,$0A,$D1,$18,$FF ;

DATA_2ADCFB:        db $07,$00,$00,$10,$0D,$00,$D0,$0D ;
                    db $04,$00,$1F,$05,$C0,$50,$05,$20 ;
                    db $38,$05,$40,$22,$05,$90,$22,$05 ;
                    db $E0,$38,$07,$70,$40,$08,$30,$40 ;
                    db $08,$B0,$40,$09,$50,$40,$0A,$20 ;
                    db $40,$0A,$80,$40,$0B,$30,$40,$0B ;
                    db $B0,$40,$0C,$50,$40,$0C,$20,$51 ;
                    db $0D,$20,$40,$0D,$70,$40,$FF ;

DATA_2ADD3A:        db $01,$01,$0F,$20,$02,$0F,$21,$01 ;
                    db $FF ;

DATA_2ADD43:        db $00,$00,$11,$30,$00,$13,$90,$02 ;
                    db $11,$81,$04,$FF,$14,$40,$06,$16 ;
                    db $D0,$08,$14,$A1,$0A,$FF ;

DATA_2ADD59:        db $05,$01,$02,$A0,$00,$04,$10,$10 ;
                    db $04,$40,$20,$04,$E0,$10,$0A,$60 ;
                    db $30,$0F,$00,$50,$0F,$50,$40,$0F ;
                    db $B0,$40,$02,$81,$00,$04,$31,$10 ;
                    db $04,$D1,$20,$0A,$41,$30,$0F,$01 ;
                    db $50,$0F,$51,$40,$0F,$B1,$40,$FF ;

DATA_2ADD89:        db $11,$01,$17,$10,$10,$11,$40,$00 ;
                    db $17,$90,$10,$11,$C0,$00,$16,$01 ;
                    db $20,$17,$91,$10,$FF ;

DATA_2ADD9E:        db $08,$00,$10,$00,$00,$10,$40,$00 ;
                    db $12,$80,$20,$10,$C0,$00,$10,$01 ;
                    db $00,$12,$41,$20,$12,$81,$10,$10 ;
                    db $C1,$00,$FF ;

DATA_2ADDB9:        db $10,$00,$20,$10,$20,$00,$20,$50 ;
                    db $20,$01,$20,$80,$02,$00,$20,$C0 ;
                    db $40,$00,$20,$D0,$00,$04,$20,$E0 ;
                    db $00,$01,$21,$00,$10,$00,$21,$C0 ;
                    db $40,$01,$24,$00,$10,$00,$25,$40 ;
                    db $10,$01,$28,$30,$50,$00,$2C,$00 ;
                    db $30,$00,$2C,$30,$50,$01,$20,$11 ;
                    db $20,$02,$20,$51,$20,$03,$20,$81 ;
                    db $02,$02,$20,$D1,$40,$02,$20,$E1 ;
                    db $00,$03,$21,$B1,$10,$05,$21,$A1 ;
                    db $40,$03,$22,$01,$30,$01,$24,$01 ;
                    db $10,$02,$25,$C1,$40,$05,$25,$D1 ;
                    db $40,$06,$26,$01,$30,$02,$29,$01 ;
                    db $10,$03,$2A,$C1,$40,$04,$2B,$C1 ;
                    db $40,$00,$2B,$31,$50,$02,$2D,$C1 ;
                    db $40,$04,$2C,$71,$10,$04,$2E,$01 ;
                    db $30,$03,$FF ;

DATA_2ADE3C:        db $0E,$00,$0B,$C0,$02,$0F,$A0,$18 ;
                    db $0F,$E0,$24,$12,$20,$36,$12,$60 ;
                    db $36,$13,$C0,$44,$0F,$40,$70,$10 ;
                    db $00,$70,$0B,$81,$0C,$0F,$C1,$64 ;
                    db $11,$01,$56,$11,$41,$36,$13,$21 ;
                    db $44,$13,$A1,$44,$33,$E1,$54,$01 ;
                    db $0F,$21,$70,$FF ;

DATA_2ADE70:        db $01,$00,$00,$20,$1A,$22,$00,$34 ;
                    db $06,$04,$20,$20,$26,$00,$06,$04 ;
                    db $08,$20,$06,$0A,$40,$18,$0C,$20 ;
                    db $06,$0E,$40,$18,$10,$00,$18,$12 ;
                    db $20,$1A,$34,$00,$34,$06,$16,$20 ;
                    db $20,$38,$00,$06,$04,$1A,$20,$06 ;
                    db $00,$01,$18,$02,$21,$1A,$24,$01 ;
                    db $34,$06,$06,$21,$20,$28,$01,$06 ;
                    db $04,$0A,$21,$06,$0C,$41,$18,$0E ;
                    db $01,$18,$10,$21,$1A,$32,$01,$34 ;
                    db $06,$14,$21,$20,$36,$01,$06,$04 ;
                    db $18,$21,$06,$1A,$41,$18,$FF ;

DATA_2ADECF:        db $0A,$00,$0E,$50,$00,$0F,$A0,$10 ;
                    db $11,$31,$20,$10,$81,$30,$FF ;

DATA_2ADEDE:        db $03,$00,$00,$20,$07,$01,$A0,$14 ;
                    db $04,$50,$08,$06,$E0,$14,$07,$70 ;
                    db $14,$00,$20,$07,$01,$71,$18,$03 ;
                    db $11,$08,$05,$31,$13,$07,$91,$14 ;
                    db $FF ;

DATA_2ADEFF:        db $03,$00,$00,$20,$07,$01,$A0,$14 ;
                    db $04,$50,$08,$06,$E0,$14,$07,$70 ;
                    db $14,$00,$20,$07,$11,$50,$20,$14 ;
                    db $A0,$30,$12,$20,$50,$11,$B0,$40 ;
                    db $01,$71,$18,$03,$11,$08,$05,$31 ;
                    db $13,$07,$91,$14,$0F,$71,$20,$34 ;
                    db $E1,$30,$01,$11,$F1,$40,$FF ;

DATA_2ADF36:        db $02,$00,$0F,$60,$03,$0E,$F0,$03 ;
                    db $0F,$E0,$03,$10,$00,$03,$30,$20 ;
                    db $03,$01,$11,$10,$03,$11,$40,$03 ;
                    db $0E,$A0,$16,$10,$60,$14,$10,$C0 ;
                    db $14,$12,$80,$13,$14,$50,$30,$14 ;
                    db $F0,$30,$15,$30,$20,$15,$60,$36 ;
                    db $30,$01,$03,$01,$0F,$21,$03,$10 ;
                    db $81,$04,$11,$B1,$03,$12,$A1,$02 ;
                    db $12,$D1,$02,$33,$C1,$01,$01,$0E ;
                    db $41,$16,$10,$21,$14,$12,$61,$13 ;
                    db $12,$F1,$13,$14,$11,$30,$15,$31 ;
                    db $20,$15,$A1,$20,$15,$E1,$30,$FF ;

DATA_2ADF96:        db $05,$01,$00,$00,$02,$00,$80,$20 ;
                    db $00,$A0,$10,$00,$C0,$05,$02,$20 ;
                    db $02,$02,$C0,$40,$04,$00,$20,$04 ;
                    db $20,$10,$04,$80,$10,$04,$A0,$20 ;
                    db $04,$40,$40,$06,$A0,$02,$08,$00 ;
                    db $31,$08,$40,$02,$08,$C0,$20,$08 ;
                    db $E0,$40,$0A,$40,$20,$0A,$60,$02 ;
                    db $0C,$00,$02,$0C,$80,$20,$0C,$A0 ;
                    db $10,$0C,$C0,$05,$0E,$20,$02,$0E ;
                    db $C0,$40,$10,$00,$20,$10,$20,$10 ;
                    db $10,$80,$10,$10,$40,$40,$10,$A0 ;
                    db $20,$12,$A0,$02,$14,$00,$31,$14 ;
                    db $40,$02,$14,$C0,$20,$14,$E0,$40 ;
                    db $16,$40,$20,$16,$60,$02,$18,$00 ;
                    db $04,$02,$01,$10,$02,$21,$04,$04 ;
                    db $21,$10,$04,$41,$40,$04,$81,$10 ;
                    db $04,$A1,$20,$04,$C1,$01,$06,$A1 ;
                    db $02,$08,$21,$31,$08,$61,$20,$08 ;
                    db $81,$02,$0A,$61,$02,$0A,$E1,$20 ;
                    db $0E,$01,$10,$0E,$21,$04,$10,$21 ;
                    db $10,$10,$41,$40,$10,$81,$10,$10 ;
                    db $A1,$20,$10,$C1,$01,$12,$A1,$02 ;
                    db $14,$21,$31,$14,$61,$20,$14,$81 ;
                    db $02,$16,$61,$02,$16,$E1,$20,$18 ;
                    db $01,$04,$FF ;

DATA_2AE059:        db $13,$00,$0E,$00,$00,$0F,$60,$02 ;
                    db $10,$A0,$04,$13,$C0,$10,$12,$60 ;
                    db $20,$10,$01,$06,$0F,$31,$08,$0E ;
                    db $D1,$0A,$13,$81,$10,$12,$21,$20 ;
                    db $12,$E1,$20,$FF ;

DATA_2AE07D:        db $11,$00,$FF ;

DATA_2AE080:        db $10,$00,$FF ;

DATA_2AE083:        db $12,$00,$FF ;

DATA_2AE086:        db $14,$00,$12,$A0,$03,$12,$11,$02 ;
                    db $12,$61,$0B,$FF ;

DATA_2AE092:        db $02,$00,$0C,$10,$03,$0C,$50,$03 ;
                    db $0C,$90,$03,$0C,$D0,$03,$0C,$70 ;
                    db $10,$FF ;

DATA_2AE0A4:        db $17,$01,$20,$10,$06,$0C,$20,$90 ;
                    db $06,$0C,$26,$10,$06,$00,$26,$90 ;
                    db $06,$00,$28,$20,$14,$05,$12,$00 ;
                    db $26,$12,$40,$36,$12,$80,$26,$12 ;
                    db $C0,$36,$FF ;

DATA_2AE0C7:        db $15,$00,$00,$70,$03,$00,$E0,$40 ;
                    db $01,$50,$50,$02,$00,$40,$02,$C0 ;
                    db $00,$04,$10,$00,$04,$80,$40,$05 ;
                    db $60,$50,$05,$B0,$10,$05,$F0,$40 ;
                    db $06,$40,$10,$06,$90,$50,$07,$00 ;
                    db $10,$07,$70,$40,$07,$A0,$10,$0D ;
                    db $80,$30,$0D,$D0,$20,$0E,$40,$20 ;
                    db $0F,$B0,$20,$10,$60,$20,$00,$31 ;
                    db $50,$00,$A1,$00,$01,$01,$00,$01 ;
                    db $E1,$50,$02,$61,$40,$03,$C1,$00 ;
                    db $04,$21,$0D,$05,$91,$00,$05,$D1 ;
                    db $50,$06,$41,$52,$06,$B1,$10,$07 ;
                    db $11,$10,$07,$71,$40,$0D,$71,$30 ;
                    db $0E,$11,$20,$0F,$E1,$21,$10,$21 ;
                    db $20,$10,$91,$30,$FF ;

DATA_2AE13C:        db $0F,$00,$00,$F0,$50,$02,$10,$70 ;
                    db $02,$60,$50,$03,$20,$50,$03,$A0 ;
                    db $60,$03,$D0,$40,$04,$90,$40,$05 ;
                    db $50,$50,$06,$10,$70,$07,$E0,$70 ;
                    db $08,$40,$50,$08,$80,$40,$09,$B0 ;
                    db $60,$0B,$70,$50,$0C,$50,$40,$2B ;
                    db $20,$08,$01,$0D,$10,$04,$0E,$F0 ;
                    db $03,$0F,$40,$05,$0F,$E0,$03,$0C ;
                    db $A0,$18,$0E,$60,$16,$10,$C0,$14 ;
                    db $12,$80,$13,$00,$51,$50,$02,$11 ;
                    db $40,$02,$A1,$40,$02,$D1,$60,$03 ;
                    db $61,$50,$04,$21,$70,$05,$81,$40 ;
                    db $06,$51,$50,$07,$01,$50,$09,$D1 ;
                    db $40,$0A,$21,$50,$0A,$A1,$50,$0A ;
                    db $F1,$70,$0B,$01,$40,$0C,$C1,$70 ;
                    db $0D,$D1,$60,$0E,$B1,$06,$0F,$81 ;
                    db $04,$30,$01,$03,$01,$10,$D1,$04 ;
                    db $11,$A1,$03,$32,$C1,$02,$01,$0A ;
                    db $41,$19,$0D,$21,$17,$0F,$F1,$16 ;
                    db $11,$61,$14,$FF ;

DATA_2AE1D8:        db $16,$00,$0B,$00,$21,$0B,$40,$02 ;
                    db $0B,$C0,$10,$0B,$E0,$30,$0D,$40 ;
                    db $10,$0D,$60,$02,$11,$20,$48,$13 ;
                    db $00,$42,$13,$80,$60,$13,$A0,$50 ;
                    db $13,$C0,$45,$15,$20,$42,$15,$C0 ;
                    db $70,$17,$00,$60,$17,$20,$50,$17 ;
                    db $40,$70,$17,$80,$50,$17,$A0,$60 ;
                    db $19,$A0,$42,$0B,$01,$30,$0B,$21 ;
                    db $21,$0B,$61,$10,$0B,$81,$02,$0D ;
                    db $61,$02,$0D,$E1,$10,$15,$01,$50 ;
                    db $15,$21,$44,$17,$21,$50,$17,$41 ;
                    db $70,$17,$81,$50,$17,$A1,$60,$17 ;
                    db $C1,$41,$19,$A1,$42,$FF ;

DATA_2AE23E:        db $0C,$00,$FF ;

DATA_2AE241:        db $0B,$00,$0B,$10,$24,$0B,$90,$24 ;
                    db $02,$00,$06,$02,$40,$16,$02,$80 ;
                    db $06,$02,$C0,$16,$FF ;

DATA_2AE256:        db $68,$E2,$F9,$E2,$1A,$E4,$CB,$E5 ;
                    db $EC,$E6,$0D,$E8,$BE,$E9,$DF,$EA ;
                    db $20,$ED,$02,$B4,$B4,$B4,$03,$45 ;
                    db $47,$45,$04,$45,$05,$45,$47,$B4 ;
                    db $B4,$02,$02,$B4,$B4,$B4,$46,$B4 ;
                    db $B4,$B4,$46,$B4,$B4,$B4,$46,$B4 ;
                    db $B4,$02,$02,$49,$E5,$45,$4A,$B4 ;
                    db $B4,$B4,$48,$45,$06,$45,$50,$B4 ;
                    db $B4,$02,$02,$B4,$B4,$B4,$54,$B4 ;
                    db $B4,$B4,$46,$B4,$B4,$B4,$B4,$B4 ;
                    db $B4,$02,$02,$B4,$B4,$B4,$48,$45 ;
                    db $67,$45,$E8,$B4,$B4,$99,$A2,$9A ;
                    db $B4,$02,$02,$B4,$42,$42,$46,$42 ;
                    db $B4,$B4,$B4,$99,$A2,$A7,$C8,$9D ;
                    db $B4,$02,$02,$42,$42,$53,$48,$53 ;
                    db $50,$45,$47,$B3,$47,$45,$C9,$9D ;
                    db $B4,$02,$02,$42,$53,$53,$46,$53 ;
                    db $53,$42,$46,$9D,$42,$42,$42,$9D ;
                    db $B4,$02,$02,$42,$53,$53,$07,$45 ;
                    db $47,$45,$08,$A6,$A2,$A2,$A2,$A7 ;
                    db $B4,$02,$FF,$43,$43,$BB,$BB,$E8 ;
                    db $45,$47,$45,$04,$96,$44,$45,$47 ;
                    db $42,$50,$45,$43,$BB,$BF,$BB,$BB ;
                    db $43,$46,$BF,$46,$43,$46,$43,$46 ;
                    db $BB,$42,$BF,$43,$42,$BB,$BB,$44 ;
                    db $45,$4A,$43,$48,$43,$48,$42,$05 ;
                    db $45,$47,$45,$43,$43,$43,$43,$46 ;
                    db $69,$43,$69,$46,$69,$46,$43,$46 ;
                    db $43,$43,$43,$43,$43,$43,$53,$03 ;
                    db $43,$69,$43,$67,$45,$4A,$45,$4A ;
                    db $45,$BC,$43,$43,$53,$43,$43,$46 ;
                    db $43,$43,$69,$43,$43,$BB,$BB,$46 ;
                    db $43,$43,$43,$43,$43,$43,$53,$48 ;
                    db $43,$50,$45,$BC,$43,$53,$BB,$48 ;
                    db $51,$47,$42,$43,$43,$43,$BB,$46 ;
                    db $BB,$BF,$42,$54,$53,$53,$BB,$BB ;
                    db $BB,$46,$43,$43,$49,$E5,$45,$4A ;
                    db $45,$47,$45,$4A,$43,$53,$53,$43 ;
                    db $BB,$E8,$45,$47,$45,$06,$45,$47 ;
                    db $51,$BB,$45,$50,$42,$A1,$83,$83 ;
                    db $83,$A3,$43,$46,$53,$53,$53,$46 ;
                    db $53,$53,$53,$46,$BB,$43,$9D,$9D ;
                    db $9D,$43,$43,$68,$43,$43,$53,$48 ;
                    db $BB,$53,$43,$48,$BB,$43,$9D,$9D ;
                    db $9D,$43,$43,$46,$43,$C8,$43,$46 ;
                    db $BB,$53,$53,$46,$BB,$A1,$82,$82 ;
                    db $82,$A3,$43,$48,$43,$C9,$43,$48 ;
                    db $43,$53,$53,$48,$45,$47,$53,$BB ;
                    db $43,$43,$43,$46,$69,$46,$69,$46 ;
                    db $43,$43,$53,$53,$BB,$46,$BB,$53 ;
                    db $BB,$43,$43,$07,$43,$48,$45,$69 ;
                    db $43,$43,$43,$53,$BB,$48,$BF,$53 ;
                    db $BB,$43,$43,$46,$BB,$43,$43,$46 ;
                    db $43,$43,$43,$53,$43,$BB,$BB,$43 ;
                    db $53,$43,$43,$4A,$45,$47,$45,$4A ;
                    db $43,$43,$43,$43,$53,$53,$53,$53 ;
                    db $43,$43,$43,$FF,$8D,$8E,$50,$45 ;
                    db $47,$B7,$AE,$B8,$05,$8B,$50,$B2 ;
                    db $47,$B2,$47,$45,$8D,$8F,$85,$86 ;
                    db $46,$8C,$8D,$8F,$AA,$91,$85,$A5 ;
                    db $46,$9D,$46,$99,$8D,$8D,$8D,$8F ;
                    db $04,$90,$87,$88,$B5,$8D,$8D,$8E ;
                    db $06,$B9,$4A,$9D,$8D,$8D,$8D,$8D ;
                    db $B0,$87,$96,$97,$AB,$95,$95,$9F ;
                    db $AA,$A5,$46,$8A,$8D,$95,$88,$8D ;
                    db $B5,$8E,$E8,$B9,$67,$45,$47,$B7 ;
                    db $AF,$8E,$48,$9D,$8D,$B4,$8C,$8D ;
                    db $B0,$8F,$85,$A5,$46,$A1,$A2,$93 ;
                    db $B0,$8E,$46,$A6,$8D,$B4,$94,$88 ;
                    db $03,$8D,$87,$96,$48,$56,$BC,$8C ;
                    db $07,$B8,$4A,$51,$8D,$B4,$42,$94 ;
                    db $AB,$95,$96,$B4,$46,$A1,$A2,$93 ;
                    db $8D,$8F,$85,$85,$8D,$49,$E5,$45 ;
                    db $BC,$51,$E8,$51,$4A,$45,$BC,$94 ;
                    db $95,$95,$95,$95,$08,$B3,$47,$45 ;
                    db $09,$45,$47,$8C,$8D,$8D,$8F,$85 ;
                    db $86,$42,$8C,$8D,$B1,$A0,$A2,$A2 ;
                    db $A2,$A2,$BA,$93,$8D,$8D,$8D,$8D ;
                    db $8F,$85,$90,$8D,$0A,$B3,$47,$45 ;
                    db $E8,$45,$67,$8C,$8D,$87,$95,$95 ;
                    db $95,$88,$8D,$8D,$BA,$A0,$A2,$9C ;
                    db $85,$86,$54,$8C,$87,$96,$E8,$45 ;
                    db $50,$94,$88,$8D,$48,$B3,$0B,$B7 ;
                    db $BC,$8E,$BC,$8C,$8E,$BF,$46,$42 ;
                    db $BF,$42,$8C,$8D,$A2,$82,$A2,$A9 ;
                    db $88,$8F,$85,$90,$4B,$45,$50,$45 ;
                    db $E8,$BF,$8C,$8D,$47,$45,$47,$45 ;
                    db $4B,$8D,$8D,$8D,$8F,$9B,$A2,$A2 ;
                    db $A2,$9C,$90,$8D,$85,$85,$85,$85 ;
                    db $90,$8D,$8D,$8D,$8D,$8E,$42,$B4 ;
                    db $42,$8C,$8D,$8D,$95,$95,$95,$95 ;
                    db $95,$95,$95,$95,$95,$A8,$A2,$A2 ;
                    db $A2,$A9,$95,$95,$4B,$45,$50,$BB ;
                    db $BB,$8C,$8D,$8D,$8D,$8D,$87,$95 ;
                    db $95,$88,$8D,$02,$8E,$BB,$42,$84 ;
                    db $85,$90,$8D,$8D,$8D,$8D,$8E,$B4 ;
                    db $B4,$8C,$8D,$02,$8F,$85,$85,$90 ;
                    db $8D,$8D,$8D,$8D,$8D,$8D,$8E,$42 ;
                    db $B4,$8C,$8D,$02,$8D,$8D,$8D,$8D ;
                    db $8D,$8D,$8D,$8D,$8D,$8D,$92,$A2 ;
                    db $9C,$90,$8D,$02,$8D,$8D,$8D,$8D ;
                    db $8D,$87,$95,$95,$95,$95,$96,$B4 ;
                    db $8C,$8D,$8D,$02,$8D,$8D,$8D,$87 ;
                    db $95,$98,$42,$B4,$B4,$C8,$B4,$B4 ;
                    db $8C,$8D,$8D,$02,$8D,$8D,$8D,$8E ;
                    db $B4,$8A,$A2,$B1,$9A,$C9,$45,$47 ;
                    db $B7,$BC,$8D,$02,$8D,$8D,$8D,$8E ;
                    db $B4,$9D,$B4,$42,$A4,$85,$85,$85 ;
                    db $90,$8D,$8D,$02,$95,$95,$95,$A8 ;
                    db $A2,$82,$A2,$A2,$A9,$95,$95,$95 ;
                    db $95,$95,$95,$02,$FF,$8D,$8D,$8D ;
                    db $8D,$8D,$8D,$8D,$8D,$8D,$8D,$8D ;
                    db $87,$95,$95,$95,$95,$95,$95,$95 ;
                    db $89,$95,$88,$8D,$8D,$8D,$87,$95 ;
                    db $96,$BD,$42,$BD,$42,$42,$49,$E5 ;
                    db $B3,$BC,$8C,$8D,$87,$95,$96,$E0 ;
                    db $45,$08,$45,$47,$45,$8D,$85,$AA ;
                    db $91,$85,$90,$87,$96,$C8,$42,$BD ;
                    db $99,$BA,$83,$A2,$9A,$8D,$8D,$B5 ;
                    db $8D,$AD,$8D,$8E,$42,$C9,$45,$47 ;
                    db $9D,$4A,$B3,$67,$9D,$8D,$87,$AB ;
                    db $88,$8D,$8D,$8F,$86,$42,$BD,$BD ;
                    db $A6,$BA,$82,$A2,$A7,$8D,$8E,$BC ;
                    db $8C,$8D,$AD,$8D,$92,$A2,$A3,$E8 ;
                    db $45,$07,$45,$47,$45,$8D,$96,$BB ;
                    db $94,$88,$8D,$8D,$8E,$BD,$42,$BD ;
                    db $84,$85,$85,$85,$86,$42,$42,$BB ;
                    db $BB,$94,$95,$95,$A8,$A2,$A2,$A2 ;
                    db $A9,$95,$95,$95,$A8,$95,$95,$88 ;
                    db $8D,$8D,$87,$95,$95,$95,$95,$95 ;
                    db $95,$88,$8D,$8D,$8D,$BD,$42,$94 ;
                    db $95,$95,$96,$BD,$53,$53,$53,$53 ;
                    db $BD,$8C,$8D,$8D,$8D,$47,$42,$BC ;
                    db $56,$67,$45,$47,$45,$05,$45,$47 ;
                    db $45,$04,$95,$88,$8D,$46,$BD,$42 ;
                    db $42,$46,$BD,$52,$53,$53,$BF,$46 ;
                    db $BF,$46,$42,$8C,$8D,$48,$45,$47 ;
                    db $BD,$48,$45,$E8,$BD,$53,$42,$50 ;
                    db $42,$48,$BD,$8C,$8D,$46,$BD,$46 ;
                    db $84,$AA,$86,$42,$BD,$53,$42,$42 ;
                    db $42,$46,$42,$8C,$8D,$4A,$42,$48 ;
                    db $B7,$06,$8E,$BD,$42,$E0,$51,$BC ;
                    db $45,$03,$42,$8C,$8D,$42,$42,$84 ;
                    db $9E,$AB,$9F,$85,$86,$BD,$BD,$A1 ;
                    db $A2,$A2,$9C,$90,$8D,$A2,$A2,$A9 ;
                    db $96,$50,$94,$95,$A8,$A2,$A2,$A2 ;
                    db $A2,$A2,$A9,$95,$8D,$FF,$42,$42 ;
                    db $44,$45,$04,$45,$50,$9D,$05,$45 ;
                    db $47,$B4,$42,$8C,$8D,$8D,$42,$B4 ;
                    db $46,$B4,$46,$99,$A2,$A7,$46,$B4 ;
                    db $46,$B4,$B4,$8C,$8D,$8D,$42,$42 ;
                    db $03,$B4,$BC,$9D,$BC,$45,$4A,$B4 ;
                    db $48,$45,$5F,$8C,$8D,$8D,$42,$42 ;
                    db $46,$99,$A2,$A7,$46,$B4,$42,$B4 ;
                    db $46,$B4,$84,$90,$8D,$8D,$42,$B4 ;
                    db $48,$9D,$67,$45,$4A,$42,$44,$45 ;
                    db $4A,$B4,$8C,$8D,$8D,$8D,$42,$42 ;
                    db $46,$9D,$46,$B4,$A1,$A3,$46,$B4 ;
                    db $B4,$B4,$8C,$C2,$C3,$C4,$42,$49 ;
                    db $E5,$9D,$48,$45,$E8,$45,$4A,$B4 ;
                    db $B4,$B4,$8C,$CE,$D7,$D7,$85,$85 ;
                    db $85,$91,$85,$85,$85,$85,$85,$85 ;
                    db $85,$85,$90,$D2,$D7,$D7,$C4,$C3 ;
                    db $C4,$C3,$C4,$C3,$C4,$C3,$C4,$C3 ;
                    db $C4,$C3,$C4,$D0,$D7,$D7,$42,$57 ;
                    db $58,$59,$5A,$84,$90,$8D,$8D,$8D ;
                    db $8D,$D2,$D7,$D7,$E0,$D7,$42,$5B ;
                    db $5C,$5D,$5D,$8C,$8D,$8D,$8D,$8D ;
                    db $8D,$CE,$D7,$E9,$DB,$D7,$85,$85 ;
                    db $85,$85,$85,$90,$8D,$C2,$BC,$C4 ;
                    db $C4,$D0,$D9,$DA,$07,$D7,$C3,$C4 ;
                    db $C5,$8D,$8D,$C2,$C3,$D0,$DB,$D7 ;
                    db $D7,$E9,$DB,$D7,$DB,$D7,$D6,$D3 ;
                    db $D4,$C2,$C3,$D0,$D9,$E4,$DE,$DA ;
                    db $06,$DA,$DE,$D7,$E8,$D7,$C2,$C3 ;
                    db $C4,$D0,$D7,$D7,$DB,$D7,$D7,$D7 ;
                    db $D7,$D7,$D7,$E9,$DB,$D7,$D7,$D7 ;
                    db $E9,$D7,$E8,$DA,$DE,$DA,$EB,$DA ;
                    db $DC,$DA,$09,$DA,$DE,$D7,$D7,$D7 ;
                    db $C8,$D7,$D7,$E9,$D7,$D7,$DB,$D7 ;
                    db $DB,$E9,$D7,$D7,$DB,$D7,$D7,$D7 ;
                    db $C9,$DA,$DC,$DA,$0B,$DA,$0A,$D7 ;
                    db $DD,$DA,$E0,$DA,$08,$D7,$FF,$8D ;
                    db $88,$8D,$8D,$8F,$90,$87,$95,$95 ;
                    db $95,$98,$EA,$E0,$EA,$94,$88,$8D ;
                    db $94,$88,$AD,$8D,$8D,$8E,$EA,$EA ;
                    db $EA,$9D,$42,$46,$EA,$EA,$94,$42 ;
                    db $42,$94,$95,$95,$95,$96,$EA,$44 ;
                    db $45,$04,$45,$4A,$51,$BC,$EA,$EA ;
                    db $EA,$42,$99,$A2,$9A,$B4,$EA,$46 ;
                    db $99,$82,$9A,$46,$EA,$EA,$99,$42 ;
                    db $49,$E5,$B9,$47,$B9,$03,$45,$E8 ;
                    db $9D,$67,$B3,$4A,$56,$47,$B9,$EA ;
                    db $EA,$42,$A6,$BA,$8B,$B4,$EA,$46 ;
                    db $8A,$A2,$A7,$46,$EA,$46,$A6,$42 ;
                    db $42,$42,$B4,$BC,$9D,$B4,$EA,$48 ;
                    db $B3,$47,$45,$05,$EA,$E8,$45,$42 ;
                    db $42,$42,$42,$B4,$A6,$9A,$EA,$EA ;
                    db $9D,$42,$42,$42,$EA,$EA,$EA,$42 ;
                    db $42,$42,$42,$42,$B4,$A6,$A2,$A2 ;
                    db $A7,$EA,$EA,$EA,$EA,$42,$42,$8D ;
                    db $8D,$8D,$8D,$8D,$8E,$BC,$45,$47 ;
                    db $9D,$47,$EA,$EA,$EA,$EA,$EA,$88 ;
                    db $8D,$8D,$87,$95,$A8,$A2,$A2,$A2 ;
                    db $A7,$46,$42,$EA,$EA,$EA,$84,$94 ;
                    db $95,$95,$96,$42,$B4,$42,$42,$44 ;
                    db $45,$4A,$45,$47,$EA,$EA,$94,$A2 ;
                    db $9A,$EA,$B4,$EA,$42,$42,$99,$BA ;
                    db $9A,$EA,$EA,$46,$B4,$EA,$EA,$BC ;
                    db $9D,$44,$45,$08,$45,$47,$9D,$67 ;
                    db $B3,$47,$EA,$0A,$45,$47,$45,$A2 ;
                    db $A7,$46,$42,$42,$42,$46,$A6,$A2 ;
                    db $A7,$46,$99,$A2,$9A,$EA,$EA,$06 ;
                    db $45,$4A,$42,$E0,$42,$48,$45,$47 ;
                    db $51,$4A,$B9,$09,$9D,$B4,$EA,$EA ;
                    db $42,$46,$42,$46,$42,$46,$42,$46 ;
                    db $42,$42,$A6,$BA,$A7,$B4,$B4,$B4 ;
                    db $B4,$48,$45,$07,$45,$4A,$45,$4A ;
                    db $45,$E8,$45,$4A,$42,$42,$B4,$EA ;
                    db $42,$94,$95,$95,$88,$8D,$87,$95 ;
                    db $88,$8D,$8F,$85,$85,$86,$42,$86 ;
                    db $42,$42,$42,$42,$94,$88,$8E,$EA ;
                    db $8C,$AD,$8D,$8D,$8D,$8E,$42,$0B ;
                    db $45,$47,$45,$47,$42,$8C,$8F,$85 ;
                    db $90,$87,$95,$95,$88,$8E,$42,$46 ;
                    db $99,$A2,$9A,$46,$42,$94,$89,$95 ;
                    db $89,$96,$B4,$C8,$8C,$8E,$42,$4A ;
                    db $9D,$67,$B3,$4A,$56,$47,$B3,$47 ;
                    db $B3,$47,$45,$C9,$8C,$8E,$42,$46 ;
                    db $A6,$A2,$A7,$46,$BF,$84,$91,$85 ;
                    db $91,$86,$B4,$42,$8C,$8E,$42,$48 ;
                    db $45,$47,$45,$0C,$EA,$94,$88,$8D ;
                    db $8D,$8F,$85,$85,$90,$8E,$42,$EA ;
                    db $EA,$EA,$EA,$EA,$EA,$EA,$94,$88 ;
                    db $8D,$8D,$8D,$8D,$8D,$8E,$42,$B4 ;
                    db $EA,$EA,$EA,$EA,$EA,$EA,$EA,$94 ;
                    db $95,$95,$95,$95,$95,$96,$42,$FF ;
                    db $8D,$87,$95,$95,$95,$95,$95,$95 ;
                    db $89,$95,$88,$87,$95,$95,$95,$95 ;
                    db $8D,$8E,$E5,$45,$47,$45,$47,$BE ;
                    db $9D,$BC,$8C,$8E,$BE,$BC,$BE,$67 ;
                    db $8D,$8E,$46,$BE,$BE,$BE,$46,$BE ;
                    db $9D,$46,$8C,$8E,$BE,$54,$BE,$46 ;
                    db $8D,$8E,$03,$45,$BC,$BE,$BC,$BE ;
                    db $9D,$50,$8C,$BC,$45,$4A,$45,$4A ;
                    db $8D,$8F,$9B,$A2,$A2,$A2,$A2,$83 ;
                    db $82,$9C,$90,$8F,$9B,$A2,$A2,$A2 ;
                    db $8D,$8D,$8E,$BC,$45,$BC,$BE,$9D ;
                    db $44,$B7,$06,$AC,$E8,$45,$47,$45 ;
                    db $8D,$8D,$8E,$46,$BE,$BE,$BE,$9D ;
                    db $46,$8C,$8D,$8D,$8E,$BE,$46,$BE ;
                    db $8D,$8D,$8E,$04,$45,$BC,$BE,$9D ;
                    db $BC,$8C,$8D,$8D,$8E,$BE,$05,$45 ;
                    db $95,$95,$A8,$A2,$A2,$A2,$A2,$82 ;
                    db $A2,$A9,$95,$95,$A8,$A2,$A2,$A2 ;
                    db $95,$95,$89,$95,$88,$87,$95,$95 ;
                    db $95,$95,$95,$95,$89,$95,$88,$8D ;
                    db $45,$E8,$B9,$08,$8C,$8E,$09,$45 ;
                    db $47,$45,$BC,$BE,$9D,$BE,$8C,$8D ;
                    db $BE,$BE,$9D,$46,$8C,$8E,$46,$BE ;
                    db $BE,$BE,$46,$BE,$9D,$BC,$8C,$8D ;
                    db $45,$BC,$9D,$BC,$8C,$8E,$E8,$45 ;
                    db $47,$45,$0A,$45,$50,$BE,$8C,$8D ;
                    db $A2,$83,$82,$9C,$90,$8F,$9B,$A2 ;
                    db $BA,$A2,$A2,$83,$82,$9C,$90,$8D ;
                    db $07,$B9,$BC,$8C,$8D,$8D,$BC,$56 ;
                    db $0B,$45,$47,$B9,$67,$8C,$8D,$8D ;
                    db $BE,$9D,$46,$8C,$8D,$8D,$8E,$BD ;
                    db $C8,$BD,$42,$9D,$46,$8C,$8D,$8D ;
                    db $BC,$9D,$50,$8C,$8D,$8D,$8E,$42 ;
                    db $C9,$45,$47,$B3,$4A,$8C,$8D,$8D ;
                    db $A2,$82,$A2,$A9,$95,$95,$A8,$A2 ;
                    db $A2,$A2,$A2,$82,$A2,$A9,$95,$8D ;
                    db $FF,$D8,$42,$42,$42,$42,$42,$42 ;
                    db $42,$D1,$D1,$D1,$D1,$D1,$D1,$D1 ;
                    db $D8,$D8,$42,$D1,$D1,$42,$42,$42 ;
                    db $D1,$BC,$F0,$F1,$F1,$F1,$F2,$D1 ;
                    db $D8,$42,$D1,$D1,$D1,$D1,$D1,$D1 ;
                    db $D1,$54,$F9,$F7,$F3,$F7,$FA,$D1 ;
                    db $D1,$D1,$D1,$E5,$D1,$D1,$D1,$BC ;
                    db $D1,$48,$9D,$42,$9D,$42,$9D,$D1 ;
                    db $D1,$D1,$D1,$46,$D1,$D1,$D1,$46 ;
                    db $F0,$00,$FC,$42,$9D,$42,$9D,$D1 ;
                    db $D1,$D1,$D1,$48,$45,$47,$45,$4A ;
                    db $02,$01,$F4,$F1,$F5,$FB,$A7,$D1 ;
                    db $D1,$D1,$D1,$D1,$D1,$D1,$D1,$D1 ;
                    db $F6,$F7,$F7,$F7,$F7,$F8,$D1,$D1 ;
                    db $D1,$D8,$42,$D1,$D1,$42,$42,$42 ;
                    db $D1,$D1,$D1,$BF,$BF,$BF,$D1,$D1 ;
                    db $D1,$D8,$42,$42,$42,$42,$42,$42 ;
                    db $42,$D1,$D1,$D1,$D1,$D1,$D1,$42 ;
                    db $D8,$D8,$42,$42,$E2,$E2,$42,$42 ;
                    db $42,$42,$E2,$E2,$E2,$42,$42,$42 ;
                    db $D8,$D8,$42,$E2,$E2,$E2,$E2,$42 ;
                    db $42,$42,$E2,$BC,$E2,$42,$42,$42 ;
                    db $D8,$D8,$E2,$E2,$42,$42,$E2,$E2 ;
                    db $42,$E2,$E2,$46,$E2,$E2,$42,$42 ;
                    db $D8,$D8,$E2,$BC,$45,$47,$42,$E2 ;
                    db $E2,$BC,$56,$4A,$42,$E2,$E2,$42 ;
                    db $D8,$D8,$E2,$42,$42,$46,$42,$D1 ;
                    db $D1,$D1,$D1,$D1,$42,$42,$E2,$42 ;
                    db $D8,$D8,$E2,$E2,$42,$48,$45,$E6 ;
                    db $E6,$E6,$E6,$E6,$45,$BC,$E2,$42 ;
                    db $D8,$D8,$42,$E2,$42,$42,$42,$D1 ;
                    db $D1,$D1,$D1,$D1,$42,$E2,$E2,$42 ;
                    db $D8,$D8,$42,$42,$E2,$E2,$E2,$42 ;
                    db $42,$42,$42,$E2,$E2,$E2,$42,$42 ;
                    db $D8,$D8,$42,$42,$42,$42,$E2,$E2 ;
                    db $E2,$E2,$E2,$E2,$42,$42,$42,$42 ;
                    db $D8,$E2,$E2,$E2,$E2,$E2,$E2,$E2 ;
                    db $E2,$E2,$E2,$E2,$E2,$E2,$E2,$E2 ;
                    db $E2,$E2,$E2,$E2,$E2,$E2,$E2,$E2 ;
                    db $E2,$E2,$E2,$E2,$E2,$E2,$E2,$E2 ;
                    db $E2,$E2,$E2,$E2,$E2,$E2,$E2,$E2 ;
                    db $E2,$E2,$E2,$E2,$E2,$E2,$E2,$E2 ;
                    db $E2,$E2,$E2,$BC,$45,$47,$E2,$BC ;
                    db $45,$47,$45,$47,$45,$47,$E2,$E2 ;
                    db $E2,$E2,$E2,$E2,$E2,$46,$E2,$E2 ;
                    db $E2,$E2,$E2,$46,$E2,$54,$E2,$E2 ;
                    db $E2,$E2,$E2,$44,$45,$03,$E2,$E2 ;
                    db $E2,$67,$45,$4A,$E2,$BC,$E2,$E2 ;
                    db $E2,$E2,$E2,$46,$E2,$E2,$E2,$E2 ;
                    db $E2,$46,$E2,$E2,$E2,$E2,$E2,$E2 ;
                    db $E2,$E2,$E2,$04,$45,$BC,$45,$47 ;
                    db $45,$4A,$45,$47,$45,$BC,$E2,$E2 ;
                    db $E2,$E2,$E2,$E2,$E2,$E2,$E2,$E2 ;
                    db $E2,$E2,$E2,$E2,$E2,$E2,$E2,$E2 ;
                    db $E2,$42,$42,$42,$42,$42,$42,$42 ;
                    db $42,$42,$42,$42,$42,$42,$42,$42 ;
                    db $42,$42,$42,$42,$42,$42,$42,$42 ;
                    db $42,$42,$42,$42,$42,$42,$42,$42 ;
                    db $42,$D8,$61,$63,$63,$63,$61,$63 ;
                    db $63,$63,$63,$61,$63,$63,$63,$61 ;
                    db $D8,$D8,$64,$62,$62,$62,$62,$62 ;
                    db $62,$62,$62,$62,$62,$62,$62,$64 ;
                    db $D8,$D8,$64,$42,$E1,$42,$E1,$42 ;
                    db $E1,$42,$E1,$42,$42,$CA,$CB,$64 ;
                    db $D8,$D8,$64,$BC,$45,$47,$56,$47 ;
                    db $45,$47,$45,$47,$45,$CC,$CD,$64 ;
                    db $D8,$D8,$61,$63,$63,$63,$61,$63 ;
                    db $63,$63,$63,$61,$63,$63,$63,$61 ;
                    db $D8,$62,$62,$62,$62,$62,$62,$62 ;
                    db $62,$62,$62,$62,$62,$62,$62,$62 ;
                    db $D8,$42,$42,$42,$42,$42,$42,$42 ;
                    db $42,$42,$42,$42,$42,$42,$42,$42 ;
                    db $42,$FF,$02,$8D,$8D,$8D,$8D,$8D ;
                    db $8D,$8D,$8D,$8D,$8D,$8D,$8D,$8D ;
                    db $8D,$02,$02,$8D,$8D,$8D,$8D,$8D ;
                    db $8D,$8D,$8D,$8D,$8D,$8D,$8D,$8D ;
                    db $8D,$02,$02,$8D,$8D,$87,$95,$95 ;
                    db $95,$95,$95,$95,$95,$95,$95,$95 ;
                    db $88,$02,$02,$88,$8D,$8E,$44,$45 ;
                    db $BC,$45,$BC,$45,$BC,$42,$42,$42 ;
                    db $8C,$02,$02,$90,$8D,$8E,$42,$42 ;
                    db $42,$42,$42,$42,$42,$42,$42,$84 ;
                    db $90,$02,$02,$8D,$87,$96,$44,$45 ;
                    db $BC,$45,$BC,$45,$BC,$42,$A1,$93 ;
                    db $8D,$02,$02,$8D,$8E,$42,$42,$42 ;
                    db $42,$42,$42,$42,$42,$42,$42,$8C ;
                    db $8D,$02,$02,$8D,$8E,$42,$42,$84 ;
                    db $85,$86,$44,$45,$BC,$42,$84,$90 ;
                    db $8D,$02,$02,$8D,$8F,$85,$85,$90 ;
                    db $8D,$8F,$85,$85,$85,$85,$90,$8D ;
                    db $8D,$02,$FF,$BC,$45,$00,$00,$00 ;
                    db $00,$04,$00,$07,$00,$0A,$00,$0E ;
                    db $00,$42,$08,$83,$0C,$C4,$10,$05 ;
                    db $15,$04,$00,$67,$0C,$CA,$18,$00 ;
                    db $00,$00,$00,$BC,$45,$21,$04,$00 ;
                    db $00,$05,$00,$08,$00,$0B,$00,$0F ;
                    db $00,$42,$08,$83,$0C,$C4,$10,$26 ;
                    db $19,$04,$00,$67,$0C,$EB,$1C,$62 ;
                    db $04,$84,$10,$BC,$45,$C6,$18,$00 ;
                    db $00,$06,$00,$09,$00,$0C,$00,$10 ;
                    db $00,$42,$08,$83,$0C,$E5,$14,$47 ;
                    db $1D,$04,$00,$67,$0C,$0C,$21,$E5 ;
                    db $18,$08,$21,$BC,$45,$6B,$2D,$00 ;
                    db $00,$07,$00,$0A,$00,$0D,$00,$11 ;
                    db $00,$42,$08,$A4,$10,$06,$19,$68 ;
                    db $21,$04,$00,$67,$0C,$2D,$25,$68 ;
                    db $2D,$8C,$31,$BC,$45,$10,$42,$00 ;
                    db $00,$08,$00,$0B,$00,$0E,$00,$12 ;
                    db $00,$63,$0C,$C5,$14,$27,$1D,$89 ;
                    db $25,$04,$00,$67,$0C,$4E,$29,$EB ;
                    db $41,$11,$42,$BC,$45,$B5,$56,$21 ;
                    db $04,$09,$00,$0C,$00,$0F,$00,$13 ;
                    db $00,$84,$10,$E6,$18,$48,$21,$AA ;
                    db $29,$04,$00,$67,$0C,$6F,$2D,$6E ;
                    db $56,$94,$56,$BC,$45,$5A,$6B,$42 ;
                    db $08,$0A,$00,$0D,$00,$10,$00,$14 ;
                    db $00,$A5,$14,$07,$1D,$69,$25,$CB ;
                    db $2D,$04,$00,$67,$0C,$90,$31,$F1 ;
                    db $6A,$17,$6B,$BC,$45,$FF,$7F,$63 ;
                    db $0C,$0B,$00,$0E,$00,$11,$00,$15 ;
                    db $00,$C6,$18,$28,$21,$8A,$29,$EC ;
                    db $31,$04,$00,$67,$0C,$B1,$35,$74 ;
                    db $7F,$9A,$7F ;

DATA_2AEEB1:        db $1D,$63,$1D,$63,$1D,$63,$1D,$63 ;
                    db $1C,$64,$1C,$64,$1C,$64,$1C,$64 ;
                    db $1B,$65,$1B,$65,$1B,$65,$1B,$65 ;
                    db $1A,$66,$1A,$66,$1A,$66,$1A,$66 ;
                    db $19,$67,$19,$67,$19,$67,$19,$67 ;
                    db $18,$68,$18,$68,$18,$68,$18,$68 ;
                    db $17,$69,$17,$69,$17,$69,$17,$69 ;
                    db $16,$6A,$16,$6A,$16,$6A,$16,$6A ;
                    db $15,$6B,$15,$6B,$15,$6B,$15,$6B ;
                    db $14,$6C,$14,$6C,$14,$6C,$14,$6C ;
                    db $13,$6D,$13,$6D,$13,$6D,$13,$6D ;
                    db $12,$6E,$12,$6E,$12,$6E,$12,$6E ;
                    db $11,$6F,$11,$6F,$11,$6F,$11,$6F ;
                    db $10,$70,$10,$70,$10,$70,$10,$70 ;
                    db $0F,$71,$0F,$71,$0F,$71,$0F,$71 ;
                    db $0E,$72,$0E,$72,$0E,$72,$0E,$72 ;
                    db $0D,$73,$0D,$73,$0D,$73,$0D,$73 ;
                    db $0C,$74,$0C,$74,$0C,$74,$0C,$74 ;
                    db $0B,$75,$0B,$75,$0B,$75,$0B,$75 ;
                    db $0A,$76,$0A,$76,$0A,$76,$0A,$76 ;
                    db $09,$77,$09,$77,$09,$77,$09,$77 ;
                    db $08,$78,$08,$78,$08,$78,$08,$78 ;
                    db $07,$79,$07,$79,$07,$79,$07,$79 ;
                    db $06,$7A,$06,$7A,$06,$7A,$06,$7A ;
                    db $05,$7B,$05,$7B,$05,$7B,$05,$7B ;
                    db $04,$7C,$04,$7C,$04,$7C,$04,$7C ;
                    db $03,$7D,$03,$7D,$03,$7D,$03,$7D ;
                    db $02,$7E,$02,$7E,$02,$7E,$02,$7E ;
                    db $01,$7F,$01,$7F,$01,$7F,$01,$7F ;
                    db $00,$80,$00,$80,$00,$80,$00,$80 ;
                    db $00,$80,$00,$80,$00,$80,$00,$80 ;
                    db $00,$80,$00,$80,$00,$80,$00,$80 ;
                    db $00,$80,$00,$80,$00,$80,$00,$80 ;
                    db $00,$80,$00,$80,$00,$80,$00,$80 ;
                    db $00,$80,$00,$80,$00,$80,$00,$80 ;
                    db $00,$80,$00,$80,$00,$80,$00,$80 ;
                    db $00,$80,$00,$80,$00,$80,$00,$80 ;
                    db $00,$80,$00,$80,$00,$80,$00,$80 ;
                    db $00,$80,$00,$80,$00,$80,$00,$80 ;
                    db $00,$80,$00,$80,$00,$80,$00,$80 ;
                    db $00,$80,$00,$80,$00,$80,$00,$80 ;
                    db $00,$80,$00,$80,$00,$80,$00,$80 ;
                    db $00,$80,$00,$80,$00,$80,$00,$80 ;
                    db $00,$80,$00,$80,$00,$80,$00,$80 ;
                    db $00,$80,$00,$80,$00,$80,$00,$80 ;
                    db $00,$80,$00,$80,$00,$80,$00,$80 ;
                    db $00,$80,$00,$80,$00,$80,$00,$80 ;
                    db $00,$80,$00,$80,$00,$80,$00,$80 ;

DATA_2AF031:        db $9D,$E3,$9D,$E3,$9D,$E3,$9D,$E3 ;
                    db $9C,$E4,$9C,$E4,$9C,$E4,$9C,$E4 ;
                    db $9B,$E5,$9B,$E5,$9B,$E5,$9B,$E5 ;
                    db $9A,$E6,$9A,$E6,$9A,$E6,$9A,$E6 ;
                    db $99,$E7,$99,$E7,$99,$E7,$99,$E7 ;
                    db $98,$E8,$98,$E8,$98,$E8,$98,$E8 ;
                    db $97,$E9,$97,$E9,$97,$E9,$97,$E9 ;
                    db $96,$EA,$96,$EA,$96,$EA,$96,$EA ;
                    db $95,$EB,$95,$EB,$95,$EB,$95,$EB ;
                    db $94,$EC,$94,$EC,$94,$EC,$94,$EC ;
                    db $93,$ED,$93,$ED,$93,$ED,$93,$ED ;
                    db $92,$EE,$92,$EE,$92,$EE,$92,$EE ;
                    db $91,$EF,$91,$EF,$91,$EF,$91,$EF ;
                    db $90,$F0,$90,$F0,$90,$F0,$90,$F0 ;
                    db $8F,$F1,$8F,$F1,$8F,$F1,$8F,$F1 ;
                    db $8E,$F2,$8E,$F2,$8E,$F2,$8E,$F2 ;
                    db $8D,$F3,$8D,$F3,$8D,$F3,$8D,$F3 ;
                    db $8C,$F4,$8C,$F4,$8C,$F4,$8C,$F4 ;
                    db $8B,$F5,$8B,$F5,$8B,$F5,$8B,$F5 ;
                    db $8A,$F6,$8A,$F6,$8A,$F6,$8A,$F6 ;
                    db $89,$F7,$89,$F7,$89,$F7,$89,$F7 ;
                    db $88,$F8,$88,$F8,$88,$F8,$88,$F8 ;
                    db $87,$F9,$87,$F9,$87,$F9,$87,$F9 ;
                    db $86,$FA,$86,$FA,$86,$FA,$86,$FA ;
                    db $85,$FB,$85,$FB,$85,$FB,$85,$FB ;
                    db $84,$FC,$84,$FC,$84,$FC,$84,$FC ;
                    db $83,$FD,$83,$FD,$83,$FD,$83,$FD ;
                    db $82,$FE,$82,$FE,$82,$FE,$82,$FE ;
                    db $81,$FF,$81,$FF,$81,$FF,$81,$FF ;
                    db $80,$FF,$80,$FF,$80,$FF,$80,$FF ;
                    db $80,$FF,$80,$FF,$80,$FF,$80,$FF ;
                    db $80,$FF,$80,$FF,$80,$FF,$80,$FF ;
                    db $80,$FF,$80,$FF,$80,$FF,$80,$FF ;
                    db $80,$FF,$80,$FF,$80,$FF,$80,$FF ;
                    db $80,$FF,$80,$FF,$80,$FF,$80,$FF ;
                    db $80,$FF,$80,$FF,$80,$FF,$80,$FF ;
                    db $80,$FF,$80,$FF,$80,$FF,$80,$FF ;
                    db $80,$FF,$80,$FF,$80,$FF,$80,$FF ;
                    db $80,$FF,$80,$FF,$80,$FF,$80,$FF ;
                    db $80,$FF,$80,$FF,$80,$FF,$80,$FF ;
                    db $80,$FF,$80,$FF,$80,$FF,$80,$FF ;
                    db $80,$FF,$80,$FF,$80,$FF,$80,$FF ;
                    db $80,$FF,$80,$FF,$80,$FF,$80,$FF ;
                    db $80,$FF,$80,$FF,$80,$FF,$80,$FF ;
                    db $80,$FF,$80,$FF,$80,$FF,$80,$FF ;
                    db $80,$FF,$80,$FF,$80,$FF,$80,$FF ;
                    db $80,$FF,$80,$FF,$80,$FF,$80,$FF ;
                    db $80,$FF,$80,$FF,$80,$FF,$80,$FF ;
                    db $00,$00,$05,$FF,$F4,$01,$F5,$01 ;
                    db $F5,$41,$F4,$41,$F4,$01,$F5,$01 ;
                    db $F5,$41,$F4,$41,$F4,$01,$F5,$01 ;
                    db $F5,$41,$F4,$41,$F4,$01,$F5,$01 ;
                    db $F5,$41,$F4,$41,$F4,$01,$F5,$01 ;
                    db $F5,$41,$F4,$41,$F4,$01,$F5,$01 ;
                    db $F5,$41,$F4,$41,$F4,$01,$F5,$01 ;
                    db $F5,$41,$F4,$41,$F4,$01,$F5,$01 ;
                    db $F5,$41,$F4,$41,$F6,$01,$F7,$01 ;
                    db $F7,$41,$F6,$41,$F6,$01,$F7,$01 ;
                    db $F7,$41,$F6,$41,$F6,$01,$F7,$01 ;
                    db $F7,$41,$F6,$41,$F6,$01,$F7,$01 ;
                    db $F7,$41,$F6,$41,$F6,$01,$F7,$01 ;
                    db $F7,$41,$F6,$41,$F6,$01,$F7,$01 ;
                    db $F7,$41,$F6,$41,$F6,$01,$F7,$01 ;
                    db $F7,$41,$F6,$41,$F6,$01,$F7,$01 ;
                    db $F7,$41,$F6,$41,$F8,$01,$F9,$01 ;
                    db $F9,$41,$F8,$41,$F8,$01,$F9,$01 ;
                    db $F9,$41,$F8,$41,$F8,$01,$F9,$01 ;
                    db $F9,$41,$F8,$41,$F8,$01,$F9,$01 ;
                    db $F9,$41,$F8,$41,$F8,$01,$F9,$01 ;
                    db $F9,$41,$F8,$41,$F8,$01,$F9,$01 ;
                    db $F9,$41,$F8,$41,$F8,$01,$F9,$01 ;
                    db $F9,$41,$F8,$41,$F8,$01,$F9,$01 ;
                    db $F9,$41,$F8,$41,$5C,$00,$FA,$01 ;
                    db $FA,$41,$5C,$00,$5C,$00,$FA,$01 ;
                    db $FA,$41,$5C,$00,$5C,$00,$FA,$01 ;
                    db $FA,$41,$5C,$00,$5C,$00,$FA,$01 ;
                    db $FA,$41,$5C,$00,$5C,$00,$FA,$01 ;
                    db $FA,$41,$5C,$00,$5C,$00,$FA,$01 ;
                    db $FA,$41,$5C,$00,$5C,$00,$FA,$01 ;
                    db $FA,$41,$5C,$00,$5C,$00,$FA,$01 ;
                    db $FA,$41,$5C,$00,$5C,$00,$5C,$00 ;
                    db $5C,$00,$5C,$00,$5C,$00,$5C,$00 ;
                    db $5C,$00,$5C,$00,$5C,$00,$5C,$00 ;
                    db $45,$09,$30,$08,$31,$08,$32,$08 ;
                    db $33,$08,$34,$08,$35,$08,$36,$08 ;
                    db $37,$08,$38,$08,$39,$08,$3A,$08 ;
                    db $5C,$00,$5C,$00,$5C,$00,$5C,$00 ;
                    db $3B,$1C,$3C,$1C,$3D,$1C,$3E,$1C ;
                    db $5C,$00,$5C,$00,$5C,$00,$5C,$00 ;
                    db $5C,$00,$5C,$00,$5C,$00,$5C,$00 ;
                    db $5C,$00,$5C,$00,$5C,$00,$5C,$00 ;
                    db $46,$09,$40,$08,$41,$08,$42,$08 ;
                    db $43,$08,$44,$08,$45,$08,$46,$08 ;
                    db $47,$08,$48,$08,$49,$08,$4A,$08 ;
                    db $5C,$00,$5C,$00,$5C,$00,$5C,$00 ;
                    db $4B,$1C,$4C,$1C,$4D,$1C,$4E,$1C ;
                    db $5C,$00,$5C,$00,$5C,$00,$5C,$00 ;
                    db $3B,$1C,$3C,$1C,$3D,$1C,$3E,$1C ;
                    db $5C,$00,$5C,$00,$5C,$00,$5C,$00 ;
                    db $47,$09,$50,$08,$51,$08,$52,$08 ;
                    db $53,$08,$54,$08,$55,$08,$56,$08 ;
                    db $57,$08,$58,$08,$59,$08,$5A,$08 ;
                    db $5C,$00,$5C,$00,$5C,$00,$5C,$00 ;
                    db $5C,$00,$5C,$00,$5C,$00,$5C,$00 ;
                    db $5C,$00,$5C,$00,$5C,$00,$5C,$00 ;
                    db $4B,$1C,$4C,$1C,$4D,$1C,$4E,$1C ;
                    db $5C,$00,$5C,$00,$5C,$00,$5C,$00 ;
                    db $48,$09,$60,$08,$61,$08,$62,$08 ;
                    db $63,$08,$64,$08,$5C,$00,$66,$08 ;
                    db $67,$08,$68,$08,$69,$08,$6A,$08 ;
                    db $5C,$00,$5C,$00,$5C,$00,$5C,$00 ;
                    db $5C,$00,$5C,$00,$5C,$00,$5C,$00 ;
                    db $5C,$00,$5C,$00,$5C,$00,$5C,$00 ;
                    db $5C,$00,$5C,$00,$40,$09,$70,$08 ;
                    db $71,$08,$72,$08,$73,$08,$74,$08 ;
                    db $75,$08,$76,$08,$77,$08,$78,$08 ;
                    db $79,$08,$5C,$00,$5C,$00,$5C,$00 ;
                    db $7D,$08,$7E,$08,$7F,$08,$C0,$08 ;
                    db $C1,$08,$C2,$08,$5C,$00,$C4,$08 ;
                    db $C5,$08,$CE,$08,$CF,$08,$5C,$00 ;
                    db $5C,$00,$5C,$00,$5C,$00,$5C,$00 ;
                    db $5C,$00,$5C,$00,$41,$09,$80,$08 ;
                    db $81,$08,$82,$08,$83,$08,$84,$08 ;
                    db $85,$08,$86,$08,$87,$08,$88,$08 ;
                    db $89,$08,$8A,$08,$8B,$08,$8C,$08 ;
                    db $8D,$08,$8E,$08,$8F,$08,$D0,$08 ;
                    db $D1,$08,$D2,$08,$D3,$08,$D4,$08 ;
                    db $D5,$08,$49,$09,$5C,$00,$5C,$00 ;
                    db $5C,$00,$5C,$00,$5C,$00,$5C,$00 ;
                    db $5C,$00,$5C,$00,$42,$09,$90,$08 ;
                    db $91,$08,$92,$08,$93,$08,$94,$08 ;
                    db $95,$08,$96,$08,$97,$08,$98,$08 ;
                    db $99,$08,$9A,$08,$9B,$08,$9C,$08 ;
                    db $9D,$08,$9E,$08,$9F,$08,$E0,$08 ;
                    db $E1,$08,$E2,$08,$E3,$08,$E4,$08 ;
                    db $E5,$08,$4A,$09,$5C,$00,$5C,$00 ;
                    db $5C,$00,$5C,$00,$5C,$00,$5C,$00 ;
                    db $5C,$00,$5C,$00,$43,$09,$A0,$08 ;
                    db $A1,$08,$A2,$08,$A3,$08,$A4,$08 ;
                    db $A5,$08,$A6,$08,$A7,$08,$A8,$08 ;
                    db $A9,$08,$AA,$08,$AB,$08,$AC,$08 ;
                    db $AD,$08,$AE,$08,$AF,$08,$F0,$08 ;
                    db $F1,$08,$F2,$08,$F3,$08,$F4,$08 ;
                    db $F5,$08,$4B,$09,$5C,$00,$5C,$00 ;
                    db $5C,$00,$5C,$00,$5B,$1C,$6B,$1C ;
                    db $5C,$00,$5C,$00,$44,$09,$B0,$08 ;
                    db $B1,$08,$B2,$08,$B3,$08,$B4,$08 ;
                    db $B5,$08,$B6,$08,$B7,$08,$B8,$08 ;
                    db $B9,$08,$BA,$08,$BB,$08,$BC,$08 ;
                    db $BD,$08,$BE,$08,$BF,$08,$C6,$08 ;
                    db $C7,$08,$C8,$08,$D6,$08,$D7,$08 ;
                    db $D8,$08,$E8,$08,$04,$1C,$05,$1C ;
                    db $06,$1C,$07,$1C,$5C,$00,$5C,$00 ;
                    db $5C,$00,$5C,$00,$5C,$00,$5C,$00 ;
                    db $5C,$00,$5C,$00,$5C,$00,$5C,$00 ;
                    db $5C,$00,$5C,$00,$5C,$00,$5C,$00 ;
                    db $C9,$04,$CA,$04,$CB,$04,$CC,$04 ;
                    db $CD,$04,$5C,$00,$5C,$00,$5C,$00 ;
                    db $5C,$00,$5C,$00,$5C,$00,$5C,$00 ;
                    db $5C,$00,$5C,$00,$14,$1C,$3B,$1D ;
                    db $3C,$1D,$17,$1C,$5C,$00,$5C,$00 ;
                    db $5C,$00,$5C,$00,$5C,$00,$5C,$00 ;
                    db $5C,$00,$5C,$00,$5C,$00,$5C,$00 ;
                    db $5C,$00,$5C,$00,$5C,$00,$5C,$00 ;
                    db $D9,$04,$DA,$04,$DB,$04,$DC,$04 ;
                    db $DD,$04,$5C,$00,$5C,$00,$5C,$00 ;
                    db $5C,$00,$5C,$00,$5C,$00,$5C,$00 ;
                    db $5C,$00,$5C,$00,$3F,$1D,$21,$1C ;
                    db $3D,$1D,$12,$1C,$5C,$00,$5C,$00 ;
                    db $5C,$00,$5C,$00,$5C,$00,$5C,$00 ;
                    db $5C,$00,$5C,$00,$5C,$00,$5C,$00 ;
                    db $5C,$00,$5C,$00,$5C,$00,$5C,$00 ;
                    db $E9,$04,$EA,$04,$EB,$04,$EC,$04 ;
                    db $ED,$04,$5C,$00,$5C,$00,$5C,$00 ;
                    db $5C,$00,$5C,$00,$5C,$00,$5C,$00 ;
                    db $5C,$00,$5C,$00,$3F,$1D,$21,$1C ;
                    db $3D,$1D,$12,$1C,$04,$1C,$05,$1C ;
                    db $06,$1C,$07,$1C,$5C,$00,$5C,$00 ;
                    db $5C,$00,$5C,$00,$5C,$00,$5C,$00 ;
                    db $5C,$00,$5C,$00,$5C,$00,$5C,$00 ;
                    db $F9,$04,$FA,$04,$FB,$04,$FF,$04 ;
                    db $FD,$04,$FE,$04,$5C,$00,$5C,$00 ;
                    db $5C,$00,$5C,$00,$5C,$00,$5C,$00 ;
                    db $04,$1C,$05,$1C,$02,$1C,$03,$1C ;
                    db $3D,$1D,$12,$1C,$14,$1C,$3B,$1D ;
                    db $3C,$1D,$17,$1C,$5C,$00,$5C,$00 ;
                    db $5C,$00,$5C,$00,$5C,$00,$5C,$00 ;
                    db $5C,$00,$5C,$00,$5C,$00,$5C,$00 ;
                    db $6C,$04,$6D,$04,$6E,$04,$6F,$04 ;
                    db $DE,$04,$DF,$04,$5C,$00,$5C,$00 ;
                    db $5C,$00,$5C,$00,$5C,$00,$5C,$00 ;
                    db $14,$1C,$3B,$1D,$3C,$1D,$13,$1C ;
                    db $3D,$1D,$12,$1C,$3F,$1D,$21,$1C ;
                    db $3D,$1D,$12,$1C,$5C,$00,$5C,$00 ;
                    db $5C,$00,$5C,$00,$5C,$00,$5C,$00 ;
                    db $5C,$00,$5C,$00,$5C,$00,$5C,$00 ;
                    db $5C,$00,$5C,$00,$5C,$00,$5C,$00 ;
                    db $5C,$00,$5C,$00,$5C,$00,$5C,$00 ;
                    db $5C,$00,$5C,$00,$5C,$00,$5C,$00 ;
                    db $3F,$1D,$21,$1C,$3D,$1D,$23,$1C ;
                    db $3D,$1D,$12,$1C,$3F,$1D,$21,$1C ;
                    db $3D,$1D,$12,$1C,$5C,$00,$5C,$00 ;
                    db $5C,$00,$5C,$00,$5C,$00,$5C,$00 ;
                    db $5C,$00,$5C,$00,$5C,$00,$5C,$00 ;
                    db $5C,$00,$5C,$00,$5C,$00,$5C,$00 ;
                    db $5C,$00,$5C,$00,$5C,$00,$5C,$00 ;
                    db $5C,$00,$5C,$00,$5C,$00,$5C,$00 ;
                    db $3F,$1D,$21,$1C,$3D,$1D,$23,$1C ;
                    db $3D,$1D,$12,$1C,$3F,$1D,$21,$1C ;
                    db $00,$1C,$01,$1C,$06,$1C,$07,$1C ;
                    db $5C,$00,$5C,$00,$5C,$00,$5C,$00 ;
                    db $5C,$00,$5C,$00,$5C,$00,$5C,$00 ;
                    db $5C,$00,$5C,$00,$5C,$00,$5C,$00 ;
                    db $5C,$00,$5C,$00,$5C,$00,$5C,$00 ;
                    db $5C,$00,$5C,$00,$5C,$00,$5C,$00 ;
                    db $3F,$1D,$21,$1C,$3D,$1D,$23,$1C ;
                    db $3D,$1D,$12,$1C,$3F,$1D,$21,$1C ;
                    db $10,$1C,$3B,$1D,$3C,$1D,$17,$1C ;
                    db $5C,$00,$5C,$00,$5C,$00,$5C,$00 ;
                    db $5C,$00,$5C,$00,$5C,$00,$5C,$00 ;
                    db $5C,$00,$5C,$00,$5C,$00,$5C,$00 ;
                    db $5C,$00,$5C,$00,$5C,$00,$5C,$00 ;
                    db $5C,$00,$5C,$00,$5C,$00,$5C,$00 ;
                    db $3F,$1D,$21,$1C,$3D,$1D,$23,$1C ;
                    db $3D,$1D,$12,$1C,$3F,$1D,$21,$1C ;
                    db $20,$1C,$21,$1C,$3D,$1D,$12,$1C ;
                    db $5C,$00,$5C,$00,$5C,$00,$5C,$00 ;
                    db $5C,$00,$5C,$00,$5C,$00,$5C,$00 ;
                    db $5C,$00,$5C,$00,$5C,$00,$5C,$00 ;
                    db $5C,$00,$5C,$00,$5C,$00,$5C,$00 ;
                    db $5C,$00,$5C,$00,$04,$1C,$05,$1C ;
                    db $02,$1C,$03,$1C,$3D,$1D,$23,$1C ;
                    db $3D,$1D,$12,$1C,$3F,$1D,$21,$1C ;
                    db $20,$1C,$21,$1C,$3D,$1D,$12,$1C ;
                    db $5C,$00,$5C,$00,$5C,$00,$5C,$00 ;
                    db $5C,$00,$5C,$00,$5C,$00,$5C,$00 ;
                    db $5C,$00,$5C,$00,$5C,$00,$5C,$00 ;
                    db $5C,$00,$5C,$00,$5C,$00,$5C,$00 ;
                    db $5C,$00,$5C,$00,$14,$1C,$3B,$1D ;
                    db $3C,$1D,$13,$1C,$3D,$1D,$23,$1C ;
                    db $3D,$1D,$12,$1C,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF ;

CODE_2AF800:        8B            PHB             
CODE_2AF801:        4B            PHK                       
CODE_2AF802:        AB            PLB                       
CODE_2AF803:        9C 02 02      STZ $0202                 
CODE_2AF806:        A2 03         LDX #$03                  
CODE_2AF808:        A0 22         LDY #$22                  
CODE_2AF80A:        AD 98 05      LDA $0598                 
CODE_2AF80D:        F0 09         BEQ CODE_2AF818           
CODE_2AF80F:        A0 23         LDY #$23                  
CODE_2AF811:        A2 03         LDX #$03                  
CODE_2AF813:        A9 33         LDA #$33                  
CODE_2AF815:        8D 02 02      STA $0202                 
CODE_2AF818:        8C 00 02      STY $0200                 
CODE_2AF81B:        8E 01 02      STX $0201                 
CODE_2AF81E:        A9 1C         LDA #$1C                  
CODE_2AF820:        8D 81 02      STA $0281                 
CODE_2AF823:        9C 82 02      STZ $0282                 
CODE_2AF826:        9C 83 02      STZ $0283                 
CODE_2AF829:        9C 85 02      STZ $0285                 
CODE_2AF82C:        A9 3C         LDA #$3C                  
CODE_2AF82E:        8D 87 02      STA $0287                 
CODE_2AF831:        9C 88 02      STZ $0288                 
CODE_2AF834:        A9 17         LDA #$17                  
CODE_2AF836:        8D 08 02      STA $0208                 
CODE_2AF839:        8D 0A 02      STA $020A                 
CODE_2AF83C:        9C 09 02      STZ $0209                 
CODE_2AF83F:        9C 0B 02      STZ $020B                 
CODE_2AF842:        AD 98 05      LDA $0598                 
CODE_2AF845:        F0 0F         BEQ CODE_2AF856           
CODE_2AF847:        CE 08 02      DEC $0208                 
CODE_2AF84A:        CE 0A 02      DEC $020A                 
CODE_2AF84D:        EE 09 02      INC $0209                 
CODE_2AF850:        EE 0B 02      INC $020B                 
CODE_2AF853:        4C 1F FA      JMP CODE_2AFA1F   
        
CODE_2AF856:        82 C0 01      BRL CODE_2AFA19    

DATA_2AF859:        db $F0,$00,$90,$F0,$E0,$90,$00,$F0
                    db $00,$92,$F0,$E0,$92,$00

CODE_2AF867:        8B            PHB                       
CODE_2AF868:        4B            PHK                       
CODE_2AF869:        AB            PLB                       
CODE_2AF86A:        A9 02         LDA #$02                  
CODE_2AF86C:        85 92         STA $92                   
CODE_2AF86E:        C2 30         REP #$30                  
CODE_2AF870:        64 04         STZ $04                   
CODE_2AF872:        9C 83 02      STZ $0283                 
CODE_2AF875:        A9 60 00      LDA #$0060                
CODE_2AF878:        85 0E         STA $0E                   
CODE_2AF87A:        38            SEC                       
CODE_2AF87B:        ED 81 02      SBC $0281                 
CODE_2AF87E:        8D 89 02      STA $0289                 
CODE_2AF881:        18            CLC                       
CODE_2AF882:        6D 81 02      ADC $0281                 
CODE_2AF885:        18            CLC                       
CODE_2AF886:        6D 81 02      ADC $0281                 
CODE_2AF889:        8D 8B 02      STA $028B                 
CODE_2AF88C:        A9 80 00      LDA #$0080                
CODE_2AF88F:        8D 8D 02      STA $028D                 
CODE_2AF892:        A9 00 01      LDA #$0100                
CODE_2AF895:        85 00         STA $00                   
CODE_2AF897:        85 02         STA $02                   
CODE_2AF899:        AD 89 02      LDA $0289                 
CODE_2AF89C:        10 0F         BPL CODE_2AF8AD           
CODE_2AF89E:        AD 83 02      LDA $0283                 
CODE_2AF8A1:        CD 89 02      CMP $0289                 
CODE_2AF8A4:        B0 27         BCS CODE_2AF8CD                   
CODE_2AF8A6:        CD 8B 02      CMP $028B                 
CODE_2AF8A9:        B0 22         BCS CODE_2AF8CD                   
CODE_2AF8AB:        80 0D         BRA CODE_2AF8BA   
        
CODE_2AF8AD:        AD 83 02      LDA $0283                 
CODE_2AF8B0:        CD 89 02      CMP $0289                 
CODE_2AF8B3:        90 18         BCC CODE_2AF8CD           
CODE_2AF8B5:        CD 8B 02      CMP $028B                 
CODE_2AF8B8:        B0 13         BCS CODE_2AF8CD                   
CODE_2AF8BA:        AD 87 02      LDA $0287                 
CODE_2AF8BD:        18            CLC                       
CODE_2AF8BE:        6D 8D 02      ADC $028D                 
CODE_2AF8C1:        3A            DEC A                     
CODE_2AF8C2:        85 02         STA $02                   
CODE_2AF8C4:        AD 8D 02      LDA $028D                 
CODE_2AF8C7:        38            SEC                       
CODE_2AF8C8:        ED 87 02      SBC $0287                 
CODE_2AF8CB:        85 00         STA $00                   
CODE_2AF8CD:        AD 83 02      LDA $0283                 
CODE_2AF8D0:        3A            DEC A                     
CODE_2AF8D1:        0A            ASL A                     
CODE_2AF8D2:        C9 C0 01      CMP #$01C0                
CODE_2AF8D5:        B0 46         BCS CODE_2AF91D                   
CODE_2AF8D7:        AA            TAX                       
CODE_2AF8D8:        A5 00         LDA $00                   
CODE_2AF8DA:        A8            TAY                       
CODE_2AF8DB:        30 0F         BMI CODE_2AF8EC           
CODE_2AF8DD:        29 00 FF      AND #$FF00                
CODE_2AF8E0:        F0 0D         BEQ CODE_2AF8EF           
CODE_2AF8E2:        C9 00 01      CMP #$0100                
CODE_2AF8E5:        D0 05         BNE CODE_2AF8EC           
CODE_2AF8E7:        A0 FF 00      LDY #$00FF                
CODE_2AF8EA:        80 03         BRA CODE_2AF8EF 
          
CODE_2AF8EC:        A0 00 00      LDY #$0000                
CODE_2AF8EF:        98            TYA                       
CODE_2AF8F0:        29 FF 00      AND #$00FF                
CODE_2AF8F3:        85 06         STA $06                   
CODE_2AF8F5:        A5 02         LDA $02                   
CODE_2AF8F7:        A8            TAY                       
CODE_2AF8F8:        29 00 FF      AND #$FF00                
CODE_2AF8FB:        F0 0B         BEQ CODE_2AF908           
CODE_2AF8FD:        A0 00 00      LDY #$0000                
CODE_2AF900:        C9 00 01      CMP #$0100                
CODE_2AF903:        90 03         BCC CODE_2AF908           
CODE_2AF905:        A0 FF 00      LDY #$00FF                
CODE_2AF908:        98            TYA                       
CODE_2AF909:        29 FF 00      AND #$00FF                
CODE_2AF90C:        EB            XBA                       
CODE_2AF90D:        05 06         ORA $06                   
CODE_2AF90F:        85 06         STA $06                   
CODE_2AF911:        C9 FF FF      CMP #$FFFF                
CODE_2AF914:        D0 03         BNE CODE_2AF919           
CODE_2AF916:        A9 FF 00      LDA #$00FF                
CODE_2AF919:        9F 00 92 7F   STA $7F9200,x             
CODE_2AF91D:        EE 83 02      INC $0283                 
CODE_2AF920:        AD 83 02      LDA $0283                 
CODE_2AF923:        C9 E1 00      CMP #$00E1                
CODE_2AF926:        B0 03         BCS CODE_2AF92B                   
CODE_2AF928:        82 67 FF      BRL CODE_2AF892  
         
CODE_2AF92B:        E2 30         SEP #$30                  
CODE_2AF92D:        AD 85 02      LDA $0285                 
CODE_2AF930:        F0 57         BEQ CODE_2AF989           
CODE_2AF932:        A9 F8         LDA #$F8                  
CODE_2AF934:        18            CLC                       
CODE_2AF935:        6D 87 02      ADC $0287                 
CODE_2AF938:        8D 87 02      STA $0287                 
CODE_2AF93B:        10 03         BPL CODE_2AF940           
CODE_2AF93D:        9C 87 02      STZ $0287                 
CODE_2AF940:        A9 F8         LDA #$F8                  
CODE_2AF942:        18            CLC                       
CODE_2AF943:        6D 81 02      ADC $0281                 
CODE_2AF946:        8D 81 02      STA $0281                 
CODE_2AF949:        10 03         BPL CODE_2AF94E           
CODE_2AF94B:        9C 81 02      STZ $0281                 
CODE_2AF94E:        AD 87 02      LDA $0287                 
CODE_2AF951:        0D 81 02      ORA $0281                 
CODE_2AF954:        D0 33         BNE CODE_2AF989           
CODE_2AF956:        EE 28 07      INC $0728                 
CODE_2AF959:        9C 85 02      STZ $0285                 
CODE_2AF95C:        9C 91 02      STZ $0291                 
CODE_2AF95F:        AD 98 05      LDA $0598                 
CODE_2AF962:        D0 1B         BNE CODE_2AF97F           
CODE_2AF964:        A9 13         LDA #$13                  
CODE_2AF966:        8D 08 02      STA $0208                 
CODE_2AF969:        9C 0A 02      STZ $020A                 
CODE_2AF96C:        AD 93 02      LDA $0293                 
CODE_2AF96F:        29 BF         AND #$BF                  
CODE_2AF971:        8D 93 02      STA $0293                 
CODE_2AF974:        9C 00 02      STZ $0200                 
CODE_2AF977:        9C 01 02      STZ $0201                 
CODE_2AF97A:        9C 02 02      STZ $0202                 
CODE_2AF97D:        80 23         BRA CODE_2AF9A2  
         
CODE_2AF97F:        AD 98 05      LDA $0598                 
CODE_2AF982:        F0 05         BEQ CODE_2AF989           
CODE_2AF984:        A9 32         LDA #$32                  
CODE_2AF986:        8D 02 02      STA $0202                 
CODE_2AF989:        AD 98 05      LDA $0598                 
CODE_2AF98C:        F0 04         BEQ CODE_2AF992           
CODE_2AF98E:        A9 16         LDA #$16                  
CODE_2AF990:        80 02         BRA CODE_2AF994           
CODE_2AF992:        A9 17         LDA #$17                  
CODE_2AF994:        8D 08 02      STA $0208                 
CODE_2AF997:        8D 0A 02      STA $020A                 
CODE_2AF99A:        AD 93 02      LDA $0293                 
CODE_2AF99D:        09 40         ORA #$40                  
CODE_2AF99F:        8D 93 02      STA $0293                 
CODE_2AF9A2:        AB            PLB                       
CODE_2AF9A3:        6B            RTL      

DATA_2AF9A4:        db $FF,$00,$00,$20,$00

CODE_2AF9A9:        8B            PHB                  
CODE_2AF9AA:        4B            PHK                       
CODE_2AF9AB:        AB            PLB                       
CODE_2AF9AC:        A9 30         LDA #$30                  
CODE_2AF9AE:        8D 02 02      STA $0202                 
CODE_2AF9B1:        A0 23         LDY #$23                  
CODE_2AF9B3:        AE 91 02      LDX $0291                 
CODE_2AF9B6:        E0 03         CPX #$03                  
CODE_2AF9B8:        F0 07         BEQ CODE_2AF9C1           
CODE_2AF9BA:        A9 33         LDA #$33                  
CODE_2AF9BC:        8D 02 02      STA $0202                 
CODE_2AF9BF:        A0 33         LDY #$33                  
CODE_2AF9C1:        8C 00 02      STY $0200                 
CODE_2AF9C4:        A9 03         LDA #$03                  
CODE_2AF9C6:        8D 01 02      STA $0201                 
CODE_2AF9C9:        AE 91 02      LDX $0291                 
CODE_2AF9CC:        BF A3 F9 2A   LDA.l DATA_2AF9A4-1,x             
CODE_2AF9D0:        8D 81 02      STA $0281                 
CODE_2AF9D3:        9C 82 02      STZ $0282                 
CODE_2AF9D6:        9C 87 02      STZ $0287                 
CODE_2AF9D9:        9C 88 02      STZ $0288                 
CODE_2AF9DC:        9C 83 02      STZ $0283                 
CODE_2AF9DF:        9C 85 02      STZ $0285                 
CODE_2AF9E2:        9C 8B 02      STZ $028B                 
CODE_2AF9E5:        A9 80         LDA #$80                  
CODE_2AF9E7:        8D 94 02      STA $0294                 
CODE_2AF9EA:        A9 80         LDA #$80                  
CODE_2AF9EC:        8D 95 02      STA $0295                 
CODE_2AF9EF:        9C 96 02      STZ $0296                 
CODE_2AF9F2:        E0 01         CPX #$01                  
CODE_2AF9F4:        F0 04         BEQ CODE_2AF9FA           
CODE_2AF9F6:        E0 04         CPX #$04                  
CODE_2AF9F8:        90 1F         BCC CODE_2AFA19           
CODE_2AF9FA:        A9 03         LDA #$03                  
CODE_2AF9FC:        8D 01 02      STA $0201                 
CODE_2AF9FF:        AE 26 07      LDX $0726                 
CODE_2AFA02:        B5 43         LDA $43,x                 
CODE_2AFA04:        18            CLC                       
CODE_2AFA05:        69 08         ADC #$08                  
CODE_2AFA07:        8D 94 02      STA $0294                 
CODE_2AFA0A:        B5 47         LDA $47,x                 
CODE_2AFA0C:        18            CLC                       
CODE_2AFA0D:        69 08         ADC #$08                  
CODE_2AFA0F:        8D 95 02      STA $0295                 
CODE_2AFA12:        B5 45         LDA $45,x                 
CODE_2AFA14:        69 00         ADC #$00                  
CODE_2AFA16:        8D 96 02      STA $0296                 
CODE_2AFA19:        9C 0B 02      STZ $020B                 
CODE_2AFA1C:        9C 09 02      STZ $0209                 
CODE_2AFA1F:        9C 03 02      STZ $0203                 
CODE_2AFA22:        9C 04 02      STZ $0204                 
CODE_2AFA25:        A9 41         LDA #$41                  
CODE_2AFA27:        8D 70 43      STA $4370                 
CODE_2AFA2A:        A9 26         LDA #$26                  
CODE_2AFA2C:        8D 71 43      STA $4371                 
CODE_2AFA2F:        A9 59         LDA #$59                  
CODE_2AFA31:        8D 72 43      STA $4372                 
CODE_2AFA34:        A9 F8         LDA #$F8                  
CODE_2AFA36:        8D 73 43      STA $4373                 
CODE_2AFA39:        A9 2A         LDA #$2A                  
CODE_2AFA3B:        8D 74 43      STA $4374                 
CODE_2AFA3E:        A9 7F         LDA #$7F                  
CODE_2AFA40:        8D 77 43      STA $4377                 
CODE_2AFA43:        A9 41         LDA #$41                  
CODE_2AFA45:        8D 60 43      STA $4360                 
CODE_2AFA48:        A9 26         LDA #$26                  
CODE_2AFA4A:        8D 61 43      STA $4361                 
CODE_2AFA4D:        A9 60         LDA #$60                  
CODE_2AFA4F:        8D 62 43      STA $4362                 
CODE_2AFA52:        A9 F8         LDA #$F8                  
CODE_2AFA54:        8D 63 43      STA $4363                 
CODE_2AFA57:        A9 2A         LDA #$2A                  
CODE_2AFA59:        8D 64 43      STA $4364                 
CODE_2AFA5C:        A9 7F         LDA #$7F                  
CODE_2AFA5E:        8D 67 43      STA $4367                 
CODE_2AFA61:        AB            PLB                       
CODE_2AFA62:        6B            RTL     

CODE_2AFA63:        8B            PHB                       ;Windowing HDMA routine (TODO: For what?)
CODE_2AFA64:        4B            PHK                       ;
CODE_2AFA65:        AB            PLB                       ;
CODE_2AFA66:        0B            PHD                       ;
CODE_2AFA67:        A9 22         LDA #$22                  ;\ Color Addition Select
CODE_2AFA69:        8D 03 02      STA $0203                 ;/ Add Subscreen, prevent color math inside window
CODE_2AFA6C:        C2 30         REP #$30                  ;\
CODE_2AFA6E:        A9 00 02      LDA #$0200                ; | Direct page becomes $0200
CODE_2AFA71:        5B            TCD                       ;/
CODE_2AFA72:        A9 00 90      LDA #$9000                ;\ Pointer to windowing HDMA table, low and high byte
CODE_2AFA75:        85 AB         STA $AB                   ;/  ($9000)
CODE_2AFA77:        A9 7F 00      LDA #$007F                ;\
CODE_2AFA7A:        29 FF 00      AND #$00FF                ; | Pointer to windowing HDMA table, bank byte
CODE_2AFA7D:        04 AD         TSB $AD                   ;/  ($7F)
CODE_2AFA7F:        A5 8B         LDA $8B                   ;\
CODE_2AFA81:        29 01 00      AND #$0001                ; |
CODE_2AFA84:        F0 0D         BEQ CODE_2AFA93           ; | Pointer to windowing HDMA table, low and high byte
CODE_2AFA86:        A9 00 92      LDA #$9200                ; | ($9200)
CODE_2AFA89:        85 AB         STA $AB                   ;/
CODE_2AFA8B:        A9 7F 00      LDA #$007F                ;\
CODE_2AFA8E:        29 FF 00      AND #$00FF                ; | Pointer to windowing HDMA table, bank byte
CODE_2AFA91:        04 AD         TSB $AD                   ;/  ($7F)
CODE_2AFA93:        64 9D         STZ $9D                   ;
CODE_2AFA95:        64 A7         STZ $A7                   ;
CODE_2AFA97:        64 83         STZ $83                   ;
CODE_2AFA99:        64 97         STZ $97                   ;
CODE_2AFA9B:        A5 81         LDA $81                   ;
CODE_2AFA9D:        29 FF 00      AND #$00FF                ;
CODE_2AFAA0:        0A            ASL A                     ;
CODE_2AFAA1:        AA            TAX                       ;
CODE_2AFAA2:        BF 80 97 00   LDA.l DATA_009780,x       ;
CODE_2AFAA6:        85 A9         STA $A9                   ;
CODE_2AFAA8:        A5 94         LDA $94                   ;
CODE_2AFAAA:        29 FF 00      AND #$00FF                ;
CODE_2AFAAD:        85 89         STA $89                   ;
CODE_2AFAAF:        A5 96         LDA $96                   ;
CODE_2AFAB1:        29 FF 00      AND #$00FF                ;
CODE_2AFAB4:        EB            XBA                       ;
CODE_2AFAB5:        85 99         STA $99                   ;
CODE_2AFAB7:        A5 95         LDA $95                   ;
CODE_2AFAB9:        29 FF 00      AND #$00FF                ;
CODE_2AFABC:        05 99         ORA $99                   ;
CODE_2AFABE:        85 8D         STA $8D                   ;
CODE_2AFAC0:        A5 91         LDA $91                   ;
CODE_2AFAC2:        29 FF 00      AND #$00FF                ;
CODE_2AFAC5:        C9 02 00      CMP #$0002                ;
CODE_2AFAC8:        F0 07         BEQ CODE_2AFAD1           ;
CODE_2AFACA:        A5 8D         LDA $8D                   ;
CODE_2AFACC:        38            SEC                       ;
CODE_2AFACD:        E5 10         SBC $10                   ;
CODE_2AFACF:        85 8D         STA $8D                   ;
CODE_2AFAD1:        A9 00 01      LDA #$0100                ;
CODE_2AFAD4:        85 99         STA $99                   ;
CODE_2AFAD6:        85 9B         STA $9B                   ;
CODE_2AFAD8:        A5 83         LDA $83                   ;
CODE_2AFADA:        1A            INC A                     ;
CODE_2AFADB:        C5 81         CMP $81                   ;
CODE_2AFADD:        B0 36         BCS CODE_2AFB15           ;
CODE_2AFADF:        A5 97         LDA $97                   ;
CODE_2AFAE1:        18            CLC                       ;
CODE_2AFAE2:        65 A9         ADC $A9                   ;
CODE_2AFAE4:        85 97         STA $97                   ;
CODE_2AFAE6:        EB            XBA                       ;
CODE_2AFAE7:        29 FF 00      AND #$00FF                ;
CODE_2AFAEA:        4A            LSR A                     ;
CODE_2AFAEB:        E2 30         SEP #$30                  ;
CODE_2AFAED:        AA            TAX                       ;
CODE_2AFAEE:        BF FF 96 00   LDA.l DATA_0096FF,x             ;
CODE_2AFAF2:        8D 02 42      STA $4202                 ;
CODE_2AFAF5:        A5 81         LDA $81                   ;
CODE_2AFAF7:        8D 03 42      STA $4203                 ;
CODE_2AFAFA:        EA            NOP                       ;
CODE_2AFAFB:        EA            NOP                       ;
CODE_2AFAFC:        EA            NOP                       ;
CODE_2AFAFD:        EA            NOP                       ;
CODE_2AFAFE:        AD 17 42      LDA $4217                 ;
CODE_2AFB01:        85 A1         STA $A1                   ;
CODE_2AFB03:        64 A2         STZ $A2                   ;
CODE_2AFB05:        C2 30         REP #$30                  ;
CODE_2AFB07:        A5 A1         LDA $A1                   ;
CODE_2AFB09:        18            CLC                       ;
CODE_2AFB0A:        65 8D         ADC $8D                   ;
CODE_2AFB0C:        85 9B         STA $9B                   ;
CODE_2AFB0E:        A5 8D         LDA $8D                   ;
CODE_2AFB10:        38            SEC                       ;
CODE_2AFB11:        E5 A1         SBC $A1                   ;
CODE_2AFB13:        85 99         STA $99                   ;
CODE_2AFB15:        A5 89         LDA $89                   ;
CODE_2AFB17:        38            SEC                       ;
CODE_2AFB18:        E5 83         SBC $83                   ;
CODE_2AFB1A:        3A            DEC A                     ;
CODE_2AFB1B:        0A            ASL A                     ;
CODE_2AFB1C:        85 9D         STA $9D                   ;
CODE_2AFB1E:        AA            TAX                       ;
CODE_2AFB1F:        A5 99         LDA $99                   ;
CODE_2AFB21:        A8            TAY                       ;
CODE_2AFB22:        30 0F         BMI CODE_2AFB33           ;
CODE_2AFB24:        29 00 FF      AND #$FF00                ;
CODE_2AFB27:        F0 0D         BEQ CODE_2AFB36           ;
CODE_2AFB29:        C9 00 01      CMP #$0100                ;
CODE_2AFB2C:        D0 05         BNE CODE_2AFB33           ;
CODE_2AFB2E:        A0 FF 00      LDY #$00FF                ;
CODE_2AFB31:        80 03         BRA CODE_2AFB36           ;

CODE_2AFB33:        A0 00 00      LDY #$0000                ;
CODE_2AFB36:        98            TYA                       ;
CODE_2AFB37:        29 FF 00      AND #$00FF                ;
CODE_2AFB3A:        85 9F         STA $9F                   ;
CODE_2AFB3C:        A5 9B         LDA $9B                   ;
CODE_2AFB3E:        A8            TAY                       ;
CODE_2AFB3F:        29 00 FF      AND #$FF00                ;
CODE_2AFB42:        F0 03         BEQ CODE_2AFB47           ;
CODE_2AFB44:        A0 FF 00      LDY #$00FF                ;
CODE_2AFB47:        98            TYA                       ;
CODE_2AFB48:        29 FF 00      AND #$00FF                ;
CODE_2AFB4B:        EB            XBA                       ;
CODE_2AFB4C:        05 9F         ORA $9F                   ;
CODE_2AFB4E:        85 9F         STA $9F                   ;
CODE_2AFB50:        E0 C0 01      CPX #$01C0                ;
CODE_2AFB53:        B0 0B         BCS CODE_2AFB60           ;
CODE_2AFB55:        C9 FF FF      CMP #$FFFF                ;
CODE_2AFB58:        D0 03         BNE CODE_2AFB5D           ;
CODE_2AFB5A:        A9 FF 00      LDA #$00FF                ;
CODE_2AFB5D:        9B            TXY                       ;
CODE_2AFB5E:        97 AB         STA [$AB],y               ;
CODE_2AFB60:        A5 89         LDA $89                   ;
CODE_2AFB62:        18            CLC                       ;
CODE_2AFB63:        65 83         ADC $83                   ;
CODE_2AFB65:        3A            DEC A                     ;
CODE_2AFB66:        0A            ASL A                     ;
CODE_2AFB67:        85 A7         STA $A7                   ;
CODE_2AFB69:        C9 C0 01      CMP #$01C0                ;
CODE_2AFB6C:        B0 0E         BCS CODE_2AFB7C           ;
CODE_2AFB6E:        AA            TAX                       ;
CODE_2AFB6F:        A5 9F         LDA $9F                   ;
CODE_2AFB71:        C9 FF FF      CMP #$FFFF                ;
CODE_2AFB74:        D0 03         BNE CODE_2AFB79           ;
CODE_2AFB76:        A9 FF 00      LDA #$00FF                ;
CODE_2AFB79:        9B            TXY                       ;
CODE_2AFB7A:        97 AB         STA [$AB],y               ;
CODE_2AFB7C:        E6 83         INC $83                   ;
CODE_2AFB7E:        A5 9D         LDA $9D                   ;
CODE_2AFB80:        C9 C0 01      CMP #$01C0                ;
CODE_2AFB83:        90 07         BCC CODE_2AFB8C           ;
CODE_2AFB85:        A5 A7         LDA $A7                   ;
CODE_2AFB87:        C9 C0 01      CMP #$01C0                ;
CODE_2AFB8A:        B0 03         BCS CODE_2AFB8F           ;
CODE_2AFB8C:        82 42 FF      BRL CODE_2AFAD1           ;

CODE_2AFB8F:        E2 30         SEP #$30                  ;
CODE_2AFB91:        A5 91         LDA $91                   ;
CODE_2AFB93:        3A            DEC A                     ;
CODE_2AFB94:        F0 6E         BEQ CODE_2AFC04           ;
CODE_2AFB96:        C9 03         CMP #$03                  ;
CODE_2AFB98:        F0 6A         BEQ CODE_2AFC04           ;
CODE_2AFB9A:        C9 04         CMP #$04                  ;
CODE_2AFB9C:        F0 76         BEQ CODE_2AFC14           ;
CODE_2AFB9E:        A5 81         LDA $81                   ;
CODE_2AFBA0:        18            CLC                       ;
CODE_2AFBA1:        69 08         ADC #$08                  ;
CODE_2AFBA3:        85 81         STA $81                   ;
CODE_2AFBA5:        B0 03         BCS CODE_2AFBAA           ;
CODE_2AFBA7:        4C 28 FC      JMP CODE_2AFC28           ;

CODE_2AFBAA:        A9 38         LDA #$38                  ;
CODE_2AFBAC:        8D 50 10      STA $1050                 ;
CODE_2AFBAF:        64 85         STZ $85                   ;
CODE_2AFBB1:        64 91         STZ $91                   ;
CODE_2AFBB3:        64 93         STZ $93                   ;
CODE_2AFBB5:        64 00         STZ $00                   ;
CODE_2AFBB7:        64 01         STZ $01                   ;
CODE_2AFBB9:        64 02         STZ $02                   ;
CODE_2AFBBB:        A9 02         LDA #$02                  ;
CODE_2AFBBD:        8D 03 02      STA $0203                 ;
CODE_2AFBC0:        A9 11         LDA #$11                  ;
CODE_2AFBC2:        AE BF 02      LDX $02BF                 ;
CODE_2AFBC5:        E0 01         CPX #$01                  ;
CODE_2AFBC7:        F0 26         BEQ CODE_2AFBEF           ;
CODE_2AFBC9:        E0 05         CPX #$05                  ;
CODE_2AFBCB:        F0 22         BEQ CODE_2AFBEF           ;
CODE_2AFBCD:        E0 06         CPX #$06                  ;
CODE_2AFBCF:        F0 1E         BEQ CODE_2AFBEF           ;
CODE_2AFBD1:        E0 09         CPX #$09                  ;
CODE_2AFBD3:        F0 1E         BEQ CODE_2AFBF3           ;
CODE_2AFBD5:        E0 0A         CPX #$0A                  ;
CODE_2AFBD7:        F0 1A         BEQ CODE_2AFBF3           ;
CODE_2AFBD9:        E0 0B         CPX #$0B                  ;
CODE_2AFBDB:        F0 16         BEQ CODE_2AFBF3           ;
CODE_2AFBDD:        E0 0C         CPX #$0C                  ;
CODE_2AFBDF:        F0 12         BEQ CODE_2AFBF3           ;
CODE_2AFBE1:        E0 0F         CPX #$0F                  ;
CODE_2AFBE3:        F0 0E         BEQ CODE_2AFBF3           ;
CODE_2AFBE5:        E0 03         CPX #$03                  ;
CODE_2AFBE7:        F0 13         BEQ CODE_2AFBFC           ;
CODE_2AFBE9:        E0 04         CPX #$04                  ;
CODE_2AFBEB:        F0 0F         BEQ CODE_2AFBFC           ;
CODE_2AFBED:        80 02         BRA CODE_2AFBF1           ;

CODE_2AFBEF:        09 02         ORA #$02                  ;
CODE_2AFBF1:        09 04         ORA #$04                  ;
CODE_2AFBF3:        85 08         STA $08                   ;
CODE_2AFBF5:        64 0A         STZ $0A                   ;
CODE_2AFBF7:        9C 8C 02      STZ $028C                 ;
CODE_2AFBFA:        80 75         BRA CODE_2AFC71           ;

CODE_2AFBFC:        A9 13         LDA #$13                  ;
CODE_2AFBFE:        85 08         STA $08                   ;
CODE_2AFC00:        64 0A         STZ $0A                   ;
CODE_2AFC02:        80 6D         BRA CODE_2AFC71           ;

CODE_2AFC04:        A5 81         LDA $81                   ;
CODE_2AFC06:        38            SEC                       ;
CODE_2AFC07:        E9 06         SBC #$06                  ;
CODE_2AFC09:        85 81         STA $81                   ;
CODE_2AFC0B:        B0 1B         BCS CODE_2AFC28           ;
CODE_2AFC0D:        A9 FF         LDA #$FF                  ;
CODE_2AFC0F:        8D 50 10      STA $1050                 ;
CODE_2AFC12:        80 14         BRA CODE_2AFC28           ;

CODE_2AFC14:        A5 81         LDA $81                   ;
CODE_2AFC16:        18            CLC                       ;
CODE_2AFC17:        69 0A         ADC #$0A                  ;
CODE_2AFC19:        85 81         STA $81                   ;
CODE_2AFC1B:        C9 20         CMP #$20                  ;
CODE_2AFC1D:        90 09         BCC CODE_2AFC28           ;
CODE_2AFC1F:        A9 20         LDA #$20                  ;
CODE_2AFC21:        85 81         STA $81                   ;
CODE_2AFC23:        A9 FF         LDA #$FF                  ;
CODE_2AFC25:        8D 50 10      STA $1050                 ;
CODE_2AFC28:        A2 17         LDX #$17                  ;
CODE_2AFC2A:        AD BF 02      LDA $02BF                 ;
CODE_2AFC2D:        C9 01         CMP #$01                  ;
CODE_2AFC2F:        D0 0A         BNE CODE_2AFC3B           ;
CODE_2AFC31:        80 02         BRA CODE_2AFC35           ;

CODE_2AFC33:        A2 15         LDX #$15                  ;
CODE_2AFC35:        A0 13         LDY #$13                  ;
CODE_2AFC37:        84 09         STY $09                   ;
CODE_2AFC39:        80 20         BRA CODE_2AFC5B           ;

CODE_2AFC3B:        C9 02         CMP #$02                  ;
CODE_2AFC3D:        F0 F4         BEQ CODE_2AFC33           ;
CODE_2AFC3F:        C9 07         CMP #$07                  ;
CODE_2AFC41:        F0 F2         BEQ CODE_2AFC35           ;
CODE_2AFC43:        C9 09         CMP #$09                  ;
CODE_2AFC45:        F0 0E         BEQ CODE_2AFC55           ;
CODE_2AFC47:        C9 0A         CMP #$0A                  ;
CODE_2AFC49:        F0 0A         BEQ CODE_2AFC55           ;
CODE_2AFC4B:        C9 0B         CMP #$0B                  ;
CODE_2AFC4D:        F0 06         BEQ CODE_2AFC55           ;
CODE_2AFC4F:        C9 0C         CMP #$0C                  ;
CODE_2AFC51:        F0 02         BEQ CODE_2AFC55           ;
CODE_2AFC53:        80 06         BRA CODE_2AFC5B           ;

CODE_2AFC55:        A2 11         LDX #$11                  ;
CODE_2AFC57:        A0 06         LDY #$06                  ;
CODE_2AFC59:        84 09         STY $09                   ;
CODE_2AFC5B:        86 08         STX $08                   ;
CODE_2AFC5D:        86 0A         STX $0A                   ;
CODE_2AFC5F:        A0 17         LDY #$17                  ;
CODE_2AFC61:        84 0B         STY $0B                   ;
CODE_2AFC63:        A0 80         LDY #$80                  ;
CODE_2AFC65:        A5 8B         LDA $8B                   ;
CODE_2AFC67:        29 01         AND #$01                  ;
CODE_2AFC69:        F0 02         BEQ CODE_2AFC6D           ;
CODE_2AFC6B:        A0 40         LDY #$40                  ;
CODE_2AFC6D:        84 93         STY $93                   ;
CODE_2AFC6F:        E6 8B         INC $8B                   ;
CODE_2AFC71:        2B            PLD                       ;
CODE_2AFC72:        AB            PLB                       ;
CODE_2AFC73:        6B            RTL                       ;

DATA_2AFC74:        db $F9,$07,$F6,$0A,$F4,$0C,$F2,$0E
                    db $F1,$0F,$EF,$11,$EE,$12,$ED,$13
                    db $EC,$14,$EB,$15,$EA,$16,$EA,$16
                    db $E9,$17,$E8,$18,$E8,$18,$E7,$19
                    db $E7,$19,$E6,$1A,$E6,$1A,$E6,$1A
                    db $E5,$1B,$E5,$1B,$E5,$1B,$E5,$1B
                    db $E5,$1B,$E5,$1B,$E5,$1B

CODE_2AFCAA:        8B            PHB                       
CODE_2AFCAB:        4B            PHK                       
CODE_2AFCAC:        AB            PLB                       
CODE_2AFCAD:        C2 30         REP #$30                  
CODE_2AFCAF:        A9 01 00      LDA #$0001                
CODE_2AFCB2:        8D 83 02      STA $0283                 
CODE_2AFCB5:        64 04         STZ $04                   
CODE_2AFCB7:        AD 26 07      LDA $0726                 
CODE_2AFCBA:        29 FF 00      AND #$00FF                
CODE_2AFCBD:        AA            TAX                       
CODE_2AFCBE:        B5 43         LDA $43,x                 
CODE_2AFCC0:        29 FF 00      AND #$00FF                
CODE_2AFCC3:        8D 8B 02      STA $028B                 
CODE_2AFCC6:        38            SEC                       
CODE_2AFCC7:        E9 10 00      SBC #$0010                
CODE_2AFCCA:        8D 89 02      STA $0289                 
CODE_2AFCCD:        B5 45         LDA $45,x                 
CODE_2AFCCF:        29 FF 00      AND #$00FF                
CODE_2AFCD2:        EB            XBA                       
CODE_2AFCD3:        85 D8         STA $D8                   
CODE_2AFCD5:        B5 47         LDA $47,x                 
CODE_2AFCD7:        29 FF 00      AND #$00FF                
CODE_2AFCDA:        05 D8         ORA $D8                   
CODE_2AFCDC:        18            CLC                       
CODE_2AFCDD:        69 08 00      ADC #$0008                
CODE_2AFCE0:        38            SEC                       
CODE_2AFCE1:        ED 10 02      SBC $0210                 
CODE_2AFCE4:        8D 8D 02      STA $028D                 
CODE_2AFCE7:        A9 00 01      LDA #$0100                
CODE_2AFCEA:        85 00         STA $00                   
CODE_2AFCEC:        85 02         STA $02                   
CODE_2AFCEE:        A5 04         LDA $04                   
CODE_2AFCF0:        C9 34 00      CMP #$0034                
CODE_2AFCF3:        B0 08         BCS CODE_2AFCFD                   
CODE_2AFCF5:        AD 83 02      LDA $0283                 
CODE_2AFCF8:        CD 89 02      CMP $0289                 
CODE_2AFCFB:        B0 10         BCS CODE_2AFD0D                   
CODE_2AFCFD:        AD 83 02      LDA $0283                 
CODE_2AFD00:        3A            DEC A                     
CODE_2AFD01:        0A            ASL A                     
CODE_2AFD02:        AA            TAX                       
CODE_2AFD03:        A9 FF 00      LDA #$00FF                
CODE_2AFD06:        9F 00 90 7F   STA $7F9000,x             
CODE_2AFD0A:        82 68 00      BRL CODE_2AFD75 
          
CODE_2AFD0D:        A6 04         LDX $04                   
CODE_2AFD0F:        BF 74 FC 2A   LDA.l DATA_2AFC74,x             
CODE_2AFD13:        29 FF 00      AND #$00FF                
CODE_2AFD16:        85 D8         STA $D8                   
CODE_2AFD18:        BF 75 FC 2A   LDA.l DATA_2AFC74+1,x             
CODE_2AFD1C:        29 00 FF      AND #$FF00                
CODE_2AFD1F:        EB            XBA                       
CODE_2AFD20:        18            CLC                       
CODE_2AFD21:        6D 8D 02      ADC $028D                 
CODE_2AFD24:        29 FF 00      AND #$00FF                
CODE_2AFD27:        85 00         STA $00                   
CODE_2AFD29:        AD 8D 02      LDA $028D                 
CODE_2AFD2C:        38            SEC                       
CODE_2AFD2D:        E5 D8         SBC $D8                   
CODE_2AFD2F:        29 FF 00      AND #$00FF                
CODE_2AFD32:        85 02         STA $02                   
CODE_2AFD34:        A5 04         LDA $04                   
CODE_2AFD36:        4A            LSR A                     
CODE_2AFD37:        85 D8         STA $D8                   
CODE_2AFD39:        E6 04         INC $04                   
CODE_2AFD3B:        E6 04         INC $04                   
CODE_2AFD3D:        AD 83 02      LDA $0283                 
CODE_2AFD40:        3A            DEC A                     
CODE_2AFD41:        0A            ASL A                     
CODE_2AFD42:        AA            TAX                       
CODE_2AFD43:        A5 02         LDA $02                   
CODE_2AFD45:        29 FF 00      AND #$00FF                
CODE_2AFD48:        EB            XBA                       
CODE_2AFD49:        05 00         ORA $00                   
CODE_2AFD4B:        9F 00 90 7F   STA $7F9000,x             
CODE_2AFD4F:        85 DA         STA $DA                   
CODE_2AFD51:        AD 8B 02      LDA $028B                 
CODE_2AFD54:        18            CLC                       
CODE_2AFD55:        69 20 00      ADC #$0020                
CODE_2AFD58:        38            SEC                       
CODE_2AFD59:        E5 D8         SBC $D8                   
CODE_2AFD5B:        3A            DEC A                     
CODE_2AFD5C:        0A            ASL A                     
CODE_2AFD5D:        AA            TAX                       
CODE_2AFD5E:        A5 DA         LDA $DA                   
CODE_2AFD60:        9F 00 90 7F   STA $7F9000,x             
CODE_2AFD64:        A5 04         LDA $04                   
CODE_2AFD66:        C9 34 00      CMP #$0034                
CODE_2AFD69:        90 0A         BCC CODE_2AFD75           
CODE_2AFD6B:        AD 8B 02      LDA $028B                 
CODE_2AFD6E:        18            CLC                       
CODE_2AFD6F:        69 20 00      ADC #$0020                
CODE_2AFD72:        8D 83 02      STA $0283                 
CODE_2AFD75:        EE 83 02      INC $0283                 
CODE_2AFD78:        AD 83 02      LDA $0283                 
CODE_2AFD7B:        C9 E1 00      CMP #$00E1                
CODE_2AFD7E:        B0 03         BCS CODE_2AFD83                   
CODE_2AFD80:        82 64 FF      BRL CODE_2AFCE7  
         
CODE_2AFD83:        E2 30         SEP #$30                  
CODE_2AFD85:        A9 13         LDA #$13                  
CODE_2AFD87:        8D 08 02      STA $0208                 
CODE_2AFD8A:        8D 0A 02      STA $020A                 
CODE_2AFD8D:        A9 80         LDA #$80                  
CODE_2AFD8F:        8D 93 02      STA $0293                 
CODE_2AFD92:        AB            PLB                       
CODE_2AFD93:        6B            RTL
                       
CODE_2AFD94:        C2 30         REP #$30                  
CODE_2AFD96:        A2 00 00      LDX #$0000                
CODE_2AFD99:        A9 FF 00      LDA #$00FF                
CODE_2AFD9C:        9F 00 90 7F   STA $7F9000,x             
CODE_2AFDA0:        9F 02 90 7F   STA $7F9002,x             
CODE_2AFDA4:        9F 04 90 7F   STA $7F9004,x             
CODE_2AFDA8:        9F 06 90 7F   STA $7F9006,x             
CODE_2AFDAC:        9F 08 90 7F   STA $7F9008,x             
CODE_2AFDB0:        9F 0A 90 7F   STA $7F900A,x             
CODE_2AFDB4:        9F 0C 90 7F   STA $7F900C,x             
CODE_2AFDB8:        9F 0E 90 7F   STA $7F900E,x             
CODE_2AFDBC:        9F 10 90 7F   STA $7F9010,x             
CODE_2AFDC0:        9F 12 90 7F   STA $7F9012,x             
CODE_2AFDC4:        9F 14 90 7F   STA $7F9014,x             
CODE_2AFDC8:        9F 16 90 7F   STA $7F9016,x             
CODE_2AFDCC:        9F 18 90 7F   STA $7F9018,x             
CODE_2AFDD0:        9F 1A 90 7F   STA $7F901A,x             
CODE_2AFDD4:        9F 1C 90 7F   STA $7F901C,x             
CODE_2AFDD8:        9F 1E 90 7F   STA $7F901E,x             
CODE_2AFDDC:        8A            TXA                       
CODE_2AFDDD:        18            CLC                       
CODE_2AFDDE:        69 20 00      ADC #$0020                
CODE_2AFDE1:        AA            TAX                       
CODE_2AFDE2:        E0 C0 01      CPX #$01C0                
CODE_2AFDE5:        D0 B5         BNE CODE_2AFD9C           
CODE_2AFDE7:        E2 30         SEP #$30                  
CODE_2AFDE9:        6B            RTL

DATA_2AFDEA:        db $FC,$0C,$FC,$0C,$FC,$0C,$A9,$0C
                    db $A9,$0C,$FC,$0C,$A9,$0C,$A9,$0C
              
CODE_2AFDFA:        C2 30         REP #$30                  
CODE_2AFDFC:        A2 00 00      LDX #$0000                
CODE_2AFDFF:        9B            TXY                       
CODE_2AFE00:        B7 D8         LDA [$D8],y               
CODE_2AFE02:        85 DB         STA $DB                   
CODE_2AFE04:        DA            PHX                       
CODE_2AFE05:        A5 DB         LDA $DB                   
CODE_2AFE07:        29 00 C0      AND #$C000                
CODE_2AFE0A:        0A            ASL A                     
CODE_2AFE0B:        2A            ROL A                     
CODE_2AFE0C:        2A            ROL A                     
CODE_2AFE0D:        2A            ROL A                     
CODE_2AFE0E:        2A            ROL A                     
CODE_2AFE0F:        AA            TAX                       
CODE_2AFE10:        BF EA FD 2A   LDA.l DATA_2AFDEA,x             
CODE_2AFE14:        85 00         STA $00                   
CODE_2AFE16:        BF EC FD 2A   LDA.l DATA_2AFDEA+2,x             
CODE_2AFE1A:        FA            PLX                       
CODE_2AFE1B:        9F 02 A0 7F   STA $7FA002,x             
CODE_2AFE1F:        A5 00         LDA $00                   
CODE_2AFE21:        9F 00 A0 7F   STA $7FA000,x             
CODE_2AFE25:        06 DB         ASL $DB                   
CODE_2AFE27:        06 DB         ASL $DB                   
CODE_2AFE29:        E8            INX                       
CODE_2AFE2A:        E8            INX                       
CODE_2AFE2B:        E8            INX                       
CODE_2AFE2C:        E8            INX                       
CODE_2AFE2D:        8A            TXA                       
CODE_2AFE2E:        4A            LSR A                     
CODE_2AFE2F:        29 0F 00      AND #$000F                
CODE_2AFE32:        D0 D0         BNE CODE_2AFE04           
CODE_2AFE34:        C8            INY                       
CODE_2AFE35:        C8            INY                       
CODE_2AFE36:        98            TYA                       
CODE_2AFE37:        C9 40 00      CMP #$0040                
CODE_2AFE3A:        D0 C4         BNE CODE_2AFE00           
CODE_2AFE3C:        E2 30         SEP #$30                  
CODE_2AFE3E:        6B            RTL 

DATA_2AFE3F:        db $58,$A0,$F4,$32,$60,$A0,$F5,$32
                    db $68,$A0,$F6,$32,$70,$A0,$F7,$32
                    db $80,$A0,$F6,$32,$88,$A0,$F8,$32
                    db $90,$A0,$F9,$32,$98,$A0,$FA,$32
                    db $A0,$A0,$F8,$32

CODE_2AFE63:        A2 23         LDX #$23                  ;
CODE_2AFE65:        BF 3F FE 2A   LDA.l DATA_2AFE3F,x       ;
CODE_2AFE69:        9D 00 09      STA $0900,x               ;
CODE_2AFE6C:        CA            DEX                       ;
CODE_2AFE6D:        10 F6         BPL CODE_2AFE65           ;
CODE_2AFE6F:        9C 60 0A      STZ $0A60                 ;
CODE_2AFE72:        9C 61 0A      STZ $0A61                 ;
CODE_2AFE75:        9C 62 0A      STZ $0A62                 ;
CODE_2AFE78:        9C 63 0A      STZ $0A63                 ;
CODE_2AFE7B:        9C 64 0A      STZ $0A64                 ;
CODE_2AFE7E:        9C 65 0A      STZ $0A65                 ;
CODE_2AFE81:        9C 66 0A      STZ $0A66                 ;
CODE_2AFE84:        9C 67 0A      STZ $0A67                 ;
CODE_2AFE87:        9C 68 0A      STZ $0A68                 ;
CODE_2AFE8A:        6B            RTL                       ;

DATA_2AFE8B:        db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF
