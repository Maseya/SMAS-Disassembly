;Super Mario Bros. 3

CODE_2A8000:        LDA $100B                 
CODE_2A8003:        CMP #$04                  
CODE_2A8005:        BCC CODE_2A8018           
CODE_2A8007:        PHB                       
CODE_2A8008:        PHK                       
CODE_2A8009:        PLB                       
CODE_2A800A:        PHX                       
CODE_2A800B:        INC $034A                 
CODE_2A800E:        LDA $034B                 
CODE_2A8011:        ASL A                     
CODE_2A8012:        TAX                       
CODE_2A8013:        JSR (PNTR_2A8019,x)             
CODE_2A8016:        PLX                       
CODE_2A8017:        PLB                       
CODE_2A8018:        RTL                       

PNTR_2A8019:        dw CODE_2A801D
                    dw CODE_2A8083

CODE_2A801D:        LDA $034A
CODE_2A8020:        AND #$07
CODE_2A8022:        BNE CODE_2A804E
CODE_2A8024:        REP #$20                  
CODE_2A8026:        LDA $034A                 
CODE_2A8029:        AND #$0018                
CODE_2A802C:        ASL A                     
CODE_2A802D:        STA $00                   
CODE_2A802F:        LDA $1006                 
CODE_2A8032:        AND #$000F                
CODE_2A8035:        ASL A                     
CODE_2A8036:        ORA $00                   
CODE_2A8038:        TAX                       
CODE_2A8039:        LDA.w DATA_2A80C5,x               
CODE_2A803C:        STA $00                   
CODE_2A803E:        INC A                     
CODE_2A803F:        STA $04                   
CODE_2A8041:        LDA.w DATA_2A80CD,x               
CODE_2A8044:        STA $02                   
CODE_2A8046:        INC A                     
CODE_2A8047:        STA $06                   
CODE_2A8049:        JSR CODE_2A817E           
CODE_2A804C:        SEP #$20                  
CODE_2A804E:        LDA $034A                 
CODE_2A8051:        CMP #$18                  
CODE_2A8053:        BNE CODE_2A8082           
CODE_2A8055:        REP #$20                  
CODE_2A8057:        LDA $1006                 
CODE_2A805A:        AND #$000F                
CODE_2A805D:        ASL A                     
CODE_2A805E:        TAX                       
CODE_2A805F:        LDA.w DATA_2A82B2,x               
CODE_2A8062:        STA $0A                   
CODE_2A8064:        LDA #$00FC                
CODE_2A8067:        STA $00                   
CODE_2A8069:        STA $04                   
CODE_2A806B:        LDA #$00FC                
CODE_2A806E:        STA $02                   
CODE_2A8070:        STA $06                   
CODE_2A8072:        LDA.w DATA_2A8105,x               
CODE_2A8075:        STA $08                   
CODE_2A8077:        JSR CODE_2A8287           
CODE_2A807A:        SEP #$20                  
CODE_2A807C:        STZ $034A                 
CODE_2A807F:        INC $034B                 
CODE_2A8082:        RTS                       

CODE_2A8083:        LDA $034A                 
CODE_2A8086:        AND #$07                  
CODE_2A8088:        BNE CODE_2A80C4           
CODE_2A808A:        LDA $034A                 
CODE_2A808D:        AND #$18                  
CODE_2A808F:        ASL A                     
CODE_2A8090:        STA $00                   
CODE_2A8092:        LDA $1006                 
CODE_2A8095:        ASL A                     
CODE_2A8096:        ADC $00                   
CODE_2A8098:        TAY                       
CODE_2A8099:        LDA $034A                 
CODE_2A809C:        AND #$60                  
CODE_2A809E:        LSR A                     
CODE_2A809F:        LSR A                     
CODE_2A80A0:        LSR A                     
CODE_2A80A1:        LSR A                     
CODE_2A80A2:        TAX                       
CODE_2A80A3:        REP #$20                  
CODE_2A80A5:        LDA.w DATA_2A82B2,x               
CODE_2A80A8:        STA $0A                   
CODE_2A80AA:        LDA DATA_2A80C5,y               
CODE_2A80AD:        STA $00                   
CODE_2A80AF:        INC A                     
CODE_2A80B0:        STA $04                   
CODE_2A80B2:        LDA DATA_2A80CD,y               
CODE_2A80B5:        STA $02                   
CODE_2A80B7:        INC A                     
CODE_2A80B8:        STA $06                   
CODE_2A80BA:        LDA.w DATA_2A8105,x               
CODE_2A80BD:        STA $08                   
CODE_2A80BF:        JSR CODE_2A8287           
CODE_2A80C2:        SEP #$20                  
CODE_2A80C4:        RTS                       

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

CODE_2A810D:        PHB
CODE_2A810E:        PHK                       
CODE_2A810F:        PLB                       
CODE_2A8110:        PHX                       
CODE_2A8111:        PHY                       
CODE_2A8112:        REP #$20                  
CODE_2A8114:        LDX #$80                  
CODE_2A8116:        STX $2115                 
CODE_2A8119:        LDA #$00FC                
CODE_2A811C:        STA $00                   
CODE_2A811E:        STA $04                   
CODE_2A8120:        LDA #$00FC                
CODE_2A8123:        STA $02                   
CODE_2A8125:        STA $06                   
CODE_2A8127:        JSR CODE_2A817E           
CODE_2A812A:        LDA $1006                 
CODE_2A812D:        AND #$000F                
CODE_2A8130:        ASL A                     
CODE_2A8131:        TAX                       
CODE_2A8132:        LDA.w DATA_2A8156,x               
CODE_2A8135:        STA $00                   
CODE_2A8137:        LDY #$00                  
CODE_2A8139:        LDA DATA_2A82BA,y               
CODE_2A813C:        STA $2116                 
CODE_2A813F:        LDA $00                   
CODE_2A8141:        STA $2118                 
CODE_2A8144:        INY                       
CODE_2A8145:        INY                       
CODE_2A8146:        CPY #$30                  
CODE_2A8148:        BNE CODE_2A8139           
CODE_2A814A:        SEP #$20                  
CODE_2A814C:        PLY                       
CODE_2A814D:        PLX                       
CODE_2A814E:        PLB                       
CODE_2A814F:        STZ $034A                 
CODE_2A8152:        STZ $034B                 
CODE_2A8155:        RTL                       

DATA_2A8156:        dw $09AB,$09AC,$09AB,$09AD

DATA_2A815E:        dw $BBF2

DATA_2A8160:        dw $BBFC,$BBE6,$BBFC,$BBF2
                    dw $BBFC,$BBE6,$BBF2

DATA_2A816E:        dw $0005,$0006,$0005,$0006
     
DATA_2A8176:        dw $0007,$0007,$0007,$0005

CODE_2A817E:        LDA $1006                 
CODE_2A8181:        AND #$000F                  
CODE_2A8184:        ASL A
CODE_2A8185:        TAY                       
CODE_2A8186:        ASL A                     
CODE_2A8187:        TAX                       
CODE_2A8188:        LDA.w DATA_2A815E,x               
CODE_2A818B:        STA $0A                   
CODE_2A818D:        LDA DATA_2A816E,y               
CODE_2A8190:        STA $08                   
CODE_2A8192:        PHY                       
CODE_2A8193:        JSR CODE_2A8287           
CODE_2A8196:        PLY                       
CODE_2A8197:        LDA.w DATA_2A8160,x               
CODE_2A819A:        STA $0A                   
CODE_2A819C:        LDA DATA_2A8176,y               
CODE_2A819F:        STA $08                   
CODE_2A81A1:        JSR CODE_2A8287           
CODE_2A81A4:        RTS                       

CODE_2A81A5:        PHB                       
CODE_2A81A6:        PHK                       
CODE_2A81A7:        PLB                       
CODE_2A81A8:        STZ $2115                 
CODE_2A81AB:        REP #$20                  
CODE_2A81AD:        LDA #$00FC                
CODE_2A81B0:        STA $00                   
CODE_2A81B2:        LDA #$1000                
CODE_2A81B5:        STA $2116                 
CODE_2A81B8:        LDA #$1808                
CODE_2A81BB:        STA $4300                 
CODE_2A81BE:        LDA #$0000                
CODE_2A81C1:        STA $4302                 
CODE_2A81C4:        STZ $4304                 
CODE_2A81C7:        LDA #$1000                
CODE_2A81CA:        STA $4305                 
CODE_2A81CD:        LDY #$01                  
CODE_2A81CF:        STY $420B                 
CODE_2A81D2:        LDX #$80                  
CODE_2A81D4:        STX $2115                 
CODE_2A81D7:        STA $4305                 
CODE_2A81DA:        LDA #$1000                
CODE_2A81DD:        STA $2116                 
CODE_2A81E0:        LDA #$1908                
CODE_2A81E3:        STA $4300                 
CODE_2A81E6:        LDA #$0001                
CODE_2A81E9:        STA $4302                 
CODE_2A81EC:        STY $420B                 
CODE_2A81EF:        LDA.w DATA_2A82B2                 
CODE_2A81F2:        STA $0A                   
CODE_2A81F4:        LDA #$09A5                
CODE_2A81F7:        STA $00                   
CODE_2A81F9:        INC A                     
CODE_2A81FA:        STA $04                   
CODE_2A81FC:        LDA #$49A5                
CODE_2A81FF:        STA $02                   
CODE_2A8201:        INC A                     
CODE_2A8202:        STA $06                   
CODE_2A8204:        LDA #$0006                
CODE_2A8207:        STA $08                   
CODE_2A8209:        JSR CODE_2A8287           
CODE_2A820C:        LDA.w DATA_2A82B4                 
CODE_2A820F:        STA $0A                   
CODE_2A8211:        LDA #$05A7                
CODE_2A8214:        STA $00                   
CODE_2A8216:        INC A                     
CODE_2A8217:        STA $04                   
CODE_2A8219:        LDA #$45A7                
CODE_2A821C:        STA $02                   
CODE_2A821E:        INC A                     
CODE_2A821F:        STA $06                   
CODE_2A8221:        LDA #$0005                
CODE_2A8224:        STA $08                   
CODE_2A8226:        JSR CODE_2A8287           
CODE_2A8229:        LDA.w DATA_2A82B8                 
CODE_2A822C:        STA $0A                   
CODE_2A822E:        LDA #$09A9                
CODE_2A8231:        STA $00                   
CODE_2A8233:        INC A                     
CODE_2A8234:        STA $04                   
CODE_2A8236:        LDA #$49A9                
CODE_2A8239:        STA $02                   
CODE_2A823B:        INC A                     
CODE_2A823C:        STA $06                   
CODE_2A823E:        LDA #$0007                
CODE_2A8241:        STA $08                   
CODE_2A8243:        JSR CODE_2A8287           
CODE_2A8246:        LDA #$09AE                
CODE_2A8249:        STA $02                   
CODE_2A824B:        LDA #$09AF                
CODE_2A824E:        STA $04                   
CODE_2A8250:        LDY #$00                  
CODE_2A8252:        LDA #$09AB                
CODE_2A8255:        STA $00                   
CODE_2A8257:        LDA DATA_2A82BA,y               
CODE_2A825A:        STA $2116                 
CODE_2A825D:        LDA $00                   
CODE_2A825F:        STA $2118                 
CODE_2A8262:        LDA $02                   
CODE_2A8264:        STA $2118                 
CODE_2A8267:        LDA $04                   
CODE_2A8269:        STA $2118                 
CODE_2A826C:        INY                       
CODE_2A826D:        INY                       
CODE_2A826E:        CPY #$30                  
CODE_2A8270:        BEQ CODE_2A8283           
CODE_2A8272:        TYA                       
CODE_2A8273:        AND #$0002                
CODE_2A8276:        BNE CODE_2A8257           
CODE_2A8278:        INC $00                   
CODE_2A827A:        LDA $00                   
CODE_2A827C:        CMP #$09AE                
CODE_2A827F:        BNE CODE_2A8257           
CODE_2A8281:        BRA CODE_2A8252           

CODE_2A8283:        SEP #$20                  
CODE_2A8285:        PLB                       
CODE_2A8286:        RTL                       

CODE_2A8287:        LDY #$00                  
CODE_2A8289:        LDA ($0A),y               
CODE_2A828B:        STA $2116                 
CODE_2A828E:        LDA $00                   
CODE_2A8290:        STA $2118                 
CODE_2A8293:        LDA $02                   
CODE_2A8295:        STA $2118                 
CODE_2A8298:        LDA ($0A),y               
CODE_2A829A:        CLC                       
CODE_2A829B:        ADC #$0020              
CODE_2A829E:        STA $2116
CODE_2A82A1:        LDA $04                   
CODE_2A82A3:        STA $2118                 
CODE_2A82A6:        LDA $06                   
CODE_2A82A8:        STA $2118                 
CODE_2A82AB:        INY                       
CODE_2A82AC:        INY                       
CODE_2A82AD:        DEC $08                   
CODE_2A82AF:        BNE CODE_2A8289           
CODE_2A82B1:        RTS                       

DATA_2A82B2:        dw $BBE6

DATA_2A82B4:        dw $BBF2,$BBE6

DATA_2A82B8:        dw $BBFC

DATA_2A82BA:        dw $1076,$1283,$122B,$1294
                    dw $1146,$1177,$1476,$1683
                    dw $162B,$1694,$1546,$1577
                    dw $1876,$1A83,$1A2B,$1A94
                    dw $1946,$1977,$1C76,$1E83
                    dw $1E2B,$1E94,$1D46,$1D77
     
CODE_2A82EA:        LDA #$80                  
CODE_2A82EC:        STA $2115                 
CODE_2A82EF:        REP #$20                  
CODE_2A82F1:        LDA #$6800                
CODE_2A82F4:        STA $2116                 
CODE_2A82F7:        LDA #$1801                
CODE_2A82FA:        STA $4300                 
CODE_2A82FD:        LDA #$F000                
CODE_2A8300:        STA $4302                 
CODE_2A8303:        LDX #$37                  
CODE_2A8305:        STX $4304                 
CODE_2A8308:        LDA #$1000                
CODE_2A830B:        STA $4305                 
CODE_2A830E:        LDX #$01                  
CODE_2A8310:        STX $420B                 
CODE_2A8313:        SEP #$20                  
CODE_2A8315:        LDA #$0F                  
CODE_2A8317:        STA $16                   
CODE_2A8319:        LDA $0726                 
CODE_2A831C:        STA $1A80                 
CODE_2A831F:        LDA $001D                 
CODE_2A8322:        AND #$02                  
CODE_2A8324:        BEQ CODE_2A832F           
CODE_2A8326:        LDX $B3                   
CODE_2A8328:        CPX #$BC                  
CODE_2A832A:        BEQ CODE_2A832F           
CODE_2A832C:        STA $1A80                 
CODE_2A832F:        JSL CODE_22E0A9           
CODE_2A8333:        JSL CODE_27E173           
CODE_2A8337:        RTL                       

CODE_2A8338:        LDA $0706                 
CODE_2A833B:        AND #$0F                  
CODE_2A833D:        STA $02                   
CODE_2A833F:        LDY $0700                 
CODE_2A8342:        LDA #$BA                  
CODE_2A8344:        STA [$2E],y               
CODE_2A8346:        JSL CODE_2AB73A           
CODE_2A834A:        INY                       
CODE_2A834B:        LDA #$BB                  
CODE_2A834D:        STA [$2E],y               
CODE_2A834F:        JSL CODE_2AB73A           
CODE_2A8353:        LDA $0700                 
CODE_2A8356:        CLC                       
CODE_2A8357:        ADC #$10                  
CODE_2A8359:        STA $0700                 
CODE_2A835C:        LDA $2F                   
CODE_2A835E:        ADC #$00                  
CODE_2A8360:        STA $2F                   
CODE_2A8362:        DEC $02                   
CODE_2A8364:        BNE CODE_2A833F           
CODE_2A8366:        REP #$20                  
CODE_2A8368:        LDA $2E                   
CODE_2A836A:        STA $D8                   
CODE_2A836C:        SEP #$20                  
CODE_2A836E:        LDA $30                   
CODE_2A8370:        STA $DA                   
CODE_2A8372:        LDY $0700                 
CODE_2A8375:        LDA #$02                  
CODE_2A8377:        STA [$D8],y               
CODE_2A8379:        JSR CODE_2A8AD2           
CODE_2A837C:        INY                       
CODE_2A837D:        LDA $D9                   
CODE_2A837F:        SEC                       
CODE_2A8380:        SBC #$20                  
CODE_2A8382:        STA $D9                   
CODE_2A8384:        LDA #$03                  
CODE_2A8386:        STA [$D8],y               
CODE_2A8388:        JSR CODE_2A8AD2           
CODE_2A838B:        RTL                       

CODE_2A838C:        LDY $0700                 
CODE_2A838F:        LDA #$E2                  
CODE_2A8391:        STA [$2E],y               
CODE_2A8393:        RTL                       

CODE_2A8394:        PHB                       
CODE_2A8395:        PHK                       
CODE_2A8396:        PLB                       
CODE_2A8397:        LDA $30                   
CODE_2A8399:        STA $DA                   
CODE_2A839B:        REP #$20                  
CODE_2A839D:        LDA $2E                   
CODE_2A839F:        CLC                       
CODE_2A83A0:        ADC #$2000                
CODE_2A83A3:        STA $D8                   
CODE_2A83A5:        SEP #$20                  
CODE_2A83A7:        LDA $0700                 
CODE_2A83AA:        STA $03                   
CODE_2A83AC:        LDX #$00                  
CODE_2A83AE:        LDY $03                   
CODE_2A83B0:        LDA.w DATA_2A83DB,x               
CODE_2A83B3:        CMP #$80                  
CODE_2A83B5:        BEQ CODE_2A83C5           
CODE_2A83B7:        CMP #$FF                  
CODE_2A83B9:        BEQ CODE_2A83D9           
CODE_2A83BB:        STA [$2E],y               
CODE_2A83BD:        AND #$F0                  
CODE_2A83BF:        BNE CODE_2A83C5           
CODE_2A83C1:        LDA #$01                  
CODE_2A83C3:        STA [$D8],y               
CODE_2A83C5:        INX                       
CODE_2A83C6:        INC $03                   
CODE_2A83C8:        LDA $03                   
CODE_2A83CA:        AND #$07                  
CODE_2A83CC:        BNE CODE_2A83AE           
CODE_2A83CE:        LDA $03                   
CODE_2A83D0:        AND #$F0                  
CODE_2A83D2:        CLC                       
CODE_2A83D3:        ADC #$10                  
CODE_2A83D5:        STA $03                   
CODE_2A83D7:        BRA CODE_2A83AE           

CODE_2A83D9:        PLB                       
CODE_2A83DA:        RTL                       

DATA_2A83DB:        db $80,$80,$80,$90,$91,$80,$80,$80
                    db $80,$80,$80,$94,$92,$91,$80,$80
                    db $80,$80,$80,$94,$03,$95,$80,$80
                    db $80,$80,$90,$93,$03,$95,$80,$80
                    db $80,$90,$93,$98,$03,$95,$80,$80
                    db $90,$93,$98,$92,$93,$92,$91,$80
                    db $94,$92,$02,$03,$98,$03,$92,$91
                    db $94,$03,$98,$03,$92,$93,$03,$95
                    db $FF

CODE_2A841C:        RTL                       

CODE_2A841D:        PHB                       
CODE_2A841E:        LDA #$7F                  
CODE_2A8420:        PHA                       
CODE_2A8421:        PLB                       
CODE_2A8422:        LDA $000249               
CODE_2A8426:        AND #$FE                  
CODE_2A8428:        TAX                       
CODE_2A8429:        LDY #$00                  
CODE_2A842B:        REP #$20                  
CODE_2A842D:        LDA #$001F                
CODE_2A8430:        STA $00                   
CODE_2A8432:        LDA $000212               
CODE_2A8436:        STA $02                   
CODE_2A8438:        LDA.l DATA_2ABC0A,x             
CODE_2A843C:        CLC                       
CODE_2A843D:        ADC $02                   
CODE_2A843F:        STA $9200,y               
CODE_2A8442:        STA $9240,y               
CODE_2A8445:        STA $9280,y               
CODE_2A8448:        STA $92C0,y               
CODE_2A844B:        STA $9300,y               
CODE_2A844E:        STA $9340,y               
CODE_2A8451:        STA $9380,y               
CODE_2A8454:        STA $93C0,y               
CODE_2A8457:        INX                       
CODE_2A8458:        INX                       
CODE_2A8459:        INY                       
CODE_2A845A:        INY                       
CODE_2A845B:        DEC $00                   
CODE_2A845D:        BPL CODE_2A8438           
CODE_2A845F:        SEP #$20                  
CODE_2A8461:        PLB                       
CODE_2A8462:        LDA $15                   
CODE_2A8464:        AND #$03                  
CODE_2A8466:        BNE CODE_2A846E           
CODE_2A8468:        INC $0249                 
CODE_2A846B:        INC $0249                 
CODE_2A846E:        LDA $0293                 
CODE_2A8471:        ORA #$80                  
CODE_2A8473:        STA $0293                 
CODE_2A8476:        RTL                       

DATA_2A8477:        db $55,$56,$56,$56,$56,$57

DATA_2A847D:        db $5B,$5C,$5C,$5C,$5C,$5D
             
CODE_2A8483:        PHB
CODE_2A8484:        PHK
CODE_2A8485:        PLB                       
CODE_2A8486:        LDX #$00                  
CODE_2A8488:        LDY $0700                 
CODE_2A848B:        LDA $30                   
CODE_2A848D:        STA $DA                   
CODE_2A848F:        REP #$20                  
CODE_2A8491:        LDA $2E                   
CODE_2A8493:        CLC                       
CODE_2A8494:        ADC #$0010                
CODE_2A8497:        STA $D8                   
CODE_2A8499:        SEP #$20                  
CODE_2A849B:        LDA.w DATA_2A8477,x               
CODE_2A849E:        STA [$2E],y               
CODE_2A84A0:        LDA.w DATA_2A847D,x               
CODE_2A84A3:        STA [$D8],y               
CODE_2A84A5:        JSL CODE_23BEBB           
CODE_2A84A9:        INX                       
CODE_2A84AA:        CPX #$06                  
CODE_2A84AC:        BNE CODE_2A848F           
CODE_2A84AE:        PLB                       
CODE_2A84AF:        RTL                       

CODE_2A84B0:        LDA $0350                 
CODE_2A84B3:        BEQ CODE_2A84EA           
CODE_2A84B5:        STZ $0249                 
CODE_2A84B8:        LDA #$B0                  
CODE_2A84BA:        STA $024B                 
CODE_2A84BD:        LDA #$1A                  
CODE_2A84BF:        STA $0612                 
CODE_2A84C2:        STZ $D8                   
CODE_2A84C4:        STZ $D9                   
CODE_2A84C6:        JSR CODE_2A8518           
CODE_2A84C9:        INC $0249                 
CODE_2A84CC:        LDA $0249                 
CODE_2A84CF:        AND #$01                  
CODE_2A84D1:        BNE CODE_2A84E3           
CODE_2A84D3:        LDA $024B                 
CODE_2A84D6:        CLC                       
CODE_2A84D7:        ADC #$10                  
CODE_2A84D9:        STA $024B                 
CODE_2A84DC:        AND #$F0                  
CODE_2A84DE:        BNE CODE_2A84E3           
CODE_2A84E0:        INC $024B                 
CODE_2A84E3:        DEC $0612                 
CODE_2A84E6:        BNE CODE_2A84C6           
CODE_2A84E8:        BRA CODE_2A8513           

CODE_2A84EA:        REP #$20                  
CODE_2A84EC:        LDX #$00                  
CODE_2A84EE:        LDA #$00FF                
CODE_2A84F1:        STA $7F2000,x             
CODE_2A84F5:        STA $7F2100,x             
CODE_2A84F9:        STA $7F2200,x             
CODE_2A84FD:        STA $7F2300,x             
CODE_2A8501:        STA $7F2400,x             
CODE_2A8505:        STA $7F2500,x             
CODE_2A8509:        STA $7F2600,x             
CODE_2A850D:        DEX                       
CODE_2A850E:        DEX                       
CODE_2A850F:        BNE CODE_2A84F1           
CODE_2A8511:        SEP #$20                  
CODE_2A8513:        STZ $D8                   
CODE_2A8515:        STZ $D9                   
CODE_2A8517:        RTL                       

CODE_2A8518:        PHB                       
CODE_2A8519:        PHK                       
CODE_2A851A:        PLB                       
CODE_2A851B:        LDA $0249                 
CODE_2A851E:        AND #$01                  
CODE_2A8520:        STA $C2                   
CODE_2A8522:        LDA $0350                 
CODE_2A8525:        ASL A                     
CODE_2A8526:        CLC                       
CODE_2A8527:        ADC $0350                 
CODE_2A852A:        TAY                       
CODE_2A852B:        LDA $B545,y               
CODE_2A852E:        STA $08                   
CODE_2A8530:        REP #$20                  
CODE_2A8532:        LDA $B543,y               
CODE_2A8535:        STA $06                   
CODE_2A8537:        SEP #$20                  
CODE_2A8539:        LDA #$7F                  
CODE_2A853B:        STA $0F                   
CODE_2A853D:        REP #$20                  
CODE_2A853F:        STZ $0D                   
CODE_2A8541:        LDA #$0010                
CODE_2A8544:        STA $00                   
CODE_2A8546:        LDA $024B                 
CODE_2A8549:        AND #$00F0                
CODE_2A854C:        STA $09                   
CODE_2A854E:        REP #$10                  
CODE_2A8550:        LDA $024B                 
CODE_2A8553:        AND #$0001                
CODE_2A8556:        BEQ CODE_2A8560           
CODE_2A8558:        LDA $0D                   
CODE_2A855A:        CLC                       
CODE_2A855B:        ADC #$0100                
CODE_2A855E:        STA $0D                   
CODE_2A8560:        LDX $D8                   
CODE_2A8562:        LDY $09                   
CODE_2A8564:        LDA [$0D],y               
CODE_2A8566:        AND #$00FF                
CODE_2A8569:        ASL A                     
CODE_2A856A:        ASL A                     
CODE_2A856B:        ASL A                     
CODE_2A856C:        TAY                       
CODE_2A856D:        LDA $C2                   
CODE_2A856F:        AND #$00FF                
CODE_2A8572:        BEQ CODE_2A8576           
CODE_2A8574:        INY                       
CODE_2A8575:        INY                       
CODE_2A8576:        LDA [$06],y               
CODE_2A8578:        STA $7F2000,x             
CODE_2A857C:        INY                       
CODE_2A857D:        INY                       
CODE_2A857E:        INY                       
CODE_2A857F:        INY                       
CODE_2A8580:        LDA [$06],y               
CODE_2A8582:        STA $7F2002,x             
CODE_2A8586:        INC $09                   
CODE_2A8588:        INC $D8                   
CODE_2A858A:        INC $D8                   
CODE_2A858C:        INC $D8                   
CODE_2A858E:        INC $D8                   
CODE_2A8590:        DEC $00                   
CODE_2A8592:        BNE CODE_2A8560           
CODE_2A8594:        SEP #$30                  
CODE_2A8596:        PLB                       
CODE_2A8597:        RTS                       

CODE_2A8598:        PHB                       
CODE_2A8599:        PHK                       
CODE_2A859A:        PLB                       
CODE_2A859B:        REP #$20                  
CODE_2A859D:        LDA $2E                   
CODE_2A859F:        STA $D8                   
CODE_2A85A1:        LDA #$0010                
CODE_2A85A4:        STA $DB                   
CODE_2A85A6:        SEP #$20                  
CODE_2A85A8:        LDA $30                   
CODE_2A85AA:        STA $DA                   
CODE_2A85AC:        LDA $0706                 
CODE_2A85AF:        AND #$0F                  
CODE_2A85B1:        TAX                       
CODE_2A85B2:        LDY $0700                 
CODE_2A85B5:        LDA.w DATA_2A85CB,x               
CODE_2A85B8:        STA [$D8],y               
CODE_2A85BA:        JSR CODE_2A8AD2           
CODE_2A85BD:        JSR CODE_2A86F5           
CODE_2A85C0:        INX                       
CODE_2A85C1:        LDA.w DATA_2A85CB,x               
CODE_2A85C4:        STA [$D8],y               
CODE_2A85C6:        JSR CODE_2A8AD2           
CODE_2A85C9:        PLB                       
CODE_2A85CA:        RTL                       

DATA_2A85CB:        db $02,$03,$04,$05

CODE_2A85CF:        PHB                       
CODE_2A85D0:        PHK                       
CODE_2A85D1:        PLB                       
CODE_2A85D2:        LDA [$2B]                 
CODE_2A85D4:        TAX                       
CODE_2A85D5:        REP #$20                  
CODE_2A85D7:        INC $2B                   
CODE_2A85D9:        LDA $2E                   
CODE_2A85DB:        STA $D8                   
CODE_2A85DD:        LDA #$0001                
CODE_2A85E0:        STA $DB                   
CODE_2A85E2:        SEP #$20                  
CODE_2A85E4:        LDA $30                   
CODE_2A85E6:        STA $DA                   
CODE_2A85E8:        LDA $0706                 
CODE_2A85EB:        AND #$0F                  
CODE_2A85ED:        STA $03                   
CODE_2A85EF:        LDY $0700                 
CODE_2A85F2:        TXA                       
CODE_2A85F3:        BEQ CODE_2A8648           
CODE_2A85F5:        CPX #$04                  
CODE_2A85F7:        BNE CODE_2A8615           
CODE_2A85F9:        REP #$20                  
CODE_2A85FB:        DEC $D8                   
CODE_2A85FD:        DEC $D8                   
CODE_2A85FF:        SEP #$20                  
CODE_2A8601:        LDA #$48                  
CODE_2A8603:        STA [$D8],y               
CODE_2A8605:        REP #$20                  
CODE_2A8607:        INC $D8                   
CODE_2A8609:        SEP #$20                  
CODE_2A860B:        LDA #$48                  
CODE_2A860D:        STA [$D8],y               
CODE_2A860F:        REP #$20                  
CODE_2A8611:        INC $D8                   
CODE_2A8613:        SEP #$20                  
CODE_2A8615:        LDA $8667,x               
CODE_2A8618:        STA [$D8],y               
CODE_2A861A:        JSR CODE_2A8AD2           
CODE_2A861D:        JSR CODE_2A86F5           
CODE_2A8620:        DEC $03                   
CODE_2A8622:        LDA #$02                  
CODE_2A8624:        STA $02                   
CODE_2A8626:        JSR CODE_2A8655           
CODE_2A8629:        LDA $866D,x               
CODE_2A862C:        STA [$D8],y               
CODE_2A862E:        JSR CODE_2A8AD2           
CODE_2A8631:        JSR CODE_2A86F5           
CODE_2A8634:        CPX #$04                  
CODE_2A8636:        BNE CODE_2A8653           
CODE_2A8638:        LDA #$48                  
CODE_2A863A:        STA [$D8],y               
CODE_2A863C:        REP #$20                  
CODE_2A863E:        INC $D8                   
CODE_2A8640:        SEP #$20                  
CODE_2A8642:        LDA #$48                  
CODE_2A8644:        STA [$D8],y               
CODE_2A8646:        BRA CODE_2A8653           

CODE_2A8648:        LDA #$10                  
CODE_2A864A:        STA $DB                   
CODE_2A864C:        LDA #$07                  
CODE_2A864E:        STA $02                   
CODE_2A8650:        JSR CODE_2A8655           
CODE_2A8653:        PLB                       
CODE_2A8654:        RTL                       

CODE_2A8655:        LDA $03                   
CODE_2A8657:        BEQ CODE_2A8667           
CODE_2A8659:        LDA $02                   
CODE_2A865B:        STA [$D8],y               
CODE_2A865D:        JSR CODE_2A8AD2           
CODE_2A8660:        JSR CODE_2A86F5           
CODE_2A8663:        DEC $03                   
CODE_2A8665:        BRA CODE_2A8655           

CODE_2A8667:        RTS                       

DATA_2A8668:        db $03,$03,$06,$08,$0B,$08,$04,$05
                    db $04,$09,$09,$0A
             

CODE_2A8674:        PHB                       
CODE_2A8675:        PHK                       
CODE_2A8676:        PLB                       
CODE_2A8677:        LDA [$2B]                 
CODE_2A8679:        STA $03                   
CODE_2A867B:        STA $DD                   
CODE_2A867D:        REP #$20                  
CODE_2A867F:        INC $2B                   
CODE_2A8681:        LDA $2E                   
CODE_2A8683:        STA $D8                   
CODE_2A8685:        SEP #$20                  
CODE_2A8687:        LDA $30                   
CODE_2A8689:        STA $DA                   
CODE_2A868B:        LDA $0706                 
CODE_2A868E:        AND #$0F                  
CODE_2A8690:        TAX                       
CODE_2A8691:        LDA $86D5,x               
CODE_2A8694:        STA $DB                   
CODE_2A8696:        STZ $DC                   
CODE_2A8698:        STZ $02                   
CODE_2A869A:        TXA                       
CODE_2A869B:        BNE CODE_2A86A7           
CODE_2A869D:        LDA [$2B]                 
CODE_2A869F:        STA $02                   
CODE_2A86A1:        REP #$20                  
CODE_2A86A3:        INC $2B                   
CODE_2A86A5:        SEP #$20                  
CODE_2A86A7:        LDY $0700                 
CODE_2A86AA:        LDA $86E5,x               
CODE_2A86AD:        STA [$D8],y               
CODE_2A86AF:        JSR CODE_2A8AD2           
CODE_2A86B2:        JSR CODE_2A86F5           
CODE_2A86B5:        DEC $03                   
CODE_2A86B7:        BNE CODE_2A86AA           
CODE_2A86B9:        LDA $02                   
CODE_2A86BB:        BEQ CODE_2A86D3           
CODE_2A86BD:        DEC $02                   
CODE_2A86BF:        REP #$20                  
CODE_2A86C1:        LDA $2E                   
CODE_2A86C3:        CLC                       
CODE_2A86C4:        ADC #$0010                
CODE_2A86C7:        STA $2E                   
CODE_2A86C9:        STA $D8                   
CODE_2A86CB:        SEP #$20                  
CODE_2A86CD:        LDA $DD                   
CODE_2A86CF:        STA $03                   
CODE_2A86D1:        BRA CODE_2A86AA           

CODE_2A86D3:        PLB                       
CODE_2A86D4:        RTL                       

DATA_2A86D5:        db $01,$0F,$01,$11,$10,$10,$11,$01
                    db $0F,$0F,$11,$11,$0F,$01,$01,$01
DATA_2A86E5:        db $13,$14,$15,$16,$17,$18,$19,$1A
                    db $1B,$1C,$1D,$1E,$1F,$20,$21,$22
   
CODE_2A86F5:        REP #$20                  
CODE_2A86F7:        LDA $D8                   
CODE_2A86F9:        SEC                       
CODE_2A86FA:        SBC #$2000                
CODE_2A86FD:        CLC                       
CODE_2A86FE:        ADC $DB                   
CODE_2A8700:        STA $D8                   
CODE_2A8702:        SEP #$20                  
CODE_2A8704:        RTS                       

CODE_2A8705:        PHB                       
CODE_2A8706:        PHK                       
CODE_2A8707:        PLB                       
CODE_2A8708:        LDA $00                   
CODE_2A870A:        PHA                       
CODE_2A870B:        LDA $01                   
CODE_2A870D:        PHA                       
CODE_2A870E:        PHX                       
CODE_2A870F:        LDA $30                   
CODE_2A8711:        STA $DA                   
CODE_2A8713:        STA $DD                   
CODE_2A8715:        REP #$20                  
CODE_2A8717:        LDA $2E                   
CODE_2A8719:        STA $D8                   
CODE_2A871B:        CLC                       
CODE_2A871C:        ADC #$2000                
CODE_2A871F:        STA $DB                   
CODE_2A8721:        SEP #$20                  
CODE_2A8723:        LDX #$00                  
CODE_2A8725:        JSR CODE_2A8761           
CODE_2A8728:        LDA [$D8],y               
CODE_2A872A:        CMP #$9C                  
CODE_2A872C:        BEQ CODE_2A8755           
CODE_2A872E:        CMP #$E4                  
CODE_2A8730:        BEQ CODE_2A8755           
CODE_2A8732:        LDA $875E,x               
CODE_2A8735:        STA [$D8],y               
CODE_2A8737:        CPX #$02                  
CODE_2A8739:        BEQ CODE_2A873E           
CODE_2A873B:        INX                       
CODE_2A873C:        BRA CODE_2A8725           

CODE_2A873E:        JSR CODE_2A8761           
CODE_2A8741:        LDA [$D8],y               
CODE_2A8743:        CMP #$9C                  
CODE_2A8745:        BEQ CODE_2A8755           
CODE_2A8747:        CMP #$E4                  
CODE_2A8749:        BEQ CODE_2A8755           
CODE_2A874B:        LDA #$04                  
CODE_2A874D:        STA [$D8],y               
CODE_2A874F:        LDA #$01                  
CODE_2A8751:        STA [$DB],y               
CODE_2A8753:        BRA CODE_2A873E           

CODE_2A8755:        PLX                       
CODE_2A8756:        PLA                       
CODE_2A8757:        STA $01                   
CODE_2A8759:        PLA                       
CODE_2A875A:        STA $00                   
CODE_2A875C:        PLB                       
CODE_2A875D:        RTL                       

CODE_2A875E:        ASL $07                   
CODE_2A8760:        PHP                       
CODE_2A8761:        REP #$20                  
CODE_2A8763:        LDA $D8                   
CODE_2A8765:        SEC                       
CODE_2A8766:        SBC #$0010                
CODE_2A8769:        STA $D8                   
CODE_2A876B:        LDA $DB                   
CODE_2A876D:        SEC                       
CODE_2A876E:        SBC #$0010                
CODE_2A8771:        STA $DB                   
CODE_2A8773:        SEP #$20                  
CODE_2A8775:        RTS                       

CODE_2A8776:        REP #$20                  
CODE_2A8778:        LDA $2E                   
CODE_2A877A:        SEC                       
CODE_2A877B:        SBC #$0010                
CODE_2A877E:        STA $D8                   
CODE_2A8780:        SEP #$20                  
CODE_2A8782:        LDA $30                   
CODE_2A8784:        STA $DA                   
CODE_2A8786:        LDA [$D8],y               
CODE_2A8788:        CMP #$AB                  
CODE_2A878A:        BNE CODE_2A8793           
CODE_2A878C:        LDA #$0B                  
CODE_2A878E:        STA [$D8],y               
CODE_2A8790:        JSR CODE_2A8AD2           
CODE_2A8793:        RTL                       

CODE_2A8794:        REP #$20                  
CODE_2A8796:        LDA $2E                   
CODE_2A8798:        CLC                       
CODE_2A8799:        ADC #$0010                
CODE_2A879C:        STA $D8                   
CODE_2A879E:        SEP #$20                  
CODE_2A87A0:        LDA $30                   
CODE_2A87A2:        STA $DA                   
CODE_2A87A4:        LDA [$D8],y               
CODE_2A87A6:        CMP #$9A                  
CODE_2A87A8:        BNE CODE_2A87B1           
CODE_2A87AA:        LDA #$0D                  
CODE_2A87AC:        STA [$D8],y               
CODE_2A87AE:        JSR CODE_2A8AD2           
CODE_2A87B1:        RTL                       

CODE_2A87B2:        PHY                       
CODE_2A87B3:        LDA $30                   
CODE_2A87B5:        STA $DA                   
CODE_2A87B7:        REP #$20                  
CODE_2A87B9:        LDA $2E                   
CODE_2A87BB:        CLC                       
CODE_2A87BC:        ADC #$000F                
CODE_2A87BF:        STA $D8                   
CODE_2A87C1:        TYA                       
CODE_2A87C2:        AND #$00FF                
CODE_2A87C5:        BNE CODE_2A87CF           
CODE_2A87C7:        LDA $D8                   
CODE_2A87C9:        SEC                       
CODE_2A87CA:        SBC #$01A0                
CODE_2A87CD:        STA $D8                   
CODE_2A87CF:        SEP #$20                  
CODE_2A87D1:        LDA [$D8],y               
CODE_2A87D3:        CMP #$AA                  
CODE_2A87D5:        BNE CODE_2A87E5           
CODE_2A87D7:        LDA $D8                   
CODE_2A87D9:        SEC                       
CODE_2A87DA:        SBC #$10                  
CODE_2A87DC:        STA $D8                   
CODE_2A87DE:        LDA #$06                  
CODE_2A87E0:        STA [$D8],y               
CODE_2A87E2:        JSR CODE_2A8AD2           
CODE_2A87E5:        REP #$20                  
CODE_2A87E7:        LDA $2E                   
CODE_2A87E9:        SEC                       
CODE_2A87EA:        SBC #$0010                
CODE_2A87ED:        STA $D8                   
CODE_2A87EF:        SEP #$20                  
CODE_2A87F1:        INY                       
CODE_2A87F2:        TYA                       
CODE_2A87F3:        AND #$0F                  
CODE_2A87F5:        BNE CODE_2A8803           
CODE_2A87F7:        REP #$20                  
CODE_2A87F9:        LDA $D8                   
CODE_2A87FB:        CLC                       
CODE_2A87FC:        ADC #$01A0                
CODE_2A87FF:        STA $D8                   
CODE_2A8801:        SEP #$20                  
CODE_2A8803:        LDA [$D8],y               
CODE_2A8805:        CMP #$A8                  
CODE_2A8807:        BNE CODE_2A881C           
CODE_2A8809:        REP #$20                  
CODE_2A880B:        LDA $D8                   
CODE_2A880D:        CLC                       
CODE_2A880E:        ADC #$0010                
CODE_2A8811:        STA $D8                   
CODE_2A8813:        SEP #$20                  
CODE_2A8815:        LDA #$02                  
CODE_2A8817:        STA [$D8],y               
CODE_2A8819:        JSR CODE_2A8AD2           
CODE_2A881C:        PLY                       
CODE_2A881D:        RTL                       

CODE_2A881E:        PHY                       
CODE_2A881F:        REP #$20                  
CODE_2A8821:        LDA $2E                   
CODE_2A8823:        SEC                       
CODE_2A8824:        SBC #$0010                
CODE_2A8827:        STA $D8                   
CODE_2A8829:        SEP #$20                  
CODE_2A882B:        LDA $30                   
CODE_2A882D:        STA $DA                   
CODE_2A882F:        LDA [$D8],y               
CODE_2A8831:        CMP #$A8                  
CODE_2A8833:        BEQ CODE_2A8840           
CODE_2A8835:        CMP #$34                  
CODE_2A8837:        BEQ CODE_2A8840           
CODE_2A8839:        LDA #$05                  
CODE_2A883B:        STA [$D8],y               
CODE_2A883D:        JSR CODE_2A8AD2           
CODE_2A8840:        PLY                       
CODE_2A8841:        RTL                       

CODE_2A8842:        ASL $0C                   
CODE_2A8844:        PHB                       
CODE_2A8845:        PHK                       
CODE_2A8846:        PLB                       
CODE_2A8847:        PHX                       
CODE_2A8848:        PHY                       
CODE_2A8849:        LDA $30                   
CODE_2A884B:        STA $DA                   
CODE_2A884D:        REP #$20                  
CODE_2A884F:        LDA $2E                   
CODE_2A8851:        SEC                       
CODE_2A8852:        SBC #$0010                
CODE_2A8855:        STA $D8                   
CODE_2A8857:        SEP #$20                  
CODE_2A8859:        LDA [$D8],y               
CODE_2A885B:        CMP #$AA                  
CODE_2A885D:        BEQ CODE_2A886B           
CODE_2A885F:        CMP #$A9                  
CODE_2A8861:        BEQ CODE_2A886B           
CODE_2A8863:        LDA $8842,x               
CODE_2A8866:        STA [$D8],y               
CODE_2A8868:        JSR CODE_2A8AD2           
CODE_2A886B:        PLY                       
CODE_2A886C:        PLX                       
CODE_2A886D:        PLB                       
CODE_2A886E:        RTL                       

CODE_2A886F:        PHX                       
CODE_2A8870:        PHY                       
CODE_2A8871:        LDA [$2E],y               
CODE_2A8873:        CMP #$A6                  
CODE_2A8875:        BNE CODE_2A88C0           
CODE_2A8877:        LDA $30                   
CODE_2A8879:        STA $DA                   
CODE_2A887B:        REP #$20                  
CODE_2A887D:        LDA $2E                   
CODE_2A887F:        PHA                       
CODE_2A8880:        CLC                       
CODE_2A8881:        ADC #$0011                
CODE_2A8884:        STA $D8                   
CODE_2A8886:        PLA                       
CODE_2A8887:        CLC                       
CODE_2A8888:        ADC #$000F                
CODE_2A888B:        STA $DB                   
CODE_2A888D:        TYA                       
CODE_2A888E:        AND #$000F                
CODE_2A8891:        BNE CODE_2A88A3           
CODE_2A8893:        LDA $D8                   
CODE_2A8895:        CLC                       
CODE_2A8896:        ADC #$01A0                
CODE_2A8899:        STA $D8                   
CODE_2A889B:        LDA $DB                   
CODE_2A889D:        CLC                       
CODE_2A889E:        ADC #$01A0                
CODE_2A88A1:        STA $DB                   
CODE_2A88A3:        SEP #$20                  
CODE_2A88A5:        LDA [$D8],y               
CODE_2A88A7:        CMP #$A8                  
CODE_2A88A9:        BNE CODE_2A88C0           
CODE_2A88AB:        REP #$20                  
CODE_2A88AD:        LDA $D8                   
CODE_2A88AF:        SEC                       
CODE_2A88B0:        SBC #$0010                
CODE_2A88B3:        STA $D8                   
CODE_2A88B5:        SEP #$20                  
CODE_2A88B7:        LDA #$05                  
CODE_2A88B9:        STA [$D8],y               
CODE_2A88BB:        JSR CODE_2A8AD2           
CODE_2A88BE:        BRA CODE_2A88E5           

CODE_2A88C0:        REP #$20                  
CODE_2A88C2:        LDA $DB                   
CODE_2A88C4:        STA $D8                   
CODE_2A88C6:        SEP #$20                  
CODE_2A88C8:        LDA [$D8],y               
CODE_2A88CA:        CMP #$AA                  
CODE_2A88CC:        BEQ CODE_2A88D2           
CODE_2A88CE:        CMP #$BF                  
CODE_2A88D0:        BNE CODE_2A88E5           
CODE_2A88D2:        REP #$20                  
CODE_2A88D4:        LDA $D8                   
CODE_2A88D6:        SEC                       
CODE_2A88D7:        SBC #$0010                
CODE_2A88DA:        STA $D8                   
CODE_2A88DC:        SEP #$20                  
CODE_2A88DE:        LDA #$06                  
CODE_2A88E0:        STA [$D8],y               
CODE_2A88E2:        JSR CODE_2A8AD2           
CODE_2A88E5:        PLY                       
CODE_2A88E6:        PLX                       
CODE_2A88E7:        RTL                       

CODE_2A88E8:        PHY                       
CODE_2A88E9:        LDA $30                   
CODE_2A88EB:        STA $DA                   
CODE_2A88ED:        REP #$20                  
CODE_2A88EF:        LDA $2E                   
CODE_2A88F1:        STA $D8                   
CODE_2A88F3:        SEP #$20                  
CODE_2A88F5:        TYA                       
CODE_2A88F6:        CLC                       
CODE_2A88F7:        ADC #$0F                  
CODE_2A88F9:        TAY                       
CODE_2A88FA:        AND #$F0                  
CODE_2A88FC:        BNE CODE_2A8900           
CODE_2A88FE:        INC $D9                   
CODE_2A8900:        LDA [$D8],y               
CODE_2A8902:        CMP #$9A                  
CODE_2A8904:        BEQ CODE_2A890E           
CODE_2A8906:        CMP #$99                  
CODE_2A8908:        BEQ CODE_2A890E           
CODE_2A890A:        CMP #$E3                  
CODE_2A890C:        BNE CODE_2A8927           
CODE_2A890E:        INY                       
CODE_2A890F:        TYA                       
CODE_2A8910:        AND #$0F                  
CODE_2A8912:        BNE CODE_2A8920           
CODE_2A8914:        REP #$20                  
CODE_2A8916:        LDA $D8                   
CODE_2A8918:        CLC                       
CODE_2A8919:        ADC #$01A0                
CODE_2A891C:        STA $D8                   
CODE_2A891E:        SEP #$20                  
CODE_2A8920:        LDA #$02                  
CODE_2A8922:        STA [$D8],y               
CODE_2A8924:        JSR CODE_2A8AD2           
CODE_2A8927:        PLY                       
CODE_2A8928:        RTL                       

CODE_2A8929:        ASL A                     
CODE_2A892A:        TSB $08                   
CODE_2A892C:        PHB                       
CODE_2A892D:        PHK                       
CODE_2A892E:        PLB                       
CODE_2A892F:        PHY                       
CODE_2A8930:        PHX                       
CODE_2A8931:        LDA $30                   
CODE_2A8933:        STA $DA                   
CODE_2A8935:        STA $DD                   
CODE_2A8937:        REP #$20                  
CODE_2A8939:        LDA $2E                   
CODE_2A893B:        STA $D8                   
CODE_2A893D:        SEC                       
CODE_2A893E:        SBC #$000F                
CODE_2A8941:        STA $DB                   
CODE_2A8943:        TYA                       
CODE_2A8944:        AND #$000F                
CODE_2A8947:        BNE CODE_2A8951           
CODE_2A8949:        LDA $D8                   
CODE_2A894B:        SEC                       
CODE_2A894C:        SBC #$01A0                
CODE_2A894F:        STA $D8                   
CODE_2A8951:        LDA $D8                   
CODE_2A8953:        SEC                       
CODE_2A8954:        SBC #$0011                
CODE_2A8957:        STA $D8                   
CODE_2A8959:        SEP #$20                  
CODE_2A895B:        LDX #$00                  
CODE_2A895D:        LDA [$D8],y               
CODE_2A895F:        CMP #$9F                  
CODE_2A8961:        BEQ CODE_2A8981           
CODE_2A8963:        CMP #$27                  
CODE_2A8965:        BEQ CODE_2A8983           
CODE_2A8967:        CMP #$35                  
CODE_2A8969:        BEQ CODE_2A8983           
CODE_2A896B:        CMP #$36                  
CODE_2A896D:        BEQ CODE_2A8983           
CODE_2A896F:        CMP #$E4                  
CODE_2A8971:        BEQ CODE_2A8982           
CODE_2A8973:        CMP #$F8                  
CODE_2A8975:        BEQ CODE_2A8982           
CODE_2A8977:        CMP #$9B                  
CODE_2A8979:        BEQ CODE_2A8982           
CODE_2A897B:        CMP #$AA                  
CODE_2A897D:        BEQ CODE_2A8982           
CODE_2A897F:        BRA CODE_2A8997           

CODE_2A8981:        INX                       
CODE_2A8982:        INX                       
CODE_2A8983:        REP #$20                  
CODE_2A8985:        LDA $D8                   
CODE_2A8987:        CLC                       
CODE_2A8988:        ADC #$0010                
CODE_2A898B:        STA $D8                   
CODE_2A898D:        SEP #$20                  
CODE_2A898F:        LDA $8929,x               
CODE_2A8992:        STA [$D8],y               
CODE_2A8994:        JSR CODE_2A8AD2           
CODE_2A8997:        LDA [$DB],y               
CODE_2A8999:        CMP #$A8                  
CODE_2A899B:        BEQ CODE_2A89A1           
CODE_2A899D:        CMP #$F6                  
CODE_2A899F:        BNE CODE_2A89BC           
CODE_2A89A1:        REP #$20                  
CODE_2A89A3:        LDA $DB                   
CODE_2A89A5:        CLC                       
CODE_2A89A6:        ADC #$0010                
CODE_2A89A9:        STA $DB                   
CODE_2A89AB:        SEP #$20                  
CODE_2A89AD:        LDA #$02                  
CODE_2A89AF:        STA [$DB],y               
CODE_2A89B1:        LDA $DC                   
CODE_2A89B3:        CLC                       
CODE_2A89B4:        ADC #$20                  
CODE_2A89B6:        STA $DC                   
CODE_2A89B8:        LDA #$01                  
CODE_2A89BA:        STA [$DB],y               
CODE_2A89BC:        TYA                       
CODE_2A89BD:        CLC                       
CODE_2A89BE:        ADC #$10                  
CODE_2A89C0:        TAY                       
CODE_2A89C1:        LDA [$2E],y               
CODE_2A89C3:        CMP #$02                  
CODE_2A89C5:        BEQ CODE_2A89CB           
CODE_2A89C7:        CMP #$04                  
CODE_2A89C9:        BNE CODE_2A89D3           
CODE_2A89CB:        JSL CODE_2AB73A           
CODE_2A89CF:        LDA #$AB                  
CODE_2A89D1:        STA [$2E],y               
CODE_2A89D3:        PLX                       
CODE_2A89D4:        PLY                       
CODE_2A89D5:        PLB                       
CODE_2A89D6:        RTL                       

CODE_2A89D7:        ASL A                     
CODE_2A89D8:        TSB $04                   
CODE_2A89DA:        PHP                       
CODE_2A89DB:        ASL A                     
CODE_2A89DC:        PHB                       
CODE_2A89DD:        PHK                       
CODE_2A89DE:        PLB                       
CODE_2A89DF:        PHX                       
CODE_2A89E0:        PHY                       
CODE_2A89E1:        REP #$20                  
CODE_2A89E3:        LDA $2E                   
CODE_2A89E5:        STA $D8                   
CODE_2A89E7:        SEP #$20                  
CODE_2A89E9:        LDA $30                   
CODE_2A89EB:        STA $DA                   
CODE_2A89ED:        REP #$20                  
CODE_2A89EF:        INY                       
CODE_2A89F0:        TYA                       
CODE_2A89F1:        AND #$000F                
CODE_2A89F4:        BNE CODE_2A89FE           
CODE_2A89F6:        LDA $D8                   
CODE_2A89F8:        CLC                       
CODE_2A89F9:        ADC #$01A0                
CODE_2A89FC:        STA $D8                   
CODE_2A89FE:        SEP #$20                  
CODE_2A8A00:        LDA [$D8],y               
CODE_2A8A02:        CMP #$C2                  
CODE_2A8A04:        BNE CODE_2A8A0E           
CODE_2A8A06:        DEY                       
CODE_2A8A07:        LDA #$03                  
CODE_2A8A09:        STA [$D8],y               
CODE_2A8A0B:        JSR CODE_2A8AD2           
CODE_2A8A0E:        PLY                       
CODE_2A8A0F:        PLX                       
CODE_2A8A10:        PHX                       
CODE_2A8A11:        PHY                       
CODE_2A8A12:        LDA [$2E],y               
CODE_2A8A14:        CMP #$9F                  
CODE_2A8A16:        BEQ CODE_2A8A50           
CODE_2A8A18:        REP #$20                  
CODE_2A8A1A:        LDA $2E                   
CODE_2A8A1C:        STA $D8                   
CODE_2A8A1E:        SEP #$20                  
CODE_2A8A20:        TYA                       
CODE_2A8A21:        AND #$0F                  
CODE_2A8A23:        BNE CODE_2A8A31           
CODE_2A8A25:        REP #$20                  
CODE_2A8A27:        LDA $D8                   
CODE_2A8A29:        SEC                       
CODE_2A8A2A:        SBC #$01A0                
CODE_2A8A2D:        STA $D8                   
CODE_2A8A2F:        SEP #$20                  
CODE_2A8A31:        DEY                       
CODE_2A8A32:        LDA [$D8],y               
CODE_2A8A34:        CMP #$26                  
CODE_2A8A36:        BEQ CODE_2A8A50           
CODE_2A8A38:        CMP #$33                  
CODE_2A8A3A:        BEQ CODE_2A8A50           
CODE_2A8A3C:        CMP #$9A                  
CODE_2A8A3E:        BEQ CODE_2A8A50           
CODE_2A8A40:        CMP #$E3                  
CODE_2A8A42:        BEQ CODE_2A8A50           
CODE_2A8A44:        CMP #$0D                  
CODE_2A8A46:        BEQ CODE_2A8A50           
CODE_2A8A48:        LDA $89D7,x               
CODE_2A8A4B:        STA [$D8],y               
CODE_2A8A4D:        JSR CODE_2A8AD2           
CODE_2A8A50:        PLY                       
CODE_2A8A51:        PHY                       
CODE_2A8A52:        LDA [$2E],y               
CODE_2A8A54:        CMP #$9B                  
CODE_2A8A56:        BEQ CODE_2A8A5E           
CODE_2A8A58:        CMP #$E4                  
CODE_2A8A5A:        BEQ CODE_2A8A5E           
CODE_2A8A5C:        CMP #$9F                  
CODE_2A8A5E:        BNE CODE_2A8AA8           
CODE_2A8A60:        REP #$20                  
CODE_2A8A62:        LDA $2E                   
CODE_2A8A64:        CLC                       
CODE_2A8A65:        ADC #$0010                
CODE_2A8A68:        STA $D8                   
CODE_2A8A6A:        SEP #$20                  
CODE_2A8A6C:        INY                       
CODE_2A8A6D:        TYA                       
CODE_2A8A6E:        AND #$0F                  
CODE_2A8A70:        BNE CODE_2A8A7E           
CODE_2A8A72:        REP #$20                  
CODE_2A8A74:        LDA $D8                   
CODE_2A8A76:        CLC                       
CODE_2A8A77:        ADC #$01A0                
CODE_2A8A7A:        STA $D8                   
CODE_2A8A7C:        SEP #$20                  
CODE_2A8A7E:        LDX #$03                  
CODE_2A8A80:        LDA [$D8],y               
CODE_2A8A82:        CMP #$E3                  
CODE_2A8A84:        BEQ CODE_2A8A9D           
CODE_2A8A86:        CMP #$9A                  
CODE_2A8A88:        BNE CODE_2A8AA8           
CODE_2A8A8A:        TYA                       
CODE_2A8A8B:        AND #$0F                  
CODE_2A8A8D:        BNE CODE_2A8A9B           
CODE_2A8A8F:        REP #$20                  
CODE_2A8A91:        LDA $D8                   
CODE_2A8A93:        SEC                       
CODE_2A8A94:        SBC #$01A0                
CODE_2A8A97:        STA $D8                   
CODE_2A8A99:        SEP #$20                  
CODE_2A8A9B:        BRA CODE_2A8A9F           

CODE_2A8A9D:        LDX #$02                  
CODE_2A8A9F:        DEY                       
CODE_2A8AA0:        LDA $89D7,x               
CODE_2A8AA3:        STA [$D8],y               
CODE_2A8AA5:        JSR CODE_2A8AD2           
CODE_2A8AA8:        TYA                       
CODE_2A8AA9:        AND #$0F                  
CODE_2A8AAB:        BNE CODE_2A8AB9           
CODE_2A8AAD:        REP #$20                  
CODE_2A8AAF:        LDA $D8                   
CODE_2A8AB1:        SEC                       
CODE_2A8AB2:        SBC #$01A0                
CODE_2A8AB5:        STA $D8                   
CODE_2A8AB7:        SEP #$20                  
CODE_2A8AB9:        DEY                       
CODE_2A8ABA:        LDA [$2E],y               
CODE_2A8ABC:        CMP #$9F                  
CODE_2A8ABE:        BNE CODE_2A8ACE           
CODE_2A8AC0:        LDA [$D8],y               
CODE_2A8AC2:        CMP #$86                  
CODE_2A8AC4:        BNE CODE_2A8ACE           
CODE_2A8AC6:        LDA $89DA                 
CODE_2A8AC9:        STA [$D8],y               
CODE_2A8ACB:        JSR CODE_2A8AD2           
CODE_2A8ACE:        PLY                       
CODE_2A8ACF:        PLX                       
CODE_2A8AD0:        PLB                       
CODE_2A8AD1:        RTL                       

CODE_2A8AD2:        LDA $D9                   
CODE_2A8AD4:        CLC                       
CODE_2A8AD5:        ADC #$20                  
CODE_2A8AD7:        STA $D9                   
CODE_2A8AD9:        LDA #$01                  
CODE_2A8ADB:        STA [$D8],y               
CODE_2A8ADD:        RTS                       

DATA_2A8ADE:        db $09,$02,$02,$07
              
CODE_2A8AE2:        PHB                       
CODE_2A8AE3:        PHK                       
CODE_2A8AE4:        PLB                       
CODE_2A8AE5:        PHX                       
CODE_2A8AE6:        PHY                       
CODE_2A8AE7:        REP #$20                  
CODE_2A8AE9:        LDA $2E                   
CODE_2A8AEB:        STA $D8                   
CODE_2A8AED:        STA $DB                   
CODE_2A8AEF:        SEP #$20                  
CODE_2A8AF1:        LDA $30                   
CODE_2A8AF3:        STA $DA                   
CODE_2A8AF5:        STA $DD                   
CODE_2A8AF7:        TYA                       
CODE_2A8AF8:        CLC                       
CODE_2A8AF9:        ADC #$10                  
CODE_2A8AFB:        TAY                       
CODE_2A8AFC:        AND #$F0                  
CODE_2A8AFE:        BNE CODE_2A8B02           
CODE_2A8B00:        INC $D9                   
CODE_2A8B02:        LDA [$D8],y               
CODE_2A8B04:        CMP #$9A                  
CODE_2A8B06:        BEQ CODE_2A8B18           
CODE_2A8B08:        CMP #$A8                  
CODE_2A8B0A:        BEQ CODE_2A8B18           
CODE_2A8B0C:        CMP #$F6                  
CODE_2A8B0E:        BEQ CODE_2A8B18           
CODE_2A8B10:        LDA $8ADE,x               
CODE_2A8B13:        STA [$D8],y               
CODE_2A8B15:        JSR CODE_2A8AD2           
CODE_2A8B18:        PLY                       
CODE_2A8B19:        PHY                       
CODE_2A8B1A:        TYA                       
CODE_2A8B1B:        AND #$0F                  
CODE_2A8B1D:        BNE CODE_2A8B2B           
CODE_2A8B1F:        REP #$20                  
CODE_2A8B21:        LDA $DB                   
CODE_2A8B23:        SEC                       
CODE_2A8B24:        SBC #$01A0                
CODE_2A8B27:        STA $DB                   
CODE_2A8B29:        SEP #$20                  
CODE_2A8B2B:        DEY                       
CODE_2A8B2C:        LDA [$DB],y               
CODE_2A8B2E:        CMP #$C2                  
CODE_2A8B30:        BNE CODE_2A8B47           
CODE_2A8B32:        PLY                       
CODE_2A8B33:        PHY                       
CODE_2A8B34:        LDA #$12                  
CODE_2A8B36:        STA [$2E],y               
CODE_2A8B38:        REP #$30                  
CODE_2A8B3A:        TYA                       
CODE_2A8B3B:        ORA #$2000                
CODE_2A8B3E:        TAY                       
CODE_2A8B3F:        SEP #$20                  
CODE_2A8B41:        LDA #$01                  
CODE_2A8B43:        STA [$2E],y               
CODE_2A8B45:        SEP #$10                  
CODE_2A8B47:        PLY                       
CODE_2A8B48:        PLX                       
CODE_2A8B49:        PLB                       
CODE_2A8B4A:        RTL                       

CODE_2A8B4B:        REP #$20                  
CODE_2A8B4D:        LDA #$1000                
CODE_2A8B50:        XBA                       
CODE_2A8B51:        STA $1602                 
CODE_2A8B54:        LDA #$40BE                
CODE_2A8B57:        XBA                       
CODE_2A8B58:        STA $1604                 
CODE_2A8B5B:        LDA #$30FB                
CODE_2A8B5E:        STA $1606                 
CODE_2A8B61:        LDA #$FFFF                
CODE_2A8B64:        STA $1608                 
CODE_2A8B67:        SEP #$20                  
CODE_2A8B69:        JSR CODE_2A8C9A           
CODE_2A8B6C:        REP #$20                  
CODE_2A8B6E:        LDA #$1300                
CODE_2A8B71:        XBA                       
CODE_2A8B72:        STA $1602                 
CODE_2A8B75:        LDA #$403E                
CODE_2A8B78:        XBA                       
CODE_2A8B79:        STA $1604                 
CODE_2A8B7C:        SEP #$20                  
CODE_2A8B7E:        JSR CODE_2A8C9A           
CODE_2A8B81:        REP #$20                  
CODE_2A8B83:        LDA #$1060                
CODE_2A8B86:        XBA                       
CODE_2A8B87:        STA $1602                 
CODE_2A8B8A:        LDA #$003F                
CODE_2A8B8D:        XBA                       
CODE_2A8B8E:        STA $1604                 
CODE_2A8B91:        LDX #$40                  
CODE_2A8B93:        LDA #$04D9                
CODE_2A8B96:        STA $1606,x               
CODE_2A8B99:        DEX                       
CODE_2A8B9A:        DEX                       
CODE_2A8B9B:        BPL CODE_2A8B96           
CODE_2A8B9D:        LDA #$04E7                
CODE_2A8BA0:        STA $1624                 
CODE_2A8BA3:        LDA #$04E8                
CODE_2A8BA6:        STA $1626                 
CODE_2A8BA9:        LDA #$FFFF                
CODE_2A8BAC:        STA $1646                 
CODE_2A8BAF:        SEP #$20                  
CODE_2A8BB1:        JSR CODE_2A8C9A           
CODE_2A8BB4:        REP #$20                  
CODE_2A8BB6:        LDA #$12E0                
CODE_2A8BB9:        XBA                       
CODE_2A8BBA:        STA $1602                 
CODE_2A8BBD:        LDX #$40                  
CODE_2A8BBF:        LDA #$04E5                
CODE_2A8BC2:        STA $1606,x               
CODE_2A8BC5:        DEX                       
CODE_2A8BC6:        DEX                       
CODE_2A8BC7:        BPL CODE_2A8BC2           
CODE_2A8BC9:        LDA #$04E9                
CODE_2A8BCC:        STA $1624                 
CODE_2A8BCF:        LDA #$04EA                
CODE_2A8BD2:        STA $1626                 
CODE_2A8BD5:        LDA #$FFFF                
CODE_2A8BD8:        STA $1646                 
CODE_2A8BDB:        SEP #$20                  
CODE_2A8BDD:        JSR CODE_2A8C9A           
CODE_2A8BE0:        REP #$20                  
CODE_2A8BE2:        LDA #$1000                
CODE_2A8BE5:        XBA                       
CODE_2A8BE6:        STA $1602                 
CODE_2A8BE9:        LDA #$C02E                
CODE_2A8BEC:        XBA                       
CODE_2A8BED:        STA $1604                 
CODE_2A8BF0:        LDA #$30FB                
CODE_2A8BF3:        STA $1606                 
CODE_2A8BF6:        LDA #$FFFF                
CODE_2A8BF9:        STA $1608                 
CODE_2A8BFC:        SEP #$20                  
CODE_2A8BFE:        JSR CODE_2A8C9A           
CODE_2A8C01:        LDA #$10                  
CODE_2A8C03:        STA $1602                 
CODE_2A8C06:        LDA #$1F                  
CODE_2A8C08:        STA $1603                 
CODE_2A8C0B:        JSR CODE_2A8C9A           
CODE_2A8C0E:        REP #$20                  
CODE_2A8C10:        LDA #$1061                
CODE_2A8C13:        XBA                       
CODE_2A8C14:        STA $1602                 
CODE_2A8C17:        LDA #$8029                
CODE_2A8C1A:        XBA                       
CODE_2A8C1B:        STA $1604                 
CODE_2A8C1E:        LDA #$24D8                
CODE_2A8C21:        STA $1606                 
CODE_2A8C24:        LDA #$24DB                
CODE_2A8C27:        LDX #$24                  
CODE_2A8C29:        STA $1608,x               
CODE_2A8C2C:        DEX                       
CODE_2A8C2D:        DEX                       
CODE_2A8C2E:        BPL CODE_2A8C29           
CODE_2A8C30:        LDA #$24EB                
CODE_2A8C33:        STA $1618                 
CODE_2A8C36:        LDA #$24EC                
CODE_2A8C39:        STA $161A                 
CODE_2A8C3C:        LDA #$24ED                
CODE_2A8C3F:        STA $161C                 
CODE_2A8C42:        LDA #$24E4                
CODE_2A8C45:        STA $162E                 
CODE_2A8C48:        LDA #$FFFF                
CODE_2A8C4B:        STA $1630                 
CODE_2A8C4E:        SEP #$20                  
CODE_2A8C50:        JSR CODE_2A8C9A           
CODE_2A8C53:        REP #$20                  
CODE_2A8C55:        LDA #$107E                
CODE_2A8C58:        XBA                       
CODE_2A8C59:        STA $1602                 
CODE_2A8C5C:        LDA #$24DA                
CODE_2A8C5F:        STA $1606                 
CODE_2A8C62:        LDA #$24E3                
CODE_2A8C65:        LDX #$24                  
CODE_2A8C67:        STA $1608,x               
CODE_2A8C6A:        DEX                       
CODE_2A8C6B:        DEX                       
CODE_2A8C6C:        BPL CODE_2A8C67           
CODE_2A8C6E:        LDA #$24EE                
CODE_2A8C71:        STA $1618                 
CODE_2A8C74:        LDA #$24F0                
CODE_2A8C77:        STA $161A                 
CODE_2A8C7A:        LDA #$24F1                
CODE_2A8C7D:        STA $161C                 
CODE_2A8C80:        LDA #$24E6                
CODE_2A8C83:        STA $162E                 
CODE_2A8C86:        SEP #$20                  
CODE_2A8C88:        JSR CODE_2A8C9A           
CODE_2A8C8B:        STZ $1600                 
CODE_2A8C8E:        STZ $1601                 
CODE_2A8C91:        LDA #$FF                  
CODE_2A8C93:        STA $1602                 
CODE_2A8C96:        STA $1603                 
CODE_2A8C99:        RTL                       

CODE_2A8C9A:        REP #$20                  
CODE_2A8C9C:        LDA #$1602                
CODE_2A8C9F:        STA $36                   
CODE_2A8CA1:        LDX #$00                  
CODE_2A8CA3:        STX $38                   
CODE_2A8CA5:        SEP #$20                  
CODE_2A8CA7:        JSL CODE_29E8AB           
CODE_2A8CAB:        RTS                       

CODE_2A8CAC:        PHB                       
CODE_2A8CAD:        LDA #$7F                  
CODE_2A8CAF:        PHA                       
CODE_2A8CB0:        PLB                       
CODE_2A8CB1:        REP #$30                  
CODE_2A8CB3:        LDX #$01AE                
CODE_2A8CB6:        STZ $0000,x               
CODE_2A8CB9:        STZ $01B0,x               
CODE_2A8CBC:        STZ $0360,x               
CODE_2A8CBF:        STZ $0510,x               
CODE_2A8CC2:        STZ $06C0,x               
CODE_2A8CC5:        STZ $0870,x               
CODE_2A8CC8:        STZ $0A20,x               
CODE_2A8CCB:        STZ $0BD0,x               
CODE_2A8CCE:        STZ $0D80,x               
CODE_2A8CD1:        DEX                       
CODE_2A8CD2:        DEX                       
CODE_2A8CD3:        BPL CODE_2A8CB6           
CODE_2A8CD5:        SEP #$30                  
CODE_2A8CD7:        PLB                       
CODE_2A8CD8:        RTS                       

CODE_2A8CD9:        STA $7F0000,x             
CODE_2A8CDD:        STA $7F0360,x             
CODE_2A8CE1:        STA $7F06C0,x             
CODE_2A8CE5:        STA $7F0A20,x             
CODE_2A8CE9:        STA $7F0D80,x             
CODE_2A8CED:        RTS                       

CODE_2A8CEE:        STA $7F0010,x             
CODE_2A8CF2:        STA $7F0370,x             
CODE_2A8CF6:        STA $7F06D0,x             
CODE_2A8CFA:        STA $7F0A30,x             
CODE_2A8CFE:        STA $7F0D90,x             
CODE_2A8D02:        RTS                       

CODE_2A8D03:        PHB                       
CODE_2A8D04:        LDY #$7F                  
CODE_2A8D06:        PHY                       
CODE_2A8D07:        PLB                       
CODE_2A8D08:        STA $0000,x               
CODE_2A8D0B:        STA $01B0,x               
CODE_2A8D0E:        STA $0360,x               
CODE_2A8D11:        STA $0510,x               
CODE_2A8D14:        STA $06C0,x               
CODE_2A8D17:        STA $0870,x               
CODE_2A8D1A:        STA $0A20,x               
CODE_2A8D1D:        STA $0BD0,x               
CODE_2A8D20:        STA $0D80,x               
CODE_2A8D23:        PLB                       
CODE_2A8D24:        RTS                       

CODE_2A8D25:        PHB                       
CODE_2A8D26:        LDY #$7F                  
CODE_2A8D28:        PHY                       
CODE_2A8D29:        PLB                       
CODE_2A8D2A:        STA $0100,x               
CODE_2A8D2D:        STA $02B0,x               
CODE_2A8D30:        STA $0460,x               
CODE_2A8D33:        STA $0610,x               
CODE_2A8D36:        STA $07C0,x               
CODE_2A8D39:        STA $0970,x               
CODE_2A8D3C:        STA $0B20,x               
CODE_2A8D3F:        STA $0CD0,x               
CODE_2A8D42:        STA $0E80,x               
CODE_2A8D45:        PLB                       
CODE_2A8D46:        RTS                       

PNTR_2A8D47:        dl $2ADC80
                    dl $2ADCE6
                    dl $2ADCFB
                    dl $2ADD3A
                    dl $2ADD43
                    dl $2ADD59
                    dl $2ADD89
                    dl $2ADD9E
                    dl $2ADDB9
                    dl $2ADE3C
                    dl $2ADE70
                    dl $2ADECF
                    dl $2ADEDE
                    dl $2ADEFF
                    dl $2ADF36
                    dl $2ADF96
                    dl $2AE059
                    dl $2AE07D
                    dl $2AE080
                    dl $2AE083
                    dl $2ADE70
                    dl $2AE086
                    dl $2AE092
                    dl $2ADF36
                    dl $2ADEFF
                    dl $2ADD43
                    dl $2AE0A4
                    dl $2AE0C7
                    dl $2AE13C
                    dl $2AE086
                    dl $2AE1D8
                    dl $2AE23E
                    dl $2ADCB0
                    dl $2AE241
                    dl $2ADCE6
                    dl $2ADCFB
                    dl $2ADCD4
                  
CODE_2A8DB6:        PHB                       ;Is this the level loading routine?
CODE_2A8DB7:        PHK                       ;
CODE_2A8DB8:        PLB                       
CODE_2A8DB9:        LDA $0350                 
CODE_2A8DBC:        CMP #$17                  
CODE_2A8DBE:        BEQ CODE_2A8DC0           
CODE_2A8DC0:        JSR CODE_2A8CAC           
CODE_2A8DC3:        STZ $0293                 
CODE_2A8DC6:        STZ $420C                 
CODE_2A8DC9:        LDA $0350                 
CODE_2A8DCC:        ASL A                     
CODE_2A8DCD:        CLC                       
CODE_2A8DCE:        ADC $0350                 
CODE_2A8DD1:        TAX                       
CODE_2A8DD2:        LDA.w PNTR_2A8D47-1,x               
CODE_2A8DD5:        STA $2D                   
CODE_2A8DD7:        REP #$20                  
CODE_2A8DD9:        LDA.w PNTR_2A8D47-3,x               
CODE_2A8DDC:        STA $2B                   
CODE_2A8DDE:        SEP #$20                  
CODE_2A8DE0:        LDY #$00                  
CODE_2A8DE2:        LDA [$2B],y               
CODE_2A8DE4:        STA $02C5                 
CODE_2A8DE7:        INY                       
CODE_2A8DE8:        LDA [$2B],y               
CODE_2A8DEA:        STA $034F                 
CODE_2A8DED:        REP #$30                  
CODE_2A8DEF:        LDA $2B                   
CODE_2A8DF1:        CLC                       
CODE_2A8DF2:        ADC #$0002                
CODE_2A8DF5:        STA $2B                   
CODE_2A8DF7:        LDA $0350                 
CODE_2A8DFA:        AND #$00FF                
CODE_2A8DFD:        ASL A                     
CODE_2A8DFE:        TAX                       
CODE_2A8DFF:        SEP #$20                  
CODE_2A8E01:        JMP (PNTR_2A8E08,x)             

CODE_2A8E04:        SEP #$10                  
CODE_2A8E06:        PLB                       
CODE_2A8E07:        RTL                       

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

CODE_2A8E54:        PHA
CODE_2A8E55:        ROL A
CODE_2A8E56:        ROL A                     
CODE_2A8E57:        ROL A                     
CODE_2A8E58:        ROL A                     
CODE_2A8E59:        AND #$07                  
CODE_2A8E5B:        STA $04                   
CODE_2A8E5D:        PLA                       
CODE_2A8E5E:        AND #$1F                  
CODE_2A8E60:        XBA                       
CODE_2A8E61:        INY                       
CODE_2A8E62:        LDA [$2B],y               
CODE_2A8E64:        REP #$20                  
CODE_2A8E66:        LSR A                     
CODE_2A8E67:        LSR A                     
CODE_2A8E68:        LSR A                     
CODE_2A8E69:        LSR A                     
CODE_2A8E6A:        STA $00                   
CODE_2A8E6C:        SEP #$20                  
CODE_2A8E6E:        LDA [$2B],y               
CODE_2A8E70:        AND #$0F                  
CODE_2A8E72:        BEQ CODE_2A8E88           
CODE_2A8E74:        STA $02                   
CODE_2A8E76:        STZ $03                   
CODE_2A8E78:        REP #$20                  
CODE_2A8E7A:        LDA $00                   
CODE_2A8E7C:        CLC                       
CODE_2A8E7D:        ADC #$01B0                
CODE_2A8E80:        STA $00                   
CODE_2A8E82:        DEC $02                   
CODE_2A8E84:        BNE CODE_2A8E7A           
CODE_2A8E86:        SEP #$20                  
CODE_2A8E88:        INY                       
CODE_2A8E89:        LDA [$2B],y               
CODE_2A8E8B:        AND #$0F                  
CODE_2A8E8D:        STA $D8                   
CODE_2A8E8F:        STZ $D9                   
CODE_2A8E91:        LDA [$2B],y               
CODE_2A8E93:        AND #$F0                  
CODE_2A8E95:        LSR A                     
CODE_2A8E96:        LSR A                     
CODE_2A8E97:        LSR A                     
CODE_2A8E98:        TAX                       
CODE_2A8E99:        STZ $DA                   
CODE_2A8E9B:        STZ $DB                   
CODE_2A8E9D:        LDA $04                   
CODE_2A8E9F:        BEQ CODE_2A8EA6           
CODE_2A8EA1:        INY                       
CODE_2A8EA2:        LDA [$2B],y               
CODE_2A8EA4:        STA $DA                   
CODE_2A8EA6:        REP #$20                  
CODE_2A8EA8:        LDA $04                   
CODE_2A8EAA:        AND #$00FF                
CODE_2A8EAD:        BEQ CODE_2A8EB1           
CODE_2A8EAF:        INC $2B                   
CODE_2A8EB1:        INC $2B                   
CODE_2A8EB3:        INC $2B                   
CODE_2A8EB5:        INC $2B                   
CODE_2A8EB7:        SEP #$20                  
CODE_2A8EB9:        RTS                       

CODE_2A8EBA:        SEP #$10                  
CODE_2A8EBC:        LDY #$00                  
CODE_2A8EBE:        LDX #$70                  
CODE_2A8EC0:        LDA #$15                  
CODE_2A8EC2:        JSR CODE_2A8D25           
CODE_2A8EC5:        INX                       
CODE_2A8EC6:        TXA                       
CODE_2A8EC7:        AND #$0F                  
CODE_2A8EC9:        BNE CODE_2A8EC0           
CODE_2A8ECB:        LDA #$15                  
CODE_2A8ECD:        JSR CODE_2A8D25           
CODE_2A8ED0:        INX                       
CODE_2A8ED1:        TXA                       
CODE_2A8ED2:        AND #$0F                  
CODE_2A8ED4:        BNE CODE_2A8ECB           
CODE_2A8ED6:        REP #$10                  
CODE_2A8ED8:        LDX #$0170                
CODE_2A8EDB:        LDA #$20                  
CODE_2A8EDD:        JSR CODE_2A8CD9           
CODE_2A8EE0:        INX                       
CODE_2A8EE1:        LDA #$23                  
CODE_2A8EE3:        JSR CODE_2A8CD9           
CODE_2A8EE6:        INX                       
CODE_2A8EE7:        JSR CODE_2A8CD9           
CODE_2A8EEA:        INX                       
CODE_2A8EEB:        JSR CODE_2A8CD9           
CODE_2A8EEE:        INX                       
CODE_2A8EEF:        JSR CODE_2A8CD9           
CODE_2A8EF2:        INX                       
CODE_2A8EF3:        LDA #$21                  
CODE_2A8EF5:        JSR CODE_2A8CD9           
CODE_2A8EF8:        INX                       
CODE_2A8EF9:        LDA #$0F                  
CODE_2A8EFB:        JSR CODE_2A8CD9           
CODE_2A8EFE:        LDX #$0324                
CODE_2A8F01:        JSR CODE_2A8CD9           
CODE_2A8F04:        SEP #$10                  
CODE_2A8F06:        LDY #$00                  
CODE_2A8F08:        LDA [$2B],y               
CODE_2A8F0A:        CMP #$FF                  
CODE_2A8F0C:        BEQ CODE_2A8F16           
CODE_2A8F0E:        JSR CODE_2A8E54           
CODE_2A8F11:        JSR (PNTR_2A8F18,x)             
CODE_2A8F14:        BRA CODE_2A8F06           

CODE_2A8F16:        PLB                       
CODE_2A8F17:        RTL                       

PNTR_2A8F18:        dw CODE_2A8F1E
                    dw CODE_2A8F58
                    dw CODE_2A8F78

CODE_2A8F1E:        REP #$10
CODE_2A8F20:        LDX $00
CODE_2A8F22:        LDA #$11                  
CODE_2A8F24:        JSR CODE_2A8CD9
CODE_2A8F27:        LDA #$16
CODE_2A8F29:        JSR CODE_2A8CEE
CODE_2A8F2C:        LDA $D8
CODE_2A8F2E:        BEQ CODE_2A8F4A           
CODE_2A8F30:        INX                       
CODE_2A8F31:        LDA #$19                  
CODE_2A8F33:        JSR CODE_2A8CD9           
CODE_2A8F36:        LDA #$1C                  
CODE_2A8F38:        JSR CODE_2A8CEE           
CODE_2A8F3B:        INX                       
CODE_2A8F3C:        LDA #$1A                  
CODE_2A8F3E:        JSR CODE_2A8CD9           
CODE_2A8F41:        LDA #$1D                  
CODE_2A8F43:        JSR CODE_2A8CEE           
CODE_2A8F46:        DEC $D8                   
CODE_2A8F48:        BNE CODE_2A8F30           
CODE_2A8F4A:        INX                       
CODE_2A8F4B:        LDA #$12                  
CODE_2A8F4D:        JSR CODE_2A8CD9           
CODE_2A8F50:        LDA #$17                  
CODE_2A8F52:        JSR CODE_2A8CEE           
CODE_2A8F55:        SEP #$10                  
CODE_2A8F57:        RTS                       

CODE_2A8F58:        REP #$10                  
CODE_2A8F5A:        LDX $00                   
CODE_2A8F5C:        LDA #$25                  
CODE_2A8F5E:        JSR CODE_2A8CD9           
CODE_2A8F61:        LDA $D8                   
CODE_2A8F63:        BEQ CODE_2A8F6F           
CODE_2A8F65:        INX                       
CODE_2A8F66:        LDA #$26                  
CODE_2A8F68:        JSR CODE_2A8CD9           
CODE_2A8F6B:        DEC $D8                   
CODE_2A8F6D:        BNE CODE_2A8F65           
CODE_2A8F6F:        INX                       
CODE_2A8F70:        LDA #$27                  
CODE_2A8F72:        JSR CODE_2A8CD9           
CODE_2A8F75:        SEP #$10                  
CODE_2A8F77:        RTS                       

CODE_2A8F78:        LDA #$2A                  
CODE_2A8F7A:        STA $08                   
CODE_2A8F7C:        STA $0B                   
CODE_2A8F7E:        STA $0E                   
CODE_2A8F80:        REP #$30                  
CODE_2A8F82:        LDX $D8                   
CODE_2A8F84:        LDA.w PNTR_2A8FF3,x               
CODE_2A8F87:        STA $06                   
CODE_2A8F89:        LDA.w PNTR_2A9001,x               
CODE_2A8F8C:        STA $09                   
CODE_2A8F8E:        LDA.w PNTR_2A900F,x               
CODE_2A8F91:        STA $0C                   
CODE_2A8F93:        SEP #$20                  
CODE_2A8F95:        LDA.w DATA_2A8FE5,x               
CODE_2A8F98:        STA $0F                   
CODE_2A8F9A:        LDX $00                   
CODE_2A8F9C:        LDY #$0000                
CODE_2A8F9F:        LDA [$0C]                 
CODE_2A8FA1:        STA $02                   
CODE_2A8FA3:        STZ $04                   
CODE_2A8FA5:        STZ $05                   
CODE_2A8FA7:        LDA [$06],y               
CODE_2A8FA9:        JSR CODE_2A8CD9           
CODE_2A8FAC:        INY                       
CODE_2A8FAD:        INX                       
CODE_2A8FAE:        TXA                       
CODE_2A8FAF:        AND #$0F                  
CODE_2A8FB1:        BNE CODE_2A8FBD           
CODE_2A8FB3:        REP #$20                  
CODE_2A8FB5:        TXA                       
CODE_2A8FB6:        CLC                       
CODE_2A8FB7:        ADC #$01A0                
CODE_2A8FBA:        TAX                       
CODE_2A8FBB:        SEP #$20                  
CODE_2A8FBD:        DEC $02                   
CODE_2A8FBF:        BNE CODE_2A8FA7           
CODE_2A8FC1:        DEC $0F                   
CODE_2A8FC3:        BEQ CODE_2A8FE2           
CODE_2A8FC5:        PHY                       
CODE_2A8FC6:        REP #$20                  
CODE_2A8FC8:        LDA $04                   
CODE_2A8FCA:        ASL A                     
CODE_2A8FCB:        TAY                       
CODE_2A8FCC:        LDA $00                   
CODE_2A8FCE:        CLC                       
CODE_2A8FCF:        ADC [$09],y               
CODE_2A8FD1:        STA $00                   
CODE_2A8FD3:        SEP #$20                  
CODE_2A8FD5:        INC $04                   
CODE_2A8FD7:        LDY $04                   
CODE_2A8FD9:        LDA [$0C],y               
CODE_2A8FDB:        STA $02                   
CODE_2A8FDD:        LDX $00                   
CODE_2A8FDF:        PLY                       
CODE_2A8FE0:        BRA CODE_2A8FA7           

CODE_2A8FE2:        SEP #$10                  
CODE_2A8FE4:        RTS                       

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

CODE_2A9144:        SEP #$10                  
CODE_2A9146:        STZ $02D9                 
CODE_2A9149:        LDA $0350                 
CODE_2A914C:        CMP #$23                  
CODE_2A914E:        BNE CODE_2A9155           
CODE_2A9150:        LDA #$01                  
CODE_2A9152:        STA $02D9                 
CODE_2A9155:        LDX #$A0                  
CODE_2A9157:        LDA #$40                  
CODE_2A9159:        STA $00                   
CODE_2A915B:        LDA #$06                  
CODE_2A915D:        JSR CODE_2A8D03           
CODE_2A9160:        INX                       
CODE_2A9161:        DEC $00                   
CODE_2A9163:        BNE CODE_2A915D           
CODE_2A9165:        LDA #$0C                  
CODE_2A9167:        STA $02                   
CODE_2A9169:        LDA #$0D                  
CODE_2A916B:        STA $03                   
CODE_2A916D:        LDA #$02                  
CODE_2A916F:        STA $01                   
CODE_2A9171:        LDA #$08                  
CODE_2A9173:        STA $00                   
CODE_2A9175:        LDA $02                   
CODE_2A9177:        JSR CODE_2A8D03           
CODE_2A917A:        INX                       
CODE_2A917B:        LDA $03                   
CODE_2A917D:        JSR CODE_2A8D03           
CODE_2A9180:        INX                       
CODE_2A9181:        DEC $00                   
CODE_2A9183:        BNE CODE_2A9175           
CODE_2A9185:        INC $02                   
CODE_2A9187:        INC $02                   
CODE_2A9189:        INC $03                   
CODE_2A918B:        INC $03                   
CODE_2A918D:        DEC $01                   
CODE_2A918F:        BNE CODE_2A9171           
CODE_2A9191:        LDA #$04                  
CODE_2A9193:        STA $01                   
CODE_2A9195:        LDA #$08                  
CODE_2A9197:        STA $00                   
CODE_2A9199:        LDA #$10                  
CODE_2A919B:        JSR CODE_2A8D25           
CODE_2A919E:        INX                       
CODE_2A919F:        LDA #$10                  
CODE_2A91A1:        JSR CODE_2A8D25           
CODE_2A91A4:        INX                       
CODE_2A91A5:        DEC $00                   
CODE_2A91A7:        BNE CODE_2A9199           
CODE_2A91A9:        DEC $01                   
CODE_2A91AB:        BNE CODE_2A9195           
CODE_2A91AD:        LDY #$00                  
CODE_2A91AF:        LDA [$2B],y               
CODE_2A91B1:        CMP #$FF                  
CODE_2A91B3:        BEQ CODE_2A91BD           
CODE_2A91B5:        JSR CODE_2A8E54           
CODE_2A91B8:        JSR (PNTR_2A91BF,x)             
CODE_2A91BB:        BRA CODE_2A91AD           

CODE_2A91BD:        PLB                       
CODE_2A91BE:        RTL                       

PNTR_2A91BF:        dw CODE_2A91C3
                    dw CODE_2A9221

CODE_2A91C3:        LDA $0350                 
CODE_2A91C6:        CMP #$23                  
CODE_2A91C8:        BEQ CODE_2A9216           
CODE_2A91CA:        REP #$10                  
CODE_2A91CC:        LDX $00                   
CODE_2A91CE:        LDA #$08                  
CODE_2A91D0:        STA $02                   
CODE_2A91D2:        STZ $03                   
CODE_2A91D4:        LDA #$11                  
CODE_2A91D6:        STA $04                   
CODE_2A91D8:        LDY $D8                   
CODE_2A91DA:        LDA $04                   
CODE_2A91DC:        JSR CODE_2A8CD9           
CODE_2A91DF:        INC $04                   
CODE_2A91E1:        INX                       
CODE_2A91E2:        TXA                       
CODE_2A91E3:        AND #$0F                  
CODE_2A91E5:        BNE CODE_2A91F1           
CODE_2A91E7:        REP #$20                  
CODE_2A91E9:        TXA                       
CODE_2A91EA:        CLC                       
CODE_2A91EB:        ADC #$01A0                
CODE_2A91EE:        TAX                       
CODE_2A91EF:        SEP #$20                  
CODE_2A91F1:        DEY                       
CODE_2A91F2:        BNE CODE_2A91DA           
CODE_2A91F4:        LDY $02                   
CODE_2A91F6:        REP #$20                  
CODE_2A91F8:        LDA $00                   
CODE_2A91FA:        CLC                       
CODE_2A91FB:        ADC DATA_2A9217,y               
CODE_2A91FE:        STA $00                   
CODE_2A9200:        TAX                       
CODE_2A9201:        SEP #$20                  
CODE_2A9203:        DEC $02                   
CODE_2A9205:        DEC $02                   
CODE_2A9207:        BPL CODE_2A91D8           
CODE_2A9209:        LDA #$17                  
CODE_2A920B:        JSR CODE_2A8CD9           
CODE_2A920E:        LDA #$18                  
CODE_2A9210:        INX                       
CODE_2A9211:        JSR CODE_2A8CD9           
CODE_2A9214:        SEP #$10                  
CODE_2A9216:        RTS                       

DATA_2A9217:        dw $0010,$000F,$0010,$0010
                    dw $0010
           
CODE_2A9221:        LDA #$2A                  
CODE_2A9223:        STA $08                   
CODE_2A9225:        STA $0B                   
CODE_2A9227:        STA $0E                   
CODE_2A9229:        REP #$30                  
CODE_2A922B:        LDX $D8                   
CODE_2A922D:        LDA.w PNTR_2A925C,x               
CODE_2A9230:        STA $06                   
CODE_2A9232:        LDA.w PNTR_2A9266,x               
CODE_2A9235:        STA $09                   
CODE_2A9237:        LDA.w PNTR_2A9270,x               
CODE_2A923A:        STA $0C                   
CODE_2A923C:        STZ $04                   
CODE_2A923E:        SEP #$20                  
CODE_2A9240:        LDA.w DATA_2A9252,x               
CODE_2A9243:        STA $0F                   
CODE_2A9245:        LDX $00                   
CODE_2A9247:        LDY #$0000                
CODE_2A924A:        LDA [$0C]                 
CODE_2A924C:        STA $02                   
CODE_2A924E:        JSR CODE_2A8FA7           
CODE_2A9251:        RTS                       

DATA_2A9252:        db $05,$00,$06,$00,$05,$00,$06,$00
                    db $04,$00

PNTR_2A925C:                   dw DATA_2A927A
                                  dw DATA_2A929A
       dw DATA_2A92B9
       dw DATA_2A92DC
       dw DATA_2A92EB
     
PNTR_2A9266:                dw DATA_2A92FE
       dw DATA_2A9306
       dw DATA_2A9310
       dw DATA_2A9318
       dw DATA_2A9322
     
PNTR_2A9270:                     dw DATA_2A9328
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

DATA_2A9333:           db $03,$09,$0A,$0A,$03

DATA_2A9338:        db $02,$04,$03,$01,$03,$02

DATA_2A933E:        db $02,$09,$06,$02

CODE_2A9342:        SEP #$10
CODE_2A9344:        LDX #$00
CODE_2A9346:        LDA #$02
CODE_2A9348:        STA $7F0000,x
CODE_2A934C:        INX
CODE_2A934D:        CPX #$30        
CODE_2A934F:        BNE CODE_2A9346           
CODE_2A9351:        LDA #$04                  
CODE_2A9353:        STA $7F0000,x             
CODE_2A9357:        INX                       
CODE_2A9358:        LDA #$07                  
CODE_2A935A:        STA $7F0000,x             
CODE_2A935E:        INX                       
CODE_2A935F:        CPX #$40     
CODE_2A9361:        BNE CODE_2A9351
CODE_2A9363:        LDX #$50               
CODE_2A9365:        LDA #$90                  
CODE_2A9367:        STA $00                   
CODE_2A9369:        LDA #$10                  
CODE_2A936B:        STA $7F0000,x             
CODE_2A936F:        INX                       
CODE_2A9370:        DEC $00                   
CODE_2A9372:        BNE CODE_2A936B           
CODE_2A9374:        LDY #$00                
CODE_2A9376:        LDA [$2B],y                       
CODE_2A9378:        CMP #$FF                  
CODE_2A937A:        BEQ CODE_2A9384           
CODE_2A937C:        JSR CODE_2A8E54           
CODE_2A937F:        JSR (PNTR_2A9386,x)             
CODE_2A9382:        BRA CODE_2A9374           

CODE_2A9384:        PLB                       
CODE_2A9385:        RTL                       

PNTR_2A9386:                   dw CODE_2A9392
                                  dw CODE_2A93D7
       dw CODE_2A93FD
       dw CODE_2A9453
       dw CODE_2A9465
       dw CODE_2A9480

CODE_2A9392:        REP #$10                 
CODE_2A9394:        LDX $00
CODE_2A9396:        LDA #$01                  
CODE_2A9398:        STA $7F0000,x
CODE_2A939C:        REP #$20
CODE_2A939E:        TXA                      
CODE_2A939F:        CLC                       
CODE_2A93A0:        ADC #$0010                  
CODE_2A93A3:        TAX                
CODE_2A93A4:        SEP #$20                  
CODE_2A93A6:        LDA $7F0000,x             
CODE_2A93AA:        CMP #$07                  
CODE_2A93AC:        BEQ CODE_2A93C6           
CODE_2A93AE:        LDA #$03                  
CODE_2A93B0:        STA $7F0000,x             
CODE_2A93B4:        REP #$20                  
CODE_2A93B6:        TXA                       
CODE_2A93B7:        CLC                       
CODE_2A93B8:        ADC #$0010                
CODE_2A93BB:        TAX                       
CODE_2A93BC:        SEP #$20                  
CODE_2A93BE:        DEC $D8                   
CODE_2A93C0:        DEC $D8                   
CODE_2A93C2:        BPL CODE_2A9396           
CODE_2A93C4:        BRA CODE_2A93D4           

CODE_2A93C6:        LDA #$05                  
CODE_2A93C8:        STA $7F0000,x             
CODE_2A93CC:        LDA #$06                  
CODE_2A93CE:        STA $7F0001,x             
CODE_2A93D2:        BRA CODE_2A93B4           

CODE_2A93D4:        SEP #$10                  
CODE_2A93D6:        RTS                       

CODE_2A93D7:        LDY #$00                  
CODE_2A93D9:        LDX $00                   
CODE_2A93DB:        LDA $7F0000,x             
CODE_2A93DF:        BNE CODE_2A93E9           
CODE_2A93E1:        LDA $93EF,y               
CODE_2A93E4:        STA $7F0000,x             
CODE_2A93E8:        INY                       
CODE_2A93E9:        INX                       
CODE_2A93EA:        DEC $D8                   
CODE_2A93EC:        BPL CODE_2A93DB           
CODE_2A93EE:        RTS                       

DATA_2A93EF:        db $08,$09,$0A,$0A,$0A,$0B,$0C,$08
                    db $08,$08,$0D,$0E,$0F,$08     
              
CODE_2A93FD:        LDY #$00                  
CODE_2A93FF:        LDX $00                   
CODE_2A9401:        LDA $1EBF                 
CODE_2A9404:        CMP #$24                  
CODE_2A9406:        BEQ CODE_2A9425           
CODE_2A9408:        LDA $9441,y               
CODE_2A940B:        STA $7F0000,x             
CODE_2A940F:        LDA $9444,y               
CODE_2A9412:        STA $7F0010,x             
CODE_2A9416:        LDA $9447,y               
CODE_2A9419:        STA $7F0020,x             
CODE_2A941D:        INX                       
CODE_2A941E:        INY                       
CODE_2A941F:        DEC $D8                   
CODE_2A9421:        BPL CODE_2A9408           
CODE_2A9423:        BRA CODE_2A9440           

CODE_2A9425:        LDA $944A,y               
CODE_2A9428:        STA $7F0000,x             
CODE_2A942C:        LDA $944D,y               
CODE_2A942F:        STA $7F0010,x             
CODE_2A9433:        LDA $9450,y               
CODE_2A9436:        STA $7F0020,x             
CODE_2A943A:        INX                       
CODE_2A943B:        INY                       
CODE_2A943C:        DEC $D8                   
CODE_2A943E:        BPL CODE_2A9425           
CODE_2A9440:        RTS                       

DATA_2A9441:        db $12,$13,$14
DATA_2A9444:        db $16,$17,$14
DATA_2A9447:        db $18,$19,$1A
DATA_2A944A:        db $21,$22,$14
DATA_2A944D:        db $23,$24,$14
DATA_2A9450:        db $18,$19,$1A

CODE_2A9453:        LDX $00
CODE_2A9455:        LDA #$11
CODE_2A9457:        STA $7F0000,X
CODE_2A945B:        TXA
CODE_2A945C:        CLC
CODE_2A945D:        ADC #$10
CODE_2A945F:        TAX          
CODE_2A9460:        DEC $D8                   
CODE_2A9462:        BPL CODE_2A9455           
CODE_2A9464:        RTS                       

CODE_2A9465:        LDX $00                   
CODE_2A9467:        LDA $7F0000,x             
CODE_2A946B:        CMP #$11                  
CODE_2A946D:        BEQ CODE_2A9473           
CODE_2A946F:        LDA #$1B                  
CODE_2A9471:        BRA CODE_2A9475           

CODE_2A9473:        LDA #$1D                  
CODE_2A9475:        STA $7F0000,x             
CODE_2A9479:        LDA #$1C                  
CODE_2A947B:        STA $7F0001,x             
CODE_2A947F:        RTS                       

CODE_2A9480:        LDX $00                   
CODE_2A9482:        LDY $D8                   
CODE_2A9484:        LDA $948C,y               
CODE_2A9487:        STA $7F0000,x             
CODE_2A948B:        RTS                       

DATA_2A948C:        db $15,$1E
                
CODE_2A948E:        SEP #$10                  
CODE_2A9490:        LDX #$60                  
CODE_2A9492:        LDA #$3D                  
CODE_2A9494:        JSR CODE_2A8D03           
CODE_2A9497:        INX                       
CODE_2A9498:        CPX #$70                  
CODE_2A949A:        BNE CODE_2A9494           
CODE_2A949C:        LDA #$01                  
CODE_2A949E:        JSR CODE_2A8D03           
CODE_2A94A1:        INX                       
CODE_2A94A2:        CPX #$80                  
CODE_2A94A4:        BNE CODE_2A949E           
CODE_2A94A6:        LDA #$02                  
CODE_2A94A8:        STA $00                   
CODE_2A94AA:        LDA #$03                  
CODE_2A94AC:        STA $01                   
CODE_2A94AE:        LDA #$08                  
CODE_2A94B0:        STA $02                   
CODE_2A94B2:        LDA #$04                  
CODE_2A94B4:        STA $03                   
CODE_2A94B6:        LDA $00                   
CODE_2A94B8:        JSR CODE_2A8D03           
CODE_2A94BB:        INX                       
CODE_2A94BC:        LDA $01                   
CODE_2A94BE:        JSR CODE_2A8D03           
CODE_2A94C1:        INX                       
CODE_2A94C2:        DEC $02                   
CODE_2A94C4:        BNE CODE_2A94B6           
CODE_2A94C6:        LDA #$08                  
CODE_2A94C8:        STA $02                   
CODE_2A94CA:        INC $00                   
CODE_2A94CC:        INC $00                   
CODE_2A94CE:        INC $01                   
CODE_2A94D0:        INC $01                   
CODE_2A94D2:        DEC $03                   
CODE_2A94D4:        BNE CODE_2A94B6           
CODE_2A94D6:        LDA #$10                  
CODE_2A94D8:        STA $02                   
CODE_2A94DA:        LDA #$0A                  
CODE_2A94DC:        JSR CODE_2A8D03           
CODE_2A94DF:        INX                       
CODE_2A94E0:        DEC $02                   
CODE_2A94E2:        BNE CODE_2A94DC           
CODE_2A94E4:        LDA #$04                  
CODE_2A94E6:        STA $04                   
CODE_2A94E8:        LDA #$0B                  
CODE_2A94EA:        STA $00                   
CODE_2A94EC:        INC A                     
CODE_2A94ED:        STA $01                   
CODE_2A94EF:        INC A                     
CODE_2A94F0:        STA $02                   
CODE_2A94F2:        INC A                     
CODE_2A94F3:        STA $03                   
CODE_2A94F5:        JSR CODE_2A95B9           
CODE_2A94F8:        LDA #$04                  
CODE_2A94FA:        STA $04                   
CODE_2A94FC:        LDA #$0F                  
CODE_2A94FE:        STA $00                   
CODE_2A9500:        INC A                     
CODE_2A9501:        STA $01                   
CODE_2A9503:        INC A                     
CODE_2A9504:        STA $02                   
CODE_2A9506:        INC A                     
CODE_2A9507:        STA $03                   
CODE_2A9509:        JSR CODE_2A95B9           
CODE_2A950C:        LDA #$04                  
CODE_2A950E:        STA $04                   
CODE_2A9510:        LDA #$13                  
CODE_2A9512:        STA $00                   
CODE_2A9514:        LDA #$14                  
CODE_2A9516:        STA $01                   
CODE_2A9518:        LDA #$19                  
CODE_2A951A:        STA $02                   
CODE_2A951C:        LDA #$1A                  
CODE_2A951E:        STA $03                   
CODE_2A9520:        JSR CODE_2A95B9           
CODE_2A9523:        LDX #$70                  
CODE_2A9525:        LDA #$04                  
CODE_2A9527:        STA $04                   
CODE_2A9529:        LDA #$2D                  
CODE_2A952B:        STA $00                   
CODE_2A952D:        LDA #$2E                  
CODE_2A952F:        STA $01                   
CODE_2A9531:        LDA #$33                  
CODE_2A9533:        STA $02                   
CODE_2A9535:        LDA #$34                  
CODE_2A9537:        STA $03                   
CODE_2A9539:        JSR CODE_2A975C           
CODE_2A953C:        LDA #$04                  
CODE_2A953E:        STA $04                   
CODE_2A9540:        LDA #$35                  
CODE_2A9542:        STA $00                   
CODE_2A9544:        INC A                     
CODE_2A9545:        STA $01                   
CODE_2A9547:        INC A                     
CODE_2A9548:        STA $02                   
CODE_2A954A:        INC A                     
CODE_2A954B:        STA $03                   
CODE_2A954D:        JSR CODE_2A975C           
CODE_2A9550:        LDA #$04                  
CODE_2A9552:        STA $04                   
CODE_2A9554:        LDA #$39                  
CODE_2A9556:        STA $00                   
CODE_2A9558:        INC A                     
CODE_2A9559:        STA $01                   
CODE_2A955B:        INC A                     
CODE_2A955C:        STA $02                   
CODE_2A955E:        INC A                     
CODE_2A955F:        STA $03                   
CODE_2A9561:        JSR CODE_2A975C           
CODE_2A9564:        LDA #$0A                  
CODE_2A9566:        JSR CODE_2A8D25           
CODE_2A9569:        INX                       
CODE_2A956A:        CPX #$B0                  
CODE_2A956C:        BNE CODE_2A9564           
CODE_2A956E:        LDY #$00                  
CODE_2A9570:        LDA [$2B],y               
CODE_2A9572:        CMP #$FF                  
CODE_2A9574:        BEQ CODE_2A95B7           
CODE_2A9576:        JSR CODE_2A8E54           
CODE_2A9579:        STZ $02                   
CODE_2A957B:        REP #$20                  
CODE_2A957D:        LDA $00                   
CODE_2A957F:        STA $04                   
CODE_2A9581:        SEP #$20                  
CODE_2A9583:        LDA #$09                  
CODE_2A9585:        STA $03                   
CODE_2A9587:        LDX $02                   
CODE_2A9589:        LDA $95D6,x               
CODE_2A958C:        REP #$10                  
CODE_2A958E:        LDX $04                   
CODE_2A9590:        JSR CODE_2A8CD9           
CODE_2A9593:        REP #$20                  
CODE_2A9595:        LDA $04                   
CODE_2A9597:        CLC                       
CODE_2A9598:        ADC #$0010                
CODE_2A959B:        STA $04                   
CODE_2A959D:        SEP #$30                  
CODE_2A959F:        INC $02                   
CODE_2A95A1:        DEC $03                   
CODE_2A95A3:        BNE CODE_2A9587           
CODE_2A95A5:        INC $00                   
CODE_2A95A7:        LDA $02                   
CODE_2A95A9:        CMP #$24                  
CODE_2A95AB:        BNE CODE_2A957B           
CODE_2A95AD:        LDA $D8                   
CODE_2A95AF:        BEQ CODE_2A95B5           
CODE_2A95B1:        DEC $D8                   
CODE_2A95B3:        BRA CODE_2A9579           

CODE_2A95B5:        BRA CODE_2A956E           

CODE_2A95B7:        PLB                       
CODE_2A95B8:        RTL                       

CODE_2A95B9:        LDA $00                   
CODE_2A95BB:        JSR CODE_2A8D03           
CODE_2A95BE:        INX                       
CODE_2A95BF:        LDA $01                   
CODE_2A95C1:        JSR CODE_2A8D03           
CODE_2A95C4:        INX                       
CODE_2A95C5:        LDA $02                   
CODE_2A95C7:        JSR CODE_2A8D03           
CODE_2A95CA:        INX                       
CODE_2A95CB:        LDA $03                   
CODE_2A95CD:        JSR CODE_2A8D03           
CODE_2A95D0:        INX                       
CODE_2A95D1:        DEC $04                   
CODE_2A95D3:        BNE CODE_2A95B9           
CODE_2A95D5:        RTS                       

DATA_2A95D6:        db $15,$1B,$00,$00,$00,$00,$00,$29
                    db $2F,$16,$1C,$1F,$21,$23,$25,$27
                    db $2A,$30,$17,$1D,$20,$22,$24,$26
                    db $28,$2B,$31,$18,$1E,$00,$00,$00
                    db $00,$00,$2C,$32

CODE_2A95FA:        SEP #$10
CODE_2A95FC:        LDA #$3A
CODE_2A95FE:        STA $00                   
CODE_2A9600:        LDA #$01                  
CODE_2A9602:        STA $01                   
CODE_2A9604:        LDA #$08                  
CODE_2A9606:        STA $04                   
CODE_2A9608:        LDX #$E0                  
CODE_2A960A:        JSR CODE_2A973A           
CODE_2A960D:        LDA #$02                  
CODE_2A960F:        STA $00                   
CODE_2A9611:        LDA #$03                  
CODE_2A9613:        STA $01                   
CODE_2A9615:        LDA #$08                  
CODE_2A9617:        STA $04                   
CODE_2A9619:        JSR CODE_2A973A           
CODE_2A961C:        LDA #$04                  
CODE_2A961E:        STA $00                   
CODE_2A9620:        LDA #$05                  
CODE_2A9622:        STA $01                   
CODE_2A9624:        LDA #$08                  
CODE_2A9626:        STA $04                   
CODE_2A9628:        JSR CODE_2A974B           
CODE_2A962B:        LDA #$0B                  
CODE_2A962D:        STA $00                   
CODE_2A962F:        LDA #$0C                  
CODE_2A9631:        STA $01                   
CODE_2A9633:        LDA #$08                  
CODE_2A9635:        STA $04                   
CODE_2A9637:        JSR CODE_2A974B           
CODE_2A963A:        LDA #$20                  
CODE_2A963C:        STA $04                   
CODE_2A963E:        LDA #$13                  
CODE_2A9640:        JSR CODE_2A8D25           
CODE_2A9643:        INX                       
CODE_2A9644:        DEC $04                   
CODE_2A9646:        BNE CODE_2A963E           
CODE_2A9648:        LDX #$30                  
CODE_2A964A:        LDA #$10                  
CODE_2A964C:        STA $04                   
CODE_2A964E:        LDA #$13                  
CODE_2A9650:        JSR CODE_2A8D25           
CODE_2A9653:        INX                       
CODE_2A9654:        DEC $04                   
CODE_2A9656:        BNE CODE_2A9650           
CODE_2A9658:        JSR CODE_2A96ED           
CODE_2A965B:        JSR CODE_2A96AD           
CODE_2A965E:        LDA $0350                 
CODE_2A9661:        CMP #$1A                  
CODE_2A9663:        BNE CODE_2A96AB           
CODE_2A9665:        LDA #$00                  
CODE_2A9667:        XBA                       
CODE_2A9668:        INC $034F                 
CODE_2A966B:        REP #$10                  
CODE_2A966D:        LDY #$0510                
CODE_2A9670:        LDX #$05C0                
CODE_2A9673:        LDA #$CF                  
CODE_2A9675:        MVN $7F7F                 
CODE_2A9678:        LDA #$00                  
CODE_2A967A:        XBA                       
CODE_2A967B:        LDY #$06C0                
CODE_2A967E:        LDX #$0770                
CODE_2A9681:        LDA #$CF                  
CODE_2A9683:        MVN $7F7F                 
CODE_2A9686:        SEP #$10                  
CODE_2A9688:        LDX #$E0                  
CODE_2A968A:        LDA #$13                  
CODE_2A968C:        STA $7F05E0,x             
CODE_2A9690:        STA $7F0790,x             
CODE_2A9694:        DEX                       
CODE_2A9695:        BNE CODE_2A968C           
CODE_2A9697:        LDX #$70                  
CODE_2A9699:        JSR CODE_2A96ED           
CODE_2A969C:        PHB                       
CODE_2A969D:        LDA #$2A                  
CODE_2A969F:        PHA                       
CODE_2A96A0:        PLB                       
CODE_2A96A1:        REP #$20                  
CODE_2A96A3:        INC $2B                   
CODE_2A96A5:        SEP #$20                  
CODE_2A96A7:        JSR CODE_2A96AD           
CODE_2A96AA:        PLB                       
CODE_2A96AB:        PLB                       
CODE_2A96AC:        RTL                       

CODE_2A96AD:        LDY #$00                  
CODE_2A96AF:        LDA [$2B],y               
CODE_2A96B1:        CMP #$FF                  
CODE_2A96B3:        BEQ CODE_2A96EC           
CODE_2A96B5:        JSR CODE_2A8E54           
CODE_2A96B8:        LDA #$2A                  
CODE_2A96BA:        STA $08                   
CODE_2A96BC:        STA $0B                   
CODE_2A96BE:        STA $0E                   
CODE_2A96C0:        REP #$30                  
CODE_2A96C2:        LDX $D8                   
CODE_2A96C4:        LDA $9796,x               
CODE_2A96C7:        STA $06                   
CODE_2A96C9:        LDA $97A2,x               
CODE_2A96CC:        STA $09                   
CODE_2A96CE:        LDA $97AE,x               
CODE_2A96D1:        STA $0C                   
CODE_2A96D3:        STZ $04                   
CODE_2A96D5:        SEP #$20                  
CODE_2A96D7:        LDA $978A,x               
CODE_2A96DA:        STA $0F                   
CODE_2A96DC:        LDX $00                   
CODE_2A96DE:        LDY #$0000                
CODE_2A96E1:        LDA [$0C]                 
CODE_2A96E3:        STA $02                   
CODE_2A96E5:        JSR CODE_2A8FA7           
CODE_2A96E8:        SEP #$10                  
CODE_2A96EA:        BRA CODE_2A96AD           

CODE_2A96EC:        RTS                       

CODE_2A96ED:        LDA #$18                  
CODE_2A96EF:        STA $00                   
CODE_2A96F1:        LDA #$19                  
CODE_2A96F3:        STA $01                   
CODE_2A96F5:        LDA #$1E                  
CODE_2A96F7:        STA $02                   
CODE_2A96F9:        LDA #$1B                  
CODE_2A96FB:        STA $03                   
CODE_2A96FD:        LDA #$04                  
CODE_2A96FF:        STA $04                   
CODE_2A9701:        JSR CODE_2A975C           
CODE_2A9704:        LDA #$21                  
CODE_2A9706:        STA $00                   
CODE_2A9708:        LDA #$22                  
CODE_2A970A:        STA $01                   
CODE_2A970C:        LDA #$26                  
CODE_2A970E:        STA $02                   
CODE_2A9710:        LDA #$24                  
CODE_2A9712:        STA $03                   
CODE_2A9714:        LDA #$04                  
CODE_2A9716:        STA $04                   
CODE_2A9718:        JSR CODE_2A975C           
CODE_2A971B:        LDA #$28                  
CODE_2A971D:        STA $00                   
CODE_2A971F:        LDA #$29                  
CODE_2A9721:        STA $01                   
CODE_2A9723:        LDA #$08                  
CODE_2A9725:        STA $04                   
CODE_2A9727:        JSR CODE_2A9779           
CODE_2A972A:        LDA #$38                  
CODE_2A972C:        STA $00                   
CODE_2A972E:        LDA #$39                  
CODE_2A9730:        STA $01                   
CODE_2A9732:        LDA #$08                  
CODE_2A9734:        STA $04                   
CODE_2A9736:        JSR CODE_2A9779           
CODE_2A9739:        RTS                       

CODE_2A973A:        LDA $00                   
CODE_2A973C:        JSR CODE_2A8D03           
CODE_2A973F:        INX                       
CODE_2A9740:        LDA $01                   
CODE_2A9742:        JSR CODE_2A8D03           
CODE_2A9745:        INX                       
CODE_2A9746:        DEC $04                   
CODE_2A9748:        BNE CODE_2A973A           
CODE_2A974A:        RTS                       

CODE_2A974B:        LDA $00                   
CODE_2A974D:        JSR CODE_2A8D25           
CODE_2A9750:        INX                       
CODE_2A9751:        LDA $01                   
CODE_2A9753:        JSR CODE_2A8D25           
CODE_2A9756:        INX                       
CODE_2A9757:        DEC $04                   
CODE_2A9759:        BNE CODE_2A974B           
CODE_2A975B:        RTS                       

CODE_2A975C:        LDA $00                   
CODE_2A975E:        JSR CODE_2A8D25           
CODE_2A9761:        INX                       
CODE_2A9762:        LDA $01                   
CODE_2A9764:        JSR CODE_2A8D25           
CODE_2A9767:        INX                       
CODE_2A9768:        LDA $02                   
CODE_2A976A:        JSR CODE_2A8D25           
CODE_2A976D:        INX                       
CODE_2A976E:        LDA $03                   
CODE_2A9770:        JSR CODE_2A8D25           
CODE_2A9773:        INX                       
CODE_2A9774:        DEC $04                   
CODE_2A9776:        BNE CODE_2A975C           
CODE_2A9778:        RTS                       

CODE_2A9779:        LDA $00                   
CODE_2A977B:        JSR CODE_2A8D25           
CODE_2A977E:        INX                       
CODE_2A977F:        LDA $01                   
CODE_2A9781:        JSR CODE_2A8D25           
CODE_2A9784:        INX                       
CODE_2A9785:        DEC $04                   
CODE_2A9787:        BNE CODE_2A9779           
CODE_2A9789:        RTS                       

DATA_2A978A:        db $06,$00,$04,$00,$06,$00,$06,$00
                    db $09,$00,$06,$00,$BA,$97,$D4,$97
                    db $E6,$97,$FF,$97,$1D,$98,$33,$98
                    db $52,$98,$5C,$98,$62,$98,$6C,$98
                    db $76,$98,$86,$98,$90,$98,$96,$98
                    db $9A,$98,$A0,$98,$A6,$98,$AF,$98
                    db $06,$07,$08,$0D,$0E,$0F,$10,$0D
                    db $0E,$14,$15,$09,$16,$16,$1A,$15
                    db $11,$1C,$1C,$23,$15,$2A,$2B,$2C
                    db $2D,$2E,$09,$16,$0A,$11,$1C,$12
                    db $1D,$10,$11,$1C,$12,$25,$15,$2F
                    db $2C,$30,$31,$32,$09,$16,$0A,$11
                    db $1C,$12,$11,$1C,$12,$17,$06,$07
                    db $1F,$12,$20,$0D,$0E,$27,$12,$20
                    db $33,$34,$35,$36,$37,$09,$16,$0A
                    db $11,$1C,$12,$06,$07,$07,$1F,$12
                    db $17,$0D,$0E,$0E,$27,$12,$20,$0D
                    db $0E,$0E,$27,$12,$20,$33,$34,$34
                    db $35,$36,$37,$09,$16,$16,$11,$1C
                    db $1C,$11,$1C,$1C,$2A,$2B,$2C,$0F
                    db $10,$1A,$15,$23,$15,$23,$15,$2D
                    db $2E,$09,$16,$0A,$11,$1C,$12,$11
                    db $1C,$12,$17,$06,$07,$07,$07,$1F
                    db $12,$20,$0D,$0E,$0E,$0E,$27,$12
                    db $20,$33,$34,$34,$34,$35,$36,$37
                    db $10,$00,$10,$00,$0F,$00,$10,$00
                    db $10,$00,$10,$00,$10,$00,$10,$00
                    db $10,$00,$10,$00,$0F,$00,$10,$00
                    db $10,$00,$10,$00,$0E,$00,$10,$00
                    db $10,$00,$10,$00,$10,$00,$10,$00
                    db $10,$00,$63,$01,$10,$00,$10,$00
                    db $10,$00,$10,$00,$10,$00,$10,$00
                    db $0D,$00,$10,$00,$10,$00,$03,$04
                    db $04,$05,$05,$05,$03,$05,$05,$05
                    db $03,$03,$04,$05,$05,$05,$03,$03
                    db $06,$06,$06,$06,$03,$03,$03,$03
                    db $02,$02,$02,$02,$02,$03,$03,$04
                    db $07,$07,$07
               

CODE_2A98B5:        SEP #$10                  
CODE_2A98B7:        LDX #$10                  
CODE_2A98B9:        LDA #$01                  
CODE_2A98BB:        STA $00                   
CODE_2A98BD:        JSR CODE_2A9924           
CODE_2A98C0:        LDX #$A0                  
CODE_2A98C2:        LDA #$14                  
CODE_2A98C4:        STA $00                   
CODE_2A98C6:        JSR CODE_2A9924           
CODE_2A98C9:        INX                       
CODE_2A98CA:        LDA #$18                  
CODE_2A98CC:        JSR CODE_2A8D03           
CODE_2A98CF:        INX                       
CODE_2A98D0:        TXA                       
CODE_2A98D1:        AND #$0F                  
CODE_2A98D3:        BNE CODE_2A98C9           
CODE_2A98D5:        LDA #$1C                  
CODE_2A98D7:        JSR CODE_2A8D03           
CODE_2A98DA:        INX                       
CODE_2A98DB:        LDA #$1D                  
CODE_2A98DD:        JSR CODE_2A8D03           
CODE_2A98E0:        INX                       
CODE_2A98E1:        TXA                       
CODE_2A98E2:        AND #$0F                  
CODE_2A98E4:        BNE CODE_2A98D5           
CODE_2A98E6:        LDA #$21                  
CODE_2A98E8:        STA $00                   
CODE_2A98EA:        JSR CODE_2A9924           
CODE_2A98ED:        LDA #$22                  
CODE_2A98EF:        STA $00                   
CODE_2A98F1:        JSR CODE_2A9924           
CODE_2A98F4:        LDA #$29                  
CODE_2A98F6:        STA $00                   
CODE_2A98F8:        JSR CODE_2A9924           
CODE_2A98FB:        LDA #$2A                  
CODE_2A98FD:        STA $00                   
CODE_2A98FF:        JSR CODE_2A9930           
CODE_2A9902:        CPX #$B0                  
CODE_2A9904:        BNE CODE_2A98FF           
CODE_2A9906:        LDY #$00                  
CODE_2A9908:        LDA [$2B],y               
CODE_2A990A:        CMP #$FF                  
CODE_2A990C:        BEQ CODE_2A9916           
CODE_2A990E:        JSR CODE_2A8E54           
CODE_2A9911:        JSR (PNTR_2A9918,x)             
CODE_2A9914:        BRA CODE_2A9906           

CODE_2A9916:        PLB                       
CODE_2A9917:        RTL                       

PNTR_2A9918:        dw CODE_2A994C
                    dw CODE_2A9988
                    dw CODE_2A99BB
                    dw CODE_2A99F7
                    dw CODE_2A9A23
                    dw CODE_2A9A3E

CODE_2A9924:        LDA $00
CODE_2A9926:        JSR CODE_2A8D03
CODE_2A9929:        INX                       
CODE_2A992A:        TXA                       
CODE_2A992B:        AND #$0F                  
CODE_2A992D:        BNE CODE_2A9924           
CODE_2A992F:        RTS                       

CODE_2A9930:        LDA $00                   
CODE_2A9932:        JSR CODE_2A8D25           
CODE_2A9935:        INX                       
CODE_2A9936:        TXA                       
CODE_2A9937:        AND #$0F                  
CODE_2A9939:        BNE CODE_2A9930           
CODE_2A993B:        RTS                       

DATA_2A993C:        db $34,$35,$34,$36,$34,$36,$34,$35
                    db $34,$36,$37,$34,$38,$35,$37,$37

CODE_2A994C:        REP #$10                  ;
CODE_2A994E:        LDX $00                   ;
CODE_2A9950:        LDA $7F0000,x             ;
CODE_2A9954:        CMP #$14                  ;
CODE_2A9956:        BEQ CODE_2A996B           ;
CODE_2A9958:        LDA #$02                  ;
CODE_2A995A:        JSR CODE_2A8CD9           ;
CODE_2A995D:        REP #$20                  ;
CODE_2A995F:        LDA $00                   ;
CODE_2A9961:        CLC                       ;
CODE_2A9962:        ADC #$0010                ;
CODE_2A9965:        STA $00                   ;
CODE_2A9967:        SEP #$20                  ;
CODE_2A9969:        BRA CODE_2A994E           ;

CODE_2A996B:        LDA #$17                  ;
CODE_2A996D:        JSR CODE_2A8CD9           ;
CODE_2A9970:        REP #$20                  ;
CODE_2A9972:        LDA $00                   ;
CODE_2A9974:        CLC                       ;
CODE_2A9975:        ADC #$0010                ;
CODE_2A9978:        TAX                       ;
CODE_2A9979:        SEP #$20                  ;
CODE_2A997B:        LDA #$1B                  ;
CODE_2A997D:        JSR CODE_2A8CD9           ;
CODE_2A9980:        LDA #$20                  ;
CODE_2A9982:        JSR CODE_2A8CEE           ;
CODE_2A9985:        SEP #$10                  ;
CODE_2A9987:        RTS                       ;

CODE_2A9988:        REP #$10                  
CODE_2A998A:        LDY #$0000                
CODE_2A998D:        LDX $00                   
CODE_2A998F:        LDA $99B1,y               
CODE_2A9992:        JSR CODE_2A8CD9           
CODE_2A9995:        INY                       
CODE_2A9996:        REP #$20                  
CODE_2A9998:        TXA                       
CODE_2A9999:        CLC                       
CODE_2A999A:        ADC #$0010                
CODE_2A999D:        TAX                       
CODE_2A999E:        SEP #$20                  
CODE_2A99A0:        CPY #$000A                
CODE_2A99A3:        BEQ CODE_2A99AE           
CODE_2A99A5:        CPY #$0005                
CODE_2A99A8:        BNE CODE_2A998F           
CODE_2A99AA:        INC $00                   
CODE_2A99AC:        BRA CODE_2A998D           

CODE_2A99AE:        SEP #$10                  
CODE_2A99B0:        RTS                       

DATA_2A99B1:        db $03,$08,$0D,$10,$12,$04,$09,$0E
                    db $11,$13
   
              
CODE_2A99BB:        REP #$10                  
CODE_2A99BD:        LDX $00                   
CODE_2A99BF:        LDA #$05                  
CODE_2A99C1:        JSR CODE_2A99E9           
CODE_2A99C4:        REP #$20                  
CODE_2A99C6:        LDA $00                   
CODE_2A99C8:        CLC                       
CODE_2A99C9:        ADC #$0010                
CODE_2A99CC:        STA $00                   
CODE_2A99CE:        TAX                       
CODE_2A99CF:        SEP #$20                  
CODE_2A99D1:        LDA #$0A                  
CODE_2A99D3:        JSR CODE_2A99E9           
CODE_2A99D6:        REP #$20                  
CODE_2A99D8:        LDA $00                   
CODE_2A99DA:        CLC                       
CODE_2A99DB:        ADC #$0011                
CODE_2A99DE:        TAX                       
CODE_2A99DF:        SEP #$20                  
CODE_2A99E1:        LDA #$0F                  
CODE_2A99E3:        JSR CODE_2A8CD9           
CODE_2A99E6:        SEP #$10                  
CODE_2A99E8:        RTS                       

CODE_2A99E9:        JSR CODE_2A8CD9           
CODE_2A99EC:        INX                       
CODE_2A99ED:        INC A                     
CODE_2A99EE:        JSR CODE_2A8CD9           
CODE_2A99F1:        INX                       
CODE_2A99F2:        INC A                     
CODE_2A99F3:        JSR CODE_2A8CD9           
CODE_2A99F6:        RTS                       

CODE_2A99F7:        REP #$10                  
CODE_2A99F9:        LDX $00                   
CODE_2A99FB:        LDA #$15                  
CODE_2A99FD:        JSR CODE_2A9A0D           
CODE_2A9A00:        LDA #$19                  
CODE_2A9A02:        JSR CODE_2A9A0D           
CODE_2A9A05:        LDA #$1E                  
CODE_2A9A07:        JSR CODE_2A9A0D           
CODE_2A9A0A:        SEP #$10                  
CODE_2A9A0C:        RTS                       

CODE_2A9A0D:        JSR CODE_2A8CD9           
CODE_2A9A10:        INX                       
CODE_2A9A11:        INC A                     
CODE_2A9A12:        JSR CODE_2A8CD9           
CODE_2A9A15:        REP #$20                  
CODE_2A9A17:        LDA $00                   
CODE_2A9A19:        CLC                       
CODE_2A9A1A:        ADC #$0010                
CODE_2A9A1D:        STA $00                   
CODE_2A9A1F:        TAX                       
CODE_2A9A20:        SEP #$20                  
CODE_2A9A22:        RTS                       

CODE_2A9A23:        REP #$10                  
CODE_2A9A25:        LDX $00                   
CODE_2A9A27:        LDY #$0000                
CODE_2A9A2A:        LDA $9A39,y               
CODE_2A9A2D:        JSR CODE_2A8CD9           
CODE_2A9A30:        INX                       
CODE_2A9A31:        INY                       
CODE_2A9A32:        CPY #$0005                
CODE_2A9A35:        BNE CODE_2A9A2A           
CODE_2A9A37:        BRA CODE_2A9A4D           

DATA_2A9A39:        db $23,$24,$28,$26,$27
    
             
CODE_2A9A3E:        REP #$10                  
CODE_2A9A40:        LDX $00                   
CODE_2A9A42:        LDA #$23                  
CODE_2A9A44:        JSR CODE_2A8CD9           
CODE_2A9A47:        INX                       
CODE_2A9A48:        INC A                     
CODE_2A9A49:        CMP #$28                  
CODE_2A9A4B:        BNE CODE_2A9A44           
CODE_2A9A4D:        LDY #$0000                
CODE_2A9A50:        REP #$20                  
CODE_2A9A52:        LDA $00                   
CODE_2A9A54:        CLC                       
CODE_2A9A55:        ADC #$0011                
CODE_2A9A58:        TAX                       
CODE_2A9A59:        SEP #$20                  
CODE_2A9A5B:        LDA $9AAE,y               
CODE_2A9A5E:        JSR CODE_2A8CD9           
CODE_2A9A61:        LDA $9AB1,y               
CODE_2A9A64:        JSR CODE_2A8CEE           
CODE_2A9A67:        INX                       
CODE_2A9A68:        INY                       
CODE_2A9A69:        CPY #$0003                
CODE_2A9A6C:        BNE CODE_2A9A5B           
CODE_2A9A6E:        REP #$20                  
CODE_2A9A70:        LDA $00                   
CODE_2A9A72:        CLC                       
CODE_2A9A73:        ADC #$0032                
CODE_2A9A76:        TAX                       
CODE_2A9A77:        SEP #$20                  
CODE_2A9A79:        LDA $7F0000,x             
CODE_2A9A7D:        CMP #$2A                  
CODE_2A9A7F:        BNE CODE_2A9A92           
CODE_2A9A81:        LDA #$30                  
CODE_2A9A83:        JSR CODE_2A8CD9           
CODE_2A9A86:        REP #$20                  
CODE_2A9A88:        TXA                       
CODE_2A9A89:        CLC                       
CODE_2A9A8A:        ADC #$0010                
CODE_2A9A8D:        TAX                       
CODE_2A9A8E:        SEP #$20                  
CODE_2A9A90:        BRA CODE_2A9A79           

CODE_2A9A92:        REP #$20                  
CODE_2A9A94:        TXA                       
CODE_2A9A95:        SEC                       
CODE_2A9A96:        SBC #$0011                
CODE_2A9A99:        TAX                       
CODE_2A9A9A:        SEP #$20                  
CODE_2A9A9C:        LDA #$31                  
CODE_2A9A9E:        JSR CODE_2A8CD9           
CODE_2A9AA1:        INC A                     
CODE_2A9AA2:        INX                       
CODE_2A9AA3:        JSR CODE_2A8CD9           
CODE_2A9AA6:        INC A                     
CODE_2A9AA7:        INX                       
CODE_2A9AA8:        JSR CODE_2A8CD9           
CODE_2A9AAB:        SEP #$10                  
CODE_2A9AAD:        RTS                       

DATA_2A9AAE:        db $2B,$28,$2C,$2D,$2E,$2F

CODE_2A9AB4:        SEP #$10                  ;
CODE_2A9AB6:        LDA $0727                 ;
CODE_2A9AB9:        CMP #$07                  ;
CODE_2A9ABB:        BEQ CODE_2A9AC2           ;
CODE_2A9ABD:        LDA #$01                  
CODE_2A9ABF:        STA $02D9                 
CODE_2A9AC2:        LDX #$10                  
CODE_2A9AC4:        LDA #$01                  
CODE_2A9AC6:        STA $00                   
CODE_2A9AC8:        JSR CODE_2A9930           
CODE_2A9ACB:        LDA #$05                  
CODE_2A9ACD:        STA $00                   
CODE_2A9ACF:        JSR CODE_2A9930           
CODE_2A9AD2:        LDA #$09                  
CODE_2A9AD4:        STA $00                   
CODE_2A9AD6:        JSR CODE_2A9930           
CODE_2A9AD9:        JSR CODE_2A9930           
CODE_2A9ADC:        JSR CODE_2A9930           
CODE_2A9ADF:        LDA #$11                  
CODE_2A9AE1:        STA $00                   
CODE_2A9AE3:        JSR CODE_2A9930           
CODE_2A9AE6:        LDA #$19                  
CODE_2A9AE8:        STA $00                   
CODE_2A9AEA:        JSR CODE_2A9930           
CODE_2A9AED:        LDA #$22                  
CODE_2A9AEF:        STA $00                   
CODE_2A9AF1:        JSR CODE_2A9930           
CODE_2A9AF4:        LDY #$00                  
CODE_2A9AF6:        LDA [$2B],y               
CODE_2A9AF8:        CMP #$FF                  
CODE_2A9AFA:        BEQ CODE_2A9B04           
CODE_2A9AFC:        JSR CODE_2A8E54           
CODE_2A9AFF:        JSR (PNTR_2A9B06,x)             
CODE_2A9B02:        BRA CODE_2A9AF4           

CODE_2A9B04:        PLB                       
CODE_2A9B05:        RTL                       

PNTR_2A9B06:        dw CODE_2A9B0C
                    dw CODE_2A9B6A                      
                    dw CODE_2A9B86  

                
CODE_2A9B0C:        LDX $00                   
CODE_2A9B0E:        STX $01                   
CODE_2A9B10:        LDA #$03                  
CODE_2A9B12:        STA $D8                   
CODE_2A9B14:        LDA #$02                  
CODE_2A9B16:        JSR CODE_2A9B58           
CODE_2A9B19:        LDA #$03                  
CODE_2A9B1B:        STA $D8                   
CODE_2A9B1D:        LDA #$06                  
CODE_2A9B1F:        JSR CODE_2A9B58           
CODE_2A9B22:        LDA #$03                  
CODE_2A9B24:        STA $D8                   
CODE_2A9B26:        LDA #$0A                  
CODE_2A9B28:        JSR CODE_2A9B58           
CODE_2A9B2B:        STZ $D8                   
CODE_2A9B2D:        LDA #$0D                  
CODE_2A9B2F:        JSR CODE_2A8D25           
CODE_2A9B32:        INX                       
CODE_2A9B33:        LDA #$0B                  
CODE_2A9B35:        JSR CODE_2A8D25           
CODE_2A9B38:        INX                       
CODE_2A9B39:        LDA #$0E                  
CODE_2A9B3B:        JSR CODE_2A8D25           
CODE_2A9B3E:        LDA $00                   
CODE_2A9B40:        CLC                       
CODE_2A9B41:        ADC #$10                  
CODE_2A9B43:        STA $00                   
CODE_2A9B45:        TAX                       
CODE_2A9B46:        LDA $D8                   
CODE_2A9B48:        BNE CODE_2A9B4E           
CODE_2A9B4A:        INC $D8                   
CODE_2A9B4C:        BRA CODE_2A9B2D           

CODE_2A9B4E:        LDA #$03                  
CODE_2A9B50:        STA $D8                   
CODE_2A9B52:        LDA #$12                  
CODE_2A9B54:        JSR CODE_2A9B58           
CODE_2A9B57:        RTS                       

CODE_2A9B58:        JSR CODE_2A8D25           
CODE_2A9B5B:        INC A                     
CODE_2A9B5C:        INX                       
CODE_2A9B5D:        DEC $D8                   
CODE_2A9B5F:        BNE CODE_2A9B58           
CODE_2A9B61:        LDA $00                   
CODE_2A9B63:        CLC                       
CODE_2A9B64:        ADC #$10                  
CODE_2A9B66:        STA $00                   
CODE_2A9B68:        TAX                       
CODE_2A9B69:        RTS                       

CODE_2A9B6A:        REP #$10                  
CODE_2A9B6C:        LDX $00                   
CODE_2A9B6E:        LDA #$18                  
CODE_2A9B70:        JSR CODE_2A8CD9           
CODE_2A9B73:        LDA #$21                  
CODE_2A9B75:        JSR CODE_2A8CEE           
CODE_2A9B78:        INX                       
CODE_2A9B79:        LDA #$18                  
CODE_2A9B7B:        JSR CODE_2A8CD9           
CODE_2A9B7E:        LDA #$21                  
CODE_2A9B80:        JSR CODE_2A8CEE           
CODE_2A9B83:        SEP #$10                  
CODE_2A9B85:        RTS                       

CODE_2A9B86:        REP #$10                  
CODE_2A9B88:        LDY #$0000                
CODE_2A9B8B:        LDX $00                   
CODE_2A9B8D:        LDA $9BAA,y               
CODE_2A9B90:        JSR CODE_2A8CD9           
CODE_2A9B93:        INY                       
CODE_2A9B94:        INX                       
CODE_2A9B95:        TXA                       
CODE_2A9B96:        AND #$0F                  
CODE_2A9B98:        CMP #$09                  
CODE_2A9B9A:        BNE CODE_2A9B8D           
CODE_2A9B9C:        LDA $00                   
CODE_2A9B9E:        CLC                       
CODE_2A9B9F:        ADC #$10                  
CODE_2A9BA1:        STA $00                   
CODE_2A9BA3:        CMP #$40                  
CODE_2A9BA5:        BNE CODE_2A9B8B           
CODE_2A9BA7:        SEP #$10                  
CODE_2A9BA9:        RTS                       

DATA_2A9BAA:    db $0F,$09,$09,$09,$0D,$0B,$0E,$09
                    db $10,$15,$16,$16,$09,$0D,$0B,$0E
                    db $09,$17,$1A,$1B,$1B,$1C,$1D,$1E
                    db $1F,$1C,$20

CODE_2A9BC5:        SEP #$10                  ;
CODE_2A9BC7:        LDX #$C0                  ;
CODE_2A9BC9:        LDA #$30                  ;
CODE_2A9BCB:        STA $00                   ;
CODE_2A9BCD:        JSR CODE_2A9924           ;
CODE_2A9BD0:        LDA #$01                  
CODE_2A9BD2:        STA $00                   
CODE_2A9BD4:        JSR CODE_2A9924           
CODE_2A9BD7:        INC $00                   
CODE_2A9BD9:        LDA $00                   
CODE_2A9BDB:        AND #$03                  
CODE_2A9BDD:        BNE CODE_2A9BD4           
CODE_2A9BDF:        JSR CODE_2A9930           
CODE_2A9BE2:        JSR CODE_2A9930           
CODE_2A9BE5:        LDX #$70                  
CODE_2A9BE7:        LDA #$2F                  
CODE_2A9BE9:        STA $00                   
CODE_2A9BEB:        JSR CODE_2A9930           
CODE_2A9BEE:        LDY #$00                  
CODE_2A9BF0:        LDA [$2B],y               
CODE_2A9BF2:        CMP #$FF                  
CODE_2A9BF4:        BEQ CODE_2A9BFE           
CODE_2A9BF6:        JSR CODE_2A8E54           
CODE_2A9BF9:        JSR (PNTR_2A9C00,x)             
CODE_2A9BFC:        BRA CODE_2A9BEE           

CODE_2A9BFE:        PLB                       
CODE_2A9BFF:        RTL                       

PNTR_2A9C00:        dw CODE_2A9C06
                    dw CODE_2A9C14
                    dw CODE_2A9C22 

CODE_2A9C06:        REP #$30                  ;
CODE_2A9C08:        LDA #$9C59                ;
CODE_2A9C0B:        STA $02                   ;
CODE_2A9C0D:        LDA #$0007                ;
CODE_2A9C10:        STA $05                   ;
CODE_2A9C12:        BRA CODE_2A9C2E           ;

CODE_2A9C14:        REP #$30                  ;
CODE_2A9C16:        LDA #$9C75                ;
CODE_2A9C19:        STA $02                   ;
CODE_2A9C1B:        LDA #$0005                ;
CODE_2A9C1E:        STA $05                   ;
CODE_2A9C20:        BRA CODE_2A9C2E           ;

CODE_2A9C22:        REP #$30                  
CODE_2A9C24:        LDA #$9C89                
CODE_2A9C27:        STA $02                   
CODE_2A9C29:        LDA #$0005                
CODE_2A9C2C:        STA $05                   
CODE_2A9C2E:        SEP #$20                  
CODE_2A9C30:        LDA #$04                  
CODE_2A9C32:        STA $04                   
CODE_2A9C34:        LDX $00                   
CODE_2A9C36:        LDA ($02)                 
CODE_2A9C38:        JSR CODE_2A8CD9           
CODE_2A9C3B:        INX                       
CODE_2A9C3C:        REP #$20                  
CODE_2A9C3E:        INC $02                   
CODE_2A9C40:        SEP #$20                  
CODE_2A9C42:        DEC $04                   
CODE_2A9C44:        BNE CODE_2A9C36           
CODE_2A9C46:        REP #$20                  
CODE_2A9C48:        LDA $00                   
CODE_2A9C4A:        CLC                       
CODE_2A9C4B:        ADC #$0010                
CODE_2A9C4E:        STA $00                   
CODE_2A9C50:        SEP #$20                  
CODE_2A9C52:        DEC $05                   
CODE_2A9C54:        BNE CODE_2A9C30           
CODE_2A9C56:        SEP #$10                  
CODE_2A9C58:        RTS                       

DATA_2A9C59:        db $04,$05,$06,$04,$07,$08,$09,$0A
                    db $0B,$0C,$0D,$0E,$13,$14,$15,$16
                    db $1B,$1C,$1D,$1E,$23,$24,$25,$26
                    db $29,$2A,$2B,$2C,$0F,$12,$0F,$12
                    db $17,$1A,$17,$1A,$1F,$22,$1F,$22
                    db $23,$26,$23,$26,$29,$2C,$29,$2C
                    db $0F,$10,$11,$12,$17,$18,$19,$1A
                    db $1F,$20,$21,$22,$23,$27,$28,$26
                    db $29,$2D,$2E,$2C
 
                
CODE_2A9C9D:        SEP #$10                  
CODE_2A9C9F:        LDY #$00                  
CODE_2A9CA1:        LDA [$2B],y               
CODE_2A9CA3:        CMP #$FF                  
CODE_2A9CA5:        BEQ CODE_2A9CAF           
CODE_2A9CA7:        JSR CODE_2A8E54           
CODE_2A9CAA:        JSR (PNTR_2A9CC3,x)             
CODE_2A9CAD:        BRA CODE_2A9C9F           

CODE_2A9CAF:        LDA #$00                  
CODE_2A9CB1:        XBA                       
CODE_2A9CB2:        REP #$10                  
CODE_2A9CB4:        LDY #$0100                
CODE_2A9CB7:        LDX #$01B0                
CODE_2A9CBA:        LDA #$AF                  
CODE_2A9CBC:        MVN $7F7F                 
CODE_2A9CBF:        SEP #$10                  
CODE_2A9CC1:        PLB                       
CODE_2A9CC2:        RTL                       

PNTR_2A9CC3:        dw CODE_2A9CCF
                    dw CODE_2A9D61
                    dw CODE_2A9DC0
                    dw CODE_2A9E6B
                    dw CODE_2A9ED2
                    dw CODE_2A9EE8

CODE_2A9CCF:        REP #$30                  ;
CODE_2A9CD1:        LDA $DA                   ;
CODE_2A9CD3:        ASL A                     ;
CODE_2A9CD4:        TAY                       ;
CODE_2A9CD5:        LDA $9CE0,y               ;
CODE_2A9CD8:        STA $02                   ;
CODE_2A9CDA:        SEP #$20                  ;
CODE_2A9CDC:        JSR CODE_2A9D3A           ;
CODE_2A9CDF:        RTS                       ;

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

CODE_2A9D3A:        LDX $00                   ;
CODE_2A9D3C:        LDY #$0000                ;
CODE_2A9D3F:        LDA ($02),y               ;
CODE_2A9D41:        JSR CODE_2A8CD9           ;
CODE_2A9D44:        REP #$20                  ;
CODE_2A9D46:        TXA                       ;
CODE_2A9D47:        CLC                       ;
CODE_2A9D48:        ADC #$0010                ;
CODE_2A9D4B:        TAX                       ;
CODE_2A9D4C:        SEP #$20                  ;
CODE_2A9D4E:        INY                       ;
CODE_2A9D4F:        CPY #$0010                ;
CODE_2A9D52:        BNE CODE_2A9D3F           ;
CODE_2A9D54:        LDA $D8                   ;
CODE_2A9D56:        BEQ CODE_2A9D5E           ;
CODE_2A9D58:        DEC $D8                   ;
CODE_2A9D5A:        INC $00                   ;
CODE_2A9D5C:        BRA CODE_2A9D3A           ;

CODE_2A9D5E:        SEP #$10                  ;
CODE_2A9D60:        RTS                       ;

CODE_2A9D61:        REP #$30                  
CODE_2A9D63:        LDA $DA                   
CODE_2A9D65:        ASL A                     
CODE_2A9D66:        TAX                       
CODE_2A9D67:        LDA $9D74,x               
CODE_2A9D6A:        STA $02                   
CODE_2A9D6C:        SEP #$20                  
CODE_2A9D6E:        LDX $00                   
CODE_2A9D70:        JSR CODE_2A9DA6           
CODE_2A9D73:        RTS                       

DATA_2A9D74:        db $80,$9D           

DATA_2A9D76:        db $88,$9D,$8D,$9D,$95,$9D,$9D,$9D
                    db $A2,$9D,$07,$08,$07,$08,$1A,$07
                    db $08,$1A,$1A,$08,$1A,$07,$00,$1A
                    db $1A,$08,$1A,$1A,$1B,$1C,$07,$08
                    db $1A,$08,$08,$1A,$2C,$08,$1A,$1A
                    db $08,$06,$1A,$00,$07,$08,$06,$00

                
CODE_2A9DA6:        LDA $7F0000,x             
CODE_2A9DAA:        BNE CODE_2A9DB7           
CODE_2A9DAC:        LDA ($02)                 
CODE_2A9DAE:        JSR CODE_2A8CD9           
CODE_2A9DB1:        REP #$20                  
CODE_2A9DB3:        INC $02                   
CODE_2A9DB5:        SEP #$20                  
CODE_2A9DB7:        INX                       
CODE_2A9DB8:        TXA                       
CODE_2A9DB9:        AND #$0F                  
CODE_2A9DBB:        BNE CODE_2A9DA6           
CODE_2A9DBD:        SEP #$10                  
CODE_2A9DBF:        RTS                       

CODE_2A9DC0:        REP #$30                  
CODE_2A9DC2:        LDA $DA                   
CODE_2A9DC4:        ASL A                     
CODE_2A9DC5:        TAX                       
CODE_2A9DC6:        LDA $9DE3,x               
CODE_2A9DC9:        STA $02                   
CODE_2A9DCB:        SEP #$20                  
CODE_2A9DCD:        JSR CODE_2A9D3A           
CODE_2A9DD0:        REP #$30                  
CODE_2A9DD2:        TYA                       
CODE_2A9DD3:        AND #$00FF                
CODE_2A9DD6:        CLC                       
CODE_2A9DD7:        ADC $02                   
CODE_2A9DD9:        STA $02                   
CODE_2A9DDB:        INC $00                   
CODE_2A9DDD:        SEP #$20                  
CODE_2A9DDF:        JSR CODE_2A9D3A           
CODE_2A9DE2:        RTS                       

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
 
              
CODE_2A9E6B:        REP #$30                  
CODE_2A9E6D:        LDA $DA                   
CODE_2A9E6F:        ASL A                     
CODE_2A9E70:        TAX                       
CODE_2A9E71:        LDA $9E8C,x               
CODE_2A9E74:        STA $02                   
CODE_2A9E76:        SEP #$20                  
CODE_2A9E78:        LDX $00                   
CODE_2A9E7A:        JSR CODE_2A9DA6           
CODE_2A9E7D:        REP #$30                  
CODE_2A9E7F:        LDA $00                   
CODE_2A9E81:        CLC                       
CODE_2A9E82:        ADC #$0010                
CODE_2A9E85:        TAX                       
CODE_2A9E86:        SEP #$20                  
CODE_2A9E88:        JSR CODE_2A9DA6           
CODE_2A9E8B:        RTS                       

DATA_2A9E8C:        db $94,$9E,$A2,$9E,$B2,$9E,$C2,$9E
                    db $0A,$0A,$0D,$0E,$0D,$0E,$0A,$11
                    db $2A,$14,$15,$14,$15,$11,$0A,$0D
                    db $0E,$0F,$0F,$0A,$0A,$0F,$11,$14
                    db $15,$16,$16,$18,$19,$16,$0D,$0E
                    db $0D,$0E,$0F,$24,$25,$0F,$26,$29
                    db $26,$15,$16,$11,$2A,$16,$0D,$0E
                    db $0D,$0E,$0F,$10,$0A,$0F,$26,$29
                    db $26,$15,$16,$17,$11,$16
  
            
CODE_2A9ED2:        REP #$10                  
CODE_2A9ED4:        LDX $00                   
CODE_2A9ED6:        LDY $DA                   
CODE_2A9ED8:        LDA $9EE1,y               
CODE_2A9EDB:        JSR CODE_2A8CD9           
CODE_2A9EDE:        SEP #$10                  
CODE_2A9EE0:        RTS                       

DATA_2A9EE1:        db $02,$32,$03,$06,$1F,$20,$21

CODE_2A9EE8:        REP #$30                  ;
CODE_2A9EEA:        LDA $DA                   ;
CODE_2A9EEC:        ASL A                     ;
CODE_2A9EED:        TAX                       ;
CODE_2A9EEE:        LDA $9F1B,x               ;
CODE_2A9EF1:        STA $02                   ;
CODE_2A9EF3:        SEP #$20                  ;
CODE_2A9EF5:        LDY #$0002                ;
CODE_2A9EF8:        LDA ($02)                 ;
CODE_2A9EFA:        LDX $00                   ;
CODE_2A9EFC:        JSR CODE_2A8CD9           ;
CODE_2A9EFF:        LDA ($02),y               ;
CODE_2A9F01:        JSR CODE_2A8CEE           ;
CODE_2A9F04:        REP #$20                  ;
CODE_2A9F06:        INC $02                   ;
CODE_2A9F08:        INC $00                   ;
CODE_2A9F0A:        SEP #$20                  ;
CODE_2A9F0C:        LDA ($02)                 ;
CODE_2A9F0E:        LDX $00                   ;
CODE_2A9F10:        JSR CODE_2A8CD9           ;
CODE_2A9F13:        LDA ($02),y               ;
CODE_2A9F15:        JSR CODE_2A8CEE           ;
CODE_2A9F18:        SEP #$10                  ;
CODE_2A9F1A:        RTS                       ;

DATA_2A9F1B:        db $21,$9F,$25,$9F,$29,$9F,$0D,$0E
                    db $14,$15,$0A,$0D,$2A,$14,$0A,$0A
                    db $11,$11

CODE_2A9F2D:        SEP #$10                  
CODE_2A9F2F:        LDA $0727                 
CODE_2A9F32:        CMP #$01                  
CODE_2A9F34:        BNE CODE_2A9F3B           
CODE_2A9F36:        LDA #$18                  
CODE_2A9F38:        STA $02C5                 
CODE_2A9F3B:        LDX #$D0                  
CODE_2A9F3D:        LDA #$23                  
CODE_2A9F3F:        STA $00                   
CODE_2A9F41:        JSR CODE_2A9924           
CODE_2A9F44:        LDA #$24                  
CODE_2A9F46:        STA $00                   
CODE_2A9F48:        JSR CODE_2A9924           
CODE_2A9F4B:        LDA #$01                  
CODE_2A9F4D:        STA $00                   
CODE_2A9F4F:        JSR CODE_2A9924           
CODE_2A9F52:        JSR CODE_2A9930           
CODE_2A9F55:        JSR CODE_2A9930           
CODE_2A9F58:        JSR CODE_2A9930           
CODE_2A9F5B:        LDY #$00                  
CODE_2A9F5D:        LDA [$2B],y               
CODE_2A9F5F:        CMP #$FF                  
CODE_2A9F61:        BEQ CODE_2A9F6B           
CODE_2A9F63:        JSR CODE_2A8E54           
CODE_2A9F66:        JSR (PNTR_2A9F6D,x)             
CODE_2A9F69:        BRA CODE_2A9F5B           

CODE_2A9F6B:        PLB                       
CODE_2A9F6C:        RTL                       

PNTR_2A9F6D:        dw CODE_2A9F7D
                    dw CODE_2A9F84
                    dw CODE_2A9F8B
                    dw CODE_2A9F92
                    dw CODE_2A9F99
                    dw CODE_2A9FA0
                    dw CODE_2A9FA7
                    dw CODE_2AA066

CODE_2A9F7D:        REP #$10                  ;
CODE_2A9F7F:        LDY #$0000                ;
CODE_2A9F82:        BRA CODE_2A9FAC           ;

CODE_2A9F84:        REP #$10                  
CODE_2A9F86:        LDY #$0008                
CODE_2A9F89:        BRA CODE_2A9FAC           

CODE_2A9F8B:        REP #$10                  
CODE_2A9F8D:        LDY #$0010                
CODE_2A9F90:        BRA CODE_2A9FAC           

CODE_2A9F92:        REP #$10                  
CODE_2A9F94:        LDY #$0018                
CODE_2A9F97:        BRA CODE_2A9FAC           

CODE_2A9F99:        REP #$10                  
CODE_2A9F9B:        LDY #$0020                
CODE_2A9F9E:        BRA CODE_2A9FAC           

CODE_2A9FA0:        REP #$10                  
CODE_2A9FA2:        LDY #$0028                
CODE_2A9FA5:        BRA CODE_2A9FAC           

CODE_2A9FA7:        REP #$10                  
CODE_2A9FA9:        LDY #$0030                
CODE_2A9FAC:        LDA #$01                  
CODE_2A9FAE:        STA $02                   
CODE_2A9FB0:        LDX $00                   
CODE_2A9FB2:        LDA #$04                  
CODE_2A9FB4:        STA $04                   
CODE_2A9FB6:        LDA $A026,y               
CODE_2A9FB9:        JSR CODE_2A8CD9           
CODE_2A9FBC:        INX                       
CODE_2A9FBD:        JSR CODE_2AA009           
CODE_2A9FC0:        INY                       
CODE_2A9FC1:        DEC $04                   
CODE_2A9FC3:        BNE CODE_2A9FB6           
CODE_2A9FC5:        REP #$20                  
CODE_2A9FC7:        LDA $00                   
CODE_2A9FC9:        CLC                       
CODE_2A9FCA:        ADC #$0010                
CODE_2A9FCD:        STA $00                   
CODE_2A9FCF:        SEP #$20                  
CODE_2A9FD1:        DEC $02                   
CODE_2A9FD3:        BEQ CODE_2A9FB0           
CODE_2A9FD5:        LDY #$0000                
CODE_2A9FD8:        LDA #$04                  
CODE_2A9FDA:        STA $04                   
CODE_2A9FDC:        LDX $00                   
CODE_2A9FDE:        LDA $A05E,y               
CODE_2A9FE1:        JSR CODE_2A8CD9           
CODE_2A9FE4:        INX                       
CODE_2A9FE5:        JSR CODE_2AA009           
CODE_2A9FE8:        INY                       
CODE_2A9FE9:        REP #$20                  
CODE_2A9FEB:        TYA                       
CODE_2A9FEC:        AND #$0007                
CODE_2A9FEF:        TAY                       
CODE_2A9FF0:        SEP #$20                  
CODE_2A9FF2:        DEC $04                   
CODE_2A9FF4:        BNE CODE_2A9FDE           
CODE_2A9FF6:        REP #$20                  
CODE_2A9FF8:        LDA $00                   
CODE_2A9FFA:        CLC                       
CODE_2A9FFB:        ADC #$0010                
CODE_2A9FFE:        STA $00                   
CODE_2AA000:        SEP #$20                  
CODE_2AA002:        DEC $D8                   
CODE_2AA004:        BNE CODE_2A9FD8           
CODE_2AA006:        SEP #$10                  
CODE_2AA008:        RTS                       

CODE_2AA009:        REP #$20                  
CODE_2AA00B:        TXA                       
CODE_2AA00C:        AND #$000F                
CODE_2AA00F:        BNE CODE_2AA023           
CODE_2AA011:        LDA $DA                   
CODE_2AA013:        BNE CODE_2AA01D           
CODE_2AA015:        TXA                       
CODE_2AA016:        CLC                       
CODE_2AA017:        ADC #$01A0                
CODE_2AA01A:        TAX                       
CODE_2AA01B:        BRA CODE_2AA023           

CODE_2AA01D:        TXA                       
CODE_2AA01E:        SEC                       
CODE_2AA01F:        SBC #$01C0                
CODE_2AA022:        TAX                       
CODE_2AA023:        SEP #$20                  
CODE_2AA025:        RTS                       

DATA_2AA026:        db $1D,$1E,$1F,$20,$21,$08,$09,$22
                    db $29,$04,$0B,$0C,$07,$08,$09,$0F
                    db $14,$15,$05,$2A,$1A,$08,$09,$0A
                    db $33,$17,$16,$32,$1C,$08,$09,$1B
                    db $14,$15,$0B,$0C,$1A,$08,$09,$0F
                    db $14,$15,$16,$32,$1A,$08,$09,$1B
                    db $29,$04,$05,$2A,$07,$08,$09,$0A
                    db $12,$13,$0D,$0E,$18,$19,$10,$11
   
            
CODE_2AA066:        REP #$10                  
CODE_2AA068:        LDY #$0000                
CODE_2AA06B:        LDX $00                   
CODE_2AA06D:        LDA #$04                  
CODE_2AA06F:        STA $02                   
CODE_2AA071:        LDA $7F0000,x             
CODE_2AA075:        CMP #$01                  
CODE_2AA077:        BNE CODE_2AA07F           
CODE_2AA079:        LDA $A09B,y               
CODE_2AA07C:        JSR CODE_2A8CD9           
CODE_2AA07F:        INX                       
CODE_2AA080:        INY                       
CODE_2AA081:        CPY #$000C                
CODE_2AA084:        BCS CODE_2AA098                   
CODE_2AA086:        DEC $02                   
CODE_2AA088:        BNE CODE_2AA071           
CODE_2AA08A:        REP #$20                  
CODE_2AA08C:        LDA $00                   
CODE_2AA08E:        CLC                       
CODE_2AA08F:        ADC #$0010                
CODE_2AA092:        STA $00                   
CODE_2AA094:        SEP #$20                  
CODE_2AA096:        BRA CODE_2AA06B           

CODE_2AA098:        SEP #$10                  
CODE_2AA09A:        RTS                       
     

DATA_2AA09B:        db $25,$26,$27,$28,$2B,$2C,$2D,$2E
                    db $2F,$2F,$30,$31

              
CODE_2AA0A7:        SEP #$10                  
CODE_2AA0A9:        LDX #$00                  
CODE_2AA0AB:        LDA #$02                  
CODE_2AA0AD:        STA $00                   
CODE_2AA0AF:        LDA #$03                  
CODE_2AA0B1:        STA $01                   
CODE_2AA0B3:        STZ $02                   
CODE_2AA0B5:        LDA #$01                  
CODE_2AA0B7:        STA $03                   
CODE_2AA0B9:        LDA $00                   
CODE_2AA0BB:        JSR CODE_2A8D03           
CODE_2AA0BE:        INX                       
CODE_2AA0BF:        LDA $01                   
CODE_2AA0C1:        JSR CODE_2A8D03           
CODE_2AA0C4:        INX                       
CODE_2AA0C5:        TXA                       
CODE_2AA0C6:        AND #$0F                  
CODE_2AA0C8:        BNE CODE_2AA0B9           
CODE_2AA0CA:        LDA $02                   
CODE_2AA0CC:        JSR CODE_2A8D03           
CODE_2AA0CF:        INX                       
CODE_2AA0D0:        LDA $03                   
CODE_2AA0D2:        JSR CODE_2A8D03           
CODE_2AA0D5:        INX                       
CODE_2AA0D6:        TXA                       
CODE_2AA0D7:        AND #$0F                  
CODE_2AA0D9:        BNE CODE_2AA0CA           
CODE_2AA0DB:        TXA                       
CODE_2AA0DC:        BNE CODE_2AA0B9           
CODE_2AA0DE:        LDA $00                   
CODE_2AA0E0:        JSR CODE_2A8D25           
CODE_2AA0E3:        INX                       
CODE_2AA0E4:        LDA $01                   
CODE_2AA0E6:        JSR CODE_2A8D25           
CODE_2AA0E9:        INX                       
CODE_2AA0EA:        TXA                       
CODE_2AA0EB:        AND #$0F                  
CODE_2AA0ED:        BNE CODE_2AA0DE           
CODE_2AA0EF:        CPX #$B0                  
CODE_2AA0F1:        BCS CODE_2AA106                   
CODE_2AA0F3:        LDA $02                   
CODE_2AA0F5:        JSR CODE_2A8D25           
CODE_2AA0F8:        INX                       
CODE_2AA0F9:        LDA $03                   
CODE_2AA0FB:        JSR CODE_2A8D25           
CODE_2AA0FE:        INX                       
CODE_2AA0FF:        TXA                       
CODE_2AA100:        AND #$0F                  
CODE_2AA102:        BNE CODE_2AA0F3           
CODE_2AA104:        BRA CODE_2AA0DE           

CODE_2AA106:        LDY #$00                  
CODE_2AA108:        LDA [$2B],y               
CODE_2AA10A:        CMP #$FF                  
CODE_2AA10C:        BEQ CODE_2AA116           
CODE_2AA10E:        JSR CODE_2A8E54           
CODE_2AA111:        JSR (PNTR_2AA118,x)             
CODE_2AA114:        BRA CODE_2AA106           

CODE_2AA116:        PLB                       
CODE_2AA117:        RTL                       

PNTR_2AA118:        dw CODE_2AA120
                    dw CODE_2AA143
                    dw CODE_2AA153
                    dw CODE_2AA15F

CODE_2AA120:        JSR CODE_2AA143           ;
CODE_2AA123:        REP #$10                  ;
CODE_2AA125:        LDA $DA                   ;
CODE_2AA127:        BEQ CODE_2AA12B           ;
CODE_2AA129:        STA $D8                   ;
CODE_2AA12B:        JSR CODE_2AA136           ;
CODE_2AA12E:        LDA #$04                  ;
CODE_2AA130:        JSR CODE_2A8CD9           ;
CODE_2AA133:        SEP #$10                  ;
CODE_2AA135:        RTS                       ;

CODE_2AA136:        REP #$20                  
CODE_2AA138:        LDA $00                   
CODE_2AA13A:        CLC                       
CODE_2AA13B:        ADC $D8                   
CODE_2AA13D:        STA $00                   
CODE_2AA13F:        TAX                       
CODE_2AA140:        SEP #$20                  
CODE_2AA142:        RTS                       

CODE_2AA143:        JSR CODE_2AA153           
CODE_2AA146:        REP #$10                  
CODE_2AA148:        JSR CODE_2AA136           
CODE_2AA14B:        LDA #$04                  
CODE_2AA14D:        JSR CODE_2A8CD9           
CODE_2AA150:        SEP #$10                  
CODE_2AA152:        RTS                       

CODE_2AA153:        REP #$10                  
CODE_2AA155:        LDX $00                   
CODE_2AA157:        LDA #$04                  
CODE_2AA159:        JSR CODE_2A8CD9           
CODE_2AA15C:        SEP #$10                  
CODE_2AA15E:        RTS                       

CODE_2AA15F:        REP #$10                  
CODE_2AA161:        JSR CODE_2AA153           
CODE_2AA164:        JSR CODE_2AA136           
CODE_2AA167:        JSR CODE_2AA153           
CODE_2AA16A:        JSR CODE_2AA136           
CODE_2AA16D:        JSR CODE_2AA153           
CODE_2AA170:        LDA $DA                   
CODE_2AA172:        BEQ CODE_2AA176           
CODE_2AA174:        STA $D8                   
CODE_2AA176:        JSR CODE_2AA136           
CODE_2AA179:        LDA #$04                  
CODE_2AA17B:        JSR CODE_2A8CD9           
CODE_2AA17E:        SEP #$10                  
CODE_2AA180:        RTS                       

CODE_2AA181:        SEP #$10                  
CODE_2AA183:        LDX #$40                  
CODE_2AA185:        LDA #$3C                  
CODE_2AA187:        STA $00                   
CODE_2AA189:        LDA #$40                  
CODE_2AA18B:        STA $01                   
CODE_2AA18D:        LDA #$08                  
CODE_2AA18F:        STA $04                   
CODE_2AA191:        JSR CODE_2A974B           
CODE_2AA194:        LDA #$41                  
CODE_2AA196:        STA $00                   
CODE_2AA198:        LDA #$42                  
CODE_2AA19A:        STA $01                   
CODE_2AA19C:        LDA #$08                  
CODE_2AA19E:        STA $04                   
CODE_2AA1A0:        JSR CODE_2A974B           
CODE_2AA1A3:        LDA #$43                  
CODE_2AA1A5:        STA $00                   
CODE_2AA1A7:        JSR CODE_2A9930           
CODE_2AA1AA:        INC $00                   
CODE_2AA1AC:        JSR CODE_2A9930           
CODE_2AA1AF:        JSR CODE_2A9930           
CODE_2AA1B2:        LDY #$00                  
CODE_2AA1B4:        LDA [$2B],y               
CODE_2AA1B6:        CMP #$FF                  
CODE_2AA1B8:        BEQ CODE_2AA1C2           
CODE_2AA1BA:        JSR CODE_2A8E54           
CODE_2AA1BD:        JSR (PNTR_2AA219,x)             
CODE_2AA1C0:        BRA CODE_2AA1B2           

CODE_2AA1C2:        LDA $1EBF                 
CODE_2AA1C5:        CMP #$0B                  
CODE_2AA1C7:        BEQ CODE_2AA1CD           
CODE_2AA1C9:        CMP #$2F                  
CODE_2AA1CB:        BNE CODE_2AA217           
CODE_2AA1CD:        LDA #$00                  
CODE_2AA1CF:        XBA                       
CODE_2AA1D0:        REP #$10                  
CODE_2AA1D2:        LDY #$00C0                
CODE_2AA1D5:        LDX #$00D0                
CODE_2AA1D8:        LDA #$AF                  
CODE_2AA1DA:        MVN $7F7F                 
CODE_2AA1DD:        LDA #$00                  
CODE_2AA1DF:        XBA                       
CODE_2AA1E0:        LDY #$0270                
CODE_2AA1E3:        LDX #$0280                
CODE_2AA1E6:        LDA #$AF                  
CODE_2AA1E8:        MVN $7F7F                 
CODE_2AA1EB:        LDA #$00                  
CODE_2AA1ED:        XBA                       
CODE_2AA1EE:        LDY #$0420                
CODE_2AA1F1:        LDX #$0430                
CODE_2AA1F4:        LDA #$AF                  
CODE_2AA1F6:        MVN $7F7F                 
CODE_2AA1F9:        LDA #$00                  
CODE_2AA1FB:        XBA                       
CODE_2AA1FC:        LDY #$05D0                
CODE_2AA1FF:        LDX #$05E0                
CODE_2AA202:        LDA #$AF                  
CODE_2AA204:        MVN $7F7F                 
CODE_2AA207:        LDA #$00                  
CODE_2AA209:        XBA                       
CODE_2AA20A:        LDY #$0780                
CODE_2AA20D:        LDX #$0790                
CODE_2AA210:        LDA #$AF                  
CODE_2AA212:        MVN $7F7F                 
CODE_2AA215:        SEP #$10                  
CODE_2AA217:        PLB                       
CODE_2AA218:        RTL                       

PNTR_2AA219:        dw CODE_2AA221               
                    dw CODE_2AA225               
                    dw CODE_2AA229                 
                    dw CODE_2AA22D

CODE_2AA221:        LDY #$00                  ;
CODE_2AA223:        BRA CODE_2AA22F           ;

CODE_2AA225:        LDY #$02                  ;
CODE_2AA227:        BRA CODE_2AA22F           

CODE_2AA229:        LDY #$04                  
CODE_2AA22B:        BRA CODE_2AA22F           

CODE_2AA22D:        LDY #$06                  
CODE_2AA22F:        LDA #$2A                  
CODE_2AA231:        STA $08                   
CODE_2AA233:        STA $0B                   
CODE_2AA235:        STA $0E                   
CODE_2AA237:        REP #$30                  
CODE_2AA239:        LDA $A268,y               
CODE_2AA23C:        STA $06                   
CODE_2AA23E:        LDA $A270,y               
CODE_2AA241:        STA $09                   
CODE_2AA243:        LDA $A278,y               
CODE_2AA246:        STA $0C                   
CODE_2AA248:        STZ $04                   
CODE_2AA24A:        SEP #$20                  
CODE_2AA24C:        LDA $A260,y               
CODE_2AA24F:        STA $0F                   
CODE_2AA251:        LDX $00                   
CODE_2AA253:        LDY #$0000                
CODE_2AA256:        LDA [$0C]                 
CODE_2AA258:        STA $02                   
CODE_2AA25A:        JSR CODE_2A8FA7           
CODE_2AA25D:        SEP #$10                  
CODE_2AA25F:        RTS                       

DATA_2AA260:        db $07,$00,$06,$00,$04,$00,$05,$00
                    db $80,$A2,$BD,$A2,$CE,$A2,$E4,$A2
                    db $FF,$A2,$0B,$A3,$15,$A3,$1B,$A3
                    db $23,$A3,$2A,$A3,$30,$A3,$34,$A3
                    db $45,$01,$02,$03,$04,$05,$06,$07
                    db $03,$0A,$0B,$0C,$0D,$0E,$0F,$03
                    db $0A,$16,$17,$18,$16,$19,$1A,$1B
                    db $03,$0A,$20,$21,$16,$16,$16,$22
                    db $23,$24,$1B,$03,$29,$2A,$16,$16
                    db $16,$16,$2B,$2C,$2D,$2E,$2F,$1B
                    db $35,$36,$35,$36,$35,$36,$35,$36
                    db $35,$36,$37,$38,$37,$08,$09,$10
                    db $11,$12,$1C,$1D,$12,$25,$26,$12
                    db $30,$26,$12,$39,$3A,$3B,$45,$01
                    db $02,$03,$04,$05,$06,$0F,$03,$31
                    db $0B,$0C,$32,$33,$1B,$36,$35,$36
                    db $35,$36,$37,$38,$13,$14,$15,$1E
                    db $10,$1C,$1F,$12,$10,$1C,$1C,$27
                    db $28,$12,$1C,$1C,$1C,$34,$26,$12
                    db $3D,$3E,$3D,$3E,$3A,$3B,$3F,$0F
                    db $00,$0F,$00,$0F,$00,$0F,$00,$0F
                    db $00,$10,$00,$10,$00,$11,$00,$11
                    db $00,$11,$00,$10,$00,$0F,$00,$0F
                    db $00,$10,$00,$0F,$00,$10,$00,$11
                    db $00,$10,$00,$03,$05,$07,$09,$0B
                    db $0D,$0D,$02,$03,$03,$03,$03,$03
                    db $03,$05,$07,$07,$03,$05,$06,$06
                    db $07

                  
CODE_2AA339:        SEP #$10                  
CODE_2AA33B:        JSR CODE_2AA38B           
CODE_2AA33E:        LDX #$40                  
CODE_2AA340:        LDA #$05                  
CODE_2AA342:        STA $00                   
CODE_2AA344:        LDA $00                   
CODE_2AA346:        JSR CODE_2A8D25           
CODE_2AA349:        INC A                     
CODE_2AA34A:        INX                       
CODE_2AA34B:        JSR CODE_2A8D25           
CODE_2AA34E:        CMP #$0C                  
CODE_2AA350:        BNE CODE_2AA349           
CODE_2AA352:        INX                       
CODE_2AA353:        TXA                       
CODE_2AA354:        AND #$0F                  
CODE_2AA356:        BNE CODE_2AA344           
CODE_2AA358:        REP #$10                  
CODE_2AA35A:        LDX #$0146                
CODE_2AA35D:        LDA #$07                  
CODE_2AA35F:        STA $00                   
CODE_2AA361:        JSR CODE_2A8CD9           
CODE_2AA364:        INC A                     
CODE_2AA365:        INX                       
CODE_2AA366:        JSR CODE_2A8CD9           
CODE_2AA369:        INC A                     
CODE_2AA36A:        INX                       
CODE_2AA36B:        JSR CODE_2A8CD9           
CODE_2AA36E:        INC A                     
CODE_2AA36F:        INX                       
CODE_2AA370:        JSR CODE_2A8CD9           
CODE_2AA373:        SEP #$10                  
CODE_2AA375:        LDY #$00                  
CODE_2AA377:        LDA [$2B],y               
CODE_2AA379:        CMP #$FF                  
CODE_2AA37B:        BEQ CODE_2AA385           
CODE_2AA37D:        JSR CODE_2A8E54           
CODE_2AA380:        JSR (PNTR_2AA387,x)             
CODE_2AA383:        BRA CODE_2AA375           

CODE_2AA385:        PLB                       
CODE_2AA386:        RTL                       

PNTR_2AA387:        dw CODE_2AA3E1              
                    dw CODE_2AA40E

CODE_2AA38B:        LDX #$B0
CODE_2AA38D:        LDA #$41                  ;
CODE_2AA38F:        STA $00                   ;
CODE_2AA391:        JSR CODE_2A9924           ;
CODE_2AA394:        LDA #$01                  
CODE_2AA396:        STA $00                   
CODE_2AA398:        JSR CODE_2A9924           
CODE_2AA39B:        INC $00                   
CODE_2AA39D:        JSR CODE_2A9924           
CODE_2AA3A0:        INC $00                   
CODE_2AA3A2:        JSR CODE_2A9924           
CODE_2AA3A5:        INC $00                   
CODE_2AA3A7:        JSR CODE_2A9924           
CODE_2AA3AA:        JSR CODE_2A9930           
CODE_2AA3AD:        CPX #$50                  
CODE_2AA3AF:        BNE CODE_2AA3AA           
CODE_2AA3B1:        LDX #$50                  
CODE_2AA3B3:        LDA #$0D                  
CODE_2AA3B5:        STA $00                   
CODE_2AA3B7:        LDA #$0E                  
CODE_2AA3B9:        STA $01                   
CODE_2AA3BB:        LDA #$0F                  
CODE_2AA3BD:        STA $02                   
CODE_2AA3BF:        LDA #$10                  
CODE_2AA3C1:        STA $03                   
CODE_2AA3C3:        LDA #$04                  
CODE_2AA3C5:        STA $04                   
CODE_2AA3C7:        JSR CODE_2A975C           
CODE_2AA3CA:        LDA #$11                  
CODE_2AA3CC:        STA $00                   
CODE_2AA3CE:        LDA #$12                  
CODE_2AA3D0:        STA $01                   
CODE_2AA3D2:        LDA #$08                  
CODE_2AA3D4:        STA $04                   
CODE_2AA3D6:        JSR CODE_2A974B           
CODE_2AA3D9:        LDA #$14                  
CODE_2AA3DB:        STA $00                   
CODE_2AA3DD:        JSR CODE_2A9930           
CODE_2AA3E0:        RTS                       

CODE_2AA3E1:        REP #$10                  
CODE_2AA3E3:        LDX $00                   
CODE_2AA3E5:        LDA #$3B                  
CODE_2AA3E7:        JSR CODE_2A8CD9           
CODE_2AA3EA:        LDA #$3E                  
CODE_2AA3EC:        JSR CODE_2A8CEE           
CODE_2AA3EF:        DEC $D8                   
CODE_2AA3F1:        BEQ CODE_2AA400           
CODE_2AA3F3:        INX                       
CODE_2AA3F4:        LDA #$3C                  
CODE_2AA3F6:        JSR CODE_2A8CD9           
CODE_2AA3F9:        LDA #$3F                  
CODE_2AA3FB:        JSR CODE_2A8CEE           
CODE_2AA3FE:        BRA CODE_2AA3EF           

CODE_2AA400:        INX                       
CODE_2AA401:        LDA #$3D                  
CODE_2AA403:        JSR CODE_2A8CD9           
CODE_2AA406:        LDA #$40                  
CODE_2AA408:        JSR CODE_2A8CEE           
CODE_2AA40B:        SEP #$10                  
CODE_2AA40D:        RTS                       

CODE_2AA40E:        REP #$10                  
CODE_2AA410:        LDX $00                   
CODE_2AA412:        LDA #$35                  
CODE_2AA414:        JSR CODE_2A8CD9           
CODE_2AA417:        LDA #$38                  
CODE_2AA419:        JSR CODE_2A8CEE           
CODE_2AA41C:        DEC $D8                   
CODE_2AA41E:        BEQ CODE_2AA43C           
CODE_2AA420:        INX                       
CODE_2AA421:        TXA                       
CODE_2AA422:        AND #$0F                  
CODE_2AA424:        BNE CODE_2AA430           
CODE_2AA426:        REP #$20                  
CODE_2AA428:        TXA                       
CODE_2AA429:        CLC                       
CODE_2AA42A:        ADC #$01A0                
CODE_2AA42D:        TAX                       
CODE_2AA42E:        SEP #$20                  
CODE_2AA430:        LDA #$36                  
CODE_2AA432:        JSR CODE_2A8CD9           
CODE_2AA435:        LDA #$39                  
CODE_2AA437:        JSR CODE_2A8CEE           
CODE_2AA43A:        BRA CODE_2AA41C           

CODE_2AA43C:        INX                       
CODE_2AA43D:        LDA #$37                  
CODE_2AA43F:        JSR CODE_2A8CD9           
CODE_2AA442:        LDA #$3A                  
CODE_2AA444:        JSR CODE_2A8CEE           
CODE_2AA447:        SEP #$10                  
CODE_2AA449:        RTS                       

CODE_2AA44A:        SEP #$10                  
CODE_2AA44C:        JSR CODE_2AA38B           
CODE_2AA44F:        LDX #$50                  
CODE_2AA451:        LDA #$0F                  
CODE_2AA453:        STA $00                   
CODE_2AA455:        LDA #$10                  
CODE_2AA457:        STA $01                   
CODE_2AA459:        LDA #$0D                  
CODE_2AA45B:        STA $02                   
CODE_2AA45D:        LDA #$0E                  
CODE_2AA45F:        STA $03                   
CODE_2AA461:        LDA #$04                  
CODE_2AA463:        STA $04                   
CODE_2AA465:        JSR CODE_2A975C           
CODE_2AA468:        LDY #$00                  
CODE_2AA46A:        LDA [$2B],y               
CODE_2AA46C:        CMP #$FF                  
CODE_2AA46E:        BEQ CODE_2AA478           
CODE_2AA470:        JSR CODE_2A8E54           
CODE_2AA473:        JSR (PNTR_2AA4F9,x)             
CODE_2AA476:        BRA CODE_2AA468           

CODE_2AA478:        LDA $0350                 
CODE_2AA47B:        CMP #$19                  
CODE_2AA47D:        BNE CODE_2AA4F7           
CODE_2AA47F:        LDA #$00                  
CODE_2AA481:        XBA                       
CODE_2AA482:        INC $034F                 
CODE_2AA485:        REP #$10                  
CODE_2AA487:        LDY #$0000                
CODE_2AA48A:        LDX #$00B0                
CODE_2AA48D:        LDA #$CF                  
CODE_2AA48F:        MVN $7F7F                 
CODE_2AA492:        LDA #$00                  
CODE_2AA494:        XBA                       
CODE_2AA495:        LDY #$01B0                
CODE_2AA498:        LDX #$0260                
CODE_2AA49B:        LDA #$CF                  
CODE_2AA49D:        MVN $7F7F                 
CODE_2AA4A0:        SEP #$10                  
CODE_2AA4A2:        LDA #$42                  
CODE_2AA4A4:        STA $00                   
CODE_2AA4A6:        LDA #$43                  
CODE_2AA4A8:        STA $01                   
CODE_2AA4AA:        REP #$20                  
CODE_2AA4AC:        PHB                       
CODE_2AA4AD:        LDY #$7F                  
CODE_2AA4AF:        PHY                       
CODE_2AA4B0:        PLB                       
CODE_2AA4B1:        LDY #$00                  
CODE_2AA4B3:        LDX #$00                  
CODE_2AA4B5:        LDA $00                   
CODE_2AA4B7:        STA $00D0,x               
CODE_2AA4BA:        STA $00F0,x               
CODE_2AA4BD:        STA $0110,x               
CODE_2AA4C0:        STA $0130,x               
CODE_2AA4C3:        STA $0150,x               
CODE_2AA4C6:        STA $0170,x               
CODE_2AA4C9:        STA $0190,x               
CODE_2AA4CC:        STA $0280,x               
CODE_2AA4CF:        STA $02A0,x               
CODE_2AA4D2:        STA $02C0,x               
CODE_2AA4D5:        STA $02E0,x               
CODE_2AA4D8:        STA $0300,x               
CODE_2AA4DB:        STA $0320,x               
CODE_2AA4DE:        STA $0340,x               
CODE_2AA4E1:        INX                       
CODE_2AA4E2:        INX                       
CODE_2AA4E3:        TXA                       
CODE_2AA4E4:        AND #$000F                
CODE_2AA4E7:        BNE CODE_2AA4B5           
CODE_2AA4E9:        TYA                       
CODE_2AA4EA:        BNE CODE_2AA4F4           
CODE_2AA4EC:        INY                       
CODE_2AA4ED:        LDA $00                   
CODE_2AA4EF:        XBA                       
CODE_2AA4F0:        STA $00                   
CODE_2AA4F2:        BRA CODE_2AA4B5           

CODE_2AA4F4:        PLB                       
CODE_2AA4F5:        SEP #$20                  
CODE_2AA4F7:        PLB                       
CODE_2AA4F8:        RTL                       

PNTR_2AA4F9:        dw CODE_2AA3E1              
                    dw CODE_2AA40E
                    dw CODE_2AA505
                    dw CODE_2AA5AB
                    dw CODE_2AA600
                    dw CODE_2AA65A

CODE_2AA505:        REP #$10                  ;
CODE_2AA507:        STZ $02                   ;
CODE_2AA509:        LDX $00                   ;
CODE_2AA50B:        LDA $7F0000,x             ;
CODE_2AA50F:        CMP #$04                  ;
CODE_2AA511:        BNE CODE_2AA562           ;
CODE_2AA513:        LDA $02                   ;
CODE_2AA515:        STA $03                   ;
CODE_2AA517:        LDA #$16                  ;
CODE_2AA519:        JSR CODE_2A8CD9           ;
CODE_2AA51C:        LDA $03                   ;
CODE_2AA51E:        BEQ CODE_2AA532           ;
CODE_2AA520:        INX                       ;               
CODE_2AA521:        LDA #$18                  
CODE_2AA523:        JSR CODE_2A8CD9           
CODE_2AA526:        DEC $03                   
CODE_2AA528:        BEQ CODE_2AA532           
CODE_2AA52A:        INX                       
CODE_2AA52B:        LDA #$1A                  
CODE_2AA52D:        JSR CODE_2A8CD9           
CODE_2AA530:        BRA CODE_2AA526           

CODE_2AA532:        LDA $02                   
CODE_2AA534:        STA $03                   
CODE_2AA536:        LDA $03                   
CODE_2AA538:        BEQ CODE_2AA54C           
CODE_2AA53A:        DEC $03                   
CODE_2AA53C:        BEQ CODE_2AA546           
CODE_2AA53E:        INX                       
CODE_2AA53F:        LDA #$1B                  
CODE_2AA541:        JSR CODE_2A8CD9           
CODE_2AA544:        BRA CODE_2AA536           

CODE_2AA546:        INX                       
CODE_2AA547:        LDA #$19                  
CODE_2AA549:        JSR CODE_2A8CD9           
CODE_2AA54C:        INX                       
CODE_2AA54D:        LDA #$17                  
CODE_2AA54F:        JSR CODE_2A8CD9           
CODE_2AA552:        INC $02                   
CODE_2AA554:        REP #$20                  
CODE_2AA556:        LDA $00                   
CODE_2AA558:        CLC                       
CODE_2AA559:        ADC #$000F                
CODE_2AA55C:        STA $00                   
CODE_2AA55E:        SEP #$20                  
CODE_2AA560:        BRA CODE_2AA509           

CODE_2AA562:        INX                       
CODE_2AA563:        LDA #$2D                  
CODE_2AA565:        STA $02                   
CODE_2AA567:        LDA $7EFFF0,x             
CODE_2AA56B:        CMP #$1B                  
CODE_2AA56D:        BEQ CODE_2AA57F           
CODE_2AA56F:        LDA $02                   
CODE_2AA571:        JSR CODE_2A8CD9           
CODE_2AA574:        INX                       
CODE_2AA575:        INC $02                   
CODE_2AA577:        LDA $02                   
CODE_2AA579:        CMP #$31                  
CODE_2AA57B:        BEQ CODE_2AA563           
CODE_2AA57D:        BRA CODE_2AA567           

CODE_2AA57F:        LDA $02                   
CODE_2AA581:        CLC                       
CODE_2AA582:        ADC #$06                  
CODE_2AA584:        CMP #$35                  
CODE_2AA586:        BNE CODE_2AA58A           
CODE_2AA588:        LDA #$31                  
CODE_2AA58A:        STA $02                   
CODE_2AA58C:        LDA $7EFFF0,x             
CODE_2AA590:        CMP #$04                  
CODE_2AA592:        BEQ CODE_2AA5A8           
CODE_2AA594:        LDA $02                   
CODE_2AA596:        JSR CODE_2A8CD9           
CODE_2AA599:        INX                       
CODE_2AA59A:        INC $02                   
CODE_2AA59C:        LDA $02                   
CODE_2AA59E:        CMP #$35                  
CODE_2AA5A0:        BNE CODE_2AA58C           
CODE_2AA5A2:        LDA #$31                  
CODE_2AA5A4:        STA $02                   
CODE_2AA5A6:        BRA CODE_2AA58C           

CODE_2AA5A8:        SEP #$10                  
CODE_2AA5AA:        RTS                       

CODE_2AA5AB:        REP #$10                  
CODE_2AA5AD:        REP #$20                  
CODE_2AA5AF:        LDA $DA                   
CODE_2AA5B1:        ASL A                     
CODE_2AA5B2:        TAY                       
CODE_2AA5B3:        LDA $A5EE,y               
CODE_2AA5B6:        STA $02                   
CODE_2AA5B8:        SEP #$20                  
CODE_2AA5BA:        LDX $00                   
CODE_2AA5BC:        LDA ($02)                 
CODE_2AA5BE:        BMI CODE_2AA5EB           
CODE_2AA5C0:        JSR CODE_2A8CD9           
CODE_2AA5C3:        REP #$20                  
CODE_2AA5C5:        INC $02                   
CODE_2AA5C7:        SEP #$20                  
CODE_2AA5C9:        INX                       
CODE_2AA5CA:        TXA                       
CODE_2AA5CB:        AND #$0F                  
CODE_2AA5CD:        BNE CODE_2AA5BC           
CODE_2AA5CF:        LDA $DA                   
CODE_2AA5D1:        BNE CODE_2AA5DF           
CODE_2AA5D3:        REP #$20                  
CODE_2AA5D5:        TXA                       
CODE_2AA5D6:        CLC                       
CODE_2AA5D7:        ADC #$01A0                
CODE_2AA5DA:        TAX                       
CODE_2AA5DB:        SEP #$20                  
CODE_2AA5DD:        BRA CODE_2AA5BC           

CODE_2AA5DF:        REP #$20                  
CODE_2AA5E1:        TXA                       
CODE_2AA5E2:        SEC                       
CODE_2AA5E3:        SBC #$01C0                
CODE_2AA5E6:        TAX                       
CODE_2AA5E7:        SEP #$20                  
CODE_2AA5E9:        BRA CODE_2AA5BC           

CODE_2AA5EB:        SEP #$10                  
CODE_2AA5ED:        RTS                       

     
DATA_2AA5EE:        db $F2,$A5,$FB,$A5,$26,$27,$2B,$2C
                    db $09,$0A,$0B,$0C,$FF,$26,$27,$28
                    db $29,$FF
    
          
CODE_2AA600:        REP #$10                  
CODE_2AA602:        LDX $00                   
CODE_2AA604:        LDA #$1C                  
CODE_2AA606:        JSR CODE_2A8CD9           
CODE_2AA609:        REP #$20                  
CODE_2AA60B:        LDA $00                   
CODE_2AA60D:        CLC                       
CODE_2AA60E:        ADC #$000F                
CODE_2AA611:        STA $00                   
CODE_2AA613:        TAX                       
CODE_2AA614:        SEP #$20                  
CODE_2AA616:        LDA $7F0000,x             
CODE_2AA61A:        CMP #$19                  
CODE_2AA61C:        BEQ CODE_2AA651           
CODE_2AA61E:        LDA #$1D                  
CODE_2AA620:        JSR CODE_2A8CD9           
CODE_2AA623:        INX                       
CODE_2AA624:        TXA                       
CODE_2AA625:        AND #$0F                  
CODE_2AA627:        BNE CODE_2AA633           
CODE_2AA629:        REP #$20                  
CODE_2AA62B:        TXA                       
CODE_2AA62C:        SEC                       
CODE_2AA62D:        SBC #$01C0                
CODE_2AA630:        TAX                       
CODE_2AA631:        SEP #$20                  
CODE_2AA633:        LDA $7EFFF0,x             
CODE_2AA637:        CMP #$04                  
CODE_2AA639:        BEQ CODE_2AA642           
CODE_2AA63B:        LDA #$1E                  
CODE_2AA63D:        JSR CODE_2A8CD9           
CODE_2AA640:        BRA CODE_2AA623           

CODE_2AA642:        LDA $7F0000,x             
CODE_2AA646:        CMP #$04                  
CODE_2AA648:        BNE CODE_2AA609           
CODE_2AA64A:        LDA #$1F                  
CODE_2AA64C:        JSR CODE_2A8CD9           
CODE_2AA64F:        BRA CODE_2AA609           

CODE_2AA651:        INX                       
CODE_2AA652:        LDA #$25                  
CODE_2AA654:        JSR CODE_2A8CD9           
CODE_2AA657:        SEP #$10                  
CODE_2AA659:        RTS                       

CODE_2AA65A:        REP #$10                  
CODE_2AA65C:        LDX $00                   
CODE_2AA65E:        LDA #$20                  
CODE_2AA660:        JSR CODE_2A8CD9           
CODE_2AA663:        INX                       
CODE_2AA664:        LDA #$21                  
CODE_2AA666:        JSR CODE_2A8CD9           
CODE_2AA669:        REP #$20                  
CODE_2AA66B:        LDA $00                   
CODE_2AA66D:        CLC                       
CODE_2AA66E:        ADC #$000F                
CODE_2AA671:        STA $00                   
CODE_2AA673:        TAX                       
CODE_2AA674:        SEP #$20                  
CODE_2AA676:        LDA #$22                  
CODE_2AA678:        JSR CODE_2A8CD9           
CODE_2AA67B:        INX                       
CODE_2AA67C:        LDA #$23                  
CODE_2AA67E:        JSR CODE_2A8CD9           
CODE_2AA681:        INX                       
CODE_2AA682:        LDA #$24                  
CODE_2AA684:        JSR CODE_2A8CD9           
CODE_2AA687:        REP #$20                  
CODE_2AA689:        LDA $00                   
CODE_2AA68B:        CLC                       
CODE_2AA68C:        ADC #$0011                
CODE_2AA68F:        TAX                       
CODE_2AA690:        SEP #$20                  
CODE_2AA692:        LDA #$2A                  
CODE_2AA694:        JSR CODE_2A8CD9           
CODE_2AA697:        SEP #$10                  
CODE_2AA699:        RTS                       

CODE_2AA69A:        SEP #$10                  
CODE_2AA69C:        LDA $0727                 
CODE_2AA69F:        CMP #$05                  
CODE_2AA6A1:        BNE CODE_2AA6A8           
CODE_2AA6A3:        LDA #$12                  
CODE_2AA6A5:        STA $02C5                 
CODE_2AA6A8:        LDX #$40                  
CODE_2AA6AA:        LDA #$28                  
CODE_2AA6AC:        STA $00                   
CODE_2AA6AE:        JSR CODE_2A9930           
CODE_2AA6B1:        CPX #$80                  
CODE_2AA6B3:        BNE CODE_2AA6AE           
CODE_2AA6B5:        LDY #$00                  
CODE_2AA6B7:        LDA [$2B],y               
CODE_2AA6B9:        CMP #$FF                  
CODE_2AA6BB:        BEQ CODE_2AA6C5           
CODE_2AA6BD:        JSR CODE_2A8E54           
CODE_2AA6C0:        JSR (PNTR_2AA6C7,x)             
CODE_2AA6C3:        BRA CODE_2AA6B5           

CODE_2AA6C5:        PLB                       
CODE_2AA6C6:        RTL                       

PNTR_2AA6C7:        dw CODE_2AA6D7
                    dw CODE_2AA755
                    dw CODE_2AA8A5
                    dw CODE_2AA8D5
                    dw CODE_2AA926
                    dw CODE_2AA92C
                    dw CODE_2AA932
                    dw CODE_2AA938

CODE_2AA6D7:        REP #$10                  ;
CODE_2AA6D9:        LDX $00                   ;
CODE_2AA6DB:        LDA $7F0000,x             ;
CODE_2AA6DF:        BNE CODE_2AA6E5           ;
CODE_2AA6E1:        LDA #$05                  ;
CODE_2AA6E3:        BRA CODE_2AA6E7           ;

CODE_2AA6E5:        LDA #$0C                  ;
CODE_2AA6E7:        JSR CODE_2A8CD9           ;
CODE_2AA6EA:        INX                       ;
CODE_2AA6EB:        TXA                       ;
CODE_2AA6EC:        AND #$0F                  ;
CODE_2AA6EE:        BNE CODE_2AA6FA           ;
CODE_2AA6F0:        REP #$20                  ;
CODE_2AA6F2:        TXA                       
CODE_2AA6F3:        CLC                       
CODE_2AA6F4:        ADC #$01A0                
CODE_2AA6F7:        TAX                       
CODE_2AA6F8:        SEP #$20                  
CODE_2AA6FA:        LDA $7F0000,x             
CODE_2AA6FE:        BNE CODE_2AA704           
CODE_2AA700:        LDA #$2E                  
CODE_2AA702:        BRA CODE_2AA706           

CODE_2AA704:        LDA #$0B                  
CODE_2AA706:        JSR CODE_2A8CD9           
CODE_2AA709:        REP #$20                  
CODE_2AA70B:        LDA $00                   
CODE_2AA70D:        CLC                       
CODE_2AA70E:        ADC #$0010                
CODE_2AA711:        STA $00                   
CODE_2AA713:        TAX                       
CODE_2AA714:        SEP #$20                  
CODE_2AA716:        DEC $D8                   
CODE_2AA718:        BEQ CODE_2AA736           
CODE_2AA71A:        LDA #$19                  
CODE_2AA71C:        JSR CODE_2A8CD9           
CODE_2AA71F:        INX                       
CODE_2AA720:        TXA                       
CODE_2AA721:        AND #$0F                  
CODE_2AA723:        BNE CODE_2AA72F           
CODE_2AA725:        REP #$20                  
CODE_2AA727:        TXA                       
CODE_2AA728:        CLC                       
CODE_2AA729:        ADC #$01A0                
CODE_2AA72C:        TAX                       
CODE_2AA72D:        SEP #$20                  
CODE_2AA72F:        LDA #$06                  
CODE_2AA731:        JSR CODE_2A8CD9           
CODE_2AA734:        BRA CODE_2AA709           

CODE_2AA736:        LDA $DA                   
CODE_2AA738:        BEQ CODE_2AA747           
CODE_2AA73A:        LDA #$1E                  
CODE_2AA73C:        JSR CODE_2A8CD9           
CODE_2AA73F:        INX                       
CODE_2AA740:        LDA #$1F                  
CODE_2AA742:        JSR CODE_2A8CD9           
CODE_2AA745:        BRA CODE_2AA752           

CODE_2AA747:        LDA #$26                  
CODE_2AA749:        JSR CODE_2A8CD9           
CODE_2AA74C:        INX                       
CODE_2AA74D:        LDA #$27                  
CODE_2AA74F:        JSR CODE_2A8CD9           
CODE_2AA752:        SEP #$10                  
CODE_2AA754:        RTS                       

CODE_2AA755:        REP #$10                  
CODE_2AA757:        LDA $D8                   
CODE_2AA759:        STA $DA                   
CODE_2AA75B:        LDX $00                   
CODE_2AA75D:        LDY #$0001                
CODE_2AA760:        LDA #$19                  
CODE_2AA762:        STA $02                   
CODE_2AA764:        JSR CODE_2AA879           
CODE_2AA767:        JSR CODE_2A8CD9           
CODE_2AA76A:        DEC $DA                   
CODE_2AA76C:        JSR CODE_2AA86E           
CODE_2AA76F:        LDY #$0007                
CODE_2AA772:        JSR CODE_2AA88F           
CODE_2AA775:        JSR CODE_2A8CD9           
CODE_2AA778:        DEC $DA                   
CODE_2AA77A:        LDA #$13                  
CODE_2AA77C:        STA $02                   
CODE_2AA77E:        JSR CODE_2AA861           
CODE_2AA781:        JSR CODE_2AA86E           
CODE_2AA784:        LDA #$22                  
CODE_2AA786:        JSR CODE_2A8CD9           
CODE_2AA789:        LDA $D8                   
CODE_2AA78B:        STA $DA                   
CODE_2AA78D:        REP #$20                  
CODE_2AA78F:        INC $00                   
CODE_2AA791:        SEP #$20                  
CODE_2AA793:        LDA $00                   
CODE_2AA795:        AND #$0F                  
CODE_2AA797:        BNE CODE_2AA7AA           
CODE_2AA799:        REP #$20                  
CODE_2AA79B:        LDA $00                   
CODE_2AA79D:        SEC                       
CODE_2AA79E:        SBC #$01C0                
CODE_2AA7A1:        STA $00                   
CODE_2AA7A3:        TAX                       
CODE_2AA7A4:        SEP #$20                  
CODE_2AA7A6:        LDA #$0E                  
CODE_2AA7A8:        BRA CODE_2AA7B6           

CODE_2AA7AA:        LDX $00                   
CODE_2AA7AC:        LDA #$06                  
CODE_2AA7AE:        STA $02                   
CODE_2AA7B0:        LDY #$0002                
CODE_2AA7B3:        JSR CODE_2AA879           
CODE_2AA7B6:        JSR CODE_2A8CD9           
CODE_2AA7B9:        DEC $DA                   
CODE_2AA7BB:        JSR CODE_2AA86E           
CODE_2AA7BE:        LDA #$08                  
CODE_2AA7C0:        JSR CODE_2A8CD9           
CODE_2AA7C3:        DEC $DA                   
CODE_2AA7C5:        LDA #$14                  
CODE_2AA7C7:        STA $02                   
CODE_2AA7C9:        JSR CODE_2AA861           
CODE_2AA7CC:        JSR CODE_2AA86E           
CODE_2AA7CF:        LDA #$23                  
CODE_2AA7D1:        JSR CODE_2A8CD9           
CODE_2AA7D4:        REP #$20                  
CODE_2AA7D6:        INC $00                   
CODE_2AA7D8:        SEP #$20                  
CODE_2AA7DA:        LDX $00                   
CODE_2AA7DC:        LDA $D8                   
CODE_2AA7DE:        STA $DA                   
CODE_2AA7E0:        LDA #$13                  
CODE_2AA7E2:        STA $02                   
CODE_2AA7E4:        LDY #$0003                
CODE_2AA7E7:        JSR CODE_2AA879           
CODE_2AA7EA:        JSR CODE_2A8CD9           
CODE_2AA7ED:        DEC $DA                   
CODE_2AA7EF:        JSR CODE_2AA86E           
CODE_2AA7F2:        LDA #$09                  
CODE_2AA7F4:        JSR CODE_2A8CD9           
CODE_2AA7F7:        DEC $DA                   
CODE_2AA7F9:        LDA #$11                  
CODE_2AA7FB:        STA $02                   
CODE_2AA7FD:        JSR CODE_2AA861           
CODE_2AA800:        JSR CODE_2AA86E           
CODE_2AA803:        LDA #$24                  
CODE_2AA805:        JSR CODE_2A8CD9           
CODE_2AA808:        REP #$20                  
CODE_2AA80A:        INC $00                   
CODE_2AA80C:        SEP #$20                  
CODE_2AA80E:        LDX $00                   
CODE_2AA810:        LDA $D8                   
CODE_2AA812:        STA $DA                   
CODE_2AA814:        LDA #$14                  
CODE_2AA816:        STA $02                   
CODE_2AA818:        LDY #$0004                
CODE_2AA81B:        JSR CODE_2AA879           
CODE_2AA81E:        JSR CODE_2A8CD9           
CODE_2AA821:        DEC $DA                   
CODE_2AA823:        JSR CODE_2AA86E           
CODE_2AA826:        LDA #$06                  
CODE_2AA828:        STA $02                   
CODE_2AA82A:        LDY #$000A                
CODE_2AA82D:        JSR CODE_2AA88F           
CODE_2AA830:        LDA $7F0000,x             
CODE_2AA834:        CMP #$14                  
CODE_2AA836:        BNE CODE_2AA83B           
CODE_2AA838:        LDY #$001B                
CODE_2AA83B:        TYA                       
CODE_2AA83C:        JSR CODE_2A8CD9           
CODE_2AA83F:        DEC $DA                   
CODE_2AA841:        LDA #$12                  
CODE_2AA843:        STA $02                   
CODE_2AA845:        JSR CODE_2AA861           
CODE_2AA848:        JSR CODE_2AA86E           
CODE_2AA84B:        LDA #$25                  
CODE_2AA84D:        JSR CODE_2A8CD9           
CODE_2AA850:        INX                       
CODE_2AA851:        LDA $7F0000,x             
CODE_2AA855:        CMP #$2A                  
CODE_2AA857:        BNE CODE_2AA85E           
CODE_2AA859:        LDA #$2C                  
CODE_2AA85B:        JSR CODE_2A8CD9           
CODE_2AA85E:        SEP #$10                  
CODE_2AA860:        RTS                       

CODE_2AA861:        JSR CODE_2AA86E           
CODE_2AA864:        LDA $02                   
CODE_2AA866:        JSR CODE_2A8CD9           
CODE_2AA869:        DEC $DA                   
CODE_2AA86B:        BNE CODE_2AA861           
CODE_2AA86D:        RTS                       

CODE_2AA86E:        REP #$20                  
CODE_2AA870:        TXA                       
CODE_2AA871:        CLC                       
CODE_2AA872:        ADC #$0010                
CODE_2AA875:        TAX                       
CODE_2AA876:        SEP #$20                  
CODE_2AA878:        RTS                       

CODE_2AA879:        LDA $7F0000,x             
CODE_2AA87D:        BEQ CODE_2AA88D           
CODE_2AA87F:        CMP $02                   
CODE_2AA881:        BEQ CODE_2AA888           
CODE_2AA883:        TYA                       
CODE_2AA884:        CLC                       
CODE_2AA885:        ADC #$08                  
CODE_2AA887:        TAY                       
CODE_2AA888:        TYA                       
CODE_2AA889:        CLC                       
CODE_2AA88A:        ADC #$0C                  
CODE_2AA88C:        TAY                       
CODE_2AA88D:        TYA                       
CODE_2AA88E:        RTS                       

CODE_2AA88F:        LDA $7F0000,x             
CODE_2AA893:        BEQ CODE_2AA8A3           
CODE_2AA895:        CMP $02                   
CODE_2AA897:        BEQ CODE_2AA89E           
CODE_2AA899:        TYA                       
CODE_2AA89A:        CLC                       
CODE_2AA89B:        ADC #$02                  
CODE_2AA89D:        TAY                       
CODE_2AA89E:        TYA                       
CODE_2AA89F:        CLC                       
CODE_2AA8A0:        ADC #$13                  
CODE_2AA8A2:        TAY                       
CODE_2AA8A3:        TYA                       
CODE_2AA8A4:        RTS                       

CODE_2AA8A5:        REP #$10                  
CODE_2AA8A7:        LDX $00                   
CODE_2AA8A9:        LDA $7EFFFF,x             
CODE_2AA8AD:        CMP #$25                  
CODE_2AA8AF:        BEQ CODE_2AA8B5           
CODE_2AA8B1:        LDA #$2A                  
CODE_2AA8B3:        BRA CODE_2AA8B7           

CODE_2AA8B5:        LDA #$2C                  
CODE_2AA8B7:        JSR CODE_2A8CD9           
CODE_2AA8BA:        INX                       
CODE_2AA8BB:        LDA #$2A                  
CODE_2AA8BD:        JSR CODE_2A8CD9           
CODE_2AA8C0:        INX                       
CODE_2AA8C1:        LDA $7F0001,x             
CODE_2AA8C5:        CMP #$22                  
CODE_2AA8C7:        BEQ CODE_2AA8CD           
CODE_2AA8C9:        LDA #$2A                  
CODE_2AA8CB:        BRA CODE_2AA8CF           

CODE_2AA8CD:        LDA #$2B                  
CODE_2AA8CF:        JSR CODE_2A8CD9           
CODE_2AA8D2:        SEP #$10                  
CODE_2AA8D4:        RTS                       

CODE_2AA8D5:        REP #$10                  
CODE_2AA8D7:        LDX $00                   
CODE_2AA8D9:        LDA $7F0000,x             
CODE_2AA8DD:        CMP #$27                  
CODE_2AA8DF:        BEQ CODE_2AA8E9           
CODE_2AA8E1:        CMP #$28                  
CODE_2AA8E3:        BNE CODE_2AA8EE           
CODE_2AA8E5:        LDA #$21                  
CODE_2AA8E7:        BRA CODE_2AA8EB           

CODE_2AA8E9:        LDA #$29                  
CODE_2AA8EB:        JSR CODE_2A8CD9           
CODE_2AA8EE:        INX                       
CODE_2AA8EF:        TXA                       
CODE_2AA8F0:        AND #$0F                  
CODE_2AA8F2:        BNE CODE_2AA8FE           
CODE_2AA8F4:        REP #$20                  
CODE_2AA8F6:        TXA                       
CODE_2AA8F7:        CLC                       
CODE_2AA8F8:        ADC #$01A0                
CODE_2AA8FB:        TAX                       
CODE_2AA8FC:        SEP #$20                  
CODE_2AA8FE:        LDA $D8                   
CODE_2AA900:        BEQ CODE_2AA916           
CODE_2AA902:        DEC $D8                   
CODE_2AA904:        LDA $7F0000,x             
CODE_2AA908:        CMP #$28                  
CODE_2AA90A:        BNE CODE_2AA911           
CODE_2AA90C:        LDA #$2D                  
CODE_2AA90E:        JSR CODE_2A8CD9           
CODE_2AA911:        INX                       
CODE_2AA912:        DEC $D8                   
CODE_2AA914:        BNE CODE_2AA904           
CODE_2AA916:        LDA $7F0000,x             
CODE_2AA91A:        CMP #$28                  
CODE_2AA91C:        BNE CODE_2AA923           
CODE_2AA91E:        LDA #$20                  
CODE_2AA920:        JSR CODE_2A8CD9           
CODE_2AA923:        SEP #$10                  
CODE_2AA925:        RTS                       

CODE_2AA926:        LDA #$2F                  
CODE_2AA928:        STA $02                   
CODE_2AA92A:        BRA CODE_2AA93C           

CODE_2AA92C:        LDA #$30                  
CODE_2AA92E:        STA $02                   
CODE_2AA930:        BRA CODE_2AA93C           

CODE_2AA932:        LDA #$31                  
CODE_2AA934:        STA $02                   
CODE_2AA936:        BRA CODE_2AA93C           

CODE_2AA938:        LDA #$32                  
CODE_2AA93A:        STA $02                   
CODE_2AA93C:        REP #$10                  
CODE_2AA93E:        LDX $00                   
CODE_2AA940:        LDA $02                   
CODE_2AA942:        JSR CODE_2A8CD9           
CODE_2AA945:        SEP #$10                  
CODE_2AA947:        RTS                       

CODE_2AA948:        SEP #$10                  
CODE_2AA94A:        LDY #$00                  
CODE_2AA94C:        LDA [$2B],y               
CODE_2AA94E:        CMP #$FF                  
CODE_2AA950:        BEQ CODE_2AA95A           
CODE_2AA952:        JSR CODE_2A8E54           
CODE_2AA955:        JSR (PNTR_2AA95C,x)             
CODE_2AA958:        BRA CODE_2AA94A           

CODE_2AA95A:        PLB                       
CODE_2AA95B:        RTL                       

PNTR_2AA95C:        dw CODE_2AA966                   
                    dw CODE_2AA9B7          
                    dw CODE_2AA9F6                
                    dw CODE_2AAA12                 
                    dw CODE_2AAA57

               
CODE_2AA966:        REP #$30                  
CODE_2AA968:        LDA #$A9AF                
CODE_2AA96B:        STA $02                   
CODE_2AA96D:        LDA #$A9B3                
CODE_2AA970:        STA $04                   
CODE_2AA972:        SEP #$20                  
CODE_2AA974:        JSR CODE_2AA97A           
CODE_2AA977:        SEP #$10                  
CODE_2AA979:        RTS                       

CODE_2AA97A:        LDX $00                   ;
CODE_2AA97C:        LDY #$0000                ;
CODE_2AA97F:        LDA ($02),y               ;
CODE_2AA981:        JSR CODE_2A8CD9           ;
CODE_2AA984:        LDA ($04),y               ;
CODE_2AA986:        JSR CODE_2A8CEE           ;
CODE_2AA989:        INX                       ;
CODE_2AA98A:        TXA                       ;
CODE_2AA98B:        AND #$0F                  ;
CODE_2AA98D:        BNE CODE_2AA9A4           ;
CODE_2AA98F:        REP #$20                  ;
CODE_2AA991:        TXA                       ;
CODE_2AA992:        CMP #$01B0                ;
CODE_2AA995:        BCS CODE_2AA99D           ;
CODE_2AA997:        CLC                       ;
CODE_2AA998:        ADC #$01A0                ;
CODE_2AA99B:        BRA CODE_2AA9A1           ;

CODE_2AA99D:        SEC                       
CODE_2AA99E:        SBC #$01C0                
CODE_2AA9A1:        TAX                       
CODE_2AA9A2:        SEP #$20                  
CODE_2AA9A4:        INY                       
CODE_2AA9A5:        TYA                       
CODE_2AA9A6:        AND #$03                  
CODE_2AA9A8:        BNE CODE_2AA97F           
CODE_2AA9AA:        DEC $D8                   
CODE_2AA9AC:        BNE CODE_2AA97C           
CODE_2AA9AE:        RTS                       

DATA_2AA9AF:        db $04,$05,$06,$07,$02,$03,$00,$01

                 
CODE_2AA9B7:        REP #$30                  
CODE_2AA9B9:        LDA #$A9EE                
CODE_2AA9BC:        STA $02                   
CODE_2AA9BE:        LDA #$A9F2                
CODE_2AA9C1:        STA $04                   
CODE_2AA9C3:        SEP #$20                  
CODE_2AA9C5:        JSR CODE_2AA9CB           
CODE_2AA9C8:        SEP #$10                  
CODE_2AA9CA:        RTS                       

CODE_2AA9CB:        LDY #$0000                ;
CODE_2AA9CE:        LDX $00                   ;
CODE_2AA9D0:        LDA ($02),y               ;
CODE_2AA9D2:        JSR CODE_2A8CD9           ;
CODE_2AA9D5:        INX                       ;
CODE_2AA9D6:        LDA ($04),y               ;
CODE_2AA9D8:        JSR CODE_2A8CD9           ;
CODE_2AA9DB:        REP #$20                  ;
CODE_2AA9DD:        LDA $00                   ;
CODE_2AA9DF:        CLC                       ;
CODE_2AA9E0:        ADC #$0010                ;
CODE_2AA9E3:        STA $00                   ;
CODE_2AA9E5:        SEP #$20                  ;
CODE_2AA9E7:        INY                       ;
CODE_2AA9E8:        TYA                       ;
CODE_2AA9E9:        AND #$03                  ;
CODE_2AA9EB:        BNE CODE_2AA9CE           ;
CODE_2AA9ED:        RTS                       ;

DATA_2AA9EE:        db $04,$08,$08,$02,$07,$09,$09,$01

CODE_2AA9F6:        REP #$10                  ;
CODE_2AA9F8:        LDX $00                   ;
CODE_2AA9FA:        LDA #$04                  ;
CODE_2AA9FC:        JSR CODE_2A8CD9           ;
CODE_2AA9FF:        LDA #$02                  ;
CODE_2AAA01:        JSR CODE_2A8CEE           ;
CODE_2AAA04:        INX                       ;
CODE_2AAA05:        LDA #$07                  ;
CODE_2AAA07:        JSR CODE_2A8CD9           ;
CODE_2AAA0A:        LDA #$01                  ;
CODE_2AAA0C:        JSR CODE_2A8CEE           ;
CODE_2AAA0F:        SEP #$10                  ;
CODE_2AAA11:        RTS                       ;                       

CODE_2AAA12:        REP #$30                  
CODE_2AAA14:        LDA $D8                   
CODE_2AAA16:        STA $DA                   
CODE_2AAA18:        LDA #$AA47                
CODE_2AAA1B:        STA $02                   
CODE_2AAA1D:        LDA #$AA4B                
CODE_2AAA20:        STA $04                   
CODE_2AAA22:        SEP #$20                  
CODE_2AAA24:        JSR CODE_2AA97A           
CODE_2AAA27:        REP #$20                  
CODE_2AAA29:        LDA $DA                   
CODE_2AAA2B:        STA $D8                   
CODE_2AAA2D:        LDA $00                   
CODE_2AAA2F:        CLC                       
CODE_2AAA30:        ADC #$0020                
CODE_2AAA33:        STA $00                   
CODE_2AAA35:        LDA #$AA4F                
CODE_2AAA38:        STA $02                   
CODE_2AAA3A:        LDA #$AA53                
CODE_2AAA3D:        STA $04                   
CODE_2AAA3F:        SEP #$20                  
CODE_2AAA41:        JSR CODE_2AA97A           
CODE_2AAA44:        SEP #$10                  
CODE_2AAA46:        RTS                       

DATA_2AAA47:        db $04,$05,$06,$07,$0E,$0F,$10,$11
                    db $0E,$0F,$10,$11,$02,$03,$00,$01

CODE_2AAA57:        REP #$30                  ;
CODE_2AAA59:        LDA #$AA87                ;
CODE_2AAA5C:        STA $02                   ;
CODE_2AAA5E:        LDA #$AA8B                ;
CODE_2AAA61:        STA $04                   ;
CODE_2AAA63:        LDA $00                   
CODE_2AAA65:        PHA                       
CODE_2AAA66:        SEP #$20                  
CODE_2AAA68:        JSR CODE_2AA9CB           
CODE_2AAA6B:        REP #$20                  
CODE_2AAA6D:        PLA                       
CODE_2AAA6E:        INC A                     
CODE_2AAA6F:        INC A                     
CODE_2AAA70:        STA $00                   
CODE_2AAA72:        AND #$000F                
CODE_2AAA75:        BNE CODE_2AAA7F           
CODE_2AAA77:        LDA $00                   
CODE_2AAA79:        CLC                       
CODE_2AAA7A:        ADC #$01A0                
CODE_2AAA7D:        STA $00                   
CODE_2AAA7F:        SEP #$20                  
CODE_2AAA81:        JSR CODE_2AA9CB           
CODE_2AAA84:        SEP #$10                  
CODE_2AAA86:        RTS                       

DATA_2AAA87:        db $0A,$0C,$0D,$0A,$0B,$0C,$0D,$0B

                
CODE_2AAA8F:        SEP #$10                  
CODE_2AAA91:        LDX #$10                  
CODE_2AAA93:        LDA #$1B                  
CODE_2AAA95:        STA $00                   
CODE_2AAA97:        JSR CODE_2A9930           
CODE_2AAA9A:        LDA #$1E                  
CODE_2AAA9C:        STA $00                   
CODE_2AAA9E:        JSR CODE_2A9930           
CODE_2AAAA1:        LDX #$50                  
CODE_2AAAA3:        LDA #$3B                  
CODE_2AAAA5:        STA $00                   
CODE_2AAAA7:        JSR CODE_2A9930           
CODE_2AAAAA:        JSR CODE_2A9930           
CODE_2AAAAD:        JSR CODE_2A9930           
CODE_2AAAB0:        JSR CODE_2A9930           
CODE_2AAAB3:        JSR CODE_2A9930           
CODE_2AAAB6:        LDY #$00                  
CODE_2AAAB8:        LDA [$2B],y               
CODE_2AAABA:        CMP #$FF                  
CODE_2AAABC:        BEQ CODE_2AAAC6           
CODE_2AAABE:        JSR CODE_2A8E54           
CODE_2AAAC1:        JSR (PNTR_2AAAC8,x)             
CODE_2AAAC4:        BRA CODE_2AAAB6           

CODE_2AAAC6:        PLB                       
CODE_2AAAC7:        RTL                       

PNTR_2AAAC8:        dw CODE_2AAACE
                    dw CODE_2AAB8D                      
                    dw CODE_2AABB1   
        
   
CODE_2AAACE:        LDA #$2A                  
CODE_2AAAD0:        STA $08                   
CODE_2AAAD2:        STA $0B                   
CODE_2AAAD4:        STA $0E                   
CODE_2AAAD6:        REP #$30                  
CODE_2AAAD8:        LDX $D8                   
CODE_2AAADA:        LDA $AB0D,x               
CODE_2AAADD:        STA $06                   
CODE_2AAADF:        LDA $AB19,x               
CODE_2AAAE2:        STA $09                   
CODE_2AAAE4:        LDA $AB25,x               
CODE_2AAAE7:        STA $0C                   
CODE_2AAAE9:        STZ $04                   
CODE_2AAAEB:        SEP #$20                  
CODE_2AAAED:        LDA $AB01,x               
CODE_2AAAF0:        STA $0F                   
CODE_2AAAF2:        LDX $00                   
CODE_2AAAF4:        LDY #$0000                
CODE_2AAAF7:        LDA [$0C]                 
CODE_2AAAF9:        STA $02                   
CODE_2AAAFB:        JSR CODE_2A8FA7           
CODE_2AAAFE:        SEP #$10                  
CODE_2AAB00:        RTS                       

DATA_2AAB01:        db $04,$00,$02,$00,$02,$00,$02,$00
                    db $02,$00,$03,$00,$31,$AB,$3E,$AB
                    db $46,$AB,$52,$AB,$56,$AB,$63,$AB
                    db $72,$AB,$78,$AB,$78,$AB,$78,$AB
                    db $78,$AB,$7A,$AB,$7E,$AB,$82,$AB
                    db $84,$AB,$86,$AB,$88,$AB,$8A,$AB
                    db $03,$04,$0C,$0D,$0E,$0C,$12,$16
                    db $10,$11,$17,$1C,$1A,$0F,$03,$04
                    db $06,$18,$0C,$12,$13,$16,$06,$19
                    db $03,$04,$06,$1C,$1D,$1A,$1B,$1C
                    db $1D,$10,$11,$05,$1A,$02,$05,$03
                    db $04,$06,$07,$0B,$0C,$0C,$12,$13
                    db $14,$15,$01,$00,$02,$02,$05,$08
                    db $09,$0A,$0B,$0B,$0C,$0C,$0C,$0C
                    db $0C,$10,$00,$10,$00,$12,$00,$10
                    db $00,$0D,$00,$10,$00,$02,$03,$06
                    db $02,$04,$04,$06,$06,$03,$01,$06
                    db $07,$03,$06,$06
 
                 
CODE_2AAB8D:        REP #$10                  
CODE_2AAB8F:        LDX $00                   
CODE_2AAB91:        LDA #$2B                  
CODE_2AAB93:        STA $02                   
CODE_2AAB95:        LDA #$37                  
CODE_2AAB97:        STA $03                   
CODE_2AAB99:        LDA $02                   
CODE_2AAB9B:        JSR CODE_2A8CD9           
CODE_2AAB9E:        LDA $03                   
CODE_2AABA0:        JSR CODE_2A8CEE           
CODE_2AABA3:        CMP #$3A                  
CODE_2AABA5:        BEQ CODE_2AABAE           
CODE_2AABA7:        INX                       
CODE_2AABA8:        INC $02                   
CODE_2AABAA:        INC $03                   
CODE_2AABAC:        BRA CODE_2AAB99           

CODE_2AABAE:        SEP #$10                  
CODE_2AABB0:        RTS                       

CODE_2AABB1:        REP #$10                  
CODE_2AABB3:        LDX $00                   
CODE_2AABB5:        LDY #$0004                
CODE_2AABB8:        LDA #$1F                  
CODE_2AABBA:        STA $02                   
CODE_2AABBC:        JSR CODE_2AABEA           
CODE_2AABBF:        LDY #$0008                
CODE_2AABC2:        REP #$20                  
CODE_2AABC4:        LDA $00                   
CODE_2AABC6:        CLC                       
CODE_2AABC7:        ADC #$000E                
CODE_2AABCA:        STA $00                   
CODE_2AABCC:        TAX                       
CODE_2AABCD:        SEP #$20                  
CODE_2AABCF:        JSR CODE_2AABEA           
CODE_2AABD2:        LDY #$0008                
CODE_2AABD5:        LDA #$2F                  
CODE_2AABD7:        STA $02                   
CODE_2AABD9:        REP #$20                  
CODE_2AABDB:        LDA $00                   
CODE_2AABDD:        CLC                       
CODE_2AABDE:        ADC #$0010                
CODE_2AABE1:        TAX                       
CODE_2AABE2:        SEP #$20                  
CODE_2AABE4:        JSR CODE_2AABEA           
CODE_2AABE7:        SEP #$10                  
CODE_2AABE9:        RTS                       

CODE_2AABEA:        LDA $02                   
CODE_2AABEC:        JSR CODE_2A8CD9           
CODE_2AABEF:        INC $02                   
CODE_2AABF1:        INX                       
CODE_2AABF2:        TXA                       
CODE_2AABF3:        AND #$0F                  
CODE_2AABF5:        BNE CODE_2AAC01           
CODE_2AABF7:        REP #$20                  
CODE_2AABF9:        TXA                       
CODE_2AABFA:        SEC                       
CODE_2AABFB:        SBC #$01C0                
CODE_2AABFE:        TAX                       
CODE_2AABFF:        SEP #$20                  
CODE_2AAC01:        DEY                       
CODE_2AAC02:        BNE CODE_2AABEA           
CODE_2AAC04:        RTS                       

CODE_2AAC05:        SEP #$10                  
CODE_2AAC07:        LDA #$00                  
CODE_2AAC09:        STA $00                   
CODE_2AAC0B:        INC A                     
CODE_2AAC0C:        STA $01                   
CODE_2AAC0E:        INC A                     
CODE_2AAC0F:        STA $02                   
CODE_2AAC11:        INC A                     
CODE_2AAC12:        STA $03                   
CODE_2AAC14:        LDX #$00                  
CODE_2AAC16:        JSR CODE_2AAC59           
CODE_2AAC19:        LDA #$04                  
CODE_2AAC1B:        STA $00                   
CODE_2AAC1D:        INC A                     
CODE_2AAC1E:        STA $01                   
CODE_2AAC20:        INC A                     
CODE_2AAC21:        STA $02                   
CODE_2AAC23:        INC A                     
CODE_2AAC24:        STA $03                   
CODE_2AAC26:        LDX #$10                  
CODE_2AAC28:        JSR CODE_2AAC59           
CODE_2AAC2B:        LDA #$08                  
CODE_2AAC2D:        STA $00                   
CODE_2AAC2F:        INC A                     
CODE_2AAC30:        STA $01                   
CODE_2AAC32:        INC A                     
CODE_2AAC33:        STA $02                   
CODE_2AAC35:        INC A                     
CODE_2AAC36:        STA $03                   
CODE_2AAC38:        LDX #$20                  
CODE_2AAC3A:        JSR CODE_2AAC59           
CODE_2AAC3D:        LDA #$0C                  
CODE_2AAC3F:        STA $00                   
CODE_2AAC41:        INC A                     
CODE_2AAC42:        STA $01                   
CODE_2AAC44:        INC A                     
CODE_2AAC45:        STA $02                   
CODE_2AAC47:        INC A                     
CODE_2AAC48:        STA $03                   
CODE_2AAC4A:        LDX #$30                  
CODE_2AAC4C:        JSR CODE_2AAC59           
CODE_2AAC4F:        TXA                       
CODE_2AAC50:        CLC                       
CODE_2AAC51:        ADC #$30                  
CODE_2AAC53:        TAX                       
CODE_2AAC54:        JSR CODE_2AAC8B           
CODE_2AAC57:        PLB                       
CODE_2AAC58:        RTL                       

CODE_2AAC59:        LDA $00                   
CODE_2AAC5B:        JSR CODE_2A8D03           
CODE_2AAC5E:        JSR CODE_2A8D25           
CODE_2AAC61:        INX                       
CODE_2AAC62:        LDA $01                   
CODE_2AAC64:        JSR CODE_2A8D03           
CODE_2AAC67:        JSR CODE_2A8D25           
CODE_2AAC6A:        INX                       
CODE_2AAC6B:        LDA $02                   
CODE_2AAC6D:        JSR CODE_2A8D03           
CODE_2AAC70:        JSR CODE_2A8D25           
CODE_2AAC73:        INX                       
CODE_2AAC74:        LDA $03                   
CODE_2AAC76:        JSR CODE_2A8D03           
CODE_2AAC79:        JSR CODE_2A8D25           
CODE_2AAC7C:        INX                       
CODE_2AAC7D:        TXA                       
CODE_2AAC7E:        AND #$0F                  
CODE_2AAC80:        BNE CODE_2AAC59           
CODE_2AAC82:        TXA                       
CODE_2AAC83:        CLC                       
CODE_2AAC84:        ADC #$30                  
CODE_2AAC86:        TAX                       
CODE_2AAC87:        CPX #$B0                  
CODE_2AAC89:        BCC CODE_2AAC59           
CODE_2AAC8B:        LDA $00                   
CODE_2AAC8D:        JSR CODE_2A8D03           
CODE_2AAC90:        INX                       
CODE_2AAC91:        LDA $01                   
CODE_2AAC93:        JSR CODE_2A8D03           
CODE_2AAC96:        INX                       
CODE_2AAC97:        LDA $02                   
CODE_2AAC99:        JSR CODE_2A8D03           
CODE_2AAC9C:        INX                       
CODE_2AAC9D:        LDA $03                   
CODE_2AAC9F:        JSR CODE_2A8D03           
CODE_2AACA2:        INX                       
CODE_2AACA3:        TXA                       
CODE_2AACA4:        AND #$0F                  
CODE_2AACA6:        BNE CODE_2AAC8B           
CODE_2AACA8:        RTS                       

CODE_2AACA9:        SEP #$10                  
CODE_2AACAB:        LDX #$D0                  
CODE_2AACAD:        LDA #$1B                  
CODE_2AACAF:        STA $00                   
CODE_2AACB1:        JSR CODE_2A9924           
CODE_2AACB4:        JSR CODE_2A9924           
CODE_2AACB7:        JSR CODE_2A9924           
CODE_2AACBA:        JSR CODE_2A9930           
CODE_2AACBD:        JSR CODE_2A9930           
CODE_2AACC0:        JSR CODE_2A9930           
CODE_2AACC3:        REP #$10                  
CODE_2AACC5:        LDY #$0000                
CODE_2AACC8:        LDX #$00B0                
CODE_2AACCB:        REP #$20                  
CODE_2AACCD:        LDA #$ADA3                
CODE_2AACD0:        STA $00                   
CODE_2AACD2:        SEP #$20                  
CODE_2AACD4:        JSR CODE_2AAD96           
CODE_2AACD7:        LDX #$00E1                
CODE_2AACDA:        LDA #$19                  
CODE_2AACDC:        JSR CODE_2A8CD9           
CODE_2AACDF:        LDX #$00F8                
CODE_2AACE2:        JSR CODE_2A8CD9           
CODE_2AACE5:        INX                       
CODE_2AACE6:        JSR CODE_2A8CD9           
CODE_2AACE9:        LDX #$0296                
CODE_2AACEC:        JSR CODE_2A8CD9           
CODE_2AACEF:        LDX #$029A                
CODE_2AACF2:        JSR CODE_2A8CD9           
CODE_2AACF5:        INX                       
CODE_2AACF6:        JSR CODE_2A8CD9           
CODE_2AACF9:        LDX #$02A2                
CODE_2AACFC:        JSR CODE_2A8CD9           
CODE_2AACFF:        LDY #$0000                
CODE_2AAD02:        LDX #$00E5                
CODE_2AAD05:        LDA $ADD3,y               
CODE_2AAD08:        JSR CODE_2A8CD9           
CODE_2AAD0B:        INX                       
CODE_2AAD0C:        INY                       
CODE_2AAD0D:        CPY #$0008                
CODE_2AAD10:        BNE CODE_2AAD05           
CODE_2AAD12:        LDY #$0000                
CODE_2AAD15:        LDX #$0260                
CODE_2AAD18:        REP #$20                  
CODE_2AAD1A:        LDA #$ADDB                
CODE_2AAD1D:        STA $00                   
CODE_2AAD1F:        SEP #$20                  
CODE_2AAD21:        JSR CODE_2AAD96           
CODE_2AAD24:        LDY #$0000                
CODE_2AAD27:        LDX #$0291                
CODE_2AAD2A:        LDA $AE0B,y               
CODE_2AAD2D:        JSR CODE_2A8CD9           
CODE_2AAD30:        INX                       
CODE_2AAD31:        INY                       
CODE_2AAD32:        CPY #$0004                
CODE_2AAD35:        BNE CODE_2AAD2A           
CODE_2AAD37:        SEP #$10                  
CODE_2AAD39:        LDX #$30                  
CODE_2AAD3B:        LDA #$24                  
CODE_2AAD3D:        STA $00                   
CODE_2AAD3F:        JSR CODE_2A9930           
CODE_2AAD42:        JSR CODE_2A9930           
CODE_2AAD45:        JSR CODE_2A9930           
CODE_2AAD48:        LDA #$2E                  
CODE_2AAD4A:        STA $00                   
CODE_2AAD4C:        JSR CODE_2A9930           
CODE_2AAD4F:        LDA #$29                  
CODE_2AAD51:        STA $00                   
CODE_2AAD53:        JSR CODE_2A9930           
CODE_2AAD56:        LDA #$26                  
CODE_2AAD58:        STA $00                   
CODE_2AAD5A:        JSR CODE_2A9930           
CODE_2AAD5D:        LDY #$00                  
CODE_2AAD5F:        LDA [$2B],y               
CODE_2AAD61:        CMP #$FF                  
CODE_2AAD63:        BEQ CODE_2AAD6D           
CODE_2AAD65:        JSR CODE_2A8E54           
CODE_2AAD68:        JSR CODE_2AAE0F           
CODE_2AAD6B:        BRA CODE_2AAD5D           

CODE_2AAD6D:        LDA $0350                 
CODE_2AAD70:        CMP #$1E                  
CODE_2AAD72:        BNE CODE_2AAD94           
CODE_2AAD74:        LDA #$00                  
CODE_2AAD76:        XBA                       
CODE_2AAD77:        REP #$10                  
CODE_2AAD79:        LDY #$0110                
CODE_2AAD7C:        LDX #$0120                
CODE_2AAD7F:        LDA #$EF                  
CODE_2AAD81:        MVN $7F7F                 
CODE_2AAD84:        LDA #$00                  
CODE_2AAD86:        XBA                       
CODE_2AAD87:        LDY #$02C0                
CODE_2AAD8A:        LDX #$02D0                
CODE_2AAD8D:        LDA #$EF                  
CODE_2AAD8F:        MVN $7F7F                 
CODE_2AAD92:        SEP #$10                  
CODE_2AAD94:        PLB                       
CODE_2AAD95:        RTL                       

CODE_2AAD96:        LDA ($00),y               ;
CODE_2AAD98:        JSR CODE_2A8CD9           ;
CODE_2AAD9B:        INX                       ;
CODE_2AAD9C:        INY                       ;
CODE_2AAD9D:        CPY #$0030                ;
CODE_2AADA0:        BNE CODE_2AAD96           ;
CODE_2AADA2:        RTS                       ;

DATA_2AADA3:        db $08,$08,$09,$00,$04,$09,$00,$00
                    db $00,$00,$04,$08,$09,$00,$04,$08
                    db $0F,$10,$11,$01,$0B,$11,$12,$08
                    db $03,$01,$0B,$10,$11,$01,$0B,$10
                    db $17,$0E,$15,$1A,$13,$0E,$0D,$10
                    db $06,$06,$06,$06,$0C,$15,$1A,$1A
                    db $19,$1D,$13,$0E,$0E,$15,$1A,$16
                    db $03,$01,$02,$00,$04,$03,$01,$05
                    db $06,$06,$06,$06,$06,$06,$06,$07
                    db $06,$06,$0A,$01,$0B,$06,$06,$06
                    db $06,$06,$06,$06,$06,$06,$0C,$0E
                    db $13,$0D,$06,$06,$14,$13,$0E,$15
                    db $16,$17,$0E,$0E,$15,$13,$18,$19
                    db $17,$0E,$15,$1C
     
          
CODE_2AAE0F:        REP #$10                  
CODE_2AAE11:        INC $00                   
CODE_2AAE13:        LDX $00                   
CODE_2AAE15:        LDY #$0000                
CODE_2AAE18:        LDA $AE71,y               
CODE_2AAE1B:        JSR CODE_2A8CD9           
CODE_2AAE1E:        JSR CODE_2AAE80           
CODE_2AAE21:        CPY #$0005                
CODE_2AAE24:        BNE CODE_2AAE18           
CODE_2AAE26:        INC $00                   
CODE_2AAE28:        LDX $00                   
CODE_2AAE2A:        DEC $D8                   
CODE_2AAE2C:        LDY #$0000                
CODE_2AAE2F:        LDA $AE76,y               
CODE_2AAE32:        JSR CODE_2A8CD9           
CODE_2AAE35:        JSR CODE_2AAE80           
CODE_2AAE38:        CPY #$0005                
CODE_2AAE3B:        BNE CODE_2AAE2F           
CODE_2AAE3D:        INC $00                   
CODE_2AAE3F:        LDA $00                   
CODE_2AAE41:        AND #$0F                  
CODE_2AAE43:        BNE CODE_2AAE51           
CODE_2AAE45:        REP #$20                  
CODE_2AAE47:        LDA $00                   
CODE_2AAE49:        SEC                       
CODE_2AAE4A:        SBC #$01C0                
CODE_2AAE4D:        STA $00                   
CODE_2AAE4F:        SEP #$20                  
CODE_2AAE51:        SEP #$20                  
CODE_2AAE53:        LDX $00                   
CODE_2AAE55:        DEC $D8                   
CODE_2AAE57:        BNE CODE_2AAE2C           
CODE_2AAE59:        LDY #$0000                
CODE_2AAE5C:        LDA $AE7B,y               
CODE_2AAE5F:        JSR CODE_2A8CD9           
CODE_2AAE62:        JSR CODE_2AAE80           
CODE_2AAE65:        CPY #$0005                
CODE_2AAE68:        BNE CODE_2AAE5C           
CODE_2AAE6A:        INC $00                   
CODE_2AAE6C:        LDX $00                   
CODE_2AAE6E:        SEP #$10                  
CODE_2AAE70:        RTS                       

DATA_2AAE71:        db $1E,$21,$25,$28,$2C,$1E,$22,$26
                    db $29,$26,$1E,$23,$27,$2A,$2D

CODE_2AAE80:        REP #$20                  ;
CODE_2AAE82:        TXA                       ;
CODE_2AAE83:        CLC                       
CODE_2AAE84:        ADC #$10                  
CODE_2AAE86:        BRK #$AA                  
CODE_2AAE88:        SEP #$20                  
CODE_2AAE8A:        INY                       
CODE_2AAE8B:        RTS                       

CODE_2AAE8C:        SEP #$10                  
CODE_2AAE8E:        LDA #$01                  
CODE_2AAE90:        STA $02D9                 
CODE_2AAE93:        LDX #$00                  
CODE_2AAE95:        LDA #$13                  
CODE_2AAE97:        STA $00                   
CODE_2AAE99:        LDA #$14                  
CODE_2AAE9B:        STA $01                   
CODE_2AAE9D:        LDA #$15                  
CODE_2AAE9F:        STA $02                   
CODE_2AAEA1:        LDA #$16                  
CODE_2AAEA3:        STA $03                   
CODE_2AAEA5:        LDA #$04                  
CODE_2AAEA7:        STA $04                   
CODE_2AAEA9:        JSR CODE_2A975C           
CODE_2AAEAC:        LDX #$10                  
CODE_2AAEAE:        LDA #$17                  
CODE_2AAEB0:        STA $00                   
CODE_2AAEB2:        LDA #$18                  
CODE_2AAEB4:        STA $01                   
CODE_2AAEB6:        LDA #$08                  
CODE_2AAEB8:        STA $04                   
CODE_2AAEBA:        JSR CODE_2A9779           
CODE_2AAEBD:        TXA                       
CODE_2AAEBE:        CLC                       
CODE_2AAEBF:        ADC #$10                  
CODE_2AAEC1:        TAX                       
CODE_2AAEC2:        CPX #$B0                  
CODE_2AAEC4:        BNE CODE_2AAEB6           
CODE_2AAEC6:        LDX #$20                  
CODE_2AAEC8:        LDA #$13                  
CODE_2AAECA:        STA $00                   
CODE_2AAECC:        LDA #$16                  
CODE_2AAECE:        STA $01                   
CODE_2AAED0:        LDA #$08                  
CODE_2AAED2:        STA $04                   
CODE_2AAED4:        JSR CODE_2A9779           
CODE_2AAED7:        TXA                       
CODE_2AAED8:        CLC                       
CODE_2AAED9:        ADC #$10                  
CODE_2AAEDB:        TAX                       
CODE_2AAEDC:        CPX #$A0                  
CODE_2AAEDE:        BNE CODE_2AAED0           
CODE_2AAEE0:        LDY #$00                  
CODE_2AAEE2:        LDA [$2B],y               
CODE_2AAEE4:        CMP #$FF                  
CODE_2AAEE6:        BEQ CODE_2AAEF0           
CODE_2AAEE8:        JSR CODE_2A8E54           
CODE_2AAEEB:        JSR (PNTR_2AAEF2,x)             
CODE_2AAEEE:        BRA CODE_2AAEE0           

CODE_2AAEF0:        PLB                       
CODE_2AAEF1:        RTL                       

PNTR_2AAEF2:        dw CODE_2AAEF6
                    dw CODE_2AAF39

CODE_2AAEF6:        LDX $00                   ;
CODE_2AAEF8:        LDA #$01                  ;
CODE_2AAEFA:        JSR CODE_2A8D03           ;
CODE_2AAEFD:        INX                       ;
CODE_2AAEFE:        LDA #$02                  ;
CODE_2AAF00:        JSR CODE_2A8D03           
CODE_2AAF03:        LDA $00                   
CODE_2AAF05:        CLC                       
CODE_2AAF06:        ADC #$0F                  
CODE_2AAF08:        TAX                       
CODE_2AAF09:        STA $00                   
CODE_2AAF0B:        STZ $01                   
CODE_2AAF0D:        LDA #$04                  
CODE_2AAF0F:        STA $02                   
CODE_2AAF11:        LDY $01                   
CODE_2AAF13:        LDA $AF2D,y               
CODE_2AAF16:        JSR CODE_2A8D03           
CODE_2AAF19:        INX                       
CODE_2AAF1A:        INC $01                   
CODE_2AAF1C:        DEC $02                   
CODE_2AAF1E:        BNE CODE_2AAF11           
CODE_2AAF20:        LDA $00                   
CODE_2AAF22:        CLC                       
CODE_2AAF23:        ADC #$10                  
CODE_2AAF25:        TAX                       
CODE_2AAF26:        STA $00                   
CODE_2AAF28:        DEC $D8                   
CODE_2AAF2A:        BNE CODE_2AAF0D           
CODE_2AAF2C:        RTS                       

     
DATA_2AAF2D:        db $05,$06,$07,$08,$0B,$0C,$0D,$0E
                    db $0F,$10,$11,$12
   
           
CODE_2AAF39:        LDX $00                   
CODE_2AAF3B:        LDA #$03                  
CODE_2AAF3D:        JSR CODE_2A8D03           
CODE_2AAF40:        INX                       
CODE_2AAF41:        LDA #$04                  
CODE_2AAF43:        JSR CODE_2A8D03           
CODE_2AAF46:        LDA $00                   
CODE_2AAF48:        CLC                       
CODE_2AAF49:        ADC #$10                  
CODE_2AAF4B:        TAX                       
CODE_2AAF4C:        LDA #$09                  
CODE_2AAF4E:        JSR CODE_2A8D03           
CODE_2AAF51:        INX                       
CODE_2AAF52:        LDA #$0A                  
CODE_2AAF54:        JSR CODE_2A8D03           
CODE_2AAF57:        RTS                       

CODE_2AAF58:        SEP #$10                  
CODE_2AAF5A:        LDX #$07                  
CODE_2AAF5C:        LDA #$06                  
CODE_2AAF5E:        JSR CODE_2A8D03           
CODE_2AAF61:        TXA                       
CODE_2AAF62:        CLC                       
CODE_2AAF63:        ADC #$10                  
CODE_2AAF65:        TAX                       
CODE_2AAF66:        CPX #$E0                  
CODE_2AAF68:        BCC CODE_2AAF5C           
CODE_2AAF6A:        LDX #$0F                  
CODE_2AAF6C:        LDA #$06                  
CODE_2AAF6E:        JSR CODE_2A8D03           
CODE_2AAF71:        TXA                       
CODE_2AAF72:        CLC                       
CODE_2AAF73:        ADC #$10                  
CODE_2AAF75:        TAX                       
CODE_2AAF76:        CPX #$E0                  
CODE_2AAF78:        BCC CODE_2AAF6C           
CODE_2AAF7A:        LDX #$51                  
CODE_2AAF7C:        LDA #$11                  
CODE_2AAF7E:        STA $01                   
CODE_2AAF80:        JSR CODE_2AAFF4           
CODE_2AAF83:        LDX #$59                  
CODE_2AAF85:        LDA #$11                  
CODE_2AAF87:        STA $01                   
CODE_2AAF89:        JSR CODE_2AAFF4           
CODE_2AAF8C:        LDX #$D1                  
CODE_2AAF8E:        LDA #$03                  
CODE_2AAF90:        STA $01                   
CODE_2AAF92:        JSR CODE_2AAFF4           
CODE_2AAF95:        LDX #$D9                  
CODE_2AAF97:        LDA #$03                  
CODE_2AAF99:        STA $01                   
CODE_2AAF9B:        JSR CODE_2AAFF4           
CODE_2AAF9E:        LDX #$E0                  
CODE_2AAFA0:        LDA #$11                  
CODE_2AAFA2:        STA $00                   
CODE_2AAFA4:        JSR CODE_2A9924           
CODE_2AAFA7:        LDA #$29                  
CODE_2AAFA9:        STA $00                   
CODE_2AAFAB:        JSR CODE_2A9924           
CODE_2AAFAE:        LDX #$00                  
CODE_2AAFB0:        LDA #$2A                  
CODE_2AAFB2:        STA $00                   
CODE_2AAFB4:        JSR CODE_2AB003           
CODE_2AAFB7:        LDA #$2A                  
CODE_2AAFB9:        STA $00                   
CODE_2AAFBB:        JSR CODE_2AB003           
CODE_2AAFBE:        LDX #$10                  
CODE_2AAFC0:        LDA #$32                  
CODE_2AAFC2:        STA $00                   
CODE_2AAFC4:        JSR CODE_2AB003           
CODE_2AAFC7:        LDA #$32                  
CODE_2AAFC9:        STA $00                   
CODE_2AAFCB:        JSR CODE_2AB003           
CODE_2AAFCE:        LDX #$90                  
CODE_2AAFD0:        LDA #$11                  
CODE_2AAFD2:        STA $00                   
CODE_2AAFD4:        JSR CODE_2A9930           
CODE_2AAFD7:        JSR CODE_2A9930           
CODE_2AAFDA:        LDY #$00                  
CODE_2AAFDC:        LDA [$2B],y               
CODE_2AAFDE:        CMP #$FF                  
CODE_2AAFE0:        BEQ CODE_2AAFEA           
CODE_2AAFE2:        JSR CODE_2A8E54           
CODE_2AAFE5:        JSR (PNTR_2AAFEC,x)             
CODE_2AAFE8:        BRA CODE_2AAFDA           

CODE_2AAFEA:        PLB                       
CODE_2AAFEB:        RTL                       

PNTR_2AAFEC:        dw CODE_2AB011             
                    dw CODE_2AB064                 
                    dw CODE_2AB08B
                    dw CODE_2AB0DD

CODE_2AAFF4:        LDA #$06                  ;
CODE_2AAFF6:        STA $00                   ;
CODE_2AAFF8:        LDA $01                   ;
CODE_2AAFFA:        JSR CODE_2A8D03           ;
CODE_2AAFFD:        INX                       ;
CODE_2AAFFE:        DEC $00                   ;
CODE_2AB000:        BNE CODE_2AAFFA           ;
CODE_2AB002:        RTS                       ;

CODE_2AB003:        LDA $00                   
CODE_2AB005:        JSR CODE_2A8D25           
CODE_2AB008:        INC $00                   
CODE_2AB00A:        INX                       
CODE_2AB00B:        TXA                       
CODE_2AB00C:        AND #$07                  
CODE_2AB00E:        BNE CODE_2AB003           
CODE_2AB010:        RTS                       

CODE_2AB011:        LDX $00                   
CODE_2AB013:        LDA $D8                   
CODE_2AB015:        STA $02                   
CODE_2AB017:        LDY $DA                   
CODE_2AB019:        LDA $B039,y               
CODE_2AB01C:        CMP #$FF                  
CODE_2AB01E:        BEQ CODE_2AB038           
CODE_2AB020:        JSR CODE_2A8D03           
CODE_2AB023:        INC $DA                   
CODE_2AB025:        INX                       
CODE_2AB026:        DEC $02                   
CODE_2AB028:        BNE CODE_2AB017           
CODE_2AB02A:        REP #$20                  
CODE_2AB02C:        LDA $00                   
CODE_2AB02E:        CLC                       
CODE_2AB02F:        ADC #$0010                
CODE_2AB032:        STA $00                   
CODE_2AB034:        SEP #$20                  
CODE_2AB036:        BRA CODE_2AB011           

CODE_2AB038:        RTS                       

     
DATA_2AB039:        db $03,$03,$03,$03,$12,$03,$0D,$13
                    db $08,$05,$02,$14,$07,$05,$04,$07
                    db $02,$01,$08,$09,$0A,$0B,$0C,$08
                    db $0D,$04,$04,$0B,$0E,$01,$07,$0B
                    db $0D,$04,$05,$04,$03,$0F,$02,$01
                    db $10,$01,$FF
  
            
CODE_2AB064:        LDA #$15                  
CODE_2AB066:        STA $02                   
CODE_2AB068:        LDA $D8                   
CODE_2AB06A:        STA $D9                   
CODE_2AB06C:        LDX $00                   
CODE_2AB06E:        LDA $02                   
CODE_2AB070:        JSR CODE_2A8D03           
CODE_2AB073:        INC $02                   
CODE_2AB075:        INX                       
CODE_2AB076:        DEC $D9                   
CODE_2AB078:        BNE CODE_2AB06E           
CODE_2AB07A:        REP #$20                  
CODE_2AB07C:        LDA $00                   
CODE_2AB07E:        CLC                       
CODE_2AB07F:        ADC #$0010                
CODE_2AB082:        STA $00                   
CODE_2AB084:        SEP #$20                  
CODE_2AB086:        DEC $DA                   
CODE_2AB088:        BNE CODE_2AB068           
CODE_2AB08A:        RTS                       

CODE_2AB08B:        LDX $00                   
CODE_2AB08D:        LDA #$3A                  
CODE_2AB08F:        JSR CODE_2A8D25           
CODE_2AB092:        INX                       
CODE_2AB093:        INC A                     
CODE_2AB094:        JSR CODE_2A8D25           
CODE_2AB097:        INX                       
CODE_2AB098:        INC A                     
CODE_2AB099:        JSR CODE_2A8D25           
CODE_2AB09C:        INX                       
CODE_2AB09D:        LDA #$54                  
CODE_2AB09F:        JSR CODE_2A8D25           
CODE_2AB0A2:        LDA $00                   
CODE_2AB0A4:        CLC                       
CODE_2AB0A5:        ADC #$10                  
CODE_2AB0A7:        STA $00                   
CODE_2AB0A9:        TAX                       
CODE_2AB0AA:        LDA $D8                   
CODE_2AB0AC:        STA $D9                   
CODE_2AB0AE:        LDA #$40                  
CODE_2AB0B0:        STA $02                   
CODE_2AB0B2:        JSR CODE_2AB12F           
CODE_2AB0B5:        INC $00                   
CODE_2AB0B7:        LDX $00                   
CODE_2AB0B9:        LDA $D8                   
CODE_2AB0BB:        STA $D9                   
CODE_2AB0BD:        INC $02                   
CODE_2AB0BF:        JSR CODE_2AB12F           
CODE_2AB0C2:        INC $00                   
CODE_2AB0C4:        LDX $00                   
CODE_2AB0C6:        LDA $D8                   
CODE_2AB0C8:        STA $D9                   
CODE_2AB0CA:        LDA #$54                  
CODE_2AB0CC:        STA $02                   
CODE_2AB0CE:        JSR CODE_2AB12F           
CODE_2AB0D1:        INC $00                   
CODE_2AB0D3:        LDX $00                   
CODE_2AB0D5:        LDA $D8                   
CODE_2AB0D7:        STA $D9                   
CODE_2AB0D9:        JSR CODE_2AB12F           
CODE_2AB0DC:        RTS                       

CODE_2AB0DD:        LDX $00                   
CODE_2AB0DF:        LDA #$54                  
CODE_2AB0E1:        JSR CODE_2A8D25           
CODE_2AB0E4:        INX                       
CODE_2AB0E5:        LDA #$3D                  
CODE_2AB0E7:        JSR CODE_2A8D25           
CODE_2AB0EA:        INX                       
CODE_2AB0EB:        INC A                     
CODE_2AB0EC:        JSR CODE_2A8D25           
CODE_2AB0EF:        INX                       
CODE_2AB0F0:        INC A                     
CODE_2AB0F1:        JSR CODE_2A8D25           
CODE_2AB0F4:        LDA $00                   
CODE_2AB0F6:        CLC                       
CODE_2AB0F7:        ADC #$10                  
CODE_2AB0F9:        STA $00                   
CODE_2AB0FB:        TAX                       
CODE_2AB0FC:        LDA $D8                   
CODE_2AB0FE:        STA $D9                   
CODE_2AB100:        LDA #$54                  
CODE_2AB102:        STA $02                   
CODE_2AB104:        JSR CODE_2AB12F           
CODE_2AB107:        INC $00                   
CODE_2AB109:        LDX $00                   
CODE_2AB10B:        LDA $D8                   
CODE_2AB10D:        STA $D9                   
CODE_2AB10F:        JSR CODE_2AB12F           
CODE_2AB112:        INC $00                   
CODE_2AB114:        LDX $00                   
CODE_2AB116:        LDA $D8                   
CODE_2AB118:        STA $D9                   
CODE_2AB11A:        LDA #$42                  
CODE_2AB11C:        STA $02                   
CODE_2AB11E:        JSR CODE_2AB12F           
CODE_2AB121:        INC $00                   
CODE_2AB123:        LDX $00                   
CODE_2AB125:        LDA $D8                   
CODE_2AB127:        STA $D9                   
CODE_2AB129:        INC $02                   
CODE_2AB12B:        JSR CODE_2AB12F           
CODE_2AB12E:        RTS                       

CODE_2AB12F:        LDA $0002                 
CODE_2AB132:        JSR CODE_2A8D25           
CODE_2AB135:        TXA                       
CODE_2AB136:        CLC                       
CODE_2AB137:        ADC #$10                  
CODE_2AB139:        TAX                       
CODE_2AB13A:        DEC $D9                   
CODE_2AB13C:        BNE CODE_2AB12F           
CODE_2AB13E:        RTS                       

CODE_2AB13F:        SEP #$10                  
CODE_2AB141:        LDX #$90                  
CODE_2AB143:        LDA #$03                  
CODE_2AB145:        STA $00                   
CODE_2AB147:        JSR CODE_2AB1BD           
CODE_2AB14A:        LDA #$07                  
CODE_2AB14C:        STA $00                   
CODE_2AB14E:        JSR CODE_2AB1BD           
CODE_2AB151:        LDA #$0B                  
CODE_2AB153:        STA $00                   
CODE_2AB155:        JSR CODE_2AB1BD           
CODE_2AB158:        LDA #$09                  
CODE_2AB15A:        JSR CODE_2A8D03           
CODE_2AB15D:        INX                       
CODE_2AB15E:        LDA #$0A                  
CODE_2AB160:        JSR CODE_2A8D03           
CODE_2AB163:        INX                       
CODE_2AB164:        LDA #$07                  
CODE_2AB166:        JSR CODE_2A8D03           
CODE_2AB169:        INX                       
CODE_2AB16A:        LDA #$08                  
CODE_2AB16C:        JSR CODE_2A8D03           
CODE_2AB16F:        INX                       
CODE_2AB170:        TXA                       
CODE_2AB171:        AND #$0F                  
CODE_2AB173:        BNE CODE_2AB158           
CODE_2AB175:        LDA #$0F                  
CODE_2AB177:        STA $00                   
CODE_2AB179:        JSR CODE_2A9924           
CODE_2AB17C:        JSR CODE_2A9924           
CODE_2AB17F:        JSR CODE_2A9924           
CODE_2AB182:        JSR CODE_2A9930           
CODE_2AB185:        JSR CODE_2A9930           
CODE_2AB188:        LDA #$18                  
CODE_2AB18A:        STA $00                   
CODE_2AB18C:        JSR CODE_2AB1D8           
CODE_2AB18F:        LDA #$1C                  
CODE_2AB191:        STA $00                   
CODE_2AB193:        JSR CODE_2AB1D8           
CODE_2AB196:        LDA #$20                  
CODE_2AB198:        STA $00                   
CODE_2AB19A:        JSR CODE_2AB1D8           
CODE_2AB19D:        LDA #$24                  
CODE_2AB19F:        STA $00                   
CODE_2AB1A1:        JSR CODE_2AB1D8           
CODE_2AB1A4:        LDA #$28                  
CODE_2AB1A6:        STA $00                   
CODE_2AB1A8:        JSR CODE_2AB1D8           
CODE_2AB1AB:        LDY #$00                  
CODE_2AB1AD:        LDA [$2B],y               
CODE_2AB1AF:        CMP #$FF                  
CODE_2AB1B1:        BEQ CODE_2AB1BB           
CODE_2AB1B3:        JSR CODE_2A8E54           
CODE_2AB1B6:        JSR (PNTR_2AB1F3,x)             
CODE_2AB1B9:        BRA CODE_2AB1AB           

CODE_2AB1BB:        PLB                       
CODE_2AB1BC:        RTL                       

CODE_2AB1BD:        LDA $00                   
CODE_2AB1BF:        JSR CODE_2A8D03           
CODE_2AB1C2:        INC A                     
CODE_2AB1C3:        INX                       
CODE_2AB1C4:        JSR CODE_2A8D03           
CODE_2AB1C7:        INC A                     
CODE_2AB1C8:        INX                       
CODE_2AB1C9:        JSR CODE_2A8D03           
CODE_2AB1CC:        INC A                     
CODE_2AB1CD:        INX                       
CODE_2AB1CE:        JSR CODE_2A8D03           
CODE_2AB1D1:        INX                       
CODE_2AB1D2:        TXA                       
CODE_2AB1D3:        AND #$0F                  
CODE_2AB1D5:        BNE CODE_2AB1BD           
CODE_2AB1D7:        RTS                       

CODE_2AB1D8:        LDA $00                   
CODE_2AB1DA:        JSR CODE_2A8D25           
CODE_2AB1DD:        INC A                     
CODE_2AB1DE:        INX                       
CODE_2AB1DF:        JSR CODE_2A8D25           
CODE_2AB1E2:        INC A                     
CODE_2AB1E3:        INX                       
CODE_2AB1E4:        JSR CODE_2A8D25           
CODE_2AB1E7:        INC A                     
CODE_2AB1E8:        INX                       
CODE_2AB1E9:        JSR CODE_2A8D25           
CODE_2AB1EC:        INX                       
CODE_2AB1ED:        TXA                       
CODE_2AB1EE:        AND #$0F                  
CODE_2AB1F0:        BNE CODE_2AB1D8           
CODE_2AB1F2:        RTS                       

PNTR_2AB1F3:        dw CODE_2AB1FF
                    dw CODE_2AB205           
                    dw CODE_2AB241             
                    dw CODE_2AB252               
                    dw CODE_2AB20B
                    dw CODE_2AB211

CODE_2AB1FF:        LDA #$01                  ;
CODE_2AB201:        STA $03                   ;
CODE_2AB203:        BRA CODE_2AB215           ;

CODE_2AB205:        LDA #$02                  ;
CODE_2AB207:        STA $03                   ;
CODE_2AB209:        BRA CODE_2AB215           ;

CODE_2AB20B:        LDA #$2C                  ;
CODE_2AB20D:        STA $03                   ;
CODE_2AB20F:        BRA CODE_2AB215           ;

CODE_2AB211:        LDA #$2D                  
CODE_2AB213:        STA $03                   
CODE_2AB215:        REP #$10                  
CODE_2AB217:        LDX $00                   
CODE_2AB219:        LDA $03                   
CODE_2AB21B:        JSR CODE_2A8CD9           
CODE_2AB21E:        LDA $D8                   
CODE_2AB220:        BEQ CODE_2AB23E           
CODE_2AB222:        CLC                       
CODE_2AB223:        ADC $00                   
CODE_2AB225:        STA $00                   
CODE_2AB227:        LDX $00                   
CODE_2AB229:        LDA $03                   
CODE_2AB22B:        JSR CODE_2A8CD9           
CODE_2AB22E:        LDA $DA                   
CODE_2AB230:        BEQ CODE_2AB23E           
CODE_2AB232:        CLC                       
CODE_2AB233:        ADC $00                   
CODE_2AB235:        STA $00                   
CODE_2AB237:        LDX $00                   
CODE_2AB239:        LDA $03                   
CODE_2AB23B:        JSR CODE_2A8CD9           
CODE_2AB23E:        SEP #$10                  
CODE_2AB240:        RTS                       

CODE_2AB241:        REP #$20                  
CODE_2AB243:        LDA #$B2A3                
CODE_2AB246:        STA $03                   
CODE_2AB248:        INC A                     
CODE_2AB249:        INC A                     
CODE_2AB24A:        INC A                     
CODE_2AB24B:        INC A                     
CODE_2AB24C:        STA $05                   
CODE_2AB24E:        SEP #$20                  
CODE_2AB250:        BRA CODE_2AB261           

CODE_2AB252:        REP #$20                  
CODE_2AB254:        LDA #$B2AB                
CODE_2AB257:        STA $03                   
CODE_2AB259:        INC A                     
CODE_2AB25A:        INC A                     
CODE_2AB25B:        INC A                     
CODE_2AB25C:        INC A                     
CODE_2AB25D:        STA $05                   
CODE_2AB25F:        SEP #$20                  
CODE_2AB261:        REP #$10                  
CODE_2AB263:        LDY #$0000                
CODE_2AB266:        LDX $00                   
CODE_2AB268:        LDA ($03),y               
CODE_2AB26A:        JSR CODE_2A8CD9           
CODE_2AB26D:        LDA ($05),y               
CODE_2AB26F:        JSR CODE_2A8CEE           
CODE_2AB272:        INY                       
CODE_2AB273:        CPY #$0004                
CODE_2AB276:        BEQ CODE_2AB2A0           
CODE_2AB278:        INC $00                   
CODE_2AB27A:        LDA $00                   
CODE_2AB27C:        AND #$0F                  
CODE_2AB27E:        BNE CODE_2AB266           
CODE_2AB280:        LDA $D8                   
CODE_2AB282:        BNE CODE_2AB292           
CODE_2AB284:        REP #$20                  
CODE_2AB286:        LDA $00                   
CODE_2AB288:        CLC                       
CODE_2AB289:        ADC #$01A0                
CODE_2AB28C:        STA $00                   
CODE_2AB28E:        SEP #$20                  
CODE_2AB290:        BRA CODE_2AB266           

CODE_2AB292:        REP #$20                  
CODE_2AB294:        LDA $00                   
CODE_2AB296:        SEC                       
CODE_2AB297:        SBC #$01C0                
CODE_2AB29A:        STA $00                   
CODE_2AB29C:        SEP #$20                  
CODE_2AB29E:        BRA CODE_2AB266           

CODE_2AB2A0:        SEP #$10                  
CODE_2AB2A2:        RTS                       

     
DATA_2AB2A3:        db $10,$11,$12,$13,$14,$15,$16,$17
                    db $0D,$0E,$0B,$0C,$07,$08,$09,$0A

                
CODE_2AB2B3:        SEP #$10                  
CODE_2AB2B5:        LDX #$F0                  
CODE_2AB2B7:        LDA #$12                  
CODE_2AB2B9:        JSR CODE_2A8D03           
CODE_2AB2BC:        INX                       
CODE_2AB2BD:        LDA #$13                  
CODE_2AB2BF:        JSR CODE_2A8D03           
CODE_2AB2C2:        INX                       
CODE_2AB2C3:        LDA #$14                  
CODE_2AB2C5:        JSR CODE_2A8D03           
CODE_2AB2C8:        INX                       
CODE_2AB2C9:        LDA #$15                  
CODE_2AB2CB:        JSR CODE_2A8D03           
CODE_2AB2CE:        INX                       
CODE_2AB2CF:        TXA                       
CODE_2AB2D0:        AND #$0F                  
CODE_2AB2D2:        BNE CODE_2AB2B7           
CODE_2AB2D4:        LDX #$00                  
CODE_2AB2D6:        LDA #$16                  
CODE_2AB2D8:        JSR CODE_2A8D25           
CODE_2AB2DB:        INX                       
CODE_2AB2DC:        LDA #$17                  
CODE_2AB2DE:        JSR CODE_2A8D25           
CODE_2AB2E1:        INX                       
CODE_2AB2E2:        LDA #$18                  
CODE_2AB2E4:        JSR CODE_2A8D25           
CODE_2AB2E7:        INX                       
CODE_2AB2E8:        LDA #$19                  
CODE_2AB2EA:        JSR CODE_2A8D25           
CODE_2AB2ED:        INX                       
CODE_2AB2EE:        TXA                       
CODE_2AB2EF:        AND #$0F                  
CODE_2AB2F1:        BNE CODE_2AB2D6           
CODE_2AB2F3:        LDY #$00                  
CODE_2AB2F5:        LDA [$2B],y               
CODE_2AB2F7:        CMP #$FF                  
CODE_2AB2F9:        BEQ CODE_2AB303           
CODE_2AB2FB:        JSR CODE_2A8E54           
CODE_2AB2FE:        JSR (PNTR_2AB305,x)             
CODE_2AB301:        BRA CODE_2AB2F3           

CODE_2AB303:        PLB                       
CODE_2AB304:        RTL                       

     
PNTR_2AB305:        dw CODE_2AA966
      dw CODE_2AA9F6
      dw CODE_2AAA12
      dw CODE_2AAA57
      dw CODE_2AB315
      dw CODE_2AB331
      dw CODE_2AB34D
      dw CODE_2AB369

CODE_2AB315:        REP #$30                  ;
CODE_2AB317:        LDA #$B329                ;
CODE_2AB31A:        STA $02                   ;
CODE_2AB31C:        LDA #$B32D                ;
CODE_2AB31F:        STA $04                   ;
CODE_2AB321:        SEP #$20                  ;
CODE_2AB323:        JSR CODE_2AA97A           ;
CODE_2AB326:        SEP #$10                  ;
CODE_2AB328:        RTS                       ;

           
DATA_2AB329:        db $1A,$1B,$1C,$1D,$1E,$1F,$20,$21

CODE_2AB331:        REP #$30                  ;
CODE_2AB333:        LDA #$B345                ;
CODE_2AB336:        STA $02                   ;
CODE_2AB338:        LDA #$B349                ;
CODE_2AB33B:        STA $04                   ;
CODE_2AB33D:        SEP #$20                  ;
CODE_2AB33F:        JSR CODE_2AA9CB           ;
CODE_2AB342:        SEP #$10                  ;
CODE_2AB344:        RTS                       ;

DATA_2AB345:        db $1A,$22,$22,$1E
DATA_2AB349:        db $1D,$23,$23,$21

CODE_2AB34D:        REP #$10
CODE_2AB34F:        LDX $00
CODE_2AB351:        LDA #$1A
CODE_2AB353:        JSR CODE_2A8CD9           ;
CODE_2AB356:        LDA #$1E                  ;
CODE_2AB358:        JSR CODE_2A8CEE           ;
CODE_2AB35B:        INX                       ;
CODE_2AB35C:        LDA #$1D                  ;
CODE_2AB35E:        JSR CODE_2A8CD9           ;
CODE_2AB361:        LDA #$21                  ;
CODE_2AB363:        JSR CODE_2A8CEE           ;
CODE_2AB366:        SEP #$10                  ;
CODE_2AB368:        RTS                       ;

CODE_2AB369:        REP #$30                  
CODE_2AB36B:        LDA #$B399                
CODE_2AB36E:        STA $02                   
CODE_2AB370:        LDA #$B39D                
CODE_2AB373:        STA $04                   
CODE_2AB375:        LDA $00                   
CODE_2AB377:        PHA                       
CODE_2AB378:        SEP #$20                  
CODE_2AB37A:        JSR CODE_2AA9CB           
CODE_2AB37D:        REP #$20                  
CODE_2AB37F:        PLA                       
CODE_2AB380:        INC A                     
CODE_2AB381:        INC A                     
CODE_2AB382:        STA $00                   
CODE_2AB384:        AND #$000F                
CODE_2AB387:        BNE CODE_2AB391           
CODE_2AB389:        LDA $00                   
CODE_2AB38B:        CLC                       
CODE_2AB38C:        ADC #$01A0                
CODE_2AB38F:        STA $00                   
CODE_2AB391:        SEP #$20                  
CODE_2AB393:        JSR CODE_2AA9CB           
CODE_2AB396:        SEP #$10                  
CODE_2AB398:        RTS                       

DATA_2AB399:        db $24,$26,$27,$24,$25,$26,$27,$25
   
              
CODE_2AB3A1:        LDA $0213                 
CODE_2AB3A4:        BEQ CODE_2AB3B1           
CODE_2AB3A6:        LDA #$05                  
CODE_2AB3A8:        STA $0350                 
CODE_2AB3AB:        SEP #$10                  
CODE_2AB3AD:        PLB                       
CODE_2AB3AE:        JMP CODE_2A8DB6           

CODE_2AB3B1:        REP #$10                  
CODE_2AB3B3:        LDA #$10                  
CODE_2AB3B5:        STA $00                   
CODE_2AB3B7:        STZ $01                   
CODE_2AB3B9:        LDA #$08                  
CODE_2AB3BB:        STA $02                   
CODE_2AB3BD:        JSR CODE_2AB3DF           
CODE_2AB3C0:        LDA #$01                  
CODE_2AB3C2:        STA $00                   
CODE_2AB3C4:        STZ $01                   
CODE_2AB3C6:        LDA #$08                  
CODE_2AB3C8:        STA $02                   
CODE_2AB3CA:        JSR CODE_2AB3DF           
CODE_2AB3CD:        LDY #$01B0                
CODE_2AB3D0:        LDX #$0000                
CODE_2AB3D3:        LDA #$01                  
CODE_2AB3D5:        XBA                       
CODE_2AB3D6:        LDA #$AF                  
CODE_2AB3D8:        MVN $7F7F                 
CODE_2AB3DB:        SEP #$10                  
CODE_2AB3DD:        PLB                       
CODE_2AB3DE:        RTL                       

CODE_2AB3DF:        LDX $00                   
CODE_2AB3E1:        LDA #$01                  
CODE_2AB3E3:        JSR CODE_2A8CD9           
CODE_2AB3E6:        REP #$20                  
CODE_2AB3E8:        TXA                       
CODE_2AB3E9:        CLC                       
CODE_2AB3EA:        ADC #$0020                
CODE_2AB3ED:        TAX                       
CODE_2AB3EE:        SEP #$20                  ;
CODE_2AB3F0:        CPX #$01B0                ;
CODE_2AB3F3:        BCC CODE_2AB3E1           ;
CODE_2AB3F5:        INC $00                   ;
CODE_2AB3F7:        INC $00                   ;
CODE_2AB3F9:        DEC $02                   ;
CODE_2AB3FB:        BNE CODE_2AB3DF           ;
CODE_2AB3FD:        RTS                       ;

CODE_2AB3FE:        SEP #$10                  
CODE_2AB400:        LDX #$F0                  
CODE_2AB402:        LDA #$29                  
CODE_2AB404:        STA $00                   
CODE_2AB406:        JSR CODE_2A9924           
CODE_2AB409:        LDX #$00                  
CODE_2AB40B:        LDA #$2A                  
CODE_2AB40D:        STA $00                   
CODE_2AB40F:        JSR CODE_2AB003           
CODE_2AB412:        LDA #$2A                  
CODE_2AB414:        STA $00                   
CODE_2AB416:        JSR CODE_2AB003           
CODE_2AB419:        LDX #$10                  
CODE_2AB41B:        LDA #$32                  
CODE_2AB41D:        STA $00                   
CODE_2AB41F:        JSR CODE_2AB003           
CODE_2AB422:        LDA #$32                  
CODE_2AB424:        STA $00                   
CODE_2AB426:        JSR CODE_2AB003           
CODE_2AB429:        LDY #$00                  
CODE_2AB42B:        LDA [$2B],y               
CODE_2AB42D:        CMP #$FF                  
CODE_2AB42F:        BEQ CODE_2AB439           
CODE_2AB431:        JSR CODE_2A8E54           
CODE_2AB434:        JSR (PNTR_2AB43B,x)             
CODE_2AB437:        BRA CODE_2AB429           

CODE_2AB439:        PLB                       
CODE_2AB43A:        RTL                       

PNTR_2AB43B:        dw CODE_2AB08B
                    dw CODE_2AB0DD
                    dw CODE_2AB441

                  
CODE_2AB441:        LDX $00
CODE_2AB443:        LDY $DA
CODE_2AB445:        LDA DATA_2AB472,y               
CODE_2AB448:        JSR CODE_2A8D03           
CODE_2AB44B:        INX                       
CODE_2AB44C:        LDY $DB                   
CODE_2AB44E:        LDA DATA_2AB476,y               
CODE_2AB451:        CMP #$FF                  
CODE_2AB453:        BEQ CODE_2AB45D           
CODE_2AB455:        JSR CODE_2A8D03           
CODE_2AB458:        INX                       
CODE_2AB459:        INC $DB                   
CODE_2AB45B:        BRA CODE_2AB44C           

CODE_2AB45D:        LDA #$06                  
CODE_2AB45F:        JSR CODE_2A8D03           
CODE_2AB462:        LDA $00                   
CODE_2AB464:        CLC                       
CODE_2AB465:        ADC #$10                  
CODE_2AB467:        STA $00                   
CODE_2AB469:        INC $DA                   
CODE_2AB46B:        INC $DB                   
CODE_2AB46D:        DEC $D8                   
CODE_2AB46F:        BNE CODE_2AB441           
CODE_2AB471:        RTS                       

DATA_2AB472:        db $01,$07,$08,$0D

DATA_2AB476:        db $44,$45,$46,$47,$05,$FF,$48,$49
                    db $4A,$4B,$01,$FF,$4C,$4D,$4E,$4F
                    db $08,$FF,$50,$51,$52,$53,$01,$FF

CODE_2AB48E:        LDA $0350
CODE_2AB491:        BEQ CODE_2AB4FD           
CODE_2AB493:        CMP #$12                  
CODE_2AB495:        BNE CODE_2AB49E           
CODE_2AB497:        JSL CODE_22E576           
CODE_2AB49B:        JMP CODE_2AB4FD           

CODE_2AB49E:        LDA $0425                 
CODE_2AB4A1:        BNE CODE_2AB4FE           
CODE_2AB4A3:        LDA $0212                 
CODE_2AB4A6:        STA $0249                 
CODE_2AB4A9:        LDA $0213                 
CODE_2AB4AC:        ASL A                     
CODE_2AB4AD:        ASL A                     
CODE_2AB4AE:        ASL A                     
CODE_2AB4AF:        ASL A                     
CODE_2AB4B0:        STA $024B                 
CODE_2AB4B3:        JSL CODE_2AB5B5           
CODE_2AB4B7:        LDA $0350                 
CODE_2AB4BA:        CMP #$02                  
CODE_2AB4BC:        BEQ CODE_2AB4C8           
CODE_2AB4BE:        CMP #$23                  
CODE_2AB4C0:        BEQ CODE_2AB4C8           
CODE_2AB4C2:        JSL CODE_29E9A3           
CODE_2AB4C6:        BRA CODE_2AB4CC           

CODE_2AB4C8:        JSL CODE_22E2FE           
CODE_2AB4CC:        LDA $0249                 
CODE_2AB4CF:        CLC                       
CODE_2AB4D0:        ADC $CE95                 
CODE_2AB4D3:        STA $0249                 
CODE_2AB4D6:        LDA $0249                 
CODE_2AB4D9:        AND #$08                  
CODE_2AB4DB:        CMP $CE97                 
CODE_2AB4DE:        BNE CODE_2AB4E3           
CODE_2AB4E0:        INC $024B                 
CODE_2AB4E3:        DEC $0612                 
CODE_2AB4E6:        BNE CODE_2AB4B3           
CODE_2AB4E8:        LDA #$FF                  
CODE_2AB4EA:        STA $0249                 
CODE_2AB4ED:        LDA $0350                 
CODE_2AB4F0:        CMP #$02                  
CODE_2AB4F2:        BEQ CODE_2AB4F8           
CODE_2AB4F4:        CMP #$23                  
CODE_2AB4F6:        BNE CODE_2AB4FD           
CODE_2AB4F8:        LDA #$51                  
CODE_2AB4FA:        STA $2109                 
CODE_2AB4FD:        RTL                       

CODE_2AB4FE:        STZ $25                   
CODE_2AB500:        LDA #$70                  
CODE_2AB502:        STA $0218                 
CODE_2AB505:        CLC                       
CODE_2AB506:        ADC #$08                  
CODE_2AB508:        STA $0249                 
CODE_2AB50B:        STZ $024B                 
CODE_2AB50E:        JSR CODE_2AB67D           
CODE_2AB511:        JSL CODE_29E9F8           
CODE_2AB515:        LDA $0218                 
CODE_2AB518:        CLC                       
CODE_2AB519:        ADC #$08                  
CODE_2AB51B:        STA $0218                 
CODE_2AB51E:        AND #$08                  
CODE_2AB520:        BNE CODE_2AB53A           
CODE_2AB522:        LDA $024B                 
CODE_2AB525:        CLC                       
CODE_2AB526:        ADC #$10                  
CODE_2AB528:        STA $024B                 
CODE_2AB52B:        AND #$F0                  
CODE_2AB52D:        BNE CODE_2AB53A           
CODE_2AB52F:        INC $024B                 
CODE_2AB532:        LDA #$0F                  
CODE_2AB534:        AND $024B                 
CODE_2AB537:        STA $024B                 
CODE_2AB53A:        DEC $0612                 
CODE_2AB53D:        BNE CODE_2AB50E           
CODE_2AB53F:        STZ $0218                 
CODE_2AB542:        STZ $0249                 
CODE_2AB545:        RTL                       

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
  
               
CODE_2AB5B5:        PHB                       
CODE_2AB5B6:        PHK                       
CODE_2AB5B7:        PLB                       
CODE_2AB5B8:        LDA $0249                 
CODE_2AB5BB:        AND #$08                  
CODE_2AB5BD:        LSR A                     
CODE_2AB5BE:        LSR A                     
CODE_2AB5BF:        LSR A                     
CODE_2AB5C0:        STA $C2                   
CODE_2AB5C2:        LDA $0350                 
CODE_2AB5C5:        ASL A                     
CODE_2AB5C6:        CLC                       
CODE_2AB5C7:        ADC $0350                 
CODE_2AB5CA:        TAY                       
CODE_2AB5CB:        LDA $B545,y               
CODE_2AB5CE:        STA $08                   
CODE_2AB5D0:        REP #$20                  
CODE_2AB5D2:        LDA $B543,y               
CODE_2AB5D5:        STA $06                   
CODE_2AB5D7:        SEP #$20                  
CODE_2AB5D9:        LDX $25                   
CODE_2AB5DB:        LDA $024B                 
CODE_2AB5DE:        LSR A                     
CODE_2AB5DF:        LSR A                     
CODE_2AB5E0:        LSR A                     
CODE_2AB5E1:        LSR A                     
CODE_2AB5E2:        INC A                     
CODE_2AB5E3:        AND #$0F                  
CODE_2AB5E5:        TAY                       
CODE_2AB5E6:        LDA #$7F                  
CODE_2AB5E8:        STA $0F                   
CODE_2AB5EA:        REP #$20                  
CODE_2AB5EC:        STZ $0D                   
CODE_2AB5EE:        DEY                       
CODE_2AB5EF:        BEQ CODE_2AB5FB           
CODE_2AB5F1:        LDA $0D                   
CODE_2AB5F3:        CLC                       
CODE_2AB5F4:        ADC #$01B0                
CODE_2AB5F7:        STA $0D                   
CODE_2AB5F9:        BRA CODE_2AB5EE           

CODE_2AB5FB:        LDA #$001A                
CODE_2AB5FE:        STA $00                   
CODE_2AB600:        LDA $024B                 
CODE_2AB603:        AND #$000F                
CODE_2AB606:        STA $09                   
CODE_2AB608:        REP #$10                  
CODE_2AB60A:        LDX #$0000                
CODE_2AB60D:        LDY $09                   
CODE_2AB60F:        LDA [$0D],y               
CODE_2AB611:        AND #$00FF                
CODE_2AB614:        ASL A                     
CODE_2AB615:        ASL A                     
CODE_2AB616:        ASL A                     
CODE_2AB617:        TAY                       
CODE_2AB618:        LDA $C2                   
CODE_2AB61A:        AND #$00FF                
CODE_2AB61D:        BEQ CODE_2AB623           
CODE_2AB61F:        INY                       
CODE_2AB620:        INY                       
CODE_2AB621:        INY                       
CODE_2AB622:        INY                       
CODE_2AB623:        LDA [$06],y               
CODE_2AB625:        STA $7F2002,x             
CODE_2AB629:        INY                       
CODE_2AB62A:        INY                       
CODE_2AB62B:        LDA [$06],y               
CODE_2AB62D:        STA $7F2004,x             
CODE_2AB631:        LDA $09                   
CODE_2AB633:        CLC                       
CODE_2AB634:        ADC #$0010                
CODE_2AB637:        STA $09                   
CODE_2AB639:        INX                       
CODE_2AB63A:        INX                       
CODE_2AB63B:        INX                       
CODE_2AB63C:        INX                       
CODE_2AB63D:        DEC $00                   
CODE_2AB63F:        BPL CODE_2AB60D           
CODE_2AB641:        SEP #$30                  
CODE_2AB643:        LDX $25                   
CODE_2AB645:        LDA $024B                 
CODE_2AB648:        AND #$0F                  
CODE_2AB64A:        ASL A                     
CODE_2AB64B:        ORA $C2                   
CODE_2AB64D:        STA $7F2001               
CODE_2AB651:        LDA $024B                 
CODE_2AB654:        AND #$10                  
CODE_2AB656:        BEQ CODE_2AB65A           
CODE_2AB658:        LDA #$04                  
CODE_2AB65A:        ORA #$10                  
CODE_2AB65C:        STA $7F2000               
CODE_2AB660:        LDA $0350                 
CODE_2AB663:        CMP #$02                  
CODE_2AB665:        BEQ CODE_2AB66B           
CODE_2AB667:        CMP #$23                  
CODE_2AB669:        BNE CODE_2AB67B           
CODE_2AB66B:        REP #$20                  
CODE_2AB66D:        LDA $7F2000               
CODE_2AB671:        CLC                       
CODE_2AB672:        ADC #$0040                
CODE_2AB675:        STA $7F2000               
CODE_2AB679:        SEP #$20                  
CODE_2AB67B:        PLB                       
CODE_2AB67C:        RTL                       

CODE_2AB67D:        REP #$20                  
CODE_2AB67F:        LDA $024B                 
CODE_2AB682:        AND #$00F0                
CODE_2AB685:        ASL A                     
CODE_2AB686:        ASL A                     
CODE_2AB687:        CLC                       
CODE_2AB688:        ADC #$1000                
CODE_2AB68B:        STA $7F2000               
CODE_2AB68F:        XBA                       
CODE_2AB690:        STA $7F2000               
CODE_2AB694:        SEP #$20                  
CODE_2AB696:        LDA $024B                 
CODE_2AB699:        AND #$01                  
CODE_2AB69B:        BEQ CODE_2AB6A7           
CODE_2AB69D:        LDA $7F2000               
CODE_2AB6A1:        EOR #$08                  
CODE_2AB6A3:        STA $7F2000               
CODE_2AB6A7:        LDA $0218                 
CODE_2AB6AA:        AND #$08                  
CODE_2AB6AC:        BEQ CODE_2AB6B9           
CODE_2AB6AE:        LDA $7F2001               
CODE_2AB6B2:        CLC                       
CODE_2AB6B3:        ADC #$20                  
CODE_2AB6B5:        STA $7F2001               
CODE_2AB6B9:        PHB                       
CODE_2AB6BA:        PHK                       
CODE_2AB6BB:        PLB                       
CODE_2AB6BC:        LDA $0350                 
CODE_2AB6BF:        ASL A                     
CODE_2AB6C0:        CLC                       
CODE_2AB6C1:        ADC $0350                 
CODE_2AB6C4:        TAY                       
CODE_2AB6C5:        LDA $B545,y               
CODE_2AB6C8:        STA $0E                   
CODE_2AB6CA:        REP #$20                  
CODE_2AB6CC:        LDA $B543,y               
CODE_2AB6CF:        STA $0C                   
CODE_2AB6D1:        STZ $D8                   
CODE_2AB6D3:        SEP #$20                  
CODE_2AB6D5:        LDA #$7F                  
CODE_2AB6D7:        STA $DA                   
CODE_2AB6D9:        LDA $024B                 
CODE_2AB6DC:        AND #$0F                  
CODE_2AB6DE:        TAY                       
CODE_2AB6DF:        BEQ CODE_2AB6F0           
CODE_2AB6E1:        REP #$20                  
CODE_2AB6E3:        LDA $D8                   
CODE_2AB6E5:        CLC                       
CODE_2AB6E6:        ADC #$01B0                
CODE_2AB6E9:        STA $D8                   
CODE_2AB6EB:        SEP #$20                  
CODE_2AB6ED:        DEY                       
CODE_2AB6EE:        BNE CODE_2AB6E1           
CODE_2AB6F0:        REP #$20                  
CODE_2AB6F2:        LDA $024B                 
CODE_2AB6F5:        AND #$00F0                
CODE_2AB6F8:        STA $06                   
CODE_2AB6FA:        STZ $08                   
CODE_2AB6FC:        REP #$10                  
CODE_2AB6FE:        LDY $06                   
CODE_2AB700:        LDA [$D8],y               
CODE_2AB702:        STA $0A                   
CODE_2AB704:        INC $06                   
CODE_2AB706:        LDA $0A                   
CODE_2AB708:        AND #$00FF                
CODE_2AB70B:        ASL A                     
CODE_2AB70C:        ASL A                     
CODE_2AB70D:        ASL A                     
CODE_2AB70E:        TAY                       
CODE_2AB70F:        LDX $08                   
CODE_2AB711:        LDA $0218                 
CODE_2AB714:        AND #$0008                
CODE_2AB717:        BEQ CODE_2AB71B           
CODE_2AB719:        INY                       
CODE_2AB71A:        INY                       
CODE_2AB71B:        LDA [$0C],y               
CODE_2AB71D:        STA $7F2002,x             
CODE_2AB721:        INY                       
CODE_2AB722:        INY                       
CODE_2AB723:        INY                       
CODE_2AB724:        INY                       
CODE_2AB725:        LDA [$0C],y               
CODE_2AB727:        STA $7F2004,x             
CODE_2AB72B:        INX                       
CODE_2AB72C:        INX                       
CODE_2AB72D:        INX                       
CODE_2AB72E:        INX                       
CODE_2AB72F:        STX $08                   
CODE_2AB731:        CPX #$0040                
CODE_2AB734:        BCC CODE_2AB6FE           
CODE_2AB736:        SEP #$30                  
CODE_2AB738:        PLB                       
CODE_2AB739:        RTS                       

CODE_2AB73A:        PHA                       
CODE_2AB73B:        PHX                       
CODE_2AB73C:        PHY                       
CODE_2AB73D:        REP #$30                  
CODE_2AB73F:        TYA                       
CODE_2AB740:        AND #$00FF                
CODE_2AB743:        ORA #$2000                
CODE_2AB746:        TAY                       
CODE_2AB747:        SEP #$20                  
CODE_2AB749:        LDA #$00                  
CODE_2AB74B:        STA [$2E],y               
CODE_2AB74D:        SEP #$10                  
CODE_2AB74F:        PLY                       
CODE_2AB750:        PLX                       
CODE_2AB751:        PLA                       
CODE_2AB752:        RTL                       

CODE_2AB753:        PHX                       
CODE_2AB754:        LDA $30                   
CODE_2AB756:        STA $DA                   
CODE_2AB758:        REP #$20                  
CODE_2AB75A:        LDA $2E                   
CODE_2AB75C:        STA $D8                   
CODE_2AB75E:        SEP #$20                  
CODE_2AB760:        LDA $0706                 
CODE_2AB763:        AND #$0F                  
CODE_2AB765:        TAX                       
CODE_2AB766:        LDA.l DATA_2AB778,x             
CODE_2AB76A:        STA $02                   
CODE_2AB76C:        LDY $0700                 
CODE_2AB76F:        LDA $02                   
CODE_2AB771:        STA [$D8],y               
CODE_2AB773:        JSR CODE_2A8AD2           
CODE_2AB776:        PLX                       
CODE_2AB777:        RTL                       

DATA_2AB778:
                      db $20,$21,$24,$25

CODE_2AB77C:        LDY $0700              
CODE_2AB77F:        LDA #$23                  
CODE_2AB781:        STA [$2E],y               
CODE_2AB783:        INY                       
CODE_2AB784:        STA [$2E],y               
CODE_2AB786:        RTL                       

CODE_2AB787:        PHB                       
CODE_2AB788:        PHK                       
CODE_2AB789:        PLB                       
CODE_2AB78A:        LDA [$2B]                 
CODE_2AB78C:        STA $02                   
CODE_2AB78E:        REP #$20                  
CODE_2AB790:        STZ $DB                   
CODE_2AB792:        INC $002B                 
CODE_2AB795:        LDA $2E                   
CODE_2AB797:        STA $D8                   
CODE_2AB799:        SEP #$20                  
CODE_2AB79B:        LDA $30                   
CODE_2AB79D:        STA $DA                   
CODE_2AB79F:        LDA $0706                 
CODE_2AB7A2:        AND #$0F                  
CODE_2AB7A4:        TAX                       
CODE_2AB7A5:        CPX #$08                  
CODE_2AB7A7:        BEQ CODE_2AB7C6           
CODE_2AB7A9:        LDA $B7EF,x               
CODE_2AB7AC:        STA $03                   
CODE_2AB7AE:        LDA $B7F9,x               
CODE_2AB7B1:        STA $DB                   
CODE_2AB7B3:        LDY $0700                 
CODE_2AB7B6:        LDA $03                   
CODE_2AB7B8:        STA [$D8],y               
CODE_2AB7BA:        JSR CODE_2A8AD2           
CODE_2AB7BD:        DEC $02                   
CODE_2AB7BF:        BMI CODE_2AB7ED           
CODE_2AB7C1:        JSR CODE_2A86F5           
CODE_2AB7C4:        BRA CODE_2AB7B6           

CODE_2AB7C6:        LDY $0700                 
CODE_2AB7C9:        LDA #$22                  
CODE_2AB7CB:        STA [$2E],y               
CODE_2AB7CD:        JSR CODE_2A8AD2           
CODE_2AB7D0:        JSL CODE_23BEBB           
CODE_2AB7D4:        LDA [$2E],y               
CODE_2AB7D6:        CMP #$C2                  
CODE_2AB7D8:        BEQ CODE_2AB7D0           
CODE_2AB7DA:        CMP #$F5                  
CODE_2AB7DC:        BNE CODE_2AB7ED           
CODE_2AB7DE:        REP #$20                  
CODE_2AB7E0:        LDA $2E                   
CODE_2AB7E2:        STA $D8                   
CODE_2AB7E4:        SEP #$20                  
CODE_2AB7E6:        LDA #$23                  
CODE_2AB7E8:        STA [$2E],y               
CODE_2AB7EA:        JSR CODE_2A8AD2           
CODE_2AB7ED:        PLB                       
CODE_2AB7EE:        RTL                       

DATA_2AB7EF:        db $02,$04,$05,$06,$07,$08,$0B,$0C ;
                    db $00,$0D,$0F,$11,$11,$0F,$0E,$12 ;
                    db $12,$0E,$00,$01,$00,$00,$13,$14 ;
                    db $00,$00,$00,$17,$18,$19,$00,$00 ;
                    db $00,$00,$00,$00,$00,$00,$15,$16 ;
                    db $00,$00,$00,$1A,$00,$1B,$00,$00 ;
                    db $00,$00,$00,$00,$00,$00,$15,$0E ;
                    db $14,$00,$00,$1C,$1D,$1E,$00,$00 ;
                    db $00,$00,$00,$00,$00,$00,$15,$0F ;
                    db $16,$00,$00,$00,$00,$00,$00,$00 ;
                    db $00,$13,$14,$00,$00,$00,$15,$10 ;
                    db $0E,$14,$00,$00,$00,$00,$00,$00 ;
                    db $00,$15,$16,$00,$00,$13,$11,$10 ;
                    db $0F,$16,$00,$00,$00,$00,$00,$00 ;
                    db $13,$11,$16,$00,$00,$11,$12,$12 ;
                    db $13,$00,$00,$17,$18,$19,$00,$00 ;
                    db $00,$00,$00,$00,$00,$14,$15,$15 ;
                    db $16,$00,$00,$1A,$00,$1B,$00,$00 ;
                    db $00,$11,$12,$13,$00,$14,$15,$15 ;
                    db $16,$00,$00,$1C,$1D,$1E,$00,$00 ;
                    db $00,$14,$15,$16,$00,$14,$15,$15 ;
                    db $16,$00,$00,$00,$00,$00,$00,$11 ;
                    db $12,$02,$15,$16,$00,$14,$15,$03 ;
                    db $12,$12,$13,$00,$00,$00,$00,$14 ;
                    db $15,$16,$15,$16,$00,$14,$15,$14 ;
                    db $15,$15,$16,$00,$00,$00,$00,$14 ;
                    db $15,$16,$15,$16,$00,$00,$00,$00 ;
                    db $00,$00,$00,$17,$18,$19,$00,$00 ;
                    db $00,$00,$00,$00,$00,$00,$00,$00 ;
                    db $00,$00,$00,$1A,$00,$1B,$00,$00 ;
                    db $00,$00,$00,$00,$00,$00,$00,$00 ;
                    db $00,$00,$00,$1C,$1D,$1E,$00,$00 ;
                    db $00,$00,$00,$00,$00,$00,$00,$00 ;
                    db $14,$15,$00,$00,$00,$00,$00,$00 ;
                    db $00,$00,$00,$00,$00,$00,$00,$14 ;
                    db $01,$02,$04,$14,$15,$00,$00,$00 ;
                    db $00,$00,$00,$00,$00,$00,$14,$01 ;
                    db $01,$02,$03,$01,$02,$04,$00,$00 ;
                    db $14,$15,$00,$00,$00,$00,$00,$00 ;
                    db $00,$00,$00,$17,$18,$19,$00,$00 ;
                    db $00,$15,$16,$00,$00,$00,$15,$16 ;
                    db $00,$00,$00,$1A,$00,$1B,$00,$00 ;
                    db $00,$00,$00,$00,$00,$00,$00,$00 ;
                    db $00,$00,$00,$1C,$1D,$1E,$00,$00 ;
                    db $00,$00,$00,$00,$00,$00,$00,$00 ;
                    db $00,$00,$00,$00,$00,$00,$15,$16 ;
                    db $00,$00,$00,$00,$00,$00,$00,$00 ;
                    db $00,$00,$00,$00,$00,$00,$00,$00 ;
                    db $00,$00,$00,$00,$00,$00,$00,$00 ;
                    db $00,$00,$00,$00,$00,$00,$00,$00 ;
                    db $00,$00,$00,$00,$00,$04,$05,$05 ;
                    db $06,$00,$00,$17,$18,$19,$00,$00 ;
                    db $00,$00,$00,$00,$00,$07,$08,$08 ;
                    db $09,$00,$00,$1A,$00,$1B,$00,$00 ;
                    db $00,$04,$05,$06,$00,$07,$08,$08 ;
                    db $09,$00,$00,$1C,$1D,$1E,$00,$00 ;
                    db $00,$07,$08,$09,$00,$07,$08,$08 ;
                    db $09,$00,$00,$00,$00,$00,$00,$04 ;
                    db $05,$0A,$08,$09,$00,$07,$08,$0B ;
                    db $05,$05,$06,$00,$00,$00,$00,$07 ;
                    db $08,$09,$08,$09,$00,$07,$08,$07 ;
                    db $08,$08,$09,$00,$00,$00,$00,$07 ;
                    db $08,$09,$08,$09 ;

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
                    db $5C,$09,$FC,$08,$5D,$09,$FC,$08 ;
                    db $5E,$09,$FC,$08,$5F,$09,$60,$09 ;
                    db $70,$09,$61,$09,$71,$09,$62,$09 ;
                    db $72,$09,$63,$09,$73,$09,$64,$09 ;
                    db $74,$09,$65,$09,$75,$09,$66,$09 ;
                    db $76,$09,$67,$09,$77,$09,$4A,$09 ;
                    db $8A,$05,$4B,$09,$8B,$05,$4C,$09 ;
                    db $88,$05,$4D,$09,$89,$05,$4C,$09 ;
                    db $8A,$05,$4D,$09,$8B,$05,$68,$05 ;
                    db $78,$05,$69,$05,$79,$05,$79,$C5 ;
                    db $78,$C5,$78,$C5,$79,$C5,$FC,$08 ;
                    db $4E,$05,$4E,$05,$6A,$05,$4F,$05 ;
                    db $6B,$05,$FC,$08,$4F,$05,$6A,$05 ;
                    db $7A,$05,$7A,$05,$7A,$05,$7B,$05 ;
                    db $7B,$05,$6B,$05,$7B,$05,$7A,$05 ;
                    db $7A,$05,$7A,$05,$7A,$05,$7B,$05 ;
                    db $7B,$05,$7B,$05,$7B,$05,$FC,$08 ;
                    db $6F,$05,$FC,$08,$6F,$45,$FC,$08 ;
                    db $6F,$05,$6F,$05,$FC,$04,$FC,$04 ;
                    db $FC,$04,$FC,$04,$FC,$04,$6F,$45 ;
                    db $FC,$04,$FC,$08,$6F,$45,$FC,$08 ;
                    db $6E,$45,$6E,$45,$7E,$06,$6E,$05 ;
                    db $7E,$06,$FC,$08,$6E,$05,$6F,$45 ;
                    db $FC,$04,$6E,$45,$7D,$45,$7E,$06 ;
                    db $7E,$06,$7E,$06,$7E,$06,$7E,$06 ;
                    db $6C,$05,$6C,$05,$7E,$05,$6D,$05 ;
                    db $6B,$05,$FC,$04,$6D,$05,$FC,$04 ;
                    db $50,$05,$FC,$04,$51,$05,$FC,$04 ;
                    db $52,$05,$40,$05,$53,$05,$49,$05 ;
                    db $5C,$05,$FC,$04,$5D,$05,$FC,$04 ;
                    db $5E,$05,$FC,$04,$5F,$05,$7D,$45 ;
                    db $7C,$05,$6C,$05,$6A,$05,$41,$05 ;
                    db $54,$09,$42,$05,$55,$09,$43,$05 ;
                    db $56,$09,$44,$05,$57,$09,$90,$05 ;
                    db $70,$09,$91,$05,$71,$09,$92,$05 ;
                    db $72,$09,$93,$05,$73,$09,$94,$05 ;
                    db $74,$09,$95,$05,$75,$09,$96,$05 ;
                    db $76,$09,$67,$05,$77,$09,$84,$05 ;
                    db $74,$09,$85,$05,$75,$09,$86,$05 ;
                    db $76,$09,$67,$05,$77,$09,$80,$05 ;
                    db $70,$09,$81,$05,$71,$09,$82,$05 ;
                    db $72,$09,$83,$05,$73,$09,$FF,$00 ;
                    db $9C,$09,$9B,$09,$9D,$09,$9B,$49 ;
                    db $9D,$49,$9B,$09,$9D,$09,$9B,$49 ;
                    db $9D,$49,$FF,$00,$9C,$49,$9E,$09 ;
                    db $FF,$00,$9F,$09,$A0,$09,$9F,$49 ;
                    db $A0,$49,$9F,$09,$A0,$09,$9F,$49 ;
                    db $A0,$49,$9E,$49,$FF,$00,$FF,$00 ;
                    db $A2,$09,$A1,$09,$A3,$09,$A1,$49 ;
                    db $A3,$49,$A1,$09,$A3,$09,$A1,$49 ;
                    db $A3,$49,$FF,$00,$A2,$49,$A4,$09 ;
                    db $FF,$00,$A5,$09,$FF,$00,$A5,$49 ;
                    db $FF,$00,$A5,$09,$FF,$00,$A5,$49 ;
                    db $FF,$00,$A4,$49,$FF,$00,$FF,$00 ;
                    db $8C,$09,$FF,$00,$8C,$09,$A6,$05 ;
                    db $AA,$05,$A7,$05,$AB,$05,$A8,$05 ;
                    db $AC,$05,$A9,$05,$AD,$05,$FF,$00 ;
                    db $FF,$00,$FF,$00,$FF,$00,$FF,$00 ;
                    db $50,$05,$41,$05,$51,$05,$42,$05 ;
                    db $52,$05,$43,$05,$53,$05,$44,$05 ;
                    db $54,$05,$45,$05,$55,$05,$46,$05 ;
                    db $56,$05,$FF,$00,$57,$05,$88,$05 ;
                    db $8C,$05,$89,$05,$8D,$05,$92,$05 ;
                    db $92,$05,$93,$05,$93,$05,$48,$05 ;
                    db $58,$05,$49,$05,$59,$05,$4A,$05 ;
                    db $5A,$05,$4B,$05,$5B,$05,$4C,$05 ;
                    db $5C,$05,$4D,$05,$5D,$05,$4E,$05 ;
                    db $5E,$05,$4F,$05,$5F,$05,$84,$05 ;
                    db $8E,$05,$85,$05,$87,$05,$82,$05 ;
                    db $86,$05,$83,$05,$8D,$05,$90,$05 ;
                    db $7A,$05,$74,$05,$7B,$05,$75,$05 ;
                    db $52,$05,$76,$05,$53,$05,$63,$05 ;
                    db $54,$05,$64,$05,$55,$05,$65,$05 ;
                    db $70,$05,$6B,$05,$71,$05,$6C,$05 ;
                    db $6C,$85,$6D,$05,$6D,$85,$6E,$05 ;
                    db $6E,$85,$6F,$05,$6F,$85,$68,$05 ;
                    db $68,$85,$69,$05,$69,$85,$6A,$05 ;
                    db $6A,$85,$6B,$05,$6B,$85,$6C,$05 ;
                    db $66,$05,$60,$05,$67,$05,$61,$05 ;
                    db $52,$05,$62,$05,$53,$05,$77,$05 ;
                    db $54,$05,$78,$05,$55,$05,$79,$05 ;
                    db $7C,$05,$93,$05,$7D,$05,$90,$05 ;
                    db $90,$05,$91,$05,$91,$05,$7E,$05 ;
                    db $7F,$05,$49,$05,$59,$05,$4E,$05 ;
                    db $5E,$05,$40,$05,$47,$05,$72,$05 ;
                    db $73,$05,$49,$05,$59,$05,$4E,$05 ;
                    db $5E,$05,$80,$05,$81,$05,$90,$05 ;
                    db $9C,$05,$91,$05,$9D,$05,$92,$05 ;
                    db $9E,$05,$93,$05,$9F,$05,$FC,$04 ;
                    db $A0,$05,$FC,$04,$FC,$04,$FC,$04 ;
                    db $FC,$04,$FC,$04,$A0,$45,$68,$05 ;
                    db $94,$05,$69,$05,$95,$05,$6A,$05 ;
                    db $96,$05,$6B,$05,$97,$05,$6C,$05 ;
                    db $98,$05,$6D,$05,$99,$05,$6E,$05 ;
                    db $9A,$05,$6F,$05,$9B,$05,$9C,$05 ;
                    db $FC,$04,$9D,$05,$FC,$04,$9E,$05 ;
                    db $FC,$04,$9F,$05,$FC,$04,$FC,$04 ;
                    db $FC,$04,$FC,$04,$FC,$04,$9E,$05 ;
                    db $FC,$04,$9F,$05,$A0,$45,$A0,$45 ;
                    db $FC,$04,$A0,$05,$FC,$04,$A0,$45 ;
                    db $FC,$04,$A0,$05,$A0,$45,$A0,$45 ;
                    db $A0,$05,$A0,$05,$FC,$04,$FC,$04 ;
                    db $A0,$05,$FC,$04,$A0,$45,$8A,$05 ;
                    db $8E,$05,$8B,$05,$8F,$05,$A2,$09 ;
                    db $FF,$00,$FF,$00,$FF,$00,$FF,$00 ;
                    db $FF,$00,$A2,$09,$FF,$00,$FF,$00 ;
                    db $A3,$09,$FF,$00,$FF,$00,$FF,$00 ;
                    db $FF,$00,$FF,$00,$A4,$09,$4C,$09 ;
                    db $5C,$09,$4D,$09,$5D,$09,$4E,$09 ;
                    db $5E,$09,$4F,$09,$5F,$09,$48,$09 ;
                    db $58,$09,$49,$09,$59,$09,$4A,$09 ;
                    db $5A,$09,$4B,$09,$5B,$09,$40,$09 ;
                    db $50,$09,$41,$09,$51,$09,$42,$09 ;
                    db $52,$09,$43,$09,$53,$09,$44,$09 ;
                    db $54,$09,$45,$09,$55,$09,$46,$09 ;
                    db $56,$09,$47,$09,$57,$09,$50,$09 ;
                    db $48,$09,$51,$09,$49,$09,$56,$09 ;
                    db $4E,$09,$57,$09,$4F,$09,$40,$09 ;
                    db $58,$09,$41,$09,$59,$09,$46,$09 ;
                    db $5E,$09,$47,$09,$5F,$09,$60,$09 ;
                    db $61,$09,$60,$09,$61,$09,$61,$89 ;
                    db $60,$89,$61,$89,$60,$89,$48,$09 ;
                    db $50,$09,$49,$09,$51,$09,$4A,$09 ;
                    db $52,$09,$4B,$09,$53,$09,$4C,$09 ;
                    db $54,$09,$4D,$09,$55,$09,$4E,$09 ;
                    db $56,$09,$4F,$09,$57,$09,$40,$09 ;
                    db $62,$09,$41,$09,$63,$09,$42,$09 ;
                    db $64,$09,$43,$09,$65,$09,$44,$09 ;
                    db $66,$09,$45,$09,$67,$09,$46,$09 ;
                    db $68,$09,$47,$09,$69,$09,$6A,$09 ;
                    db $58,$05,$6B,$09,$59,$05,$6C,$09 ;
                    db $5A,$05,$6D,$09,$5B,$05,$6E,$09 ;
                    db $5C,$05,$6F,$09,$5D,$05,$70,$09 ;
                    db $5E,$05,$71,$09,$5F,$05,$40,$05 ;
                    db $50,$05,$41,$05,$51,$05,$42,$05 ;
                    db $52,$05,$43,$05,$53,$05,$44,$05 ;
                    db $54,$05,$45,$05,$55,$05,$46,$05 ;
                    db $56,$05,$47,$05,$57,$05,$48,$05 ;
                    db $58,$05,$49,$05,$59,$05,$4A,$05 ;
                    db $5A,$05,$4B,$05,$5B,$05,$4C,$05 ;
                    db $5C,$05,$4D,$05,$5D,$05,$4E,$05 ;
                    db $5E,$05,$4F,$05,$5F,$05,$50,$05 ;
                    db $48,$05,$51,$05,$49,$05,$56,$05 ;
                    db $4E,$05,$57,$05,$4F,$05,$40,$05 ;
                    db $58,$05,$41,$05,$59,$05,$46,$05 ;
                    db $5E,$05,$47,$05,$5F,$05,$60,$05 ;
                    db $61,$05,$60,$05,$61,$05,$61,$85 ;
                    db $60,$85,$61,$85,$60,$85,$FF,$00 ;
                    db $FF,$00,$FF,$00,$FF,$00,$FF,$00 ;
                    db $4B,$45,$FF,$00,$45,$45,$FF,$00 ;
                    db $43,$45,$FF,$00,$42,$45,$45,$05 ;
                    db $4C,$05,$4B,$05,$4D,$05,$FF,$00 ;
                    db $4E,$05,$FF,$00,$4F,$05,$61,$05 ;
                    db $41,$45,$62,$05,$41,$05,$FF,$00 ;
                    db $61,$05,$FF,$00,$62,$05,$FF,$00 ;
                    db $45,$05,$FF,$00,$4B,$05,$4F,$45 ;
                    db $41,$45,$4E,$45,$7E,$06,$4D,$45 ;
                    db $7E,$06,$4C,$45,$7E,$06,$51,$05 ;
                    db $7E,$06,$52,$05,$41,$05,$44,$45 ;
                    db $41,$45,$7E,$06,$7E,$06,$7E,$06 ;
                    db $7E,$06,$7E,$06,$7E,$06,$7E,$06 ;
                    db $7E,$06,$41,$05,$41,$85,$53,$45 ;
                    db $5C,$45,$FF,$00,$FF,$00,$FF,$00 ;
                    db $52,$45,$FF,$00,$51,$45,$FF,$00 ;
                    db $4F,$45,$FF,$00,$4E,$45,$4B,$45 ;
                    db $4D,$45,$45,$45,$4C,$45,$7E,$06 ;
                    db $7E,$06,$41,$05,$7E,$06,$41,$45 ;
                    db $7E,$06,$41,$05,$7E,$06,$4C,$05 ;
                    db $7E,$06,$4D,$05,$7E,$06,$4E,$05 ;
                    db $7E,$06,$4F,$05,$41,$05,$42,$05 ;
                    db $7E,$06,$43,$05,$44,$05,$52,$45 ;
                    db $41,$45,$51,$45,$7E,$06,$41,$45 ;
                    db $7E,$06,$7E,$06,$7E,$06,$FF,$00 ;
                    db $52,$45,$FF,$00,$51,$45,$41,$45 ;
                    db $A7,$05,$7E,$06,$A7,$05,$7E,$06 ;
                    db $A7,$05,$7E,$06,$A7,$05,$7E,$06 ;
                    db $A7,$05,$41,$05,$A7,$05,$41,$45 ;
                    db $A7,$05,$41,$05,$A7,$05,$40,$05 ;
                    db $50,$05,$40,$05,$50,$05,$40,$05 ;
                    db $54,$05,$40,$05,$55,$05,$46,$05 ;
                    db $56,$05,$47,$05,$57,$05,$48,$05 ;
                    db $58,$05,$49,$05,$59,$05,$4A,$05 ;
                    db $5A,$05,$40,$05,$5B,$05,$60,$05 ;
                    db $70,$05,$60,$05,$71,$05,$60,$05 ;
                    db $72,$05,$63,$05,$73,$05,$64,$05 ;
                    db $74,$05,$65,$05,$75,$05,$66,$05 ;
                    db $76,$05,$67,$05,$77,$05,$68,$05 ;
                    db $78,$05,$69,$05,$79,$05,$6A,$05 ;
                    db $7A,$05,$6B,$05,$7B,$05,$6C,$05 ;
                    db $7C,$05,$60,$05,$7D,$05,$60,$05 ;
                    db $7E,$05,$60,$05,$7F,$05,$60,$05 ;
                    db $5D,$05,$60,$05,$5E,$05,$60,$05 ;
                    db $5F,$05,$60,$05,$98,$05,$60,$05 ;
                    db $99,$05,$60,$05,$9B,$05,$60,$05 ;
                    db $A0,$05,$60,$05,$A1,$05,$80,$05 ;
                    db $90,$05,$81,$05,$91,$05,$82,$05 ;
                    db $92,$05,$83,$05,$93,$05,$84,$05 ;
                    db $94,$05,$85,$05,$95,$05,$86,$05 ;
                    db $96,$05,$87,$05,$97,$05,$88,$05 ;
                    db $FC,$04,$89,$05,$FC,$04,$8A,$05 ;
                    db $9A,$05,$8B,$05,$FC,$04,$8C,$05 ;
                    db $9C,$05,$8D,$05,$9D,$05,$8E,$05 ;
                    db $9E,$05,$8F,$05,$9F,$05,$6D,$05 ;
                    db $90,$05,$6E,$05,$91,$05,$6F,$05 ;
                    db $92,$05,$A2,$05,$93,$05,$A3,$05 ;
                    db $94,$05,$A4,$05,$95,$05,$A5,$05 ;
                    db $95,$05,$A6,$05,$95,$05,$FC,$04 ;
                    db $FC,$04,$FC,$04,$FC,$04,$64,$09 ;
                    db $6C,$09,$65,$09,$6D,$09,$4A,$49 ;
                    db $7C,$0A,$68,$09,$43,$49,$69,$09 ;
                    db $42,$49,$4D,$49,$7D,$0A,$66,$09 ;
                    db $6E,$09,$67,$09,$6F,$09,$5B,$49 ;
                    db $6A,$09,$7C,$0A,$6B,$09,$4E,$09 ;
                    db $5E,$09,$4F,$09,$5F,$09,$60,$09 ;
                    db $70,$09,$61,$09,$71,$09,$7D,$0A ;
                    db $62,$09,$46,$49,$63,$09,$4C,$09 ;
                    db $46,$09,$4D,$09,$7D,$0A,$5C,$09 ;
                    db $47,$09,$48,$09,$58,$09,$49,$09 ;
                    db $59,$09,$5D,$09,$5A,$09,$4A,$09 ;
                    db $7C,$0A,$4B,$09,$5B,$09,$40,$09 ;
                    db $50,$09,$41,$09,$51,$09,$7D,$0A ;
                    db $52,$09,$42,$09,$53,$09,$43,$09 ;
                    db $54,$09,$7C,$0A,$55,$09,$44,$09 ;
                    db $56,$09,$45,$09,$57,$09,$40,$09 ;
                    db $50,$09,$41,$09,$51,$09,$42,$09 ;
                    db $52,$09,$43,$09,$53,$09,$44,$09 ;
                    db $54,$09,$45,$09,$55,$09,$46,$09 ;
                    db $56,$09,$47,$09,$57,$09,$60,$09 ;
                    db $70,$09,$61,$09,$71,$09,$62,$09 ;
                    db $72,$09,$63,$09,$73,$09,$64,$09 ;
                    db $74,$09,$65,$09,$75,$09,$66,$09 ;
                    db $76,$09,$67,$09,$77,$09,$48,$09 ;
                    db $58,$09,$49,$09,$59,$09,$4A,$09 ;
                    db $5A,$09,$4B,$09,$5B,$09,$4C,$09 ;
                    db $5C,$09,$4D,$09,$5D,$09,$4E,$09 ;
                    db $5E,$09,$4F,$09,$5F,$09,$68,$09 ;
                    db $78,$09,$69,$09,$79,$09,$6A,$09 ;
                    db $7A,$09,$6B,$09,$7B,$09,$6C,$09 ;
                    db $7C,$09,$6D,$09,$7D,$09,$6E,$09 ;
                    db $7E,$09,$6F,$09,$7F,$09,$FD,$08 ;
                    db $FD,$08,$FD,$08,$FD,$08,$62,$49 ;
                    db $64,$09,$62,$09,$64,$49,$62,$49 ;
                    db $6C,$09,$FD,$08,$FD,$08,$FD,$08 ;
                    db $67,$49,$62,$09,$66,$49,$FD,$08 ;
                    db $FD,$08,$FD,$08,$62,$09,$6E,$49 ;
                    db $FE,$08,$6D,$49,$FE,$08,$FE,$08 ;
                    db $FE,$08,$FE,$08,$FE,$08,$6C,$09 ;
                    db $6D,$09,$FD,$08,$6E,$09,$FD,$08 ;
                    db $62,$49,$FD,$08,$62,$09,$FD,$08 ;
                    db $62,$49,$FD,$08,$FD,$08,$ED,$09 ;
                    db $FE,$08,$6E,$09,$FE,$08,$67,$49 ;
                    db $FE,$08,$66,$49,$FE,$08,$FE,$08 ;
                    db $FE,$08,$FE,$08,$63,$09,$FE,$08 ;
                    db $63,$49,$FE,$08,$FE,$08,$FE,$08 ;
                    db $63,$49,$FE,$08,$63,$09,$64,$09 ;
                    db $63,$49,$64,$49,$FE,$08,$64,$09 ;
                    db $FE,$08,$64,$49,$FE,$08,$66,$09 ;
                    db $FE,$08,$67,$09,$FE,$08,$62,$49 ;
                    db $66,$09,$FD,$08,$67,$09,$63,$49 ;
                    db $6A,$09,$FE,$08,$6B,$09,$FE,$08 ;
                    db $FE,$08,$63,$09,$6F,$49,$FE,$08 ;
                    db $6B,$49,$63,$09,$6A,$49,$6B,$49 ;
                    db $FF,$00,$6A,$49,$FF,$00,$6F,$09 ;
                    db $72,$09,$FE,$08,$73,$09,$FE,$08 ;
                    db $73,$49,$6F,$49,$72,$49,$68,$09 ;
                    db $FF,$00,$68,$49,$FF,$00,$63,$49 ;
                    db $68,$09,$63,$09,$68,$49,$FF,$00 ;
                    db $FF,$00,$FF,$00,$FF,$00,$73,$49 ;
                    db $FF,$00,$72,$49,$FF,$00,$6A,$09 ;
                    db $FF,$00,$6B,$09,$FF,$00,$FF,$00 ;
                    db $40,$05,$FF,$00,$41,$05,$FF,$00 ;
                    db $74,$45,$FF,$00,$FF,$00,$FF,$00 ;
                    db $FF,$00,$FF,$00,$74,$05,$44,$05 ;
                    db $54,$05,$45,$05,$55,$05,$50,$05 ;
                    db $43,$05,$51,$05,$42,$05,$46,$05 ;
                    db $56,$05,$47,$05,$57,$05,$5D,$05 ;
                    db $5C,$05,$5C,$05,$5D,$05,$48,$05 ;
                    db $58,$05,$75,$05,$76,$05,$53,$05 ;
                    db $42,$05,$52,$05,$43,$05,$49,$45 ;
                    db $59,$45,$5A,$05,$5B,$05,$4A,$05 ;
                    db $54,$05,$4B,$05,$55,$05,$52,$05 ;
                    db $43,$05,$53,$05,$42,$05,$4C,$05 ;
                    db $56,$05,$4D,$05,$57,$05,$5D,$05 ;
                    db $CC,$04,$5C,$05,$CD,$04,$C2,$04 ;
                    db $C3,$04,$75,$05,$43,$05,$49,$45 ;
                    db $42,$05,$C0,$04,$C1,$04,$CC,$04 ;
                    db $CE,$04,$CD,$04,$CF,$04,$4C,$09 ;
                    db $4C,$09,$4C,$09,$4C,$09,$4C,$09 ;
                    db $4C,$09,$4C,$09,$5B,$09,$4C,$09 ;
                    db $5B,$49,$4C,$09,$4C,$09,$4C,$09 ;
                    db $4C,$09,$5B,$09,$4D,$09,$5B,$49 ;
                    db $4D,$49,$4C,$09,$4C,$09,$4C,$09 ;
                    db $40,$09,$4C,$09,$41,$09,$4C,$09 ;
                    db $42,$09,$4D,$09,$43,$09,$4D,$49 ;
                    db $43,$49,$4C,$09,$42,$49,$4C,$09 ;
                    db $41,$49,$4C,$09,$40,$49,$4C,$09 ;
                    db $41,$49,$5C,$09,$40,$49,$5C,$49 ;
                    db $40,$09,$4C,$09,$41,$09,$50,$09 ;
                    db $44,$09,$51,$09,$45,$09,$52,$09 ;
                    db $46,$09,$53,$09,$47,$09,$53,$49 ;
                    db $47,$49,$52,$49,$46,$49,$51,$49 ;
                    db $45,$49,$50,$49,$44,$49,$54,$09 ;
                    db $48,$09,$55,$09,$49,$09,$56,$09 ;
                    db $4A,$09,$57,$09,$4B,$09,$57,$49 ;
                    db $4B,$49,$56,$49,$4A,$49,$55,$49 ;
                    db $49,$49,$54,$49,$48,$49,$5E,$09 ;
                    db $60,$09,$5F,$09,$5E,$09,$58,$09 ;
                    db $5E,$49,$59,$09,$60,$49,$59,$49 ;
                    db $60,$09,$58,$49,$5E,$09,$5F,$49 ;
                    db $5E,$49,$5E,$49,$60,$49,$5D,$09 ;
                    db $4E,$09,$4E,$09,$4F,$09,$4E,$49 ;
                    db $4F,$49,$5D,$49,$4E,$49,$76,$45 ;
                    db $86,$45,$75,$45,$85,$45,$B4,$05 ;
                    db $B7,$05,$B5,$05,$B4,$05,$B4,$05 ;
                    db $B5,$05,$B5,$05,$B6,$05,$B6,$05 ;
                    db $B7,$05,$B7,$05,$B6,$05,$B4,$05 ;
                    db $B5,$05,$B5,$05,$B4,$05,$B6,$05 ;
                    db $B5,$05,$B7,$05,$B4,$05,$75,$05 ;
                    db $85,$05,$76,$05,$86,$05,$40,$05 ;
                    db $B5,$05,$41,$05,$B4,$05,$B4,$05 ;
                    db $41,$05,$B5,$05,$B4,$05,$B6,$05 ;
                    db $B5,$05,$B7,$05,$40,$05,$40,$05 ;
                    db $41,$05,$41,$05,$B4,$05,$B4,$05 ;
                    db $B5,$05,$B5,$05,$40,$05,$B4,$05 ;
                    db $41,$05,$B5,$05,$40,$05,$B6,$05 ;
                    db $41,$05,$B7,$05,$B4,$05,$B4,$05 ;
                    db $41,$05,$B5,$05,$B6,$05,$40,$05 ;
                    db $B7,$05,$41,$05,$B4,$05,$B6,$05 ;
                    db $B5,$05,$B7,$05,$B6,$05,$95,$05 ;
                    db $A5,$05,$96,$05,$A6,$05,$40,$05 ;
                    db $B7,$05,$41,$05,$B6,$05,$40,$05 ;
                    db $B5,$05,$41,$05,$40,$05,$B6,$05 ;
                    db $B7,$05,$B7,$05,$B4,$05,$48,$09 ;
                    db $58,$09,$49,$09,$59,$09,$4A,$09 ;
                    db $5A,$09,$4B,$09,$5B,$09,$4C,$09 ;
                    db $5C,$09,$4D,$09,$5D,$09,$49,$09 ;
                    db $5E,$09,$4F,$09,$5F,$09,$68,$09 ;
                    db $78,$09,$69,$09,$79,$09,$6A,$09 ;
                    db $7A,$09,$6B,$09,$7B,$09,$6C,$09 ;
                    db $7C,$09,$6D,$09,$7D,$09,$6E,$09 ;
                    db $7E,$09,$6F,$09,$7F,$09,$88,$09 ;
                    db $98,$09,$89,$09,$99,$09,$8A,$09 ;
                    db $9A,$09,$8B,$09,$9B,$09,$8C,$09 ;
                    db $9C,$09,$8D,$09,$9D,$09,$8E,$09 ;
                    db $9E,$09,$8F,$09,$9F,$09,$A8,$09 ;
                    db $B8,$09,$A9,$09,$B9,$09,$AA,$09 ;
                    db $BA,$09,$AB,$09,$BB,$09,$AC,$09 ;
                    db $BC,$09,$AD,$09,$BD,$09,$AE,$09 ;
                    db $BE,$09,$AF,$09,$BF,$09,$94,$09 ;
                    db $B7,$05,$A4,$09,$B4,$05,$67,$09 ;
                    db $B5,$05,$77,$09,$B6,$05,$87,$09 ;
                    db $B7,$05,$97,$09,$B4,$05,$A7,$09 ;
                    db $B5,$05,$4E,$09,$B6,$05,$96,$05 ;
                    db $A6,$05,$95,$05,$A5,$05,$40,$05 ;
                    db $50,$05,$41,$05,$51,$05,$42,$05 ;
                    db $52,$05,$43,$05,$53,$05,$44,$05 ;
                    db $54,$05,$45,$05,$55,$05,$46,$05 ;
                    db $56,$05,$47,$05,$57,$05,$47,$45 ;
                    db $57,$45,$46,$45,$56,$45,$45,$45 ;
                    db $55,$45,$44,$45,$54,$45,$43,$45 ;
                    db $53,$45,$42,$45,$52,$45,$41,$45 ;
                    db $51,$45,$40,$45,$50,$45,$60,$05 ;
                    db $70,$05,$61,$05,$71,$05,$62,$05 ;
                    db $72,$05,$63,$05,$73,$05,$64,$05 ;
                    db $74,$05,$65,$05,$FF,$00,$66,$05 ;
                    db $FF,$00,$FF,$00,$FF,$00,$FF,$00 ;
                    db $FF,$00,$66,$45,$FF,$00,$65,$45 ;
                    db $FF,$00,$64,$45,$74,$45,$63,$45 ;
                    db $73,$45,$62,$45,$72,$45,$61,$45 ;
                    db $71,$45,$60,$45,$70,$45,$80,$05 ;
                    db $90,$05,$81,$05,$91,$05,$82,$05 ;
                    db $92,$05,$83,$05,$93,$05,$84,$05 ;
                    db $FF,$00,$FF,$00,$FF,$00,$FF,$00 ;
                    db $FF,$00,$84,$45,$FF,$00,$83,$45 ;
                    db $93,$45,$82,$45,$92,$45,$81,$45 ;
                    db $91,$45,$80,$45,$90,$45,$A0,$05 ;
                    db $B0,$05,$A1,$05,$B1,$05,$A2,$05 ;
                    db $B2,$05,$A3,$05,$B3,$05,$A3,$45 ;
                    db $B3,$45,$A2,$45,$B2,$45,$A1,$45 ;
                    db $B1,$45,$A0,$45,$B0,$45,$48,$05 ;
                    db $58,$05,$49,$05,$59,$05,$4A,$05 ;
                    db $5A,$05,$4B,$05,$5B,$05,$4C,$05 ;
                    db $5C,$05,$4D,$05,$5D,$05,$4E,$05 ;
                    db $5E,$05,$4F,$05,$5F,$05,$68,$05 ;
                    db $78,$05,$69,$05,$79,$05,$6A,$05 ;
                    db $7A,$05,$6B,$05,$7B,$05,$6B,$45 ;
                    db $7B,$45,$6A,$45,$7A,$45,$69,$45 ;
                    db $79,$45,$68,$45,$78,$45,$78,$05 ;
                    db $68,$05,$79,$05,$69,$05,$7A,$05 ;
                    db $6A,$05,$7B,$05,$6B,$05,$7B,$45 ;
                    db $6B,$45,$7A,$45,$6A,$45,$79,$45 ;
                    db $69,$45,$78,$45,$68,$45,$78,$05 ;
                    db $88,$05,$79,$05,$89,$05,$7A,$05 ;
                    db $8A,$05,$7B,$05,$8B,$05,$7B,$45 ;
                    db $8B,$45,$7A,$45,$8A,$45,$79,$45 ;
                    db $89,$45,$78,$45,$88,$45,$FF,$00 ;
                    db $FF,$00,$FF,$00,$FF,$00,$FF,$00 ;
                    db $FF,$00,$FF,$00,$FF,$00,$A6,$09 ;
                    db $FF,$00,$FF,$00,$FF,$00,$FF,$00 ;
                    db $FF,$00,$A7,$09,$FF,$00,$FF,$00 ;
                    db $5F,$05,$6D,$05,$59,$05,$6E,$05 ;
                    db $5A,$05,$6F,$05,$5B,$05,$6F,$45 ;
                    db $5B,$45,$6E,$45,$5A,$45,$6D,$45 ;
                    db $59,$45,$FF,$00,$5F,$45,$68,$05 ;
                    db $78,$05,$69,$05,$79,$05,$6A,$05 ;
                    db $7A,$05,$6B,$05,$7B,$05,$6B,$45 ;
                    db $7B,$45,$6A,$45,$7A,$45,$69,$45 ;
                    db $79,$45,$68,$45,$78,$45,$5E,$45 ;
                    db $5B,$45,$5D,$45,$5A,$45,$5C,$45 ;
                    db $59,$45,$88,$45,$58,$45,$88,$05 ;
                    db $58,$05,$5C,$05,$59,$05,$5D,$05 ;
                    db $5A,$05,$5E,$05,$5B,$05,$88,$05 ;
                    db $88,$05,$88,$05,$88,$05,$88,$05 ;
                    db $88,$05,$88,$05,$7D,$05,$89,$05 ;
                    db $7E,$05,$8A,$05,$7F,$05,$8A,$45 ;
                    db $7F,$45,$89,$45,$7E,$45,$88,$45 ;
                    db $7D,$45,$88,$45,$88,$45,$88,$05 ;
                    db $88,$05,$8B,$05,$88,$05,$8C,$05 ;
                    db $88,$05,$8D,$05,$7C,$05,$8D,$45 ;
                    db $7C,$45,$8C,$45,$88,$45,$8B,$45 ;
                    db $88,$45,$88,$45,$88,$45,$88,$05 ;
                    db $40,$05,$88,$05,$41,$05,$88,$05 ;
                    db $42,$05,$88,$05,$43,$05,$88,$05 ;
                    db $44,$05,$88,$05,$45,$05,$88,$05 ;
                    db $46,$05,$88,$05,$47,$05,$50,$05 ;
                    db $60,$05,$51,$05,$61,$05,$52,$05 ;
                    db $62,$05,$53,$05,$63,$05,$54,$05 ;
                    db $64,$05,$55,$05,$65,$05,$56,$05 ;
                    db $66,$05,$57,$05,$67,$05,$70,$05 ;
                    db $80,$05,$71,$05,$81,$05,$72,$05 ;
                    db $82,$05,$73,$05,$83,$05,$74,$05 ;
                    db $84,$05,$75,$05,$85,$05,$76,$05 ;
                    db $86,$05,$77,$05,$87,$05,$90,$05 ;
                    db $A0,$05,$91,$05,$A1,$05,$92,$05 ;
                    db $A2,$05,$93,$05,$A3,$05,$94,$05 ;
                    db $A4,$05,$95,$05,$A5,$05,$96,$05 ;
                    db $8E,$05,$97,$05,$8F,$05,$98,$05 ;
                    db $48,$05,$99,$05,$49,$05,$9A,$05 ;
                    db $4A,$05,$9B,$05,$4B,$05,$9C,$05 ;
                    db $4C,$05,$9D,$05,$4D,$05,$9E,$05 ;
                    db $4E,$05,$9F,$05,$4F,$05,$FF,$00 ;
                    db $FF,$00,$A8,$09,$FF,$00,$FF,$00 ;
                    db $FF,$00,$FF,$00,$A9,$09,$97,$09 ;
                    db $89,$09,$98,$09,$86,$09,$99,$09 ;
                    db $87,$09,$96,$09,$88,$09,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$06,$00 ;
                    db $07,$F0,$28,$08,$00,$24,$0B,$50 ;
                    db $2A,$0B,$80,$11,$0C,$B0,$10,$12 ;
                    db $C0,$20,$13,$90,$00,$15,$00,$02 ;
                    db $07,$41,$12,$07,$D1,$24,$0B,$B1 ;
                    db $11,$0C,$A1,$2C,$11,$31,$26,$13 ;
                    db $C1,$22,$13,$51,$02,$FF,$06,$00 ;
                    db $0B,$50,$2A,$0B,$80,$11,$0C,$B0 ;
                    db $10,$12,$C0,$20,$13,$90,$00,$15 ;
                    db $00,$02,$0B,$B1,$11,$0C,$A1,$2C ;
                    db $11,$31,$26,$13,$C1,$22,$13,$51 ;
                    db $02,$FF,$06,$00,$12,$C0,$20,$13 ;
                    db $90,$00,$15,$00,$02,$13,$C1,$22 ;
                    db $13,$51,$02,$FF,$07,$00,$05,$30 ;
                    db $10,$08,$80,$12,$03,$F0,$02,$06 ;
                    db $B1,$14,$08,$41,$16,$0A,$D1,$18 ;
                    db $FF,$07,$00,$00,$10,$0D,$00,$D0 ;
                    db $0D,$04,$00,$1F,$05,$C0,$50,$05 ;
                    db $20,$38,$05,$40,$22,$05,$90,$22 ;
                    db $05,$E0,$38,$07,$70,$40,$08,$30 ;
                    db $40,$08,$B0,$40,$09,$50,$40,$0A ;
                    db $20,$40,$0A,$80,$40,$0B,$30,$40 ;
                    db $0B,$B0,$40,$0C,$50,$40,$0C,$20 ;
                    db $51,$0D,$20,$40,$0D,$70,$40,$FF ;
                    db $01,$01,$0F,$20,$02,$0F,$21,$01 ;
                    db $FF,$00,$00,$11,$30,$00,$13,$90 ;
                    db $02,$11,$81,$04,$FF,$14,$40,$06 ;
                    db $16,$D0,$08,$14,$A1,$0A,$FF,$05 ;
                    db $01,$02,$A0,$00,$04,$10,$10,$04 ;
                    db $40,$20,$04,$E0,$10,$0A,$60,$30 ;
                    db $0F,$00,$50,$0F,$50,$40,$0F,$B0 ;
                    db $40,$02,$81,$00,$04,$31,$10,$04 ;
                    db $D1,$20,$0A,$41,$30,$0F,$01,$50 ;
                    db $0F,$51,$40,$0F,$B1,$40,$FF,$11 ;
                    db $01,$17,$10,$10,$11,$40,$00,$17 ;
                    db $90,$10,$11,$C0,$00,$16,$01,$20 ;
                    db $17,$91,$10,$FF,$08,$00,$10,$00 ;
                    db $00,$10,$40,$00,$12,$80,$20,$10 ;
                    db $C0,$00,$10,$01,$00,$12,$41,$20 ;
                    db $12,$81,$10,$10,$C1,$00,$FF,$10 ;
                    db $00,$20,$10,$20,$00,$20,$50,$20 ;
                    db $01,$20,$80,$02,$00,$20,$C0,$40 ;
                    db $00,$20,$D0,$00,$04,$20,$E0,$00 ;
                    db $01,$21,$00,$10,$00,$21,$C0,$40 ;
                    db $01,$24,$00,$10,$00,$25,$40,$10 ;
                    db $01,$28,$30,$50,$00,$2C,$00,$30 ;
                    db $00,$2C,$30,$50,$01,$20,$11,$20 ;
                    db $02,$20,$51,$20,$03,$20,$81,$02 ;
                    db $02,$20,$D1,$40,$02,$20,$E1,$00 ;
                    db $03,$21,$B1,$10,$05,$21,$A1,$40 ;
                    db $03,$22,$01,$30,$01,$24,$01,$10 ;
                    db $02,$25,$C1,$40,$05,$25,$D1,$40 ;
                    db $06,$26,$01,$30,$02,$29,$01,$10 ;
                    db $03,$2A,$C1,$40,$04,$2B,$C1,$40 ;
                    db $00,$2B,$31,$50,$02,$2D,$C1,$40 ;
                    db $04,$2C,$71,$10,$04,$2E,$01,$30 ;
                    db $03,$FF,$0E,$00,$0B,$C0,$02,$0F ;
                    db $A0,$18,$0F,$E0,$24,$12,$20,$36 ;
                    db $12,$60,$36,$13,$C0,$44,$0F,$40 ;
                    db $70,$10,$00,$70,$0B,$81,$0C,$0F ;
                    db $C1,$64,$11,$01,$56,$11,$41,$36 ;
                    db $13,$21,$44,$13,$A1,$44,$33,$E1 ;
                    db $54,$01,$0F,$21,$70,$FF,$01,$00 ;
                    db $00,$20,$1A,$22,$00,$34,$06,$04 ;
                    db $20,$20,$26,$00,$06,$04,$08,$20 ;
                    db $06,$0A,$40,$18,$0C,$20,$06,$0E ;
                    db $40,$18,$10,$00,$18,$12,$20,$1A ;
                    db $34,$00,$34,$06,$16,$20,$20,$38 ;
                    db $00,$06,$04,$1A,$20,$06,$00,$01 ;
                    db $18,$02,$21,$1A,$24,$01,$34,$06 ;
                    db $06,$21,$20,$28,$01,$06,$04,$0A ;
                    db $21,$06,$0C,$41,$18,$0E,$01,$18 ;
                    db $10,$21,$1A,$32,$01,$34,$06,$14 ;
                    db $21,$20,$36,$01,$06,$04,$18,$21 ;
                    db $06,$1A,$41,$18,$FF,$0A,$00,$0E ;
                    db $50,$00,$0F,$A0,$10,$11,$31,$20 ;
                    db $10,$81,$30,$FF,$03,$00,$00,$20 ;
                    db $07,$01,$A0,$14,$04,$50,$08,$06 ;
                    db $E0,$14,$07,$70,$14,$00,$20,$07 ;
                    db $01,$71,$18,$03,$11,$08,$05,$31 ;
                    db $13,$07,$91,$14,$FF,$03,$00,$00 ;
                    db $20,$07,$01,$A0,$14,$04,$50,$08 ;
                    db $06,$E0,$14,$07,$70,$14,$00,$20 ;
                    db $07,$11,$50,$20,$14,$A0,$30,$12 ;
                    db $20,$50,$11,$B0,$40,$01,$71,$18 ;
                    db $03,$11,$08,$05,$31,$13,$07,$91 ;
                    db $14,$0F,$71,$20,$34,$E1,$30,$01 ;
                    db $11,$F1,$40,$FF,$02,$00,$0F,$60 ;
                    db $03,$0E,$F0,$03,$0F,$E0,$03,$10 ;
                    db $00,$03,$30,$20,$03,$01,$11,$10 ;
                    db $03,$11,$40,$03,$0E,$A0,$16,$10 ;
                    db $60,$14,$10,$C0,$14,$12,$80,$13 ;
                    db $14,$50,$30,$14,$F0,$30,$15,$30 ;
                    db $20,$15,$60,$36,$30,$01,$03,$01 ;
                    db $0F,$21,$03,$10,$81,$04,$11,$B1 ;
                    db $03,$12,$A1,$02,$12,$D1,$02,$33 ;
                    db $C1,$01,$01,$0E,$41,$16,$10,$21 ;
                    db $14,$12,$61,$13,$12,$F1,$13,$14 ;
                    db $11,$30,$15,$31,$20,$15,$A1,$20 ;
                    db $15,$E1,$30,$FF,$05,$01,$00,$00 ;
                    db $02,$00,$80,$20,$00,$A0,$10,$00 ;
                    db $C0,$05,$02,$20,$02,$02,$C0,$40 ;
                    db $04,$00,$20,$04,$20,$10,$04,$80 ;
                    db $10,$04,$A0,$20,$04,$40,$40,$06 ;
                    db $A0,$02,$08,$00,$31,$08,$40,$02 ;
                    db $08,$C0,$20,$08,$E0,$40,$0A,$40 ;
                    db $20,$0A,$60,$02,$0C,$00,$02,$0C ;
                    db $80,$20,$0C,$A0,$10,$0C,$C0,$05 ;
                    db $0E,$20,$02,$0E,$C0,$40,$10,$00 ;
                    db $20,$10,$20,$10,$10,$80,$10,$10 ;
                    db $40,$40,$10,$A0,$20,$12,$A0,$02 ;
                    db $14,$00,$31,$14,$40,$02,$14,$C0 ;
                    db $20,$14,$E0,$40,$16,$40,$20,$16 ;
                    db $60,$02,$18,$00,$04,$02,$01,$10 ;
                    db $02,$21,$04,$04,$21,$10,$04,$41 ;
                    db $40,$04,$81,$10,$04,$A1,$20,$04 ;
                    db $C1,$01,$06,$A1,$02,$08,$21,$31 ;
                    db $08,$61,$20,$08,$81,$02,$0A,$61 ;
                    db $02,$0A,$E1,$20,$0E,$01,$10,$0E ;
                    db $21,$04,$10,$21,$10,$10,$41,$40 ;
                    db $10,$81,$10,$10,$A1,$20,$10,$C1 ;
                    db $01,$12,$A1,$02,$14,$21,$31,$14 ;
                    db $61,$20,$14,$81,$02,$16,$61,$02 ;
                    db $16,$E1,$20,$18,$01,$04,$FF,$13 ;
                    db $00,$0E,$00,$00,$0F,$60,$02,$10 ;
                    db $A0,$04,$13,$C0,$10,$12,$60,$20 ;
                    db $10,$01,$06,$0F,$31,$08,$0E,$D1 ;
                    db $0A,$13,$81,$10,$12,$21,$20,$12 ;
                    db $E1,$20,$FF,$11,$00,$FF,$10,$00 ;
                    db $FF,$12,$00,$FF,$14,$00,$12,$A0 ;
                    db $03,$12,$11,$02,$12,$61,$0B,$FF ;
                    db $02,$00,$0C,$10,$03,$0C,$50,$03 ;
                    db $0C,$90,$03,$0C,$D0,$03,$0C,$70 ;
                    db $10,$FF,$17,$01,$20,$10,$06,$0C ;
                    db $20,$90,$06,$0C,$26,$10,$06,$00 ;
                    db $26,$90,$06,$00,$28,$20,$14,$05 ;
                    db $12,$00,$26,$12,$40,$36,$12,$80 ;
                    db $26,$12,$C0,$36,$FF,$15,$00,$00 ;
                    db $70,$03,$00,$E0,$40,$01,$50,$50 ;
                    db $02,$00,$40,$02,$C0,$00,$04,$10 ;
                    db $00,$04,$80,$40,$05,$60,$50,$05 ;
                    db $B0,$10,$05,$F0,$40,$06,$40,$10 ;
                    db $06,$90,$50,$07,$00,$10,$07,$70 ;
                    db $40,$07,$A0,$10,$0D,$80,$30,$0D ;
                    db $D0,$20,$0E,$40,$20,$0F,$B0,$20 ;
                    db $10,$60,$20,$00,$31,$50,$00,$A1 ;
                    db $00,$01,$01,$00,$01,$E1,$50,$02 ;
                    db $61,$40,$03,$C1,$00,$04,$21,$0D ;
                    db $05,$91,$00,$05,$D1,$50,$06,$41 ;
                    db $52,$06,$B1,$10,$07,$11,$10,$07 ;
                    db $71,$40,$0D,$71,$30,$0E,$11,$20 ;
                    db $0F,$E1,$21,$10,$21,$20,$10,$91 ;
                    db $30,$FF,$0F,$00,$00,$F0,$50,$02 ;
                    db $10,$70,$02,$60,$50,$03,$20,$50 ;
                    db $03,$A0,$60,$03,$D0,$40,$04,$90 ;
                    db $40,$05,$50,$50,$06,$10,$70,$07 ;
                    db $E0,$70,$08,$40,$50,$08,$80,$40 ;
                    db $09,$B0,$60,$0B,$70,$50,$0C,$50 ;
                    db $40,$2B,$20,$08,$01,$0D,$10,$04 ;
                    db $0E,$F0,$03,$0F,$40,$05,$0F,$E0 ;
                    db $03,$0C,$A0,$18,$0E,$60,$16,$10 ;
                    db $C0,$14,$12,$80,$13,$00,$51,$50 ;
                    db $02,$11,$40,$02,$A1,$40,$02,$D1 ;
                    db $60,$03,$61,$50,$04,$21,$70,$05 ;
                    db $81,$40,$06,$51,$50,$07,$01,$50 ;
                    db $09,$D1,$40,$0A,$21,$50,$0A,$A1 ;
                    db $50,$0A,$F1,$70,$0B,$01,$40,$0C ;
                    db $C1,$70,$0D,$D1,$60,$0E,$B1,$06 ;
                    db $0F,$81,$04,$30,$01,$03,$01,$10 ;
                    db $D1,$04,$11,$A1,$03,$32,$C1,$02 ;
                    db $01,$0A,$41,$19,$0D,$21,$17,$0F ;
                    db $F1,$16,$11,$61,$14,$FF,$16,$00 ;
                    db $0B,$00,$21,$0B,$40,$02,$0B,$C0 ;
                    db $10,$0B,$E0,$30,$0D,$40,$10,$0D ;
                    db $60,$02,$11,$20,$48,$13,$00,$42 ;
                    db $13,$80,$60,$13,$A0,$50,$13,$C0 ;
                    db $45,$15,$20,$42,$15,$C0,$70,$17 ;
                    db $00,$60,$17,$20,$50,$17,$40,$70 ;
                    db $17,$80,$50,$17,$A0,$60,$19,$A0 ;
                    db $42,$0B,$01,$30,$0B,$21,$21,$0B ;
                    db $61,$10,$0B,$81,$02,$0D,$61,$02 ;
                    db $0D,$E1,$10,$15,$01,$50,$15,$21 ;
                    db $44,$17,$21,$50,$17,$41,$70,$17 ;
                    db $81,$50,$17,$A1,$60,$17,$C1,$41 ;
                    db $19,$A1,$42,$FF,$0C,$00,$FF,$0B ;
                    db $00,$0B,$10,$24,$0B,$90,$24,$02 ;
                    db $00,$06,$02,$40,$16,$02,$80,$06 ;
                    db $02,$C0,$16,$FF ;

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

CODE_2AF800:        PHB             
CODE_2AF801:        PHK                       
CODE_2AF802:        PLB                       
CODE_2AF803:        STZ $0202                 
CODE_2AF806:        LDX #$03                  
CODE_2AF808:        LDY #$22                  
CODE_2AF80A:        LDA $0598                 
CODE_2AF80D:        BEQ CODE_2AF818           
CODE_2AF80F:        LDY #$23                  
CODE_2AF811:        LDX #$03                  
CODE_2AF813:        LDA #$33                  
CODE_2AF815:        STA $0202                 
CODE_2AF818:        STY $0200                 
CODE_2AF81B:        STX $0201                 
CODE_2AF81E:        LDA #$1C                  
CODE_2AF820:        STA $0281                 
CODE_2AF823:        STZ $0282                 
CODE_2AF826:        STZ $0283                 
CODE_2AF829:        STZ $0285                 
CODE_2AF82C:        LDA #$3C                  
CODE_2AF82E:        STA $0287                 
CODE_2AF831:        STZ $0288                 
CODE_2AF834:        LDA #$17                  
CODE_2AF836:        STA $0208                 
CODE_2AF839:        STA $020A                 
CODE_2AF83C:        STZ $0209                 
CODE_2AF83F:        STZ $020B                 
CODE_2AF842:        LDA $0598                 
CODE_2AF845:        BEQ CODE_2AF856           
CODE_2AF847:        DEC $0208                 
CODE_2AF84A:        DEC $020A                 
CODE_2AF84D:        INC $0209                 
CODE_2AF850:        INC $020B                 
CODE_2AF853:        JMP CODE_2AFA1F   
        
CODE_2AF856:        BRL CODE_2AFA19    
       

DATA_2AF859:        db $F0,$00,$90,$F0,$E0,$90,$00,$F0
                    db $00,$92,$F0,$E0,$92,$00

              
CODE_2AF867:        PHB                       
CODE_2AF868:        PHK                       
CODE_2AF869:        PLB                       
CODE_2AF86A:        LDA #$02                  
CODE_2AF86C:        STA $92                   
CODE_2AF86E:        REP #$30                  
CODE_2AF870:        STZ $04                   
CODE_2AF872:        STZ $0283                 
CODE_2AF875:        LDA #$0060                
CODE_2AF878:        STA $0E                   
CODE_2AF87A:        SEC                       
CODE_2AF87B:        SBC $0281                 
CODE_2AF87E:        STA $0289                 
CODE_2AF881:        CLC                       
CODE_2AF882:        ADC $0281                 
CODE_2AF885:        CLC                       
CODE_2AF886:        ADC $0281                 
CODE_2AF889:        STA $028B                 
CODE_2AF88C:        LDA #$0080                
CODE_2AF88F:        STA $028D                 
CODE_2AF892:        LDA #$0100                
CODE_2AF895:        STA $00                   
CODE_2AF897:        STA $02                   
CODE_2AF899:        LDA $0289                 
CODE_2AF89C:        BPL CODE_2AF8AD           
CODE_2AF89E:        LDA $0283                 
CODE_2AF8A1:        CMP $0289                 
CODE_2AF8A4:        BCS CODE_2AF8CD                   
CODE_2AF8A6:        CMP $028B                 
CODE_2AF8A9:        BCS CODE_2AF8CD                   
CODE_2AF8AB:        BRA CODE_2AF8BA   
        
CODE_2AF8AD:        LDA $0283                 
CODE_2AF8B0:        CMP $0289                 
CODE_2AF8B3:        BCC CODE_2AF8CD           
CODE_2AF8B5:        CMP $028B                 
CODE_2AF8B8:        BCS CODE_2AF8CD                   
CODE_2AF8BA:        LDA $0287                 
CODE_2AF8BD:        CLC                       
CODE_2AF8BE:        ADC $028D                 
CODE_2AF8C1:        DEC A                     
CODE_2AF8C2:        STA $02                   
CODE_2AF8C4:        LDA $028D                 
CODE_2AF8C7:        SEC                       
CODE_2AF8C8:        SBC $0287                 
CODE_2AF8CB:        STA $00                   
CODE_2AF8CD:        LDA $0283                 
CODE_2AF8D0:        DEC A                     
CODE_2AF8D1:        ASL A                     
CODE_2AF8D2:        CMP #$01C0                
CODE_2AF8D5:        BCS CODE_2AF91D                   
CODE_2AF8D7:        TAX                       
CODE_2AF8D8:        LDA $00                   
CODE_2AF8DA:        TAY                       
CODE_2AF8DB:        BMI CODE_2AF8EC           
CODE_2AF8DD:        AND #$FF00                
CODE_2AF8E0:        BEQ CODE_2AF8EF           
CODE_2AF8E2:        CMP #$0100                
CODE_2AF8E5:        BNE CODE_2AF8EC           
CODE_2AF8E7:        LDY #$00FF                
CODE_2AF8EA:        BRA CODE_2AF8EF 
          
CODE_2AF8EC:        LDY #$0000                
CODE_2AF8EF:        TYA                       
CODE_2AF8F0:        AND #$00FF                
CODE_2AF8F3:        STA $06                   
CODE_2AF8F5:        LDA $02                   
CODE_2AF8F7:        TAY                       
CODE_2AF8F8:        AND #$FF00                
CODE_2AF8FB:        BEQ CODE_2AF908           
CODE_2AF8FD:        LDY #$0000                
CODE_2AF900:        CMP #$0100                
CODE_2AF903:        BCC CODE_2AF908           
CODE_2AF905:        LDY #$00FF                
CODE_2AF908:        TYA                       
CODE_2AF909:        AND #$00FF                
CODE_2AF90C:        XBA                       
CODE_2AF90D:        ORA $06                   
CODE_2AF90F:        STA $06                   
CODE_2AF911:        CMP #$FFFF                
CODE_2AF914:        BNE CODE_2AF919           
CODE_2AF916:        LDA #$00FF                
CODE_2AF919:        STA $7F9200,x             
CODE_2AF91D:        INC $0283                 
CODE_2AF920:        LDA $0283                 
CODE_2AF923:        CMP #$00E1                
CODE_2AF926:        BCS CODE_2AF92B                   
CODE_2AF928:        BRL CODE_2AF892  
         
CODE_2AF92B:        SEP #$30                  
CODE_2AF92D:        LDA $0285                 
CODE_2AF930:        BEQ CODE_2AF989           
CODE_2AF932:        LDA #$F8                  
CODE_2AF934:        CLC                       
CODE_2AF935:        ADC $0287                 
CODE_2AF938:        STA $0287                 
CODE_2AF93B:        BPL CODE_2AF940           
CODE_2AF93D:        STZ $0287                 
CODE_2AF940:        LDA #$F8                  
CODE_2AF942:        CLC                       
CODE_2AF943:        ADC $0281                 
CODE_2AF946:        STA $0281                 
CODE_2AF949:        BPL CODE_2AF94E           
CODE_2AF94B:        STZ $0281                 
CODE_2AF94E:        LDA $0287                 
CODE_2AF951:        ORA $0281                 
CODE_2AF954:        BNE CODE_2AF989           
CODE_2AF956:        INC $0728                 
CODE_2AF959:        STZ $0285                 
CODE_2AF95C:        STZ $0291                 
CODE_2AF95F:        LDA $0598                 
CODE_2AF962:        BNE CODE_2AF97F           
CODE_2AF964:        LDA #$13                  
CODE_2AF966:        STA $0208                 
CODE_2AF969:        STZ $020A                 
CODE_2AF96C:        LDA $0293                 
CODE_2AF96F:        AND #$BF                  
CODE_2AF971:        STA $0293                 
CODE_2AF974:        STZ $0200                 
CODE_2AF977:        STZ $0201                 
CODE_2AF97A:        STZ $0202                 
CODE_2AF97D:        BRA CODE_2AF9A2  
         
CODE_2AF97F:        LDA $0598                 
CODE_2AF982:        BEQ CODE_2AF989           
CODE_2AF984:        LDA #$32                  
CODE_2AF986:        STA $0202                 
CODE_2AF989:        LDA $0598                 
CODE_2AF98C:        BEQ CODE_2AF992           
CODE_2AF98E:        LDA #$16                  
CODE_2AF990:        BRA CODE_2AF994           
CODE_2AF992:        LDA #$17                  
CODE_2AF994:        STA $0208                 
CODE_2AF997:        STA $020A                 
CODE_2AF99A:        LDA $0293                 
CODE_2AF99D:        ORA #$40                  
CODE_2AF99F:        STA $0293                 
CODE_2AF9A2:        PLB                       
CODE_2AF9A3:        RTL      

DATA_2AF9A4:        db $FF,$00,$00,$20,$00

CODE_2AF9A9:        PHB                  
CODE_2AF9AA:        PHK                       
CODE_2AF9AB:        PLB                       
CODE_2AF9AC:        LDA #$30                  
CODE_2AF9AE:        STA $0202                 
CODE_2AF9B1:        LDY #$23                  
CODE_2AF9B3:        LDX $0291                 
CODE_2AF9B6:        CPX #$03                  
CODE_2AF9B8:        BEQ CODE_2AF9C1           
CODE_2AF9BA:        LDA #$33                  
CODE_2AF9BC:        STA $0202                 
CODE_2AF9BF:        LDY #$33                  
CODE_2AF9C1:        STY $0200                 
CODE_2AF9C4:        LDA #$03                  
CODE_2AF9C6:        STA $0201                 
CODE_2AF9C9:        LDX $0291                 
CODE_2AF9CC:        LDA.l DATA_2AF9A4-1,x             
CODE_2AF9D0:        STA $0281                 
CODE_2AF9D3:        STZ $0282                 
CODE_2AF9D6:        STZ $0287                 
CODE_2AF9D9:        STZ $0288                 
CODE_2AF9DC:        STZ $0283                 
CODE_2AF9DF:        STZ $0285                 
CODE_2AF9E2:        STZ $028B                 
CODE_2AF9E5:        LDA #$80                  
CODE_2AF9E7:        STA $0294                 
CODE_2AF9EA:        LDA #$80                  
CODE_2AF9EC:        STA $0295                 
CODE_2AF9EF:        STZ $0296                 
CODE_2AF9F2:        CPX #$01                  
CODE_2AF9F4:        BEQ CODE_2AF9FA           
CODE_2AF9F6:        CPX #$04                  
CODE_2AF9F8:        BCC CODE_2AFA19           
CODE_2AF9FA:        LDA #$03                  
CODE_2AF9FC:        STA $0201                 
CODE_2AF9FF:        LDX $0726                 
CODE_2AFA02:        LDA $43,x                 
CODE_2AFA04:        CLC                       
CODE_2AFA05:        ADC #$08                  
CODE_2AFA07:        STA $0294                 
CODE_2AFA0A:        LDA $47,x                 
CODE_2AFA0C:        CLC                       
CODE_2AFA0D:        ADC #$08                  
CODE_2AFA0F:        STA $0295                 
CODE_2AFA12:        LDA $45,x                 
CODE_2AFA14:        ADC #$00                  
CODE_2AFA16:        STA $0296                 
CODE_2AFA19:        STZ $020B                 
CODE_2AFA1C:        STZ $0209                 
CODE_2AFA1F:        STZ $0203                 
CODE_2AFA22:        STZ $0204                 
CODE_2AFA25:        LDA #$41                  
CODE_2AFA27:        STA $4370                 
CODE_2AFA2A:        LDA #$26                  
CODE_2AFA2C:        STA $4371                 
CODE_2AFA2F:        LDA #$59                  
CODE_2AFA31:        STA $4372                 
CODE_2AFA34:        LDA #$F8                  
CODE_2AFA36:        STA $4373                 
CODE_2AFA39:        LDA #$2A                  
CODE_2AFA3B:        STA $4374                 
CODE_2AFA3E:        LDA #$7F                  
CODE_2AFA40:        STA $4377                 
CODE_2AFA43:        LDA #$41                  
CODE_2AFA45:        STA $4360                 
CODE_2AFA48:        LDA #$26                  
CODE_2AFA4A:        STA $4361                 
CODE_2AFA4D:        LDA #$60                  
CODE_2AFA4F:        STA $4362                 
CODE_2AFA52:        LDA #$F8                  
CODE_2AFA54:        STA $4363                 
CODE_2AFA57:        LDA #$2A                  
CODE_2AFA59:        STA $4364                 
CODE_2AFA5C:        LDA #$7F                  
CODE_2AFA5E:        STA $4367                 
CODE_2AFA61:        PLB                       
CODE_2AFA62:        RTL     

CODE_2AFA63:        PHB                       ;Windowing HDMA routine
CODE_2AFA64:        PHK                       ;
CODE_2AFA65:        PLB                       ;
CODE_2AFA66:        PHD                       ;
CODE_2AFA67:        LDA #$22                  ;\ Color Addition Select
CODE_2AFA69:        STA $0203                 ;/ Add Subscreen, prevent color math inside window
CODE_2AFA6C:        REP #$30                  ;\
CODE_2AFA6E:        LDA #$0200                ; | Direct page becomes $0200
CODE_2AFA71:        TCD                       ;/
CODE_2AFA72:        LDA #$9000                ;\ Pointer to windowing HDMA table, low and high byte
CODE_2AFA75:        STA $AB                   ;/  ($9000)
CODE_2AFA77:        LDA #$007F                ;\
CODE_2AFA7A:        AND #$00FF                ; | Pointer to windowing HDMA table, bank byte
CODE_2AFA7D:        TSB $AD                   ;/  ($7F)
CODE_2AFA7F:        LDA $8B                   ;\
CODE_2AFA81:        AND #$0001                ; |
CODE_2AFA84:        BEQ CODE_2AFA93           ; | Pointer to windowing HDMA table, low and high byte
CODE_2AFA86:        LDA #$9200                ; | ($9200)
CODE_2AFA89:        STA $AB                   ;/
CODE_2AFA8B:        LDA #$007F                ;\
CODE_2AFA8E:        AND #$00FF                ; | Pointer to windowing HDMA table, bank byte
CODE_2AFA91:        TSB $AD                   ;/  ($7F)
CODE_2AFA93:        STZ $9D                   ;
CODE_2AFA95:        STZ $A7                   ;
CODE_2AFA97:        STZ $83                   ;
CODE_2AFA99:        STZ $97                   ;
CODE_2AFA9B:        LDA $81                   ;
CODE_2AFA9D:        AND #$00FF                ;
CODE_2AFAA0:        ASL A                     ;
CODE_2AFAA1:        TAX                       ;
CODE_2AFAA2:        LDA.l DATA_009780,x             ;
CODE_2AFAA6:        STA $A9                   ;
CODE_2AFAA8:        LDA $94                   ;
CODE_2AFAAA:        AND #$00FF                ;
CODE_2AFAAD:        STA $89                   ;
CODE_2AFAAF:        LDA $96                   ;
CODE_2AFAB1:        AND #$00FF                ;
CODE_2AFAB4:        XBA                       ;
CODE_2AFAB5:        STA $99                   ;
CODE_2AFAB7:        LDA $95                   ;
CODE_2AFAB9:        AND #$00FF                ;
CODE_2AFABC:        ORA $99                   ;
CODE_2AFABE:        STA $8D                   ;
CODE_2AFAC0:        LDA $91                   ;
CODE_2AFAC2:        AND #$00FF                ;
CODE_2AFAC5:        CMP #$0002                ;
CODE_2AFAC8:        BEQ CODE_2AFAD1           ;
CODE_2AFACA:        LDA $8D                   ;
CODE_2AFACC:        SEC                       ;
CODE_2AFACD:        SBC $10                   ;
CODE_2AFACF:        STA $8D                   ;
CODE_2AFAD1:        LDA #$0100                ;
CODE_2AFAD4:        STA $99                   ;
CODE_2AFAD6:        STA $9B                   ;
CODE_2AFAD8:        LDA $83                   ;
CODE_2AFADA:        INC A                     ;
CODE_2AFADB:        CMP $81                   ;
CODE_2AFADD:        BCS CODE_2AFB15           ;
CODE_2AFADF:        LDA $97                   ;
CODE_2AFAE1:        CLC                       ;
CODE_2AFAE2:        ADC $A9                   ;
CODE_2AFAE4:        STA $97                   ;
CODE_2AFAE6:        XBA                       ;
CODE_2AFAE7:        AND #$00FF                ;
CODE_2AFAEA:        LSR A                     ;
CODE_2AFAEB:        SEP #$30                  ;
CODE_2AFAED:        TAX                       ;
CODE_2AFAEE:        LDA.l DATA_0096FF,x             ;
CODE_2AFAF2:        STA $4202                 ;
CODE_2AFAF5:        LDA $81                   ;
CODE_2AFAF7:        STA $4203                 ;
CODE_2AFAFA:        NOP                       ;
CODE_2AFAFB:        NOP                       ;
CODE_2AFAFC:        NOP                       ;
CODE_2AFAFD:        NOP                       ;
CODE_2AFAFE:        LDA $4217                 ;
CODE_2AFB01:        STA $A1                   ;
CODE_2AFB03:        STZ $A2                   ;
CODE_2AFB05:        REP #$30                  ;
CODE_2AFB07:        LDA $A1                   ;
CODE_2AFB09:        CLC                       ;
CODE_2AFB0A:        ADC $8D                   ;
CODE_2AFB0C:        STA $9B                   ;
CODE_2AFB0E:        LDA $8D                   ;
CODE_2AFB10:        SEC                       ;
CODE_2AFB11:        SBC $A1                   ;
CODE_2AFB13:        STA $99                   ;
CODE_2AFB15:        LDA $89                   ;
CODE_2AFB17:        SEC                       ;
CODE_2AFB18:        SBC $83                   ;
CODE_2AFB1A:        DEC A                     ;
CODE_2AFB1B:        ASL A                     ;
CODE_2AFB1C:        STA $9D                   ;
CODE_2AFB1E:        TAX                       ;
CODE_2AFB1F:        LDA $99                   ;
CODE_2AFB21:        TAY                       ;
CODE_2AFB22:        BMI CODE_2AFB33           ;
CODE_2AFB24:        AND #$FF00                ;
CODE_2AFB27:        BEQ CODE_2AFB36           ;
CODE_2AFB29:        CMP #$0100                ;
CODE_2AFB2C:        BNE CODE_2AFB33           ;
CODE_2AFB2E:        LDY #$00FF                ;
CODE_2AFB31:        BRA CODE_2AFB36           ;

CODE_2AFB33:        LDY #$0000                ;
CODE_2AFB36:        TYA                       ;
CODE_2AFB37:        AND #$00FF                ;
CODE_2AFB3A:        STA $9F                   ;
CODE_2AFB3C:        LDA $9B                   ;
CODE_2AFB3E:        TAY                       ;
CODE_2AFB3F:        AND #$FF00                ;
CODE_2AFB42:        BEQ CODE_2AFB47           ;
CODE_2AFB44:        LDY #$00FF                ;
CODE_2AFB47:        TYA                       ;
CODE_2AFB48:        AND #$00FF                ;
CODE_2AFB4B:        XBA                       ;
CODE_2AFB4C:        ORA $9F                   ;
CODE_2AFB4E:        STA $9F                   ;
CODE_2AFB50:        CPX #$01C0                ;
CODE_2AFB53:        BCS CODE_2AFB60           ;
CODE_2AFB55:        CMP #$FFFF                ;
CODE_2AFB58:        BNE CODE_2AFB5D           ;
CODE_2AFB5A:        LDA #$00FF                ;
CODE_2AFB5D:        TXY                       ;
CODE_2AFB5E:        STA [$AB],y               ;
CODE_2AFB60:        LDA $89                   ;
CODE_2AFB62:        CLC                       ;
CODE_2AFB63:        ADC $83                   ;
CODE_2AFB65:        DEC A                     ;
CODE_2AFB66:        ASL A                     ;
CODE_2AFB67:        STA $A7                   ;
CODE_2AFB69:        CMP #$01C0                ;
CODE_2AFB6C:        BCS CODE_2AFB7C           ;
CODE_2AFB6E:        TAX                       ;
CODE_2AFB6F:        LDA $9F                   ;
CODE_2AFB71:        CMP #$FFFF                ;
CODE_2AFB74:        BNE CODE_2AFB79           ;
CODE_2AFB76:        LDA #$00FF                ;
CODE_2AFB79:        TXY                       ;
CODE_2AFB7A:        STA [$AB],y               ;
CODE_2AFB7C:        INC $83                   ;
CODE_2AFB7E:        LDA $9D                   ;
CODE_2AFB80:        CMP #$01C0                ;
CODE_2AFB83:        BCC CODE_2AFB8C           ;
CODE_2AFB85:        LDA $A7                   ;
CODE_2AFB87:        CMP #$01C0                ;
CODE_2AFB8A:        BCS CODE_2AFB8F           ;
CODE_2AFB8C:        BRL CODE_2AFAD1           ;

CODE_2AFB8F:        SEP #$30                  ;
CODE_2AFB91:        LDA $91                   ;
CODE_2AFB93:        DEC A                     ;
CODE_2AFB94:        BEQ CODE_2AFC04           ;
CODE_2AFB96:        CMP #$03                  ;
CODE_2AFB98:        BEQ CODE_2AFC04           ;
CODE_2AFB9A:        CMP #$04                  ;
CODE_2AFB9C:        BEQ CODE_2AFC14           ;
CODE_2AFB9E:        LDA $81                   ;
CODE_2AFBA0:        CLC                       ;
CODE_2AFBA1:        ADC #$08                  ;
CODE_2AFBA3:        STA $81                   ;
CODE_2AFBA5:        BCS CODE_2AFBAA           ;
CODE_2AFBA7:        JMP CODE_2AFC28           ;

CODE_2AFBAA:        LDA #$38                  ;
CODE_2AFBAC:        STA $1050                 ;
CODE_2AFBAF:        STZ $85                   ;
CODE_2AFBB1:        STZ $91                   ;
CODE_2AFBB3:        STZ $93                   ;
CODE_2AFBB5:        STZ $00                   ;
CODE_2AFBB7:        STZ $01                   ;
CODE_2AFBB9:        STZ $02                   ;
CODE_2AFBBB:        LDA #$02                  ;
CODE_2AFBBD:        STA $0203                 ;
CODE_2AFBC0:        LDA #$11                  ;
CODE_2AFBC2:        LDX $02BF                 ;
CODE_2AFBC5:        CPX #$01                  ;
CODE_2AFBC7:        BEQ CODE_2AFBEF           ;
CODE_2AFBC9:        CPX #$05                  ;
CODE_2AFBCB:        BEQ CODE_2AFBEF           ;
CODE_2AFBCD:        CPX #$06                  ;
CODE_2AFBCF:        BEQ CODE_2AFBEF           ;
CODE_2AFBD1:        CPX #$09                  ;
CODE_2AFBD3:        BEQ CODE_2AFBF3           ;
CODE_2AFBD5:        CPX #$0A                  ;
CODE_2AFBD7:        BEQ CODE_2AFBF3           ;
CODE_2AFBD9:        CPX #$0B                  ;
CODE_2AFBDB:        BEQ CODE_2AFBF3           ;
CODE_2AFBDD:        CPX #$0C                  ;
CODE_2AFBDF:        BEQ CODE_2AFBF3           ;
CODE_2AFBE1:        CPX #$0F                  ;
CODE_2AFBE3:        BEQ CODE_2AFBF3           ;
CODE_2AFBE5:        CPX #$03                  ;
CODE_2AFBE7:        BEQ CODE_2AFBFC           ;
CODE_2AFBE9:        CPX #$04                  ;
CODE_2AFBEB:        BEQ CODE_2AFBFC           ;
CODE_2AFBED:        BRA CODE_2AFBF1           ;

CODE_2AFBEF:        ORA #$02                  ;
CODE_2AFBF1:        ORA #$04                  ;
CODE_2AFBF3:        STA $08                   ;
CODE_2AFBF5:        STZ $0A                   ;
CODE_2AFBF7:        STZ $028C                 ;
CODE_2AFBFA:        BRA CODE_2AFC71           ;

CODE_2AFBFC:        LDA #$13                  ;
CODE_2AFBFE:        STA $08                   ;
CODE_2AFC00:        STZ $0A                   ;
CODE_2AFC02:        BRA CODE_2AFC71           ;

CODE_2AFC04:        LDA $81                   ;
CODE_2AFC06:        SEC                       ;
CODE_2AFC07:        SBC #$06                  ;
CODE_2AFC09:        STA $81                   ;
CODE_2AFC0B:        BCS CODE_2AFC28           ;
CODE_2AFC0D:        LDA #$FF                  ;
CODE_2AFC0F:        STA $1050                 ;
CODE_2AFC12:        BRA CODE_2AFC28           ;

CODE_2AFC14:        LDA $81                   ;
CODE_2AFC16:        CLC                       ;
CODE_2AFC17:        ADC #$0A                  ;
CODE_2AFC19:        STA $81                   ;
CODE_2AFC1B:        CMP #$20                  ;
CODE_2AFC1D:        BCC CODE_2AFC28           ;
CODE_2AFC1F:        LDA #$20                  ;
CODE_2AFC21:        STA $81                   ;
CODE_2AFC23:        LDA #$FF                  ;
CODE_2AFC25:        STA $1050                 ;
CODE_2AFC28:        LDX #$17                  ;
CODE_2AFC2A:        LDA $02BF                 ;
CODE_2AFC2D:        CMP #$01                  ;
CODE_2AFC2F:        BNE CODE_2AFC3B           ;
CODE_2AFC31:        BRA CODE_2AFC35           ;

CODE_2AFC33:        LDX #$15                  ;
CODE_2AFC35:        LDY #$13                  ;
CODE_2AFC37:        STY $09                   ;
CODE_2AFC39:        BRA CODE_2AFC5B           ;

CODE_2AFC3B:        CMP #$02                  ;
CODE_2AFC3D:        BEQ CODE_2AFC33           ;
CODE_2AFC3F:        CMP #$07                  ;
CODE_2AFC41:        BEQ CODE_2AFC35           ;
CODE_2AFC43:        CMP #$09                  ;
CODE_2AFC45:        BEQ CODE_2AFC55           ;
CODE_2AFC47:        CMP #$0A                  ;
CODE_2AFC49:        BEQ CODE_2AFC55           ;
CODE_2AFC4B:        CMP #$0B                  ;
CODE_2AFC4D:        BEQ CODE_2AFC55           ;
CODE_2AFC4F:        CMP #$0C                  ;
CODE_2AFC51:        BEQ CODE_2AFC55           ;
CODE_2AFC53:        BRA CODE_2AFC5B           ;

CODE_2AFC55:        LDX #$11                  ;
CODE_2AFC57:        LDY #$06                  ;
CODE_2AFC59:        STY $09                   ;
CODE_2AFC5B:        STX $08                   ;
CODE_2AFC5D:        STX $0A                   ;
CODE_2AFC5F:        LDY #$17                  ;
CODE_2AFC61:        STY $0B                   ;
CODE_2AFC63:        LDY #$80                  ;
CODE_2AFC65:        LDA $8B                   ;
CODE_2AFC67:        AND #$01                  ;
CODE_2AFC69:        BEQ CODE_2AFC6D           ;
CODE_2AFC6B:        LDY #$40                  ;
CODE_2AFC6D:        STY $93                   ;
CODE_2AFC6F:        INC $8B                   ;
CODE_2AFC71:        PLD                       ;
CODE_2AFC72:        PLB                       ;
CODE_2AFC73:        RTL                       ;

DATA_2AFC74:        db $F9,$07,$F6,$0A,$F4,$0C,$F2,$0E
                    db $F1,$0F,$EF,$11,$EE,$12,$ED,$13
                    db $EC,$14,$EB,$15,$EA,$16,$EA,$16
                    db $E9,$17,$E8,$18,$E8,$18,$E7,$19
                    db $E7,$19,$E6,$1A,$E6,$1A,$E6,$1A
                    db $E5,$1B,$E5,$1B,$E5,$1B,$E5,$1B
                    db $E5,$1B,$E5,$1B,$E5,$1B

CODE_2AFCAA:        PHB                       
CODE_2AFCAB:        PHK                       
CODE_2AFCAC:        PLB                       
CODE_2AFCAD:        REP #$30                  
CODE_2AFCAF:        LDA #$0001                
CODE_2AFCB2:        STA $0283                 
CODE_2AFCB5:        STZ $04                   
CODE_2AFCB7:        LDA $0726                 
CODE_2AFCBA:        AND #$00FF                
CODE_2AFCBD:        TAX                       
CODE_2AFCBE:        LDA $43,x                 
CODE_2AFCC0:        AND #$00FF                
CODE_2AFCC3:        STA $028B                 
CODE_2AFCC6:        SEC                       
CODE_2AFCC7:        SBC #$0010                
CODE_2AFCCA:        STA $0289                 
CODE_2AFCCD:        LDA $45,x                 
CODE_2AFCCF:        AND #$00FF                
CODE_2AFCD2:        XBA                       
CODE_2AFCD3:        STA $D8                   
CODE_2AFCD5:        LDA $47,x                 
CODE_2AFCD7:        AND #$00FF                
CODE_2AFCDA:        ORA $D8                   
CODE_2AFCDC:        CLC                       
CODE_2AFCDD:        ADC #$0008                
CODE_2AFCE0:        SEC                       
CODE_2AFCE1:        SBC $0210                 
CODE_2AFCE4:        STA $028D                 
CODE_2AFCE7:        LDA #$0100                
CODE_2AFCEA:        STA $00                   
CODE_2AFCEC:        STA $02                   
CODE_2AFCEE:        LDA $04                   
CODE_2AFCF0:        CMP #$0034                
CODE_2AFCF3:        BCS CODE_2AFCFD                   
CODE_2AFCF5:        LDA $0283                 
CODE_2AFCF8:        CMP $0289                 
CODE_2AFCFB:        BCS CODE_2AFD0D                   
CODE_2AFCFD:        LDA $0283                 
CODE_2AFD00:        DEC A                     
CODE_2AFD01:        ASL A                     
CODE_2AFD02:        TAX                       
CODE_2AFD03:        LDA #$00FF                
CODE_2AFD06:        STA $7F9000,x             
CODE_2AFD0A:        BRL CODE_2AFD75 
          
CODE_2AFD0D:        LDX $04                   
CODE_2AFD0F:        LDA.l DATA_2AFC74,x             
CODE_2AFD13:        AND #$00FF                
CODE_2AFD16:        STA $D8                   
CODE_2AFD18:        LDA.l DATA_2AFC74+1,x             
CODE_2AFD1C:        AND #$FF00                
CODE_2AFD1F:        XBA                       
CODE_2AFD20:        CLC                       
CODE_2AFD21:        ADC $028D                 
CODE_2AFD24:        AND #$00FF                
CODE_2AFD27:        STA $00                   
CODE_2AFD29:        LDA $028D                 
CODE_2AFD2C:        SEC                       
CODE_2AFD2D:        SBC $D8                   
CODE_2AFD2F:        AND #$00FF                
CODE_2AFD32:        STA $02                   
CODE_2AFD34:        LDA $04                   
CODE_2AFD36:        LSR A                     
CODE_2AFD37:        STA $D8                   
CODE_2AFD39:        INC $04                   
CODE_2AFD3B:        INC $04                   
CODE_2AFD3D:        LDA $0283                 
CODE_2AFD40:        DEC A                     
CODE_2AFD41:        ASL A                     
CODE_2AFD42:        TAX                       
CODE_2AFD43:        LDA $02                   
CODE_2AFD45:        AND #$00FF                
CODE_2AFD48:        XBA                       
CODE_2AFD49:        ORA $00                   
CODE_2AFD4B:        STA $7F9000,x             
CODE_2AFD4F:        STA $DA                   
CODE_2AFD51:        LDA $028B                 
CODE_2AFD54:        CLC                       
CODE_2AFD55:        ADC #$0020                
CODE_2AFD58:        SEC                       
CODE_2AFD59:        SBC $D8                   
CODE_2AFD5B:        DEC A                     
CODE_2AFD5C:        ASL A                     
CODE_2AFD5D:        TAX                       
CODE_2AFD5E:        LDA $DA                   
CODE_2AFD60:        STA $7F9000,x             
CODE_2AFD64:        LDA $04                   
CODE_2AFD66:        CMP #$0034                
CODE_2AFD69:        BCC CODE_2AFD75           
CODE_2AFD6B:        LDA $028B                 
CODE_2AFD6E:        CLC                       
CODE_2AFD6F:        ADC #$0020                
CODE_2AFD72:        STA $0283                 
CODE_2AFD75:        INC $0283                 
CODE_2AFD78:        LDA $0283                 
CODE_2AFD7B:        CMP #$00E1                
CODE_2AFD7E:        BCS CODE_2AFD83                   
CODE_2AFD80:        BRL CODE_2AFCE7  
         
CODE_2AFD83:        SEP #$30                  
CODE_2AFD85:        LDA #$13                  
CODE_2AFD87:        STA $0208                 
CODE_2AFD8A:        STA $020A                 
CODE_2AFD8D:        LDA #$80                  
CODE_2AFD8F:        STA $0293                 
CODE_2AFD92:        PLB                       
CODE_2AFD93:        RTL
                       
CODE_2AFD94:        REP #$30                  
CODE_2AFD96:        LDX #$0000                
CODE_2AFD99:        LDA #$00FF                
CODE_2AFD9C:        STA $7F9000,x             
CODE_2AFDA0:        STA $7F9002,x             
CODE_2AFDA4:        STA $7F9004,x             
CODE_2AFDA8:        STA $7F9006,x             
CODE_2AFDAC:        STA $7F9008,x             
CODE_2AFDB0:        STA $7F900A,x             
CODE_2AFDB4:        STA $7F900C,x             
CODE_2AFDB8:        STA $7F900E,x             
CODE_2AFDBC:        STA $7F9010,x             
CODE_2AFDC0:        STA $7F9012,x             
CODE_2AFDC4:        STA $7F9014,x             
CODE_2AFDC8:        STA $7F9016,x             
CODE_2AFDCC:        STA $7F9018,x             
CODE_2AFDD0:        STA $7F901A,x             
CODE_2AFDD4:        STA $7F901C,x             
CODE_2AFDD8:        STA $7F901E,x             
CODE_2AFDDC:        TXA                       
CODE_2AFDDD:        CLC                       
CODE_2AFDDE:        ADC #$0020                
CODE_2AFDE1:        TAX                       
CODE_2AFDE2:        CPX #$01C0                
CODE_2AFDE5:        BNE CODE_2AFD9C           
CODE_2AFDE7:        SEP #$30                  
CODE_2AFDE9:        RTL

DATA_2AFDEA:        db $FC,$0C,$FC,$0C,$FC,$0C,$A9,$0C
                    db $A9,$0C,$FC,$0C,$A9,$0C,$A9,$0C
              
CODE_2AFDFA:        REP #$30                  
CODE_2AFDFC:        LDX #$0000                
CODE_2AFDFF:        TXY                       
CODE_2AFE00:        LDA [$D8],y               
CODE_2AFE02:        STA $DB                   
CODE_2AFE04:        PHX                       
CODE_2AFE05:        LDA $DB                   
CODE_2AFE07:        AND #$C000                
CODE_2AFE0A:        ASL A                     
CODE_2AFE0B:        ROL A                     
CODE_2AFE0C:        ROL A                     
CODE_2AFE0D:        ROL A                     
CODE_2AFE0E:        ROL A                     
CODE_2AFE0F:        TAX                       
CODE_2AFE10:        LDA.l DATA_2AFDEA,x             
CODE_2AFE14:        STA $00                   
CODE_2AFE16:        LDA.l DATA_2AFDEA+2,x             
CODE_2AFE1A:        PLX                       
CODE_2AFE1B:        STA $7FA002,x             
CODE_2AFE1F:        LDA $00                   
CODE_2AFE21:        STA $7FA000,x             
CODE_2AFE25:        ASL $DB                   
CODE_2AFE27:        ASL $DB                   
CODE_2AFE29:        INX                       
CODE_2AFE2A:        INX                       
CODE_2AFE2B:        INX                       
CODE_2AFE2C:        INX                       
CODE_2AFE2D:        TXA                       
CODE_2AFE2E:        LSR A                     
CODE_2AFE2F:        AND #$000F                
CODE_2AFE32:        BNE CODE_2AFE04           
CODE_2AFE34:        INY                       
CODE_2AFE35:        INY                       
CODE_2AFE36:        TYA                       
CODE_2AFE37:        CMP #$0040                
CODE_2AFE3A:        BNE CODE_2AFE00           
CODE_2AFE3C:        SEP #$30                  
CODE_2AFE3E:        RTL 
           
           
DATA_2AFE3F:        db $58,$A0,$F4,$32,$60,$A0,$F5,$32
                    db $68,$A0,$F6,$32,$70,$A0,$F7,$32
                    db $80,$A0,$F6,$32,$88,$A0,$F8,$32
                    db $90,$A0,$F9,$32,$98,$A0,$FA,$32
                    db $A0,$A0,$F8,$32

CODE_2AFE63:        LDX #$23                  ;
CODE_2AFE65:        LDA.l DATA_2AFE3F,x             ;
CODE_2AFE69:        STA $0900,x               ;
CODE_2AFE6C:        DEX                       ;
CODE_2AFE6D:        BPL CODE_2AFE65           ;
CODE_2AFE6F:        STZ $0A60                 ;
CODE_2AFE72:        STZ $0A61                 ;
CODE_2AFE75:        STZ $0A62                 ;
CODE_2AFE78:        STZ $0A63                 ;
CODE_2AFE7B:        STZ $0A64                 ;
CODE_2AFE7E:        STZ $0A65                 ;
CODE_2AFE81:        STZ $0A66                 ;
CODE_2AFE84:        STZ $0A67                 ;
CODE_2AFE87:        STZ $0A68                 ;
CODE_2AFE8A:        RTL                       ;

     
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
