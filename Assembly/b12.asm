;Super Mario Bros. 2

CODE_128000:        STZ $F6                   
CODE_128002:        STZ $FA                   
CODE_128004:        STZ $F8                   
CODE_128006:        STZ $FC                   
CODE_128008:        LDA $50                   ; \ If player not in normal state...
CODE_12800A:        CMP #$02                  ;  | ...nor climbing (not forced)...
CODE_12800C:        BCS CODE_128033           ; / ..don't branch.
CODE_12800E:        LDA #$00                  
CODE_128010:        LDY #$10                  
CODE_128012:        CPY $04C3                 
CODE_128015:        ROL A                     
CODE_128016:        EOR $06C2                 
CODE_128019:        BEQ CODE_128033           
CODE_12801B:        LDA $0628                 
CODE_12801E:        CMP #$02                  
CODE_128020:        BEQ CODE_12802B           
CODE_128022:        LDY $06C2                 ; \ Player changing size.
CODE_128025:        LDA.w DATA_119B3F,y         ;  | Y = 0 = shrinking, Y = 1 = growing.
CODE_128028:        STA $1DE0                 ; / Store sound effect appropiate to the change.
CODE_12802B:        LDA #$1E                  ; \ Amount of time to flash = #$1E.
CODE_12802D:        STA $82                   ; /
CODE_12802F:        LDA #$08                  ; \ Getting into changing size animation.
CODE_128031:        STA $50                   ; /
CODE_128033:        JSR CODE_128037           ; Execute player state.
CODE_128036:        RTL     
                  
CODE_128037:        STZ $64                   
CODE_128039:        LDA $50                   ; \ Execute pointer depending on player status.
CODE_12803B:        JSL CODE_118776           ; /

PNTR_12803F:        dw CODE_128071                          ; 00 - Walk normal.
                    dw CODE_12813B                          ; 01 - Climbing, normal.
                    dw CODE_128109                          ; 02 - Picking something up.
                    dw CODE_1281F1                          ; 03 - Climbing, entering new room.
                    dw CODE_1281A7                          ; 04 - Moving inside a jar.
                    dw CODE_1281D5                          ; 05 - Moving out of a jar.
                    dw CODE_12822C                          ; 06 - Player walking into Hawkmouth.
                    dw CODE_1280DE                          ; 07 - Dying.
                    dw CODE_12824D                          ; 08 - Hurt / growing.

DATA_128051:        db $00,$00,$00,$00,$40,$40,$40,$00
                    db $C0,$C0,$C0,$00,$00,$00,$00,$00

DATA_128061:        db $00,$40,$C0,$00,$00,$40,$C0,$00
                    db $00,$40,$C0,$00,$00,$00,$00,$00

CODE_128071:        JSL CODE_14DE60           
CODE_128075:        LDA $700007               
CODE_128079:        BEQ CODE_1280C3           
CODE_12807B:        LDA $FC                   
CODE_12807D:        AND #$80                  
CODE_12807F:        BEQ CODE_12808B           
CODE_128081:        LDA $0214                 
CODE_128084:        AND #$01                  
CODE_128086:        EOR #$01                  
CODE_128088:        STA $0214                 
CODE_12808B:        LDA $FC                   
CODE_12808D:        AND #$40                  
CODE_12808F:        BEQ CODE_1280A5           
CODE_128091:        LDA #$30                  ; \ Flashing timer = #$30.
CODE_128093:        STA $04E1                 ; /
CODE_128096:        LDA #$02                  
CODE_128098:        STA $04C4                 
CODE_12809B:        LDA #$3F                  ; \ Invincibility timer = #$3F.
CODE_12809D:        STA $04C3                 ; /
CODE_1280A0:        LDA #$0D                  ; \ Star music.
CODE_1280A2:        STA $1DE2                 ; /
CODE_1280A5:        LDA $0214                 
CODE_1280A8:        BEQ CODE_1280C3           
CODE_1280AA:        LDA $F6                   
CODE_1280AC:        AND #$0F                  
CODE_1280AE:        TAX                       
CODE_1280AF:        PHX                       
CODE_1280B0:        LDA.l DATA_128051,x             
CODE_1280B4:        STA $46                   
CODE_1280B6:        JSR CODE_128523           
CODE_1280B9:        PLX                       
CODE_1280BA:        LDA.l DATA_128061,x             
CODE_1280BE:        STA $3C                   
CODE_1280C0:        BRL CODE_1280D2
           
CODE_1280C3:        JSR CODE_12834B           
CODE_1280C6:        JSR CODE_128272           
CODE_1280C9:        JSR CODE_128565           
CODE_1280CC:        JSR CODE_128BBB           
CODE_1280CF:        JSR CODE_128523           
CODE_1280D2:        LDX #$00                  
CODE_1280D4:        JSR CODE_128525           
CODE_1280D7:        LDA $EB                   
CODE_1280D9:        BNE CODE_1280DD           
CODE_1280DB:        STA $14                   
CODE_1280DD:        RTS
                       
CODE_1280DE:        LDA $82                   
CODE_1280E0:        BNE CODE_128108           
CODE_1280E2:        LDA $042A                 
CODE_1280E5:        CMP #$02                  
CODE_1280E7:        BEQ CODE_1280F9           
CODE_1280E9:        JSR CODE_128523           
CODE_1280EC:        LDA $46                   
CODE_1280EE:        BMI CODE_1280F4           
CODE_1280F0:        CMP #$39                  
CODE_1280F2:        BCS CODE_128108                   
CODE_1280F4:        INC $46                   
CODE_1280F6:        INC $46                   
CODE_1280F8:        RTS
                       
CODE_1280F9:        LDA #$02                  
CODE_1280FB:        STA $C7                   
CODE_1280FD:        LDY #$01                  ; \ Return to player select screen.
CODE_1280FF:        DEC $04EE                 ;  | If lives are 0...
CODE_128102:        BNE CODE_128105           ;  | ...
CODE_128104:        INY                       ;  | ... then return to game over screen.
CODE_128105:        STY $04ED                 ; / <--
CODE_128108:        RTS                       ; Return.
                       
CODE_128109:        LDA $82                   
CODE_12810B:        BNE CODE_12813A           
CODE_12810D:        LDX $042D                 
CODE_128110:        LDY $A8,x                 
CODE_128112:        CPY #$02                  
CODE_128114:        BCC CODE_128134           
CODE_128116:        DEC $A8,x                 
CODE_128118:        LDA.w DATA_119B45,y               
CODE_12811B:        STA $C7                   
CODE_12811D:        LDA $51,x                 
CODE_12811F:        CMP #$06                  
CODE_128121:        BEQ CODE_128129           
CODE_128123:        LDA $90,x                 
CODE_128125:        CMP #$32                  
CODE_128127:        BNE CODE_12812E           
CODE_128129:        LDA.w DATA_119B3F,y               
CODE_12812C:        BPL CODE_128131           
CODE_12812E:        LDA $0546,y               
CODE_128131:        STA $82                   
CODE_128133:        RTS
                       
CODE_128134:        STA $50                   
CODE_128136:        INC $99                   
CODE_128138:        INC $9A                   
CODE_12813A:        RTS
                       
CODE_12813B:        LDA $F6                   ; \ Check only if Up and Down are pressed.
CODE_12813D:        AND #$0C                  ;  | LSR twice for a result from 00-03
CODE_12813F:        LSR A                     ;  |
CODE_128140:        LSR A                     ;  |
CODE_128141:        TAY                       ;  | That into Y for index being used later.
CODE_128142:        CPY #$02                  ;  | If going upwards, go to an extra subroutine.
CODE_128144:        BNE CODE_128149           ;  | (Don't branch.)
CODE_128146:        JSR CODE_128183           ;  | Flip direction every 8 frames.
CODE_128149:        LDA.w DATA_11CBF1,y         ;  | Get appropiate Y speed in for climbing.     
CODE_12814C:        STA $46                   ; /
CODE_12814E:        LDA $F6                   ; \ Now do the same horizontally...
CODE_128150:        AND #$03                  ;  | (left-right)
CODE_128152:        TAY                       ;  | Into Y index to get the value for the X speeds.
CODE_128153:        LDA.w DATA_119B4D,y         ;  | <- here
CODE_128156:        STA $3C                   ; /
CODE_128158:        LDA $28                   
CODE_12815A:        CLC                       
CODE_12815B:        ADC #$04                  
CODE_12815D:        AND #$0F                  
CODE_12815F:        CMP #$08                  
CODE_128161:        BCS CODE_12817E                   
CODE_128163:        LDY.w DATA_11CB08                 
CODE_128166:        LDA $46                   
CODE_128168:        BMI CODE_12816B           
CODE_12816A:        INY                       
CODE_12816B:        LDX #$00                  
CODE_12816D:        JSR CODE_128195           
CODE_128170:        BCS CODE_128178                   
CODE_128172:        LDA $46                   
CODE_128174:        BPL CODE_12817E           
CODE_128176:        STX $46                   
CODE_128178:        JSR CODE_1280D2           
CODE_12817B:        JMP CODE_128523           

CODE_12817E:        LDA #$00                  
CODE_128180:        STA $50                   
CODE_128182:        RTS
                       
CODE_128183:        LDA $10                   ; \ Run code every 8 frames.
CODE_128185:        AND #$07                  ;  |
CODE_128187:        BNE CODE_128194           ; /
CODE_128189:        LDA $9D                   ; \ Flip direction.
CODE_12818B:        EOR #$01                  ;  |
CODE_12818D:        STA $9D                   ; /
CODE_12818F:        LDA #$30                  ; \ Climbing sound effect.
CODE_128191:        STA $1DE0                 ; /
CODE_128194:        RTS                       ; Return.
                       
CODE_128195:        JSL CODE_13F900           ; Prepare Map16 tile being touched by player.
CODE_128199:        LDA $00                   ; \ Check if the tile that is being touched is a 'climbing tile'...
CODE_12819B:        LDY #$0B                  ;  | vines, ladders...
CODE_12819D:        CMP.w DATA_119B50,y         ;  |
CODE_1281A0:        BEQ CODE_1281A6           ;  | If so, return.
CODE_1281A2:        DEY                       ;  | Otherwise, loop.
CODE_1281A3:        BPL CODE_12819D           ;  | When through index, and no match has been found...
CODE_1281A5:        CLC                       ;  | Clear carry.
CODE_1281A6:        RTS                       ; / Return.
                       
CODE_1281A7:        LDA #$20                  
CODE_1281A9:        STA $64                   
CODE_1281AB:        INC $32                   ; Move down.
CODE_1281AD:        LDA $32                   ; \ Skip code if not completely inside the jar.
CODE_1281AF:        AND #$0F                  ;  |
CODE_1281B1:        BNE CODE_1281A6           ; /
CODE_1281B3:        PLA                       ; \ Pull return address.
CODE_1281B4:        PLA                       ; /
CODE_1281B5:        JSL CODE_13FA42           
CODE_1281B9:        LDA #$02                  ; \ Generate player on top of screen.
CODE_1281BB:        STA $0536                 ; /
CODE_1281BE:        LDA $04EF                 
CODE_1281C1:        BNE CODE_1281C9           
CODE_1281C3:        LDA #$04                  ; \ Act like a warp jar.
CODE_1281C5:        STA $04ED                 ; /
CODE_1281C8:        RTL                       ; Return.
                      
CODE_1281C9:        CMP #$01                  
CODE_1281CB:        BEQ CODE_1281D1           
CODE_1281CD:        STA $0627                 
CODE_1281D0:        RTL
                       
CODE_1281D1:        STA $0628                 
CODE_1281D4:        RTL
                       
CODE_1281D5:        LDA #$20                  
CODE_1281D7:        STA $64                   
CODE_1281D9:        DEC $32                   ; Move up.
CODE_1281DB:        LDA $32                   ; \ Generate sound effect on the first frame the player is inside the jar.
CODE_1281DD:        AND #$0F                  ;  |
CODE_1281DF:        CMP #$0F                  ;  |
CODE_1281E1:        BNE CODE_1281E8           ; /
CODE_1281E3:        LDA #$4E                  ; \ Going out of jar sound effect.
CODE_1281E5:        STA $1DE3                 ; /
CODE_1281E8:        LDA $32                   ; \ If still in jar...
CODE_1281EA:        AND #$0F                  ;  |
CODE_1281EC:        BNE CODE_1281F0           ;  | Return.
CODE_1281EE:        STA $50                   ; / Otherwise, go into normal walking mode.
CODE_1281F0:        RTS                       ; Return.
                       
CODE_1281F1:        LDA $46                   ; \ Y speed.
CODE_1281F3:        ASL A                     ;  | Result: 80-FF = 01.
CODE_1281F4:        ROL A                     ;  | Result: 00-7F = 00.
CODE_1281F5:        AND #$01                  ;  |
CODE_1281F7:        TAY                       ; / Into Y.
CODE_1281F8:        LDA $042A                 
CODE_1281FB:        CMP.w DATA_119B5C,y               
CODE_1281FE:        BNE CODE_128211           
CODE_128200:        LDA $042B                 
CODE_128203:        CMP.w DATA_119B5E,y               
CODE_128206:        BNE CODE_128211           
CODE_128208:        INC $0627                 
CODE_12820B:        LDA #$03                  
CODE_12820D:        STA $0536                 
CODE_128210:        RTS
                       
CODE_128211:        LDA $042A                 
CODE_128214:        BNE CODE_12821E           
CODE_128216:        LDA $042B                 
CODE_128219:        CMP.w DATA_119B60,y               
CODE_12821C:        BEQ CODE_128227           
CODE_12821E:        TYA                       
CODE_12821F:        BEQ CODE_128224           
CODE_128221:        JSR CODE_128183           
CODE_128224:        JMP CODE_128523           

CODE_128227:        LDA #$01                  
CODE_128229:        STA $50                   
CODE_12822B:        RTS
                       
CODE_12822C:        LDA $82                   ; \ Return into normal walking mode if $82 == #$00.
CODE_12822E:        BEQ CODE_12824A           ; /
CODE_128230:        JSR CODE_128523           
CODE_128233:        LDA $005A                 
CODE_128236:        BEQ CODE_12824C           
CODE_128238:        LDA #$20                  
CODE_12823A:        STA $64                   
CODE_12823C:        LDA #$04                  ; \ Enter Hawkmouth, X-speed.
CODE_12823E:        STA $3C                   ; /
CODE_128240:        LDA #$01                  ; \ Face right.
CODE_128242:        STA $9D                   ; /
CODE_128244:        JSR CODE_1280D2           
CODE_128247:        JMP CODE_1283D1           

CODE_12824A:        STA $50                   ; <-- $50 - #$00 = normal player state.
CODE_12824C:        RTS                       ; Return.
                       
CODE_12824D:        LDA $82                   
CODE_12824F:        BEQ CODE_128267           
CODE_128251:        INC $85                   
CODE_128253:        LDY #$04                  
CODE_128255:        CMP.w DATA_119B62,y               
CODE_128258:        BNE CODE_128263           
CODE_12825A:        LDA $06C2                 
CODE_12825D:        EOR #$01                  
CODE_12825F:        STA $06C2                 
CODE_128262:        RTS
                       
CODE_128263:        DEY                       
CODE_128264:        BPL CODE_128255           
CODE_128266:        RTS
                       
CODE_128267:        LDY $C7                   
CODE_128269:        CPY #$0A                  
CODE_12826B:        BNE CODE_12826F           
CODE_12826D:        LDA #$01                  
CODE_12826F:        STA $50                   
CODE_128271:        RTS
                       
CODE_128272:        JSR CODE_1283D1           
CODE_128275:        LDA $99                   
CODE_128277:        BNE CODE_1282D5           
CODE_128279:        LDA $9A                   
CODE_12827B:        BEQ CODE_128286           
CODE_12827D:        LDA $82                   
CODE_12827F:        BEQ CODE_128284           
CODE_128281:        JMP CODE_128304           

CODE_128284:        DEC $9A                   
CODE_128286:        LDA $FA                   
CODE_128288:        BPL CODE_12829B           
CODE_12828A:        INC $99                   
CODE_12828C:        LDA #$06                  
CODE_12828E:        STA $C7                   
CODE_128290:        JSR CODE_12830B           
CODE_128293:        LDA #$01                  
CODE_128295:        STA $1DE1                 
CODE_128298:        STZ $078C                 
CODE_12829B:        LDA $04B2                 
CODE_12829E:        BNE CODE_128304           
CODE_1282A0:        LDA $04E0                 
CODE_1282A3:        BNE CODE_1282D5           
CODE_1282A5:        LDA $F6                   
CODE_1282A7:        AND #$04                  
CODE_1282A9:        BEQ CODE_1282D5           
CODE_1282AB:        LDA $0778                 
CODE_1282AE:        BNE CODE_1282D5           
CODE_1282B0:        INC $9A                   
CODE_1282B2:        STZ $078C                 
CODE_1282B5:        LDA #$04                  
CODE_1282B7:        STA $C7                   
CODE_1282B9:        LDA $99                   
CODE_1282BB:        BNE CODE_1282D5           
CODE_1282BD:        LDA $04CB                 
CODE_1282C0:        CMP #$3C                  
CODE_1282C2:        BCS CODE_128304                   
CODE_1282C4:        INC $04CB                 
CODE_1282C7:        LDA $04CB                 
CODE_1282CA:        CMP #$3C                  
CODE_1282CC:        BNE CODE_128304           
CODE_1282CE:        LDA #$2D                  
CODE_1282D0:        STA $1DE3                 
CODE_1282D3:        BNE CODE_128304           
CODE_1282D5:        LDA $04CB                 
CODE_1282D8:        CMP #$3C                  
CODE_1282DA:        BCS CODE_1282E1                   
CODE_1282DC:        LDA #$00                  
CODE_1282DE:        STA $04CB                 
CODE_1282E1:        LDA $F6                   
CODE_1282E3:        AND #$03                  
CODE_1282E5:        BEQ CODE_128304           
CODE_1282E7:        AND #$01                  
CODE_1282E9:        STA $9D                   
CODE_1282EB:        TAY                       
CODE_1282EC:        LDA $0624                 
CODE_1282EF:        LSR A                     
CODE_1282F0:        LSR A                     
CODE_1282F1:        AND $10                   
CODE_1282F3:        BNE CODE_1282FD           
CODE_1282F5:        LDA $3C                   
CODE_1282F7:        CLC                       
CODE_1282F8:        ADC.w DATA_119B67,y               
CODE_1282FB:        STA $3C                   
CODE_1282FD:        LDA #$00                  
CODE_1282FF:        STA $04CB                 
CODE_128302:        BEQ CODE_128307           
CODE_128304:        JSR CODE_128398           
CODE_128307:        JSR CODE_128423           
CODE_12830A:        RTS
                       
CODE_12830B:        LDA $04E0                 
CODE_12830E:        CMP #$02                  
CODE_128310:        BCC CODE_128319           
CODE_128312:        LDA $0554                 
CODE_128315:        STA $46                   
CODE_128317:        BNE CODE_128345           
CODE_128319:        LDA $3C                   
CODE_12831B:        BPL CODE_128322           
CODE_12831D:        EOR #$FF                  
CODE_12831F:        CLC                       
CODE_128320:        ADC #$01                  
CODE_128322:        CMP #$08                  
CODE_128324:        LDA #$00                  
CODE_128326:        STA $0411                 
CODE_128329:        ROL A                     
CODE_12832A:        LDY $04CB                 
CODE_12832D:        CPY #$3C                  
CODE_12832F:        BCC CODE_128335           
CODE_128331:        LDA #$00                  
CODE_128333:        STA $F6                   
CODE_128335:        ROL A                     
CODE_128336:        ASL A                     
CODE_128337:        ORA $9C                   
CODE_128339:        TAY                       
CODE_12833A:        LDA $054E,y               
CODE_12833D:        STA $46                   
CODE_12833F:        LDA $0555                 
CODE_128342:        STA $04CA                 
CODE_128345:        LDA #$00                  
CODE_128347:        STA $04CB                 
CODE_12834A:        RTS
                       
CODE_12834B:        LDA $04E0                 
CODE_12834E:        CMP #$02                  
CODE_128350:        BCC CODE_128357           
CODE_128352:        LDA $0558                 
CODE_128355:        BNE CODE_128385           
CODE_128357:        LDA $0556                 
CODE_12835A:        LDY $F6                   
CODE_12835C:        BPL CODE_12837D           
CODE_12835E:        LDA $0557                 
CODE_128361:        LDY $46                   
CODE_128363:        CPY #$FC                  
CODE_128365:        BMI CODE_12837D           
CODE_128367:        LDY $04CA                 
CODE_12836A:        BEQ CODE_12837D           
CODE_12836C:        DEC $04CA                 
CODE_12836F:        LDA $10                   
CODE_128371:        LSR A                     
CODE_128372:        LSR A                     
CODE_128373:        LSR A                     
CODE_128374:        AND #$03                  
CODE_128376:        TAY                       
CODE_128377:        LDA.w DATA_119B69,y               
CODE_12837A:        STA $46                   
CODE_12837C:        RTS
                       
CODE_12837D:        LDY $46                   
CODE_12837F:        BMI CODE_128385           
CODE_128381:        CPY #$39                  
CODE_128383:        BCS CODE_12838A                   
CODE_128385:        CLC                       
CODE_128386:        ADC $46                   
CODE_128388:        STA $46                   
CODE_12838A:        LDA $04CA                 
CODE_12838D:        CMP $0555                 
CODE_128390:        BEQ CODE_128397           
CODE_128392:        LDA #$00                  
CODE_128394:        STA $04CA                 
CODE_128397:        RTS
                       
CODE_128398:        LDA $99                   
CODE_12839A:        BNE CODE_1283D0           
CODE_12839C:        LDA $10                   
CODE_12839E:        AND $0624                 
CODE_1283A1:        BNE CODE_1283B9           
CODE_1283A3:        LDA $3C                   
CODE_1283A5:        AND #$80                  
CODE_1283A7:        ASL A                     
CODE_1283A8:        ROL A                     
CODE_1283A9:        TAY                       
CODE_1283AA:        LDA $3C                   
CODE_1283AC:        ADC.w DATA_119B6D,y               
CODE_1283AF:        TAX                       
CODE_1283B0:        EOR.w DATA_119B67,y               
CODE_1283B3:        BMI CODE_1283B7           
CODE_1283B5:        LDX #$00                  
CODE_1283B7:        STX $3C                   
CODE_1283B9:        LDA $9A                   
CODE_1283BB:        BNE CODE_1283D0           
CODE_1283BD:        LDA $C7                   
CODE_1283BF:        CMP #$09                  
CODE_1283C1:        BEQ CODE_1283D0           
CODE_1283C3:        LDA #$02                  
CODE_1283C5:        STA $C7                   
CODE_1283C7:        LDA #$00                  
CODE_1283C9:        STA $84                   
CODE_1283CB:        STA $9B                   
CODE_1283CD:        STA $078B                 
CODE_1283D0:        RTS
                       
CODE_1283D1:        LDA $9A                   
CODE_1283D3:        BNE CODE_128422           
CODE_1283D5:        LDA $99                   
CODE_1283D7:        BEQ CODE_1283E7           
CODE_1283D9:        LDA $8F                   
CODE_1283DB:        CMP #$03                  
CODE_1283DD:        BNE CODE_128422           
CODE_1283DF:        LDA $84                   
CODE_1283E1:        BNE CODE_12841B           
CODE_1283E3:        LDA #$02                  
CODE_1283E5:        BNE CODE_128402           

CODE_1283E7:        LDA $84                   
CODE_1283E9:        BNE CODE_12841B           
CODE_1283EB:        LDA #$05                  
CODE_1283ED:        LDY $0624                 
CODE_1283F0:        BNE CODE_128402           
CODE_1283F2:        LDA $3C                   
CODE_1283F4:        BPL CODE_1283FB           
CODE_1283F6:        EOR #$FF                  
CODE_1283F8:        CLC                       
CODE_1283F9:        ADC #$01                  
CODE_1283FB:        LSR A                     
CODE_1283FC:        LSR A                     
CODE_1283FD:        LSR A                     
CODE_1283FE:        TAY                       
CODE_1283FF:        LDA.w DATA_119B6F,y               
CODE_128402:        STA $84                   
CODE_128404:        LDA #$02                  
CODE_128406:        STA $078C                 
CODE_128409:        DEC $078B                 
CODE_12840C:        BPL CODE_128413           
CODE_12840E:        LDA #$02                  
CODE_128410:        STA $078B                 
CODE_128413:        DEC $9B                   
CODE_128415:        BPL CODE_12841B           
CODE_128417:        LDA #$01                  
CODE_128419:        STA $9B                   
CODE_12841B:        LDY $9B                   
CODE_12841D:        LDA.w DATA_119B79,y               
CODE_128420:        STA $C7                   
CODE_128422:        RTS
                       
CODE_128423:        LDY #$02                  
CODE_128425:        LDA $04E0                 
CODE_128428:        CMP #$02                  
CODE_12842A:        BCS CODE_128443                   
CODE_12842C:        DEY                       
CODE_12842D:        LDA $9C                   
CODE_12842F:        BEQ CODE_128442           
CODE_128431:        LDX $042D                 
CODE_128434:        LDA $90,x                 
CODE_128436:        CMP #$32                  
CODE_128438:        BCC CODE_128443           
CODE_12843A:        CMP #$39                  
CODE_12843C:        BCC CODE_128442           
CODE_12843E:        CMP #$3B                  
CODE_128440:        BCC CODE_128443           
CODE_128442:        DEY                       
CODE_128443:        LDA $0559,y               
CODE_128446:        BIT $F6                   
CODE_128448:        BVC CODE_12844F                   
CODE_12844A:        LSR A                     
CODE_12844B:        CLC                       
CODE_12844C:        ADC $0559,y               
CODE_12844F:        CMP $3C                   
CODE_128451:        BPL CODE_128455           
CODE_128453:        STA $3C                   
CODE_128455:        LDA $055C,y               
CODE_128458:        BIT $F6                   
CODE_12845A:        BVC CODE_128462                   
CODE_12845C:        SEC                       
CODE_12845D:        ROR A                     
CODE_12845E:        CLC                       
CODE_12845F:        ADC $055C,y               
CODE_128462:        CMP $3C                   
CODE_128464:        BMI CODE_128468           
CODE_128466:        STA $3C                   
CODE_128468:        BIT $FA                   
CODE_12846A:        BVC CODE_1284BD                   
CODE_12846C:        LDA $9C                   
CODE_12846E:        BEQ CODE_1284BD           
CODE_128470:        LDY #$00                  
CODE_128472:        LDX $042D                 
CODE_128475:        LDA $51,x                 
CODE_128477:        CMP #$06                  
CODE_128479:        BEQ CODE_1284BD           
CODE_12847B:        LDA $90,x                 
CODE_12847D:        CMP #$39                  
CODE_12847F:        BCC CODE_128485           
CODE_128481:        CMP #$3A                  
CODE_128483:        BCC CODE_12848B           
CODE_128485:        CMP #$37                  
CODE_128487:        BCC CODE_1284BE           
CODE_128489:        LDY #$02                  
CODE_12848B:        STY $07                   
CODE_12848D:        LDA $9D                   
CODE_12848F:        ASL A                     
CODE_128490:        ORA $9A                   
CODE_128492:        TAX                       
CODE_128493:        LDY.w DATA_11CB03,x               
CODE_128496:        LDX $042D                 
CODE_128499:        LDA #$36                  
CODE_12849B:        CMP $90,x                 
CODE_12849D:        BCS CODE_1284AC                   
CODE_12849F:        LDA $3C                   
CODE_1284A1:        BPL CODE_1284A8           
CODE_1284A3:        EOR #$FF                  
CODE_1284A5:        CLC                       
CODE_1284A6:        ADC #$01                  
CODE_1284A8:        CMP #$08                  
CODE_1284AA:        BCC CODE_1284AD           
CODE_1284AC:        INY                       
CODE_1284AD:        LDX #$00                  
CODE_1284AF:        JSL CODE_13F900           
CODE_1284B3:        LDA $00                   
CODE_1284B5:        LDY $07                   
CODE_1284B7:        JSL CODE_13F99C           
CODE_1284BB:        BCC CODE_1284BE           
CODE_1284BD:        RTS
                       
CODE_1284BE:        LDA #$09                  
CODE_1284C0:        STA $C7                   
CODE_1284C2:        LDA #$02                  
CODE_1284C4:        STA $9B                   
CODE_1284C6:        LDA #$0A                  
CODE_1284C8:        STA $84                   
CODE_1284CA:        DEC $9C                   
CODE_1284CC:        LDA #$31                  
CODE_1284CE:        STA $1DE0                 
CODE_1284D1:        STZ $04AF                 
CODE_1284D4:        STZ $9A                   
CODE_1284D6:        STZ $FA                   
CODE_1284D8:        STZ $01                   
CODE_1284DA:        LDX $042D                 
CODE_1284DD:        LDA #$36                  
CODE_1284DF:        CMP $90,x                 
CODE_1284E1:        ROL $01                   
CODE_1284E3:        LDA $3C                   
CODE_1284E5:        BPL CODE_1284EC           
CODE_1284E7:        EOR #$FF                  
CODE_1284E9:        CLC                       
CODE_1284EA:        ADC #$01                  
CODE_1284EC:        CMP #$08                  
CODE_1284EE:        ROL $01                   
CODE_1284F0:        BNE CODE_128506           
CODE_1284F2:        LDY $9D                   
CODE_1284F4:        LDA.w DATA_119B88,y               
CODE_1284F7:        CLC                       
CODE_1284F8:        ADC $29,x                 
CODE_1284FA:        STA $29,x                 
CODE_1284FC:        LDA $EB                   
CODE_1284FE:        BEQ CODE_128506           
CODE_128500:        DEY                       
CODE_128501:        TYA                       
CODE_128502:        ADC $15,x                 
CODE_128504:        STA $15,x                 
CODE_128506:        LDY $01                   
CODE_128508:        LDA.w DATA_119B84,y               
CODE_12850B:        STA $47,x                 
CODE_12850D:        LDA $01                   
CODE_12850F:        ASL A                     
CODE_128510:        ORA $9D                   
CODE_128512:        TAY                       
CODE_128513:        LDA.w DATA_119B7C,y               
CODE_128516:        STA $3D,x                 
CODE_128518:        LDA #$01                  
CODE_12851A:        STA $042F,x               
CODE_12851D:        LSR A                     
CODE_12851E:        STA $A8,x                 
CODE_128520:        STZ $5B,x                 
CODE_128522:        RTS
                       
CODE_128523:        LDX #$0A                  
CODE_128525:        LDA $3C,x                 
CODE_128527:        CLC                       
CODE_128528:        ADC $04CC,x               
CODE_12852B:        PHP                       
CODE_12852C:        BPL CODE_128533           
CODE_12852E:        EOR #$FF                  
CODE_128530:        CLC                       
CODE_128531:        ADC #$01                  
CODE_128533:        PHA                       
CODE_128534:        LSR A                     
CODE_128535:        LSR A                     
CODE_128536:        LSR A                     
CODE_128537:        LSR A                     
CODE_128538:        TAY                       
CODE_128539:        PLA                       
CODE_12853A:        ASL A                     
CODE_12853B:        ASL A                     
CODE_12853C:        ASL A                     
CODE_12853D:        ASL A                     
CODE_12853E:        CLC                       
CODE_12853F:        ADC $0407,x               
CODE_128542:        STA $0407,x               
CODE_128545:        TYA                       
CODE_128546:        ADC #$00                  
CODE_128548:        PLP                       
CODE_128549:        BPL CODE_128550           
CODE_12854B:        EOR #$FF                  
CODE_12854D:        CLC                       
CODE_12854E:        ADC #$01                  
CODE_128550:        LDY #$00                  
CODE_128552:        CMP #$00                  
CODE_128554:        BPL CODE_128557           
CODE_128556:        DEY                       
CODE_128557:        CLC                       
CODE_128558:        ADC $28,x                 
CODE_12855A:        STA $28,x                 
CODE_12855C:        TYA                       
CODE_12855D:        ADC $14,x                 
CODE_12855F:        STA $14,x                 
CODE_128561:        STZ $04CC,x               
CODE_128564:        RTS
                       
CODE_128565:        LDA #$00                  
CODE_128567:        STA $5A                   
CODE_128569:        STA $0624                 
CODE_12856C:        STA $07                   
CODE_12856E:        STA $0A                   
CODE_128570:        STA $0E                   
CODE_128572:        STA $0C                   
CODE_128574:        JSR CODE_12866A           
CODE_128577:        LDA $9A                   
CODE_128579:        ASL A                     
CODE_12857A:        ORA $9C                   
CODE_12857C:        TAX                       
CODE_12857D:        LDA.w DATA_11CAFD,x               
CODE_128580:        STA $08                   
CODE_128582:        LDA $46                   
CODE_128584:        CLC                       
CODE_128585:        ADC $04D6                 
CODE_128588:        BPL CODE_128596           
CODE_12858A:        JSR CODE_12861D           
CODE_12858D:        JSR CODE_128662           
CODE_128590:        LDA $5A                   
CODE_128592:        BNE CODE_1285E5           
CODE_128594:        BEQ CODE_128600           
CODE_128596:        JSR CODE_128662           
CODE_128599:        JSR CODE_12861D           
CODE_12859C:        LDA $5A                   
CODE_12859E:        BNE CODE_1285BA           
CODE_1285A0:        LDA #$00                  
CODE_1285A2:        LDX #$01                  
CODE_1285A4:        LDY $0635                 
CODE_1285A7:        CPY #$01                  
CODE_1285A9:        BEQ CODE_1285AF           
CODE_1285AB:        CPY #$05                  
CODE_1285AD:        BNE CODE_1285B2           
CODE_1285AF:        JSR CODE_129A0E           
CODE_1285B2:        STA $04E0                 
CODE_1285B5:        STX $99                   
CODE_1285B7:        JMP CODE_128600           

CODE_1285BA:        LDA #$00                  
CODE_1285BC:        STA $04E0                 
CODE_1285BF:        LDA $32                   
CODE_1285C1:        AND #$0C                  
CODE_1285C3:        BNE CODE_128600           
CODE_1285C5:        STA $99                   
CODE_1285C7:        LDA $32                   
CODE_1285C9:        AND #$F0                  
CODE_1285CB:        STA $32                   
CODE_1285CD:        LSR $0A                   
CODE_1285CF:        BCC CODE_1285D9           
CODE_1285D1:        LDX $0A                   
CODE_1285D3:        LDA.w DATA_119B9A,x               
CODE_1285D6:        STA $04CC                 
CODE_1285D9:        LSR $0C                   
CODE_1285DB:        BCC CODE_1285E2           
CODE_1285DD:        LDA #$0F                  
CODE_1285DF:        STA $0624                 
CODE_1285E2:        JSR CODE_12877B           
CODE_1285E5:        LDA #$00                  
CODE_1285E7:        STA $46                   
CODE_1285E9:        STA $04D6                 
CODE_1285EC:        LDA $04E1                 
CODE_1285EF:        BNE CODE_128600           
CODE_1285F1:        LSR $0E                   
CODE_1285F3:        BCC CODE_128600           
CODE_1285F5:        LDA $0428                 
CODE_1285F8:        STA $0429                 
CODE_1285FB:        ROR $12                   
CODE_1285FD:        JSR CODE_129A52           
CODE_128600:        LDY #$02                  
CODE_128602:        LDA $3C                   
CODE_128604:        CLC                       
CODE_128605:        ADC $04CC                 
CODE_128608:        BMI CODE_12860E           
CODE_12860A:        DEY                       
CODE_12860B:        JSR CODE_128662           
CODE_12860E:        STY $6E                   
CODE_128610:        JSR CODE_12861D           
CODE_128613:        LDA $5A                   
CODE_128615:        AND #$03                  
CODE_128617:        BEQ CODE_12861C           
CODE_128619:        JSR CODE_128BD8           
CODE_12861C:        RTS
                       
CODE_12861D:        JSR CODE_128620           
CODE_128620:        LDX #$00                  
CODE_128622:        LDY $08                   
CODE_128624:        JSL CODE_13F900           
CODE_128628:        LDX $07                   
CODE_12862A:        LDY.w DATA_119B8A,x               
CODE_12862D:        LDA $00                   
CODE_12862F:        JSL CODE_13F99C           
CODE_128633:        BCC CODE_12865F           
CODE_128635:        CMP #$2E                  
CODE_128637:        BNE CODE_128640           
CODE_128639:        LDA.w DATA_119B8A,x               
CODE_12863C:        STA $0E                   
CODE_12863E:        BNE CODE_128658           

CODE_128640:        CMP #$26                  
CODE_128642:        BNE CODE_12864B           
CODE_128644:        LDA.w DATA_119B8A,x               
CODE_128647:        STA $0C                   
CODE_128649:        BNE CODE_128658           

CODE_12864B:        SEC                       
CODE_12864C:        SBC #$60                  
CODE_12864E:        CMP #$02                  
CODE_128650:        BCS CODE_128658                   
CODE_128652:        ASL A                     
CODE_128653:        ORA.w DATA_119B8A,x               
CODE_128656:        STA $0A                   
CODE_128658:        LDA.w DATA_119B92,x               
CODE_12865B:        ORA $5A                   
CODE_12865D:        STA $5A                   
CODE_12865F:        JMP CODE_128665           

CODE_128662:        JSR CODE_128665           
CODE_128665:        INC $07                   
CODE_128667:        INC $08                   
CODE_128669:        RTS
                       
CODE_12866A:        LDY.w DATA_11CB07                 
CODE_12866D:        LDA $10                   
CODE_12866F:        LSR A                     
CODE_128670:        BCS CODE_128673          
CODE_128672:        INY                       
CODE_128673:        LDX #$00                  ; \ Prepare tile being touched by player.
CODE_128675:        JSR CODE_128195           ;  | Check if touching any of the climbing tiles.
CODE_128678:        BCS CODE_1286A6           ; / If so, branch.
CODE_12867A:        LDA $00                   ; \ If not cherry tile...
CODE_12867C:        CMP #$4E                  ;  |
CODE_12867E:        BNE CODE_1286CE           ; / branch.
CODE_128680:        INC $062A                 ; Increment cherry counter.           
CODE_128683:        LDA $062A                 ; \ If collected 5 times exactly...
CODE_128686:        SBC #$05                  ;  |
CODE_128688:        BNE CODE_128690           ;  | don't branch...
CODE_12868A:        STA $062A                 ; / And reset cherry counter.
CODE_12868D:        JSR CODE_129945           ; Generate star man.
CODE_128690:        LDA #$3B                  ; \ Collect cherry sound.
CODE_128692:        STA $1DE3                 ; /
CODE_128695:        LDA $06                   
CODE_128697:        CLC                       
CODE_128698:        ADC #$08                  
CODE_12869A:        AND #$F0                  
CODE_12869C:        STA $0212                 
CODE_12869F:        LDA #$40                  ; \ Clear tile.
CODE_1286A1:        JSL CODE_128BF4           ; /
CODE_1286A5:        RTS
                       
CODE_1286A6:        LDA $F6                   ; \ If not pressing Up/Down...
CODE_1286A8:        AND #$0C                  ;  |
CODE_1286AA:        BEQ CODE_1286CE           ; / Branch.
CODE_1286AC:        LDY $9C                   ; \ If player holding item...
CODE_1286AE:        BNE CODE_1286CE           ; / branch.
CODE_1286B0:        LDA $28                   ; \ If not lining up completely with the vine...
CODE_1286B2:        CLC                       ;  | (horizontally)
CODE_1286B3:        ADC #$04                  ;  |
CODE_1286B5:        AND #$0F                  ;  |
CODE_1286B7:        CMP #$08                  ;  |
CODE_1286B9:        BCS CODE_1286CE           ; / return.    
CODE_1286BB:        LDA #$01                  ; \ Player = climbing.
CODE_1286BD:        STA $50                   ; /
CODE_1286BF:        STZ $078C                 
CODE_1286C2:        STY $99                   
CODE_1286C4:        STY $9A                   
CODE_1286C6:        LDA #$0A                  ; \ Climbing pose.
CODE_1286C8:        STA $C7                   ; /
CODE_1286CA:        PLA                       
CODE_1286CB:        PLA                       
CODE_1286CC:        PLA                       
CODE_1286CD:        PLA                       
CODE_1286CE:        RTS
                       
CODE_1286CF:        LDX #$06                  ; \ Check if there's a free sprite slot.
CODE_1286D1:        LDA $51,x                 ;  | If so ($51,x = #$00), branch.
CODE_1286D3:        BEQ CODE_1286DB           ;  | (Break out of loop.)
CODE_1286D5:        INX                       ;  | Otherwise loop until...
CODE_1286D6:        CPX #$09                  ;  | maximum is reached.
CODE_1286D8:        BCC CODE_1286D1           ;  | If maximum, not reached, loop, otherwise...
CODE_1286DA:        RTS                       ; / ...end it.
                       
CODE_1286DB:        LDA $00                   
CODE_1286DD:        STA $79,x                 
CODE_1286DF:        LDA $03                   
CODE_1286E1:        STA $15,x                 
CODE_1286E3:        LDA $04                   
CODE_1286E5:        STA $1F,x                 
CODE_1286E7:        LDA $05                   
CODE_1286E9:        STA $29,x                 
CODE_1286EB:        LDA $06                   
CODE_1286ED:        STA $33,x                 
CODE_1286EF:        LDA #$00                  
CODE_1286F1:        STA $042F,x               
CODE_1286F4:        STA $9F,x                 
CODE_1286F6:        STA $B1,x                 
CODE_1286F8:        STA $0D00,x               
CODE_1286FB:        JSR CODE_1299D5           
CODE_1286FE:        LDA #$01                  ; Sprite that is spawned will run main routine.
CODE_128700:        LDY $09                   ; \ If tile is not a sand tile...
CODE_128702:        CPY #$0E                  ;  |
CODE_128704:        BNE CODE_12870C           ; / branch.
CODE_128706:        LDA #$20                  ; \ How long it takes for the sand digging animation to be done (the actual sprite tile)
CODE_128708:        STA $86,x                 ; /
CODE_12870A:        LDA #$06                  ; \ Actually dig up the darn sand. Sprite number from table will be #$39 (mushroom block)
CODE_12870C:        STA $51,x                 ; /
CODE_12870E:        LDA.w DATA_119B9F,y         ; \ Get sprite to spawn from table.
CODE_128711:        STA $90,x                 ; /
CODE_128713:        CMP #$36                  
CODE_128715:        BNE CODE_12871A           
CODE_128717:        STZ $079E                 
CODE_12871A:        LDY #$FF                  
CODE_12871C:        CMP #$37                  
CODE_12871E:        BEQ CODE_128726           
CODE_128720:        CMP #$09                  
CODE_128722:        BNE CODE_12872B           
CODE_128724:        LDY #$50                  
CODE_128726:        TYA                       
CODE_128727:        STA $86,x                 
CODE_128729:        BNE CODE_128750           
CODE_12872B:        CMP #$40                  
CODE_12872D:        BNE CODE_12873B           
CODE_12872F:        LDA $0620                 ; \ If 1-Up has already been collected...
CODE_128732:        BEQ CODE_128750           ;  |
CODE_128734:        LDA #$32                  ;  | Pick up small vegetable instead.
CODE_128736:        STA $90,x                 ; /
CODE_128738:        JMP CODE_128750           

CODE_12873B:        CMP #$33                  
CODE_12873D:        BNE CODE_128750           
CODE_12873F:        LDY $062C                 
CODE_128742:        INY                       
CODE_128743:        CPY #$05                  
CODE_128745:        BCC CODE_12874D           
CODE_128747:        LDA #$46                  
CODE_128749:        STA $90,x                 
CODE_12874B:        LDY #$00                  
CODE_12874D:        STY $062C                 
CODE_128750:        JSR CODE_129978           
CODE_128753:        LDA #$04                  
CODE_128755:        STA $5B,x                 
CODE_128757:        LDA #$40                  ; \ Tile to spawn when object is picked up = #$40.
CODE_128759:        JSL CODE_13FA0D           ; / (Empty tile.)
CODE_12875D:        LDA #$07                  
CODE_12875F:        STA $A8,x                 
CODE_128761:        STX $042D                 
CODE_128764:        LDA #$02                  
CODE_128766:        STA $50                   
CODE_128768:        LDA #$06                  
CODE_12876A:        STA $82                   
CODE_12876C:        LDA #$08                  
CODE_12876E:        STA $C7                   
CODE_128770:        INC $9C                   
CODE_128772:        STZ $078C                 
CODE_128775:        LDA #$2B                  
CODE_128777:        STA $1DE0                 
CODE_12877A:        RTS
                       
CODE_12877B:        LDY $9C                   ; \ If holding item...
CODE_12877D:        BNE CODE_1287F5           ; / branch.
CODE_12877F:        LDA $9A                   
CODE_128781:        BEQ CODE_1287CE           
CODE_128783:        LDA $00                   ; Get Map16 tile index.
CODE_128785:        LDX $0628                 ; \ If not in potion room...       
CODE_128788:        CPX #$02                  ;  |
CODE_12878A:        BNE CODE_128792           ; / branch.
CODE_12878C:        CMP #$6F                  ; \ If on warp jar, run 'entering jar' code.
CODE_12878E:        BEQ CODE_12879C           ; /
CODE_128790:        BNE CODE_1287F5           ; Otherwise, branch.   
CODE_128792:        INY                       ; \ Y = #$01. (So you're not warping to another world, see $04EF.)
CODE_128793:        CMP #$6E                  ;  | If tile 6E, Y stays #$01...
CODE_128795:        BEQ CODE_12879C           ;  |
CODE_128797:        CMP #$6A                  ;  | If tile 6A, Y becomes #$02   
CODE_128799:        BNE CODE_1287F5           ;  | If neither, just return.
CODE_12879B:        INY                       ; / Y = #$02.
CODE_12879C:        LDA $28                   ; \ If not...
CODE_12879E:        CLC                       ;  | lining up exactly...
CODE_12879F:        ADC #$04                  ;  | with the middle of the jar...
CODE_1287A1:        AND #$0F                  ;  |
CODE_1287A3:        CMP #$08                  ;  |   
CODE_1287A5:        BCS CODE_1287F5           ; / Return.           
CODE_1287A7:        LDA #$4D                  ; \ Sound effect = going down jar.
CODE_1287A9:        STA $1DE3                 ; /
CODE_1287AC:        LDA #$00                  ; \ X speed = #$00    
CODE_1287AE:        STA $3C                   ; /
CODE_1287B0:        LDA #$04                  ; \ Animation = #$04 (going down jar)    
CODE_1287B2:        STA $50                   ; /
CODE_1287B4:        STY $04EF                 ; Store result from Y into $04EF.    
CODE_1287B7:        JSL CODE_1287BC           
CODE_1287BB:        RTS
                       
CODE_1287BC:        LDA $28                   
CODE_1287BE:        CLC                       
CODE_1287BF:        ADC #$08                  
CODE_1287C1:        AND #$F0                  
CODE_1287C3:        STA $28                   
CODE_1287C5:        BCC CODE_1287CD           
CODE_1287C7:        LDA $EB                   
CODE_1287C9:        BEQ CODE_1287CD           
CODE_1287CB:        INC $14                   
CODE_1287CD:        RTL
                       
CODE_1287CE:        BIT $FA                   
CODE_1287D0:        BVC CODE_1287F5                   
CODE_1287D2:        LDA $28                   
CODE_1287D4:        CLC                       
CODE_1287D5:        ADC #$06                  
CODE_1287D7:        AND #$0F                  
CODE_1287D9:        CMP #$0C                  
CODE_1287DB:        BCS CODE_1287F5                   
CODE_1287DD:        LDA $00                   
CODE_1287DF:        CMP #$9D                  
CODE_1287E1:        BNE CODE_1287E7           
CODE_1287E3:        LDA #$0E                  
CODE_1287E5:        BNE CODE_1287F0           
CODE_1287E7:        CMP #$68                  
CODE_1287E9:        BCS CODE_1287F5                   
CODE_1287EB:        SEC                       
CODE_1287EC:        SBC #$64                  
CODE_1287EE:        BCC CODE_1287F5           
CODE_1287F0:        STA $09                   
CODE_1287F2:        JMP CODE_1286CF   
        
CODE_1287F5:        LDA $9A                   
CODE_1287F7:        BNE CODE_128874           
CODE_1287F9:        LDA $06                   
CODE_1287FB:        SEC                       
CODE_1287FC:        SBC #$10                  
CODE_1287FE:        STA $06                   
CODE_128800:        STA $E6                   
CODE_128802:        LDA $04                   
CODE_128804:        SBC #$00                  
CODE_128806:        STA $04                   
CODE_128808:        STA $01                   
CODE_12880A:        LDA $03                   
CODE_12880C:        STA $02                   
CODE_12880E:        JSR CODE_128B6D           
CODE_128811:        BCS CODE_128874                   
CODE_128813:        LDX $03                   
CODE_128815:        PHX                       
CODE_128816:        JSR CODE_1299DB           
CODE_128819:        REP #$20                  
CODE_12881B:        LDA $01                   
CODE_12881D:        CLC                       
CODE_12881E:        ADC #$7000                
CODE_128821:        STA $C4                   
CODE_128823:        SEP #$20                  
CODE_128825:        LDA $03                   
CODE_128827:        STA $C6                   
CODE_128829:        LDY $E7                   
CODE_12882B:        LDA [$C4],y               
CODE_12882D:        BEQ CODE_128840           
CODE_12882F:        LDA [$01],y               
CODE_128831:        CMP #$2B                  
CODE_128833:        BEQ CODE_128840           
CODE_128835:        CMP #$2A                  
CODE_128837:        BEQ CODE_128840           
CODE_128839:        TAX                       
CODE_12883A:        LDA.l DATA_14CCBD,x             
CODE_12883E:        BRA CODE_128842           

CODE_128840:        LDA [$01],y               
CODE_128842:        PLX                       
CODE_128843:        STX $03                   
CODE_128845:        STA $00                   
CODE_128847:        LDX $9C                   
CODE_128849:        BEQ CODE_128854           
CODE_12884B:        LDX $042D                 
CODE_12884E:        LDY $90,x                 
CODE_128850:        CPY #$3D                  
CODE_128852:        BNE CODE_128874           
CODE_128854:        LDX $0628                 
CODE_128857:        CPX #$02                  
CODE_128859:        BEQ CODE_128865           
CODE_12885B:        LDY #$07                  
CODE_12885D:        CMP.w DATA_119BAE,y               
CODE_128860:        BEQ CODE_128896           
CODE_128862:        DEY                       
CODE_128863:        BPL CODE_12885D           
CODE_128865:        BIT $FA                   
CODE_128867:        BVC CODE_128874                   
CODE_128869:        STA $00                   
CODE_12886B:        CMP #$4D                  
CODE_12886D:        BCS CODE_128874                   
CODE_12886F:        SEC                       
CODE_128870:        SBC #$43                  
CODE_128872:        BCS CODE_128875                   
CODE_128874:        RTS
                       
CODE_128875:        LDX $0628                 
CODE_128878:        CPX #$02                  
CODE_12887A:        BNE CODE_128889           
CODE_12887C:        LDA $0621                 
CODE_12887F:        CMP #$02                  
CODE_128881:        BCS CODE_128888                   
CODE_128883:        INC $0622                 
CODE_128886:        LDX #$00                  
CODE_128888:        TXA                       
CODE_128889:        CLC                       
CODE_12888A:        ADC #$04                  
CODE_12888C:        STA $09                   
CODE_12888E:        LDA $04AE                 
CODE_128891:        BEQ CODE_128896           
CODE_128893:        JMP CODE_1286CF           

CODE_128896:        LDA $0778                 
CODE_128899:        INC A                     
CODE_12889A:        BEQ CODE_128900           
CODE_12889C:        LDA $FA                   
CODE_12889E:        AND #$08                  
CODE_1288A0:        BEQ CODE_128874           
CODE_1288A2:        JSL CODE_15D1C5           
CODE_1288A6:        BCS CODE_1288EE        
CODE_1288A8:        LDA $00                   
CODE_1288AA:        CMP.w DATA_119BAF         
CODE_1288AD:        BNE CODE_1288BC           
CODE_1288AF:        LDX $9C                   
CODE_1288B1:        BEQ CODE_128874           
CODE_1288B3:        LDX $042D                 
CODE_1288B6:        LDA $90,x                 
CODE_1288B8:        CMP #$3D                  
CODE_1288BA:        BNE CODE_128874           
CODE_1288BC:        LDA $28                   
CODE_1288BE:        CLC                       
CODE_1288BF:        ADC #$05                  
CODE_1288C1:        AND #$0F                  
CODE_1288C3:        CMP #$0A                  
CODE_1288C5:        BCS CODE_128874                   
CODE_1288C7:        LDA $0500                 
CODE_1288CA:        STA $079D                 
CODE_1288CD:        LDA #$80                  
CODE_1288CF:        STA $0500                 
CODE_1288D2:        STA $079C                 
CODE_1288D5:        LDA $28                   
CODE_1288D7:        AND #$08                  
CODE_1288D9:        BEQ CODE_1288E8           
CODE_1288DB:        LDA $28                   
CODE_1288DD:        CLC                       
CODE_1288DE:        ADC #$08                  
CODE_1288E0:        STA $28                   
CODE_1288E2:        LDA $14                   
CODE_1288E4:        ADC #$00                  
CODE_1288E6:        STA $14                   
CODE_1288E8:        LDA $28                   
CODE_1288EA:        AND #$F0                  
CODE_1288EC:        STA $28                   
CODE_1288EE:        LDA #$01                  
CODE_1288F0:        STA $04B3                 
CODE_1288F3:        STA $85                   
CODE_1288F5:        STZ $3C                   
CODE_1288F7:        STY $0778                 
CODE_1288FA:        STZ $0779                 
CODE_1288FD:        STZ $04BE                 
CODE_128900:        CPY #$04                  
CODE_128902:        BNE CODE_128909           
CODE_128904:        DEY                       
CODE_128905:        STY $04ED                 
CODE_128908:        RTS
                       
CODE_128909:        LDA $0778                 
CODE_12890C:        BMI CODE_128918           
CODE_12890E:        CMP #$05                  
CODE_128910:        BCC CODE_128918           
CODE_128912:        LDA #$0F                  
CODE_128914:        STA $1DE3                 
CODE_128917:        RTS
                       
CODE_128918:        LDA #$01                  
CODE_12891A:        STA $0536                 
CODE_12891D:        TYA                       
CODE_12891E:        JSL CODE_118776  

PNTR_128922:        dw CODE_128B1D
                    dw CODE_128B30
                    dw CODE_128B4F
                    dw CODE_128B4F
                    dw CODE_128B4F
                    dw CODE_128B4F
                    dw CODE_128B4F
                    dw CODE_128B4F        
      
CODE_128932:        LDA $0778                 
CODE_128935:        CMP #$05                  
CODE_128937:        BEQ CODE_12893E           
CODE_128939:        JSL CODE_15D03A           
CODE_12893D:        RTL
                       
CODE_12893E:        JSR CODE_128942           
CODE_128941:        RTL
                       
CODE_128942:        LDA #$01                  
CODE_128944:        STA $85                   
CODE_128946:        STY $071E                 
CODE_128949:        LDA $0779                 
CODE_12894C:        JSL CODE_118776   

PNTR_128950:        dw CODE_128958
                    dw CODE_12896E
                    dw CODE_128AA2
                    dw CODE_128995  
             
CODE_128958:        STZ $077A                 
CODE_12895B:        INC $0779                 
CODE_12895E:        LDA $04E1                 
CODE_128961:        STA $077B                 
CODE_128964:        STZ $04E1                 
CODE_128967:        STZ $04CB                 
CODE_12896A:        INC $041B                 
CODE_12896D:        RTS
                       
CODE_12896E:        LDA #$C0                  
CODE_128970:        STA $071C                 
CODE_128973:        LDA #$01                  
CODE_128975:        STA $071D                 
CODE_128978:        STA $071F                 
CODE_12897B:        LDA #$E0                  
CODE_12897D:        STA $071E                 
CODE_128980:        JSR CODE_1289DD           
CODE_128983:        INC $077A                 
CODE_128986:        LDA $077A                 
CODE_128989:        CMP #$10                  
CODE_12898B:        BCS CODE_12898E                   
CODE_12898D:        RTS
                       
CODE_12898E:        INC $0779                 
CODE_128991:        STZ $077A                 
CODE_128994:        RTS
                       
CODE_128995:        LDA #$20                  
CODE_128997:        STA $071C                 
CODE_12899A:        LDA #$00                  
CODE_12899C:        STA $071D                 
CODE_12899F:        STA $071F                 
CODE_1289A2:        LDA #$40                  
CODE_1289A4:        STA $071E                 
CODE_1289A7:        JSR CODE_1289DD           
CODE_1289AA:        DEC $077A                 
CODE_1289AD:        LDA $077A                 
CODE_1289B0:        BMI CODE_1289B3           
CODE_1289B2:        RTS
                       
CODE_1289B3:        LDA #$FF                  
CODE_1289B5:        STA $0778                 
CODE_1289B8:        LDA $077B                 
CODE_1289BB:        STA $04E1                 
CODE_1289BE:        STZ $041B                 
CODE_1289C1:        LDA #$10                  
CODE_1289C3:        STA $1DE3                 
CODE_1289C6:        LDA $04CC                 
CODE_1289C9:        BEQ CODE_1289CC           
CODE_1289CB:        NOP                       
CODE_1289CC:        RTS
                       
DATA_1289CD:        db $48,$58,$49,$59,$4A,$5A,$4B,$5B
                    db $4C,$5C,$4D,$5D,$4E,$5E,$4F,$5F
          
CODE_1289DD:        PHY
CODE_1289DE:        PHX             
CODE_1289DF:        LDA $077A                 
CODE_1289E2:        AND #$0C                  
CODE_1289E4:        XBA                       
CODE_1289E5:        LDA #$00                  
CODE_1289E7:        XBA                       
CODE_1289E8:        REP #$10                  
CODE_1289EA:        TAX                       
CODE_1289EB:        LDY $071C                 
CODE_1289EE:        LDA #$22                  
CODE_1289F0:        JSR CODE_128A45           
CODE_1289F3:        LDA.l DATA_1289CD,x             
CODE_1289F7:        STA $0802,y               
CODE_1289FA:        STA $0812,y               
CODE_1289FD:        INX                       
CODE_1289FE:        LDA.l DATA_1289CD,x             
CODE_128A02:        STA $0806,y               
CODE_128A05:        STA $0816,y               
CODE_128A08:        INX                       
CODE_128A09:        LDA.l DATA_1289CD,x             
CODE_128A0D:        STA $080A,y               
CODE_128A10:        STA $081A,y               
CODE_128A13:        INX                       
CODE_128A14:        LDA.l DATA_1289CD,x             
CODE_128A18:        STA $080E,y               
CODE_128A1B:        STA $081E,y               
CODE_128A1E:        LDY $071E                 
CODE_128A21:        LDA #$20                  
CODE_128A23:        JSR CODE_128A45           
CODE_128A26:        LDA #$E4                  
CODE_128A28:        STA $0802,y               
CODE_128A2B:        STA $0812,y               
CODE_128A2E:        STA $0806,y               
CODE_128A31:        STA $0816,y               
CODE_128A34:        STA $080A,y               
CODE_128A37:        STA $081A,y               
CODE_128A3A:        STA $080E,y               
CODE_128A3D:        STA $081E,y               
CODE_128A40:        SEP #$10                  
CODE_128A42:        PLX                       
CODE_128A43:        PLY                       
CODE_128A44:        RTS
                       
CODE_128A45:        STA $0803,y               
CODE_128A48:        STA $0807,y               
CODE_128A4B:        STA $080B,y               
CODE_128A4E:        STA $080F,y               
CODE_128A51:        ORA #$40                  
CODE_128A53:        STA $0813,y               
CODE_128A56:        STA $0817,y               
CODE_128A59:        STA $081B,y               
CODE_128A5C:        STA $081F,y               
CODE_128A5F:        LDA $0428                 
CODE_128A62:        STA $0800,y               
CODE_128A65:        STA $0804,y               
CODE_128A68:        STA $0808,y               
CODE_128A6B:        STA $080C,y               
CODE_128A6E:        CLC                       
CODE_128A6F:        ADC #$08                  
CODE_128A71:        STA $0810,y               
CODE_128A74:        STA $0814,y               
CODE_128A77:        STA $0818,y               
CODE_128A7A:        STA $081C,y               
CODE_128A7D:        LDA $042B                 
CODE_128A80:        STA $0801,y               
CODE_128A83:        STA $0811,y               
CODE_128A86:        CLC                       
CODE_128A87:        ADC #$08                  
CODE_128A89:        STA $0805,y               
CODE_128A8C:        STA $0815,y               
CODE_128A8F:        CLC                       
CODE_128A90:        ADC #$08                  
CODE_128A92:        STA $0809,y               
CODE_128A95:        STA $0819,y               
CODE_128A98:        CLC                       
CODE_128A99:        ADC #$08                  
CODE_128A9B:        STA $080D,y               
CODE_128A9E:        STA $081D,y               
CODE_128AA1:        RTS
                       
CODE_128AA2:        REP #$30                  
CODE_128AA4:        STZ $0720                 
CODE_128AA7:        LDX #$0100                
CODE_128AAA:        LDA $0B00,x               
CODE_128AAD:        STA $071C                 
CODE_128AB0:        AND #$7C00                
CODE_128AB3:        BEQ CODE_128ABF           
CODE_128AB5:        LDA $071C                 
CODE_128AB8:        SEC                       
CODE_128AB9:        SBC #$0400                
CODE_128ABC:        STA $071C                 
CODE_128ABF:        LDA $071C                 
CODE_128AC2:        AND #$03E0                
CODE_128AC5:        BEQ CODE_128AD1           
CODE_128AC7:        LDA $071C                 
CODE_128ACA:        SEC                       
CODE_128ACB:        SBC #$0020                
CODE_128ACE:        STA $071C                 
CODE_128AD1:        LDA $071C                 
CODE_128AD4:        AND #$001F                
CODE_128AD7:        BEQ CODE_128ADC           
CODE_128AD9:        DEC $071C                 
CODE_128ADC:        LDA $071C                 
CODE_128ADF:        STA $0B00,x               
CODE_128AE2:        TSB $0720                 
CODE_128AE5:        INX                       
CODE_128AE6:        INX                       
CODE_128AE7:        CPX #$0120                
CODE_128AEA:        BNE CODE_128AAA           
CODE_128AEC:        SEP #$30                  
CODE_128AEE:        INC $02A9                 
CODE_128AF1:        LDA #$0F                  
CODE_128AF3:        STA $077A                 
CODE_128AF6:        LDA #$20                  
CODE_128AF8:        STA $071C                 
CODE_128AFB:        LDA #$01                  
CODE_128AFD:        STZ $071D                 
CODE_128B00:        STA $071F                 
CODE_128B03:        LDA #$E0                  
CODE_128B05:        STA $071E                 
CODE_128B08:        JSR CODE_1289DD           
CODE_128B0B:        LDA $0720                 
CODE_128B0E:        ORA $0721                 
CODE_128B11:        BEQ CODE_128B14           
CODE_128B13:        RTS
                       
CODE_128B14:        INC $0779                 
CODE_128B17:        LDA #$0F                  
CODE_128B19:        STA $077A                 
CODE_128B1C:        RTS
                       
CODE_128B1D:        JSR CODE_1298DD           
CODE_128B20:        INC $04BE                 
CODE_128B23:        INC $041B                 
CODE_128B26:        JSL CODE_1287BC           
CODE_128B2A:        LDA #$0F                  
CODE_128B2C:        STA $1DE3                 
CODE_128B2F:        RTS
                       
CODE_128B30:        STZ $0778                 
CODE_128B33:        LDA $9C                   
CODE_128B35:        BEQ CODE_128B2F           
CODE_128B37:        LDY $042D                 
CODE_128B3A:        LDA $0090,y               
CODE_128B3D:        CMP #$3D                  
CODE_128B3F:        BNE CODE_128B2F           
CODE_128B41:        INC $04B0                 
CODE_128B44:        TYA                       
CODE_128B45:        TAX                       
CODE_128B46:        JSR CODE_1299C0           
CODE_128B49:        JSR CODE_1298D9           
CODE_128B4C:        JMP CODE_128B20           

CODE_128B4F:        STZ $0778                 
CODE_128B52:        INC $0627                 
CODE_128B55:        RTS
                       
CODE_128B56:        STA $0F                   
CODE_128B58:        TYA                       
CODE_128B59:        BMI CODE_128B6C           
CODE_128B5B:        ASL A                     
CODE_128B5C:        ASL A                     
CODE_128B5D:        ASL A                     
CODE_128B5E:        ASL A                     
CODE_128B5F:        CLC                       
CODE_128B60:        ADC $0F                   
CODE_128B62:        BCS CODE_128B68                   
CODE_128B64:        CMP #$F0                  
CODE_128B66:        BCC CODE_128B6C           
CODE_128B68:        CLC                       
CODE_128B69:        ADC #$10                  
CODE_128B6B:        INY                       
CODE_128B6C:        RTS
                       
CODE_128B6D:        LDY $01                   
CODE_128B6F:        LDA $E6                   
CODE_128B71:        JSR CODE_128B56           
CODE_128B74:        STY $01                   
CODE_128B76:        STA $E6                   
CODE_128B78:        LDY $EB                   
CODE_128B7A:        LDA $0001,y               
CODE_128B7D:        STA $E9                   
CODE_128B7F:        LDA $02                   
CODE_128B81:        CMP.w DATA_119BB7,y               
CODE_128B84:        BCS CODE_128B8B                   
CODE_128B86:        LDA $01                   
CODE_128B88:        CMP.w DATA_119BB6,y               
CODE_128B8B:        RTS
                       
CODE_128B8C:        LDX $D8                   
CODE_128B8E:        BNE CODE_128BBA           
CODE_128B90:        LDA $50                   
CODE_128B92:        CMP #$02                  
CODE_128B94:        BCS CODE_128BBA                   
CODE_128B96:        LDA $042B                 
CODE_128B99:        LDY $042A                 
CODE_128B9C:        BMI CODE_128BA8           
CODE_128B9E:        BNE CODE_128BAE           
CODE_128BA0:        CMP #$B4                  
CODE_128BA2:        BCS CODE_128BAE                   
CODE_128BA4:        CMP #$21                  
CODE_128BA6:        BCS CODE_128BB0                   
CODE_128BA8:        LDY $99                   
CODE_128BAA:        BNE CODE_128BB0           
CODE_128BAC:        BEQ CODE_128BAF           
CODE_128BAE:        INX                       
CODE_128BAF:        INX                       
CODE_128BB0:        LDA $0425                 
CODE_128BB3:        STX $0425                 
CODE_128BB6:        BNE CODE_128BBA           
CODE_128BB8:        STX $D8                   
CODE_128BBA:        RTS
                       
CODE_128BBB:        LDA $EB                   
CODE_128BBD:        BEQ CODE_128BCC           
CODE_128BBF:        LDA $0428                 
CODE_128BC2:        LDY $6E                   
CODE_128BC4:        CPY #$01                  
CODE_128BC6:        BEQ CODE_128BCD           
CODE_128BC8:        CMP #$08                  
CODE_128BCA:        BCC CODE_128BD1           
CODE_128BCC:        RTS
                       
CODE_128BCD:        CMP #$E8                  
CODE_128BCF:        BCC CODE_128BCC           
CODE_128BD1:        LDA $5A                   
CODE_128BD3:        ORA.w DATA_119BB8,y               
CODE_128BD6:        STA $5A                   
CODE_128BD8:        LDX #$00                  
CODE_128BDA:        LDY $6E                   
CODE_128BDC:        LDA $3C                   
CODE_128BDE:        EOR.w DATA_119BBA,y               
CODE_128BE1:        BPL CODE_128BE5           
CODE_128BE3:        STX $3C                   
CODE_128BE5:        LDA $04CC                 
CODE_128BE8:        EOR.w DATA_119BBA,y               
CODE_128BEB:        BPL CODE_128BF0           
CODE_128BED:        STX $04CC                 
CODE_128BF0:        STX $0407                 
CODE_128BF3:        RTS
                       
CODE_128BF4:        STX $0210                 
CODE_128BF7:        PHA                       
CODE_128BF8:        JSR CODE_1299DB           
CODE_128BFB:        PLA                       
CODE_128BFC:        LDY $E7                   
CODE_128BFE:        STA [$01],y               
CODE_128C00:        PHA                       
CODE_128C01:        LDX $0300                 
CODE_128C04:        LDA #$00                  
CODE_128C06:        STA $0302,x               
CODE_128C09:        LDA $EB                   
CODE_128C0B:        BNE CODE_128C14           
CODE_128C0D:        LDA $0212                 
CODE_128C10:        CLC                       
CODE_128C11:        ADC $E5                   
CODE_128C13:        TAY                       
CODE_128C14:        TYA                       
CODE_128C15:        AND #$F0                  
CODE_128C17:        ASL A                     
CODE_128C18:        ROL $0302,x               
CODE_128C1B:        ASL A                     
CODE_128C1C:        ROL $0302,x               
CODE_128C1F:        STA $0303,x               
CODE_128C22:        TYA                       
CODE_128C23:        AND #$0F                  
CODE_128C25:        ASL A                     
CODE_128C26:        ADC $0303,x               
CODE_128C29:        STA $0303,x               
CODE_128C2C:        CLC                       
CODE_128C2D:        ADC #$20                  
CODE_128C2F:        STA $030B,x               
CODE_128C32:        PHX                       
CODE_128C33:        JSR CODE_128CAE           
CODE_128C36:        JSR CODE_128CFE           
CODE_128C39:        PLX                       
CODE_128C3A:        LDA $0228                 
CODE_128C3D:        BEQ CODE_128C4A           
CODE_128C3F:        CPY #$00                  
CODE_128C41:        BEQ CODE_128C48           
CODE_128C43:        LDA $0302,x               
CODE_128C46:        BRA CODE_128C56           

CODE_128C48:        LDY #$01                  
CODE_128C4A:        LDA.w DATA_119BBD,y               
CODE_128C4D:        CLC                       
CODE_128C4E:        ADC $0302,x               
CODE_128C51:        AND #$0F                  
CODE_128C53:        STA $0302,x               
CODE_128C56:        STA $030A,x               
CODE_128C59:        REP #$20                  
CODE_128C5B:        LDA #$0300                
CODE_128C5E:        STA $0304,x               
CODE_128C61:        STA $030C,x               
CODE_128C64:        SEP #$20                  
CODE_128C66:        PLA                       
CODE_128C67:        PHA                       
CODE_128C68:        AND #$C0                  
CODE_128C6A:        ASL A                     
CODE_128C6B:        ROL A                     
CODE_128C6C:        ROL A                     
CODE_128C6D:        TAY                       
CODE_128C6E:        LDA.w DATA_11AD64,y         ; \ Prepare pointer for the Layer 1 tilemap, page 0.
CODE_128C71:        STA $00                   ;  |
CODE_128C73:        LDA.w DATA_11AD68,y         ;  |
CODE_128C76:        STA $01                   ; /
CODE_128C78:        PLA                       
CODE_128C79:        REP #$30                  
CODE_128C7B:        AND #$003F                
CODE_128C7E:        ASL A                     
CODE_128C7F:        ASL A                     
CODE_128C80:        ASL A                     
CODE_128C81:        TAY                       
CODE_128C82:        LDA ($00),y               
CODE_128C84:        STA $0306,x               
CODE_128C87:        INY                       
CODE_128C88:        INY                       
CODE_128C89:        LDA ($00),y               
CODE_128C8B:        STA $0308,x               
CODE_128C8E:        INY                       
CODE_128C8F:        INY                       
CODE_128C90:        LDA ($00),y               
CODE_128C92:        STA $030E,x               
CODE_128C95:        INY                       
CODE_128C96:        INY                       
CODE_128C97:        LDA ($00),y               
CODE_128C99:        STA $0310,x               
CODE_128C9C:        SEP #$30                  
CODE_128C9E:        LDA #$FF                  
CODE_128CA0:        STA $0312,x               
CODE_128CA3:        TXA                       
CODE_128CA4:        CLC                       
CODE_128CA5:        ADC #$10                  
CODE_128CA7:        STA $0300                 
CODE_128CAA:        LDX $0210                 
CODE_128CAD:        RTL
                       
CODE_128CAE:        STZ $0228                 
CODE_128CB1:        LDA $EB                   
CODE_128CB3:        BNE CODE_128CFD           
CODE_128CB5:        LDA $0535                 
CODE_128CB8:        BEQ CODE_128CFD           
CODE_128CBA:        LSR A                     
CODE_128CBB:        LSR A                     
CODE_128CBC:        TAY                       
CODE_128CBD:        LDA $0303,x               
CODE_128CC0:        CLC                       
CODE_128CC1:        ADC.w DATA_119C14,y               
CODE_128CC4:        STA $0303,x               
CODE_128CC7:        BCC CODE_128CCC           
CODE_128CC9:        INC $0302,x               
CODE_128CCC:        CLC                       
CODE_128CCD:        ADC #$20                  
CODE_128CCF:        STA $030B,x               
CODE_128CD2:        LDA $0302,x               
CODE_128CD5:        CLC                       
CODE_128CD6:        ADC.w DATA_119C11,y               
CODE_128CD9:        CMP #$04                  
CODE_128CDB:        BMI CODE_128CFA           
CODE_128CDD:        CMP #$08                  
CODE_128CDF:        BMI CODE_128CE7           
CODE_128CE1:        CMP #$0C                  
CODE_128CE3:        BPL CODE_128CF7           
CODE_128CE5:        BRA CODE_128CFA           

CODE_128CE7:        CLC                       
CODE_128CE8:        ADC #$04                  
CODE_128CEA:        CMP #$0C                  
CODE_128CEC:        BPL CODE_128CFA           
CODE_128CEE:        PHX                       
CODE_128CEF:        LDX #$01                  
CODE_128CF1:        STX $0228                 
CODE_128CF4:        PLX                       
CODE_128CF5:        BRA CODE_128CFA           

CODE_128CF7:        SEC                       
CODE_128CF8:        SBC #$0C                  
CODE_128CFA:        STA $0302,x               
CODE_128CFD:        RTS
                       
CODE_128CFE:        LDA $EB                   
CODE_128D00:        ASL A                     
CODE_128D01:        TAY                       
CODE_128D02:        BEQ CODE_128D0D           
CODE_128D04:        LDA $01                   
CODE_128D06:        AND #$10                  
CODE_128D08:        BNE CODE_128D70           
CODE_128D0A:        INY                       
CODE_128D0B:        BRA CODE_128D70           

CODE_128D0D:        JSR CODE_128F33           
CODE_128D10:        LDY #$00                  
CODE_128D12:        REP #$20                  
CODE_128D14:        LDA $00E7                 
CODE_128D17:        AND #$00FF                
CODE_128D1A:        CLC                       
CODE_128D1B:        ADC $01                   
CODE_128D1D:        AND #$0FF0                
CODE_128D20:        STA $0226                 
CODE_128D23:        LDA $0535                 
CODE_128D26:        AND #$00FF                
CODE_128D29:        BEQ CODE_128D2F           
CODE_128D2B:        LSR A                     
CODE_128D2C:        LSR A                     
CODE_128D2D:        INC A                     
CODE_128D2E:        ASL A                     
CODE_128D2F:        TAX                       
CODE_128D30:        LDA $0226                 
CODE_128D33:        CMP.w DATA_119C09,x               
CODE_128D36:        BCS CODE_128D41                   
CODE_128D38:        CLC                       
CODE_128D39:        ADC #$0200                
CODE_128D3C:        STA $0226                 
CODE_128D3F:        BRA CODE_128D4F
           
CODE_128D41:        CMP.w DATA_119C01,x               
CODE_128D44:        BMI CODE_128D4F           
CODE_128D46:        SEC                       
CODE_128D47:        SBC #$0200                
CODE_128D4A:        STA $0226                 
CODE_128D4D:        BRA CODE_128D41           

CODE_128D4F:        TXA                       
CODE_128D50:        AND #$00FF                
CODE_128D53:        ASL A                     
CODE_128D54:        ASL A                     
CODE_128D55:        ASL A                     
CODE_128D56:        TAX                       
CODE_128D57:        LDA $0226                 
CODE_128D5A:        CMP.w DATA_119BC1,x               
CODE_128D5D:        BMI CODE_128D64           
CODE_128D5F:        INX                       
CODE_128D60:        INX                       
CODE_128D61:        INY                       
CODE_128D62:        BRA CODE_128D5A           

CODE_128D64:        TYA                       
CODE_128D65:        AND #$00FF                
CODE_128D68:        LSR A                     
CODE_128D69:        LSR A                     
CODE_128D6A:        EOR #$0001                
CODE_128D6D:        TAY                       
CODE_128D6E:        SEP #$20                  
CODE_128D70:        RTS
                       
CODE_128D71:        LDA $0511                 
CODE_128D74:        STA $14                   
CODE_128D76:        LDA $0513                 
CODE_128D79:        STA $28                   
CODE_128D7B:        LDA $0512                 
CODE_128D7E:        STA $1E                   
CODE_128D80:        LDA $0514                 
CODE_128D83:        STA $32                   
CODE_128D85:        LDA $28                   
CODE_128D87:        SEC                       
CODE_128D88:        SBC $04C1                 
CODE_128D8B:        STA $0428                 
CODE_128D8E:        LDA $32                   
CODE_128D90:        SEC                       
CODE_128D91:        SBC $CB                   
CODE_128D93:        STA $042B                 
CODE_128D96:        LDA $1E                   
CODE_128D98:        SBC $CA                   
CODE_128D9A:        STA $042A                 
CODE_128D9D:        LDA $0536                 
CODE_128DA0:        SEC                       
CODE_128DA1:        SBC #$04                  
CODE_128DA3:        BNE CODE_128DB5           
CODE_128DA5:        STA $50                   
CODE_128DA7:        STA $041B                 
CODE_128DAA:        STA $04B7                 
CODE_128DAD:        JSR CODE_1298DD           
CODE_128DB0:        LDA #$0A                  
CODE_128DB2:        STA $04B3                 
CODE_128DB5:        RTL
                       
CODE_128DB6:        LDA $0536                 
CODE_128DB9:        CMP #$02                  
CODE_128DBB:        BNE CODE_128DC9           
CODE_128DBD:        LDA $04EF                 
CODE_128DC0:        BNE CODE_128DC9           
CODE_128DC2:        JSL CODE_128D71           
CODE_128DC6:        JMP CODE_128E0D           

CODE_128DC9:        LDA $0535                 
CODE_128DCC:        LDY #$00                  
CODE_128DCE:        LDX $EB                   
CODE_128DD0:        BNE CODE_128DD8           
CODE_128DD2:        STY $14                   
CODE_128DD4:        STA $1E                   
CODE_128DD6:        BEQ CODE_128DDC           
CODE_128DD8:        STA $14                   
CODE_128DDA:        STY $1E                   
CODE_128DDC:        JSR CODE_128E15           
CODE_128DDF:        LDY $1E                   
CODE_128DE1:        LDA $32                   
CODE_128DE3:        JSL CODE_128F1F           
CODE_128DE7:        STY $1E                   
CODE_128DE9:        STA $32                   
CODE_128DEB:        LDA $28                   
CODE_128DED:        SEC                       
CODE_128DEE:        SBC $04C1                 
CODE_128DF1:        STA $0428                 
CODE_128DF4:        LDA $32                   
CODE_128DF6:        SEC                       
CODE_128DF7:        SBC $CB                   
CODE_128DF9:        STA $042B                 
CODE_128DFC:        LDA $1E                   
CODE_128DFE:        SBC $CA                   
CODE_128E00:        STA $042A                 
CODE_128E03:        LDA $0536                 
CODE_128E06:        CMP #$04                  
CODE_128E08:        BNE CODE_128E0D           
CODE_128E0A:        JSR CODE_1298DD           
CODE_128E0D:        LDA $28                   
CODE_128E0F:        SEC                       
CODE_128E10:        SBC #$78                  
CODE_128E12:        STA $BA                   
CODE_128E14:        RTL
                       
CODE_128E15:        LDA $0536                 
CODE_128E18:        JSL CODE_118776   

PNTR_128E1C:        dw CODE_128E28
                    dw CODE_128E60
                    dw CODE_128ECD
                    dw CODE_128EDA
                    dw CODE_128EFC
                    dw CODE_128F17
             
CODE_128E28:        LDA #$01                  
CODE_128E2A:        STA $9D                   
CODE_128E2C:        JSR CODE_128ED1           
CODE_128E2F:        LSR A                     
CODE_128E30:        LSR A                     
CODE_128E31:        LSR A                     
CODE_128E32:        LSR A                     
CODE_128E33:        STA $E5                   
CODE_128E35:        LDA #$D0                  ; \ Player Y position = #$D0.
CODE_128E37:        STA $32                   ; /
CODE_128E39:        STA $E6                   
CODE_128E3B:        LDA $0535                 
CODE_128E3E:        STA $E9                   
CODE_128E40:        LDA #$0C                  
CODE_128E42:        STA $04                   
CODE_128E44:        JSR CODE_1299DB           
CODE_128E47:        LDY $E7                   
CODE_128E49:        LDA [$01],y               ; \ If tile is...
CODE_128E4B:        CMP #$40                  ;  | a blank tile...
CODE_128E4D:        BEQ CODE_128E58           ; / Skip, don't JSR.
CODE_128E4F:        JSR CODE_128E58           
CODE_128E52:        STA $E6                   
CODE_128E54:        DEC $04                   
CODE_128E56:        BNE CODE_128E44           
CODE_128E58:        LDA $32                   
CODE_128E5A:        SEC                       
CODE_128E5B:        SBC #$10                  
CODE_128E5D:        STA $32                   
CODE_128E5F:        RTS
                       
CODE_128E60:        LDA $28                   
CODE_128E62:        CLC                       
CODE_128E63:        ADC #$08                  
CODE_128E65:        AND #$F0                  
CODE_128E67:        EOR #$F0                  
CODE_128E69:        STA $28                   
CODE_128E6B:        LSR A                     
CODE_128E6C:        LSR A                     
CODE_128E6D:        LSR A                     
CODE_128E6E:        LSR A                     
CODE_128E6F:        STA $E5                   
CODE_128E71:        LDA #$E0                  
CODE_128E73:        STA $32                   
CODE_128E75:        STA $E6                   
CODE_128E77:        LDA $0535                 
CODE_128E7A:        STA $E9                   
CODE_128E7C:        LDA #$0D                  
CODE_128E7E:        STA $0715                 
CODE_128E81:        JSR CODE_1299DB           
CODE_128E84:        REP #$20                  
CODE_128E86:        LDA $01                   
CODE_128E88:        CLC                       
CODE_128E89:        ADC #$7000                
CODE_128E8C:        STA $C4                   
CODE_128E8E:        SEP #$20                  
CODE_128E90:        LDA $03                   
CODE_128E92:        STA $C6                   
CODE_128E94:        LDY $E7                   
CODE_128E96:        LDA [$C4],y               
CODE_128E98:        STA $0712                 
CODE_128E9B:        LDA [$01],y               
CODE_128E9D:        LDY #$08                  
CODE_128E9F:        CMP.w DATA_119BAD,y               
CODE_128EA2:        BNE CODE_128EB1           
CODE_128EA4:        CMP #$2A                  
CODE_128EA6:        BEQ CODE_128EAC           
CODE_128EA8:        CMP #$2B                  
CODE_128EAA:        BNE CODE_128EC4           
CODE_128EAC:        LDA $0712                 
CODE_128EAF:        BNE CODE_128EC4           
CODE_128EB1:        DEY                       
CODE_128EB2:        BNE CODE_128E9F           
CODE_128EB4:        DEC $0715                 
CODE_128EB7:        BEQ CODE_128EC1           
CODE_128EB9:        JSR CODE_128E58           
CODE_128EBC:        STA $E6                   
CODE_128EBE:        JMP CODE_128E81           

CODE_128EC1:        JSR CODE_128ED1           
CODE_128EC4:        JSR CODE_128E58           
CODE_128EC7:        LDA #$00                  
CODE_128EC9:        STA $041B                 
CODE_128ECC:        RTS
                       
CODE_128ECD:        LDA #$00                  
CODE_128ECF:        STA $32                   
CODE_128ED1:        LDA #$01                  
CODE_128ED3:        STA $99                   
CODE_128ED5:        LDA #$78                  
CODE_128ED7:        STA $28                   
CODE_128ED9:        RTS
                       
CODE_128EDA:        LDA $28                   
CODE_128EDC:        CLC                       
CODE_128EDD:        ADC #$08                  
CODE_128EDF:        AND #$F0                  
CODE_128EE1:        EOR #$F0                  
CODE_128EE3:        STA $28                   
CODE_128EE5:        LDA $042B                 
CODE_128EE8:        CLC                       
CODE_128EE9:        ADC #$08                  
CODE_128EEB:        AND #$F0                  
CODE_128EED:        EOR #$10                  
CODE_128EEF:        STA $32                   
CODE_128EF1:        CMP #$F0                  
CODE_128EF3:        BEQ CODE_128EF7           
CODE_128EF5:        DEC $1E                   
CODE_128EF7:        LDA #$0A                  
CODE_128EF9:        STA $C7                   
CODE_128EFB:        RTS
                       
CODE_128EFC:        LDA $0428                 
CODE_128EFF:        SEC                       
CODE_128F00:        SBC $BA                   
CODE_128F02:        EOR #$FF                  
CODE_128F04:        CLC                       
CODE_128F05:        ADC #$F1                  
CODE_128F07:        STA $28                   
CODE_128F09:        LDA $042B                 
CODE_128F0C:        STA $32                   
CODE_128F0E:        DEC $041B                 
CODE_128F11:        LDA #$60                  ; \ How long the potion room lasts.
CODE_128F13:        STA $04B7                 ; /
CODE_128F16:        RTS
                       
CODE_128F17:        JSR CODE_128ED1           
CODE_128F1A:        LDA #$60                  
CODE_128F1C:        STA $32                   
CODE_128F1E:        RTS
                       
CODE_128F1F:        CPY #$00                  
CODE_128F21:        BMI CODE_128F32           
CODE_128F23:        PHA                       
CODE_128F24:        TYA                       
CODE_128F25:        ASL A                     
CODE_128F26:        ASL A                     
CODE_128F27:        ASL A                     
CODE_128F28:        ASL A                     
CODE_128F29:        STA $0F                   
CODE_128F2B:        PLA                       
CODE_128F2C:        SEC                       
CODE_128F2D:        SBC $0F                   
CODE_128F2F:        BCS CODE_128F32                   
CODE_128F31:        DEY                       
CODE_128F32:        RTL
                       
CODE_128F33:        LDX $E9                   
CODE_128F35:        LDA $0534                 
CODE_128F38:        ASL A                     
CODE_128F39:        ASL A                     
CODE_128F3A:        ASL A                     
CODE_128F3B:        ASL A                     
CODE_128F3C:        CLC                       
CODE_128F3D:        ADC.w DATA_11AAFB,x               
CODE_128F40:        STA $02                   
CODE_128F42:        LDA.w DATA_11AAF0,x               
CODE_128F45:        STA $01                   
CODE_128F47:        RTS
                       
CODE_128F48:        JSL CODE_1387D8           
CODE_128F4C:        JSL CODE_138846           
CODE_128F50:        LDA #$FF                  
CODE_128F52:        STA $0302                 
CODE_128F55:        STA $7F0002               
CODE_128F59:        LDA #$13                  
CODE_128F5B:        STA $0243                 
CODE_128F5E:        LDA #$03                  
CODE_128F60:        STA $024C                 
CODE_128F63:        LDA #$02                  
CODE_128F65:        STA $0775                 
CODE_128F68:        JSL CODE_14F953           
CODE_128F6C:        JSL CODE_13DC5E           
CODE_128F70:        LDA #$40                  
CODE_128F72:        STA $0100                 
CODE_128F75:        LDA #$80                  
CODE_128F77:        STA $FF                   
CODE_128F79:        STA $FE                   
CODE_128F7B:        LDA #$81                  
CODE_128F7D:        STA $4200                 
CODE_128F80:        JSL CODE_14F908           
CODE_128F84:        LDA #$01                  ; \ Load border of the 'Super Mario Bros 2.' intro screen.
CODE_128F86:        STA $11                   ;  |
CODE_128F88:        JSL CODE_14F908           ; /
CODE_128F8C:        LDA #$02                  ; \ Load 'Super Mario Bros. 2' and '�1988-1992 Nintendo.'
CODE_128F8E:        STA $11                   ;  |
CODE_128F90:        JSL CODE_14F908           ; /
CODE_128F94:        JSL CODE_14D84E           
CODE_128F98:        LDA #$11                  ; \ Story music.
CODE_128F9A:        STA $1DE2                 ; /
CODE_128F9D:        JSL CODE_1195D1           
CODE_128FA1:        LDA #$03                  
CODE_128FA3:        STA $10                   
CODE_128FA5:        LDA #$25                  
CODE_128FA7:        STA $0210                 
CODE_128FAA:        LDA #$0C                  
CODE_128FAC:        STA $14                   
CODE_128FAE:        LDA #$A7                  
CODE_128FB0:        STA $15                   
CODE_128FB2:        LDA #$62                  
CODE_128FB4:        STA $16                   
CODE_128FB6:        STZ $19                   
CODE_128FB8:        STZ $17                   
CODE_128FBA:        STZ $18                   
CODE_128FBC:        STZ $1A                   
CODE_128FBE:        JSL CODE_14F908           
CODE_128FC2:        LDA $17                   
CODE_128FC4:        BNE CODE_12900E           
CODE_128FC6:        INC $10                   
CODE_128FC8:        LDA $10                   
CODE_128FCA:        AND #$0F                  
CODE_128FCC:        BEQ CODE_128FD1           
CODE_128FCE:        BRL CODE_129069
           
CODE_128FD1:        DEC $0210                 
CODE_128FD4:        LDA $0210                 
CODE_128FD7:        CMP #$06                  
CODE_128FD9:        BNE CODE_128FCE           
CODE_128FDB:        INC $17                   
CODE_128FDD:        LDA $14                   
CODE_128FDF:        STA $0302                 
CODE_128FE2:        LDA $15                   
CODE_128FE4:        STA $0303                 
CODE_128FE7:        LDA $16                   
CODE_128FE9:        AND #$C0                  
CODE_128FEB:        STA $0304                 
CODE_128FEE:        LDA $16                   
CODE_128FF0:        AND #$3F                  
CODE_128FF2:        STA $0305                 
CODE_128FF5:        LDA #$C6                  
CODE_128FF7:        STA $15                   
CODE_128FF9:        LDA #$66                  
CODE_128FFB:        STA $16                   
CODE_128FFD:        LDA #$BD                  
CODE_128FFF:        STA $0306                 
CODE_129002:        LDA #$09                  
CODE_129004:        STA $0307                 
CODE_129007:        LDA #$FF                  
CODE_129009:        STA $0308                 
CODE_12900C:        BRA CODE_129069           

CODE_12900E:        LDA $14                   
CODE_129010:        STA $0302                 
CODE_129013:        LDA $15                   
CODE_129015:        STA $0303                 
CODE_129018:        LDA $16                   
CODE_12901A:        AND #$C0                  
CODE_12901C:        STA $0304                 
CODE_12901F:        LDA $16                   
CODE_129021:        AND #$3F                  
CODE_129023:        STA $0305                 
CODE_129026:        LDA #$BD                  
CODE_129028:        STA $0306                 
CODE_12902B:        LDA #$09                  
CODE_12902D:        STA $0307                 
CODE_129030:        LDA #$FF                  
CODE_129032:        STA $0308                 
CODE_129035:        LDA $14                   
CODE_129037:        CMP #$0D                  
CODE_129039:        BNE CODE_129046           
CODE_12903B:        LDA $15                   
CODE_12903D:        CMP #$E0                  
CODE_12903F:        BCS CODE_129046                   
CODE_129041:        LDA #$28                  
CODE_129043:        STA $0305                 
CODE_129046:        LDA $15                   
CODE_129048:        CLC                       
CODE_129049:        ADC #$20                  
CODE_12904B:        STA $15                   
CODE_12904D:        LDA $14                   
CODE_12904F:        ADC #$00                  
CODE_129051:        STA $14                   
CODE_129053:        CMP #$0E                  
CODE_129055:        BNE CODE_129069           
CODE_129057:        LDA $15                   
CODE_129059:        AND #$F0                  
CODE_12905B:        CMP #$E0                  
CODE_12905D:        BNE CODE_129069           
CODE_12905F:        LDA #$20                  
CODE_129061:        STA $10                   
CODE_129063:        JSL CODE_14F908           
CODE_129067:        BRA CODE_12908D           

CODE_129069:        LDA $FA                   
CODE_12906B:        AND #$10                  
CODE_12906D:        BEQ CODE_129072           
CODE_12906F:        BRL CODE_12916C           

CODE_129072:        LDA $FC                   
CODE_129074:        AND #$40                  
CODE_129076:        STA $0712                 
CODE_129079:        LDA $FA                   
CODE_12907B:        AND #$40                  
CODE_12907D:        ORA $0712                 
CODE_129080:        BEQ CODE_12908A           
CODE_129082:        JSL CODE_1195C0           
CODE_129086:        JML CODE_0080DE           

CODE_12908A:        BRL CODE_128FBE           

CODE_12908D:        JSL CODE_14F908           
CODE_129091:        LDA $19                   
CODE_129093:        BEQ CODE_129098           
CODE_129095:        BRL CODE_129166           

CODE_129098:        LDA $18                   
CODE_12909A:        CMP #$09                  
CODE_12909C:        BEQ CODE_1290D1           
CODE_12909E:        LDA $18                   
CODE_1290A0:        BNE CODE_1290E2           
CODE_1290A2:        DEC $10                   
CODE_1290A4:        BMI CODE_1290A9           
CODE_1290A6:        BRL CODE_129166           

CODE_1290A9:        LDA #$0C                  
CODE_1290AB:        STA $0302                 
CODE_1290AE:        LDA #$8E                  
CODE_1290B0:        STA $0303                 
CODE_1290B3:        STZ $0304                 
CODE_1290B6:        LDA #$09                  
CODE_1290B8:        STA $0305                 
CODE_1290BB:        LDX #$08                  
CODE_1290BD:        REP #$20                  
CODE_1290BF:        LDA.l DATA_15E835,x             
CODE_1290C3:        STA $0306,x               
CODE_1290C6:        SEP #$20                  
CODE_1290C8:        DEX                       
CODE_1290C9:        DEX                       
CODE_1290CA:        BPL CODE_1290BD           
CODE_1290CC:        LDA #$FF                  
CODE_1290CE:        STA $0310                 
CODE_1290D1:        INC $18                   
CODE_1290D3:        LDA #$0C                  
CODE_1290D5:        STA $14                   
CODE_1290D7:        LDA #$E6                  
CODE_1290D9:        STA $15                   
CODE_1290DB:        LDA #$40                  
CODE_1290DD:        STA $1A                   
CODE_1290DF:        BRL CODE_129166           

CODE_1290E2:        DEC $1A                   ; \ If timer is not positive (00-7F)...
CODE_1290E4:        BPL CODE_1290DF           ; / Load next line.
CODE_1290E6:        LDA #$40                  ; \ Amount of frames to wait for next line = #$40
CODE_1290E8:        STA $1A                   ; /
CODE_1290EA:        LDA $14                   
CODE_1290EC:        STA $0302                 
CODE_1290EF:        LDA $15                   
CODE_1290F1:        STA $0303                 
CODE_1290F4:        STZ $0304                 
CODE_1290F7:        LDA #$27                  
CODE_1290F9:        STA $0305                 
CODE_1290FC:        LDX $18                   
CODE_1290FE:        DEX                       
CODE_1290FF:        LDA #$15                  ; \ Bank num = $15.
CODE_129101:        STA $05                   ;  |
CODE_129103:        LDA.l PNTR_15E83F,x         ;  | Get address of tables...
CODE_129107:        STA $04                   ;  | ...which contain the 'Story' data...
CODE_129109:        LDA.l PNTR_15E850,x         ;  | into [$03]
CODE_12910D:        STA $03                   ; /
CODE_12910F:        LDY #$00                  
CODE_129111:        LDX #$13                  
CODE_129113:        REP #$20                  
CODE_129115:        LDA [$03],y               
CODE_129117:        STA $0306,y               
CODE_12911A:        SEP #$20                  
CODE_12911C:        INY                       
CODE_12911D:        INY                       
CODE_12911E:        DEX                       
CODE_12911F:        BPL CODE_129113           
CODE_129121:        LDA #$FF                  
CODE_129123:        STA $0306,y               
CODE_129126:        INC $18                   
CODE_129128:        LDA $15                   
CODE_12912A:        CLC                       
CODE_12912B:        ADC #$40                  
CODE_12912D:        STA $15                   
CODE_12912F:        LDA $14                   
CODE_129131:        ADC #$00                  
CODE_129133:        STA $14                   
CODE_129135:        LDA $18                   
CODE_129137:        CMP #$09                  
CODE_129139:        BCC CODE_129166           
CODE_12913B:        BNE CODE_129157           
CODE_12913D:        LDA #$09                  
CODE_12913F:        STA $0210                 
CODE_129142:        LDA #$03                  
CODE_129144:        STA $10                   
CODE_129146:        LDA #$0C                  
CODE_129148:        STA $14                   
CODE_12914A:        LDA #$A7                  
CODE_12914C:        STA $15                   
CODE_12914E:        LDA #$62                  
CODE_129150:        STA $16                   
CODE_129152:        STZ $17                   
CODE_129154:        BRL CODE_128FC6           

CODE_129157:        CMP #$12                  
CODE_129159:        BCC CODE_129166           
CODE_12915B:        INC $19                   
CODE_12915D:        LDA #$25                  
CODE_12915F:        STA $0210                 
CODE_129162:        LDA #$03                  
CODE_129164:        STA $10                   
CODE_129166:        LDA $FA                   
CODE_129168:        AND #$10                  
CODE_12916A:        BEQ CODE_129192           
CODE_12916C:        LDA #$80                  
CODE_12916E:        STA $1DE2                 
CODE_129171:        JSL CODE_14F908           
CODE_129175:        LDA $701FF2               
CODE_129179:        BEQ CODE_12917D           
CODE_12917B:        BRA CODE_1291A2           

CODE_12917D:        LDA #$29                  
CODE_12917F:        STA $1DE3                 
CODE_129182:        LDA #$00                  
CODE_129184:        TAY                       
CODE_129185:        STA $0000,y               
CODE_129188:        INY                       
CODE_129189:        CPY #$F0                  
CODE_12918B:        BCC CODE_129185           
CODE_12918D:        JSL CODE_14F9F0           ; Clear all OAM.
CODE_129191:        RTL
                       
CODE_129192:        LDA $FC                   
CODE_129194:        AND #$40                  
CODE_129196:        STA $0712                 
CODE_129199:        LDA $FA                   
CODE_12919B:        AND #$40                  
CODE_12919D:        ORA $0712                 
CODE_1291A0:        BEQ CODE_1291AA           
CODE_1291A2:        JSL CODE_1195C0           
CODE_1291A6:        JML CODE_0080DE           

CODE_1291AA:        LDA $19                   
CODE_1291AC:        BEQ CODE_1291C2           
CODE_1291AE:        INC $10                   
CODE_1291B0:        LDA $10                   
CODE_1291B2:        AND #$0F                  
CODE_1291B4:        BNE CODE_1291C2           
CODE_1291B6:        DEC $0210                 
CODE_1291B9:        LDA $0210                 
CODE_1291BC:        CMP #$14                  
CODE_1291BE:        BNE CODE_1291C2           
CODE_1291C0:        BEQ CODE_1291C5           
CODE_1291C2:        BRL CODE_12908D           

CODE_1291C5:        JSL CODE_1195C0           
CODE_1291C9:        JSL CODE_14F900           
CODE_1291CD:        STZ $4200                 
CODE_1291D0:        LDA $701FF2               
CODE_1291D4:        BEQ CODE_1291DA           
CODE_1291D6:        JML CODE_008139           

CODE_1291DA:        BRL CODE_128F50           

DATA_1291DD:        db $FF,$FF,$FF,$FF,$FF,$FF,$FF          ; Empty data.
             
CODE_1291E4:        LDA #$80                  ; Force blank.
CODE_1291E6:        BRA CODE_1291EA           

CODE_1291E8:        LDA #$0F                  ; \ Full brightness.
CODE_1291EA:        STA $FE                   ; /
CODE_1291EC:        LDA $11               
CODE_1291EE:        ASL A              
CODE_1291EF:        TAX                       
CODE_1291F0:        LDA.w PNTR_119C17,x               
CODE_1291F3:        STA $F0                   
CODE_1291F5:        LDA.w PNTR_119C17+1,x               
CODE_1291F8:        STA $F1                   
CODE_1291FA:        LDA #$11                  
CODE_1291FC:        STA $F2                   
CODE_1291FE:        STZ $0154                 
CODE_129201:        LDA $0154                 
CODE_129204:        BPL CODE_129201           
CODE_129206:        JSL CODE_14FA99           
CODE_12920A:        CLI                       
CODE_12920B:        RTS
                       
CODE_12920C:        STZ $E6                   
CODE_12920E:        JSR CODE_1291EC           
CODE_129211:        JSR CODE_129510           
CODE_129214:        LDA $E6                   
CODE_129216:        BEQ CODE_12920E           
CODE_129218:        JSL CODE_14F92E           
CODE_12921C:        JSL CODE_14F953           
CODE_129220:        JSL CODE_138887           
CODE_129224:        JSL CODE_13E25B           
CODE_129228:        JSL CODE_14D9CD           
CODE_12922C:        LDA #$40                  
CODE_12922E:        STA $0100                 
CODE_129231:        LDA #$B0                  
CODE_129233:        STA $FF                   
CODE_129235:        JSR CODE_1291EC           
CODE_129238:        LDA #$01                  
CODE_12923A:        STA $11                   
CODE_12923C:        JSR CODE_1291EC           
CODE_12923F:        LDA #$01                  
CODE_129241:        STA $E5                   
CODE_129243:        LDA #$60                  ; \ Amount of frames the 'pulling fairies out of jar' cutscene is going to take.
CODE_129245:        STA $83                   ; /
CODE_129247:        LDA #$01                  ; \ Player direction to face.
CODE_129249:        STA $9D                   ; /
CODE_12924B:        STA $078D                 
CODE_12924E:        STZ $50                   
CODE_129250:        STZ $8E                   
CODE_129252:        STZ $04CB                 
CODE_129255:        STZ $E6                   
CODE_129257:        STZ $0400                 
CODE_12925A:        LDX #$09                  
CODE_12925C:        LDA.w DATA_11A3EC,x               
CODE_12925F:        STA $28,x                 
CODE_129261:        LDA.w DATA_11A3F6,x               
CODE_129264:        STA $32,x                 
CODE_129266:        LDA.w DATA_11A400,x               
CODE_129269:        STA $3C,x                 
CODE_12926B:        LDA.w DATA_11A40A,x               
CODE_12926E:        STA $46,x                 
CODE_129270:        LDA.w DATA_11A414,x               
CODE_129273:        STA $85,x                 
CODE_129275:        LDA.w DATA_11A41E,x               
CODE_129278:        STA $64,x                 
CODE_12927A:        DEX                       
CODE_12927B:        BPL CODE_12925C           
CODE_12927D:        STZ $FE                   
CODE_12927F:        JSR CODE_1291EC           
CODE_129282:        JSL CODE_14F9F0           ; Clear all OAM.
CODE_129286:        JSR CODE_1292C5           
CODE_129289:        JSR CODE_1293D8           
CODE_12928C:        JSR CODE_129526           
CODE_12928F:        LDA $E6                   
CODE_129291:        BEQ CODE_12927F           
CODE_129293:        STZ $E6                   
CODE_129295:        JSR CODE_1291EC           
CODE_129298:        INC $10                   
CODE_12929A:        JSL CODE_14F9F0           ; Clear all OAM.
CODE_12929E:        JSR CODE_1292C5           
CODE_1292A1:        JSR CODE_1293D8           
CODE_1292A4:        LDA $83                   
CODE_1292A6:        BEQ CODE_1292BD           
CODE_1292A8:        LDA $10                   
CODE_1292AA:        AND #$07                  
CODE_1292AC:        BNE CODE_129295           
CODE_1292AE:        DEC $83                   
CODE_1292B0:        LDA $83                   
CODE_1292B2:        CMP #$25                  
CODE_1292B4:        BNE CODE_129295           
CODE_1292B6:        LDY #$0E                  ; \ Credits song.
CODE_1292B8:        STY $1DE2                 ; /
CODE_1292BB:        BNE CODE_129295           
CODE_1292BD:        JSR CODE_129510           
CODE_1292C0:        LDA $E6                   
CODE_1292C2:        BEQ CODE_129295           
CODE_1292C4:        RTL
                       
CODE_1292C5:        LDA $84                   
CODE_1292C7:        BEQ CODE_1292CB           
CODE_1292C9:        DEC $84                   
CODE_1292CB:        LDA $82                   
CODE_1292CD:        BEQ CODE_1292D1           
CODE_1292CF:        DEC $82                   
CODE_1292D1:        LDA $28                   
CODE_1292D3:        STA $0428                 
CODE_1292D6:        LDA $32                   
CODE_1292D8:        STA $042B                 
CODE_1292DB:        JSL CODE_14E14A           
CODE_1292DF:        LDA $50                   
CODE_1292E1:        JSL CODE_118776 

PNTR_1292E5:        dw CODE_1292EF
                    dw CODE_12930B
                    dw CODE_129337
                    dw CODE_129354
                    dw CODE_129376             

CODE_1292EF:        JSR CODE_1283D1                
CODE_1292F2:        JSR CODE_1280D2           
CODE_1292F5:        LDA $28                   
CODE_1292F7:        CMP #$3E                  
CODE_1292F9:        BCC CODE_129336           
CODE_1292FB:        INC $50                   
CODE_1292FD:        INC $99                   
CODE_1292FF:        LDA #$06                  
CODE_129301:        STA $C7                   
CODE_129303:        LDA #$01                  
CODE_129305:        STA $1DE1                 
CODE_129308:        JMP CODE_12830B           

CODE_12930B:        JSR CODE_1283D1           
CODE_12930E:        JSR CODE_1280D2           
CODE_129311:        JSR CODE_129390           
CODE_129314:        JSR CODE_128523           
CODE_129317:        LDA $46                   
CODE_129319:        BMI CODE_129336           
CODE_12931B:        LDA $32                   
CODE_12931D:        CMP #$A0                  
CODE_12931F:        BCC CODE_129328           
CODE_129321:        LDA #$0C                  
CODE_129323:        STA $3C                   
CODE_129325:        JMP CODE_129303           

CODE_129328:        CMP #$75                  
CODE_12932A:        BCC CODE_129336           
CODE_12932C:        LDA $28                   
CODE_12932E:        CMP #$70                  
CODE_129330:        BCC CODE_129336           
CODE_129332:        INC $50                   
CODE_129334:        DEC $99                   
CODE_129336:        RTS
                       
CODE_129337:        JSR CODE_1283D1           
CODE_12933A:        JSR CODE_1280D2           
CODE_12933D:        LDA $28                   
CODE_12933F:        CMP #$80                  
CODE_129341:        BCC CODE_129336           
CODE_129343:        INC $50                   
CODE_129345:        INC $9C                   
CODE_129347:        LDA #$08                  
CODE_129349:        STA $C7                   
CODE_12934B:        LDA #$05                  
CODE_12934D:        STA $8E                   
CODE_12934F:        LDA #$28                  
CODE_129351:        STA $82                   
CODE_129353:        RTS
                       
CODE_129354:        LDA $82                   
CODE_129356:        BNE CODE_129375           
CODE_129358:        DEC $8E                   
CODE_12935A:        BNE CODE_12936E           
CODE_12935C:        INC $50                   
CODE_12935E:        INC $99                   
CODE_129360:        LDA #$06                  
CODE_129362:        STA $C7                   
CODE_129364:        LDA #$2B                  
CODE_129366:        STA $1DE0                 
CODE_129369:        LDA #$A0                  
CODE_12936B:        STA $4F                   
CODE_12936D:        RTS
                       
CODE_12936E:        LDY $8E                   
CODE_129370:        LDA.w DATA_11A427,y               
CODE_129373:        STA $82                   
CODE_129375:        RTS
                       
CODE_129376:        JSR CODE_12939B           
CODE_129379:        JSR CODE_129390           
CODE_12937C:        JSR CODE_1283D1           
CODE_12937F:        JSR CODE_128523           
CODE_129382:        LDA $46                   
CODE_129384:        BMI CODE_12938F           
CODE_129386:        LDA $32                   
CODE_129388:        CMP #$80                  
CODE_12938A:        BCC CODE_12938F           
CODE_12938C:        JMP CODE_12830B           

CODE_12938F:        RTS
                       
CODE_129390:        LDY $8F                   
CODE_129392:        LDA.w DATA_11A431,y               
CODE_129395:        CLC                       
CODE_129396:        ADC $46                   
CODE_129398:        STA $46                   
CODE_12939A:        RTS
                       
CODE_12939B:        LDX #$07                  
CODE_12939D:        STX $12                   
CODE_12939F:        LDA $86,x                 
CODE_1293A1:        BEQ CODE_1293AE           
CODE_1293A3:        CMP #$01                  
CODE_1293A5:        BNE CODE_1293D2           
CODE_1293A7:        LDA #$31                  
CODE_1293A9:        STA $1DE0                 
CODE_1293AC:        BNE CODE_1293D2           
CODE_1293AE:        JSR CODE_1298C1           
CODE_1293B1:        LDA $47,x                 
CODE_1293B3:        CMP #$08                  
CODE_1293B5:        BMI CODE_1293C6           
CODE_1293B7:        LDA #$00                  
CODE_1293B9:        STA $3D,x                 
CODE_1293BB:        LDA #$F9                  
CODE_1293BD:        STA $47,x                 
CODE_1293BF:        LDA.w DATA_11A41F,x               
CODE_1293C2:        EOR #$40                  
CODE_1293C4:        STA $65,x                 
CODE_1293C6:        LDA $10                   
CODE_1293C8:        ASL A                     
CODE_1293C9:        AND #$02                  
CODE_1293CB:        STA $0F                   
CODE_1293CD:        JSR CODE_1293FD           
CODE_1293D0:        INC $86,x                 
CODE_1293D2:        DEC $86,x                 
CODE_1293D4:        DEX                       
CODE_1293D5:        BPL CODE_12939D           
CODE_1293D7:        RTS
                       
CODE_1293D8:        LDA #$04                  
CODE_1293DA:        STA $0F                   
CODE_1293DC:        LDX #$08                  
CODE_1293DE:        STX $12                   
CODE_1293E0:        JSR CODE_1293FD           
CODE_1293E3:        LDY $8E                   
CODE_1293E5:        BNE CODE_1293F4           
CODE_1293E7:        LDA $3B                   
CODE_1293E9:        CMP #$A0                  
CODE_1293EB:        BCC CODE_1293F1           
CODE_1293ED:        CMP #$E0                  
CODE_1293EF:        BCC CODE_1293FC           
CODE_1293F1:        JMP CODE_129880           

CODE_1293F4:        LDA.w DATA_11A42B,y               
CODE_1293F7:        CLC                       
CODE_1293F8:        ADC $32                   
CODE_1293FA:        STA $3B                   
CODE_1293FC:        RTS       
                
CODE_1293FD:        LDY.w DATA_11A43B,x               
CODE_129400:        LDA $33,x                 
CODE_129402:        STA $0801,y               
CODE_129405:        LDA $29,x                 
CODE_129407:        STA $0800,y               
CODE_12940A:        LDA $65,x                 
CODE_12940C:        AND #$C0                  
CODE_12940E:        ORA #$17                  
CODE_129410:        STA $0803,y               
CODE_129413:        LDX $0F                   
CODE_129415:        AND #$40                  
CODE_129417:        BNE CODE_12941E           
CODE_129419:        LDA.w DATA_11A435,x               
CODE_12941C:        BRA CODE_129421           

CODE_12941E:        LDA.w DATA_11A436,x               
CODE_129421:        STA $0802,y               
CODE_129424:        PHY                       
CODE_129425:        TYA                       
CODE_129426:        LSR A                     
CODE_129427:        LSR A                     
CODE_129428:        TAY                       
CODE_129429:        LDA #$02                  
CODE_12942B:        STA $0A20,y               
CODE_12942E:        PLY                       
CODE_12942F:        LDX $12                   
CODE_129431:        RTS           
            
CODE_129432:        JSR CODE_1291E4           
CODE_129435:        JSL CODE_14D194           
CODE_129439:        JSL CODE_14F953           
CODE_12943D:        LDA #$40                  
CODE_12943F:        STA $0100                 
CODE_129442:        JSR CODE_12953D           
CODE_129445:        JSR CODE_1291EC           
CODE_129448:        LDA #$02                  
CODE_12944A:        STA $11                   
CODE_12944C:        JSR CODE_1291EC           
CODE_12944F:        LDA #$03                  
CODE_129451:        STA $11                   
CODE_129453:        JSR CODE_1291EC           
CODE_129456:        JSL CODE_13DD8E           
CODE_12945A:        JSR CODE_1296BA           
CODE_12945D:        JSR CODE_1291EC           
CODE_129460:        LDA #$00                  
CODE_129462:        STA $F4                   
CODE_129464:        STA $E6                   
CODE_129466:        JSR CODE_129694           
CODE_129469:        LDA #$FF                  
CODE_12946B:        STA $14                   
CODE_12946D:        LDA #$A0                  
CODE_12946F:        STA $28                   
CODE_129471:        LDA #$08                  
CODE_129473:        STA $3C                   
CODE_129475:        LDA #$01                  
CODE_129477:        STA $EB                   
CODE_129479:        LDA #$BE                  
CODE_12947B:        STA $024B                 
CODE_12947E:        STZ $024F                 
CODE_129481:        STZ $024C                 
CODE_129484:        STZ $FE                   
CODE_129486:        JSR CODE_1291EC           
CODE_129489:        CLI                       
CODE_12948A:        INC $F4                   
CODE_12948C:        INC $10                   
CODE_12948E:        JSR CODE_1297FE           
CODE_129491:        JSR CODE_129546           
CODE_129494:        LDA $E6                   
CODE_129496:        CMP #$03                  
CODE_129498:        BCS CODE_1294AE                   
CODE_12949A:        LDA $F4                   
CODE_12949C:        CMP #$0A                  
CODE_12949E:        BCC CODE_1294AB           
CODE_1294A0:        LDA #$00                  
CODE_1294A2:        STA $F4                   
CODE_1294A4:        LDA $F3                   
CODE_1294A6:        SEC                       
CODE_1294A7:        SBC #$30                  
CODE_1294A9:        STA $F3                   
CODE_1294AB:        BRL CODE_129486           

CODE_1294AE:        LDA #$03                  
CODE_1294B0:        STA $024C                 
CODE_1294B3:        STZ $F3                   
CODE_1294B5:        STZ $F4                   
CODE_1294B7:        STZ $0242                 
CODE_1294BA:        LDA #$04                  
CODE_1294BC:        STA $11                   
CODE_1294BE:        JSR CODE_1291EC           
CODE_1294C1:        JSR CODE_12953D           
CODE_1294C4:        INC $F4                   
CODE_1294C6:        JSR CODE_1297FE           
CODE_1294C9:        JSR CODE_12965D           
CODE_1294CC:        LDX #$02                  
CODE_1294CE:        LDY #$00                  
CODE_1294D0:        LDA $00                   
CODE_1294D2:        LDA $00                   
CODE_1294D4:        DEY                       
CODE_1294D5:        BNE CODE_1294D0           
CODE_1294D7:        DEX                       
CODE_1294D8:        BNE CODE_1294CE           
CODE_1294DA:        LDA #$B0                  
CODE_1294DC:        ORA $F3                   
CODE_1294DE:        STA $FF                   
CODE_1294E0:        LDA $F4                   
CODE_1294E2:        CMP #$14                  
CODE_1294E4:        BCC CODE_1294F5           
CODE_1294E6:        LDA #$00                  
CODE_1294E8:        STA $F4                   
CODE_1294EA:        INC $0242                 
CODE_1294ED:        LDA $024F                 
CODE_1294F0:        EOR #$01                  
CODE_1294F2:        STA $024F                 
CODE_1294F5:        LDA $0242                 
CODE_1294F8:        CMP #$2C                  
CODE_1294FA:        BCC CODE_1294BE           
CODE_1294FC:        JSR CODE_129510           
CODE_1294FF:        LDA $E6                   
CODE_129501:        CMP #$04                  
CODE_129503:        BCC CODE_1294BE           
CODE_129505:        LDA #$FF                  
CODE_129507:        STA $024B                 
CODE_12950A:        LDA #$01                  
CODE_12950C:        STA $024F                 
CODE_12950F:        RTL
                       
CODE_129510:        DEC $E5                   
CODE_129512:        BPL CODE_129525           
CODE_129514:        LDA #$01                  
CODE_129516:        STA $E5                   
CODE_129518:        LDA $FE                   
CODE_12951A:        AND #$0F                  
CODE_12951C:        DEC A                     
CODE_12951D:        BMI CODE_129523           
CODE_12951F:        STA $FE                   
CODE_129521:        BRA CODE_129525           

CODE_129523:        INC $E6                   
CODE_129525:        RTS
                       
CODE_129526:        DEC $E5                   
CODE_129528:        BPL CODE_129525           
CODE_12952A:        LDA #$01                  
CODE_12952C:        STA $E5                   
CODE_12952E:        LDA $FE                   
CODE_129530:        INC A                     
CODE_129531:        CMP #$10                  
CODE_129533:        BEQ CODE_129523           
CODE_129535:        STA $00FE                 
CODE_129538:        RTS
                       
CODE_129539:        JSR CODE_129526           
CODE_12953C:        RTL
                       
CODE_12953D:        LDA #$B0                  
CODE_12953F:        BRA CODE_129543           

CODE_129541:        LDA #$30                  
CODE_129543:        STA $FF                   
CODE_129545:        RTS
                       
CODE_129546:        JSL CODE_14F9F0           ; Clear all OAM.
CODE_12954A:        JSR CODE_12965D           
CODE_12954D:        LDA $E6                   
CODE_12954F:        JSL CODE_118776  

PNTR_129553:        dw CODE_129526
                    dw CODE_129559
                    dw CODE_1295D8
           
CODE_129559:        JSR CODE_1280D2                        
CODE_12955C:        LDA $14                   
CODE_12955E:        CMP #$01                  
CODE_129560:        BNE CODE_129586           
CODE_129562:        LDA $28                   
CODE_129564:        CMP #$20                  
CODE_129566:        BCC CODE_129586           
CODE_129568:        INC $00E6                 
CODE_12956B:        LDA #$A0                  
CODE_12956D:        STA $10                   
CODE_12956F:        LDX #$05                  
CODE_129571:        LDA #$20                  
CODE_129573:        STA $29,x                 
CODE_129575:        LDA #$A8                  
CODE_129577:        STA $33,x                 
CODE_129579:        LDA.w DATA_11AA5E,x               
CODE_12957C:        STA $3D,x                 
CODE_12957E:        LDA.w DATA_11AA64,x               
CODE_129581:        STA $47,x                 
CODE_129583:        DEX                       
CODE_129584:        BPL CODE_129571           
CODE_129586:        LDY #$A0                  
CODE_129588:        LDA $10                   
CODE_12958A:        AND #$38                  
CODE_12958C:        BNE CODE_12958F           
CODE_12958E:        DEY                       
CODE_12958F:        AND #$08                  
CODE_129591:        BNE CODE_129594           
CODE_129593:        DEY                       
CODE_129594:        STY $32                   
CODE_129596:        LDX #$05                  
CODE_129598:        LDY #$70                  
CODE_12959A:        STZ $00                   
CODE_12959C:        LDA $32                   
CODE_12959E:        CLC                       
CODE_12959F:        ADC.w DATA_11AA76,x               
CODE_1295A2:        STA $0801,y               
CODE_1295A5:        LDA.w DATA_11AA6A,x               
CODE_1295A8:        STA $0802,y               
CODE_1295AB:        LDA #$2B                  
CODE_1295AD:        STA $0803,y               
CODE_1295B0:        LDA $28                   
CODE_1295B2:        CLC                       
CODE_1295B3:        ADC.w DATA_11AA70,x               
CODE_1295B6:        STA $0800,y               
CODE_1295B9:        LDA $14                   
CODE_1295BB:        ADC #$00                  
CODE_1295BD:        BEQ CODE_1295C3           
CODE_1295BF:        LDA #$01                  
CODE_1295C1:        STA $00                   
CODE_1295C3:        PHY                       
CODE_1295C4:        TYA                       
CODE_1295C5:        LSR A                     
CODE_1295C6:        LSR A                     
CODE_1295C7:        TAY                       
CODE_1295C8:        LDA #$02                  
CODE_1295CA:        ORA $00                   
CODE_1295CC:        STA $0A20,y               
CODE_1295CF:        PLY                       
CODE_1295D0:        INY                       
CODE_1295D1:        INY                       
CODE_1295D2:        INY                       
CODE_1295D3:        INY                       
CODE_1295D4:        DEX                       
CODE_1295D5:        BPL CODE_12959A           
CODE_1295D7:        RTS
                       
CODE_1295D8:        LDA $10                   
CODE_1295DA:        BNE CODE_1295F5           
CODE_1295DC:        STA $040E                 
CODE_1295DF:        STA $0418                 
CODE_1295E2:        STA $2F                   
CODE_1295E4:        STA $10                   
CODE_1295E6:        LDA #$6F                  
CODE_1295E8:        STA $39                   
CODE_1295EA:        LDA #$E6                  
CODE_1295EC:        STA $43                   
CODE_1295EE:        LDA #$DA                  
CODE_1295F0:        STA $4D                   
CODE_1295F2:        INC $00E6                 
CODE_1295F5:        LDX #$05                  
CODE_1295F7:        STX $12                   
CODE_1295F9:        JSR CODE_129885           
CODE_1295FC:        JSR CODE_129880           
CODE_1295FF:        LDY #$F0                  
CODE_129601:        LDA $10                   
CODE_129603:        BEQ CODE_129612           
CODE_129605:        AND #$0F                  
CODE_129607:        CMP.w DATA_11AA82,x               
CODE_12960A:        BNE CODE_129614           
CODE_12960C:        LDA #$20                  
CODE_12960E:        STA $29,x                 
CODE_129610:        LDY #$A8                  
CODE_129612:        STY $33,x                 
CODE_129614:        TXA                       
CODE_129615:        ASL A                     
CODE_129616:        ASL A                     
CODE_129617:        ASL A                     
CODE_129618:        TAY                       
CODE_129619:        LDA $29,x                 
CODE_12961B:        CMP #$80                  
CODE_12961D:        BCS CODE_129623                   
CODE_12961F:        LDA #$F0                  
CODE_129621:        BNE CODE_12962B           
CODE_129623:        STA $0870,y               
CODE_129626:        STA $0874,y               
CODE_129629:        LDA $33,x                 
CODE_12962B:        STA $0871,y               
CODE_12962E:        CMP #$F0                  
CODE_129630:        BEQ CODE_129638           
CODE_129632:        CLC                       
CODE_129633:        ADC #$08                  
CODE_129635:        STA $0875,y               
CODE_129638:        LDA.w DATA_11AA7C,x               
CODE_12963B:        STA $0872,y               
CODE_12963E:        ORA #$10                  
CODE_129640:        STA $0876,y               
CODE_129643:        LDA #$23                  
CODE_129645:        STA $0873,y               
CODE_129648:        STA $0877,y               
CODE_12964B:        PHY                       
CODE_12964C:        TYA                       
CODE_12964D:        LSR A                     
CODE_12964E:        LSR A                     
CODE_12964F:        TAY                       
CODE_129650:        LDA #$00                  
CODE_129652:        STA $0A3C,y               
CODE_129655:        STA $0A3D,y               
CODE_129658:        PLY                       
CODE_129659:        DEX                       
CODE_12965A:        BPL CODE_1295F7           
CODE_12965C:        RTS
                       
CODE_12965D:        JSR CODE_129694           
CODE_129660:        INC $9B                   
CODE_129662:        LDA #$03                  
CODE_129664:        STA $00                   
CODE_129666:        LDA $9B                   
CODE_129668:        STA $01                   
CODE_12966A:        LDY #$1C                  
CODE_12966C:        LDX $00                   
CODE_12966E:        LDA.w DATA_11AA98,x               
CODE_129671:        TAX                       
CODE_129672:        INC $01                   
CODE_129674:        LDA $01                   
CODE_129676:        AND #$10                  
CODE_129678:        BEQ CODE_12967B           
CODE_12967A:        INX                       
CODE_12967B:        LDA #$01                  
CODE_12967D:        STA $02                   
CODE_12967F:        LDA.w DATA_11AA88,x               
CODE_129682:        STA $0812,y               
CODE_129685:        DEX                       
CODE_129686:        DEX                       
CODE_129687:        DEY                       
CODE_129688:        DEY                       
CODE_129689:        DEY                       
CODE_12968A:        DEY                       
CODE_12968B:        DEC $02                   
CODE_12968D:        BPL CODE_12967F           
CODE_12968F:        DEC $00                   
CODE_129691:        BPL CODE_12966C           
CODE_129693:        RTS
                       
CODE_129694:        LDY #$1F                  
CODE_129696:        LDA.w DATA_11AA3E,y               
CODE_129699:        STA $0810,y               
CODE_12969C:        DEY                       
CODE_12969D:        BPL CODE_129696           
CODE_12969F:        LDA #$02                  
CODE_1296A1:        STA $0A24                 
CODE_1296A4:        STA $0A25                 
CODE_1296A7:        STA $0A26                 
CODE_1296AA:        STA $0A27                 
CODE_1296AD:        STA $0A28                 
CODE_1296B0:        STA $0A29                 
CODE_1296B3:        STA $0A2A                 
CODE_1296B6:        STA $0A2B                 
CODE_1296B9:        RTS
                       
CODE_1296BA:        LDA #$00                  
CODE_1296BC:        STA $0631                 
CODE_1296BF:        LDY #$03                  
CODE_1296C1:        LDA $062D,y               
CODE_1296C4:        CMP $0631                 
CODE_1296C7:        BCC CODE_1296CF           
CODE_1296C9:        LDA $062D,y               
CODE_1296CC:        STA $0631                 
CODE_1296CF:        DEY                       
CODE_1296D0:        BPL CODE_1296C1           
CODE_1296D2:        LDX #$00                  
CODE_1296D4:        LDY #$03                  
CODE_1296D6:        LDA $062D,y               
CODE_1296D9:        CMP $0631                 
CODE_1296DC:        BNE CODE_1296E3           
CODE_1296DE:        TYA                       
CODE_1296DF:        STA $0597,x               
CODE_1296E2:        INX                       
CODE_1296E3:        DEY                       
CODE_1296E4:        BPL CODE_1296D6           
CODE_1296E6:        DEX                       
CODE_1296E7:        STX $059B                 
CODE_1296EA:        LDX #$00                  
CODE_1296EC:        LDA #$01                  
CODE_1296EE:        STA $0302,x               
CODE_1296F1:        INX                       
CODE_1296F2:        LDA #$29                  
CODE_1296F4:        STA $0302,x               
CODE_1296F7:        INX                       
CODE_1296F8:        LDA #$00                  
CODE_1296FA:        STA $0302,x               
CODE_1296FD:        INX                       
CODE_1296FE:        LDA #$1B                  
CODE_129700:        STA $0302,x               
CODE_129703:        INX                       
CODE_129704:        LDY #$00                  
CODE_129706:        LDA $062D,y               
CODE_129709:        JSR CODE_129820           
CODE_12970C:        TYA                       
CODE_12970D:        REP #$20                  
CODE_12970F:        AND #$00FF                
CODE_129712:        CMP #$00BF                
CODE_129715:        BEQ CODE_12971C           
CODE_129717:        ORA #$1500                
CODE_12971A:        BRA CODE_12971F           

CODE_12971C:        LDA #$14BE                
CODE_12971F:        STA $0302,x               
CODE_129722:        INX                       
CODE_129723:        INX                       
CODE_129724:        LDA $01                   
CODE_129726:        AND #$00FF                
CODE_129729:        ORA #$1500                
CODE_12972C:        STA $0302,x               
CODE_12972F:        INX                       
CODE_129730:        INX                       
CODE_129731:        LDA #$15FF                
CODE_129734:        STA $0302,x               
CODE_129737:        INX                       
CODE_129738:        INX                       
CODE_129739:        LDA #$15EF                
CODE_12973C:        STA $0302,x               
CODE_12973F:        INX                       
CODE_129740:        INX                       
CODE_129741:        LDA #$14BE                
CODE_129744:        STA $0302,x               
CODE_129747:        SEP #$20                  
CODE_129749:        LDY #$03                  
CODE_12974B:        LDA $062D,y               
CODE_12974E:        JSR CODE_129820           
CODE_129751:        TYA                       
CODE_129752:        REP #$20                  
CODE_129754:        AND #$00FF                
CODE_129757:        CMP #$00BF                
CODE_12975A:        BEQ CODE_129762           
CODE_12975C:        ORA #$1500                
CODE_12975F:        STA $0302,x               
CODE_129762:        INX                       
CODE_129763:        INX                       
CODE_129764:        LDA $01                   
CODE_129766:        AND #$00FF                
CODE_129769:        ORA #$1500                
CODE_12976C:        STA $0302,x               
CODE_12976F:        INX                       
CODE_129770:        INX                       
CODE_129771:        LDA #$15FF                
CODE_129774:        STA $0302,x               
CODE_129777:        INX                       
CODE_129778:        INX                       
CODE_129779:        LDA #$15EF                
CODE_12977C:        STA $0302,x               
CODE_12977F:        INX                       
CODE_129780:        INX                       
CODE_129781:        LDA #$14BE                
CODE_129784:        STA $0302,x               
CODE_129787:        SEP #$20                  
CODE_129789:        LDY #$02                  
CODE_12978B:        LDA $062D,y               
CODE_12978E:        JSR CODE_129820           
CODE_129791:        TYA                       
CODE_129792:        REP #$20                  
CODE_129794:        AND #$00FF                
CODE_129797:        CMP #$00BF                
CODE_12979A:        BEQ CODE_1297A2           
CODE_12979C:        ORA #$1500                
CODE_12979F:        STA $0302,x               
CODE_1297A2:        INX                       
CODE_1297A3:        INX                       
CODE_1297A4:        LDA $01                   
CODE_1297A6:        AND #$00FF                
CODE_1297A9:        ORA #$1500                
CODE_1297AC:        STA $0302,x               
CODE_1297AF:        INX                       
CODE_1297B0:        INX                       
CODE_1297B1:        LDA #$15FF                
CODE_1297B4:        STA $0302,x               
CODE_1297B7:        INX                       
CODE_1297B8:        INX                       
CODE_1297B9:        LDA #$15EF                
CODE_1297BC:        STA $0302,x               
CODE_1297BF:        INX                       
CODE_1297C0:        INX                       
CODE_1297C1:        LDA #$14BE                
CODE_1297C4:        STA $0302,x               
CODE_1297C7:        SEP #$20                  
CODE_1297C9:        LDY #$01                  
CODE_1297CB:        LDA $062D,y               
CODE_1297CE:        JSR CODE_129820           
CODE_1297D1:        TYA                       
CODE_1297D2:        REP #$20                  
CODE_1297D4:        AND #$00FF                
CODE_1297D7:        CMP #$00BF                
CODE_1297DA:        BEQ CODE_1297E2           
CODE_1297DC:        ORA #$1500                
CODE_1297DF:        STA $0302,x               
CODE_1297E2:        INX                       
CODE_1297E3:        INX                       
CODE_1297E4:        LDA $01                   
CODE_1297E6:        AND #$00FF                
CODE_1297E9:        ORA #$1500                
CODE_1297EC:        STA $0302,x               
CODE_1297EF:        INX                       
CODE_1297F0:        INX                       
CODE_1297F1:        SEP #$20                  
CODE_1297F3:        LDA #$FF                  
CODE_1297F5:        STA $0302,x               
CODE_1297F8:        LDA #$3C                  
CODE_1297FA:        STA $059D                 
CODE_1297FD:        RTS
                       
CODE_1297FE:        DEC $059D                 
CODE_129801:        BPL CODE_12981F           
CODE_129803:        LDA #$3C                  
CODE_129805:        STA $059D                 
CODE_129808:        LDY $059C                 
CODE_12980B:        LDA $0597,y               
CODE_12980E:        CLC                       
CODE_12980F:        ADC #$06                  
CODE_129811:        STA $0011                 
CODE_129814:        DEC $059C                 
CODE_129817:        BPL CODE_12981F           
CODE_129819:        LDA $059B                 
CODE_12981C:        STA $059C                 
CODE_12981F:        RTS
                       
CODE_129820:        LDY #$C0                  
CODE_129822:        CMP #$0A                  
CODE_129824:        BCC CODE_12982B           
CODE_129826:        SBC #$0A                  
CODE_129828:        INY                       
CODE_129829:        BRA CODE_129822           

CODE_12982B:        ORA #$C0                  
CODE_12982D:        CPY #$C0                  
CODE_12982F:        BNE CODE_129833           
CODE_129831:        LDY #$BF                  
CODE_129833:        CPY #$CA                  
CODE_129835:        BCC CODE_12983B           
CODE_129837:        LDY #$C9                  
CODE_129839:        LDA #$C9                  
CODE_12983B:        STA $01                   
CODE_12983D:        RTS
                       
DATA_12983E:        db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ; \ Empty data.
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |      
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF                              ; /

CODE_129880:        TXA
CODE_129881:        CLC          
CODE_129882:        ADC #$0A                  
CODE_129884:        TAX                       
CODE_129885:        LDA $3D,x                 
CODE_129887:        CLC                       
CODE_129888:        ADC $04CD,x               
CODE_12988B:        PHA                       
CODE_12988C:        ASL A                     
CODE_12988D:        ASL A                     
CODE_12988E:        ASL A                     
CODE_12988F:        ASL A                     
CODE_129890:        STA $01                   
CODE_129892:        PLA                       
CODE_129893:        LSR A                     
CODE_129894:        LSR A                     
CODE_129895:        LSR A                     
CODE_129896:        LSR A                     
CODE_129897:        CMP #$08                  
CODE_129899:        BCC CODE_12989D           
CODE_12989B:        ORA #$F0                  
CODE_12989D:        STA $00                   
CODE_12989F:        LDY #$00                  
CODE_1298A1:        ASL A                     
CODE_1298A2:        BCC CODE_1298A5           
CODE_1298A4:        DEY                       
CODE_1298A5:        STY $02                   
CODE_1298A7:        LDA $0408,x               
CODE_1298AA:        CLC                       
CODE_1298AB:        ADC $01                   
CODE_1298AD:        STA $0408,x               
CODE_1298B0:        LDA $29,x                 
CODE_1298B2:        ADC $00                   
CODE_1298B4:        STA $29,x                 
CODE_1298B6:        LSR $01                   
CODE_1298B8:        LDA $15,x                 
CODE_1298BA:        ADC $02                   
CODE_1298BC:        STA $15,x                 
CODE_1298BE:        LDX $12                   
CODE_1298C0:        RTS
                       
CODE_1298C1:        LDA $044A,x               
CODE_1298C4:        BNE CODE_1298C9           
CODE_1298C6:        JSR CODE_129885           
CODE_1298C9:        JSR CODE_129880           
CODE_1298CC:        LDA $47,x                 
CODE_1298CE:        BMI CODE_1298D4           
CODE_1298D0:        CMP #$3E                  
CODE_1298D2:        BCS CODE_1298D8                   
CODE_1298D4:        INC $47,x                 
CODE_1298D6:        INC $47,x                 
CODE_1298D8:        RTS
                       
CODE_1298D9:        LDA #$01                  
CODE_1298DB:        BNE CODE_1298DF           
CODE_1298DD:        LDA #$00                  
CODE_1298DF:        PHA                       
CODE_1298E0:        LDY #$08                  
CODE_1298E2:        LDA $0051,y               
CODE_1298E5:        BEQ CODE_1298F8           
CODE_1298E7:        LDA $0090,y               
CODE_1298EA:        CMP #$3C                  
CODE_1298EC:        BNE CODE_1298F8           
CODE_1298EE:        LDA #$05                  
CODE_1298F0:        STA $0051,y               
CODE_1298F3:        LDA #$20                  
CODE_1298F5:        STA $0086,y               
CODE_1298F8:        DEY                       
CODE_1298F9:        BPL CODE_1298E2           
CODE_1298FB:        JSR CODE_129AA5           
CODE_1298FE:        BPL CODE_129905           
CODE_129900:        LDY #$08                  
CODE_129902:        JSR CODE_129AB4           
CODE_129905:        LDA #$00                  
CODE_129907:        STA $04BE                 
CODE_12990A:        STA $04B3                 
CODE_12990D:        LDX $00                   
CODE_12990F:        PLA                       
CODE_129910:        STA $0477,x               
CODE_129913:        LDA #$3C                  
CODE_129915:        STA $90,x                 
CODE_129917:        LDA $28                   
CODE_129919:        ADC #$08                  
CODE_12991B:        AND #$F0                  
CODE_12991D:        STA $29,x                 
CODE_12991F:        LDA $14                   
CODE_129921:        ADC #$00                  
CODE_129923:        STA $15,x                 
CODE_129925:        LDY #$00                  
CODE_129927:        LDA $0536                 
CODE_12992A:        CMP #$01                  
CODE_12992C:        BEQ CODE_129930           
CODE_12992E:        LDY #$01                  
CODE_129930:        TYA                       
CODE_129931:        CLC                       
CODE_129932:        ADC $32                   
CODE_129934:        STA $33,x                 
CODE_129936:        LDA $1E                   
CODE_129938:        ADC #$00                  
CODE_12993A:        STA $1F,x                 
CODE_12993C:        LDA #$41                  
CODE_12993E:        STA $65,x                 
CODE_129940:        LDX $12                   
CODE_129942:        RTS
                       
CODE_129943:        PLA                       
CODE_129944:        RTS
                       
CODE_129945:        JSR CODE_129AA9           
CODE_129948:        BMI CODE_12996F           
CODE_12994A:        LDX $00                   
CODE_12994C:        LDA #$45                  
CODE_12994E:        STA $90,x                 
CODE_129950:        LDA $04C1                 
CODE_129953:        ADC #$D0                  
CODE_129955:        STA $29,x                 
CODE_129957:        LDA $04BF                 
CODE_12995A:        ADC #$00                  
CODE_12995C:        STA $15,x                 
CODE_12995E:        LDA $CB                   
CODE_129960:        ADC #$E0                  
CODE_129962:        STA $33,x                 
CODE_129964:        LDA $CA                   
CODE_129966:        ADC #$00                  
CODE_129968:        STA $1F,x                 
CODE_12996A:        JSR CODE_1299A4           
CODE_12996D:        LDX $12                   
CODE_12996F:        RTS
                       
CODE_129970:        LDA #$00                  
CODE_129972:        STA $86,x                 
CODE_129974:        LDA #$00                  
CODE_129976:        STA $79,x                 
CODE_129978:        LDA #$00                  
CODE_12997A:        STA $B1,x                 
CODE_12997C:        STA $042F,x               
CODE_12997F:        STA $A8,x                 
CODE_129981:        STA $9F,x                 
CODE_129983:        STA $044A,x               
CODE_129986:        STA $5B,x                 
CODE_129988:        STA $0438,x               
CODE_12998B:        STA $0453,x               
CODE_12998E:        STA $04CD,x               
CODE_129991:        STA $04D7,x               
CODE_129994:        STA $045C,x               
CODE_129997:        STA $0477,x               
CODE_12999A:        STA $0480,x               
CODE_12999D:        STA $0465,x               
CODE_1299A0:        STA $47,x                 
CODE_1299A2:        STA $3D,x                 
CODE_1299A4:        LDY $90,x                 
CODE_1299A6:        LDA.w DATA_11CC45,y               
CODE_1299A9:        AND #$7F                  
CODE_1299AB:        STA $65,x                 
CODE_1299AD:        LDA.w DATA_11CC8C,y               
CODE_1299B0:        STA $046E,x               
CODE_1299B3:        LDA.w DATA_11CD1A,y               
CODE_1299B6:        STA $0489,x               
CODE_1299B9:        LDA.w DATA_11CCD3,y               
CODE_1299BC:        STA $0492,x               
CODE_1299BF:        RTS
                       
CODE_1299C0:        LDA $65,x                 
CODE_1299C2:        AND #$FC                  
CODE_1299C4:        ORA #$01                  
CODE_1299C6:        STA $65,x                 
CODE_1299C8:        LDA #$05                  
CODE_1299CA:        STA $51,x                 
CODE_1299CC:        STA $9F,x                 
CODE_1299CE:        LDA #$1F                  
CODE_1299D0:        STA $86,x                 
CODE_1299D2:        LDX $12                   
CODE_1299D4:        RTS
                       
CODE_1299D5:        LDA #$FF                  
CODE_1299D7:        STA $0441,x               
CODE_1299DA:        RTS
                       
CODE_1299DB:        LDX $E9                   
CODE_1299DD:        JSR CODE_1299E8           
CODE_1299E0:        LDA $E6                   
CODE_1299E2:        CLC                       
CODE_1299E3:        ADC $E5                   
CODE_1299E5:        STA $E7                   
CODE_1299E7:        RTS
                       
CODE_1299E8:        STY $02F5                 
CODE_1299EB:        LDA $0628                 
CODE_1299EE:        BEQ CODE_1299F4           
CODE_1299F0:        LDA #$00                  
CODE_1299F2:        BRA CODE_1299FA           

CODE_1299F4:        LDY $0534                 
CODE_1299F7:        LDA.w DATA_11AB11,y               
CODE_1299FA:        CLC                       
CODE_1299FB:        ADC.w DATA_11AAFB,x               
CODE_1299FE:        STA $02                   
CODE_129A00:        LDA.w DATA_11AAF0,x               
CODE_129A03:        STA $01                   
CODE_129A05:        LDA.w DATA_11AB06,x               
CODE_129A08:        STA $03                   
CODE_129A0A:        LDY $02F5                 
CODE_129A0D:        RTS
                       
CODE_129A0E:        LDA #$01                  
CODE_129A10:        LDY $00                   
CODE_129A12:        CPY #$92                  
CODE_129A14:        BEQ CODE_129A1F           
CODE_129A16:        CPY #$93                  
CODE_129A18:        BEQ CODE_129A1D           
CODE_129A1A:        LDA #$00                  
CODE_129A1C:        RTS
                       
CODE_129A1D:        LDA #$08                  
CODE_129A1F:        STA $46                   
CODE_129A21:        LDA $04E0                 
CODE_129A24:        BNE CODE_129A2D           
CODE_129A26:        LDA $32                   
CODE_129A28:        AND #$10                  
CODE_129A2A:        STA $04EC                 
CODE_129A2D:        LDA $32                   
CODE_129A2F:        AND #$0F                  
CODE_129A31:        TAY                       
CODE_129A32:        LDA $04EC                 
CODE_129A35:        EOR $32                   
CODE_129A37:        AND #$10                  
CODE_129A39:        BEQ CODE_129A49           
CODE_129A3B:        CPY #$0C                  
CODE_129A3D:        BCC CODE_129A47           
CODE_129A3F:        LDA #$00                  ; \ Don't remain in air.
CODE_129A41:        STA $82                   ; /
CODE_129A43:        JSL CODE_14E39F           ; Die.
CODE_129A47:        LDY #$04                  
CODE_129A49:        CPY #$04                  
CODE_129A4B:        BCS CODE_129A4F                   
CODE_129A4D:        LDY #$01                  
CODE_129A4F:        TYA                       
CODE_129A50:        DEX                       
CODE_129A51:        RTS
                       
CODE_129A52:        LDA $85                   
CODE_129A54:        BNE CODE_129A7F           
CODE_129A56:        LDA $04C3                 
CODE_129A59:        SEC                       
CODE_129A5A:        SBC #$10                  
CODE_129A5C:        BCC CODE_129A80           
CODE_129A5E:        STA $04C3                 
CODE_129A61:        LDA #$7F                  
CODE_129A63:        STA $85                   
CODE_129A65:        LDA $0428                 
CODE_129A68:        SEC                       
CODE_129A69:        SBC $0429                 
CODE_129A6C:        ASL A                     
CODE_129A6D:        ASL A                     
CODE_129A6E:        STA $3C                   
CODE_129A70:        LDA #$C0                  
CODE_129A72:        LDY $46                   
CODE_129A74:        BPL CODE_129A78           
CODE_129A76:        LDA #$00                  
CODE_129A78:        STA $46                   
CODE_129A7A:        LDA #$04                  
CODE_129A7C:        STA $1DE0                 
CODE_129A7F:        RTS
                       
CODE_129A80:        LDA #$C0                  ; \ Rise for a bit while dying.
CODE_129A82:        STA $46                   ; /
CODE_129A84:        LDA #$20                  ; \ Remain in air for a couple of frames.
CODE_129A86:        STA $82                   ; /
CODE_129A88:        LDY $12                   
CODE_129A8A:        BMI CODE_129A90           
CODE_129A8C:        LSR A                     
CODE_129A8D:        STA $0438,y               
CODE_129A90:        JSL CODE_14E39F           ; Die.
CODE_129A94:        RTS
                       
CODE_129A95:        LDY $0441,x               
CODE_129A98:        BMI CODE_129AA0           
CODE_129A9A:        LDA ($CC),y               
CODE_129A9C:        AND #$7F                  
CODE_129A9E:        STA ($CC),y               
CODE_129AA0:        LDA #$00                  
CODE_129AA2:        STA $51,x                 
CODE_129AA4:        RTS
                       
CODE_129AA5:        LDY #$08                  
CODE_129AA7:        BNE CODE_129AAB           
CODE_129AA9:        LDY #$05                  
CODE_129AAB:        LDA $0051,y               
CODE_129AAE:        BEQ CODE_129AB4           
CODE_129AB0:        DEY                       
CODE_129AB1:        BPL CODE_129AAB           
CODE_129AB3:        RTS
                       
CODE_129AB4:        LDA #$01                  
CODE_129AB6:        STA $0051,y               
CODE_129AB9:        LSR A                     
CODE_129ABA:        STA $049B,y               
CODE_129ABD:        LDA #$01                  
CODE_129ABF:        STA $0090,y               
CODE_129AC2:        LDA $29,x                 
CODE_129AC4:        ADC #$05                  
CODE_129AC6:        STA $0029,y               
CODE_129AC9:        LDA $15,x                 
CODE_129ACB:        ADC #$00                  
CODE_129ACD:        STA $0015,y               
CODE_129AD0:        LDA $33,x                 
CODE_129AD2:        STA $0033,y               
CODE_129AD5:        LDA $1F,x                 
CODE_129AD7:        STA $001F,y               
CODE_129ADA:        STY $00                   
CODE_129ADC:        TYA                       
CODE_129ADD:        TAX                       
CODE_129ADE:        JSR CODE_129970           
CODE_129AE1:        JSR CODE_1299D5           
CODE_129AE4:        LDX $12                   
CODE_129AE6:        RTS
                       
DATA_129AE7:        db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ; \ Empty.
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF                                  ; /

CODE_129B00:        LDA $04AE             
CODE_129B03:        BEQ CODE_129B09           
CODE_129B05:        JSR CODE_129C64           
CODE_129B08:        RTL
                       
CODE_129B09:        INC $04AE                 
CODE_129B0C:        STA $0593                 
CODE_129B0F:        STA $04C5                 
CODE_129B12:        STA $04C7                 
CODE_129B15:        STA $04B5                 
CODE_129B18:        STA $04B4                 
CODE_129B1B:        STA $04B9                 
CODE_129B1E:        STA $04B6                 
CODE_129B21:        STA $04FB                 
CODE_129B24:        STA $0425                 
CODE_129B27:        STA $3C                   
CODE_129B29:        STA $85                   
CODE_129B2B:        STA $9C                   
CODE_129B2D:        STA $82                   
CODE_129B2F:        STA $04C6                 
CODE_129B32:        STA $04FE                 
CODE_129B35:        STA $04CB                 
CODE_129B38:        STA $04CA                 
CODE_129B3B:        STA $04E0                 
CODE_129B3E:        STA $04B8                 
CODE_129B41:        LDY #$1B                  
CODE_129B43:        LDA.w DATA_11AB47,y               
CODE_129B46:        STA $1F00,y               
CODE_129B49:        DEY                       
CODE_129B4A:        BPL CODE_129B43           
CODE_129B4C:        LDY $8F                   
CODE_129B4E:        LDA.w DATA_119780,y               
CODE_129B51:        STA $1F00                 
CODE_129B54:        LDA.w DATA_119788,y               
CODE_129B57:        STA $1F07                 
CODE_129B5A:        LDA.w DATA_119784,y               
CODE_129B5D:        STA $1F0E                 
CODE_129B60:        LDA.w DATA_11978C,y               
CODE_129B63:        STA $1F15                 
CODE_129B66:        LDA #$B6                  
CODE_129B68:        STA $0585                 
CODE_129B6B:        LDA $0536                 ; \ If the current room is the first room...
CODE_129B6E:        ORA $0533                 ;  | of the first level...
CODE_129B71:        BNE CODE_129B78           ; / ...don't branch, otherwise do branch.
CODE_129B73:        LDA #$23                  ; \ Falling sound.
CODE_129B75:        STA $1DE0                 ; /
CODE_129B78:        LDA $04AF                 
CODE_129B7B:        BNE CODE_129B80           
CODE_129B7D:        JMP CODE_129BFF           

CODE_129B80:        PHA                       
CODE_129B81:        LDX #$08                  
CODE_129B83:        LDA #$00                  
CODE_129B85:        STA $A8,x                 
CODE_129B87:        DEX                       
CODE_129B88:        BPL CODE_129B83           
CODE_129B8A:        PLA                       
CODE_129B8B:        LDX #$05                  
CODE_129B8D:        STX $12                   
CODE_129B8F:        CMP #$3F                  
CODE_129B91:        BEQ CODE_129BFF           
CODE_129B93:        STA $90,x                 
CODE_129B95:        LDY #$01                  
CODE_129B97:        STY $56                   
CODE_129B99:        LDY #$FF                  
CODE_129B9B:        STY $0446                 
CODE_129B9E:        CMP #$38                  
CODE_129BA0:        BNE CODE_129BC0           
CODE_129BA2:        STA $B1,x                 
CODE_129BA4:        STA $04C8,x               
CODE_129BA7:        STA $0477,x               
CODE_129BAA:        LDA #$00                  
CODE_129BAC:        STA $15,x                 
CODE_129BAE:        STA $1F,x                 
CODE_129BB0:        JSR CODE_129F7A           
CODE_129BB3:        LDA #$F0                  
CODE_129BB5:        STA $47,x                 
CODE_129BB7:        ASL A                     
CODE_129BB8:        STA $33,x                 
CODE_129BBA:        LDA #$78                  
CODE_129BBC:        STA $29,x                 
CODE_129BBE:        BNE CODE_129BFF           
CODE_129BC0:        PHA                       
CODE_129BC1:        STX $042D                 
CODE_129BC4:        JSR CODE_129F96           
CODE_129BC7:        LDA #$01                  
CODE_129BC9:        STA $A8,x                 
CODE_129BCB:        STA $9C                   
CODE_129BCD:        JSR CODE_12B692           
CODE_129BD0:        PLA                       
CODE_129BD1:        CMP #$3D                  
CODE_129BD3:        BNE CODE_129BFF           
CODE_129BD5:        INC $79,x                 
CODE_129BD7:        DEX                       
CODE_129BD8:        STX $12                   
CODE_129BDA:        LDA #$01                  
CODE_129BDC:        STA $51,x                 
CODE_129BDE:        LDA #$17                  
CODE_129BE0:        STA $90,x                 
CODE_129BE2:        JSR CODE_129F96           
CODE_129BE5:        LDA #$00                  
CODE_129BE7:        STA $0595                 
CODE_129BEA:        LDA $CB                   
CODE_129BEC:        STA $33,x                 
CODE_129BEE:        LDA $CA                   
CODE_129BF0:        STA $1F,x                 
CODE_129BF2:        LDA $04C1                 
CODE_129BF5:        STA $29,x                 
CODE_129BF7:        LDA $04BF                 
CODE_129BFA:        STA $15,x                 
CODE_129BFC:        JSR CODE_12A09C           
CODE_129BFF:        STZ $CC                   
CODE_129C01:        LDA #$1B                  
CODE_129C03:        STA $CD                   
CODE_129C05:        LDA $EB                   
CODE_129C07:        BNE CODE_129C3B           
CODE_129C09:        LDA #$14                  
CODE_129C0B:        STA $09                   
CODE_129C0D:        LDA $CB                   
CODE_129C0F:        SBC #$30                  
CODE_129C11:        AND #$F0                  
CODE_129C13:        STA $05                   
CODE_129C15:        LDA $CA                   
CODE_129C17:        SBC #$00                  
CODE_129C19:        STA $06                   
CODE_129C1B:        LDA $06                   
CODE_129C1D:        CMP #$0B                  
CODE_129C1F:        BCS CODE_129C27                   
CODE_129C21:        JSR CODE_129E26           
CODE_129C24:        JSR CODE_129E26           
CODE_129C27:        JSR CODE_129C2F           
CODE_129C2A:        DEC $09                   
CODE_129C2C:        BPL CODE_129C1B           
CODE_129C2E:        RTL
                       
CODE_129C2F:        LDA $05                   
CODE_129C31:        CLC                       
CODE_129C32:        ADC #$10                  
CODE_129C34:        STA $05                   
CODE_129C36:        BCC CODE_129C3A           
CODE_129C38:        INC $06                   
CODE_129C3A:        RTS
                       
CODE_129C3B:        LDA $04C1                 
CODE_129C3E:        SEC                       
CODE_129C3F:        SBC #$30                  
CODE_129C41:        AND #$F0                  
CODE_129C43:        STA $05                   
CODE_129C45:        LDA $04BF                 
CODE_129C48:        SBC #$00                  
CODE_129C4A:        STA $06                   
CODE_129C4C:        LDA #$17                  
CODE_129C4E:        STA $09                   
CODE_129C50:        LDA $06                   
CODE_129C52:        CMP #$0B                  
CODE_129C54:        BCS CODE_129C5C                   
CODE_129C56:        JSR CODE_129D92           
CODE_129C59:        JSR CODE_129D92           
CODE_129C5C:        JSR CODE_129C2F           
CODE_129C5F:        DEC $09                   
CODE_129C61:        BPL CODE_129C50           
CODE_129C63:        RTL
                       
CODE_129C64:        JSR CODE_129D6A           
CODE_129C67:        LDA $0500                 
CODE_129C6A:        BEQ CODE_129C82           
CODE_129C6C:        LDA $10                   
CODE_129C6E:        AND #$1F                  
CODE_129C70:        BNE CODE_129C7C           
CODE_129C72:        LDY $079C                 
CODE_129C75:        BNE CODE_129C7C           
CODE_129C77:        LDY #$2F                  
CODE_129C79:        STY $1DE0                 
CODE_129C7C:        LSR A                     
CODE_129C7D:        BCC CODE_129C82           
CODE_129C7F:        DEC $0500                 
CODE_129C82:        LDA $04C1                 
CODE_129C85:        CLC                       
CODE_129C86:        ADC #$FF                  
CODE_129C88:        STA $04C2                 
CODE_129C8B:        LDA $04BF                 
CODE_129C8E:        ADC #$00                  
CODE_129C90:        STA $04C0                 
CODE_129C93:        LDX #$08                  
CODE_129C95:        STX $12                   
CODE_129C97:        TXA                       
CODE_129C98:        CLC                       
CODE_129C99:        ADC $0400                 
CODE_129C9C:        ASL A                     
CODE_129C9D:        TAY                       
CODE_129C9E:        REP #$20                  
CODE_129CA0:        LDA.w DATA_11CC23,y               
CODE_129CA3:        LDY $A8,x                 
CODE_129CA5:        BEQ CODE_129CBB           
CODE_129CA7:        LDY $04BE                 
CODE_129CAA:        CPY #$19                  
CODE_129CAC:        BCS CODE_129CBB                   
CODE_129CAE:        LDA #$0070                
CODE_129CB1:        LDY $90,x                 
CODE_129CB3:        CMP #$0038                
CODE_129CB6:        BNE CODE_129CBB           
CODE_129CB8:        LDA #$0020                
CODE_129CBB:        STA $02F6                 
CODE_129CBE:        SEP #$20                  
CODE_129CC0:        LDA $51,x                 
CODE_129CC2:        CMP #$02                  
CODE_129CC4:        BCS CODE_129CD1                   
CODE_129CC6:        LDA $90,x                 
CODE_129CC8:        CMP #$32                  
CODE_129CCA:        BCS CODE_129CD1                   
CODE_129CCC:        LDA $0500                 
CODE_129CCF:        BNE CODE_129CDF           
CODE_129CD1:        LDA $86,x                 
CODE_129CD3:        BEQ CODE_129CD7           
CODE_129CD5:        DEC $86,x                 
CODE_129CD7:        LDA $0453,x               
CODE_129CDA:        BEQ CODE_129CDF           
CODE_129CDC:        DEC $0453,x               
CODE_129CDF:        LDA $045C,x               
CODE_129CE2:        BEQ CODE_129CE7           
CODE_129CE4:        DEC $045C,x               
CODE_129CE7:        LDA $0438,x               
CODE_129CEA:        BEQ CODE_129CF4           
CODE_129CEC:        LDA $10                   
CODE_129CEE:        LSR A                     
CODE_129CEF:        BCC CODE_129CF4           
CODE_129CF1:        DEC $0438,x               
CODE_129CF4:        JSR CODE_129D21           
CODE_129CF7:        JSR CODE_12BB60           
CODE_129CFA:        JSR CODE_129D50           
CODE_129CFD:        LDX $12                   
CODE_129CFF:        DEX                       
CODE_129D00:        BPL CODE_129C95           
CODE_129D02:        LDA $0628                 
CODE_129D05:        BNE CODE_129D20           
CODE_129D07:        LDA $04B9                 
CODE_129D0A:        BEQ CODE_129D20           
CODE_129D0C:        SEC                       
CODE_129D0D:        SBC #$47                  
CODE_129D0F:        JSL CODE_118776  

PNTR_129D13:        dw CODE_12AA48
                    dw CODE_12AA79
                    dw CODE_129D1B
                    dw CODE_12DAF6          

CODE_129D1B:        LDA #$00                  
CODE_129D1D:        STA $04B9                 
CODE_129D20:        RTS
                       
CODE_129D21:        LDY #$00                  
CODE_129D23:        JSR CODE_129D27           
CODE_129D26:        INY                       
CODE_129D27:        LDA $0585                 
CODE_129D2A:        ASL A                     
CODE_129D2B:        ASL A                     
CODE_129D2C:        SEC                       
CODE_129D2D:        ADC $0585                 
CODE_129D30:        STA $0585                 
CODE_129D33:        ASL $0586                 
CODE_129D36:        LDA #$20                  
CODE_129D38:        BIT $0586                 
CODE_129D3B:        BCC CODE_129D41           
CODE_129D3D:        BEQ CODE_129D46           
CODE_129D3F:        BNE CODE_129D43           
CODE_129D41:        BNE CODE_129D46           
CODE_129D43:        INC $0586                 
CODE_129D46:        LDA $0586                 
CODE_129D49:        EOR $0585                 
CODE_129D4C:        STA $0587,y               
CODE_129D4F:        RTS
                       
CODE_129D50:        LDA $51,x                 ; \ Load sprite status.
CODE_129D52:        JSL CODE_118776           ; / Execute pointer.

PNTR_129D56:        dw CODE_129D20                          ; 00 - Non-existant sprite, init. (Return.)
                    dw CODE_12A84C                          ; 01 - Main routine.
                    dw CODE_12A024                          ; 02 - Sprite falling off screen.
                    dw CODE_12A164                          ; 03 - Flat
                    dw CODE_12A2BF                          ; 04 - Explode
                    dw CODE_12A483                          ; 05 - Disappear in a puff of smoke
                    dw CODE_12A6AB                          ; 06 - Dissolving sand
                    dw CODE_12A276                          ; 07 - Stop interacting
                    dw CODE_12A1AC                          ; 08 - Disappear in two puffs of smoke
                    dw CODE_12A0C2                          ; 09 - Disappear abruptly

CODE_129D6A:        LDA $04B8                 
CODE_129D6D:        BNE CODE_129DC0           
CODE_129D6F:        LDA $EB                   
CODE_129D71:        JSL CODE_118776           

PNTR_129D75:        dw CODE_129E02
                    dw CODE_129D79       

CODE_129D79:        LDY $6E                   
CODE_129D7B:        LDA $04C1                 
CODE_129D7E:        CLC                       
CODE_129D7F:        ADC.w DATA_11978F,y         
CODE_129D82:        AND #$F0                  
CODE_129D84:        STA $05                   
CODE_129D86:        LDA $04BF                 
CODE_129D89:        ADC.w DATA_119791,y         
CODE_129D8C:        STA $06                   
CODE_129D8E:        CMP #$0A                  
CODE_129D90:        BCS CODE_129DC0           
CODE_129D92:        LDA $0628                 
CODE_129D95:        CMP #$02                  
CODE_129D97:        BEQ CODE_129DC0           
CODE_129D99:        LDX #$00                  
CODE_129D9B:        STX $00                   
CODE_129D9D:        CPX $06                   
CODE_129D9F:        BEQ CODE_129DAD           
CODE_129DA1:        LDA $00                   
CODE_129DA3:        TAY                       
CODE_129DA4:        CLC                       
CODE_129DA5:        ADC ($CC),y               
CODE_129DA7:        STA $00                   
CODE_129DA9:        INX                       
CODE_129DAA:        JMP CODE_129D9D           

CODE_129DAD:        LDY $00                   
CODE_129DAF:        LDA ($CC),y               
CODE_129DB1:        STA $01                   
CODE_129DB3:        LDX #$FF                  
CODE_129DB5:        DEY                       
CODE_129DB6:        INY                       
CODE_129DB7:        INY                       
CODE_129DB8:        INX                       
CODE_129DB9:        INX                       
CODE_129DBA:        CPX $01                   
CODE_129DBC:        BCC CODE_129DC1           
CODE_129DBE:        LDX $12                   
CODE_129DC0:        RTS
                       
CODE_129DC1:        LDA ($CC),y               
CODE_129DC3:        BMI CODE_129DB6           
CODE_129DC5:        INY                       
CODE_129DC6:        LDA ($CC),y               
CODE_129DC8:        DEY                       
CODE_129DC9:        AND #$F0                  
CODE_129DCB:        CMP $05                   
CODE_129DCD:        BNE CODE_129DB6           
CODE_129DCF:        LDA ($CC),y               
CODE_129DD1:        CMP #$5C                  
CODE_129DD3:        BCS CODE_129DDD                   
CODE_129DD5:        CMP #$47                  
CODE_129DD7:        BCC CODE_129DDD           
CODE_129DD9:        STA $04B9                 
CODE_129DDC:        RTS
                       
CODE_129DDD:        LDX #$04                  
CODE_129DDF:        LDA $51,x                 
CODE_129DE1:        BEQ CODE_129DE7           
CODE_129DE3:        DEX                       
CODE_129DE4:        BPL CODE_129DDF           
CODE_129DE6:        RTS
                       
CODE_129DE7:        STX $12                   
CODE_129DE9:        LDA $05                   
CODE_129DEB:        STA $29,x                 
CODE_129DED:        LDA $06                   
CODE_129DEF:        STA $15,x                 
CODE_129DF1:        INY                       
CODE_129DF2:        LDA ($CC),y               
CODE_129DF4:        DEY                       
CODE_129DF5:        ASL A                     
CODE_129DF6:        ASL A                     
CODE_129DF7:        ASL A                     
CODE_129DF8:        ASL A                     
CODE_129DF9:        STA $33,x                 
CODE_129DFB:        LDA #$00                  
CODE_129DFD:        STA $1F,x                 
CODE_129DFF:        JMP CODE_129E8C           

CODE_129E02:        LDA $10                   
CODE_129E04:        AND #$01                  
CODE_129E06:        TAY                       
CODE_129E07:        INY                       
CODE_129E08:        LDA $D8                   
CODE_129E0A:        BEQ CODE_129E11           
CODE_129E0C:        AND #$03                  
CODE_129E0E:        EOR #$03                  
CODE_129E10:        TAY                       
CODE_129E11:        LDA $CB                   
CODE_129E13:        CLC                       
CODE_129E14:        ADC.w DATA_11978F,y               
CODE_129E17:        AND #$F0                  
CODE_129E19:        STA $05                   
CODE_129E1B:        LDA $CA                   
CODE_129E1D:        ADC.w DATA_119791,y               
CODE_129E20:        STA $06                   
CODE_129E22:        CMP #$0A                  
CODE_129E24:        BCS CODE_129DC0                   
CODE_129E26:        LDX #$00                  
CODE_129E28:        STX $00                   
CODE_129E2A:        CPX $06                   
CODE_129E2C:        BEQ CODE_129E3A           
CODE_129E2E:        LDA $00                   
CODE_129E30:        TAY                       
CODE_129E31:        CLC                       
CODE_129E32:        ADC ($CC),y               
CODE_129E34:        STA $00                   
CODE_129E36:        INX                       
CODE_129E37:        JMP CODE_129E2A           

CODE_129E3A:        LDY $00                   
CODE_129E3C:        LDA ($CC),y               
CODE_129E3E:        STA $01                   
CODE_129E40:        LDX #$FF                  
CODE_129E42:        DEY                       
CODE_129E43:        INY                       
CODE_129E44:        INY                       
CODE_129E45:        INX                       
CODE_129E46:        INX                       
CODE_129E47:        CPX $01                   
CODE_129E49:        BCC CODE_129E4E           
CODE_129E4B:        LDX $12                   
CODE_129E4D:        RTS
                       
CODE_129E4E:        LDA ($CC),y               
CODE_129E50:        BMI CODE_129E43           
CODE_129E52:        INY                       
CODE_129E53:        LDA ($CC),y               
CODE_129E55:        DEY                       
CODE_129E56:        ASL A                     
CODE_129E57:        ASL A                     
CODE_129E58:        ASL A                     
CODE_129E59:        ASL A                     
CODE_129E5A:        CMP $05                   
CODE_129E5C:        BNE CODE_129E43           
CODE_129E5E:        LDA ($CC),y               
CODE_129E60:        CMP #$5C                  
CODE_129E62:        BCS CODE_129E6C                   
CODE_129E64:        CMP #$47                  
CODE_129E66:        BCC CODE_129E6C           
CODE_129E68:        STA $04B9                 
CODE_129E6B:        RTS
                       
CODE_129E6C:        LDX #$04                  
CODE_129E6E:        LDA $51,x                 
CODE_129E70:        BEQ CODE_129E76           
CODE_129E72:        DEX                       
CODE_129E73:        BPL CODE_129E6E           
CODE_129E75:        RTS
                       
CODE_129E76:        STX $12                   
CODE_129E78:        LDA $05                   
CODE_129E7A:        STA $33,x                 
CODE_129E7C:        LDA $06                   
CODE_129E7E:        STA $1F,x                 
CODE_129E80:        INY                       
CODE_129E81:        LDA ($CC),y               
CODE_129E83:        DEY                       
CODE_129E84:        AND #$F0                  
CODE_129E86:        STA $29,x                 
CODE_129E88:        LDA #$00                  
CODE_129E8A:        STA $15,x                 
CODE_129E8C:        STA $049B,x               
CODE_129E8F:        STY $0C                   
CODE_129E91:        LDA ($CC),y               
CODE_129E93:        AND #$3F                  
CODE_129E95:        CMP #$32                  
CODE_129E97:        BCS CODE_129EA8                   
CODE_129E99:        LDA $EB                   
CODE_129E9B:        BEQ CODE_129EA8           
CODE_129E9D:        JSR CODE_12C1DA           
CODE_129EA0:        LDA $0F                   
CODE_129EA2:        ADC #$18                  
CODE_129EA4:        CMP #$30                  
CODE_129EA6:        BCC CODE_129E4D           
CODE_129EA8:        LDY $0C                   
CODE_129EAA:        LDA ($CC),y               
CODE_129EAC:        ORA #$80                  
CODE_129EAE:        STA ($CC),y               
CODE_129EB0:        CMP #$DC                  
CODE_129EB2:        AND #$7F                  
CODE_129EB4:        BCC CODE_129EBB           
CODE_129EB6:        AND #$3F                  
CODE_129EB8:        STA $049B,x               
CODE_129EBB:        CMP #$1C                  
CODE_129EBD:        BNE CODE_129EC7           
CODE_129EBF:        LDX $04B5                 
CODE_129EC2:        BEQ CODE_129EC7           
CODE_129EC4:        LDX $12                   
CODE_129EC6:        RTS
                       
CODE_129EC7:        CMP #$17                  
CODE_129EC9:        BEQ CODE_129ECF           
CODE_129ECB:        CMP #$1D                  
CODE_129ECD:        BNE CODE_129EDC           
CODE_129ECF:        LDX #$05                  
CODE_129ED1:        CMP $90,x                 
CODE_129ED3:        BEQ CODE_129EDA           
CODE_129ED5:        DEX                       
CODE_129ED6:        BPL CODE_129ED1           
CODE_129ED8:        BRA CODE_129EDC           

CODE_129EDA:        STZ $51,x                 
CODE_129EDC:        LDX $12                   
CODE_129EDE:        STA $90,x                 
CODE_129EE0:        TYA                       
CODE_129EE1:        STA $0441,x               
CODE_129EE4:        INC $51,x                 ; Sprite status = init routine.
CODE_129EE6:        LDA $90,x                 ; Jump to routine based on sprite number.
CODE_129EE8:        JSL CODE_118776           

PNTR_129EEC:        dw CODE_129F96                          ; 00 - Heart                          
                    dw CODE_129F96                          ; 01 - Shy Guy, red
                    dw CODE_129F96                          ; 02 - Tweeter
                    dw CODE_129F96                          ; 03 - Shy Guy, blue
                    dw CODE_129F96                          ; 04 - Porcupo
                    dw CODE_129F96                          ; 05 - Snifit, red
                    dw CODE_12AC85                          ; 06 - Snifit, grey
                    dw CODE_129F96                          ; 07 - Snifit, blue
                    dw CODE_129F96                          ; 08 - Ostro with red Shyguy
                    dw CODE_12A01C                          ; 09 - Bob-Omb
                    dw CODE_129F96                          ; 0A - Albatoss with Bob-Omb
                    dw CODE_12B27D                          ; 0B - Albatoss, coming from left
                    dw CODE_12B276                          ; 0C - Albatoss, coming from right
                    dw CODE_129F96                          ; 0D - Ninji, running
                    dw CODE_12AC85                          ; 0E - Ninji, jumping
                    dw CODE_129FE3                          ; 0F - Beezo, gold
                    dw CODE_129F96                          ; 10 - Beezo, red.
                    dw CODE_129F96                          ; 11 - Wart Bubble.
                    dw CODE_129F96                          ; 12 - Pidgit, carpet.
                    dw CODE_12AE10                          ; 13 - Trouter.
                    dw CODE_129F96                          ; 14 - Hoopster.
                    dw CODE_12A9CB                          ; 15 - Shyguy generator.
                    dw CODE_12A9CB                          ; 16 - Bob-omb Generator
                    dw CODE_12A00F                          ; 17 - Phanto
                    dw CODE_12CCBA                          ; 18 - Cobrat, jar
                    dw CODE_12CCBA                          ; 19 - Cobrat, sand
                    dw CODE_12CDE8                          ; 1A - Pokey
                    dw CODE_129F96                          ; 1B - Bullet
                    dw CODE_12AF2D                          ; 1C - Birdo
                    dw CODE_12C7F8                          ; 1D - Mouser
                    dw CODE_129F96                          ; 1E - Egg
                    dw CODE_12CA80                          ; 1F - Triclyde
                    dw CODE_129F96                          ; 20 - Fireball
                    dw CODE_12C270                          ; 21 - Clawglip
                    dw CODE_129F96                          ; 22 - Rock
                    dw CODE_12AC85                          ; 23 - Panser, red
                    dw CODE_129F96                          ; 24 - Panser, blue
                    dw CODE_12AC85                          ; 25 - Panser, green
                    dw CODE_129F96                          ; 26 - Autobomb with Shyguy
                    dw CODE_129F96                          ; 27 - Autobomb fire
                    dw CODE_12D595                          ; 28 - Whale spout
                    dw CODE_129F96                          ; 29 - Flurry
                    dw CODE_12D2FD                          ; 2A - Fryguy
                    dw CODE_12D2FD                          ; 2B - Small Fryguy.
                    dw CODE_12DB43                          ; 2C - Wart.
                    dw CODE_12D800                          ; 2D - Hawkmouth boss.
                    dw CODE_12A9D3                          ; 2E - Sparky, right, slow.
                    dw CODE_12A9D3                          ; 2F - Sparky, right, fast.
                    dw CODE_12A9D3                          ; 30 - Sparky, left, slow.
                    dw CODE_12A9D3                          ; 31 - Sparky, left, fast.
                    dw CODE_129F96                          ; 32 - Small vegetable.
                    dw CODE_129F96                          ; 33 - Fresh vegetable.
                    dw CODE_129F96                          ; 34 - Vegetable thrower vegetable.
                    dw CODE_129F96                          ; 35 - Shell
                    dw CODE_129F96                          ; 36 - Coin
                    dw CODE_129F96                          ; 37 - Bomb
                    dw CODE_129F96                          ; 38 - Rocket
                    dw CODE_129F96                          ; 39 - Mushroom block
                    dw CODE_129F96                          ; 3A - POW block
                    dw CODE_12BA59                          ; 3B - Rolling log
                    dw CODE_129F96                          ; 3C - Door to dark room
                    dw CODE_12ABAA                          ; 3D - Key
                    dw CODE_129F96                          ; 3E - Potion
                    dw CODE_12AC85                          ; 3F - Mushroom
                    dw CODE_12AC85                          ; 40 - 1-Up
                    dw CODE_129F96                          ; 41 - Pidgit's carpet
                    dw CODE_12AC78                          ; 42 - Hawkmouth, face to the right
                    dw CODE_12AC78                          ; 43 - Hawkmouth, face to the left
                    dw CODE_12ABCA                          ; 44 - Crystal ball
                    dw CODE_12ABCA                          ; 45 - Star
                    dw CODE_12ABCA                          ; 46 - Stopwatch
                       
CODE_129F7A:        LDY $90,x                 
CODE_129F7C:        LDA.w DATA_11CC45,y         
CODE_129F7F:        AND #$7F                  
CODE_129F81:        STA $65,x                 
CODE_129F83:        LDA.w DATA_11CC8C,y         
CODE_129F86:        STA $046E,x               
CODE_129F89:        LDA.w DATA_11CD1A,y         
CODE_129F8C:        STA $0489,x               
CODE_129F8F:        LDA.w DATA_11CCD3,y         
CODE_129F92:        STA $0492,x               
CODE_129F95:        RTS
                       
CODE_129F96:        STZ $86,x                 
CODE_129F98:        STZ $79,x                 
CODE_129F9A:        LDA #$00                  
CODE_129F9C:        STA $B1,x                 
CODE_129F9E:        STA $042F,x               
CODE_129FA1:        STA $A8,x                 
CODE_129FA3:        STA $9F,x                 
CODE_129FA5:        STA $044A,x               
CODE_129FA8:        STA $5B,x                 
CODE_129FAA:        STA $0438,x               
CODE_129FAD:        STA $0453,x               
CODE_129FB0:        STA $04CD,x               
CODE_129FB3:        STA $04D7,x               
CODE_129FB6:        STA $045C,x               
CODE_129FB9:        STA $0477,x               
CODE_129FBC:        STA $0480,x               
CODE_129FBF:        STA $0465,x               
CODE_129FC2:        STA $0702,x               
CODE_129FC5:        STA $0D00,x               
CODE_129FC8:        STA $47,x                 
CODE_129FCA:        JSR CODE_129F7A           
CODE_129FCD:        JSR CODE_12C1DA           
CODE_129FD0:        INY                       
CODE_129FD1:        TYA                       
CODE_129FD2:        STA $6F,x                 
CODE_129FD4:        LDA.w DATA_1197B0,y               
CODE_129FD7:        STA $3D,x                 
CODE_129FD9:        LDA $046E,x               
CODE_129FDC:        AND #$40                  
CODE_129FDE:        BEQ CODE_129FE2           
CODE_129FE0:        ASL $3D,x                 
CODE_129FE2:        RTS
                       
CODE_129FE3:        JSR CODE_129F96           
CODE_129FE6:        LDY $6E                   
CODE_129FE8:        LDA $04C1                 
CODE_129FEB:        ADC.w DATA_119793,y               
CODE_129FEE:        STA $29,x                 
CODE_129FF0:        LDA $04BF                 
CODE_129FF3:        ADC #$00                  
CODE_129FF5:        STA $15,x                 
CODE_129FF7:        LDA $1E                   
CODE_129FF9:        BPL CODE_129FFF           
CODE_129FFB:        LDY #$00                  
CODE_129FFD:        BEQ CODE_12A009           
CODE_129FFF:        LDA $32                   
CODE_12A001:        SEC                       
CODE_12A002:        SBC $CB                   
CODE_12A004:        LSR A                     
CODE_12A005:        LSR A                     
CODE_12A006:        LSR A                     
CODE_12A007:        LSR A                     
CODE_12A008:        TAY                       
CODE_12A009:        LDA.w DATA_119796,y               
CODE_12A00C:        STA $47,x                 
CODE_12A00E:        RTS
                       
CODE_12A00F:        JSR CODE_129F96           
CODE_12A012:        LDA #$0C                  ; \ X speed = #$0C.
CODE_12A014:        STA $3D,x                 ; /
CODE_12A016:        LDA #$A0                  ; \Phanto takeoff timer
CODE_12A018:        STA $0595                 ; /
CODE_12A01B:        RTS
                       
CODE_12A01C:        JSR CODE_129F96           
CODE_12A01F:        LDA #$FF                  
CODE_12A021:        STA $86,x                 
CODE_12A023:        RTS
                       
CODE_12A024:        JSR CODE_12DE6A           
CODE_12A027:        JSR CODE_12A745           
CODE_12A02A:        LDA $D8                   
CODE_12A02C:        AND #$04                  
CODE_12A02E:        BEQ CODE_12A033           
CODE_12A030:        JMP CODE_12BD29           

CODE_12A033:        LDA $51,x                 
CODE_12A035:        BNE CODE_12A0A2           
CODE_12A037:        LDA $049B,x               
CODE_12A03A:        BEQ CODE_12A06C           
CODE_12A03C:        STA $04B8                 
CODE_12A03F:        JSR CODE_12BAB4           
CODE_12A042:        JSR CODE_129D1B           
CODE_12A045:        LDA #$0B                  ; \ Boss is cleared.
CODE_12A047:        STA $1DE2                 ; /
CODE_12A04A:        LDA $04F0,x               
CODE_12A04D:        STA $15,x                 
CODE_12A04F:        LDA #$80                  
CODE_12A051:        STA $29,x                 
CODE_12A053:        ASL A                     
CODE_12A054:        STA $1F,x                 
CODE_12A056:        LDA #$B0                  
CODE_12A058:        LDY $90,x                 
CODE_12A05A:        CPY #$21                  
CODE_12A05C:        BNE CODE_12A060           
CODE_12A05E:        LDA #$70                  
CODE_12A060:        STA $33,x                 
CODE_12A062:        LDA #$41                  
CODE_12A064:        STA $65,x                 
CODE_12A066:        STA $046E,x               
CODE_12A069:        JMP CODE_12B1F9           

CODE_12A06C:        LDA $90,x                 
CODE_12A06E:        CMP #$1B                  
CODE_12A070:        BEQ CODE_12A0A2           
CODE_12A072:        INC $04AD                 
CODE_12A075:        LDY $04AD                 
CODE_12A078:        CPY #$08                  
CODE_12A07A:        BCC CODE_12A0A2           
CODE_12A07C:        LDA #$00                  
CODE_12A07E:        STA $04AD                 
CODE_12A081:        LDA #$01                  
CODE_12A083:        STA $51,x                 
CODE_12A085:        STA $65,x                 
CODE_12A087:        LDA #$07                  
CODE_12A089:        STA $046E,x               
CODE_12A08C:        LDA #$00                  
CODE_12A08E:        STA $90,x                 
CODE_12A090:        LDA $33,x                 
CODE_12A092:        SBC #$60                  
CODE_12A094:        STA $33,x                 
CODE_12A096:        LDA $1F,x                 
CODE_12A098:        SBC #$00                  
CODE_12A09A:        STA $1F,x                 
CODE_12A09C:        LDA #$FF                  
CODE_12A09E:        STA $0441,x               
CODE_12A0A1:        RTS
                       
CODE_12A0A2:        ASL $65,x                 
CODE_12A0A4:        SEC                       
CODE_12A0A5:        ROR $65,x                 
CODE_12A0A7:        JSR CODE_12BD29           
CODE_12A0AA:        LDA $044A,x               
CODE_12A0AD:        BNE CODE_12A0B2           
CODE_12A0AF:        JSR CODE_12C1EF           
CODE_12A0B2:        JSR CODE_12C1EA           
CODE_12A0B5:        LDA $47,x                 ; \ Check if negative Y speed (rise up).
CODE_12A0B7:        BMI CODE_12A0BD           ; / If so, decrease rising speed.
CODE_12A0B9:        CMP #$3E                  ; \ Check if falling at maximum speed.
CODE_12A0BB:        BCS CODE_12A0C1           ; / If so, return, and don't fall any faster.
CODE_12A0BD:        INC $47,x                 ; \ Gravity.
CODE_12A0BF:        INC $47,x                 ; /
CODE_12A0C1:        RTS                       ; Return.
                       
CODE_12A0C2:        JSR CODE_12A745           
CODE_12A0C5:        LDA $86,x                 
CODE_12A0C7:        BNE CODE_12A0CC           
CODE_12A0C9:        JMP CODE_12A5B2           

CODE_12A0CC:        JSR CODE_12A0DA           
CODE_12A0CF:        JMP CODE_12A4A1           

DATA_12A0D2:        db $00,$00,$EC,$EA

DATA_12A0D6:        db $00,$00,$F6,$00
                 
CODE_12A0DA:        LDA $86,x                  
CODE_12A0DC:        AND #$18           
CODE_12A0DE:        LSR A                     
CODE_12A0DF:        LSR A                     
CODE_12A0E0:        LSR A                     
CODE_12A0E1:        TAX                       
CODE_12A0E2:        LDA.l DATA_12A0D2,x             
CODE_12A0E6:        BEQ CODE_12A15F           
CODE_12A0E8:        STA $0712                 
CODE_12A0EB:        LDA.l DATA_12A0D6,x             
CODE_12A0EF:        STA $0713                 
CODE_12A0F2:        REP #$10                  
CODE_12A0F4:        LDY $02F6                 
CODE_12A0F7:        LDA $0429                 
CODE_12A0FA:        STA $0800,y               
CODE_12A0FD:        LDA $042C                 
CODE_12A100:        CLC                       
CODE_12A101:        ADC $0713                 
CODE_12A104:        STA $0801,y               
CODE_12A107:        LDA $0712                 
CODE_12A10A:        STA $0802,y               
CODE_12A10D:        LDA #$2B                  
CODE_12A10F:        STA $0803,y               
CODE_12A112:        REP #$20                  
CODE_12A114:        TYA                       
CODE_12A115:        LSR A                     
CODE_12A116:        LSR A                     
CODE_12A117:        TAY                       
CODE_12A118:        SEP #$20                  
CODE_12A11A:        LDA #$02                  
CODE_12A11C:        STA $0A20,y               
CODE_12A11F:        LDA $0429                 
CODE_12A122:        CMP #$F0                  
CODE_12A124:        BCC CODE_12A15F           
CODE_12A126:        JSL CODE_14E483           
CODE_12A12A:        REP #$10                  
CODE_12A12C:        LDY $02F6                 
CODE_12A12F:        LDX $02F8                 
CODE_12A132:        LDA $0800,y               
CODE_12A135:        STA $0800,x               
CODE_12A138:        LDA $0801,y               
CODE_12A13B:        STA $0801,x               
CODE_12A13E:        LDA $0802,y               
CODE_12A141:        STA $0802,x               
CODE_12A144:        LDA $0803,y               
CODE_12A147:        STA $0803,x               
CODE_12A14A:        REP #$20                  
CODE_12A14C:        TYA                       
CODE_12A14D:        LSR A                     
CODE_12A14E:        LSR A                     
CODE_12A14F:        TAY                       
CODE_12A150:        TXA                       
CODE_12A151:        LSR A                     
CODE_12A152:        LSR A                     
CODE_12A153:        TAX                       
CODE_12A154:        SEP #$20                  
CODE_12A156:        LDA #$03                  
CODE_12A158:        STA $0A20,y               
CODE_12A15B:        DEC A                     
CODE_12A15C:        STA $0A21,y               
CODE_12A15F:        SEP #$10                  
CODE_12A161:        LDX $12                   
CODE_12A163:        RTS
                       
CODE_12A164:        JSR CODE_12A745           
CODE_12A167:        LDA $86,x                 
CODE_12A169:        BEQ CODE_12A1A0           
CODE_12A16B:        TAY                       
CODE_12A16C:        LSR A                     
CODE_12A16D:        LSR A                     
CODE_12A16E:        AND #$01                  
CODE_12A170:        STA $6F,x                 
CODE_12A172:        LDA #$01                  
CODE_12A174:        STA $65,x                 
CODE_12A176:        STA $046E,x               
CODE_12A179:        LDA #$3C                  
CODE_12A17B:        CPY #$0C                  
CODE_12A17D:        BCC CODE_12A181           
CODE_12A17F:        LDA #$3E                  
CODE_12A181:        JSR CODE_12BDD5           
CODE_12A184:        REP #$10                  
CODE_12A186:        LDY $02F6                 
CODE_12A189:        LDA $90,x                 ; \ If not a POW sprite, then...
CODE_12A18B:        CMP #$3A                  ;  | have regular properties...
CODE_12A18D:        BNE CODE_12A193           ; /
CODE_12A18F:        LDA #$22                  ; YXPPCCCT of flat POW sprite. Highest priority bit set, palette 9, GFX page 0.
CODE_12A191:        BRA CODE_12A19A           

CODE_12A193:        LDA $0803,y               
CODE_12A196:        AND #$F0                  
CODE_12A198:        ORA #$04                  
CODE_12A19A:        STA $0803,y               
CODE_12A19D:        SEP #$10                  
CODE_12A19F:        RTS
                       
CODE_12A1A0:        LDA #$00                  
CODE_12A1A2:        JSL CODE_13FBC2           
CODE_12A1A6:        JMP CODE_12A83B           

DATA_12A1A9:        db $40,$2E,$2C
             
CODE_12A1AC:        JSR CODE_12A745                   
CODE_12A1AF:        LDA $86,x                 
CODE_12A1B1:        BEQ CODE_12A1A0           
CODE_12A1B3:        PHX                       
CODE_12A1B4:        LSR A                     
CODE_12A1B5:        LSR A                     
CODE_12A1B6:        LSR A                     
CODE_12A1B7:        TAX                       
CODE_12A1B8:        LDA.l DATA_12A1A9,x             
CODE_12A1BC:        STA $0711                 
CODE_12A1BF:        TXY                       
CODE_12A1C0:        PLX                       
CODE_12A1C1:        LDA #$01                  
CODE_12A1C3:        STA $65,x                 
CODE_12A1C5:        STA $046E,x               
CODE_12A1C8:        STA $6F,x                 
CODE_12A1CA:        LDA $02F6                 
CODE_12A1CD:        STA $02F8                 
CODE_12A1D0:        LDA $02F7                 
CODE_12A1D3:        STA $02F9                 
CODE_12A1D6:        CPY #$02                  
CODE_12A1D8:        BNE CODE_12A1E3           
CODE_12A1DA:        LDA #$CA                  
CODE_12A1DC:        JSR CODE_12A181           
CODE_12A1DF:        JSL CODE_14E483           
CODE_12A1E3:        LDA $33,x                 
CODE_12A1E5:        STA $0716                 
CODE_12A1E8:        LDA $1F,x                 
CODE_12A1EA:        STA $0717                 
CODE_12A1ED:        LDA $CB                   
CODE_12A1EF:        STA $070F                 
CODE_12A1F2:        LDA $CA                   
CODE_12A1F4:        STA $0710                 
CODE_12A1F7:        LDA $021F                 
CODE_12A1FA:        XBA                       
CODE_12A1FB:        LDA $0429                 
CODE_12A1FE:        REP #$30                  
CODE_12A200:        CLC                       
CODE_12A201:        ADC #$FFF4                
CODE_12A204:        STA $0712                 
CODE_12A207:        CLC                       
CODE_12A208:        ADC #$0018                
CODE_12A20B:        STA $0714                 
CODE_12A20E:        LDA $0716                 
CODE_12A211:        SEC                       
CODE_12A212:        SBC $070F                 
CODE_12A215:        CLC                       
CODE_12A216:        ADC #$FFFC                
CODE_12A219:        STA $0716                 
CODE_12A21C:        SEP #$20                  
CODE_12A21E:        LDA $0717                 
CODE_12A221:        BNE CODE_12A26A           
CODE_12A223:        LDY $02F8                 
CODE_12A226:        LDA $0712                 
CODE_12A229:        STA $0800,y               
CODE_12A22C:        LDA $0714                 
CODE_12A22F:        STA $0804,y               
CODE_12A232:        LDA $0716                 
CODE_12A235:        STA $0801,y               
CODE_12A238:        STA $0805,y               
CODE_12A23B:        LDA $0711                 
CODE_12A23E:        STA $0802,y               
CODE_12A241:        STA $0806,y               
CODE_12A244:        LDA #$66                  
CODE_12A246:        STA $0803,y               
CODE_12A249:        AND #$BF                  
CODE_12A24B:        STA $0807,y               
CODE_12A24E:        REP #$20                  
CODE_12A250:        TYA                       
CODE_12A251:        LSR A                     
CODE_12A252:        LSR A                     
CODE_12A253:        TAY                       
CODE_12A254:        SEP #$20                  
CODE_12A256:        LDA $0713                 
CODE_12A259:        AND #$01                  
CODE_12A25B:        ORA #$02                  
CODE_12A25D:        STA $0A20,y               
CODE_12A260:        LDA $0715                 
CODE_12A263:        AND #$01                  
CODE_12A265:        ORA #$02                  
CODE_12A267:        STA $0A21,y               
CODE_12A26A:        SEP #$10                  
CODE_12A26C:        RTS
                       
CODE_12A26D:        LDA #$00                  
CODE_12A26F:        JSL CODE_13FBC2           
CODE_12A273:        JMP CODE_12A83B           

CODE_12A276:        JSR CODE_12A745           
CODE_12A279:        JSR CODE_12BB16           
CODE_12A27C:        LDA $042F,x               
CODE_12A27F:        BEQ CODE_12A284           
CODE_12A281:        STZ $042F,x               
CODE_12A284:        LDA $A8,x                 
CODE_12A286:        BEQ CODE_12A28D           
CODE_12A288:        LDA #$01                  
CODE_12A28A:        STA $51,x                 
CODE_12A28C:        RTS
                       
CODE_12A28D:        LDA $86,x                 
CODE_12A28F:        BEQ CODE_12A26D           
CODE_12A291:        LDA $90,x                 
CODE_12A293:        CMP #$32                  
CODE_12A295:        BCS CODE_12A2AD                   
CODE_12A297:        JSR CODE_12AA43           
CODE_12A29A:        LDA $10                   
CODE_12A29C:        AND #$03                  
CODE_12A29E:        STA $044A,x               
CODE_12A2A1:        LDA $10                   
CODE_12A2A3:        AND #$10                  
CODE_12A2A5:        LSR A                     
CODE_12A2A6:        LSR A                     
CODE_12A2A7:        LSR A                     
CODE_12A2A8:        LSR A                     
CODE_12A2A9:        ADC #$01                  
CODE_12A2AB:        STA $6F,x                 
CODE_12A2AD:        JSR CODE_12B4EA           
CODE_12A2B0:        JMP CODE_12DE6A  
         
DATA_12A2B3:        db $C6,$C8,$E6,$E8                      ; Tilemap of "BOMB"

DATA_12A2B7:        db $F8,$08,$F8,$08                      ; XDisp of "BOMB"

DATA_12A2BB:        db $F0,$F0,$00,$00                      ; YDisp of "BOMB"
                 
CODE_12A2BF:        JSR CODE_12A745           
CODE_12A2C2:        LDA $ED                   
CODE_12A2C4:        ORA $EE                   
CODE_12A2C6:        BNE CODE_12A26D           
CODE_12A2C8:        LDA $86,x                 
CODE_12A2CA:        BEQ CODE_12A26D           
CODE_12A2CC:        CMP #$1A                  
CODE_12A2CE:        BCS CODE_12A2D8           
CODE_12A2D0:        SBC #$11                  
CODE_12A2D2:        BMI CODE_12A2D8           
CODE_12A2D4:        TAY                       
CODE_12A2D5:        JSR CODE_12A32D           
CODE_12A2D8:        LDA #$01                  ; \ A != 00 so the following routine has effect.
CODE_12A2DA:        JSL CODE_13FBC2           ; / Background colour effect.
CODE_12A2DE:        REP #$10                  
CODE_12A2E0:        LDX #$0000                
CODE_12A2E3:        LDY #$0020                
CODE_12A2E6:        LDA $0429                 ; \ Get sprite's original X pos...
CODE_12A2E9:        CLC                       ;  | and add the XDisp to it...
CODE_12A2EA:        ADC.l DATA_12A2B7,x         ;  | per tile.
CODE_12A2EE:        STA $0800,y               ; /
CODE_12A2F1:        LDA $042C                 ; \ Same goes for Y pos...
CODE_12A2F4:        CLC                       ;  | but then with YDisp instead.
CODE_12A2F5:        ADC.l DATA_12A2BB,x         ;  |
CODE_12A2F9:        STA $0801,y               ; /
CODE_12A2FC:        LDA.l DATA_12A2B3,x         ; \ Transfer tilemap. 
CODE_12A300:        STA $0802,y               ; /
CODE_12A303:        LDA $10                   ; \ Palette animation and more fancy YXPPCCCT properties data...
CODE_12A305:        AND #$06                  ;  | right here.
CODE_12A307:        ORA #$20                  ;  |
CODE_12A309:        STA $0803,y               ; /
CODE_12A30C:        PHY                       
CODE_12A30D:        REP #$20                  
CODE_12A30F:        TYA                       
CODE_12A310:        LSR A                     
CODE_12A311:        LSR A                     
CODE_12A312:        TAY                       
CODE_12A313:        SEP #$20                  
CODE_12A315:        LDA #$02                  ; \ Size of all tiles = 16x16
CODE_12A317:        STA $0A20,y               ; /
CODE_12A31A:        PLY                       
CODE_12A31B:        INY                       
CODE_12A31C:        INY                       
CODE_12A31D:        INY                       
CODE_12A31E:        INY                       
CODE_12A31F:        INX                       
CODE_12A320:        CPX #$0004                
CODE_12A323:        BNE CODE_12A2E6           
CODE_12A325:        SEP #$10                  
CODE_12A327:        LDX $12                   
CODE_12A329:        JMP CODE_12DE6A           

CODE_12A32C:        RTS
                       
CODE_12A32D:        LDA $29,x                 
CODE_12A32F:        CLC                       
CODE_12A330:        ADC.w DATA_1197B6,y               
CODE_12A333:        STA $0C                   
CODE_12A335:        LDA $15,x                 
CODE_12A337:        ADC.w DATA_1197BF,y               
CODE_12A33A:        STA $0D                   
CODE_12A33C:        CMP #$0B                  
CODE_12A33E:        BCS CODE_12A32C                   
CODE_12A340:        LDA $33,x                 
CODE_12A342:        ADC.w DATA_1197C8,y               
CODE_12A345:        AND #$F0                  
CODE_12A347:        STA $0E                   
CODE_12A349:        STA $0B                   
CODE_12A34B:        LDA $1F,x                 
CODE_12A34D:        ADC.w DATA_1197D1,y               
CODE_12A350:        STA $0F                   
CODE_12A352:        CMP #$0A                  
CODE_12A354:        BCS CODE_12A32C                   
CODE_12A356:        LDY $EB                   
CODE_12A358:        BNE CODE_12A37A           
CODE_12A35A:        LSR A                     
CODE_12A35B:        ROR $0E                   
CODE_12A35D:        LSR A                     
CODE_12A35E:        ROR $0E                   
CODE_12A360:        LSR A                     
CODE_12A361:        ROR $0E                   
CODE_12A363:        LSR A                     
CODE_12A364:        ROR $0E                   
CODE_12A366:        LDA $0E                   
CODE_12A368:        LDY #$FF                  
CODE_12A36A:        SEC                       
CODE_12A36B:        SBC #$0F                  
CODE_12A36D:        INY                       
CODE_12A36E:        BCS CODE_12A36A                   
CODE_12A370:        STY $0D                   
CODE_12A372:        ADC #$0F                  
CODE_12A374:        ASL A                     
CODE_12A375:        ASL A                     
CODE_12A376:        ASL A                     
CODE_12A377:        ASL A                     
CODE_12A378:        STA $0E                   
CODE_12A37A:        LDA $0C                   
CODE_12A37C:        LSR A                     
CODE_12A37D:        LSR A                     
CODE_12A37E:        LSR A                     
CODE_12A37F:        LSR A                     
CODE_12A380:        STA $04                   
CODE_12A382:        ORA $0E                   
CODE_12A384:        STA $05                   
CODE_12A386:        LDA #$7E                  
CODE_12A388:        STA $09                   
CODE_12A38A:        LDY #$00                  
CODE_12A38C:        LDA $04BF                 
CODE_12A38F:        CMP #$0A                  
CODE_12A391:        BNE CODE_12A398           
CODE_12A393:        STY $0D                   
CODE_12A395:        STZ $09                   
CODE_12A397:        INY                       
CODE_12A398:        LDA #$10                  
CODE_12A39A:        STA $07                   
CODE_12A39C:        LDA.w DATA_1197DA,y               
CODE_12A39F:        STA $08                   
CODE_12A3A1:        LDY $0534                 
CODE_12A3A4:        LDA.w DATA_11AB11,y               
CODE_12A3A7:        CLC                       
CODE_12A3A8:        ADC $08                   
CODE_12A3AA:        STA $08                   
CODE_12A3AC:        LDY $0D                   
CODE_12A3AE:        LDA $07                   
CODE_12A3B0:        CLC                       
CODE_12A3B1:        ADC #$F0                  
CODE_12A3B3:        STA $07                   
CODE_12A3B5:        LDA $08                   
CODE_12A3B7:        ADC #$00                  
CODE_12A3B9:        STA $08                   
CODE_12A3BB:        DEY                       
CODE_12A3BC:        BPL CODE_12A3AE           
CODE_12A3BE:        REP #$20                  
CODE_12A3C0:        LDA $07                   
CODE_12A3C2:        CLC                       
CODE_12A3C3:        ADC #$7000                
CODE_12A3C6:        STA $00                   
CODE_12A3C8:        SEP #$20                  
CODE_12A3CA:        LDA $09                   
CODE_12A3CC:        STA $02                   
CODE_12A3CE:        LDY $05                   
CODE_12A3D0:        LDA [$00],y               
CODE_12A3D2:        BNE CODE_12A3E2           
CODE_12A3D4:        LDA [$07],y               
CODE_12A3D6:        CMP #$AB                  
CODE_12A3D8:        BEQ CODE_12A3E3           
CODE_12A3DA:        CMP #$9D                  
CODE_12A3DC:        BEQ CODE_12A3E3           
CODE_12A3DE:        CMP #$6D                  
CODE_12A3E0:        BEQ CODE_12A3E3           
CODE_12A3E2:        RTS
                       
CODE_12A3E3:        LDA #$40                  
CODE_12A3E5:        STA [$07],y               
CODE_12A3E7:        LDA $0D                   
CODE_12A3E9:        AND #$01                  
CODE_12A3EB:        EOR #$01                  
CODE_12A3ED:        ASL A                     
CODE_12A3EE:        ASL A                     
CODE_12A3EF:        LDY $EB                   
CODE_12A3F1:        BNE CODE_12A3F4           
CODE_12A3F3:        ASL A                     
CODE_12A3F4:        PHA                       
CODE_12A3F5:        LDA $0E                   
CODE_12A3F7:        STA $02                   
CODE_12A3F9:        LDA $0C                   
CODE_12A3FB:        AND #$F0                  
CODE_12A3FD:        STA $03                   
CODE_12A3FF:        LDA #$08                  
CODE_12A401:        STA $00                   
CODE_12A403:        LDA $02                   
CODE_12A405:        ASL A                     
CODE_12A406:        ROL $00                   
CODE_12A408:        ASL A                     
CODE_12A409:        ROL $00                   
CODE_12A40B:        AND #$E0                  
CODE_12A40D:        STA $01                   
CODE_12A40F:        LDX $0300                 
CODE_12A412:        LDA $03                   
CODE_12A414:        LSR A                     
CODE_12A415:        LSR A                     
CODE_12A416:        LSR A                     
CODE_12A417:        ORA $01                   
CODE_12A419:        STA $0303,x               
CODE_12A41C:        CLC                       
CODE_12A41D:        ADC #$20                  
CODE_12A41F:        STA $030B,x               
CODE_12A422:        PLA                       
CODE_12A423:        ORA $00                   
CODE_12A425:        AND #$0F                  
CODE_12A427:        STA $0302,x               
CODE_12A42A:        ADC #$00                  
CODE_12A42C:        STA $030A,x               
CODE_12A42F:        REP #$20                  
CODE_12A431:        LDA #$0300                
CODE_12A434:        STA $0304,x               
CODE_12A437:        STA $030C,x               
CODE_12A43A:        LDA #$00BF                
CODE_12A43D:        STA $0306,x               
CODE_12A440:        STA $0308,x               
CODE_12A443:        STA $030E,x               
CODE_12A446:        STA $0310,x               
CODE_12A449:        TXA                       
CODE_12A44A:        CLC                       
CODE_12A44B:        ADC #$0010                
CODE_12A44E:        STA $0300                 
CODE_12A451:        SEP #$20                  
CODE_12A453:        LDA #$FF                  
CODE_12A455:        STA $0312,x               
CODE_12A458:        LDX #$08                  
CODE_12A45A:        LDA $51,x                 
CODE_12A45C:        BEQ CODE_12A463           
CODE_12A45E:        DEX                       
CODE_12A45F:        BPL CODE_12A45A           
CODE_12A461:        BMI CODE_12A480           
CODE_12A463:        LDA $0C                   
CODE_12A465:        AND #$F0                  
CODE_12A467:        STA $29,x                 
CODE_12A469:        LDA $0D                   
CODE_12A46B:        LDY $EB                   
CODE_12A46D:        BNE CODE_12A470           
CODE_12A46F:        TYA                       
CODE_12A470:        STA $15,x                 
CODE_12A472:        LDA $0B                   
CODE_12A474:        STA $33,x                 
CODE_12A476:        LDA $0F                   
CODE_12A478:        STA $1F,x                 
CODE_12A47A:        JSR CODE_129F98           
CODE_12A47D:        JSR CODE_12BA3D           
CODE_12A480:        LDX $12                   
CODE_12A482:        RTS
                       
CODE_12A483:        JSR CODE_12A745           
CODE_12A486:        LDA $65,x                 
CODE_12A488:        ORA #$10                  
CODE_12A48A:        STA $65,x                 
CODE_12A48C:        AND #$40                  
CODE_12A48E:        STA $0E                   
CODE_12A490:        LDA $86,x                 
CODE_12A492:        BNE CODE_12A497           
CODE_12A494:        JMP CODE_12A5B2           

CODE_12A497:        LSR A                     
CODE_12A498:        LSR A                     
CODE_12A499:        LSR A                     
CODE_12A49A:        TAY                       
CODE_12A49B:        LDA.w DATA_1197DC,y               
CODE_12A49E:        JSR CODE_12A5CC           
CODE_12A4A1:        LDA $049B,x               
CODE_12A4A4:        BEQ CODE_12A482           
CODE_12A4A6:        LDA $86,x                 
CODE_12A4A8:        CMP #$03                  
CODE_12A4AA:        BNE CODE_12A482           
CODE_12A4AC:        LDY #$02                  
CODE_12A4AE:        LDA $90,x                 
CODE_12A4B0:        CMP #$21                  
CODE_12A4B2:        BNE CODE_12A4C4           
CODE_12A4B4:        DEY                       
CODE_12A4B5:        LDA #$49                  
CODE_12A4B7:        STA $1486                 
CODE_12A4BA:        STA $1490                 
CODE_12A4BD:        INC A                     
CODE_12A4BE:        STA $149C                 
CODE_12A4C1:        STA $14AA                 
CODE_12A4C4:        STY $144E                 
CODE_12A4C7:        STY $145A                 
CODE_12A4CA:        INY                       
CODE_12A4CB:        STY $1466                 
CODE_12A4CE:        STY $1476                 
CODE_12A4D1:        LDY #$03                  
CODE_12A4D3:        LDA $04F0,x               
CODE_12A4D6:        AND #$01                  
CODE_12A4D8:        ASL A                     
CODE_12A4D9:        ASL A                     
CODE_12A4DA:        EOR #$04                  
CODE_12A4DC:        LDX $EB                   
CODE_12A4DE:        BNE CODE_12A4E1           
CODE_12A4E0:        ASL A                     
CODE_12A4E1:        LDX.w DATA_11CE40,y               
CODE_12A4E4:        ORA $144E,x               
CODE_12A4E7:        STA $144E,x               
CODE_12A4EA:        LDX $12                   
CODE_12A4EC:        DEY                       
CODE_12A4ED:        BPL CODE_12A4D3           
CODE_12A4EF:        LDA $EB                   
CODE_12A4F1:        BNE CODE_12A504           
CODE_12A4F3:        LDA #$52                  
CODE_12A4F5:        STA $1486                 
CODE_12A4F8:        STA $1490                 
CODE_12A4FB:        INC A                     
CODE_12A4FC:        STA $149C                 
CODE_12A4FF:        STA $14AA                 
CODE_12A502:        BRA CODE_12A51A           

CODE_12A504:        LDA $0635                 
CODE_12A507:        CMP #$06                  
CODE_12A509:        BNE CODE_12A51A           
CODE_12A50B:        LDA #$4E                  
CODE_12A50D:        STA $1486                 
CODE_12A510:        STA $1490                 
CODE_12A513:        INC A                     
CODE_12A514:        STA $149C                 
CODE_12A517:        STA $14AA                 
CODE_12A51A:        LDA #$14                  
CODE_12A51C:        STA $11                   
CODE_12A51E:        LDY $04F0,x               
CODE_12A521:        LDA #$7E                  
CODE_12A523:        STA $02                   
CODE_12A525:        LDA #$1F                  
CODE_12A527:        STA $01                   
CODE_12A529:        PHY                       
CODE_12A52A:        LDY $0534                 
CODE_12A52D:        LDA.w DATA_11AB11,y               
CODE_12A530:        CLC                       
CODE_12A531:        ADC $01                   
CODE_12A533:        STA $01                   
CODE_12A535:        PLY                       
CODE_12A536:        LDA #$10                  
CODE_12A538:        STA $00                   
CODE_12A53A:        LDA $00                   
CODE_12A53C:        CLC                       
CODE_12A53D:        ADC #$F0                  
CODE_12A53F:        STA $00                   
CODE_12A541:        LDA $01                   
CODE_12A543:        ADC #$00                  
CODE_12A545:        STA $01                   
CODE_12A547:        DEY                       
CODE_12A548:        BPL CODE_12A53A           
CODE_12A54A:        LDA $90,x                 
CODE_12A54C:        CMP #$21                  
CODE_12A54E:        BNE CODE_12A55D           
CODE_12A550:        LDA $00                   
CODE_12A552:        SEC                       
CODE_12A553:        SBC #$40                  
CODE_12A555:        STA $00                   
CODE_12A557:        LDA $01                   
CODE_12A559:        SBC #$00                  
CODE_12A55B:        STA $01                   
CODE_12A55D:        LDA #$7F                  
CODE_12A55F:        STA $05                   
CODE_12A561:        LDA $04F0,x               
CODE_12A564:        TAX                       
CODE_12A565:        LDA.l DATA_11AB25,x             
CODE_12A569:        STA $04                   
CODE_12A56B:        LDA.l DATA_11AB1B,x             
CODE_12A56F:        STA $03                   
CODE_12A571:        LDA $0635                 
CODE_12A574:        CMP #$04                  
CODE_12A576:        BNE CODE_12A57F           
CODE_12A578:        LDA $03                   
CODE_12A57A:        SEC                       
CODE_12A57B:        SBC #$40                  
CODE_12A57D:        STA $03                   
CODE_12A57F:        LDY #$B8                  
CODE_12A581:        LDA #$56                  
CODE_12A583:        STA [$00],y               
CODE_12A585:        LDA #$00                  
CODE_12A587:        STA [$03],y               
CODE_12A589:        LDA #$56                  
CODE_12A58B:        LDY #$C8                  
CODE_12A58D:        STA [$00],y               
CODE_12A58F:        LDA #$02                  
CODE_12A591:        STA [$03],y               
CODE_12A593:        LDA #$40                  
CODE_12A595:        LDY #$B9                  
CODE_12A597:        STA [$00],y               
CODE_12A599:        LDA #$01                  
CODE_12A59B:        STA [$03],y               
CODE_12A59D:        LDA #$40                  
CODE_12A59F:        LDY #$C9                  
CODE_12A5A1:        STA [$00],y               
CODE_12A5A3:        LDA #$03                  
CODE_12A5A5:        STA [$03],y               
CODE_12A5A7:        LDA #$40                  
CODE_12A5A9:        LDY #$CA                  
CODE_12A5AB:        STA [$00],y               
CODE_12A5AD:        LDA #$01                  
CODE_12A5AF:        STA [$03],y               
CODE_12A5B1:        RTS
                       
CODE_12A5B2:        LDA $90,x                 
CODE_12A5B4:        CMP #$2B                  
CODE_12A5B6:        BNE CODE_12A5C5           
CODE_12A5B8:        DEC $04F9                 
CODE_12A5BB:        BPL CODE_12A5C5           
CODE_12A5BD:        INC $049B,x               
CODE_12A5C0:        INC $90,x                 
CODE_12A5C2:        JMP CODE_12A03C           

CODE_12A5C5:        JMP CODE_12A83B           

DATA_12A5C8:                      db $86,$A1,$A0,$87   

               
CODE_12A5CC:        PHX                       
CODE_12A5CD:        PHA                       
CODE_12A5CE:        LDA $29,x                 
CODE_12A5D0:        STA $08                   
CODE_12A5D2:        LDA $15,x                 
CODE_12A5D4:        STA $09                   
CODE_12A5D6:        LDA $04C1                 
CODE_12A5D9:        STA $0A                   
CODE_12A5DB:        LDA $04BF                 
CODE_12A5DE:        STA $0B                   
CODE_12A5E0:        STZ $ED                   
CODE_12A5E2:        REP #$20                  
CODE_12A5E4:        LDA $08                   
CODE_12A5E6:        SEC                       
CODE_12A5E7:        SBC $0A                   
CODE_12A5E9:        AND #$FF00                
CODE_12A5EC:        BEQ CODE_12A5F3           
CODE_12A5EE:        LDA #$0001                
CODE_12A5F1:        TSB $ED                   
CODE_12A5F3:        LDA $08                   
CODE_12A5F5:        CLC                       
CODE_12A5F6:        ADC #$0008                
CODE_12A5F9:        SEC                       
CODE_12A5FA:        SBC $0A                   
CODE_12A5FC:        AND #$FF00                
CODE_12A5FF:        BEQ CODE_12A606           
CODE_12A601:        LDA #$0002                
CODE_12A604:        TSB $ED                   
CODE_12A606:        SEP #$20                  
CODE_12A608:        PLA                       
CODE_12A609:        STA $0F                   
CODE_12A60B:        TYX                       
CODE_12A60C:        REP #$30                  
CODE_12A60E:        TXA                       
CODE_12A60F:        AND #$00FF                
CODE_12A612:        TAX                       
CODE_12A613:        SEP #$20                  
CODE_12A615:        LDY $02F6                 
CODE_12A618:        LDA $042C                 
CODE_12A61B:        STA $0713                 
CODE_12A61E:        LDA.l DATA_12A5C8,x             
CODE_12A622:        STA $0712                 
CODE_12A625:        JSR CODE_12A66B           
CODE_12A628:        PHX                       
CODE_12A629:        JSL CODE_14E483           
CODE_12A62D:        REP #$10                  
CODE_12A62F:        PLX                       
CODE_12A630:        LDY $02F8                 
CODE_12A633:        LDA.l DATA_12A5C8,x             
CODE_12A637:        CLC                       
CODE_12A638:        ADC #$10                  
CODE_12A63A:        STA $0712                 
CODE_12A63D:        LDA $042C                 
CODE_12A640:        CLC                       
CODE_12A641:        ADC #$08                  
CODE_12A643:        STA $0713                 
CODE_12A646:        JSR CODE_12A66B           
CODE_12A649:        PHX                       
CODE_12A64A:        JSL CODE_14E483           
CODE_12A64E:        REP #$10                  
CODE_12A650:        LDY $02F8                 
CODE_12A653:        PLX                       
CODE_12A654:        LDA $0E                   
CODE_12A656:        EOR #$40                  
CODE_12A658:        STA $0E                   
CODE_12A65A:        BNE CODE_12A667           
CODE_12A65C:        LDA $042C                 
CODE_12A65F:        CLC                       
CODE_12A660:        ADC #$11                  
CODE_12A662:        STA $042C                 
CODE_12A665:        BRA CODE_12A618           

CODE_12A667:        SEP #$10                  
CODE_12A669:        PLX                       
CODE_12A66A:        RTS
                       
CODE_12A66B:        LDA $0429                 
CODE_12A66E:        STA $0800,y               
CODE_12A671:        CLC                       
CODE_12A672:        ADC #$08                  
CODE_12A674:        STA $0804,y               
CODE_12A677:        LDA $0713                 
CODE_12A67A:        STA $0801,y               
CODE_12A67D:        STA $0805,y               
CODE_12A680:        LDA $0712                 
CODE_12A683:        STA $0802,y               
CODE_12A686:        STA $0806,y               
CODE_12A689:        LDA #$26                  
CODE_12A68B:        STA $0803,y               
CODE_12A68E:        ORA #$40                  
CODE_12A690:        STA $0807,y               
CODE_12A693:        REP #$20                  
CODE_12A695:        TYA                       
CODE_12A696:        LSR A                     
CODE_12A697:        LSR A                     
CODE_12A698:        TAY                       
CODE_12A699:        SEP #$20                  
CODE_12A69B:        LDA $ED                   
CODE_12A69D:        AND #$01                  
CODE_12A69F:        STA $0A20,y               
CODE_12A6A2:        LDA $ED                   
CODE_12A6A4:        LSR A                     
CODE_12A6A5:        AND #$01                  
CODE_12A6A7:        STA $0A21,y               
CODE_12A6AA:        RTS
                       
CODE_12A6AB:        JSR CODE_12A745           
CODE_12A6AE:        LDA #$12                  
CODE_12A6B0:        STA $65,x                 
CODE_12A6B2:        LDA $86,x                 ; \ If timer is up...
CODE_12A6B4:        BEQ CODE_12A6ED           ; / branch.
CODE_12A6B6:        LDA #$F8                  ; \ Y speed of sand = #$F8.
CODE_12A6B8:        STA $47,x                 ; /
CODE_12A6BA:        JSR CODE_12C1EA           
CODE_12A6BD:        LDA #$B2                  ; Tile number of sand tile for the first 16 frames.
CODE_12A6BF:        LDY $86,x                 ; \ Check if halfway...
CODE_12A6C1:        CPY #$10                  ;  | (16 frames done)
CODE_12A6C3:        BCS CODE_12A6D8           ; / If not, branch, and keep this tile.
CODE_12A6C5:        LDA #$80                  
CODE_12A6C7:        STA $046E,x               
CODE_12A6CA:        LDA #$01                  
CODE_12A6CC:        STA $65,x                 
CODE_12A6CE:        ASL A                     
CODE_12A6CF:        STA $6F,x                 
CODE_12A6D1:        INC $9F,x                 
CODE_12A6D3:        JSR CODE_12AA43           
CODE_12A6D6:        LDA #$B4                  ; Tile number of sand tile for the last 16 frames.
CODE_12A6D8:        JSR CODE_12BDD5           
CODE_12A6DB:        REP #$10                  
CODE_12A6DD:        LDY $02F6                 
CODE_12A6E0:        LDA $0803,y               
CODE_12A6E3:        AND #$F0                  
CODE_12A6E5:        ORA #$02                  
CODE_12A6E7:        STA $0803,y               
CODE_12A6EA:        SEP #$10                  
CODE_12A6EC:        RTS
                       
CODE_12A6ED:        CPX $042D                 
CODE_12A6F0:        BNE CODE_12A6F6           
CODE_12A6F2:        LDA #$00                  
CODE_12A6F4:        STA $9C                   
CODE_12A6F6:        JMP CODE_12A83B           

CODE_12A6F9:        LDA #$00                  
CODE_12A6FB:        STA $ED                   
CODE_12A6FD:        LDA $65,x                 
CODE_12A6FF:        LDY #$01                  
CODE_12A701:        AND #$04                  
CODE_12A703:        BNE CODE_12A71E           
CODE_12A705:        LDA $90,x                 
CODE_12A707:        CMP #$1A                  
CODE_12A709:        BEQ CODE_12A71E           
CODE_12A70B:        CMP #$08                  
CODE_12A70D:        BEQ CODE_12A71E           
CODE_12A70F:        CMP #$2D                  
CODE_12A711:        BEQ CODE_12A71E           
CODE_12A713:        CMP #$21                  
CODE_12A715:        BEQ CODE_12A71E           
CODE_12A717:        LDA $046E,x               
CODE_12A71A:        AND #$20                  
CODE_12A71C:        BEQ CODE_12A720           
CODE_12A71E:        LDY #$03                  
CODE_12A720:        LDA $29,x                 
CODE_12A722:        CLC                       
CODE_12A723:        ADC.w DATA_1197E4,y               
CODE_12A726:        STA $0E                   
CODE_12A728:        LDA $15,x                 
CODE_12A72A:        ADC #$00                  
CODE_12A72C:        STA $0F                   
CODE_12A72E:        LDA $0E                   
CODE_12A730:        CMP $04C1                 
CODE_12A733:        LDA $0F                   
CODE_12A735:        SBC $04BF                 
CODE_12A738:        BEQ CODE_12A741           
CODE_12A73A:        LDA $ED                   
CODE_12A73C:        ORA.w DATA_1197E0,y               
CODE_12A73F:        STA $ED                   
CODE_12A741:        DEY                       
CODE_12A742:        BPL CODE_12A720           
CODE_12A744:        RTS
                       
CODE_12A745:        JSR CODE_12A6F9           
CODE_12A748:        LDA #$30                  
CODE_12A74A:        LDY $90,x                 
CODE_12A74C:        CPY #$2C                  
CODE_12A74E:        BEQ CODE_12A78B           
CODE_12A750:        LDA #$1E                  
CODE_12A752:        CPY #$38                  
CODE_12A754:        BEQ CODE_12A78B           
CODE_12A756:        CPY #$12                  
CODE_12A758:        BEQ CODE_12A78B           
CODE_12A75A:        CPY $0041                 
CODE_12A75D:        BEQ CODE_12A78B           
CODE_12A75F:        LDA #$22                  
CODE_12A761:        CPY #$1F                  
CODE_12A763:        BEQ CODE_12A78B           
CODE_12A765:        CPY #$18                  
CODE_12A767:        BEQ CODE_12A78B           
CODE_12A769:        CPY #$19                  
CODE_12A76B:        BEQ CODE_12A78B           
CODE_12A76D:        CPY #$1C                  
CODE_12A76F:        BEQ CODE_12A78B           
CODE_12A771:        CPY #$1D                  
CODE_12A773:        BEQ CODE_12A78B           
CODE_12A775:        CPY #$21                  
CODE_12A777:        BEQ CODE_12A78B           
CODE_12A779:        CPY #$08                  
CODE_12A77B:        BEQ CODE_12A78B           
CODE_12A77D:        CPY #$26                  
CODE_12A77F:        BEQ CODE_12A78B           
CODE_12A781:        CPY #$2D                  
CODE_12A783:        BEQ CODE_12A78B           
CODE_12A785:        CPY #$35                  
CODE_12A787:        BEQ CODE_12A78B           
CODE_12A789:        LDA #$10                  
CODE_12A78B:        ADC $33,x                 
CODE_12A78D:        STA $00                   
CODE_12A78F:        LDA $1F,x                 
CODE_12A791:        ADC #$00                  
CODE_12A793:        STA $01                   
CODE_12A795:        LDA $00                   
CODE_12A797:        CMP $CB                   
CODE_12A799:        LDA $01                   
CODE_12A79B:        SBC $CA                   
CODE_12A79D:        STA $EE                   
CODE_12A79F:        CPY #$17                  
CODE_12A7A1:        BEQ CODE_12A744           
CODE_12A7A3:        CPY #$41                  
CODE_12A7A5:        BEQ CODE_12A744           
CODE_12A7A7:        CPY #$43                  
CODE_12A7A9:        BEQ CODE_12A744           
CODE_12A7AB:        CPY #$2D                  
CODE_12A7AD:        BEQ CODE_12A744           
CODE_12A7AF:        TXA                       
CODE_12A7B0:        AND #$01                  
CODE_12A7B2:        STA $00                   
CODE_12A7B4:        LDA $10                   
CODE_12A7B6:        AND #$01                  
CODE_12A7B8:        EOR $00                   
CODE_12A7BA:        BNE CODE_12A744           
CODE_12A7BC:        LDA $CB                   
CODE_12A7BE:        SBC #$30                  
CODE_12A7C0:        STA $01                   
CODE_12A7C2:        LDA $CA                   
CODE_12A7C4:        SBC #$00                  
CODE_12A7C6:        STA $00                   
CODE_12A7C8:        INC $00                   
CODE_12A7CA:        LDA $CB                   
CODE_12A7CC:        ADC #$FF                  
CODE_12A7CE:        PHP                       
CODE_12A7CF:        ADC #$30                  
CODE_12A7D1:        STA $03                   
CODE_12A7D3:        LDA $CA                   
CODE_12A7D5:        ADC #$00                  
CODE_12A7D7:        PLP                       
CODE_12A7D8:        ADC #$00                  
CODE_12A7DA:        STA $02                   
CODE_12A7DC:        INC $02                   
CODE_12A7DE:        LDA $33,x                 
CODE_12A7E0:        CMP $01                   
CODE_12A7E2:        LDY $1F,x                 
CODE_12A7E4:        INY                       
CODE_12A7E5:        TYA                       
CODE_12A7E6:        SBC $00                   
CODE_12A7E8:        BMI CODE_12A837           
CODE_12A7EA:        LDA $33,x                 
CODE_12A7EC:        CMP $03                   
CODE_12A7EE:        LDY $1F,x                 
CODE_12A7F0:        INY                       
CODE_12A7F1:        TYA                       
CODE_12A7F2:        SBC $02                   
CODE_12A7F4:        BPL CODE_12A837           
CODE_12A7F6:        LDA $04C1                 
CODE_12A7F9:        SBC #$30                  
CODE_12A7FB:        STA $01                   
CODE_12A7FD:        LDA $04BF                 
CODE_12A800:        SBC #$00                  
CODE_12A802:        STA $00                   
CODE_12A804:        INC $00                   
CODE_12A806:        LDA $04C2                 
CODE_12A809:        ADC #$30                  
CODE_12A80B:        STA $03                   
CODE_12A80D:        LDA $04C0                 
CODE_12A810:        ADC #$00                  
CODE_12A812:        STA $02                   
CODE_12A814:        INC $02                   
CODE_12A816:        LDA $29,x                 
CODE_12A818:        CMP $01                   
CODE_12A81A:        LDY $15,x                 
CODE_12A81C:        INY                       
CODE_12A81D:        TYA                       
CODE_12A81E:        SBC $00                   
CODE_12A820:        BMI CODE_12A82E           
CODE_12A822:        LDA $29,x                 
CODE_12A824:        CMP $03                   
CODE_12A826:        LDY $15,x                 
CODE_12A828:        INY                       
CODE_12A829:        TYA                       
CODE_12A82A:        SBC $02                   
CODE_12A82C:        BMI CODE_12A84B           
CODE_12A82E:        LDY $90,x                 
CODE_12A830:        LDA.w DATA_11CC8C,y               
CODE_12A833:        AND #$08                  
CODE_12A835:        BNE CODE_12A84B           
CODE_12A837:        LDA $A8,x                 
CODE_12A839:        BNE CODE_12A84B           
CODE_12A83B:        LDY $0441,x               
CODE_12A83E:        BMI CODE_12A846           
CODE_12A840:        LDA ($CC),y               
CODE_12A842:        AND #$7F                  
CODE_12A844:        STA ($CC),y               
CODE_12A846:        STZ $51,x                 
CODE_12A848:        STZ $042F,x               
CODE_12A84B:        RTS
                       
CODE_12A84C:        LDA #$01                  
CODE_12A84E:        STA $04A4,x               
CODE_12A851:        LDY $042F,x               
CODE_12A854:        DEY                       
CODE_12A855:        CPY #$1F                  
CODE_12A857:        BCS CODE_12A85C                   
CODE_12A859:        INC $042F,x               
CODE_12A85C:        JSR CODE_12A745           
CODE_12A85F:        LDA $50                   
CODE_12A861:        CMP #$08                  
CODE_12A863:        BEQ CODE_12A881           
CODE_12A865:        LDA $D8                   
CODE_12A867:        AND #$04                  
CODE_12A869:        BNE CODE_12A8B0           
CODE_12A86B:        LDA $0500                 
CODE_12A86E:        BEQ CODE_12A87C           
CODE_12A870:        LDA $90,x                 
CODE_12A872:        CMP #$1A                  
CODE_12A874:        BEQ CODE_12A8C0           
CODE_12A876:        CMP #$08                  
CODE_12A878:        BEQ CODE_12A8C0           
CODE_12A87A:        BRA CODE_12A881           

CODE_12A87C:        LDA $0438,x               
CODE_12A87F:        BEQ CODE_12A8C0           
CODE_12A881:        LDA $90,x                 
CODE_12A883:        CMP #$2B                  
CODE_12A885:        BEQ CODE_12A8C0           
CODE_12A887:        CMP #$00                  
CODE_12A889:        BEQ CODE_12A8C0           
CODE_12A88B:        CMP #$41                  
CODE_12A88D:        BEQ CODE_12A893           
CODE_12A88F:        CMP #$32                  
CODE_12A891:        BCS CODE_12A8C0                   
CODE_12A893:        JSR CODE_12BB16           
CODE_12A896:        LDA $042F,x               
CODE_12A899:        BEQ CODE_12A8A4           
CODE_12A89B:        LDA $50                   
CODE_12A89D:        CMP #$08                  
CODE_12A89F:        BEQ CODE_12A8A4           
CODE_12A8A1:        JSR CODE_12A0AA           
CODE_12A8A4:        LDA $A8,x                 
CODE_12A8A6:        BEQ CODE_12A8AD           
CODE_12A8A8:        DEC $9F,x                 
CODE_12A8AA:        JMP CODE_12B692           

CODE_12A8AD:        JSR CODE_12DE6A           
CODE_12A8B0:        LDA $90,x                 
CODE_12A8B2:        CMP #$18                  
CODE_12A8B4:        BNE CODE_12A8BD           
CODE_12A8B6:        LDA $5B,x                 
CODE_12A8B8:        AND #$08                  
CODE_12A8BA:        BEQ CODE_12A8BD           
CODE_12A8BC:        RTS
                       
CODE_12A8BD:        JMP CODE_12BD29           

CODE_12A8C0:        LDY #$01                  
CODE_12A8C2:        LDA $3D,x                 
CODE_12A8C4:        BEQ CODE_12A8CC           
CODE_12A8C6:        BPL CODE_12A8C9           
CODE_12A8C8:        INY                       
CODE_12A8C9:        TYA                       
CODE_12A8CA:        STA $6F,x                 
CODE_12A8CC:        LDY $90,x                 
CODE_12A8CE:        LDA.w DATA_11CC45,y               
CODE_12A8D1:        AND #$20                  
CODE_12A8D3:        BNE CODE_12A914           
CODE_12A8D5:        LDA $65,x                 
CODE_12A8D7:        AND #$DF                  
CODE_12A8D9:        STA $65,x                 
CODE_12A8DB:        LDA #$06                  
CODE_12A8DD:        STA $0712                 
CODE_12A8E0:        LDA $06C2                 
CODE_12A8E3:        BEQ CODE_12A8EA           
CODE_12A8E5:        LDA #$04                  
CODE_12A8E7:        STA $0712                 
CODE_12A8EA:        LDA $A8,x                 
CODE_12A8EC:        CMP $0712                 
CODE_12A8EF:        BCC CODE_12A914           
CODE_12A8F1:        LDA $0D00,x               
CODE_12A8F4:        BNE CODE_12A914           
CODE_12A8F6:        LDA $90,x                 
CODE_12A8F8:        CMP #$09                  
CODE_12A8FA:        BNE CODE_12A902           
CODE_12A8FC:        LDA $5B,x                 
CODE_12A8FE:        AND #$04                  
CODE_12A900:        BNE CODE_12A907           
CODE_12A902:        LDA.w DATA_11CC45,y               
CODE_12A905:        BPL CODE_12A914           
CODE_12A907:        LDA $04EF                 
CODE_12A90A:        BNE CODE_12A914           
CODE_12A90C:        LDA $65,x                 
CODE_12A90E:        ORA #$20                  
CODE_12A910:        AND #$EF                  
CODE_12A912:        STA $65,x                 
CODE_12A914:        JSR CODE_12A937           
CODE_12A917:        LDA $EB                   
CODE_12A919:        BNE CODE_12A928           
CODE_12A91B:        LDA $90,x                 
CODE_12A91D:        CMP #$0F                  
CODE_12A91F:        BNE CODE_12A928           
CODE_12A921:        LDA $0429                 
CODE_12A924:        CMP #$F4                  
CODE_12A926:        BCS CODE_12A933                   
CODE_12A928:        LDA $1F,x                 
CODE_12A92A:        BMI CODE_12A934           
CODE_12A92C:        LDA $042C                 
CODE_12A92F:        CMP #$E8                  
CODE_12A931:        BCC CODE_12A934           
CODE_12A933:        RTS
                       
CODE_12A934:        JMP CODE_12DE6A     
      
CODE_12A937:        LDA $90,x                 
CODE_12A939:        JSL CODE_118776   

PNTR_12A93D:        dw CODE_12AEC3                          ; 00 - Heart.
                    dw CODE_12B4D1                          ; 01 - Red Shyguy.
                    dw CODE_12B4D1                          ; 02 - Tweeter.
                    dw CODE_12B4D1                          ; 03 - Blue Shyguy.
                    dw CODE_12B4D1                          ; 04 - Porcupo.
                    dw CODE_12B4D1                          ; 05 - Red Snifit.
                    dw CODE_12B4D1                          ; 06 - Grey snifit.
                    dw CODE_12B4D1                          ; 07 - Blue snifit.
                    dw CODE_12C97A                          ; 08 - Ostro with Red Shyguy.
                    dw CODE_12B4A3                          ; 09 - Bob-Omb
                    dw CODE_12B29D                          ; 0A - Albatoss with Bob-Omb
                    dw CODE_12B29D                          ; 0B - Albatoss, coming from left.
                    dw CODE_12B29D                          ; 0C - Albatoss, coming from right.
                    dw CODE_12B43E                          ; 0D - Ninji, walking.
                    dw CODE_12B41A                          ; 0E - Ninji, jumping.
                    dw CODE_12B46E                          ; 0F - Beezo, gold
                    dw CODE_12B46E                          ; 10 - Beezo, red
                    dw CODE_12DC1C                          ; 11 - Wart's bubble
                    dw CODE_12C613                          ; 12 - Pidgit, carpet.
                    dw CODE_12AE26                          ; 13 - Trouter
                    dw CODE_12AE5D                          ; 14 - Hoopster
                    dw CODE_12AC25                          ; 15 - Shyguy generator
                    dw CODE_12AC25                          ; 16 - Bob-omb generator
                    dw CODE_12B373                          ; 17 - Phanto 
                    dw CODE_12CD44                          ; 18 - Cobrat, jar
                    dw CODE_12CCC5                          ; 19 - Cobrat, sand
                    dw CODE_12CDF0                          ; 1A - Pokey
                    dw CODE_12B2F3                          ; 1B - Bullet
                    dw CODE_12AF56                          ; 1C - Birdo
                    dw CODE_12C808                          ; 1D - Mouser
                    dw CODE_12B2F3                          ; 1E - Egg
                    dw CODE_12CA91                          ; 1F - Triclyde
                    dw CODE_12AACE                          ; 20 - Fireball
                    dw CODE_12C286                          ; 21 - Clawglip
                    dw CODE_12C469                          ; 22 - Rock
                    dw CODE_12AB21                          ; 23 - Panser, red
                    dw CODE_12AB19                          ; 24 - Panser, blue
                    dw CODE_12AB21                          ; 25 - Panser, green
                    dw CODE_12D440                          ; 26 - Autobomb with Shyguy
                    dw CODE_12B2E6                          ; 27 - Autobomb fire
                    dw CODE_12D59D                          ; 28 - Whale spout
                    dw CODE_12D796                          ; 29 - Flurry
                    dw CODE_12D30A                          ; 2A - Fryguy
                    dw CODE_12D3C4                          ; 2B - Small Fryguy,
                    dw CODE_12DB51                          ; 2C - Wart.
                    dw CODE_12D809                          ; 2D - Hawkmouth boss.
                    dw CODE_12A9E3                          ; 2E - Sparky, right, slow.
                    dw CODE_12A9E3                          ; 2F - Sparky, right, fast.
                    dw CODE_12A9E3                          ; 30 - Sparky, left, slow.
                    dw CODE_12A9E3                          ; 31 - Sparky, left, fast.
                    dw CODE_12B13D                          ; 32 - Small vegetable.
                    dw CODE_12B13D                          ; 33 - Fresh vegetable.
                    dw CODE_12B13D                          ; 34 - Vegetable thrower vegetable.
                    dw CODE_12B9E9                          ; 35 - Shell
                    dw CODE_12B027                          ; 36 - Coin
                    dw CODE_12B0D6                          ; 37 - Bomb
                    dw CODE_12CFC3                          ; 38 - Rocket
                    dw CODE_12B717                          ; 39 - Mushroom block
                    dw CODE_12B717                          ; 3A - POW block
                    dw CODE_12BA64                          ; 3B - Rolling log
                    dw CODE_12B7BA                          ; 3C - Door to dark room
                    dw CODE_12B0D3                          ; 3D - Key
                    dw CODE_12B151                          ; 3E - Potion
                    dw CODE_12B064                          ; 3F - Mushroom
                    dw CODE_12B038                          ; 40 - 1-Up
                    dw CODE_12C4F6                          ; 41 - Pidgit's carpet
                    dw CODE_12AC8D                          ; 42 - Hawkmouth, face to the right
                    dw CODE_12AC8D                          ; 43 - Hawkmouth, face to the left
                    dw CODE_12B05E                          ; 44 - Crystal ball
                    dw CODE_12AC11                          ; 45 - Star
                    dw CODE_12B064                          ; 46 - Stopwatch

CODE_12A9CB:        JSR CODE_129F96           
CODE_12A9CE:        LDA #$50                  
CODE_12A9D0:        STA $9F,x                 
CODE_12A9D2:        RTS
                       
CODE_12A9D3:        JSR CODE_129F96           
CODE_12A9D6:        LDY $90,x                 
CODE_12A9D8:        LDA.w DATA_1197BA,y               
CODE_12A9DB:        STA $3D,x                 
CODE_12A9DD:        LDA.w DATA_1197BC,y               
CODE_12A9E0:        STA $47,x                 
CODE_12A9E2:        RTS
                       
CODE_12A9E3:        JSR CODE_12BB16           
CODE_12A9E6:        JSR CODE_12AA43           
CODE_12A9E9:        LDY #$0A                  
CODE_12A9EB:        LDA $10                   
CODE_12A9ED:        AND #$04                  
CODE_12A9EF:        BEQ CODE_12A9F3           
CODE_12A9F1:        LDY #$06                  
CODE_12A9F3:        STY $0248                 
CODE_12A9F6:        JSR CODE_12BD29           
CODE_12A9F9:        LDA $29,x                 
CODE_12A9FB:        ORA $33,x                 
CODE_12A9FD:        AND #$0F                  
CODE_12A9FF:        BNE CODE_12AA38           
CODE_12AA01:        JSR CODE_12DDA7           
CODE_12AA04:        LDY $0477,x               
CODE_12AA07:        LDA $5B,x                 
CODE_12AA09:        AND.w DATA_1197EE,y               
CODE_12AA0C:        BEQ CODE_12AA2F           
CODE_12AA0E:        LDA.w DATA_1197EE,y               
CODE_12AA11:        EOR #$0F                  
CODE_12AA13:        AND $5B,x                 
CODE_12AA15:        BEQ CODE_12AA38           
CODE_12AA17:        TYA                       
CODE_12AA18:        EOR #$01                  
CODE_12AA1A:        STA $0477,x               
CODE_12AA1D:        TAY                       
CODE_12AA1E:        TXA                       
CODE_12AA1F:        CLC                       
CODE_12AA20:        ADC.w DATA_1197F0,y               
CODE_12AA23:        TAY                       
CODE_12AA24:        LDA $003D,y               
CODE_12AA27:        EOR #$FF                  
CODE_12AA29:        ADC #$01                  
CODE_12AA2B:        STA $003D,y               
CODE_12AA2E:        RTS                       

CODE_12AA2F:        TYA                       
CODE_12AA30:        EOR #$01                  
CODE_12AA32:        STA $0477,x               
CODE_12AA35:        JSR CODE_12AA1E           
CODE_12AA38:        LDA $0477,x               
CODE_12AA3B:        BNE CODE_12AA40           
CODE_12AA3D:        JMP CODE_12C1EF   
        
CODE_12AA40:        JMP CODE_12C1EA   
        
CODE_12AA43:        INC $9F,x                 
CODE_12AA45:        INC $9F,x                 
CODE_12AA47:        RTS                       
                       
CODE_12AA48:        JSR CODE_12AAA7           
CODE_12AA4B:        ADC.w DATA_1197F2,y               
CODE_12AA4E:        STA $29,x                 
CODE_12AA50:        LDA $04BF                 
CODE_12AA53:        ADC.w DATA_1197F4,y               
CODE_12AA56:        STA $15,x                 
CODE_12AA58:        STY $01                   
CODE_12AA5A:        LDA #$0A                  
CODE_12AA5C:        STA $90,x                 
CODE_12AA5E:        JSR CODE_129F7A           
CODE_12AA61:        LDA $0587                 
CODE_12AA64:        AND #$1F                  
CODE_12AA66:        ADC #$20                  
CODE_12AA68:        STA $33,x                 
CODE_12AA6A:        LDA $00CA                 
CODE_12AA6D:        ADC #$00                  
CODE_12AA6F:        STA $1F,x                 
CODE_12AA71:        LDY $01                   
CODE_12AA73:        JSR CODE_129FD0           
CODE_12AA76:        ASL $3D,x                 
CODE_12AA78:        RTS                       

CODE_12AA79:        JSR CODE_12AAA7           
CODE_12AA7C:        CLC                       
CODE_12AA7D:        ADC.w DATA_1197F6,y               
CODE_12AA80:        STA $29,x                 
CODE_12AA82:        LDA $EB                   
CODE_12AA84:        BEQ CODE_12AA8B           
CODE_12AA86:        LDA $04BF                 
CODE_12AA89:        ADC #$00                  
CODE_12AA8B:        STA $15,x                 
CODE_12AA8D:        LDA $CB                   
CODE_12AA8F:        STA $33,x                 
CODE_12AA91:        LDA $CA                   
CODE_12AA93:        STA $1F,x                 
CODE_12AA95:        STY $01                   
CODE_12AA97:        LDA #$0F                  
CODE_12AA99:        STA $90,x                 
CODE_12AA9B:        JSR CODE_129F7A           
CODE_12AA9E:        LDY $01                   
CODE_12AAA0:        JSR CODE_129FD0           
CODE_12AAA3:        JSR CODE_129FF7           
CODE_12AAA6:        RTS                       
                       
CODE_12AAA7:        LDA $0500                 
CODE_12AAAA:        BNE CODE_12AACB           
CODE_12AAAC:        LDA $0623                 
CODE_12AAAF:        CLC                       
CODE_12AAB0:        ADC #$03
CODE_12AAB2:        STA $0623                                 
CODE_12AAB5:        BCC CODE_12AACB           
CODE_12AAB7:        JSR CODE_12B335           
CODE_12AABA:        BMI CODE_12AACB           
CODE_12AABC:        LDY #$00                  
CODE_12AABE:        LDA $10                   
CODE_12AAC0:        AND #$40                
CODE_12AAC2:        BNE CODE_12AAC5
CODE_12AAC4:        INY               
CODE_12AAC5:        LDX $00                   
CODE_12AAC7:        LDA $04C1                 
CODE_12AACA:        RTS
                       
CODE_12AACB:        PLA                       
CODE_12AACC:        PLA                       
CODE_12AACD:        RTS
                       
CODE_12AACE:        JSR CODE_12DDAB           
CODE_12AAD1:        JSR CODE_12BB16           
CODE_12AAD4:        LDA $0453,x               
CODE_12AAD7:        BNE CODE_12AAE1           
CODE_12AAD9:        LDA #$04
CODE_12AADB:        STA $0453,x               
CODE_12AADE:        INC $0480,x               
CODE_12AAE1:        LDA $0480,x               
CODE_12AAE4:        CMP #$03
CODE_12AAE6:        BCC CODE_12AAED                
CODE_12AAE8:        LDA #$00                   
CODE_12AAEA:        STA $0480,x                  
           
CODE_12AAED:        LDA $65,x                 
CODE_12AAEF:        AND #$EF
CODE_12AAF1:        STA $65,x       
CODE_12AAF3:        LDA $0480,x                              
CODE_12AAF6:        ASL A                     
CODE_12AAF7:        STA $0712                 
CODE_12AAFA:        LDY $90,x                 
CODE_12AAFC:        LDA.w DATA_11993B,y               
CODE_12AAFF:        CLC                       
CODE_12AB00:        ADC $0712                 
CODE_12AB03:        JSR CODE_12BDD5           
CODE_12AB06:        LDA $79,x                 
CODE_12AB08:        BNE CODE_12AB0D           
CODE_12AB0A:        JMP CODE_12A0AA           

CODE_12AB0D:        LDA $5B,x                 
CODE_12AB0F:        AND #$03
CODE_12AB11:        BEQ CODE_12AB16
CODE_12AB13:        JSR CODE_12B1F9  
CODE_12AB16:        JMP CODE_12B497               
           
CODE_12AB19:        LDA $9F,x                 
CODE_12AB1B:        ASL A                     
CODE_12AB1C:        BNE CODE_12AB21           
CODE_12AB1E:        JSR CODE_129FCD           
CODE_12AB21:        JSR CODE_12DDAB           
CODE_12AB24:        LDA $5B,x                 
CODE_12AB26:        PHA                       
CODE_12AB27:        AND #$04                  
CODE_12AB29:        BEQ CODE_12AB2E           
CODE_12AB2B:        JSR CODE_12B659           
CODE_12AB2E:        PLA                       
CODE_12AB2F:        AND #$03                  
CODE_12AB31:        BEQ CODE_12AB36           
CODE_12AB33:        JSR CODE_12C248           
CODE_12AB36:        JSR CODE_12A0AA           
CODE_12AB39:        LDA #$83                  
CODE_12AB3B:        STA $046E,x               
CODE_12AB3E:        LDA #$02                  
CODE_12AB40:        STA $6F,x                 
CODE_12AB42:        JSR CODE_12BB16           
CODE_12AB45:        INC $9F,x                 
CODE_12AB47:        LDA $9F,x                 
CODE_12AB49:        AND #$2F                  
CODE_12AB4B:        BNE CODE_12AB51           
CODE_12AB4D:        LDA #$10                  
CODE_12AB4F:        STA $86,x                 
CODE_12AB51:        LDY $86,x                 
CODE_12AB53:        BEQ CODE_12ABA7           
CODE_12AB55:        CPY #$06                  
CODE_12AB57:        BNE CODE_12AB95           
CODE_12AB59:        JSR CODE_12B335           
CODE_12AB5C:        BMI CODE_12AB95           
CODE_12AB5E:        LDA $90,x                 
CODE_12AB60:        PHA                       
CODE_12AB61:        LDX $00                   
CODE_12AB63:        LDA $0587                 
CODE_12AB66:        AND #$0F                  
CODE_12AB68:        ORA #$BC                  
CODE_12AB6A:        STA $47,x                 
CODE_12AB6C:        JSR CODE_12C1DA           
CODE_12AB6F:        PLA                       
CODE_12AB70:        CMP #$25                  
CODE_12AB72:        LDA.w DATA_1197F8,y               
CODE_12AB75:        BCC CODE_12AB79           
CODE_12AB77:        LDA #$00                  
CODE_12AB79:        STA $3D,x                 
CODE_12AB7B:        LDA $29,x                 
CODE_12AB7D:        SBC #$05                  
CODE_12AB7F:        STA $29,x                 
CODE_12AB81:        LDA $15,x                 
CODE_12AB83:        SBC #$00                  
CODE_12AB85:        STA $15,x                 
CODE_12AB87:        LDA #$20                  
CODE_12AB89:        STA $90,x                 
CODE_12AB8B:        LDA #$27                  
CODE_12AB8D:        STA $1DE3                 
CODE_12AB90:        JSR CODE_129F7A           
CODE_12AB93:        LDX $12                   
CODE_12AB95:        LDA $65,x                 
CODE_12AB97:        ORA #$10                  
CODE_12AB99:        STA $65,x                 
CODE_12AB9B:        LDA #$AE                  
CODE_12AB9D:        JSR CODE_12BDD5           
CODE_12ABA0:        LDA $65,x                 
CODE_12ABA2:        AND #$EF                  
CODE_12ABA4:        STA $65,x                 
CODE_12ABA6:        RTS                       

CODE_12ABA7:        JMP CODE_12BD29           

CODE_12ABAA:        LDY #$05                  
CODE_12ABAC:        LDA $0051,y               
CODE_12ABAF:        BEQ CODE_12ABBC           
CODE_12ABB1:        CPY $12                   
CODE_12ABB3:        BEQ CODE_12ABBC           
CODE_12ABB5:        LDA $0090,y               
CODE_12ABB8:        CMP #$3D                  
CODE_12ABBA:        BEQ CODE_12ABC7           
CODE_12ABBC:        DEY                       
CODE_12ABBD:        BPL CODE_12ABAC           
CODE_12ABBF:        LDA $04B0                 
CODE_12ABC2:        BNE CODE_12ABC7           
CODE_12ABC4:        JMP CODE_12AC85           

CODE_12ABC7:        JMP CODE_12A83B           

CODE_12ABCA:        LDY #$05                  
CODE_12ABCC:        LDA $0051,y               
CODE_12ABCF:        BEQ CODE_12ABDC           
CODE_12ABD1:        CPY $12                   
CODE_12ABD3:        BEQ CODE_12ABDC           
CODE_12ABD5:        LDA $0090,y               
CODE_12ABD8:        CMP #$44                  
CODE_12ABDA:        BEQ CODE_12ABC7           
CODE_12ABDC:        DEY                       
CODE_12ABDD:        BPL CODE_12ABCC           
CODE_12ABDF:        LDA $04B5                 
CODE_12ABE2:        BNE CODE_12ABC7           
CODE_12ABE4:        BEQ CODE_12ABC4           
CODE_12ABE6:        JSR CODE_12B335           
CODE_12ABE9:        BMI CODE_12AC10           
CODE_12ABEB:        LDX $00                   
CODE_12ABED:        LDA #$45                  
CODE_12ABEF:        STA $90,x                 
CODE_12ABF1:        LDA $04C1                 
CODE_12ABF4:        ADC #$D0                  
CODE_12ABF6:        STA $29,x                 
CODE_12ABF8:        LDA $04BF                 
CODE_12ABFB:        ADC #$00                  
CODE_12ABFD:        STA $15,x                 
CODE_12ABFF:        LDA $CB                   
CODE_12AC01:        ADC #$E0                  
CODE_12AC03:        STA $33,x                 
CODE_12AC05:        LDA $CA                   
CODE_12AC07:        ADC #$00                  
CODE_12AC09:        STA $1F,x                 
CODE_12AC0B:        JSR CODE_129F7A           
CODE_12AC0E:        LDX $12                   
CODE_12AC10:        RTS                       

CODE_12AC11:        LDA #$FC                  ; \ Star Y speed = #$FC.
CODE_12AC13:        STA $47,x                 ; / (Rise up slightly.)
CODE_12AC15:        LDY #$F8                  ; \ X speed is #$F8 or #$08.
CODE_12AC17:        LDA $10                   ;  | Switches every 128 frames.
CODE_12AC19:        STA $045C,x               ;  |
CODE_12AC1C:        BPL CODE_12AC20           ;  |
CODE_12AC1E:        LDY #$08                  ;  | <--
CODE_12AC20:        STY $3D,x                 ; /
CODE_12AC22:        JMP CODE_12A0A7           

CODE_12AC25:        JSR CODE_12DDAB           
CODE_12AC28:        AND #$03                  
CODE_12AC2A:        BNE CODE_12AC2F           
CODE_12AC2C:        JMP CODE_12A83B           

CODE_12AC2F:        INC $9F,x                 
CODE_12AC31:        LDA $9F,x                 
CODE_12AC33:        ASL A                     
CODE_12AC34:        BNE CODE_12AC77           
CODE_12AC36:        JSR CODE_12B335           
CODE_12AC39:        BMI CODE_12AC77           
CODE_12AC3B:        LDY $00                   
CODE_12AC3D:        LDA $0029,y               ; \ X position of new sprite = 6 pixels to the left from the generator.
CODE_12AC40:        SEC                       ;  |
CODE_12AC41:        SBC #$06                  ;  |
CODE_12AC43:        STA $0029,y               ; /
CODE_12AC46:        LDA $0033,y               ; \ Y position of new sprite = 4 pixels upwards from the generator.
CODE_12AC49:        SBC #$04                  ;  |
CODE_12AC4B:        STA $0033,y               ; /
CODE_12AC4E:        LDA $001F,y               
CODE_12AC51:        SBC #$00                  
CODE_12AC53:        STA $001F,y               
CODE_12AC56:        LDA #$1A                  
CODE_12AC58:        STA $0480,y               
CODE_12AC5B:        LDA #$F8                  
CODE_12AC5D:        STA $0047,y               
CODE_12AC60:        LDA $90,x                 ; \ Check if Bob-Omb generator.
CODE_12AC62:        CMP #$16                  ;  |
CODE_12AC64:        BNE CODE_12AC77           ; / If not, return.
CODE_12AC66:        LDA #$09                  ; \ Spawn Bob-Omb.
CODE_12AC68:        STA $0090,y               ; /
CODE_12AC6B:        LDA $003D,y               
CODE_12AC6E:        ASL A                     
CODE_12AC6F:        STA $003D,y               
CODE_12AC72:        LDA #$FF                  
CODE_12AC74:        STA $0086,y               
CODE_12AC77:        RTS                       

CODE_12AC78:        DEC $33,x                 
CODE_12AC7A:        DEC $33,x                 
CODE_12AC7C:        LDY #$01                  
CODE_12AC7E:        STY $111F                 
CODE_12AC81:        INY                       
CODE_12AC82:        STY $110B                 
CODE_12AC85:        JSR CODE_129F96           
CODE_12AC88:        LDA #$00                  ; \ No X-speed.
CODE_12AC8A:        STA $3D,x                 ; /
CODE_12AC8C:        RTS                       

CODE_12AC8D:        LDA $ED                   
CODE_12AC8F:        BEQ CODE_12AC94           
CODE_12AC91:        JMP CODE_12AD30           

CODE_12AC94:        LDA $04B6                 ; \ If time to wait before Hawkmouth opens his mouth is 0...
CODE_12AC97:        BEQ CODE_12ACA3           ; / Branch.
CODE_12AC99:        DEC $04B6                 ; \ Decrease that timer. If not hitting 0, branch.
CODE_12AC9C:        BNE CODE_12AC91           ; /
CODE_12AC9E:        LDA #$2C                  ; \ Opening mouth sound effect.
CODE_12ACA0:        STA $1DE0                 ; /
CODE_12ACA3:        LDA $04B4                 
CODE_12ACA6:        BEQ CODE_12ACDD           
CODE_12ACA8:        DEC $04B5                 
CODE_12ACAB:        BNE CODE_12AC91           
CODE_12ACAD:        LDA #$00                  
CODE_12ACAF:        STA $04B4                 
CODE_12ACB2:        LDA #$01                  
CODE_12ACB4:        STA $0536                 
CODE_12ACB7:        LDA #$01                  
CODE_12ACB9:        JSR CODE_12AD41           
CODE_12ACBC:        LDA #$F0                  
CODE_12ACBE:        STA $0881                 
CODE_12ACC1:        STA $0885                 
CODE_12ACC4:        LDY $0629                 
CODE_12ACC7:        LDA $0635                 
CODE_12ACCA:        CMP #$06                  
CODE_12ACCC:        BNE CODE_12ACCF           
CODE_12ACCE:        INY                       
CODE_12ACCF:        CPY #$02                  
CODE_12ACD1:        BCC CODE_12ACD7           
CODE_12ACD3:        INC $0627                 
CODE_12ACD6:        RTS                       

CODE_12ACD7:        LDA #$03                  
CODE_12ACD9:        STA $04ED                 
CODE_12ACDC:        RTS                       

CODE_12ACDD:        LDA $04B5                 
CODE_12ACE0:        BEQ CODE_12AD30           
CODE_12ACE2:        CMP #$30                  
CODE_12ACE4:        BEQ CODE_12ACFE           
CODE_12ACE6:        LDA $ED                   
CODE_12ACE8:        AND #$04                  
CODE_12ACEA:        BNE CODE_12AD30           
CODE_12ACEC:        INC $04B5                 
CODE_12ACEF:        LDA $10                   
CODE_12ACF1:        AND #$03                  
CODE_12ACF3:        BNE CODE_12ACFB           
CODE_12ACF5:        DEC $111F                 
CODE_12ACF8:        INC $110B                 
CODE_12ACFB:        JMP CODE_12AD30           

CODE_12ACFE:        LDA $5B,x                 
CODE_12AD00:        AND #$40                  
CODE_12AD02:        BEQ CODE_12AD30           
CODE_12AD04:        LDA $33,x                 
CODE_12AD06:        CMP $32                   
CODE_12AD08:        BCS CODE_12AD30                   
CODE_12AD0A:        LDA $5A                   
CODE_12AD0C:        AND #$04                  
CODE_12AD0E:        BEQ CODE_12AD30           
CODE_12AD10:        LDA $9C                   
CODE_12AD12:        BNE CODE_12AD30           
CODE_12AD14:        LDA #$06                  ; \ Enter Hawkmouth.
CODE_12AD16:        STA $50                   ; /
CODE_12AD18:        LDA #$30                  ; \ Amount of frames to keep walking.
CODE_12AD1A:        STA $82                   ; /
CODE_12AD1C:        LDA #$FC                  ; \ Y speed of player when entering Hawkmouth.
CODE_12AD1E:        STA $46                   ; / Rise up slightly.
CODE_12AD20:        LDA #$80                  ; \ Fade music.
CODE_12AD22:        STA $1DE2                 ; /
CODE_12AD25:        STA $0547                 
CODE_12AD28:        LDA #$2D                  ; \ Entering Hawkmouth sound effect.
CODE_12AD2A:        STA $1DE0                 ; /
CODE_12AD2D:        INC $04B4                 
CODE_12AD30:        LDA $EE                   
CODE_12AD32:        BEQ CODE_12AD37           
CODE_12AD34:        BRL CODE_12AE0D           

CODE_12AD37:        LDA $90,x                 
CODE_12AD39:        SEC                       
CODE_12AD3A:        SBC #$41                  
CODE_12AD3C:        STA $6F,x                 
CODE_12AD3E:        LDA $04B5                 
CODE_12AD41:        STA $07                   
CODE_12AD43:        LSR A                     
CODE_12AD44:        LSR A                     
CODE_12AD45:        EOR #$FF                  
CODE_12AD47:        SEC                       
CODE_12AD48:        ADC $042C                 
CODE_12AD4B:        STA $042C                 
CODE_12AD4E:        LDA $07                   
CODE_12AD50:        BNE CODE_12AD57           
CODE_12AD52:        LDA $04B4                 
CODE_12AD55:        BEQ CODE_12AD65           
CODE_12AD57:        LDY #$60                  
CODE_12AD59:        STY $02F6                 
CODE_12AD5C:        STY $02F8                 
CODE_12AD5F:        STZ $02F7                 
CODE_12AD62:        STZ $02F9                 
CODE_12AD65:        LDA #$8C                  
CODE_12AD67:        LDY $07                   
CODE_12AD69:        BEQ CODE_12AD6D           
CODE_12AD6B:        LDA #$90                  
CODE_12AD6D:        JSR CODE_12BDD5           
CODE_12AD70:        LDA $07                   
CODE_12AD72:        TAY                       
CODE_12AD73:        LSR A                     
CODE_12AD74:        CLC                       
CODE_12AD75:        ADC $042C                 
CODE_12AD78:        ADC #$08                  
CODE_12AD7A:        CPY #$00                  
CODE_12AD7C:        BNE CODE_12AD80           
CODE_12AD7E:        ADC #$07                  
CODE_12AD80:        STA $00                   
CODE_12AD82:        JSL CODE_14E483           
CODE_12AD86:        LDX #$98                  
CODE_12AD88:        LDA $07                   
CODE_12AD8A:        BNE CODE_12AD91           
CODE_12AD8C:        LDA $04B4                 
CODE_12AD8F:        BEQ CODE_12AD9B           
CODE_12AD91:        LDY #$68                  
CODE_12AD93:        STY $02F8                 
CODE_12AD96:        STZ $02F9                 
CODE_12AD99:        LDX #$94                  
CODE_12AD9B:        JSR CODE_12C03B           
CODE_12AD9E:        JSR CODE_12C03B           
CODE_12ADA1:        LDX $12                   
CODE_12ADA3:        LDA $90,x                 
CODE_12ADA5:        CMP #$2D                  
CODE_12ADA7:        BEQ CODE_12AE0D           
CODE_12ADA9:        LDA $6F,x                 
CODE_12ADAB:        CMP #$01                  
CODE_12ADAD:        BEQ CODE_12AE0D           
CODE_12ADAF:        LDA $33,x                 
CODE_12ADB1:        STA $0714                 
CODE_12ADB4:        LDA $1F,x                 
CODE_12ADB6:        STA $0715                 
CODE_12ADB9:        LDA $CB                   
CODE_12ADBB:        STA $0716                 
CODE_12ADBE:        LDA $CA                   
CODE_12ADC0:        STA $0717                 
CODE_12ADC3:        LDA $021F                 
CODE_12ADC6:        XBA                       
CODE_12ADC7:        LDA $0429                 
CODE_12ADCA:        REP #$20                  
CODE_12ADCC:        CLC                       
CODE_12ADCD:        ADC #$0010                
CODE_12ADD0:        STA $0712                 
CODE_12ADD3:        LDA $0714                 
CODE_12ADD6:        SEC                       
CODE_12ADD7:        SBC $0716                 
CODE_12ADDA:        CLC                       
CODE_12ADDB:        ADC #$000A                
CODE_12ADDE:        SEP #$20                  
CODE_12ADE0:        STA $042C                 
CODE_12ADE3:        LDA $0712                 
CODE_12ADE6:        STA $0429                 
CODE_12ADE9:        LDA $0713                 
CODE_12ADEC:        STA $021F                 
CODE_12ADEF:        AND #$01                  
CODE_12ADF1:        ASL A                     
CODE_12ADF2:        ASL A                     
CODE_12ADF3:        ASL A                     
CODE_12ADF4:        STA $ED                   
CODE_12ADF6:        LDA $65,x                 
CODE_12ADF8:        PHA                       
CODE_12ADF9:        ORA #$20                  
CODE_12ADFB:        STA $65,x                 
CODE_12ADFD:        LDA #$38                  
CODE_12ADFF:        STA $02F6                 
CODE_12AE02:        STZ $02F7                 
CODE_12AE05:        LDA #$78                  
CODE_12AE07:        JSR CODE_12BDD5           
CODE_12AE0A:        PLA                       
CODE_12AE0B:        STA $65,x                 
CODE_12AE0D:        LDX $12                   
CODE_12AE0F:        RTS                       

CODE_12AE10:        JSR CODE_12AC85           
CODE_12AE13:        LDA $29,x                 
CODE_12AE15:        ADC #$08                  
CODE_12AE17:        STA $29,x                 
CODE_12AE19:        LDA $33,x                 
CODE_12AE1B:        LSR A                     
CODE_12AE1C:        LSR A                     
CODE_12AE1D:        LSR A                     
CODE_12AE1E:        LSR A                     
CODE_12AE1F:        STA $B1,x                 
CODE_12AE21:        LDA #$80                  
CODE_12AE23:        STA $86,x                 
CODE_12AE25:        RTS
                       
CODE_12AE26:        JSR CODE_12BB16           
CODE_12AE29:        INC $9F,x                 
CODE_12AE2B:        JSR CODE_12BA4F           
CODE_12AE2E:        JSR CODE_12BA46           
CODE_12AE31:        LDA #$09                  
CODE_12AE33:        LDY $47,x                 
CODE_12AE35:        BMI CODE_12AE39           
CODE_12AE37:        LDA #$89                  
CODE_12AE39:        STA $65,x                 
CODE_12AE3B:        LDY $EB                   
CODE_12AE3D:        LDA $33,x                 
CODE_12AE3F:        CMP.w DATA_119806,y               
CODE_12AE42:        BCC CODE_12AE55           
CODE_12AE44:        LDY $86,x                 
CODE_12AE46:        BNE CODE_12AE25           
CODE_12AE48:        STA $33,x                 
CODE_12AE4A:        LDY $B1,x                 
CODE_12AE4C:        LDA.w DATA_1197FA,y               
CODE_12AE4F:        STA $47,x                 
CODE_12AE51:        LDA #$C0                  
CODE_12AE53:        STA $86,x                 
CODE_12AE55:        JSR CODE_12B497           
CODE_12AE58:        INC $47,x                 
CODE_12AE5A:        JMP CODE_12BD29           

CODE_12AE5D:        LDA $0628                 
CODE_12AE60:        CMP #$02                  
CODE_12AE62:        BNE CODE_12AE70           
CODE_12AE64:        LDA $0702,x               
CODE_12AE67:        BEQ CODE_12AE6A           
CODE_12AE69:        RTS
                       
CODE_12AE6A:        INC $0702,x               
CODE_12AE6D:        JMP CODE_12BD29           

CODE_12AE70:        JSR CODE_12BB16           
CODE_12AE73:        INC $9F,x                 
CODE_12AE75:        JSR CODE_12BA46           
CODE_12AE78:        JSR CODE_12BD29           
CODE_12AE7B:        JSR CODE_12BA4F           
CODE_12AE7E:        LDA #$00                  
CODE_12AE80:        STA $3D,x                 
CODE_12AE82:        JSR CODE_12DD90           
CODE_12AE85:        LDY $0477,x               
CODE_12AE88:        BCC CODE_12AE9E           
CODE_12AE8A:        LDA $86,x                 
CODE_12AE8C:        BNE CODE_12AEA9           
CODE_12AE8E:        LDA $33,x                 
CODE_12AE90:        CMP $CB                   
CODE_12AE92:        LDA $1F,x                 
CODE_12AE94:        SBC $CA                   
CODE_12AE96:        BEQ CODE_12AEA9           
CODE_12AE98:        ASL A                     
CODE_12AE99:        ROL A                     
CODE_12AE9A:        AND #$01                  
CODE_12AE9C:        BRA CODE_12AEA5           

CODE_12AE9E:        LDA #$20                  
CODE_12AEA0:        STA $86,x                 
CODE_12AEA2:        TYA                       
CODE_12AEA3:        EOR #$01                  
CODE_12AEA5:        STA $0477,x               
CODE_12AEA8:        TAY                       
CODE_12AEA9:        LDA.w DATA_119808,y               
CODE_12AEAC:        STA $47,x                 
CODE_12AEAE:        LDA.w DATA_11980A,y               
CODE_12AEB1:        STA $65,x                 
CODE_12AEB3:        JSR CODE_12C1DA           
CODE_12AEB6:        LDA $0F                   
CODE_12AEB8:        ADC #$10                  
CODE_12AEBA:        CMP #$20                  
CODE_12AEBC:        BCS CODE_12AEC0                   
CODE_12AEBE:        ASL $47,x                 
CODE_12AEC0:        JMP CODE_12C1EA           

CODE_12AEC3:        LDA $EE                   
CODE_12AEC5:        BEQ CODE_12AECA           
CODE_12AEC7:        JMP CODE_12A83B           

CODE_12AECA:        LDY #$FC                  ; \ X speed = #$FC...
CODE_12AECC:        LDA $10                   ;  | For $20 consecutive frames.
CODE_12AECE:        AND #$20                  ;  |
CODE_12AED0:        BEQ CODE_12AED4           ;  |
CODE_12AED2:        LDY #$04                  ;  | The other $20 consecutive frames, X speed = #$04.
CODE_12AED4:        STY $3D,x                 ; /
CODE_12AED6:        LDA #$F8                  ; \ Y speed = #$F8.
CODE_12AED8:        STA $47,x                 ; /
CODE_12AEDA:        JSR CODE_12B497           
CODE_12AEDD:        LDA $ED                   
CODE_12AEDF:        AND #$08                  
CODE_12AEE1:        ORA $EE                   
CODE_12AEE3:        BNE CODE_12AF2C           
CODE_12AEE5:        REP #$10                  
CODE_12AEE7:        LDY $02F6                 
CODE_12AEEA:        LDA $0429                 
CODE_12AEED:        STA $0800,y               
CODE_12AEF0:        STA $0804,y               
CODE_12AEF3:        LDA $042C                 
CODE_12AEF6:        STA $0801,y               
CODE_12AEF9:        CLC                       
CODE_12AEFA:        ADC #$08                  
CODE_12AEFC:        STA $0805,y               
CODE_12AEFF:        LDA #$8A                  ; \ Upper tile number of heart.
CODE_12AF01:        STA $0802,y               ; /
CODE_12AF04:        LDA #$9A                  ; \ Lower tile number of heart.
CODE_12AF06:        STA $0806,y               ; /
CODE_12AF09:        LDA $10                   ; \ X-Flip tile every $20 frames.
CODE_12AF0B:        AND #$20                  ;  |
CODE_12AF0D:        EOR #$20                  ;  |
CODE_12AF0F:        ASL A                     ;  |
CODE_12AF10:        ORA #$22                  ;  | Palette 9, tile page 0. Priority 2.
CODE_12AF12:        STA $0803,y               ;  |
CODE_12AF15:        STA $0807,y               ; /
CODE_12AF18:        PHY                       
CODE_12AF19:        REP #$20                  
CODE_12AF1B:        TYA                       
CODE_12AF1C:        LSR A                     
CODE_12AF1D:        LSR A                     
CODE_12AF1E:        TAY                       
CODE_12AF1F:        SEP #$20                  
CODE_12AF21:        LDA #$00                  ; \ Tiles are 8x8.
CODE_12AF23:        STA $0A20,y               ;  |
CODE_12AF26:        STA $0A21,y               ; /
CODE_12AF29:        PLY                       
CODE_12AF2A:        SEP #$10                  
CODE_12AF2C:        RTS
                       
CODE_12AF2D:        JSR CODE_129F96           
CODE_12AF30:        LDA #$FF                  
CODE_12AF32:        STA $0702,x               
CODE_12AF35:        LDY #$00                  
CODE_12AF37:        LDA $29,x                 
CODE_12AF39:        CMP #$A0                  
CODE_12AF3B:        BEQ CODE_12AF43           
CODE_12AF3D:        INY                       
CODE_12AF3E:        CMP #$B0                  
CODE_12AF40:        BEQ CODE_12AF43           
CODE_12AF42:        INY                       
CODE_12AF43:        TYA                       
CODE_12AF44:        STA $79,x                 
CODE_12AF46:        LDA.w DATA_11980C,y               
CODE_12AF49:        STA $65,x                 
CODE_12AF4B:        LDA #$02                  
CODE_12AF4D:        STA $0465,x               
CODE_12AF50:        LDA $15,x                 
CODE_12AF52:        STA $04F0,x               
CODE_12AF55:        RTS
                       
CODE_12AF56:        LDA $0702,x               
CODE_12AF59:        BMI CODE_12AF86           
CODE_12AF5B:        BEQ CODE_12AF6F           
CODE_12AF5D:        DEC $0702,x               
CODE_12AF60:        LDA $0702,x               
CODE_12AF63:        BNE CODE_12AF7D           
CODE_12AF65:        LDA $5B,x                 
CODE_12AF67:        ORA #$10                  
CODE_12AF69:        STA $5B,x                 
CODE_12AF6B:        JSR CODE_12BB16           
CODE_12AF6E:        RTS
                       
CODE_12AF6F:        LDA $5B,x                 
CODE_12AF71:        AND #$10                  
CODE_12AF73:        BEQ CODE_12AF86           
CODE_12AF75:        LDA #$11                  
CODE_12AF77:        STA $045C,x               
CODE_12AF7A:        STA $0702,x               
CODE_12AF7D:        LDA $6F,x                 
CODE_12AF7F:        EOR #$03                  
CODE_12AF81:        STA $6F,x                 
CODE_12AF83:        JMP CODE_12B024           

CODE_12AF86:        JSR CODE_12BB16           
CODE_12AF89:        JSR CODE_12DDAB           
CODE_12AF8C:        LDA #$00                  
CODE_12AF8E:        STA $3D,x                 
CODE_12AF90:        JSR CODE_12C1DA           
CODE_12AF93:        INY                       
CODE_12AF94:        STY $6F,x                 
CODE_12AF96:        JSR CODE_12BD29           
CODE_12AF99:        LDA $5B,x                 
CODE_12AF9B:        AND #$04                  
CODE_12AF9D:        BEQ CODE_12AFDB           
CODE_12AF9F:        JSR CODE_12B659           
CODE_12AFA2:        LDA $10                   
CODE_12AFA4:        BNE CODE_12AFAC           
CODE_12AFA6:        LDA #$E0                  
CODE_12AFA8:        STA $47,x                 
CODE_12AFAA:        BNE CODE_12AFDB           
CODE_12AFAC:        LDY $79,x                 
CODE_12AFAE:        LDA.w DATA_119811,y               
CODE_12AFB1:        AND $10                   
CODE_12AFB3:        BNE CODE_12AFBF           
CODE_12AFB5:        LDA $ED                   
CODE_12AFB7:        AND #$0C                  
CODE_12AFB9:        BNE CODE_12AFBF           
CODE_12AFBB:        LDA #$1C                  
CODE_12AFBD:        STA $86,x                 
CODE_12AFBF:        LDY $86,x                 
CODE_12AFC1:        BNE CODE_12AFDE           
CODE_12AFC3:        INC $B1,x                 
CODE_12AFC5:        LDA $B1,x                 
CODE_12AFC7:        AND #$40                  
CODE_12AFC9:        BEQ CODE_12B024           
CODE_12AFCB:        JSR CODE_12AA43           
CODE_12AFCE:        LDA #$0A                  
CODE_12AFD0:        LDY $B1,x                 
CODE_12AFD2:        BMI CODE_12AFD6           
CODE_12AFD4:        LDA #$F6                  
CODE_12AFD6:        STA $3D,x                 
CODE_12AFD8:        JMP CODE_12C1EF           

CODE_12AFDB:        JMP CODE_12A0B2           

CODE_12AFDE:        CPY #$08                  
CODE_12AFE0:        BNE CODE_12B024           
CODE_12AFE2:        LDA #$20                  
CODE_12AFE4:        STA $1DE0                 
CODE_12AFE7:        JSR CODE_12B670           
CODE_12AFEA:        BMI CODE_12B024           
CODE_12AFEC:        LDY $0465,x               
CODE_12AFEF:        LDA $79,x                 
CODE_12AFF1:        LDX $00                   
CODE_12AFF3:        CMP #$02                  
CODE_12AFF5:        BEQ CODE_12B005           
CODE_12AFF7:        CMP #$01                  
CODE_12AFF9:        BNE CODE_12B00B           
CODE_12AFFB:        LDA $0587                 
CODE_12AFFE:        AND #$1F                  
CODE_12B000:        CMP.w DATA_119814,y               
CODE_12B003:        BCS CODE_12B00B               
CODE_12B005:        INC $79,x                 
CODE_12B007:        LDA #$20                  
CODE_12B009:        BNE CODE_12B00D           
CODE_12B00B:        LDA #$1E                      
CODE_12B00D:        STA $90,x                 
CODE_12B00F:        LDA $33,x                 
CODE_12B011:        CLC                       
CODE_12B012:        ADC #$03                  
CODE_12B014:        STA $33,x                 
CODE_12B016:        LDY $6F,x                 
CODE_12B018:        LDA $29,x                 
CODE_12B01A:        ADC.w DATA_11980E,y               
CODE_12B01D:        STA $29,x                 
CODE_12B01F:        JSR CODE_129F7A           
CODE_12B022:        LDX $12                   
CODE_12B024:        JMP CODE_12BD29           

CODE_12B027:        JSR CODE_12AA43           
CODE_12B02A:        LDA $47,x                 
CODE_12B02C:        CMP #$EA                  
CODE_12B02E:        BNE CODE_12B038           
CODE_12B030:        LDA #$01                  
CODE_12B032:        STA $1DE3                 
CODE_12B035:        INC $062B                 
CODE_12B038:        LDA $47,x                 
CODE_12B03A:        CMP #$10                  
CODE_12B03C:        BMI CODE_12B064           
CODE_12B03E:        JSR CODE_12B1F9           
CODE_12B041:        LDA $90,x                 ; \ If sprite is 1-Up...
CODE_12B043:        CMP #$40                  ;  | ...
CODE_12B045:        BEQ CODE_12B048           ; / ...branch.
CODE_12B047:        RTS                       ; Return.
                       
CODE_12B048:        INC $0620                 ; 1-Up collected flag, next time 1-Up object is picked up, a vegetable is spawned.
CODE_12B04B:        LDA $04EE                 ; \ Increment lives by 1 unless lives >= 99.
CODE_12B04E:        INC A                     ;  |
CODE_12B04F:        CMP #$64                  ;  |
CODE_12B051:        BCC CODE_12B055           ;  |
CODE_12B053:        LDA #$63                  ;  |
CODE_12B055:        STA $04EE                 ; /
CODE_12B058:        LDA #$05                  ; \ 1-Up get sound effect.
CODE_12B05A:        STA $1DE3                 ; /
CODE_12B05D:        RTS                       ; Return.
                       
CODE_12B05E:        INC $042C                 
CODE_12B061:        JSR CODE_12B20E           
CODE_12B064:        LDA $A8,x                 ;\If crystal ball is completely picked up
CODE_12B066:        CMP #$01                  ;/
CODE_12B068:        BNE CODE_12B06E           
CODE_12B06A:        LDA $9A                   
CODE_12B06C:        BEQ CODE_12B071           
CODE_12B06E:        JMP CODE_12B0D6           

CODE_12B071:        JSR CODE_12B692           
CODE_12B074:        LDA #$00                  
CODE_12B076:        STA $9C                   
CODE_12B078:        STA $A8,x                 
CODE_12B07A:        JSR CODE_12B1F9           
CODE_12B07D:        LDA $90,x                 ; \ If not Crystal Ball, branch.
CODE_12B07F:        CMP #$44                  ;  |
CODE_12B081:        BNE CODE_12B09B           ; /
CODE_12B083:        LDA $04B5                 ; \ If Crystal ball already collected, return.
CODE_12B086:        BNE CODE_12B09A           ; /
CODE_12B088:        LDA #$10                  ; \ Bonus get music.
CODE_12B08A:        STA $1DE2                 ; / (When Crystal ball is collected.)
CODE_12B08D:        LDA #$60                  ; \ Amount of time to wait before Hawkmouth opens his mouth.
CODE_12B08F:        STA $04B6                 ; /
CODE_12B092:        LDA #$A4                  ; \ Amount of time to wait before changing music back to normal one.
CODE_12B094:        STA $078A                 ; /
CODE_12B097:        INC $04B5                 ; Set 'Crystal ball has been collected' flag.
CODE_12B09A:        RTS                       ; Return.
                       
CODE_12B09B:        CMP #$40                  ; \ If 1-Up, branch.
CODE_12B09D:        BEQ CODE_12B0C0           ; /
CODE_12B09F:        CMP #$46                  ; \ If Stopwatch, branch.
CODE_12B0A1:        BEQ CODE_12B0CD           ; /
CODE_12B0A3:        CMP #$3F                  ; \ If not Mushroom, branch.
CODE_12B0A5:        BNE CODE_12B0C4           ; /
CODE_12B0A7:        LDX $79                   
CODE_12B0A9:        INC $04FC,x               
CODE_12B0AC:        LDX $12                   
CODE_12B0AE:        INC $04C4                 ; Increase maximum amount of hearts.
CODE_12B0B1:        JSL CODE_14E098           ; Fill all hearts. (NOPing this out only increases the maximum, but won't actually make the hearts red.)
CODE_12B0B5:        LDA #$0C                  ; \ Bonus game music.
CODE_12B0B7:        STA $1DE2                 ; / (Mushroom collected.)
CODE_12B0BA:        LDA #$58                  
CODE_12B0BC:        STA $079B                 
CODE_12B0BF:        RTS
                       
CODE_12B0C0:        LDA #$09                  
CODE_12B0C2:        STA $65,x                 
CODE_12B0C4:        LDA #$E0                  ; \ Y speed of 1-Up mushroom when collected.
CODE_12B0C6:        STA $47,x                 ; /
CODE_12B0C8:        LDA #$01                  
CODE_12B0CA:        STA $51,x                 
CODE_12B0CC:        RTS
                       
CODE_12B0CD:        LDA #$FF                  ; \ Set sprite freeze timer to #$FF. (For stopwatch.)
CODE_12B0CF:        STA $0500                 ; /
CODE_12B0D2:        RTS                       ; Return.
                       
CODE_12B0D3:        JSR CODE_12B20E           
CODE_12B0D6:        JSR CODE_12DDAB           
CODE_12B0D9:        LDA $5B,x                 
CODE_12B0DB:        PHA                       
CODE_12B0DC:        AND $6F,x                 
CODE_12B0DE:        BEQ CODE_12B0EC           
CODE_12B0E0:        JSR CODE_12C248           
CODE_12B0E3:        JSR CODE_12B63B           
CODE_12B0E6:        JSR CODE_12B63B           
CODE_12B0E9:        JSR CODE_12B63B           
CODE_12B0EC:        PLA                       
CODE_12B0ED:        AND #$04                  
CODE_12B0EF:        BEQ CODE_12B10E           
CODE_12B0F1:        LDA $47,x                 
CODE_12B0F3:        CMP #$09                  
CODE_12B0F5:        BCC CODE_12B105           
CODE_12B0F7:        LSR A                     
CODE_12B0F8:        LSR A                     
CODE_12B0F9:        LSR A                     
CODE_12B0FA:        LSR A                     
CODE_12B0FB:        TAY                       
CODE_12B0FC:        LDA.w DATA_119819,y               
CODE_12B0FF:        JSR CODE_12B635           
CODE_12B102:        JMP CODE_12B10E           

CODE_12B105:        JSR CODE_12B659           
CODE_12B108:        LDA $0B                   
CODE_12B10A:        BNE CODE_12B10E           
CODE_12B10C:        STA $3D,x                 
CODE_12B10E:        LDA $90,x                 
CODE_12B110:        CMP #$37                  
CODE_12B112:        BNE CODE_12B13D           
CODE_12B114:        LDA $86,x                 
CODE_12B116:        BNE CODE_12B134           
CODE_12B118:        LDY $A8,x                 
CODE_12B11A:        BEQ CODE_12B120           
CODE_12B11C:        STA $9C                   
CODE_12B11E:        STA $A8,x                 
CODE_12B120:        LDA #$04                  
CODE_12B122:        STA $51,x                 
CODE_12B124:        LDA #$20                  
CODE_12B126:        STA $86,x                
CODE_12B128:        LDA #$4A                  
CODE_12B12A:        STA $1DE3                 
CODE_12B12D:        LDA #$01                  
CODE_12B12F:        LSR A                     
CODE_12B130:        STA $042F,x               
CODE_12B133:        RTS
                       
CODE_12B134:        CMP #$40                  
CODE_12B136:        BCS CODE_12B13D                   
CODE_12B138:        LDA $10                   
CODE_12B13A:        STA $045C,x               
CODE_12B13D:        JSR CODE_12BA46           
CODE_12B140:        JSR CODE_12A0AA           
CODE_12B143:        JSL CODE_139210           
CODE_12B147:        LDA $B1,x                 
CODE_12B149:        BNE CODE_12B14E           
CODE_12B14B:        JMP CODE_12BDC9           

CODE_12B14E:        JMP CODE_12BDD5           

CODE_12B151:        JSR CODE_12BA46           
CODE_12B154:        JSR CODE_12DDAB           
CODE_12B157:        LDA $5B,x                 
CODE_12B159:        PHA                       
CODE_12B15A:        AND #$03                  
CODE_12B15C:        BEQ CODE_12B167           
CODE_12B15E:        JSR CODE_12C248           
CODE_12B161:        JSR CODE_12B63B           
CODE_12B164:        JSR CODE_12B63B           
CODE_12B167:        PLA                       
CODE_12B168:        AND #$04                  
CODE_12B16A:        BEQ CODE_12B13D           
CODE_12B16C:        JSR CODE_12B659           
CODE_12B16F:        PHX                       
CODE_12B170:        LDX #$08                  
CODE_12B172:        LDA $51,x                 
CODE_12B174:        CMP #$01                  
CODE_12B176:        BNE CODE_12B181           
CODE_12B178:        LDA $90,x                 
CODE_12B17A:        CMP #$3C                  
CODE_12B17C:        BNE CODE_12B181           
CODE_12B17E:        JSR CODE_12B1F9           
CODE_12B181:        DEX                       
CODE_12B182:        BPL CODE_12B172           
CODE_12B184:        PLX                       
CODE_12B185:        LDA $29,x                 
CODE_12B187:        ADC #$07                  
CODE_12B189:        AND #$F0                  
CODE_12B18B:        STA $29,x                 
CODE_12B18D:        LDA $15,x                 
CODE_12B18F:        ADC #$00                  
CODE_12B191:        STA $15,x                 
CODE_12B193:        PHX                       
CODE_12B194:        JSR CODE_12DDAB           
CODE_12B197:        PLX                       
CODE_12B198:        LDA $33,x                 
CODE_12B19A:        SEC                       
CODE_12B19B:        SBC #$10                  
CODE_12B19D:        STA $33,x                 
CODE_12B19F:        CMP #$E0                  
CODE_12B1A1:        BCC CODE_12B1AB           
CODE_12B1A3:        LDA $EB                   
CODE_12B1A5:        BEQ CODE_12B1AB           
CODE_12B1A7:        JSR CODE_12A83B           
CODE_12B1AA:        RTS
                       
CODE_12B1AB:        LDA #$10                  
CODE_12B1AD:        STA $0453,x               
CODE_12B1B0:        LDA #$10                  
CODE_12B1B2:        STA $1DE0                 
CODE_12B1B5:        INC $B1,x                 
CODE_12B1B7:        LDA #$3C                  
CODE_12B1B9:        STA $90,x                 
CODE_12B1BB:        PHX                       
CODE_12B1BC:        LDX #$05                  
CODE_12B1BE:        LDA.l DATA_119BAE,x             
CODE_12B1C2:        CMP $00                   
CODE_12B1C4:        BEQ CODE_12B1CC           
CODE_12B1C6:        DEX                       
CODE_12B1C7:        BPL CODE_12B1BE           
CODE_12B1C9:        PLX                       
CODE_12B1CA:        BRA CODE_12B1D2           

CODE_12B1CC:        PLX                       
CODE_12B1CD:        LDA #$05                  
CODE_12B1CF:        STA $0051,x               
CODE_12B1D2:        JSR CODE_129F7A           
CODE_12B1D5:        LDA #$10                  
CODE_12B1D7:        STA $0594                 
CODE_12B1DA:        LDA $EB                   
CODE_12B1DC:        BNE CODE_12B1E1           
CODE_12B1DE:        JSR CODE_12A83B           
CODE_12B1E1:        JSR CODE_12B335           
CODE_12B1E4:        BMI CODE_12B20D           
CODE_12B1E6:        LDY $00                   
CODE_12B1E8:        LDA $29,x                 
CODE_12B1EA:        STA $0029,y               
CODE_12B1ED:        LDA $15,x                 
CODE_12B1EF:        STA $0015,y               
CODE_12B1F2:        LDA #$41                  
CODE_12B1F4:        STA $0065,y               
CODE_12B1F7:        TYA                       
CODE_12B1F8:        TAX                       
CODE_12B1F9:        LDA $65,x                 
CODE_12B1FB:        AND #$FC                  
CODE_12B1FD:        ORA #$01                  
CODE_12B1FF:        STA $65,x                 
CODE_12B201:        LDA #$05                  
CODE_12B203:        STA $51,x                 
CODE_12B205:        STA $9F,x                 
CODE_12B207:        LDA #$1F                  
CODE_12B209:        STA $86,x                 
CODE_12B20B:        LDX $12                   
CODE_12B20D:        RTS
                       
CODE_12B20E:        LDA $79,x                 
CODE_12B210:        BNE CODE_12B21E           
CODE_12B212:        LDY #$05                  
CODE_12B214:        LDA $0090,y               
CODE_12B217:        CMP #$1C                  
CODE_12B219:        BEQ CODE_12B225           
CODE_12B21B:        DEY                       
CODE_12B21C:        BPL CODE_12B214           
CODE_12B21E:        LDA #$01                  
CODE_12B220:        STA $79,x                 
CODE_12B222:        JMP CODE_129F7A           

CODE_12B225:        LDA $0015,y               
CODE_12B228:        CMP $15,x                 
CODE_12B22A:        BNE CODE_12B21E           
CODE_12B22C:        LDA $0702,y               
CODE_12B22F:        BPL CODE_12B236           
CODE_12B231:        LDA #$00                  
CODE_12B233:        STA $0702,y               
CODE_12B236:        PHX                       
CODE_12B237:        LDX #$08                  
CODE_12B239:        LDA $006F,y               
CODE_12B23C:        CMP #$01                  
CODE_12B23E:        BEQ CODE_12B242           
CODE_12B240:        LDX #$F8                  
CODE_12B242:        TXA                       
CODE_12B243:        PLX                       
CODE_12B244:        STA $3D,x                 
CODE_12B246:        LDA $0051,y               
CODE_12B249:        CMP #$02                  
CODE_12B24B:        BNE CODE_12B256           
CODE_12B24D:        LDA $0047,y               
CODE_12B250:        BMI CODE_12B256           
CODE_12B252:        CMP #$12                  
CODE_12B254:        BCS CODE_12B21E                   
CODE_12B256:        LDA $0029,y               
CODE_12B259:        STA $29,x                 
CODE_12B25B:        LDA $0033,y               
CODE_12B25E:        ADC #$00                  
CODE_12B260:        STA $33,x                 
CODE_12B262:        JSR CODE_12C1DA           
CODE_12B265:        LDA.w DATA_11981D,y               
CODE_12B268:        STA $3D,x                 
CODE_12B26A:        LDA #$E0                  
CODE_12B26C:        STA $47,x                 
CODE_12B26E:        PLA                       
CODE_12B26F:        PLA                       
CODE_12B270:        LDA #$07                  
CODE_12B272:        STA $046E,x               
CODE_12B275:        RTS
                       
CODE_12B276:        JSR CODE_129F96           
CODE_12B279:        LDA #$F0                  ; \ Init X speed = #$F0 (left).
CODE_12B27B:        BNE CODE_12B282           ; / More convenient than BRA. (Because the zero bit is clear, anyway.)

CODE_12B27D:        JSR CODE_129F96           
CODE_12B280:        LDA #$10                  ; \ Init X speed = #$10 (right).
CODE_12B282:        STA $3D,x                 ; /
CODE_12B284:        INC $B1,x                 
CODE_12B286:        LDA $90,x                 
CODE_12B288:        SEC                       
CODE_12B289:        SBC #$0B                  
CODE_12B28B:        TAY                       
CODE_12B28C:        LDA $04C1                 
CODE_12B28F:        ADC.w DATA_11981F,y               
CODE_12B292:        STA $29,x                 
CODE_12B294:        LDA $04BF                 
CODE_12B297:        ADC.w DATA_119820,y               
CODE_12B29A:        STA $15,x                 
CODE_12B29C:        RTS
                       
CODE_12B29D:        LDA $10                   
CODE_12B29F:        AND #$07                  
CODE_12B2A1:        BNE CODE_12B2A5           
CODE_12B2A3:        INC $9F,x                 
CODE_12B2A5:        LDA $9F,x                 
CODE_12B2A7:        CMP #$07                  
CODE_12B2A9:        BCC CODE_12B2AD           
CODE_12B2AB:        STZ $9F,x                 
CODE_12B2AD:        JSR CODE_12BCE9           
CODE_12B2B0:        LDA $B1,x                 
CODE_12B2B2:        BNE CODE_12B2E0           
CODE_12B2B4:        LDA $5B,x                 
CODE_12B2B6:        AND #$10                  
CODE_12B2B8:        BNE CODE_12B2C5           
CODE_12B2BA:        JSR CODE_12C1DA           
CODE_12B2BD:        LDA $0F                   
CODE_12B2BF:        ADC #$30                  
CODE_12B2C1:        CMP #$60                  
CODE_12B2C3:        BCS CODE_12B2DD                   
CODE_12B2C5:        JSR CODE_12B335           
CODE_12B2C8:        BMI CODE_12B2DD           
CODE_12B2CA:        LDX $00                   
CODE_12B2CC:        LDA #$09                  ; \ Spawn Bob-Omb.
CODE_12B2CE:        STA $90,x                 ; /
CODE_12B2D0:        LDA $33,x                 
CODE_12B2D2:        ADC #$10                  
CODE_12B2D4:        STA $33,x                 
CODE_12B2D6:        JSR CODE_12A01C           
CODE_12B2D9:        LDX $12                   
CODE_12B2DB:        INC $B1,x                 
CODE_12B2DD:        JMP CODE_12B2E3           

CODE_12B2E0:        JSR CODE_12BB16           
CODE_12B2E3:        JMP CODE_12C1EF           

CODE_12B2E6:        JSR CODE_12B2F6           
CODE_12B2E9:        ASL $65,x                 
CODE_12B2EB:        LDA $10                   
CODE_12B2ED:        LSR A                     
CODE_12B2EE:        LSR A                     
CODE_12B2EF:        LSR A                     
CODE_12B2F0:        ROR $65,x                 
CODE_12B2F2:        RTS
                       
CODE_12B2F3:        JSR CODE_12DDAB           
CODE_12B2F6:        JSR CODE_12BB16           
CODE_12B2F9:        JSR CODE_12BA46           
CODE_12B2FC:        LDA $B1,x                 
CODE_12B2FE:        ORA $042F,x               
CODE_12B301:        BEQ CODE_12B306           
CODE_12B303:        JMP CODE_12A0A7           

CODE_12B306:        LDA $47,x                 
CODE_12B308:        BPL CODE_12B30C           
CODE_12B30A:        STA $B1,x                 
CODE_12B30C:        LDA $5B,x                 
CODE_12B30E:        AND #$03                  
CODE_12B310:        BEQ CODE_12B32B           
CODE_12B312:        STA $B1,x                 
CODE_12B314:        LDA $90,x                 
CODE_12B316:        CMP #$1B                  
CODE_12B318:        BNE CODE_12B322           
CODE_12B31A:        LDA #$02                  
CODE_12B31C:        STA $51,x                 
CODE_12B31E:        INC $33,x                 
CODE_12B320:        INC $33,x                 
CODE_12B322:        JSR CODE_12C248           
CODE_12B325:        JSR CODE_12B63B           
CODE_12B328:        JSR CODE_12B63B           
CODE_12B32B:        JSR CODE_12C1EF           
CODE_12B32E:        JMP CODE_12BD29           

CODE_12B331:        LDY #$08                  ; \ Start loop, maximum index.
CODE_12B333:        BNE CODE_12B337           ; / 

CODE_12B335:        LDY #$05                  ; Start loop with a lower index.

CODE_12B337:        LDA $0051,y               ; \ Check if there's a free sprite slot somewhere.
CODE_12B33A:        BEQ CODE_12B340           ;  | $51,y - 00 = free slot.
CODE_12B33C:        DEY                       ;  | If not, get to next index.
CODE_12B33D:        BPL CODE_12B337           ;  | Loop
CODE_12B33F:        RTS                       ; / If all slots full, return.
                        
CODE_12B340:        LDA #$01                  
CODE_12B342:        STA $0051,y               
CODE_12B345:        LSR A                     
CODE_12B346:        STA $049B,y               
CODE_12B349:        LDA #$01                  
CODE_12B34B:        STA $0090,y               
CODE_12B34E:        LDA $29,x                 
CODE_12B350:        ADC #$05                  
CODE_12B352:        STA $0029,y               
CODE_12B355:        LDA $15,x                 
CODE_12B357:        ADC #$00                  
CODE_12B359:        STA $0015,y               
CODE_12B35C:        LDA $33,x                 
CODE_12B35E:        STA $0033,y               
CODE_12B361:        LDA $1F,x                 
CODE_12B363:        STA $001F,y               
CODE_12B366:        STY $00                   ; Use $00 as index for new sprite.
CODE_12B368:        TYA                       
CODE_12B369:        TAX                       
CODE_12B36A:        JSR CODE_129F96           
CODE_12B36D:        JSR CODE_12A09C           
CODE_12B370:        LDX $12                   
CODE_12B372:        RTS
                       
CODE_12B373:        LDA $044A,x               ; \
CODE_12B376:        BEQ CODE_12B37B           ;  | Phanto shake animation timer (upon takeoff)
CODE_12B378:        DEC $044A,x               ; /
CODE_12B37B:        JSR CODE_12BD29           ; Draw GFX?
CODE_12B37E:        LDY #$01                  ; Y = #$01.
CODE_12B380:        LDA $9C                   ; \ Check if player is holding something.
CODE_12B382:        BEQ CODE_12B39E           ; / If not, branch.
CODE_12B384:        LDX $042D                 ; Get index of carried sprite.
CODE_12B387:        LDA $90,x                 ; \ Check if carried sprite = #$3D. (Key)
CODE_12B389:        LDX $12                   ;  | (Get Phanto's index back again)
CODE_12B38B:        CMP #$3D                  ;  |
CODE_12B38D:        BCC CODE_12B39E           ;  | If not, branch.
CODE_12B38F:        CMP #$3E                  ;  | (Why not simply use BNE?)
CODE_12B391:        BCS CODE_12B39E           ; /
CODE_12B393:        LDA $0595                 ; \
CODE_12B396:        CMP #$A0                  ;  |Decrease takeoff timer until it hits 0
CODE_12B398:        BNE CODE_12B39D           ;  |
CODE_12B39A:        DEC $0595                 ; /
CODE_12B39D:        DEY                       
CODE_12B39E:        LDA $1F,x                 
CODE_12B3A0:        CLC                       
CODE_12B3A1:        ADC #$01                  
CODE_12B3A3:        STA $05                   
CODE_12B3A5:        LDA $32                   
CODE_12B3A7:        CMP $33,x                 
CODE_12B3A9:        LDX $1E                   
CODE_12B3AB:        INX                       
CODE_12B3AC:        TXA                       
CODE_12B3AD:        LDX $12                   
CODE_12B3AF:        SBC $05                   
CODE_12B3B1:        BPL CODE_12B3B4           
CODE_12B3B3:        INY                       
CODE_12B3B4:        LDA $47,x                 
CODE_12B3B6:        CMP.w DATA_119829,y         ;Phanto maximum Y speed
CODE_12B3B9:        BEQ CODE_12B3C1           
CODE_12B3BB:        CLC                       
CODE_12B3BC:        ADC.w DATA_119826,y         ;Phanto acceleration rate
CODE_12B3BF:        STA $47,x                 
CODE_12B3C1:        LDA $0480,x               
CODE_12B3C4:        CLC                       
CODE_12B3C5:        ADC #$A0                  
CODE_12B3C7:        STA $0480,x               
CODE_12B3CA:        BCC CODE_12B3E2           
CODE_12B3CC:        LDA $0477,x               
CODE_12B3CF:        AND #$01                  
CODE_12B3D1:        TAY                       
CODE_12B3D2:        LDA $3D,x                 
CODE_12B3D4:        CLC                       
CODE_12B3D5:        ADC.w DATA_119822,y               
CODE_12B3D8:        STA $3D,x                 
CODE_12B3DA:        CMP.w DATA_119824,y               
CODE_12B3DD:        BNE CODE_12B3E2           
CODE_12B3DF:        INC $0477,x               
CODE_12B3E2:        LDA $EB                   
CODE_12B3E4:        BEQ CODE_12B3EB           
CODE_12B3E6:        LDA $3C                   
CODE_12B3E8:        STA $04CD,x               
CODE_12B3EB:        LDY $0595                 
CODE_12B3EE:        BEQ CODE_12B417           
CODE_12B3F0:        CPY #$A0                  
CODE_12B3F2:        BEQ CODE_12B40E           
CODE_12B3F4:        CPY #$80                  
CODE_12B3F6:        BNE CODE_12B3FD           
CODE_12B3F8:        LDA #$40                  
CODE_12B3FA:        STA $045C,x               
CODE_12B3FD:        CPY #$40                  
CODE_12B3FF:        BNE CODE_12B40B           
CODE_12B401:        LDA #$40                  
CODE_12B403:        STA $044A,x               
CODE_12B406:        LDA #$2E                  
CODE_12B408:        STA $1DE0                 
CODE_12B40B:        DEC $0595                 
CODE_12B40E:        LDA #$00                  
CODE_12B410:        STA $04CD,x               
CODE_12B413:        STA $3D,x                 
CODE_12B415:        STA $47,x                 
CODE_12B417:        JMP CODE_12B497           

CODE_12B41A:        LDA $5B,x                 
CODE_12B41C:        AND #$04                  
CODE_12B41E:        BEQ CODE_12B46B           
CODE_12B420:        LDA $042F,x               
CODE_12B423:        BNE CODE_12B427           
CODE_12B425:        STA $3D,x                 
CODE_12B427:        TXA                       
CODE_12B428:        ASL A                     
CODE_12B429:        ASL A                     
CODE_12B42A:        ASL A                     
CODE_12B42B:        ADC $10                   
CODE_12B42D:        AND #$3F                  
CODE_12B42F:        BNE CODE_12B46B           
CODE_12B431:        LDA $9F,x                 
CODE_12B433:        AND #$C0                  
CODE_12B435:        ASL A                     
CODE_12B436:        ROL A                     
CODE_12B437:        ROL A                     
CODE_12B438:        TAY                       
CODE_12B439:        LDA.w DATA_11982C,y               
CODE_12B43C:        BNE CODE_12B460           
CODE_12B43E:        LDA $5B,x                 
CODE_12B440:        AND #$04                  
CODE_12B442:        BEQ CODE_12B46B           
CODE_12B444:        LDA $32                   
CODE_12B446:        CLC                       
CODE_12B447:        ADC #$10                  
CODE_12B449:        CMP $33,x                 
CODE_12B44B:        BNE CODE_12B46B           
CODE_12B44D:        JSR CODE_12C1DA           
CODE_12B450:        INY                       
CODE_12B451:        TYA                       
CODE_12B452:        CMP $6F,x                 
CODE_12B454:        BNE CODE_12B46B           
CODE_12B456:        LDA $0F                   
CODE_12B458:        ADC #$28                  
CODE_12B45A:        CMP #$50                  
CODE_12B45C:        BCS CODE_12B46B                   
CODE_12B45E:        LDA #$D8                  
CODE_12B460:        STA $47,x                 
CODE_12B462:        LDA $9F,x                 
CODE_12B464:        AND #$F0                  
CODE_12B466:        STA $9F,x                 
CODE_12B468:        JSR CODE_12C1EA           
CODE_12B46B:        JMP CODE_12B4D1           

CODE_12B46E:        LDA $0628                 
CODE_12B471:        CMP #$02                  
CODE_12B473:        BNE CODE_12B476           
CODE_12B475:        RTS
                       
CODE_12B476:        JSR CODE_12BB16           
CODE_12B479:        JSR CODE_12BD29           
CODE_12B47C:        INC $9F,x                 
CODE_12B47E:        JSR CODE_12BA4F           
CODE_12B481:        JSR CODE_12AA43           
CODE_12B484:        JSR CODE_12BA46           
CODE_12B487:        LDA $47,x                 
CODE_12B489:        BEQ CODE_12B49D           
CODE_12B48B:        BPL CODE_12B490           
CODE_12B48D:        STA $042F,x               
CODE_12B490:        LDA $10                   
CODE_12B492:        LSR A                     
CODE_12B493:        BCC CODE_12B497           
CODE_12B495:        DEC $47,x                 
CODE_12B497:        JSR CODE_12C1EF           
CODE_12B49A:        JMP CODE_12C1EA           

CODE_12B49D:        JSR CODE_12C1EF           
CODE_12B4A0:        JMP CODE_12B497           

CODE_12B4A3:        LDY $86,x                 
CODE_12B4A5:        CPY #$3A                  
CODE_12B4A7:        BCS CODE_12B4D1                   
CODE_12B4A9:        LDA $5B,x                 
CODE_12B4AB:        AND #$04                  
CODE_12B4AD:        BEQ CODE_12B4B1           
CODE_12B4AF:        STZ $3D,x                 
CODE_12B4B1:        DEC $9F,x                 
CODE_12B4B3:        TYA                       
CODE_12B4B4:        BNE CODE_12B4C1           
CODE_12B4B6:        LDA $A8,x                 
CODE_12B4B8:        BEQ CODE_12B4BE           
CODE_12B4BA:        STY $9C                   
CODE_12B4BC:        STY $A8,x                 
CODE_12B4BE:        JMP CODE_12B120           

CODE_12B4C1:        CMP #$30                  
CODE_12B4C3:        BCS CODE_12B4D1                   
CODE_12B4C5:        LSR A                     
CODE_12B4C6:        BCC CODE_12B4D1           
CODE_12B4C8:        LDA $10                   
CODE_12B4CA:        STA $045C,x               
CODE_12B4CD:        LDA #$01                  
CODE_12B4CF:        STA $9F,x                 
CODE_12B4D1:        JSR CODE_12DDAB           
CODE_12B4D4:        JSR CODE_12BB16           
CODE_12B4D7:        LDA $0480,x               
CODE_12B4DA:        BEQ CODE_12B4F8           
CODE_12B4DC:        LDA $5B,x                 
CODE_12B4DE:        AND #$08                  
CODE_12B4E0:        BEQ CODE_12B4E5           
CODE_12B4E2:        JMP CODE_12A83B           

CODE_12B4E5:        DEC $0480,x               
CODE_12B4E8:        INC $86,x                 
CODE_12B4EA:        LDA $65,x                 
CODE_12B4EC:        AND #$EF                  
CODE_12B4EE:        ORA #$20                  
CODE_12B4F0:        STA $65,x                 
CODE_12B4F2:        JSR CODE_12C1EA           
CODE_12B4F5:        JMP CODE_12BD29           

CODE_12B4F8:        LDA $5B,x                 
CODE_12B4FA:        AND $6F,x                 
CODE_12B4FC:        BEQ CODE_12B50C           
CODE_12B4FE:        JSR CODE_12C248           
CODE_12B501:        LDA $042F,x               
CODE_12B504:        BEQ CODE_12B50C           
CODE_12B506:        JSR CODE_12B63B           
CODE_12B509:        JSR CODE_12B63B           
CODE_12B50C:        INC $9F,x                 
CODE_12B50E:        JSR CODE_12BA46           
CODE_12B511:        JSR CODE_12BD29           
CODE_12B514:        LDA $90,x                 
CODE_12B516:        CMP #$06                  
CODE_12B518:        BNE CODE_12B521           
CODE_12B51A:        LDA $042F,x               
CODE_12B51D:        BNE CODE_12B521           
CODE_12B51F:        STA $3D,x                 
CODE_12B521:        JSR CODE_12A0AA           
CODE_12B524:        LDA $5B,x                 
CODE_12B526:        LDY $47,x                 
CODE_12B528:        BPL CODE_12B58E           
CODE_12B52A:        AND #$08                  
CODE_12B52C:        BEQ CODE_12B533           
CODE_12B52E:        LDA #$00                  
CODE_12B530:        STA $47,x                 
CODE_12B532:        RTS
                       
CODE_12B533:        LDA $042F,x               
CODE_12B536:        BNE CODE_12B571           
CODE_12B538:        LDA $90,x                 
CODE_12B53A:        CMP #$02                  
CODE_12B53C:        BNE CODE_12B55F           
CODE_12B53E:        DEC $9F,x                 
CODE_12B540:        LDA $47,x                 
CODE_12B542:        BMI CODE_12B548           
CODE_12B544:        STZ $9F,x                 
CODE_12B546:        BRA CODE_12B573           

CODE_12B548:        LDY #$03                  
CODE_12B54A:        LDA $79,x                 
CODE_12B54C:        AND #$03                  
CODE_12B54E:        BNE CODE_12B552           
CODE_12B550:        LDY #$01                  
CODE_12B552:        TYA                       
CODE_12B553:        AND $10                   
CODE_12B555:        BNE CODE_12B573           
CODE_12B557:        LDA $9F,x                 
CODE_12B559:        EOR #$08                  
CODE_12B55B:        STA $9F,x                 
CODE_12B55D:        BRA CODE_12B573           

CODE_12B55F:        CMP #$06                  
CODE_12B561:        BNE CODE_12B571           
CODE_12B563:        LDA $47,x                 
CODE_12B565:        CMP #$FE                  
CODE_12B567:        BNE CODE_12B571           
CODE_12B569:        LDA $0587                 
CODE_12B56C:        BPL CODE_12B571           
CODE_12B56E:        JSR CODE_12B676           
CODE_12B571:        DEC $9F,x                 
CODE_12B573:        LDA $90,x                 
CODE_12B575:        CMP #$07                  
CODE_12B577:        BEQ CODE_12B57D           
CODE_12B579:        CMP #$03                  
CODE_12B57B:        BNE CODE_12B58D           
CODE_12B57D:        LDA $042F,x               
CODE_12B580:        BNE CODE_12B58D           
CODE_12B582:        LDA $0477,x               
CODE_12B585:        BNE CODE_12B58D           
CODE_12B587:        INC $0477,x               
CODE_12B58A:        JMP CODE_12C248           

CODE_12B58D:        RTS
                       
CODE_12B58E:        AND #$04                  
CODE_12B590:        BEQ CODE_12B533           
CODE_12B592:        LDA #$00                  
CODE_12B594:        STA $0477,x               
CODE_12B597:        LDY $90,x                 
CODE_12B599:        CPY #$02                  
CODE_12B59B:        BNE CODE_12B5B3           
CODE_12B59D:        LDA #$3F                  
CODE_12B59F:        JSR CODE_12B624           
CODE_12B5A2:        INC $79,x                 
CODE_12B5A4:        LDY #$F0                  
CODE_12B5A6:        LDA $79,x                 
CODE_12B5A8:        AND #$03                  
CODE_12B5AA:        BNE CODE_12B5AE           
CODE_12B5AC:        LDY #$E0                  
CODE_12B5AE:        STY $47,x                 
CODE_12B5B0:        JMP CODE_12C1EA           

CODE_12B5B3:        LDA #$1F                  
CODE_12B5B5:        CPY #$09                  
CODE_12B5B7:        BEQ CODE_12B624           
CODE_12B5B9:        CPY #$29                  
CODE_12B5BB:        BEQ CODE_12B624           
CODE_12B5BD:        LDA #$3F                  
CODE_12B5BF:        CPY #$0D                  
CODE_12B5C1:        BEQ CODE_12B624           
CODE_12B5C3:        LDA #$7F                  
CODE_12B5C5:        CPY #$05                  
CODE_12B5C7:        BEQ CODE_12B5ED           
CODE_12B5C9:        CPY #$05                  
CODE_12B5CB:        BEQ CODE_12B5ED           
CODE_12B5CD:        CPY #$07                  
CODE_12B5CF:        BEQ CODE_12B5ED           
CODE_12B5D1:        CPY #$06                  
CODE_12B5D3:        BNE CODE_12B628           
CODE_12B5D5:        LDA $042F,x               
CODE_12B5D8:        BNE CODE_12B628           
CODE_12B5DA:        JSR CODE_12C1DA           
CODE_12B5DD:        INY                       
CODE_12B5DE:        STY $6F,x                 
CODE_12B5E0:        LDA $9F,x                 
CODE_12B5E2:        AND #$3F                  
CODE_12B5E4:        BNE CODE_12B5ED           
CODE_12B5E6:        LDA #$E8                  
CODE_12B5E8:        STA $47,x                 
CODE_12B5EA:        JMP CODE_12C1EA           

CODE_12B5ED:        LDA $044A,x               
CODE_12B5F0:        BEQ CODE_12B5FF           
CODE_12B5F2:        DEC $9F,x                 
CODE_12B5F4:        DEC $044A,x               
CODE_12B5F7:        BNE CODE_12B5FF           
CODE_12B5F9:        JSR CODE_12B676           
CODE_12B5FC:        JMP CODE_12B646           

CODE_12B5FF:        TXA                       
CODE_12B600:        ASL A                     
CODE_12B601:        ASL A                     
CODE_12B602:        ASL A                     
CODE_12B603:        ADC $10                   
CODE_12B605:        ASL A                     
CODE_12B606:        BNE CODE_12B622           
CODE_12B608:        LDA $90,x                 
CODE_12B60A:        CMP #$06                  
CODE_12B60C:        BNE CODE_12B614           
CODE_12B60E:        JSR CODE_12B676           
CODE_12B611:        JMP CODE_12B655           

CODE_12B614:        LDA $33,x                 
CODE_12B616:        SEC                       
CODE_12B617:        SBC #$10                  
CODE_12B619:        CMP $32                   
CODE_12B61B:        BNE CODE_12B622           
CODE_12B61D:        LDA #$30                  
CODE_12B61F:        STA $044A,x               
CODE_12B622:        LDA #$7F                  
CODE_12B624:        AND $9F,x                 
CODE_12B626:        BEQ CODE_12B643           
CODE_12B628:        LDA $042F,x               
CODE_12B62B:        BEQ CODE_12B646           
CODE_12B62D:        LDA $47,x                 
CODE_12B62F:        CMP #$1A                  
CODE_12B631:        BCC CODE_12B643           
CODE_12B633:        LDA #$F0                  
CODE_12B635:        JSR CODE_12B65B           
CODE_12B638:        JSR CODE_12C1EA           
CODE_12B63B:        LDA $3D,x                 
CODE_12B63D:        STA $00                   
CODE_12B63F:        ASL A                     
CODE_12B640:        ROR $3D,x                 
CODE_12B642:        RTS
                       
CODE_12B643:        JSR CODE_129F98           
CODE_12B646:        LDA $90,x                 
CODE_12B648:        CMP #$01                  
CODE_12B64A:        BNE CODE_12B655           
CODE_12B64C:        LDA $47,x                 
CODE_12B64E:        CMP #$04                  
CODE_12B650:        BCC CODE_12B655           
CODE_12B652:        JSR CODE_129F98           
CODE_12B655:        ASL $65,x                 
CODE_12B657:        LSR $65,x                 
CODE_12B659:        LDA #$00                  
CODE_12B65B:        STA $47,x                 
CODE_12B65D:        LDA $90,x                 
CODE_12B65F:        CMP #$32                  
CODE_12B661:        LDA $33,x                 
CODE_12B663:        BCS CODE_12B66B                   
CODE_12B665:        ADC #$08                  
CODE_12B667:        BCC CODE_12B66B           
CODE_12B669:        INC $1F,x                 
CODE_12B66B:        AND #$F0                  
CODE_12B66D:        STA $33,x                 
CODE_12B66F:        RTS
                       
CODE_12B670:        JSR CODE_12B331           
CODE_12B673:        JMP CODE_12B679           

CODE_12B676:        JSR CODE_12B335           
CODE_12B679:        BMI CODE_12B691           
CODE_12B67B:        LDY $6F,x                 
CODE_12B67D:        LDX $00                   
CODE_12B67F:        LDA.w DATA_11982F,y         ; \ Set X speed.       
CODE_12B682:        STA $3D,x                 ; /
CODE_12B684:        LDA #$00                  ; \ No Y speed.
CODE_12B686:        STA $47,x                 ; /
CODE_12B688:        LDA #$1B                  ; \ Spawn Bullet.
CODE_12B68A:        STA $90,x                 ; /
CODE_12B68C:        JSR CODE_129F7A           
CODE_12B68F:        LDX $12                   
CODE_12B691:        RTS
                       
CODE_12B692:        LDA $9D                   
CODE_12B694:        EOR #$01                  
CODE_12B696:        TAY                       
CODE_12B697:        INY                       
CODE_12B698:        STY $6F,x                 
CODE_12B69A:        LDA $28                   
CODE_12B69C:        STA $29,x                 
CODE_12B69E:        LDA $14                   
CODE_12B6A0:        STA $15,x                 
CODE_12B6A2:        LDA $1E                   
CODE_12B6A4:        STA $07                   
CODE_12B6A6:        LDA $32                   
CODE_12B6A8:        LDY $0489,x               
CODE_12B6AB:        CPY #$03                  
CODE_12B6AD:        BEQ CODE_12B6B9           
CODE_12B6AF:        CPY #$02                  
CODE_12B6B1:        BEQ CODE_12B6B9           
CODE_12B6B3:        SBC #$0E                  
CODE_12B6B5:        BCS CODE_12B6B9                   
CODE_12B6B7:        DEC $07                   
CODE_12B6B9:        LDY $C7                   
CODE_12B6BB:        CPY #$04                  
CODE_12B6BD:        CLC                       
CODE_12B6BE:        BNE CODE_12B6D0           
CODE_12B6C0:        LDY $06C2                 
CODE_12B6C3:        CPY #$01                  
CODE_12B6C5:        LDY $8F                   
CODE_12B6C7:        BCC CODE_12B6CD           
CODE_12B6C9:        INY                       
CODE_12B6CA:        INY                       
CODE_12B6CB:        INY                       
CODE_12B6CC:        INY                       
CODE_12B6CD:        ADC.w DATA_119832,y               
CODE_12B6D0:        PHP                       
CODE_12B6D1:        LDY $A8,x                 
CODE_12B6D3:        CLC                       
CODE_12B6D4:        LDX $06C2                 
CODE_12B6D7:        BEQ CODE_12B6E0           
CODE_12B6D9:        INY                       
CODE_12B6DA:        INY                       
CODE_12B6DB:        INY                       
CODE_12B6DC:        INY                       
CODE_12B6DD:        INY                       
CODE_12B6DE:        INY                       
CODE_12B6DF:        INY                       
CODE_12B6E0:        ADC $1EFF,y               
CODE_12B6E3:        LDX $12                   
CODE_12B6E5:        STA $33,x                 
CODE_12B6E7:        LDA $07                   
CODE_12B6E9:        ADC $1F0D,y               
CODE_12B6EC:        PLP                       
CODE_12B6ED:        ADC #$00                  
CODE_12B6EF:        STA $1F,x                 
CODE_12B6F1:        LDY $A8,x                 
CODE_12B6F3:        CPY #$05                  
CODE_12B6F5:        BCS CODE_12B70D                   
CODE_12B6F7:        LDA $90,x                 
CODE_12B6F9:        CMP #$22                  
CODE_12B6FB:        BEQ CODE_12B70D           
CODE_12B6FD:        CMP #$32                  
CODE_12B6FF:        BCS CODE_12B70D                   
CODE_12B701:        LDA $0438,x               
CODE_12B704:        BNE CODE_12B708           
CODE_12B706:        INC $9F,x                 
CODE_12B708:        ASL $65,x                 
CODE_12B70A:        SEC                       
CODE_12B70B:        ROR $65,x                 
CODE_12B70D:        JSR CODE_12BB60           
CODE_12B710:        JSL CODE_139210           
CODE_12B714:        JMP CODE_12BD29           

CODE_12B717:        JSR CODE_12B71B           ; \ Wrapper.
CODE_12B71A:        RTS                       ; /
                       
CODE_12B71B:        LDA $A8,x                 
CODE_12B71D:        BEQ CODE_12B724           
CODE_12B71F:        PLA                       
CODE_12B720:        PLA                       
CODE_12B721:        JMP CODE_12B692           

CODE_12B724:        JSR CODE_12BD29           
CODE_12B727:        LDA $90,x                 ; \ Check if sprite = POW
CODE_12B729:        CMP #$3A                  ;  | (#$3A)
CODE_12B72B:        BCS CODE_12B732           ; / If that is the case, branch. Otherwise it's a mushroom block.
CODE_12B72D:        JSR CODE_12DDA7           
CODE_12B730:        BRA CODE_12B735
           
CODE_12B732:        JSR CODE_12DDAB           
CODE_12B735:        LDA $042F,x               
CODE_12B738:        BEQ CODE_12B71A           
CODE_12B73A:        JSR CODE_12A0AA           
CODE_12B73D:        PLA                       
CODE_12B73E:        PLA                       
CODE_12B73F:        LDA $5B,x                 
CODE_12B741:        PHA                       
CODE_12B742:        AND #$03                  
CODE_12B744:        BEQ CODE_12B75C           
CODE_12B746:        LDA #$00                  
CODE_12B748:        STA $3D,x                 
CODE_12B74A:        LDA $29,x                 
CODE_12B74C:        ADC #$08                  
CODE_12B74E:        AND #$F0                  
CODE_12B750:        STA $29,x                 
CODE_12B752:        LDA $EB                   
CODE_12B754:        BEQ CODE_12B75C           
CODE_12B756:        LDA $15,x                 
CODE_12B758:        ADC #$00                  
CODE_12B75A:        STA $15,x                 
CODE_12B75C:        PLA                       
CODE_12B75D:        LDY $47,x                 
CODE_12B75F:        BMI CODE_12B7B9           
CODE_12B761:        AND #$04                  
CODE_12B763:        BEQ CODE_12B7B9           
CODE_12B765:        LDA $0E                   
CODE_12B767:        CMP #$26                  
CODE_12B769:        BNE CODE_12B774           
CODE_12B76B:        LDA $3D,x                 
CODE_12B76D:        BEQ CODE_12B774           
CODE_12B76F:        LDA #$14                  
CODE_12B771:        JMP CODE_12B65B           

CODE_12B774:        LDA $90,x                 ; \ Check if sprite = POW
CODE_12B776:        CMP #$3A                  ;  | If that is the case, kill sprites and make a sound effect.
CODE_12B778:        BNE CODE_12B789           ; / Otherwise it's a mushroom block.
CODE_12B77A:        LDA #$20                  ; \ Shake screen and kill all enemies on-screen for #$20 frames.
CODE_12B77C:        STA $04C5                 ; /
CODE_12B77F:        LDA #$09                  ; \ POW SFX.
CODE_12B781:        STA $1DE3                 ; /
CODE_12B784:        LDA #$08                  ; \ Disappear in two puffs of smoke.
CODE_12B786:        JMP CODE_12BA3F           ; /

CODE_12B789:        LDA $47,x                 ; \ If Y speed of mushroom block is too great (=> #$16)...
CODE_12B78B:        CMP #$16                  ;  |
CODE_12B78D:        BCS CODE_12B7A5           ; / branch. Don't lock block in place yet.
CODE_12B78F:        LDA $3D,x                 ; \ Check if X speed of mushroom blocks is too great (=> #$30 on either sides...
CODE_12B791:        BPL CODE_12B796           ;  |
CODE_12B793:        EOR #$FF                  ;  |
CODE_12B795:        INC A                     ;  |
CODE_12B796:        CMP #$30                  ;  |
CODE_12B798:        BCC CODE_12B7AD           ;  | If that is not the case, branch.
CODE_12B79A:        LDA #$2F                  ;  | If it is, set the speed value to a value lower than #$30.
CODE_12B79C:        BIT $3D,x                 ;  | So #$2F or #$D1, depending on the direction.
CODE_12B79E:        BPL CODE_12B7A2           ;  |
CODE_12B7A0:        LDA #$D1                  ;  |
CODE_12B7A2:        STA $3D,x                 ; /
CODE_12B7A4:        RTS                       ; Return.
                       
CODE_12B7A5:        JSR CODE_12B659           
CODE_12B7A8:        LDA #$F5                  ; New Y speed (bouncing off ground).
CODE_12B7AA:        JMP CODE_12B635           

CODE_12B7AD:        JSR CODE_12B659           
CODE_12B7B0:        LDA $79,x                 ; \ Change into the tile $79,x is holding.
CODE_12B7B2:        JSL CODE_13FA0D           ; / (Should be #$64.)
CODE_12B7B6:        JMP CODE_12A83B           ; Terminate mushroom block sprite.

CODE_12B7B9:        RTS                       ; Return.
                       
CODE_12B7BA:        LDA #$04                  
CODE_12B7BC:        STA $0489,x               
CODE_12B7BF:        LDA #$02                  
CODE_12B7C1:        STA $6F,x                 
CODE_12B7C3:        LDY $04B7                 
CODE_12B7C6:        BEQ CODE_12B7E8           
CODE_12B7C8:        LDA $10                   
CODE_12B7CA:        AND #$03                  
CODE_12B7CC:        BNE CODE_12B7E8           
CODE_12B7CE:        LDY $50                   
CODE_12B7D0:        CPY #$07                  
CODE_12B7D2:        BEQ CODE_12B7E8           
CODE_12B7D4:        LDA $04BE                 
CODE_12B7D7:        BNE CODE_12B7E8           
CODE_12B7D9:        DEC $04B7                 ; Decrease amount of time you stay in the dark potion room.
CODE_12B7DC:        BNE CODE_12B7E8           
CODE_12B7DE:        STA $0628                 
CODE_12B7E1:        JSL CODE_14E35A           
CODE_12B7E5:        JMP CODE_12B8D9           

CODE_12B7E8:        LDA $0453,x               
CODE_12B7EB:        BNE CODE_12B7B9           
CODE_12B7ED:        LDA $04B3                 
CODE_12B7F0:        BEQ CODE_12B7FA           
CODE_12B7F2:        DEC $04B3                 
CODE_12B7F5:        BNE CODE_12B7FA           
CODE_12B7F7:        JMP CODE_12B1F9           

CODE_12B7FA:        LDA $65,x                 
CODE_12B7FC:        ORA #$40                  
CODE_12B7FE:        STA $65,x                 
CODE_12B800:        LDY $04BE                 
CODE_12B803:        LDA.w DATA_11983C,y               
CODE_12B806:        LDY #$00                  
CODE_12B808:        ASL A                     
CODE_12B809:        BCC CODE_12B80E           
CODE_12B80B:        INY                       
CODE_12B80C:        STY $6F,x                 
CODE_12B80E:        LDA $04BE                 
CODE_12B811:        BEQ CODE_12B844           
CODE_12B813:        LDY #$F8                  
CODE_12B815:        LDA $04BE                 
CODE_12B818:        CMP #$09                  
CODE_12B81A:        BCC CODE_12B81E           
CODE_12B81C:        LDY #$D8                  
CODE_12B81E:        STY $02F6                 
CODE_12B821:        LDY #$01                  
CODE_12B823:        STY $02F7                 
CODE_12B826:        LDA $02F6                 
CODE_12B829:        STA $02F8                 
CODE_12B82C:        LDA $02F7                 
CODE_12B82F:        STA $02F9                 
CODE_12B832:        LDA #$78                  
CODE_12B834:        JSR CODE_12BDD5           
CODE_12B837:        REP #$10                  
CODE_12B839:        LDY $02F6                 
CODE_12B83C:        LDA $0800,y               
CODE_12B83F:        STA $0804,y               
CODE_12B842:        SEP #$10                  
CODE_12B844:        LDY #$E0                  
CODE_12B846:        LDA $02F6                 
CODE_12B849:        CMP #$D8                  
CODE_12B84B:        BEQ CODE_12B84F           
CODE_12B84D:        LDY #$D8                  
CODE_12B84F:        STY $02F6                 
CODE_12B852:        LDY #$01                  
CODE_12B854:        STY $02F7                 
CODE_12B857:        LDA $04BE                 
CODE_12B85A:        CMP #$19                  
CODE_12B85C:        BCC CODE_12B86F           
CODE_12B85E:        CMP #$30                  
CODE_12B860:        BNE CODE_12B867           
CODE_12B862:        LDA #$10                  
CODE_12B864:        STA $1DE3                 
CODE_12B867:        LDY #$40                  
CODE_12B869:        STY $02F6                 
CODE_12B86C:        STZ $02F7                 
CODE_12B86F:        LDA #$74                  
CODE_12B871:        LDY $0477,x               
CODE_12B874:        BEQ CODE_12B878           
CODE_12B876:        LDA #$7C                  
CODE_12B878:        JSR CODE_12B904           
CODE_12B87B:        LDX $04BE                 
CODE_12B87E:        BEQ CODE_12B8D9           
CODE_12B880:        INC $04BE                 
CODE_12B883:        LDY $02F6                 
CODE_12B886:        LDA.w DATA_11983C,x               
CODE_12B889:        BMI CODE_12B8D9           
CODE_12B88B:        REP #$10                  
CODE_12B88D:        LDY $02F6                 
CODE_12B890:        CLC                       
CODE_12B891:        ADC $0800,y               
CODE_12B894:        STA $0800,y               
CODE_12B897:        STA $0804,y               
CODE_12B89A:        STA $0808,y               
CODE_12B89D:        STA $080C,y               
CODE_12B8A0:        SEP #$10                  
CODE_12B8A2:        CPX #$30                  
CODE_12B8A4:        BNE CODE_12B8D9           
CODE_12B8A6:        STZ $04BE                 
CODE_12B8A9:        LDX #$08                  
CODE_12B8AB:        LDA $90,x                 
CODE_12B8AD:        CMP #$3C                  
CODE_12B8AF:        BNE CODE_12B8C0           
CODE_12B8B1:        STZ $90,x                 
CODE_12B8B3:        STZ $51,x                 
CODE_12B8B5:        LDY $0441,x               
CODE_12B8B8:        BMI CODE_12B8C0           
CODE_12B8BA:        LDA ($CC),y               
CODE_12B8BC:        AND #$7F                  
CODE_12B8BE:        STA ($CC),y               
CODE_12B8C0:        DEX                       
CODE_12B8C1:        BPL CODE_12B8AB           
CODE_12B8C3:        LDX $12                   
CODE_12B8C5:        LDA $0536                 
CODE_12B8C8:        CMP #$01                  
CODE_12B8CA:        BNE CODE_12B8D1           
CODE_12B8CC:        INC $0627                 
CODE_12B8CF:        BNE CODE_12B8D9           
CODE_12B8D1:        LDA $0628                 
CODE_12B8D4:        EOR #$02                  
CODE_12B8D6:        STA $0628                 
CODE_12B8D9:        LDX $12                   
CODE_12B8DB:        RTS

DATA_12B8DC:        db $A2,$B2,$A4,$B4,$A3,$B3,$A5,$B5
      
DATA_12B8E4:        db $A2,$B2,$8B,$9B,$A3,$B3,$A5,$B5

DATA_12B8EC:        db $00,$00,$00,$00,$08,$08,$08,$08

DATA_12B8F4:        db $00,$08,$10,$18,$00,$08,$10,$18
                       
DATA_12B8FC:        db $22,$22,$26,$26,$22,$22,$22,$22
        
CODE_12B904:        AND #$08                  
CODE_12B906:        STA $00                   
CODE_12B908:        REP #$10                  
CODE_12B90A:        LDX #$0000                
CODE_12B90D:        LDY $02F6                 
CODE_12B910:        LDA #$07                  
CODE_12B912:        STA $02                   
CODE_12B914:        LDA $0429                 
CODE_12B917:        STA $04                   
CODE_12B919:        LDA $021F                 
CODE_12B91C:        STA $05                   
CODE_12B91E:        REP #$20                  
CODE_12B920:        LDA.l DATA_12B8EC,x             
CODE_12B924:        AND #$00FF                
CODE_12B927:        CLC                       
CODE_12B928:        ADC $04                   
CODE_12B92A:        STZ $04                   
CODE_12B92C:        AND #$FF00                
CODE_12B92F:        BEQ CODE_12B936           
CODE_12B931:        LDA #$0100                
CODE_12B934:        STA $04                   
CODE_12B936:        SEP #$20                  
CODE_12B938:        LDA.l DATA_12B8EC,x             
CODE_12B93C:        CLC                       
CODE_12B93D:        ADC $0429                 
CODE_12B940:        STA $0800,y               
CODE_12B943:        LDA.l DATA_12B8F4,x             
CODE_12B947:        CLC                       
CODE_12B948:        ADC $042C                 
CODE_12B94B:        STA $0801,y               
CODE_12B94E:        LDA $00                   
CODE_12B950:        BNE CODE_12B95B           
CODE_12B952:        LDA.l DATA_12B8DC,x             
CODE_12B956:        PHA                       
CODE_12B957:        LDA #$22                  
CODE_12B959:        BRA CODE_12B964           

CODE_12B95B:        LDA.l DATA_12B8E4,x             
CODE_12B95F:        PHA                       
CODE_12B960:        LDA.l DATA_12B8FC,x             
CODE_12B964:        STA $0803,y               
CODE_12B967:        PLA                       
CODE_12B968:        STA $0802,y               
CODE_12B96B:        PHY                       
CODE_12B96C:        REP #$20                  
CODE_12B96E:        TYA                       
CODE_12B96F:        LSR A                     
CODE_12B970:        LSR A                     
CODE_12B971:        TAY                       
CODE_12B972:        SEP #$20                  
CODE_12B974:        LDA $05                   
CODE_12B976:        STA $0A20,y               
CODE_12B979:        PLY                       
CODE_12B97A:        INX                       
CODE_12B97B:        INY                       
CODE_12B97C:        INY                       
CODE_12B97D:        INY                       
CODE_12B97E:        INY                       
CODE_12B97F:        DEC $02                   
CODE_12B981:        BPL CODE_12B914           
CODE_12B983:        SEP #$10                  
CODE_12B985:        RTS
                       
CODE_12B986:        LDA #$02                  
CODE_12B988:        BNE CODE_12B990           
CODE_12B98A:        LDA #$01                  
CODE_12B98C:        BNE CODE_12B990           
CODE_12B98E:        LDA #$00                  
CODE_12B990:        PHA                       
CODE_12B991:        LDY #$08                  
CODE_12B993:        LDA $0051,y               
CODE_12B996:        BEQ CODE_12B9A9           
CODE_12B998:        LDA $0090,y               
CODE_12B99B:        CMP #$3C                  
CODE_12B99D:        BNE CODE_12B9A9           
CODE_12B99F:        LDA #$05                  
CODE_12B9A1:        STA $0051,y               
CODE_12B9A4:        LDA #$20                  
CODE_12B9A6:        STA $0086,y               
CODE_12B9A9:        DEY                       
CODE_12B9AA:        BPL CODE_12B993           
CODE_12B9AC:        JSR CODE_12B331           
CODE_12B9AF:        BMI CODE_12B9E3           
CODE_12B9B1:        LDA #$00                  
CODE_12B9B3:        STA $04BE                 
CODE_12B9B6:        STA $04B3                 
CODE_12B9B9:        LDX $00                   
CODE_12B9BB:        PLA                       
CODE_12B9BC:        STA $0477,x               
CODE_12B9BF:        LDA #$3C                  
CODE_12B9C1:        STA $90,x                 
CODE_12B9C3:        JSR CODE_129F7A           
CODE_12B9C6:        LDA $28                   
CODE_12B9C8:        ADC #$08                  
CODE_12B9CA:        AND #$F0                  
CODE_12B9CC:        STA $29,x                 
CODE_12B9CE:        LDA $14                   
CODE_12B9D0:        ADC #$00                  
CODE_12B9D2:        STA $15,x                 
CODE_12B9D4:        LDA $32                   
CODE_12B9D6:        STA $33,x                 
CODE_12B9D8:        LDA $1E                   
CODE_12B9DA:        STA $1F,x                 
CODE_12B9DC:        LDA #$41                  
CODE_12B9DE:        STA $65,x                 
CODE_12B9E0:        LDX $12                   
CODE_12B9E2:        RTS
                       
CODE_12B9E3:        PLA                       
CODE_12B9E4:        RTS
                       
DATA_12B9E5:        db $2E,$C6,$C8,$C6

CODE_12B9E9:        JSR CODE_12DDAB                   
CODE_12B9EC:        JSR CODE_12BA46                                 
CODE_12B9EF:        LDA #$01                  
CODE_12B9F1:        STA $0D00,x               
CODE_12B9F4:        LDA $5B,x                 
CODE_12B9F6:        AND #$03                  
CODE_12B9F8:        BEQ CODE_12BA02           
CODE_12B9FA:        LDA #$0F                  
CODE_12B9FC:        STA $1DE0                 
CODE_12B9FF:        JMP CODE_12B1F9           

CODE_12BA02:        LDA $5B,x                 
CODE_12BA04:        AND #$04                  
CODE_12BA06:        BEQ CODE_12BA0B           
CODE_12BA08:        JSR CODE_12B659           
CODE_12BA0B:        LDA $6F,x                 
CODE_12BA0D:        PHA                       
CODE_12BA0E:        PHX                       
CODE_12BA0F:        LDA #$02                  
CODE_12BA11:        STA $6F,x                 
CODE_12BA13:        LDA $10                   
CODE_12BA15:        AND #$0C                  
CODE_12BA17:        LSR A                     
CODE_12BA18:        LSR A                     
CODE_12BA19:        TAX                       
CODE_12BA1A:        CPX #$03                  
CODE_12BA1C:        BNE CODE_12BA28           
CODE_12BA1E:        PHX                       
CODE_12BA1F:        LDX $12                   
CODE_12BA21:        LDA $6F,x                 
CODE_12BA23:        EOR #$03                  
CODE_12BA25:        STA $6F,x                 
CODE_12BA27:        PLX                       
CODE_12BA28:        LDA.l DATA_12B9E5,x             
CODE_12BA2C:        PLX                       
CODE_12BA2D:        JSR CODE_12BDD5           
CODE_12BA30:        PLA                       
CODE_12BA31:        STA $6F,x                 
CODE_12BA33:        LDY $6F,x                 
CODE_12BA35:        LDA.w DATA_11986C,y               
CODE_12BA38:        STA $3D,x                 
CODE_12BA3A:        JMP CODE_12A0AA           

CODE_12BA3D:        LDA #$03                  
CODE_12BA3F:        STA $51,x                 
CODE_12BA41:        LDA #$18                  
CODE_12BA43:        STA $86,x                 
CODE_12BA45:        RTS
                       
CODE_12BA46:        LDA $A8,x                 
CODE_12BA48:        BEQ CODE_12BA45           
CODE_12BA4A:        PLA                       
CODE_12BA4B:        PLA                       
CODE_12BA4C:        JMP CODE_12B692           

CODE_12BA4F:        LDA $042F,x               
CODE_12BA52:        BEQ CODE_12BA63           
CODE_12BA54:        PLA                       
CODE_12BA55:        PLA                       
CODE_12BA56:        JMP CODE_12A0A7           

CODE_12BA59:        JSR CODE_12AC85           
CODE_12BA5C:        STA $0438,x               
CODE_12BA5F:        LDA $33,x                 
CODE_12BA61:        STA $79,x                 
CODE_12BA63:        RTS
                       
CODE_12BA64:        ASL $65,x                 
CODE_12BA66:        LDA $10                   
CODE_12BA68:        ASL A                     
CODE_12BA69:        ASL A                     
CODE_12BA6A:        ASL A                     
CODE_12BA6B:        ASL A                     
CODE_12BA6C:        ROR $65,x                 
CODE_12BA6E:        LDY $B1,x                 
CODE_12BA70:        BNE CODE_12BA92           
CODE_12BA72:        LDA $65,x                 
CODE_12BA74:        ORA #$20                  
CODE_12BA76:        STA $65,x                 
CODE_12BA78:        LDA $79,x                 
CODE_12BA7A:        SEC                       
CODE_12BA7B:        SBC #$0C                  
CODE_12BA7D:        CMP $33,x                 
CODE_12BA7F:        LDA #$FE                  
CODE_12BA81:        BCC CODE_12BA8D           
CODE_12BA83:        LDA $65,x                 
CODE_12BA85:        AND #$DF                  
CODE_12BA87:        STA $65,x                 
CODE_12BA89:        INC $B1,x                 
CODE_12BA8B:        LDA #$04                  
CODE_12BA8D:        STA $47,x                 
CODE_12BA8F:        JMP CODE_12BA9A           

CODE_12BA92:        LDA $10                   
CODE_12BA94:        AND #$07                  
CODE_12BA96:        BNE CODE_12BA9A           
CODE_12BA98:        INC $47,x                 
CODE_12BA9A:        JSR CODE_12C1EA           
CODE_12BA9D:        LDA $33,x                 
CODE_12BA9F:        CMP #$F0                  
CODE_12BAA1:        BCC CODE_12BAAB           
CODE_12BAA3:        LDA #$00                  
CODE_12BAA5:        STA $B1,x                 
CODE_12BAA7:        LDA $79,x                 
CODE_12BAA9:        STA $33,x                 
CODE_12BAAB:        JMP CODE_12BD29           

CODE_12BAAE:        LDA #$00                  
CODE_12BAB0:        JSR CODE_12BAB4           
CODE_12BAB3:        RTL
                       
CODE_12BAB4:        STA $00                   
CODE_12BAB6:        LDX #$08                  
CODE_12BAB8:        LDA $51,x                 
CODE_12BABA:        CMP #$01                  
CODE_12BABC:        BNE CODE_12BB10           
CODE_12BABE:        LDA $00                   
CODE_12BAC0:        BEQ CODE_12BB02           
CODE_12BAC2:        LDA $90,x                 
CODE_12BAC4:        CMP #$39                  
CODE_12BAC6:        BEQ CODE_12BAD0           
CODE_12BAC8:        CMP #$37                  
CODE_12BACA:        BEQ CODE_12BAD0           
CODE_12BACC:        CMP #$32                  
CODE_12BACE:        BCS CODE_12BB10                   
CODE_12BAD0:        LDA $9C                   
CODE_12BAD2:        BEQ CODE_12BADD           
CODE_12BAD4:        CPX $042D                 
CODE_12BAD7:        BNE CODE_12BADD           
CODE_12BAD9:        LDA #$00                  
CODE_12BADB:        STA $9C                   
CODE_12BADD:        STX $0E                   
CODE_12BADF:        JSR CODE_12B1F9           
CODE_12BAE2:        LDX $0E                   
CODE_12BAE4:        LDA $33,x                 
CODE_12BAE6:        SEC                       
CODE_12BAE7:        SBC $CB                   
CODE_12BAE9:        STA $0797                 
CODE_12BAEC:        LDA $1F,x                 
CODE_12BAEE:        SBC $CA                   
CODE_12BAF0:        STA $0798                 
CODE_12BAF3:        BNE CODE_12BAFC           
CODE_12BAF5:        LDA $0797                 
CODE_12BAF8:        CMP #$F0                  
CODE_12BAFA:        BCC CODE_12BAFF           
CODE_12BAFC:        STZ $0051,x               
CODE_12BAFF:        JMP CODE_12BB10           

CODE_12BB02:        LDA $5B,x                 
CODE_12BB04:        BEQ CODE_12BB10           
CODE_12BB06:        LDA #$D8                  
CODE_12BB08:        STA $47,x                 
CODE_12BB0A:        LDA $5B,x                 
CODE_12BB0C:        ORA #$10                  
CODE_12BB0E:        STA $5B,x                 
CODE_12BB10:        DEX                       
CODE_12BB11:        BPL CODE_12BAB8           
CODE_12BB13:        LDX $12                   
CODE_12BB15:        RTS
                       
CODE_12BB16:        LDA $5B,x                 
CODE_12BB18:        AND #$10                  
CODE_12BB1A:        BEQ CODE_12BB5F           
CODE_12BB1C:        LDA $A8,x                 
CODE_12BB1E:        BEQ CODE_12BB24           
CODE_12BB20:        LDA #$00                  ; \ Player is not holding anything.
CODE_12BB22:        STA $9C                   ; /
CODE_12BB24:        LDY $90,x                 
CODE_12BB26:        LDA.w DATA_11CC8C,y               
CODE_12BB29:        AND #$08                  
CODE_12BB2B:        ASL A                     
CODE_12BB2C:        BNE CODE_12BB3A           
CODE_12BB2E:        LDA $1DE1                 
CODE_12BB31:        BNE CODE_12BB3D           
CODE_12BB33:        LDA #$34                  
CODE_12BB35:        STA $1DE0                 
CODE_12BB38:        BNE CODE_12BB3D           
CODE_12BB3A:        STA $1DE0                 
CODE_12BB3D:        CPY #$12                  
CODE_12BB3F:        BNE CODE_12BB49           
CODE_12BB41:        LDA $042F,x               ; \ Generate another sprite when picked up.
CODE_12BB44:        BNE CODE_12BB49           ;  | (If not the correct value, don't generate that sprite)
CODE_12BB46:        JSR CODE_12C5D8           ; / Pidgit's carpet.
CODE_12BB49:        LDA #$02                  ; \ Fall down.
CODE_12BB4B:        STA $51,x                 ; /
CODE_12BB4D:        STZ $00A8,x               
CODE_12BB50:        LDA $65,x                 
CODE_12BB52:        AND #$DF                  
CODE_12BB54:        STA $65,x                 
CODE_12BB56:        PHX                       
CODE_12BB57:        PHY                       
CODE_12BB58:        JSR CODE_12BD29           
CODE_12BB5B:        PLY                       
CODE_12BB5C:        PLX                       
CODE_12BB5D:        PLA                       
CODE_12BB5E:        PLA                       
CODE_12BB5F:        RTS
                       
CODE_12BB60:        LDA $33,x                 
CODE_12BB62:        CLC                       
CODE_12BB63:        SBC $CB                   
CODE_12BB65:        LDY $A8,x                 
CODE_12BB67:        BEQ CODE_12BB75           
CODE_12BB69:        LDY $C7                   
CODE_12BB6B:        BNE CODE_12BB75           
CODE_12BB6D:        LDY $8F                   
CODE_12BB6F:        DEY                       
CODE_12BB70:        BEQ CODE_12BB75           
CODE_12BB72:        SEC                       
CODE_12BB73:        SBC #$01                  
CODE_12BB75:        STA $042C                 
CODE_12BB78:        LDA $04C1                 
CODE_12BB7B:        STA $0E                   
CODE_12BB7D:        LDA $04BF                 
CODE_12BB80:        STA $0F                   
CODE_12BB82:        LDA $15,x                 
CODE_12BB84:        XBA                       
CODE_12BB85:        LDA $29,x                 
CODE_12BB87:        REP #$20                  
CODE_12BB89:        SEC                       
CODE_12BB8A:        SBC $0E                   
CODE_12BB8C:        SEP #$20                  
CODE_12BB8E:        STA $0429                 
CODE_12BB91:        XBA                       
CODE_12BB92:        STA $021F                 
CODE_12BB95:        STZ $0248                 
CODE_12BB98:        STZ $0249                 
CODE_12BB9B:        RTS
           
DATA_12BB9C:        db $68,$BA,$BE,$C2
                              
CODE_12BBA0:        LDA $51,x            
CODE_12BBA2:        CMP #$01
CODE_12BBA4:        BNE CODE_12BBAF
CODE_12BBA6:        LDA $045C,x
CODE_12BBA9:        BEQ CODE_12BC02          
CODE_12BBAB:        LDA #$68                  
CODE_12BBAD:        BRA CODE_12BC08           

CODE_12BBAF:        LDY #$02                  
CODE_12BBB1:        LDA $3D,x                 
CODE_12BBB3:        BPL CODE_12BBB6           
CODE_12BBB5:        DEY                       
CODE_12BBB6:        STY $6F,x                 
CODE_12BBB8:        LDA $47,x                 
CODE_12BBBA:        BPL CODE_12BBC6           
CODE_12BBBC:        LDA $65,x                 
CODE_12BBBE:        AND #$3F                  
CODE_12BBC0:        ORA #$40                  
CODE_12BBC2:        STA $65,x                 
CODE_12BBC4:        BRA CODE_12BBD6           

CODE_12BBC6:        CMP #$18                  
CODE_12BBC8:        BCC CODE_12BBBC           
CODE_12BBCA:        LDA $6F,x                 
CODE_12BBCC:        EOR #$03                  
CODE_12BBCE:        STA $6F,x                 
CODE_12BBD0:        LDA $65,x                 
CODE_12BBD2:        ORA #$80                  
CODE_12BBD4:        STA $65,x                 
CODE_12BBD6:        LDY #$00                  
CODE_12BBD8:        LDA $0702,x               
CODE_12BBDB:        BMI CODE_12BBF7           
CODE_12BBDD:        LDA $47,x                 
CODE_12BBDF:        BPL CODE_12BBE8           
CODE_12BBE1:        CMP #$F8                  
CODE_12BBE3:        BCC CODE_12BBF7           
CODE_12BBE5:        INY                       
CODE_12BBE6:        BRA CODE_12BBF7           

CODE_12BBE8:        CMP #$18                  
CODE_12BBEA:        BCS CODE_12BBF7                   
CODE_12BBEC:        INY                       
CODE_12BBED:        CMP #$08                  
CODE_12BBEF:        BCC CODE_12BBF7           
CODE_12BBF1:        INY                       
CODE_12BBF2:        CMP #$10                  
CODE_12BBF4:        BCC CODE_12BBF7           
CODE_12BBF6:        INY                       
CODE_12BBF7:        PHX                       
CODE_12BBF8:        TYX                       
CODE_12BBF9:        LDA.l DATA_12BB9C,x             
CODE_12BBFD:        PLX                       
CODE_12BBFE:        STZ $9F,x                 
CODE_12BC00:        BRA CODE_12BC08           

CODE_12BC02:        LDA $86,x                 
CODE_12BC04:        BEQ CODE_12BC0F           
CODE_12BC06:        LDA #$60                  
CODE_12BC08:        PHA                       
CODE_12BC09:        JSR CODE_12BDD5           
CODE_12BC0C:        PLA                       
CODE_12BC0D:        BRA CODE_12BC25           

CODE_12BC0F:        JSR CODE_12BDC9           
CODE_12BC12:        LDA #$00                  
CODE_12BC14:        BRA CODE_12BC25           

DATA_12BC16:        db $26,$26,$28

DATA_12BC19:        db $F8,$F8,$FB,$18,$18,$15

DATA_12BC1F:        db $02,$03,$06,$FE,$FD,$FA
             
CODE_12BC25:        LDY #$00                  
CODE_12BC27:        CMP #$00                  
CODE_12BC29:        BEQ CODE_12BC31           
CODE_12BC2B:        INY                       
CODE_12BC2C:        CMP #$60                  
CODE_12BC2E:        BEQ CODE_12BC31           
CODE_12BC30:        INY                       
CODE_12BC31:        PHY                       
CODE_12BC32:        LDA $6F,x                 
CODE_12BC34:        AND #$01                  
CODE_12BC36:        LSR A                     
CODE_12BC37:        ROR A                     
CODE_12BC38:        ROR A                     
CODE_12BC39:        STA $0712                 
CODE_12BC3C:        LDA $65,x                 
CODE_12BC3E:        AND #$80                  
CODE_12BC40:        STA $0713                 
CODE_12BC43:        JSL CODE_13FC5B           
CODE_12BC47:        PLY                       
CODE_12BC48:        LDA $EE                   
CODE_12BC4A:        BEQ CODE_12BC4D           
CODE_12BC4C:        RTS
                       
CODE_12BC4D:        TYX                       
CODE_12BC4E:        PHX                       
CODE_12BC4F:        LDA $0713                 
CODE_12BC52:        BEQ CODE_12BC59           
CODE_12BC54:        TXA                       
CODE_12BC55:        CLC                       
CODE_12BC56:        ADC #$03                  
CODE_12BC58:        TAX                       
CODE_12BC59:        LDA.l DATA_12BC19,x             
CODE_12BC5D:        CLC                       
CODE_12BC5E:        ADC $042C                 
CODE_12BC61:        STA $00                   
CODE_12BC63:        PLX                       
CODE_12BC64:        PHX                       
CODE_12BC65:        LDA $0712                 
CODE_12BC68:        BEQ CODE_12BC6F           
CODE_12BC6A:        TXA                       
CODE_12BC6B:        CLC                       
CODE_12BC6C:        ADC #$03                  
CODE_12BC6E:        TAX                       
CODE_12BC6F:        REP #$20                  
CODE_12BC71:        LDA.l DATA_12BC1F,x             
CODE_12BC75:        AND #$00FF                
CODE_12BC78:        CMP #$0080                
CODE_12BC7B:        BCC CODE_12BC80           
CODE_12BC7D:        ORA #$FF00                
CODE_12BC80:        STA $0716                 
CODE_12BC83:        SEP #$20                  
CODE_12BC85:        LDA $021F                 
CODE_12BC88:        XBA                       
CODE_12BC89:        LDA $0429                 
CODE_12BC8C:        REP #$20                  
CODE_12BC8E:        CLC                       
CODE_12BC8F:        ADC $0716                 
CODE_12BC92:        CMP #$0180                
CODE_12BC95:        BCC CODE_12BC9F           
CODE_12BC97:        CMP #$FF80                
CODE_12BC9A:        BCS CODE_12BC9F                   
CODE_12BC9C:        PLX                       
CODE_12BC9D:        BRA CODE_12BCE4
           
CODE_12BC9F:        SEP #$20                  
CODE_12BCA1:        STA $01                   
CODE_12BCA3:        XBA                       
CODE_12BCA4:        STA $02                   
CODE_12BCA6:        PLX                       
CODE_12BCA7:        LDA.l DATA_12BC16,x             
CODE_12BCAB:        STA $0714                 
CODE_12BCAE:        REP #$10                  
CODE_12BCB0:        LDY $02F8                 
CODE_12BCB3:        LDA $01                   
CODE_12BCB5:        STA $0800,y               
CODE_12BCB8:        LDA $00                   
CODE_12BCBA:        STA $0801,y               
CODE_12BCBD:        LDA $0714                 
CODE_12BCC0:        STA $0802,y               
CODE_12BCC3:        LDA $0713                 
CODE_12BCC6:        ORA $0712                 
CODE_12BCC9:        ORA #$2A                  
CODE_12BCCB:        STA $0803,y               
CODE_12BCCE:        REP #$20                  
CODE_12BCD0:        TYA                       
CODE_12BCD1:        LSR A                     
CODE_12BCD2:        LSR A                     
CODE_12BCD3:        TAY                       
CODE_12BCD4:        SEP #$20                  
CODE_12BCD6:        LDX #$0000                
CODE_12BCD9:        LDA $02                   
CODE_12BCDB:        BEQ CODE_12BCDE           
CODE_12BCDD:        INX                       
CODE_12BCDE:        TXA                       
CODE_12BCDF:        ORA #$02                  
CODE_12BCE1:        STA $0A20,y               
CODE_12BCE4:        SEP #$30                  
CODE_12BCE6:        LDX $12                   
CODE_12BCE8:        RTS
                       
CODE_12BCE9:        LDA $ED                   
CODE_12BCEB:        PHA                       
CODE_12BCEC:        JSL CODE_139110           
CODE_12BCF0:        PLA                       
CODE_12BCF1:        ASL A                     
CODE_12BCF2:        STA $ED                   
CODE_12BCF4:        LDA $B1,x                 
CODE_12BCF6:        ORA $EE                   
CODE_12BCF8:        BNE CODE_12BD4E           
CODE_12BCFA:        LDA $042C                 
CODE_12BCFD:        CLC                       
CODE_12BCFE:        ADC #$10                  
CODE_12BD00:        STA $00                   
CODE_12BD02:        LDA $0429                 
CODE_12BD05:        CLC                       
CODE_12BD06:        ADC #$08                  
CODE_12BD08:        STA $01                   
CODE_12BD0A:        LDA $6F,x                 
CODE_12BD0C:        STA $02                   
CODE_12BD0E:        LDA #$03                  
CODE_12BD10:        STA $03                   
CODE_12BD12:        STA $05                   
CODE_12BD14:        LDA $0213                 
CODE_12BD17:        AND #$71                  
CODE_12BD19:        ORA #$01                  
CODE_12BD1B:        STA $0213                 
CODE_12BD1E:        JSL CODE_14E483           
CODE_12BD22:        STZ $0B                   
CODE_12BD24:        LDX #$14                  
CODE_12BD26:        JMP CODE_12BEF7           

CODE_12BD29:        LDY $90,x                 
CODE_12BD2B:        LDA.w DATA_11993B,y               
CODE_12BD2E:        CMP #$FF                  
CODE_12BD30:        BEQ CODE_12BD4E           
CODE_12BD32:        CPY #$1D                  
CODE_12BD34:        BNE CODE_12BD39           
CODE_12BD36:        JMP CODE_12C885           

CODE_12BD39:        CPY #$21                  
CODE_12BD3B:        BNE CODE_12BD40           
CODE_12BD3D:        JMP CODE_12C331           

CODE_12BD40:        CPY #$22                  
CODE_12BD42:        BNE CODE_12BD47           
CODE_12BD44:        JMP CODE_12C4A2           

CODE_12BD47:        CPY #$2D                  
CODE_12BD49:        BNE CODE_12BD4F           
CODE_12BD4B:        JMP CODE_12D8FE           

CODE_12BD4E:        RTS
                       
CODE_12BD4F:        CPY #$12                  
CODE_12BD51:        BNE CODE_12BD56           
CODE_12BD53:        JMP CODE_12C68E           

CODE_12BD56:        CPY #$04                  
CODE_12BD58:        BNE CODE_12BD5D           
CODE_12BD5A:        JMP CODE_12C1A1           

CODE_12BD5D:        CPY #$33                  
CODE_12BD5F:        BNE CODE_12BD64           
CODE_12BD61:        JMP CODE_12B147           

CODE_12BD64:        CPY #$26                  
CODE_12BD66:        BNE CODE_12BD6B           
CODE_12BD68:        JMP CODE_12D50D           

CODE_12BD6B:        CPY #$2A                  
CODE_12BD6D:        BNE CODE_12BD72           
CODE_12BD6F:        JMP CODE_12D209           

CODE_12BD72:        CPY #$43                  
CODE_12BD74:        BNE CODE_12BD79           
CODE_12BD76:        JMP CODE_12AD30           

CODE_12BD79:        CPY #$2C                  
CODE_12BD7B:        BNE CODE_12BD80           
CODE_12BD7D:        JMP CODE_12DC2A           

CODE_12BD80:        CPY #$28                  
CODE_12BD82:        BNE CODE_12BD87           
CODE_12BD84:        JMP CODE_12D5D6           

CODE_12BD87:        CPY #$1A                  
CODE_12BD89:        BNE CODE_12BD8E           
CODE_12BD8B:        JMP CODE_12CED0           

CODE_12BD8E:        CPY #$00                  
CODE_12BD90:        BNE CODE_12BD95           
CODE_12BD92:        JMP CODE_12AEDD           

CODE_12BD95:        CPY #$08                  
CODE_12BD97:        BNE CODE_12BD9C           
CODE_12BD99:        JMP CODE_12C8FD           

CODE_12BD9C:        CPY #$1F                  
CODE_12BD9E:        BNE CODE_12BDA3           
CODE_12BDA0:        JMP CODE_12CAB7           

CODE_12BDA3:        CPY #$1C                  
CODE_12BDA5:        BNE CODE_12BDAA           
CODE_12BDA7:        JMP CODE_12BBA0           

CODE_12BDAA:        CPY #$0A                  
CODE_12BDAC:        BCC CODE_12BDB5           
CODE_12BDAE:        CPY #$0D                  
CODE_12BDB0:        BCS CODE_12BDB5                   
CODE_12BDB2:        JMP CODE_12BCE9           

CODE_12BDB5:        CPY #$41                  
CODE_12BDB7:        BNE CODE_12BDC9           
CODE_12BDB9:        LDA $02F6                 
CODE_12BDBC:        STA $02F8                 
CODE_12BDBF:        LDA $02F7                 
CODE_12BDC2:        STA $02F9                 
CODE_12BDC5:        JMP CODE_12C6E5           

CODE_12BDC8:        RTS
                       
CODE_12BDC9:        LDY $90,x                 
CODE_12BDCB:        CPY #$38                  
CODE_12BDCD:        BNE CODE_12BDD2           
CODE_12BDCF:        JMP CODE_12D1A8           

CODE_12BDD2:        LDA.w DATA_11993B,y               
CODE_12BDD5:        STA $0F                   
CODE_12BDD7:        LDA $EE                   
CODE_12BDD9:        BNE CODE_12BDC8           
CODE_12BDDB:        LDA $046E,x               
CODE_12BDDE:        AND #$10                  
CODE_12BDE0:        STA $0B                   
CODE_12BDE2:        LDY $6F,x                 
CODE_12BDE4:        LDA $65,x                 
CODE_12BDE6:        AND #$18                  
CODE_12BDE8:        BEQ CODE_12BDFA           
CODE_12BDEA:        LDY #$02                  
CODE_12BDEC:        LDA $0628                 
CODE_12BDEF:        CMP #$02                  
CODE_12BDF1:        BNE CODE_12BDFA           
CODE_12BDF3:        LDA $90,x                 
CODE_12BDF5:        CMP #$3D                  
CODE_12BDF7:        BEQ CODE_12BDFA           
CODE_12BDF9:        DEY                       
CODE_12BDFA:        STY $02                   
CODE_12BDFC:        LDA $65,x                 
CODE_12BDFE:        AND #$44                  
CODE_12BE00:        STA $05                   
CODE_12BE02:        LDA $042C                 
CODE_12BE05:        STA $00                   
CODE_12BE07:        STZ $0700                 
CODE_12BE0A:        STZ $0701                 
CODE_12BE0D:        LDA $044A,x               
CODE_12BE10:        AND #$02                  
CODE_12BE12:        LSR A                     
CODE_12BE13:        LDY $ED                   
CODE_12BE15:        BEQ CODE_12BE19           
CODE_12BE17:        LDA #$00                  
CODE_12BE19:        ADC $0429                 
CODE_12BE1C:        STA $01                   
CODE_12BE1E:        PHX                       
CODE_12BE1F:        LDA $90,x                 
CODE_12BE21:        TAX                       
CODE_12BE22:        LDA.l DATA_15EBA5,x             
CODE_12BE26:        PHA                       
CODE_12BE27:        AND #$0F                  
CODE_12BE29:        ORA $0249                 
CODE_12BE2C:        CPX #$17                  
CODE_12BE2E:        BNE CODE_12BE32           
CODE_12BE30:        ORA #$10                  
CODE_12BE32:        STA $0213                 
CODE_12BE35:        STZ $0218                 
CODE_12BE38:        PLA                       
CODE_12BE39:        PHA                       
CODE_12BE3A:        AND #$40                  
CODE_12BE3C:        BEQ CODE_12BE49           
CODE_12BE3E:        LDA $0213                 
CODE_12BE41:        AND #$F1                  
CODE_12BE43:        ORA $0248                 
CODE_12BE46:        STA $0213                 
CODE_12BE49:        PLA                       
CODE_12BE4A:        ASL A                     
CODE_12BE4B:        ROL $0218                 
CODE_12BE4E:        ASL $0218                 
CODE_12BE51:        LDA.l DATA_15EBEC,x             
CODE_12BE55:        CLC                       
CODE_12BE56:        ADC $00                   
CODE_12BE58:        STA $00                   
CODE_12BE5A:        PLX                       
CODE_12BE5B:        LDA $65,x                 
CODE_12BE5D:        AND #$A0                  
CODE_12BE5F:        LDY $045C,x               
CODE_12BE62:        BEQ CODE_12BE7A           
CODE_12BE64:        STA $08                   
CODE_12BE66:        JSL CODE_1391DC           
CODE_12BE6A:        BCS CODE_12BE7A                   
CODE_12BE6C:        LDA $0213                 
CODE_12BE6F:        AND #$F1                  
CODE_12BE71:        STA $0213                 
CODE_12BE74:        TYA                       
CODE_12BE75:        LSR A                     
CODE_12BE76:        AND #$03                  
CODE_12BE78:        ORA $08                   
CODE_12BE7A:        STA $03                   
CODE_12BE7C:        LDA $046E,x               
CODE_12BE7F:        STA $0C                   
CODE_12BE81:        ASL A                     
CODE_12BE82:        LDA $9F,x                 
CODE_12BE84:        LDX $0F                   
CODE_12BE86:        AND #$08                  
CODE_12BE88:        BEQ CODE_12BEA4           
CODE_12BE8A:        BCC CODE_12BE92           
CODE_12BE8C:        LDA #$01                  
CODE_12BE8E:        STA $02                   
CODE_12BE90:        BNE CODE_12BEA4           
CODE_12BE92:        INX                       
CODE_12BE93:        INX                       
CODE_12BE94:        LDA $05                   
CODE_12BE96:        AND #$40                  
CODE_12BE98:        BEQ CODE_12BEA4           
CODE_12BE9A:        INX                       
CODE_12BE9B:        INX                       
CODE_12BE9C:        LDA $0C                   
CODE_12BE9E:        AND #$20                  
CODE_12BEA0:        BEQ CODE_12BEA4           
CODE_12BEA2:        INX                       
CODE_12BEA3:        INX                       
CODE_12BEA4:        LDA $02F6                 
CODE_12BEA7:        STA $02F8                 
CODE_12BEAA:        LDA $02F7                 
CODE_12BEAD:        STA $02F9                 
CODE_12BEB0:        LDA $05                   
CODE_12BEB2:        AND #$40                  
CODE_12BEB4:        BEQ CODE_12BEF7           
CODE_12BEB6:        LDA $05                   
CODE_12BEB8:        AND #$04                  
CODE_12BEBA:        BEQ CODE_12BED0           
CODE_12BEBC:        LDA $ED                   
CODE_12BEBE:        STA $08                   
CODE_12BEC0:        LDA $02                   
CODE_12BEC2:        CMP #$01                  
CODE_12BEC4:        BNE CODE_12BED0           
CODE_12BEC6:        LDA $01                   
CODE_12BEC8:        ADC #$0F                  
CODE_12BECA:        STA $01                   
CODE_12BECC:        ASL $ED                   
CODE_12BECE:        ASL $ED                   
CODE_12BED0:        JSR CODE_12C03B           
CODE_12BED3:        LDA $05                   
CODE_12BED5:        AND #$04                  
CODE_12BED7:        BEQ CODE_12BEF7           
CODE_12BED9:        LDA $042C                 
CODE_12BEDC:        STA $00                   
CODE_12BEDE:        LDA $0429                 
CODE_12BEE1:        STA $01                   
CODE_12BEE3:        LDA $08                   
CODE_12BEE5:        STA $ED                   
CODE_12BEE7:        LDA $02                   
CODE_12BEE9:        CMP #$01                  
CODE_12BEEB:        BEQ CODE_12BEF7           
CODE_12BEED:        LDA $01                   
CODE_12BEEF:        ADC #$0F                  
CODE_12BEF1:        STA $01                   
CODE_12BEF3:        ASL $ED                   
CODE_12BEF5:        ASL $ED                   
CODE_12BEF7:        JSR CODE_12C03B           
CODE_12BEFA:        LDA $05                   
CODE_12BEFC:        CMP #$40                  
CODE_12BEFE:        BNE CODE_12BF47           
CODE_12BF00:        LDA $03                   
CODE_12BF02:        BPL CODE_12BF47           
CODE_12BF04:        LDA $0C                   
CODE_12BF06:        AND #$20                  
CODE_12BF08:        BEQ CODE_12BF32           
CODE_12BF0A:        REP #$10                  
CODE_12BF0C:        LDY $02F6                 
CODE_12BF0F:        LDX $0700                 
CODE_12BF12:        LDA $0801,x               
CODE_12BF15:        PHA                       
CODE_12BF16:        LDA $0801,y               
CODE_12BF19:        STA $0801,x               
CODE_12BF1C:        PLA                       
CODE_12BF1D:        STA $0801,y               
CODE_12BF20:        LDA $0805,x               
CODE_12BF23:        PHA                       
CODE_12BF24:        LDA $0805,y               
CODE_12BF27:        STA $0805,x               
CODE_12BF2A:        PLA                       
CODE_12BF2B:        STA $0805,y               
CODE_12BF2E:        SEP #$10                  
CODE_12BF30:        BCS CODE_12BF47                   
CODE_12BF32:        REP #$10                  
CODE_12BF34:        LDY $02F6                 
CODE_12BF37:        LDA $0801,y               
CODE_12BF3A:        PHA                       
CODE_12BF3B:        LDA $0805,y               
CODE_12BF3E:        STA $0801,y               
CODE_12BF41:        PLA                       
CODE_12BF42:        STA $0805,y               
CODE_12BF45:        SEP #$10                  
CODE_12BF47:        LDX $12                   
CODE_12BF49:        LDA $65,x                 
CODE_12BF4B:        AND #$10                  
CODE_12BF4D:        BEQ CODE_12BF68           
CODE_12BF4F:        REP #$10                  
CODE_12BF51:        LDY $02F6                 
CODE_12BF54:        LDA $03                   
CODE_12BF56:        ASL A                     
CODE_12BF57:        ORA $0213                 
CODE_12BF5A:        AND #$3F                  
CODE_12BF5C:        ORA #$20                  
CODE_12BF5E:        STA $0803,y               
CODE_12BF61:        ORA #$40                  
CODE_12BF63:        STA $0807,y               
CODE_12BF66:        SEP #$10                  
CODE_12BF68:        REP #$10                  
CODE_12BF6A:        LDA $EB                   
CODE_12BF6C:        BNE CODE_12BF98           
CODE_12BF6E:        REP #$20                  
CODE_12BF70:        LDA $02F8                 
CODE_12BF73:        SEC                       
CODE_12BF74:        SBC #$0004                
CODE_12BF77:        STA $0700                 
CODE_12BF7A:        SEP #$20                  
CODE_12BF7C:        LDA $90,x                 
CODE_12BF7E:        CMP #$0F                  
CODE_12BF80:        BEQ CODE_12BF98           
CODE_12BF82:        CMP #$10                  
CODE_12BF84:        BEQ CODE_12BF98           
CODE_12BF86:        CMP #$1B                  
CODE_12BF88:        BEQ CODE_12BF98           
CODE_12BF8A:        CMP #$20                  
CODE_12BF8C:        BEQ CODE_12BF98           
CODE_12BF8E:        LDY $02F6                 
CODE_12BF91:        LDA $0800,y               
CODE_12BF94:        CMP #$F0                  
CODE_12BF96:        BCS CODE_12BF9B                   
CODE_12BF98:        BRL CODE_12C036           

CODE_12BF9B:        LDA $90,x                 
CODE_12BF9D:        CMP #$2A                  
CODE_12BF9F:        BNE CODE_12BFAD           
CODE_12BFA1:        LDA $02F7                 
CODE_12BFA4:        BNE CODE_12BFAD           
CODE_12BFA6:        LDA $02F6                 
CODE_12BFA9:        CMP #$20                  
CODE_12BFAB:        BEQ CODE_12BFBC           
CODE_12BFAD:        LDA $A8,x                 
CODE_12BFAF:        BEQ CODE_12BFB8           
CODE_12BFB1:        LDA $04BE                 
CODE_12BFB4:        CMP #$19                  
CODE_12BFB6:        BCC CODE_12BFBC           
CODE_12BFB8:        JSL CODE_14E483           
CODE_12BFBC:        REP #$10                  
CODE_12BFBE:        LDY $02F6                 
CODE_12BFC1:        LDX $02F8                 
CODE_12BFC4:        LDA $0800,y               
CODE_12BFC7:        STA $0800,x               
CODE_12BFCA:        LDA $0801,y               
CODE_12BFCD:        STA $0801,x               
CODE_12BFD0:        LDA $0802,y               
CODE_12BFD3:        STA $0802,x               
CODE_12BFD6:        LDA $0803,y               
CODE_12BFD9:        STA $0803,x               
CODE_12BFDC:        REP #$20                  
CODE_12BFDE:        TYA                       
CODE_12BFDF:        LSR A                     
CODE_12BFE0:        LSR A                     
CODE_12BFE1:        TAY                       
CODE_12BFE2:        TXA                       
CODE_12BFE3:        LSR A                     
CODE_12BFE4:        LSR A                     
CODE_12BFE5:        TAX                       
CODE_12BFE6:        SEP #$20                  
CODE_12BFE8:        LDA $0218                 
CODE_12BFEB:        ORA #$01                  
CODE_12BFED:        STA $0A20,y               
CODE_12BFF0:        DEC A                     
CODE_12BFF1:        STA $0A20,x               
CODE_12BFF4:        LDA $05                   
CODE_12BFF6:        AND #$40                  
CODE_12BFF8:        BEQ CODE_12C036           
CODE_12BFFA:        JSL CODE_14E483           
CODE_12BFFE:        REP #$10                  
CODE_12C000:        LDY $0700                 
CODE_12C003:        LDX $02F8                 
CODE_12C006:        LDA $0800,y               
CODE_12C009:        STA $0800,x               
CODE_12C00C:        LDA $0801,y               
CODE_12C00F:        STA $0801,x               
CODE_12C012:        LDA $0802,y               
CODE_12C015:        STA $0802,x               
CODE_12C018:        LDA $0803,y               
CODE_12C01B:        STA $0803,x               
CODE_12C01E:        REP #$20                  
CODE_12C020:        TYA                       
CODE_12C021:        LSR A                     
CODE_12C022:        LSR A                     
CODE_12C023:        TAY                       
CODE_12C024:        TXA                       
CODE_12C025:        LSR A                     
CODE_12C026:        LSR A                     
CODE_12C027:        TAX                       
CODE_12C028:        SEP #$20                  
CODE_12C02A:        LDA $0218                 
CODE_12C02D:        ORA #$01                  
CODE_12C02F:        STA $0A20,y               
CODE_12C032:        DEC A                     
CODE_12C033:        STA $0A20,x               
CODE_12C036:        SEP #$10                  
CODE_12C038:        LDX $12                   
CODE_12C03A:        RTS
                       
CODE_12C03B:        LDA $0429                 
CODE_12C03E:        STA $0712                 
CODE_12C041:        LDA $021F                 
CODE_12C044:        STA $0713                 
CODE_12C047:        REP #$20                  
CODE_12C049:        LDA $0712                 
CODE_12C04C:        BPL CODE_12C055           
CODE_12C04E:        CMP #$FF80                
CODE_12C051:        BCS CODE_12C05F                   
CODE_12C053:        BRA CODE_12C05A           

CODE_12C055:        CMP #$0180                
CODE_12C058:        BCC CODE_12C05F           
CODE_12C05A:        SEP #$20                  
CODE_12C05C:        JMP CODE_12C0FE
           
CODE_12C05F:        SEP #$20                  
CODE_12C061:        LDA $0C                   
CODE_12C063:        AND #$20                  
CODE_12C065:        BEQ CODE_12C06A           
CODE_12C067:        JMP CODE_12C0FF           

CODE_12C06A:        LDA $0B                   
CODE_12C06C:        BNE CODE_12C073           
CODE_12C06E:        LDA.w DATA_11986F,x               
CODE_12C071:        BRA CODE_12C076           

CODE_12C073:        LDA.w DATA_119992,x               
CODE_12C076:        STA $0712                 
CODE_12C079:        LDA $02                   
CODE_12C07B:        LSR A                     
CODE_12C07C:        PHP                       
CODE_12C07D:        LDA $03                   
CODE_12C07F:        AND #$C0                  
CODE_12C081:        TSB $0213                 
CODE_12C084:        PHX                       
CODE_12C085:        LDX $12                   
CODE_12C087:        LDA $A8,x                 
CODE_12C089:        BEQ CODE_12C09D           
CODE_12C08B:        LDA $90,x                 
CODE_12C08D:        CMP #$19                  
CODE_12C08F:        BNE CODE_12C09D           
CODE_12C091:        LDA $65,x                 
CODE_12C093:        AND #$DF                  
CODE_12C095:        STA $65,x                 
CODE_12C097:        LDA $03                   
CODE_12C099:        AND #$DF                  
CODE_12C09B:        STA $03                   
CODE_12C09D:        PLX                       
CODE_12C09E:        LDA $03                   
CODE_12C0A0:        AND #$20                  
CODE_12C0A2:        EOR #$20                  
CODE_12C0A4:        TSB $0213                 
CODE_12C0A7:        LDA $03                   
CODE_12C0A9:        AND #$03                  
CODE_12C0AB:        ASL A                     
CODE_12C0AC:        PLP                       
CODE_12C0AD:        BCC CODE_12C0B1           
CODE_12C0AF:        ORA #$40                  
CODE_12C0B1:        ORA $0213                 
CODE_12C0B4:        STA $0713                 
CODE_12C0B7:        JSL CODE_15D007           
CODE_12C0BB:        REP #$10                  
CODE_12C0BD:        LDY $02F8                 
CODE_12C0C0:        LDA $00                   
CODE_12C0C2:        STA $0801,y               
CODE_12C0C5:        CLC                       
CODE_12C0C6:        ADC #$10                  
CODE_12C0C8:        STA $00                   
CODE_12C0CA:        LDA $01                   
CODE_12C0CC:        STA $0800,y               
CODE_12C0CF:        LDA $0712                 
CODE_12C0D2:        STA $0802,y               
CODE_12C0D5:        LDA $0713                 
CODE_12C0D8:        STA $0803,y               
CODE_12C0DB:        REP #$20                  
CODE_12C0DD:        LDA $02F8                 
CODE_12C0E0:        CLC                       
CODE_12C0E1:        ADC #$0004                
CODE_12C0E4:        STA $02F8                 
CODE_12C0E7:        TYA                       
CODE_12C0E8:        LSR A                     
CODE_12C0E9:        LSR A                     
CODE_12C0EA:        TAY                       
CODE_12C0EB:        SEP #$20                  
CODE_12C0ED:        LDA $ED                   
CODE_12C0EF:        AND #$08                  
CODE_12C0F1:        LSR A                     
CODE_12C0F2:        LSR A                     
CODE_12C0F3:        LSR A                     
CODE_12C0F4:        ORA $0218                 
CODE_12C0F7:        STA $0A20,y               
CODE_12C0FA:        SEP #$10                  
CODE_12C0FC:        INX                       
CODE_12C0FD:        INX                       
CODE_12C0FE:        RTS
                       
CODE_12C0FF:        LDA $02                   
CODE_12C101:        LSR A                     
CODE_12C102:        PHP                       
CODE_12C103:        LDA $03                   
CODE_12C105:        AND #$C0                  
CODE_12C107:        TSB $0213                 
CODE_12C10A:        LDA $03                   
CODE_12C10C:        AND #$03                  
CODE_12C10E:        ASL A                     
CODE_12C10F:        PLP                       
CODE_12C110:        BCC CODE_12C114           
CODE_12C112:        ORA #$40                  
CODE_12C114:        ORA #$20                  
CODE_12C116:        ORA $0213                 
CODE_12C119:        STA $0712                 
CODE_12C11C:        AND #$40                  
CODE_12C11E:        BNE CODE_12C129           
CODE_12C120:        LDA.w DATA_119992,x               
CODE_12C123:        PHA                       
CODE_12C124:        LDA.w DATA_119992+1,x               
CODE_12C127:        BRA CODE_12C130           

CODE_12C129:        LDA.w DATA_119992+1,x               
CODE_12C12C:        PHA                       
CODE_12C12D:        LDA.w DATA_119992,x               
CODE_12C130:        REP #$10                  
CODE_12C132:        LDY $02F8                 
CODE_12C135:        STA $0806,y               
CODE_12C138:        PLA                       
CODE_12C139:        STA $0802,y               
CODE_12C13C:        LDA $00                   
CODE_12C13E:        STA $0801,y               
CODE_12C141:        STA $0805,y               
CODE_12C144:        CLC                       
CODE_12C145:        ADC #$10                  
CODE_12C147:        STA $00                   
CODE_12C149:        LDA $01                   
CODE_12C14B:        STA $0800,y               
CODE_12C14E:        ADC #$08                  
CODE_12C150:        STA $0804,y               
CODE_12C153:        LDA $0712                 
CODE_12C156:        STA $0803,y               
CODE_12C159:        STA $0807,y               
CODE_12C15C:        REP #$20                  
CODE_12C15E:        TYA                       
CODE_12C15F:        LSR A                     
CODE_12C160:        LSR A                     
CODE_12C161:        TAY                       
CODE_12C162:        SEP #$20                  
CODE_12C164:        LDA $ED                   
CODE_12C166:        AND #$08                  
CODE_12C168:        LSR A                     
CODE_12C169:        LSR A                     
CODE_12C16A:        LSR A                     
CODE_12C16B:        ORA $0218                 
CODE_12C16E:        STA $0A20,y               
CODE_12C171:        LDA $ED                   
CODE_12C173:        AND #$04                  
CODE_12C175:        LSR A                     
CODE_12C176:        LSR A                     
CODE_12C177:        ORA $0218                 
CODE_12C17A:        STA $0A21,y               
CODE_12C17D:        SEP #$10                  
CODE_12C17F:        TXA                       
CODE_12C180:        PHA                       
CODE_12C181:        JSL CODE_14E483           
CODE_12C185:        PLA                       
CODE_12C186:        TAX                       
CODE_12C187:        LDA $0700                 
CODE_12C18A:        BNE CODE_12C19D           
CODE_12C18C:        LDA $0701                 
CODE_12C18F:        BNE CODE_12C19D           
CODE_12C191:        LDY $02F8                 
CODE_12C194:        STY $0700                 
CODE_12C197:        LDY $02F9                 
CODE_12C19A:        STY $0701                 
CODE_12C19D:        INX                       
CODE_12C19E:        INX                       
CODE_12C19F:        INX                       
CODE_12C1A0:        RTS
                       
CODE_12C1A1:        JSR CODE_12BDC9           
CODE_12C1A4:        LDA $ED                   
CODE_12C1A6:        AND #$0C                  
CODE_12C1A8:        BNE CODE_12C1D9           
CODE_12C1AA:        LDA $9F,x                 
CODE_12C1AC:        AND #$0C                  
CODE_12C1AE:        LSR A                     
CODE_12C1AF:        LSR A                     
CODE_12C1B0:        STA $00                   
CODE_12C1B2:        REP #$30                  
CODE_12C1B4:        LDA $6F,x                 
CODE_12C1B6:        ASL A                     
CODE_12C1B7:        ASL A                     
CODE_12C1B8:        ADC $00                   
CODE_12C1BA:        AND #$00FF                
CODE_12C1BD:        TAX                       
CODE_12C1BE:        SEP #$20                  
CODE_12C1C0:        LDY $02F6                 
CODE_12C1C3:        LDA $0801,y               
CODE_12C1C6:        ADC.w DATA_11998A-4,x               
CODE_12C1C9:        STA $0801,y               
CODE_12C1CC:        LDA $0800,y               
CODE_12C1CF:        ADC.w DATA_119982-4,x               
CODE_12C1D2:        STA $0800,y               
CODE_12C1D5:        SEP #$10                  
CODE_12C1D7:        LDX $12                   
CODE_12C1D9:        RTS
                       
CODE_12C1DA:        LDA $28                   
CODE_12C1DC:        SBC $29,x                 
CODE_12C1DE:        STA $0F                   
CODE_12C1E0:        LDA $14                   
CODE_12C1E2:        LDY #$00                  
CODE_12C1E4:        SBC $15,x                 
CODE_12C1E6:        BCS CODE_12C1E9                   
CODE_12C1E8:        INY                       
CODE_12C1E9:        RTS
                       
CODE_12C1EA:        TXA                       
CODE_12C1EB:        CLC                       
CODE_12C1EC:        ADC #$0A                  
CODE_12C1EE:        TAX                       
CODE_12C1EF:        LDA $3D,x                 
CODE_12C1F1:        CLC                       
CODE_12C1F2:        ADC $04CD,x               
CODE_12C1F5:        PHA                       
CODE_12C1F6:        ASL A                     
CODE_12C1F7:        ASL A                     
CODE_12C1F8:        ASL A                     
CODE_12C1F9:        ASL A                     
CODE_12C1FA:        STA $01                   
CODE_12C1FC:        PLA                       
CODE_12C1FD:        LSR A                     
CODE_12C1FE:        LSR A                     
CODE_12C1FF:        LSR A                     
CODE_12C200:        LSR A                     
CODE_12C201:        CMP #$08                  
CODE_12C203:        BCC CODE_12C207           
CODE_12C205:        ORA #$F0                  
CODE_12C207:        STA $00                   
CODE_12C209:        LDY #$00                  
CODE_12C20B:        ASL A                     
CODE_12C20C:        BCC CODE_12C20F           
CODE_12C20E:        DEY                       
CODE_12C20F:        STY $02                   
CODE_12C211:        LDA $0408,x               
CODE_12C214:        CLC                       
CODE_12C215:        ADC $01                   
CODE_12C217:        STA $0408,x               
CODE_12C21A:        LDA $29,x                 
CODE_12C21C:        ADC $00                   
CODE_12C21E:        STA $29,x                 
CODE_12C220:        ROL $01                   
CODE_12C222:        CPX #$0A                  
CODE_12C224:        BCS CODE_12C23D                   
CODE_12C226:        LDA #$00                  
CODE_12C228:        STA $04A4,x               
CODE_12C22B:        LDA $90,x                 
CODE_12C22D:        CMP #$1B                  
CODE_12C22F:        BEQ CODE_12C23D           
CODE_12C231:        CMP #$0F                  
CODE_12C233:        BEQ CODE_12C23D           
CODE_12C235:        CMP #$10                  
CODE_12C237:        BEQ CODE_12C23D           
CODE_12C239:        LDY $EB                   
CODE_12C23B:        BEQ CODE_12C245           
CODE_12C23D:        LSR $01                   
CODE_12C23F:        LDA $15,x                 
CODE_12C241:        ADC $02                   
CODE_12C243:        STA $15,x                 
CODE_12C245:        LDX $12                   
CODE_12C247:        RTS
                       
CODE_12C248:        LDA $3D,x                 
CODE_12C24A:        EOR #$FF                  
CODE_12C24C:        CLC                       
CODE_12C24D:        ADC #$01                  
CODE_12C24F:        STA $3D,x                 
CODE_12C251:        BEQ CODE_12C259           
CODE_12C253:        LDA $6F,x                 
CODE_12C255:        EOR #$03                  
CODE_12C257:        STA $6F,x                 
CODE_12C259:        JMP CODE_12C1EF           

CODE_12C25C:        JSR CODE_12B1F9           
CODE_12C25F:        RTL
                       
DATA_12C260:        db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ; \ Empty.
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ; /
          
CODE_12C270:        JSR CODE_12AF2D           
CODE_12C273:        LDA #$04                  
CODE_12C275:        STA $0465,x               
CODE_12C278:        LDA #$00                  
CODE_12C27A:        STA $3D,x                 
CODE_12C27C:        LDA $29,x                 
CODE_12C27E:        CLC                       
CODE_12C27F:        ADC #$04                  
CODE_12C281:        STA $29,x                 
CODE_12C283:        JMP CODE_129F7A           

CODE_12C286:        LDA $045C,x               
CODE_12C289:        ORA $0438,x               
CODE_12C28C:        BEQ CODE_12C291           
CODE_12C28E:        JMP CODE_12BD29           

CODE_12C291:        JSR CODE_12BB16           
CODE_12C294:        LDA $33,x                 
CODE_12C296:        CMP #$70                  
CODE_12C298:        BCC CODE_12C29D           
CODE_12C29A:        JSR CODE_12B659           
CODE_12C29D:        LDA $86,x                 
CODE_12C29F:        BNE CODE_12C2CF           
CODE_12C2A1:        LDA $79,x                 
CODE_12C2A3:        AND #$3F                  
CODE_12C2A5:        BNE CODE_12C2BE           
CODE_12C2A7:        LDA $0587                 
CODE_12C2AA:        AND #$03                  
CODE_12C2AC:        BEQ CODE_12C2BE           
CODE_12C2AE:        LDY $04C1                 
CODE_12C2B1:        DEY                       
CODE_12C2B2:        CPY #$80                  
CODE_12C2B4:        BCC CODE_12C2BE           
CODE_12C2B6:        LDA #$7F                  
CODE_12C2B8:        STA $86,x                 
CODE_12C2BA:        LDY #$00                  
CODE_12C2BC:        BEQ CODE_12C2CA           
CODE_12C2BE:        INC $79,x                 
CODE_12C2C0:        LDY #$F0                  
CODE_12C2C2:        LDA $79,x                 
CODE_12C2C4:        AND #$20                  
CODE_12C2C6:        BEQ CODE_12C2CA           
CODE_12C2C8:        LDY #$10                  
CODE_12C2CA:        STY $3D,x                 
CODE_12C2CC:        JMP CODE_12C328           

CODE_12C2CF:        CMP #$50                  
CODE_12C2D1:        BNE CODE_12C2D3           
CODE_12C2D3:        CMP #$20                  
CODE_12C2D5:        BNE CODE_12C328           
CODE_12C2D7:        LDA $0587                 
CODE_12C2DA:        AND #$07                  
CODE_12C2DC:        TAY                       
CODE_12C2DD:        LDA.w DATA_119A8C,y               
CODE_12C2E0:        STA $47,x                 
CODE_12C2E2:        DEC $33,x                 
CODE_12C2E4:        JSR CODE_12B335           
CODE_12C2E7:        BMI CODE_12C328           
CODE_12C2E9:        LDY $00                   
CODE_12C2EB:        LDA $33,x                 
CODE_12C2ED:        SEC                       
CODE_12C2EE:        SBC #$00                  
CODE_12C2F0:        STA $0033,y               
CODE_12C2F3:        LDA $1F,x                 
CODE_12C2F5:        SBC #$00                  
CODE_12C2F7:        STA $001F,y               
CODE_12C2FA:        LDA $29,x                 
CODE_12C2FC:        CLC                       
CODE_12C2FD:        ADC #$08                  
CODE_12C2FF:        STA $0029,y               
CODE_12C302:        LDA $15,x                 
CODE_12C304:        ADC #$00                  
CODE_12C306:        STA $0015,y               
CODE_12C309:        LDX $00                   
CODE_12C30B:        LDA #$22                  
CODE_12C30D:        STA $90,x                 
CODE_12C30F:        LDA #$37                  
CODE_12C311:        STA $1DE0                 
CODE_12C314:        LDA $0587                 
CODE_12C317:        AND #$07                  
CODE_12C319:        TAY                       
CODE_12C31A:        LDA.w DATA_119A84,y               
CODE_12C31D:        STA $47,x                 
CODE_12C31F:        LDA #$D0                  
CODE_12C321:        STA $3D,x                 
CODE_12C323:        JSR CODE_129F7A           
CODE_12C326:        LDX $12                   
CODE_12C328:        JSR CODE_12C1EF           
CODE_12C32B:        JSR CODE_12A0B2           
CODE_12C32E:        JMP CODE_12BD29           

CODE_12C331:        LDY $51,x                 
CODE_12C333:        DEY                       
CODE_12C334:        TYA                       
CODE_12C335:        ORA $045C,x               
CODE_12C338:        BEQ CODE_12C342           
CODE_12C33A:        LDY #$D0                  
CODE_12C33C:        LDA #$00                  
CODE_12C33E:        STA $86,x                 
CODE_12C340:        BEQ CODE_12C364           
CODE_12C342:        LDY #$C0                  
CODE_12C344:        LDA $10                   
CODE_12C346:        AND #$10                  
CODE_12C348:        BNE CODE_12C34C           
CODE_12C34A:        LDY #$C4                  
CODE_12C34C:        LDA $86,x                 
CODE_12C34E:        BEQ CODE_12C364           
CODE_12C350:        LDY #$C8                  
CODE_12C352:        CMP #$60                  
CODE_12C354:        BCS CODE_12C364                   
CODE_12C356:        LDY #$C0                  
CODE_12C358:        CMP #$40                  
CODE_12C35A:        BCS CODE_12C364                   
CODE_12C35C:        LDY #$C4                  
CODE_12C35E:        CMP #$20                  
CODE_12C360:        BCS CODE_12C364                   
CODE_12C362:        LDY #$C0                  
CODE_12C364:        LDA #$02                  
CODE_12C366:        STA $6F,x                 
CODE_12C368:        TYA                       
CODE_12C369:        JSR CODE_12BDD5           
CODE_12C36C:        LDY #$C4                  
CODE_12C36E:        LDA $10                   
CODE_12C370:        AND #$10                  
CODE_12C372:        BNE CODE_12C376           
CODE_12C374:        LDY #$C0                  
CODE_12C376:        LDA $86,x                 
CODE_12C378:        BEQ CODE_12C38E           
CODE_12C37A:        LDY #$CC                  
CODE_12C37C:        CMP #$60                  
CODE_12C37E:        BCS CODE_12C38E                   
CODE_12C380:        LDY #$C0                  
CODE_12C382:        CMP #$40                  
CODE_12C384:        BCS CODE_12C38E                   
CODE_12C386:        LDY #$C4                  
CODE_12C388:        CMP #$20                  
CODE_12C38A:        BCS CODE_12C38E                   
CODE_12C38C:        LDY #$C0                  
CODE_12C38E:        LDA $045C,x               
CODE_12C391:        BEQ CODE_12C395           
CODE_12C393:        LDY #$D0                  
CODE_12C395:        LDA $0429                 
CODE_12C398:        CLC                       
CODE_12C399:        ADC #$10                  
CODE_12C39B:        STA $0429                 
CODE_12C39E:        ASL $ED                   
CODE_12C3A0:        ASL $ED                   
CODE_12C3A2:        LDA $86,x                 
CODE_12C3A4:        CMP #$60                  
CODE_12C3A6:        BCS CODE_12C3AA                   
CODE_12C3A8:        LSR $6F,x                 
CODE_12C3AA:        TYA                       
CODE_12C3AB:        PHA                       
CODE_12C3AC:        JSL CODE_14E483           
CODE_12C3B0:        LDA $02F8                 
CODE_12C3B3:        STA $02F6                 
CODE_12C3B6:        LDA $02F9                 
CODE_12C3B9:        STA $02F7                 
CODE_12C3BC:        PLA                       
CODE_12C3BD:        JSR CODE_12BDD5           
CODE_12C3C0:        LDA $045C,x               
CODE_12C3C3:        BEQ CODE_12C3ED           
CODE_12C3C5:        LDA $6F,x                 
CODE_12C3C7:        PHA                       
CODE_12C3C8:        LDA $10                   
CODE_12C3CA:        AND #$08                  
CODE_12C3CC:        LSR A                     
CODE_12C3CD:        LSR A                     
CODE_12C3CE:        LSR A                     
CODE_12C3CF:        STA $6F,x                 
CODE_12C3D1:        LDA #$50                  
CODE_12C3D3:        STA $02F6                 
CODE_12C3D6:        STZ $02F7                 
CODE_12C3D9:        LSR $ED                   
CODE_12C3DB:        LDA $0429                 
CODE_12C3DE:        SEC                       
CODE_12C3DF:        SBC #$08                  
CODE_12C3E1:        STA $0429                 
CODE_12C3E4:        LDY #$D4                  
CODE_12C3E6:        TYA                       
CODE_12C3E7:        JSR CODE_12BDD5           
CODE_12C3EA:        PLA                       
CODE_12C3EB:        STA $6F,x                 
CODE_12C3ED:        LDA $86,x                 
CODE_12C3EF:        BEQ CODE_12C466           
CODE_12C3F1:        LSR A                     
CODE_12C3F2:        LSR A                     
CODE_12C3F3:        LSR A                     
CODE_12C3F4:        LSR A                     
CODE_12C3F5:        LSR A                     
CODE_12C3F6:        BEQ CODE_12C465           
CODE_12C3F8:        TAY                       
CODE_12C3F9:        LDA $29,x                 
CODE_12C3FB:        PHA                       
CODE_12C3FC:        CLC                       
CODE_12C3FD:        ADC.w DATA_119A93,y               
CODE_12C400:        STA $29,x                 
CODE_12C402:        SEC                       
CODE_12C403:        SBC $04C1                 
CODE_12C406:        STA $0429                 
CODE_12C409:        LDA $33,x                 
CODE_12C40B:        CLC                       
CODE_12C40C:        ADC.w DATA_119A96,y               
CODE_12C40F:        STA $042C                 
CODE_12C412:        LDA $86,x                 
CODE_12C414:        CMP #$30                  
CODE_12C416:        BCC CODE_12C42A           
CODE_12C418:        CMP #$40                  
CODE_12C41A:        BCS CODE_12C42A                   
CODE_12C41C:        LSR A                     
CODE_12C41D:        AND #$07                  
CODE_12C41F:        TAY                       
CODE_12C420:        LDA $042C                 
CODE_12C423:        SEC                       
CODE_12C424:        SBC.w DATA_119A9A,y               
CODE_12C427:        STA $042C                 
CODE_12C42A:        JSR CODE_12A6F9           
CODE_12C42D:        LDY #$40                  
CODE_12C42F:        STY $02F6                 
CODE_12C432:        STZ $02F7                 
CODE_12C435:        LDA $65,x                 
CODE_12C437:        PHA                       
CODE_12C438:        LDA #$02                  
CODE_12C43A:        STA $65,x                 
CODE_12C43C:        LDA $046E,x               
CODE_12C43F:        PHA                       
CODE_12C440:        LDA #$10                  
CODE_12C442:        STA $046E,x               
CODE_12C445:        LDA #$D8                  
CODE_12C447:        JSR CODE_12BDD5           
CODE_12C44A:        REP #$10                  
CODE_12C44C:        LDY $02F6                 
CODE_12C44F:        LDA $0803,y               
CODE_12C452:        AND #$F1                  
CODE_12C454:        ORA #$06                  
CODE_12C456:        STA $0803,y               
CODE_12C459:        SEP #$10                  
CODE_12C45B:        PLA                       
CODE_12C45C:        STA $046E,x               
CODE_12C45F:        PLA                       
CODE_12C460:        STA $65,x                 
CODE_12C462:        PLA                       
CODE_12C463:        STA $29,x                 
CODE_12C465:        RTS
                       
CODE_12C466:        LDX $12                   
CODE_12C468:        RTS
                       
CODE_12C469:        LDA #$00                  
CODE_12C46B:        STA $045C,x               
CODE_12C46E:        JSR CODE_12BB16           
CODE_12C471:        JSR CODE_12BA46           
CODE_12C474:        JSR CODE_12C1EF           
CODE_12C477:        JSR CODE_12A0B2           
CODE_12C47A:        JSR CODE_12DDAB           
CODE_12C47D:        LDA $5B,x                 
CODE_12C47F:        AND #$03                  
CODE_12C481:        BEQ CODE_12C489           
CODE_12C483:        JSR CODE_12C248           
CODE_12C486:        JSR CODE_12B63B           
CODE_12C489:        LDA $5B,x                 
CODE_12C48B:        AND #$04                  
CODE_12C48D:        BEQ CODE_12C49F           
CODE_12C48F:        LDA $33,x                 
CODE_12C491:        AND #$F0                  
CODE_12C493:        STA $33,x                 
CODE_12C495:        LDA $47,x                 
CODE_12C497:        LSR A                     
CODE_12C498:        EOR #$FF                  
CODE_12C49A:        CLC                       
CODE_12C49B:        ADC #$01                  
CODE_12C49D:        STA $47,x                 
CODE_12C49F:        JMP CODE_12BD29           

CODE_12C4A2:        LDA $00A8,x               
CODE_12C4A5:        ORA $0438,x               
CODE_12C4A8:        BNE CODE_12C4E1           
CODE_12C4AA:        LDA $10                   
CODE_12C4AC:        STA $00                   
CODE_12C4AE:        LDA $3D,x                 
CODE_12C4B0:        BPL CODE_12C4B7           
CODE_12C4B2:        EOR #$FF                  
CODE_12C4B4:        CLC                       
CODE_12C4B5:        ADC #$01                  
CODE_12C4B7:        CMP #$20                  
CODE_12C4B9:        BCS CODE_12C4C3                   
CODE_12C4BB:        LSR $00                   
CODE_12C4BD:        CMP #$08                  
CODE_12C4BF:        BCS CODE_12C4C3                   
CODE_12C4C1:        LSR $00                   
CODE_12C4C3:        LDA $00                   
CODE_12C4C5:        CLC                       
CODE_12C4C6:        ADC #$04                  
CODE_12C4C8:        AND #$08                  
CODE_12C4CA:        LSR A                     
CODE_12C4CB:        LSR A                     
CODE_12C4CC:        LSR A                     
CODE_12C4CD:        LDY $3D,x                 
CODE_12C4CF:        BPL CODE_12C4D3           
CODE_12C4D1:        EOR #$01                  
CODE_12C4D3:        STA $6F,x                 
CODE_12C4D5:        LDA $00                   
CODE_12C4D7:        AND #$08                  
CODE_12C4D9:        ASL A                     
CODE_12C4DA:        ASL A                     
CODE_12C4DB:        ASL A                     
CODE_12C4DC:        ASL A                     
CODE_12C4DD:        ORA #$02                  
CODE_12C4DF:        STA $65,x                 
CODE_12C4E1:        JSR CODE_12BDC9           
CODE_12C4E4:        REP #$10                  
CODE_12C4E6:        LDY $02F6                 
CODE_12C4E9:        LDA $0803,y               
CODE_12C4EC:        AND #$F1                  
CODE_12C4EE:        ORA #$06                  
CODE_12C4F0:        STA $0803,y               
CODE_12C4F3:        SEP #$10                  
CODE_12C4F5:        RTS
                       
CODE_12C4F6:        JSR CODE_12DDAB           
CODE_12C4F9:        LDA $10                   
CODE_12C4FB:        AND #$03                  
CODE_12C4FD:        BNE CODE_12C509           
CODE_12C4FF:        DEC $B1,x                 
CODE_12C501:        BNE CODE_12C509           
CODE_12C503:        STA $04B2                 
CODE_12C506:        JMP CODE_12A83B           

CODE_12C509:        LDA $04B2                 
CODE_12C50C:        BEQ CODE_12C51C           
CODE_12C50E:        LDA $46                   
CODE_12C510:        BPL CODE_12C51C           
CODE_12C512:        LDA #$00                  
CODE_12C514:        STA $47,x                 
CODE_12C516:        STA $04B2                 
CODE_12C519:        JMP CODE_12C5C9           

CODE_12C51C:        LDA $5B,x                 
CODE_12C51E:        AND #$20                  
CODE_12C520:        STA $04B2                 
CODE_12C523:        BNE CODE_12C528           
CODE_12C525:        JMP CODE_12C5B6           

CODE_12C528:        LDA $3D,x                 
CODE_12C52A:        BEQ CODE_12C532           
CODE_12C52C:        LDA $6F,x                 
CODE_12C52E:        AND #$01                  
CODE_12C530:        STA $9D                   
CODE_12C532:        LDA $33,x                 
CODE_12C534:        SEC                       
CODE_12C535:        SBC #$1A                  
CODE_12C537:        STA $32                   
CODE_12C539:        LDA $1F,x                 
CODE_12C53B:        SBC #$00                  
CODE_12C53D:        STA $1E                   
CODE_12C53F:        LDA $28                   
CODE_12C541:        SEC                       
CODE_12C542:        SBC #$08                  
CODE_12C544:        STA $29,x                 
CODE_12C546:        LDA $14                   
CODE_12C548:        SBC #$00                  
CODE_12C54A:        STA $15,x                 
CODE_12C54C:        LDY #$01                  
CODE_12C54E:        LDA $3D,x                 
CODE_12C550:        BMI CODE_12C554           
CODE_12C552:        LDY #$FF                  
CODE_12C554:        STY $1206                 
CODE_12C557:        LDA $F6                   
CODE_12C559:        AND #$03                  
CODE_12C55B:        TAY                       
CODE_12C55C:        AND $5A                   
CODE_12C55E:        BNE CODE_12C572           
CODE_12C560:        LDA.w DATA_119AA2,y               
CODE_12C563:        CMP $3D,x                 
CODE_12C565:        BEQ CODE_12C56F           
CODE_12C567:        LDA $3D,x                 
CODE_12C569:        CLC                       
CODE_12C56A:        ADC $1206,y               
CODE_12C56D:        STA $3D,x                 
CODE_12C56F:        JMP CODE_12C576           

CODE_12C572:        LDA #$00                  
CODE_12C574:        STA $3D,x                 
CODE_12C576:        LDY #$01                  
CODE_12C578:        LDA $47,x                 
CODE_12C57A:        BMI CODE_12C57E           
CODE_12C57C:        LDY #$FF                  
CODE_12C57E:        STY $1206                 
CODE_12C581:        LDA #$20                  
CODE_12C583:        CMP $042C                 
CODE_12C586:        LDA #$00                  
CODE_12C588:        ROL A                     
CODE_12C589:        ASL A                     
CODE_12C58A:        ASL A                     
CODE_12C58B:        ASL A                     
CODE_12C58C:        AND $F6                   
CODE_12C58E:        BNE CODE_12C5A3           
CODE_12C590:        LDA $5B,x                 
CODE_12C592:        LSR A                     
CODE_12C593:        LSR A                     
CODE_12C594:        AND #$03                  
CODE_12C596:        STA $00                   
CODE_12C598:        LDA $F6                   
CODE_12C59A:        LSR A                     
CODE_12C59B:        LSR A                     
CODE_12C59C:        AND #$03                  
CODE_12C59E:        TAY                       
CODE_12C59F:        AND $00                   
CODE_12C5A1:        BEQ CODE_12C5A7           
CODE_12C5A3:        LDA #$00                  
CODE_12C5A5:        BEQ CODE_12C5B4           
CODE_12C5A7:        LDA.w DATA_119AA2,y               
CODE_12C5AA:        CMP $47,x                 
CODE_12C5AC:        BEQ CODE_12C5B6           
CODE_12C5AE:        LDA $47,x                 
CODE_12C5B0:        CLC                       
CODE_12C5B1:        ADC $1206,y               
CODE_12C5B4:        STA $47,x                 
CODE_12C5B6:        JSR CODE_12C1EF           
CODE_12C5B9:        JSR CODE_12C1EA           
CODE_12C5BC:        LDA $B1,x                 
CODE_12C5BE:        CMP #$20                  
CODE_12C5C0:        BCS CODE_12C5C9                   
CODE_12C5C2:        LDA $10                   
CODE_12C5C4:        AND #$02                  
CODE_12C5C6:        BNE CODE_12C5C9           
CODE_12C5C8:        RTS
                       
CODE_12C5C9:        LDA $02F6                 
CODE_12C5CC:        STA $02F8                 
CODE_12C5CF:        LDA $02F7                 
CODE_12C5D2:        STA $02F9                 
CODE_12C5D5:        JMP CODE_12C6E5           

CODE_12C5D8:        JSR CODE_12B331           ; \ Check if free sprite slot is available.
CODE_12C5DB:        BMI CODE_12C610           ; / If not, return.
CODE_12C5DD:        LDX $00                   ; New sprite index.
CODE_12C5DF:        LDY $12                   ; Old sprite index.
CODE_12C5E1:        LDA #$00                  ; \ Zero X speed.
CODE_12C5E3:        STA $3D,x                 ;  | Zero Y speed.
CODE_12C5E5:        STA $47,x                 ; / (Why not simply use STZ $3D,x STZ $47,x?)
CODE_12C5E7:        LDA #$41                  ; \ Generate carpet sprite.
CODE_12C5E9:        STA $90,x                 ; /
CODE_12C5EB:        LDA $0029,y               ; \ Generate carpet 8 pixels to the left from Pidgit.
CODE_12C5EE:        SEC                       ;  |
CODE_12C5EF:        SBC #$08                  ;  |
CODE_12C5F1:        STA $29,x                 ;  |
CODE_12C5F3:        LDA $0015,y               ;  |
CODE_12C5F6:        SBC #$00                  ;  |
CODE_12C5F8:        STA $15,x                 ; /
CODE_12C5FA:        LDA $0033,y               ; \ ...and 14 pixels below Pidgit.
CODE_12C5FD:        CLC                       ;  |
CODE_12C5FE:        ADC #$0E                  ;  |
CODE_12C600:        STA $33,x                 ;  |
CODE_12C602:        LDA $001F,y               ;  |
CODE_12C605:        ADC #$00                  ;  |
CODE_12C607:        STA $1F,x                 ; /
CODE_12C609:        JSR CODE_129F7A           
CODE_12C60C:        LDA #$A0                  ; \ Amount of time carpet will remain.
CODE_12C60E:        STA $B1,x                 ; /
CODE_12C610:        LDX $12                   ; X = old sprite index.
CODE_12C612:        RTS                       ; Return.
                       
CODE_12C613:        JSR CODE_12BB16           
CODE_12C616:        INC $9F,x                 
CODE_12C618:        LDA $042F,x               
CODE_12C61B:        BEQ CODE_12C629           
CODE_12C61D:        LDA $65,x                 
CODE_12C61F:        ORA #$80                  
CODE_12C621:        STA $65,x                 
CODE_12C623:        JSR CODE_12C68E           
CODE_12C626:        JMP CODE_12A0AA           

CODE_12C629:        JSR CODE_12BA46           
CODE_12C62C:        LDA $B1,x                 
CODE_12C62E:        BEQ CODE_12C647           
CODE_12C630:        DEC $47,x                 
CODE_12C632:        BPL CODE_12C644           
CODE_12C634:        LDA $33,x                 
CODE_12C636:        CMP #$30                  
CODE_12C638:        BCS CODE_12C644                   
CODE_12C63A:        LDA #$00                  
CODE_12C63C:        STA $B1,x                 
CODE_12C63E:        STA $3D,x                 
CODE_12C640:        STA $47,x                 
CODE_12C642:        DEC $86,x                 
CODE_12C644:        JMP CODE_12C688           

CODE_12C647:        LDA $86,x                 
CODE_12C649:        BNE CODE_12C65C           
CODE_12C64B:        LDA #$30                  
CODE_12C64D:        STA $47,x                 
CODE_12C64F:        JSR CODE_12C1DA           
CODE_12C652:        LDA.w DATA_119ABA,y               
CODE_12C655:        STA $3D,x                 
CODE_12C657:        INC $B1,x                 
CODE_12C659:        JMP CODE_12C68E           

CODE_12C65C:        LDA $0480,x               
CODE_12C65F:        AND #$01                  
CODE_12C661:        TAY                       
CODE_12C662:        LDA $47,x                 
CODE_12C664:        CLC                       
CODE_12C665:        ADC.w DATA_119AB2,y               
CODE_12C668:        STA $47,x                 
CODE_12C66A:        CMP.w DATA_119AB4,y               
CODE_12C66D:        BNE CODE_12C672           
CODE_12C66F:        INC $0480,x               
CODE_12C672:        LDA $0477,x               
CODE_12C675:        AND #$01                  
CODE_12C677:        TAY                       
CODE_12C678:        LDA $3D,x                 
CODE_12C67A:        CLC                       
CODE_12C67B:        ADC.w DATA_119AB6,y               
CODE_12C67E:        STA $3D,x                 
CODE_12C680:        CMP.w DATA_119AB8,y               
CODE_12C683:        BNE CODE_12C688           
CODE_12C685:        INC $0477,x               
CODE_12C688:        JSR CODE_12C1EA           
CODE_12C68B:        JSR CODE_12C1EF           
CODE_12C68E:        JSR CODE_12BDC9           
CODE_12C691:        LDA $51,x                 
CODE_12C693:        SEC                       
CODE_12C694:        SBC #$01                  
CODE_12C696:        ORA $042F,x               
CODE_12C699:        ORA $A8,x                 
CODE_12C69B:        BNE CODE_12C6E2           
CODE_12C69D:        JSL CODE_14E483           
CODE_12C6A1:        LDA #$45                  
CODE_12C6A3:        STA $65,x                 
CODE_12C6A5:        LDA $29,x                 
CODE_12C6A7:        PHA                       
CODE_12C6A8:        SEC                       
CODE_12C6A9:        SBC #$08                  
CODE_12C6AB:        STA $29,x                 
CODE_12C6AD:        LDA $15,x                 
CODE_12C6AF:        PHA                       
CODE_12C6B0:        SBC #$00                  
CODE_12C6B2:        STA $15,x                 
CODE_12C6B4:        JSR CODE_12A6F9           
CODE_12C6B7:        PLA                       
CODE_12C6B8:        STA $15,x                 
CODE_12C6BA:        PLA                       
CODE_12C6BB:        STA $29,x                 
CODE_12C6BD:        LDA $042C                 
CODE_12C6C0:        CLC                       
CODE_12C6C1:        ADC #$0C                  
CODE_12C6C3:        STA $042C                 
CODE_12C6C6:        LDA $021F                 
CODE_12C6C9:        XBA                       
CODE_12C6CA:        LDA $0429                 
CODE_12C6CD:        REP #$20                  
CODE_12C6CF:        SBC #$0007                
CODE_12C6D2:        SEP #$20                  
CODE_12C6D4:        STA $0429                 
CODE_12C6D7:        XBA                       
CODE_12C6D8:        STA $021F                 
CODE_12C6DB:        JSR CODE_12C6E5           
CODE_12C6DE:        LDA #$0D                  
CODE_12C6E0:        STA $65,x                 
CODE_12C6E2:        SEP #$20                  
CODE_12C6E4:        RTS
                       
CODE_12C6E5:        JSL CODE_15D21F           
CODE_12C6E9:        BCS CODE_12C6E2                   
CODE_12C6EB:        REP #$30                  
CODE_12C6ED:        TYA                       
CODE_12C6EE:        LSR A                     
CODE_12C6EF:        LSR A                     
CODE_12C6F0:        TAY                       
CODE_12C6F1:        SEP #$20                  
CODE_12C6F3:        LDA #$00                  
CODE_12C6F5:        STA $0A20,y               
CODE_12C6F8:        STA $0A21,y               
CODE_12C6FB:        STY $0712                 
CODE_12C6FE:        LDY $070B                 
CODE_12C701:        LDA $0429                 
CODE_12C704:        STA $0E                   
CODE_12C706:        LDA $021F                 
CODE_12C709:        STA $0F                   
CODE_12C70B:        REP #$20                  
CODE_12C70D:        TYA                       
CODE_12C70E:        LSR A                     
CODE_12C70F:        LSR A                     
CODE_12C710:        TAY                       
CODE_12C711:        LDA $12                   
CODE_12C713:        AND #$00FF                
CODE_12C716:        TAX                       
CODE_12C717:        LDA $ED                   
CODE_12C719:        AND #$00FF                
CODE_12C71C:        STA $0716                 
CODE_12C71F:        SEP #$20                  
CODE_12C721:        LDA $044A,x               
CODE_12C724:        AND #$02                  
CODE_12C726:        LSR A                     
CODE_12C727:        LDX $0716                 
CODE_12C72A:        BEQ CODE_12C72E           
CODE_12C72C:        LDA #$00                  
CODE_12C72E:        STA $0714                 
CODE_12C731:        STZ $0715                 
CODE_12C734:        REP #$20                  
CODE_12C736:        LDA $0E                   
CODE_12C738:        ADC $0714                 
CODE_12C73B:        STA $04                   
CODE_12C73D:        CLC                       
CODE_12C73E:        ADC #$0008                
CODE_12C741:        STA $06                   
CODE_12C743:        LDA $04                   
CODE_12C745:        CLC                       
CODE_12C746:        ADC #$0010                
CODE_12C749:        STA $08                   
CODE_12C74B:        LDA $04                   
CODE_12C74D:        CLC                       
CODE_12C74E:        ADC #$0018                
CODE_12C751:        STA $0A                   
CODE_12C753:        SEP #$20                  
CODE_12C755:        LDA #$00                  
CODE_12C757:        STA $0A20,y               
CODE_12C75A:        STA $0A21,y               
CODE_12C75D:        LDA $EB                   
CODE_12C75F:        BEQ CODE_12C789           
CODE_12C761:        LDX #$0001                
CODE_12C764:        LDA $05                   
CODE_12C766:        BEQ CODE_12C76C           
CODE_12C768:        TXA                       
CODE_12C769:        STA $0A20,y               
CODE_12C76C:        LDA $07                   
CODE_12C76E:        BEQ CODE_12C774           
CODE_12C770:        TXA                       
CODE_12C771:        STA $0A21,y               
CODE_12C774:        LDY $0712                 
CODE_12C777:        LDA $09                   
CODE_12C779:        BEQ CODE_12C77F           
CODE_12C77B:        TXA                       
CODE_12C77C:        STA $0A20,y               
CODE_12C77F:        LDA $0B                   
CODE_12C781:        BEQ CODE_12C787           
CODE_12C783:        TXA                       
CODE_12C784:        STA $0A21,y               
CODE_12C787:        BRA CODE_12C7B3           

CODE_12C789:        LDX $070B                 
CODE_12C78C:        JSR CODE_12C7B8           
CODE_12C78F:        LDX $070D                 
CODE_12C792:        JSR CODE_12C7B8           
CODE_12C795:        REP #$20                  
CODE_12C797:        LDA $070B                 
CODE_12C79A:        CLC                       
CODE_12C79B:        ADC #$0004                
CODE_12C79E:        TAX                       
CODE_12C79F:        SEP #$20                  
CODE_12C7A1:        JSR CODE_12C7B8           
CODE_12C7A4:        REP #$20                  
CODE_12C7A6:        LDA $070D                 
CODE_12C7A9:        CLC                       
CODE_12C7AA:        ADC #$0004                
CODE_12C7AD:        TAX                       
CODE_12C7AE:        SEP #$20                  
CODE_12C7B0:        JSR CODE_12C7B8           
CODE_12C7B3:        SEP #$30                  
CODE_12C7B5:        LDX $12                   
CODE_12C7B7:        RTS
                       
CODE_12C7B8:        LDA $0800,x               
CODE_12C7BB:        CMP #$F8                  
CODE_12C7BD:        BCC CODE_12C7F7           
CODE_12C7BF:        PHX                       
CODE_12C7C0:        JSL CODE_14E483           
CODE_12C7C4:        REP #$10                  
CODE_12C7C6:        PLX                       
CODE_12C7C7:        LDY $02F8                 
CODE_12C7CA:        LDA $0800,x               
CODE_12C7CD:        STA $0800,y               
CODE_12C7D0:        LDA $0801,x               
CODE_12C7D3:        STA $0801,y               
CODE_12C7D6:        LDA $0802,x               
CODE_12C7D9:        STA $0802,y               
CODE_12C7DC:        LDA $0803,x               
CODE_12C7DF:        STA $0803,y               
CODE_12C7E2:        REP #$20                  
CODE_12C7E4:        TYA                       
CODE_12C7E5:        LSR A                     
CODE_12C7E6:        LSR A                     
CODE_12C7E7:        TAY                       
CODE_12C7E8:        TXA                       
CODE_12C7E9:        LSR A                     
CODE_12C7EA:        LSR A                     
CODE_12C7EB:        TAX                       
CODE_12C7EC:        SEP #$20                  
CODE_12C7EE:        LDA #$01                  
CODE_12C7F0:        STA $0A20,x               
CODE_12C7F3:        DEC A                     
CODE_12C7F4:        STA $0A20,y               
CODE_12C7F7:        RTS
                       
CODE_12C7F8:        JSR CODE_12AF2D           
CODE_12C7FB:        LDA #$02                  
CODE_12C7FD:        LDY $0635                 
CODE_12C800:        BEQ CODE_12C804           
CODE_12C802:        LDA #$04                  
CODE_12C804:        STA $0465,x               
CODE_12C807:        RTS
                       
CODE_12C808:        JSR CODE_12BB16           
CODE_12C80B:        LDA $045C,x               
CODE_12C80E:        BEQ CODE_12C813           
CODE_12C810:        JMP CODE_12BD29           

CODE_12C813:        JSR CODE_12DDAB           
CODE_12C816:        LDA #$02                  
CODE_12C818:        STA $6F,x                 
CODE_12C81A:        JSR CODE_12BD29           
CODE_12C81D:        LDA $5B,x                 
CODE_12C81F:        AND #$04                  
CODE_12C821:        BEQ CODE_12C882           
CODE_12C823:        JSR CODE_12B659           
CODE_12C826:        LDA $10                   
CODE_12C828:        AND #$FF                  
CODE_12C82A:        BNE CODE_12C832           
CODE_12C82C:        LDA #$D8                  
CODE_12C82E:        STA $47,x                 
CODE_12C830:        BNE CODE_12C882           
CODE_12C832:        LDA $10                   
CODE_12C834:        AND #$3F                  
CODE_12C836:        BNE CODE_12C83C           
CODE_12C838:        LDA #$20                  
CODE_12C83A:        STA $86,x                 
CODE_12C83C:        LDY $86,x                 
CODE_12C83E:        BNE CODE_12C85B           
CODE_12C840:        INC $B1,x                 
CODE_12C842:        LDA $B1,x                 
CODE_12C844:        AND #$20                  
CODE_12C846:        BEQ CODE_12C881           
CODE_12C848:        INC $9F,x                 
CODE_12C84A:        INC $9F,x                 
CODE_12C84C:        LDY #$18                  
CODE_12C84E:        LDA $B1,x                 
CODE_12C850:        AND #$40                  
CODE_12C852:        BNE CODE_12C856           
CODE_12C854:        LDY #$E8                  
CODE_12C856:        STY $3D,x                 
CODE_12C858:        JMP CODE_12C1EF           

CODE_12C85B:        CPY #$10                  
CODE_12C85D:        BNE CODE_12C881           
CODE_12C85F:        JSR CODE_12B331           
CODE_12C862:        BMI CODE_12C881           
CODE_12C864:        LDX $00                   
CODE_12C866:        LDA #$37                  
CODE_12C868:        STA $90,x                 
CODE_12C86A:        LDA $33,x                 
CODE_12C86C:        ADC #$03                  
CODE_12C86E:        STA $33,x                 
CODE_12C870:        LDA #$E0                  
CODE_12C872:        STA $47,x                 
CODE_12C874:        JSR CODE_129F7A           
CODE_12C877:        LDA #$FF                  
CODE_12C879:        STA $86,x                 
CODE_12C87B:        LDA #$E0                  
CODE_12C87D:        STA $3D,x                 
CODE_12C87F:        LDX $12                   
CODE_12C881:        RTS                       

CODE_12C882:        JMP CODE_12A0B2           

CODE_12C885:        LDA $51,x                 
CODE_12C887:        CMP #$01                  
CODE_12C889:        BNE CODE_12C896           
CODE_12C88B:        LDA $045C,x               
CODE_12C88E:        BEQ CODE_12C89F           
CODE_12C890:        INC $9F,x                 
CODE_12C892:        LDA #$4A                  
CODE_12C894:        STA $65,x                 
CODE_12C896:        LDA #$B3                  
CODE_12C898:        STA $046E,x               
CODE_12C89B:        LDA #$2C                  
CODE_12C89D:        BNE CODE_12C8A8           
CODE_12C89F:        LDY $86,x                 
CODE_12C8A1:        DEY                       
CODE_12C8A2:        CPY #$10                  
CODE_12C8A4:        BCS CODE_12C8AD                   
CODE_12C8A6:        LDA #$20                  
CODE_12C8A8:        JSR CODE_12BDD5           
CODE_12C8AB:        BRA CODE_12C8F3           

CODE_12C8AD:        JSR CODE_12BDC9           
CODE_12C8B0:        LDA $86,x                 
CODE_12C8B2:        CMP #$10                  
CODE_12C8B4:        BCC CODE_12C8F3           
CODE_12C8B6:        LDA #$01                  
CODE_12C8B8:        STA $65,x                 
CODE_12C8BA:        LDA #$10                  
CODE_12C8BC:        STA $046E,x               
CODE_12C8BF:        LDA $021F                 
CODE_12C8C2:        XBA                       
CODE_12C8C3:        LDA $0429                 
CODE_12C8C6:        REP #$20                  
CODE_12C8C8:        CLC                       
CODE_12C8C9:        ADC #$000B                
CODE_12C8CC:        SEP #$20                  
CODE_12C8CE:        STA $0429                 
CODE_12C8D1:        XBA                       
CODE_12C8D2:        STA $021F                 
CODE_12C8D5:        AND #$01                  
CODE_12C8D7:        ASL A                     
CODE_12C8D8:        ASL A                     
CODE_12C8D9:        ASL A                     
CODE_12C8DA:        STA $ED                   
CODE_12C8DC:        LDY #$5C             
CODE_12C8DE:        STY $02F6                
CODE_12C8E1:        STZ $02F7                 
CODE_12C8E4:        LDA $90,x                 
CODE_12C8E6:        PHA                       
CODE_12C8E7:        LDA #$37                  
CODE_12C8E9:        STA $90,x                 
CODE_12C8EB:        LDA #$38                  
CODE_12C8ED:        JSR CODE_12BDD5           
CODE_12C8F0:        PLA                       
CODE_12C8F1:        STA $90,x                 
CODE_12C8F3:        LDA #$43                  
CODE_12C8F5:        STA $65,x                 
CODE_12C8F7:        LDA #$33                  
CODE_12C8F9:        STA $046E,x               
CODE_12C8FC:        RTS
                       
CODE_12C8FD:        JSR CODE_12BDD2           
CODE_12C900:        LDA $EE                   
CODE_12C902:        ORA $B1,x                 
CODE_12C904:        BNE CODE_12C935           
CODE_12C906:        LDA $33,x                 
CODE_12C908:        SEC                       
CODE_12C909:        SBC #$02                  
CODE_12C90B:        STA $00                   
CODE_12C90D:        JSR CODE_12C936           
CODE_12C910:        JSL CODE_14E483           
CODE_12C914:        LDA $0213                 
CODE_12C917:        PHA                       
CODE_12C918:        AND #$F1                  
CODE_12C91A:        ORA #$02                  
CODE_12C91C:        STA $0213                 
CODE_12C91F:        CMP #$A3                  
CODE_12C921:        BNE CODE_12C92A           
CODE_12C923:        LDA $00                   
CODE_12C925:        CLC                       
CODE_12C926:        ADC #$10                  
CODE_12C928:        STA $00                   
CODE_12C92A:        LDX #$78
CODE_12C92C:        JSR CODE_12C03B                
CODE_12C92F:        PLA
CODE_12C930:        STA $0213                 
CODE_12C933:        LDX $12                   
CODE_12C935:        RTS
                       
CODE_12C936:        LDY $6F,x                 
CODE_12C938:        STZ $ED                   
CODE_12C93A:        LDA $29,x                 
CODE_12C93C:        STA $0712                 
CODE_12C93F:        LDA $15,x                 
CODE_12C941:        STA $0713                 
CODE_12C944:        LDA $04C1                 
CODE_12C947:        STA $0714                 
CODE_12C94A:        LDA $04BF                 
CODE_12C94D:        STA $0715                 
CODE_12C950:        REP #$20                  
CODE_12C952:        LDA.w DATA_119ABB,y               
CODE_12C955:        AND #$00FF                
CODE_12C958:        CMP #$0080                
CODE_12C95B:        BCC CODE_12C960           
CODE_12C95D:        ORA #$FF00                
CODE_12C960:        CLC                       
CODE_12C961:        ADC $0712                 
CODE_12C964:        SEC                       
CODE_12C965:        SBC $0714                 
CODE_12C968:        SEP #$20                  
CODE_12C96A:        STA $0429                 
CODE_12C96D:        STA $01                   
CODE_12C96F:        XBA                       
CODE_12C970:        STA $021F                 
CODE_12C973:        BEQ CODE_12C979           
CODE_12C975:        LDA #$08                  
CODE_12C977:        STA $ED                   
CODE_12C979:        RTS
                       
CODE_12C97A:        LDA $B1,x                 
CODE_12C97C:        BEQ CODE_12C981           
CODE_12C97E:        BRL CODE_12CA20           

CODE_12C981:        LDA $A8,x                 
CODE_12C983:        BEQ CODE_12CA03           
CODE_12C985:        LDA #$01                  
CODE_12C987:        STA $90,x                 
CODE_12C989:        JSR CODE_129F7A           
CODE_12C98C:        LDA $0429                 
CODE_12C98F:        STA $0716                 
CODE_12C992:        LDA $021F                 
CODE_12C995:        STA $0717                 
CODE_12C998:        LDA $ED                   
CODE_12C99A:        PHA                       
CODE_12C99B:        JSR CODE_12C936           
CODE_12C99E:        LDY $90,x                 
CODE_12C9A0:        JSR CODE_12BDD2           
CODE_12C9A3:        PLA                       
CODE_12C9A4:        STA $ED                   
CODE_12C9A6:        LDA $0717                 
CODE_12C9A9:        STA $021F                 
CODE_12C9AC:        LDA $0716                 
CODE_12C9AF:        STA $0429                 
CODE_12C9B2:        JSR CODE_12B331           
CODE_12C9B5:        BMI CODE_12CA02           
CODE_12C9B7:        LDY $00                   
CODE_12C9B9:        LDA #$08                  
CODE_12C9BB:        STA $0090,y               
CODE_12C9BE:        STA $00B1,y               
CODE_12C9C1:        LDA $9F,x                 
CODE_12C9C3:        STA $009F,y               
CODE_12C9C6:        LDA $29,x                 
CODE_12C9C8:        STA $0029,y               
CODE_12C9CB:        LDA $15,x                 
CODE_12C9CD:        STA $0015,y               
CODE_12C9D0:        LDA $6F,x                 
CODE_12C9D2:        STA $006F,y               
CODE_12C9D5:        LDA $0441,x               
CODE_12C9D8:        STA $0441,y               
CODE_12C9DB:        LDA #$FF                  
CODE_12C9DD:        STA $0441,x               
CODE_12C9E0:        LDA $3D,x                 
CODE_12C9E2:        STA $003D,y               
CODE_12C9E5:        TYX                       
CODE_12C9E6:        JSR CODE_129F7A           
CODE_12C9E9:        PHX                       
CODE_12C9EA:        JSL CODE_14E483           
CODE_12C9EE:        PLX                       
CODE_12C9EF:        LDY $90,x                 
CODE_12C9F1:        JSR CODE_12C8FD           
CODE_12C9F4:        LDA $02F6                 
CODE_12C9F7:        STA $02F8                 
CODE_12C9FA:        LDA $02F7                 
CODE_12C9FD:        STA $02F9                 
CODE_12CA00:        LDX $12                   
CODE_12CA02:        RTS
                       
CODE_12CA03:        LDA $5B,x                 
CODE_12CA05:        AND #$10                  
CODE_12CA07:        BEQ CODE_12CA20           
CODE_12CA09:        INC $B1,x                 
CODE_12CA0B:        STA $9F,x                 
CODE_12CA0D:        JSR CODE_12B335           
CODE_12CA10:        BMI CODE_12CA20           
CODE_12CA12:        LDY $00                   
CODE_12CA14:        LDA $3D,x                 
CODE_12CA16:        STA $003D,y               
CODE_12CA19:        LDA #$20                  
CODE_12CA1B:        STA $0453,y               
CODE_12CA1E:        BRA CODE_12CA31           

CODE_12CA20:        LDA $A8,x                 
CODE_12CA22:        BEQ CODE_12CA2B           
CODE_12CA24:        LDA $0500                 
CODE_12CA27:        BEQ CODE_12CA2B           
CODE_12CA29:        DEC $9F,x                 
CODE_12CA2B:        JSR CODE_12BA46           
CODE_12CA2E:        JSR CODE_12BB16           
CODE_12CA31:        LDA $0500                 
CODE_12CA34:        BEQ CODE_12CA3D           
CODE_12CA36:        LDA $042F,x               
CODE_12CA39:        BEQ CODE_12CA7D           
CODE_12CA3B:        BRA CODE_12CA40           

CODE_12CA3D:        JSR CODE_12DDAB           
CODE_12CA40:        LDA $5B,x                 
CODE_12CA42:        AND $6F,x                 
CODE_12CA44:        BEQ CODE_12CA49           
CODE_12CA46:        JSR CODE_12C248           
CODE_12CA49:        LDA $5B,x                 
CODE_12CA4B:        AND #$04                  
CODE_12CA4D:        BEQ CODE_12CA69           
CODE_12CA4F:        LDA $042F,x               
CODE_12CA52:        BEQ CODE_12CA5C           
CODE_12CA54:        LDA #$00                  
CODE_12CA56:        STA $042F,x               
CODE_12CA59:        JSR CODE_129FCA           
CODE_12CA5C:        LDA $9F,x                 
CODE_12CA5E:        EOR #$08                  
CODE_12CA60:        STA $9F,x                 
CODE_12CA62:        JSR CODE_12B659           
CODE_12CA65:        LDA #$F0                  
CODE_12CA67:        STA $47,x                 
CODE_12CA69:        INC $0477,x               
CODE_12CA6C:        LDA $B1,x                 
CODE_12CA6E:        BNE CODE_12CA7A           
CODE_12CA70:        LDA $0477,x               
CODE_12CA73:        AND #$3F                  
CODE_12CA75:        BNE CODE_12CA7A           
CODE_12CA77:        JSR CODE_129FCD           
CODE_12CA7A:        JSR CODE_12A0AA           
CODE_12CA7D:        JMP CODE_12BD29           

CODE_12CA80:        JSR CODE_129F96           
CODE_12CA83:        LDA #$40                  
CODE_12CA85:        STA $0477,x               
CODE_12CA88:        LDA #$02                  
CODE_12CA8A:        STA $0465,x               
CODE_12CA8D:        JMP CODE_12AF50    
       
CODE_12CA90:        RTS
                       
CODE_12CA91:        JSR CODE_12BB16           
CODE_12CA94:        LDY #$00                  
CODE_12CA96:        LDA $0477,x               
CODE_12CA99:        ASL A                     
CODE_12CA9A:        BCC CODE_12CAA3           
CODE_12CA9C:        LDY #$02                  
CODE_12CA9E:        ASL A                     
CODE_12CA9F:        BCC CODE_12CAA3           
CODE_12CAA1:        LDY #$FE                  
CODE_12CAA3:        STY $3D,x                 
CODE_12CAA5:        JSR CODE_12C1EF           
CODE_12CAA8:        INC $0477,x               
CODE_12CAAB:        LDA $B1,x                 
CODE_12CAAD:        CLC                       
CODE_12CAAE:        ADC #$D0                  
CODE_12CAB0:        STA $B1,x                 
CODE_12CAB2:        BCC CODE_12CAB7           
CODE_12CAB4:        INC $0480,x               
CODE_12CAB7:        LDA $EE                   
CODE_12CAB9:        BNE CODE_12CA90           
CODE_12CABB:        LDA #$49                  
CODE_12CABD:        STA $65,x                 
CODE_12CABF:        LDY #$44                  
CODE_12CAC1:        LDA $51,x                 
CODE_12CAC3:        SEC                       
CODE_12CAC4:        SBC #$01                  
CODE_12CAC6:        ORA $045C,x               
CODE_12CAC9:        STA $07                   
CODE_12CACB:        BEQ CODE_12CACF           
CODE_12CACD:        LDY #$48                  
CODE_12CACF:        TYA                       
CODE_12CAD0:        LDY #$60                  
CODE_12CAD2:        STY $02F6                 
CODE_12CAD5:        STZ $02F7                 
CODE_12CAD8:        JSR CODE_12BDD5           
CODE_12CADB:        LDA $1F,x                 
CODE_12CADD:        XBA                       
CODE_12CADE:        LDA $33,x                 
CODE_12CAE0:        REP #$20                  
CODE_12CAE2:        CLC                       
CODE_12CAE3:        ADC #$0020                
CODE_12CAE6:        CMP #$00F0                
CODE_12CAE9:        SEP #$20                  
CODE_12CAEB:        BCS CODE_12CB1A                   
CODE_12CAED:        LDA #$09                  
CODE_12CAEF:        STA $65,x                 
CODE_12CAF1:        LDA #$33                  
CODE_12CAF3:        STA $046E,x               
CODE_12CAF6:        JSR CODE_12CC87           
CODE_12CAF9:        LDX #$4C                  
CODE_12CAFB:        LDA $10                   
CODE_12CAFD:        AND #$20                  
CODE_12CAFF:        BNE CODE_12CB09           
CODE_12CB01:        LDA #$04                  
CODE_12CB03:        AND $10                   
CODE_12CB05:        BEQ CODE_12CB09           
CODE_12CB07:        LDX #$4F                  
CODE_12CB09:        LDA #$20                  
CODE_12CB0B:        STA $0C                   
CODE_12CB0D:        LDY #$E0                  
CODE_12CB0F:        STY $02F8                 
CODE_12CB12:        LDY #$01                  
CODE_12CB14:        STY $02F9                 
CODE_12CB17:        JSR CODE_12C03B           
CODE_12CB1A:        LDX $12                   
CODE_12CB1C:        LDA #$13                  
CODE_12CB1E:        STA $046E,x               
CODE_12CB21:        LDA $33,x                 
CODE_12CB23:        CLC                       
CODE_12CB24:        ADC #$FF                  
CODE_12CB26:        STA $00                   
CODE_12CB28:        LDA $0477,x               
CODE_12CB2B:        AND #$78                  
CODE_12CB2D:        LSR A                     
CODE_12CB2E:        LSR A                     
CODE_12CB2F:        LSR A                     
CODE_12CB30:        TAY                       
CODE_12CB31:        LDA.w DATA_119ABE,y               
CODE_12CB34:        ADC $0429                 
CODE_12CB37:        ADC #$F0                  
CODE_12CB39:        STA $01                   
CODE_12CB3B:        JSR CODE_12CC4C           
CODE_12CB3E:        LDX #$52                  
CODE_12CB40:        LDA $07                   
CODE_12CB42:        BNE CODE_12CB50           
CODE_12CB44:        LDX #$54                  
CODE_12CB46:        DEY                       
CODE_12CB47:        DEY                       
CODE_12CB48:        DEY                       
CODE_12CB49:        DEY                       
CODE_12CB4A:        CPY #$07                  
CODE_12CB4C:        BCS CODE_12CB50                   
CODE_12CB4E:        LDX #$56                  
CODE_12CB50:        LDY #$50                  
CODE_12CB52:        STY $02F8                 
CODE_12CB55:        STZ $02F9                 
CODE_12CB58:        JSR CODE_12C03B           
CODE_12CB5B:        LDX $12                   
CODE_12CB5D:        LDA $33,x                 
CODE_12CB5F:        CLC                       
CODE_12CB60:        ADC #$10                  
CODE_12CB62:        STA $00                   
CODE_12CB64:        LDA $0480,x               
CODE_12CB67:        AND #$78                  
CODE_12CB69:        LSR A                     
CODE_12CB6A:        LSR A                     
CODE_12CB6B:        LSR A                     
CODE_12CB6C:        TAY                       
CODE_12CB6D:        LDA.w DATA_119ABE,y               
CODE_12CB70:        ADC $0429                 
CODE_12CB73:        ADC #$F0                  
CODE_12CB75:        STA $01                   
CODE_12CB77:        JSR CODE_12CC4C           
CODE_12CB7A:        LDX #$52                  
CODE_12CB7C:        LDA $07                   
CODE_12CB7E:        BNE CODE_12CB8C           
CODE_12CB80:        LDX #$54                  
CODE_12CB82:        DEY                       
CODE_12CB83:        DEY                       
CODE_12CB84:        DEY                       
CODE_12CB85:        DEY                       
CODE_12CB86:        CPY #$07                  
CODE_12CB88:        BCS CODE_12CB8C                   
CODE_12CB8A:        LDX #$56                  
CODE_12CB8C:        LDY #$68                  
CODE_12CB8E:        STY $02F8                 
CODE_12CB91:        STZ $02F9                 
CODE_12CB94:        JSR CODE_12C03B           
CODE_12CB97:        LDX $12                   
CODE_12CB99:        LDA #$13                  
CODE_12CB9B:        STA $046E,x               
CODE_12CB9E:        LDA $01                   
CODE_12CBA0:        CLC                       
CODE_12CBA1:        ADC #$08                  
CODE_12CBA3:        STA $09C0                 
CODE_12CBA6:        LDA $33,x                 
CODE_12CBA8:        CLC                       
CODE_12CBA9:        ADC #$10                  
CODE_12CBAB:        STA $09C1                 
CODE_12CBAE:        LDA #$C1                  
CODE_12CBB0:        STA $09C2                 
CODE_12CBB3:        LDA $0863                 
CODE_12CBB6:        STA $09C3                 
CODE_12CBB9:        STA $0823                 
CODE_12CBBC:        LDA $ED                   
CODE_12CBBE:        AND #$04                  
CODE_12CBC0:        LSR A                     
CODE_12CBC1:        LSR A                     
CODE_12CBC2:        ORA #$02                  
CODE_12CBC4:        STA $0A90                 
CODE_12CBC7:        LDA $33,x                 
CODE_12CBC9:        CLC                       
CODE_12CBCA:        ADC #$FF                  
CODE_12CBCC:        STA $0821                 
CODE_12CBCF:        LDA $0862                 
CODE_12CBD2:        STA $0822                 
CODE_12CBD5:        LDA $0429                 
CODE_12CBD8:        STA $0820                 
CODE_12CBDB:        LDA #$02                  
CODE_12CBDD:        LDY $021F                 
CODE_12CBE0:        BEQ CODE_12CBE4           
CODE_12CBE2:        ORA #$01                  
CODE_12CBE4:        STA $0A28                 
CODE_12CBE7:        STZ $05                   
CODE_12CBE9:        LDA $0477,x               
CODE_12CBEC:        JSR CODE_12CBF4           
CODE_12CBEF:        INC $05                   
CODE_12CBF1:        LDA $0480,x               
CODE_12CBF4:        AND #$67                  
CODE_12CBF6:        CMP #$40                  
CODE_12CBF8:        BNE CODE_12CC4B           
CODE_12CBFA:        LDA $045C,x               
CODE_12CBFD:        BNE CODE_12CC4B           
CODE_12CBFF:        JSR CODE_12B335           
CODE_12CC02:        BMI CODE_12CC4B           
CODE_12CC04:        LDA #$17                  
CODE_12CC06:        STA $1DE3                 
CODE_12CC09:        LDY $00                   
CODE_12CC0B:        LDA #$20                  
CODE_12CC0D:        STA $0090,y               
CODE_12CC10:        STA $0079,y               
CODE_12CC13:        STA $00B1,y               
CODE_12CC16:        LDA $29,x                 
CODE_12CC18:        SBC #$18                  
CODE_12CC1A:        STA $0029,y               
CODE_12CC1D:        LDA $05                   
CODE_12CC1F:        BEQ CODE_12CC29           
CODE_12CC21:        LDA $33,x                 
CODE_12CC23:        CLC                       
CODE_12CC24:        ADC #$10                  
CODE_12CC26:        STA $0033,y               
CODE_12CC29:        LDA $28                   
CODE_12CC2B:        LSR A                     
CODE_12CC2C:        LSR A                     
CODE_12CC2D:        LSR A                     
CODE_12CC2E:        LSR A                     
CODE_12CC2F:        AND #$0F                  
CODE_12CC31:        CMP #$0B                  
CODE_12CC33:        BCC CODE_12CC37           
CODE_12CC35:        LDA #$0B                  
CODE_12CC37:        TAX                       
CODE_12CC38:        LDA.w DATA_119ACE,x               
CODE_12CC3B:        STA $0047,y               
CODE_12CC3E:        LDA.w DATA_119ADA,x               
CODE_12CC41:        STA $003D,y               
CODE_12CC44:        TYA                       
CODE_12CC45:        TAX                       
CODE_12CC46:        JSR CODE_129F7A           
CODE_12CC49:        LDX $12                   
CODE_12CC4B:        RTS                       
                       
CODE_12CC4C:        LDA $0429                 
CODE_12CC4F:        STA $08                   
CODE_12CC51:        LDA $021F                 
CODE_12CC54:        STA $09                   
CODE_12CC56:        STZ $ED                   
CODE_12CC58:        REP #$20                  
CODE_12CC5A:        LDA.w DATA_119ABE,y               
CODE_12CC5D:        AND #$00FF                
CODE_12CC60:        ORA #$FF00                
CODE_12CC63:        ADC $08                   
CODE_12CC65:        ADC #$FFF0                
CODE_12CC68:        STA $08                   
CODE_12CC6A:        AND #$FF00                
CODE_12CC6D:        BEQ CODE_12CC74           
CODE_12CC6F:        LDA #$0008                
CODE_12CC72:        TSB $ED                   
CODE_12CC74:        LDA $08                   
CODE_12CC76:        CLC                       
CODE_12CC77:        ADC #$0008                
CODE_12CC7A:        AND #$FF00                
CODE_12CC7D:        BEQ CODE_12CC84           
CODE_12CC7F:        LDA #$0004                
CODE_12CC82:        TSB $ED                   
CODE_12CC84:        SEP #$20                  
CODE_12CC86:        RTS
                       
CODE_12CC87:        LDA $0429                 
CODE_12CC8A:        STA $08                   
CODE_12CC8C:        LDA $021F                 
CODE_12CC8F:        STA $09                   
CODE_12CC91:        STZ $ED                   
CODE_12CC93:        REP #$20                  
CODE_12CC95:        LDA $08                   
CODE_12CC97:        AND #$FF00                
CODE_12CC9A:        BEQ CODE_12CCA1           
CODE_12CC9C:        LDA #$0004                
CODE_12CC9F:        TSB $ED                   
CODE_12CCA1:        LDA $08                   
CODE_12CCA3:        SEC                       
CODE_12CCA4:        SBC #$0008                
CODE_12CCA7:        STA $08                   
CODE_12CCA9:        AND #$FF00                
CODE_12CCAC:        BEQ CODE_12CCB3           
CODE_12CCAE:        LDA #$0008                
CODE_12CCB1:        TSB $ED                   
CODE_12CCB3:        SEP #$20                  
CODE_12CCB5:        LDA $08                   
CODE_12CCB7:        STA $01                   
CODE_12CCB9:        RTS
                       
CODE_12CCBA:        JSR CODE_129F96           
CODE_12CCBD:        LDA $33,x                 
CODE_12CCBF:        SEC                       
CODE_12CCC0:        SBC #$08                  
CODE_12CCC2:        STA $79,x                 
CODE_12CCC4:        RTS
                       
CODE_12CCC5:        JSR CODE_12BB16           
CODE_12CCC8:        JSR CODE_12BA4F           
CODE_12CCCB:        JSR CODE_12BA46           
CODE_12CCCE:        JSR CODE_12DDAB           
CODE_12CCD1:        LDA $0480,x               ; \ Check if Cobrat needs to remain in sand.
CODE_12CCD4:        BNE CODE_12CD06           ; / If not, branch.
CODE_12CCD6:        STA $3D,x                 ; X speed = #$00.
CODE_12CCD8:        JSR CODE_12C1DA         
CODE_12CCDB:        LDA $0F                   ; \ Check if player is near enough to Cobrat.  
CODE_12CCDD:        ADC #$40                  ;  |
CODE_12CCDF:        CMP #$80                  ;  |
CODE_12CCE1:        BCS CODE_12CCEC           ; / If not, do regular routine. (Remain in sand)      
CODE_12CCE3:        INC $0480,x               ; Don't retreat into sand anymore.
CODE_12CCE6:        LDA #$C0                  ; \ Jump up.
CODE_12CCE8:        STA $47,x                 ; /
CODE_12CCEA:        BNE CODE_12CD06           ; Branch. 

CODE_12CCEC:        INC $0477,x               ; Increase every frame.  
CODE_12CCEF:        LDY #$FC                  ; \ Y speed = #$FC for $20 frames.
CODE_12CCF1:        LDA $0477,x               ;  |
CODE_12CCF4:        AND #$20                  ;  |
CODE_12CCF6:        BEQ CODE_12CCFA           ;  |
CODE_12CCF8:        LDY #$04                  ;  | The other $20 frames, Y speed = #$04.
CODE_12CCFA:        STY $47,x                 ; /
CODE_12CCFC:        JSR CODE_12C1EA           
CODE_12CCFF:        LDA #$61                  
CODE_12CD01:        STA $65,x                 
CODE_12CD03:        JMP CODE_12BD29           

CODE_12CD06:        LDA $47,x                 ; \ If Y speed is negative, branch.
CODE_12CD08:        BMI CODE_12CD19           ; /
CODE_12CD0A:        LDA $79,x                 
CODE_12CD0C:        SEC                       
CODE_12CD0D:        SBC #$18                  
CODE_12CD0F:        CMP $33,x                 
CODE_12CD11:        BCS CODE_12CD19                   
CODE_12CD13:        STA $33,x                 
CODE_12CD15:        LDA #$00                  
CODE_12CD17:        STA $47,x                 
CODE_12CD19:        JSR CODE_12A0AA           ; Gravity.
CODE_12CD1C:        INC $9F,x                 
CODE_12CD1E:        LDA $9F,x                 
CODE_12CD20:        PHA                       
CODE_12CD21:        AND #$3F                  
CODE_12CD23:        BNE CODE_12CD28           
CODE_12CD25:        JSR CODE_129FCD           
CODE_12CD28:        PLA                       
CODE_12CD29:        BNE CODE_12CD30           
CODE_12CD2B:        LDA #$18                  
CODE_12CD2D:        STA $0453,x               
CODE_12CD30:        LDA $5B,x                 
CODE_12CD32:        AND #$03                  
CODE_12CD34:        BEQ CODE_12CD39           
CODE_12CD36:        JSR CODE_12C248           
CODE_12CD39:        LDA #$41                  
CODE_12CD3B:        LDY $47,x                 
CODE_12CD3D:        BPL CODE_12CD41           
CODE_12CD3F:        LDA #$61                  
CODE_12CD41:        JMP CODE_12CDD2           

CODE_12CD44:        LDA $A8,x                 
CODE_12CD46:        CMP #$05                  
CODE_12CD48:        BNE CODE_12CD50           
CODE_12CD4A:        LDA $65,x                 
CODE_12CD4C:        AND #$DF                  
CODE_12CD4E:        STA $65,x                 
CODE_12CD50:        JSR CODE_12BB16           
CODE_12CD53:        JSR CODE_12BA4F           
CODE_12CD56:        JSR CODE_12BA46           
CODE_12CD59:        JSR CODE_12DDAB           
CODE_12CD5C:        LDA $5B,x                 
CODE_12CD5E:        AND #$08                  
CODE_12CD60:        BEQ CODE_12CD67           
CODE_12CD62:        LDA $79,x                 
CODE_12CD64:        STA $33,x                 
CODE_12CD66:        RTS
                       
CODE_12CD67:        JSR CODE_12C1DA           
CODE_12CD6A:        INY                       
CODE_12CD6B:        STY $6F,x                 
CODE_12CD6D:        LDA $B1,x                 
CODE_12CD6F:        BNE CODE_12CD90           
CODE_12CD71:        LDA $86,x                 
CODE_12CD73:        BNE CODE_12CD7E           
CODE_12CD75:        LDA #$D0                  
CODE_12CD77:        STA $47,x                 
CODE_12CD79:        INC $B1,x                 
CODE_12CD7B:        JMP CODE_12CDCD           

CODE_12CD7E:        LDY #$FC
CODE_12CD80:        LDA $10                
CODE_12CD82:        AND #$20
CODE_12CD84:        BEQ CODE_12CD88          
CODE_12CD86:        LDY #$04                  
CODE_12CD88:        STY $47,x                 
CODE_12CD8A:        JSR CODE_12C1EA           
CODE_12CD8D:        JMP CODE_12CDD0           

CODE_12CD90:        INC $9F,x                 
CODE_12CD92:        LDA $47,x                 
CODE_12CD94:        BMI CODE_12CDCD           
CODE_12CD96:        BNE CODE_12CD9D           
CODE_12CD98:        LDA #$10                  
CODE_12CD9A:        STA $0453,x               
CODE_12CD9D:        LDA $47,x                 
CODE_12CD9F:        BMI CODE_12CDBD           
CODE_12CDA1:        LDA $5B,x                 
CODE_12CDA3:        AND #$04                  
CODE_12CDA5:        BEQ CODE_12CDBD           
CODE_12CDA7:        LDA $0E                   
CODE_12CDA9:        SEC                       
CODE_12CDAA:        SBC #$6A                  
CODE_12CDAC:        CMP #$06                  
CODE_12CDAE:        BCC CODE_12CDBD           
CODE_12CDB0:        LDA #$02                  
CODE_12CDB2:        STA $51,x                 
CODE_12CDB4:        LDA #$E0                  
CODE_12CDB6:        STA $47,x                 
CODE_12CDB8:        LDA #$40                  
CODE_12CDBA:        STA $0601                 
CODE_12CDBD:        LDA $79,x                 
CODE_12CDBF:        CMP $33,x                 
CODE_12CDC1:        BCS CODE_12CDCD                   
CODE_12CDC3:        STA $33,x                 
CODE_12CDC5:        LDA #$00                  
CODE_12CDC7:        STA $B1,x                 
CODE_12CDC9:        LDA #$A0                  
CODE_12CDCB:        STA $86,x                 
CODE_12CDCD:        JSR CODE_12A0B2           
CODE_12CDD0:        LDA #$61                  
CODE_12CDD2:        STA $65,x                 
CODE_12CDD4:        LDA $0453,x               
CODE_12CDD7:        BEQ CODE_12CDE5           
CODE_12CDD9:        CMP #$05                  
CODE_12CDDB:        BNE CODE_12CDE0           
CODE_12CDDD:        JSR CODE_12B676           
CODE_12CDE0:        LDA #$60                  
CODE_12CDE2:        JMP CODE_12BDD5           

CODE_12CDE5:        JMP CODE_12BD29           

CODE_12CDE8:        JSR CODE_129F96           
CODE_12CDEB:        LDA #$03                  
CODE_12CDED:        STA $79,x                 
CODE_12CDEF:        RTS                       

CODE_12CDF0:        LDA $79,x                 
CODE_12CDF2:        BNE CODE_12CDFD           
CODE_12CDF4:        JSR CODE_12BB16           
CODE_12CDF7:        JSR CODE_12BA46           
CODE_12CDFA:        JSR CODE_12BA4F           
CODE_12CDFD:        LDA $5B,x                 
CODE_12CDFF:        AND #$10                  
CODE_12CE01:        BEQ CODE_12CE0A           
CODE_12CE03:        JSR CODE_12CE11           
CODE_12CE06:        INC $042F,x               
CODE_12CE09:        RTS                       

CODE_12CE0A:        LDA $A8,x                 
CODE_12CE0C:        BNE CODE_12CE11           
CODE_12CE0E:        BRL CODE_12CEBA           

CODE_12CE11:        LDA $79,x                 
CODE_12CE13:        BEQ CODE_12CE0E           
CODE_12CE15:        STA $0477,x               
CODE_12CE18:        LDA #$00                  
CODE_12CE1A:        STA $79,x                 
CODE_12CE1C:        LDA #$02                  
CODE_12CE1E:        STA $0489,x               
CODE_12CE21:        LDA $0441,x               
CODE_12CE24:        STA $06                   
CODE_12CE26:        LDA #$FF                  
CODE_12CE28:        STA $0441,x               
CODE_12CE2B:        JSR CODE_12B331           
CODE_12CE2E:        BMI CODE_12CE0E           
CODE_12CE30:        LDY $00                   
CODE_12CE32:        LDA #$1A                  
CODE_12CE34:        STA $0090,y               
CODE_12CE37:        JSR CODE_12CC44           
CODE_12CE3A:        LDY $00                   
CODE_12CE3C:        LDA $06                   
CODE_12CE3E:        STA $0441,y               
CODE_12CE41:        LDA $0477,x               
CODE_12CE44:        SEC                       
CODE_12CE45:        SBC #$01                  
CODE_12CE47:        STA $0079,y               
CODE_12CE4A:        TAY                       
CODE_12CE4B:        LDA.w DATA_119AE6,y               
CODE_12CE4E:        LDY $00                   
CODE_12CE50:        STA $0489,y               
CODE_12CE53:        LDA $29,x                 
CODE_12CE55:        STA $0029,y               
CODE_12CE58:        LDA $15,x                 
CODE_12CE5A:        STA $0015,y               
CODE_12CE5D:        LDA $33,x                 
CODE_12CE5F:        CLC                       
CODE_12CE60:        ADC #$10                  
CODE_12CE62:        STA $0033,y               
CODE_12CE65:        LDA $1F,x                 
CODE_12CE67:        ADC #$00                  
CODE_12CE69:        STA $001F,y               
CODE_12CE6C:        LDA $02F6                 
CODE_12CE6F:        STA $071E                 
CODE_12CE72:        LDA $02F7                 
CODE_12CE75:        STA $071F                 
CODE_12CE78:        PHX                       
CODE_12CE79:        PHY                       
CODE_12CE7A:        JSL CODE_14E483           
CODE_12CE7E:        PLY                       
CODE_12CE7F:        PLX                       
CODE_12CE80:        LDA $02F8                 
CODE_12CE83:        STA $02F6                 
CODE_12CE86:        LDA $02F9                 
CODE_12CE89:        STA $02F7                 
CODE_12CE8C:        LDA $12                   
CODE_12CE8E:        STA $0720                 
CODE_12CE91:        STY $12                   
CODE_12CE93:        LDA $042C                 
CODE_12CE96:        STA $0721                 
CODE_12CE99:        CLC                       
CODE_12CE9A:        ADC #$10                  
CODE_12CE9C:        STA $042C                 
CODE_12CE9F:        TYX                       
CODE_12CEA0:        JSR CODE_12CED0           
CODE_12CEA3:        LDA $0721                 
CODE_12CEA6:        STA $042C                 
CODE_12CEA9:        LDX $0720                 
CODE_12CEAC:        STX $12                   
CODE_12CEAE:        LDA $071E                 
CODE_12CEB1:        STA $02F6                 
CODE_12CEB4:        LDA $071F                 
CODE_12CEB7:        STA $02F7                 
CODE_12CEBA:        LDA $0500                 
CODE_12CEBD:        BNE CODE_12CECD           
CODE_12CEBF:        INC $9F,x                 
CODE_12CEC1:        LDA $9F,x                 
CODE_12CEC3:        AND #$3F                  
CODE_12CEC5:        BNE CODE_12CECA           
CODE_12CEC7:        JSR CODE_129FCD           
CODE_12CECA:        JSR CODE_12C1EF           
CODE_12CECD:        JMP CODE_12BD29           

CODE_12CED0:        LDY #$00                  
CODE_12CED2:        LDA $ED                   
CODE_12CED4:        BNE CODE_12CEDE           
CODE_12CED6:        LDA $10                   
CODE_12CED8:        AND #$18                  
CODE_12CEDA:        LSR A                     
CODE_12CEDB:        LSR A                     
CODE_12CEDC:        LSR A                     
CODE_12CEDD:        TAY                       
CODE_12CEDE:        STY $07                   
CODE_12CEE0:        STZ $0712                 
CODE_12CEE3:        STZ $0713                 
CODE_12CEE6:        LDA $021F                 
CODE_12CEE9:        STA $0715                 
CODE_12CEEC:        LDA $0429                 
CODE_12CEEF:        STA $0714                 
CODE_12CEF2:        LDA.w DATA_119AEA,y               
CODE_12CEF5:        JSR CODE_12CF55           
CODE_12CEF8:        JSR CODE_12BDC9           
CODE_12CEFB:        LDA $79,x                 
CODE_12CEFD:        STA $09                   
CODE_12CEFF:        BEQ CODE_12CF52           
CODE_12CF01:        LDA #$10                  
CODE_12CF03:        STA $0712                 
CODE_12CF06:        STZ $0713                 
CODE_12CF09:        LDX $07                   
CODE_12CF0B:        LDA.w DATA_119AEB,x               
CODE_12CF0E:        JSR CODE_12CF55           
CODE_12CF11:        BNE CODE_12CF18           
CODE_12CF13:        LDX #$6C                  
CODE_12CF15:        JSR CODE_12C03B           
CODE_12CF18:        DEC $09                   
CODE_12CF1A:        BEQ CODE_12CF52           
CODE_12CF1C:        JSL CODE_14E483           
CODE_12CF20:        LDA #$20                  
CODE_12CF22:        STA $0712                 
CODE_12CF25:        STZ $0713                 
CODE_12CF28:        LDX $07                   
CODE_12CF2A:        LDA.w DATA_119AEC,x               
CODE_12CF2D:        JSR CODE_12CF55           
CODE_12CF30:        BNE CODE_12CF37           
CODE_12CF32:        LDX #$6C                  
CODE_12CF34:        JSR CODE_12C03B           
CODE_12CF37:        DEC $09                   
CODE_12CF39:        BEQ CODE_12CF52           
CODE_12CF3B:        LDA #$30                  
CODE_12CF3D:        STA $0712                 
CODE_12CF40:        STZ $0713                 
CODE_12CF43:        LDX $07                   
CODE_12CF45:        LDA.w DATA_119AED,x               
CODE_12CF48:        JSR CODE_12CF55           
CODE_12CF4B:        BNE CODE_12CF52           
CODE_12CF4D:        LDX #$6C                  
CODE_12CF4F:        JSR CODE_12C03B           
CODE_12CF52:        LDX $12                   
CODE_12CF54:        RTS                       
                       
CODE_12CF55:        STZ $ED                   
CODE_12CF57:        REP #$20                  
CODE_12CF59:        AND #$00FF                
CODE_12CF5C:        CMP #$0080                
CODE_12CF5F:        BCC CODE_12CF64           
CODE_12CF61:        ORA #$FF00                
CODE_12CF64:        CLC                       
CODE_12CF65:        ADC $0714                 
CODE_12CF68:        SEP #$20                  
CODE_12CF6A:        STA $01                   
CODE_12CF6C:        STA $0429                 
CODE_12CF6F:        XBA                       
CODE_12CF70:        STA $021F                 
CODE_12CF73:        BEQ CODE_12CF79           
CODE_12CF75:        LDA #$08                  
CODE_12CF77:        STA $ED                   
CODE_12CF79:        LDX $12                   
CODE_12CF7B:        LDA $CB                   
CODE_12CF7D:        STA $0716                 
CODE_12CF80:        LDA $CA                   
CODE_12CF82:        STA $0717                 
CODE_12CF85:        LDA $1F,x                 
CODE_12CF87:        XBA                       
CODE_12CF88:        LDA $33,x                 
CODE_12CF8A:        REP #$20                  
CODE_12CF8C:        CLC                       
CODE_12CF8D:        ADC $0712                 
CODE_12CF90:        SEC                       
CODE_12CF91:        SBC $0716                 
CODE_12CF94:        XBA                       
CODE_12CF95:        AND #$00FF                
CODE_12CF98:        SEP #$20                  
CODE_12CF9A:        RTS
                       
DATA_12CF9B:        db $FF

DATA_12CF9C:        db $FF

DATA_12CF9D:        db $FF

DATA_12CF9E:        db $FF,$88,$88,$88,$FF,$98,$98,$98
                    db $FF,$84,$94,$85,$94,$94,$85,$95
                    db $85,$85,$95,$84,$95,$95,$84,$94
                    db $84

DATA_12CFB7:        db $00,$01,$00,$01,$01,$02,$01,$02
                    db $03,$04,$05,$06            
                 
CODE_12CFC3:        LDA $B1,x                   
CODE_12CFC5:        BNE CODE_12CFCA               
CODE_12CFC7:        JMP CODE_12D191                 
            
CODE_12CFCA:        LDY #$03    
CODE_12CFCC:        LDA $47,x            
CODE_12CFCE:        BEQ CODE_12CFD4          
CODE_12CFD0:        CMP #$FD                   
CODE_12CFD2:        BCC CODE_12CFE5               
CODE_12CFD4:        LDY #$3F                
CODE_12CFD6:        INC $0429                  
CODE_12CFD9:        LDA $10                   
CODE_12CFDB:        AND #$02                  
CODE_12CFDD:        BNE CODE_12CFE5           
CODE_12CFDF:        DEC $0429                 
CODE_12CFE2:        DEC $0429                 
CODE_12CFE5:        TYA                       
CODE_12CFE6:        AND $10                   
CODE_12CFE8:        BNE CODE_12CFF7           
CODE_12CFEA:        DEC $47,x                 
CODE_12CFEC:        LDA $47,x                 
CODE_12CFEE:        CMP #$FA                  
CODE_12CFF0:        BNE CODE_12CFF7           
CODE_12CFF2:        LDA #$45                  
CODE_12CFF4:        STA $1DE3                 
CODE_12CFF7:        JSR CODE_12C1EA           
CODE_12CFFA:        LDA $0477,x               
CODE_12CFFD:        BNE CODE_12D023           
CODE_12CFFF:        LDY $1F,x                 
CODE_12D001:        BPL CODE_12D047           
CODE_12D003:        LDA $33,x                 
CODE_12D005:        CMP #$D0                  
CODE_12D007:        BCS CODE_12D047                   
CODE_12D009:        JSL CODE_14E35A           
CODE_12D00D:        LDA #$38                  
CODE_12D00F:        STA $04AF                 
CODE_12D012:        INC $0627                 
CODE_12D015:        INC $02B8                 
CODE_12D018:        LDA #$05                  
CODE_12D01A:        STA $0536                 
CODE_12D01D:        LDA #$00                  
CODE_12D01F:        STA $0050                 
CODE_12D022:        RTS
                       
CODE_12D023:        LDA $33,x                 
CODE_12D025:        CMP #$30                  
CODE_12D027:        BCS CODE_12D047                   
CODE_12D029:        LDY $04C8                 
CODE_12D02C:        BNE CODE_12D035           
CODE_12D02E:        CMP #$18                  
CODE_12D030:        BCS CODE_12D047                   
CODE_12D032:        JMP CODE_12B120           

CODE_12D035:        LDA #$00                  
CODE_12D037:        STA $04C8                 
CODE_12D03A:        STA $9C                   
CODE_12D03C:        STA $3C                   
CODE_12D03E:        LDA $33,x                 
CODE_12D040:        ADC #$20                  
CODE_12D042:        STA $32                   
CODE_12D044:        STA $042B                 
CODE_12D047:        JSR CODE_12D1A8           
CODE_12D04A:        LDA $33,x                 
CODE_12D04C:        STA $0712                 
CODE_12D04F:        LDA $1F,x                 
CODE_12D051:        STA $0713                 
CODE_12D054:        LDY #$00                  
CODE_12D056:        LDA $47,x                 
CODE_12D058:        CMP #$FE                  
CODE_12D05A:        BCS CODE_12D062                   
CODE_12D05C:        INY                       
CODE_12D05D:        CMP #$FD                  
CODE_12D05F:        BEQ CODE_12D062           
CODE_12D061:        INY                       
CODE_12D062:        STY $0714                 
CODE_12D065:        LDA $0429                 
CODE_12D068:        CLC                       
CODE_12D069:        ADC #$FD                  
CODE_12D06B:        STA $09A0                 
CODE_12D06E:        STA $09B0                 
CODE_12D071:        CLC                       
CODE_12D072:        ADC #$07                  
CODE_12D074:        STA $09A4                 
CODE_12D077:        STA $09B4                 
CODE_12D07A:        STA $09AC                 
CODE_12D07D:        CLC                       
CODE_12D07E:        ADC #$07                  
CODE_12D080:        STA $09A8                 
CODE_12D083:        STA $09B8                 
CODE_12D086:        LDA #$1E                  
CODE_12D088:        CLC                       
CODE_12D089:        ADC $0712                 
CODE_12D08C:        STA $09A1                 
CODE_12D08F:        STA $09A5                 
CODE_12D092:        STA $09A9                 
CODE_12D095:        CPY #$02                  
CODE_12D097:        BNE CODE_12D0AB           
CODE_12D099:        CLC                       
CODE_12D09A:        ADC #$07                  
CODE_12D09C:        STA $09B1                 
CODE_12D09F:        STA $09B5                 
CODE_12D0A2:        STA $09B9                 
CODE_12D0A5:        CLC                       
CODE_12D0A6:        ADC #$07                  
CODE_12D0A8:        STA $09AD                 
CODE_12D0AB:        REP #$20                  
CODE_12D0AD:        LDA $0712                 
CODE_12D0B0:        CLC                       
CODE_12D0B1:        ADC #$0020                
CODE_12D0B4:        CMP #$00EA                
CODE_12D0B7:        BCC CODE_12D0D7           
CODE_12D0B9:        CMP #$FFD0                
CODE_12D0BC:        BCS CODE_12D0D7                   
CODE_12D0BE:        SEP #$20                  
CODE_12D0C0:        LDA #$F0                  
CODE_12D0C2:        STA $09A1                 
CODE_12D0C5:        STA $09A5                 
CODE_12D0C8:        STA $09A9                 
CODE_12D0CB:        STA $09AD                 
CODE_12D0CE:        STA $09B1                 
CODE_12D0D1:        STA $09B5                 
CODE_12D0D4:        STA $09B9                 
CODE_12D0D7:        SEP #$20                  
CODE_12D0D9:        LDA #$22                  
CODE_12D0DB:        STA $09A3                 
CODE_12D0DE:        STA $09A7                 
CODE_12D0E1:        STA $09AB                 
CODE_12D0E4:        STA $09AF                 
CODE_12D0E7:        ORA #$40                  
CODE_12D0E9:        STA $09B3                 
CODE_12D0EC:        STA $09B7                 
CODE_12D0EF:        STA $09BB                 
CODE_12D0F2:        LDA #$00                  
CODE_12D0F4:        STA $0A88                 
CODE_12D0F7:        STA $0A89                 
CODE_12D0FA:        STA $0A8A                 
CODE_12D0FD:        STA $0A8B                 
CODE_12D100:        STA $0A8C                 
CODE_12D103:        STA $0A8D                 
CODE_12D106:        STA $0A8E                 
CODE_12D109:        LDX #$06                  
CODE_12D10B:        CPY #$02                  
CODE_12D10D:        BEQ CODE_12D111           
CODE_12D10F:        LDX #$0C                  
CODE_12D111:        TXA                       
CODE_12D112:        AND $10                   
CODE_12D114:        LSR A                     
CODE_12D115:        CPY #$02                  
CODE_12D117:        BEQ CODE_12D11A           
CODE_12D119:        LSR A                     
CODE_12D11A:        STA $00                   
CODE_12D11C:        TYA                       
CODE_12D11D:        ASL A                     
CODE_12D11E:        ASL A                     
CODE_12D11F:        CLC                       
CODE_12D120:        ADC $00                   
CODE_12D122:        TAX                       
CODE_12D123:        LDA.l DATA_12CFB7,x             
CODE_12D127:        ASL A                     
CODE_12D128:        ASL A                     
CODE_12D129:        TAX                       
CODE_12D12A:        LDA.l DATA_12CF9B,x             
CODE_12D12E:        CMP #$FF                  
CODE_12D130:        BNE CODE_12D13A           
CODE_12D132:        LDA #$F0                  
CODE_12D134:        STA $09A1                 
CODE_12D137:        STA $09B9                 
CODE_12D13A:        STA $09A2                 
CODE_12D13D:        STA $09BA                 
CODE_12D140:        LDA.l DATA_12CF9C,x             
CODE_12D144:        CMP #$FF                  
CODE_12D146:        BNE CODE_12D150           
CODE_12D148:        LDA #$F0                  
CODE_12D14A:        STA $09A5                 
CODE_12D14D:        STA $09B5                 
CODE_12D150:        STA $09A6                 
CODE_12D153:        STA $09B6                 
CODE_12D156:        LDA.l DATA_12CF9D,x             
CODE_12D15A:        CMP #$FF                  
CODE_12D15C:        BNE CODE_12D166           
CODE_12D15E:        LDA #$F0                  
CODE_12D160:        STA $09A9                 
CODE_12D163:        STA $09B1                 
CODE_12D166:        STA $09AA                 
CODE_12D169:        STA $09B2                 
CODE_12D16C:        LDA.l DATA_12CF9E,x             
CODE_12D170:        CMP #$FF                  
CODE_12D172:        BNE CODE_12D179           
CODE_12D174:        LDA #$F0                  
CODE_12D176:        STA $09AD                 
CODE_12D179:        STA $09AE                 
CODE_12D17C:        CPY #$02                  
CODE_12D17E:        BEQ CODE_12D18E           
CODE_12D180:        LDA #$F0                  
CODE_12D182:        STA $09AD                 
CODE_12D185:        STA $09B1                 
CODE_12D188:        STA $09B5                 
CODE_12D18B:        STA $09B9                 
CODE_12D18E:        LDX $12                   
CODE_12D190:        RTS                       
                       
CODE_12D191:        LDA $A8,x                 
CODE_12D193:        CMP #$01                  
CODE_12D195:        BNE CODE_12D1A5           
CODE_12D197:        STA $B1,x                 
CODE_12D199:        STA $04C8                 
CODE_12D19C:        LDA #$35                  
CODE_12D19E:        STA $1DE3                 
CODE_12D1A1:        LDA #$FE                  
CODE_12D1A3:        STA $47,x                 
CODE_12D1A5:        JSR CODE_12B692           
CODE_12D1A8:        LDA $EE                   
CODE_12D1AA:        BNE CODE_12D18E           
CODE_12D1AC:        LDA $042C                 
CODE_12D1AF:        STA $00                   
CODE_12D1B1:        LDA $0429                 
CODE_12D1B4:        SEC                       
CODE_12D1B5:        SBC #$08                  
CODE_12D1B7:        STA $01                   
CODE_12D1B9:        LDA #$02                  
CODE_12D1BB:        STA $02                   
CODE_12D1BD:        STA $05                   
CODE_12D1BF:        STA $0C                   
CODE_12D1C1:        PHX                       
CODE_12D1C2:        LDA $90,x                 
CODE_12D1C4:        TAX                       
CODE_12D1C5:        LDA.l DATA_15EBA5,x             
CODE_12D1C9:        AND #$0F                  
CODE_12D1CB:        STA $0213                 
CODE_12D1CE:        PLX                       
CODE_12D1CF:        LDA $65,x                 
CODE_12D1D1:        AND #$20                  
CODE_12D1D3:        STA $03                   
CODE_12D1D5:        LDA #$40                  
CODE_12D1D7:        STA $02F8                 
CODE_12D1DA:        STZ $02F9                 
CODE_12D1DD:        LDX #$94                  
CODE_12D1DF:        JSR CODE_12BED0           
CODE_12D1E2:        LDA $01                   
CODE_12D1E4:        CLC                       
CODE_12D1E5:        ADC #$10                  
CODE_12D1E7:        STA $01                   
CODE_12D1E9:        DEC $02                   
CODE_12D1EB:        LDA $042C                 
CODE_12D1EE:        STA $00                   
CODE_12D1F0:        LDA #$50                  
CODE_12D1F2:        STA $02F8                 
CODE_12D1F5:        STZ $02F9                 
CODE_12D1F8:        LDX #$94                  
CODE_12D1FA:        JMP CODE_12BED0           
 
DATA_12D1FD:        db $7C,$DC,$80,$E0

DATA_12D201:        db $80,$E0,$7C,$DC

DATA_12D205:        db $EC,$EE,$EC,$EE
              
CODE_12D209:        LDA $046E,x
CODE_12D20C:        STA $071E                
CODE_12D20F:        STZ $ED
CODE_12D211:        LDA #$10                
CODE_12D213:        STA $071A                 
CODE_12D216:        LDA $045C,x               
CODE_12D219:        BEQ CODE_12D222           
CODE_12D21B:        INC $9F,x                 
CODE_12D21D:        LDA #$08                  
CODE_12D21F:        STA $071A                 
CODE_12D222:        LDA $9F,x                 
CODE_12D224:        AND #$08                  
CODE_12D226:        LSR A                     
CODE_12D227:        LSR A                     
CODE_12D228:        LSR A                     
CODE_12D229:        STA $07                   
CODE_12D22B:        LDY $07                   
CODE_12D22D:        LDA $0429                 
CODE_12D230:        STA $0720                 
CODE_12D233:        PHA                       
CODE_12D234:        CLC                       
CODE_12D235:        ADC.w DATA_119AF1,y               
CODE_12D238:        STA $0429                 
CODE_12D23B:        LDA $9F,x                 
CODE_12D23D:        PHA                       
CODE_12D23E:        AND #$18                  
CODE_12D240:        LSR A                     
CODE_12D241:        LSR A                     
CODE_12D242:        LSR A                     
CODE_12D243:        STA $0718                 
CODE_12D246:        PLA                       
CODE_12D247:        AND #$0C                  
CODE_12D249:        LSR A                     
CODE_12D24A:        LSR A                     
CODE_12D24B:        STA $0719                 
CODE_12D24E:        LDA $046E,x               
CODE_12D251:        AND #$7F                  
CODE_12D253:        STA $046E,x               
CODE_12D256:        LDY #$00                  
CODE_12D258:        LDA $9F,x                 
CODE_12D25A:        AND $071A                 
CODE_12D25D:        BEQ CODE_12D261           
CODE_12D25F:        LDY #$40                  
CODE_12D261:        STY $0249                 
CODE_12D264:        LDA $0718                 
CODE_12D267:        LDY $045C,x               
CODE_12D26A:        BEQ CODE_12D26F           
CODE_12D26C:        LDA $0719                 
CODE_12D26F:        PHX                       
CODE_12D270:        TAX                       
CODE_12D271:        LDA.l DATA_12D1FD,x             
CODE_12D275:        PLX                       
CODE_12D276:        JSR CODE_12BDD5           
CODE_12D279:        JSL CODE_14E483           
CODE_12D27D:        LDA $02F8                 
CODE_12D280:        STA $02F6                 
CODE_12D283:        LDA $02F9                 
CODE_12D286:        STA $02F7                 
CODE_12D289:        PLA                       
CODE_12D28A:        CLC                       
CODE_12D28B:        LDY $07                   
CODE_12D28D:        ADC.w DATA_119AF2,y               
CODE_12D290:        STA $0429                 
CODE_12D293:        LDA $0718                 
CODE_12D296:        LDY $045C,x               
CODE_12D299:        BEQ CODE_12D29E           
CODE_12D29B:        LDA $0719                 
CODE_12D29E:        PHX                       
CODE_12D29F:        TAX                       
CODE_12D2A0:        LDA.l DATA_12D201,x             
CODE_12D2A4:        PLX                       
CODE_12D2A5:        JSR CODE_12BDD5           
CODE_12D2A8:        LDA $9F,x                 
CODE_12D2AA:        STA $0721                 
CODE_12D2AD:        LDA $65,x                 
CODE_12D2AF:        PHA                       
CODE_12D2B0:        AND #$BF                  
CODE_12D2B2:        STA $65,x                 
CODE_12D2B4:        STZ $9F,x                 
CODE_12D2B6:        LDA $0720                 
CODE_12D2B9:        CLC                       
CODE_12D2BA:        ADC #$F8                  
CODE_12D2BC:        STA $0429                 
CODE_12D2BF:        LDA $042C                 
CODE_12D2C2:        CLC                       
CODE_12D2C3:        ADC #$0E                  
CODE_12D2C5:        STA $042C                 
CODE_12D2C8:        LDA #$20                  
CODE_12D2CA:        STA $02F8                 
CODE_12D2CD:        STA $02F6                 
CODE_12D2D0:        STZ $02F9                 
CODE_12D2D3:        STZ $02F7                 
CODE_12D2D6:        LDY $045C,x               
CODE_12D2D9:        BEQ CODE_12D2DF           
CODE_12D2DB:        LDA #$F0                  
CODE_12D2DD:        BRA CODE_12D2EB           
      
CODE_12D2DF:        STZ $0249                 
CODE_12D2E2:        PHX                       
CODE_12D2E3:        LDX $0718                 
CODE_12D2E6:        LDA.l DATA_12D205,x             
CODE_12D2EA:        PLX                       
CODE_12D2EB:        JSR CODE_12BDD5           
CODE_12D2EE:        PLA                       
CODE_12D2EF:        STA $65,x                 
CODE_12D2F1:        LDA $0721                 
CODE_12D2F4:        STA $9F,x                 
CODE_12D2F6:        LDA $071E                 
CODE_12D2F9:        STA $046E,x               
CODE_12D2FC:        RTS
                       
CODE_12D2FD:        JSR CODE_129F96           
CODE_12D300:        LDA #$04                  
CODE_12D302:        STA $0465,x               
CODE_12D305:        LDA #$00                  
CODE_12D307:        STA $79,x                 
CODE_12D309:        RTS
                       
CODE_12D30A:        LDA #$02                  
CODE_12D30C:        STA $6F,x                 
CODE_12D30E:        INC $9F,x                 
CODE_12D310:        LDY $0465,x               
CODE_12D313:        DEY                       
CODE_12D314:        BNE CODE_12D366           
CODE_12D316:        LDA #$03                  
CODE_12D318:        STA $09                   
CODE_12D31A:        STA $04F9                 
CODE_12D31D:        JSR CODE_12A83B           
CODE_12D320:        JSR CODE_12B335           
CODE_12D323:        BMI CODE_12D362           
CODE_12D325:        LDY $00                   
CODE_12D327:        LDA $1F,x                 
CODE_12D329:        STA $04F0,y               
CODE_12D32C:        LDA #$F0                  
CODE_12D32E:        STA $0047,y               
CODE_12D331:        LDA #$2B                  
CODE_12D333:        STA $0090,y               
CODE_12D336:        LDA #$30                  
CODE_12D338:        STA $0453,y               
CODE_12D33B:        LDA $33,x                 
CODE_12D33D:        PHA                       
CODE_12D33E:        LDX $09                   
CODE_12D340:        LDA.w DATA_119AF4,x               
CODE_12D343:        STA $003D,y               
CODE_12D346:        LDA $0429                 
CODE_12D349:        ADC.w DATA_119AF8,x               
CODE_12D34C:        STA $0029,y               
CODE_12D34F:        PLA                       
CODE_12D350:        ADC.w DATA_119AFC,x               
CODE_12D353:        STA $0033,y               
CODE_12D356:        LDA #$00                  
CODE_12D358:        STA $0015,y               
CODE_12D35B:        TYA                       
CODE_12D35C:        TAX                       
CODE_12D35D:        JSR CODE_129F7A           
CODE_12D360:        LDX $12                   
CODE_12D362:        DEC $09                   
CODE_12D364:        BPL CODE_12D320           
CODE_12D366:        LDA $10                   
CODE_12D368:        AND #$1F                  
CODE_12D36A:        BNE CODE_12D38B           
CODE_12D36C:        JSR CODE_12B335           
CODE_12D36F:        LDX $00                   
CODE_12D371:        LDA #$20                  
CODE_12D373:        STA $90,x                 
CODE_12D375:        LDA #$27                  
CODE_12D377:        STA $1DE3                 
CODE_12D37A:        LDA $29,x                 
CODE_12D37C:        SBC #$08                  
CODE_12D37E:        STA $29,x                 
CODE_12D380:        LDA $33,x                 
CODE_12D382:        ADC #$18                  
CODE_12D384:        STA $33,x                 
CODE_12D386:        JSR CODE_129FCA           
CODE_12D389:        LDX $12                   
CODE_12D38B:        LDA $10                   
CODE_12D38D:        AND #$01                  
CODE_12D38F:        BNE CODE_12D3BB           
CODE_12D391:        LDA $79,x                 
CODE_12D393:        AND #$01                  
CODE_12D395:        TAY                       
CODE_12D396:        LDA $47,x                 
CODE_12D398:        CLC                       
CODE_12D399:        ADC.w DATA_119B04,y               
CODE_12D39C:        STA $47,x                 
CODE_12D39E:        CMP.w DATA_119B06,y               
CODE_12D3A1:        BNE CODE_12D3A5           
CODE_12D3A3:        INC $79,x                 
CODE_12D3A5:        LDA $0477,x               
CODE_12D3A8:        AND #$01                  
CODE_12D3AA:        TAY                       
CODE_12D3AB:        LDA $3D,x                 
CODE_12D3AD:        CLC                       
CODE_12D3AE:        ADC.w DATA_119B00,y               
CODE_12D3B1:        STA $3D,x                 
CODE_12D3B3:        CMP.w DATA_119B02,y               
CODE_12D3B6:        BNE CODE_12D3BB           
CODE_12D3B8:        INC $0477,x               
CODE_12D3BB:        JSR CODE_12D209           
CODE_12D3BE:        JSR CODE_12C1EA           
CODE_12D3C1:        JMP CODE_12C1EF           

CODE_12D3C4:        LDA $5B,x                 
CODE_12D3C6:        AND #$10                  
CODE_12D3C8:        BEQ CODE_12D3DB           
CODE_12D3CA:        JSR CODE_12E352           
CODE_12D3CD:        STZ $046E,x               
CODE_12D3D0:        STZ $9F,x                 
CODE_12D3D2:        LDA #$09                  
CODE_12D3D4:        STA $51,x                 
CODE_12D3D6:        LDA #$1F                  
CODE_12D3D8:        STA $86,x                 
CODE_12D3DA:        RTS
                       
CODE_12D3DB:        LDA #$02                  
CODE_12D3DD:        STA $6F,x                 
CODE_12D3DF:        LDA $10                   
CODE_12D3E1:        STA $044A,x               
CODE_12D3E4:        INC $9F,x                 
CODE_12D3E6:        LDA $9F,x                 
CODE_12D3E8:        AND #$10                  
CODE_12D3EA:        BEQ CODE_12D3EE           
CODE_12D3EC:        DEC $6F,x                 
CODE_12D3EE:        JSR CODE_12DDAB           
CODE_12D3F1:        JSR CODE_12BD29           
CODE_12D3F4:        LDA $5B,x                 
CODE_12D3F6:        PHA                       
CODE_12D3F7:        AND #$04                  
CODE_12D3F9:        BEQ CODE_12D402           
CODE_12D3FB:        JSR CODE_12B659           
CODE_12D3FE:        LDA #$00                  
CODE_12D400:        STA $3D,x                 
CODE_12D402:        PLA                       
CODE_12D403:        AND #$03                  
CODE_12D405:        BEQ CODE_12D40D           
CODE_12D407:        JSR CODE_12C248           
CODE_12D40A:        JSR CODE_12B63B           
CODE_12D40D:        TXA                       
CODE_12D40E:        ASL A                     
CODE_12D40F:        ASL A                     
CODE_12D410:        ASL A                     
CODE_12D411:        ADC $10                   
CODE_12D413:        LDY $04F9                 
CODE_12D416:        AND.w DATA_119B08,y               
CODE_12D419:        ORA $47,x                 
CODE_12D41B:        BNE CODE_12D433           
CODE_12D41D:        LDA $0587                 
CODE_12D420:        AND #$1F                  
CODE_12D422:        ORA.w DATA_119B0C,y               
CODE_12D425:        STA $47,x                 
CODE_12D427:        JSR CODE_129FCD           
CODE_12D42A:        LDA $04F9                 
CODE_12D42D:        CMP #$02                  
CODE_12D42F:        BCS CODE_12D433                   
CODE_12D431:        ASL $3D,x                 
CODE_12D433:        LDA $50                   
CODE_12D435:        CMP #$08                  
CODE_12D437:        BEQ CODE_12D43F           
CODE_12D439:        JSR CODE_12C1EF           
CODE_12D43C:        JMP CODE_12A0B2           

CODE_12D43F:        RTS
                       
CODE_12D440:        LDA $B1,x                 
CODE_12D442:        BNE CODE_12D4B6           
CODE_12D444:        LDA $5B,x                 
CODE_12D446:        AND #$10                  
CODE_12D448:        ORA $A8,x                 
CODE_12D44A:        BEQ CODE_12D4B6           
CODE_12D44C:        LDA #$01                  
CODE_12D44E:        STA $90,x                 
CODE_12D450:        JSR CODE_129F7A           
CODE_12D453:        LDA $0441,x               
CODE_12D456:        STA $06                   
CODE_12D458:        LDA #$FF                  
CODE_12D45A:        STA $0441,x               
CODE_12D45D:        JSR CODE_12B335           
CODE_12D460:        BMI CODE_12D4B6           
CODE_12D462:        LDY $00                   
CODE_12D464:        LDA $06                   
CODE_12D466:        STA $0441,y               
CODE_12D469:        LDA $29,x                 
CODE_12D46B:        STA $0029,y               
CODE_12D46E:        LDA $15,x                 
CODE_12D470:        STA $0015,y               
CODE_12D473:        LDX $00                   
CODE_12D475:        LDA #$26                  
CODE_12D477:        STA $90,x                 
CODE_12D479:        JSR CODE_129FCA           
CODE_12D47C:        INC $B1,x                 
CODE_12D47E:        JSR CODE_129F7A           
CODE_12D481:        LDA #$04                  
CODE_12D483:        STA $0489,x               
CODE_12D486:        LDA $02F6                 
CODE_12D489:        PHA                       
CODE_12D48A:        LDA $02F7                 
CODE_12D48D:        PHA                       
CODE_12D48E:        PHX                       
CODE_12D48F:        JSL CODE_14E483           
CODE_12D493:        PLX                       
CODE_12D494:        LDA $02F8                 
CODE_12D497:        STA $02F6                 
CODE_12D49A:        LDA $02F9                 
CODE_12D49D:        STA $02F7                 
CODE_12D4A0:        JSR CODE_12D50D           
CODE_12D4A3:        PLA                       
CODE_12D4A4:        STA $02F7                 
CODE_12D4A7:        PLA                       
CODE_12D4A8:        STA $02F6                 
CODE_12D4AB:        LDX $12                   
CODE_12D4AD:        LDA $042C                 
CODE_12D4B0:        CLC                       
CODE_12D4B1:        ADC #$E5                  
CODE_12D4B3:        STA $042C                 
CODE_12D4B6:        JSR CODE_12BB16           
CODE_12D4B9:        JSR CODE_12DDAB           
CODE_12D4BC:        LDA $5B,x                 
CODE_12D4BE:        PHA                       
CODE_12D4BF:        AND #$04                  
CODE_12D4C1:        BEQ CODE_12D4C6           
CODE_12D4C3:        JSR CODE_12B659           
CODE_12D4C6:        PLA                       
CODE_12D4C7:        AND #$03                  
CODE_12D4C9:        BEQ CODE_12D4D1           
CODE_12D4CB:        JSR CODE_12C248           
CODE_12D4CE:        JSR CODE_12C1EF           
CODE_12D4D1:        INC $9F,x                 
CODE_12D4D3:        LDA $B1,x                 
CODE_12D4D5:        BNE CODE_12D507           
CODE_12D4D7:        TXA                       
CODE_12D4D8:        ASL A                     
CODE_12D4D9:        ASL A                     
CODE_12D4DA:        ASL A                     
CODE_12D4DB:        ASL A                     
CODE_12D4DC:        ADC $10                   
CODE_12D4DE:        AND #$7F                  
CODE_12D4E0:        BNE CODE_12D4E5           
CODE_12D4E2:        JSR CODE_129FCD           
CODE_12D4E5:        LDA $9F,x                 
CODE_12D4E7:        AND #$7F                  
CODE_12D4E9:        BNE CODE_12D507           
CODE_12D4EB:        JSR CODE_129FCD           
CODE_12D4EE:        JSR CODE_12B676           
CODE_12D4F1:        BMI CODE_12D507           
CODE_12D4F3:        LDA #$17                  
CODE_12D4F5:        STA $1DE3                 
CODE_12D4F8:        LDX $00                   
CODE_12D4FA:        LDA #$27                  
CODE_12D4FC:        JSR CODE_12B00D           
CODE_12D4FF:        LDX $00                   
CODE_12D501:        DEC $33,x                 
CODE_12D503:        DEC $33,x                 
CODE_12D505:        LDX $12                   
CODE_12D507:        JSR CODE_12A0AA           
CODE_12D50A:        JMP CODE_12BD29           

CODE_12D50D:        LDA $51,x                 
CODE_12D50F:        CMP #$01                  
CODE_12D511:        BEQ CODE_12D51E           
CODE_12D513:        LDA #$C1                  
CODE_12D515:        STA $65,x                 
CODE_12D517:        STA $9F,x                 
CODE_12D519:        LDA #$72                  
CODE_12D51B:        JMP CODE_12BDD5           

CODE_12D51E:        LDA $B1,x                 
CODE_12D520:        BNE CODE_12D55C           
CODE_12D522:        LDA $02F6                 
CODE_12D525:        PHA                       
CODE_12D526:        LDA $02F7                 
CODE_12D529:        PHA                       
CODE_12D52A:        LDA $042C                 
CODE_12D52D:        CLC                       
CODE_12D52E:        ADC #$F5                  
CODE_12D530:        STA $042C                 
CODE_12D533:        PHX                       
CODE_12D534:        JSL CODE_14E483           
CODE_12D538:        PLX                       
CODE_12D539:        LDA $02F8                 
CODE_12D53C:        STA $02F6                 
CODE_12D53F:        LDA $02F9                 
CODE_12D542:        STA $02F7                 
CODE_12D545:        LDA #$02                  
CODE_12D547:        STA $045C,x               
CODE_12D54A:        PHX                       
CODE_12D54B:        LDA #$78                  
CODE_12D54D:        JSR CODE_12BDD5           
CODE_12D550:        PLX                       
CODE_12D551:        STZ $045C,x               
CODE_12D554:        PLA                       
CODE_12D555:        STA $02F7                 
CODE_12D558:        PLA                       
CODE_12D559:        STA $02F6                 
CODE_12D55C:        LDA $33,x                 
CODE_12D55E:        STA $042C                 
CODE_12D561:        PHX                       
CODE_12D562:        JSR CODE_12BDC9           
CODE_12D565:        PLX                       
CODE_12D566:        LDA #$02                  
CODE_12D568:        STA $6F,x                 
CODE_12D56A:        REP #$20                  
CODE_12D56C:        LDA $02F6                 
CODE_12D56F:        CLC                       
CODE_12D570:        ADC #$0004                
CODE_12D573:        STA $02F6                 
CODE_12D576:        SEP #$20                  
CODE_12D578:        LDA $00                   
CODE_12D57A:        STA $042C                 
CODE_12D57D:        LDA #$D0                  
CODE_12D57F:        STA $046E,x               
CODE_12D582:        PHX                       
CODE_12D583:        LDA #$74                  
CODE_12D585:        JSR CODE_12BDD5           
CODE_12D588:        PLX                       
CODE_12D589:        LDA #$50                  
CODE_12D58B:        LDY $B1,x                 
CODE_12D58D:        BEQ CODE_12D591           
CODE_12D58F:        LDA #$52                  
CODE_12D591:        STA $046E,x               
CODE_12D594:        RTS
                       
CODE_12D595:        JSR CODE_129F96           
CODE_12D598:        LDA $33,x                 
CODE_12D59A:        STA $B1,x                 
CODE_12D59C:        RTS
                       
CODE_12D59D:        INC $9F,x                 
CODE_12D59F:        INC $9F,x                 
CODE_12D5A1:        INC $79,x                 
CODE_12D5A3:        LDA $79,x                 
CODE_12D5A5:        CMP #$40                  
CODE_12D5A7:        BCS CODE_12D5AE                   
CODE_12D5A9:        LDA #$E0                  
CODE_12D5AB:        STA $33,x                 
CODE_12D5AD:        RTS

CODE_12D5AE:        BNE CODE_12D5BD           
CODE_12D5B0:        LDA #$D0                  
CODE_12D5B2:        STA $47,x                 
CODE_12D5B4:        LDA $B1,x                 
CODE_12D5B6:        STA $33,x                 
CODE_12D5B8:        LDA #$49                  
CODE_12D5BA:        STA $1DE3                 
CODE_12D5BD:        LDA $79,x                 
CODE_12D5BF:        CMP #$80                  
CODE_12D5C1:        BCC CODE_12D5D1           
CODE_12D5C3:        CMP #$DC                  
CODE_12D5C5:        BCS CODE_12D5D1                   
CODE_12D5C7:        LDY #$03                  
CODE_12D5C9:        AND #$10                  
CODE_12D5CB:        BEQ CODE_12D5CF           
CODE_12D5CD:        LDY #$FB                  
CODE_12D5CF:        STY $47,x                 
CODE_12D5D1:        INC $47,x                 
CODE_12D5D3:        JSR CODE_12C1EA           
CODE_12D5D6:        LDA $79,x                 
CODE_12D5D8:        STA $07                   
CODE_12D5DA:        LDA #$29                  
CODE_12D5DC:        STA $65,x                 
CODE_12D5DE:        LDY $79,x                 
CODE_12D5E0:        CPY #$DC                  
CODE_12D5E2:        BCC CODE_12D5FC           
CODE_12D5E4:        LDA #$9E                  
CODE_12D5E6:        CPY #$F4                  
CODE_12D5E8:        BCC CODE_12D5EC           
CODE_12D5EA:        LDA #$9F                  
CODE_12D5EC:        STA $04                   
CODE_12D5EE:        JSL CODE_14E483           
CODE_12D5F2:        JSR CODE_12D73A           
CODE_12D5F5:        REP #$10                  
CODE_12D5F7:        LDX $02F8                 
CODE_12D5FA:        BRA CODE_12D612           
CODE_12D5FC:        STZ $04                   
CODE_12D5FE:        LDA #$90                  
CODE_12D600:        JSR CODE_12BDD5           
CODE_12D603:        REP #$10                  
CODE_12D605:        LDX $02F6                 
CODE_12D608:        LDA $0803,x               
CODE_12D60B:        AND #$CF                  
CODE_12D60D:        ORA #$20                  
CODE_12D60F:        STA $0803,x               
CODE_12D612:        LDA $0803,x               
CODE_12D615:        STA $05                   
CODE_12D617:        SEP #$10                  
CODE_12D619:        LDX $12                   
CODE_12D61B:        LDA $EE                   
CODE_12D61D:        BNE CODE_12D5AD           
CODE_12D61F:        STZ $ED                   
CODE_12D621:        LDA $0429                 
CODE_12D624:        CLC                       
CODE_12D625:        ADC #$04                  
CODE_12D627:        LDA $021F                 
CODE_12D62A:        ADC #$00                  
CODE_12D62C:        BEQ CODE_12D632           
CODE_12D62E:        LDA #$04                  
CODE_12D630:        STA $ED                   
CODE_12D632:        JSL CODE_14E483           
CODE_12D636:        LDA #$E0                  
CODE_12D638:        STA $02                   
CODE_12D63A:        LDA #$E4                  
CODE_12D63C:        STA $03                   
CODE_12D63E:        LDX $12                   
CODE_12D640:        LDA $33,x                 
CODE_12D642:        STA $0712                 
CODE_12D645:        LDA $1F,x                 
CODE_12D647:        STA $0713                 
CODE_12D64A:        REP #$20                  
CODE_12D64C:        LDA $0712                 
CODE_12D64F:        CLC                       
CODE_12D650:        ADC #$000F                
CODE_12D653:        STA $0712                 
CODE_12D656:        ADC #$0008                
CODE_12D659:        STA $0714                 
CODE_12D65C:        SEP #$20                  
CODE_12D65E:        PHP                       
CODE_12D65F:        JSR CODE_12D6D6           
CODE_12D662:        JSL CODE_14E483           
CODE_12D666:        LDA #$E8                  
CODE_12D668:        STA $02                   
CODE_12D66A:        LDA #$EC                  
CODE_12D66C:        STA $03                   
CODE_12D66E:        LDX $12                   
CODE_12D670:        PLP                       
CODE_12D671:        REP #$20                  
CODE_12D673:        LDA $0714                 
CODE_12D676:        ADC #$0008                
CODE_12D679:        STA $0712                 
CODE_12D67C:        ADC #$0008                
CODE_12D67F:        STA $0714                 
CODE_12D682:        SEP #$20                  
CODE_12D684:        PHP                       
CODE_12D685:        JSR CODE_12D6D6           
CODE_12D688:        JSL CODE_14E483           
CODE_12D68C:        LDA #$F0                  
CODE_12D68E:        STA $02                   
CODE_12D690:        LDA #$F4                  
CODE_12D692:        STA $03                   
CODE_12D694:        LDX $12                   
CODE_12D696:        PLP                       
CODE_12D697:        REP #$20                  
CODE_12D699:        LDA $0714                 
CODE_12D69C:        ADC #$0008                
CODE_12D69F:        STA $0712                 
CODE_12D6A2:        ADC #$0008                
CODE_12D6A5:        STA $0714                 
CODE_12D6A8:        SEP #$20                  
CODE_12D6AA:        PHP                       
CODE_12D6AB:        JSR CODE_12D6D6           
CODE_12D6AE:        JSL CODE_14E483           
CODE_12D6B2:        LDA #$F8                  
CODE_12D6B4:        STA $02                   
CODE_12D6B6:        LDA #$FC                  
CODE_12D6B8:        STA $03                   
CODE_12D6BA:        LDX $12                   
CODE_12D6BC:        PLP                       
CODE_12D6BD:        REP #$20                  
CODE_12D6BF:        LDA $0714                 
CODE_12D6C2:        ADC #$0008                
CODE_12D6C5:        STA $0712                 
CODE_12D6C8:        ADC #$0008                
CODE_12D6CB:        STA $0714                 
CODE_12D6CE:        SEP #$20                  
CODE_12D6D0:        JSR CODE_12D6D6           
CODE_12D6D3:        LDX $12                   
CODE_12D6D5:        RTS
                       
CODE_12D6D6:        REP #$20                  
CODE_12D6D8:        LDA $0712                 
CODE_12D6DB:        CMP #$00F0                
CODE_12D6DE:        SEP #$20                  
CODE_12D6E0:        BCS CODE_12D6D5                   
CODE_12D6E2:        LDA #$8E                  
CODE_12D6E4:        LDX $07                   
CODE_12D6E6:        CPX $02                   
CODE_12D6E8:        BCC CODE_12D6EC           
CODE_12D6EA:        LDA $04                   
CODE_12D6EC:        PHA                       
CODE_12D6ED:        LDA #$8E                  
CODE_12D6EF:        CPX $03                   
CODE_12D6F1:        BCC CODE_12D6F5           
CODE_12D6F3:        LDA $04                   
CODE_12D6F5:        PHA                       
CODE_12D6F6:        REP #$10                  
CODE_12D6F8:        LDY $02F8                 
CODE_12D6FB:        PLA                       
CODE_12D6FC:        STA $0806,y               
CODE_12D6FF:        PLA                       
CODE_12D700:        STA $0802,y               
CODE_12D703:        LDA $05                   
CODE_12D705:        STA $0803,y               
CODE_12D708:        STA $0807,y               
CODE_12D70B:        LDA $0429                 
CODE_12D70E:        CLC                       
CODE_12D70F:        ADC #$04                  
CODE_12D711:        STA $0800,y               
CODE_12D714:        STA $0804,y               
CODE_12D717:        LDA $0712                 
CODE_12D71A:        STA $0801,y               
CODE_12D71D:        LDA $0714                 
CODE_12D720:        STA $0805,y               
CODE_12D723:        REP #$20                  
CODE_12D725:        TYA                       
CODE_12D726:        LSR A                     
CODE_12D727:        LSR A                     
CODE_12D728:        TAY                       
CODE_12D729:        SEP #$20                  
CODE_12D72B:        LDA $ED                   
CODE_12D72D:        AND #$04                  
CODE_12D72F:        LSR A                     
CODE_12D730:        LSR A                     
CODE_12D731:        STA $0A20,y               
CODE_12D734:        STA $0A21,y               
CODE_12D737:        SEP #$10                  
CODE_12D739:        RTS
                       
CODE_12D73A:        JSR CODE_12D741           
CODE_12D73D:        JSL CODE_14E483           
CODE_12D741:        REP #$10                  
CODE_12D743:        LDY $02F8                 
CODE_12D746:        LDA $0429                 
CODE_12D749:        STA $0800,y               
CODE_12D74C:        CLC                       
CODE_12D74D:        ADC #$08                  
CODE_12D74F:        STA $0804,y               
CODE_12D752:        LDA $042C                 
CODE_12D755:        STA $0801,y               
CODE_12D758:        STA $0805,y               
CODE_12D75B:        LDA $04                   
CODE_12D75D:        STA $0802,y               
CODE_12D760:        STA $0806,y               
CODE_12D763:        LDX #$0000                
CODE_12D766:        LDA $10                   
CODE_12D768:        AND #$04                  
CODE_12D76A:        BEQ CODE_12D76F           
CODE_12D76C:        LDX #$0040                
CODE_12D76F:        TXA                       
CODE_12D770:        ORA #$03                  
CODE_12D772:        STA $0803,y               
CODE_12D775:        STA $0807,y               
CODE_12D778:        REP #$20                  
CODE_12D77A:        TYA                       
CODE_12D77B:        LSR A                     
CODE_12D77C:        LSR A                     
CODE_12D77D:        TAY                       
CODE_12D77E:        SEP #$20                  
CODE_12D780:        LDA $ED                   
CODE_12D782:        AND #$08                  
CODE_12D784:        LSR A                     
CODE_12D785:        LSR A                     
CODE_12D786:        LSR A                     
CODE_12D787:        STA $0A20,y               
CODE_12D78A:        LDA $ED                   
CODE_12D78C:        AND #$04                  
CODE_12D78E:        LSR A                     
CODE_12D78F:        LSR A                     
CODE_12D790:        STA $0A21,y               
CODE_12D793:        SEP #$10                  
CODE_12D795:        RTS
                       
CODE_12D796:        INC $9F,x                 
CODE_12D798:        JSR CODE_12BB16           
CODE_12D79B:        JSR CODE_12BA46           
CODE_12D79E:        JSR CODE_12DDAB           
CODE_12D7A1:        LDA $5B,x                 
CODE_12D7A3:        AND #$03                  
CODE_12D7A5:        BEQ CODE_12D7AA           
CODE_12D7A7:        JSR CODE_12C248           
CODE_12D7AA:        LDA $5B,x                 
CODE_12D7AC:        AND #$04                  
CODE_12D7AE:        BEQ CODE_12D7D1           
CODE_12D7B0:        LDA $47,x                 
CODE_12D7B2:        PHA                       
CODE_12D7B3:        JSR CODE_12B659           
CODE_12D7B6:        PLA                       
CODE_12D7B7:        LDY $042F,x               
CODE_12D7BA:        BEQ CODE_12D7D1           
CODE_12D7BC:        CMP #$18                  
CODE_12D7BE:        BMI CODE_12D7C9           
CODE_12D7C0:        JSR CODE_12B63B           
CODE_12D7C3:        LDA #$F0                  
CODE_12D7C5:        STA $47,x                 
CODE_12D7C7:        BNE CODE_12D7F7           
CODE_12D7C9:        LDA #$00                  
CODE_12D7CB:        STA $042F,x               
CODE_12D7CE:        JSR CODE_129F7A           
CODE_12D7D1:        LDA $0E                   
CODE_12D7D3:        CMP #$26                  
CODE_12D7D5:        BEQ CODE_12D7DC           
CODE_12D7D7:        DEC $9F,x                 
CODE_12D7D9:        JMP CODE_12B4D4           

CODE_12D7DC:        JSR CODE_12C1DA           
CODE_12D7DF:        INY                       
CODE_12D7E0:        STY $6F,x                 
CODE_12D7E2:        LDA $10                   
CODE_12D7E4:        AND #$01                  
CODE_12D7E6:        BNE CODE_12D7F7           
CODE_12D7E8:        LDA $3D,x                 
CODE_12D7EA:        CMP.w DATA_119B0F,y               
CODE_12D7ED:        BEQ CODE_12D7F7           
CODE_12D7EF:        CLC                       
CODE_12D7F0:        ADC.w DATA_119B11,y               
CODE_12D7F3:        STA $3D,x                 
CODE_12D7F5:        INC $9F,x                 
CODE_12D7F7:        JSR CODE_12A0AA           
CODE_12D7FA:        INC $04A4,x               
CODE_12D7FD:        JMP CODE_12BD29           

CODE_12D800:        JSR CODE_12AC78           
CODE_12D803:        LDA #$03                  
CODE_12D805:        STA $0465,x               
CODE_12D808:        RTS
                       
CODE_12D809:        JSR CODE_12D8FE           
CODE_12D80C:        LDA #$06                  
CODE_12D80E:        STA $046E,x               
CODE_12D811:        LDA #$02                  
CODE_12D813:        STA $1238                 
CODE_12D816:        LDA $04B5                 
CODE_12D819:        BEQ CODE_12D875           
CODE_12D81B:        CMP #$01                  
CODE_12D81D:        BNE CODE_12D831           
CODE_12D81F:        STA $0480,x               
CODE_12D822:        LDA #$90                  
CODE_12D824:        STA $86,x                 
CODE_12D826:        LDA #$40                  
CODE_12D828:        STA $0438,x               
CODE_12D82B:        STA $045C,x               
CODE_12D82E:        STA $04B5                 
CODE_12D831:        LDA $0480,x               
CODE_12D834:        CMP #$02                  
CODE_12D836:        BCC CODE_12D8B1           
CODE_12D838:        LDA $B1,x                 
CODE_12D83A:        BNE CODE_12D850           
CODE_12D83C:        INC $0480,x               
CODE_12D83F:        LDA $0480,x               
CODE_12D842:        CMP #$31                  
CODE_12D844:        BNE CODE_12D876           
CODE_12D846:        LDA $0453,x               
CODE_12D849:        BNE CODE_12D850           
CODE_12D84B:        INC $B1,x                 
CODE_12D84D:        JSR CODE_12D8AB           
CODE_12D850:        DEC $0480,x               
CODE_12D853:        LDY $0480,x               
CODE_12D856:        DEY                       
CODE_12D857:        BNE CODE_12D876           
CODE_12D859:        DEC $B1,x                 
CODE_12D85B:        LDA $50                   
CODE_12D85D:        CMP #$06                  
CODE_12D85F:        BNE CODE_12D876           
CODE_12D861:        LDA #$01                  
CODE_12D863:        STA $0536                 
CODE_12D866:        JSL CODE_14E35A           
CODE_12D86A:        LDA #$09                  
CODE_12D86C:        STA $14                   
CODE_12D86E:        INC $0627                 
CODE_12D871:        PLA                       
CODE_12D872:        PLA                       
CODE_12D873:        PLA                       
CODE_12D874:        PLA                       
CODE_12D875:        RTS
                       
CODE_12D876:        LDA $0480,x               
CODE_12D879:        CMP #$30                  
CODE_12D87B:        BNE CODE_12D8B0           
CODE_12D87D:        LDA $5B,x                 
CODE_12D87F:        AND #$40                  
CODE_12D881:        BEQ CODE_12D8B0           
CODE_12D883:        LDA $9C                   
CODE_12D885:        BNE CODE_12D8B0           
CODE_12D887:        STA $5A                   
CODE_12D889:        INC $B1,x                 
CODE_12D88B:        INC $04B4                 
CODE_12D88E:        DEC $0480,x               
CODE_12D891:        LDA $29,x                 
CODE_12D893:        STA $28                   
CODE_12D895:        LDA $15,x                 
CODE_12D897:        STA $14                   
CODE_12D899:        LDA $33,x                 
CODE_12D89B:        ADC #$10                  
CODE_12D89D:        STA $32                   
CODE_12D89F:        LDA #$06                  
CODE_12D8A1:        STA $50                   
CODE_12D8A3:        LDA #$60                  
CODE_12D8A5:        STA $82                   
CODE_12D8A7:        LDA #$FC                  
CODE_12D8A9:        STA $46                   
CODE_12D8AB:        LDA #$2D                  
CODE_12D8AD:        STA $1DE0                 
CODE_12D8B0:        RTS
                       
CODE_12D8B1:        LDA #$03                  
CODE_12D8B3:        STA $046E,x               
CODE_12D8B6:        LDA #$00                  
CODE_12D8B8:        STA $1238                 
CODE_12D8BB:        LDA $0465,x               
CODE_12D8BE:        BNE CODE_12D8D2           
CODE_12D8C0:        LDA #$03                  
CODE_12D8C2:        STA $0465,x               
CODE_12D8C5:        LDA #$2C                  
CODE_12D8C7:        STA $1DE0                 
CODE_12D8CA:        INC $0480,x               
CODE_12D8CD:        LDA #$FF                  
CODE_12D8CF:        STA $0453,x               
CODE_12D8D2:        LDA $10                   
CODE_12D8D4:        LSR A                     
CODE_12D8D5:        BCC CODE_12D8FB           
CODE_12D8D7:        LDA $79,x                 
CODE_12D8D9:        AND #$01                  
CODE_12D8DB:        TAY                       
CODE_12D8DC:        LDA $47,x                 
CODE_12D8DE:        CLC                       
CODE_12D8DF:        ADC.w DATA_119826,y               
CODE_12D8E2:        STA $47,x                 
CODE_12D8E4:        CMP.w DATA_119B16,y               
CODE_12D8E7:        BNE CODE_12D8EB           
CODE_12D8E9:        INC $79,x                 
CODE_12D8EB:        JSR CODE_12C1DA           
CODE_12D8EE:        LDA $3D,x                 
CODE_12D8F0:        CMP.w DATA_119B14,y               
CODE_12D8F3:        BEQ CODE_12D8FB           
CODE_12D8F5:        CLC                       
CODE_12D8F6:        ADC.w DATA_119822,y               
CODE_12D8F9:        STA $3D,x                 
CODE_12D8FB:        JMP CODE_12B497           

CODE_12D8FE:        LDA $0480,x               
CODE_12D901:        JSR CODE_12AD41           
CODE_12D904:        LDA $04B5                 ;\If crystal ball has not been collected
CODE_12D907:        BEQ CODE_12D90F           ;/
CODE_12D909:        CMP #$01                  ;\If collected
CODE_12D90B:        BEQ CODE_12D90F           ;/
CODE_12D90D:        BRA CODE_12D912           

CODE_12D90F:        BRL CODE_12DAF1           

CODE_12D912:        LDA $02F8                 
CODE_12D915:        STA $02F6                 
CODE_12D918:        LDA $02F9                 
CODE_12D91B:        STA $02F7                 
CODE_12D91E:        LDA $86,x                 
CODE_12D920:        STA $07                   
CODE_12D922:        JSL CODE_14E483           
CODE_12D926:        LDX $02                   
CODE_12D928:        LDA $021F                 
CODE_12D92B:        XBA                       
CODE_12D92C:        LDA $0429                 
CODE_12D92F:        REP #$20                  
CODE_12D931:        STA $0712                 
CODE_12D934:        LDA.w DATA_119B17,x               
CODE_12D937:        AND #$00FF                
CODE_12D93A:        CMP #$0080                
CODE_12D93D:        BCC CODE_12D942           
CODE_12D93F:        ORA #$FF00                
CODE_12D942:        CLC                       
CODE_12D943:        ADC $0712                 
CODE_12D946:        STA $0714                 
CODE_12D949:        SEP #$20                  
CODE_12D94B:        PHA                       
CODE_12D94C:        PHP                       
CODE_12D94D:        DEX                       
CODE_12D94E:        BEQ CODE_12D954           
CODE_12D950:        PLA                       
CODE_12D951:        EOR #$01                  
CODE_12D953:        PHA                       
CODE_12D954:        PLP                       
CODE_12D955:        PLA                       
CODE_12D956:        REP #$10                  
CODE_12D958:        LDY $02F8                 
CODE_12D95B:        STA $0800,y               
CODE_12D95E:        STA $0804,y               
CODE_12D961:        STA $0712                 
CODE_12D964:        LDX #$0060                
CODE_12D967:        LDA $0801,x               
CODE_12D96A:        STA $0801,y               
CODE_12D96D:        CLC                       
CODE_12D96E:        ADC #$08                  
CODE_12D970:        STA $0805,y               
CODE_12D973:        LDA $0803,x               
CODE_12D976:        STA $0716                 
CODE_12D979:        LDA $07                   
CODE_12D97B:        BEQ CODE_12D987           
CODE_12D97D:        LDA $0716                 
CODE_12D980:        AND #$CF                  
CODE_12D982:        ORA #$10                  
CODE_12D984:        STA $0716                 
CODE_12D987:        LDA $0716                 
CODE_12D98A:        ORA #$01                  
CODE_12D98C:        STA $0803,y               
CODE_12D98F:        STA $0807,y               
CODE_12D992:        LDA #$AE                  
CODE_12D994:        STA $0802,y               
CODE_12D997:        LDA #$BE                  
CODE_12D999:        STA $0806,y               
CODE_12D99C:        REP #$20                  
CODE_12D99E:        TYA                       
CODE_12D99F:        LSR A                     
CODE_12D9A0:        LSR A                     
CODE_12D9A1:        TAY                       
CODE_12D9A2:        SEP #$20                  
CODE_12D9A4:        LDA $0715                 
CODE_12D9A7:        BEQ CODE_12D9AB           
CODE_12D9A9:        LDA #$01                  
CODE_12D9AB:        STA $0A20,y               
CODE_12D9AE:        STA $0A21,y               
CODE_12D9B1:        JSL CODE_14E483           
CODE_12D9B5:        REP #$10                  
CODE_12D9B7:        LDX #$0060                
CODE_12D9BA:        LDY $02F8                 
CODE_12D9BD:        LDA $0712                 
CODE_12D9C0:        STA $0800,y               
CODE_12D9C3:        STA $0804,y               
CODE_12D9C6:        LDA $0801,x               
CODE_12D9C9:        CLC                       
CODE_12D9CA:        ADC #$10                  
CODE_12D9CC:        STA $0801,y               
CODE_12D9CF:        CLC                       
CODE_12D9D0:        ADC #$08                  
CODE_12D9D2:        STA $0805,y               
CODE_12D9D5:        LDA $0716                 
CODE_12D9D8:        ORA #$01                  
CODE_12D9DA:        STA $0803,y               
CODE_12D9DD:        STA $0807,y               
CODE_12D9E0:        LDA #$AF                  
CODE_12D9E2:        STA $0802,y               
CODE_12D9E5:        LDA #$BF                  
CODE_12D9E7:        STA $0806,y               
CODE_12D9EA:        REP #$20                  
CODE_12D9EC:        TYA                       
CODE_12D9ED:        LSR A                     
CODE_12D9EE:        LSR A                     
CODE_12D9EF:        TAY                       
CODE_12D9F0:        SEP #$20                  
CODE_12D9F2:        LDA $0715                 
CODE_12D9F5:        BEQ CODE_12D9F9           
CODE_12D9F7:        LDA #$01                  
CODE_12D9F9:        STA $0A20,y               
CODE_12D9FC:        STA $0A21,y               
CODE_12D9FF:        JSL CODE_14E483           
CODE_12DA03:        REP #$10                  
CODE_12DA05:        LDX #$0060                
CODE_12DA08:        LDY $02F8                 
CODE_12DA0B:        LDA $0712                 
CODE_12DA0E:        STA $0800,y               
CODE_12DA11:        LDA $0801,x               
CODE_12DA14:        CLC                       
CODE_12DA15:        ADC #$20                  
CODE_12DA17:        STA $0801,y               
CODE_12DA1A:        LDA #$BF                  
CODE_12DA1C:        STA $0802,y               
CODE_12DA1F:        LDA $0716                 
CODE_12DA22:        ORA #$01                  
CODE_12DA24:        STA $0803,y               
CODE_12DA27:        REP #$20                  
CODE_12DA29:        LDA $12                   
CODE_12DA2B:        AND #$00FF                
CODE_12DA2E:        TAX                       
CODE_12DA2F:        SEP #$20                  
CODE_12DA31:        LDA $0480,x               
CODE_12DA34:        CMP #$02                  
CODE_12DA36:        BCS CODE_12DA3D                   
CODE_12DA38:        LDA #$F0                  
CODE_12DA3A:        STA $0801,y               
CODE_12DA3D:        REP #$20                  
CODE_12DA3F:        TYA                       
CODE_12DA40:        LSR A                     
CODE_12DA41:        LSR A                     
CODE_12DA42:        TAY                       
CODE_12DA43:        SEP #$20                  
CODE_12DA45:        LDA $0715                 
CODE_12DA48:        BEQ CODE_12DA4C           
CODE_12DA4A:        LDA #$01                  
CODE_12DA4C:        STA $0A20,y               
CODE_12DA4F:        JSL CODE_14E483           
CODE_12DA53:        REP #$10                  
CODE_12DA55:        LDX #$0060                
CODE_12DA58:        LDY $02F8                 
CODE_12DA5B:        LDA $0712                 
CODE_12DA5E:        STA $0800,y               
CODE_12DA61:        STA $0804,y               
CODE_12DA64:        LDA $0803,x               
CODE_12DA67:        STA $0716                 
CODE_12DA6A:        LDA $07                   
CODE_12DA6C:        BEQ CODE_12DA78           
CODE_12DA6E:        LDA $0803,x               
CODE_12DA71:        AND #$CF                  
CODE_12DA73:        ORA #$10                  
CODE_12DA75:        STA $0716                 
CODE_12DA78:        LDA $0716                 
CODE_12DA7B:        ORA #$01                  
CODE_12DA7D:        STA $0803,y               
CODE_12DA80:        STA $0807,y               
CODE_12DA83:        STA $0716                 
CODE_12DA86:        LDX #$0068                
CODE_12DA89:        LDA $0801,x               
CODE_12DA8C:        CLC                       
CODE_12DA8D:        ADC #$08                  
CODE_12DA8F:        STA $0801,y               
CODE_12DA92:        CLC                       
CODE_12DA93:        ADC #$08                  
CODE_12DA95:        STA $0805,y               
CODE_12DA98:        LDA #$AF                  
CODE_12DA9A:        STA $0802,y               
CODE_12DA9D:        LDA #$BF                  
CODE_12DA9F:        STA $0806,y               
CODE_12DAA2:        REP #$20                  
CODE_12DAA4:        TYA                       
CODE_12DAA5:        LSR A                     
CODE_12DAA6:        LSR A                     
CODE_12DAA7:        TAY                       
CODE_12DAA8:        SEP #$20                  
CODE_12DAAA:        LDA $0715                 
CODE_12DAAD:        BEQ CODE_12DAB1           
CODE_12DAAF:        LDA #$01                  
CODE_12DAB1:        STA $0A20,y               
CODE_12DAB4:        STA $0A21,y               
CODE_12DAB7:        JSL CODE_14E483           
CODE_12DABB:        REP #$10                  
CODE_12DABD:        LDX #$0068                
CODE_12DAC0:        LDY $02F8                 
CODE_12DAC3:        LDA $0712                 
CODE_12DAC6:        STA $0800,y               
CODE_12DAC9:        LDA $0801,x               
CODE_12DACC:        CLC                       
CODE_12DACD:        ADC #$18                  
CODE_12DACF:        STA $0801,y               
CODE_12DAD2:        LDA #$8F                  
CODE_12DAD4:        STA $0802,y               
CODE_12DAD7:        LDA $0716                 
CODE_12DADA:        ORA #$01                  
CODE_12DADC:        STA $0803,y               
CODE_12DADF:        REP #$20                  
CODE_12DAE1:        TYA                       
CODE_12DAE2:        LSR A                     
CODE_12DAE3:        LSR A                     
CODE_12DAE4:        TAY                       
CODE_12DAE5:        SEP #$20                  
CODE_12DAE7:        LDA $0715                 
CODE_12DAEA:        BEQ CODE_12DAEE           
CODE_12DAEC:        LDA #$01                  
CODE_12DAEE:        STA $0A20,y               
CODE_12DAF1:        SEP #$10                  
CODE_12DAF3:        LDX $12                   
CODE_12DAF5:        RTS
                       
CODE_12DAF6:        LDA $9C                   
CODE_12DAF8:        BNE CODE_12DB42           
CODE_12DAFA:        LDA $10                   
CODE_12DAFC:        AND #$FF                  
CODE_12DAFE:        BNE CODE_12DB42           
CODE_12DB00:        INC $04FA                 
CODE_12DB03:        JSR CODE_12B331           
CODE_12DB06:        BMI CODE_12DB42           
CODE_12DB08:        LDX $00                   
CODE_12DB0A:        LDA $04FA                 
CODE_12DB0D:        AND #$07                  
CODE_12DB0F:        TAY                       
CODE_12DB10:        LDA.w DATA_119B22,y               
CODE_12DB13:        STA $3D,x                 
CODE_12DB15:        TYA                       
CODE_12DB16:        AND #$03                  
CODE_12DB18:        TAY                       
CODE_12DB19:        LDA #$02                  
CODE_12DB1B:        STA $15,x                 
CODE_12DB1D:        LDA.w DATA_119B1A,y               
CODE_12DB20:        STA $29,x                 
CODE_12DB22:        LDA.w DATA_119B1E,y               
CODE_12DB25:        STA $33,x                 
CODE_12DB27:        LDA #$00                  
CODE_12DB29:        STA $1F,x                 
CODE_12DB2B:        LDA $0587                 
CODE_12DB2E:        AND #$03                  
CODE_12DB30:        CMP #$02                  
CODE_12DB32:        BCC CODE_12DB37           
CODE_12DB34:        ASL A                     
CODE_12DB35:        STA $B1,x                 
CODE_12DB37:        LDY #$33                  
CODE_12DB39:        STY $90,x                 
CODE_12DB3B:        JSR CODE_129F7A           
CODE_12DB3E:        LDA #$D0                  
CODE_12DB40:        STA $47,x                 
CODE_12DB42:        RTS
                       
CODE_12DB43:        JSR CODE_129F96           
CODE_12DB46:        LDA #$06                  
CODE_12DB48:        STA $0465,x               
CODE_12DB4B:        LDA $15,x                 
CODE_12DB4D:        STA $04F0,x               
CODE_12DB50:        RTS
                       
CODE_12DB51:        LDA $B1,x                 
CODE_12DB53:        BNE CODE_12DBC8           
CODE_12DB55:        LDA $0465,x               
CODE_12DB58:        BNE CODE_12DB62           
CODE_12DB5A:        LDA #$80                  
CODE_12DB5C:        STA $86,x                 
CODE_12DB5E:        STA $B1,x                 
CODE_12DB60:        BNE CODE_12DBC5           
CODE_12DB62:        INC $79,x                 
CODE_12DB64:        LDA $10                   
CODE_12DB66:        AND #$FF                  
CODE_12DB68:        BNE CODE_12DB71           
CODE_12DB6A:        LDA #$5F                  
CODE_12DB6C:        STA $86,x                 
CODE_12DB6E:        INC $0480,x               
CODE_12DB71:        LDA #$00                  
CODE_12DB73:        STA $3D,x                 
CODE_12DB75:        LDA $79,x                 
CODE_12DB77:        AND #$40                  
CODE_12DB79:        BEQ CODE_12DB88           
CODE_12DB7B:        INC $0477,x               
CODE_12DB7E:        LDA #$F8                  
CODE_12DB80:        LDY $79,x                 
CODE_12DB82:        BPL CODE_12DB86           
CODE_12DB84:        LDA #$08                  
CODE_12DB86:        STA $3D,x                 
CODE_12DB88:        JSR CODE_12C1EF           
CODE_12DB8B:        LDA $045C,x               
CODE_12DB8E:        BNE CODE_12DBC5           
CODE_12DB90:        LDA $86,x                 
CODE_12DB92:        BEQ CODE_12DBC5           
CODE_12DB94:        AND #$0F                  
CODE_12DB96:        BNE CODE_12DBC5           
CODE_12DB98:        JSR CODE_12B335           
CODE_12DB9B:        BMI CODE_12DBC5           
CODE_12DB9D:        LDA #$46                  
CODE_12DB9F:        STA $1DE3                 
CODE_12DBA2:        LDA $0480,x               
CODE_12DBA5:        AND #$03                  
CODE_12DBA7:        TAY                       
CODE_12DBA8:        LDA $86,x                 
CODE_12DBAA:        LDX $00                   
CODE_12DBAC:        LSR A                     
CODE_12DBAD:        EOR #$FF                  
CODE_12DBAF:        STA $3D,x                 
CODE_12DBB1:        LDA.w DATA_119B2A,y               
CODE_12DBB4:        STA $47,x                 
CODE_12DBB6:        LDA #$11                  
CODE_12DBB8:        STA $90,x                 
CODE_12DBBA:        LDA $33,x                 
CODE_12DBBC:        ADC #$08                  
CODE_12DBBE:        STA $33,x                 
CODE_12DBC0:        JSR CODE_129F7A           
CODE_12DBC3:        LDX $12                   
CODE_12DBC5:        JMP CODE_12BD29           

CODE_12DBC8:        LDA $86,x                 
CODE_12DBCA:        BEQ CODE_12DBE3           
CODE_12DBCC:        STA $045C,x               
CODE_12DBCF:        CMP #$01                  
CODE_12DBD1:        BNE CODE_12DBD7           
CODE_12DBD3:        JSL CODE_13DCC2           
CODE_12DBD7:        INC $0477,x               
CODE_12DBDA:        INC $0477,x               
CODE_12DBDD:        LDA #$F0                  
CODE_12DBDF:        STA $47,x                 
CODE_12DBE1:        BNE CODE_12DC19           
CODE_12DBE3:        LDA #$04                  
CODE_12DBE5:        STA $3D,x                 
CODE_12DBE7:        JSR CODE_12C1EF           
CODE_12DBEA:        JSR CODE_12C1EA           
CODE_12DBED:        LDA $10                   
CODE_12DBEF:        LSR A                     
CODE_12DBF0:        BCS CODE_12DC0F                   
CODE_12DBF2:        INC $47,x                 
CODE_12DBF4:        BMI CODE_12DC0F           
CODE_12DBF6:        LDA $10                   
CODE_12DBF8:        AND #$1F                  
CODE_12DBFA:        BNE CODE_12DC0F           
CODE_12DBFC:        JSR CODE_12B335           
CODE_12DBFF:        LDX $00                   
CODE_12DC01:        LDA $33,x                 
CODE_12DC03:        ADC #$08                  
CODE_12DC05:        STA $33,x                 
CODE_12DC07:        JSR CODE_12B1F9           
CODE_12DC0A:        LDA #$20                  
CODE_12DC0C:        STA $1DE3                 
CODE_12DC0F:        LDA $33,x                 
CODE_12DC11:        CMP #$D0                  
CODE_12DC13:        BCC CODE_12DC19           
CODE_12DC15:        LDA #$02                  
CODE_12DC17:        STA $51,x                 
CODE_12DC19:        JMP CODE_12BD29           

CODE_12DC1C:        INC $9F,x                 
CODE_12DC1E:        JSR CODE_12C1EF           
CODE_12DC21:        JSR CODE_12C1EA           
CODE_12DC24:        INC $47,x                 
CODE_12DC26:        JMP CODE_12BD29           

CODE_12DC29:        RTS
                       
CODE_12DC2A:        REP #$20                  
CODE_12DC2C:        LDA $02F6                 
CODE_12DC2F:        STA $126C                 
CODE_12DC32:        STA $1274                 
CODE_12DC35:        SEP #$20                  
CODE_12DC37:        LDA $10                   
CODE_12DC39:        AND #$03                  
CODE_12DC3B:        ASL A                     
CODE_12DC3C:        STA $07                   
CODE_12DC3E:        TAY                       
CODE_12DC3F:        REP #$20                  
CODE_12DC41:        LDA $1268,y               
CODE_12DC44:        STA $02F6                 
CODE_12DC47:        SEP #$20                  
CODE_12DC49:        LDA $EE                   
CODE_12DC4B:        BNE CODE_12DC29           
CODE_12DC4D:        LDY $0465,x               
CODE_12DC50:        BNE CODE_12DC56           
CODE_12DC52:        LDA #$4E                  
CODE_12DC54:        STA $65,x                 
CODE_12DC56:        LDA $ED                   
CODE_12DC58:        PHA                       
CODE_12DC59:        PHA                       
CODE_12DC5A:        LDY #$AC                  
CODE_12DC5C:        LDA $B1,x                 
CODE_12DC5E:        BNE CODE_12DC6F           
CODE_12DC60:        LDA $045C,x               
CODE_12DC63:        BEQ CODE_12DC72           
CODE_12DC65:        CMP #$30                  
CODE_12DC67:        BCS CODE_12DC6F                   
CODE_12DC69:        AND #$08                  
CODE_12DC6B:        BNE CODE_12DC6F           
CODE_12DC6D:        LDY #$9C                  
CODE_12DC6F:        TYA                       
CODE_12DC70:        BNE CODE_12DC7A           
CODE_12DC72:        LDA #$9C                  
CODE_12DC74:        LDY $86,x                 
CODE_12DC76:        BEQ CODE_12DC7A           
CODE_12DC78:        LDA #$A0                  
CODE_12DC7A:        JSR CODE_12BDD5           
CODE_12DC7D:        LDA $00                   
CODE_12DC7F:        STA $042C                 
CODE_12DC82:        REP #$20                  
CODE_12DC84:        LDY $07                   
CODE_12DC86:        LDA $126A,y               
CODE_12DC89:        STA $02F6                 
CODE_12DC8C:        SEP #$20                  
CODE_12DC8E:        LDY #$A4                  
CODE_12DC90:        LDA $B1,x                 
CODE_12DC92:        BNE CODE_12DCA7           
CODE_12DC94:        LDA $045C,x               
CODE_12DC97:        BEQ CODE_12DCA3           
CODE_12DC99:        CMP #$30                  
CODE_12DC9B:        BCS CODE_12DCA7                   
CODE_12DC9D:        AND #$08                  
CODE_12DC9F:        BNE CODE_12DCA7           
CODE_12DCA1:        BEQ CODE_12DCA9           
CODE_12DCA3:        LDA $86,x                 
CODE_12DCA5:        BEQ CODE_12DCA9           
CODE_12DCA7:        LDY #$A8                  
CODE_12DCA9:        PLA                       
CODE_12DCAA:        STA $ED                   
CODE_12DCAC:        TYA                       
CODE_12DCAD:        JSR CODE_12BDD5           
CODE_12DCB0:        LDA $00                   
CODE_12DCB2:        STA $042C                 
CODE_12DCB5:        REP #$20                  
CODE_12DCB7:        LDY $07                   
CODE_12DCB9:        LDA $126C,y               
CODE_12DCBC:        STA $02F6                 
CODE_12DCBF:        SEP #$20                  
CODE_12DCC1:        LDY #$B8                  
CODE_12DCC3:        LDA $3D,x                 
CODE_12DCC5:        BEQ CODE_12DCD2           
CODE_12DCC7:        LDY #$B0                  
CODE_12DCC9:        LDA $0477,x               
CODE_12DCCC:        AND #$10                  
CODE_12DCCE:        BEQ CODE_12DCD2           
CODE_12DCD0:        LDY #$B4                  
CODE_12DCD2:        PLA                       
CODE_12DCD3:        STA $ED                   
CODE_12DCD5:        TYA                       
CODE_12DCD6:        JSR CODE_12BDD5           
CODE_12DCD9:        LDA $ED                   
CODE_12DCDB:        BEQ CODE_12DCE0           
CODE_12DCDD:        BRL CODE_12DD70           

CODE_12DCE0:        REP #$30                  
CODE_12DCE2:        LDA $07                   
CODE_12DCE4:        AND #$00FF                
CODE_12DCE7:        TAY                       
CODE_12DCE8:        LDX $126C,y               
CODE_12DCEB:        LDA $126E,y               
CODE_12DCEE:        TAY                       
CODE_12DCEF:        SEP #$20                  
CODE_12DCF1:        LDA $0429                 
CODE_12DCF4:        CLC                       
CODE_12DCF5:        ADC #$20                  
CODE_12DCF7:        BCS CODE_12DD70                   
CODE_12DCF9:        STA $0800,y               
CODE_12DCFC:        STA $0804,y               
CODE_12DCFF:        STA $0712                 
CODE_12DD02:        LDA $00                   
CODE_12DD04:        SBC #$2F                  
CODE_12DD06:        STA $0801,y               
CODE_12DD09:        ADC #$0F                  
CODE_12DD0B:        STA $0805,y               
CODE_12DD0E:        ADC #$10                  
CODE_12DD10:        STA $0713                 
CODE_12DD13:        LDA $0803,x               
CODE_12DD16:        STA $0803,y               
CODE_12DD19:        STA $0807,y               
CODE_12DD1C:        STA $0714                 
CODE_12DD1F:        LDA #$C4                  
CODE_12DD21:        STA $0802,y               
CODE_12DD24:        LDA #$CA                  
CODE_12DD26:        STA $0806,y               
CODE_12DD29:        REP #$20                  
CODE_12DD2B:        TYA                       
CODE_12DD2C:        LSR A                     
CODE_12DD2D:        LSR A                     
CODE_12DD2E:        TAY                       
CODE_12DD2F:        SEP #$20                  
CODE_12DD31:        LDA $ED                   
CODE_12DD33:        AND #$04                  
CODE_12DD35:        LSR A                     
CODE_12DD36:        LSR A                     
CODE_12DD37:        ORA #$02                  
CODE_12DD39:        STA $0A20,y               
CODE_12DD3C:        STA $0A21,y               
CODE_12DD3F:        STA $0715                 
CODE_12DD42:        JSL CODE_14E483           
CODE_12DD46:        REP #$10                  
CODE_12DD48:        LDY $02F8                 
CODE_12DD4B:        LDA $0712                 
CODE_12DD4E:        STA $0800,y               
CODE_12DD51:        LDA $0713                 
CODE_12DD54:        STA $0801,y               
CODE_12DD57:        LDA #$E0                  
CODE_12DD59:        STA $0802,y               
CODE_12DD5C:        LDA $0714                 
CODE_12DD5F:        STA $0803,y               
CODE_12DD62:        REP #$20                  
CODE_12DD64:        TYA                       
CODE_12DD65:        LSR A                     
CODE_12DD66:        LSR A                     
CODE_12DD67:        TAY                       
CODE_12DD68:        SEP #$20                  
CODE_12DD6A:        LDA $0715                 
CODE_12DD6D:        STA $0A20,y               
CODE_12DD70:        SEP #$10                  
CODE_12DD72:        LDX $12                   
CODE_12DD74:        RTS
                       
DATA_12DD75:        db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ; \ Empty.
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF                          ; /
          
CODE_12DD90:        JSR CODE_12DE5A             
CODE_12DD93:        TAY                       
CODE_12DD94:        LDA $46,x              
CODE_12DD96:        BMI CODE_12DD99                   
CODE_12DD98:        INY               
CODE_12DD99:        JSR CODE_12E445           
CODE_12DD9C:        BCS CODE_12DDA5                   
CODE_12DD9E:        LDA $00                   
CODE_12DDA0:        CMP #$82                  
CODE_12DDA2:        BEQ CODE_12DDA5           
CODE_12DDA4:        CLC                       
CODE_12DDA5:        DEX                       
CODE_12DDA6:        RTS
                       
CODE_12DDA7:        LDA #$04                  
CODE_12DDA9:        BNE CODE_12DDAD           

CODE_12DDAB:        LDA #$00                  
CODE_12DDAD:        STA $07                   
CODE_12DDAF:        STZ $0B                   
CODE_12DDB1:        STZ $0E                   
CODE_12DDB3:        JSR CODE_12DE5A           
CODE_12DDB6:        STA $08                   
CODE_12DDB8:        LDA $46,x                 
CODE_12DDBA:        BPL CODE_12DDC5           
CODE_12DDBC:        JSR CODE_12DE38           
CODE_12DDBF:        INC $07                   
CODE_12DDC1:        INC $08                   
CODE_12DDC3:        BNE CODE_12DE27           
CODE_12DDC5:        INC $07                   
CODE_12DDC7:        INC $08                   
CODE_12DDC9:        JSR CODE_12DE38           
CODE_12DDCC:        LDA $8F,x                 
CODE_12DDCE:        CMP #$18                  
CODE_12DDD0:        BEQ CODE_12DDEC           
CODE_12DDD2:        CMP #$19                  
CODE_12DDD4:        BEQ CODE_12DDEC           
CODE_12DDD6:        LDA $00                   
CODE_12DDD8:        SEC                       
CODE_12DDD9:        SBC #$92                  
CODE_12DDDB:        CMP #$02                  
CODE_12DDDD:        BCS CODE_12DDEC                   
CODE_12DDDF:        ASL A                     
CODE_12DDE0:        ADC #$01                  
CODE_12DDE2:        STA $46,x                 
CODE_12DDE4:        LDA #$07                  
CODE_12DDE6:        STA $50,x                 
CODE_12DDE8:        LDA #$FF                  
CODE_12DDEA:        STA $85,x                 
CODE_12DDEC:        LDA $00                   
CODE_12DDEE:        STA $0E                   
CODE_12DDF0:        SEC                       
CODE_12DDF1:        SBC #$60                  
CODE_12DDF3:        CMP #$02                  
CODE_12DDF5:        BCS CODE_12DE27                   
CODE_12DDF7:        LDY $0437,x               
CODE_12DDFA:        BNE CODE_12DE27           
CODE_12DDFC:        LDY $8F,x                 
CODE_12DDFE:        CPY #$32                  
CODE_12DE00:        BCC CODE_12DE18           
CODE_12DE02:        TAY                       
CODE_12DE03:        LDA $46,x                 
CODE_12DE05:        CMP #$03                  
CODE_12DE07:        BCS CODE_12DE27                   
CODE_12DE09:        LDA $0D                   
CODE_12DE0B:        AND #$03                  
CODE_12DE0D:        BNE CODE_12DE27           
CODE_12DE0F:        LDA.w DATA_11AB2F,y               
CODE_12DE12:        STA $3C,x                 
CODE_12DE14:        STA $0B                   
CODE_12DE16:        BNE CODE_12DE27           
CODE_12DE18:        LDY $3C,x                 
CODE_12DE1A:        BEQ CODE_12DE25           
CODE_12DE1C:        EOR $6E,x                 
CODE_12DE1E:        LSR A                     
CODE_12DE1F:        BCS CODE_12DE25                   
CODE_12DE21:        DEC $9E,x                 
CODE_12DE23:        DEC $9E,x                 
CODE_12DE25:        INC $9E,x                 
CODE_12DE27:        LDA $3C,x                 
CODE_12DE29:        CLC                       
CODE_12DE2A:        ADC $04CC,x               
CODE_12DE2D:        BMI CODE_12DE33           
CODE_12DE2F:        INC $07                   
CODE_12DE31:        INC $08                   
CODE_12DE33:        JSR CODE_12DE38           
CODE_12DE36:        DEX                       
CODE_12DE37:        RTS
                       
CODE_12DE38:        LDY $08                   
CODE_12DE3A:        JSL CODE_13F900           
CODE_12DE3E:        LDY $07                   
CODE_12DE40:        LDA.w DATA_11AB31,y               
CODE_12DE43:        TAY                       
CODE_12DE44:        LDA $00                   
CODE_12DE46:        JSL CODE_13F99C           
CODE_12DE4A:        BCC CODE_12DE55           
CODE_12DE4C:        LDY $07                   
CODE_12DE4E:        LDA.w DATA_11AB39,y               
CODE_12DE51:        ORA $5A,x                 
CODE_12DE53:        STA $5A,x                 
CODE_12DE55:        INC $07                   
CODE_12DE57:        INC $08                   
CODE_12DE59:        RTS
                       
CODE_12DE5A:        INX                       
CODE_12DE5B:        LDA $5A,x                 
CODE_12DE5D:        STA $0D                   
CODE_12DE5F:        AND #$F0                  
CODE_12DE61:        STA $5A,x                 
CODE_12DE63:        LDY $0491,x               
CODE_12DE66:        LDA.w DATA_11CAFD,y               
CODE_12DE69:        RTS
                       
CODE_12DE6A:        LDA #$00                  
CODE_12DE6C:        STA $04CD,x               
CODE_12DE6F:        LDA $5B,x                 
CODE_12DE71:        AND #$0F                  
CODE_12DE73:        STA $5B,x                 
CODE_12DE75:        LDA $51,x                 
CODE_12DE77:        CMP #$04                  
CODE_12DE79:        BNE CODE_12DE7F           
CODE_12DE7B:        LDY #$06                  
CODE_12DE7D:        BNE CODE_12DE9D           
CODE_12DE7F:        CMP #$07                  
CODE_12DE81:        BEQ CODE_12DE96           
CODE_12DE83:        LDY $90,x                 
CODE_12DE85:        CPY #$1E                  
CODE_12DE87:        BEQ CODE_12DE92           
CODE_12DE89:        CPY #$1A                  
CODE_12DE8B:        BEQ CODE_12DE92           
CODE_12DE8D:        LDY $042F,x               
CODE_12DE90:        BNE CODE_12DE96           
CODE_12DE92:        CMP #$01                  
CODE_12DE94:        BNE CODE_12DE69           
CODE_12DE96:        LDA $A8,x                 
CODE_12DE98:        BNE CODE_12DE69           
CODE_12DE9A:        LDY $0489,x               
CODE_12DE9D:        LDA $1128,y               
CODE_12DEA0:        STA $09                   
CODE_12DEA2:        LDA #$00                  
CODE_12DEA4:        STA $00                   
CODE_12DEA6:        LDA $1100,y               
CODE_12DEA9:        BPL CODE_12DEAD           
CODE_12DEAB:        DEC $00                   
CODE_12DEAD:        CLC                       
CODE_12DEAE:        ADC $29,x                 
CODE_12DEB0:        STA $05                   
CODE_12DEB2:        LDA $15,x                 
CODE_12DEB4:        ADC $00                   
CODE_12DEB6:        STA $01                   
CODE_12DEB8:        LDA $EB                   
CODE_12DEBA:        BNE CODE_12DEBE           
CODE_12DEBC:        STA $01                   
CODE_12DEBE:        LDA $113C,y               
CODE_12DEC1:        STA $0B                   
CODE_12DEC3:        LDA #$00                  
CODE_12DEC5:        STA $00                   
CODE_12DEC7:        LDA $1114,y               
CODE_12DECA:        BPL CODE_12DECE           
CODE_12DECC:        DEC $00                   
CODE_12DECE:        CLC                       
CODE_12DECF:        ADC $33,x                 
CODE_12DED1:        STA $07                   
CODE_12DED3:        LDA $1F,x                 
CODE_12DED5:        ADC $00                   
CODE_12DED7:        STA $03                   
CODE_12DED9:        STX $EC                   
CODE_12DEDB:        TXA                       
CODE_12DEDC:        BNE CODE_12DEFF           
CODE_12DEDE:        LDA $04C8                 
CODE_12DEE1:        ORA $041B                 
CODE_12DEE4:        BNE CODE_12DEEC           
CODE_12DEE6:        LDA $50,x                 
CODE_12DEE8:        CMP #$02                  
CODE_12DEEA:        BCC CODE_12DEEF           
CODE_12DEEC:        JMP CODE_12DF8D           

CODE_12DEEF:        LDY $12                   
CODE_12DEF1:        LDA $042F,y               
CODE_12DEF4:        BEQ CODE_12DEFA           
CODE_12DEF6:        CMP #$20                  
CODE_12DEF8:        BCC CODE_12DEEC           
CODE_12DEFA:        LDY $9A                   
CODE_12DEFC:        JMP CODE_12DF44           

CODE_12DEFF:        LDY $12                   
CODE_12DF01:        LDA $0051,y               
CODE_12DF04:        CMP #$04                  
CODE_12DF06:        BEQ CODE_12DF0F           
CODE_12DF08:        LDA $046E,y               
CODE_12DF0B:        AND #$04                  
CODE_12DF0D:        BNE CODE_12DF2E           
CODE_12DF0F:        LDA $50,x                 
CODE_12DF11:        CMP #$04                  
CODE_12DF13:        BNE CODE_12DF19           
CODE_12DF15:        LDY #$06                  
CODE_12DF17:        BNE CODE_12DF44           
CODE_12DF19:        CMP #$07                  
CODE_12DF1B:        BEQ CODE_12DF30           
CODE_12DF1D:        LDY $8F,x                 
CODE_12DF1F:        CPY #$1E                  
CODE_12DF21:        BEQ CODE_12DF2C           
CODE_12DF23:        CPY #$1A                  
CODE_12DF25:        BEQ CODE_12DF2C           
CODE_12DF27:        LDY $042E,x               
CODE_12DF2A:        BNE CODE_12DF30           
CODE_12DF2C:        CMP #$01                  
CODE_12DF2E:        BNE CODE_12DF8D           
CODE_12DF30:        LDA $A7,x                 
CODE_12DF32:        BNE CODE_12DF8D           
CODE_12DF34:        LDA $5A,x                 
CODE_12DF36:        AND #$10                  
CODE_12DF38:        BNE CODE_12DF8D           
CODE_12DF3A:        LDA $046D,x               
CODE_12DF3D:        AND #$04                  
CODE_12DF3F:        BNE CODE_12DF8D           
CODE_12DF41:        LDY $0488,x               
CODE_12DF44:        LDA $1128,y               
CODE_12DF47:        STA $0A                   
CODE_12DF49:        LDA #$00                  
CODE_12DF4B:        STA $00                   
CODE_12DF4D:        LDA $1100,y               
CODE_12DF50:        BPL CODE_12DF54           
CODE_12DF52:        DEC $00                   
CODE_12DF54:        CLC                       
CODE_12DF55:        ADC $28,x                 
CODE_12DF57:        STA $06                   
CODE_12DF59:        LDA $14,x                 
CODE_12DF5B:        ADC $00                   
CODE_12DF5D:        STA $02                   
CODE_12DF5F:        LDA $EB                   
CODE_12DF61:        BNE CODE_12DF65           
CODE_12DF63:        STA $02                   
CODE_12DF65:        LDA $113C,y               
CODE_12DF68:        STA $0C                   
CODE_12DF6A:        STZ $00                   
CODE_12DF6C:        LDA $1114,y               
CODE_12DF6F:        BPL CODE_12DF73           
CODE_12DF71:        DEC $00                   
CODE_12DF73:        CLC                       
CODE_12DF74:        ADC $32,x                 
CODE_12DF76:        STA $08                   
CODE_12DF78:        LDA $1E,x                 
CODE_12DF7A:        ADC $00                   
CODE_12DF7C:        STA $04                   
CODE_12DF7E:        JSL CODE_13FAE9           
CODE_12DF82:        BCS CODE_12DF8D                   
CODE_12DF84:        LDA $0B                   
CODE_12DF86:        PHA                       
CODE_12DF87:        JSR CODE_12DF96           
CODE_12DF8A:        PLA                       
CODE_12DF8B:        STA $0B                   
CODE_12DF8D:        DEX                       
CODE_12DF8E:        BMI CODE_12DF93           
CODE_12DF90:        JMP CODE_12DED9           

CODE_12DF93:        LDX $12                   
CODE_12DF95:        RTS
                       
CODE_12DF96:        TXA                       
CODE_12DF97:        BNE CODE_12DFA4           
CODE_12DF99:        LDA $9C                   
CODE_12DF9B:        BEQ CODE_12DFA4           
CODE_12DF9D:        LDA $042D                 
CODE_12DFA0:        CMP $12                   
CODE_12DFA2:        BEQ CODE_12DF95           
CODE_12DFA4:        LDY $12                   
CODE_12DFA6:        LDA $0090,y               
CODE_12DFA9:        TAY                       
CODE_12DFAA:        LDA $120B,y               
CODE_12DFAD:        JSL CODE_118776

PNTR_12DFB1:        dw CODE_12E018
                    dw CODE_12E22F
                    dw CODE_12E1A2
                    dw CODE_12E229
                    dw CODE_12DFBB            

CODE_12DFBB:        TXA
CODE_12DFBC:        BNE CODE_12E017           
CODE_12DFBE:        LDA $FA                   
CODE_12DFC0:        AND #$08                  
CODE_12DFC2:        BEQ CODE_12E017           
CODE_12DFC4:        LDA $5A                   
CODE_12DFC6:        AND #$04                  
CODE_12DFC8:        BEQ CODE_12E017           
CODE_12DFCA:        LDA $0426                 
CODE_12DFCD:        CMP #$FA                  
CODE_12DFCF:        BCS CODE_12E017                   
CODE_12DFD1:        LDA $04BE                 
CODE_12DFD4:        ORA $04B3                 
CODE_12DFD7:        BNE CODE_12E017           
CODE_12DFD9:        LDA $9C                   
CODE_12DFDB:        BEQ CODE_12DFE7           
CODE_12DFDD:        LDY $042D                 
CODE_12DFE0:        LDA $0090,y               
CODE_12DFE3:        CMP #$3D                  
CODE_12DFE5:        BNE CODE_12E017           
CODE_12DFE7:        LDA $0627                 
CODE_12DFEA:        BNE CODE_12E017           
CODE_12DFEC:        LDY $12                   
CODE_12DFEE:        LDA $0029,y               
CODE_12DFF1:        STA $28                   
CODE_12DFF3:        LDA $0015,y               
CODE_12DFF6:        STA $14                   
CODE_12DFF8:        JSL CODE_13FA42           
CODE_12DFFC:        LDA #$04                  
CODE_12DFFE:        STA $0536                 
CODE_12E001:        LDA $0628                 
CODE_12E004:        BNE CODE_12E014           
CODE_12E006:        LDA $0500                 
CODE_12E009:        STA $079D                 
CODE_12E00C:        LDA #$80                  
CODE_12E00E:        STA $0500                 
CODE_12E011:        STA $079C                 
CODE_12E014:        JMP CODE_128B20           

CODE_12E017:        RTS
                       
CODE_12E018:        LDY $12                   
CODE_12E01A:        TXA                       
CODE_12E01B:        BNE CODE_12E020           
CODE_12E01D:        BRL CODE_12E0A3           

CODE_12E020:        LDA $045C,y               
CODE_12E023:        ORA $045B,x               
CODE_12E026:        BNE CODE_12E017           
CODE_12E028:        LDA $042F,y               
CODE_12E02B:        BNE CODE_12E04C           
CODE_12E02D:        LDA $0051,y               
CODE_12E030:        CMP #$04                  
CODE_12E032:        BEQ CODE_12E04C           
CODE_12E034:        TXA                       
CODE_12E035:        TAY                       
CODE_12E036:        DEY                       
CODE_12E037:        LDX $12                   
CODE_12E039:        INX                       
CODE_12E03A:        LDA $0051,y               
CODE_12E03D:        CMP #$04                  
CODE_12E03F:        BEQ CODE_12E04C           
CODE_12E041:        LDA $042F,y               
CODE_12E044:        BEQ CODE_12E0A0           
CODE_12E046:        LDA $5A,x                 
CODE_12E048:        AND #$10                  
CODE_12E04A:        BNE CODE_12E0A0           
CODE_12E04C:        LDA $0453,y               
CODE_12E04F:        ORA $045C,y               
CODE_12E052:        BNE CODE_12E091           
CODE_12E054:        LDA $046E,y               
CODE_12E057:        AND #$08                  
CODE_12E059:        BEQ CODE_12E05E           
CODE_12E05B:        JSR CODE_12E352           
CODE_12E05E:        LDA $0465,y               
CODE_12E061:        SEC                       
CODE_12E062:        SBC #$01                  
CODE_12E064:        STA $0465,y               
CODE_12E067:        BMI CODE_12E077           
CODE_12E069:        JSR CODE_12E352           
CODE_12E06C:        LDA #$21                  
CODE_12E06E:        STA $045C,y               
CODE_12E071:        LSR A                     
CODE_12E072:        STA $0438,y               
CODE_12E075:        BNE CODE_12E091           
CODE_12E077:        LDA $005B,y               
CODE_12E07A:        ORA #$10                  
CODE_12E07C:        STA $005B,y               
CODE_12E07F:        LDA #$E0                  
CODE_12E081:        STA $0047,y               
CODE_12E084:        LDA $003D,y               
CODE_12E087:        STA $00                   
CODE_12E089:        ASL A                     
CODE_12E08A:        ROR $00                   
CODE_12E08C:        LDA $00                   
CODE_12E08E:        STA $003D,y               
CODE_12E091:        LDA $8F,x                 
CODE_12E093:        CMP #$32                  
CODE_12E095:        BCS CODE_12E0A0                   
CODE_12E097:        LDA $50,x                 
CODE_12E099:        CMP #$02                  
CODE_12E09B:        BEQ CODE_12E0A0           
CODE_12E09D:        JSR CODE_12E332           
CODE_12E0A0:        LDX $EC                   
CODE_12E0A2:        RTS
                       
CODE_12E0A3:        LDA $ED                   
CODE_12E0A5:        AND #$08                  
CODE_12E0A7:        BNE CODE_12E0F5           
CODE_12E0A9:        LDA $50                   
CODE_12E0AB:        CMP #$04                  
CODE_12E0AD:        BEQ CODE_12E0F5           
CODE_12E0AF:        LDA $0090,y               
CODE_12E0B2:        BNE CODE_12E0D9           
CODE_12E0B4:        STA $0051,y               
CODE_12E0B7:        LDA $04C3                 
CODE_12E0BA:        CMP #$0F                  
CODE_12E0BC:        BEQ CODE_12E0C3           
CODE_12E0BE:        LDA #$3B                  
CODE_12E0C0:        STA $1DE3                 
CODE_12E0C3:        LDY $04C4                 
CODE_12E0C6:        LDA $04C3                 
CODE_12E0C9:        CLC                       
CODE_12E0CA:        ADC #$10                  
CODE_12E0CC:        STA $04C3                 
CODE_12E0CF:        CMP.w DATA_11CBEE,y               
CODE_12E0D2:        BCC CODE_12E0F5           
CODE_12E0D4:        JSL CODE_14E098           
CODE_12E0D8:        RTS
                       
CODE_12E0D9:        CMP #$17                  
CODE_12E0DB:        BNE CODE_12E0E2           
CODE_12E0DD:        LDY $0595                 
CODE_12E0E0:        BNE CODE_12E0F5           
CODE_12E0E2:        CMP #$45                  ; \ If in contact with star...
CODE_12E0E4:        BNE CODE_12E0F6           ; / Make player invincible.
CODE_12E0E6:        LDA #$3F                  ; \ Flashing timer = #$3F.
CODE_12E0E8:        STA $04E1                 ; /
CODE_12E0EB:        LDA #$0D                  ; \ Star music.
CODE_12E0ED:        STA $1DE2                 ; /
CODE_12E0F0:        LDA #$00                  ; \ Remove sprite.
CODE_12E0F2:        STA $0051,y               ; /
CODE_12E0F5:        RTS                       ; Return.
                       
CODE_12E0F6:        CMP #$28                  
CODE_12E0F8:        BNE CODE_12E111           
CODE_12E0FA:        LDA $0079,y               
CODE_12E0FD:        CMP #$DC                  
CODE_12E0FF:        BCS CODE_12E110                   
CODE_12E101:        LDA $04E1                 
CODE_12E104:        BEQ CODE_12E14A           
CODE_12E106:        LDA #$DC                  
CODE_12E108:        STA $0079,y               
CODE_12E10B:        LDA #$00                  
CODE_12E10D:        STA $0047,y               
CODE_12E110:        RTS
                       
CODE_12E111:        CMP #$2C                  
CODE_12E113:        BNE CODE_12E119           
CODE_12E115:        LDA $B1,x                 
CODE_12E117:        BNE CODE_12E110           
CODE_12E119:        LDY $04E1                 
CODE_12E11C:        BEQ CODE_12E14A           
CODE_12E11E:        LDX $12                   
CODE_12E120:        CMP #$27                  
CODE_12E122:        BEQ CODE_12E128           
CODE_12E124:        CMP #$20                  
CODE_12E126:        BNE CODE_12E133           
CODE_12E128:        LDA #$00                  
CODE_12E12A:        STA $046E,x               
CODE_12E12D:        JSR CODE_12B9FA           
CODE_12E130:        JMP CODE_12E145           

CODE_12E133:        JSR CODE_12C1DA           
CODE_12E136:        LDA.w DATA_11AB41,y               
CODE_12E139:        STA $3D,x                 
CODE_12E13B:        LDA #$E0                  
CODE_12E13D:        STA $47,x                 
CODE_12E13F:        LDA $5B,x                 
CODE_12E141:        ORA #$10                  
CODE_12E143:        STA $5B,x                 
CODE_12E145:        LDX $EC                   
CODE_12E147:        LDY $12                   
CODE_12E149:        RTS                       
CODE_12E14A:        LDY $12                   
CODE_12E14C:        LDA $0051,y               
CODE_12E14F:        CMP #$04                  
CODE_12E151:        BEQ CODE_12E166           
CODE_12E153:        LDA $046E,y               
CODE_12E156:        AND #$01                  
CODE_12E158:        BNE CODE_12E166           
CODE_12E15A:        JSR CODE_12E37E           
CODE_12E15D:        LDA $0F                   
CODE_12E15F:        BNE CODE_12E162           
CODE_12E161:        RTS
                       
CODE_12E162:        AND #$0B                  
CODE_12E164:        BEQ CODE_12E169           
CODE_12E166:        JMP CODE_12E2CD           

CODE_12E169:        LDA #$00                  
CODE_12E16B:        STA $99                   
CODE_12E16D:        LDX $12                   
CODE_12E16F:        LDA $5B,x                 
CODE_12E171:        ORA #$20                  
CODE_12E173:        STA $5B,x                 
CODE_12E175:        LDA $046E,x               
CODE_12E178:        AND #$02                  
CODE_12E17A:        BNE CODE_12E19F           
CODE_12E17C:        BIT $FA                   ; \ Don't pick enemy up if not pressing X nor Y.
CODE_12E17E:        BVC CODE_12E19F           ; /     
CODE_12E180:        LDA $9C                   
CODE_12E182:        ORA $9A                   
CODE_12E184:        BNE CODE_12E19F           
CODE_12E186:        STA $5B,x                 
CODE_12E188:        STX $042D                 
CODE_12E18B:        STA $044A,x               
CODE_12E18E:        LDA #$07                  
CODE_12E190:        STA $A8,x                 
CODE_12E192:        JSL CODE_13F9D7           ; Handle player animation and sound effect.
CODE_12E196:        LDA $90,x                 ; \ Handle JSR if Pidgit.
CODE_12E198:        CMP #$12                  ;  |
CODE_12E19A:        BNE CODE_12E19F           ; /
CODE_12E19C:        JSR CODE_12C5D8           ; Generate carpet.
CODE_12E19F:        LDX $EC                   
CODE_12E1A1:        RTS
                       
CODE_12E1A2:        LDY $12                   
CODE_12E1A4:        TXA                       
CODE_12E1A5:        BEQ CODE_12E1D4           
CODE_12E1A7:        LDA $0090,y               
CODE_12E1AA:        CMP #$3D                  
CODE_12E1AC:        BNE CODE_12E1B5           
CODE_12E1AE:        LDA $005B,y               
CODE_12E1B1:        AND #$04                  
CODE_12E1B3:        BNE CODE_12E1D3           
CODE_12E1B5:        LDA $042F,y               
CODE_12E1B8:        BNE CODE_12E1D0           
CODE_12E1BA:        JSR CODE_12E37E           
CODE_12E1BD:        LDA $0F                   
CODE_12E1BF:        AND $6E,x                 
CODE_12E1C1:        BEQ CODE_12E1C9           
CODE_12E1C3:        DEX                       
CODE_12E1C4:        JSR CODE_12C248           
CODE_12E1C7:        LDX $EC                   
CODE_12E1C9:        JSR CODE_12E42C           
CODE_12E1CC:        CPY #$00                  
CODE_12E1CE:        BEQ CODE_12E1D3           
CODE_12E1D0:        JMP CODE_12E2BD           

CODE_12E1D3:        RTS
                       
CODE_12E1D4:        LDA $005B,y               
CODE_12E1D7:        ORA #$40                  
CODE_12E1D9:        STA $005B,y               
CODE_12E1DC:        JSR CODE_12E37E           
CODE_12E1DF:        LDA $0F                   
CODE_12E1E1:        AND $6E                   
CODE_12E1E3:        BEQ CODE_12E1E9           
CODE_12E1E5:        JSL CODE_13F9BB           
CODE_12E1E9:        LDA $0F                   
CODE_12E1EB:        AND #$04                  
CODE_12E1ED:        BEQ CODE_12E1F2           
CODE_12E1EF:        JSR CODE_12E169           
CODE_12E1F2:        JSR CODE_12E42C           
CODE_12E1F5:        CPY #$01                  
CODE_12E1F7:        BNE CODE_12E228           
CODE_12E1F9:        LDY $12                   
CODE_12E1FB:        LDA $0047,y               
CODE_12E1FE:        BEQ CODE_12E228           
CODE_12E200:        AND #$80                  
CODE_12E202:        ASL A                     
CODE_12E203:        ROL A                     
CODE_12E204:        TAY                       
CODE_12E205:        LDA $0F                   
CODE_12E207:        AND.w DATA_11AB43,y               
CODE_12E20A:        BEQ CODE_12E228           
CODE_12E20C:        LDY $12                   
CODE_12E20E:        LDA $0047,y               
CODE_12E211:        EOR #$FF                  
CODE_12E213:        CLC                       
CODE_12E214:        ADC #$01                  
CODE_12E216:        STA $0047,y               
CODE_12E219:        LDA #$01                  
CODE_12E21B:        STA $9A                   
CODE_12E21D:        LDA #$04                  
CODE_12E21F:        STZ $078C                 
CODE_12E222:        STA $C7                   
CODE_12E224:        LDA #$10                  
CODE_12E226:        STA $82                   
CODE_12E228:        RTS
                       
CODE_12E229:        TXA                       
CODE_12E22A:        BEQ CODE_12E228           
CODE_12E22C:        JMP CODE_12E2BD           

CODE_12E22F:        LDY $12                   
CODE_12E231:        TXA                       
CODE_12E232:        BNE CODE_12E266           
CODE_12E234:        LDA $0051,y               
CODE_12E237:        CMP #$04                  
CODE_12E239:        BNE CODE_12E241           
CODE_12E23B:        LDA $04E1                 
CODE_12E23E:        BEQ CODE_12E263           
CODE_12E240:        RTS
                       
CODE_12E241:        JSR CODE_12E37E           
CODE_12E244:        LDA $0F                   
CODE_12E246:        AND #$08                  
CODE_12E248:        BEQ CODE_12E25A           
CODE_12E24A:        LDA $9C                   
CODE_12E24C:        BNE CODE_12E240           
CODE_12E24E:        LDY $12                   
CODE_12E250:        STY $042D                 
CODE_12E253:        LDA #$01                  
CODE_12E255:        STA $00A8,y               
CODE_12E258:        INC $9C                   
CODE_12E25A:        LDA $0F                   
CODE_12E25C:        AND #$04                  
CODE_12E25E:        BEQ CODE_12E240           
CODE_12E260:        JMP CODE_12E169           

CODE_12E263:        JMP CODE_12E2CD           

CODE_12E266:        LDA $8F,x                 
CODE_12E268:        CMP #$2C                  
CODE_12E26A:        BNE CODE_12E28A           
CODE_12E26C:        LDA $85,x                 
CODE_12E26E:        BEQ CODE_12E2CC           
CODE_12E270:        LDA #$00                  
CODE_12E272:        STA $0051,y               
CODE_12E275:        JSR CODE_12E332           
CODE_12E278:        LDA #$60                  
CODE_12E27A:        STA $045B,x               
CODE_12E27D:        LSR A                     
CODE_12E27E:        STA $0437,x               
CODE_12E281:        LDA $0464,x               
CODE_12E284:        BNE CODE_12E289           
CODE_12E286:        INC $04FB                 
CODE_12E289:        RTS
                       
CODE_12E28A:        CMP #$32                  
CODE_12E28C:        BCS CODE_12E289                   
CODE_12E28E:        CMP #$11                  
CODE_12E290:        BNE CODE_12E29D           
CODE_12E292:        LDA #$05                  
CODE_12E294:        STA $0051,y               
CODE_12E297:        LDA #$1E                  
CODE_12E299:        STA $0086,y               
CODE_12E29C:        RTS
                       
CODE_12E29D:        LDA $0051,y               
CODE_12E2A0:        CMP #$04                  
CODE_12E2A2:        BEQ CODE_12E2BF           
CODE_12E2A4:        LDA $0090,y               
CODE_12E2A7:        CMP #$35                  
CODE_12E2A9:        BEQ CODE_12E2BD           
CODE_12E2AB:        LDA #$E8                  
CODE_12E2AD:        STA $0047,y               
CODE_12E2B0:        STX $00                   
CODE_12E2B2:        LDX $3D,y                 
CODE_12E2B4:        BMI CODE_12E2B8           
CODE_12E2B6:        LDA #$18                  
CODE_12E2B8:        STA $003D,y               
CODE_12E2BB:        LDX $00                   
CODE_12E2BD:        LDY $12                   
CODE_12E2BF:        JSR CODE_12E332           
CODE_12E2C2:        BNE CODE_12E2CC           
CODE_12E2C4:        LDA $3C,x                 
CODE_12E2C6:        ASL A                     
CODE_12E2C7:        ROR $3C,x                 
CODE_12E2C9:        ASL A                     
CODE_12E2CA:        ROR $3C,x                 
CODE_12E2CC:        RTS
                       
CODE_12E2CD:        LDA $85                   
CODE_12E2CF:        BNE CODE_12E304           
CODE_12E2D1:        LDA $04C3                 
CODE_12E2D4:        SEC                       
CODE_12E2D5:        SBC #$10                  
CODE_12E2D7:        BCC CODE_12E305           
CODE_12E2D9:        STA $04C3                 
CODE_12E2DC:        LDY #$7F                  
CODE_12E2DE:        STY $85                   
CODE_12E2E0:        LDY #$00                  
CODE_12E2E2:        STY $46                   
CODE_12E2E4:        STY $3C                   
CODE_12E2E6:        CMP #$10                  
CODE_12E2E8:        BCC CODE_12E2FF           
CODE_12E2EA:        LDA $0428                 
CODE_12E2ED:        SEC                       
CODE_12E2EE:        SBC $0429                 
CODE_12E2F1:        ASL A                     
CODE_12E2F2:        ASL A                     
CODE_12E2F3:        STA $3C                   
CODE_12E2F5:        LDA #$C0                  
CODE_12E2F7:        LDY $46                   
CODE_12E2F9:        BPL CODE_12E2FD           
CODE_12E2FB:        LDA #$00                  
CODE_12E2FD:        STA $46                   
CODE_12E2FF:        LDA #$33                  
CODE_12E301:        STA $1DE0                 
CODE_12E304:        RTS
                       
CODE_12E305:        TXA                       
CODE_12E306:        PHA                       
CODE_12E307:        LDX $12                   
CODE_12E309:        LDA $90,x                 
CODE_12E30B:        CMP #$0F                  
CODE_12E30D:        BCS CODE_12E31B                   
CODE_12E30F:        JSR CODE_12C1DA           
CODE_12E312:        INY                       
CODE_12E313:        TYA                       
CODE_12E314:        CMP $6F,x                 
CODE_12E316:        BEQ CODE_12E31B           
CODE_12E318:        JSR CODE_12C248           
CODE_12E31B:        PLA                       
CODE_12E31C:        TAX                       
CODE_12E31D:        LDA #$C0                  ; \ Rise in air.
CODE_12E31F:        STA $46                   ; /
CODE_12E321:        LDA #$20                  ; \ Remain mid-air for some time.
CODE_12E323:        STA $82                   ; /
CODE_12E325:        LDY $12                   
CODE_12E327:        BMI CODE_12E32D           
CODE_12E329:        LSR A                     
CODE_12E32A:        STA $0438,y               
CODE_12E32D:        JSL CODE_14E39F           ; Kill player.
CODE_12E331:        RTS
                       
CODE_12E332:        LDA $0452,x               
CODE_12E335:        ORA $045B,x               
CODE_12E338:        BNE CODE_12E37D           
CODE_12E33A:        LDA $046D,x               
CODE_12E33D:        AND #$08                  
CODE_12E33F:        BEQ CODE_12E344           
CODE_12E341:        JSR CODE_12E352           
CODE_12E344:        DEC $0464,x               
CODE_12E347:        BMI CODE_12E36C           
CODE_12E349:        LDA #$21                  
CODE_12E34B:        STA $045B,x               
CODE_12E34E:        LSR A                     
CODE_12E34F:        STA $0437,x               
CODE_12E352:        LDA $8F,x                 
CODE_12E354:        CMP #$2C                  
CODE_12E356:        BNE CODE_12E366           
CODE_12E358:        LDA $0464,x               
CODE_12E35B:        BNE CODE_12E366           
CODE_12E35D:        LDA #$F0                  
CODE_12E35F:        STA $1DE2                 
CODE_12E362:        LDA #$47                  
CODE_12E364:        BRA CODE_12E368           

CODE_12E366:        LDA #$28                  
CODE_12E368:        STA $1DE3                 
CODE_12E36B:        RTS
                       
CODE_12E36C:        LDA $5A,x                 
CODE_12E36E:        ORA #$10                  
CODE_12E370:        STA $5A,x                 
CODE_12E372:        LDA #$E0                  
CODE_12E374:        STA $46,x                 
CODE_12E376:        LDA $003D,y               
CODE_12E379:        STA $3C,x                 
CODE_12E37B:        LDA #$00                  
CODE_12E37D:        RTS
                       
CODE_12E37E:        LDA #$00                  
CODE_12E380:        STA $0F                   
CODE_12E382:        LDY $12                   
CODE_12E384:        LDA $0427                 
CODE_12E387:        CMP #$F4                  
CODE_12E389:        BCS CODE_12E3AB                   
CODE_12E38B:        LDA $0029,y               
CODE_12E38E:        LDY #$02                  
CODE_12E390:        CMP $28,x                 
CODE_12E392:        BMI CODE_12E396           
CODE_12E394:        LDY #$01                  
CODE_12E396:        STY $0F                   
CODE_12E398:        TYA                       
CODE_12E399:        AND $6E,x                 
CODE_12E39B:        BEQ CODE_12E3AA           
CODE_12E39D:        LDY $12                   
CODE_12E39F:        LDA $04A4,y               
CODE_12E3A2:        BNE CODE_12E3AA           
CODE_12E3A4:        LDA $003D,y               
CODE_12E3A7:        STA $04CC,x               
CODE_12E3AA:        RTS
                       
CODE_12E3AB:        LDA $0033,y               
CODE_12E3AE:        CPX #$01                  
CODE_12E3B0:        BCS CODE_12E3BA                   
CODE_12E3B2:        PHA                       
CODE_12E3B3:        LDY $9A                   
CODE_12E3B5:        PLA                       
CODE_12E3B6:        SEC                       
CODE_12E3B7:        SBC.w DATA_11AB45,y               
CODE_12E3BA:        CMP $32,x                 
CODE_12E3BC:        BMI CODE_12E3F5           
CODE_12E3BE:        LDA $46,x                 
CODE_12E3C0:        BPL CODE_12E3CB           
CODE_12E3C2:        LDY $12                   
CODE_12E3C4:        LDA $0047,y               
CODE_12E3C7:        BMI CODE_12E3D8           
CODE_12E3C9:        BRA CODE_12E42B           

CODE_12E3CB:        LDY $12                   
CODE_12E3CD:        LDA $04A4,y               
CODE_12E3D0:        BNE CODE_12E3D8           
CODE_12E3D2:        LDA $003D,y               
CODE_12E3D5:        STA $04CC,x               
CODE_12E3D8:        LDY #$00                  
CODE_12E3DA:        INC $0427                 
CODE_12E3DD:        BPL CODE_12E3E0           
CODE_12E3DF:        DEY                       
CODE_12E3E0:        LDA $0427                 
CODE_12E3E3:        CLC                       
CODE_12E3E4:        ADC $32,x                 
CODE_12E3E6:        STA $32,x                 
CODE_12E3E8:        TYA                       
CODE_12E3E9:        ADC $1E,x                 
CODE_12E3EB:        STA $1E,x                 
CODE_12E3ED:        LDA $46,x                 
CODE_12E3EF:        BMI CODE_12E42B           
CODE_12E3F1:        LDY #$04                  
CODE_12E3F3:        BNE CODE_12E413           
CODE_12E3F5:        LDA $46,x                 
CODE_12E3F7:        BEQ CODE_12E404           
CODE_12E3F9:        BPL CODE_12E42B           
CODE_12E3FB:        LDY $12                   
CODE_12E3FD:        LDA $0090,y               
CODE_12E400:        CMP #$36                  
CODE_12E402:        BEQ CODE_12E42B           
CODE_12E404:        LDY $12                   
CODE_12E406:        LDA $0090,y               
CODE_12E409:        CMP #$44                  
CODE_12E40B:        BEQ CODE_12E42B           
CODE_12E40D:        CMP #$39                  
CODE_12E40F:        BEQ CODE_12E42B           
CODE_12E411:        LDY #$08                  
CODE_12E413:        STY $0F                   
CODE_12E415:        LDY $12                   
CODE_12E417:        LDA $04A4,y               
CODE_12E41A:        BNE CODE_12E422           
CODE_12E41C:        LDA $0047,y               
CODE_12E41F:        STA $04D6,x               
CODE_12E422:        LDA #$10                  
CODE_12E424:        STA $46,x                 
CODE_12E426:        STZ $0411,x               
CODE_12E429:        INC $9E,x                 
CODE_12E42B:        RTS
                       
CODE_12E42C:        LDY #$00                  
CODE_12E42E:        LDA $5A,x                 
CODE_12E430:        ORA $0F                   
CODE_12E432:        AND #$0C                  
CODE_12E434:        CMP #$0C                  
CODE_12E436:        BEQ CODE_12E443           
CODE_12E438:        LDA $5A,x                 
CODE_12E43A:        ORA $0F                   
CODE_12E43C:        AND #$03                  
CODE_12E43E:        CMP #$03                  
CODE_12E440:        BNE CODE_12E444           
CODE_12E442:        INY                       
CODE_12E443:        INY                       
CODE_12E444:        RTS
                       
CODE_12E445:        JSL CODE_13F900           
CODE_12E449:        LDA $00                   
CODE_12E44B:        LDY #$09                  
CODE_12E44D:        CMP.w DATA_119B50,y               
CODE_12E450:        BEQ CODE_12E456           
CODE_12E452:        DEY                       
CODE_12E453:        BPL CODE_12E44D           
CODE_12E455:        CLC                       
CODE_12E456:        RTS
                       
DATA_12E457:        db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ; \ Empty.
                    db $FF                                  ; /
           
CODE_12E460:        ASL A
CODE_12E461:        TAX             
CODE_12E462:        JMP (PNTR_12E465,x)                   

PNTR_12E465:        dw CODE_12E7E9                          ; 30-3F - Horizontal bricks.
                    dw CODE_12E7E9                          ; 40-4F - Horizontal X-blocks.
                    dw CODE_12E7E9                          ; 50-5F - Horizontal multiple vegetables.
                    dw CODE_12E7E9                          ; 60-6F - Horizontal bridge.
                    dw CODE_12E7E9                          ; 70-7F - Horizontal spikes.
                    dw CODE_12E89A                          ; 80-8F - Vertical bricks.
                    dw CODE_12E89A                          ; 90-9F - Vertical bricks.
                    dw CODE_12E89A                          ; A0-AF - Vertical ladders.
                    dw CODE_12EDA1                          ; B0-BF - Horizontal whales.
                    dw CODE_12E994                          ; C0-CF - Horizontal green platforms.
                    dw CODE_12E958                          ; D0-DF - Horizontal logs.
                    dw CODE_12E958                          ; E0-EF - Horizontal clouds.
                    dw CODE_12EC18                          ; F0-FF - Horizontal waterfalls.
                  
CODE_12E47F:        ASL A
CODE_12E480:        TAX               
CODE_12E481:        JMP (PNTR_12E484,x)

PNTR_12E484:        dw CODE_12E921
                    dw CODE_12E921
                    dw CODE_12E921
                    dw CODE_12E921
                    dw CODE_12E921
                    dw CODE_12E921
                    dw CODE_12EB07
                    dw CODE_12EB07
                    dw CODE_12EB07
                    dw CODE_12EF72
                    dw CODE_12EF72
                    dw CODE_12EF72
                    dw CODE_12EB32
                    dw CODE_12EB32
                    dw CODE_12ED1C
                    dw CODE_12F040        
                     
CODE_12E4A4:        LDA $050F           
CODE_12E4A7:        ASL A
CODE_12E4A8:        TAX            
CODE_12E4A9:        JMP (PNTR_12E4AC,x)

PNTR_12E4AC:        dw CODE_12EACF
                    dw CODE_12EAEF
                    dw CODE_12EB7F
                    dw CODE_12E7F7
                    dw CODE_12E870
                    dw CODE_12EA71
                    dw CODE_12EA71
                    dw CODE_12EC63
                    dw CODE_12EBC6
                    dw CODE_12EBC6
                    dw CODE_12F06A
                    dw CODE_12F091
                    dw CODE_12EF72
                    dw CODE_12EF72
                    dw CODE_12EF23
                    dw CODE_12EE90

DATA_12E4CC:        db $3D,$3C          
                           
CODE_12E4CE:        LDA $050F                 ; \ Get object type number (0 = bricks, 1 = X-blocks, etc. C = waterfalls) * 4 into $0F.
CODE_12E4D1:        ASL                       ;  |
CODE_12E4D2:        ASL A                     ;  |
CODE_12E4D3:        STA $0F                   ; /
CODE_12E4D5:        LDA $0545                 
CODE_12E4D8:        LDX $050F                 
CODE_12E4DB:        CPX #$07                  
CODE_12E4DD:        BCS CODE_12E4E2                   
CODE_12E4DF:        LDA $0544                 
CODE_12E4E2:        CLC                       
CODE_12E4E3:        ADC $0F                   
CODE_12E4E5:        TAX                       
CODE_12E4E6:        LDA $050F                 
CODE_12E4E9:        CMP #$03                  
CODE_12E4EB:        BNE CODE_12E51A           
CODE_12E4ED:        LDA [$01],y               
CODE_12E4EF:        CMP #$1C                  
CODE_12E4F1:        BNE CODE_12E4F8           
CODE_12E4F3:        LDA #$2A                  
CODE_12E4F5:        BRL CODE_12E5A8           

CODE_12E4F8:        CMP #$20                  
CODE_12E4FA:        BNE CODE_12E501           
CODE_12E4FC:        LDA #$29                  
CODE_12E4FE:        BRL CODE_12E5A8           

CODE_12E501:        CMP #$21                  
CODE_12E503:        BNE CODE_12E50A           
CODE_12E505:        LDA #$2B                  
CODE_12E507:        BRL CODE_12E5A8           

CODE_12E50A:        LDA $0533                 
CODE_12E50D:        CMP #$02                  
CODE_12E50F:        BEQ CODE_12E515           
CODE_12E511:        CMP #$0B                  
CODE_12E513:        BNE CODE_12E51A           
CODE_12E515:        LDA #$28                  
CODE_12E517:        BRL CODE_12E5A8           

CODE_12E51A:        STX $07                   
CODE_12E51C:        STY $08                   
CODE_12E51E:        LDX $0635                 
CODE_12E521:        LDA.w PNTR_11B564,x               
CODE_12E524:        STA $0C                   
CODE_12E526:        LDA.w PNTR_11B56B,x               
CODE_12E529:        STA $0D                   
CODE_12E52B:        LDA #$11                  
CODE_12E52D:        STA $0E                   
CODE_12E52F:        LDY $07                   
CODE_12E531:        LDA [$0C],y               
CODE_12E533:        STZ $0762                 
CODE_12E536:        LDX $0533                 
CODE_12E539:        CPX #$11                  
CODE_12E53B:        BNE CODE_12E546           
CODE_12E53D:        LDX $0534                 
CODE_12E540:        CPX #$03                  
CODE_12E542:        BNE CODE_12E546           
CODE_12E544:        BRA CODE_12E55C    
       
CODE_12E546:        LDX $0533                 
CODE_12E549:        CPX #$0D                  
CODE_12E54B:        BNE CODE_12E558           
CODE_12E54D:        LDX $0534                 
CODE_12E550:        CPX #$02                  
CODE_12E552:        BEQ CODE_12E55C           
CODE_12E554:        CPX #$03                  
CODE_12E556:        BEQ CODE_12E55C           
CODE_12E558:        LDX $EB                   
CODE_12E55A:        BEQ CODE_12E564           
CODE_12E55C:        JSR CODE_12E5B4           
CODE_12E55F:        LDX $0762                 
CODE_12E562:        BNE CODE_12E5AD           
CODE_12E564:        JSR CODE_12E7A6           
CODE_12E567:        LDY $08                   
CODE_12E569:        LDX $07                   
CODE_12E56B:        CMP #$B0                  
CODE_12E56D:        BNE CODE_12E589           
CODE_12E56F:        LDX $0533                 
CODE_12E572:        CPX #$0B                  
CODE_12E574:        BNE CODE_12E589           
CODE_12E576:        LDX $0534                 
CODE_12E579:        CPX #$04                  
CODE_12E57B:        BNE CODE_12E589           
CODE_12E57D:        JSR CODE_12F1F3           
CODE_12E580:        LDX $050E                 
CODE_12E583:        LDA.l DATA_12E4CC,x             
CODE_12E587:        BRA CODE_12E5A4
           
CODE_12E589:        CMP #$B0                  
CODE_12E58B:        BNE CODE_12E5A4           
CODE_12E58D:        LDX $0533                 
CODE_12E590:        CPX #$02                  
CODE_12E592:        BNE CODE_12E59B           
CODE_12E594:        LDX $0534                 
CODE_12E597:        CPX #$03                  
CODE_12E599:        BEQ CODE_12E5A2           
CODE_12E59B:        LDX $0533                 
CODE_12E59E:        CPX #$08                  
CODE_12E5A0:        BNE CODE_12E5A4           
CODE_12E5A2:        LDA #$3E                  
CODE_12E5A4:        STA [$01],y               
CODE_12E5A6:        BRA CODE_12E5AA           

CODE_12E5A8:        STA [$01],y               
CODE_12E5AA:        JSR CODE_12F13A           
CODE_12E5AD:        RTS
           
DATA_12E5AE:        db $04,$10

DATA_12E5B0:        db $07,$13

DATA_12E5B2:        db $09,$18            
              
CODE_12E5B4:        STA $0721                 
CODE_12E5B7:        CMP #$AE                  
CODE_12E5B9:        BEQ CODE_12E5BC           
CODE_12E5BB:        RTS
                       
CODE_12E5BC:        LDA $0768                 
CODE_12E5BF:        BNE CODE_12E5C4           
CODE_12E5C1:        BRL CODE_12E690           

CODE_12E5C4:        LDA $01                   
CODE_12E5C6:        STA $0713                 
CODE_12E5C9:        LDA $02                   
CODE_12E5CB:        STA $0714                 
CODE_12E5CE:        LDA $08                   
CODE_12E5D0:        AND #$0F                  
CODE_12E5D2:        BNE CODE_12E5D7           
CODE_12E5D4:        BRL CODE_12E65C           

CODE_12E5D7:        LDY $08                   
CODE_12E5D9:        DEY                       
CODE_12E5DA:        LDA [$01],y               
CODE_12E5DC:        CMP #$40                  
CODE_12E5DE:        BNE CODE_12E610           
CODE_12E5E0:        INY                       
CODE_12E5E1:        INY                       
CODE_12E5E2:        LDA [$01],y               
CODE_12E5E4:        CMP #$40                  
CODE_12E5E6:        BEQ CODE_12E65C           
CODE_12E5E8:        JSR CODE_12E763           
CODE_12E5EB:        LDA $08                   
CODE_12E5ED:        AND #$F0                  
CODE_12E5EF:        BEQ CODE_12E601           
CODE_12E5F1:        LDA $08                   
CODE_12E5F3:        SEC                       
CODE_12E5F4:        SBC #$10                  
CODE_12E5F6:        TAY                       
CODE_12E5F7:        LDA [$01],y               
CODE_12E5F9:        CMP #$40                  
CODE_12E5FB:        BNE CODE_12E601           
CODE_12E5FD:        LDA #$00                  
CODE_12E5FF:        BRA CODE_12E67F           

CODE_12E601:        LDA $08                   
CODE_12E603:        AND #$10                  
CODE_12E605:        LSR A                     
CODE_12E606:        LSR A                     
CODE_12E607:        LSR A                     
CODE_12E608:        LSR A                     
CODE_12E609:        TAX                       
CODE_12E60A:        LDA.l DATA_12E5AE,x             
CODE_12E60E:        BRA CODE_12E67F           

CODE_12E610:        LDA $08                   
CODE_12E612:        AND #$0F                  
CODE_12E614:        BEQ CODE_12E619           
CODE_12E616:        JSR CODE_12E6BE           
CODE_12E619:        LDA $08                   
CODE_12E61B:        AND #$F0                  
CODE_12E61D:        BEQ CODE_12E63F           
CODE_12E61F:        LDA $08                   
CODE_12E621:        SEC                       
CODE_12E622:        SBC #$10                  
CODE_12E624:        TAY                       
CODE_12E625:        LDA [$01],y               
CODE_12E627:        CMP #$40                  
CODE_12E629:        BEQ CODE_12E63B           
CODE_12E62B:        REP #$20                  
CODE_12E62D:        LDA $01                   
CODE_12E62F:        CLC                       
CODE_12E630:        ADC #$7000                
CODE_12E633:        STA $01                   
CODE_12E635:        SEP #$20                  
CODE_12E637:        LDA [$01],y               
CODE_12E639:        BNE CODE_12E63F           
CODE_12E63B:        LDA #$03                  
CODE_12E63D:        BRA CODE_12E67F           

CODE_12E63F:        LDA $0714                 
CODE_12E642:        STA $02                   
CODE_12E644:        LDY $08                   
CODE_12E646:        DEY                       
CODE_12E647:        LDA [$01],y               
CODE_12E649:        CMP #$C2                  
CODE_12E64B:        BEQ CODE_12E601           
CODE_12E64D:        LDA $08                   
CODE_12E64F:        AND #$10                  
CODE_12E651:        LSR A                     
CODE_12E652:        LSR A                     
CODE_12E653:        LSR A                     
CODE_12E654:        LSR A                     
CODE_12E655:        TAX                       
CODE_12E656:        LDA.l DATA_12E5B0,x             
CODE_12E65A:        BRA CODE_12E67F           

CODE_12E65C:        LDA $08                   
CODE_12E65E:        AND #$F0                  
CODE_12E660:        BEQ CODE_12E672           
CODE_12E662:        LDA $08                   
CODE_12E664:        SEC                       
CODE_12E665:        SBC #$10                  
CODE_12E667:        TAY                       
CODE_12E668:        LDA [$01],y               
CODE_12E66A:        CMP #$40                  
CODE_12E66C:        BNE CODE_12E672           
CODE_12E66E:        LDA #$08                  
CODE_12E670:        BRA CODE_12E67F           

CODE_12E672:        LDA $08                   
CODE_12E674:        AND #$10                  
CODE_12E676:        LSR A                     
CODE_12E677:        LSR A                     
CODE_12E678:        LSR A                     
CODE_12E679:        LSR A                     
CODE_12E67A:        TAX                       
CODE_12E67B:        LDA.l DATA_12E5B2,x             
CODE_12E67F:        LDX $0713                 
CODE_12E682:        STX $01                   
CODE_12E684:        LDX $0714                 
CODE_12E687:        STX $02                   
CODE_12E689:        LDY $08                   
CODE_12E68B:        STA [$01],y               
CODE_12E68D:        JSR CODE_12F154           
CODE_12E690:        INC $0762                 
CODE_12E693:        LDA $0721                 
CODE_12E696:        RTS
           
DATA_12E697:         db $01,$02,$05,$06,$11,$12,$00,$04
                     db $10,$03,$07,$13

DATA_12E6A3:         db $02,$01,$06,$05,$12,$11,$01,$05
                     db $11,$02,$06,$12

DATA_12E6AF:         db $08,$09,$18

DATA_12E6B2:         db $00,$10,$04

DATA_12E6B5:         db $01,$06,$12

DATA_12E6B8:         db $03,$07,$13

DATA_12E6BB:         db $01,$05,$11
                            
CODE_12E6BE:        LDY $08                   
CODE_12E6C0:        DEY                       
CODE_12E6C1:        LDA $02                   
CODE_12E6C3:        STA $0714                 
CODE_12E6C6:        CLC                       
CODE_12E6C7:        ADC #$70                  
CODE_12E6C9:        STA $02                   
CODE_12E6CB:        LDA [$01],y               
CODE_12E6CD:        BNE CODE_12E6D2           
CODE_12E6CF:        BRL CODE_12E75D           

CODE_12E6D2:        LDA $0714                 
CODE_12E6D5:        STA $02                   
CODE_12E6D7:        LDA $0533                 
CODE_12E6DA:        CMP #$0C                  
CODE_12E6DC:        BNE CODE_12E6FA           
CODE_12E6DE:        LDA $0534                 
CODE_12E6E1:        CMP #$01                  
CODE_12E6E3:        BNE CODE_12E6FA           
CODE_12E6E5:        LDX #$02                  
CODE_12E6E7:        LDA [$01],y               
CODE_12E6E9:        CMP $12E6AF,x             
CODE_12E6ED:        BEQ CODE_12E6F4           
CODE_12E6EF:        DEX                       
CODE_12E6F0:        BPL CODE_12E6E9           
CODE_12E6F2:        BRA CODE_12E713           

CODE_12E6F4:        LDA.l DATA_12E6B5,x             
CODE_12E6F8:        BRA CODE_12E758           

CODE_12E6FA:        LDA [$01],y               
CODE_12E6FC:        BEQ CODE_12E75D           
CODE_12E6FE:        CMP #$04                  
CODE_12E700:        BEQ CODE_12E75D           
CODE_12E702:        CMP #$10                  
CODE_12E704:        BEQ CODE_12E75D           
CODE_12E706:        LDX #$02                  
CODE_12E708:        LDA [$01],y               
CODE_12E70A:        CMP $12E6AF,x             
CODE_12E70E:        BEQ CODE_12E754           
CODE_12E710:        DEX                       
CODE_12E711:        BPL CODE_12E70A           
CODE_12E713:        DEY                       
CODE_12E714:        LDA $02                   
CODE_12E716:        CLC                       
CODE_12E717:        ADC #$70                  
CODE_12E719:        STA $02                   
CODE_12E71B:        LDA [$01],y               
CODE_12E71D:        BNE CODE_12E73A           
CODE_12E71F:        LDA $0714                 
CODE_12E722:        STA $02                   
CODE_12E724:        LDX #$02                  
CODE_12E726:        INY                       
CODE_12E727:        LDA [$01],y               
CODE_12E729:        CMP $12E6B8,x             
CODE_12E72D:        BEQ CODE_12E734           
CODE_12E72F:        DEX                       
CODE_12E730:        BPL CODE_12E729           
CODE_12E732:        BRA CODE_12E75D           

CODE_12E734:        LDA.l DATA_12E6BB,x             
CODE_12E738:        BRA CODE_12E758           

CODE_12E73A:        LDA $0714                 
CODE_12E73D:        STA $02                   
CODE_12E73F:        LDX #$0B                  
CODE_12E741:        LDA [$01],y               
CODE_12E743:        CMP $12E697,x             
CODE_12E747:        BEQ CODE_12E74E           
CODE_12E749:        DEX                       
CODE_12E74A:        BPL CODE_12E743           
CODE_12E74C:        BRA CODE_12E75D           

CODE_12E74E:        LDA.l DATA_12E6A3,x             
CODE_12E752:        BRA CODE_12E758           

CODE_12E754:        LDA.l DATA_12E6B2,x             
CODE_12E758:        LDY $08                   
CODE_12E75A:        DEY                       
CODE_12E75B:        STA [$01],y               
CODE_12E75D:        LDA $0714                 
CODE_12E760:        STA $02                   
CODE_12E762:        RTS
                       
CODE_12E763:        LDY $08                   
CODE_12E765:        INY                       
CODE_12E766:        LDA $02                   
CODE_12E768:        STA $0714                 
CODE_12E76B:        CLC                       
CODE_12E76C:        ADC #$70                  
CODE_12E76E:        STA $02                   
CODE_12E770:        LDA [$01],y               
CODE_12E772:        BEQ CODE_12E7A0           
CODE_12E774:        LDA $0714                 
CODE_12E777:        STA $02                   
CODE_12E779:        LDA [$01],y               
CODE_12E77B:        CMP #$03                  
CODE_12E77D:        BEQ CODE_12E7A0           
CODE_12E77F:        CMP #$07                  
CODE_12E781:        BEQ CODE_12E7A0           
CODE_12E783:        CMP #$13                  
CODE_12E785:        BEQ CODE_12E7A0           
CODE_12E787:        LDX #$05                  
CODE_12E789:        INY                       
CODE_12E78A:        LDA [$01],y               
CODE_12E78C:        CMP $12E697,x             
CODE_12E790:        BEQ CODE_12E797           
CODE_12E792:        DEX                       
CODE_12E793:        BPL CODE_12E78C           
CODE_12E795:        BRA CODE_12E75D           

CODE_12E797:        LDA.l DATA_12E6A3,x             
CODE_12E79B:        LDY $08                   
CODE_12E79D:        INY                       
CODE_12E79E:        STA [$01],y               
CODE_12E7A0:        LDA $0714                 
CODE_12E7A3:        STA $02                   
CODE_12E7A5:        RTS
                       
CODE_12E7A6:        CMP #$07                  
CODE_12E7A8:        BNE CODE_12E7BC           
CODE_12E7AA:        LDY $08                   
CODE_12E7AC:        BMI CODE_12E7B5           
CODE_12E7AE:        CPY #$10                  
CODE_12E7B0:        BPL CODE_12E7B5           
CODE_12E7B2:        JSR CODE_12E7BD           
CODE_12E7B5:        LDX $050E                 
CODE_12E7B8:        BNE CODE_12E7BC           
CODE_12E7BA:        LDA #$18                  
CODE_12E7BC:        RTS
                       
CODE_12E7BD:        STA $02C6                 
CODE_12E7C0:        REP #$20                  
CODE_12E7C2:        LDA $01                   
CODE_12E7C4:        STA $02C9                 
CODE_12E7C7:        SEC                       
CODE_12E7C8:        SBC #$0010                
CODE_12E7CB:        STA $01                   
CODE_12E7CD:        SEP #$20                  
CODE_12E7CF:        LDA [$01],y               
CODE_12E7D1:        CMP #$18                  
CODE_12E7D3:        BNE CODE_12E7DC           
CODE_12E7D5:        LDA #$07                  
CODE_12E7D7:        STA [$01],y               
CODE_12E7D9:        JSR CODE_12F13A           
CODE_12E7DC:        REP #$20                  
CODE_12E7DE:        LDA $02C9                 
CODE_12E7E1:        STA $01                   
CODE_12E7E3:        SEP #$20                  
CODE_12E7E5:        LDA $02C6                 
CODE_12E7E8:        RTS
                       
CODE_12E7E9:        LDY $E7                  
CODE_12E7EB:        JSR CODE_12E4CE           
CODE_12E7EE:        JSR CODE_12F8D6           
CODE_12E7F1:        DEC $050E                 ; \ If amount of Map16 blocks to transfer is negative, terminate.
CODE_12E7F4:        BPL CODE_12E7EB           ; /
CODE_12E7F6:        RTS                       ; Return.
                       
CODE_12E7F7:        LDA $0635                 
CODE_12E7FA:        CMP #$05                  
CODE_12E7FC:        BEQ CODE_12E827           
CODE_12E7FE:        LDY $E7                   
CODE_12E800:        LDA #$52                  
CODE_12E802:        STA [$01],y               
CODE_12E804:        JSR CODE_12F13A           
CODE_12E807:        LDA $E7                   
CODE_12E809:        CLC                       
CODE_12E80A:        ADC #$10                  
CODE_12E80C:        TAY                       
CODE_12E80D:        LDA #$52                  
CODE_12E80F:        STA [$01],y               
CODE_12E811:        JSR CODE_12F13A           
CODE_12E814:        LDA $0635                 
CODE_12E817:        CMP #$05                  
CODE_12E819:        BEQ CODE_12E822           
CODE_12E81B:        CMP #$06                  
CODE_12E81D:        BEQ CODE_12E822           
CODE_12E81F:        JSR CODE_12F928           
CODE_12E822:        JSL CODE_14F7B2           
CODE_12E826:        RTS
                       
CODE_12E827:        LDA $0533                 
CODE_12E82A:        CMP #$11                  
CODE_12E82C:        BNE CODE_12E835           
CODE_12E82E:        LDA $0534                 
CODE_12E831:        CMP #$02                  
CODE_12E833:        BEQ CODE_12E851           
CODE_12E835:        LDY $E7                   
CODE_12E837:        LDA #$52                  
CODE_12E839:        STA [$01],y               
CODE_12E83B:        JSR CODE_12F13A           
CODE_12E83E:        LDA $08                   
CODE_12E840:        TYA                       
CODE_12E841:        CLC                       
CODE_12E842:        ADC #$10                  
CODE_12E844:        TAY                       
CODE_12E845:        LDA #$52                  
CODE_12E847:        STA [$01],y               
CODE_12E849:        JSR CODE_12F13A           
CODE_12E84C:        JSL CODE_14F7B2           
CODE_12E850:        RTS
                       
CODE_12E851:        LDY $E7                   
CODE_12E853:        DEY                       
CODE_12E854:        LDA #$52                  
CODE_12E856:        STA [$01],y               
CODE_12E858:        INY                       
CODE_12E859:        LDA #$52                  
CODE_12E85B:        STA [$01],y               
CODE_12E85D:        LDX #$02                  
CODE_12E85F:        TYA                       
CODE_12E860:        CLC                       
CODE_12E861:        ADC #$10                  
CODE_12E863:        TAY                       
CODE_12E864:        LDA #$52                  
CODE_12E866:        STA [$01],y               
CODE_12E868:        DEX                       
CODE_12E869:        BPL CODE_12E85F           
CODE_12E86B:        JSL CODE_14F7FC           
CODE_12E86F:        RTS
                       
CODE_12E870:        LDY $E7                   
CODE_12E872:        LDA #$52                  
CODE_12E874:        STA [$01],y               
CODE_12E876:        JSR CODE_12F13A           
CODE_12E879:        LDY $E7                   
CODE_12E87B:        TYA                       
CODE_12E87C:        CLC                       
CODE_12E87D:        ADC #$10                  
CODE_12E87F:        TAY                       
CODE_12E880:        LDA #$52                  
CODE_12E882:        STA [$01],y               
CODE_12E884:        JSR CODE_12F13A           
CODE_12E887:        LDA $0635                 
CODE_12E88A:        CMP #$05                  
CODE_12E88C:        BEQ CODE_12E895           
CODE_12E88E:        CMP #$06                  
CODE_12E890:        BEQ CODE_12E895           
CODE_12E892:        JSR CODE_12F928           
CODE_12E895:        JSL CODE_14F7D7           
CODE_12E899:        RTS
                       
CODE_12E89A:        LDA $0533                 
CODE_12E89D:        CMP #$0B                  
CODE_12E89F:        BNE CODE_12E8A8           
CODE_12E8A1:        LDA $0534                 
CODE_12E8A4:        CMP #$01                  
CODE_12E8A6:        BEQ CODE_12E902           
CODE_12E8A8:        LDA $0533                 
CODE_12E8AB:        CMP #$0E                  
CODE_12E8AD:        BNE CODE_12E8B6           
CODE_12E8AF:        LDA $0534                 
CODE_12E8B2:        CMP #$03                  
CODE_12E8B4:        BEQ CODE_12E8FF           
CODE_12E8B6:        LDY $E7                   
CODE_12E8B8:        LDA $050F                 
CODE_12E8BB:        CMP #$06                  
CODE_12E8BD:        BNE CODE_12E8DD           
CODE_12E8BF:        LDA $0533                 
CODE_12E8C2:        CMP #$0E                  
CODE_12E8C4:        BNE CODE_12E8DD           
CODE_12E8C6:        LDA $0534                 
CODE_12E8C9:        CMP #$05                  
CODE_12E8CB:        BNE CODE_12E8DD           
CODE_12E8CD:        LDA #$36                  
CODE_12E8CF:        STA [$01],y               
CODE_12E8D1:        JSR CODE_12F13A           
CODE_12E8D4:        JSR CODE_12F914           
CODE_12E8D7:        DEC $050E                 
CODE_12E8DA:        BPL CODE_12E8CD           
CODE_12E8DC:        RTS
                       
CODE_12E8DD:        LDA $050F                 
CODE_12E8E0:        CMP #$06                  
CODE_12E8E2:        BNE CODE_12E8F4           
CODE_12E8E4:        LDA #$00                  
CODE_12E8E6:        STA [$01],y               
CODE_12E8E8:        JSR CODE_12F154           
CODE_12E8EB:        STY $08                   
CODE_12E8ED:        JSR CODE_12E763           
CODE_12E8F0:        LDY $08                   
CODE_12E8F2:        BRA CODE_12E8F7           

CODE_12E8F4:        JSR CODE_12E4CE           
CODE_12E8F7:        JSR CODE_12F914           
CODE_12E8FA:        DEC $050E                 
CODE_12E8FD:        BPL CODE_12E8F4           
CODE_12E8FF:        RTS
                       
DATA_12E900:        db $07,$13
                 
CODE_12E902:        LDY $E7                   
CODE_12E904:        TYA                       
CODE_12E905:        AND #$10                  
CODE_12E907:        LSR A                     
CODE_12E908:        LSR A                     
CODE_12E909:        LSR A                     
CODE_12E90A:        LSR A                     
CODE_12E90B:        TAX                       
CODE_12E90C:        LDA.l DATA_12E900,x             
CODE_12E910:        STA [$01],y               
CODE_12E912:        JSR CODE_12F154           
CODE_12E915:        TYA                       
CODE_12E916:        CLC                       
CODE_12E917:        ADC #$10                  
CODE_12E919:        CMP #$B0                  
CODE_12E91B:        BCS CODE_12E920                   
CODE_12E91D:        TAY                       
CODE_12E91E:        BRA CODE_12E904           

CODE_12E920:        RTS
                       
CODE_12E921:        LDX $050F                 
CODE_12E924:        CPX #$05                  
CODE_12E926:        BNE CODE_12E92E           
CODE_12E928:        LDA $0545                 
CODE_12E92B:        BEQ CODE_12E92E           
CODE_12E92D:        INX                       
CODE_12E92E:        LDA.w DATA_11B675,x               
CODE_12E931:        LDY $0635                 
CODE_12E934:        CPY #$06                  
CODE_12E936:        BEQ CODE_12E93B           
CODE_12E938:        LDA.w DATA_11B66E,x               
CODE_12E93B:        LDY $00E7                 
CODE_12E93E:        PHA                       
CODE_12E93F:        DEY                       
CODE_12E940:        JSR CODE_12F0BF           
CODE_12E943:        JSL CODE_159895           
CODE_12E947:        INY                       
CODE_12E948:        INY                       
CODE_12E949:        JSR CODE_12F0FC           
CODE_12E94C:        JSL CODE_1598DF           
CODE_12E950:        DEY                       
CODE_12E951:        PLA                       
CODE_12E952:        STA [$01],y               
CODE_12E954:        JSR CODE_12F13A           
CODE_12E957:        RTS
                       
CODE_12E958:        LDA $0635                 
CODE_12E95B:        CMP #$04                  
CODE_12E95D:        BNE CODE_12E962           
CODE_12E95F:        JMP CODE_12EE3F           

CODE_12E962:        LDY $E7                   
CODE_12E964:        LDA $050F                 
CODE_12E967:        SEC                       
CODE_12E968:        SBC #$0A                  
CODE_12E96A:        TAX                       
CODE_12E96B:        LDA.w DATA_11B67C,x               
CODE_12E96E:        STA [$01],y               
CODE_12E970:        JSR CODE_12F13A           
CODE_12E973:        DEC $050E                 
CODE_12E976:        BEQ CODE_12E988           
CODE_12E978:        JSR CODE_12F8D6           
CODE_12E97B:        LDA.w DATA_11B67E,x               
CODE_12E97E:        STA [$01],y               
CODE_12E980:        JSR CODE_12F13A           
CODE_12E983:        DEC $050E                 
CODE_12E986:        BNE CODE_12E978           
CODE_12E988:        JSR CODE_12F8D6           
CODE_12E98B:        LDA.w DATA_11B680,x               
CODE_12E98E:        STA [$01],y               
CODE_12E990:        JSR CODE_12F13A           
CODE_12E993:        RTS
                       
CODE_12E994:        LDA $0635                 
CODE_12E997:        CMP #$06                  
CODE_12E999:        BNE CODE_12E99E           
CODE_12E99B:        JMP CODE_12EFF7           

CODE_12E99E:        LDA $0533                 
CODE_12E9A1:        BNE CODE_12E9B8           
CODE_12E9A3:        LDA $0534                 
CODE_12E9A6:        CMP #$02                  
CODE_12E9A8:        BNE CODE_12E9B8           
CODE_12E9AA:        LDA $00E9                 
CODE_12E9AD:        CMP #$09                  
CODE_12E9AF:        BNE CODE_12E9B8           
CODE_12E9B1:        LDA $00E7                 
CODE_12E9B4:        CMP #$0F                  
CODE_12E9B6:        BEQ CODE_12E9F0           
CODE_12E9B8:        LDX #$00                  
CODE_12E9BA:        STX $0B                   
CODE_12E9BC:        LDX $E9                   
CODE_12E9BE:        JSR CODE_12F8B0           
CODE_12E9C1:        LDX $0B                   
CODE_12E9C3:        LDY $E7                   
CODE_12E9C5:        LDA $050E                 
CODE_12E9C8:        STA $07                   
CODE_12E9CA:        JSR CODE_12E9F1           
CODE_12E9CD:        INX                       
CODE_12E9CE:        LDA $07                   
CODE_12E9D0:        BEQ CODE_12E9DA           
CODE_12E9D2:        JSR CODE_12F8D6           
CODE_12E9D5:        JSR CODE_12E9F1           
CODE_12E9D8:        BNE CODE_12E9D2           
CODE_12E9DA:        JSR CODE_12F8D6           
CODE_12E9DD:        INX                       
CODE_12E9DE:        JSR CODE_12E9F1           
CODE_12E9E1:        LDA $E7                   
CODE_12E9E3:        CLC                       
CODE_12E9E4:        ADC #$10                  
CODE_12E9E6:        CMP #$F0                  
CODE_12E9E8:        BCS CODE_12E9F0                   
CODE_12E9EA:        LDX #$03                  
CODE_12E9EC:        STA $E7                   
CODE_12E9EE:        BRA CODE_12E9BA
           
CODE_12E9F0:        RTS
                       
CODE_12E9F1:        STX $08                   
CODE_12E9F3:        LDA $02                   
CODE_12E9F5:        STA $0714                 
CODE_12E9F8:        CLC                       
CODE_12E9F9:        ADC #$70                  
CODE_12E9FB:        STA $02                   
CODE_12E9FD:        LDA [$01],y               
CODE_12E9FF:        BEQ CODE_12EA08           
CODE_12EA01:        LDA $0714                 
CODE_12EA04:        STA $02                   
CODE_12EA06:        BRA CODE_12EA6C           

CODE_12EA08:        LDA $0714                 
CODE_12EA0B:        STA $02                   
CODE_12EA0D:        TXA                       
CODE_12EA0E:        BNE CODE_12EA2A           
CODE_12EA10:        LDX #$02                  
CODE_12EA12:        LDA [$01],y               
CODE_12EA14:        CMP.w DATA_11B68B,x               
CODE_12EA17:        BEQ CODE_12EA25           
CODE_12EA19:        DEX                       
CODE_12EA1A:        CMP.w DATA_11B68B,x               
CODE_12EA1D:        BEQ CODE_12EA25           
CODE_12EA1F:        DEX                       
CODE_12EA20:        CMP.w DATA_11B68B,x               
CODE_12EA23:        BNE CODE_12EA48           
CODE_12EA25:        LDA.w DATA_11B68E,x               
CODE_12EA28:        BNE CODE_12EA5B           
CODE_12EA2A:        LDX $08                   
CODE_12EA2C:        CPX #$02                  
CODE_12EA2E:        BNE CODE_12EA48           
CODE_12EA30:        LDA [$01],y               
CODE_12EA32:        CMP.w DATA_11B68B,x               
CODE_12EA35:        BEQ CODE_12EA43           
CODE_12EA37:        DEX                       
CODE_12EA38:        CMP.w DATA_11B68B,x               
CODE_12EA3B:        BEQ CODE_12EA43           
CODE_12EA3D:        DEX                       
CODE_12EA3E:        CMP.w DATA_11B68B,x               
CODE_12EA41:        BNE CODE_12EA48           
CODE_12EA43:        LDA.w DATA_11B691,x               
CODE_12EA46:        BNE CODE_12EA5B           
CODE_12EA48:        LDX #$08                  
CODE_12EA4A:        LDA [$01],y               
CODE_12EA4C:        CMP.w DATA_11B682,x               
CODE_12EA4F:        BEQ CODE_12EA56           
CODE_12EA51:        DEX                       
CODE_12EA52:        BPL CODE_12EA4A           
CODE_12EA54:        BRA CODE_12EA6C           

CODE_12EA56:        LDX $08                   
CODE_12EA58:        LDA.w DATA_11B682,x               
CODE_12EA5B:        PHA                       
CODE_12EA5C:        DEY                       
CODE_12EA5D:        JSR CODE_12F0BF           
CODE_12EA60:        INY                       
CODE_12EA61:        PLA                       
CODE_12EA62:        STA [$01],y               
CODE_12EA64:        JSR CODE_12F13A           
CODE_12EA67:        INY                       
CODE_12EA68:        JSR CODE_12F0FC           
CODE_12EA6B:        DEY                       
CODE_12EA6C:        LDX $08                   
CODE_12EA6E:        DEC $07                   
CODE_12EA70:        RTS
                       
CODE_12EA71:        LDA $0635                 
CODE_12EA74:        CMP #$04                  
CODE_12EA76:        BEQ CODE_12EAA1           
CODE_12EA78:        LDA $050F                 
CODE_12EA7B:        SEC                       
CODE_12EA7C:        SBC #$05                  
CODE_12EA7E:        STA $07                   
CODE_12EA80:        TAX                       
CODE_12EA81:        LDY $E7                   
CODE_12EA83:        LDA.w DATA_11B694,x               
CODE_12EA86:        STA [$01],y               
CODE_12EA88:        JSR CODE_12F13A           
CODE_12EA8B:        JSR CODE_12F914           
CODE_12EA8E:        LDA [$01],y               
CODE_12EA90:        CMP #$40                  
CODE_12EA92:        BNE CODE_12EAA0           
CODE_12EA94:        LDX $07                   
CODE_12EA96:        LDA.w DATA_11B696,x               
CODE_12EA99:        STA [$01],y               
CODE_12EA9B:        JSR CODE_12F13A           
CODE_12EA9E:        BNE CODE_12EA8B           
CODE_12EAA0:        RTS
                       
CODE_12EAA1:        LDX #$00                  
CODE_12EAA3:        LDA $050F                 
CODE_12EAA6:        CMP #$05                  
CODE_12EAA8:        BEQ CODE_12EAAB           
CODE_12EAAA:        INX                       
CODE_12EAAB:        STX $07                   
CODE_12EAAD:        LDY $E7                   
CODE_12EAAF:        LDA.w DATA_11B698,x               
CODE_12EAB2:        STA [$01],y               
CODE_12EAB4:        JSR CODE_12F13A           
CODE_12EAB7:        JSR CODE_12F914           
CODE_12EABA:        LDA [$01],y               
CODE_12EABC:        CMP #$40                  
CODE_12EABE:        BNE CODE_12EACE           
CODE_12EAC0:        LDX $07                   
CODE_12EAC2:        LDA.w DATA_11B69A,x               
CODE_12EAC5:        STA [$01],y               
CODE_12EAC7:        JSR CODE_12F13A           
CODE_12EACA:        CPY #$E0                  
CODE_12EACC:        BCC CODE_12EAB7           
CODE_12EACE:        RTS
                       
CODE_12EACF:        LDA $0533                 
CODE_12EAD2:        CMP #$06                  
CODE_12EAD4:        BNE CODE_12EAEE           
CODE_12EAD6:        LDA $0534                 
CODE_12EAD9:        CMP #$03                  
CODE_12EADB:        BNE CODE_12EAEE           
CODE_12EADD:        LDY $E7                   
CODE_12EADF:        LDA #$01                  
CODE_12EAE1:        STA [$01],y               
CODE_12EAE3:        JSR CODE_12F13A           
CODE_12EAE6:        INY                       
CODE_12EAE7:        LDA #$02                  
CODE_12EAE9:        STA [$01],y               
CODE_12EAEB:        JSR CODE_12F13A           
CODE_12EAEE:        RTS
                       
CODE_12EAEF:        LDA $0533                 
CODE_12EAF2:        CMP #$06                  
CODE_12EAF4:        BNE CODE_12EB06           
CODE_12EAF6:        LDA $0534                 
CODE_12EAF9:        CMP #$03                  
CODE_12EAFB:        BNE CODE_12EB06           
CODE_12EAFD:        LDY $E7                   
CODE_12EAFF:        LDA #$03                  
CODE_12EB01:        STA [$01],y               
CODE_12EB03:        JSR CODE_12F13A           
CODE_12EB06:        RTS
                       
CODE_12EB07:        LDY $E7                   
CODE_12EB09:        LDA $050F                 
CODE_12EB0C:        SEC                       
CODE_12EB0D:        SBC #$06                  
CODE_12EB0F:        TAX                       
CODE_12EB10:        LDA.w DATA_11B69C,x               
CODE_12EB13:        STA [$01],y               
CODE_12EB15:        JSR CODE_12F13A           
CODE_12EB18:        JSR CODE_12F914           
CODE_12EB1B:        LDA [$01],y               
CODE_12EB1D:        CMP #$40                  
CODE_12EB1F:        BNE CODE_12EB25           
CODE_12EB21:        LDA #$6B                  
CODE_12EB23:        BRA CODE_12EB13           

CODE_12EB25:        TYA                       
CODE_12EB26:        SEC                       
CODE_12EB27:        SBC #$10                  
CODE_12EB29:        TAY                       
CODE_12EB2A:        LDA #$6C                  
CODE_12EB2C:        STA [$01],y               
CODE_12EB2E:        JSR CODE_12F13A           
CODE_12EB31:        RTS
                       
CODE_12EB32:        LDY $E7                   
CODE_12EB34:        LDA $050F                 
CODE_12EB37:        CMP #$0D                  
CODE_12EB39:        BEQ CODE_12EB57           
CODE_12EB3B:        DEY                       
CODE_12EB3C:        JSR CODE_12F0BF           
CODE_12EB3F:        JSL CODE_159895           
CODE_12EB43:        INY                       
CODE_12EB44:        LDA #$C1                  
CODE_12EB46:        STA [$01],y               
CODE_12EB48:        JSR CODE_12F13A           
CODE_12EB4B:        INY                       
CODE_12EB4C:        JSR CODE_12F0FC           
CODE_12EB4F:        JSL CODE_1598DF           
CODE_12EB53:        DEY                       
CODE_12EB54:        JSR CODE_12F914           
CODE_12EB57:        LDA [$01],y               
CODE_12EB59:        CMP #$40                  
CODE_12EB5B:        BNE CODE_12EB7E           
CODE_12EB5D:        DEY                       
CODE_12EB5E:        JSR CODE_12F0BF           
CODE_12EB61:        JSL CODE_159895           
CODE_12EB65:        INY                       
CODE_12EB66:        LDA #$C2                  
CODE_12EB68:        STA [$01],y               
CODE_12EB6A:        JSR CODE_12F13A           
CODE_12EB6D:        INY                       
CODE_12EB6E:        JSR CODE_12F0FC           
CODE_12EB71:        JSL CODE_1598DF           
CODE_12EB75:        DEY                       
CODE_12EB76:        LDA $EB                   
CODE_12EB78:        BEQ CODE_12EB54           
CODE_12EB7A:        CPY #$E0                  
CODE_12EB7C:        BCC CODE_12EB54           
CODE_12EB7E:        RTS
                       
CODE_12EB7F:        LDY $E7                   
CODE_12EB81:        DEY                       
CODE_12EB82:        JSL CODE_159895           
CODE_12EB86:        INY                       
CODE_12EB87:        LDA #$C3                  
CODE_12EB89:        STA [$01],y               
CODE_12EB8B:        JSR CODE_12F13A           
CODE_12EB8E:        INY                       
CODE_12EB8F:        JSL CODE_1598DF           
CODE_12EB93:        DEY                       
CODE_12EB94:        TYA                       
CODE_12EB95:        SEC                       
CODE_12EB96:        SBC #$10                  
CODE_12EB98:        TAY                       
CODE_12EB99:        CMP #$F0                  
CODE_12EB9B:        BCS CODE_12EBA7                   
CODE_12EB9D:        LDA [$01],y               
CODE_12EB9F:        CMP #$40                  
CODE_12EBA1:        BNE CODE_12EBA7           
CODE_12EBA3:        LDA #$C2                  
CODE_12EBA5:        BRA CODE_12EB89
           
CODE_12EBA7:        RTS
                       
CODE_12EBA8:        LDX $050F                 
CODE_12EBAB:        LDA.w DATA_11B69F,x               
CODE_12EBAE:        CMP #$5A                  
CODE_12EBB0:        BNE CODE_12EBBC           
CODE_12EBB2:        LDA.w DATA_11B69F,x               
CODE_12EBB5:        LDY $0242                 
CODE_12EBB8:        BNE CODE_12EBBC           
CODE_12EBBA:        LDA #$EB                  
CODE_12EBBC:        LDY $E7                   
CODE_12EBBE:        STA [$01],y               
CODE_12EBC0:        JSR CODE_12F13A           
CODE_12EBC3:        RTS
                       
CODE_12EBC4:        STA $E7                   
CODE_12EBC6:        LDA $0533                 
CODE_12EBC9:        CMP #$02                  
CODE_12EBCB:        BEQ CODE_12EBD5           
CODE_12EBCD:        CMP #$08                  
CODE_12EBCF:        BEQ CODE_12EBD5           
CODE_12EBD1:        CMP #$0B                  
CODE_12EBD3:        BNE CODE_12EBD8           
CODE_12EBD5:        BRL CODE_12F174           

CODE_12EBD8:        LDA $050F                 
CODE_12EBDB:        SEC                       
CODE_12EBDC:        SBC #$08                  
CODE_12EBDE:        STA $08                   
CODE_12EBE0:        LDX $E9                   
CODE_12EBE2:        JSR CODE_12F8B0           
CODE_12EBE5:        LDY $E7                   
CODE_12EBE7:        LDA #$05                  
CODE_12EBE9:        STA $07                   
CODE_12EBEB:        LDA [$01],y               
CODE_12EBED:        CMP #$40                  
CODE_12EBEF:        BNE CODE_12EC17           
CODE_12EBF1:        LDX $08                   
CODE_12EBF3:        LDA $0635                 
CODE_12EBF6:        CMP #$06                  
CODE_12EBF8:        BNE CODE_12EBFF           
CODE_12EBFA:        JSL CODE_15A090           
CODE_12EBFE:        RTS
                       
CODE_12EBFF:        LDA.w DATA_11B6AE,x               
CODE_12EC02:        STA [$01],y               
CODE_12EC04:        JSR CODE_12F13A           
CODE_12EC07:        JSR CODE_12F8D6           
CODE_12EC0A:        DEC $07                   
CODE_12EC0C:        BPL CODE_12EBF1           
CODE_12EC0E:        LDA $E7                   
CODE_12EC10:        CLC                       
CODE_12EC11:        ADC #$10                  
CODE_12EC13:        CMP #$F0                  
CODE_12EC15:        BCC CODE_12EBC4           
CODE_12EC17:        RTS
                       
CODE_12EC18:        STZ $08                   
CODE_12EC1A:        LDA $0635                 
CODE_12EC1D:        CMP #$03                  
CODE_12EC1F:        BNE CODE_12EC28           
CODE_12EC21:        JSL CODE_159DCA           
CODE_12EC25:        RTS
                       
CODE_12EC26:        STA $E7                   
CODE_12EC28:        LDX $E9                   
CODE_12EC2A:        JSR CODE_12F8B0           
CODE_12EC2D:        LDY $E7                   
CODE_12EC2F:        DEY                       
CODE_12EC30:        JSR CODE_12F0BF           
CODE_12EC33:        JSL CODE_159895           
CODE_12EC37:        INY                       
CODE_12EC38:        LDA $050E                 
CODE_12EC3B:        STA $07                   
CODE_12EC3D:        LDX $08                   
CODE_12EC3F:        LDA.w DATA_11B6B2,x               
CODE_12EC42:        STA [$01],y               
CODE_12EC44:        JSR CODE_12F13A           
CODE_12EC47:        JSR CODE_12F8D6           
CODE_12EC4A:        DEC $07                   
CODE_12EC4C:        BPL CODE_12EC3F           
CODE_12EC4E:        JSR CODE_12F0FC           
CODE_12EC51:        JSL CODE_1598DF           
CODE_12EC55:        LDA #$01                  
CODE_12EC57:        STA $08                   
CODE_12EC59:        LDA $E7                   
CODE_12EC5B:        CLC                       
CODE_12EC5C:        ADC #$10                  
CODE_12EC5E:        CMP #$F0                  
CODE_12EC60:        BCC CODE_12EC26           
CODE_12EC62:        RTS
                       
CODE_12EC63:        LDY $E7                   
CODE_12EC65:        STZ $08                   
CODE_12EC67:        STZ $0242                 
CODE_12EC6A:        PHY                       
CODE_12EC6B:        TYA                       
CODE_12EC6C:        CLC                       
CODE_12EC6D:        ADC #$10                  
CODE_12EC6F:        TAY                       
CODE_12EC70:        LDA [$01],y               
CODE_12EC72:        CMP #$40                  
CODE_12EC74:        BEQ CODE_12EC79           
CODE_12EC76:        INC $0242                 
CODE_12EC79:        PLY                       
CODE_12EC7A:        LDA $0242                 
CODE_12EC7D:        BEQ CODE_12EC83           
CODE_12EC7F:        LDA #$8A                  
CODE_12EC81:        BRA CODE_12EC85           

CODE_12EC83:        LDA #$84                  
CODE_12EC85:        STA [$01],y               
CODE_12EC87:        JSR CODE_12F13A           
CODE_12EC8A:        LDX $08                   
CODE_12EC8C:        BEQ CODE_12ECDF           
CODE_12EC8E:        INY                       
CODE_12EC8F:        LDA $0242                 
CODE_12EC92:        BEQ CODE_12EC98           
CODE_12EC94:        LDA #$8B                  
CODE_12EC96:        BRA CODE_12EC9A           

CODE_12EC98:        LDA #$88                  
CODE_12EC9A:        STA [$01],y               
CODE_12EC9C:        JSR CODE_12F13A           
CODE_12EC9F:        DEX                       
CODE_12ECA0:        BEQ CODE_12ECCE           
CODE_12ECA2:        INY                       
CODE_12ECA3:        LDA $0242                 
CODE_12ECA6:        BEQ CODE_12ECAC           
CODE_12ECA8:        LDA #$8C                  
CODE_12ECAA:        BRA CODE_12ECAE           

CODE_12ECAC:        LDA #$85                  
CODE_12ECAE:        STA [$01],y               
CODE_12ECB0:        JSR CODE_12F13A           
CODE_12ECB3:        DEX                       
CODE_12ECB4:        BNE CODE_12ECA2           
CODE_12ECB6:        LDX $08                   
CODE_12ECB8:        INY                       
CODE_12ECB9:        LDA $0242                 
CODE_12ECBC:        BEQ CODE_12ECC2           
CODE_12ECBE:        LDA #$8D                  
CODE_12ECC0:        BRA CODE_12ECC4           

CODE_12ECC2:        LDA #$86                  
CODE_12ECC4:        STA [$01],y               
CODE_12ECC6:        JSR CODE_12F13A           
CODE_12ECC9:        DEX                       
CODE_12ECCA:        CPX #$01                  
CODE_12ECCC:        BNE CODE_12ECB8           
CODE_12ECCE:        INY                       
CODE_12ECCF:        LDA $0242                 
CODE_12ECD2:        BEQ CODE_12ECD8           
CODE_12ECD4:        LDA #$8E                  
CODE_12ECD6:        BRA CODE_12ECDA           

CODE_12ECD8:        LDA #$89                  
CODE_12ECDA:        STA [$01],y               
CODE_12ECDC:        JSR CODE_12F13A           
CODE_12ECDF:        INY                       
CODE_12ECE0:        LDA $0242                 
CODE_12ECE3:        BEQ CODE_12ECE9           
CODE_12ECE5:        LDA #$8F                  
CODE_12ECE7:        BRA CODE_12ECEB           

CODE_12ECE9:        LDA #$87                  
CODE_12ECEB:        STA [$01],y               
CODE_12ECED:        JSR CODE_12F13A           
CODE_12ECF0:        CMP #$8F                  
CODE_12ECF2:        BNE CODE_12ECF5           
CODE_12ECF4:        RTS
                       
CODE_12ECF5:        INC $08                   
CODE_12ECF7:        LDA $E7                   
CODE_12ECF9:        CLC                       
CODE_12ECFA:        ADC #$10                  
CODE_12ECFC:        STA $E7                   
CODE_12ECFE:        SEC                       
CODE_12ECFF:        SBC $08                   
CODE_12ED01:        TAY                       
CODE_12ED02:        JMP CODE_12EC6A           

CODE_12ED05:        LDY $E7                   
CODE_12ED07:        LDA #$31                  
CODE_12ED09:        STA [$01],y               
CODE_12ED0B:        JSR CODE_12F13A           
CODE_12ED0E:        JSR CODE_12F914           
CODE_12ED11:        LDA [$01],y               
CODE_12ED13:        CMP #$40                  
CODE_12ED15:        BEQ CODE_12ED18           
CODE_12ED17:        RTS
                       
CODE_12ED18:        LDA #$32                  
CODE_12ED1A:        BRA CODE_12ED09           

CODE_12ED1C:        RTS
                       
CODE_12ED1D:        LDY $E7                   
CODE_12ED1F:        LDA $050F                 
CODE_12ED22:        SEC                       
CODE_12ED23:        SBC #$0C                  
CODE_12ED25:        TAX                       
CODE_12ED26:        CMP #$03                  
CODE_12ED28:        BEQ CODE_12ED2F           
CODE_12ED2A:        LDA $0246                 
CODE_12ED2D:        BEQ CODE_12ED41           
CODE_12ED2F:        PHX                       
CODE_12ED30:        TAX                       
CODE_12ED31:        DEX                       
CODE_12ED32:        JSR CODE_12F0A5           
CODE_12ED35:        LDA.w DATA_11B6D7,x               
CODE_12ED38:        STA [$01],y               
CODE_12ED3A:        JSR CODE_12F13A           
CODE_12ED3D:        JSR CODE_12F8D6           
CODE_12ED40:        PLX                       
CODE_12ED41:        LDA.w DATA_11B6C3,x               
CODE_12ED44:        STA [$01],y               
CODE_12ED46:        JSR CODE_12F13A           
CODE_12ED49:        DEC $050E                 
CODE_12ED4C:        JSR CODE_12F8D6           
CODE_12ED4F:        LDA.w DATA_11B6C7,x               
CODE_12ED52:        STA [$01],y               
CODE_12ED54:        JSR CODE_12F13A           
CODE_12ED57:        DEC $050E                 
CODE_12ED5A:        JSR CODE_12F8D6           
CODE_12ED5D:        LDA.w DATA_11B6CB,x               
CODE_12ED60:        STA [$01],y               
CODE_12ED62:        JSR CODE_12F13A           
CODE_12ED65:        DEC $050E                 
CODE_12ED68:        LDA $050E                 
CODE_12ED6B:        CMP #$01                  
CODE_12ED6D:        BNE CODE_12ED5A           
CODE_12ED6F:        JSR CODE_12F8D6           
CODE_12ED72:        LDA.w DATA_11B6CF,x               
CODE_12ED75:        STA [$01],y               
CODE_12ED77:        JSR CODE_12F13A           
CODE_12ED7A:        DEC $050E                 
CODE_12ED7D:        JSR CODE_12F8D6           
CODE_12ED80:        LDA.w DATA_11B6D3,x               
CODE_12ED83:        STA [$01],y               
CODE_12ED85:        JSR CODE_12F13A           
CODE_12ED88:        CPX #$03                  
CODE_12ED8A:        BEQ CODE_12ED91           
CODE_12ED8C:        LDX $0246                 
CODE_12ED8F:        BEQ CODE_12EDA0           
CODE_12ED91:        DEX                       
CODE_12ED92:        JSR CODE_12F8D6           
CODE_12ED95:        LDA.w DATA_11B6DA,x               
CODE_12ED98:        STA [$01],y               
CODE_12ED9A:        JSR CODE_12F13A           
CODE_12ED9D:        JSR CODE_12F0A5           
CODE_12EDA0:        RTS
                       
CODE_12EDA1:        STZ $0242                 
CODE_12EDA4:        STZ $0246                 
CODE_12EDA7:        LDA $0635                 
CODE_12EDAA:        CMP #$06                  
CODE_12EDAC:        BNE CODE_12EDB1           
CODE_12EDAE:        JMP CODE_12F091           

CODE_12EDB1:        LDA $050E                 
CODE_12EDB4:        STA $07                   
CODE_12EDB6:        LDA #$0C                  
CODE_12EDB8:        STA $050F                 
CODE_12EDBB:        JSR CODE_12ED1D           
CODE_12EDBE:        INC $050F                 
CODE_12EDC1:        LDA $07                   
CODE_12EDC3:        STA $050E                 
CODE_12EDC6:        LDA $E7                   
CODE_12EDC8:        CLC                       
CODE_12EDC9:        ADC #$10                  
CODE_12EDCB:        STA $E7                   
CODE_12EDCD:        LDX $E9                   
CODE_12EDCF:        JSR CODE_12F8B0           
CODE_12EDD2:        INC $0246                 
CODE_12EDD5:        JSR CODE_12ED1D           
CODE_12EDD8:        INC $050F                 
CODE_12EDDB:        TYA                       
CODE_12EDDC:        AND #$F0                  
CODE_12EDDE:        CMP #$B0                  
CODE_12EDE0:        BNE CODE_12EDED           
CODE_12EDE2:        LDA $07                   
CODE_12EDE4:        CMP #$0D                  
CODE_12EDE6:        BMI CODE_12EE15           
CODE_12EDE8:        INC $0242                 
CODE_12EDEB:        BRA CODE_12EE15           

CODE_12EDED:        INC $0242                 
CODE_12EDF0:        STZ $0247                 
CODE_12EDF3:        LDA $07                   
CODE_12EDF5:        STA $050E                 
CODE_12EDF8:        LDA $E7                   
CODE_12EDFA:        CLC                       
CODE_12EDFB:        ADC #$10                  
CODE_12EDFD:        STA $E7                   
CODE_12EDFF:        CMP #$B0                  
CODE_12EE01:        BCC CODE_12EE03           
CODE_12EE03:        LDX $E9                   
CODE_12EE05:        JSR CODE_12F8B0           
CODE_12EE08:        INC $0246                 
CODE_12EE0B:        JSR CODE_12ED1D           
CODE_12EE0E:        TYA                       
CODE_12EE0F:        AND #$F0                  
CODE_12EE11:        CMP #$B0                  
CODE_12EE13:        BNE CODE_12EE2A           
CODE_12EE15:        INC $0247                 
CODE_12EE18:        JSR CODE_12F8D6           
CODE_12EE1B:        JSR CODE_12F8D6           
CODE_12EE1E:        LDA #$E1                  
CODE_12EE20:        STA [$01],y               
CODE_12EE22:        JSR CODE_12F13A           
CODE_12EE25:        INC $050F                 
CODE_12EE28:        BRA CODE_12EDF0           

CODE_12EE2A:        LDA $050F                 
CODE_12EE2D:        CMP #$0E                  
CODE_12EE2F:        BCC CODE_12EDF0           
CODE_12EE31:        JSR CODE_12F8D6           
CODE_12EE34:        JSR CODE_12F8D6           
CODE_12EE37:        LDA #$11                  
CODE_12EE39:        STA [$01],y               
CODE_12EE3B:        JSR CODE_12F13A           
CODE_12EE3E:        RTS
                       
CODE_12EE3F:        LDY $E7                   
CODE_12EE41:        LDA $050F                 
CODE_12EE44:        SEC                       
CODE_12EE45:        SBC #$0A                  
CODE_12EE47:        TAX                       
CODE_12EE48:        JSR CODE_12EE85           
CODE_12EE4B:        LDA.w DATA_11B6DF,x               
CODE_12EE4E:        STA [$01],y               
CODE_12EE50:        JSR CODE_12F13A           
CODE_12EE53:        JSL CODE_159D4B           
CODE_12EE57:        LDX $07                   
CODE_12EE59:        DEC $050E                 
CODE_12EE5C:        BEQ CODE_12EE72           
CODE_12EE5E:        JSR CODE_12F8D6           
CODE_12EE61:        LDA.w DATA_11B6E2,x               
CODE_12EE64:        STA [$01],y               
CODE_12EE66:        JSR CODE_12F13A           
CODE_12EE69:        JSL CODE_159D4B           
CODE_12EE6D:        DEC $050E                 
CODE_12EE70:        BNE CODE_12EE5E           
CODE_12EE72:        JSR CODE_12F8D6           
CODE_12EE75:        JSR CODE_12EE85           
CODE_12EE78:        LDA.w DATA_11B6E4,x               
CODE_12EE7B:        STA [$01],y               
CODE_12EE7D:        JSR CODE_12F13A           
CODE_12EE80:        JSL CODE_159D4B           
CODE_12EE84:        RTS
                       
CODE_12EE85:        STX $07                   
CODE_12EE87:        LDA [$01],y               
CODE_12EE89:        CMP #$40                  
CODE_12EE8B:        BEQ CODE_12EE8F           
CODE_12EE8D:        LDX #$02                  
CODE_12EE8F:        RTS
                       
CODE_12EE90:        STZ $07                   
CODE_12EE92:        STZ $024A                 
CODE_12EE95:        LDY $E7                   
CODE_12EE97:        LDX $E9                   
CODE_12EE99:        JSR CODE_12F8B0           
CODE_12EE9C:        LDA [$01],y               
CODE_12EE9E:        CMP #$40                  
CODE_12EEA0:        BNE CODE_12EED5           
CODE_12EEA2:        LDA $024A                 
CODE_12EEA5:        CLC                       
CODE_12EEA6:        ADC #$5C                  
CODE_12EEA8:        STA [$01],y               
CODE_12EEAA:        JSR CODE_12F154           
CODE_12EEAD:        INC $024A                 
CODE_12EEB0:        LDA $024A                 
CODE_12EEB3:        AND #$0F                  
CODE_12EEB5:        CMP #$0C                  
CODE_12EEB7:        BEQ CODE_12EEBE           
CODE_12EEB9:        JSR CODE_12F8D6           
CODE_12EEBC:        BRA CODE_12EEA2           

CODE_12EEBE:        LDY $E7                   
CODE_12EEC0:        JSR CODE_12F914           
CODE_12EEC3:        STY $E7                   
CODE_12EEC5:        INC $07                   
CODE_12EEC7:        LDA $024A                 
CODE_12EECA:        CMP #$1C                  
CODE_12EECC:        BEQ CODE_12EE92           
CODE_12EECE:        LDA #$10                  
CODE_12EED0:        STA $024A                 
CODE_12EED3:        BRA CODE_12EE95           

CODE_12EED5:        LDA $07                   
CODE_12EED7:        CMP #$0F                  
CODE_12EED9:        BEQ CODE_12EF22           
CODE_12EEDB:        LDA $0533                 
CODE_12EEDE:        CMP #$0E                  
CODE_12EEE0:        BNE CODE_12EEEF           
CODE_12EEE2:        LDA $0534                 
CODE_12EEE5:        CMP #$01                  
CODE_12EEE7:        BNE CODE_12EEEF           
CODE_12EEE9:        LDA $E9                   
CODE_12EEEB:        CMP #$08                  
CODE_12EEED:        BNE CODE_12EF22           
CODE_12EEEF:        TYA                       
CODE_12EEF0:        SEC                       
CODE_12EEF1:        SBC #$11                  
CODE_12EEF3:        TAY                       
CODE_12EEF4:        LDA #$0E                  
CODE_12EEF6:        CLC                       
CODE_12EEF7:        ADC #$5C                  
CODE_12EEF9:        STA [$01],y               
CODE_12EEFB:        JSR CODE_12F154           
CODE_12EEFE:        INY                       
CODE_12EEFF:        LDA #$0F                  
CODE_12EF01:        CLC                       
CODE_12EF02:        ADC #$5C                  
CODE_12EF04:        STA [$01],y               
CODE_12EF06:        LDX #$0A                  
CODE_12EF08:        JSR CODE_12F8D6           
CODE_12EF0B:        DEX                       
CODE_12EF0C:        BPL CODE_12EF08           
CODE_12EF0E:        LDA #$0C                  
CODE_12EF10:        CLC                       
CODE_12EF11:        ADC #$5C                  
CODE_12EF13:        STA [$01],y               
CODE_12EF15:        JSR CODE_12F8D6           
CODE_12EF18:        LDA #$0D                  
CODE_12EF1A:        CLC                       
CODE_12EF1B:        ADC #$5C                  
CODE_12EF1D:        STA [$01],y               
CODE_12EF1F:        JSR CODE_12F154           
CODE_12EF22:        RTS
                       
CODE_12EF23:        LDA $E7                   
CODE_12EF25:        STA $0721                 
CODE_12EF28:        LDX #$00                  
CODE_12EF2A:        LDY $E7                   
CODE_12EF2C:        LDA.w DATA_11B6ED,x               
CODE_12EF2F:        STA [$01],y               
CODE_12EF31:        CMP #$83                  
CODE_12EF33:        BEQ CODE_12EF3A           
CODE_12EF35:        JSR CODE_12F154           
CODE_12EF38:        BRA CODE_12EF3D           

CODE_12EF3A:        JSR CODE_12F13A           
CODE_12EF3D:        INX                       
CODE_12EF3E:        INY                       
CODE_12EF3F:        LDA.w DATA_11B6ED,x               
CODE_12EF42:        STA [$01],y               
CODE_12EF44:        CMP #$83                  
CODE_12EF46:        BEQ CODE_12EF4D           
CODE_12EF48:        JSR CODE_12F154           
CODE_12EF4B:        BRA CODE_12EF50           

CODE_12EF4D:        JSR CODE_12F13A           
CODE_12EF50:        INX                       
CODE_12EF51:        INY                       
CODE_12EF52:        LDA.w DATA_11B6ED,x               
CODE_12EF55:        STA [$01],y               
CODE_12EF57:        JSR CODE_12F154           
CODE_12EF5A:        INX                       
CODE_12EF5B:        INY                       
CODE_12EF5C:        LDY $E7                   
CODE_12EF5E:        TYA                       
CODE_12EF5F:        CLC                       
CODE_12EF60:        ADC #$10                  
CODE_12EF62:        STA $E7                   
CODE_12EF64:        CPX #$1B                  
CODE_12EF66:        BNE CODE_12EF2A           
CODE_12EF68:        LDA $0721                 
CODE_12EF6B:        STA $E7                   
CODE_12EF6D:        JSL CODE_15A2A7           
CODE_12EF71:        RTS
                       
CODE_12EF72:        LDY $E7                   
CODE_12EF74:        LDA $050F                 
CODE_12EF77:        CMP #$09                  
CODE_12EF79:        BNE CODE_12EF83           
CODE_12EF7B:        LDA $04B0                 
CODE_12EF7E:        BEQ CODE_12EF83           
CODE_12EF80:        INC $050F                 
CODE_12EF83:        LDA $0533                 
CODE_12EF86:        CMP #$13                  
CODE_12EF88:        BNE CODE_12EF9C           
CODE_12EF8A:        LDA $0534                 
CODE_12EF8D:        CMP #$00                  
CODE_12EF8F:        BNE CODE_12EF9C           
CODE_12EF91:        LDA $050F                 
CODE_12EF94:        CMP #$0B                  
CODE_12EF96:        BNE CODE_12EF9C           
CODE_12EF98:        LDX #$05                  
CODE_12EF9A:        BRA CODE_12EFA3           

CODE_12EF9C:        LDA $050F                 
CODE_12EF9F:        SEC                       
CODE_12EFA0:        SBC #$09                  
CODE_12EFA2:        TAX                       
CODE_12EFA3:        LDA.w DATA_11B708,x               
CODE_12EFA6:        STA [$01],y               
CODE_12EFA8:        JSR CODE_12F13A           
CODE_12EFAB:        JSR CODE_12F914           
CODE_12EFAE:        LDA.w DATA_11B70E,x               
CODE_12EFB1:        STA [$01],y               
CODE_12EFB3:        JSR CODE_12F13A           
CODE_12EFB6:        LDA $0635                 
CODE_12EFB9:        CMP #$05                  
CODE_12EFBB:        BEQ CODE_12EFC4           
CODE_12EFBD:        CMP #$06                  
CODE_12EFBF:        BEQ CODE_12EFC4           
CODE_12EFC1:        JSR CODE_12F928           
CODE_12EFC4:        RTS
                       
CODE_12EFC5:        LDY $E7                   
CODE_12EFC7:        LDA $050F                 
CODE_12EFCA:        SEC                       
CODE_12EFCB:        SBC #$0A                  
CODE_12EFCD:        TAX                       
CODE_12EFCE:        LDA.w DATA_11B714,x               
CODE_12EFD1:        STA [$01],y               
CODE_12EFD3:        JSR CODE_12F13A           
CODE_12EFD6:        DEC $050E                 
CODE_12EFD9:        BEQ CODE_12EFEB           
CODE_12EFDB:        JSR CODE_12F8D6           
CODE_12EFDE:        LDA.w DATA_11B719,x               
CODE_12EFE1:        STA [$01],y               
CODE_12EFE3:        JSR CODE_12F13A           
CODE_12EFE6:        DEC $050E                 
CODE_12EFE9:        BNE CODE_12EFDB           
CODE_12EFEB:        JSR CODE_12F8D6           
CODE_12EFEE:        LDA.w DATA_11B71E,x               
CODE_12EFF1:        STA [$01],y               
CODE_12EFF3:        JSR CODE_12F13A           
CODE_12EFF6:        RTS
                       
CODE_12EFF7:        LDA $050E                 
CODE_12EFFA:        STA $07                   
CODE_12EFFC:        LDA #$0C                  
CODE_12EFFE:        STA $050F                 
CODE_12F001:        JSR CODE_12EFC5           
CODE_12F004:        LDA $E7                   
CODE_12F006:        CLC                       
CODE_12F007:        ADC #$10                  
CODE_12F009:        STA $E7                   
CODE_12F00B:        TAY                       
CODE_12F00C:        LDA #$0D                  
CODE_12F00E:        STA $050F                 
CODE_12F011:        LDA $07                   
CODE_12F013:        STA $050E                 
CODE_12F016:        JSR CODE_12EFC5           
CODE_12F019:        LDA $E7                   
CODE_12F01B:        CLC                       
CODE_12F01C:        ADC #$10                  
CODE_12F01E:        STA $E7                   
CODE_12F020:        TAY                       
CODE_12F021:        LDA #$0E                  
CODE_12F023:        STA $050F                 
CODE_12F026:        LDA $07                   
CODE_12F028:        STA $050E                 
CODE_12F02B:        LDX $E9                   
CODE_12F02D:        JSR CODE_12F8B0           
CODE_12F030:        LDA [$01],y               
CODE_12F032:        CMP #$40                  
CODE_12F034:        BNE CODE_12F03F           
CODE_12F036:        JSR CODE_12EFC5           
CODE_12F039:        LDA $E7                   
CODE_12F03B:        CMP #$E0                  
CODE_12F03D:        BCC CODE_12F019           
CODE_12F03F:        RTS
                       
CODE_12F040:        LDX $0635                 
CODE_12F043:        LDY $E7                   
CODE_12F045:        LDA.w DATA_11B723,x               
CODE_12F048:        STA [$01],y               
CODE_12F04A:        JSR CODE_12F13A           
CODE_12F04D:        JSR CODE_12F914           
CODE_12F050:        LDA [$01],y               
CODE_12F052:        CMP #$40                  
CODE_12F054:        BNE CODE_12F069           
CODE_12F056:        LDX $0635                 
CODE_12F059:        LDA.w DATA_11B72A,x               
CODE_12F05C:        STA [$01],y               
CODE_12F05E:        JSR CODE_12F13A           
CODE_12F061:        CPX #$04                  
CODE_12F063:        BNE CODE_12F04D           
CODE_12F065:        CPY #$E0                  
CODE_12F067:        BCC CODE_12F04D           
CODE_12F069:        RTS
                       
CODE_12F06A:        DEC $E7                   
CODE_12F06C:        DEC $E7                   
CODE_12F06E:        LDX #$00                  
CODE_12F070:        LDY $E7                   
CODE_12F072:        LDA #$05                  
CODE_12F074:        STA $0712                 
CODE_12F077:        LDA.w DATA_11D04C,x               
CODE_12F07A:        STA [$01],y               
CODE_12F07C:        INX                       
CODE_12F07D:        CPX #$18                  
CODE_12F07F:        BEQ CODE_12F090           
CODE_12F081:        INY                       
CODE_12F082:        DEC $0712                 
CODE_12F085:        BPL CODE_12F077           
CODE_12F087:        LDA $E7                   
CODE_12F089:        CLC                       
CODE_12F08A:        ADC #$10                  
CODE_12F08C:        STA $E7                   
CODE_12F08E:        BRA CODE_12F070           

CODE_12F090:        RTS
                       
CODE_12F091:        LDY $E7                   
CODE_12F093:        LDA #$58                  
CODE_12F095:        STA [$01],y               
CODE_12F097:        JSR CODE_12F13A           
CODE_12F09A:        TYA                       
CODE_12F09B:        CLC                       
CODE_12F09C:        ADC #$0F                  
CODE_12F09E:        TAY                       
CODE_12F09F:        DEC $050E                 
CODE_12F0A2:        BNE CODE_12F093           
CODE_12F0A4:        RTS
                       
CODE_12F0A5:        DEY                       
CODE_12F0A6:        TYA                       
CODE_12F0A7:        AND #$0F                  
CODE_12F0A9:        CMP #$0F                  
CODE_12F0AB:        BNE CODE_12F0BE           
CODE_12F0AD:        TYA                       
CODE_12F0AE:        CLC                       
CODE_12F0AF:        ADC #$10                  
CODE_12F0B1:        TAY                       
CODE_12F0B2:        STX $0B                   
CODE_12F0B4:        LDX $E9                   
CODE_12F0B6:        DEX                       
CODE_12F0B7:        STX $0D                   
CODE_12F0B9:        JSR CODE_12F8B0           
CODE_12F0BC:        LDX $0B                   
CODE_12F0BE:        RTS
                       
CODE_12F0BF:        PHX                       
CODE_12F0C0:        STY $02C7                 
CODE_12F0C3:        TYA                       
CODE_12F0C4:        AND #$0F                  
CODE_12F0C6:        CMP #$0F                  
CODE_12F0C8:        BEQ CODE_12F0F7           
CODE_12F0CA:        TYA                       
CODE_12F0CB:        BMI CODE_12F0D1           
CODE_12F0CD:        CMP #$10                  
CODE_12F0CF:        BMI CODE_12F0F7           
CODE_12F0D1:        SEC                       
CODE_12F0D2:        SBC #$10                  
CODE_12F0D4:        TAY                       
CODE_12F0D5:        LDX #$03                  
CODE_12F0D7:        LDA [$01],y               
CODE_12F0D9:        CMP.w DATA_11B731,x               
CODE_12F0DC:        BEQ CODE_12F0F7           
CODE_12F0DE:        LDX #$03                  
CODE_12F0E0:        LDY $02C7                 
CODE_12F0E3:        LDA [$01],y               
CODE_12F0E5:        CMP.w DATA_11B731,x               
CODE_12F0E8:        BNE CODE_12F0F4           
CODE_12F0EA:        LDA.w DATA_11B735,x               
CODE_12F0ED:        STA [$01],y               
CODE_12F0EF:        JSR CODE_12F13A           
CODE_12F0F2:        BRA CODE_12F0F7           

CODE_12F0F4:        DEX                       
CODE_12F0F5:        BPL CODE_12F0E5           
CODE_12F0F7:        LDY $02C7                 
CODE_12F0FA:        PLX                       
CODE_12F0FB:        RTS
                       
CODE_12F0FC:        PHX                       
CODE_12F0FD:        STY $02C7                 
CODE_12F100:        TYA                       
CODE_12F101:        AND #$0F                  
CODE_12F103:        BEQ CODE_12F135           
CODE_12F105:        TYA                       
CODE_12F106:        BMI CODE_12F10C           
CODE_12F108:        CMP #$10                  
CODE_12F10A:        BMI CODE_12F135           
CODE_12F10C:        SEC                       
CODE_12F10D:        SBC #$10                  
CODE_12F10F:        TAY                       
CODE_12F110:        LDX #$03                  
CODE_12F112:        LDA [$01],y               
CODE_12F114:        CMP.w DATA_11B739,x               
CODE_12F117:        BEQ CODE_12F135           
CODE_12F119:        DEX                       
CODE_12F11A:        BPL CODE_12F114           
CODE_12F11C:        LDX #$03                  
CODE_12F11E:        LDY $02C7                 
CODE_12F121:        LDA [$01],y               
CODE_12F123:        CMP.w DATA_11B739,x               
CODE_12F126:        BNE CODE_12F132           
CODE_12F128:        LDA.w DATA_11B73D,x               
CODE_12F12B:        STA [$01],y               
CODE_12F12D:        JSR CODE_12F13A           
CODE_12F130:        BRA CODE_12F135           

CODE_12F132:        DEX                       
CODE_12F133:        BPL CODE_12F123           
CODE_12F135:        LDY $02C7                 
CODE_12F138:        PLX                       
CODE_12F139:        RTS
                       
CODE_12F13A:        STA $076E                 
CODE_12F13D:        LDA $02                   
CODE_12F13F:        STA $076F                 
CODE_12F142:        CLC                       
CODE_12F143:        ADC #$70                  
CODE_12F145:        STA $02                   
CODE_12F147:        LDA #$00                  
CODE_12F149:        STA [$01],y               
CODE_12F14B:        LDA $076F                 
CODE_12F14E:        STA $02                   
CODE_12F150:        LDA $076E                 
CODE_12F153:        RTS
                       
CODE_12F154:        STA $076E                 
CODE_12F157:        LDA $02                   
CODE_12F159:        STA $076F                 
CODE_12F15C:        CLC                       
CODE_12F15D:        ADC #$70                  
CODE_12F15F:        STA $02                   
CODE_12F161:        LDA #$01                  
CODE_12F163:        STA [$01],y               
CODE_12F165:        LDA $076F                 
CODE_12F168:        STA $02                   
CODE_12F16A:        LDA $076E                 
CODE_12F16D:        RTS
                    
   
DATA_12F16E:        db $20,$1C,$1C,$1C,$1C,$21     

           
CODE_12F174:        STZ $08                   
CODE_12F176:        LDX $E9                   
CODE_12F178:        JSR CODE_12F8B0           
CODE_12F17B:        JSR CODE_12F1C5           
CODE_12F17E:        LDY $E7                   
CODE_12F180:        LDA #$05                  
CODE_12F182:        STA $07                   
CODE_12F184:        LDA [$01],y               
CODE_12F186:        CMP #$40                  
CODE_12F188:        BEQ CODE_12F194           
CODE_12F18A:        CMP #$1B                  
CODE_12F18C:        BEQ CODE_12F1AE           
CODE_12F18E:        CMP #$1D                  
CODE_12F190:        BEQ CODE_12F1AE           
CODE_12F192:        BRA CODE_12F1C4           

CODE_12F194:        LDX $08                   
CODE_12F196:        LDA $0719                 
CODE_12F199:        BEQ CODE_12F19F           
CODE_12F19B:        TAX                       
CODE_12F19C:        STZ $0719                 
CODE_12F19F:        LDA [$01],y               
CODE_12F1A1:        CMP #$1D                  
CODE_12F1A3:        BEQ CODE_12F1AE           
CODE_12F1A5:        LDA.l DATA_12F16E,x             
CODE_12F1A9:        STA [$01],y               
CODE_12F1AB:        JSR CODE_12F13A           
CODE_12F1AE:        JSR CODE_12F8D6           
CODE_12F1B1:        INC $08                   
CODE_12F1B3:        DEC $07                   
CODE_12F1B5:        BPL CODE_12F194           
CODE_12F1B7:        LDA $E7                   
CODE_12F1B9:        CLC                       
CODE_12F1BA:        ADC #$10                  
CODE_12F1BC:        CMP #$F0                  
CODE_12F1BE:        BCS CODE_12F1C4                  
CODE_12F1C0:        STA $E7                   
CODE_12F1C2:        BRA CODE_12F174           

CODE_12F1C4:        RTS
                       
CODE_12F1C5:        STZ $0719                 
CODE_12F1C8:        LDY $E7                   
CODE_12F1CA:        JSR CODE_12F0A5           
CODE_12F1CD:        LDA [$01],y               
CODE_12F1CF:        CMP #$21                  
CODE_12F1D1:        BEQ CODE_12F1DB           
CODE_12F1D3:        CMP #$2B                  
CODE_12F1D5:        BNE CODE_12F1E2           
CODE_12F1D7:        LDA #$2A                  
CODE_12F1D9:        BRA CODE_12F1DD           

CODE_12F1DB:        LDA #$1C                  
CODE_12F1DD:        STA [$01],y               
CODE_12F1DF:        INC $0719                 
CODE_12F1E2:        RTS
           
DATA_12F1E3:        db $00,$02,$02,$02,$04,$00,$02,$02
                    db $02,$04

DATA_12F1ED:        db $1B,$1A,$1D,$1D,$1F,$1E
                          
CODE_12F1F3:        LDA $0768               
CODE_12F1F6:        BEQ CODE_12F22F                
CODE_12F1F8:        LDA $01               
CODE_12F1FA:        STA $0715                
CODE_12F1FD:        LDA $02                   
CODE_12F1FF:        STA $0716                 
CODE_12F202:        STY $0717                 
CODE_12F205:        JSR CODE_12F914           
CODE_12F208:        LDA $076A                 
CODE_12F20B:        LSR A                     
CODE_12F20C:        TAX                       
CODE_12F20D:        LDA.l DATA_12F1E3,x             
CODE_12F211:        CLC                       
CODE_12F212:        ADC $050E                 
CODE_12F215:        TAX                       
CODE_12F216:        LDA.l DATA_12F1ED,x             
CODE_12F21A:        STA [$01],y               
CODE_12F21C:        JSR CODE_12F13A           
CODE_12F21F:        INC $076A                 
CODE_12F222:        LDA $0715                 
CODE_12F225:        STA $01                   
CODE_12F227:        LDA $0716                 
CODE_12F22A:        STA $02                   
CODE_12F22C:        LDY $0717                 
CODE_12F22F:        RTS

DATA_12F230:        dw $4040,$4040,$0000,$0000              ; Tiles with which the level is blanked out. $40 = low byte, $00 = high byte. Blank tile.

DATA_12F238:        dw $2000,$5800,$9000,$C800              ; Which area of the Layer 1 tables is affected. $7E2000-$7E8FFF = low bytes, $7E9000-$7EFFFF = high bytes.
                          
CODE_12F240:        LDA $00FE                 ; \ Use brightness as an index.
CODE_12F243:        EOR #$0F                  ;  | But only values #$0F, #$0D, #$0B and #$09 are used as brightness. (And there are XORd with #$0F)
CODE_12F245:        TAX                       ; / Resulting value (#$00, #$02, #$04 or #$06) goes in X.
CODE_12F246:        REP #$20                  ; A = 16-bit.
CODE_12F248:        LDA #$3800                ; \ Amount of bytes to clear = #$3800.
CODE_12F24B:        STA $00                   ;  |
CODE_12F24D:        LDA.l DATA_12F230,x         ;  | Map16 Tile to use = $40 (low byte) and $00 (high byte).  
CODE_12F251:        STA $02                   ;  |
CODE_12F253:        LDA.l DATA_12F238,x         ;  | Which area in the Layer 1 Map16 table to affect.  
CODE_12F257:        LDY #$7E                  ;  | Bank num = $7E.
CODE_12F259:        JSL CODE_008690           ; / DMA all data via the math registers at $211B/C.
CODE_12F25D:        SEP #$20                  ; A = 8-bit.
CODE_12F25F:        RTS                       ; Return.
                       
CODE_12F260:        SEP #$20                  ; A = 8-bit. Unused?
CODE_12F262:        RTS                       ; Return. Unused?
                       
CODE_12F263:        LDA $0776                 
CODE_12F266:        BNE CODE_12F299           
CODE_12F268:        STZ $0200                 
CODE_12F26B:        STZ $0206                 
CODE_12F26E:        STZ $0202                 
CODE_12F271:        STZ $0208                 
CODE_12F274:        STZ $0204                 
CODE_12F277:        STZ $020A                 
CODE_12F27A:        STZ $0538                 
CODE_12F27D:        STZ $026C                 
CODE_12F280:        STZ $0750                 
CODE_12F283:        STZ $D5                   
CODE_12F285:        STZ $02C1                 
CODE_12F288:        STZ $074F                 
CODE_12F28B:        STZ $E6                   
CODE_12F28D:        STZ $CA                   
CODE_12F28F:        STZ $CB                   
CODE_12F291:        STZ $04BF                 
CODE_12F294:        STZ $04C1                 
CODE_12F297:        STZ $D8                   
CODE_12F299:        RTS
                       
CODE_12F29A:        REP #$20                  ; \ A = 16-bit.
CODE_12F29C:        LDA #$A000                ;  | Amount of bytes to clear = #$A000.
CODE_12F29F:        STA $00                   ;  |
CODE_12F2A1:        LDA #$00FF                ;  | Value to transfer is #$FFFF.
CODE_12F2A4:        XBA                       ;  | Why not simply LDA #$FFFF?
CODE_12F2A5:        ORA #$00FF                ;  |
CODE_12F2A8:        STA $02                   ;  |
CODE_12F2AA:        LDA #$2000                ;  | Starting address of table = $7F2000 (Layer 2 Map16 table)
CODE_12F2AD:        LDY #$7F                  ;  |
CODE_12F2AF:        JSL CODE_008690           ; / DMA all data via the math registers at $211B/C.
CODE_12F2B3:        SEP #$20                  ; A = 8-bit.
CODE_12F2B5:        RTS                       ; Return.
                       
CODE_12F2B6:        STY $0E                   
CODE_12F2B8:        STX $0D                   
CODE_12F2BA:        LDX $0635                 ; \ Load index to palettes...
CODE_12F2BD:        LDA.l DATA_148000,x         ;  | per world.
CODE_12F2C1:        STA $07                   ;  | [$07] = pal pointer.
CODE_12F2C3:        LDA.l DATA_14800E,x         ;  |
CODE_12F2C7:        STA $08                   ;  |
CODE_12F2C9:        LDA #$14                  ;  |
CODE_12F2CB:        STA $09                   ; /
CODE_12F2CD:        BRA CODE_12F2E6           

CODE_12F2CF:        STY $0E                   
CODE_12F2D1:        STX $0D                   
CODE_12F2D3:        LDX $0635                 ; \ Load index to palettes...
CODE_12F2D6:        LDA.l DATA_148007,x         ;  | per world.
CODE_12F2DA:        STA $07                   ;  | [$07] = pal pointer.
CODE_12F2DC:        LDA.l DATA_148015,x         ;  |
CODE_12F2E0:        STA $08                   ;  |
CODE_12F2E2:        LDA #$14                  ;  |
CODE_12F2E4:        STA $09                   ; /
CODE_12F2E6:        LDY $0D                   
CODE_12F2E8:        LDA [$07],y               
CODE_12F2EA:        LDY $0E                   
CODE_12F2EC:        LDX $0D                   
CODE_12F2EE:        RTS
                       
CODE_12F2EF:        JSL CODE_12F5CE           ; Prepare ($D9) pointer to load the Layer 1 room data.
CODE_12F2F3:        LDY #$00                  ; Start off at the very start of the table.
CODE_12F2F5:        LDA ($D9),y               ; \ Load first byte.
CODE_12F2F7:        PHA                       ;  | Preserve A first.
CODE_12F2F8:        JSR CODE_12F2B6           ;  | Prepare palette pointer.
CODE_12F2FB:        PLA                       ; / 
CODE_12F2FC:        STA $0E                   
CODE_12F2FE:        STZ $0F                   
CODE_12F300:        REP #$30                  
CODE_12F302:        LDA $0E                   
CODE_12F304:        PHA                       
CODE_12F305:        AND #$0038                
CODE_12F308:        ASL A                     
CODE_12F309:        ASL A                     
CODE_12F30A:        ASL A                     
CODE_12F30B:        ASL A                     
CODE_12F30C:        ASL A                     
CODE_12F30D:        TAY                       
CODE_12F30E:        LDA $04EF                 
CODE_12F311:        AND #$00FF                
CODE_12F314:        BEQ CODE_12F31A           
CODE_12F316:        LDA [$07],y               
CODE_12F318:        BRA CODE_12F31D           

CODE_12F31A:        LDA #$0000                
CODE_12F31D:        STA $04BC                 
CODE_12F320:        LDX #$0000                
CODE_12F323:        LDA [$07],y               
CODE_12F325:        STA $0B00,x               
CODE_12F328:        INY                       
CODE_12F329:        INY                       
CODE_12F32A:        INX                       
CODE_12F32B:        INX                       
CODE_12F32C:        CPX #$0100                
CODE_12F32F:        BNE CODE_12F323           
CODE_12F331:        SEP #$30                  
CODE_12F333:        LDA $0E                   
CODE_12F335:        CMP #$30                  
CODE_12F337:        BEQ CODE_12F33D           
CODE_12F339:        JSL CODE_13DD50           
CODE_12F33D:        JSR CODE_12F2CF           
CODE_12F340:        REP #$20                  
CODE_12F342:        PLA                       
CODE_12F343:        AND #$0003                
CODE_12F346:        ASL A                     
CODE_12F347:        ASL A                     
CODE_12F348:        ASL A                     
CODE_12F349:        ASL A                     
CODE_12F34A:        ASL A                     
CODE_12F34B:        ASL A                     
CODE_12F34C:        TAY                       
CODE_12F34D:        LDX #$00                  
CODE_12F34F:        LDA [$07],y               
CODE_12F351:        STA $0CC0,x               
CODE_12F354:        INY                       
CODE_12F355:        INY                       
CODE_12F356:        INX                       
CODE_12F357:        INX                       
CODE_12F358:        CPX #$40                  
CODE_12F35A:        BNE CODE_12F34F           
CODE_12F35C:        SEP #$20                  
CODE_12F35E:        JSL CODE_13DC00           
CODE_12F362:        REP #$20                  
CODE_12F364:        LDY #$1E                  
CODE_12F366:        LDA $12D0,y               
CODE_12F369:        STA $0C00,y               
CODE_12F36C:        DEY                       
CODE_12F36D:        DEY                       
CODE_12F36E:        BPL CODE_12F366           
CODE_12F370:        LDX #$7E                  
CODE_12F372:        LDA.w DATA_11BB1C,x               
CODE_12F375:        STA $0C20,x               
CODE_12F378:        DEX                       
CODE_12F379:        DEX                       
CODE_12F37A:        BPL CODE_12F372           
CODE_12F37C:        LDA $04BC                 
CODE_12F37F:        STA $0B00                 
CODE_12F382:        STA $0B20                 
CODE_12F385:        SEP #$20                  
CODE_12F387:        JSL CODE_13E457           
CODE_12F38B:        JSR CODE_12FF4F           
CODE_12F38E:        LDA #$01                  
CODE_12F390:        STA $02A9                 
CODE_12F393:        RTL
                       
CODE_12F394:        JSR CODE_12FFAC           
CODE_12F397:        LDA $0534                 
CODE_12F39A:        STA $051B                 
CODE_12F39D:        LDA #$30                  
CODE_12F39F:        STA $0F                   
CODE_12F3A1:        JSL CODE_13DEE2           
CODE_12F3A5:        LDA $04BF                 
CODE_12F3A8:        STA $E9                   
CODE_12F3AA:        LDA $04C1                 
CODE_12F3AD:        CLC                       
CODE_12F3AE:        ADC #$08                  
CODE_12F3B0:        BCC CODE_12F3B4           
CODE_12F3B2:        INC $E9                   
CODE_12F3B4:        AND #$F0                  
CODE_12F3B6:        PHA                       
CODE_12F3B7:        SEC                       
CODE_12F3B8:        SBC $04C1                 
CODE_12F3BB:        STA $BA                   
CODE_12F3BD:        PLA                       
CODE_12F3BE:        LSR A                     
CODE_12F3BF:        LSR A                     
CODE_12F3C0:        LSR A                     
CODE_12F3C1:        LSR A                     
CODE_12F3C2:        STA $E5                   
CODE_12F3C4:        LDA #$00                  
CODE_12F3C6:        STA $E6                   
CODE_12F3C8:        LDA $E9                   
CODE_12F3CA:        STA $0D                   
CODE_12F3CC:        JSR CODE_12FF82           
CODE_12F3CF:        JSR CODE_12F8A3           
CODE_12F3D2:        LDY $E7                   
CODE_12F3D4:        LDX #$0F                  
CODE_12F3D6:        LDA [$01],y               
CODE_12F3D8:        JSR CODE_12F427           
CODE_12F3DB:        STY $0713                 
CODE_12F3DE:        TXY                       
CODE_12F3DF:        STA [$C4],y               
CODE_12F3E1:        LDA $02                   
CODE_12F3E3:        STA $0714                 
CODE_12F3E6:        CLC                       
CODE_12F3E7:        ADC #$70                  
CODE_12F3E9:        STA $02                   
CODE_12F3EB:        LDY $0713                 
CODE_12F3EE:        LDA [$01],y               
CODE_12F3F0:        BEQ CODE_12F406           
CODE_12F3F2:        LDA $C5                   
CODE_12F3F4:        STA $0715                 
CODE_12F3F7:        CLC                       
CODE_12F3F8:        ADC #$70                  
CODE_12F3FA:        STA $C5                   
CODE_12F3FC:        TXY                       
CODE_12F3FD:        LDA #$01                  
CODE_12F3FF:        STA [$C4],y               
CODE_12F401:        LDA $0715                 
CODE_12F404:        STA $C5                   
CODE_12F406:        LDA $0714                 
CODE_12F409:        STA $02                   
CODE_12F40B:        LDY $0713                 
CODE_12F40E:        TYA                       
CODE_12F40F:        CLC                       
CODE_12F410:        ADC #$10                  
CODE_12F412:        TAY                       
CODE_12F413:        TXA                       
CODE_12F414:        CLC                       
CODE_12F415:        ADC #$10                  
CODE_12F417:        TAX                       
CODE_12F418:        AND #$F0                  
CODE_12F41A:        BNE CODE_12F3D6           
CODE_12F41C:        TYA                       
CODE_12F41D:        AND #$0F                  
CODE_12F41F:        TAY                       
CODE_12F420:        JSR CODE_12F8D6           
CODE_12F423:        DEX                       
CODE_12F424:        BPL CODE_12F3D6           
CODE_12F426:        RTL
                       
CODE_12F427:        STY $08                   
CODE_12F429:        STX $07                   
CODE_12F42B:        CMP #$41                  
CODE_12F42D:        BEQ CODE_12F435           
CODE_12F42F:        CMP #$42                  
CODE_12F431:        BEQ CODE_12F435           
CODE_12F433:        BRA CODE_12F44A           

CODE_12F435:        SEC                       
CODE_12F436:        SBC #$41                  
CODE_12F438:        TAY                       
CODE_12F439:        LDA $04FC,y               
CODE_12F43C:        BNE CODE_12F443           
CODE_12F43E:        LDX $07                   
CODE_12F440:        JSR CODE_12F95F           
CODE_12F443:        LDA #$41                  
CODE_12F445:        BRA CODE_12F44A           

CODE_12F447:        LDA.w DATA_11B839,x               
CODE_12F44A:        LDX $07                   
CODE_12F44C:        LDY $08                   
CODE_12F44E:        RTS
                       
CODE_12F44F:        LDX #$00                  
CODE_12F451:        STX $EB                   
CODE_12F453:        JSR CODE_12FFAC           
CODE_12F456:        JSR CODE_12FF82           
CODE_12F459:        LDY #$00                  
CODE_12F45B:        LDA #$40                  
CODE_12F45D:        STA [$C4],y               
CODE_12F45F:        INY                       
CODE_12F460:        BNE CODE_12F45D           
CODE_12F462:        LDX $0533                 
CODE_12F465:        LDA.l DATA_11D098,x             
CODE_12F469:        CLC                       
CODE_12F46A:        ADC #$04                  
CODE_12F46C:        TAX                       
CODE_12F46D:        LDA.l DATA_15A400,x             
CODE_12F471:        DEC A                     
CODE_12F472:        DEC A                     
CODE_12F473:        STA $076B                 
CODE_12F476:        JSL CODE_159B05           
CODE_12F47A:        LDA $0534                 
CODE_12F47D:        STA $051B                 
CODE_12F480:        LDA #$04                  
CODE_12F482:        STA $0534                 
CODE_12F485:        LDA #$0A                  
CODE_12F487:        JSR CODE_12F5E4           
CODE_12F48A:        LDY #$02                  
CODE_12F48C:        LDA ($D9),y               
CODE_12F48E:        AND #$03                  
CODE_12F490:        STA $0544                 
CODE_12F493:        LDA ($D9),y               
CODE_12F495:        LSR A                     
CODE_12F496:        LSR A                     
CODE_12F497:        AND #$03                  
CODE_12F499:        STA $0545                 
CODE_12F49C:        JSR CODE_12F5E4           
CODE_12F49F:        LDA #$0A                  
CODE_12F4A1:        STA $E9                   
CODE_12F4A3:        LDA #$00                  
CODE_12F4A5:        STA $E6                   
CODE_12F4A7:        STA $E5                   
CODE_12F4A9:        LDA #$03                  
CODE_12F4AB:        STA $04                   
CODE_12F4AD:        JSR CODE_12F60C           
CODE_12F4B0:        LDA #$01                  
CODE_12F4B2:        STA $EB                   
CODE_12F4B4:        RTL
                       
CODE_12F4B5:        LDY #$03                  
CODE_12F4B7:        LDA ($05),y               
CODE_12F4B9:        AND #$03                  
CODE_12F4BB:        STA $0546                 
CODE_12F4BE:        CMP $0547                 
CODE_12F4C1:        BEQ CODE_12F4CF           
CODE_12F4C3:        LDA $04E1                 
CODE_12F4C6:        CMP #$08                  
CODE_12F4C8:        BCS CODE_12F4CF                   
CODE_12F4CA:        LDA #$80                  
CODE_12F4CC:        STA $0603                 
CODE_12F4CF:        RTS
                       
CODE_12F4D0:        STZ $02B7                 
CODE_12F4D3:        JSL CODE_118014           
CODE_12F4D7:        LDA $FE                   ; \ Don't run following routine routine if screen is too dark.
CODE_12F4D9:        CMP #$09                  ;  | Brightness < #$09.
CODE_12F4DB:        BCC CODE_12F4E0           ; /
CODE_12F4DD:        JSR CODE_12F240           ; Clear Layer 1 RAM table.
CODE_12F4E0:        JSL CODE_14D1B2           
CODE_12F4E4:        LDA $02B7                 
CODE_12F4E7:        BEQ CODE_12F4D3           
CODE_12F4E9:        JSR CODE_12F4ED           
CODE_12F4EC:        RTL
                       
CODE_12F4ED:        LDA $0534                 
CODE_12F4F0:        PHA                       
CODE_12F4F1:        LDX $0533                 
CODE_12F4F4:        LDA.l DATA_11CF30,x             
CODE_12F4F8:        STA $02E5                 
CODE_12F4FB:        STA $0534                 
CODE_12F4FE:        LDX $0533                 
CODE_12F501:        LDA.l DATA_11D098,x             
CODE_12F505:        CLC                       
CODE_12F506:        ADC $0534                 
CODE_12F509:        TAX                       
CODE_12F50A:        LDA.l DATA_11D0AD,x             
CODE_12F50E:        STA $D9                   
CODE_12F510:        LDA.l DATA_11D17F,x             
CODE_12F514:        STA $DA                   
CODE_12F516:        JSR CODE_12F55B           
CODE_12F519:        JSL CODE_15A123           
CODE_12F51D:        JSL CODE_159C8C           
CODE_12F521:        DEC $0534                 
CODE_12F524:        BPL CODE_12F4FE           
CODE_12F526:        PLA                       
CODE_12F527:        STA $0534                 
CODE_12F52A:        JSL CODE_159C53           
CODE_12F52E:        JSL CODE_15A1A3           
CODE_12F532:        JSR CODE_12F536           
CODE_12F535:        RTS
                       
CODE_12F536:        LDA $0533                 
CODE_12F539:        BNE CODE_12F55A           
CODE_12F53B:        LDA #$7F                  
CODE_12F53D:        STA $01                   
CODE_12F53F:        LDA #$3E                  
CODE_12F541:        STA $02                   
CODE_12F543:        LDA #$7E                  
CODE_12F545:        STA $03                   
CODE_12F547:        LDY #$00                  
CODE_12F549:        LDA #$CA                  
CODE_12F54B:        STA [$01],y               
CODE_12F54D:        TYA                       
CODE_12F54E:        CLC                       
CODE_12F54F:        ADC #$10                  
CODE_12F551:        CMP #$D0                  
CODE_12F553:        BEQ CODE_12F55A           
CODE_12F555:        TAY                       
CODE_12F556:        LDA #$C7                  
CODE_12F558:        BRA CODE_12F54B           

CODE_12F55A:        RTS
                       
CODE_12F55B:        LDY #$03                  
CODE_12F55D:        LDA ($D9),y               
CODE_12F55F:        LSR A                     
CODE_12F560:        AND #$1C                  
CODE_12F562:        STA $0560                 
CODE_12F565:        LDY #$00                  ; \ Bit 7 of byte 1...
CODE_12F567:        LDA ($D9),y               ;  | ... of level header of object data...
CODE_12F569:        ASL A                     ;  | Goes into carry.
CODE_12F56A:        LDA #$00                  ;  | All bits are clear.
CODE_12F56C:        ROL A                     ;  | Carry into bit 0.
CODE_12F56D:        STA $EB                   ; / Store into horizontal level flag. So that depends on bit 7 of the first header byte.
CODE_12F56F:        STZ $E9                   
CODE_12F571:        LDY #$02                  
CODE_12F573:        LDA ($D9),y               
CODE_12F575:        TAX                       
CODE_12F576:        LSR A                     
CODE_12F577:        LSR A                     
CODE_12F578:        LSR A                     
CODE_12F579:        LSR A                     
CODE_12F57A:        STA $0541                 
CODE_12F57D:        TXA                       
CODE_12F57E:        AND #$03                  
CODE_12F580:        STA $0544                 
CODE_12F583:        TXA                       
CODE_12F584:        LSR A                     
CODE_12F585:        LSR A                     
CODE_12F586:        AND #$03                  
CODE_12F588:        STA $0545                 
CODE_12F58B:        DEY                       
CODE_12F58C:        LDA ($D9),y               
CODE_12F58E:        AND #$1F                  
CODE_12F590:        CMP #$1F                  
CODE_12F592:        BEQ CODE_12F5BD           
CODE_12F594:        STA $0543                 
CODE_12F597:        INY                       
CODE_12F598:        INY                       
CODE_12F599:        INY                       
CODE_12F59A:        STZ $E5                   
CODE_12F59C:        STZ $E6                   
CODE_12F59E:        LDX $0533                 
CODE_12F5A1:        LDA.l DATA_11D098,x             
CODE_12F5A5:        CLC                       
CODE_12F5A6:        ADC $0534                 
CODE_12F5A9:        TAX                       
CODE_12F5AA:        LDA.l DATA_15A400,x             
CODE_12F5AE:        BEQ CODE_12F5BA           
CODE_12F5B0:        CMP #$01                  
CODE_12F5B2:        BNE CODE_12F5BD           
CODE_12F5B4:        JSL CODE_159400           
CODE_12F5B8:        BRA CODE_12F5BD           

CODE_12F5BA:        JSR CODE_12F71C           
CODE_12F5BD:        STZ $E6                   
CODE_12F5BF:        LDA #$03                  
CODE_12F5C1:        STA $04                   
CODE_12F5C3:        JSR CODE_12F60A           
CODE_12F5C6:        LDA #$22                  
CODE_12F5C8:        ORA $10                   
CODE_12F5CA:        STA $0585                 
CODE_12F5CD:        RTS
                       
CODE_12F5CE:        LDY $0533                 ; \ Get 16-bit address of Layer 1 room data in 16-bit pointer ($D9)
CODE_12F5D1:        LDA.w DATA_11D098,y         ;  |
CODE_12F5D4:        CLC                       ;  |
CODE_12F5D5:        ADC $0534                 ;  |
CODE_12F5D8:        TAY                       ;  |
CODE_12F5D9:        LDA.w DATA_11D0AD,y         ;  |   
CODE_12F5DC:        STA $D9                   ;  |
CODE_12F5DE:        LDA.w DATA_11D17F,y         ;  |   
CODE_12F5E1:        STA $DA                   ; /
CODE_12F5E3:        RTL                       ; Return.
                       
CODE_12F5E4:        LDA #$1A                  
CODE_12F5E6:        STA $DA                   
CODE_12F5E8:        STZ $D9                   
CODE_12F5EA:        RTS
                       
CODE_12F5EB:        LDX $0533                 
CODE_12F5EE:        LDA.l DATA_139E00,x             
CODE_12F5F2:        CLC                       
CODE_12F5F3:        ADC $0534                 
CODE_12F5F6:        TAX                       
CODE_12F5F7:        LDA.l DATA_139E16,x             
CODE_12F5FB:        STA $05                   
CODE_12F5FD:        LDA.l DATA_139EE8,x             
CODE_12F601:        STA $06                   
CODE_12F603:        LDA.l DATA_139E15               
CODE_12F607:        STA $07                   
CODE_12F609:        RTS
                       
CODE_12F60A:        STZ $E9                   
CODE_12F60C:        LDY $04                   
CODE_12F60E:        INY                       
CODE_12F60F:        LDA ($D9),y               ; \ Check if position byte inside the object tables is $FF...
CODE_12F611:        CMP #$FF                  ;  |
CODE_12F613:        BEQ CODE_12F609           ; / If so, terminate.
CODE_12F615:        AND #$0F                  ; \ Get X position of object.
CODE_12F617:        STA $E5                   ; /
CODE_12F619:        LDA ($D9),y               ; \ Get relative Y position....
CODE_12F61B:        AND #$F0                  ;  |
CODE_12F61D:        CMP #$F0                  ;  | ... if $F0 (special object), don't branch.
CODE_12F61F:        BNE CODE_12F62C           ; /
CODE_12F621:        LDA $E5                   ;  Load X position of object...
CODE_12F623:        STY $0F                   
CODE_12F625:        JSR CODE_12F68C           
CODE_12F628:        LDY $0F                   
CODE_12F62A:        BRA CODE_12F60E           

CODE_12F62C:        JSR CODE_12F678           
CODE_12F62F:        INY                       
CODE_12F630:        STY $04                   
CODE_12F632:        JSR CODE_12F8A3           
CODE_12F635:        LDA ($D9),y               
CODE_12F637:        LSR A                     
CODE_12F638:        LSR A                     
CODE_12F639:        LSR A                     
CODE_12F63A:        LSR A                     
CODE_12F63B:        STA $050F                 
CODE_12F63E:        CMP #$03                  
CODE_12F640:        BCS CODE_12F65B                   
CODE_12F642:        PHA                       
CODE_12F643:        LDA ($D9),y               
CODE_12F645:        AND #$0F                  
CODE_12F647:        STA $050F                 
CODE_12F64A:        PLA                       
CODE_12F64B:        BEQ CODE_12F670           
CODE_12F64D:        CMP #$01                  
CODE_12F64F:        BNE CODE_12F656           
CODE_12F651:        JSR CODE_12E4A4           
CODE_12F654:        BRA CODE_12F60C           

CODE_12F656:        JSR CODE_12EBA8           
CODE_12F659:        BRA CODE_12F60C          
 
CODE_12F65B:        LDA ($D9),y               
CODE_12F65D:        AND #$0F                  
CODE_12F65F:        STA $050E                 
CODE_12F662:        LDA $050F                 
CODE_12F665:        SEC                       
CODE_12F666:        SBC #$03                  
CODE_12F668:        STA $050F                 
CODE_12F66B:        JSR CODE_12E460           
CODE_12F66E:        BRA CODE_12F60C           

CODE_12F670:        LDA $050F                 
CODE_12F673:        JSR CODE_12E47F           
CODE_12F676:        BRA CODE_12F60C           

CODE_12F678:        CLC                       
CODE_12F679:        ADC $E6                   
CODE_12F67B:        BCC CODE_12F681           
CODE_12F67D:        ADC #$0F                  
CODE_12F67F:        BRA CODE_12F687           

CODE_12F681:        CMP #$F0                  
CODE_12F683:        BNE CODE_12F689           
CODE_12F685:        LDA #$00                  
CODE_12F687:        INC $E9                   
CODE_12F689:        STA $E6                   
CODE_12F68B:        RTS
                       
CODE_12F68C:        ASL A                     ; \ Jump to code, dependant on...
CODE_12F68D:        TAX                       ;  | ... X position of special object.
CODE_12F68E:        JMP (PNTR_12F691,x)       ; /

PNTR_12F691:        dw CODE_12F6C6
                    dw CODE_12F6C6
                    dw CODE_12F6B4
                    dw CODE_12F6B2
                    dw CODE_12F704
                    dw CODE_12F6C9
                    dw CODE_12F6C6                

CODE_12F69F:        ASL A                     
CODE_12F6A0:        TAX                       
CODE_12F6A1:        JMP (PNTR_12F6A4,x)             

PNTR_12F6A4:        dw CODE_12F6EA
                    dw CODE_12F6EF
                    dw CODE_12F6BC
                    dw CODE_12F6B9
                    dw CODE_12F709
                    dw CODE_12F70E
                    dw CODE_12F70F
               
CODE_12F6B2:        INC $E9
CODE_12F6B4:        INC $E9
CODE_12F6B6:        STZ $E6
CODE_12F6B8:        RTS
                 
CODE_12F6B9:        INC $0542                 
CODE_12F6BC:        INC $0542                 
CODE_12F6BF:        STZ $0E                   
CODE_12F6C1:        STZ $09                   
CODE_12F6C3:        RTL
                       
CODE_12F6C4:        INC $0F                   
CODE_12F6C6:        INC $0F                   
CODE_12F6C8:        RTS
                       
CODE_12F6C9:        LDY $0F                   
CODE_12F6CB:        INY                       
CODE_12F6CC:        LDA $E9                   
CODE_12F6CE:        ASL A                     
CODE_12F6CF:        TAX                       
CODE_12F6D0:        LDA ($D9),y               
CODE_12F6D2:        STA $051F,x               
CODE_12F6D5:        INY                       
CODE_12F6D6:        INX                       
CODE_12F6D7:        LDA ($D9),y               
CODE_12F6D9:        STA $051F,x               
CODE_12F6DC:        STY $0F                   
CODE_12F6DE:        RTS
                       
CODE_12F6DF:        LDY $0F                   
CODE_12F6E1:        INY                       
CODE_12F6E2:        LDA ($D9),y               
CODE_12F6E4:        LSR A                     
CODE_12F6E5:        LSR A                     
CODE_12F6E6:        LSR A                     
CODE_12F6E7:        LSR A                     
CODE_12F6E8:        LSR A                     
CODE_12F6E9:        RTS
                       
CODE_12F6EA:        JSR CODE_12F6DF           
CODE_12F6ED:        BRA CODE_12F6F5           

CODE_12F6EF:        JSR CODE_12F6DF           
CODE_12F6F2:        CLC                       
CODE_12F6F3:        ADC #$08                  
CODE_12F6F5:        STA $0E                   
CODE_12F6F7:        LDA $EB                   
CODE_12F6F9:        BNE CODE_12F703           
CODE_12F6FB:        LDA $0E                   
CODE_12F6FD:        ASL A                     
CODE_12F6FE:        ASL A                     
CODE_12F6FF:        ASL A                     
CODE_12F700:        ASL A                     
CODE_12F701:        STA $0E                   
CODE_12F703:        RTL
                       
CODE_12F704:        STZ $E9                   
CODE_12F706:        STZ $E6                   
CODE_12F708:        RTS
                       
CODE_12F709:        STZ $0542                 
CODE_12F70C:        STZ $0E                   
CODE_12F70E:        RTL
                       
CODE_12F70F:        LDY $0F                   
CODE_12F711:        INY                       
CODE_12F712:        LDA ($D9),y               
CODE_12F714:        AND #$0F                  
CODE_12F716:        ASL A                     
CODE_12F717:        ASL A                     
CODE_12F718:        STA $0560                 
CODE_12F71B:        RTL
                       
CODE_12F71C:        STZ $0542                 
CODE_12F71F:        STZ $09                   
CODE_12F721:        LDA ($D9),y               
CODE_12F723:        CMP #$FF                  
CODE_12F725:        BNE CODE_12F733           
CODE_12F727:        LDA $0541                 
CODE_12F72A:        INC A                     
CODE_12F72B:        INC A                     
CODE_12F72C:        STA $0542                 
CODE_12F72F:        STZ $0E                   
CODE_12F731:        BRA CODE_12F779           

CODE_12F733:        LDA ($D9),y               
CODE_12F735:        AND #$F0                  
CODE_12F737:        BEQ CODE_12F75D           
CODE_12F739:        CMP #$F0                  
CODE_12F73B:        BNE CODE_12F761           
CODE_12F73D:        STZ $02C8                 
CODE_12F740:        LDA ($D9),y               
CODE_12F742:        AND #$0F                  
CODE_12F744:        STY $0F                   
CODE_12F746:        JSL CODE_12F69F           
CODE_12F74A:        LDY $0F                   
CODE_12F74C:        LDA ($D9),y               
CODE_12F74E:        AND #$0F                  
CODE_12F750:        CMP #$02                  
CODE_12F752:        BCC CODE_12F779           
CODE_12F754:        CMP #$06                  
CODE_12F756:        BEQ CODE_12F75D           
CODE_12F758:        CMP #$05                  
CODE_12F75A:        BNE CODE_12F75E           
CODE_12F75C:        INY                       
CODE_12F75D:        INY                       
CODE_12F75E:        INY                       
CODE_12F75F:        BRA CODE_12F721           

CODE_12F761:        CLC                       
CODE_12F762:        ADC $09                   
CODE_12F764:        BCC CODE_12F76A           
CODE_12F766:        ADC #$0F                  
CODE_12F768:        BRA CODE_12F770           

CODE_12F76A:        CMP #$F0                  
CODE_12F76C:        BNE CODE_12F773           
CODE_12F76E:        LDA #$00                  
CODE_12F770:        INC $0542                 
CODE_12F773:        STA $09                   
CODE_12F775:        INY                       
CODE_12F776:        INY                       
CODE_12F777:        BRA CODE_12F721           

CODE_12F779:        JSR CODE_12F8A3           
CODE_12F77C:        JSL CODE_12F7CE           
CODE_12F780:        LDA $EB                   
CODE_12F782:        BEQ CODE_12F792           
CODE_12F784:        INC $E5                   
CODE_12F786:        LDA $E5                   
CODE_12F788:        CMP #$10                  
CODE_12F78A:        BNE CODE_12F797           
CODE_12F78C:        INC $E9                   
CODE_12F78E:        STZ $E5                   
CODE_12F790:        BRA CODE_12F797           

CODE_12F792:        LDA #$10                  
CODE_12F794:        JSR CODE_12F678           
CODE_12F797:        LDA $E9                   
CODE_12F799:        CMP $0542                 
CODE_12F79C:        BNE CODE_12F779           
CODE_12F79E:        LDA $EB                   
CODE_12F7A0:        BEQ CODE_12F7AA           
CODE_12F7A2:        LDA $E5                   
CODE_12F7A4:        CMP $0E                   
CODE_12F7A6:        BCC CODE_12F779           
CODE_12F7A8:        BCS CODE_12F7B0                   
CODE_12F7AA:        LDA $E6                   
CODE_12F7AC:        CMP $0E                   
CODE_12F7AE:        BCC CODE_12F779           
CODE_12F7B0:        LDA ($D9),y               
CODE_12F7B2:        CMP #$FF                  
CODE_12F7B4:        BEQ CODE_12F7CD           
CODE_12F7B6:        INY                       
CODE_12F7B7:        LDA ($D9),y               
CODE_12F7B9:        AND #$1F                  
CODE_12F7BB:        STA $0543                 
CODE_12F7BE:        INY                       
CODE_12F7BF:        JMP CODE_12F721           

CODE_12F7C2:        LDA $EB                   
CODE_12F7C4:        BNE CODE_12F7CA           
CODE_12F7C6:        LDA.w DATA_11B7BD,x               
CODE_12F7C9:        RTS

CODE_12F7CA:        LDA.w DATA_11B741,x               
CODE_12F7CD:        RTS

CODE_12F7CE:        STY $04                   
CODE_12F7D0:        LDA $0543                 
CODE_12F7D3:        ASL A                     
CODE_12F7D4:        ASL A                     
CODE_12F7D5:        TAX                       
CODE_12F7D6:        LDY $E7                   
CODE_12F7D8:        LDA $EB                   
CODE_12F7DA:        BNE CODE_12F7E2           
CODE_12F7DC:        LDA.l DATA_11B7BD,x             
CODE_12F7E0:        BRA CODE_12F7E6           

CODE_12F7E2:        LDA.l DATA_11B741,x             
CODE_12F7E6:        STA $0717                 
CODE_12F7E9:        JSR CODE_12F811           
CODE_12F7EC:        LDA $0717                 
CODE_12F7EF:        JSR CODE_12F813           
CODE_12F7F2:        LDA $0717                 
CODE_12F7F5:        JSR CODE_12F815           
CODE_12F7F8:        LDA $0717                 
CODE_12F7FB:        JSR CODE_12F817           
CODE_12F7FE:        LDA $EB                   
CODE_12F800:        BEQ CODE_12F808           
CODE_12F802:        INX                       
CODE_12F803:        BCC CODE_12F7D8           
CODE_12F805:        LDY $04                   
CODE_12F807:        RTL
                       
CODE_12F808:        INX                       
CODE_12F809:        TYA                       
CODE_12F80A:        AND #$0F                  
CODE_12F80C:        BNE CODE_12F7D8           
CODE_12F80E:        LDY $04                   
CODE_12F810:        RTL
                       
CODE_12F811:        LSR A                     
CODE_12F812:        LSR A                     
CODE_12F813:        LSR A                     
CODE_12F814:        LSR A                     
CODE_12F815:        LSR A                     
CODE_12F816:        LSR A                     
CODE_12F817:        AND #$03                  
CODE_12F819:        STX $0210                 
CODE_12F81C:        BEQ CODE_12F888           
CODE_12F81E:        CLC                       
CODE_12F81F:        ADC $0560                 
CODE_12F822:        TAX                       
CODE_12F823:        STX $0C                   
CODE_12F825:        STY $0D                   
CODE_12F827:        LDX $0635                 
CODE_12F82A:        LDA $EB                   
CODE_12F82C:        BNE CODE_12F83E           
CODE_12F82E:        LDA.w PNTR_11AB8F,x               
CODE_12F831:        STA $DC                   
CODE_12F833:        LDA.w PNTR_11AB9D,x               
CODE_12F836:        STA $DD                   
CODE_12F838:        LDA #$11                  
CODE_12F83A:        STA $DE                   
CODE_12F83C:        BRA CODE_12F84C           

CODE_12F83E:        LDA.w PNTR_11AB88,x               
CODE_12F841:        STA $DC                   
CODE_12F843:        LDA.w PNTR_11AB96,x               
CODE_12F846:        STA $DD                   
CODE_12F848:        LDA #$11                  
CODE_12F84A:        STA $DE                   
CODE_12F84C:        LDY $0C                   
CODE_12F84E:        LDA [$DC],y               
CODE_12F850:        PHA                       
CODE_12F851:        LDA $E9                   
CODE_12F853:        BNE CODE_12F85E           
CODE_12F855:        LDA $0D                   
CODE_12F857:        AND #$0F                  
CODE_12F859:        BNE CODE_12F85E           
CODE_12F85B:        PLA                       
CODE_12F85C:        BRA CODE_12F87C           

CODE_12F85E:        LDA $0D                   
CODE_12F860:        AND #$F0                  
CODE_12F862:        BNE CODE_12F867           
CODE_12F864:        PLA                       
CODE_12F865:        BRA CODE_12F87F           

CODE_12F867:        PLA                       
CODE_12F868:        JSR CODE_12FEF0           
CODE_12F86B:        CPY #$00                  
CODE_12F86D:        BEQ CODE_12F87C           
CODE_12F86F:        LDX $02C8                 
CODE_12F872:        BNE CODE_12F879           
CODE_12F874:        JSR CODE_12FE30           
CODE_12F877:        BRA CODE_12F87C           

CODE_12F879:        JSR CODE_12FE80           
CODE_12F87C:        JSR CODE_12FF2B           
CODE_12F87F:        JSR CODE_12FFC2           
CODE_12F882:        LDX $0C                   
CODE_12F884:        LDY $0D                   
CODE_12F886:        STA [$01],y               
CODE_12F888:        LDX $0210                 
CODE_12F88B:        LDA $EB                   
CODE_12F88D:        BNE CODE_12F891           
CODE_12F88F:        INY                       
CODE_12F890:        RTS
                       
CODE_12F891:        TYA                       
CODE_12F892:        CLC                       
CODE_12F893:        ADC #$10                  
CODE_12F895:        TAY                       
CODE_12F896:        AND #$F0                  
CODE_12F898:        BNE CODE_12F8A2           
CODE_12F89A:        LDA $02C8                 
CODE_12F89D:        BNE CODE_12F8A2           
CODE_12F89F:        INC $02C8                 
CODE_12F8A2:        RTS
                       
CODE_12F8A3:        LDX $E9                   
CODE_12F8A5:        JSR CODE_12F8B0           
CODE_12F8A8:        LDA $E6                   
CODE_12F8AA:        CLC                       
CODE_12F8AB:        ADC $E5                   
CODE_12F8AD:        STA $E7                   
CODE_12F8AF:        RTS
                       
CODE_12F8B0:        STY $02F5                 
CODE_12F8B3:        LDA $0628                 
CODE_12F8B6:        DEC A                     
CODE_12F8B7:        BEQ CODE_12F8C2           
CODE_12F8B9:        PHX                       
CODE_12F8BA:        LDX $0534                 
CODE_12F8BD:        LDA.l DATA_11AB11,x             
CODE_12F8C1:        PLX                       
CODE_12F8C2:        CLC                       
CODE_12F8C3:        ADC.w DATA_11AAFB,x               
CODE_12F8C6:        STA $02                   
CODE_12F8C8:        LDA.w DATA_11AAF0,x               
CODE_12F8CB:        STA $01                   
CODE_12F8CD:        LDA.w DATA_11AB06,x               
CODE_12F8D0:        STA $03                   
CODE_12F8D2:        LDY $02F5                 
CODE_12F8D5:        RTS
                       
CODE_12F8D6:        INY                       
CODE_12F8D7:        TYA                       
CODE_12F8D8:        AND #$0F                  
CODE_12F8DA:        BNE CODE_12F913           
CODE_12F8DC:        TYA                       
CODE_12F8DD:        SEC                       
CODE_12F8DE:        SBC #$10                  
CODE_12F8E0:        TAY                       
CODE_12F8E1:        STX $0B                   
CODE_12F8E3:        LDX $E9                   
CODE_12F8E5:        CPX #$06                  
CODE_12F8E7:        BNE CODE_12F90B           
CODE_12F8E9:        LDA $0246                 
CODE_12F8EC:        CMP #$01                  
CODE_12F8EE:        BEQ CODE_12F8F6           
CODE_12F8F0:        CMP #$02                  
CODE_12F8F2:        BEQ CODE_12F8FC           
CODE_12F8F4:        BRA CODE_12F90B           

CODE_12F8F6:        CPY #$B0                  
CODE_12F8F8:        BNE CODE_12F90B           
CODE_12F8FA:        BRA CODE_12F900           

CODE_12F8FC:        CPY #$C0                  
CODE_12F8FE:        BNE CODE_12F90B           
CODE_12F900:        LDA $07                   
CODE_12F902:        CMP #$04                  
CODE_12F904:        BNE CODE_12F90B           
CODE_12F906:        LDA $0247                 
CODE_12F909:        BEQ CODE_12F90C           
CODE_12F90B:        INX                       
CODE_12F90C:        STX $0D                   
CODE_12F90E:        JSR CODE_12F8B0           
CODE_12F911:        LDX $0B                   
CODE_12F913:        RTS
                       
CODE_12F914:        TYA                       
CODE_12F915:        CLC                       
CODE_12F916:        ADC #$10                  
CODE_12F918:        TAY                       
CODE_12F919:        CMP #$F0                  
CODE_12F91B:        BCC CODE_12F927           
CODE_12F91D:        LDX $E9                   
CODE_12F91F:        INX                       
CODE_12F920:        JSR CODE_12F8B0           
CODE_12F923:        TYA                       
CODE_12F924:        AND #$0F                  
CODE_12F926:        TAY                       
CODE_12F927:        RTS
                       
CODE_12F928:        LDY $04                   
CODE_12F92A:        INY                       
CODE_12F92B:        LDA ($D9),y               
CODE_12F92D:        STA $07                   
CODE_12F92F:        INY                       
CODE_12F930:        LDA ($D9),y               
CODE_12F932:        STA $08                   
CODE_12F934:        STY $04                   
CODE_12F936:        LDA $E9                   
CODE_12F938:        ASL A                     
CODE_12F939:        TAY                       
CODE_12F93A:        LDA $07                   
CODE_12F93C:        STA $051F,y               
CODE_12F93F:        INY                       
CODE_12F940:        LDA $08                   
CODE_12F942:        STA $051F,y               
CODE_12F945:        RTS
                       
CODE_12F946:        LSR A                     
CODE_12F947:        BCS CODE_12F954                   
CODE_12F949:        LDA #$01                  
CODE_12F94B:        STA $C9                   
CODE_12F94D:        ASL A                     
CODE_12F94E:        STA $C8                   
CODE_12F950:        LDA #$00                  
CODE_12F952:        BRA CODE_12F95B           

CODE_12F954:        STZ $C9                   
CODE_12F956:        STZ $C8                   
CODE_12F958:        LDA.w DATA_119B3C,y               
CODE_12F95B:        STA $0507                 
CODE_12F95E:        RTS
                       
CODE_12F95F:        TXA                       
CODE_12F960:        PHA                       
CODE_12F961:        AND #$F0                  
CODE_12F963:        STA $33                   
CODE_12F965:        TXA                       
CODE_12F966:        ASL A                     
CODE_12F967:        ASL A                     
CODE_12F968:        ASL A                     
CODE_12F969:        ASL A                     
CODE_12F96A:        STA $29                   
CODE_12F96C:        LDA #$0A                  
CODE_12F96E:        STA $15                   
CODE_12F970:        LDX #$00                  
CODE_12F972:        STX $12                   
CODE_12F974:        STX $1F                   
CODE_12F976:        LDA #$3F                  
CODE_12F978:        STA $90                   
CODE_12F97A:        LDA #$01                  
CODE_12F97C:        STA $51                   
CODE_12F97E:        STY $79                   
CODE_12F980:        LDA #$00                  
CODE_12F982:        STA $86,x                 
CODE_12F984:        STA $B1,x                 
CODE_12F986:        STA $A8,x                 
CODE_12F988:        STA $9F,x                 
CODE_12F98A:        STA $044A,x               
CODE_12F98D:        STA $5B,x                 
CODE_12F98F:        STA $0438,x               
CODE_12F992:        STA $0453,x               
CODE_12F995:        STA $045C,x               
CODE_12F998:        STA $47,x                 
CODE_12F99A:        STA $3D,x                 
CODE_12F99C:        LDY $90,x                 
CODE_12F99E:        LDA.w DATA_11CC45,y               
CODE_12F9A1:        AND #$7F                  
CODE_12F9A3:        STA $65,x                 
CODE_12F9A5:        LDA.w DATA_11CC8C,y               
CODE_12F9A8:        STA $046E,x               
CODE_12F9AB:        LDA.w DATA_11CD1A,y               
CODE_12F9AE:        STA $0489,x               
CODE_12F9B1:        LDA.w DATA_11CCD3,y               
CODE_12F9B4:        STA $0492,x               
CODE_12F9B7:        LDA #$FF                  
CODE_12F9B9:        STA $0441,x               
CODE_12F9BC:        PLA                       
CODE_12F9BD:        TAX                       
CODE_12F9BE:        RTS
                       
CODE_12F9BF:        LDA $0635                 ; \ Get world number * 3 into X index.
CODE_12F9C2:        AND #$0F                  ;  |
CODE_12F9C4:        STA $0635                 ;  |
CODE_12F9C7:        ASL A                     ;  |
CODE_12F9C8:        CLC                       ;  |
CODE_12F9C9:        ADC $0635                 ;  |
CODE_12F9CC:        TAX                       ;  |
CODE_12F9CD:        LDA.l PNTR_15EF00,x      ;  | [$02] = Pointer to the miniature level during the 'World x-x' screen.
CODE_12F9D1:        STA $02                   ;  |
CODE_12F9D3:        LDA.l PNTR_15EF00+1,x    ;  |   
CODE_12F9D7:        STA $03                   ;  |
CODE_12F9D9:        LDA.l PNTR_15EF00+2,x    ;  |   
CODE_12F9DD:        STA $04                   ; /
CODE_12F9DF:        LDA #$80                  ; \ Increase VRAM destination by 1 if written to $2119.
CODE_12F9E1:        STA $2115                 ; /
CODE_12F9E4:        REP #$30                  ; Accumulator and Index = 16-bit
CODE_12F9E6:        LDA #$0566                ; \ Image on Layer 1 tilemap.
CODE_12F9E9:        STA $00                   ; /
CODE_12F9EB:        LDY #$0000                ; Start with first byte of image table.
CODE_12F9EE:        LDX #$0026                ; Amount of bytes to write per line = #$28.
CODE_12F9F1:        LDA $00                   ; \ $00 into VRAM destination address.
CODE_12F9F3:        STA $2116                 ; /
CODE_12F9F6:        LDA [$02],y               ; \ Transfer image over to VRAM.
CODE_12F9F8:        STA $2118                 ;  |
CODE_12F9FB:        INY                       ;  |
CODE_12F9FC:        INY                       ;  |
CODE_12F9FD:        DEX                       ;  |
CODE_12F9FE:        DEX                       ;  |
CODE_12F9FF:        BPL CODE_12F9F6           ; / If line not completed, loop.
CODE_12FA01:        LDA $00                   ; \ Go to next line.
CODE_12FA03:        ADC #$0020                ;  |
CODE_12FA06:        STA $00                   ;  |
CODE_12FA08:        CMP #$06A6                ;  | If result does not go beyond the miniature level's position in the tile map...
CODE_12FA0B:        BNE CODE_12F9EE           ; / Loop and transfer next line.
CODE_12FA0D:        SEP #$30                  ; Accumulator and Index = 8-bit.
CODE_12FA0F:        RTL                       ; Return.
                       
CODE_12FA10:        LDA $8F                   
CODE_12FA12:        ASL A                     
CODE_12FA13:        ASL A                     
CODE_12FA14:        ASL A                     
CODE_12FA15:        ASL A                     
CODE_12FA16:        ASL A                     
CODE_12FA17:        REP #$30                  
CODE_12FA19:        AND #$00FF                
CODE_12FA1C:        TAY                       
CODE_12FA1D:        LDX #$0000                
CODE_12FA20:        PHX                       
CODE_12FA21:        TYX                       
CODE_12FA22:        LDA.l DATA_11BA9C,x             
CODE_12FA26:        PLX                       
CODE_12FA27:        STA $12D0,x               
CODE_12FA2A:        INY                       
CODE_12FA2B:        INY                       
CODE_12FA2C:        INX                       
CODE_12FA2D:        INX                       
CODE_12FA2E:        CPX #$0020                
CODE_12FA31:        BCC CODE_12FA20           
CODE_12FA33:        SEP #$30                  
CODE_12FA35:        LDX $8F                   
CODE_12FA37:        LDA.l DATA_11BA3C,x             
CODE_12FA3B:        TAY                       
CODE_12FA3C:        LDX #$00                  
CODE_12FA3E:        PHX                       
CODE_12FA3F:        TYX                       
CODE_12FA40:        LDA.l DATA_11BA40,x             
CODE_12FA44:        PLX                       
CODE_12FA45:        STA $0548,x               
CODE_12FA48:        INY                       
CODE_12FA49:        INX                       
CODE_12FA4A:        CPX #$17                  
CODE_12FA4C:        BCC CODE_12FA3E           
CODE_12FA4E:        PHD                       
CODE_12FA4F:        REP #$20                  
CODE_12FA51:        LDX #$2F                  
CODE_12FA53:        LDA.l DATA_11BCB6,x             
CODE_12FA57:        STA $0680,x               
CODE_12FA5A:        DEX                       
CODE_12FA5B:        DEX                       
CODE_12FA5C:        BPL CODE_12FA53           
CODE_12FA5E:        LDA #$1100                
CODE_12FA61:        TCD                       
CODE_12FA62:        LDX #$9C                  
CODE_12FA64:        LDA.l DATA_11BCE6,x             
CODE_12FA68:        STA $68,x                 
CODE_12FA6A:        DEX                       
CODE_12FA6B:        DEX                       
CODE_12FA6C:        CPX #$FE                  
CODE_12FA6E:        BNE CODE_12FA64           
CODE_12FA70:        SEP #$20                  
CODE_12FA72:        LDX #$17                  
CODE_12FA74:        LDA.l DATA_11BB9C,x             
CODE_12FA78:        STA $50,x                 
CODE_12FA7A:        DEX                       
CODE_12FA7B:        BPL CODE_12FA74           
CODE_12FA7D:        LDX #$4F                  
CODE_12FA7F:        LDA.l DATA_11CB9E,x             
CODE_12FA83:        STA $00,x                 
CODE_12FA85:        DEX                       
CODE_12FA86:        BPL CODE_12FA7F           
CODE_12FA88:        LDA #$12                  
CODE_12FA8A:        XBA                       
CODE_12FA8B:        LDA #$00                  
CODE_12FA8D:        TCD                       
CODE_12FA8E:        LDX #$03                  
CODE_12FA90:        LDA.l DATA_11BBB4,x             
CODE_12FA94:        STA $06,x                 
CODE_12FA96:        DEX                       
CODE_12FA97:        BPL CODE_12FA90           
CODE_12FA99:        LDX #$49                  
CODE_12FA9B:        LDA.l DATA_11CD61,x             
CODE_12FA9F:        STA $0B,x                 
CODE_12FAA1:        DEX                       
CODE_12FAA2:        BPL CODE_12FA9B           
CODE_12FAA4:        REP #$20                  
CODE_12FAA6:        LDX #$0C                  
CODE_12FAA8:        LDA.l DATA_11BBB8,x             
CODE_12FAAC:        STA $68,x                 
CODE_12FAAE:        DEX                       
CODE_12FAAF:        BPL CODE_12FAA8           
CODE_12FAB1:        SEP #$20                  
CODE_12FAB3:        PLD                       
CODE_12FAB4:        LDX #$6C                  
CODE_12FAB6:        LDA.l DATA_11CDD3,x             
CODE_12FABA:        STA $144E,x               
CODE_12FABD:        DEX                       
CODE_12FABE:        BPL CODE_12FAB6           
CODE_12FAC0:        RTL
       
DATA_12FAC1:        db $03,$04,$05,$0D,$0F,$0F,$0F,$01

DATA_12FAC9:        db $01,$03,$03,$04,$03,$05,$06,$03
                      
CODE_12FAD1:        JSR CODE_12F263           
CODE_12FAD4:        LDX $0533                 ; \ Get index to object data...
CODE_12FAD7:        LDA.l DATA_11D098,x         ;  | Per room, per level.
CODE_12FADB:        CLC                       ;  |
CODE_12FADC:        ADC $0534                 ;  |
CODE_12FADF:        TAX                       ;  |
CODE_12FAE0:        LDA.w DATA_11D0AD,x         ;  | Forms pointer ($D9).  
CODE_12FAE3:        STA $D9                   ;  |
CODE_12FAE5:        LDA.w DATA_11D17F,x         ;  |  
CODE_12FAE8:        STA $DA                   ; /
CODE_12FAEA:        LDY #$00                  
CODE_12FAEC:        LDA ($D9),y               
CODE_12FAEE:        ASL A                     
CODE_12FAEF:        LDA #$00                  
CODE_12FAF1:        ROL A                     
CODE_12FAF2:        STA $EB                   
CODE_12FAF4:        LDY #$02                  
CODE_12FAF6:        LDA ($D9),y               
CODE_12FAF8:        LSR A                     
CODE_12FAF9:        LSR A                     
CODE_12FAFA:        LSR A                     
CODE_12FAFB:        LSR A                     
CODE_12FAFC:        STA $0541                 
CODE_12FAFF:        LDA ($D9),y               
CODE_12FB01:        AND #$03                  
CODE_12FB03:        STA $0544                 
CODE_12FB06:        LDA ($D9),y               
CODE_12FB08:        LSR A                     
CODE_12FB09:        LSR A                     
CODE_12FB0A:        AND #$03                  
CODE_12FB0C:        STA $0545                 
CODE_12FB0F:        LDX #$08                  
CODE_12FB11:        LDA $0533                 
CODE_12FB14:        DEX                       
CODE_12FB15:        BMI CODE_12FB77           
CODE_12FB17:        CMP.l DATA_12FAC1,x             
CODE_12FB1B:        BNE CODE_12FB11           
CODE_12FB1D:        LDA $0534                 
CODE_12FB20:        CMP.l DATA_12FAC9,x             
CODE_12FB24:        BNE CODE_12FB11           
CODE_12FB26:        LDY #$03                  
CODE_12FB28:        LDA ($D9),y               
CODE_12FB2A:        LSR A                     
CODE_12FB2B:        AND #$1C                  
CODE_12FB2D:        STA $0560                 
CODE_12FB30:        DEY                       
CODE_12FB31:        DEY                       
CODE_12FB32:        LDA ($D9),y               
CODE_12FB34:        AND #$1F                  
CODE_12FB36:        CMP #$1F                  
CODE_12FB38:        BEQ CODE_12FB77           
CODE_12FB3A:        STA $0543                 
CODE_12FB3D:        STZ $E9                   
CODE_12FB3F:        STZ $E5                   
CODE_12FB41:        STZ $E6                   
CODE_12FB43:        INY                       
CODE_12FB44:        INY                       
CODE_12FB45:        INY                       
CODE_12FB46:        LDA $EB                   
CODE_12FB48:        BNE CODE_12FB74           
CODE_12FB4A:        LDX $0533                 
CODE_12FB4D:        LDA.l DATA_11D098,x             
CODE_12FB51:        CLC                       
CODE_12FB52:        ADC $0534                 
CODE_12FB55:        TAX                       
CODE_12FB56:        LDA.l DATA_15A400,x             
CODE_12FB5A:        BEQ CODE_12FB74           
CODE_12FB5C:        CMP #$01                  
CODE_12FB5E:        BNE CODE_12FB66           
CODE_12FB60:        JSL CODE_159400           
CODE_12FB64:        BRA CODE_12FB77          
 
CODE_12FB66:        DEC A                     
CODE_12FB67:        DEC A                     
CODE_12FB68:        STA $076B                 
CODE_12FB6B:        JSR CODE_12FF94           
CODE_12FB6E:        JSL CODE_159B05           
CODE_12FB72:        BRA CODE_12FB77          
 
CODE_12FB74:        JSR CODE_12F71C           
CODE_12FB77:        JSR CODE_12FC41           
CODE_12FB7A:        JSR CODE_12FCA1           
CODE_12FB7D:        STZ $E9                   
CODE_12FB7F:        STZ $E6                   
CODE_12FB81:        STZ $E5                   
CODE_12FB83:        STZ $04                   
CODE_12FB85:        JSR CODE_12FBA4           
CODE_12FB88:        RTL
                       
DATA_12FB89:        db $09,$0A,$0B,$13,$14,$1C,$1D,$05
                    db $03,$2B,$2D,$21,$26,$27,$22,$25
                    db $2A,$23,$24,$28,$50,$00,$01,$29
                    db $04,$02,$12

CODE_12FBA4:        LDY #$03
CODE_12FBA6:        STY $04
CODE_12FBA8:        LDY $04
CODE_12FBAA:        INY                  
CODE_12FBAB:        LDA ($D9),y               
CODE_12FBAD:        CMP #$FF                  
CODE_12FBAF:        BNE CODE_12FBB2           
CODE_12FBB1:        RTS
                       
CODE_12FBB2:        LDA ($D9),y               
CODE_12FBB4:        AND #$0F                  
CODE_12FBB6:        STA $E5                   
CODE_12FBB8:        LDA ($D9),y               
CODE_12FBBA:        AND #$F0                  
CODE_12FBBC:        CMP #$F0                  
CODE_12FBBE:        BNE CODE_12FBCB           
CODE_12FBC0:        LDA $E5                   
CODE_12FBC2:        STY $0F                   
CODE_12FBC4:        JSR CODE_12F68C           
CODE_12FBC7:        LDY $0F                   
CODE_12FBC9:        BRA CODE_12FBAA          
 
CODE_12FBCB:        JSR CODE_12F678           
CODE_12FBCE:        INY                       
CODE_12FBCF:        STY $04                   
CODE_12FBD1:        LDX #$1A                  
CODE_12FBD3:        LDA ($D9),y               
CODE_12FBD5:        CMP.l DATA_12FB89,x             
CODE_12FBD9:        BEQ CODE_12FBF6           
CODE_12FBDB:        DEX                       
CODE_12FBDC:        BPL CODE_12FBD5           
CODE_12FBDE:        AND #$F0                  
CODE_12FBE0:        CMP #$50                  
CODE_12FBE2:        BEQ CODE_12FBF6           
CODE_12FBE4:        CMP #$80                  
CODE_12FBE6:        BEQ CODE_12FBF6           
CODE_12FBE8:        CMP #$30                  
CODE_12FBEA:        BEQ CODE_12FBF6           
CODE_12FBEC:        CMP #$40                  
CODE_12FBEE:        BEQ CODE_12FBF6           
CODE_12FBF0:        CMP #$A0                  
CODE_12FBF2:        BEQ CODE_12FBF6           
CODE_12FBF4:        BRA CODE_12FBA8  
         
CODE_12FBF6:        STY $04                   
CODE_12FBF8:        JSR CODE_12F8A3           
CODE_12FBFB:        LDA ($D9),y               
CODE_12FBFD:        LSR A                     
CODE_12FBFE:        LSR A                     
CODE_12FBFF:        LSR A                     
CODE_12FC00:        LSR A                     
CODE_12FC01:        STA $050F                 
CODE_12FC04:        CMP #$03                  
CODE_12FC06:        BCS CODE_12FC22                   
CODE_12FC08:        PHA                       
CODE_12FC09:        LDA ($D9),y               
CODE_12FC0B:        AND #$0F                  
CODE_12FC0D:        STA $050F                 
CODE_12FC10:        PLA                       
CODE_12FC11:        BEQ CODE_12FC38           
CODE_12FC13:        CMP #$01                  
CODE_12FC15:        BNE CODE_12FC1C           
CODE_12FC17:        JSR CODE_12E4A4           
CODE_12FC1A:        BRA CODE_12FBA8           

CODE_12FC1C:        JSR CODE_12EBA8           
CODE_12FC1F:        BRL CODE_12FBA8           

CODE_12FC22:        LDA ($D9),y               
CODE_12FC24:        AND #$0F                  
CODE_12FC26:        STA $050E                 
CODE_12FC29:        LDA $050F                 
CODE_12FC2C:        SEC                       
CODE_12FC2D:        SBC #$03                  
CODE_12FC2F:        STA $050F                 
CODE_12FC32:        JSR CODE_12E460           
CODE_12FC35:        BRL CODE_12FBA8           

CODE_12FC38:        LDA $050F                 
CODE_12FC3B:        JSR CODE_12E47F           
CODE_12FC3E:        BRL CODE_12FBA8           

CODE_12FC41:        LDA $0776                 
CODE_12FC44:        BNE CODE_12FCA0           
CODE_12FC46:        LDX #$00                  
CODE_12FC48:        JSR CODE_12F8B0           
CODE_12FC4B:        LDY $0541                 
CODE_12FC4E:        REP #$30                  
CODE_12FC50:        LDA #$00F0                
CODE_12FC53:        DEY                       
CODE_12FC54:        BMI CODE_12FC5C           
CODE_12FC56:        CLC                       
CODE_12FC57:        ADC #$00F0                
CODE_12FC5A:        BRA CODE_12FC53      
     
CODE_12FC5C:        DEC A                     
CODE_12FC5D:        STA $02C9                 
CODE_12FC60:        TAY                       
CODE_12FC61:        SEP #$20                  
CODE_12FC63:        LDA [$01],y               
CODE_12FC65:        CMP #$64                  
CODE_12FC67:        BNE CODE_12FC9B           
CODE_12FC69:        LDA $01                   
CODE_12FC6B:        STA $0713                 
CODE_12FC6E:        LDA $02                   
CODE_12FC70:        STA $0714                 
CODE_12FC73:        REP #$20                  
CODE_12FC75:        LDA $01                   
CODE_12FC77:        CLC                       
CODE_12FC78:        ADC #$7000                
CODE_12FC7B:        STA $01                   
CODE_12FC7D:        SEP #$20                  
CODE_12FC7F:        LDA [$01],y               
CODE_12FC81:        BNE CODE_12FC91           
CODE_12FC83:        LDA $0713                 
CODE_12FC86:        STA $01                   
CODE_12FC88:        LDA $0714                 
CODE_12FC8B:        STA $02                   
CODE_12FC8D:        LDA #$40                  
CODE_12FC8F:        STA [$01],y               
CODE_12FC91:        LDA $0713                 
CODE_12FC94:        STA $01                   
CODE_12FC96:        LDA $0714                 
CODE_12FC99:        STA $02                   
CODE_12FC9B:        DEY                       
CODE_12FC9C:        BPL CODE_12FC63           
CODE_12FC9E:        SEP #$10                  
CODE_12FCA0:        RTS
                       
CODE_12FCA1:        LDX #$06                  
CODE_12FCA3:        LDA $0533                 
CODE_12FCA6:        CMP.l DATA_11CF44,x             
CODE_12FCAA:        BEQ CODE_12FCB1           
CODE_12FCAC:        DEX                       
CODE_12FCAD:        BPL CODE_12FCA6           
CODE_12FCAF:        BRA CODE_12FCEA      
     
CODE_12FCB1:        LDA $0534                 
CODE_12FCB4:        CMP.l DATA_11CF4B,x             
CODE_12FCB8:        BNE CODE_12FCEA           
CODE_12FCBA:        LDX #$00                  
CODE_12FCBC:        JSR CODE_12F8B0           
CODE_12FCBF:        REP #$10                  
CODE_12FCC1:        LDY $02C9                 
CODE_12FCC4:        LDA [$01],y               
CODE_12FCC6:        CMP #$56                  
CODE_12FCC8:        BNE CODE_12FCCE           
CODE_12FCCA:        LDA #$40                  
CODE_12FCCC:        STA [$01],y               
CODE_12FCCE:        DEY                       
CODE_12FCCF:        BPL CODE_12FCC4           
CODE_12FCD1:        SEP #$10                  
CODE_12FCD3:        LDA $0635                 
CODE_12FCD6:        CMP #$06                  
CODE_12FCD8:        BNE CODE_12FCEA           
CODE_12FCDA:        LDX #$59                  
CODE_12FCDC:        STX $02                   
CODE_12FCDE:        LDX #$98                  
CODE_12FCE0:        STX $01                   
CODE_12FCE2:        LDA #$B9                  
CODE_12FCE4:        STA [$01]                 
CODE_12FCE6:        LDY #$10                  
CODE_12FCE8:        STA [$01],y               
CODE_12FCEA:        RTS
                       
DATA_12FCEB:        db $03,$0D,$0D,$0D,$11,$11             ; 2-1, 5-2, 5-2, 5-2, 6-3, 6-3.

DATA_12FCF1:        db $00,$02,$03,$04,$03,$04             ; First room, third room, fourth room, fifth room, fourth room, fifth room.
                
CODE_12FCF7:        JSR CODE_12F5EB
CODE_12FCFA:        LDY #$00                    
CODE_12FCFC:        LDA [$05],y                 
CODE_12FCFE:        AND #$01                  
CODE_12FD00:        STA $02C3                 
CODE_12FD03:        LDA [$05],y               
CODE_12FD05:        AND #$02                  
CODE_12FD07:        STA $02C4                 
CODE_12FD0A:        LDA [$05],y               ; \ Check if bit 2 from first byte is set...
CODE_12FD0C:        AND #$04                  ;  |
CODE_12FD0E:        BEQ CODE_12FD15           ;  |
CODE_12FD10:        LDA #$4F                  ;  | If so, put up IRQ and the starry BG.
CODE_12FD12:        STA $024B                 ; /
CODE_12FD15:        LDA [$05],y               ; \ Get bit 4...
CODE_12FD17:        AND #$10                  ;  | Divide by 16...
CODE_12FD19:        LSR A                     ;  |
CODE_12FD1A:        LSR A                     ;  |
CODE_12FD1B:        LSR A                     ;  |
CODE_12FD1C:        LSR A                     ;  |
CODE_12FD1D:        STA $0772                 ; / And store result into Layer 3 transparency flag.
CODE_12FD20:        LDA [$05],y               ; \ Enable Layer 3 background if applicable.
CODE_12FD22:        ROL A                     ;  |
CODE_12FD23:        ROL A                     ;  |
CODE_12FD24:        ROL A                     ;  |
CODE_12FD25:        AND #$03                  ;  |
CODE_12FD27:        STA $074E                 ; /
CODE_12FD2A:        LDA [$05],y               
CODE_12FD2C:        AND #$08                  
CODE_12FD2E:        STA $077C                 
CODE_12FD31:        LDA [$05],y               
CODE_12FD33:        AND #$20                  
CODE_12FD35:        STA $077F                 
CODE_12FD38:        STZ $E9                   
CODE_12FD3A:        STZ $E6                   
CODE_12FD3C:        STZ $04                   
CODE_12FD3E:        STZ $0784                 
CODE_12FD41:        LDA $0533                 ; \ If not in 4-2...
CODE_12FD44:        CMP #$0A                  ;  |
CODE_12FD46:        BNE CODE_12FD53           ;  | Branch.
CODE_12FD48:        LDA $0534                 ;  | If in first room of 4-2...
CODE_12FD4B:        BEQ CODE_12FD60           ;  | Branch.
CODE_12FD4D:        CMP #$04                  ;  | If in fifth room of 4-2...
CODE_12FD4F:        BEQ CODE_12FD60           ;  | Branch.
CODE_12FD51:        BRA CODE_12FD63           ; / Otherwise, branch further.
        
CODE_12FD53:        CMP #$0B                  ; \ Check if in 4-3...
CODE_12FD55:        BNE CODE_12FD63           ;  | If not, branch.
CODE_12FD57:        LDA $0534                 ;  | Check if in first room..
CODE_12FD5A:        BEQ CODE_12FD60           ;  | If so, branch.
CODE_12FD5C:        CMP #$06                  ;  | If in second-sixth room...
CODE_12FD5E:        BCC CODE_12FD63           ; / Branch further.
CODE_12FD60:        INC $0784                 
CODE_12FD63:        STZ $0787                 
CODE_12FD66:        LDA $0533                 ; \ Check if in 3-1.
CODE_12FD69:        CMP #$06                  ;  |
CODE_12FD6B:        BNE CODE_12FD77           ;  | If not, branch.
CODE_12FD6D:        LDA $0534                 ;  | Check if in second room.
CODE_12FD70:        CMP #$01                  ;  |
CODE_12FD72:        BNE CODE_12FD77           ; / If not, branch.
CODE_12FD74:        INC $0787                 
CODE_12FD77:        STZ $0791                 
CODE_12FD7A:        LDX #$05                  
CODE_12FD7C:        LDA $0533                 
CODE_12FD7F:        CMP.l DATA_12FCEB,x             
CODE_12FD83:        BNE CODE_12FD92           
CODE_12FD85:        LDA $0534                 
CODE_12FD88:        CMP.l DATA_12FCF1,x             
CODE_12FD8C:        BNE CODE_12FD92           
CODE_12FD8E:        INC $0791                 
CODE_12FD91:        RTL
                       
CODE_12FD92:        DEX                       
CODE_12FD93:        BPL CODE_12FD7C           
CODE_12FD95:        RTL
                       
CODE_12FD96:        JSR CODE_12F29A           ; Clear Layer 2 Map16 tables.
CODE_12FD99:        LDA $0534                 
CODE_12FD9C:        PHA                       
CODE_12FD9D:        LDX $0533                 
CODE_12FDA0:        LDA.l DATA_11CF30,x             
CODE_12FDA4:        STA $0534                 
CODE_12FDA7:        LDX $0533                 
CODE_12FDAA:        LDA.l DATA_139E00,x             
CODE_12FDAE:        CLC                       
CODE_12FDAF:        ADC $0534                 
CODE_12FDB2:        TAX                       
CODE_12FDB3:        LDA.l DATA_139E16,x             
CODE_12FDB7:        STA $05                   
CODE_12FDB9:        LDA.l DATA_139EE8,x             
CODE_12FDBD:        STA $06                   
CODE_12FDBF:        LDA.l DATA_139E15               
CODE_12FDC3:        STA $07                   
CODE_12FDC5:        STZ $E9                   
CODE_12FDC7:        STZ $E6                   
CODE_12FDC9:        STZ $E5                   
CODE_12FDCB:        STZ $04                   
CODE_12FDCD:        JSL CODE_139729           
CODE_12FDD1:        DEC $0534                 
CODE_12FDD4:        BPL CODE_12FDA7           
CODE_12FDD6:        PLA                       
CODE_12FDD7:        STA $0534                 
CODE_12FDDA:        RTL                       

CODE_12FDDB:        LDA $0D                   
CODE_12FDDD:        BMI CODE_12FDE3           
CODE_12FDDF:        CMP #$10                  
CODE_12FDE1:        BMI CODE_12FE2F           
CODE_12FDE3:        REP #$20                  
CODE_12FDE5:        LDA $01                   
CODE_12FDE7:        STA $02C9                 
CODE_12FDEA:        SEP #$20                  
CODE_12FDEC:        LDA $0D                   
CODE_12FDEE:        AND #$0F                  
CODE_12FDF0:        BNE CODE_12FDFE           
CODE_12FDF2:        REP #$20                  
CODE_12FDF4:        LDA $01                   
CODE_12FDF6:        SEC                       
CODE_12FDF7:        SBC #$00E0                
CODE_12FDFA:        STA $01                   
CODE_12FDFC:        SEP #$20                  
CODE_12FDFE:        LDA $0D                   
CODE_12FE00:        SEC                       
CODE_12FE01:        SBC #$11                  
CODE_12FE03:        TAY                       
CODE_12FE04:        LDA [$01],y               
CODE_12FE06:        CMP #$A7                  
CODE_12FE08:        BEQ CODE_12FE0E           
CODE_12FE0A:        CMP #$40                  
CODE_12FE0C:        BNE CODE_12FE26           
CODE_12FE0E:        LDY $0D                   
CODE_12FE10:        DEY                       
CODE_12FE11:        LDX #$03                  
CODE_12FE13:        LDA [$01],y               
CODE_12FE15:        CMP.l DATA_11B735,x             
CODE_12FE19:        BEQ CODE_12FE20           
CODE_12FE1B:        DEX                       
CODE_12FE1C:        BPL CODE_12FE15           
CODE_12FE1E:        BRA CODE_12FE26     
      
CODE_12FE20:        LDA.l DATA_11B731,x             
CODE_12FE24:        STA [$01],y               
CODE_12FE26:        REP #$20                  
CODE_12FE28:        LDA $02C9                 
CODE_12FE2B:        STA $01                   
CODE_12FE2D:        SEP #$20                  
CODE_12FE2F:        RTS
                       
CODE_12FE30:        STA $02C5                 
CODE_12FE33:        JSR CODE_12FDDB           
CODE_12FE36:        LDA $0D                   
CODE_12FE38:        BMI CODE_12FE3E           
CODE_12FE3A:        CMP #$10                  
CODE_12FE3C:        BMI CODE_12FE7C           
CODE_12FE3E:        LDA $02C5                 
CODE_12FE41:        CMP #$A7                  
CODE_12FE43:        BEQ CODE_12FE5D           
CODE_12FE45:        LDA $0D                   
CODE_12FE47:        SEC                       
CODE_12FE48:        SBC #$10                  
CODE_12FE4A:        TAY                       
CODE_12FE4B:        LDX #$03                  
CODE_12FE4D:        LDA [$01],y               
CODE_12FE4F:        CMP.l DATA_11B73D,x             
CODE_12FE53:        BEQ CODE_12FE7C           
CODE_12FE55:        DEX                       
CODE_12FE56:        BPL CODE_12FE4F           
CODE_12FE58:        CMP $02C5                 
CODE_12FE5B:        BEQ CODE_12FE7C           
CODE_12FE5D:        LDY $0D                   
CODE_12FE5F:        DEY                       
CODE_12FE60:        LDA [$01],y               
CODE_12FE62:        CMP #$40                  
CODE_12FE64:        BNE CODE_12FE7C           
CODE_12FE66:        LDX #$03                  
CODE_12FE68:        LDA $02C5                 
CODE_12FE6B:        CMP $11B739,x             
CODE_12FE6F:        BEQ CODE_12FE76           
CODE_12FE71:        DEX                       
CODE_12FE72:        BPL CODE_12FE6B           
CODE_12FE74:        BRA CODE_12FE7C
           
CODE_12FE76:        LDA.l DATA_11B73D,x             
CODE_12FE7A:        BRA CODE_12FE7F
           
CODE_12FE7C:        LDA $02C5                 
CODE_12FE7F:        RTS
                       
CODE_12FE80:        STA $02C5                 
CODE_12FE83:        REP #$20                  
CODE_12FE85:        LDA $01                   
CODE_12FE87:        STA $02C9                 
CODE_12FE8A:        SEP #$20                  
CODE_12FE8C:        LDA $0D                   
CODE_12FE8E:        AND #$0F                  
CODE_12FE90:        BNE CODE_12FE9E           
CODE_12FE92:        REP #$20                  
CODE_12FE94:        LDA $01                   
CODE_12FE96:        SEC                       
CODE_12FE97:        SBC #$00E0                
CODE_12FE9A:        STA $01                   
CODE_12FE9C:        SEP #$20                  
CODE_12FE9E:        LDX #$03                  
CODE_12FEA0:        LDY $0D                   
CODE_12FEA2:        DEY                       
CODE_12FEA3:        LDA [$01],y               
CODE_12FEA5:        CMP.l DATA_11B735,x             
CODE_12FEA9:        BEQ CODE_12FEB0           
CODE_12FEAB:        DEX                       
CODE_12FEAC:        BPL CODE_12FEA5           
CODE_12FEAE:        BRA CODE_12FEB6
           
CODE_12FEB0:        LDA.l DATA_11B731,x             
CODE_12FEB4:        STA [$01],y               
CODE_12FEB6:        REP #$20                  
CODE_12FEB8:        LDA $02C9                 
CODE_12FEBB:        STA $01                   
CODE_12FEBD:        SEP #$20                  
CODE_12FEBF:        LDA $02C5                 
CODE_12FEC2:        CMP #$A7                  
CODE_12FEC4:        BNE CODE_12FECA           
CODE_12FEC6:        LDA #$3A                  
CODE_12FEC8:        BRA CODE_12FEEF
           
CODE_12FECA:        LDA $0D                   
CODE_12FECC:        SEC                       
CODE_12FECD:        SBC #$10                  
CODE_12FECF:        TAY                       
CODE_12FED0:        LDA [$01],y               
CODE_12FED2:        CMP #$40                  
CODE_12FED4:        BNE CODE_12FEEC           
CODE_12FED6:        LDX #$03                  
CODE_12FED8:        LDA $02C5                 
CODE_12FEDB:        CMP $11B731,x             
CODE_12FEDF:        BEQ CODE_12FEE6           
CODE_12FEE1:        DEX                       
CODE_12FEE2:        BPL CODE_12FEDB           
CODE_12FEE4:        BRA CODE_12FEEC
           
CODE_12FEE6:        LDA.l DATA_11B735,x             
CODE_12FEEA:        BRA CODE_12FEEF           

CODE_12FEEC:        LDA $02C5                 
CODE_12FEEF:        RTS
                       
CODE_12FEF0:        STA $02C5                 
CODE_12FEF3:        LDY #$00                  
CODE_12FEF5:        LDX #$07                  
CODE_12FEF7:        LDA $02C5                 
CODE_12FEFA:        CMP $11CF12,x             
CODE_12FEFE:        BNE CODE_12FF12           
CODE_12FF00:        LDA $0533                 
CODE_12FF03:        CMP $11CF1A,x             
CODE_12FF07:        BNE CODE_12FF12           
CODE_12FF09:        LDA $0534                 
CODE_12FF0C:        CMP $11CF22,x             
CODE_12FF10:        BEQ CODE_12FF16           
CODE_12FF12:        DEX                       
CODE_12FF13:        BPL CODE_12FEF7           
CODE_12FF15:        INY                       
CODE_12FF16:        LDA $02C5                 
CODE_12FF19:        RTS
                       
CODE_12FF1A:        JSL CODE_15A244           
CODE_12FF1E:        JSL CODE_159EB9           
CODE_12FF22:        JSL CODE_15993E           
CODE_12FF26:        JSL CODE_15A1F9           
CODE_12FF2A:        RTL
                       
CODE_12FF2B:        LDX $0533                 
CODE_12FF2E:        CPX #$0B                  
CODE_12FF30:        BNE CODE_12FF4A           
CODE_12FF32:        LDX $0534                 
CODE_12FF35:        CPX #$01                  
CODE_12FF37:        BNE CODE_12FF4A           
CODE_12FF39:        LDX #$02                  
CODE_12FF3B:        CMP $11CF2A,x             
CODE_12FF3F:        BNE CODE_12FF47           
CODE_12FF41:        LDA.l DATA_11CF2D,x             
CODE_12FF45:        BRA CODE_12FF4A           

CODE_12FF47:        DEX                       
CODE_12FF48:        BPL CODE_12FF3B           
CODE_12FF4A:        RTS
                       
DATA_12FF4B:        db $03,$0D

DATA_12FF4D:        db $04,$04
                
CODE_12FF4F:        LDX #$01                  
CODE_12FF51:        LDA $0533                 
CODE_12FF54:        CMP $12FF4B,x             
CODE_12FF58:        BNE CODE_12FF63           
CODE_12FF5A:        LDA $0534                 
CODE_12FF5D:        CMP $12FF4D,x             
CODE_12FF61:        BEQ CODE_12FF67           
CODE_12FF63:        DEX                       
CODE_12FF64:        BPL CODE_12FF51           
CODE_12FF66:        RTS
                       
CODE_12FF67:        REP #$20                  
CODE_12FF69:        LDA.l DATA_14BF80               
CODE_12FF6D:        STA $04BC                 
CODE_12FF70:        LDX #$00                  
CODE_12FF72:        LDA.l DATA_14BF80,x             
CODE_12FF76:        STA $0B00,x               
CODE_12FF79:        INX                       
CODE_12FF7A:        INX                       
CODE_12FF7B:        CPX #$20                  
CODE_12FF7D:        BNE CODE_12FF72           
CODE_12FF7F:        SEP #$20                  
CODE_12FF81:        RTS
                       
CODE_12FF82:        LDX #$0A                  
CODE_12FF84:        LDA.w DATA_11AAF0,x               
CODE_12FF87:        STA $C4                   
CODE_12FF89:        LDA.w DATA_11AAFB,x               
CODE_12FF8C:        STA $C5                   
CODE_12FF8E:        LDA.w DATA_11AB06,x               
CODE_12FF91:        STA $C6                   
CODE_12FF93:        RTS
                       
CODE_12FF94:        LDX $0534                 
CODE_12FF97:        LDA.l DATA_11AB11,x             
CODE_12FF9B:        CLC                       
CODE_12FF9C:        ADC.w DATA_11AAFB                 
CODE_12FF9F:        STA $C5                   
CODE_12FFA1:        LDA.w DATA_11AAF0                 
CODE_12FFA4:        STA $C4                   
CODE_12FFA6:        LDA.w DATA_11AB06                 
CODE_12FFA9:        STA $C6                   
CODE_12FFAB:        RTS
                       
CODE_12FFAC:        PHB                       
CODE_12FFAD:        LDA #$7E                  
CODE_12FFAF:        PHA                       
CODE_12FFB0:        PLB                       
CODE_12FFB1:        REP #$20                  
CODE_12FFB3:        LDX #$FE                  
CODE_12FFB5:        STZ $9960,x               
CODE_12FFB8:        DEX                       
CODE_12FFB9:        DEX                       
CODE_12FFBA:        CPX #$FE                  
CODE_12FFBC:        BNE CODE_12FFB5           
CODE_12FFBE:        SEP #$20                  
CODE_12FFC0:        PLB                       
CODE_12FFC1:        RTS
                       
CODE_12FFC2:        CMP #$B0                  
CODE_12FFC4:        BNE CODE_12FFF1           
CODE_12FFC6:        LDX $0533                 
CODE_12FFC9:        CPX #$02                  
CODE_12FFCB:        BEQ CODE_12FFD9           
CODE_12FFCD:        CPX #$08                  
CODE_12FFCF:        BEQ CODE_12FFD9           
CODE_12FFD1:        CPX #$0B                  
CODE_12FFD3:        BEQ CODE_12FFD9           
CODE_12FFD5:        CPX #$11                  
CODE_12FFD7:        BNE CODE_12FFF1           
CODE_12FFD9:        LDX $EB                   
CODE_12FFDB:        BNE CODE_12FFEF           
CODE_12FFDD:        LDA $0D                   
CODE_12FFDF:        AND #$0F                  
CODE_12FFE1:        BNE CODE_12FFE7           
CODE_12FFE3:        LDA #$3F                  
CODE_12FFE5:        BRA CODE_12FFF1           

CODE_12FFE7:        CMP #$0F                  
CODE_12FFE9:        BNE CODE_12FFEF           
CODE_12FFEB:        LDA #$76                  
CODE_12FFED:        BRA CODE_12FFF1
           
CODE_12FFEF:        LDA #$3E                  
CODE_12FFF1:        RTS
                       
DATA_12FFF2:        db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ; \ Empty data.
                    db $FF,$FF,$FF,$FF,$FF,$FF              ; /
