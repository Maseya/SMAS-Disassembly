;Super Mario Bros. 2

CODE_128000:        64 F6         STZ $F6                   
CODE_128002:        64 FA         STZ $FA                   
CODE_128004:        64 F8         STZ $F8                   
CODE_128006:        64 FC         STZ $FC                   
CODE_128008:        A5 50         LDA $50                   ; \ If player not in normal state...
CODE_12800A:        C9 02         CMP #$02                  ;  | ...nor climbing (not forced)...
CODE_12800C:        B0 25         BCS CODE_128033           ; / ..don't branch.
CODE_12800E:        A9 00         LDA #$00                  
CODE_128010:        A0 10         LDY #$10                  
CODE_128012:        CC C3 04      CPY $04C3                 
CODE_128015:        2A            ROL A                     
CODE_128016:        4D C2 06      EOR $06C2                 
CODE_128019:        F0 18         BEQ CODE_128033           
CODE_12801B:        AD 28 06      LDA $0628                 
CODE_12801E:        C9 02         CMP #$02                  
CODE_128020:        F0 09         BEQ CODE_12802B           
CODE_128022:        AC C2 06      LDY $06C2                 ; \ Player changing size.
CODE_128025:        B9 3F 9B      LDA.w DATA_119B3F,y         ;  | Y = 0 = shrinking, Y = 1 = growing.
CODE_128028:        8D E0 1D      STA $1DE0                 ; / Store sound effect appropiate to the change.
CODE_12802B:        A9 1E         LDA #$1E                  ; \ Amount of time to flash = #$1E.
CODE_12802D:        85 82         STA $82                   ; /
CODE_12802F:        A9 08         LDA #$08                  ; \ Getting into changing size animation.
CODE_128031:        85 50         STA $50                   ; /
CODE_128033:        20 37 80      JSR CODE_128037           ; Execute player state.
CODE_128036:        6B            RTL     
                  
CODE_128037:        64 64         STZ $64                   
CODE_128039:        A5 50         LDA $50                   ; \ Execute pointer depending on player status.
CODE_12803B:        22 76 87 11   JSL CODE_118776           ; /

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

CODE_128071:        22 60 DE 14   JSL CODE_14DE60           
CODE_128075:        AF 07 00 70   LDA $700007               
CODE_128079:        F0 48         BEQ CODE_1280C3           
CODE_12807B:        A5 FC         LDA $FC                   
CODE_12807D:        29 80         AND #$80                  
CODE_12807F:        F0 0A         BEQ CODE_12808B           
CODE_128081:        AD 14 02      LDA $0214                 
CODE_128084:        29 01         AND #$01                  
CODE_128086:        49 01         EOR #$01                  
CODE_128088:        8D 14 02      STA $0214                 
CODE_12808B:        A5 FC         LDA $FC                   
CODE_12808D:        29 40         AND #$40                  
CODE_12808F:        F0 14         BEQ CODE_1280A5           
CODE_128091:        A9 30         LDA #$30                  ; \ Flashing timer = #$30.
CODE_128093:        8D E1 04      STA $04E1                 ; /
CODE_128096:        A9 02         LDA #$02                  
CODE_128098:        8D C4 04      STA $04C4                 
CODE_12809B:        A9 3F         LDA #$3F                  ; \ Invincibility timer = #$3F.
CODE_12809D:        8D C3 04      STA $04C3                 ; /
CODE_1280A0:        A9 0D         LDA #$0D                  ; \ Star music.
CODE_1280A2:        8D E2 1D      STA $1DE2                 ; /
CODE_1280A5:        AD 14 02      LDA $0214                 
CODE_1280A8:        F0 19         BEQ CODE_1280C3           
CODE_1280AA:        A5 F6         LDA $F6                   
CODE_1280AC:        29 0F         AND #$0F                  
CODE_1280AE:        AA            TAX                       
CODE_1280AF:        DA            PHX                       
CODE_1280B0:        BF 51 80 12   LDA.l DATA_128051,x             
CODE_1280B4:        85 46         STA $46                   
CODE_1280B6:        20 23 85      JSR CODE_128523           
CODE_1280B9:        FA            PLX                       
CODE_1280BA:        BF 61 80 12   LDA.l DATA_128061,x             
CODE_1280BE:        85 3C         STA $3C                   
CODE_1280C0:        82 0F 00      BRL CODE_1280D2
           
CODE_1280C3:        20 4B 83      JSR CODE_12834B           
CODE_1280C6:        20 72 82      JSR CODE_128272           
CODE_1280C9:        20 65 85      JSR CODE_128565           
CODE_1280CC:        20 BB 8B      JSR CODE_128BBB           
CODE_1280CF:        20 23 85      JSR CODE_128523           
CODE_1280D2:        A2 00         LDX #$00                  
CODE_1280D4:        20 25 85      JSR CODE_128525           
CODE_1280D7:        A5 EB         LDA $EB                   
CODE_1280D9:        D0 02         BNE CODE_1280DD           
CODE_1280DB:        85 14         STA $14                   
CODE_1280DD:        60            RTS
                       
CODE_1280DE:        A5 82         LDA $82                   
CODE_1280E0:        D0 26         BNE CODE_128108           
CODE_1280E2:        AD 2A 04      LDA $042A                 
CODE_1280E5:        C9 02         CMP #$02                  
CODE_1280E7:        F0 10         BEQ CODE_1280F9           
CODE_1280E9:        20 23 85      JSR CODE_128523           
CODE_1280EC:        A5 46         LDA $46                   
CODE_1280EE:        30 04         BMI CODE_1280F4           
CODE_1280F0:        C9 39         CMP #$39                  
CODE_1280F2:        B0 14         BCS CODE_128108                   
CODE_1280F4:        E6 46         INC $46                   
CODE_1280F6:        E6 46         INC $46                   
CODE_1280F8:        60            RTS
                       
CODE_1280F9:        A9 02         LDA #$02                  
CODE_1280FB:        85 C7         STA $C7                   
CODE_1280FD:        A0 01         LDY #$01                  ; \ Return to player select screen.
CODE_1280FF:        CE EE 04      DEC $04EE                 ;  | If lives are 0...
CODE_128102:        D0 01         BNE CODE_128105           ;  | ...
CODE_128104:        C8            INY                       ;  | ... then return to game over screen.
CODE_128105:        8C ED 04      STY $04ED                 ; / <--
CODE_128108:        60            RTS                       ; Return.
                       
CODE_128109:        A5 82         LDA $82                   
CODE_12810B:        D0 2D         BNE CODE_12813A           
CODE_12810D:        AE 2D 04      LDX $042D                 
CODE_128110:        B4 A8         LDY $A8,x                 
CODE_128112:        C0 02         CPY #$02                  
CODE_128114:        90 1E         BCC CODE_128134           
CODE_128116:        D6 A8         DEC $A8,x                 
CODE_128118:        B9 45 9B      LDA.w DATA_119B45,y               
CODE_12811B:        85 C7         STA $C7                   
CODE_12811D:        B5 51         LDA $51,x                 
CODE_12811F:        C9 06         CMP #$06                  
CODE_128121:        F0 06         BEQ CODE_128129           
CODE_128123:        B5 90         LDA $90,x                 
CODE_128125:        C9 32         CMP #$32                  
CODE_128127:        D0 05         BNE CODE_12812E           
CODE_128129:        B9 3F 9B      LDA.w DATA_119B3F,y               
CODE_12812C:        10 03         BPL CODE_128131           
CODE_12812E:        B9 46 05      LDA $0546,y               
CODE_128131:        85 82         STA $82                   
CODE_128133:        60            RTS
                       
CODE_128134:        85 50         STA $50                   
CODE_128136:        E6 99         INC $99                   
CODE_128138:        E6 9A         INC $9A                   
CODE_12813A:        60            RTS
                       
CODE_12813B:        A5 F6         LDA $F6                   ; \ Check only if Up and Down are pressed.
CODE_12813D:        29 0C         AND #$0C                  ;  | LSR twice for a result from 00-03
CODE_12813F:        4A            LSR A                     ;  |
CODE_128140:        4A            LSR A                     ;  |
CODE_128141:        A8            TAY                       ;  | That into Y for index being used later.
CODE_128142:        C0 02         CPY #$02                  ;  | If going upwards, go to an extra subroutine.
CODE_128144:        D0 03         BNE CODE_128149           ;  | (Don't branch.)
CODE_128146:        20 83 81      JSR CODE_128183           ;  | Flip direction every 8 frames.
CODE_128149:        B9 F1 CB      LDA.w DATA_11CBF1,y         ;  | Get appropiate Y speed in for climbing.     
CODE_12814C:        85 46         STA $46                   ; /
CODE_12814E:        A5 F6         LDA $F6                   ; \ Now do the same horizontally...
CODE_128150:        29 03         AND #$03                  ;  | (left-right)
CODE_128152:        A8            TAY                       ;  | Into Y index to get the value for the X speeds.
CODE_128153:        B9 4D 9B      LDA.w DATA_119B4D,y         ;  | <- here
CODE_128156:        85 3C         STA $3C                   ; /
CODE_128158:        A5 28         LDA $28                   
CODE_12815A:        18            CLC                       
CODE_12815B:        69 04         ADC #$04                  
CODE_12815D:        29 0F         AND #$0F                  
CODE_12815F:        C9 08         CMP #$08                  
CODE_128161:        B0 1B         BCS CODE_12817E                   
CODE_128163:        AC 08 CB      LDY.w DATA_11CB08                 
CODE_128166:        A5 46         LDA $46                   
CODE_128168:        30 01         BMI CODE_12816B           
CODE_12816A:        C8            INY                       
CODE_12816B:        A2 00         LDX #$00                  
CODE_12816D:        20 95 81      JSR CODE_128195           
CODE_128170:        B0 06         BCS CODE_128178                   
CODE_128172:        A5 46         LDA $46                   
CODE_128174:        10 08         BPL CODE_12817E           
CODE_128176:        86 46         STX $46                   
CODE_128178:        20 D2 80      JSR CODE_1280D2           
CODE_12817B:        4C 23 85      JMP CODE_128523           

CODE_12817E:        A9 00         LDA #$00                  
CODE_128180:        85 50         STA $50                   
CODE_128182:        60            RTS
                       
CODE_128183:        A5 10         LDA $10                   ; \ Run code every 8 frames.
CODE_128185:        29 07         AND #$07                  ;  |
CODE_128187:        D0 0B         BNE CODE_128194           ; /
CODE_128189:        A5 9D         LDA $9D                   ; \ Flip direction.
CODE_12818B:        49 01         EOR #$01                  ;  |
CODE_12818D:        85 9D         STA $9D                   ; /
CODE_12818F:        A9 30         LDA #$30                  ; \ Climbing sound effect.
CODE_128191:        8D E0 1D      STA $1DE0                 ; /
CODE_128194:        60            RTS                       ; Return.
                       
CODE_128195:        22 00 F9 13   JSL CODE_13F900           ; Prepare Map16 tile being touched by player.
CODE_128199:        A5 00         LDA $00                   ; \ Check if the tile that is being touched is a 'climbing tile'...
CODE_12819B:        A0 0B         LDY #$0B                  ;  | vines, ladders...
CODE_12819D:        D9 50 9B      CMP.w DATA_119B50,y         ;  |
CODE_1281A0:        F0 04         BEQ CODE_1281A6           ;  | If so, return.
CODE_1281A2:        88            DEY                       ;  | Otherwise, loop.
CODE_1281A3:        10 F8         BPL CODE_12819D           ;  | When through index, and no match has been found...
CODE_1281A5:        18            CLC                       ;  | Clear carry.
CODE_1281A6:        60            RTS                       ; / Return.
                       
CODE_1281A7:        A9 20         LDA #$20                  
CODE_1281A9:        85 64         STA $64                   
CODE_1281AB:        E6 32         INC $32                   ; Move down.
CODE_1281AD:        A5 32         LDA $32                   ; \ Skip code if not completely inside the jar.
CODE_1281AF:        29 0F         AND #$0F                  ;  |
CODE_1281B1:        D0 F3         BNE CODE_1281A6           ; /
CODE_1281B3:        68            PLA                       ; \ Pull return address.
CODE_1281B4:        68            PLA                       ; /
CODE_1281B5:        22 42 FA 13   JSL CODE_13FA42           
CODE_1281B9:        A9 02         LDA #$02                  ; \ Generate player on top of screen.
CODE_1281BB:        8D 36 05      STA $0536                 ; /
CODE_1281BE:        AD EF 04      LDA $04EF                 
CODE_1281C1:        D0 06         BNE CODE_1281C9           
CODE_1281C3:        A9 04         LDA #$04                  ; \ Act like a warp jar.
CODE_1281C5:        8D ED 04      STA $04ED                 ; /
CODE_1281C8:        6B            RTL                       ; Return.
                      
CODE_1281C9:        C9 01         CMP #$01                  
CODE_1281CB:        F0 04         BEQ CODE_1281D1           
CODE_1281CD:        8D 27 06      STA $0627                 
CODE_1281D0:        6B            RTL
                       
CODE_1281D1:        8D 28 06      STA $0628                 
CODE_1281D4:        6B            RTL
                       
CODE_1281D5:        A9 20         LDA #$20                  
CODE_1281D7:        85 64         STA $64                   
CODE_1281D9:        C6 32         DEC $32                   ; Move up.
CODE_1281DB:        A5 32         LDA $32                   ; \ Generate sound effect on the first frame the player is inside the jar.
CODE_1281DD:        29 0F         AND #$0F                  ;  |
CODE_1281DF:        C9 0F         CMP #$0F                  ;  |
CODE_1281E1:        D0 05         BNE CODE_1281E8           ; /
CODE_1281E3:        A9 4E         LDA #$4E                  ; \ Going out of jar sound effect.
CODE_1281E5:        8D E3 1D      STA $1DE3                 ; /
CODE_1281E8:        A5 32         LDA $32                   ; \ If still in jar...
CODE_1281EA:        29 0F         AND #$0F                  ;  |
CODE_1281EC:        D0 02         BNE CODE_1281F0           ;  | Return.
CODE_1281EE:        85 50         STA $50                   ; / Otherwise, go into normal walking mode.
CODE_1281F0:        60            RTS                       ; Return.
                       
CODE_1281F1:        A5 46         LDA $46                   ; \ Y speed.
CODE_1281F3:        0A            ASL A                     ;  | Result: 80-FF = 01.
CODE_1281F4:        2A            ROL A                     ;  | Result: 00-7F = 00.
CODE_1281F5:        29 01         AND #$01                  ;  |
CODE_1281F7:        A8            TAY                       ; / Into Y.
CODE_1281F8:        AD 2A 04      LDA $042A                 
CODE_1281FB:        D9 5C 9B      CMP.w DATA_119B5C,y               
CODE_1281FE:        D0 11         BNE CODE_128211           
CODE_128200:        AD 2B 04      LDA $042B                 
CODE_128203:        D9 5E 9B      CMP.w DATA_119B5E,y               
CODE_128206:        D0 09         BNE CODE_128211           
CODE_128208:        EE 27 06      INC $0627                 
CODE_12820B:        A9 03         LDA #$03                  
CODE_12820D:        8D 36 05      STA $0536                 
CODE_128210:        60            RTS
                       
CODE_128211:        AD 2A 04      LDA $042A                 
CODE_128214:        D0 08         BNE CODE_12821E           
CODE_128216:        AD 2B 04      LDA $042B                 
CODE_128219:        D9 60 9B      CMP.w DATA_119B60,y               
CODE_12821C:        F0 09         BEQ CODE_128227           
CODE_12821E:        98            TYA                       
CODE_12821F:        F0 03         BEQ CODE_128224           
CODE_128221:        20 83 81      JSR CODE_128183           
CODE_128224:        4C 23 85      JMP CODE_128523           

CODE_128227:        A9 01         LDA #$01                  
CODE_128229:        85 50         STA $50                   
CODE_12822B:        60            RTS
                       
CODE_12822C:        A5 82         LDA $82                   ; \ Return into normal walking mode if $82 == #$00.
CODE_12822E:        F0 1A         BEQ CODE_12824A           ; /
CODE_128230:        20 23 85      JSR CODE_128523           
CODE_128233:        AD 5A 00      LDA $005A                 
CODE_128236:        F0 14         BEQ CODE_12824C           
CODE_128238:        A9 20         LDA #$20                  
CODE_12823A:        85 64         STA $64                   
CODE_12823C:        A9 04         LDA #$04                  ; \ Enter Hawkmouth, X-speed.
CODE_12823E:        85 3C         STA $3C                   ; /
CODE_128240:        A9 01         LDA #$01                  ; \ Face right.
CODE_128242:        85 9D         STA $9D                   ; /
CODE_128244:        20 D2 80      JSR CODE_1280D2           
CODE_128247:        4C D1 83      JMP CODE_1283D1           

CODE_12824A:        85 50         STA $50                   ; <-- $50 - #$00 = normal player state.
CODE_12824C:        60            RTS                       ; Return.
                       
CODE_12824D:        A5 82         LDA $82                   
CODE_12824F:        F0 16         BEQ CODE_128267           
CODE_128251:        E6 85         INC $85                   
CODE_128253:        A0 04         LDY #$04                  
CODE_128255:        D9 62 9B      CMP.w DATA_119B62,y               
CODE_128258:        D0 09         BNE CODE_128263           
CODE_12825A:        AD C2 06      LDA $06C2                 
CODE_12825D:        49 01         EOR #$01                  
CODE_12825F:        8D C2 06      STA $06C2                 
CODE_128262:        60            RTS
                       
CODE_128263:        88            DEY                       
CODE_128264:        10 EF         BPL CODE_128255           
CODE_128266:        60            RTS
                       
CODE_128267:        A4 C7         LDY $C7                   
CODE_128269:        C0 0A         CPY #$0A                  
CODE_12826B:        D0 02         BNE CODE_12826F           
CODE_12826D:        A9 01         LDA #$01                  
CODE_12826F:        85 50         STA $50                   
CODE_128271:        60            RTS
                       
CODE_128272:        20 D1 83      JSR CODE_1283D1           
CODE_128275:        A5 99         LDA $99                   
CODE_128277:        D0 5C         BNE CODE_1282D5           
CODE_128279:        A5 9A         LDA $9A                   
CODE_12827B:        F0 09         BEQ CODE_128286           
CODE_12827D:        A5 82         LDA $82                   
CODE_12827F:        F0 03         BEQ CODE_128284           
CODE_128281:        4C 04 83      JMP CODE_128304           

CODE_128284:        C6 9A         DEC $9A                   
CODE_128286:        A5 FA         LDA $FA                   
CODE_128288:        10 11         BPL CODE_12829B           
CODE_12828A:        E6 99         INC $99                   
CODE_12828C:        A9 06         LDA #$06                  
CODE_12828E:        85 C7         STA $C7                   
CODE_128290:        20 0B 83      JSR CODE_12830B           
CODE_128293:        A9 01         LDA #$01                  
CODE_128295:        8D E1 1D      STA $1DE1                 
CODE_128298:        9C 8C 07      STZ $078C                 
CODE_12829B:        AD B2 04      LDA $04B2                 
CODE_12829E:        D0 64         BNE CODE_128304           
CODE_1282A0:        AD E0 04      LDA $04E0                 
CODE_1282A3:        D0 30         BNE CODE_1282D5           
CODE_1282A5:        A5 F6         LDA $F6                   
CODE_1282A7:        29 04         AND #$04                  
CODE_1282A9:        F0 2A         BEQ CODE_1282D5           
CODE_1282AB:        AD 78 07      LDA $0778                 
CODE_1282AE:        D0 25         BNE CODE_1282D5           
CODE_1282B0:        E6 9A         INC $9A                   
CODE_1282B2:        9C 8C 07      STZ $078C                 
CODE_1282B5:        A9 04         LDA #$04                  
CODE_1282B7:        85 C7         STA $C7                   
CODE_1282B9:        A5 99         LDA $99                   
CODE_1282BB:        D0 18         BNE CODE_1282D5           
CODE_1282BD:        AD CB 04      LDA $04CB                 
CODE_1282C0:        C9 3C         CMP #$3C                  
CODE_1282C2:        B0 40         BCS CODE_128304                   
CODE_1282C4:        EE CB 04      INC $04CB                 
CODE_1282C7:        AD CB 04      LDA $04CB                 
CODE_1282CA:        C9 3C         CMP #$3C                  
CODE_1282CC:        D0 36         BNE CODE_128304           
CODE_1282CE:        A9 2D         LDA #$2D                  
CODE_1282D0:        8D E3 1D      STA $1DE3                 
CODE_1282D3:        D0 2F         BNE CODE_128304           
CODE_1282D5:        AD CB 04      LDA $04CB                 
CODE_1282D8:        C9 3C         CMP #$3C                  
CODE_1282DA:        B0 05         BCS CODE_1282E1                   
CODE_1282DC:        A9 00         LDA #$00                  
CODE_1282DE:        8D CB 04      STA $04CB                 
CODE_1282E1:        A5 F6         LDA $F6                   
CODE_1282E3:        29 03         AND #$03                  
CODE_1282E5:        F0 1D         BEQ CODE_128304           
CODE_1282E7:        29 01         AND #$01                  
CODE_1282E9:        85 9D         STA $9D                   
CODE_1282EB:        A8            TAY                       
CODE_1282EC:        AD 24 06      LDA $0624                 
CODE_1282EF:        4A            LSR A                     
CODE_1282F0:        4A            LSR A                     
CODE_1282F1:        25 10         AND $10                   
CODE_1282F3:        D0 08         BNE CODE_1282FD           
CODE_1282F5:        A5 3C         LDA $3C                   
CODE_1282F7:        18            CLC                       
CODE_1282F8:        79 67 9B      ADC.w DATA_119B67,y               
CODE_1282FB:        85 3C         STA $3C                   
CODE_1282FD:        A9 00         LDA #$00                  
CODE_1282FF:        8D CB 04      STA $04CB                 
CODE_128302:        F0 03         BEQ CODE_128307           
CODE_128304:        20 98 83      JSR CODE_128398           
CODE_128307:        20 23 84      JSR CODE_128423           
CODE_12830A:        60            RTS
                       
CODE_12830B:        AD E0 04      LDA $04E0                 
CODE_12830E:        C9 02         CMP #$02                  
CODE_128310:        90 07         BCC CODE_128319           
CODE_128312:        AD 54 05      LDA $0554                 
CODE_128315:        85 46         STA $46                   
CODE_128317:        D0 2C         BNE CODE_128345           
CODE_128319:        A5 3C         LDA $3C                   
CODE_12831B:        10 05         BPL CODE_128322           
CODE_12831D:        49 FF         EOR #$FF                  
CODE_12831F:        18            CLC                       
CODE_128320:        69 01         ADC #$01                  
CODE_128322:        C9 08         CMP #$08                  
CODE_128324:        A9 00         LDA #$00                  
CODE_128326:        8D 11 04      STA $0411                 
CODE_128329:        2A            ROL A                     
CODE_12832A:        AC CB 04      LDY $04CB                 
CODE_12832D:        C0 3C         CPY #$3C                  
CODE_12832F:        90 04         BCC CODE_128335           
CODE_128331:        A9 00         LDA #$00                  
CODE_128333:        85 F6         STA $F6                   
CODE_128335:        2A            ROL A                     
CODE_128336:        0A            ASL A                     
CODE_128337:        05 9C         ORA $9C                   
CODE_128339:        A8            TAY                       
CODE_12833A:        B9 4E 05      LDA $054E,y               
CODE_12833D:        85 46         STA $46                   
CODE_12833F:        AD 55 05      LDA $0555                 
CODE_128342:        8D CA 04      STA $04CA                 
CODE_128345:        A9 00         LDA #$00                  
CODE_128347:        8D CB 04      STA $04CB                 
CODE_12834A:        60            RTS
                       
CODE_12834B:        AD E0 04      LDA $04E0                 
CODE_12834E:        C9 02         CMP #$02                  
CODE_128350:        90 05         BCC CODE_128357           
CODE_128352:        AD 58 05      LDA $0558                 
CODE_128355:        D0 2E         BNE CODE_128385           
CODE_128357:        AD 56 05      LDA $0556                 
CODE_12835A:        A4 F6         LDY $F6                   
CODE_12835C:        10 1F         BPL CODE_12837D           
CODE_12835E:        AD 57 05      LDA $0557                 
CODE_128361:        A4 46         LDY $46                   
CODE_128363:        C0 FC         CPY #$FC                  
CODE_128365:        30 16         BMI CODE_12837D           
CODE_128367:        AC CA 04      LDY $04CA                 
CODE_12836A:        F0 11         BEQ CODE_12837D           
CODE_12836C:        CE CA 04      DEC $04CA                 
CODE_12836F:        A5 10         LDA $10                   
CODE_128371:        4A            LSR A                     
CODE_128372:        4A            LSR A                     
CODE_128373:        4A            LSR A                     
CODE_128374:        29 03         AND #$03                  
CODE_128376:        A8            TAY                       
CODE_128377:        B9 69 9B      LDA.w DATA_119B69,y               
CODE_12837A:        85 46         STA $46                   
CODE_12837C:        60            RTS
                       
CODE_12837D:        A4 46         LDY $46                   
CODE_12837F:        30 04         BMI CODE_128385           
CODE_128381:        C0 39         CPY #$39                  
CODE_128383:        B0 05         BCS CODE_12838A                   
CODE_128385:        18            CLC                       
CODE_128386:        65 46         ADC $46                   
CODE_128388:        85 46         STA $46                   
CODE_12838A:        AD CA 04      LDA $04CA                 
CODE_12838D:        CD 55 05      CMP $0555                 
CODE_128390:        F0 05         BEQ CODE_128397           
CODE_128392:        A9 00         LDA #$00                  
CODE_128394:        8D CA 04      STA $04CA                 
CODE_128397:        60            RTS
                       
CODE_128398:        A5 99         LDA $99                   
CODE_12839A:        D0 34         BNE CODE_1283D0           
CODE_12839C:        A5 10         LDA $10                   
CODE_12839E:        2D 24 06      AND $0624                 
CODE_1283A1:        D0 16         BNE CODE_1283B9           
CODE_1283A3:        A5 3C         LDA $3C                   
CODE_1283A5:        29 80         AND #$80                  
CODE_1283A7:        0A            ASL A                     
CODE_1283A8:        2A            ROL A                     
CODE_1283A9:        A8            TAY                       
CODE_1283AA:        A5 3C         LDA $3C                   
CODE_1283AC:        79 6D 9B      ADC.w DATA_119B6D,y               
CODE_1283AF:        AA            TAX                       
CODE_1283B0:        59 67 9B      EOR.w DATA_119B67,y               
CODE_1283B3:        30 02         BMI CODE_1283B7           
CODE_1283B5:        A2 00         LDX #$00                  
CODE_1283B7:        86 3C         STX $3C                   
CODE_1283B9:        A5 9A         LDA $9A                   
CODE_1283BB:        D0 13         BNE CODE_1283D0           
CODE_1283BD:        A5 C7         LDA $C7                   
CODE_1283BF:        C9 09         CMP #$09                  
CODE_1283C1:        F0 0D         BEQ CODE_1283D0           
CODE_1283C3:        A9 02         LDA #$02                  
CODE_1283C5:        85 C7         STA $C7                   
CODE_1283C7:        A9 00         LDA #$00                  
CODE_1283C9:        85 84         STA $84                   
CODE_1283CB:        85 9B         STA $9B                   
CODE_1283CD:        8D 8B 07      STA $078B                 
CODE_1283D0:        60            RTS
                       
CODE_1283D1:        A5 9A         LDA $9A                   
CODE_1283D3:        D0 4D         BNE CODE_128422           
CODE_1283D5:        A5 99         LDA $99                   
CODE_1283D7:        F0 0E         BEQ CODE_1283E7           
CODE_1283D9:        A5 8F         LDA $8F                   
CODE_1283DB:        C9 03         CMP #$03                  
CODE_1283DD:        D0 43         BNE CODE_128422           
CODE_1283DF:        A5 84         LDA $84                   
CODE_1283E1:        D0 38         BNE CODE_12841B           
CODE_1283E3:        A9 02         LDA #$02                  
CODE_1283E5:        D0 1B         BNE CODE_128402           

CODE_1283E7:        A5 84         LDA $84                   
CODE_1283E9:        D0 30         BNE CODE_12841B           
CODE_1283EB:        A9 05         LDA #$05                  
CODE_1283ED:        AC 24 06      LDY $0624                 
CODE_1283F0:        D0 10         BNE CODE_128402           
CODE_1283F2:        A5 3C         LDA $3C                   
CODE_1283F4:        10 05         BPL CODE_1283FB           
CODE_1283F6:        49 FF         EOR #$FF                  
CODE_1283F8:        18            CLC                       
CODE_1283F9:        69 01         ADC #$01                  
CODE_1283FB:        4A            LSR A                     
CODE_1283FC:        4A            LSR A                     
CODE_1283FD:        4A            LSR A                     
CODE_1283FE:        A8            TAY                       
CODE_1283FF:        B9 6F 9B      LDA.w DATA_119B6F,y               
CODE_128402:        85 84         STA $84                   
CODE_128404:        A9 02         LDA #$02                  
CODE_128406:        8D 8C 07      STA $078C                 
CODE_128409:        CE 8B 07      DEC $078B                 
CODE_12840C:        10 05         BPL CODE_128413           
CODE_12840E:        A9 02         LDA #$02                  
CODE_128410:        8D 8B 07      STA $078B                 
CODE_128413:        C6 9B         DEC $9B                   
CODE_128415:        10 04         BPL CODE_12841B           
CODE_128417:        A9 01         LDA #$01                  
CODE_128419:        85 9B         STA $9B                   
CODE_12841B:        A4 9B         LDY $9B                   
CODE_12841D:        B9 79 9B      LDA.w DATA_119B79,y               
CODE_128420:        85 C7         STA $C7                   
CODE_128422:        60            RTS
                       
CODE_128423:        A0 02         LDY #$02                  
CODE_128425:        AD E0 04      LDA $04E0                 
CODE_128428:        C9 02         CMP #$02                  
CODE_12842A:        B0 17         BCS CODE_128443                   
CODE_12842C:        88            DEY                       
CODE_12842D:        A5 9C         LDA $9C                   
CODE_12842F:        F0 11         BEQ CODE_128442           
CODE_128431:        AE 2D 04      LDX $042D                 
CODE_128434:        B5 90         LDA $90,x                 
CODE_128436:        C9 32         CMP #$32                  
CODE_128438:        90 09         BCC CODE_128443           
CODE_12843A:        C9 39         CMP #$39                  
CODE_12843C:        90 04         BCC CODE_128442           
CODE_12843E:        C9 3B         CMP #$3B                  
CODE_128440:        90 01         BCC CODE_128443           
CODE_128442:        88            DEY                       
CODE_128443:        B9 59 05      LDA $0559,y               
CODE_128446:        24 F6         BIT $F6                   
CODE_128448:        50 05         BVC CODE_12844F                   
CODE_12844A:        4A            LSR A                     
CODE_12844B:        18            CLC                       
CODE_12844C:        79 59 05      ADC $0559,y               
CODE_12844F:        C5 3C         CMP $3C                   
CODE_128451:        10 02         BPL CODE_128455           
CODE_128453:        85 3C         STA $3C                   
CODE_128455:        B9 5C 05      LDA $055C,y               
CODE_128458:        24 F6         BIT $F6                   
CODE_12845A:        50 06         BVC CODE_128462                   
CODE_12845C:        38            SEC                       
CODE_12845D:        6A            ROR A                     
CODE_12845E:        18            CLC                       
CODE_12845F:        79 5C 05      ADC $055C,y               
CODE_128462:        C5 3C         CMP $3C                   
CODE_128464:        30 02         BMI CODE_128468           
CODE_128466:        85 3C         STA $3C                   
CODE_128468:        24 FA         BIT $FA                   
CODE_12846A:        50 51         BVC CODE_1284BD                   
CODE_12846C:        A5 9C         LDA $9C                   
CODE_12846E:        F0 4D         BEQ CODE_1284BD           
CODE_128470:        A0 00         LDY #$00                  
CODE_128472:        AE 2D 04      LDX $042D                 
CODE_128475:        B5 51         LDA $51,x                 
CODE_128477:        C9 06         CMP #$06                  
CODE_128479:        F0 42         BEQ CODE_1284BD           
CODE_12847B:        B5 90         LDA $90,x                 
CODE_12847D:        C9 39         CMP #$39                  
CODE_12847F:        90 04         BCC CODE_128485           
CODE_128481:        C9 3A         CMP #$3A                  
CODE_128483:        90 06         BCC CODE_12848B           
CODE_128485:        C9 37         CMP #$37                  
CODE_128487:        90 35         BCC CODE_1284BE           
CODE_128489:        A0 02         LDY #$02                  
CODE_12848B:        84 07         STY $07                   
CODE_12848D:        A5 9D         LDA $9D                   
CODE_12848F:        0A            ASL A                     
CODE_128490:        05 9A         ORA $9A                   
CODE_128492:        AA            TAX                       
CODE_128493:        BC 03 CB      LDY.w DATA_11CB03,x               
CODE_128496:        AE 2D 04      LDX $042D                 
CODE_128499:        A9 36         LDA #$36                  
CODE_12849B:        D5 90         CMP $90,x                 
CODE_12849D:        B0 0D         BCS CODE_1284AC                   
CODE_12849F:        A5 3C         LDA $3C                   
CODE_1284A1:        10 05         BPL CODE_1284A8           
CODE_1284A3:        49 FF         EOR #$FF                  
CODE_1284A5:        18            CLC                       
CODE_1284A6:        69 01         ADC #$01                  
CODE_1284A8:        C9 08         CMP #$08                  
CODE_1284AA:        90 01         BCC CODE_1284AD           
CODE_1284AC:        C8            INY                       
CODE_1284AD:        A2 00         LDX #$00                  
CODE_1284AF:        22 00 F9 13   JSL CODE_13F900           
CODE_1284B3:        A5 00         LDA $00                   
CODE_1284B5:        A4 07         LDY $07                   
CODE_1284B7:        22 9C F9 13   JSL CODE_13F99C           
CODE_1284BB:        90 01         BCC CODE_1284BE           
CODE_1284BD:        60            RTS
                       
CODE_1284BE:        A9 09         LDA #$09                  
CODE_1284C0:        85 C7         STA $C7                   
CODE_1284C2:        A9 02         LDA #$02                  
CODE_1284C4:        85 9B         STA $9B                   
CODE_1284C6:        A9 0A         LDA #$0A                  
CODE_1284C8:        85 84         STA $84                   
CODE_1284CA:        C6 9C         DEC $9C                   
CODE_1284CC:        A9 31         LDA #$31                  
CODE_1284CE:        8D E0 1D      STA $1DE0                 
CODE_1284D1:        9C AF 04      STZ $04AF                 
CODE_1284D4:        64 9A         STZ $9A                   
CODE_1284D6:        64 FA         STZ $FA                   
CODE_1284D8:        64 01         STZ $01                   
CODE_1284DA:        AE 2D 04      LDX $042D                 
CODE_1284DD:        A9 36         LDA #$36                  
CODE_1284DF:        D5 90         CMP $90,x                 
CODE_1284E1:        26 01         ROL $01                   
CODE_1284E3:        A5 3C         LDA $3C                   
CODE_1284E5:        10 05         BPL CODE_1284EC           
CODE_1284E7:        49 FF         EOR #$FF                  
CODE_1284E9:        18            CLC                       
CODE_1284EA:        69 01         ADC #$01                  
CODE_1284EC:        C9 08         CMP #$08                  
CODE_1284EE:        26 01         ROL $01                   
CODE_1284F0:        D0 14         BNE CODE_128506           
CODE_1284F2:        A4 9D         LDY $9D                   
CODE_1284F4:        B9 88 9B      LDA.w DATA_119B88,y               
CODE_1284F7:        18            CLC                       
CODE_1284F8:        75 29         ADC $29,x                 
CODE_1284FA:        95 29         STA $29,x                 
CODE_1284FC:        A5 EB         LDA $EB                   
CODE_1284FE:        F0 06         BEQ CODE_128506           
CODE_128500:        88            DEY                       
CODE_128501:        98            TYA                       
CODE_128502:        75 15         ADC $15,x                 
CODE_128504:        95 15         STA $15,x                 
CODE_128506:        A4 01         LDY $01                   
CODE_128508:        B9 84 9B      LDA.w DATA_119B84,y               
CODE_12850B:        95 47         STA $47,x                 
CODE_12850D:        A5 01         LDA $01                   
CODE_12850F:        0A            ASL A                     
CODE_128510:        05 9D         ORA $9D                   
CODE_128512:        A8            TAY                       
CODE_128513:        B9 7C 9B      LDA.w DATA_119B7C,y               
CODE_128516:        95 3D         STA $3D,x                 
CODE_128518:        A9 01         LDA #$01                  
CODE_12851A:        9D 2F 04      STA $042F,x               
CODE_12851D:        4A            LSR A                     
CODE_12851E:        95 A8         STA $A8,x                 
CODE_128520:        74 5B         STZ $5B,x                 
CODE_128522:        60            RTS
                       
CODE_128523:        A2 0A         LDX #$0A                  
CODE_128525:        B5 3C         LDA $3C,x                 
CODE_128527:        18            CLC                       
CODE_128528:        7D CC 04      ADC $04CC,x               
CODE_12852B:        08            PHP                       
CODE_12852C:        10 05         BPL CODE_128533           
CODE_12852E:        49 FF         EOR #$FF                  
CODE_128530:        18            CLC                       
CODE_128531:        69 01         ADC #$01                  
CODE_128533:        48            PHA                       
CODE_128534:        4A            LSR A                     
CODE_128535:        4A            LSR A                     
CODE_128536:        4A            LSR A                     
CODE_128537:        4A            LSR A                     
CODE_128538:        A8            TAY                       
CODE_128539:        68            PLA                       
CODE_12853A:        0A            ASL A                     
CODE_12853B:        0A            ASL A                     
CODE_12853C:        0A            ASL A                     
CODE_12853D:        0A            ASL A                     
CODE_12853E:        18            CLC                       
CODE_12853F:        7D 07 04      ADC $0407,x               
CODE_128542:        9D 07 04      STA $0407,x               
CODE_128545:        98            TYA                       
CODE_128546:        69 00         ADC #$00                  
CODE_128548:        28            PLP                       
CODE_128549:        10 05         BPL CODE_128550           
CODE_12854B:        49 FF         EOR #$FF                  
CODE_12854D:        18            CLC                       
CODE_12854E:        69 01         ADC #$01                  
CODE_128550:        A0 00         LDY #$00                  
CODE_128552:        C9 00         CMP #$00                  
CODE_128554:        10 01         BPL CODE_128557           
CODE_128556:        88            DEY                       
CODE_128557:        18            CLC                       
CODE_128558:        75 28         ADC $28,x                 
CODE_12855A:        95 28         STA $28,x                 
CODE_12855C:        98            TYA                       
CODE_12855D:        75 14         ADC $14,x                 
CODE_12855F:        95 14         STA $14,x                 
CODE_128561:        9E CC 04      STZ $04CC,x               
CODE_128564:        60            RTS
                       
CODE_128565:        A9 00         LDA #$00                  
CODE_128567:        85 5A         STA $5A                   
CODE_128569:        8D 24 06      STA $0624                 
CODE_12856C:        85 07         STA $07                   
CODE_12856E:        85 0A         STA $0A                   
CODE_128570:        85 0E         STA $0E                   
CODE_128572:        85 0C         STA $0C                   
CODE_128574:        20 6A 86      JSR CODE_12866A           
CODE_128577:        A5 9A         LDA $9A                   
CODE_128579:        0A            ASL A                     
CODE_12857A:        05 9C         ORA $9C                   
CODE_12857C:        AA            TAX                       
CODE_12857D:        BD FD CA      LDA.w DATA_11CAFD,x               
CODE_128580:        85 08         STA $08                   
CODE_128582:        A5 46         LDA $46                   
CODE_128584:        18            CLC                       
CODE_128585:        6D D6 04      ADC $04D6                 
CODE_128588:        10 0C         BPL CODE_128596           
CODE_12858A:        20 1D 86      JSR CODE_12861D           
CODE_12858D:        20 62 86      JSR CODE_128662           
CODE_128590:        A5 5A         LDA $5A                   
CODE_128592:        D0 51         BNE CODE_1285E5           
CODE_128594:        F0 6A         BEQ CODE_128600           
CODE_128596:        20 62 86      JSR CODE_128662           
CODE_128599:        20 1D 86      JSR CODE_12861D           
CODE_12859C:        A5 5A         LDA $5A                   
CODE_12859E:        D0 1A         BNE CODE_1285BA           
CODE_1285A0:        A9 00         LDA #$00                  
CODE_1285A2:        A2 01         LDX #$01                  
CODE_1285A4:        AC 35 06      LDY $0635                 
CODE_1285A7:        C0 01         CPY #$01                  
CODE_1285A9:        F0 04         BEQ CODE_1285AF           
CODE_1285AB:        C0 05         CPY #$05                  
CODE_1285AD:        D0 03         BNE CODE_1285B2           
CODE_1285AF:        20 0E 9A      JSR CODE_129A0E           
CODE_1285B2:        8D E0 04      STA $04E0                 
CODE_1285B5:        86 99         STX $99                   
CODE_1285B7:        4C 00 86      JMP CODE_128600           

CODE_1285BA:        A9 00         LDA #$00                  
CODE_1285BC:        8D E0 04      STA $04E0                 
CODE_1285BF:        A5 32         LDA $32                   
CODE_1285C1:        29 0C         AND #$0C                  
CODE_1285C3:        D0 3B         BNE CODE_128600           
CODE_1285C5:        85 99         STA $99                   
CODE_1285C7:        A5 32         LDA $32                   
CODE_1285C9:        29 F0         AND #$F0                  
CODE_1285CB:        85 32         STA $32                   
CODE_1285CD:        46 0A         LSR $0A                   
CODE_1285CF:        90 08         BCC CODE_1285D9           
CODE_1285D1:        A6 0A         LDX $0A                   
CODE_1285D3:        BD 9A 9B      LDA.w DATA_119B9A,x               
CODE_1285D6:        8D CC 04      STA $04CC                 
CODE_1285D9:        46 0C         LSR $0C                   
CODE_1285DB:        90 05         BCC CODE_1285E2           
CODE_1285DD:        A9 0F         LDA #$0F                  
CODE_1285DF:        8D 24 06      STA $0624                 
CODE_1285E2:        20 7B 87      JSR CODE_12877B           
CODE_1285E5:        A9 00         LDA #$00                  
CODE_1285E7:        85 46         STA $46                   
CODE_1285E9:        8D D6 04      STA $04D6                 
CODE_1285EC:        AD E1 04      LDA $04E1                 
CODE_1285EF:        D0 0F         BNE CODE_128600           
CODE_1285F1:        46 0E         LSR $0E                   
CODE_1285F3:        90 0B         BCC CODE_128600           
CODE_1285F5:        AD 28 04      LDA $0428                 
CODE_1285F8:        8D 29 04      STA $0429                 
CODE_1285FB:        66 12         ROR $12                   
CODE_1285FD:        20 52 9A      JSR CODE_129A52           
CODE_128600:        A0 02         LDY #$02                  
CODE_128602:        A5 3C         LDA $3C                   
CODE_128604:        18            CLC                       
CODE_128605:        6D CC 04      ADC $04CC                 
CODE_128608:        30 04         BMI CODE_12860E           
CODE_12860A:        88            DEY                       
CODE_12860B:        20 62 86      JSR CODE_128662           
CODE_12860E:        84 6E         STY $6E                   
CODE_128610:        20 1D 86      JSR CODE_12861D           
CODE_128613:        A5 5A         LDA $5A                   
CODE_128615:        29 03         AND #$03                  
CODE_128617:        F0 03         BEQ CODE_12861C           
CODE_128619:        20 D8 8B      JSR CODE_128BD8           
CODE_12861C:        60            RTS
                       
CODE_12861D:        20 20 86      JSR CODE_128620           
CODE_128620:        A2 00         LDX #$00                  
CODE_128622:        A4 08         LDY $08                   
CODE_128624:        22 00 F9 13   JSL CODE_13F900           
CODE_128628:        A6 07         LDX $07                   
CODE_12862A:        BC 8A 9B      LDY.w DATA_119B8A,x               
CODE_12862D:        A5 00         LDA $00                   
CODE_12862F:        22 9C F9 13   JSL CODE_13F99C           
CODE_128633:        90 2A         BCC CODE_12865F           
CODE_128635:        C9 2E         CMP #$2E                  
CODE_128637:        D0 07         BNE CODE_128640           
CODE_128639:        BD 8A 9B      LDA.w DATA_119B8A,x               
CODE_12863C:        85 0E         STA $0E                   
CODE_12863E:        D0 18         BNE CODE_128658           

CODE_128640:        C9 26         CMP #$26                  
CODE_128642:        D0 07         BNE CODE_12864B           
CODE_128644:        BD 8A 9B      LDA.w DATA_119B8A,x               
CODE_128647:        85 0C         STA $0C                   
CODE_128649:        D0 0D         BNE CODE_128658           

CODE_12864B:        38            SEC                       
CODE_12864C:        E9 60         SBC #$60                  
CODE_12864E:        C9 02         CMP #$02                  
CODE_128650:        B0 06         BCS CODE_128658                   
CODE_128652:        0A            ASL A                     
CODE_128653:        1D 8A 9B      ORA.w DATA_119B8A,x               
CODE_128656:        85 0A         STA $0A                   
CODE_128658:        BD 92 9B      LDA.w DATA_119B92,x               
CODE_12865B:        05 5A         ORA $5A                   
CODE_12865D:        85 5A         STA $5A                   
CODE_12865F:        4C 65 86      JMP CODE_128665           

CODE_128662:        20 65 86      JSR CODE_128665           
CODE_128665:        E6 07         INC $07                   
CODE_128667:        E6 08         INC $08                   
CODE_128669:        60            RTS
                       
CODE_12866A:        AC 07 CB      LDY.w DATA_11CB07                 
CODE_12866D:        A5 10         LDA $10                   
CODE_12866F:        4A            LSR A                     
CODE_128670:        B0 01         BCS CODE_128673          
CODE_128672:        C8            INY                       
CODE_128673:        A2 00         LDX #$00                  ; \ Prepare tile being touched by player.
CODE_128675:        20 95 81      JSR CODE_128195           ;  | Check if touching any of the climbing tiles.
CODE_128678:        B0 2C         BCS CODE_1286A6           ; / If so, branch.
CODE_12867A:        A5 00         LDA $00                   ; \ If not cherry tile...
CODE_12867C:        C9 4E         CMP #$4E                  ;  |
CODE_12867E:        D0 4E         BNE CODE_1286CE           ; / branch.
CODE_128680:        EE 2A 06      INC $062A                 ; Increment cherry counter.           
CODE_128683:        AD 2A 06      LDA $062A                 ; \ If collected 5 times exactly...
CODE_128686:        E9 05         SBC #$05                  ;  |
CODE_128688:        D0 06         BNE CODE_128690           ;  | don't branch...
CODE_12868A:        8D 2A 06      STA $062A                 ; / And reset cherry counter.
CODE_12868D:        20 45 99      JSR CODE_129945           ; Generate star man.
CODE_128690:        A9 3B         LDA #$3B                  ; \ Collect cherry sound.
CODE_128692:        8D E3 1D      STA $1DE3                 ; /
CODE_128695:        A5 06         LDA $06                   
CODE_128697:        18            CLC                       
CODE_128698:        69 08         ADC #$08                  
CODE_12869A:        29 F0         AND #$F0                  
CODE_12869C:        8D 12 02      STA $0212                 
CODE_12869F:        A9 40         LDA #$40                  ; \ Clear tile.
CODE_1286A1:        22 F4 8B 12   JSL CODE_128BF4           ; /
CODE_1286A5:        60            RTS
                       
CODE_1286A6:        A5 F6         LDA $F6                   ; \ If not pressing Up/Down...
CODE_1286A8:        29 0C         AND #$0C                  ;  |
CODE_1286AA:        F0 22         BEQ CODE_1286CE           ; / Branch.
CODE_1286AC:        A4 9C         LDY $9C                   ; \ If player holding item...
CODE_1286AE:        D0 1E         BNE CODE_1286CE           ; / branch.
CODE_1286B0:        A5 28         LDA $28                   ; \ If not lining up completely with the vine...
CODE_1286B2:        18            CLC                       ;  | (horizontally)
CODE_1286B3:        69 04         ADC #$04                  ;  |
CODE_1286B5:        29 0F         AND #$0F                  ;  |
CODE_1286B7:        C9 08         CMP #$08                  ;  |
CODE_1286B9:        B0 13         BCS CODE_1286CE           ; / return.    
CODE_1286BB:        A9 01         LDA #$01                  ; \ Player = climbing.
CODE_1286BD:        85 50         STA $50                   ; /
CODE_1286BF:        9C 8C 07      STZ $078C                 
CODE_1286C2:        84 99         STY $99                   
CODE_1286C4:        84 9A         STY $9A                   
CODE_1286C6:        A9 0A         LDA #$0A                  ; \ Climbing pose.
CODE_1286C8:        85 C7         STA $C7                   ; /
CODE_1286CA:        68            PLA                       
CODE_1286CB:        68            PLA                       
CODE_1286CC:        68            PLA                       
CODE_1286CD:        68            PLA                       
CODE_1286CE:        60            RTS
                       
CODE_1286CF:        A2 06         LDX #$06                  ; \ Check if there's a free sprite slot.
CODE_1286D1:        B5 51         LDA $51,x                 ;  | If so ($51,x = #$00), branch.
CODE_1286D3:        F0 06         BEQ CODE_1286DB           ;  | (Break out of loop.)
CODE_1286D5:        E8            INX                       ;  | Otherwise loop until...
CODE_1286D6:        E0 09         CPX #$09                  ;  | maximum is reached.
CODE_1286D8:        90 F7         BCC CODE_1286D1           ;  | If maximum, not reached, loop, otherwise...
CODE_1286DA:        60            RTS                       ; / ...end it.
                       
CODE_1286DB:        A5 00         LDA $00                   
CODE_1286DD:        95 79         STA $79,x                 
CODE_1286DF:        A5 03         LDA $03                   
CODE_1286E1:        95 15         STA $15,x                 
CODE_1286E3:        A5 04         LDA $04                   
CODE_1286E5:        95 1F         STA $1F,x                 
CODE_1286E7:        A5 05         LDA $05                   
CODE_1286E9:        95 29         STA $29,x                 
CODE_1286EB:        A5 06         LDA $06                   
CODE_1286ED:        95 33         STA $33,x                 
CODE_1286EF:        A9 00         LDA #$00                  
CODE_1286F1:        9D 2F 04      STA $042F,x               
CODE_1286F4:        95 9F         STA $9F,x                 
CODE_1286F6:        95 B1         STA $B1,x                 
CODE_1286F8:        9D 00 0D      STA $0D00,x               
CODE_1286FB:        20 D5 99      JSR CODE_1299D5           
CODE_1286FE:        A9 01         LDA #$01                  ; Sprite that is spawned will run main routine.
CODE_128700:        A4 09         LDY $09                   ; \ If tile is not a sand tile...
CODE_128702:        C0 0E         CPY #$0E                  ;  |
CODE_128704:        D0 06         BNE CODE_12870C           ; / branch.
CODE_128706:        A9 20         LDA #$20                  ; \ How long it takes for the sand digging animation to be done (the actual sprite tile)
CODE_128708:        95 86         STA $86,x                 ; /
CODE_12870A:        A9 06         LDA #$06                  ; \ Actually dig up the darn sand. Sprite number from table will be #$39 (mushroom block)
CODE_12870C:        95 51         STA $51,x                 ; /
CODE_12870E:        B9 9F 9B      LDA.w DATA_119B9F,y         ; \ Get sprite to spawn from table.
CODE_128711:        95 90         STA $90,x                 ; /
CODE_128713:        C9 36         CMP #$36                  
CODE_128715:        D0 03         BNE CODE_12871A           
CODE_128717:        9C 9E 07      STZ $079E                 
CODE_12871A:        A0 FF         LDY #$FF                  
CODE_12871C:        C9 37         CMP #$37                  
CODE_12871E:        F0 06         BEQ CODE_128726           
CODE_128720:        C9 09         CMP #$09                  
CODE_128722:        D0 07         BNE CODE_12872B           
CODE_128724:        A0 50         LDY #$50                  
CODE_128726:        98            TYA                       
CODE_128727:        95 86         STA $86,x                 
CODE_128729:        D0 25         BNE CODE_128750           
CODE_12872B:        C9 40         CMP #$40                  
CODE_12872D:        D0 0C         BNE CODE_12873B           
CODE_12872F:        AD 20 06      LDA $0620                 ; \ If 1-Up has already been collected...
CODE_128732:        F0 1C         BEQ CODE_128750           ;  |
CODE_128734:        A9 32         LDA #$32                  ;  | Pick up small vegetable instead.
CODE_128736:        95 90         STA $90,x                 ; /
CODE_128738:        4C 50 87      JMP CODE_128750           

CODE_12873B:        C9 33         CMP #$33                  
CODE_12873D:        D0 11         BNE CODE_128750           
CODE_12873F:        AC 2C 06      LDY $062C                 
CODE_128742:        C8            INY                       
CODE_128743:        C0 05         CPY #$05                  
CODE_128745:        90 06         BCC CODE_12874D           
CODE_128747:        A9 46         LDA #$46                  
CODE_128749:        95 90         STA $90,x                 
CODE_12874B:        A0 00         LDY #$00                  
CODE_12874D:        8C 2C 06      STY $062C                 
CODE_128750:        20 78 99      JSR CODE_129978           
CODE_128753:        A9 04         LDA #$04                  
CODE_128755:        95 5B         STA $5B,x                 
CODE_128757:        A9 40         LDA #$40                  ; \ Tile to spawn when object is picked up = #$40.
CODE_128759:        22 0D FA 13   JSL CODE_13FA0D           ; / (Empty tile.)
CODE_12875D:        A9 07         LDA #$07                  
CODE_12875F:        95 A8         STA $A8,x                 
CODE_128761:        8E 2D 04      STX $042D                 
CODE_128764:        A9 02         LDA #$02                  
CODE_128766:        85 50         STA $50                   
CODE_128768:        A9 06         LDA #$06                  
CODE_12876A:        85 82         STA $82                   
CODE_12876C:        A9 08         LDA #$08                  
CODE_12876E:        85 C7         STA $C7                   
CODE_128770:        E6 9C         INC $9C                   
CODE_128772:        9C 8C 07      STZ $078C                 
CODE_128775:        A9 2B         LDA #$2B                  
CODE_128777:        8D E0 1D      STA $1DE0                 
CODE_12877A:        60            RTS
                       
CODE_12877B:        A4 9C         LDY $9C                   ; \ If holding item...
CODE_12877D:        D0 76         BNE CODE_1287F5           ; / branch.
CODE_12877F:        A5 9A         LDA $9A                   
CODE_128781:        F0 4B         BEQ CODE_1287CE           
CODE_128783:        A5 00         LDA $00                   ; Get Map16 tile index.
CODE_128785:        AE 28 06      LDX $0628                 ; \ If not in potion room...       
CODE_128788:        E0 02         CPX #$02                  ;  |
CODE_12878A:        D0 06         BNE CODE_128792           ; / branch.
CODE_12878C:        C9 6F         CMP #$6F                  ; \ If on warp jar, run 'entering jar' code.
CODE_12878E:        F0 0C         BEQ CODE_12879C           ; /
CODE_128790:        D0 63         BNE CODE_1287F5           ; Otherwise, branch.   
CODE_128792:        C8            INY                       ; \ Y = #$01. (So you're not warping to another world, see $04EF.)
CODE_128793:        C9 6E         CMP #$6E                  ;  | If tile 6E, Y stays #$01...
CODE_128795:        F0 05         BEQ CODE_12879C           ;  |
CODE_128797:        C9 6A         CMP #$6A                  ;  | If tile 6A, Y becomes #$02   
CODE_128799:        D0 5A         BNE CODE_1287F5           ;  | If neither, just return.
CODE_12879B:        C8            INY                       ; / Y = #$02.
CODE_12879C:        A5 28         LDA $28                   ; \ If not...
CODE_12879E:        18            CLC                       ;  | lining up exactly...
CODE_12879F:        69 04         ADC #$04                  ;  | with the middle of the jar...
CODE_1287A1:        29 0F         AND #$0F                  ;  |
CODE_1287A3:        C9 08         CMP #$08                  ;  |   
CODE_1287A5:        B0 4E         BCS CODE_1287F5           ; / Return.           
CODE_1287A7:        A9 4D         LDA #$4D                  ; \ Sound effect = going down jar.
CODE_1287A9:        8D E3 1D      STA $1DE3                 ; /
CODE_1287AC:        A9 00         LDA #$00                  ; \ X speed = #$00    
CODE_1287AE:        85 3C         STA $3C                   ; /
CODE_1287B0:        A9 04         LDA #$04                  ; \ Animation = #$04 (going down jar)    
CODE_1287B2:        85 50         STA $50                   ; /
CODE_1287B4:        8C EF 04      STY $04EF                 ; Store result from Y into $04EF.    
CODE_1287B7:        22 BC 87 12   JSL CODE_1287BC           
CODE_1287BB:        60            RTS
                       
CODE_1287BC:        A5 28         LDA $28                   
CODE_1287BE:        18            CLC                       
CODE_1287BF:        69 08         ADC #$08                  
CODE_1287C1:        29 F0         AND #$F0                  
CODE_1287C3:        85 28         STA $28                   
CODE_1287C5:        90 06         BCC CODE_1287CD           
CODE_1287C7:        A5 EB         LDA $EB                   
CODE_1287C9:        F0 02         BEQ CODE_1287CD           
CODE_1287CB:        E6 14         INC $14                   
CODE_1287CD:        6B            RTL
                       
CODE_1287CE:        24 FA         BIT $FA                   
CODE_1287D0:        50 23         BVC CODE_1287F5                   
CODE_1287D2:        A5 28         LDA $28                   
CODE_1287D4:        18            CLC                       
CODE_1287D5:        69 06         ADC #$06                  
CODE_1287D7:        29 0F         AND #$0F                  
CODE_1287D9:        C9 0C         CMP #$0C                  
CODE_1287DB:        B0 18         BCS CODE_1287F5                   
CODE_1287DD:        A5 00         LDA $00                   
CODE_1287DF:        C9 9D         CMP #$9D                  
CODE_1287E1:        D0 04         BNE CODE_1287E7           
CODE_1287E3:        A9 0E         LDA #$0E                  
CODE_1287E5:        D0 09         BNE CODE_1287F0           
CODE_1287E7:        C9 68         CMP #$68                  
CODE_1287E9:        B0 0A         BCS CODE_1287F5                   
CODE_1287EB:        38            SEC                       
CODE_1287EC:        E9 64         SBC #$64                  
CODE_1287EE:        90 05         BCC CODE_1287F5           
CODE_1287F0:        85 09         STA $09                   
CODE_1287F2:        4C CF 86      JMP CODE_1286CF   
        
CODE_1287F5:        A5 9A         LDA $9A                   
CODE_1287F7:        D0 7B         BNE CODE_128874           
CODE_1287F9:        A5 06         LDA $06                   
CODE_1287FB:        38            SEC                       
CODE_1287FC:        E9 10         SBC #$10                  
CODE_1287FE:        85 06         STA $06                   
CODE_128800:        85 E6         STA $E6                   
CODE_128802:        A5 04         LDA $04                   
CODE_128804:        E9 00         SBC #$00                  
CODE_128806:        85 04         STA $04                   
CODE_128808:        85 01         STA $01                   
CODE_12880A:        A5 03         LDA $03                   
CODE_12880C:        85 02         STA $02                   
CODE_12880E:        20 6D 8B      JSR CODE_128B6D           
CODE_128811:        B0 61         BCS CODE_128874                   
CODE_128813:        A6 03         LDX $03                   
CODE_128815:        DA            PHX                       
CODE_128816:        20 DB 99      JSR CODE_1299DB           
CODE_128819:        C2 20         REP #$20                  
CODE_12881B:        A5 01         LDA $01                   
CODE_12881D:        18            CLC                       
CODE_12881E:        69 00 70      ADC #$7000                
CODE_128821:        85 C4         STA $C4                   
CODE_128823:        E2 20         SEP #$20                  
CODE_128825:        A5 03         LDA $03                   
CODE_128827:        85 C6         STA $C6                   
CODE_128829:        A4 E7         LDY $E7                   
CODE_12882B:        B7 C4         LDA [$C4],y               
CODE_12882D:        F0 11         BEQ CODE_128840           
CODE_12882F:        B7 01         LDA [$01],y               
CODE_128831:        C9 2B         CMP #$2B                  
CODE_128833:        F0 0B         BEQ CODE_128840           
CODE_128835:        C9 2A         CMP #$2A                  
CODE_128837:        F0 07         BEQ CODE_128840           
CODE_128839:        AA            TAX                       
CODE_12883A:        BF BD CC 14   LDA.l DATA_14CCBD,x             
CODE_12883E:        80 02         BRA CODE_128842           

CODE_128840:        B7 01         LDA [$01],y               
CODE_128842:        FA            PLX                       
CODE_128843:        86 03         STX $03                   
CODE_128845:        85 00         STA $00                   
CODE_128847:        A6 9C         LDX $9C                   
CODE_128849:        F0 09         BEQ CODE_128854           
CODE_12884B:        AE 2D 04      LDX $042D                 
CODE_12884E:        B4 90         LDY $90,x                 
CODE_128850:        C0 3D         CPY #$3D                  
CODE_128852:        D0 20         BNE CODE_128874           
CODE_128854:        AE 28 06      LDX $0628                 
CODE_128857:        E0 02         CPX #$02                  
CODE_128859:        F0 0A         BEQ CODE_128865           
CODE_12885B:        A0 07         LDY #$07                  
CODE_12885D:        D9 AE 9B      CMP.w DATA_119BAE,y               
CODE_128860:        F0 34         BEQ CODE_128896           
CODE_128862:        88            DEY                       
CODE_128863:        10 F8         BPL CODE_12885D           
CODE_128865:        24 FA         BIT $FA                   
CODE_128867:        50 0B         BVC CODE_128874                   
CODE_128869:        85 00         STA $00                   
CODE_12886B:        C9 4D         CMP #$4D                  
CODE_12886D:        B0 05         BCS CODE_128874                   
CODE_12886F:        38            SEC                       
CODE_128870:        E9 43         SBC #$43                  
CODE_128872:        B0 01         BCS CODE_128875                   
CODE_128874:        60            RTS
                       
CODE_128875:        AE 28 06      LDX $0628                 
CODE_128878:        E0 02         CPX #$02                  
CODE_12887A:        D0 0D         BNE CODE_128889           
CODE_12887C:        AD 21 06      LDA $0621                 
CODE_12887F:        C9 02         CMP #$02                  
CODE_128881:        B0 05         BCS CODE_128888                   
CODE_128883:        EE 22 06      INC $0622                 
CODE_128886:        A2 00         LDX #$00                  
CODE_128888:        8A            TXA                       
CODE_128889:        18            CLC                       
CODE_12888A:        69 04         ADC #$04                  
CODE_12888C:        85 09         STA $09                   
CODE_12888E:        AD AE 04      LDA $04AE                 
CODE_128891:        F0 03         BEQ CODE_128896           
CODE_128893:        4C CF 86      JMP CODE_1286CF           

CODE_128896:        AD 78 07      LDA $0778                 
CODE_128899:        1A            INC A                     
CODE_12889A:        F0 64         BEQ CODE_128900           
CODE_12889C:        A5 FA         LDA $FA                   
CODE_12889E:        29 08         AND #$08                  
CODE_1288A0:        F0 D2         BEQ CODE_128874           
CODE_1288A2:        22 C5 D1 15   JSL CODE_15D1C5           
CODE_1288A6:        B0 46         BCS CODE_1288EE        
CODE_1288A8:        A5 00         LDA $00                   
CODE_1288AA:        CD AF 9B      CMP.w DATA_119BAF         
CODE_1288AD:        D0 0D         BNE CODE_1288BC           
CODE_1288AF:        A6 9C         LDX $9C                   
CODE_1288B1:        F0 C1         BEQ CODE_128874           
CODE_1288B3:        AE 2D 04      LDX $042D                 
CODE_1288B6:        B5 90         LDA $90,x                 
CODE_1288B8:        C9 3D         CMP #$3D                  
CODE_1288BA:        D0 B8         BNE CODE_128874           
CODE_1288BC:        A5 28         LDA $28                   
CODE_1288BE:        18            CLC                       
CODE_1288BF:        69 05         ADC #$05                  
CODE_1288C1:        29 0F         AND #$0F                  
CODE_1288C3:        C9 0A         CMP #$0A                  
CODE_1288C5:        B0 AD         BCS CODE_128874                   
CODE_1288C7:        AD 00 05      LDA $0500                 
CODE_1288CA:        8D 9D 07      STA $079D                 
CODE_1288CD:        A9 80         LDA #$80                  
CODE_1288CF:        8D 00 05      STA $0500                 
CODE_1288D2:        8D 9C 07      STA $079C                 
CODE_1288D5:        A5 28         LDA $28                   
CODE_1288D7:        29 08         AND #$08                  
CODE_1288D9:        F0 0D         BEQ CODE_1288E8           
CODE_1288DB:        A5 28         LDA $28                   
CODE_1288DD:        18            CLC                       
CODE_1288DE:        69 08         ADC #$08                  
CODE_1288E0:        85 28         STA $28                   
CODE_1288E2:        A5 14         LDA $14                   
CODE_1288E4:        69 00         ADC #$00                  
CODE_1288E6:        85 14         STA $14                   
CODE_1288E8:        A5 28         LDA $28                   
CODE_1288EA:        29 F0         AND #$F0                  
CODE_1288EC:        85 28         STA $28                   
CODE_1288EE:        A9 01         LDA #$01                  
CODE_1288F0:        8D B3 04      STA $04B3                 
CODE_1288F3:        85 85         STA $85                   
CODE_1288F5:        64 3C         STZ $3C                   
CODE_1288F7:        8C 78 07      STY $0778                 
CODE_1288FA:        9C 79 07      STZ $0779                 
CODE_1288FD:        9C BE 04      STZ $04BE                 
CODE_128900:        C0 04         CPY #$04                  
CODE_128902:        D0 05         BNE CODE_128909           
CODE_128904:        88            DEY                       
CODE_128905:        8C ED 04      STY $04ED                 
CODE_128908:        60            RTS
                       
CODE_128909:        AD 78 07      LDA $0778                 
CODE_12890C:        30 0A         BMI CODE_128918           
CODE_12890E:        C9 05         CMP #$05                  
CODE_128910:        90 06         BCC CODE_128918           
CODE_128912:        A9 0F         LDA #$0F                  
CODE_128914:        8D E3 1D      STA $1DE3                 
CODE_128917:        60            RTS
                       
CODE_128918:        A9 01         LDA #$01                  
CODE_12891A:        8D 36 05      STA $0536                 
CODE_12891D:        98            TYA                       
CODE_12891E:        22 76 87 11   JSL CODE_118776  

PNTR_128922:        dw CODE_128B1D
                    dw CODE_128B30
                    dw CODE_128B4F
                    dw CODE_128B4F
                    dw CODE_128B4F
                    dw CODE_128B4F
                    dw CODE_128B4F
                    dw CODE_128B4F        
      
CODE_128932:        AD 78 07      LDA $0778                 
CODE_128935:        C9 05         CMP #$05                  
CODE_128937:        F0 05         BEQ CODE_12893E           
CODE_128939:        22 3A D0 15   JSL CODE_15D03A           
CODE_12893D:        6B            RTL
                       
CODE_12893E:        20 42 89      JSR CODE_128942           
CODE_128941:        6B            RTL
                       
CODE_128942:        A9 01         LDA #$01                  
CODE_128944:        85 85         STA $85                   
CODE_128946:        8C 1E 07      STY $071E                 
CODE_128949:        AD 79 07      LDA $0779                 
CODE_12894C:        22 76 87 11   JSL CODE_118776   

PNTR_128950:        dw CODE_128958
                    dw CODE_12896E
                    dw CODE_128AA2
                    dw CODE_128995  
             
CODE_128958:        9C 7A 07      STZ $077A                 
CODE_12895B:        EE 79 07      INC $0779                 
CODE_12895E:        AD E1 04      LDA $04E1                 
CODE_128961:        8D 7B 07      STA $077B                 
CODE_128964:        9C E1 04      STZ $04E1                 
CODE_128967:        9C CB 04      STZ $04CB                 
CODE_12896A:        EE 1B 04      INC $041B                 
CODE_12896D:        60            RTS
                       
CODE_12896E:        A9 C0         LDA #$C0                  
CODE_128970:        8D 1C 07      STA $071C                 
CODE_128973:        A9 01         LDA #$01                  
CODE_128975:        8D 1D 07      STA $071D                 
CODE_128978:        8D 1F 07      STA $071F                 
CODE_12897B:        A9 E0         LDA #$E0                  
CODE_12897D:        8D 1E 07      STA $071E                 
CODE_128980:        20 DD 89      JSR CODE_1289DD           
CODE_128983:        EE 7A 07      INC $077A                 
CODE_128986:        AD 7A 07      LDA $077A                 
CODE_128989:        C9 10         CMP #$10                  
CODE_12898B:        B0 01         BCS CODE_12898E                   
CODE_12898D:        60            RTS
                       
CODE_12898E:        EE 79 07      INC $0779                 
CODE_128991:        9C 7A 07      STZ $077A                 
CODE_128994:        60            RTS
                       
CODE_128995:        A9 20         LDA #$20                  
CODE_128997:        8D 1C 07      STA $071C                 
CODE_12899A:        A9 00         LDA #$00                  
CODE_12899C:        8D 1D 07      STA $071D                 
CODE_12899F:        8D 1F 07      STA $071F                 
CODE_1289A2:        A9 40         LDA #$40                  
CODE_1289A4:        8D 1E 07      STA $071E                 
CODE_1289A7:        20 DD 89      JSR CODE_1289DD           
CODE_1289AA:        CE 7A 07      DEC $077A                 
CODE_1289AD:        AD 7A 07      LDA $077A                 
CODE_1289B0:        30 01         BMI CODE_1289B3           
CODE_1289B2:        60            RTS
                       
CODE_1289B3:        A9 FF         LDA #$FF                  
CODE_1289B5:        8D 78 07      STA $0778                 
CODE_1289B8:        AD 7B 07      LDA $077B                 
CODE_1289BB:        8D E1 04      STA $04E1                 
CODE_1289BE:        9C 1B 04      STZ $041B                 
CODE_1289C1:        A9 10         LDA #$10                  
CODE_1289C3:        8D E3 1D      STA $1DE3                 
CODE_1289C6:        AD CC 04      LDA $04CC                 
CODE_1289C9:        F0 01         BEQ CODE_1289CC           
CODE_1289CB:        EA            NOP                       
CODE_1289CC:        60            RTS
                       
DATA_1289CD:        db $48,$58,$49,$59,$4A,$5A,$4B,$5B
                    db $4C,$5C,$4D,$5D,$4E,$5E,$4F,$5F
          
CODE_1289DD:        5A            PHY
CODE_1289DE:        DA            PHX             
CODE_1289DF:        AD 7A 07      LDA $077A                 
CODE_1289E2:        29 0C         AND #$0C                  
CODE_1289E4:        EB            XBA                       
CODE_1289E5:        A9 00         LDA #$00                  
CODE_1289E7:        EB            XBA                       
CODE_1289E8:        C2 10         REP #$10                  
CODE_1289EA:        AA            TAX                       
CODE_1289EB:        AC 1C 07      LDY $071C                 
CODE_1289EE:        A9 22         LDA #$22                  
CODE_1289F0:        20 45 8A      JSR CODE_128A45           
CODE_1289F3:        BF CD 89 12   LDA.l DATA_1289CD,x             
CODE_1289F7:        99 02 08      STA $0802,y               
CODE_1289FA:        99 12 08      STA $0812,y               
CODE_1289FD:        E8            INX                       
CODE_1289FE:        BF CD 89 12   LDA.l DATA_1289CD,x             
CODE_128A02:        99 06 08      STA $0806,y               
CODE_128A05:        99 16 08      STA $0816,y               
CODE_128A08:        E8            INX                       
CODE_128A09:        BF CD 89 12   LDA.l DATA_1289CD,x             
CODE_128A0D:        99 0A 08      STA $080A,y               
CODE_128A10:        99 1A 08      STA $081A,y               
CODE_128A13:        E8            INX                       
CODE_128A14:        BF CD 89 12   LDA.l DATA_1289CD,x             
CODE_128A18:        99 0E 08      STA $080E,y               
CODE_128A1B:        99 1E 08      STA $081E,y               
CODE_128A1E:        AC 1E 07      LDY $071E                 
CODE_128A21:        A9 20         LDA #$20                  
CODE_128A23:        20 45 8A      JSR CODE_128A45           
CODE_128A26:        A9 E4         LDA #$E4                  
CODE_128A28:        99 02 08      STA $0802,y               
CODE_128A2B:        99 12 08      STA $0812,y               
CODE_128A2E:        99 06 08      STA $0806,y               
CODE_128A31:        99 16 08      STA $0816,y               
CODE_128A34:        99 0A 08      STA $080A,y               
CODE_128A37:        99 1A 08      STA $081A,y               
CODE_128A3A:        99 0E 08      STA $080E,y               
CODE_128A3D:        99 1E 08      STA $081E,y               
CODE_128A40:        E2 10         SEP #$10                  
CODE_128A42:        FA            PLX                       
CODE_128A43:        7A            PLY                       
CODE_128A44:        60            RTS
                       
CODE_128A45:        99 03 08      STA $0803,y               
CODE_128A48:        99 07 08      STA $0807,y               
CODE_128A4B:        99 0B 08      STA $080B,y               
CODE_128A4E:        99 0F 08      STA $080F,y               
CODE_128A51:        09 40         ORA #$40                  
CODE_128A53:        99 13 08      STA $0813,y               
CODE_128A56:        99 17 08      STA $0817,y               
CODE_128A59:        99 1B 08      STA $081B,y               
CODE_128A5C:        99 1F 08      STA $081F,y               
CODE_128A5F:        AD 28 04      LDA $0428                 
CODE_128A62:        99 00 08      STA $0800,y               
CODE_128A65:        99 04 08      STA $0804,y               
CODE_128A68:        99 08 08      STA $0808,y               
CODE_128A6B:        99 0C 08      STA $080C,y               
CODE_128A6E:        18            CLC                       
CODE_128A6F:        69 08         ADC #$08                  
CODE_128A71:        99 10 08      STA $0810,y               
CODE_128A74:        99 14 08      STA $0814,y               
CODE_128A77:        99 18 08      STA $0818,y               
CODE_128A7A:        99 1C 08      STA $081C,y               
CODE_128A7D:        AD 2B 04      LDA $042B                 
CODE_128A80:        99 01 08      STA $0801,y               
CODE_128A83:        99 11 08      STA $0811,y               
CODE_128A86:        18            CLC                       
CODE_128A87:        69 08         ADC #$08                  
CODE_128A89:        99 05 08      STA $0805,y               
CODE_128A8C:        99 15 08      STA $0815,y               
CODE_128A8F:        18            CLC                       
CODE_128A90:        69 08         ADC #$08                  
CODE_128A92:        99 09 08      STA $0809,y               
CODE_128A95:        99 19 08      STA $0819,y               
CODE_128A98:        18            CLC                       
CODE_128A99:        69 08         ADC #$08                  
CODE_128A9B:        99 0D 08      STA $080D,y               
CODE_128A9E:        99 1D 08      STA $081D,y               
CODE_128AA1:        60            RTS
                       
CODE_128AA2:        C2 30         REP #$30                  
CODE_128AA4:        9C 20 07      STZ $0720                 
CODE_128AA7:        A2 00 01      LDX #$0100                
CODE_128AAA:        BD 00 0B      LDA $0B00,x               
CODE_128AAD:        8D 1C 07      STA $071C                 
CODE_128AB0:        29 00 7C      AND #$7C00                
CODE_128AB3:        F0 0A         BEQ CODE_128ABF           
CODE_128AB5:        AD 1C 07      LDA $071C                 
CODE_128AB8:        38            SEC                       
CODE_128AB9:        E9 00 04      SBC #$0400                
CODE_128ABC:        8D 1C 07      STA $071C                 
CODE_128ABF:        AD 1C 07      LDA $071C                 
CODE_128AC2:        29 E0 03      AND #$03E0                
CODE_128AC5:        F0 0A         BEQ CODE_128AD1           
CODE_128AC7:        AD 1C 07      LDA $071C                 
CODE_128ACA:        38            SEC                       
CODE_128ACB:        E9 20 00      SBC #$0020                
CODE_128ACE:        8D 1C 07      STA $071C                 
CODE_128AD1:        AD 1C 07      LDA $071C                 
CODE_128AD4:        29 1F 00      AND #$001F                
CODE_128AD7:        F0 03         BEQ CODE_128ADC           
CODE_128AD9:        CE 1C 07      DEC $071C                 
CODE_128ADC:        AD 1C 07      LDA $071C                 
CODE_128ADF:        9D 00 0B      STA $0B00,x               
CODE_128AE2:        0C 20 07      TSB $0720                 
CODE_128AE5:        E8            INX                       
CODE_128AE6:        E8            INX                       
CODE_128AE7:        E0 20 01      CPX #$0120                
CODE_128AEA:        D0 BE         BNE CODE_128AAA           
CODE_128AEC:        E2 30         SEP #$30                  
CODE_128AEE:        EE A9 02      INC $02A9                 
CODE_128AF1:        A9 0F         LDA #$0F                  
CODE_128AF3:        8D 7A 07      STA $077A                 
CODE_128AF6:        A9 20         LDA #$20                  
CODE_128AF8:        8D 1C 07      STA $071C                 
CODE_128AFB:        A9 01         LDA #$01                  
CODE_128AFD:        9C 1D 07      STZ $071D                 
CODE_128B00:        8D 1F 07      STA $071F                 
CODE_128B03:        A9 E0         LDA #$E0                  
CODE_128B05:        8D 1E 07      STA $071E                 
CODE_128B08:        20 DD 89      JSR CODE_1289DD           
CODE_128B0B:        AD 20 07      LDA $0720                 
CODE_128B0E:        0D 21 07      ORA $0721                 
CODE_128B11:        F0 01         BEQ CODE_128B14           
CODE_128B13:        60            RTS
                       
CODE_128B14:        EE 79 07      INC $0779                 
CODE_128B17:        A9 0F         LDA #$0F                  
CODE_128B19:        8D 7A 07      STA $077A                 
CODE_128B1C:        60            RTS
                       
CODE_128B1D:        20 DD 98      JSR CODE_1298DD           
CODE_128B20:        EE BE 04      INC $04BE                 
CODE_128B23:        EE 1B 04      INC $041B                 
CODE_128B26:        22 BC 87 12   JSL CODE_1287BC           
CODE_128B2A:        A9 0F         LDA #$0F                  
CODE_128B2C:        8D E3 1D      STA $1DE3                 
CODE_128B2F:        60            RTS
                       
CODE_128B30:        9C 78 07      STZ $0778                 
CODE_128B33:        A5 9C         LDA $9C                   
CODE_128B35:        F0 F8         BEQ CODE_128B2F           
CODE_128B37:        AC 2D 04      LDY $042D                 
CODE_128B3A:        B9 90 00      LDA $0090,y               
CODE_128B3D:        C9 3D         CMP #$3D                  
CODE_128B3F:        D0 EE         BNE CODE_128B2F           
CODE_128B41:        EE B0 04      INC $04B0                 
CODE_128B44:        98            TYA                       
CODE_128B45:        AA            TAX                       
CODE_128B46:        20 C0 99      JSR CODE_1299C0           
CODE_128B49:        20 D9 98      JSR CODE_1298D9           
CODE_128B4C:        4C 20 8B      JMP CODE_128B20           

CODE_128B4F:        9C 78 07      STZ $0778                 
CODE_128B52:        EE 27 06      INC $0627                 
CODE_128B55:        60            RTS
                       
CODE_128B56:        85 0F         STA $0F                   
CODE_128B58:        98            TYA                       
CODE_128B59:        30 11         BMI CODE_128B6C           
CODE_128B5B:        0A            ASL A                     
CODE_128B5C:        0A            ASL A                     
CODE_128B5D:        0A            ASL A                     
CODE_128B5E:        0A            ASL A                     
CODE_128B5F:        18            CLC                       
CODE_128B60:        65 0F         ADC $0F                   
CODE_128B62:        B0 04         BCS CODE_128B68                   
CODE_128B64:        C9 F0         CMP #$F0                  
CODE_128B66:        90 04         BCC CODE_128B6C           
CODE_128B68:        18            CLC                       
CODE_128B69:        69 10         ADC #$10                  
CODE_128B6B:        C8            INY                       
CODE_128B6C:        60            RTS
                       
CODE_128B6D:        A4 01         LDY $01                   
CODE_128B6F:        A5 E6         LDA $E6                   
CODE_128B71:        20 56 8B      JSR CODE_128B56           
CODE_128B74:        84 01         STY $01                   
CODE_128B76:        85 E6         STA $E6                   
CODE_128B78:        A4 EB         LDY $EB                   
CODE_128B7A:        B9 01 00      LDA $0001,y               
CODE_128B7D:        85 E9         STA $E9                   
CODE_128B7F:        A5 02         LDA $02                   
CODE_128B81:        D9 B7 9B      CMP.w DATA_119BB7,y               
CODE_128B84:        B0 05         BCS CODE_128B8B                   
CODE_128B86:        A5 01         LDA $01                   
CODE_128B88:        D9 B6 9B      CMP.w DATA_119BB6,y               
CODE_128B8B:        60            RTS
                       
CODE_128B8C:        A6 D8         LDX $D8                   
CODE_128B8E:        D0 2A         BNE CODE_128BBA           
CODE_128B90:        A5 50         LDA $50                   
CODE_128B92:        C9 02         CMP #$02                  
CODE_128B94:        B0 24         BCS CODE_128BBA                   
CODE_128B96:        AD 2B 04      LDA $042B                 
CODE_128B99:        AC 2A 04      LDY $042A                 
CODE_128B9C:        30 0A         BMI CODE_128BA8           
CODE_128B9E:        D0 0E         BNE CODE_128BAE           
CODE_128BA0:        C9 B4         CMP #$B4                  
CODE_128BA2:        B0 0A         BCS CODE_128BAE                   
CODE_128BA4:        C9 21         CMP #$21                  
CODE_128BA6:        B0 08         BCS CODE_128BB0                   
CODE_128BA8:        A4 99         LDY $99                   
CODE_128BAA:        D0 04         BNE CODE_128BB0           
CODE_128BAC:        F0 01         BEQ CODE_128BAF           
CODE_128BAE:        E8            INX                       
CODE_128BAF:        E8            INX                       
CODE_128BB0:        AD 25 04      LDA $0425                 
CODE_128BB3:        8E 25 04      STX $0425                 
CODE_128BB6:        D0 02         BNE CODE_128BBA           
CODE_128BB8:        86 D8         STX $D8                   
CODE_128BBA:        60            RTS
                       
CODE_128BBB:        A5 EB         LDA $EB                   
CODE_128BBD:        F0 0D         BEQ CODE_128BCC           
CODE_128BBF:        AD 28 04      LDA $0428                 
CODE_128BC2:        A4 6E         LDY $6E                   
CODE_128BC4:        C0 01         CPY #$01                  
CODE_128BC6:        F0 05         BEQ CODE_128BCD           
CODE_128BC8:        C9 08         CMP #$08                  
CODE_128BCA:        90 05         BCC CODE_128BD1           
CODE_128BCC:        60            RTS
                       
CODE_128BCD:        C9 E8         CMP #$E8                  
CODE_128BCF:        90 FB         BCC CODE_128BCC           
CODE_128BD1:        A5 5A         LDA $5A                   
CODE_128BD3:        19 B8 9B      ORA.w DATA_119BB8,y               
CODE_128BD6:        85 5A         STA $5A                   
CODE_128BD8:        A2 00         LDX #$00                  
CODE_128BDA:        A4 6E         LDY $6E                   
CODE_128BDC:        A5 3C         LDA $3C                   
CODE_128BDE:        59 BA 9B      EOR.w DATA_119BBA,y               
CODE_128BE1:        10 02         BPL CODE_128BE5           
CODE_128BE3:        86 3C         STX $3C                   
CODE_128BE5:        AD CC 04      LDA $04CC                 
CODE_128BE8:        59 BA 9B      EOR.w DATA_119BBA,y               
CODE_128BEB:        10 03         BPL CODE_128BF0           
CODE_128BED:        8E CC 04      STX $04CC                 
CODE_128BF0:        8E 07 04      STX $0407                 
CODE_128BF3:        60            RTS
                       
CODE_128BF4:        8E 10 02      STX $0210                 
CODE_128BF7:        48            PHA                       
CODE_128BF8:        20 DB 99      JSR CODE_1299DB           
CODE_128BFB:        68            PLA                       
CODE_128BFC:        A4 E7         LDY $E7                   
CODE_128BFE:        97 01         STA [$01],y               
CODE_128C00:        48            PHA                       
CODE_128C01:        AE 00 03      LDX $0300                 
CODE_128C04:        A9 00         LDA #$00                  
CODE_128C06:        9D 02 03      STA $0302,x               
CODE_128C09:        A5 EB         LDA $EB                   
CODE_128C0B:        D0 07         BNE CODE_128C14           
CODE_128C0D:        AD 12 02      LDA $0212                 
CODE_128C10:        18            CLC                       
CODE_128C11:        65 E5         ADC $E5                   
CODE_128C13:        A8            TAY                       
CODE_128C14:        98            TYA                       
CODE_128C15:        29 F0         AND #$F0                  
CODE_128C17:        0A            ASL A                     
CODE_128C18:        3E 02 03      ROL $0302,x               
CODE_128C1B:        0A            ASL A                     
CODE_128C1C:        3E 02 03      ROL $0302,x               
CODE_128C1F:        9D 03 03      STA $0303,x               
CODE_128C22:        98            TYA                       
CODE_128C23:        29 0F         AND #$0F                  
CODE_128C25:        0A            ASL A                     
CODE_128C26:        7D 03 03      ADC $0303,x               
CODE_128C29:        9D 03 03      STA $0303,x               
CODE_128C2C:        18            CLC                       
CODE_128C2D:        69 20         ADC #$20                  
CODE_128C2F:        9D 0B 03      STA $030B,x               
CODE_128C32:        DA            PHX                       
CODE_128C33:        20 AE 8C      JSR CODE_128CAE           
CODE_128C36:        20 FE 8C      JSR CODE_128CFE           
CODE_128C39:        FA            PLX                       
CODE_128C3A:        AD 28 02      LDA $0228                 
CODE_128C3D:        F0 0B         BEQ CODE_128C4A           
CODE_128C3F:        C0 00         CPY #$00                  
CODE_128C41:        F0 05         BEQ CODE_128C48           
CODE_128C43:        BD 02 03      LDA $0302,x               
CODE_128C46:        80 0E         BRA CODE_128C56           

CODE_128C48:        A0 01         LDY #$01                  
CODE_128C4A:        B9 BD 9B      LDA.w DATA_119BBD,y               
CODE_128C4D:        18            CLC                       
CODE_128C4E:        7D 02 03      ADC $0302,x               
CODE_128C51:        29 0F         AND #$0F                  
CODE_128C53:        9D 02 03      STA $0302,x               
CODE_128C56:        9D 0A 03      STA $030A,x               
CODE_128C59:        C2 20         REP #$20                  
CODE_128C5B:        A9 00 03      LDA #$0300                
CODE_128C5E:        9D 04 03      STA $0304,x               
CODE_128C61:        9D 0C 03      STA $030C,x               
CODE_128C64:        E2 20         SEP #$20                  
CODE_128C66:        68            PLA                       
CODE_128C67:        48            PHA                       
CODE_128C68:        29 C0         AND #$C0                  
CODE_128C6A:        0A            ASL A                     
CODE_128C6B:        2A            ROL A                     
CODE_128C6C:        2A            ROL A                     
CODE_128C6D:        A8            TAY                       
CODE_128C6E:        B9 64 AD      LDA.w DATA_11AD64,y         ; \ Prepare pointer for the Layer 1 tilemap, page 0.
CODE_128C71:        85 00         STA $00                   ;  |
CODE_128C73:        B9 68 AD      LDA.w DATA_11AD68,y         ;  |
CODE_128C76:        85 01         STA $01                   ; /
CODE_128C78:        68            PLA                       
CODE_128C79:        C2 30         REP #$30                  
CODE_128C7B:        29 3F 00      AND #$003F                
CODE_128C7E:        0A            ASL A                     
CODE_128C7F:        0A            ASL A                     
CODE_128C80:        0A            ASL A                     
CODE_128C81:        A8            TAY                       
CODE_128C82:        B1 00         LDA ($00),y               
CODE_128C84:        9D 06 03      STA $0306,x               
CODE_128C87:        C8            INY                       
CODE_128C88:        C8            INY                       
CODE_128C89:        B1 00         LDA ($00),y               
CODE_128C8B:        9D 08 03      STA $0308,x               
CODE_128C8E:        C8            INY                       
CODE_128C8F:        C8            INY                       
CODE_128C90:        B1 00         LDA ($00),y               
CODE_128C92:        9D 0E 03      STA $030E,x               
CODE_128C95:        C8            INY                       
CODE_128C96:        C8            INY                       
CODE_128C97:        B1 00         LDA ($00),y               
CODE_128C99:        9D 10 03      STA $0310,x               
CODE_128C9C:        E2 30         SEP #$30                  
CODE_128C9E:        A9 FF         LDA #$FF                  
CODE_128CA0:        9D 12 03      STA $0312,x               
CODE_128CA3:        8A            TXA                       
CODE_128CA4:        18            CLC                       
CODE_128CA5:        69 10         ADC #$10                  
CODE_128CA7:        8D 00 03      STA $0300                 
CODE_128CAA:        AE 10 02      LDX $0210                 
CODE_128CAD:        6B            RTL
                       
CODE_128CAE:        9C 28 02      STZ $0228                 
CODE_128CB1:        A5 EB         LDA $EB                   
CODE_128CB3:        D0 48         BNE CODE_128CFD           
CODE_128CB5:        AD 35 05      LDA $0535                 
CODE_128CB8:        F0 43         BEQ CODE_128CFD           
CODE_128CBA:        4A            LSR A                     
CODE_128CBB:        4A            LSR A                     
CODE_128CBC:        A8            TAY                       
CODE_128CBD:        BD 03 03      LDA $0303,x               
CODE_128CC0:        18            CLC                       
CODE_128CC1:        79 14 9C      ADC.w DATA_119C14,y               
CODE_128CC4:        9D 03 03      STA $0303,x               
CODE_128CC7:        90 03         BCC CODE_128CCC           
CODE_128CC9:        FE 02 03      INC $0302,x               
CODE_128CCC:        18            CLC                       
CODE_128CCD:        69 20         ADC #$20                  
CODE_128CCF:        9D 0B 03      STA $030B,x               
CODE_128CD2:        BD 02 03      LDA $0302,x               
CODE_128CD5:        18            CLC                       
CODE_128CD6:        79 11 9C      ADC.w DATA_119C11,y               
CODE_128CD9:        C9 04         CMP #$04                  
CODE_128CDB:        30 1D         BMI CODE_128CFA           
CODE_128CDD:        C9 08         CMP #$08                  
CODE_128CDF:        30 06         BMI CODE_128CE7           
CODE_128CE1:        C9 0C         CMP #$0C                  
CODE_128CE3:        10 12         BPL CODE_128CF7           
CODE_128CE5:        80 13         BRA CODE_128CFA           

CODE_128CE7:        18            CLC                       
CODE_128CE8:        69 04         ADC #$04                  
CODE_128CEA:        C9 0C         CMP #$0C                  
CODE_128CEC:        10 0C         BPL CODE_128CFA           
CODE_128CEE:        DA            PHX                       
CODE_128CEF:        A2 01         LDX #$01                  
CODE_128CF1:        8E 28 02      STX $0228                 
CODE_128CF4:        FA            PLX                       
CODE_128CF5:        80 03         BRA CODE_128CFA           

CODE_128CF7:        38            SEC                       
CODE_128CF8:        E9 0C         SBC #$0C                  
CODE_128CFA:        9D 02 03      STA $0302,x               
CODE_128CFD:        60            RTS
                       
CODE_128CFE:        A5 EB         LDA $EB                   
CODE_128D00:        0A            ASL A                     
CODE_128D01:        A8            TAY                       
CODE_128D02:        F0 09         BEQ CODE_128D0D           
CODE_128D04:        A5 01         LDA $01                   
CODE_128D06:        29 10         AND #$10                  
CODE_128D08:        D0 66         BNE CODE_128D70           
CODE_128D0A:        C8            INY                       
CODE_128D0B:        80 63         BRA CODE_128D70           

CODE_128D0D:        20 33 8F      JSR CODE_128F33           
CODE_128D10:        A0 00         LDY #$00                  
CODE_128D12:        C2 20         REP #$20                  
CODE_128D14:        AD E7 00      LDA $00E7                 
CODE_128D17:        29 FF 00      AND #$00FF                
CODE_128D1A:        18            CLC                       
CODE_128D1B:        65 01         ADC $01                   
CODE_128D1D:        29 F0 0F      AND #$0FF0                
CODE_128D20:        8D 26 02      STA $0226                 
CODE_128D23:        AD 35 05      LDA $0535                 
CODE_128D26:        29 FF 00      AND #$00FF                
CODE_128D29:        F0 04         BEQ CODE_128D2F           
CODE_128D2B:        4A            LSR A                     
CODE_128D2C:        4A            LSR A                     
CODE_128D2D:        1A            INC A                     
CODE_128D2E:        0A            ASL A                     
CODE_128D2F:        AA            TAX                       
CODE_128D30:        AD 26 02      LDA $0226                 
CODE_128D33:        DD 09 9C      CMP.w DATA_119C09,x               
CODE_128D36:        B0 09         BCS CODE_128D41                   
CODE_128D38:        18            CLC                       
CODE_128D39:        69 00 02      ADC #$0200                
CODE_128D3C:        8D 26 02      STA $0226                 
CODE_128D3F:        80 0E         BRA CODE_128D4F
           
CODE_128D41:        DD 01 9C      CMP.w DATA_119C01,x               
CODE_128D44:        30 09         BMI CODE_128D4F           
CODE_128D46:        38            SEC                       
CODE_128D47:        E9 00 02      SBC #$0200                
CODE_128D4A:        8D 26 02      STA $0226                 
CODE_128D4D:        80 F2         BRA CODE_128D41           

CODE_128D4F:        8A            TXA                       
CODE_128D50:        29 FF 00      AND #$00FF                
CODE_128D53:        0A            ASL A                     
CODE_128D54:        0A            ASL A                     
CODE_128D55:        0A            ASL A                     
CODE_128D56:        AA            TAX                       
CODE_128D57:        AD 26 02      LDA $0226                 
CODE_128D5A:        DD C1 9B      CMP.w DATA_119BC1,x               
CODE_128D5D:        30 05         BMI CODE_128D64           
CODE_128D5F:        E8            INX                       
CODE_128D60:        E8            INX                       
CODE_128D61:        C8            INY                       
CODE_128D62:        80 F6         BRA CODE_128D5A           

CODE_128D64:        98            TYA                       
CODE_128D65:        29 FF 00      AND #$00FF                
CODE_128D68:        4A            LSR A                     
CODE_128D69:        4A            LSR A                     
CODE_128D6A:        49 01 00      EOR #$0001                
CODE_128D6D:        A8            TAY                       
CODE_128D6E:        E2 20         SEP #$20                  
CODE_128D70:        60            RTS
                       
CODE_128D71:        AD 11 05      LDA $0511                 
CODE_128D74:        85 14         STA $14                   
CODE_128D76:        AD 13 05      LDA $0513                 
CODE_128D79:        85 28         STA $28                   
CODE_128D7B:        AD 12 05      LDA $0512                 
CODE_128D7E:        85 1E         STA $1E                   
CODE_128D80:        AD 14 05      LDA $0514                 
CODE_128D83:        85 32         STA $32                   
CODE_128D85:        A5 28         LDA $28                   
CODE_128D87:        38            SEC                       
CODE_128D88:        ED C1 04      SBC $04C1                 
CODE_128D8B:        8D 28 04      STA $0428                 
CODE_128D8E:        A5 32         LDA $32                   
CODE_128D90:        38            SEC                       
CODE_128D91:        E5 CB         SBC $CB                   
CODE_128D93:        8D 2B 04      STA $042B                 
CODE_128D96:        A5 1E         LDA $1E                   
CODE_128D98:        E5 CA         SBC $CA                   
CODE_128D9A:        8D 2A 04      STA $042A                 
CODE_128D9D:        AD 36 05      LDA $0536                 
CODE_128DA0:        38            SEC                       
CODE_128DA1:        E9 04         SBC #$04                  
CODE_128DA3:        D0 10         BNE CODE_128DB5           
CODE_128DA5:        85 50         STA $50                   
CODE_128DA7:        8D 1B 04      STA $041B                 
CODE_128DAA:        8D B7 04      STA $04B7                 
CODE_128DAD:        20 DD 98      JSR CODE_1298DD           
CODE_128DB0:        A9 0A         LDA #$0A                  
CODE_128DB2:        8D B3 04      STA $04B3                 
CODE_128DB5:        6B            RTL
                       
CODE_128DB6:        AD 36 05      LDA $0536                 
CODE_128DB9:        C9 02         CMP #$02                  
CODE_128DBB:        D0 0C         BNE CODE_128DC9           
CODE_128DBD:        AD EF 04      LDA $04EF                 
CODE_128DC0:        D0 07         BNE CODE_128DC9           
CODE_128DC2:        22 71 8D 12   JSL CODE_128D71           
CODE_128DC6:        4C 0D 8E      JMP CODE_128E0D           

CODE_128DC9:        AD 35 05      LDA $0535                 
CODE_128DCC:        A0 00         LDY #$00                  
CODE_128DCE:        A6 EB         LDX $EB                   
CODE_128DD0:        D0 06         BNE CODE_128DD8           
CODE_128DD2:        84 14         STY $14                   
CODE_128DD4:        85 1E         STA $1E                   
CODE_128DD6:        F0 04         BEQ CODE_128DDC           
CODE_128DD8:        85 14         STA $14                   
CODE_128DDA:        84 1E         STY $1E                   
CODE_128DDC:        20 15 8E      JSR CODE_128E15           
CODE_128DDF:        A4 1E         LDY $1E                   
CODE_128DE1:        A5 32         LDA $32                   
CODE_128DE3:        22 1F 8F 12   JSL CODE_128F1F           
CODE_128DE7:        84 1E         STY $1E                   
CODE_128DE9:        85 32         STA $32                   
CODE_128DEB:        A5 28         LDA $28                   
CODE_128DED:        38            SEC                       
CODE_128DEE:        ED C1 04      SBC $04C1                 
CODE_128DF1:        8D 28 04      STA $0428                 
CODE_128DF4:        A5 32         LDA $32                   
CODE_128DF6:        38            SEC                       
CODE_128DF7:        E5 CB         SBC $CB                   
CODE_128DF9:        8D 2B 04      STA $042B                 
CODE_128DFC:        A5 1E         LDA $1E                   
CODE_128DFE:        E5 CA         SBC $CA                   
CODE_128E00:        8D 2A 04      STA $042A                 
CODE_128E03:        AD 36 05      LDA $0536                 
CODE_128E06:        C9 04         CMP #$04                  
CODE_128E08:        D0 03         BNE CODE_128E0D           
CODE_128E0A:        20 DD 98      JSR CODE_1298DD           
CODE_128E0D:        A5 28         LDA $28                   
CODE_128E0F:        38            SEC                       
CODE_128E10:        E9 78         SBC #$78                  
CODE_128E12:        85 BA         STA $BA                   
CODE_128E14:        6B            RTL
                       
CODE_128E15:        AD 36 05      LDA $0536                 
CODE_128E18:        22 76 87 11   JSL CODE_118776   

PNTR_128E1C:        dw CODE_128E28
                    dw CODE_128E60
                    dw CODE_128ECD
                    dw CODE_128EDA
                    dw CODE_128EFC
                    dw CODE_128F17
             
CODE_128E28:        A9 01         LDA #$01                  
CODE_128E2A:        85 9D         STA $9D                   
CODE_128E2C:        20 D1 8E      JSR CODE_128ED1           
CODE_128E2F:        4A            LSR A                     
CODE_128E30:        4A            LSR A                     
CODE_128E31:        4A            LSR A                     
CODE_128E32:        4A            LSR A                     
CODE_128E33:        85 E5         STA $E5                   
CODE_128E35:        A9 D0         LDA #$D0                  ; \ Player Y position = #$D0.
CODE_128E37:        85 32         STA $32                   ; /
CODE_128E39:        85 E6         STA $E6                   
CODE_128E3B:        AD 35 05      LDA $0535                 
CODE_128E3E:        85 E9         STA $E9                   
CODE_128E40:        A9 0C         LDA #$0C                  
CODE_128E42:        85 04         STA $04                   
CODE_128E44:        20 DB 99      JSR CODE_1299DB           
CODE_128E47:        A4 E7         LDY $E7                   
CODE_128E49:        B7 01         LDA [$01],y               ; \ If tile is...
CODE_128E4B:        C9 40         CMP #$40                  ;  | a blank tile...
CODE_128E4D:        F0 09         BEQ CODE_128E58           ; / Skip, don't JSR.
CODE_128E4F:        20 58 8E      JSR CODE_128E58           
CODE_128E52:        85 E6         STA $E6                   
CODE_128E54:        C6 04         DEC $04                   
CODE_128E56:        D0 EC         BNE CODE_128E44           
CODE_128E58:        A5 32         LDA $32                   
CODE_128E5A:        38            SEC                       
CODE_128E5B:        E9 10         SBC #$10                  
CODE_128E5D:        85 32         STA $32                   
CODE_128E5F:        60            RTS
                       
CODE_128E60:        A5 28         LDA $28                   
CODE_128E62:        18            CLC                       
CODE_128E63:        69 08         ADC #$08                  
CODE_128E65:        29 F0         AND #$F0                  
CODE_128E67:        49 F0         EOR #$F0                  
CODE_128E69:        85 28         STA $28                   
CODE_128E6B:        4A            LSR A                     
CODE_128E6C:        4A            LSR A                     
CODE_128E6D:        4A            LSR A                     
CODE_128E6E:        4A            LSR A                     
CODE_128E6F:        85 E5         STA $E5                   
CODE_128E71:        A9 E0         LDA #$E0                  
CODE_128E73:        85 32         STA $32                   
CODE_128E75:        85 E6         STA $E6                   
CODE_128E77:        AD 35 05      LDA $0535                 
CODE_128E7A:        85 E9         STA $E9                   
CODE_128E7C:        A9 0D         LDA #$0D                  
CODE_128E7E:        8D 15 07      STA $0715                 
CODE_128E81:        20 DB 99      JSR CODE_1299DB           
CODE_128E84:        C2 20         REP #$20                  
CODE_128E86:        A5 01         LDA $01                   
CODE_128E88:        18            CLC                       
CODE_128E89:        69 00 70      ADC #$7000                
CODE_128E8C:        85 C4         STA $C4                   
CODE_128E8E:        E2 20         SEP #$20                  
CODE_128E90:        A5 03         LDA $03                   
CODE_128E92:        85 C6         STA $C6                   
CODE_128E94:        A4 E7         LDY $E7                   
CODE_128E96:        B7 C4         LDA [$C4],y               
CODE_128E98:        8D 12 07      STA $0712                 
CODE_128E9B:        B7 01         LDA [$01],y               
CODE_128E9D:        A0 08         LDY #$08                  
CODE_128E9F:        D9 AD 9B      CMP.w DATA_119BAD,y               
CODE_128EA2:        D0 0D         BNE CODE_128EB1           
CODE_128EA4:        C9 2A         CMP #$2A                  
CODE_128EA6:        F0 04         BEQ CODE_128EAC           
CODE_128EA8:        C9 2B         CMP #$2B                  
CODE_128EAA:        D0 18         BNE CODE_128EC4           
CODE_128EAC:        AD 12 07      LDA $0712                 
CODE_128EAF:        D0 13         BNE CODE_128EC4           
CODE_128EB1:        88            DEY                       
CODE_128EB2:        D0 EB         BNE CODE_128E9F           
CODE_128EB4:        CE 15 07      DEC $0715                 
CODE_128EB7:        F0 08         BEQ CODE_128EC1           
CODE_128EB9:        20 58 8E      JSR CODE_128E58           
CODE_128EBC:        85 E6         STA $E6                   
CODE_128EBE:        4C 81 8E      JMP CODE_128E81           

CODE_128EC1:        20 D1 8E      JSR CODE_128ED1           
CODE_128EC4:        20 58 8E      JSR CODE_128E58           
CODE_128EC7:        A9 00         LDA #$00                  
CODE_128EC9:        8D 1B 04      STA $041B                 
CODE_128ECC:        60            RTS
                       
CODE_128ECD:        A9 00         LDA #$00                  
CODE_128ECF:        85 32         STA $32                   
CODE_128ED1:        A9 01         LDA #$01                  
CODE_128ED3:        85 99         STA $99                   
CODE_128ED5:        A9 78         LDA #$78                  
CODE_128ED7:        85 28         STA $28                   
CODE_128ED9:        60            RTS
                       
CODE_128EDA:        A5 28         LDA $28                   
CODE_128EDC:        18            CLC                       
CODE_128EDD:        69 08         ADC #$08                  
CODE_128EDF:        29 F0         AND #$F0                  
CODE_128EE1:        49 F0         EOR #$F0                  
CODE_128EE3:        85 28         STA $28                   
CODE_128EE5:        AD 2B 04      LDA $042B                 
CODE_128EE8:        18            CLC                       
CODE_128EE9:        69 08         ADC #$08                  
CODE_128EEB:        29 F0         AND #$F0                  
CODE_128EED:        49 10         EOR #$10                  
CODE_128EEF:        85 32         STA $32                   
CODE_128EF1:        C9 F0         CMP #$F0                  
CODE_128EF3:        F0 02         BEQ CODE_128EF7           
CODE_128EF5:        C6 1E         DEC $1E                   
CODE_128EF7:        A9 0A         LDA #$0A                  
CODE_128EF9:        85 C7         STA $C7                   
CODE_128EFB:        60            RTS
                       
CODE_128EFC:        AD 28 04      LDA $0428                 
CODE_128EFF:        38            SEC                       
CODE_128F00:        E5 BA         SBC $BA                   
CODE_128F02:        49 FF         EOR #$FF                  
CODE_128F04:        18            CLC                       
CODE_128F05:        69 F1         ADC #$F1                  
CODE_128F07:        85 28         STA $28                   
CODE_128F09:        AD 2B 04      LDA $042B                 
CODE_128F0C:        85 32         STA $32                   
CODE_128F0E:        CE 1B 04      DEC $041B                 
CODE_128F11:        A9 60         LDA #$60                  ; \ How long the potion room lasts.
CODE_128F13:        8D B7 04      STA $04B7                 ; /
CODE_128F16:        60            RTS
                       
CODE_128F17:        20 D1 8E      JSR CODE_128ED1           
CODE_128F1A:        A9 60         LDA #$60                  
CODE_128F1C:        85 32         STA $32                   
CODE_128F1E:        60            RTS
                       
CODE_128F1F:        C0 00         CPY #$00                  
CODE_128F21:        30 0F         BMI CODE_128F32           
CODE_128F23:        48            PHA                       
CODE_128F24:        98            TYA                       
CODE_128F25:        0A            ASL A                     
CODE_128F26:        0A            ASL A                     
CODE_128F27:        0A            ASL A                     
CODE_128F28:        0A            ASL A                     
CODE_128F29:        85 0F         STA $0F                   
CODE_128F2B:        68            PLA                       
CODE_128F2C:        38            SEC                       
CODE_128F2D:        E5 0F         SBC $0F                   
CODE_128F2F:        B0 01         BCS CODE_128F32                   
CODE_128F31:        88            DEY                       
CODE_128F32:        6B            RTL
                       
CODE_128F33:        A6 E9         LDX $E9                   
CODE_128F35:        AD 34 05      LDA $0534                 
CODE_128F38:        0A            ASL A                     
CODE_128F39:        0A            ASL A                     
CODE_128F3A:        0A            ASL A                     
CODE_128F3B:        0A            ASL A                     
CODE_128F3C:        18            CLC                       
CODE_128F3D:        7D FB AA      ADC.w DATA_11AAFB,x               
CODE_128F40:        85 02         STA $02                   
CODE_128F42:        BD F0 AA      LDA.w DATA_11AAF0,x               
CODE_128F45:        85 01         STA $01                   
CODE_128F47:        60            RTS
                       
CODE_128F48:        22 D8 87 13   JSL CODE_1387D8           
CODE_128F4C:        22 46 88 13   JSL CODE_138846           
CODE_128F50:        A9 FF         LDA #$FF                  
CODE_128F52:        8D 02 03      STA $0302                 
CODE_128F55:        8F 02 00 7F   STA $7F0002               
CODE_128F59:        A9 13         LDA #$13                  
CODE_128F5B:        8D 43 02      STA $0243                 
CODE_128F5E:        A9 03         LDA #$03                  
CODE_128F60:        8D 4C 02      STA $024C                 
CODE_128F63:        A9 02         LDA #$02                  
CODE_128F65:        8D 75 07      STA $0775                 
CODE_128F68:        22 53 F9 14   JSL CODE_14F953           
CODE_128F6C:        22 5E DC 13   JSL CODE_13DC5E           
CODE_128F70:        A9 40         LDA #$40                  
CODE_128F72:        8D 00 01      STA $0100                 
CODE_128F75:        A9 80         LDA #$80                  
CODE_128F77:        85 FF         STA $FF                   
CODE_128F79:        85 FE         STA $FE                   
CODE_128F7B:        A9 81         LDA #$81                  
CODE_128F7D:        8D 00 42      STA $4200                 
CODE_128F80:        22 08 F9 14   JSL CODE_14F908           
CODE_128F84:        A9 01         LDA #$01                  ; \ Load border of the 'Super Mario Bros 2.' intro screen.
CODE_128F86:        85 11         STA $11                   ;  |
CODE_128F88:        22 08 F9 14   JSL CODE_14F908           ; /
CODE_128F8C:        A9 02         LDA #$02                  ; \ Load 'Super Mario Bros. 2' and '�1988-1992 Nintendo.'
CODE_128F8E:        85 11         STA $11                   ;  |
CODE_128F90:        22 08 F9 14   JSL CODE_14F908           ; /
CODE_128F94:        22 4E D8 14   JSL CODE_14D84E           
CODE_128F98:        A9 11         LDA #$11                  ; \ Story music.
CODE_128F9A:        8D E2 1D      STA $1DE2                 ; /
CODE_128F9D:        22 D1 95 11   JSL CODE_1195D1           
CODE_128FA1:        A9 03         LDA #$03                  
CODE_128FA3:        85 10         STA $10                   
CODE_128FA5:        A9 25         LDA #$25                  
CODE_128FA7:        8D 10 02      STA $0210                 
CODE_128FAA:        A9 0C         LDA #$0C                  
CODE_128FAC:        85 14         STA $14                   
CODE_128FAE:        A9 A7         LDA #$A7                  
CODE_128FB0:        85 15         STA $15                   
CODE_128FB2:        A9 62         LDA #$62                  
CODE_128FB4:        85 16         STA $16                   
CODE_128FB6:        64 19         STZ $19                   
CODE_128FB8:        64 17         STZ $17                   
CODE_128FBA:        64 18         STZ $18                   
CODE_128FBC:        64 1A         STZ $1A                   
CODE_128FBE:        22 08 F9 14   JSL CODE_14F908           
CODE_128FC2:        A5 17         LDA $17                   
CODE_128FC4:        D0 48         BNE CODE_12900E           
CODE_128FC6:        E6 10         INC $10                   
CODE_128FC8:        A5 10         LDA $10                   
CODE_128FCA:        29 0F         AND #$0F                  
CODE_128FCC:        F0 03         BEQ CODE_128FD1           
CODE_128FCE:        82 98 00      BRL CODE_129069
           
CODE_128FD1:        CE 10 02      DEC $0210                 
CODE_128FD4:        AD 10 02      LDA $0210                 
CODE_128FD7:        C9 06         CMP #$06                  
CODE_128FD9:        D0 F3         BNE CODE_128FCE           
CODE_128FDB:        E6 17         INC $17                   
CODE_128FDD:        A5 14         LDA $14                   
CODE_128FDF:        8D 02 03      STA $0302                 
CODE_128FE2:        A5 15         LDA $15                   
CODE_128FE4:        8D 03 03      STA $0303                 
CODE_128FE7:        A5 16         LDA $16                   
CODE_128FE9:        29 C0         AND #$C0                  
CODE_128FEB:        8D 04 03      STA $0304                 
CODE_128FEE:        A5 16         LDA $16                   
CODE_128FF0:        29 3F         AND #$3F                  
CODE_128FF2:        8D 05 03      STA $0305                 
CODE_128FF5:        A9 C6         LDA #$C6                  
CODE_128FF7:        85 15         STA $15                   
CODE_128FF9:        A9 66         LDA #$66                  
CODE_128FFB:        85 16         STA $16                   
CODE_128FFD:        A9 BD         LDA #$BD                  
CODE_128FFF:        8D 06 03      STA $0306                 
CODE_129002:        A9 09         LDA #$09                  
CODE_129004:        8D 07 03      STA $0307                 
CODE_129007:        A9 FF         LDA #$FF                  
CODE_129009:        8D 08 03      STA $0308                 
CODE_12900C:        80 5B         BRA CODE_129069           

CODE_12900E:        A5 14         LDA $14                   
CODE_129010:        8D 02 03      STA $0302                 
CODE_129013:        A5 15         LDA $15                   
CODE_129015:        8D 03 03      STA $0303                 
CODE_129018:        A5 16         LDA $16                   
CODE_12901A:        29 C0         AND #$C0                  
CODE_12901C:        8D 04 03      STA $0304                 
CODE_12901F:        A5 16         LDA $16                   
CODE_129021:        29 3F         AND #$3F                  
CODE_129023:        8D 05 03      STA $0305                 
CODE_129026:        A9 BD         LDA #$BD                  
CODE_129028:        8D 06 03      STA $0306                 
CODE_12902B:        A9 09         LDA #$09                  
CODE_12902D:        8D 07 03      STA $0307                 
CODE_129030:        A9 FF         LDA #$FF                  
CODE_129032:        8D 08 03      STA $0308                 
CODE_129035:        A5 14         LDA $14                   
CODE_129037:        C9 0D         CMP #$0D                  
CODE_129039:        D0 0B         BNE CODE_129046           
CODE_12903B:        A5 15         LDA $15                   
CODE_12903D:        C9 E0         CMP #$E0                  
CODE_12903F:        B0 05         BCS CODE_129046                   
CODE_129041:        A9 28         LDA #$28                  
CODE_129043:        8D 05 03      STA $0305                 
CODE_129046:        A5 15         LDA $15                   
CODE_129048:        18            CLC                       
CODE_129049:        69 20         ADC #$20                  
CODE_12904B:        85 15         STA $15                   
CODE_12904D:        A5 14         LDA $14                   
CODE_12904F:        69 00         ADC #$00                  
CODE_129051:        85 14         STA $14                   
CODE_129053:        C9 0E         CMP #$0E                  
CODE_129055:        D0 12         BNE CODE_129069           
CODE_129057:        A5 15         LDA $15                   
CODE_129059:        29 F0         AND #$F0                  
CODE_12905B:        C9 E0         CMP #$E0                  
CODE_12905D:        D0 0A         BNE CODE_129069           
CODE_12905F:        A9 20         LDA #$20                  
CODE_129061:        85 10         STA $10                   
CODE_129063:        22 08 F9 14   JSL CODE_14F908           
CODE_129067:        80 24         BRA CODE_12908D           

CODE_129069:        A5 FA         LDA $FA                   
CODE_12906B:        29 10         AND #$10                  
CODE_12906D:        F0 03         BEQ CODE_129072           
CODE_12906F:        82 FA 00      BRL CODE_12916C           

CODE_129072:        A5 FC         LDA $FC                   
CODE_129074:        29 40         AND #$40                  
CODE_129076:        8D 12 07      STA $0712                 
CODE_129079:        A5 FA         LDA $FA                   
CODE_12907B:        29 40         AND #$40                  
CODE_12907D:        0D 12 07      ORA $0712                 
CODE_129080:        F0 08         BEQ CODE_12908A           
CODE_129082:        22 C0 95 11   JSL CODE_1195C0           
CODE_129086:        5C DE 80 00   JML CODE_0080DE           

CODE_12908A:        82 31 FF      BRL CODE_128FBE           

CODE_12908D:        22 08 F9 14   JSL CODE_14F908           
CODE_129091:        A5 19         LDA $19                   
CODE_129093:        F0 03         BEQ CODE_129098           
CODE_129095:        82 CE 00      BRL CODE_129166           

CODE_129098:        A5 18         LDA $18                   
CODE_12909A:        C9 09         CMP #$09                  
CODE_12909C:        F0 33         BEQ CODE_1290D1           
CODE_12909E:        A5 18         LDA $18                   
CODE_1290A0:        D0 40         BNE CODE_1290E2           
CODE_1290A2:        C6 10         DEC $10                   
CODE_1290A4:        30 03         BMI CODE_1290A9           
CODE_1290A6:        82 BD 00      BRL CODE_129166           

CODE_1290A9:        A9 0C         LDA #$0C                  
CODE_1290AB:        8D 02 03      STA $0302                 
CODE_1290AE:        A9 8E         LDA #$8E                  
CODE_1290B0:        8D 03 03      STA $0303                 
CODE_1290B3:        9C 04 03      STZ $0304                 
CODE_1290B6:        A9 09         LDA #$09                  
CODE_1290B8:        8D 05 03      STA $0305                 
CODE_1290BB:        A2 08         LDX #$08                  
CODE_1290BD:        C2 20         REP #$20                  
CODE_1290BF:        BF 35 E8 15   LDA.l DATA_15E835,x             
CODE_1290C3:        9D 06 03      STA $0306,x               
CODE_1290C6:        E2 20         SEP #$20                  
CODE_1290C8:        CA            DEX                       
CODE_1290C9:        CA            DEX                       
CODE_1290CA:        10 F1         BPL CODE_1290BD           
CODE_1290CC:        A9 FF         LDA #$FF                  
CODE_1290CE:        8D 10 03      STA $0310                 
CODE_1290D1:        E6 18         INC $18                   
CODE_1290D3:        A9 0C         LDA #$0C                  
CODE_1290D5:        85 14         STA $14                   
CODE_1290D7:        A9 E6         LDA #$E6                  
CODE_1290D9:        85 15         STA $15                   
CODE_1290DB:        A9 40         LDA #$40                  
CODE_1290DD:        85 1A         STA $1A                   
CODE_1290DF:        82 84 00      BRL CODE_129166           

CODE_1290E2:        C6 1A         DEC $1A                   ; \ If timer is not positive (00-7F)...
CODE_1290E4:        10 F9         BPL CODE_1290DF           ; / Load next line.
CODE_1290E6:        A9 40         LDA #$40                  ; \ Amount of frames to wait for next line = #$40
CODE_1290E8:        85 1A         STA $1A                   ; /
CODE_1290EA:        A5 14         LDA $14                   
CODE_1290EC:        8D 02 03      STA $0302                 
CODE_1290EF:        A5 15         LDA $15                   
CODE_1290F1:        8D 03 03      STA $0303                 
CODE_1290F4:        9C 04 03      STZ $0304                 
CODE_1290F7:        A9 27         LDA #$27                  
CODE_1290F9:        8D 05 03      STA $0305                 
CODE_1290FC:        A6 18         LDX $18                   
CODE_1290FE:        CA            DEX                       
CODE_1290FF:        A9 15         LDA #$15                  ; \ Bank num = $15.
CODE_129101:        85 05         STA $05                   ;  |
CODE_129103:        BF 3F E8 15   LDA.l PNTR_15E83F,x         ;  | Get address of tables...
CODE_129107:        85 04         STA $04                   ;  | ...which contain the 'Story' data...
CODE_129109:        BF 50 E8 15   LDA.l PNTR_15E850,x         ;  | into [$03]
CODE_12910D:        85 03         STA $03                   ; /
CODE_12910F:        A0 00         LDY #$00                  
CODE_129111:        A2 13         LDX #$13                  
CODE_129113:        C2 20         REP #$20                  
CODE_129115:        B7 03         LDA [$03],y               
CODE_129117:        99 06 03      STA $0306,y               
CODE_12911A:        E2 20         SEP #$20                  
CODE_12911C:        C8            INY                       
CODE_12911D:        C8            INY                       
CODE_12911E:        CA            DEX                       
CODE_12911F:        10 F2         BPL CODE_129113           
CODE_129121:        A9 FF         LDA #$FF                  
CODE_129123:        99 06 03      STA $0306,y               
CODE_129126:        E6 18         INC $18                   
CODE_129128:        A5 15         LDA $15                   
CODE_12912A:        18            CLC                       
CODE_12912B:        69 40         ADC #$40                  
CODE_12912D:        85 15         STA $15                   
CODE_12912F:        A5 14         LDA $14                   
CODE_129131:        69 00         ADC #$00                  
CODE_129133:        85 14         STA $14                   
CODE_129135:        A5 18         LDA $18                   
CODE_129137:        C9 09         CMP #$09                  
CODE_129139:        90 2B         BCC CODE_129166           
CODE_12913B:        D0 1A         BNE CODE_129157           
CODE_12913D:        A9 09         LDA #$09                  
CODE_12913F:        8D 10 02      STA $0210                 
CODE_129142:        A9 03         LDA #$03                  
CODE_129144:        85 10         STA $10                   
CODE_129146:        A9 0C         LDA #$0C                  
CODE_129148:        85 14         STA $14                   
CODE_12914A:        A9 A7         LDA #$A7                  
CODE_12914C:        85 15         STA $15                   
CODE_12914E:        A9 62         LDA #$62                  
CODE_129150:        85 16         STA $16                   
CODE_129152:        64 17         STZ $17                   
CODE_129154:        82 6F FE      BRL CODE_128FC6           

CODE_129157:        C9 12         CMP #$12                  
CODE_129159:        90 0B         BCC CODE_129166           
CODE_12915B:        E6 19         INC $19                   
CODE_12915D:        A9 25         LDA #$25                  
CODE_12915F:        8D 10 02      STA $0210                 
CODE_129162:        A9 03         LDA #$03                  
CODE_129164:        85 10         STA $10                   
CODE_129166:        A5 FA         LDA $FA                   
CODE_129168:        29 10         AND #$10                  
CODE_12916A:        F0 26         BEQ CODE_129192           
CODE_12916C:        A9 80         LDA #$80                  
CODE_12916E:        8D E2 1D      STA $1DE2                 
CODE_129171:        22 08 F9 14   JSL CODE_14F908           
CODE_129175:        AF F2 1F 70   LDA $701FF2               
CODE_129179:        F0 02         BEQ CODE_12917D           
CODE_12917B:        80 25         BRA CODE_1291A2           

CODE_12917D:        A9 29         LDA #$29                  
CODE_12917F:        8D E3 1D      STA $1DE3                 
CODE_129182:        A9 00         LDA #$00                  
CODE_129184:        A8            TAY                       
CODE_129185:        99 00 00      STA $0000,y               
CODE_129188:        C8            INY                       
CODE_129189:        C0 F0         CPY #$F0                  
CODE_12918B:        90 F8         BCC CODE_129185           
CODE_12918D:        22 F0 F9 14   JSL CODE_14F9F0           ; Clear all OAM.
CODE_129191:        6B            RTL
                       
CODE_129192:        A5 FC         LDA $FC                   
CODE_129194:        29 40         AND #$40                  
CODE_129196:        8D 12 07      STA $0712                 
CODE_129199:        A5 FA         LDA $FA                   
CODE_12919B:        29 40         AND #$40                  
CODE_12919D:        0D 12 07      ORA $0712                 
CODE_1291A0:        F0 08         BEQ CODE_1291AA           
CODE_1291A2:        22 C0 95 11   JSL CODE_1195C0           
CODE_1291A6:        5C DE 80 00   JML CODE_0080DE           

CODE_1291AA:        A5 19         LDA $19                   
CODE_1291AC:        F0 14         BEQ CODE_1291C2           
CODE_1291AE:        E6 10         INC $10                   
CODE_1291B0:        A5 10         LDA $10                   
CODE_1291B2:        29 0F         AND #$0F                  
CODE_1291B4:        D0 0C         BNE CODE_1291C2           
CODE_1291B6:        CE 10 02      DEC $0210                 
CODE_1291B9:        AD 10 02      LDA $0210                 
CODE_1291BC:        C9 14         CMP #$14                  
CODE_1291BE:        D0 02         BNE CODE_1291C2           
CODE_1291C0:        F0 03         BEQ CODE_1291C5           
CODE_1291C2:        82 C8 FE      BRL CODE_12908D           

CODE_1291C5:        22 C0 95 11   JSL CODE_1195C0           
CODE_1291C9:        22 00 F9 14   JSL CODE_14F900           
CODE_1291CD:        9C 00 42      STZ $4200                 
CODE_1291D0:        AF F2 1F 70   LDA $701FF2               
CODE_1291D4:        F0 04         BEQ CODE_1291DA           
CODE_1291D6:        5C 39 81 00   JML CODE_008139           

CODE_1291DA:        82 73 FD      BRL CODE_128F50           

DATA_1291DD:        db $FF,$FF,$FF,$FF,$FF,$FF,$FF          ; Empty data.
             
CODE_1291E4:        A9 80         LDA #$80                  ; Force blank.
CODE_1291E6:        80 02         BRA CODE_1291EA           

CODE_1291E8:        A9 0F         LDA #$0F                  ; \ Full brightness.
CODE_1291EA:        85 FE         STA $FE                   ; /
CODE_1291EC:        A5 11         LDA $11               
CODE_1291EE:        0A            ASL A              
CODE_1291EF:        AA            TAX                       
CODE_1291F0:        BD 17 9C      LDA.w PNTR_119C17,x               
CODE_1291F3:        85 F0         STA $F0                   
CODE_1291F5:        BD 18 9C      LDA.w PNTR_119C17+1,x               
CODE_1291F8:        85 F1         STA $F1                   
CODE_1291FA:        A9 11         LDA #$11                  
CODE_1291FC:        85 F2         STA $F2                   
CODE_1291FE:        9C 54 01      STZ $0154                 
CODE_129201:        AD 54 01      LDA $0154                 
CODE_129204:        10 FB         BPL CODE_129201           
CODE_129206:        22 99 FA 14   JSL CODE_14FA99           
CODE_12920A:        58            CLI                       
CODE_12920B:        60            RTS
                       
CODE_12920C:        64 E6         STZ $E6                   
CODE_12920E:        20 EC 91      JSR CODE_1291EC           
CODE_129211:        20 10 95      JSR CODE_129510           
CODE_129214:        A5 E6         LDA $E6                   
CODE_129216:        F0 F6         BEQ CODE_12920E           
CODE_129218:        22 2E F9 14   JSL CODE_14F92E           
CODE_12921C:        22 53 F9 14   JSL CODE_14F953           
CODE_129220:        22 87 88 13   JSL CODE_138887           
CODE_129224:        22 5B E2 13   JSL CODE_13E25B           
CODE_129228:        22 CD D9 14   JSL CODE_14D9CD           
CODE_12922C:        A9 40         LDA #$40                  
CODE_12922E:        8D 00 01      STA $0100                 
CODE_129231:        A9 B0         LDA #$B0                  
CODE_129233:        85 FF         STA $FF                   
CODE_129235:        20 EC 91      JSR CODE_1291EC           
CODE_129238:        A9 01         LDA #$01                  
CODE_12923A:        85 11         STA $11                   
CODE_12923C:        20 EC 91      JSR CODE_1291EC           
CODE_12923F:        A9 01         LDA #$01                  
CODE_129241:        85 E5         STA $E5                   
CODE_129243:        A9 60         LDA #$60                  ; \ Amount of frames the 'pulling fairies out of jar' cutscene is going to take.
CODE_129245:        85 83         STA $83                   ; /
CODE_129247:        A9 01         LDA #$01                  ; \ Player direction to face.
CODE_129249:        85 9D         STA $9D                   ; /
CODE_12924B:        8D 8D 07      STA $078D                 
CODE_12924E:        64 50         STZ $50                   
CODE_129250:        64 8E         STZ $8E                   
CODE_129252:        9C CB 04      STZ $04CB                 
CODE_129255:        64 E6         STZ $E6                   
CODE_129257:        9C 00 04      STZ $0400                 
CODE_12925A:        A2 09         LDX #$09                  
CODE_12925C:        BD EC A3      LDA.w DATA_11A3EC,x               
CODE_12925F:        95 28         STA $28,x                 
CODE_129261:        BD F6 A3      LDA.w DATA_11A3F6,x               
CODE_129264:        95 32         STA $32,x                 
CODE_129266:        BD 00 A4      LDA.w DATA_11A400,x               
CODE_129269:        95 3C         STA $3C,x                 
CODE_12926B:        BD 0A A4      LDA.w DATA_11A40A,x               
CODE_12926E:        95 46         STA $46,x                 
CODE_129270:        BD 14 A4      LDA.w DATA_11A414,x               
CODE_129273:        95 85         STA $85,x                 
CODE_129275:        BD 1E A4      LDA.w DATA_11A41E,x               
CODE_129278:        95 64         STA $64,x                 
CODE_12927A:        CA            DEX                       
CODE_12927B:        10 DF         BPL CODE_12925C           
CODE_12927D:        64 FE         STZ $FE                   
CODE_12927F:        20 EC 91      JSR CODE_1291EC           
CODE_129282:        22 F0 F9 14   JSL CODE_14F9F0           ; Clear all OAM.
CODE_129286:        20 C5 92      JSR CODE_1292C5           
CODE_129289:        20 D8 93      JSR CODE_1293D8           
CODE_12928C:        20 26 95      JSR CODE_129526           
CODE_12928F:        A5 E6         LDA $E6                   
CODE_129291:        F0 EC         BEQ CODE_12927F           
CODE_129293:        64 E6         STZ $E6                   
CODE_129295:        20 EC 91      JSR CODE_1291EC           
CODE_129298:        E6 10         INC $10                   
CODE_12929A:        22 F0 F9 14   JSL CODE_14F9F0           ; Clear all OAM.
CODE_12929E:        20 C5 92      JSR CODE_1292C5           
CODE_1292A1:        20 D8 93      JSR CODE_1293D8           
CODE_1292A4:        A5 83         LDA $83                   
CODE_1292A6:        F0 15         BEQ CODE_1292BD           
CODE_1292A8:        A5 10         LDA $10                   
CODE_1292AA:        29 07         AND #$07                  
CODE_1292AC:        D0 E7         BNE CODE_129295           
CODE_1292AE:        C6 83         DEC $83                   
CODE_1292B0:        A5 83         LDA $83                   
CODE_1292B2:        C9 25         CMP #$25                  
CODE_1292B4:        D0 DF         BNE CODE_129295           
CODE_1292B6:        A0 0E         LDY #$0E                  ; \ Credits song.
CODE_1292B8:        8C E2 1D      STY $1DE2                 ; /
CODE_1292BB:        D0 D8         BNE CODE_129295           
CODE_1292BD:        20 10 95      JSR CODE_129510           
CODE_1292C0:        A5 E6         LDA $E6                   
CODE_1292C2:        F0 D1         BEQ CODE_129295           
CODE_1292C4:        6B            RTL
                       
CODE_1292C5:        A5 84         LDA $84                   
CODE_1292C7:        F0 02         BEQ CODE_1292CB           
CODE_1292C9:        C6 84         DEC $84                   
CODE_1292CB:        A5 82         LDA $82                   
CODE_1292CD:        F0 02         BEQ CODE_1292D1           
CODE_1292CF:        C6 82         DEC $82                   
CODE_1292D1:        A5 28         LDA $28                   
CODE_1292D3:        8D 28 04      STA $0428                 
CODE_1292D6:        A5 32         LDA $32                   
CODE_1292D8:        8D 2B 04      STA $042B                 
CODE_1292DB:        22 4A E1 14   JSL CODE_14E14A           
CODE_1292DF:        A5 50         LDA $50                   
CODE_1292E1:        22 76 87 11   JSL CODE_118776 

PNTR_1292E5:        dw CODE_1292EF
                    dw CODE_12930B
                    dw CODE_129337
                    dw CODE_129354
                    dw CODE_129376             

CODE_1292EF:        20 D1 83      JSR CODE_1283D1                
CODE_1292F2:        20 D2 80      JSR CODE_1280D2           
CODE_1292F5:        A5 28         LDA $28                   
CODE_1292F7:        C9 3E         CMP #$3E                  
CODE_1292F9:        90 3B         BCC CODE_129336           
CODE_1292FB:        E6 50         INC $50                   
CODE_1292FD:        E6 99         INC $99                   
CODE_1292FF:        A9 06         LDA #$06                  
CODE_129301:        85 C7         STA $C7                   
CODE_129303:        A9 01         LDA #$01                  
CODE_129305:        8D E1 1D      STA $1DE1                 
CODE_129308:        4C 0B 83      JMP CODE_12830B           

CODE_12930B:        20 D1 83      JSR CODE_1283D1           
CODE_12930E:        20 D2 80      JSR CODE_1280D2           
CODE_129311:        20 90 93      JSR CODE_129390           
CODE_129314:        20 23 85      JSR CODE_128523           
CODE_129317:        A5 46         LDA $46                   
CODE_129319:        30 1B         BMI CODE_129336           
CODE_12931B:        A5 32         LDA $32                   
CODE_12931D:        C9 A0         CMP #$A0                  
CODE_12931F:        90 07         BCC CODE_129328           
CODE_129321:        A9 0C         LDA #$0C                  
CODE_129323:        85 3C         STA $3C                   
CODE_129325:        4C 03 93      JMP CODE_129303           

CODE_129328:        C9 75         CMP #$75                  
CODE_12932A:        90 0A         BCC CODE_129336           
CODE_12932C:        A5 28         LDA $28                   
CODE_12932E:        C9 70         CMP #$70                  
CODE_129330:        90 04         BCC CODE_129336           
CODE_129332:        E6 50         INC $50                   
CODE_129334:        C6 99         DEC $99                   
CODE_129336:        60            RTS
                       
CODE_129337:        20 D1 83      JSR CODE_1283D1           
CODE_12933A:        20 D2 80      JSR CODE_1280D2           
CODE_12933D:        A5 28         LDA $28                   
CODE_12933F:        C9 80         CMP #$80                  
CODE_129341:        90 F3         BCC CODE_129336           
CODE_129343:        E6 50         INC $50                   
CODE_129345:        E6 9C         INC $9C                   
CODE_129347:        A9 08         LDA #$08                  
CODE_129349:        85 C7         STA $C7                   
CODE_12934B:        A9 05         LDA #$05                  
CODE_12934D:        85 8E         STA $8E                   
CODE_12934F:        A9 28         LDA #$28                  
CODE_129351:        85 82         STA $82                   
CODE_129353:        60            RTS
                       
CODE_129354:        A5 82         LDA $82                   
CODE_129356:        D0 1D         BNE CODE_129375           
CODE_129358:        C6 8E         DEC $8E                   
CODE_12935A:        D0 12         BNE CODE_12936E           
CODE_12935C:        E6 50         INC $50                   
CODE_12935E:        E6 99         INC $99                   
CODE_129360:        A9 06         LDA #$06                  
CODE_129362:        85 C7         STA $C7                   
CODE_129364:        A9 2B         LDA #$2B                  
CODE_129366:        8D E0 1D      STA $1DE0                 
CODE_129369:        A9 A0         LDA #$A0                  
CODE_12936B:        85 4F         STA $4F                   
CODE_12936D:        60            RTS
                       
CODE_12936E:        A4 8E         LDY $8E                   
CODE_129370:        B9 27 A4      LDA.w DATA_11A427,y               
CODE_129373:        85 82         STA $82                   
CODE_129375:        60            RTS
                       
CODE_129376:        20 9B 93      JSR CODE_12939B           
CODE_129379:        20 90 93      JSR CODE_129390           
CODE_12937C:        20 D1 83      JSR CODE_1283D1           
CODE_12937F:        20 23 85      JSR CODE_128523           
CODE_129382:        A5 46         LDA $46                   
CODE_129384:        30 09         BMI CODE_12938F           
CODE_129386:        A5 32         LDA $32                   
CODE_129388:        C9 80         CMP #$80                  
CODE_12938A:        90 03         BCC CODE_12938F           
CODE_12938C:        4C 0B 83      JMP CODE_12830B           

CODE_12938F:        60            RTS
                       
CODE_129390:        A4 8F         LDY $8F                   
CODE_129392:        B9 31 A4      LDA.w DATA_11A431,y               
CODE_129395:        18            CLC                       
CODE_129396:        65 46         ADC $46                   
CODE_129398:        85 46         STA $46                   
CODE_12939A:        60            RTS
                       
CODE_12939B:        A2 07         LDX #$07                  
CODE_12939D:        86 12         STX $12                   
CODE_12939F:        B5 86         LDA $86,x                 
CODE_1293A1:        F0 0B         BEQ CODE_1293AE           
CODE_1293A3:        C9 01         CMP #$01                  
CODE_1293A5:        D0 2B         BNE CODE_1293D2           
CODE_1293A7:        A9 31         LDA #$31                  
CODE_1293A9:        8D E0 1D      STA $1DE0                 
CODE_1293AC:        D0 24         BNE CODE_1293D2           
CODE_1293AE:        20 C1 98      JSR CODE_1298C1           
CODE_1293B1:        B5 47         LDA $47,x                 
CODE_1293B3:        C9 08         CMP #$08                  
CODE_1293B5:        30 0F         BMI CODE_1293C6           
CODE_1293B7:        A9 00         LDA #$00                  
CODE_1293B9:        95 3D         STA $3D,x                 
CODE_1293BB:        A9 F9         LDA #$F9                  
CODE_1293BD:        95 47         STA $47,x                 
CODE_1293BF:        BD 1F A4      LDA.w DATA_11A41F,x               
CODE_1293C2:        49 40         EOR #$40                  
CODE_1293C4:        95 65         STA $65,x                 
CODE_1293C6:        A5 10         LDA $10                   
CODE_1293C8:        0A            ASL A                     
CODE_1293C9:        29 02         AND #$02                  
CODE_1293CB:        85 0F         STA $0F                   
CODE_1293CD:        20 FD 93      JSR CODE_1293FD           
CODE_1293D0:        F6 86         INC $86,x                 
CODE_1293D2:        D6 86         DEC $86,x                 
CODE_1293D4:        CA            DEX                       
CODE_1293D5:        10 C6         BPL CODE_12939D           
CODE_1293D7:        60            RTS
                       
CODE_1293D8:        A9 04         LDA #$04                  
CODE_1293DA:        85 0F         STA $0F                   
CODE_1293DC:        A2 08         LDX #$08                  
CODE_1293DE:        86 12         STX $12                   
CODE_1293E0:        20 FD 93      JSR CODE_1293FD           
CODE_1293E3:        A4 8E         LDY $8E                   
CODE_1293E5:        D0 0D         BNE CODE_1293F4           
CODE_1293E7:        A5 3B         LDA $3B                   
CODE_1293E9:        C9 A0         CMP #$A0                  
CODE_1293EB:        90 04         BCC CODE_1293F1           
CODE_1293ED:        C9 E0         CMP #$E0                  
CODE_1293EF:        90 0B         BCC CODE_1293FC           
CODE_1293F1:        4C 80 98      JMP CODE_129880           

CODE_1293F4:        B9 2B A4      LDA.w DATA_11A42B,y               
CODE_1293F7:        18            CLC                       
CODE_1293F8:        65 32         ADC $32                   
CODE_1293FA:        85 3B         STA $3B                   
CODE_1293FC:        60            RTS       
                
CODE_1293FD:        BC 3B A4      LDY.w DATA_11A43B,x               
CODE_129400:        B5 33         LDA $33,x                 
CODE_129402:        99 01 08      STA $0801,y               
CODE_129405:        B5 29         LDA $29,x                 
CODE_129407:        99 00 08      STA $0800,y               
CODE_12940A:        B5 65         LDA $65,x                 
CODE_12940C:        29 C0         AND #$C0                  
CODE_12940E:        09 17         ORA #$17                  
CODE_129410:        99 03 08      STA $0803,y               
CODE_129413:        A6 0F         LDX $0F                   
CODE_129415:        29 40         AND #$40                  
CODE_129417:        D0 05         BNE CODE_12941E           
CODE_129419:        BD 35 A4      LDA.w DATA_11A435,x               
CODE_12941C:        80 03         BRA CODE_129421           

CODE_12941E:        BD 36 A4      LDA.w DATA_11A436,x               
CODE_129421:        99 02 08      STA $0802,y               
CODE_129424:        5A            PHY                       
CODE_129425:        98            TYA                       
CODE_129426:        4A            LSR A                     
CODE_129427:        4A            LSR A                     
CODE_129428:        A8            TAY                       
CODE_129429:        A9 02         LDA #$02                  
CODE_12942B:        99 20 0A      STA $0A20,y               
CODE_12942E:        7A            PLY                       
CODE_12942F:        A6 12         LDX $12                   
CODE_129431:        60            RTS           
            
CODE_129432:        20 E4 91      JSR CODE_1291E4           
CODE_129435:        22 94 D1 14   JSL CODE_14D194           
CODE_129439:        22 53 F9 14   JSL CODE_14F953           
CODE_12943D:        A9 40         LDA #$40                  
CODE_12943F:        8D 00 01      STA $0100                 
CODE_129442:        20 3D 95      JSR CODE_12953D           
CODE_129445:        20 EC 91      JSR CODE_1291EC           
CODE_129448:        A9 02         LDA #$02                  
CODE_12944A:        85 11         STA $11                   
CODE_12944C:        20 EC 91      JSR CODE_1291EC           
CODE_12944F:        A9 03         LDA #$03                  
CODE_129451:        85 11         STA $11                   
CODE_129453:        20 EC 91      JSR CODE_1291EC           
CODE_129456:        22 8E DD 13   JSL CODE_13DD8E           
CODE_12945A:        20 BA 96      JSR CODE_1296BA           
CODE_12945D:        20 EC 91      JSR CODE_1291EC           
CODE_129460:        A9 00         LDA #$00                  
CODE_129462:        85 F4         STA $F4                   
CODE_129464:        85 E6         STA $E6                   
CODE_129466:        20 94 96      JSR CODE_129694           
CODE_129469:        A9 FF         LDA #$FF                  
CODE_12946B:        85 14         STA $14                   
CODE_12946D:        A9 A0         LDA #$A0                  
CODE_12946F:        85 28         STA $28                   
CODE_129471:        A9 08         LDA #$08                  
CODE_129473:        85 3C         STA $3C                   
CODE_129475:        A9 01         LDA #$01                  
CODE_129477:        85 EB         STA $EB                   
CODE_129479:        A9 BE         LDA #$BE                  
CODE_12947B:        8D 4B 02      STA $024B                 
CODE_12947E:        9C 4F 02      STZ $024F                 
CODE_129481:        9C 4C 02      STZ $024C                 
CODE_129484:        64 FE         STZ $FE                   
CODE_129486:        20 EC 91      JSR CODE_1291EC           
CODE_129489:        58            CLI                       
CODE_12948A:        E6 F4         INC $F4                   
CODE_12948C:        E6 10         INC $10                   
CODE_12948E:        20 FE 97      JSR CODE_1297FE           
CODE_129491:        20 46 95      JSR CODE_129546           
CODE_129494:        A5 E6         LDA $E6                   
CODE_129496:        C9 03         CMP #$03                  
CODE_129498:        B0 14         BCS CODE_1294AE                   
CODE_12949A:        A5 F4         LDA $F4                   
CODE_12949C:        C9 0A         CMP #$0A                  
CODE_12949E:        90 0B         BCC CODE_1294AB           
CODE_1294A0:        A9 00         LDA #$00                  
CODE_1294A2:        85 F4         STA $F4                   
CODE_1294A4:        A5 F3         LDA $F3                   
CODE_1294A6:        38            SEC                       
CODE_1294A7:        E9 30         SBC #$30                  
CODE_1294A9:        85 F3         STA $F3                   
CODE_1294AB:        82 D8 FF      BRL CODE_129486           

CODE_1294AE:        A9 03         LDA #$03                  
CODE_1294B0:        8D 4C 02      STA $024C                 
CODE_1294B3:        64 F3         STZ $F3                   
CODE_1294B5:        64 F4         STZ $F4                   
CODE_1294B7:        9C 42 02      STZ $0242                 
CODE_1294BA:        A9 04         LDA #$04                  
CODE_1294BC:        85 11         STA $11                   
CODE_1294BE:        20 EC 91      JSR CODE_1291EC           
CODE_1294C1:        20 3D 95      JSR CODE_12953D           
CODE_1294C4:        E6 F4         INC $F4                   
CODE_1294C6:        20 FE 97      JSR CODE_1297FE           
CODE_1294C9:        20 5D 96      JSR CODE_12965D           
CODE_1294CC:        A2 02         LDX #$02                  
CODE_1294CE:        A0 00         LDY #$00                  
CODE_1294D0:        A5 00         LDA $00                   
CODE_1294D2:        A5 00         LDA $00                   
CODE_1294D4:        88            DEY                       
CODE_1294D5:        D0 F9         BNE CODE_1294D0           
CODE_1294D7:        CA            DEX                       
CODE_1294D8:        D0 F4         BNE CODE_1294CE           
CODE_1294DA:        A9 B0         LDA #$B0                  
CODE_1294DC:        05 F3         ORA $F3                   
CODE_1294DE:        85 FF         STA $FF                   
CODE_1294E0:        A5 F4         LDA $F4                   
CODE_1294E2:        C9 14         CMP #$14                  
CODE_1294E4:        90 0F         BCC CODE_1294F5           
CODE_1294E6:        A9 00         LDA #$00                  
CODE_1294E8:        85 F4         STA $F4                   
CODE_1294EA:        EE 42 02      INC $0242                 
CODE_1294ED:        AD 4F 02      LDA $024F                 
CODE_1294F0:        49 01         EOR #$01                  
CODE_1294F2:        8D 4F 02      STA $024F                 
CODE_1294F5:        AD 42 02      LDA $0242                 
CODE_1294F8:        C9 2C         CMP #$2C                  
CODE_1294FA:        90 C2         BCC CODE_1294BE           
CODE_1294FC:        20 10 95      JSR CODE_129510           
CODE_1294FF:        A5 E6         LDA $E6                   
CODE_129501:        C9 04         CMP #$04                  
CODE_129503:        90 B9         BCC CODE_1294BE           
CODE_129505:        A9 FF         LDA #$FF                  
CODE_129507:        8D 4B 02      STA $024B                 
CODE_12950A:        A9 01         LDA #$01                  
CODE_12950C:        8D 4F 02      STA $024F                 
CODE_12950F:        6B            RTL
                       
CODE_129510:        C6 E5         DEC $E5                   
CODE_129512:        10 11         BPL CODE_129525           
CODE_129514:        A9 01         LDA #$01                  
CODE_129516:        85 E5         STA $E5                   
CODE_129518:        A5 FE         LDA $FE                   
CODE_12951A:        29 0F         AND #$0F                  
CODE_12951C:        3A            DEC A                     
CODE_12951D:        30 04         BMI CODE_129523           
CODE_12951F:        85 FE         STA $FE                   
CODE_129521:        80 02         BRA CODE_129525           

CODE_129523:        E6 E6         INC $E6                   
CODE_129525:        60            RTS
                       
CODE_129526:        C6 E5         DEC $E5                   
CODE_129528:        10 FB         BPL CODE_129525           
CODE_12952A:        A9 01         LDA #$01                  
CODE_12952C:        85 E5         STA $E5                   
CODE_12952E:        A5 FE         LDA $FE                   
CODE_129530:        1A            INC A                     
CODE_129531:        C9 10         CMP #$10                  
CODE_129533:        F0 EE         BEQ CODE_129523           
CODE_129535:        8D FE 00      STA $00FE                 
CODE_129538:        60            RTS
                       
CODE_129539:        20 26 95      JSR CODE_129526           
CODE_12953C:        6B            RTL
                       
CODE_12953D:        A9 B0         LDA #$B0                  
CODE_12953F:        80 02         BRA CODE_129543           

CODE_129541:        A9 30         LDA #$30                  
CODE_129543:        85 FF         STA $FF                   
CODE_129545:        60            RTS
                       
CODE_129546:        22 F0 F9 14   JSL CODE_14F9F0           ; Clear all OAM.
CODE_12954A:        20 5D 96      JSR CODE_12965D           
CODE_12954D:        A5 E6         LDA $E6                   
CODE_12954F:        22 76 87 11   JSL CODE_118776  

PNTR_129553:        dw CODE_129526
                    dw CODE_129559
                    dw CODE_1295D8
           
CODE_129559:        20 D2 80      JSR CODE_1280D2                        
CODE_12955C:        A5 14         LDA $14                   
CODE_12955E:        C9 01         CMP #$01                  
CODE_129560:        D0 24         BNE CODE_129586           
CODE_129562:        A5 28         LDA $28                   
CODE_129564:        C9 20         CMP #$20                  
CODE_129566:        90 1E         BCC CODE_129586           
CODE_129568:        EE E6 00      INC $00E6                 
CODE_12956B:        A9 A0         LDA #$A0                  
CODE_12956D:        85 10         STA $10                   
CODE_12956F:        A2 05         LDX #$05                  
CODE_129571:        A9 20         LDA #$20                  
CODE_129573:        95 29         STA $29,x                 
CODE_129575:        A9 A8         LDA #$A8                  
CODE_129577:        95 33         STA $33,x                 
CODE_129579:        BD 5E AA      LDA.w DATA_11AA5E,x               
CODE_12957C:        95 3D         STA $3D,x                 
CODE_12957E:        BD 64 AA      LDA.w DATA_11AA64,x               
CODE_129581:        95 47         STA $47,x                 
CODE_129583:        CA            DEX                       
CODE_129584:        10 EB         BPL CODE_129571           
CODE_129586:        A0 A0         LDY #$A0                  
CODE_129588:        A5 10         LDA $10                   
CODE_12958A:        29 38         AND #$38                  
CODE_12958C:        D0 01         BNE CODE_12958F           
CODE_12958E:        88            DEY                       
CODE_12958F:        29 08         AND #$08                  
CODE_129591:        D0 01         BNE CODE_129594           
CODE_129593:        88            DEY                       
CODE_129594:        84 32         STY $32                   
CODE_129596:        A2 05         LDX #$05                  
CODE_129598:        A0 70         LDY #$70                  
CODE_12959A:        64 00         STZ $00                   
CODE_12959C:        A5 32         LDA $32                   
CODE_12959E:        18            CLC                       
CODE_12959F:        7D 76 AA      ADC.w DATA_11AA76,x               
CODE_1295A2:        99 01 08      STA $0801,y               
CODE_1295A5:        BD 6A AA      LDA.w DATA_11AA6A,x               
CODE_1295A8:        99 02 08      STA $0802,y               
CODE_1295AB:        A9 2B         LDA #$2B                  
CODE_1295AD:        99 03 08      STA $0803,y               
CODE_1295B0:        A5 28         LDA $28                   
CODE_1295B2:        18            CLC                       
CODE_1295B3:        7D 70 AA      ADC.w DATA_11AA70,x               
CODE_1295B6:        99 00 08      STA $0800,y               
CODE_1295B9:        A5 14         LDA $14                   
CODE_1295BB:        69 00         ADC #$00                  
CODE_1295BD:        F0 04         BEQ CODE_1295C3           
CODE_1295BF:        A9 01         LDA #$01                  
CODE_1295C1:        85 00         STA $00                   
CODE_1295C3:        5A            PHY                       
CODE_1295C4:        98            TYA                       
CODE_1295C5:        4A            LSR A                     
CODE_1295C6:        4A            LSR A                     
CODE_1295C7:        A8            TAY                       
CODE_1295C8:        A9 02         LDA #$02                  
CODE_1295CA:        05 00         ORA $00                   
CODE_1295CC:        99 20 0A      STA $0A20,y               
CODE_1295CF:        7A            PLY                       
CODE_1295D0:        C8            INY                       
CODE_1295D1:        C8            INY                       
CODE_1295D2:        C8            INY                       
CODE_1295D3:        C8            INY                       
CODE_1295D4:        CA            DEX                       
CODE_1295D5:        10 C3         BPL CODE_12959A           
CODE_1295D7:        60            RTS
                       
CODE_1295D8:        A5 10         LDA $10                   
CODE_1295DA:        D0 19         BNE CODE_1295F5           
CODE_1295DC:        8D 0E 04      STA $040E                 
CODE_1295DF:        8D 18 04      STA $0418                 
CODE_1295E2:        85 2F         STA $2F                   
CODE_1295E4:        85 10         STA $10                   
CODE_1295E6:        A9 6F         LDA #$6F                  
CODE_1295E8:        85 39         STA $39                   
CODE_1295EA:        A9 E6         LDA #$E6                  
CODE_1295EC:        85 43         STA $43                   
CODE_1295EE:        A9 DA         LDA #$DA                  
CODE_1295F0:        85 4D         STA $4D                   
CODE_1295F2:        EE E6 00      INC $00E6                 
CODE_1295F5:        A2 05         LDX #$05                  
CODE_1295F7:        86 12         STX $12                   
CODE_1295F9:        20 85 98      JSR CODE_129885           
CODE_1295FC:        20 80 98      JSR CODE_129880           
CODE_1295FF:        A0 F0         LDY #$F0                  
CODE_129601:        A5 10         LDA $10                   
CODE_129603:        F0 0D         BEQ CODE_129612           
CODE_129605:        29 0F         AND #$0F                  
CODE_129607:        DD 82 AA      CMP.w DATA_11AA82,x               
CODE_12960A:        D0 08         BNE CODE_129614           
CODE_12960C:        A9 20         LDA #$20                  
CODE_12960E:        95 29         STA $29,x                 
CODE_129610:        A0 A8         LDY #$A8                  
CODE_129612:        94 33         STY $33,x                 
CODE_129614:        8A            TXA                       
CODE_129615:        0A            ASL A                     
CODE_129616:        0A            ASL A                     
CODE_129617:        0A            ASL A                     
CODE_129618:        A8            TAY                       
CODE_129619:        B5 29         LDA $29,x                 
CODE_12961B:        C9 80         CMP #$80                  
CODE_12961D:        B0 04         BCS CODE_129623                   
CODE_12961F:        A9 F0         LDA #$F0                  
CODE_129621:        D0 08         BNE CODE_12962B           
CODE_129623:        99 70 08      STA $0870,y               
CODE_129626:        99 74 08      STA $0874,y               
CODE_129629:        B5 33         LDA $33,x                 
CODE_12962B:        99 71 08      STA $0871,y               
CODE_12962E:        C9 F0         CMP #$F0                  
CODE_129630:        F0 06         BEQ CODE_129638           
CODE_129632:        18            CLC                       
CODE_129633:        69 08         ADC #$08                  
CODE_129635:        99 75 08      STA $0875,y               
CODE_129638:        BD 7C AA      LDA.w DATA_11AA7C,x               
CODE_12963B:        99 72 08      STA $0872,y               
CODE_12963E:        09 10         ORA #$10                  
CODE_129640:        99 76 08      STA $0876,y               
CODE_129643:        A9 23         LDA #$23                  
CODE_129645:        99 73 08      STA $0873,y               
CODE_129648:        99 77 08      STA $0877,y               
CODE_12964B:        5A            PHY                       
CODE_12964C:        98            TYA                       
CODE_12964D:        4A            LSR A                     
CODE_12964E:        4A            LSR A                     
CODE_12964F:        A8            TAY                       
CODE_129650:        A9 00         LDA #$00                  
CODE_129652:        99 3C 0A      STA $0A3C,y               
CODE_129655:        99 3D 0A      STA $0A3D,y               
CODE_129658:        7A            PLY                       
CODE_129659:        CA            DEX                       
CODE_12965A:        10 9B         BPL CODE_1295F7           
CODE_12965C:        60            RTS
                       
CODE_12965D:        20 94 96      JSR CODE_129694           
CODE_129660:        E6 9B         INC $9B                   
CODE_129662:        A9 03         LDA #$03                  
CODE_129664:        85 00         STA $00                   
CODE_129666:        A5 9B         LDA $9B                   
CODE_129668:        85 01         STA $01                   
CODE_12966A:        A0 1C         LDY #$1C                  
CODE_12966C:        A6 00         LDX $00                   
CODE_12966E:        BD 98 AA      LDA.w DATA_11AA98,x               
CODE_129671:        AA            TAX                       
CODE_129672:        E6 01         INC $01                   
CODE_129674:        A5 01         LDA $01                   
CODE_129676:        29 10         AND #$10                  
CODE_129678:        F0 01         BEQ CODE_12967B           
CODE_12967A:        E8            INX                       
CODE_12967B:        A9 01         LDA #$01                  
CODE_12967D:        85 02         STA $02                   
CODE_12967F:        BD 88 AA      LDA.w DATA_11AA88,x               
CODE_129682:        99 12 08      STA $0812,y               
CODE_129685:        CA            DEX                       
CODE_129686:        CA            DEX                       
CODE_129687:        88            DEY                       
CODE_129688:        88            DEY                       
CODE_129689:        88            DEY                       
CODE_12968A:        88            DEY                       
CODE_12968B:        C6 02         DEC $02                   
CODE_12968D:        10 F0         BPL CODE_12967F           
CODE_12968F:        C6 00         DEC $00                   
CODE_129691:        10 D9         BPL CODE_12966C           
CODE_129693:        60            RTS
                       
CODE_129694:        A0 1F         LDY #$1F                  
CODE_129696:        B9 3E AA      LDA.w DATA_11AA3E,y               
CODE_129699:        99 10 08      STA $0810,y               
CODE_12969C:        88            DEY                       
CODE_12969D:        10 F7         BPL CODE_129696           
CODE_12969F:        A9 02         LDA #$02                  
CODE_1296A1:        8D 24 0A      STA $0A24                 
CODE_1296A4:        8D 25 0A      STA $0A25                 
CODE_1296A7:        8D 26 0A      STA $0A26                 
CODE_1296AA:        8D 27 0A      STA $0A27                 
CODE_1296AD:        8D 28 0A      STA $0A28                 
CODE_1296B0:        8D 29 0A      STA $0A29                 
CODE_1296B3:        8D 2A 0A      STA $0A2A                 
CODE_1296B6:        8D 2B 0A      STA $0A2B                 
CODE_1296B9:        60            RTS
                       
CODE_1296BA:        A9 00         LDA #$00                  
CODE_1296BC:        8D 31 06      STA $0631                 
CODE_1296BF:        A0 03         LDY #$03                  
CODE_1296C1:        B9 2D 06      LDA $062D,y               
CODE_1296C4:        CD 31 06      CMP $0631                 
CODE_1296C7:        90 06         BCC CODE_1296CF           
CODE_1296C9:        B9 2D 06      LDA $062D,y               
CODE_1296CC:        8D 31 06      STA $0631                 
CODE_1296CF:        88            DEY                       
CODE_1296D0:        10 EF         BPL CODE_1296C1           
CODE_1296D2:        A2 00         LDX #$00                  
CODE_1296D4:        A0 03         LDY #$03                  
CODE_1296D6:        B9 2D 06      LDA $062D,y               
CODE_1296D9:        CD 31 06      CMP $0631                 
CODE_1296DC:        D0 05         BNE CODE_1296E3           
CODE_1296DE:        98            TYA                       
CODE_1296DF:        9D 97 05      STA $0597,x               
CODE_1296E2:        E8            INX                       
CODE_1296E3:        88            DEY                       
CODE_1296E4:        10 F0         BPL CODE_1296D6           
CODE_1296E6:        CA            DEX                       
CODE_1296E7:        8E 9B 05      STX $059B                 
CODE_1296EA:        A2 00         LDX #$00                  
CODE_1296EC:        A9 01         LDA #$01                  
CODE_1296EE:        9D 02 03      STA $0302,x               
CODE_1296F1:        E8            INX                       
CODE_1296F2:        A9 29         LDA #$29                  
CODE_1296F4:        9D 02 03      STA $0302,x               
CODE_1296F7:        E8            INX                       
CODE_1296F8:        A9 00         LDA #$00                  
CODE_1296FA:        9D 02 03      STA $0302,x               
CODE_1296FD:        E8            INX                       
CODE_1296FE:        A9 1B         LDA #$1B                  
CODE_129700:        9D 02 03      STA $0302,x               
CODE_129703:        E8            INX                       
CODE_129704:        A0 00         LDY #$00                  
CODE_129706:        B9 2D 06      LDA $062D,y               
CODE_129709:        20 20 98      JSR CODE_129820           
CODE_12970C:        98            TYA                       
CODE_12970D:        C2 20         REP #$20                  
CODE_12970F:        29 FF 00      AND #$00FF                
CODE_129712:        C9 BF 00      CMP #$00BF                
CODE_129715:        F0 05         BEQ CODE_12971C           
CODE_129717:        09 00 15      ORA #$1500                
CODE_12971A:        80 03         BRA CODE_12971F           

CODE_12971C:        A9 BE 14      LDA #$14BE                
CODE_12971F:        9D 02 03      STA $0302,x               
CODE_129722:        E8            INX                       
CODE_129723:        E8            INX                       
CODE_129724:        A5 01         LDA $01                   
CODE_129726:        29 FF 00      AND #$00FF                
CODE_129729:        09 00 15      ORA #$1500                
CODE_12972C:        9D 02 03      STA $0302,x               
CODE_12972F:        E8            INX                       
CODE_129730:        E8            INX                       
CODE_129731:        A9 FF 15      LDA #$15FF                
CODE_129734:        9D 02 03      STA $0302,x               
CODE_129737:        E8            INX                       
CODE_129738:        E8            INX                       
CODE_129739:        A9 EF 15      LDA #$15EF                
CODE_12973C:        9D 02 03      STA $0302,x               
CODE_12973F:        E8            INX                       
CODE_129740:        E8            INX                       
CODE_129741:        A9 BE 14      LDA #$14BE                
CODE_129744:        9D 02 03      STA $0302,x               
CODE_129747:        E2 20         SEP #$20                  
CODE_129749:        A0 03         LDY #$03                  
CODE_12974B:        B9 2D 06      LDA $062D,y               
CODE_12974E:        20 20 98      JSR CODE_129820           
CODE_129751:        98            TYA                       
CODE_129752:        C2 20         REP #$20                  
CODE_129754:        29 FF 00      AND #$00FF                
CODE_129757:        C9 BF 00      CMP #$00BF                
CODE_12975A:        F0 06         BEQ CODE_129762           
CODE_12975C:        09 00 15      ORA #$1500                
CODE_12975F:        9D 02 03      STA $0302,x               
CODE_129762:        E8            INX                       
CODE_129763:        E8            INX                       
CODE_129764:        A5 01         LDA $01                   
CODE_129766:        29 FF 00      AND #$00FF                
CODE_129769:        09 00 15      ORA #$1500                
CODE_12976C:        9D 02 03      STA $0302,x               
CODE_12976F:        E8            INX                       
CODE_129770:        E8            INX                       
CODE_129771:        A9 FF 15      LDA #$15FF                
CODE_129774:        9D 02 03      STA $0302,x               
CODE_129777:        E8            INX                       
CODE_129778:        E8            INX                       
CODE_129779:        A9 EF 15      LDA #$15EF                
CODE_12977C:        9D 02 03      STA $0302,x               
CODE_12977F:        E8            INX                       
CODE_129780:        E8            INX                       
CODE_129781:        A9 BE 14      LDA #$14BE                
CODE_129784:        9D 02 03      STA $0302,x               
CODE_129787:        E2 20         SEP #$20                  
CODE_129789:        A0 02         LDY #$02                  
CODE_12978B:        B9 2D 06      LDA $062D,y               
CODE_12978E:        20 20 98      JSR CODE_129820           
CODE_129791:        98            TYA                       
CODE_129792:        C2 20         REP #$20                  
CODE_129794:        29 FF 00      AND #$00FF                
CODE_129797:        C9 BF 00      CMP #$00BF                
CODE_12979A:        F0 06         BEQ CODE_1297A2           
CODE_12979C:        09 00 15      ORA #$1500                
CODE_12979F:        9D 02 03      STA $0302,x               
CODE_1297A2:        E8            INX                       
CODE_1297A3:        E8            INX                       
CODE_1297A4:        A5 01         LDA $01                   
CODE_1297A6:        29 FF 00      AND #$00FF                
CODE_1297A9:        09 00 15      ORA #$1500                
CODE_1297AC:        9D 02 03      STA $0302,x               
CODE_1297AF:        E8            INX                       
CODE_1297B0:        E8            INX                       
CODE_1297B1:        A9 FF 15      LDA #$15FF                
CODE_1297B4:        9D 02 03      STA $0302,x               
CODE_1297B7:        E8            INX                       
CODE_1297B8:        E8            INX                       
CODE_1297B9:        A9 EF 15      LDA #$15EF                
CODE_1297BC:        9D 02 03      STA $0302,x               
CODE_1297BF:        E8            INX                       
CODE_1297C0:        E8            INX                       
CODE_1297C1:        A9 BE 14      LDA #$14BE                
CODE_1297C4:        9D 02 03      STA $0302,x               
CODE_1297C7:        E2 20         SEP #$20                  
CODE_1297C9:        A0 01         LDY #$01                  
CODE_1297CB:        B9 2D 06      LDA $062D,y               
CODE_1297CE:        20 20 98      JSR CODE_129820           
CODE_1297D1:        98            TYA                       
CODE_1297D2:        C2 20         REP #$20                  
CODE_1297D4:        29 FF 00      AND #$00FF                
CODE_1297D7:        C9 BF 00      CMP #$00BF                
CODE_1297DA:        F0 06         BEQ CODE_1297E2           
CODE_1297DC:        09 00 15      ORA #$1500                
CODE_1297DF:        9D 02 03      STA $0302,x               
CODE_1297E2:        E8            INX                       
CODE_1297E3:        E8            INX                       
CODE_1297E4:        A5 01         LDA $01                   
CODE_1297E6:        29 FF 00      AND #$00FF                
CODE_1297E9:        09 00 15      ORA #$1500                
CODE_1297EC:        9D 02 03      STA $0302,x               
CODE_1297EF:        E8            INX                       
CODE_1297F0:        E8            INX                       
CODE_1297F1:        E2 20         SEP #$20                  
CODE_1297F3:        A9 FF         LDA #$FF                  
CODE_1297F5:        9D 02 03      STA $0302,x               
CODE_1297F8:        A9 3C         LDA #$3C                  
CODE_1297FA:        8D 9D 05      STA $059D                 
CODE_1297FD:        60            RTS
                       
CODE_1297FE:        CE 9D 05      DEC $059D                 
CODE_129801:        10 1C         BPL CODE_12981F           
CODE_129803:        A9 3C         LDA #$3C                  
CODE_129805:        8D 9D 05      STA $059D                 
CODE_129808:        AC 9C 05      LDY $059C                 
CODE_12980B:        B9 97 05      LDA $0597,y               
CODE_12980E:        18            CLC                       
CODE_12980F:        69 06         ADC #$06                  
CODE_129811:        8D 11 00      STA $0011                 
CODE_129814:        CE 9C 05      DEC $059C                 
CODE_129817:        10 06         BPL CODE_12981F           
CODE_129819:        AD 9B 05      LDA $059B                 
CODE_12981C:        8D 9C 05      STA $059C                 
CODE_12981F:        60            RTS
                       
CODE_129820:        A0 C0         LDY #$C0                  
CODE_129822:        C9 0A         CMP #$0A                  
CODE_129824:        90 05         BCC CODE_12982B           
CODE_129826:        E9 0A         SBC #$0A                  
CODE_129828:        C8            INY                       
CODE_129829:        80 F7         BRA CODE_129822           

CODE_12982B:        09 C0         ORA #$C0                  
CODE_12982D:        C0 C0         CPY #$C0                  
CODE_12982F:        D0 02         BNE CODE_129833           
CODE_129831:        A0 BF         LDY #$BF                  
CODE_129833:        C0 CA         CPY #$CA                  
CODE_129835:        90 04         BCC CODE_12983B           
CODE_129837:        A0 C9         LDY #$C9                  
CODE_129839:        A9 C9         LDA #$C9                  
CODE_12983B:        85 01         STA $01                   
CODE_12983D:        60            RTS
                       
DATA_12983E:        db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ; \ Empty data.
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |      
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF                              ; /

CODE_129880:        8A            TXA
CODE_129881:        18            CLC          
CODE_129882:        69 0A         ADC #$0A                  
CODE_129884:        AA            TAX                       
CODE_129885:        B5 3D         LDA $3D,x                 
CODE_129887:        18            CLC                       
CODE_129888:        7D CD 04      ADC $04CD,x               
CODE_12988B:        48            PHA                       
CODE_12988C:        0A            ASL A                     
CODE_12988D:        0A            ASL A                     
CODE_12988E:        0A            ASL A                     
CODE_12988F:        0A            ASL A                     
CODE_129890:        85 01         STA $01                   
CODE_129892:        68            PLA                       
CODE_129893:        4A            LSR A                     
CODE_129894:        4A            LSR A                     
CODE_129895:        4A            LSR A                     
CODE_129896:        4A            LSR A                     
CODE_129897:        C9 08         CMP #$08                  
CODE_129899:        90 02         BCC CODE_12989D           
CODE_12989B:        09 F0         ORA #$F0                  
CODE_12989D:        85 00         STA $00                   
CODE_12989F:        A0 00         LDY #$00                  
CODE_1298A1:        0A            ASL A                     
CODE_1298A2:        90 01         BCC CODE_1298A5           
CODE_1298A4:        88            DEY                       
CODE_1298A5:        84 02         STY $02                   
CODE_1298A7:        BD 08 04      LDA $0408,x               
CODE_1298AA:        18            CLC                       
CODE_1298AB:        65 01         ADC $01                   
CODE_1298AD:        9D 08 04      STA $0408,x               
CODE_1298B0:        B5 29         LDA $29,x                 
CODE_1298B2:        65 00         ADC $00                   
CODE_1298B4:        95 29         STA $29,x                 
CODE_1298B6:        46 01         LSR $01                   
CODE_1298B8:        B5 15         LDA $15,x                 
CODE_1298BA:        65 02         ADC $02                   
CODE_1298BC:        95 15         STA $15,x                 
CODE_1298BE:        A6 12         LDX $12                   
CODE_1298C0:        60            RTS
                       
CODE_1298C1:        BD 4A 04      LDA $044A,x               
CODE_1298C4:        D0 03         BNE CODE_1298C9           
CODE_1298C6:        20 85 98      JSR CODE_129885           
CODE_1298C9:        20 80 98      JSR CODE_129880           
CODE_1298CC:        B5 47         LDA $47,x                 
CODE_1298CE:        30 04         BMI CODE_1298D4           
CODE_1298D0:        C9 3E         CMP #$3E                  
CODE_1298D2:        B0 04         BCS CODE_1298D8                   
CODE_1298D4:        F6 47         INC $47,x                 
CODE_1298D6:        F6 47         INC $47,x                 
CODE_1298D8:        60            RTS
                       
CODE_1298D9:        A9 01         LDA #$01                  
CODE_1298DB:        D0 02         BNE CODE_1298DF           
CODE_1298DD:        A9 00         LDA #$00                  
CODE_1298DF:        48            PHA                       
CODE_1298E0:        A0 08         LDY #$08                  
CODE_1298E2:        B9 51 00      LDA $0051,y               
CODE_1298E5:        F0 11         BEQ CODE_1298F8           
CODE_1298E7:        B9 90 00      LDA $0090,y               
CODE_1298EA:        C9 3C         CMP #$3C                  
CODE_1298EC:        D0 0A         BNE CODE_1298F8           
CODE_1298EE:        A9 05         LDA #$05                  
CODE_1298F0:        99 51 00      STA $0051,y               
CODE_1298F3:        A9 20         LDA #$20                  
CODE_1298F5:        99 86 00      STA $0086,y               
CODE_1298F8:        88            DEY                       
CODE_1298F9:        10 E7         BPL CODE_1298E2           
CODE_1298FB:        20 A5 9A      JSR CODE_129AA5           
CODE_1298FE:        10 05         BPL CODE_129905           
CODE_129900:        A0 08         LDY #$08                  
CODE_129902:        20 B4 9A      JSR CODE_129AB4           
CODE_129905:        A9 00         LDA #$00                  
CODE_129907:        8D BE 04      STA $04BE                 
CODE_12990A:        8D B3 04      STA $04B3                 
CODE_12990D:        A6 00         LDX $00                   
CODE_12990F:        68            PLA                       
CODE_129910:        9D 77 04      STA $0477,x               
CODE_129913:        A9 3C         LDA #$3C                  
CODE_129915:        95 90         STA $90,x                 
CODE_129917:        A5 28         LDA $28                   
CODE_129919:        69 08         ADC #$08                  
CODE_12991B:        29 F0         AND #$F0                  
CODE_12991D:        95 29         STA $29,x                 
CODE_12991F:        A5 14         LDA $14                   
CODE_129921:        69 00         ADC #$00                  
CODE_129923:        95 15         STA $15,x                 
CODE_129925:        A0 00         LDY #$00                  
CODE_129927:        AD 36 05      LDA $0536                 
CODE_12992A:        C9 01         CMP #$01                  
CODE_12992C:        F0 02         BEQ CODE_129930           
CODE_12992E:        A0 01         LDY #$01                  
CODE_129930:        98            TYA                       
CODE_129931:        18            CLC                       
CODE_129932:        65 32         ADC $32                   
CODE_129934:        95 33         STA $33,x                 
CODE_129936:        A5 1E         LDA $1E                   
CODE_129938:        69 00         ADC #$00                  
CODE_12993A:        95 1F         STA $1F,x                 
CODE_12993C:        A9 41         LDA #$41                  
CODE_12993E:        95 65         STA $65,x                 
CODE_129940:        A6 12         LDX $12                   
CODE_129942:        60            RTS
                       
CODE_129943:        68            PLA                       
CODE_129944:        60            RTS
                       
CODE_129945:        20 A9 9A      JSR CODE_129AA9           
CODE_129948:        30 25         BMI CODE_12996F           
CODE_12994A:        A6 00         LDX $00                   
CODE_12994C:        A9 45         LDA #$45                  
CODE_12994E:        95 90         STA $90,x                 
CODE_129950:        AD C1 04      LDA $04C1                 
CODE_129953:        69 D0         ADC #$D0                  
CODE_129955:        95 29         STA $29,x                 
CODE_129957:        AD BF 04      LDA $04BF                 
CODE_12995A:        69 00         ADC #$00                  
CODE_12995C:        95 15         STA $15,x                 
CODE_12995E:        A5 CB         LDA $CB                   
CODE_129960:        69 E0         ADC #$E0                  
CODE_129962:        95 33         STA $33,x                 
CODE_129964:        A5 CA         LDA $CA                   
CODE_129966:        69 00         ADC #$00                  
CODE_129968:        95 1F         STA $1F,x                 
CODE_12996A:        20 A4 99      JSR CODE_1299A4           
CODE_12996D:        A6 12         LDX $12                   
CODE_12996F:        60            RTS
                       
CODE_129970:        A9 00         LDA #$00                  
CODE_129972:        95 86         STA $86,x                 
CODE_129974:        A9 00         LDA #$00                  
CODE_129976:        95 79         STA $79,x                 
CODE_129978:        A9 00         LDA #$00                  
CODE_12997A:        95 B1         STA $B1,x                 
CODE_12997C:        9D 2F 04      STA $042F,x               
CODE_12997F:        95 A8         STA $A8,x                 
CODE_129981:        95 9F         STA $9F,x                 
CODE_129983:        9D 4A 04      STA $044A,x               
CODE_129986:        95 5B         STA $5B,x                 
CODE_129988:        9D 38 04      STA $0438,x               
CODE_12998B:        9D 53 04      STA $0453,x               
CODE_12998E:        9D CD 04      STA $04CD,x               
CODE_129991:        9D D7 04      STA $04D7,x               
CODE_129994:        9D 5C 04      STA $045C,x               
CODE_129997:        9D 77 04      STA $0477,x               
CODE_12999A:        9D 80 04      STA $0480,x               
CODE_12999D:        9D 65 04      STA $0465,x               
CODE_1299A0:        95 47         STA $47,x                 
CODE_1299A2:        95 3D         STA $3D,x                 
CODE_1299A4:        B4 90         LDY $90,x                 
CODE_1299A6:        B9 45 CC      LDA.w DATA_11CC45,y               
CODE_1299A9:        29 7F         AND #$7F                  
CODE_1299AB:        95 65         STA $65,x                 
CODE_1299AD:        B9 8C CC      LDA.w DATA_11CC8C,y               
CODE_1299B0:        9D 6E 04      STA $046E,x               
CODE_1299B3:        B9 1A CD      LDA.w DATA_11CD1A,y               
CODE_1299B6:        9D 89 04      STA $0489,x               
CODE_1299B9:        B9 D3 CC      LDA.w DATA_11CCD3,y               
CODE_1299BC:        9D 92 04      STA $0492,x               
CODE_1299BF:        60            RTS
                       
CODE_1299C0:        B5 65         LDA $65,x                 
CODE_1299C2:        29 FC         AND #$FC                  
CODE_1299C4:        09 01         ORA #$01                  
CODE_1299C6:        95 65         STA $65,x                 
CODE_1299C8:        A9 05         LDA #$05                  
CODE_1299CA:        95 51         STA $51,x                 
CODE_1299CC:        95 9F         STA $9F,x                 
CODE_1299CE:        A9 1F         LDA #$1F                  
CODE_1299D0:        95 86         STA $86,x                 
CODE_1299D2:        A6 12         LDX $12                   
CODE_1299D4:        60            RTS
                       
CODE_1299D5:        A9 FF         LDA #$FF                  
CODE_1299D7:        9D 41 04      STA $0441,x               
CODE_1299DA:        60            RTS
                       
CODE_1299DB:        A6 E9         LDX $E9                   
CODE_1299DD:        20 E8 99      JSR CODE_1299E8           
CODE_1299E0:        A5 E6         LDA $E6                   
CODE_1299E2:        18            CLC                       
CODE_1299E3:        65 E5         ADC $E5                   
CODE_1299E5:        85 E7         STA $E7                   
CODE_1299E7:        60            RTS
                       
CODE_1299E8:        8C F5 02      STY $02F5                 
CODE_1299EB:        AD 28 06      LDA $0628                 
CODE_1299EE:        F0 04         BEQ CODE_1299F4           
CODE_1299F0:        A9 00         LDA #$00                  
CODE_1299F2:        80 06         BRA CODE_1299FA           

CODE_1299F4:        AC 34 05      LDY $0534                 
CODE_1299F7:        B9 11 AB      LDA.w DATA_11AB11,y               
CODE_1299FA:        18            CLC                       
CODE_1299FB:        7D FB AA      ADC.w DATA_11AAFB,x               
CODE_1299FE:        85 02         STA $02                   
CODE_129A00:        BD F0 AA      LDA.w DATA_11AAF0,x               
CODE_129A03:        85 01         STA $01                   
CODE_129A05:        BD 06 AB      LDA.w DATA_11AB06,x               
CODE_129A08:        85 03         STA $03                   
CODE_129A0A:        AC F5 02      LDY $02F5                 
CODE_129A0D:        60            RTS
                       
CODE_129A0E:        A9 01         LDA #$01                  
CODE_129A10:        A4 00         LDY $00                   
CODE_129A12:        C0 92         CPY #$92                  
CODE_129A14:        F0 09         BEQ CODE_129A1F           
CODE_129A16:        C0 93         CPY #$93                  
CODE_129A18:        F0 03         BEQ CODE_129A1D           
CODE_129A1A:        A9 00         LDA #$00                  
CODE_129A1C:        60            RTS
                       
CODE_129A1D:        A9 08         LDA #$08                  
CODE_129A1F:        85 46         STA $46                   
CODE_129A21:        AD E0 04      LDA $04E0                 
CODE_129A24:        D0 07         BNE CODE_129A2D           
CODE_129A26:        A5 32         LDA $32                   
CODE_129A28:        29 10         AND #$10                  
CODE_129A2A:        8D EC 04      STA $04EC                 
CODE_129A2D:        A5 32         LDA $32                   
CODE_129A2F:        29 0F         AND #$0F                  
CODE_129A31:        A8            TAY                       
CODE_129A32:        AD EC 04      LDA $04EC                 
CODE_129A35:        45 32         EOR $32                   
CODE_129A37:        29 10         AND #$10                  
CODE_129A39:        F0 0E         BEQ CODE_129A49           
CODE_129A3B:        C0 0C         CPY #$0C                  
CODE_129A3D:        90 08         BCC CODE_129A47           
CODE_129A3F:        A9 00         LDA #$00                  ; \ Don't remain in air.
CODE_129A41:        85 82         STA $82                   ; /
CODE_129A43:        22 9F E3 14   JSL CODE_14E39F           ; Die.
CODE_129A47:        A0 04         LDY #$04                  
CODE_129A49:        C0 04         CPY #$04                  
CODE_129A4B:        B0 02         BCS CODE_129A4F                   
CODE_129A4D:        A0 01         LDY #$01                  
CODE_129A4F:        98            TYA                       
CODE_129A50:        CA            DEX                       
CODE_129A51:        60            RTS
                       
CODE_129A52:        A5 85         LDA $85                   
CODE_129A54:        D0 29         BNE CODE_129A7F           
CODE_129A56:        AD C3 04      LDA $04C3                 
CODE_129A59:        38            SEC                       
CODE_129A5A:        E9 10         SBC #$10                  
CODE_129A5C:        90 22         BCC CODE_129A80           
CODE_129A5E:        8D C3 04      STA $04C3                 
CODE_129A61:        A9 7F         LDA #$7F                  
CODE_129A63:        85 85         STA $85                   
CODE_129A65:        AD 28 04      LDA $0428                 
CODE_129A68:        38            SEC                       
CODE_129A69:        ED 29 04      SBC $0429                 
CODE_129A6C:        0A            ASL A                     
CODE_129A6D:        0A            ASL A                     
CODE_129A6E:        85 3C         STA $3C                   
CODE_129A70:        A9 C0         LDA #$C0                  
CODE_129A72:        A4 46         LDY $46                   
CODE_129A74:        10 02         BPL CODE_129A78           
CODE_129A76:        A9 00         LDA #$00                  
CODE_129A78:        85 46         STA $46                   
CODE_129A7A:        A9 04         LDA #$04                  
CODE_129A7C:        8D E0 1D      STA $1DE0                 
CODE_129A7F:        60            RTS
                       
CODE_129A80:        A9 C0         LDA #$C0                  ; \ Rise for a bit while dying.
CODE_129A82:        85 46         STA $46                   ; /
CODE_129A84:        A9 20         LDA #$20                  ; \ Remain in air for a couple of frames.
CODE_129A86:        85 82         STA $82                   ; /
CODE_129A88:        A4 12         LDY $12                   
CODE_129A8A:        30 04         BMI CODE_129A90           
CODE_129A8C:        4A            LSR A                     
CODE_129A8D:        99 38 04      STA $0438,y               
CODE_129A90:        22 9F E3 14   JSL CODE_14E39F           ; Die.
CODE_129A94:        60            RTS
                       
CODE_129A95:        BC 41 04      LDY $0441,x               
CODE_129A98:        30 06         BMI CODE_129AA0           
CODE_129A9A:        B1 CC         LDA ($CC),y               
CODE_129A9C:        29 7F         AND #$7F                  
CODE_129A9E:        91 CC         STA ($CC),y               
CODE_129AA0:        A9 00         LDA #$00                  
CODE_129AA2:        95 51         STA $51,x                 
CODE_129AA4:        60            RTS
                       
CODE_129AA5:        A0 08         LDY #$08                  
CODE_129AA7:        D0 02         BNE CODE_129AAB           
CODE_129AA9:        A0 05         LDY #$05                  
CODE_129AAB:        B9 51 00      LDA $0051,y               
CODE_129AAE:        F0 04         BEQ CODE_129AB4           
CODE_129AB0:        88            DEY                       
CODE_129AB1:        10 F8         BPL CODE_129AAB           
CODE_129AB3:        60            RTS
                       
CODE_129AB4:        A9 01         LDA #$01                  
CODE_129AB6:        99 51 00      STA $0051,y               
CODE_129AB9:        4A            LSR A                     
CODE_129ABA:        99 9B 04      STA $049B,y               
CODE_129ABD:        A9 01         LDA #$01                  
CODE_129ABF:        99 90 00      STA $0090,y               
CODE_129AC2:        B5 29         LDA $29,x                 
CODE_129AC4:        69 05         ADC #$05                  
CODE_129AC6:        99 29 00      STA $0029,y               
CODE_129AC9:        B5 15         LDA $15,x                 
CODE_129ACB:        69 00         ADC #$00                  
CODE_129ACD:        99 15 00      STA $0015,y               
CODE_129AD0:        B5 33         LDA $33,x                 
CODE_129AD2:        99 33 00      STA $0033,y               
CODE_129AD5:        B5 1F         LDA $1F,x                 
CODE_129AD7:        99 1F 00      STA $001F,y               
CODE_129ADA:        84 00         STY $00                   
CODE_129ADC:        98            TYA                       
CODE_129ADD:        AA            TAX                       
CODE_129ADE:        20 70 99      JSR CODE_129970           
CODE_129AE1:        20 D5 99      JSR CODE_1299D5           
CODE_129AE4:        A6 12         LDX $12                   
CODE_129AE6:        60            RTS
                       
DATA_129AE7:        db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ; \ Empty.
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF                                  ; /

CODE_129B00:        AD AE 04      LDA $04AE             
CODE_129B03:        F0 04         BEQ CODE_129B09           
CODE_129B05:        20 64 9C      JSR CODE_129C64           
CODE_129B08:        6B            RTL
                       
CODE_129B09:        EE AE 04      INC $04AE                 
CODE_129B0C:        8D 93 05      STA $0593                 
CODE_129B0F:        8D C5 04      STA $04C5                 
CODE_129B12:        8D C7 04      STA $04C7                 
CODE_129B15:        8D B5 04      STA $04B5                 
CODE_129B18:        8D B4 04      STA $04B4                 
CODE_129B1B:        8D B9 04      STA $04B9                 
CODE_129B1E:        8D B6 04      STA $04B6                 
CODE_129B21:        8D FB 04      STA $04FB                 
CODE_129B24:        8D 25 04      STA $0425                 
CODE_129B27:        85 3C         STA $3C                   
CODE_129B29:        85 85         STA $85                   
CODE_129B2B:        85 9C         STA $9C                   
CODE_129B2D:        85 82         STA $82                   
CODE_129B2F:        8D C6 04      STA $04C6                 
CODE_129B32:        8D FE 04      STA $04FE                 
CODE_129B35:        8D CB 04      STA $04CB                 
CODE_129B38:        8D CA 04      STA $04CA                 
CODE_129B3B:        8D E0 04      STA $04E0                 
CODE_129B3E:        8D B8 04      STA $04B8                 
CODE_129B41:        A0 1B         LDY #$1B                  
CODE_129B43:        B9 47 AB      LDA.w DATA_11AB47,y               
CODE_129B46:        99 00 1F      STA $1F00,y               
CODE_129B49:        88            DEY                       
CODE_129B4A:        10 F7         BPL CODE_129B43           
CODE_129B4C:        A4 8F         LDY $8F                   
CODE_129B4E:        B9 80 97      LDA.w DATA_119780,y               
CODE_129B51:        8D 00 1F      STA $1F00                 
CODE_129B54:        B9 88 97      LDA.w DATA_119788,y               
CODE_129B57:        8D 07 1F      STA $1F07                 
CODE_129B5A:        B9 84 97      LDA.w DATA_119784,y               
CODE_129B5D:        8D 0E 1F      STA $1F0E                 
CODE_129B60:        B9 8C 97      LDA.w DATA_11978C,y               
CODE_129B63:        8D 15 1F      STA $1F15                 
CODE_129B66:        A9 B6         LDA #$B6                  
CODE_129B68:        8D 85 05      STA $0585                 
CODE_129B6B:        AD 36 05      LDA $0536                 ; \ If the current room is the first room...
CODE_129B6E:        0D 33 05      ORA $0533                 ;  | of the first level...
CODE_129B71:        D0 05         BNE CODE_129B78           ; / ...don't branch, otherwise do branch.
CODE_129B73:        A9 23         LDA #$23                  ; \ Falling sound.
CODE_129B75:        8D E0 1D      STA $1DE0                 ; /
CODE_129B78:        AD AF 04      LDA $04AF                 
CODE_129B7B:        D0 03         BNE CODE_129B80           
CODE_129B7D:        4C FF 9B      JMP CODE_129BFF           

CODE_129B80:        48            PHA                       
CODE_129B81:        A2 08         LDX #$08                  
CODE_129B83:        A9 00         LDA #$00                  
CODE_129B85:        95 A8         STA $A8,x                 
CODE_129B87:        CA            DEX                       
CODE_129B88:        10 F9         BPL CODE_129B83           
CODE_129B8A:        68            PLA                       
CODE_129B8B:        A2 05         LDX #$05                  
CODE_129B8D:        86 12         STX $12                   
CODE_129B8F:        C9 3F         CMP #$3F                  
CODE_129B91:        F0 6C         BEQ CODE_129BFF           
CODE_129B93:        95 90         STA $90,x                 
CODE_129B95:        A0 01         LDY #$01                  
CODE_129B97:        84 56         STY $56                   
CODE_129B99:        A0 FF         LDY #$FF                  
CODE_129B9B:        8C 46 04      STY $0446                 
CODE_129B9E:        C9 38         CMP #$38                  
CODE_129BA0:        D0 1E         BNE CODE_129BC0           
CODE_129BA2:        95 B1         STA $B1,x                 
CODE_129BA4:        9D C8 04      STA $04C8,x               
CODE_129BA7:        9D 77 04      STA $0477,x               
CODE_129BAA:        A9 00         LDA #$00                  
CODE_129BAC:        95 15         STA $15,x                 
CODE_129BAE:        95 1F         STA $1F,x                 
CODE_129BB0:        20 7A 9F      JSR CODE_129F7A           
CODE_129BB3:        A9 F0         LDA #$F0                  
CODE_129BB5:        95 47         STA $47,x                 
CODE_129BB7:        0A            ASL A                     
CODE_129BB8:        95 33         STA $33,x                 
CODE_129BBA:        A9 78         LDA #$78                  
CODE_129BBC:        95 29         STA $29,x                 
CODE_129BBE:        D0 3F         BNE CODE_129BFF           
CODE_129BC0:        48            PHA                       
CODE_129BC1:        8E 2D 04      STX $042D                 
CODE_129BC4:        20 96 9F      JSR CODE_129F96           
CODE_129BC7:        A9 01         LDA #$01                  
CODE_129BC9:        95 A8         STA $A8,x                 
CODE_129BCB:        85 9C         STA $9C                   
CODE_129BCD:        20 92 B6      JSR CODE_12B692           
CODE_129BD0:        68            PLA                       
CODE_129BD1:        C9 3D         CMP #$3D                  
CODE_129BD3:        D0 2A         BNE CODE_129BFF           
CODE_129BD5:        F6 79         INC $79,x                 
CODE_129BD7:        CA            DEX                       
CODE_129BD8:        86 12         STX $12                   
CODE_129BDA:        A9 01         LDA #$01                  
CODE_129BDC:        95 51         STA $51,x                 
CODE_129BDE:        A9 17         LDA #$17                  
CODE_129BE0:        95 90         STA $90,x                 
CODE_129BE2:        20 96 9F      JSR CODE_129F96           
CODE_129BE5:        A9 00         LDA #$00                  
CODE_129BE7:        8D 95 05      STA $0595                 
CODE_129BEA:        A5 CB         LDA $CB                   
CODE_129BEC:        95 33         STA $33,x                 
CODE_129BEE:        A5 CA         LDA $CA                   
CODE_129BF0:        95 1F         STA $1F,x                 
CODE_129BF2:        AD C1 04      LDA $04C1                 
CODE_129BF5:        95 29         STA $29,x                 
CODE_129BF7:        AD BF 04      LDA $04BF                 
CODE_129BFA:        95 15         STA $15,x                 
CODE_129BFC:        20 9C A0      JSR CODE_12A09C           
CODE_129BFF:        64 CC         STZ $CC                   
CODE_129C01:        A9 1B         LDA #$1B                  
CODE_129C03:        85 CD         STA $CD                   
CODE_129C05:        A5 EB         LDA $EB                   
CODE_129C07:        D0 32         BNE CODE_129C3B           
CODE_129C09:        A9 14         LDA #$14                  
CODE_129C0B:        85 09         STA $09                   
CODE_129C0D:        A5 CB         LDA $CB                   
CODE_129C0F:        E9 30         SBC #$30                  
CODE_129C11:        29 F0         AND #$F0                  
CODE_129C13:        85 05         STA $05                   
CODE_129C15:        A5 CA         LDA $CA                   
CODE_129C17:        E9 00         SBC #$00                  
CODE_129C19:        85 06         STA $06                   
CODE_129C1B:        A5 06         LDA $06                   
CODE_129C1D:        C9 0B         CMP #$0B                  
CODE_129C1F:        B0 06         BCS CODE_129C27                   
CODE_129C21:        20 26 9E      JSR CODE_129E26           
CODE_129C24:        20 26 9E      JSR CODE_129E26           
CODE_129C27:        20 2F 9C      JSR CODE_129C2F           
CODE_129C2A:        C6 09         DEC $09                   
CODE_129C2C:        10 ED         BPL CODE_129C1B           
CODE_129C2E:        6B            RTL
                       
CODE_129C2F:        A5 05         LDA $05                   
CODE_129C31:        18            CLC                       
CODE_129C32:        69 10         ADC #$10                  
CODE_129C34:        85 05         STA $05                   
CODE_129C36:        90 02         BCC CODE_129C3A           
CODE_129C38:        E6 06         INC $06                   
CODE_129C3A:        60            RTS
                       
CODE_129C3B:        AD C1 04      LDA $04C1                 
CODE_129C3E:        38            SEC                       
CODE_129C3F:        E9 30         SBC #$30                  
CODE_129C41:        29 F0         AND #$F0                  
CODE_129C43:        85 05         STA $05                   
CODE_129C45:        AD BF 04      LDA $04BF                 
CODE_129C48:        E9 00         SBC #$00                  
CODE_129C4A:        85 06         STA $06                   
CODE_129C4C:        A9 17         LDA #$17                  
CODE_129C4E:        85 09         STA $09                   
CODE_129C50:        A5 06         LDA $06                   
CODE_129C52:        C9 0B         CMP #$0B                  
CODE_129C54:        B0 06         BCS CODE_129C5C                   
CODE_129C56:        20 92 9D      JSR CODE_129D92           
CODE_129C59:        20 92 9D      JSR CODE_129D92           
CODE_129C5C:        20 2F 9C      JSR CODE_129C2F           
CODE_129C5F:        C6 09         DEC $09                   
CODE_129C61:        10 ED         BPL CODE_129C50           
CODE_129C63:        6B            RTL
                       
CODE_129C64:        20 6A 9D      JSR CODE_129D6A           
CODE_129C67:        AD 00 05      LDA $0500                 
CODE_129C6A:        F0 16         BEQ CODE_129C82           
CODE_129C6C:        A5 10         LDA $10                   
CODE_129C6E:        29 1F         AND #$1F                  
CODE_129C70:        D0 0A         BNE CODE_129C7C           
CODE_129C72:        AC 9C 07      LDY $079C                 
CODE_129C75:        D0 05         BNE CODE_129C7C           
CODE_129C77:        A0 2F         LDY #$2F                  
CODE_129C79:        8C E0 1D      STY $1DE0                 
CODE_129C7C:        4A            LSR A                     
CODE_129C7D:        90 03         BCC CODE_129C82           
CODE_129C7F:        CE 00 05      DEC $0500                 
CODE_129C82:        AD C1 04      LDA $04C1                 
CODE_129C85:        18            CLC                       
CODE_129C86:        69 FF         ADC #$FF                  
CODE_129C88:        8D C2 04      STA $04C2                 
CODE_129C8B:        AD BF 04      LDA $04BF                 
CODE_129C8E:        69 00         ADC #$00                  
CODE_129C90:        8D C0 04      STA $04C0                 
CODE_129C93:        A2 08         LDX #$08                  
CODE_129C95:        86 12         STX $12                   
CODE_129C97:        8A            TXA                       
CODE_129C98:        18            CLC                       
CODE_129C99:        6D 00 04      ADC $0400                 
CODE_129C9C:        0A            ASL A                     
CODE_129C9D:        A8            TAY                       
CODE_129C9E:        C2 20         REP #$20                  
CODE_129CA0:        B9 23 CC      LDA.w DATA_11CC23,y               
CODE_129CA3:        B4 A8         LDY $A8,x                 
CODE_129CA5:        F0 14         BEQ CODE_129CBB           
CODE_129CA7:        AC BE 04      LDY $04BE                 
CODE_129CAA:        C0 19         CPY #$19                  
CODE_129CAC:        B0 0D         BCS CODE_129CBB                   
CODE_129CAE:        A9 70 00      LDA #$0070                
CODE_129CB1:        B4 90         LDY $90,x                 
CODE_129CB3:        C9 38 00      CMP #$0038                
CODE_129CB6:        D0 03         BNE CODE_129CBB           
CODE_129CB8:        A9 20 00      LDA #$0020                
CODE_129CBB:        8D F6 02      STA $02F6                 
CODE_129CBE:        E2 20         SEP #$20                  
CODE_129CC0:        B5 51         LDA $51,x                 
CODE_129CC2:        C9 02         CMP #$02                  
CODE_129CC4:        B0 0B         BCS CODE_129CD1                   
CODE_129CC6:        B5 90         LDA $90,x                 
CODE_129CC8:        C9 32         CMP #$32                  
CODE_129CCA:        B0 05         BCS CODE_129CD1                   
CODE_129CCC:        AD 00 05      LDA $0500                 
CODE_129CCF:        D0 0E         BNE CODE_129CDF           
CODE_129CD1:        B5 86         LDA $86,x                 
CODE_129CD3:        F0 02         BEQ CODE_129CD7           
CODE_129CD5:        D6 86         DEC $86,x                 
CODE_129CD7:        BD 53 04      LDA $0453,x               
CODE_129CDA:        F0 03         BEQ CODE_129CDF           
CODE_129CDC:        DE 53 04      DEC $0453,x               
CODE_129CDF:        BD 5C 04      LDA $045C,x               
CODE_129CE2:        F0 03         BEQ CODE_129CE7           
CODE_129CE4:        DE 5C 04      DEC $045C,x               
CODE_129CE7:        BD 38 04      LDA $0438,x               
CODE_129CEA:        F0 08         BEQ CODE_129CF4           
CODE_129CEC:        A5 10         LDA $10                   
CODE_129CEE:        4A            LSR A                     
CODE_129CEF:        90 03         BCC CODE_129CF4           
CODE_129CF1:        DE 38 04      DEC $0438,x               
CODE_129CF4:        20 21 9D      JSR CODE_129D21           
CODE_129CF7:        20 60 BB      JSR CODE_12BB60           
CODE_129CFA:        20 50 9D      JSR CODE_129D50           
CODE_129CFD:        A6 12         LDX $12                   
CODE_129CFF:        CA            DEX                       
CODE_129D00:        10 93         BPL CODE_129C95           
CODE_129D02:        AD 28 06      LDA $0628                 
CODE_129D05:        D0 19         BNE CODE_129D20           
CODE_129D07:        AD B9 04      LDA $04B9                 
CODE_129D0A:        F0 14         BEQ CODE_129D20           
CODE_129D0C:        38            SEC                       
CODE_129D0D:        E9 47         SBC #$47                  
CODE_129D0F:        22 76 87 11   JSL CODE_118776  

PNTR_129D13:        dw CODE_12AA48
                    dw CODE_12AA79
                    dw CODE_129D1B
                    dw CODE_12DAF6          

CODE_129D1B:        A9 00         LDA #$00                  
CODE_129D1D:        8D B9 04      STA $04B9                 
CODE_129D20:        60            RTS
                       
CODE_129D21:        A0 00         LDY #$00                  
CODE_129D23:        20 27 9D      JSR CODE_129D27           
CODE_129D26:        C8            INY                       
CODE_129D27:        AD 85 05      LDA $0585                 
CODE_129D2A:        0A            ASL A                     
CODE_129D2B:        0A            ASL A                     
CODE_129D2C:        38            SEC                       
CODE_129D2D:        6D 85 05      ADC $0585                 
CODE_129D30:        8D 85 05      STA $0585                 
CODE_129D33:        0E 86 05      ASL $0586                 
CODE_129D36:        A9 20         LDA #$20                  
CODE_129D38:        2C 86 05      BIT $0586                 
CODE_129D3B:        90 04         BCC CODE_129D41           
CODE_129D3D:        F0 07         BEQ CODE_129D46           
CODE_129D3F:        D0 02         BNE CODE_129D43           
CODE_129D41:        D0 03         BNE CODE_129D46           
CODE_129D43:        EE 86 05      INC $0586                 
CODE_129D46:        AD 86 05      LDA $0586                 
CODE_129D49:        4D 85 05      EOR $0585                 
CODE_129D4C:        99 87 05      STA $0587,y               
CODE_129D4F:        60            RTS
                       
CODE_129D50:        B5 51         LDA $51,x                 ; \ Load sprite status.
CODE_129D52:        22 76 87 11   JSL CODE_118776           ; / Execute pointer.

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

CODE_129D6A:        AD B8 04      LDA $04B8                 
CODE_129D6D:        D0 51         BNE CODE_129DC0           
CODE_129D6F:        A5 EB         LDA $EB                   
CODE_129D71:        22 76 87 11   JSL CODE_118776           

PNTR_129D75:        dw CODE_129E02
                    dw CODE_129D79       

CODE_129D79:        A4 6E         LDY $6E                   
CODE_129D7B:        AD C1         LDA $04C1                 
CODE_129D7E:        18            CLC                       
CODE_129D7F:        79 8F 97      ADC.w DATA_11978F,y         
CODE_129D82:        29 F0         AND #$F0                  
CODE_129D84:        85 05         STA $05                   
CODE_129D86:        AD BF 04      LDA $04BF                 
CODE_129D89:        79 91 97      ADC.w DATA_119791,y         
CODE_129D8C:        85 06         STA $06                   
CODE_129D8E:        C9 0A         CMP #$0A                  
CODE_129D90:        B0 2E         BCS CODE_129DC0           
CODE_129D92:        AD 28 06      LDA $0628                 
CODE_129D95:        C9 02         CMP #$02                  
CODE_129D97:        F0 27         BEQ CODE_129DC0           
CODE_129D99:        A2 00         LDX #$00                  
CODE_129D9B:        86 00         STX $00                   
CODE_129D9D:        E4 06         CPX $06                   
CODE_129D9F:        F0 0C         BEQ CODE_129DAD           
CODE_129DA1:        A5 00         LDA $00                   
CODE_129DA3:        A8            TAY                       
CODE_129DA4:        18            CLC                       
CODE_129DA5:        71 CC         ADC ($CC),y               
CODE_129DA7:        85 00         STA $00                   
CODE_129DA9:        E8            INX                       
CODE_129DAA:        4C 9D 9D      JMP CODE_129D9D           

CODE_129DAD:        A4 00         LDY $00                   
CODE_129DAF:        B1 CC         LDA ($CC),y               
CODE_129DB1:        85 01         STA $01                   
CODE_129DB3:        A2 FF         LDX #$FF                  
CODE_129DB5:        88            DEY                       
CODE_129DB6:        C8            INY                       
CODE_129DB7:        C8            INY                       
CODE_129DB8:        E8            INX                       
CODE_129DB9:        E8            INX                       
CODE_129DBA:        E4 01         CPX $01                   
CODE_129DBC:        90 03         BCC CODE_129DC1           
CODE_129DBE:        A6 12         LDX $12                   
CODE_129DC0:        60            RTS
                       
CODE_129DC1:        B1 CC         LDA ($CC),y               
CODE_129DC3:        30 F1         BMI CODE_129DB6           
CODE_129DC5:        C8            INY                       
CODE_129DC6:        B1 CC         LDA ($CC),y               
CODE_129DC8:        88            DEY                       
CODE_129DC9:        29 F0         AND #$F0                  
CODE_129DCB:        C5 05         CMP $05                   
CODE_129DCD:        D0 E7         BNE CODE_129DB6           
CODE_129DCF:        B1 CC         LDA ($CC),y               
CODE_129DD1:        C9 5C         CMP #$5C                  
CODE_129DD3:        B0 08         BCS CODE_129DDD                   
CODE_129DD5:        C9 47         CMP #$47                  
CODE_129DD7:        90 04         BCC CODE_129DDD           
CODE_129DD9:        8D B9 04      STA $04B9                 
CODE_129DDC:        60            RTS
                       
CODE_129DDD:        A2 04         LDX #$04                  
CODE_129DDF:        B5 51         LDA $51,x                 
CODE_129DE1:        F0 04         BEQ CODE_129DE7           
CODE_129DE3:        CA            DEX                       
CODE_129DE4:        10 F9         BPL CODE_129DDF           
CODE_129DE6:        60            RTS
                       
CODE_129DE7:        86 12         STX $12                   
CODE_129DE9:        A5 05         LDA $05                   
CODE_129DEB:        95 29         STA $29,x                 
CODE_129DED:        A5 06         LDA $06                   
CODE_129DEF:        95 15         STA $15,x                 
CODE_129DF1:        C8            INY                       
CODE_129DF2:        B1 CC         LDA ($CC),y               
CODE_129DF4:        88            DEY                       
CODE_129DF5:        0A            ASL A                     
CODE_129DF6:        0A            ASL A                     
CODE_129DF7:        0A            ASL A                     
CODE_129DF8:        0A            ASL A                     
CODE_129DF9:        95 33         STA $33,x                 
CODE_129DFB:        A9 00         LDA #$00                  
CODE_129DFD:        95 1F         STA $1F,x                 
CODE_129DFF:        4C 8C 9E      JMP CODE_129E8C           

CODE_129E02:        A5 10         LDA $10                   
CODE_129E04:        29 01         AND #$01                  
CODE_129E06:        A8            TAY                       
CODE_129E07:        C8            INY                       
CODE_129E08:        A5 D8         LDA $D8                   
CODE_129E0A:        F0 05         BEQ CODE_129E11           
CODE_129E0C:        29 03         AND #$03                  
CODE_129E0E:        49 03         EOR #$03                  
CODE_129E10:        A8            TAY                       
CODE_129E11:        A5 CB         LDA $CB                   
CODE_129E13:        18            CLC                       
CODE_129E14:        79 8F 97      ADC.w DATA_11978F,y               
CODE_129E17:        29 F0         AND #$F0                  
CODE_129E19:        85 05         STA $05                   
CODE_129E1B:        A5 CA         LDA $CA                   
CODE_129E1D:        79 91 97      ADC.w DATA_119791,y               
CODE_129E20:        85 06         STA $06                   
CODE_129E22:        C9 0A         CMP #$0A                  
CODE_129E24:        B0 9A         BCS CODE_129DC0                   
CODE_129E26:        A2 00         LDX #$00                  
CODE_129E28:        86 00         STX $00                   
CODE_129E2A:        E4 06         CPX $06                   
CODE_129E2C:        F0 0C         BEQ CODE_129E3A           
CODE_129E2E:        A5 00         LDA $00                   
CODE_129E30:        A8            TAY                       
CODE_129E31:        18            CLC                       
CODE_129E32:        71 CC         ADC ($CC),y               
CODE_129E34:        85 00         STA $00                   
CODE_129E36:        E8            INX                       
CODE_129E37:        4C 2A 9E      JMP CODE_129E2A           

CODE_129E3A:        A4 00         LDY $00                   
CODE_129E3C:        B1 CC         LDA ($CC),y               
CODE_129E3E:        85 01         STA $01                   
CODE_129E40:        A2 FF         LDX #$FF                  
CODE_129E42:        88            DEY                       
CODE_129E43:        C8            INY                       
CODE_129E44:        C8            INY                       
CODE_129E45:        E8            INX                       
CODE_129E46:        E8            INX                       
CODE_129E47:        E4 01         CPX $01                   
CODE_129E49:        90 03         BCC CODE_129E4E           
CODE_129E4B:        A6 12         LDX $12                   
CODE_129E4D:        60            RTS
                       
CODE_129E4E:        B1 CC         LDA ($CC),y               
CODE_129E50:        30 F1         BMI CODE_129E43           
CODE_129E52:        C8            INY                       
CODE_129E53:        B1 CC         LDA ($CC),y               
CODE_129E55:        88            DEY                       
CODE_129E56:        0A            ASL A                     
CODE_129E57:        0A            ASL A                     
CODE_129E58:        0A            ASL A                     
CODE_129E59:        0A            ASL A                     
CODE_129E5A:        C5 05         CMP $05                   
CODE_129E5C:        D0 E5         BNE CODE_129E43           
CODE_129E5E:        B1 CC         LDA ($CC),y               
CODE_129E60:        C9 5C         CMP #$5C                  
CODE_129E62:        B0 08         BCS CODE_129E6C                   
CODE_129E64:        C9 47         CMP #$47                  
CODE_129E66:        90 04         BCC CODE_129E6C           
CODE_129E68:        8D B9 04      STA $04B9                 
CODE_129E6B:        60            RTS
                       
CODE_129E6C:        A2 04         LDX #$04                  
CODE_129E6E:        B5 51         LDA $51,x                 
CODE_129E70:        F0 04         BEQ CODE_129E76           
CODE_129E72:        CA            DEX                       
CODE_129E73:        10 F9         BPL CODE_129E6E           
CODE_129E75:        60            RTS
                       
CODE_129E76:        86 12         STX $12                   
CODE_129E78:        A5 05         LDA $05                   
CODE_129E7A:        95 33         STA $33,x                 
CODE_129E7C:        A5 06         LDA $06                   
CODE_129E7E:        95 1F         STA $1F,x                 
CODE_129E80:        C8            INY                       
CODE_129E81:        B1 CC         LDA ($CC),y               
CODE_129E83:        88            DEY                       
CODE_129E84:        29 F0         AND #$F0                  
CODE_129E86:        95 29         STA $29,x                 
CODE_129E88:        A9 00         LDA #$00                  
CODE_129E8A:        95 15         STA $15,x                 
CODE_129E8C:        9D 9B 04      STA $049B,x               
CODE_129E8F:        84 0C         STY $0C                   
CODE_129E91:        B1 CC         LDA ($CC),y               
CODE_129E93:        29 3F         AND #$3F                  
CODE_129E95:        C9 32         CMP #$32                  
CODE_129E97:        B0 0F         BCS CODE_129EA8                   
CODE_129E99:        A5 EB         LDA $EB                   
CODE_129E9B:        F0 0B         BEQ CODE_129EA8           
CODE_129E9D:        20 DA C1      JSR CODE_12C1DA           
CODE_129EA0:        A5 0F         LDA $0F                   
CODE_129EA2:        69 18         ADC #$18                  
CODE_129EA4:        C9 30         CMP #$30                  
CODE_129EA6:        90 A5         BCC CODE_129E4D           
CODE_129EA8:        A4 0C         LDY $0C                   
CODE_129EAA:        B1 CC         LDA ($CC),y               
CODE_129EAC:        09 80         ORA #$80                  
CODE_129EAE:        91 CC         STA ($CC),y               
CODE_129EB0:        C9 DC         CMP #$DC                  
CODE_129EB2:        29 7F         AND #$7F                  
CODE_129EB4:        90 05         BCC CODE_129EBB           
CODE_129EB6:        29 3F         AND #$3F                  
CODE_129EB8:        9D 9B 04      STA $049B,x               
CODE_129EBB:        C9 1C         CMP #$1C                  
CODE_129EBD:        D0 08         BNE CODE_129EC7           
CODE_129EBF:        AE B5 04      LDX $04B5                 
CODE_129EC2:        F0 03         BEQ CODE_129EC7           
CODE_129EC4:        A6 12         LDX $12                   
CODE_129EC6:        60            RTS
                       
CODE_129EC7:        C9 17         CMP #$17                  
CODE_129EC9:        F0 04         BEQ CODE_129ECF           
CODE_129ECB:        C9 1D         CMP #$1D                  
CODE_129ECD:        D0 0D         BNE CODE_129EDC           
CODE_129ECF:        A2 05         LDX #$05                  
CODE_129ED1:        D5 90         CMP $90,x                 
CODE_129ED3:        F0 05         BEQ CODE_129EDA           
CODE_129ED5:        CA            DEX                       
CODE_129ED6:        10 F9         BPL CODE_129ED1           
CODE_129ED8:        80 02         BRA CODE_129EDC           

CODE_129EDA:        74 51         STZ $51,x                 
CODE_129EDC:        A6 12         LDX $12                   
CODE_129EDE:        95 90         STA $90,x                 
CODE_129EE0:        98            TYA                       
CODE_129EE1:        9D 41 04      STA $0441,x               
CODE_129EE4:        F6 51         INC $51,x                 ; Sprite status = init routine.
CODE_129EE6:        B5 90         LDA $90,x                 ; Jump to routine based on sprite number.
CODE_129EE8:        22 76 87 11   JSL CODE_118776           

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
                       
CODE_129F7A:        B4 90         LDY $90,x                 
CODE_129F7C:        B9 45 CC      LDA.w DATA_11CC45,y         
CODE_129F7F:        29 7F         AND #$7F                  
CODE_129F81:        95 65         STA $65,x                 
CODE_129F83:        B9 8C CC      LDA.w DATA_11CC8C,y         
CODE_129F86:        9D 6E 04      STA $046E,x               
CODE_129F89:        B9 1A CD      LDA.w DATA_11CD1A,y         
CODE_129F8C:        9D 89 04      STA $0489,x               
CODE_129F8F:        B9 D3 CC      LDA.w DATA_11CCD3,y         
CODE_129F92:        9D 92 04      STA $0492,x               
CODE_129F95:        60            RTS
                       
CODE_129F96:        74 86         STZ $86,x                 
CODE_129F98:        74 79         STZ $79,x                 
CODE_129F9A:        A9 00         LDA #$00                  
CODE_129F9C:        95 B1         STA $B1,x                 
CODE_129F9E:        9D 2F 04      STA $042F,x               
CODE_129FA1:        95 A8         STA $A8,x                 
CODE_129FA3:        95 9F         STA $9F,x                 
CODE_129FA5:        9D 4A 04      STA $044A,x               
CODE_129FA8:        95 5B         STA $5B,x                 
CODE_129FAA:        9D 38 04      STA $0438,x               
CODE_129FAD:        9D 53 04      STA $0453,x               
CODE_129FB0:        9D CD 04      STA $04CD,x               
CODE_129FB3:        9D D7 04      STA $04D7,x               
CODE_129FB6:        9D 5C 04      STA $045C,x               
CODE_129FB9:        9D 77 04      STA $0477,x               
CODE_129FBC:        9D 80 04      STA $0480,x               
CODE_129FBF:        9D 65 04      STA $0465,x               
CODE_129FC2:        9D 02 07      STA $0702,x               
CODE_129FC5:        9D 00 0D      STA $0D00,x               
CODE_129FC8:        95 47         STA $47,x                 
CODE_129FCA:        20 7A 9F      JSR CODE_129F7A           
CODE_129FCD:        20 DA C1      JSR CODE_12C1DA           
CODE_129FD0:        C8            INY                       
CODE_129FD1:        98            TYA                       
CODE_129FD2:        95 6F         STA $6F,x                 
CODE_129FD4:        B9 B0 97      LDA.w DATA_1197B0,y               
CODE_129FD7:        95 3D         STA $3D,x                 
CODE_129FD9:        BD 6E 04      LDA $046E,x               
CODE_129FDC:        29 40         AND #$40                  
CODE_129FDE:        F0 02         BEQ CODE_129FE2           
CODE_129FE0:        16 3D         ASL $3D,x                 
CODE_129FE2:        60            RTS
                       
CODE_129FE3:        20 96 9F      JSR CODE_129F96           
CODE_129FE6:        A4 6E         LDY $6E                   
CODE_129FE8:        AD C1 04      LDA $04C1                 
CODE_129FEB:        79 93 97      ADC.w DATA_119793,y               
CODE_129FEE:        95 29         STA $29,x                 
CODE_129FF0:        AD BF 04      LDA $04BF                 
CODE_129FF3:        69 00         ADC #$00                  
CODE_129FF5:        95 15         STA $15,x                 
CODE_129FF7:        A5 1E         LDA $1E                   
CODE_129FF9:        10 04         BPL CODE_129FFF           
CODE_129FFB:        A0 00         LDY #$00                  
CODE_129FFD:        F0 0A         BEQ CODE_12A009           
CODE_129FFF:        A5 32         LDA $32                   
CODE_12A001:        38            SEC                       
CODE_12A002:        E5 CB         SBC $CB                   
CODE_12A004:        4A            LSR A                     
CODE_12A005:        4A            LSR A                     
CODE_12A006:        4A            LSR A                     
CODE_12A007:        4A            LSR A                     
CODE_12A008:        A8            TAY                       
CODE_12A009:        B9 96 97      LDA.w DATA_119796,y               
CODE_12A00C:        95 47         STA $47,x                 
CODE_12A00E:        60            RTS
                       
CODE_12A00F:        20 96 9F      JSR CODE_129F96           
CODE_12A012:        A9 0C         LDA #$0C                  ; \ X speed = #$0C.
CODE_12A014:        95 3D         STA $3D,x                 ; /
CODE_12A016:        A9 A0         LDA #$A0                  ; \Phanto takeoff timer
CODE_12A018:        8D 95 05      STA $0595                 ; /
CODE_12A01B:        60            RTS
                       
CODE_12A01C:        20 96 9F      JSR CODE_129F96           
CODE_12A01F:        A9 FF         LDA #$FF                  
CODE_12A021:        95 86         STA $86,x                 
CODE_12A023:        60            RTS
                       
CODE_12A024:        20 6A DE      JSR CODE_12DE6A           
CODE_12A027:        20 45 A7      JSR CODE_12A745           
CODE_12A02A:        A5 D8         LDA $D8                   
CODE_12A02C:        29 04         AND #$04                  
CODE_12A02E:        F0 03         BEQ CODE_12A033           
CODE_12A030:        4C 29 BD      JMP CODE_12BD29           

CODE_12A033:        B5 51         LDA $51,x                 
CODE_12A035:        D0 6B         BNE CODE_12A0A2           
CODE_12A037:        BD 9B 04      LDA $049B,x               
CODE_12A03A:        F0 30         BEQ CODE_12A06C           
CODE_12A03C:        8D B8 04      STA $04B8                 
CODE_12A03F:        20 B4 BA      JSR CODE_12BAB4           
CODE_12A042:        20 1B 9D      JSR CODE_129D1B           
CODE_12A045:        A9 0B         LDA #$0B                  ; \ Boss is cleared.
CODE_12A047:        8D E2 1D      STA $1DE2                 ; /
CODE_12A04A:        BD F0 04      LDA $04F0,x               
CODE_12A04D:        95 15         STA $15,x                 
CODE_12A04F:        A9 80         LDA #$80                  
CODE_12A051:        95 29         STA $29,x                 
CODE_12A053:        0A            ASL A                     
CODE_12A054:        95 1F         STA $1F,x                 
CODE_12A056:        A9 B0         LDA #$B0                  
CODE_12A058:        B4 90         LDY $90,x                 
CODE_12A05A:        C0 21         CPY #$21                  
CODE_12A05C:        D0 02         BNE CODE_12A060           
CODE_12A05E:        A9 70         LDA #$70                  
CODE_12A060:        95 33         STA $33,x                 
CODE_12A062:        A9 41         LDA #$41                  
CODE_12A064:        95 65         STA $65,x                 
CODE_12A066:        9D 6E 04      STA $046E,x               
CODE_12A069:        4C F9 B1      JMP CODE_12B1F9           

CODE_12A06C:        B5 90         LDA $90,x                 
CODE_12A06E:        C9 1B         CMP #$1B                  
CODE_12A070:        F0 30         BEQ CODE_12A0A2           
CODE_12A072:        EE AD 04      INC $04AD                 
CODE_12A075:        AC AD 04      LDY $04AD                 
CODE_12A078:        C0 08         CPY #$08                  
CODE_12A07A:        90 26         BCC CODE_12A0A2           
CODE_12A07C:        A9 00         LDA #$00                  
CODE_12A07E:        8D AD 04      STA $04AD                 
CODE_12A081:        A9 01         LDA #$01                  
CODE_12A083:        95 51         STA $51,x                 
CODE_12A085:        95 65         STA $65,x                 
CODE_12A087:        A9 07         LDA #$07                  
CODE_12A089:        9D 6E 04      STA $046E,x               
CODE_12A08C:        A9 00         LDA #$00                  
CODE_12A08E:        95 90         STA $90,x                 
CODE_12A090:        B5 33         LDA $33,x                 
CODE_12A092:        E9 60         SBC #$60                  
CODE_12A094:        95 33         STA $33,x                 
CODE_12A096:        B5 1F         LDA $1F,x                 
CODE_12A098:        E9 00         SBC #$00                  
CODE_12A09A:        95 1F         STA $1F,x                 
CODE_12A09C:        A9 FF         LDA #$FF                  
CODE_12A09E:        9D 41 04      STA $0441,x               
CODE_12A0A1:        60            RTS
                       
CODE_12A0A2:        16 65         ASL $65,x                 
CODE_12A0A4:        38            SEC                       
CODE_12A0A5:        76 65         ROR $65,x                 
CODE_12A0A7:        20 29 BD      JSR CODE_12BD29           
CODE_12A0AA:        BD 4A 04      LDA $044A,x               
CODE_12A0AD:        D0 03         BNE CODE_12A0B2           
CODE_12A0AF:        20 EF C1      JSR CODE_12C1EF           
CODE_12A0B2:        20 EA C1      JSR CODE_12C1EA           
CODE_12A0B5:        B5 47         LDA $47,x                 ; \ Check if negative Y speed (rise up).
CODE_12A0B7:        30 04         BMI CODE_12A0BD           ; / If so, decrease rising speed.
CODE_12A0B9:        C9 3E         CMP #$3E                  ; \ Check if falling at maximum speed.
CODE_12A0BB:        B0 04         BCS CODE_12A0C1           ; / If so, return, and don't fall any faster.
CODE_12A0BD:        F6 47         INC $47,x                 ; \ Gravity.
CODE_12A0BF:        F6 47         INC $47,x                 ; /
CODE_12A0C1:        60            RTS                       ; Return.
                       
CODE_12A0C2:        20 45 A7      JSR CODE_12A745           
CODE_12A0C5:        B5 86         LDA $86,x                 
CODE_12A0C7:        D0 03         BNE CODE_12A0CC           
CODE_12A0C9:        4C B2 A5      JMP CODE_12A5B2           

CODE_12A0CC:        20 DA A0      JSR CODE_12A0DA           
CODE_12A0CF:        4C A1 A4      JMP CODE_12A4A1           

DATA_12A0D2:        db $00,$00,$EC,$EA

DATA_12A0D6:        db $00,$00,$F6,$00
                 
CODE_12A0DA:        B5 86         LDA $86,x                  
CODE_12A0DC:        29 18         AND #$18           
CODE_12A0DE:        4A            LSR A                     
CODE_12A0DF:        4A            LSR A                     
CODE_12A0E0:        4A            LSR A                     
CODE_12A0E1:        AA            TAX                       
CODE_12A0E2:        BF D2 A0 12   LDA.l DATA_12A0D2,x             
CODE_12A0E6:        F0 77         BEQ CODE_12A15F           
CODE_12A0E8:        8D 12 07      STA $0712                 
CODE_12A0EB:        BF D6 A0 12   LDA.l DATA_12A0D6,x             
CODE_12A0EF:        8D 13 07      STA $0713                 
CODE_12A0F2:        C2 10         REP #$10                  
CODE_12A0F4:        AC F6 02      LDY $02F6                 
CODE_12A0F7:        AD 29 04      LDA $0429                 
CODE_12A0FA:        99 00 08      STA $0800,y               
CODE_12A0FD:        AD 2C 04      LDA $042C                 
CODE_12A100:        18            CLC                       
CODE_12A101:        6D 13 07      ADC $0713                 
CODE_12A104:        99 01 08      STA $0801,y               
CODE_12A107:        AD 12 07      LDA $0712                 
CODE_12A10A:        99 02 08      STA $0802,y               
CODE_12A10D:        A9 2B         LDA #$2B                  
CODE_12A10F:        99 03 08      STA $0803,y               
CODE_12A112:        C2 20         REP #$20                  
CODE_12A114:        98            TYA                       
CODE_12A115:        4A            LSR A                     
CODE_12A116:        4A            LSR A                     
CODE_12A117:        A8            TAY                       
CODE_12A118:        E2 20         SEP #$20                  
CODE_12A11A:        A9 02         LDA #$02                  
CODE_12A11C:        99 20 0A      STA $0A20,y               
CODE_12A11F:        AD 29 04      LDA $0429                 
CODE_12A122:        C9 F0         CMP #$F0                  
CODE_12A124:        90 39         BCC CODE_12A15F           
CODE_12A126:        22 83 E4 14   JSL CODE_14E483           
CODE_12A12A:        C2 10         REP #$10                  
CODE_12A12C:        AC F6 02      LDY $02F6                 
CODE_12A12F:        AE F8 02      LDX $02F8                 
CODE_12A132:        B9 00 08      LDA $0800,y               
CODE_12A135:        9D 00 08      STA $0800,x               
CODE_12A138:        B9 01 08      LDA $0801,y               
CODE_12A13B:        9D 01 08      STA $0801,x               
CODE_12A13E:        B9 02 08      LDA $0802,y               
CODE_12A141:        9D 02 08      STA $0802,x               
CODE_12A144:        B9 03 08      LDA $0803,y               
CODE_12A147:        9D 03 08      STA $0803,x               
CODE_12A14A:        C2 20         REP #$20                  
CODE_12A14C:        98            TYA                       
CODE_12A14D:        4A            LSR A                     
CODE_12A14E:        4A            LSR A                     
CODE_12A14F:        A8            TAY                       
CODE_12A150:        8A            TXA                       
CODE_12A151:        4A            LSR A                     
CODE_12A152:        4A            LSR A                     
CODE_12A153:        AA            TAX                       
CODE_12A154:        E2 20         SEP #$20                  
CODE_12A156:        A9 03         LDA #$03                  
CODE_12A158:        99 20 0A      STA $0A20,y               
CODE_12A15B:        3A            DEC A                     
CODE_12A15C:        99 21 0A      STA $0A21,y               
CODE_12A15F:        E2 10         SEP #$10                  
CODE_12A161:        A6 12         LDX $12                   
CODE_12A163:        60            RTS
                       
CODE_12A164:        20 45 A7      JSR CODE_12A745           
CODE_12A167:        B5 86         LDA $86,x                 
CODE_12A169:        F0 35         BEQ CODE_12A1A0           
CODE_12A16B:        A8            TAY                       
CODE_12A16C:        4A            LSR A                     
CODE_12A16D:        4A            LSR A                     
CODE_12A16E:        29 01         AND #$01                  
CODE_12A170:        95 6F         STA $6F,x                 
CODE_12A172:        A9 01         LDA #$01                  
CODE_12A174:        95 65         STA $65,x                 
CODE_12A176:        9D 6E 04      STA $046E,x               
CODE_12A179:        A9 3C         LDA #$3C                  
CODE_12A17B:        C0 0C         CPY #$0C                  
CODE_12A17D:        90 02         BCC CODE_12A181           
CODE_12A17F:        A9 3E         LDA #$3E                  
CODE_12A181:        20 D5 BD      JSR CODE_12BDD5           
CODE_12A184:        C2 10         REP #$10                  
CODE_12A186:        AC F6 02      LDY $02F6                 
CODE_12A189:        B5 90         LDA $90,x                 ; \ If not a POW sprite, then...
CODE_12A18B:        C9 3A         CMP #$3A                  ;  | have regular properties...
CODE_12A18D:        D0 04         BNE CODE_12A193           ; /
CODE_12A18F:        A9 22         LDA #$22                  ; YXPPCCCT of flat POW sprite. Highest priority bit set, palette 9, GFX page 0.
CODE_12A191:        80 07         BRA CODE_12A19A           

CODE_12A193:        B9 03 08      LDA $0803,y               
CODE_12A196:        29 F0         AND #$F0                  
CODE_12A198:        09 04         ORA #$04                  
CODE_12A19A:        99 03 08      STA $0803,y               
CODE_12A19D:        E2 10         SEP #$10                  
CODE_12A19F:        60            RTS
                       
CODE_12A1A0:        A9 00         LDA #$00                  
CODE_12A1A2:        22 C2 FB 13   JSL CODE_13FBC2           
CODE_12A1A6:        4C 3B A8      JMP CODE_12A83B           

DATA_12A1A9:        db $40,$2E,$2C
             
CODE_12A1AC:        20 45 A7      JSR CODE_12A745                   
CODE_12A1AF:        B5 86         LDA $86,x                 
CODE_12A1B1:        F0 ED         BEQ CODE_12A1A0           
CODE_12A1B3:        DA            PHX                       
CODE_12A1B4:        4A            LSR A                     
CODE_12A1B5:        4A            LSR A                     
CODE_12A1B6:        4A            LSR A                     
CODE_12A1B7:        AA            TAX                       
CODE_12A1B8:        BF A9 A1 12   LDA.l DATA_12A1A9,x             
CODE_12A1BC:        8D 11 07      STA $0711                 
CODE_12A1BF:        9B            TXY                       
CODE_12A1C0:        FA            PLX                       
CODE_12A1C1:        A9 01         LDA #$01                  
CODE_12A1C3:        95 65         STA $65,x                 
CODE_12A1C5:        9D 6E 04      STA $046E,x               
CODE_12A1C8:        95 6F         STA $6F,x                 
CODE_12A1CA:        AD F6 02      LDA $02F6                 
CODE_12A1CD:        8D F8 02      STA $02F8                 
CODE_12A1D0:        AD F7 02      LDA $02F7                 
CODE_12A1D3:        8D F9 02      STA $02F9                 
CODE_12A1D6:        C0 02         CPY #$02                  
CODE_12A1D8:        D0 09         BNE CODE_12A1E3           
CODE_12A1DA:        A9 CA         LDA #$CA                  
CODE_12A1DC:        20 81 A1      JSR CODE_12A181           
CODE_12A1DF:        22 83 E4 14   JSL CODE_14E483           
CODE_12A1E3:        B5 33         LDA $33,x                 
CODE_12A1E5:        8D 16 07      STA $0716                 
CODE_12A1E8:        B5 1F         LDA $1F,x                 
CODE_12A1EA:        8D 17 07      STA $0717                 
CODE_12A1ED:        A5 CB         LDA $CB                   
CODE_12A1EF:        8D 0F 07      STA $070F                 
CODE_12A1F2:        A5 CA         LDA $CA                   
CODE_12A1F4:        8D 10 07      STA $0710                 
CODE_12A1F7:        AD 1F 02      LDA $021F                 
CODE_12A1FA:        EB            XBA                       
CODE_12A1FB:        AD 29 04      LDA $0429                 
CODE_12A1FE:        C2 30         REP #$30                  
CODE_12A200:        18            CLC                       
CODE_12A201:        69 F4 FF      ADC #$FFF4                
CODE_12A204:        8D 12 07      STA $0712                 
CODE_12A207:        18            CLC                       
CODE_12A208:        69 18 00      ADC #$0018                
CODE_12A20B:        8D 14 07      STA $0714                 
CODE_12A20E:        AD 16 07      LDA $0716                 
CODE_12A211:        38            SEC                       
CODE_12A212:        ED 0F 07      SBC $070F                 
CODE_12A215:        18            CLC                       
CODE_12A216:        69 FC FF      ADC #$FFFC                
CODE_12A219:        8D 16 07      STA $0716                 
CODE_12A21C:        E2 20         SEP #$20                  
CODE_12A21E:        AD 17 07      LDA $0717                 
CODE_12A221:        D0 47         BNE CODE_12A26A           
CODE_12A223:        AC F8 02      LDY $02F8                 
CODE_12A226:        AD 12 07      LDA $0712                 
CODE_12A229:        99 00 08      STA $0800,y               
CODE_12A22C:        AD 14 07      LDA $0714                 
CODE_12A22F:        99 04 08      STA $0804,y               
CODE_12A232:        AD 16 07      LDA $0716                 
CODE_12A235:        99 01 08      STA $0801,y               
CODE_12A238:        99 05 08      STA $0805,y               
CODE_12A23B:        AD 11 07      LDA $0711                 
CODE_12A23E:        99 02 08      STA $0802,y               
CODE_12A241:        99 06 08      STA $0806,y               
CODE_12A244:        A9 66         LDA #$66                  
CODE_12A246:        99 03 08      STA $0803,y               
CODE_12A249:        29 BF         AND #$BF                  
CODE_12A24B:        99 07 08      STA $0807,y               
CODE_12A24E:        C2 20         REP #$20                  
CODE_12A250:        98            TYA                       
CODE_12A251:        4A            LSR A                     
CODE_12A252:        4A            LSR A                     
CODE_12A253:        A8            TAY                       
CODE_12A254:        E2 20         SEP #$20                  
CODE_12A256:        AD 13 07      LDA $0713                 
CODE_12A259:        29 01         AND #$01                  
CODE_12A25B:        09 02         ORA #$02                  
CODE_12A25D:        99 20 0A      STA $0A20,y               
CODE_12A260:        AD 15 07      LDA $0715                 
CODE_12A263:        29 01         AND #$01                  
CODE_12A265:        09 02         ORA #$02                  
CODE_12A267:        99 21 0A      STA $0A21,y               
CODE_12A26A:        E2 10         SEP #$10                  
CODE_12A26C:        60            RTS
                       
CODE_12A26D:        A9 00         LDA #$00                  
CODE_12A26F:        22 C2 FB 13   JSL CODE_13FBC2           
CODE_12A273:        4C 3B A8      JMP CODE_12A83B           

CODE_12A276:        20 45 A7      JSR CODE_12A745           
CODE_12A279:        20 16 BB      JSR CODE_12BB16           
CODE_12A27C:        BD 2F 04      LDA $042F,x               
CODE_12A27F:        F0 03         BEQ CODE_12A284           
CODE_12A281:        9E 2F 04      STZ $042F,x               
CODE_12A284:        B5 A8         LDA $A8,x                 
CODE_12A286:        F0 05         BEQ CODE_12A28D           
CODE_12A288:        A9 01         LDA #$01                  
CODE_12A28A:        95 51         STA $51,x                 
CODE_12A28C:        60            RTS
                       
CODE_12A28D:        B5 86         LDA $86,x                 
CODE_12A28F:        F0 DC         BEQ CODE_12A26D           
CODE_12A291:        B5 90         LDA $90,x                 
CODE_12A293:        C9 32         CMP #$32                  
CODE_12A295:        B0 16         BCS CODE_12A2AD                   
CODE_12A297:        20 43 AA      JSR CODE_12AA43           
CODE_12A29A:        A5 10         LDA $10                   
CODE_12A29C:        29 03         AND #$03                  
CODE_12A29E:        9D 4A 04      STA $044A,x               
CODE_12A2A1:        A5 10         LDA $10                   
CODE_12A2A3:        29 10         AND #$10                  
CODE_12A2A5:        4A            LSR A                     
CODE_12A2A6:        4A            LSR A                     
CODE_12A2A7:        4A            LSR A                     
CODE_12A2A8:        4A            LSR A                     
CODE_12A2A9:        69 01         ADC #$01                  
CODE_12A2AB:        95 6F         STA $6F,x                 
CODE_12A2AD:        20 EA B4      JSR CODE_12B4EA           
CODE_12A2B0:        4C 6A DE      JMP CODE_12DE6A  
         
DATA_12A2B3:        db $C6,$C8,$E6,$E8                      ; Tilemap of "BOMB"

DATA_12A2B7:        db $F8,$08,$F8,$08                      ; XDisp of "BOMB"

DATA_12A2BB:        db $F0,$F0,$00,$00                      ; YDisp of "BOMB"
                 
CODE_12A2BF:        20 45 A7      JSR CODE_12A745           
CODE_12A2C2:        A5 ED         LDA $ED                   
CODE_12A2C4:        05 EE         ORA $EE                   
CODE_12A2C6:        D0 A5         BNE CODE_12A26D           
CODE_12A2C8:        B5 86         LDA $86,x                 
CODE_12A2CA:        F0 A1         BEQ CODE_12A26D           
CODE_12A2CC:        C9 1A         CMP #$1A                  
CODE_12A2CE:        B0 08         BCS CODE_12A2D8           
CODE_12A2D0:        E9 11         SBC #$11                  
CODE_12A2D2:        30 04         BMI CODE_12A2D8           
CODE_12A2D4:        A8            TAY                       
CODE_12A2D5:        20 2D A3      JSR CODE_12A32D           
CODE_12A2D8:        A9 01         LDA #$01                  ; \ A != 00 so the following routine has effect.
CODE_12A2DA:        22 C2 FB 13   JSL CODE_13FBC2           ; / Background colour effect.
CODE_12A2DE:        C2 10         REP #$10                  
CODE_12A2E0:        A2 00 00      LDX #$0000                
CODE_12A2E3:        A0 20 00      LDY #$0020                
CODE_12A2E6:        AD 29 04      LDA $0429                 ; \ Get sprite's original X pos...
CODE_12A2E9:        18            CLC                       ;  | and add the XDisp to it...
CODE_12A2EA:        7F B7 A2 12   ADC.l DATA_12A2B7,x         ;  | per tile.
CODE_12A2EE:        99 00 08      STA $0800,y               ; /
CODE_12A2F1:        AD 2C 04      LDA $042C                 ; \ Same goes for Y pos...
CODE_12A2F4:        18            CLC                       ;  | but then with YDisp instead.
CODE_12A2F5:        7F BB A2 12   ADC.l DATA_12A2BB,x         ;  |
CODE_12A2F9:        99 01 08      STA $0801,y               ; /
CODE_12A2FC:        BF B3 A2 12   LDA.l DATA_12A2B3,x         ; \ Transfer tilemap. 
CODE_12A300:        99 02 08      STA $0802,y               ; /
CODE_12A303:        A5 10         LDA $10                   ; \ Palette animation and more fancy YXPPCCCT properties data...
CODE_12A305:        29 06         AND #$06                  ;  | right here.
CODE_12A307:        09 20         ORA #$20                  ;  |
CODE_12A309:        99 03 08      STA $0803,y               ; /
CODE_12A30C:        5A            PHY                       
CODE_12A30D:        C2 20         REP #$20                  
CODE_12A30F:        98            TYA                       
CODE_12A310:        4A            LSR A                     
CODE_12A311:        4A            LSR A                     
CODE_12A312:        A8            TAY                       
CODE_12A313:        E2 20         SEP #$20                  
CODE_12A315:        A9 02         LDA #$02                  ; \ Size of all tiles = 16x16
CODE_12A317:        99 20 0A      STA $0A20,y               ; /
CODE_12A31A:        7A            PLY                       
CODE_12A31B:        C8            INY                       
CODE_12A31C:        C8            INY                       
CODE_12A31D:        C8            INY                       
CODE_12A31E:        C8            INY                       
CODE_12A31F:        E8            INX                       
CODE_12A320:        E0 04 00      CPX #$0004                
CODE_12A323:        D0 C1         BNE CODE_12A2E6           
CODE_12A325:        E2 10         SEP #$10                  
CODE_12A327:        A6 12         LDX $12                   
CODE_12A329:        4C 6A DE      JMP CODE_12DE6A           

CODE_12A32C:        60            RTS
                       
CODE_12A32D:        B5 29         LDA $29,x                 
CODE_12A32F:        18            CLC                       
CODE_12A330:        79 B6 97      ADC.w DATA_1197B6,y               
CODE_12A333:        85 0C         STA $0C                   
CODE_12A335:        B5 15         LDA $15,x                 
CODE_12A337:        79 BF 97      ADC.w DATA_1197BF,y               
CODE_12A33A:        85 0D         STA $0D                   
CODE_12A33C:        C9 0B         CMP #$0B                  
CODE_12A33E:        B0 EC         BCS CODE_12A32C                   
CODE_12A340:        B5 33         LDA $33,x                 
CODE_12A342:        79 C8 97      ADC.w DATA_1197C8,y               
CODE_12A345:        29 F0         AND #$F0                  
CODE_12A347:        85 0E         STA $0E                   
CODE_12A349:        85 0B         STA $0B                   
CODE_12A34B:        B5 1F         LDA $1F,x                 
CODE_12A34D:        79 D1 97      ADC.w DATA_1197D1,y               
CODE_12A350:        85 0F         STA $0F                   
CODE_12A352:        C9 0A         CMP #$0A                  
CODE_12A354:        B0 D6         BCS CODE_12A32C                   
CODE_12A356:        A4 EB         LDY $EB                   
CODE_12A358:        D0 20         BNE CODE_12A37A           
CODE_12A35A:        4A            LSR A                     
CODE_12A35B:        66 0E         ROR $0E                   
CODE_12A35D:        4A            LSR A                     
CODE_12A35E:        66 0E         ROR $0E                   
CODE_12A360:        4A            LSR A                     
CODE_12A361:        66 0E         ROR $0E                   
CODE_12A363:        4A            LSR A                     
CODE_12A364:        66 0E         ROR $0E                   
CODE_12A366:        A5 0E         LDA $0E                   
CODE_12A368:        A0 FF         LDY #$FF                  
CODE_12A36A:        38            SEC                       
CODE_12A36B:        E9 0F         SBC #$0F                  
CODE_12A36D:        C8            INY                       
CODE_12A36E:        B0 FA         BCS CODE_12A36A                   
CODE_12A370:        84 0D         STY $0D                   
CODE_12A372:        69 0F         ADC #$0F                  
CODE_12A374:        0A            ASL A                     
CODE_12A375:        0A            ASL A                     
CODE_12A376:        0A            ASL A                     
CODE_12A377:        0A            ASL A                     
CODE_12A378:        85 0E         STA $0E                   
CODE_12A37A:        A5 0C         LDA $0C                   
CODE_12A37C:        4A            LSR A                     
CODE_12A37D:        4A            LSR A                     
CODE_12A37E:        4A            LSR A                     
CODE_12A37F:        4A            LSR A                     
CODE_12A380:        85 04         STA $04                   
CODE_12A382:        05 0E         ORA $0E                   
CODE_12A384:        85 05         STA $05                   
CODE_12A386:        A9 7E         LDA #$7E                  
CODE_12A388:        85 09         STA $09                   
CODE_12A38A:        A0 00         LDY #$00                  
CODE_12A38C:        AD BF 04      LDA $04BF                 
CODE_12A38F:        C9 0A         CMP #$0A                  
CODE_12A391:        D0 05         BNE CODE_12A398           
CODE_12A393:        84 0D         STY $0D                   
CODE_12A395:        64 09         STZ $09                   
CODE_12A397:        C8            INY                       
CODE_12A398:        A9 10         LDA #$10                  
CODE_12A39A:        85 07         STA $07                   
CODE_12A39C:        B9 DA 97      LDA.w DATA_1197DA,y               
CODE_12A39F:        85 08         STA $08                   
CODE_12A3A1:        AC 34 05      LDY $0534                 
CODE_12A3A4:        B9 11 AB      LDA.w DATA_11AB11,y               
CODE_12A3A7:        18            CLC                       
CODE_12A3A8:        65 08         ADC $08                   
CODE_12A3AA:        85 08         STA $08                   
CODE_12A3AC:        A4 0D         LDY $0D                   
CODE_12A3AE:        A5 07         LDA $07                   
CODE_12A3B0:        18            CLC                       
CODE_12A3B1:        69 F0         ADC #$F0                  
CODE_12A3B3:        85 07         STA $07                   
CODE_12A3B5:        A5 08         LDA $08                   
CODE_12A3B7:        69 00         ADC #$00                  
CODE_12A3B9:        85 08         STA $08                   
CODE_12A3BB:        88            DEY                       
CODE_12A3BC:        10 F0         BPL CODE_12A3AE           
CODE_12A3BE:        C2 20         REP #$20                  
CODE_12A3C0:        A5 07         LDA $07                   
CODE_12A3C2:        18            CLC                       
CODE_12A3C3:        69 00 70      ADC #$7000                
CODE_12A3C6:        85 00         STA $00                   
CODE_12A3C8:        E2 20         SEP #$20                  
CODE_12A3CA:        A5 09         LDA $09                   
CODE_12A3CC:        85 02         STA $02                   
CODE_12A3CE:        A4 05         LDY $05                   
CODE_12A3D0:        B7 00         LDA [$00],y               
CODE_12A3D2:        D0 0E         BNE CODE_12A3E2           
CODE_12A3D4:        B7 07         LDA [$07],y               
CODE_12A3D6:        C9 AB         CMP #$AB                  
CODE_12A3D8:        F0 09         BEQ CODE_12A3E3           
CODE_12A3DA:        C9 9D         CMP #$9D                  
CODE_12A3DC:        F0 05         BEQ CODE_12A3E3           
CODE_12A3DE:        C9 6D         CMP #$6D                  
CODE_12A3E0:        F0 01         BEQ CODE_12A3E3           
CODE_12A3E2:        60            RTS
                       
CODE_12A3E3:        A9 40         LDA #$40                  
CODE_12A3E5:        97 07         STA [$07],y               
CODE_12A3E7:        A5 0D         LDA $0D                   
CODE_12A3E9:        29 01         AND #$01                  
CODE_12A3EB:        49 01         EOR #$01                  
CODE_12A3ED:        0A            ASL A                     
CODE_12A3EE:        0A            ASL A                     
CODE_12A3EF:        A4 EB         LDY $EB                   
CODE_12A3F1:        D0 01         BNE CODE_12A3F4           
CODE_12A3F3:        0A            ASL A                     
CODE_12A3F4:        48            PHA                       
CODE_12A3F5:        A5 0E         LDA $0E                   
CODE_12A3F7:        85 02         STA $02                   
CODE_12A3F9:        A5 0C         LDA $0C                   
CODE_12A3FB:        29 F0         AND #$F0                  
CODE_12A3FD:        85 03         STA $03                   
CODE_12A3FF:        A9 08         LDA #$08                  
CODE_12A401:        85 00         STA $00                   
CODE_12A403:        A5 02         LDA $02                   
CODE_12A405:        0A            ASL A                     
CODE_12A406:        26 00         ROL $00                   
CODE_12A408:        0A            ASL A                     
CODE_12A409:        26 00         ROL $00                   
CODE_12A40B:        29 E0         AND #$E0                  
CODE_12A40D:        85 01         STA $01                   
CODE_12A40F:        AE 00 03      LDX $0300                 
CODE_12A412:        A5 03         LDA $03                   
CODE_12A414:        4A            LSR A                     
CODE_12A415:        4A            LSR A                     
CODE_12A416:        4A            LSR A                     
CODE_12A417:        05 01         ORA $01                   
CODE_12A419:        9D 03 03      STA $0303,x               
CODE_12A41C:        18            CLC                       
CODE_12A41D:        69 20         ADC #$20                  
CODE_12A41F:        9D 0B 03      STA $030B,x               
CODE_12A422:        68            PLA                       
CODE_12A423:        05 00         ORA $00                   
CODE_12A425:        29 0F         AND #$0F                  
CODE_12A427:        9D 02 03      STA $0302,x               
CODE_12A42A:        69 00         ADC #$00                  
CODE_12A42C:        9D 0A 03      STA $030A,x               
CODE_12A42F:        C2 20         REP #$20                  
CODE_12A431:        A9 00 03      LDA #$0300                
CODE_12A434:        9D 04 03      STA $0304,x               
CODE_12A437:        9D 0C 03      STA $030C,x               
CODE_12A43A:        A9 BF 00      LDA #$00BF                
CODE_12A43D:        9D 06 03      STA $0306,x               
CODE_12A440:        9D 08 03      STA $0308,x               
CODE_12A443:        9D 0E 03      STA $030E,x               
CODE_12A446:        9D 10 03      STA $0310,x               
CODE_12A449:        8A            TXA                       
CODE_12A44A:        18            CLC                       
CODE_12A44B:        69 10 00      ADC #$0010                
CODE_12A44E:        8D 00 03      STA $0300                 
CODE_12A451:        E2 20         SEP #$20                  
CODE_12A453:        A9 FF         LDA #$FF                  
CODE_12A455:        9D 12 03      STA $0312,x               
CODE_12A458:        A2 08         LDX #$08                  
CODE_12A45A:        B5 51         LDA $51,x                 
CODE_12A45C:        F0 05         BEQ CODE_12A463           
CODE_12A45E:        CA            DEX                       
CODE_12A45F:        10 F9         BPL CODE_12A45A           
CODE_12A461:        30 1D         BMI CODE_12A480           
CODE_12A463:        A5 0C         LDA $0C                   
CODE_12A465:        29 F0         AND #$F0                  
CODE_12A467:        95 29         STA $29,x                 
CODE_12A469:        A5 0D         LDA $0D                   
CODE_12A46B:        A4 EB         LDY $EB                   
CODE_12A46D:        D0 01         BNE CODE_12A470           
CODE_12A46F:        98            TYA                       
CODE_12A470:        95 15         STA $15,x                 
CODE_12A472:        A5 0B         LDA $0B                   
CODE_12A474:        95 33         STA $33,x                 
CODE_12A476:        A5 0F         LDA $0F                   
CODE_12A478:        95 1F         STA $1F,x                 
CODE_12A47A:        20 98 9F      JSR CODE_129F98           
CODE_12A47D:        20 3D BA      JSR CODE_12BA3D           
CODE_12A480:        A6 12         LDX $12                   
CODE_12A482:        60            RTS
                       
CODE_12A483:        20 45 A7      JSR CODE_12A745           
CODE_12A486:        B5 65         LDA $65,x                 
CODE_12A488:        09 10         ORA #$10                  
CODE_12A48A:        95 65         STA $65,x                 
CODE_12A48C:        29 40         AND #$40                  
CODE_12A48E:        85 0E         STA $0E                   
CODE_12A490:        B5 86         LDA $86,x                 
CODE_12A492:        D0 03         BNE CODE_12A497           
CODE_12A494:        4C B2 A5      JMP CODE_12A5B2           

CODE_12A497:        4A            LSR A                     
CODE_12A498:        4A            LSR A                     
CODE_12A499:        4A            LSR A                     
CODE_12A49A:        A8            TAY                       
CODE_12A49B:        B9 DC 97      LDA.w DATA_1197DC,y               
CODE_12A49E:        20 CC A5      JSR CODE_12A5CC           
CODE_12A4A1:        BD 9B 04      LDA $049B,x               
CODE_12A4A4:        F0 DC         BEQ CODE_12A482           
CODE_12A4A6:        B5 86         LDA $86,x                 
CODE_12A4A8:        C9 03         CMP #$03                  
CODE_12A4AA:        D0 D6         BNE CODE_12A482           
CODE_12A4AC:        A0 02         LDY #$02                  
CODE_12A4AE:        B5 90         LDA $90,x                 
CODE_12A4B0:        C9 21         CMP #$21                  
CODE_12A4B2:        D0 10         BNE CODE_12A4C4           
CODE_12A4B4:        88            DEY                       
CODE_12A4B5:        A9 49         LDA #$49                  
CODE_12A4B7:        8D 86 14      STA $1486                 
CODE_12A4BA:        8D 90 14      STA $1490                 
CODE_12A4BD:        1A            INC A                     
CODE_12A4BE:        8D 9C 14      STA $149C                 
CODE_12A4C1:        8D AA 14      STA $14AA                 
CODE_12A4C4:        8C 4E 14      STY $144E                 
CODE_12A4C7:        8C 5A 14      STY $145A                 
CODE_12A4CA:        C8            INY                       
CODE_12A4CB:        8C 66 14      STY $1466                 
CODE_12A4CE:        8C 76 14      STY $1476                 
CODE_12A4D1:        A0 03         LDY #$03                  
CODE_12A4D3:        BD F0 04      LDA $04F0,x               
CODE_12A4D6:        29 01         AND #$01                  
CODE_12A4D8:        0A            ASL A                     
CODE_12A4D9:        0A            ASL A                     
CODE_12A4DA:        49 04         EOR #$04                  
CODE_12A4DC:        A6 EB         LDX $EB                   
CODE_12A4DE:        D0 01         BNE CODE_12A4E1           
CODE_12A4E0:        0A            ASL A                     
CODE_12A4E1:        BE 40 CE      LDX.w DATA_11CE40,y               
CODE_12A4E4:        1D 4E 14      ORA $144E,x               
CODE_12A4E7:        9D 4E 14      STA $144E,x               
CODE_12A4EA:        A6 12         LDX $12                   
CODE_12A4EC:        88            DEY                       
CODE_12A4ED:        10 E4         BPL CODE_12A4D3           
CODE_12A4EF:        A5 EB         LDA $EB                   
CODE_12A4F1:        D0 11         BNE CODE_12A504           
CODE_12A4F3:        A9 52         LDA #$52                  
CODE_12A4F5:        8D 86 14      STA $1486                 
CODE_12A4F8:        8D 90 14      STA $1490                 
CODE_12A4FB:        1A            INC A                     
CODE_12A4FC:        8D 9C 14      STA $149C                 
CODE_12A4FF:        8D AA 14      STA $14AA                 
CODE_12A502:        80 16         BRA CODE_12A51A           

CODE_12A504:        AD 35 06      LDA $0635                 
CODE_12A507:        C9 06         CMP #$06                  
CODE_12A509:        D0 0F         BNE CODE_12A51A           
CODE_12A50B:        A9 4E         LDA #$4E                  
CODE_12A50D:        8D 86 14      STA $1486                 
CODE_12A510:        8D 90 14      STA $1490                 
CODE_12A513:        1A            INC A                     
CODE_12A514:        8D 9C 14      STA $149C                 
CODE_12A517:        8D AA 14      STA $14AA                 
CODE_12A51A:        A9 14         LDA #$14                  
CODE_12A51C:        85 11         STA $11                   
CODE_12A51E:        BC F0 04      LDY $04F0,x               
CODE_12A521:        A9 7E         LDA #$7E                  
CODE_12A523:        85 02         STA $02                   
CODE_12A525:        A9 1F         LDA #$1F                  
CODE_12A527:        85 01         STA $01                   
CODE_12A529:        5A            PHY                       
CODE_12A52A:        AC 34 05      LDY $0534                 
CODE_12A52D:        B9 11 AB      LDA.w DATA_11AB11,y               
CODE_12A530:        18            CLC                       
CODE_12A531:        65 01         ADC $01                   
CODE_12A533:        85 01         STA $01                   
CODE_12A535:        7A            PLY                       
CODE_12A536:        A9 10         LDA #$10                  
CODE_12A538:        85 00         STA $00                   
CODE_12A53A:        A5 00         LDA $00                   
CODE_12A53C:        18            CLC                       
CODE_12A53D:        69 F0         ADC #$F0                  
CODE_12A53F:        85 00         STA $00                   
CODE_12A541:        A5 01         LDA $01                   
CODE_12A543:        69 00         ADC #$00                  
CODE_12A545:        85 01         STA $01                   
CODE_12A547:        88            DEY                       
CODE_12A548:        10 F0         BPL CODE_12A53A           
CODE_12A54A:        B5 90         LDA $90,x                 
CODE_12A54C:        C9 21         CMP #$21                  
CODE_12A54E:        D0 0D         BNE CODE_12A55D           
CODE_12A550:        A5 00         LDA $00                   
CODE_12A552:        38            SEC                       
CODE_12A553:        E9 40         SBC #$40                  
CODE_12A555:        85 00         STA $00                   
CODE_12A557:        A5 01         LDA $01                   
CODE_12A559:        E9 00         SBC #$00                  
CODE_12A55B:        85 01         STA $01                   
CODE_12A55D:        A9 7F         LDA #$7F                  
CODE_12A55F:        85 05         STA $05                   
CODE_12A561:        BD F0 04      LDA $04F0,x               
CODE_12A564:        AA            TAX                       
CODE_12A565:        BF 25 AB 11   LDA.l DATA_11AB25,x             
CODE_12A569:        85 04         STA $04                   
CODE_12A56B:        BF 1B AB 11   LDA.l DATA_11AB1B,x             
CODE_12A56F:        85 03         STA $03                   
CODE_12A571:        AD 35 06      LDA $0635                 
CODE_12A574:        C9 04         CMP #$04                  
CODE_12A576:        D0 07         BNE CODE_12A57F           
CODE_12A578:        A5 03         LDA $03                   
CODE_12A57A:        38            SEC                       
CODE_12A57B:        E9 40         SBC #$40                  
CODE_12A57D:        85 03         STA $03                   
CODE_12A57F:        A0 B8         LDY #$B8                  
CODE_12A581:        A9 56         LDA #$56                  
CODE_12A583:        97 00         STA [$00],y               
CODE_12A585:        A9 00         LDA #$00                  
CODE_12A587:        97 03         STA [$03],y               
CODE_12A589:        A9 56         LDA #$56                  
CODE_12A58B:        A0 C8         LDY #$C8                  
CODE_12A58D:        97 00         STA [$00],y               
CODE_12A58F:        A9 02         LDA #$02                  
CODE_12A591:        97 03         STA [$03],y               
CODE_12A593:        A9 40         LDA #$40                  
CODE_12A595:        A0 B9         LDY #$B9                  
CODE_12A597:        97 00         STA [$00],y               
CODE_12A599:        A9 01         LDA #$01                  
CODE_12A59B:        97 03         STA [$03],y               
CODE_12A59D:        A9 40         LDA #$40                  
CODE_12A59F:        A0 C9         LDY #$C9                  
CODE_12A5A1:        97 00         STA [$00],y               
CODE_12A5A3:        A9 03         LDA #$03                  
CODE_12A5A5:        97 03         STA [$03],y               
CODE_12A5A7:        A9 40         LDA #$40                  
CODE_12A5A9:        A0 CA         LDY #$CA                  
CODE_12A5AB:        97 00         STA [$00],y               
CODE_12A5AD:        A9 01         LDA #$01                  
CODE_12A5AF:        97 03         STA [$03],y               
CODE_12A5B1:        60            RTS
                       
CODE_12A5B2:        B5 90         LDA $90,x                 
CODE_12A5B4:        C9 2B         CMP #$2B                  
CODE_12A5B6:        D0 0D         BNE CODE_12A5C5           
CODE_12A5B8:        CE F9 04      DEC $04F9                 
CODE_12A5BB:        10 08         BPL CODE_12A5C5           
CODE_12A5BD:        FE 9B 04      INC $049B,x               
CODE_12A5C0:        F6 90         INC $90,x                 
CODE_12A5C2:        4C 3C A0      JMP CODE_12A03C           

CODE_12A5C5:        4C 3B A8      JMP CODE_12A83B           

DATA_12A5C8:                      db $86,$A1,$A0,$87   

               
CODE_12A5CC:        DA            PHX                       
CODE_12A5CD:        48            PHA                       
CODE_12A5CE:        B5 29         LDA $29,x                 
CODE_12A5D0:        85 08         STA $08                   
CODE_12A5D2:        B5 15         LDA $15,x                 
CODE_12A5D4:        85 09         STA $09                   
CODE_12A5D6:        AD C1 04      LDA $04C1                 
CODE_12A5D9:        85 0A         STA $0A                   
CODE_12A5DB:        AD BF 04      LDA $04BF                 
CODE_12A5DE:        85 0B         STA $0B                   
CODE_12A5E0:        64 ED         STZ $ED                   
CODE_12A5E2:        C2 20         REP #$20                  
CODE_12A5E4:        A5 08         LDA $08                   
CODE_12A5E6:        38            SEC                       
CODE_12A5E7:        E5 0A         SBC $0A                   
CODE_12A5E9:        29 00 FF      AND #$FF00                
CODE_12A5EC:        F0 05         BEQ CODE_12A5F3           
CODE_12A5EE:        A9 01 00      LDA #$0001                
CODE_12A5F1:        04 ED         TSB $ED                   
CODE_12A5F3:        A5 08         LDA $08                   
CODE_12A5F5:        18            CLC                       
CODE_12A5F6:        69 08 00      ADC #$0008                
CODE_12A5F9:        38            SEC                       
CODE_12A5FA:        E5 0A         SBC $0A                   
CODE_12A5FC:        29 00 FF      AND #$FF00                
CODE_12A5FF:        F0 05         BEQ CODE_12A606           
CODE_12A601:        A9 02 00      LDA #$0002                
CODE_12A604:        04 ED         TSB $ED                   
CODE_12A606:        E2 20         SEP #$20                  
CODE_12A608:        68            PLA                       
CODE_12A609:        85 0F         STA $0F                   
CODE_12A60B:        BB            TYX                       
CODE_12A60C:        C2 30         REP #$30                  
CODE_12A60E:        8A            TXA                       
CODE_12A60F:        29 FF 00      AND #$00FF                
CODE_12A612:        AA            TAX                       
CODE_12A613:        E2 20         SEP #$20                  
CODE_12A615:        AC F6 02      LDY $02F6                 
CODE_12A618:        AD 2C 04      LDA $042C                 
CODE_12A61B:        8D 13 07      STA $0713                 
CODE_12A61E:        BF C8 A5 12   LDA.l DATA_12A5C8,x             
CODE_12A622:        8D 12 07      STA $0712                 
CODE_12A625:        20 6B A6      JSR CODE_12A66B           
CODE_12A628:        DA            PHX                       
CODE_12A629:        22 83 E4 14   JSL CODE_14E483           
CODE_12A62D:        C2 10         REP #$10                  
CODE_12A62F:        FA            PLX                       
CODE_12A630:        AC F8 02      LDY $02F8                 
CODE_12A633:        BF C8 A5 12   LDA.l DATA_12A5C8,x             
CODE_12A637:        18            CLC                       
CODE_12A638:        69 10         ADC #$10                  
CODE_12A63A:        8D 12 07      STA $0712                 
CODE_12A63D:        AD 2C 04      LDA $042C                 
CODE_12A640:        18            CLC                       
CODE_12A641:        69 08         ADC #$08                  
CODE_12A643:        8D 13 07      STA $0713                 
CODE_12A646:        20 6B A6      JSR CODE_12A66B           
CODE_12A649:        DA            PHX                       
CODE_12A64A:        22 83 E4 14   JSL CODE_14E483           
CODE_12A64E:        C2 10         REP #$10                  
CODE_12A650:        AC F8 02      LDY $02F8                 
CODE_12A653:        FA            PLX                       
CODE_12A654:        A5 0E         LDA $0E                   
CODE_12A656:        49 40         EOR #$40                  
CODE_12A658:        85 0E         STA $0E                   
CODE_12A65A:        D0 0B         BNE CODE_12A667           
CODE_12A65C:        AD 2C 04      LDA $042C                 
CODE_12A65F:        18            CLC                       
CODE_12A660:        69 11         ADC #$11                  
CODE_12A662:        8D 2C 04      STA $042C                 
CODE_12A665:        80 B1         BRA CODE_12A618           

CODE_12A667:        E2 10         SEP #$10                  
CODE_12A669:        FA            PLX                       
CODE_12A66A:        60            RTS
                       
CODE_12A66B:        AD 29 04      LDA $0429                 
CODE_12A66E:        99 00 08      STA $0800,y               
CODE_12A671:        18            CLC                       
CODE_12A672:        69 08         ADC #$08                  
CODE_12A674:        99 04 08      STA $0804,y               
CODE_12A677:        AD 13 07      LDA $0713                 
CODE_12A67A:        99 01 08      STA $0801,y               
CODE_12A67D:        99 05 08      STA $0805,y               
CODE_12A680:        AD 12 07      LDA $0712                 
CODE_12A683:        99 02 08      STA $0802,y               
CODE_12A686:        99 06 08      STA $0806,y               
CODE_12A689:        A9 26         LDA #$26                  
CODE_12A68B:        99 03 08      STA $0803,y               
CODE_12A68E:        09 40         ORA #$40                  
CODE_12A690:        99 07 08      STA $0807,y               
CODE_12A693:        C2 20         REP #$20                  
CODE_12A695:        98            TYA                       
CODE_12A696:        4A            LSR A                     
CODE_12A697:        4A            LSR A                     
CODE_12A698:        A8            TAY                       
CODE_12A699:        E2 20         SEP #$20                  
CODE_12A69B:        A5 ED         LDA $ED                   
CODE_12A69D:        29 01         AND #$01                  
CODE_12A69F:        99 20 0A      STA $0A20,y               
CODE_12A6A2:        A5 ED         LDA $ED                   
CODE_12A6A4:        4A            LSR A                     
CODE_12A6A5:        29 01         AND #$01                  
CODE_12A6A7:        99 21 0A      STA $0A21,y               
CODE_12A6AA:        60            RTS
                       
CODE_12A6AB:        20 45 A7      JSR CODE_12A745           
CODE_12A6AE:        A9 12         LDA #$12                  
CODE_12A6B0:        95 65         STA $65,x                 
CODE_12A6B2:        B5 86         LDA $86,x                 ; \ If timer is up...
CODE_12A6B4:        F0 37         BEQ CODE_12A6ED           ; / branch.
CODE_12A6B6:        A9 F8         LDA #$F8                  ; \ Y speed of sand = #$F8.
CODE_12A6B8:        95 47         STA $47,x                 ; /
CODE_12A6BA:        20 EA C1      JSR CODE_12C1EA           
CODE_12A6BD:        A9 B2         LDA #$B2                  ; Tile number of sand tile for the first 16 frames.
CODE_12A6BF:        B4 86         LDY $86,x                 ; \ Check if halfway...
CODE_12A6C1:        C0 10         CPY #$10                  ;  | (16 frames done)
CODE_12A6C3:        B0 13         BCS CODE_12A6D8           ; / If not, branch, and keep this tile.
CODE_12A6C5:        A9 80         LDA #$80                  
CODE_12A6C7:        9D 6E 04      STA $046E,x               
CODE_12A6CA:        A9 01         LDA #$01                  
CODE_12A6CC:        95 65         STA $65,x                 
CODE_12A6CE:        0A            ASL A                     
CODE_12A6CF:        95 6F         STA $6F,x                 
CODE_12A6D1:        F6 9F         INC $9F,x                 
CODE_12A6D3:        20 43 AA      JSR CODE_12AA43           
CODE_12A6D6:        A9 B4         LDA #$B4                  ; Tile number of sand tile for the last 16 frames.
CODE_12A6D8:        20 D5 BD      JSR CODE_12BDD5           
CODE_12A6DB:        C2 10         REP #$10                  
CODE_12A6DD:        AC F6 02      LDY $02F6                 
CODE_12A6E0:        B9 03 08      LDA $0803,y               
CODE_12A6E3:        29 F0         AND #$F0                  
CODE_12A6E5:        09 02         ORA #$02                  
CODE_12A6E7:        99 03 08      STA $0803,y               
CODE_12A6EA:        E2 10         SEP #$10                  
CODE_12A6EC:        60            RTS
                       
CODE_12A6ED:        EC 2D 04      CPX $042D                 
CODE_12A6F0:        D0 04         BNE CODE_12A6F6           
CODE_12A6F2:        A9 00         LDA #$00                  
CODE_12A6F4:        85 9C         STA $9C                   
CODE_12A6F6:        4C 3B A8      JMP CODE_12A83B           

CODE_12A6F9:        A9 00         LDA #$00                  
CODE_12A6FB:        85 ED         STA $ED                   
CODE_12A6FD:        B5 65         LDA $65,x                 
CODE_12A6FF:        A0 01         LDY #$01                  
CODE_12A701:        29 04         AND #$04                  
CODE_12A703:        D0 19         BNE CODE_12A71E           
CODE_12A705:        B5 90         LDA $90,x                 
CODE_12A707:        C9 1A         CMP #$1A                  
CODE_12A709:        F0 13         BEQ CODE_12A71E           
CODE_12A70B:        C9 08         CMP #$08                  
CODE_12A70D:        F0 0F         BEQ CODE_12A71E           
CODE_12A70F:        C9 2D         CMP #$2D                  
CODE_12A711:        F0 0B         BEQ CODE_12A71E           
CODE_12A713:        C9 21         CMP #$21                  
CODE_12A715:        F0 07         BEQ CODE_12A71E           
CODE_12A717:        BD 6E 04      LDA $046E,x               
CODE_12A71A:        29 20         AND #$20                  
CODE_12A71C:        F0 02         BEQ CODE_12A720           
CODE_12A71E:        A0 03         LDY #$03                  
CODE_12A720:        B5 29         LDA $29,x                 
CODE_12A722:        18            CLC                       
CODE_12A723:        79 E4 97      ADC.w DATA_1197E4,y               
CODE_12A726:        85 0E         STA $0E                   
CODE_12A728:        B5 15         LDA $15,x                 
CODE_12A72A:        69 00         ADC #$00                  
CODE_12A72C:        85 0F         STA $0F                   
CODE_12A72E:        A5 0E         LDA $0E                   
CODE_12A730:        CD C1 04      CMP $04C1                 
CODE_12A733:        A5 0F         LDA $0F                   
CODE_12A735:        ED BF 04      SBC $04BF                 
CODE_12A738:        F0 07         BEQ CODE_12A741           
CODE_12A73A:        A5 ED         LDA $ED                   
CODE_12A73C:        19 E0 97      ORA.w DATA_1197E0,y               
CODE_12A73F:        85 ED         STA $ED                   
CODE_12A741:        88            DEY                       
CODE_12A742:        10 DC         BPL CODE_12A720           
CODE_12A744:        60            RTS
                       
CODE_12A745:        20 F9 A6      JSR CODE_12A6F9           
CODE_12A748:        A9 30         LDA #$30                  
CODE_12A74A:        B4 90         LDY $90,x                 
CODE_12A74C:        C0 2C         CPY #$2C                  
CODE_12A74E:        F0 3B         BEQ CODE_12A78B           
CODE_12A750:        A9 1E         LDA #$1E                  
CODE_12A752:        C0 38         CPY #$38                  
CODE_12A754:        F0 35         BEQ CODE_12A78B           
CODE_12A756:        C0 12         CPY #$12                  
CODE_12A758:        F0 31         BEQ CODE_12A78B           
CODE_12A75A:        CC 41 00      CPY $0041                 
CODE_12A75D:        F0 2C         BEQ CODE_12A78B           
CODE_12A75F:        A9 22         LDA #$22                  
CODE_12A761:        C0 1F         CPY #$1F                  
CODE_12A763:        F0 26         BEQ CODE_12A78B           
CODE_12A765:        C0 18         CPY #$18                  
CODE_12A767:        F0 22         BEQ CODE_12A78B           
CODE_12A769:        C0 19         CPY #$19                  
CODE_12A76B:        F0 1E         BEQ CODE_12A78B           
CODE_12A76D:        C0 1C         CPY #$1C                  
CODE_12A76F:        F0 1A         BEQ CODE_12A78B           
CODE_12A771:        C0 1D         CPY #$1D                  
CODE_12A773:        F0 16         BEQ CODE_12A78B           
CODE_12A775:        C0 21         CPY #$21                  
CODE_12A777:        F0 12         BEQ CODE_12A78B           
CODE_12A779:        C0 08         CPY #$08                  
CODE_12A77B:        F0 0E         BEQ CODE_12A78B           
CODE_12A77D:        C0 26         CPY #$26                  
CODE_12A77F:        F0 0A         BEQ CODE_12A78B           
CODE_12A781:        C0 2D         CPY #$2D                  
CODE_12A783:        F0 06         BEQ CODE_12A78B           
CODE_12A785:        C0 35         CPY #$35                  
CODE_12A787:        F0 02         BEQ CODE_12A78B           
CODE_12A789:        A9 10         LDA #$10                  
CODE_12A78B:        75 33         ADC $33,x                 
CODE_12A78D:        85 00         STA $00                   
CODE_12A78F:        B5 1F         LDA $1F,x                 
CODE_12A791:        69 00         ADC #$00                  
CODE_12A793:        85 01         STA $01                   
CODE_12A795:        A5 00         LDA $00                   
CODE_12A797:        C5 CB         CMP $CB                   
CODE_12A799:        A5 01         LDA $01                   
CODE_12A79B:        E5 CA         SBC $CA                   
CODE_12A79D:        85 EE         STA $EE                   
CODE_12A79F:        C0 17         CPY #$17                  
CODE_12A7A1:        F0 A1         BEQ CODE_12A744           
CODE_12A7A3:        C0 41         CPY #$41                  
CODE_12A7A5:        F0 9D         BEQ CODE_12A744           
CODE_12A7A7:        C0 43         CPY #$43                  
CODE_12A7A9:        F0 99         BEQ CODE_12A744           
CODE_12A7AB:        C0 2D         CPY #$2D                  
CODE_12A7AD:        F0 95         BEQ CODE_12A744           
CODE_12A7AF:        8A            TXA                       
CODE_12A7B0:        29 01         AND #$01                  
CODE_12A7B2:        85 00         STA $00                   
CODE_12A7B4:        A5 10         LDA $10                   
CODE_12A7B6:        29 01         AND #$01                  
CODE_12A7B8:        45 00         EOR $00                   
CODE_12A7BA:        D0 88         BNE CODE_12A744           
CODE_12A7BC:        A5 CB         LDA $CB                   
CODE_12A7BE:        E9 30         SBC #$30                  
CODE_12A7C0:        85 01         STA $01                   
CODE_12A7C2:        A5 CA         LDA $CA                   
CODE_12A7C4:        E9 00         SBC #$00                  
CODE_12A7C6:        85 00         STA $00                   
CODE_12A7C8:        E6 00         INC $00                   
CODE_12A7CA:        A5 CB         LDA $CB                   
CODE_12A7CC:        69 FF         ADC #$FF                  
CODE_12A7CE:        08            PHP                       
CODE_12A7CF:        69 30         ADC #$30                  
CODE_12A7D1:        85 03         STA $03                   
CODE_12A7D3:        A5 CA         LDA $CA                   
CODE_12A7D5:        69 00         ADC #$00                  
CODE_12A7D7:        28            PLP                       
CODE_12A7D8:        69 00         ADC #$00                  
CODE_12A7DA:        85 02         STA $02                   
CODE_12A7DC:        E6 02         INC $02                   
CODE_12A7DE:        B5 33         LDA $33,x                 
CODE_12A7E0:        C5 01         CMP $01                   
CODE_12A7E2:        B4 1F         LDY $1F,x                 
CODE_12A7E4:        C8            INY                       
CODE_12A7E5:        98            TYA                       
CODE_12A7E6:        E5 00         SBC $00                   
CODE_12A7E8:        30 4D         BMI CODE_12A837           
CODE_12A7EA:        B5 33         LDA $33,x                 
CODE_12A7EC:        C5 03         CMP $03                   
CODE_12A7EE:        B4 1F         LDY $1F,x                 
CODE_12A7F0:        C8            INY                       
CODE_12A7F1:        98            TYA                       
CODE_12A7F2:        E5 02         SBC $02                   
CODE_12A7F4:        10 41         BPL CODE_12A837           
CODE_12A7F6:        AD C1 04      LDA $04C1                 
CODE_12A7F9:        E9 30         SBC #$30                  
CODE_12A7FB:        85 01         STA $01                   
CODE_12A7FD:        AD BF 04      LDA $04BF                 
CODE_12A800:        E9 00         SBC #$00                  
CODE_12A802:        85 00         STA $00                   
CODE_12A804:        E6 00         INC $00                   
CODE_12A806:        AD C2 04      LDA $04C2                 
CODE_12A809:        69 30         ADC #$30                  
CODE_12A80B:        85 03         STA $03                   
CODE_12A80D:        AD C0 04      LDA $04C0                 
CODE_12A810:        69 00         ADC #$00                  
CODE_12A812:        85 02         STA $02                   
CODE_12A814:        E6 02         INC $02                   
CODE_12A816:        B5 29         LDA $29,x                 
CODE_12A818:        C5 01         CMP $01                   
CODE_12A81A:        B4 15         LDY $15,x                 
CODE_12A81C:        C8            INY                       
CODE_12A81D:        98            TYA                       
CODE_12A81E:        E5 00         SBC $00                   
CODE_12A820:        30 0C         BMI CODE_12A82E           
CODE_12A822:        B5 29         LDA $29,x                 
CODE_12A824:        C5 03         CMP $03                   
CODE_12A826:        B4 15         LDY $15,x                 
CODE_12A828:        C8            INY                       
CODE_12A829:        98            TYA                       
CODE_12A82A:        E5 02         SBC $02                   
CODE_12A82C:        30 1D         BMI CODE_12A84B           
CODE_12A82E:        B4 90         LDY $90,x                 
CODE_12A830:        B9 8C CC      LDA.w DATA_11CC8C,y               
CODE_12A833:        29 08         AND #$08                  
CODE_12A835:        D0 14         BNE CODE_12A84B           
CODE_12A837:        B5 A8         LDA $A8,x                 
CODE_12A839:        D0 10         BNE CODE_12A84B           
CODE_12A83B:        BC 41 04      LDY $0441,x               
CODE_12A83E:        30 06         BMI CODE_12A846           
CODE_12A840:        B1 CC         LDA ($CC),y               
CODE_12A842:        29 7F         AND #$7F                  
CODE_12A844:        91 CC         STA ($CC),y               
CODE_12A846:        74 51         STZ $51,x                 
CODE_12A848:        9E 2F 04      STZ $042F,x               
CODE_12A84B:        60            RTS
                       
CODE_12A84C:        A9 01         LDA #$01                  
CODE_12A84E:        9D A4 04      STA $04A4,x               
CODE_12A851:        BC 2F 04      LDY $042F,x               
CODE_12A854:        88            DEY                       
CODE_12A855:        C0 1F         CPY #$1F                  
CODE_12A857:        B0 03         BCS CODE_12A85C                   
CODE_12A859:        FE 2F 04      INC $042F,x               
CODE_12A85C:        20 45 A7      JSR CODE_12A745           
CODE_12A85F:        A5 50         LDA $50                   
CODE_12A861:        C9 08         CMP #$08                  
CODE_12A863:        F0 1C         BEQ CODE_12A881           
CODE_12A865:        A5 D8         LDA $D8                   
CODE_12A867:        29 04         AND #$04                  
CODE_12A869:        D0 45         BNE CODE_12A8B0           
CODE_12A86B:        AD 00 05      LDA $0500                 
CODE_12A86E:        F0 0C         BEQ CODE_12A87C           
CODE_12A870:        B5 90         LDA $90,x                 
CODE_12A872:        C9 1A         CMP #$1A                  
CODE_12A874:        F0 4A         BEQ CODE_12A8C0           
CODE_12A876:        C9 08         CMP #$08                  
CODE_12A878:        F0 46         BEQ CODE_12A8C0           
CODE_12A87A:        80 05         BRA CODE_12A881           

CODE_12A87C:        BD 38 04      LDA $0438,x               
CODE_12A87F:        F0 3F         BEQ CODE_12A8C0           
CODE_12A881:        B5 90         LDA $90,x                 
CODE_12A883:        C9 2B         CMP #$2B                  
CODE_12A885:        F0 39         BEQ CODE_12A8C0           
CODE_12A887:        C9 00         CMP #$00                  
CODE_12A889:        F0 35         BEQ CODE_12A8C0           
CODE_12A88B:        C9 41         CMP #$41                  
CODE_12A88D:        F0 04         BEQ CODE_12A893           
CODE_12A88F:        C9 32         CMP #$32                  
CODE_12A891:        B0 2D         BCS CODE_12A8C0                   
CODE_12A893:        20 16 BB      JSR CODE_12BB16           
CODE_12A896:        BD 2F 04      LDA $042F,x               
CODE_12A899:        F0 09         BEQ CODE_12A8A4           
CODE_12A89B:        A5 50         LDA $50                   
CODE_12A89D:        C9 08         CMP #$08                  
CODE_12A89F:        F0 03         BEQ CODE_12A8A4           
CODE_12A8A1:        20 AA A0      JSR CODE_12A0AA           
CODE_12A8A4:        B5 A8         LDA $A8,x                 
CODE_12A8A6:        F0 05         BEQ CODE_12A8AD           
CODE_12A8A8:        D6 9F         DEC $9F,x                 
CODE_12A8AA:        4C 92 B6      JMP CODE_12B692           

CODE_12A8AD:        20 6A DE      JSR CODE_12DE6A           
CODE_12A8B0:        B5 90         LDA $90,x                 
CODE_12A8B2:        C9 18         CMP #$18                  
CODE_12A8B4:        D0 07         BNE CODE_12A8BD           
CODE_12A8B6:        B5 5B         LDA $5B,x                 
CODE_12A8B8:        29 08         AND #$08                  
CODE_12A8BA:        F0 01         BEQ CODE_12A8BD           
CODE_12A8BC:        60            RTS
                       
CODE_12A8BD:        4C 29 BD      JMP CODE_12BD29           

CODE_12A8C0:        A0 01         LDY #$01                  
CODE_12A8C2:        B5 3D         LDA $3D,x                 
CODE_12A8C4:        F0 06         BEQ CODE_12A8CC           
CODE_12A8C6:        10 01         BPL CODE_12A8C9           
CODE_12A8C8:        C8            INY                       
CODE_12A8C9:        98            TYA                       
CODE_12A8CA:        95 6F         STA $6F,x                 
CODE_12A8CC:        B4 90         LDY $90,x                 
CODE_12A8CE:        B9 45 CC      LDA.w DATA_11CC45,y               
CODE_12A8D1:        29 20         AND #$20                  
CODE_12A8D3:        D0 3F         BNE CODE_12A914           
CODE_12A8D5:        B5 65         LDA $65,x                 
CODE_12A8D7:        29 DF         AND #$DF                  
CODE_12A8D9:        95 65         STA $65,x                 
CODE_12A8DB:        A9 06         LDA #$06                  
CODE_12A8DD:        8D 12 07      STA $0712                 
CODE_12A8E0:        AD C2 06      LDA $06C2                 
CODE_12A8E3:        F0 05         BEQ CODE_12A8EA           
CODE_12A8E5:        A9 04         LDA #$04                  
CODE_12A8E7:        8D 12 07      STA $0712                 
CODE_12A8EA:        B5 A8         LDA $A8,x                 
CODE_12A8EC:        CD 12 07      CMP $0712                 
CODE_12A8EF:        90 23         BCC CODE_12A914           
CODE_12A8F1:        BD 00 0D      LDA $0D00,x               
CODE_12A8F4:        D0 1E         BNE CODE_12A914           
CODE_12A8F6:        B5 90         LDA $90,x                 
CODE_12A8F8:        C9 09         CMP #$09                  
CODE_12A8FA:        D0 06         BNE CODE_12A902           
CODE_12A8FC:        B5 5B         LDA $5B,x                 
CODE_12A8FE:        29 04         AND #$04                  
CODE_12A900:        D0 05         BNE CODE_12A907           
CODE_12A902:        B9 45 CC      LDA.w DATA_11CC45,y               
CODE_12A905:        10 0D         BPL CODE_12A914           
CODE_12A907:        AD EF 04      LDA $04EF                 
CODE_12A90A:        D0 08         BNE CODE_12A914           
CODE_12A90C:        B5 65         LDA $65,x                 
CODE_12A90E:        09 20         ORA #$20                  
CODE_12A910:        29 EF         AND #$EF                  
CODE_12A912:        95 65         STA $65,x                 
CODE_12A914:        20 37 A9      JSR CODE_12A937           
CODE_12A917:        A5 EB         LDA $EB                   
CODE_12A919:        D0 0D         BNE CODE_12A928           
CODE_12A91B:        B5 90         LDA $90,x                 
CODE_12A91D:        C9 0F         CMP #$0F                  
CODE_12A91F:        D0 07         BNE CODE_12A928           
CODE_12A921:        AD 29 04      LDA $0429                 
CODE_12A924:        C9 F4         CMP #$F4                  
CODE_12A926:        B0 0B         BCS CODE_12A933                   
CODE_12A928:        B5 1F         LDA $1F,x                 
CODE_12A92A:        30 08         BMI CODE_12A934           
CODE_12A92C:        AD 2C 04      LDA $042C                 
CODE_12A92F:        C9 E8         CMP #$E8                  
CODE_12A931:        90 01         BCC CODE_12A934           
CODE_12A933:        60            RTS
                       
CODE_12A934:        4C 6A DE      JMP CODE_12DE6A     
      
CODE_12A937:        B5 90         LDA $90,x                 
CODE_12A939:        22 76 87 11   JSL CODE_118776   

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

CODE_12A9CB:        20 96 9F      JSR CODE_129F96           
CODE_12A9CE:        A9 50         LDA #$50                  
CODE_12A9D0:        95 9F         STA $9F,x                 
CODE_12A9D2:        60            RTS
                       
CODE_12A9D3:        20 96 9F      JSR CODE_129F96           
CODE_12A9D6:        B4 90         LDY $90,x                 
CODE_12A9D8:        B9 BA 97      LDA.w DATA_1197BA,y               
CODE_12A9DB:        95 3D         STA $3D,x                 
CODE_12A9DD:        B9 BC 97      LDA.w DATA_1197BC,y               
CODE_12A9E0:        95 47         STA $47,x                 
CODE_12A9E2:        60            RTS
                       
CODE_12A9E3:        20 16 BB      JSR CODE_12BB16           
CODE_12A9E6:        20 43 AA      JSR CODE_12AA43           
CODE_12A9E9:        A0 0A         LDY #$0A                  
CODE_12A9EB:        A5 10         LDA $10                   
CODE_12A9ED:        29 04         AND #$04                  
CODE_12A9EF:        F0 02         BEQ CODE_12A9F3           
CODE_12A9F1:        A0 06         LDY #$06                  
CODE_12A9F3:        8C 48 02      STY $0248                 
CODE_12A9F6:        20 29 BD      JSR CODE_12BD29           
CODE_12A9F9:        B5 29         LDA $29,x                 
CODE_12A9FB:        15 33         ORA $33,x                 
CODE_12A9FD:        29 0F         AND #$0F                  
CODE_12A9FF:        D0 37         BNE CODE_12AA38           
CODE_12AA01:        20 A7 DD      JSR CODE_12DDA7           
CODE_12AA04:        BC 77 04      LDY $0477,x               
CODE_12AA07:        B5 5B         LDA $5B,x                 
CODE_12AA09:        39 EE 97      AND.w DATA_1197EE,y               
CODE_12AA0C:        F0 21         BEQ CODE_12AA2F           
CODE_12AA0E:        B9 EE 97      LDA.w DATA_1197EE,y               
CODE_12AA11:        49 0F         EOR #$0F                  
CODE_12AA13:        35 5B         AND $5B,x                 
CODE_12AA15:        F0 21         BEQ CODE_12AA38           
CODE_12AA17:        98            TYA                       
CODE_12AA18:        49 01         EOR #$01                  
CODE_12AA1A:        9D 77 04      STA $0477,x               
CODE_12AA1D:        A8            TAY                       
CODE_12AA1E:        8A            TXA                       
CODE_12AA1F:        18            CLC                       
CODE_12AA20:        79 F0 97      ADC.w DATA_1197F0,y               
CODE_12AA23:        A8            TAY                       
CODE_12AA24:        B9 3D 00      LDA $003D,y               
CODE_12AA27:        49 FF         EOR #$FF                  
CODE_12AA29:        69 01         ADC #$01                  
CODE_12AA2B:        99 3D 00      STA $003D,y               
CODE_12AA2E:        60            RTS                       

CODE_12AA2F:        98            TYA                       
CODE_12AA30:        49 01         EOR #$01                  
CODE_12AA32:        9D 77 04      STA $0477,x               
CODE_12AA35:        20 1E AA      JSR CODE_12AA1E           
CODE_12AA38:        BD 77 04      LDA $0477,x               
CODE_12AA3B:        D0 03         BNE CODE_12AA40           
CODE_12AA3D:        4C EF C1      JMP CODE_12C1EF   
        
CODE_12AA40:        4C EA C1      JMP CODE_12C1EA   
        
CODE_12AA43:        F6 9F         INC $9F,x                 
CODE_12AA45:        F6 9F         INC $9F,x                 
CODE_12AA47:        60            RTS                       
                       
CODE_12AA48:        20 A7 AA      JSR CODE_12AAA7           
CODE_12AA4B:        79 F2 97      ADC.w DATA_1197F2,y               
CODE_12AA4E:        95 29         STA $29,x                 
CODE_12AA50:        AD BF 04      LDA $04BF                 
CODE_12AA53:        79 F4 97      ADC.w DATA_1197F4,y               
CODE_12AA56:        95 15         STA $15,x                 
CODE_12AA58:        84 01         STY $01                   
CODE_12AA5A:        A9 0A         LDA #$0A                  
CODE_12AA5C:        95 90         STA $90,x                 
CODE_12AA5E:        20 7A 9F      JSR CODE_129F7A           
CODE_12AA61:        AD 87 05      LDA $0587                 
CODE_12AA64:        29 1F         AND #$1F                  
CODE_12AA66:        69 20         ADC #$20                  
CODE_12AA68:        95 33         STA $33,x                 
CODE_12AA6A:        AD CA 00      LDA $00CA                 
CODE_12AA6D:        69 00         ADC #$00                  
CODE_12AA6F:        95 1F         STA $1F,x                 
CODE_12AA71:        A4 01         LDY $01                   
CODE_12AA73:        20 D0 9F      JSR CODE_129FD0           
CODE_12AA76:        16 3D         ASL $3D,x                 
CODE_12AA78:        60            RTS                       

CODE_12AA79:        20 A7 AA      JSR CODE_12AAA7           
CODE_12AA7C:        18            CLC                       
CODE_12AA7D:        79 F6 97      ADC.w DATA_1197F6,y               
CODE_12AA80:        95 29         STA $29,x                 
CODE_12AA82:        A5 EB         LDA $EB                   
CODE_12AA84:        F0 05         BEQ CODE_12AA8B           
CODE_12AA86:        AD BF 04      LDA $04BF                 
CODE_12AA89:        69 00         ADC #$00                  
CODE_12AA8B:        95 15         STA $15,x                 
CODE_12AA8D:        A5 CB         LDA $CB                   
CODE_12AA8F:        95 33         STA $33,x                 
CODE_12AA91:        A5 CA         LDA $CA                   
CODE_12AA93:        95 1F         STA $1F,x                 
CODE_12AA95:        84 01         STY $01                   
CODE_12AA97:        A9 0F         LDA #$0F                  
CODE_12AA99:        95 90         STA $90,x                 
CODE_12AA9B:        20 7A 9F      JSR CODE_129F7A           
CODE_12AA9E:        A4 01         LDY $01                   
CODE_12AAA0:        20 D0 9F      JSR CODE_129FD0           
CODE_12AAA3:        20 F7 9F      JSR CODE_129FF7           
CODE_12AAA6:        60            RTS                       
                       
CODE_12AAA7:        AD 00 05      LDA $0500                 
CODE_12AAAA:        D0 1F         BNE CODE_12AACB           
CODE_12AAAC:        AD 23 06      LDA $0623                 
CODE_12AAAF:        18            CLC                       
CODE_12AAB0:        69 03         ADC #$03
CODE_12AAB2:        8D 23 06      STA $0623                                 
CODE_12AAB5:        90 14         BCC CODE_12AACB           
CODE_12AAB7:        20 35 B3      JSR CODE_12B335           
CODE_12AABA:        30 0F         BMI CODE_12AACB           
CODE_12AABC:        A0 00         LDY #$00                  
CODE_12AABE:        A5 10         LDA $10                   
CODE_12AAC0:        29 40 D0      AND #$40                
CODE_12AAC2:        D0 01         BNE CODE_12AAC5
CODE_12AAC4:        C8            INY               
CODE_12AAC5:        A6 00         LDX $00                   
CODE_12AAC7:        AD C1 04      LDA $04C1                 
CODE_12AACA:        60            RTS
                       
CODE_12AACB:        68            PLA                       
CODE_12AACC:        68            PLA                       
CODE_12AACD:        60            RTS
                       
CODE_12AACE:        20 AB DD      JSR CODE_12DDAB           
CODE_12AAD1:        20 16 BB      JSR CODE_12BB16           
CODE_12AAD4:        BD 53 04      LDA $0453,x               
CODE_12AAD7:        D0 08         BNE CODE_12AAE1           
CODE_12AAD9:        A9 04         LDA #$04
CODE_12AADB:        9D 53 04      STA $0453,x               
CODE_12AADE:        FE 80 04      INC $0480,x               
CODE_12AAE1:        BD 80 04      LDA $0480,x               
CODE_12AAE4:        C9 03         CMP #$03
CODE_12AAE6:        90 05         BCC CODE_12AAED                
CODE_12AAE8:        A9 00         LDA #$00                   
CODE_12AAEA:        9D 80 04      STA $0480,x                  
           
CODE_12AAED:        B5 65         LDA $65,x                 
CODE_12AAEF:        29 EF         AND #$EF
CODE_12AAF1:        95 65         STA $65,x       
CODE_12AAF3:        BD 80 04      LDA $0480,x                              
CODE_12AAF6:        0A            ASL A                     
CODE_12AAF7:        8D 12 07      STA $0712                 
CODE_12AAFA:        B4 90         LDY $90,x                 
CODE_12AAFC:        B9 3B 99      LDA.w DATA_11993B,y               
CODE_12AAFF:        18            CLC                       
CODE_12AB00:        6D 12 07      ADC $0712                 
CODE_12AB03:        20 D5 BD      JSR CODE_12BDD5           
CODE_12AB06:        B5 79         LDA $79,x                 
CODE_12AB08:        D0 03         BNE CODE_12AB0D           
CODE_12AB0A:        4C AA A0      JMP CODE_12A0AA           

CODE_12AB0D:        B5 5B         LDA $5B,x                 
CODE_12AB0F:        29 03         AND #$03
CODE_12AB11:        F0 03         BEQ CODE_12AB16
CODE_12AB13:        20 F9 B1      JSR CODE_12B1F9  
CODE_12AB16:        4C 97 B4      JMP CODE_12B497               
           
CODE_12AB19:        B5 9F         LDA $9F,x                 
CODE_12AB1B:        0A            ASL A                     
CODE_12AB1C:        D0 03         BNE CODE_12AB21           
CODE_12AB1E:        20 CD 9F      JSR CODE_129FCD           
CODE_12AB21:        20 AB DD      JSR CODE_12DDAB           
CODE_12AB24:        B5 5B         LDA $5B,x                 
CODE_12AB26:        48            PHA                       
CODE_12AB27:        29 04         AND #$04                  
CODE_12AB29:        F0 03         BEQ CODE_12AB2E           
CODE_12AB2B:        20 59 B6      JSR CODE_12B659           
CODE_12AB2E:        68            PLA                       
CODE_12AB2F:        29 03         AND #$03                  
CODE_12AB31:        F0 03         BEQ CODE_12AB36           
CODE_12AB33:        20 48 C2      JSR CODE_12C248           
CODE_12AB36:        20 AA A0      JSR CODE_12A0AA           
CODE_12AB39:        A9 83         LDA #$83                  
CODE_12AB3B:        9D 6E 04      STA $046E,x               
CODE_12AB3E:        A9 02         LDA #$02                  
CODE_12AB40:        95 6F         STA $6F,x                 
CODE_12AB42:        20 16 BB      JSR CODE_12BB16           
CODE_12AB45:        F6 9F         INC $9F,x                 
CODE_12AB47:        B5 9F         LDA $9F,x                 
CODE_12AB49:        29 2F         AND #$2F                  
CODE_12AB4B:        D0 04         BNE CODE_12AB51           
CODE_12AB4D:        A9 10         LDA #$10                  
CODE_12AB4F:        95 86         STA $86,x                 
CODE_12AB51:        B4 86         LDY $86,x                 
CODE_12AB53:        F0 52         BEQ CODE_12ABA7           
CODE_12AB55:        C0 06         CPY #$06                  
CODE_12AB57:        D0 3C         BNE CODE_12AB95           
CODE_12AB59:        20 35 B3      JSR CODE_12B335           
CODE_12AB5C:        30 37         BMI CODE_12AB95           
CODE_12AB5E:        B5 90         LDA $90,x                 
CODE_12AB60:        48            PHA                       
CODE_12AB61:        A6 00         LDX $00                   
CODE_12AB63:        AD 87 05      LDA $0587                 
CODE_12AB66:        29 0F         AND #$0F                  
CODE_12AB68:        09 BC         ORA #$BC                  
CODE_12AB6A:        95 47         STA $47,x                 
CODE_12AB6C:        20 DA C1      JSR CODE_12C1DA           
CODE_12AB6F:        68            PLA                       
CODE_12AB70:        C9 25         CMP #$25                  
CODE_12AB72:        B9 F8 97      LDA.w DATA_1197F8,y               
CODE_12AB75:        90 02         BCC CODE_12AB79           
CODE_12AB77:        A9 00         LDA #$00                  
CODE_12AB79:        95 3D         STA $3D,x                 
CODE_12AB7B:        B5 29         LDA $29,x                 
CODE_12AB7D:        E9 05         SBC #$05                  
CODE_12AB7F:        95 29         STA $29,x                 
CODE_12AB81:        B5 15         LDA $15,x                 
CODE_12AB83:        E9 00         SBC #$00                  
CODE_12AB85:        95 15         STA $15,x                 
CODE_12AB87:        A9 20         LDA #$20                  
CODE_12AB89:        95 90         STA $90,x                 
CODE_12AB8B:        A9 27         LDA #$27                  
CODE_12AB8D:        8D E3 1D      STA $1DE3                 
CODE_12AB90:        20 7A 9F      JSR CODE_129F7A           
CODE_12AB93:        A6 12         LDX $12                   
CODE_12AB95:        B5 65         LDA $65,x                 
CODE_12AB97:        09 10         ORA #$10                  
CODE_12AB99:        95 65         STA $65,x                 
CODE_12AB9B:        A9 AE         LDA #$AE                  
CODE_12AB9D:        20 D5 BD      JSR CODE_12BDD5           
CODE_12ABA0:        B5 65         LDA $65,x                 
CODE_12ABA2:        29 EF         AND #$EF                  
CODE_12ABA4:        95 65         STA $65,x                 
CODE_12ABA6:        60            RTS                       

CODE_12ABA7:        4C 29 BD      JMP CODE_12BD29           

CODE_12ABAA:        A0 05         LDY #$05                  
CODE_12ABAC:        B9 51 00      LDA $0051,y               
CODE_12ABAF:        F0 0B         BEQ CODE_12ABBC           
CODE_12ABB1:        C4 12         CPY $12                   
CODE_12ABB3:        F0 07         BEQ CODE_12ABBC           
CODE_12ABB5:        B9 90 00      LDA $0090,y               
CODE_12ABB8:        C9 3D         CMP #$3D                  
CODE_12ABBA:        F0 0B         BEQ CODE_12ABC7           
CODE_12ABBC:        88            DEY                       
CODE_12ABBD:        10 ED         BPL CODE_12ABAC           
CODE_12ABBF:        AD B0 04      LDA $04B0                 
CODE_12ABC2:        D0 03         BNE CODE_12ABC7           
CODE_12ABC4:        4C 85 AC      JMP CODE_12AC85           

CODE_12ABC7:        4C 3B A8      JMP CODE_12A83B           

CODE_12ABCA:        A0 05         LDY #$05                  
CODE_12ABCC:        B9 51 00      LDA $0051,y               
CODE_12ABCF:        F0 0B         BEQ CODE_12ABDC           
CODE_12ABD1:        C4 12         CPY $12                   
CODE_12ABD3:        F0 07         BEQ CODE_12ABDC           
CODE_12ABD5:        B9 90 00      LDA $0090,y               
CODE_12ABD8:        C9 44         CMP #$44                  
CODE_12ABDA:        F0 EB         BEQ CODE_12ABC7           
CODE_12ABDC:        88            DEY                       
CODE_12ABDD:        10 ED         BPL CODE_12ABCC           
CODE_12ABDF:        AD B5 04      LDA $04B5                 
CODE_12ABE2:        D0 E3         BNE CODE_12ABC7           
CODE_12ABE4:        F0 DE         BEQ CODE_12ABC4           
CODE_12ABE6:        20 35 B3      JSR CODE_12B335           
CODE_12ABE9:        30 25         BMI CODE_12AC10           
CODE_12ABEB:        A6 00         LDX $00                   
CODE_12ABED:        A9 45         LDA #$45                  
CODE_12ABEF:        95 90         STA $90,x                 
CODE_12ABF1:        AD C1 04      LDA $04C1                 
CODE_12ABF4:        69 D0         ADC #$D0                  
CODE_12ABF6:        95 29         STA $29,x                 
CODE_12ABF8:        AD BF 04      LDA $04BF                 
CODE_12ABFB:        69 00         ADC #$00                  
CODE_12ABFD:        95 15         STA $15,x                 
CODE_12ABFF:        A5 CB         LDA $CB                   
CODE_12AC01:        69 E0         ADC #$E0                  
CODE_12AC03:        95 33         STA $33,x                 
CODE_12AC05:        A5 CA         LDA $CA                   
CODE_12AC07:        69 00         ADC #$00                  
CODE_12AC09:        95 1F         STA $1F,x                 
CODE_12AC0B:        20 7A 9F      JSR CODE_129F7A           
CODE_12AC0E:        A6 12         LDX $12                   
CODE_12AC10:        60            RTS                       

CODE_12AC11:        A9 FC         LDA #$FC                  ; \ Star Y speed = #$FC.
CODE_12AC13:        95 47         STA $47,x                 ; / (Rise up slightly.)
CODE_12AC15:        A0 F8         LDY #$F8                  ; \ X speed is #$F8 or #$08.
CODE_12AC17:        A5 10         LDA $10                   ;  | Switches every 128 frames.
CODE_12AC19:        9D 5C 04      STA $045C,x               ;  |
CODE_12AC1C:        10 02         BPL CODE_12AC20           ;  |
CODE_12AC1E:        A0 08         LDY #$08                  ;  | <--
CODE_12AC20:        94 3D         STY $3D,x                 ; /
CODE_12AC22:        4C A7 A0      JMP CODE_12A0A7           

CODE_12AC25:        20 AB DD      JSR CODE_12DDAB           
CODE_12AC28:        29 03         AND #$03                  
CODE_12AC2A:        D0 03         BNE CODE_12AC2F           
CODE_12AC2C:        4C 3B A8      JMP CODE_12A83B           

CODE_12AC2F:        F6 9F         INC $9F,x                 
CODE_12AC31:        B5 9F         LDA $9F,x                 
CODE_12AC33:        0A            ASL A                     
CODE_12AC34:        D0 41         BNE CODE_12AC77           
CODE_12AC36:        20 35 B3      JSR CODE_12B335           
CODE_12AC39:        30 3C         BMI CODE_12AC77           
CODE_12AC3B:        A4 00         LDY $00                   
CODE_12AC3D:        B9 29 00      LDA $0029,y               ; \ X position of new sprite = 6 pixels to the left from the generator.
CODE_12AC40:        38            SEC                       ;  |
CODE_12AC41:        E9 06         SBC #$06                  ;  |
CODE_12AC43:        99 29 00      STA $0029,y               ; /
CODE_12AC46:        B9 33 00      LDA $0033,y               ; \ Y position of new sprite = 4 pixels upwards from the generator.
CODE_12AC49:        E9 04         SBC #$04                  ;  |
CODE_12AC4B:        99 33 00      STA $0033,y               ; /
CODE_12AC4E:        B9 1F 00      LDA $001F,y               
CODE_12AC51:        E9 00         SBC #$00                  
CODE_12AC53:        99 1F 00      STA $001F,y               
CODE_12AC56:        A9 1A         LDA #$1A                  
CODE_12AC58:        99 80 04      STA $0480,y               
CODE_12AC5B:        A9 F8         LDA #$F8                  
CODE_12AC5D:        99 47 00      STA $0047,y               
CODE_12AC60:        B5 90         LDA $90,x                 ; \ Check if Bob-Omb generator.
CODE_12AC62:        C9 16         CMP #$16                  ;  |
CODE_12AC64:        D0 11         BNE CODE_12AC77           ; / If not, return.
CODE_12AC66:        A9 09         LDA #$09                  ; \ Spawn Bob-Omb.
CODE_12AC68:        99 90 00      STA $0090,y               ; /
CODE_12AC6B:        B9 3D 00      LDA $003D,y               
CODE_12AC6E:        0A            ASL A                     
CODE_12AC6F:        99 3D 00      STA $003D,y               
CODE_12AC72:        A9 FF         LDA #$FF                  
CODE_12AC74:        99 86 00      STA $0086,y               
CODE_12AC77:        60            RTS                       

CODE_12AC78:        D6 33         DEC $33,x                 
CODE_12AC7A:        D6 33         DEC $33,x                 
CODE_12AC7C:        A0 01         LDY #$01                  
CODE_12AC7E:        8C 1F 11      STY $111F                 
CODE_12AC81:        C8            INY                       
CODE_12AC82:        8C 0B 11      STY $110B                 
CODE_12AC85:        20 96 9F      JSR CODE_129F96           
CODE_12AC88:        A9 00         LDA #$00                  ; \ No X-speed.
CODE_12AC8A:        95 3D         STA $3D,x                 ; /
CODE_12AC8C:        60            RTS                       

CODE_12AC8D:        A5 ED         LDA $ED                   
CODE_12AC8F:        F0 03         BEQ CODE_12AC94           
CODE_12AC91:        4C 30 AD      JMP CODE_12AD30           

CODE_12AC94:        AD B6 04      LDA $04B6                 ; \ If time to wait before Hawkmouth opens his mouth is 0...
CODE_12AC97:        F0 0A         BEQ CODE_12ACA3           ; / Branch.
CODE_12AC99:        CE B6 04      DEC $04B6                 ; \ Decrease that timer. If not hitting 0, branch.
CODE_12AC9C:        D0 F3         BNE CODE_12AC91           ; /
CODE_12AC9E:        A9 2C         LDA #$2C                  ; \ Opening mouth sound effect.
CODE_12ACA0:        8D E0 1D      STA $1DE0                 ; /
CODE_12ACA3:        AD B4 04      LDA $04B4                 
CODE_12ACA6:        F0 35         BEQ CODE_12ACDD           
CODE_12ACA8:        CE B5 04      DEC $04B5                 
CODE_12ACAB:        D0 E4         BNE CODE_12AC91           
CODE_12ACAD:        A9 00         LDA #$00                  
CODE_12ACAF:        8D B4 04      STA $04B4                 
CODE_12ACB2:        A9 01         LDA #$01                  
CODE_12ACB4:        8D 36 05      STA $0536                 
CODE_12ACB7:        A9 01         LDA #$01                  
CODE_12ACB9:        20 41 AD      JSR CODE_12AD41           
CODE_12ACBC:        A9 F0         LDA #$F0                  
CODE_12ACBE:        8D 81 08      STA $0881                 
CODE_12ACC1:        8D 85 08      STA $0885                 
CODE_12ACC4:        AC 29 06      LDY $0629                 
CODE_12ACC7:        AD 35 06      LDA $0635                 
CODE_12ACCA:        C9 06         CMP #$06                  
CODE_12ACCC:        D0 01         BNE CODE_12ACCF           
CODE_12ACCE:        C8            INY                       
CODE_12ACCF:        C0 02         CPY #$02                  
CODE_12ACD1:        90 04         BCC CODE_12ACD7           
CODE_12ACD3:        EE 27 06      INC $0627                 
CODE_12ACD6:        60            RTS                       

CODE_12ACD7:        A9 03         LDA #$03                  
CODE_12ACD9:        8D ED 04      STA $04ED                 
CODE_12ACDC:        60            RTS                       

CODE_12ACDD:        AD B5 04      LDA $04B5                 
CODE_12ACE0:        F0 4E         BEQ CODE_12AD30           
CODE_12ACE2:        C9 30         CMP #$30                  
CODE_12ACE4:        F0 18         BEQ CODE_12ACFE           
CODE_12ACE6:        A5 ED         LDA $ED                   
CODE_12ACE8:        29 04         AND #$04                  
CODE_12ACEA:        D0 44         BNE CODE_12AD30           
CODE_12ACEC:        EE B5 04      INC $04B5                 
CODE_12ACEF:        A5 10         LDA $10                   
CODE_12ACF1:        29 03         AND #$03                  
CODE_12ACF3:        D0 06         BNE CODE_12ACFB           
CODE_12ACF5:        CE 1F 11      DEC $111F                 
CODE_12ACF8:        EE 0B 11      INC $110B                 
CODE_12ACFB:        4C 30 AD      JMP CODE_12AD30           

CODE_12ACFE:        B5 5B         LDA $5B,x                 
CODE_12AD00:        29 40         AND #$40                  
CODE_12AD02:        F0 2C         BEQ CODE_12AD30           
CODE_12AD04:        B5 33         LDA $33,x                 
CODE_12AD06:        C5 32         CMP $32                   
CODE_12AD08:        B0 26         BCS CODE_12AD30                   
CODE_12AD0A:        A5 5A         LDA $5A                   
CODE_12AD0C:        29 04         AND #$04                  
CODE_12AD0E:        F0 20         BEQ CODE_12AD30           
CODE_12AD10:        A5 9C         LDA $9C                   
CODE_12AD12:        D0 1C         BNE CODE_12AD30           
CODE_12AD14:        A9 06         LDA #$06                  ; \ Enter Hawkmouth.
CODE_12AD16:        85 50         STA $50                   ; /
CODE_12AD18:        A9 30         LDA #$30                  ; \ Amount of frames to keep walking.
CODE_12AD1A:        85 82         STA $82                   ; /
CODE_12AD1C:        A9 FC         LDA #$FC                  ; \ Y speed of player when entering Hawkmouth.
CODE_12AD1E:        85 46         STA $46                   ; / Rise up slightly.
CODE_12AD20:        A9 80         LDA #$80                  ; \ Fade music.
CODE_12AD22:        8D E2 1D      STA $1DE2                 ; /
CODE_12AD25:        8D 47 05      STA $0547                 
CODE_12AD28:        A9 2D         LDA #$2D                  ; \ Entering Hawkmouth sound effect.
CODE_12AD2A:        8D E0 1D      STA $1DE0                 ; /
CODE_12AD2D:        EE B4 04      INC $04B4                 
CODE_12AD30:        A5 EE         LDA $EE                   
CODE_12AD32:        F0 03         BEQ CODE_12AD37           
CODE_12AD34:        82 D6 00      BRL CODE_12AE0D           

CODE_12AD37:        B5 90         LDA $90,x                 
CODE_12AD39:        38            SEC                       
CODE_12AD3A:        E9 41         SBC #$41                  
CODE_12AD3C:        95 6F         STA $6F,x                 
CODE_12AD3E:        AD B5 04      LDA $04B5                 
CODE_12AD41:        85 07         STA $07                   
CODE_12AD43:        4A            LSR A                     
CODE_12AD44:        4A            LSR A                     
CODE_12AD45:        49 FF         EOR #$FF                  
CODE_12AD47:        38            SEC                       
CODE_12AD48:        6D 2C 04      ADC $042C                 
CODE_12AD4B:        8D 2C 04      STA $042C                 
CODE_12AD4E:        A5 07         LDA $07                   
CODE_12AD50:        D0 05         BNE CODE_12AD57           
CODE_12AD52:        AD B4 04      LDA $04B4                 
CODE_12AD55:        F0 0E         BEQ CODE_12AD65           
CODE_12AD57:        A0 60         LDY #$60                  
CODE_12AD59:        8C F6 02      STY $02F6                 
CODE_12AD5C:        8C F8 02      STY $02F8                 
CODE_12AD5F:        9C F7 02      STZ $02F7                 
CODE_12AD62:        9C F9 02      STZ $02F9                 
CODE_12AD65:        A9 8C         LDA #$8C                  
CODE_12AD67:        A4 07         LDY $07                   
CODE_12AD69:        F0 02         BEQ CODE_12AD6D           
CODE_12AD6B:        A9 90         LDA #$90                  
CODE_12AD6D:        20 D5 BD      JSR CODE_12BDD5           
CODE_12AD70:        A5 07         LDA $07                   
CODE_12AD72:        A8            TAY                       
CODE_12AD73:        4A            LSR A                     
CODE_12AD74:        18            CLC                       
CODE_12AD75:        6D 2C 04      ADC $042C                 
CODE_12AD78:        69 08         ADC #$08                  
CODE_12AD7A:        C0 00         CPY #$00                  
CODE_12AD7C:        D0 02         BNE CODE_12AD80           
CODE_12AD7E:        69 07         ADC #$07                  
CODE_12AD80:        85 00         STA $00                   
CODE_12AD82:        22 83 E4 14   JSL CODE_14E483           
CODE_12AD86:        A2 98         LDX #$98                  
CODE_12AD88:        A5 07         LDA $07                   
CODE_12AD8A:        D0 05         BNE CODE_12AD91           
CODE_12AD8C:        AD B4 04      LDA $04B4                 
CODE_12AD8F:        F0 0A         BEQ CODE_12AD9B           
CODE_12AD91:        A0 68         LDY #$68                  
CODE_12AD93:        8C F8 02      STY $02F8                 
CODE_12AD96:        9C F9 02      STZ $02F9                 
CODE_12AD99:        A2 94         LDX #$94                  
CODE_12AD9B:        20 3B C0      JSR CODE_12C03B           
CODE_12AD9E:        20 3B C0      JSR CODE_12C03B           
CODE_12ADA1:        A6 12         LDX $12                   
CODE_12ADA3:        B5 90         LDA $90,x                 
CODE_12ADA5:        C9 2D         CMP #$2D                  
CODE_12ADA7:        F0 64         BEQ CODE_12AE0D           
CODE_12ADA9:        B5 6F         LDA $6F,x                 
CODE_12ADAB:        C9 01         CMP #$01                  
CODE_12ADAD:        F0 5E         BEQ CODE_12AE0D           
CODE_12ADAF:        B5 33         LDA $33,x                 
CODE_12ADB1:        8D 14 07      STA $0714                 
CODE_12ADB4:        B5 1F         LDA $1F,x                 
CODE_12ADB6:        8D 15 07      STA $0715                 
CODE_12ADB9:        A5 CB         LDA $CB                   
CODE_12ADBB:        8D 16 07      STA $0716                 
CODE_12ADBE:        A5 CA         LDA $CA                   
CODE_12ADC0:        8D 17 07      STA $0717                 
CODE_12ADC3:        AD 1F 02      LDA $021F                 
CODE_12ADC6:        EB            XBA                       
CODE_12ADC7:        AD 29 04      LDA $0429                 
CODE_12ADCA:        C2 20         REP #$20                  
CODE_12ADCC:        18            CLC                       
CODE_12ADCD:        69 10 00      ADC #$0010                
CODE_12ADD0:        8D 12 07      STA $0712                 
CODE_12ADD3:        AD 14 07      LDA $0714                 
CODE_12ADD6:        38            SEC                       
CODE_12ADD7:        ED 16 07      SBC $0716                 
CODE_12ADDA:        18            CLC                       
CODE_12ADDB:        69 0A 00      ADC #$000A                
CODE_12ADDE:        E2 20         SEP #$20                  
CODE_12ADE0:        8D 2C 04      STA $042C                 
CODE_12ADE3:        AD 12 07      LDA $0712                 
CODE_12ADE6:        8D 29 04      STA $0429                 
CODE_12ADE9:        AD 13 07      LDA $0713                 
CODE_12ADEC:        8D 1F 02      STA $021F                 
CODE_12ADEF:        29 01         AND #$01                  
CODE_12ADF1:        0A            ASL A                     
CODE_12ADF2:        0A            ASL A                     
CODE_12ADF3:        0A            ASL A                     
CODE_12ADF4:        85 ED         STA $ED                   
CODE_12ADF6:        B5 65         LDA $65,x                 
CODE_12ADF8:        48            PHA                       
CODE_12ADF9:        09 20         ORA #$20                  
CODE_12ADFB:        95 65         STA $65,x                 
CODE_12ADFD:        A9 38         LDA #$38                  
CODE_12ADFF:        8D F6 02      STA $02F6                 
CODE_12AE02:        9C F7 02      STZ $02F7                 
CODE_12AE05:        A9 78         LDA #$78                  
CODE_12AE07:        20 D5 BD      JSR CODE_12BDD5           
CODE_12AE0A:        68            PLA                       
CODE_12AE0B:        95 65         STA $65,x                 
CODE_12AE0D:        A6 12         LDX $12                   
CODE_12AE0F:        60            RTS                       

CODE_12AE10:        20 85 AC      JSR CODE_12AC85           
CODE_12AE13:        B5 29         LDA $29,x                 
CODE_12AE15:        69 08         ADC #$08                  
CODE_12AE17:        95 29         STA $29,x                 
CODE_12AE19:        B5 33         LDA $33,x                 
CODE_12AE1B:        4A            LSR A                     
CODE_12AE1C:        4A            LSR A                     
CODE_12AE1D:        4A            LSR A                     
CODE_12AE1E:        4A            LSR A                     
CODE_12AE1F:        95 B1         STA $B1,x                 
CODE_12AE21:        A9 80         LDA #$80                  
CODE_12AE23:        95 86         STA $86,x                 
CODE_12AE25:        60            RTS
                       
CODE_12AE26:        20 16 BB      JSR CODE_12BB16           
CODE_12AE29:        F6 9F         INC $9F,x                 
CODE_12AE2B:        20 4F BA      JSR CODE_12BA4F           
CODE_12AE2E:        20 46 BA      JSR CODE_12BA46           
CODE_12AE31:        A9 09         LDA #$09                  
CODE_12AE33:        B4 47         LDY $47,x                 
CODE_12AE35:        30 02         BMI CODE_12AE39           
CODE_12AE37:        A9 89         LDA #$89                  
CODE_12AE39:        95 65         STA $65,x                 
CODE_12AE3B:        A4 EB         LDY $EB                   
CODE_12AE3D:        B5 33         LDA $33,x                 
CODE_12AE3F:        D9 06 98      CMP.w DATA_119806,y               
CODE_12AE42:        90 11         BCC CODE_12AE55           
CODE_12AE44:        B4 86         LDY $86,x                 
CODE_12AE46:        D0 DD         BNE CODE_12AE25           
CODE_12AE48:        95 33         STA $33,x                 
CODE_12AE4A:        B4 B1         LDY $B1,x                 
CODE_12AE4C:        B9 FA 97      LDA.w DATA_1197FA,y               
CODE_12AE4F:        95 47         STA $47,x                 
CODE_12AE51:        A9 C0         LDA #$C0                  
CODE_12AE53:        95 86         STA $86,x                 
CODE_12AE55:        20 97 B4      JSR CODE_12B497           
CODE_12AE58:        F6 47         INC $47,x                 
CODE_12AE5A:        4C 29 BD      JMP CODE_12BD29           

CODE_12AE5D:        AD 28 06      LDA $0628                 
CODE_12AE60:        C9 02         CMP #$02                  
CODE_12AE62:        D0 0C         BNE CODE_12AE70           
CODE_12AE64:        BD 02 07      LDA $0702,x               
CODE_12AE67:        F0 01         BEQ CODE_12AE6A           
CODE_12AE69:        60            RTS
                       
CODE_12AE6A:        FE 02 07      INC $0702,x               
CODE_12AE6D:        4C 29 BD      JMP CODE_12BD29           

CODE_12AE70:        20 16 BB      JSR CODE_12BB16           
CODE_12AE73:        F6 9F         INC $9F,x                 
CODE_12AE75:        20 46 BA      JSR CODE_12BA46           
CODE_12AE78:        20 29 BD      JSR CODE_12BD29           
CODE_12AE7B:        20 4F BA      JSR CODE_12BA4F           
CODE_12AE7E:        A9 00         LDA #$00                  
CODE_12AE80:        95 3D         STA $3D,x                 
CODE_12AE82:        20 90 DD      JSR CODE_12DD90           
CODE_12AE85:        BC 77 04      LDY $0477,x               
CODE_12AE88:        90 14         BCC CODE_12AE9E           
CODE_12AE8A:        B5 86         LDA $86,x                 
CODE_12AE8C:        D0 1B         BNE CODE_12AEA9           
CODE_12AE8E:        B5 33         LDA $33,x                 
CODE_12AE90:        C5 CB         CMP $CB                   
CODE_12AE92:        B5 1F         LDA $1F,x                 
CODE_12AE94:        E5 CA         SBC $CA                   
CODE_12AE96:        F0 11         BEQ CODE_12AEA9           
CODE_12AE98:        0A            ASL A                     
CODE_12AE99:        2A            ROL A                     
CODE_12AE9A:        29 01         AND #$01                  
CODE_12AE9C:        80 07         BRA CODE_12AEA5           

CODE_12AE9E:        A9 20         LDA #$20                  
CODE_12AEA0:        95 86         STA $86,x                 
CODE_12AEA2:        98            TYA                       
CODE_12AEA3:        49 01         EOR #$01                  
CODE_12AEA5:        9D 77 04      STA $0477,x               
CODE_12AEA8:        A8            TAY                       
CODE_12AEA9:        B9 08 98      LDA.w DATA_119808,y               
CODE_12AEAC:        95 47         STA $47,x                 
CODE_12AEAE:        B9 0A 98      LDA.w DATA_11980A,y               
CODE_12AEB1:        95 65         STA $65,x                 
CODE_12AEB3:        20 DA C1      JSR CODE_12C1DA           
CODE_12AEB6:        A5 0F         LDA $0F                   
CODE_12AEB8:        69 10         ADC #$10                  
CODE_12AEBA:        C9 20         CMP #$20                  
CODE_12AEBC:        B0 02         BCS CODE_12AEC0                   
CODE_12AEBE:        16 47         ASL $47,x                 
CODE_12AEC0:        4C EA C1      JMP CODE_12C1EA           

CODE_12AEC3:        A5 EE         LDA $EE                   
CODE_12AEC5:        F0 03         BEQ CODE_12AECA           
CODE_12AEC7:        4C 3B A8      JMP CODE_12A83B           

CODE_12AECA:        A0 FC         LDY #$FC                  ; \ X speed = #$FC...
CODE_12AECC:        A5 10         LDA $10                   ;  | For $20 consecutive frames.
CODE_12AECE:        29 20         AND #$20                  ;  |
CODE_12AED0:        F0 02         BEQ CODE_12AED4           ;  |
CODE_12AED2:        A0 04         LDY #$04                  ;  | The other $20 consecutive frames, X speed = #$04.
CODE_12AED4:        94 3D         STY $3D,x                 ; /
CODE_12AED6:        A9 F8         LDA #$F8                  ; \ Y speed = #$F8.
CODE_12AED8:        95 47         STA $47,x                 ; /
CODE_12AEDA:        20 97 B4      JSR CODE_12B497           
CODE_12AEDD:        A5 ED         LDA $ED                   
CODE_12AEDF:        29 08         AND #$08                  
CODE_12AEE1:        05 EE         ORA $EE                   
CODE_12AEE3:        D0 47         BNE CODE_12AF2C           
CODE_12AEE5:        C2 10         REP #$10                  
CODE_12AEE7:        AC F6 02      LDY $02F6                 
CODE_12AEEA:        AD 29 04      LDA $0429                 
CODE_12AEED:        99 00 08      STA $0800,y               
CODE_12AEF0:        99 04 08      STA $0804,y               
CODE_12AEF3:        AD 2C 04      LDA $042C                 
CODE_12AEF6:        99 01 08      STA $0801,y               
CODE_12AEF9:        18            CLC                       
CODE_12AEFA:        69 08         ADC #$08                  
CODE_12AEFC:        99 05 08      STA $0805,y               
CODE_12AEFF:        A9 8A         LDA #$8A                  ; \ Upper tile number of heart.
CODE_12AF01:        99 02 08      STA $0802,y               ; /
CODE_12AF04:        A9 9A         LDA #$9A                  ; \ Lower tile number of heart.
CODE_12AF06:        99 06 08      STA $0806,y               ; /
CODE_12AF09:        A5 10         LDA $10                   ; \ X-Flip tile every $20 frames.
CODE_12AF0B:        29 20         AND #$20                  ;  |
CODE_12AF0D:        49 20         EOR #$20                  ;  |
CODE_12AF0F:        0A            ASL A                     ;  |
CODE_12AF10:        09 22         ORA #$22                  ;  | Palette 9, tile page 0. Priority 2.
CODE_12AF12:        99 03 08      STA $0803,y               ;  |
CODE_12AF15:        99 07 08      STA $0807,y               ; /
CODE_12AF18:        5A            PHY                       
CODE_12AF19:        C2 20         REP #$20                  
CODE_12AF1B:        98            TYA                       
CODE_12AF1C:        4A            LSR A                     
CODE_12AF1D:        4A            LSR A                     
CODE_12AF1E:        A8            TAY                       
CODE_12AF1F:        E2 20         SEP #$20                  
CODE_12AF21:        A9 00         LDA #$00                  ; \ Tiles are 8x8.
CODE_12AF23:        99 20 0A      STA $0A20,y               ;  |
CODE_12AF26:        99 21 0A      STA $0A21,y               ; /
CODE_12AF29:        7A            PLY                       
CODE_12AF2A:        E2 10         SEP #$10                  
CODE_12AF2C:        60            RTS
                       
CODE_12AF2D:        20 96 9F      JSR CODE_129F96           
CODE_12AF30:        A9 FF         LDA #$FF                  
CODE_12AF32:        9D 02 07      STA $0702,x               
CODE_12AF35:        A0 00         LDY #$00                  
CODE_12AF37:        B5 29         LDA $29,x                 
CODE_12AF39:        C9 A0         CMP #$A0                  
CODE_12AF3B:        F0 06         BEQ CODE_12AF43           
CODE_12AF3D:        C8            INY                       
CODE_12AF3E:        C9 B0         CMP #$B0                  
CODE_12AF40:        F0 01         BEQ CODE_12AF43           
CODE_12AF42:        C8            INY                       
CODE_12AF43:        98            TYA                       
CODE_12AF44:        95 79         STA $79,x                 
CODE_12AF46:        B9 0C 98      LDA.w DATA_11980C,y               
CODE_12AF49:        95 65         STA $65,x                 
CODE_12AF4B:        A9 02         LDA #$02                  
CODE_12AF4D:        9D 65 04      STA $0465,x               
CODE_12AF50:        B5 15         LDA $15,x                 
CODE_12AF52:        9D F0 04      STA $04F0,x               
CODE_12AF55:        60            RTS
                       
CODE_12AF56:        BD 02 07      LDA $0702,x               
CODE_12AF59:        30 2B         BMI CODE_12AF86           
CODE_12AF5B:        F0 12         BEQ CODE_12AF6F           
CODE_12AF5D:        DE 02 07      DEC $0702,x               
CODE_12AF60:        BD 02 07      LDA $0702,x               
CODE_12AF63:        D0 18         BNE CODE_12AF7D           
CODE_12AF65:        B5 5B         LDA $5B,x                 
CODE_12AF67:        09 10         ORA #$10                  
CODE_12AF69:        95 5B         STA $5B,x                 
CODE_12AF6B:        20 16 BB      JSR CODE_12BB16           
CODE_12AF6E:        60            RTS
                       
CODE_12AF6F:        B5 5B         LDA $5B,x                 
CODE_12AF71:        29 10         AND #$10                  
CODE_12AF73:        F0 11         BEQ CODE_12AF86           
CODE_12AF75:        A9 11         LDA #$11                  
CODE_12AF77:        9D 5C 04      STA $045C,x               
CODE_12AF7A:        9D 02 07      STA $0702,x               
CODE_12AF7D:        B5 6F         LDA $6F,x                 
CODE_12AF7F:        49 03         EOR #$03                  
CODE_12AF81:        95 6F         STA $6F,x                 
CODE_12AF83:        4C 24 B0      JMP CODE_12B024           

CODE_12AF86:        20 16 BB      JSR CODE_12BB16           
CODE_12AF89:        20 AB DD      JSR CODE_12DDAB           
CODE_12AF8C:        A9 00         LDA #$00                  
CODE_12AF8E:        95 3D         STA $3D,x                 
CODE_12AF90:        20 DA C1      JSR CODE_12C1DA           
CODE_12AF93:        C8            INY                       
CODE_12AF94:        94 6F         STY $6F,x                 
CODE_12AF96:        20 29 BD      JSR CODE_12BD29           
CODE_12AF99:        B5 5B         LDA $5B,x                 
CODE_12AF9B:        29 04         AND #$04                  
CODE_12AF9D:        F0 3C         BEQ CODE_12AFDB           
CODE_12AF9F:        20 59 B6      JSR CODE_12B659           
CODE_12AFA2:        A5 10         LDA $10                   
CODE_12AFA4:        D0 06         BNE CODE_12AFAC           
CODE_12AFA6:        A9 E0         LDA #$E0                  
CODE_12AFA8:        95 47         STA $47,x                 
CODE_12AFAA:        D0 2F         BNE CODE_12AFDB           
CODE_12AFAC:        B4 79         LDY $79,x                 
CODE_12AFAE:        B9 11 98      LDA.w DATA_119811,y               
CODE_12AFB1:        25 10         AND $10                   
CODE_12AFB3:        D0 0A         BNE CODE_12AFBF           
CODE_12AFB5:        A5 ED         LDA $ED                   
CODE_12AFB7:        29 0C         AND #$0C                  
CODE_12AFB9:        D0 04         BNE CODE_12AFBF           
CODE_12AFBB:        A9 1C         LDA #$1C                  
CODE_12AFBD:        95 86         STA $86,x                 
CODE_12AFBF:        B4 86         LDY $86,x                 
CODE_12AFC1:        D0 1B         BNE CODE_12AFDE           
CODE_12AFC3:        F6 B1         INC $B1,x                 
CODE_12AFC5:        B5 B1         LDA $B1,x                 
CODE_12AFC7:        29 40         AND #$40                  
CODE_12AFC9:        F0 59         BEQ CODE_12B024           
CODE_12AFCB:        20 43 AA      JSR CODE_12AA43           
CODE_12AFCE:        A9 0A         LDA #$0A                  
CODE_12AFD0:        B4 B1         LDY $B1,x                 
CODE_12AFD2:        30 02         BMI CODE_12AFD6           
CODE_12AFD4:        A9 F6         LDA #$F6                  
CODE_12AFD6:        95 3D         STA $3D,x                 
CODE_12AFD8:        4C EF C1      JMP CODE_12C1EF           

CODE_12AFDB:        4C B2 A0      JMP CODE_12A0B2           

CODE_12AFDE:        C0 08         CPY #$08                  
CODE_12AFE0:        D0 42         BNE CODE_12B024           
CODE_12AFE2:        A9 20         LDA #$20                  
CODE_12AFE4:        8D E0 1D      STA $1DE0                 
CODE_12AFE7:        20 70 B6      JSR CODE_12B670           
CODE_12AFEA:        30 38         BMI CODE_12B024           
CODE_12AFEC:        BC 65 04      LDY $0465,x               
CODE_12AFEF:        B5 79         LDA $79,x                 
CODE_12AFF1:        A6 00         LDX $00                   
CODE_12AFF3:        C9 02         CMP #$02                  
CODE_12AFF5:        F0 0E         BEQ CODE_12B005           
CODE_12AFF7:        C9 01         CMP #$01                  
CODE_12AFF9:        D0 10         BNE CODE_12B00B           
CODE_12AFFB:        AD 87 05      LDA $0587                 
CODE_12AFFE:        29 1F         AND #$1F                  
CODE_12B000:        D9 14 98      CMP.w DATA_119814,y               
CODE_12B003:        B0 06         BCS CODE_12B00B               
CODE_12B005:        F6 79         INC $79,x                 
CODE_12B007:        A9 20         LDA #$20                  
CODE_12B009:        D0 02         BNE CODE_12B00D           
CODE_12B00B:        A9 1E         LDA #$1E                      
CODE_12B00D:        95 90         STA $90,x                 
CODE_12B00F:        B5 33         LDA $33,x                 
CODE_12B011:        18            CLC                       
CODE_12B012:        69 03         ADC #$03                  
CODE_12B014:        95 33         STA $33,x                 
CODE_12B016:        B4 6F         LDY $6F,x                 
CODE_12B018:        B5 29         LDA $29,x                 
CODE_12B01A:        79 0E 98      ADC.w DATA_11980E,y               
CODE_12B01D:        95 29         STA $29,x                 
CODE_12B01F:        20 7A 9F      JSR CODE_129F7A           
CODE_12B022:        A6 12         LDX $12                   
CODE_12B024:        4C 29 BD      JMP CODE_12BD29           

CODE_12B027:        20 43 AA      JSR CODE_12AA43           
CODE_12B02A:        B5 47         LDA $47,x                 
CODE_12B02C:        C9 EA         CMP #$EA                  
CODE_12B02E:        D0 08         BNE CODE_12B038           
CODE_12B030:        A9 01         LDA #$01                  
CODE_12B032:        8D E3 1D      STA $1DE3                 
CODE_12B035:        EE 2B 06      INC $062B                 
CODE_12B038:        B5 47         LDA $47,x                 
CODE_12B03A:        C9 10         CMP #$10                  
CODE_12B03C:        30 26         BMI CODE_12B064           
CODE_12B03E:        20 F9 B1      JSR CODE_12B1F9           
CODE_12B041:        B5 90         LDA $90,x                 ; \ If sprite is 1-Up...
CODE_12B043:        C9 40         CMP #$40                  ;  | ...
CODE_12B045:        F0 01         BEQ CODE_12B048           ; / ...branch.
CODE_12B047:        60            RTS                       ; Return.
                       
CODE_12B048:        EE 20 06      INC $0620                 ; 1-Up collected flag, next time 1-Up object is picked up, a vegetable is spawned.
CODE_12B04B:        AD EE 04      LDA $04EE                 ; \ Increment lives by 1 unless lives >= 99.
CODE_12B04E:        1A            INC A                     ;  |
CODE_12B04F:        C9 64         CMP #$64                  ;  |
CODE_12B051:        90 02         BCC CODE_12B055           ;  |
CODE_12B053:        A9 63         LDA #$63                  ;  |
CODE_12B055:        8D EE 04      STA $04EE                 ; /
CODE_12B058:        A9 05         LDA #$05                  ; \ 1-Up get sound effect.
CODE_12B05A:        8D E3 1D      STA $1DE3                 ; /
CODE_12B05D:        60            RTS                       ; Return.
                       
CODE_12B05E:        EE 2C 04      INC $042C                 
CODE_12B061:        20 0E B2      JSR CODE_12B20E           
CODE_12B064:        B5 A8         LDA $A8,x                 ;\If crystal ball is completely picked up
CODE_12B066:        C9 01         CMP #$01                  ;/
CODE_12B068:        D0 04         BNE CODE_12B06E           
CODE_12B06A:        A5 9A         LDA $9A                   
CODE_12B06C:        F0 03         BEQ CODE_12B071           
CODE_12B06E:        4C D6 B0      JMP CODE_12B0D6           

CODE_12B071:        20 92 B6      JSR CODE_12B692           
CODE_12B074:        A9 00         LDA #$00                  
CODE_12B076:        85 9C         STA $9C                   
CODE_12B078:        95 A8         STA $A8,x                 
CODE_12B07A:        20 F9 B1      JSR CODE_12B1F9           
CODE_12B07D:        B5 90         LDA $90,x                 ; \ If not Crystal Ball, branch.
CODE_12B07F:        C9 44         CMP #$44                  ;  |
CODE_12B081:        D0 18         BNE CODE_12B09B           ; /
CODE_12B083:        AD B5 04      LDA $04B5                 ; \ If Crystal ball already collected, return.
CODE_12B086:        D0 12         BNE CODE_12B09A           ; /
CODE_12B088:        A9 10         LDA #$10                  ; \ Bonus get music.
CODE_12B08A:        8D E2 1D      STA $1DE2                 ; / (When Crystal ball is collected.)
CODE_12B08D:        A9 60         LDA #$60                  ; \ Amount of time to wait before Hawkmouth opens his mouth.
CODE_12B08F:        8D B6 04      STA $04B6                 ; /
CODE_12B092:        A9 A4         LDA #$A4                  ; \ Amount of time to wait before changing music back to normal one.
CODE_12B094:        8D 8A 07      STA $078A                 ; /
CODE_12B097:        EE B5 04      INC $04B5                 ; Set 'Crystal ball has been collected' flag.
CODE_12B09A:        60            RTS                       ; Return.
                       
CODE_12B09B:        C9 40         CMP #$40                  ; \ If 1-Up, branch.
CODE_12B09D:        F0 21         BEQ CODE_12B0C0           ; /
CODE_12B09F:        C9 46         CMP #$46                  ; \ If Stopwatch, branch.
CODE_12B0A1:        F0 2A         BEQ CODE_12B0CD           ; /
CODE_12B0A3:        C9 3F         CMP #$3F                  ; \ If not Mushroom, branch.
CODE_12B0A5:        D0 1D         BNE CODE_12B0C4           ; /
CODE_12B0A7:        A6 79         LDX $79                   
CODE_12B0A9:        FE FC 04      INC $04FC,x               
CODE_12B0AC:        A6 12         LDX $12                   
CODE_12B0AE:        EE C4 04      INC $04C4                 ; Increase maximum amount of hearts.
CODE_12B0B1:        22 98 E0 14   JSL CODE_14E098           ; Fill all hearts. (NOPing this out only increases the maximum, but won't actually make the hearts red.)
CODE_12B0B5:        A9 0C         LDA #$0C                  ; \ Bonus game music.
CODE_12B0B7:        8D E2 1D      STA $1DE2                 ; / (Mushroom collected.)
CODE_12B0BA:        A9 58         LDA #$58                  
CODE_12B0BC:        8D 9B 07      STA $079B                 
CODE_12B0BF:        60            RTS
                       
CODE_12B0C0:        A9 09         LDA #$09                  
CODE_12B0C2:        95 65         STA $65,x                 
CODE_12B0C4:        A9 E0         LDA #$E0                  ; \ Y speed of 1-Up mushroom when collected.
CODE_12B0C6:        95 47         STA $47,x                 ; /
CODE_12B0C8:        A9 01         LDA #$01                  
CODE_12B0CA:        95 51         STA $51,x                 
CODE_12B0CC:        60            RTS
                       
CODE_12B0CD:        A9 FF         LDA #$FF                  ; \ Set sprite freeze timer to #$FF. (For stopwatch.)
CODE_12B0CF:        8D 00 05      STA $0500                 ; /
CODE_12B0D2:        60            RTS                       ; Return.
                       
CODE_12B0D3:        20 0E B2      JSR CODE_12B20E           
CODE_12B0D6:        20 AB DD      JSR CODE_12DDAB           
CODE_12B0D9:        B5 5B         LDA $5B,x                 
CODE_12B0DB:        48            PHA                       
CODE_12B0DC:        35 6F         AND $6F,x                 
CODE_12B0DE:        F0 0C         BEQ CODE_12B0EC           
CODE_12B0E0:        20 48 C2      JSR CODE_12C248           
CODE_12B0E3:        20 3B B6      JSR CODE_12B63B           
CODE_12B0E6:        20 3B B6      JSR CODE_12B63B           
CODE_12B0E9:        20 3B B6      JSR CODE_12B63B           
CODE_12B0EC:        68            PLA                       
CODE_12B0ED:        29 04         AND #$04                  
CODE_12B0EF:        F0 1D         BEQ CODE_12B10E           
CODE_12B0F1:        B5 47         LDA $47,x                 
CODE_12B0F3:        C9 09         CMP #$09                  
CODE_12B0F5:        90 0E         BCC CODE_12B105           
CODE_12B0F7:        4A            LSR A                     
CODE_12B0F8:        4A            LSR A                     
CODE_12B0F9:        4A            LSR A                     
CODE_12B0FA:        4A            LSR A                     
CODE_12B0FB:        A8            TAY                       
CODE_12B0FC:        B9 19 98      LDA.w DATA_119819,y               
CODE_12B0FF:        20 35 B6      JSR CODE_12B635           
CODE_12B102:        4C 0E B1      JMP CODE_12B10E           

CODE_12B105:        20 59 B6      JSR CODE_12B659           
CODE_12B108:        A5 0B         LDA $0B                   
CODE_12B10A:        D0 02         BNE CODE_12B10E           
CODE_12B10C:        95 3D         STA $3D,x                 
CODE_12B10E:        B5 90         LDA $90,x                 
CODE_12B110:        C9 37         CMP #$37                  
CODE_12B112:        D0 29         BNE CODE_12B13D           
CODE_12B114:        B5 86         LDA $86,x                 
CODE_12B116:        D0 1C         BNE CODE_12B134           
CODE_12B118:        B4 A8         LDY $A8,x                 
CODE_12B11A:        F0 04         BEQ CODE_12B120           
CODE_12B11C:        85 9C         STA $9C                   
CODE_12B11E:        95 A8         STA $A8,x                 
CODE_12B120:        A9 04         LDA #$04                  
CODE_12B122:        95 51         STA $51,x                 
CODE_12B124:        A9 20         LDA #$20                  
CODE_12B126:        95 86         STA $86,x                
CODE_12B128:        A9 4A         LDA #$4A                  
CODE_12B12A:        8D E3 1D      STA $1DE3                 
CODE_12B12D:        A9 01         LDA #$01                  
CODE_12B12F:        4A            LSR A                     
CODE_12B130:        9D 2F 04      STA $042F,x               
CODE_12B133:        60            RTS
                       
CODE_12B134:        C9 40         CMP #$40                  
CODE_12B136:        B0 05         BCS CODE_12B13D                   
CODE_12B138:        A5 10         LDA $10                   
CODE_12B13A:        9D 5C 04      STA $045C,x               
CODE_12B13D:        20 46 BA      JSR CODE_12BA46           
CODE_12B140:        20 AA A0      JSR CODE_12A0AA           
CODE_12B143:        22 10 92 13   JSL CODE_139210           
CODE_12B147:        B5 B1         LDA $B1,x                 
CODE_12B149:        D0 03         BNE CODE_12B14E           
CODE_12B14B:        4C C9 BD      JMP CODE_12BDC9           

CODE_12B14E:        4C D5 BD      JMP CODE_12BDD5           

CODE_12B151:        20 46 BA      JSR CODE_12BA46           
CODE_12B154:        20 AB DD      JSR CODE_12DDAB           
CODE_12B157:        B5 5B         LDA $5B,x                 
CODE_12B159:        48            PHA                       
CODE_12B15A:        29 03         AND #$03                  
CODE_12B15C:        F0 09         BEQ CODE_12B167           
CODE_12B15E:        20 48 C2      JSR CODE_12C248           
CODE_12B161:        20 3B B6      JSR CODE_12B63B           
CODE_12B164:        20 3B B6      JSR CODE_12B63B           
CODE_12B167:        68            PLA                       
CODE_12B168:        29 04         AND #$04                  
CODE_12B16A:        F0 D1         BEQ CODE_12B13D           
CODE_12B16C:        20 59 B6      JSR CODE_12B659           
CODE_12B16F:        DA            PHX                       
CODE_12B170:        A2 08         LDX #$08                  
CODE_12B172:        B5 51         LDA $51,x                 
CODE_12B174:        C9 01         CMP #$01                  
CODE_12B176:        D0 09         BNE CODE_12B181           
CODE_12B178:        B5 90         LDA $90,x                 
CODE_12B17A:        C9 3C         CMP #$3C                  
CODE_12B17C:        D0 03         BNE CODE_12B181           
CODE_12B17E:        20 F9 B1      JSR CODE_12B1F9           
CODE_12B181:        CA            DEX                       
CODE_12B182:        10 EE         BPL CODE_12B172           
CODE_12B184:        FA            PLX                       
CODE_12B185:        B5 29         LDA $29,x                 
CODE_12B187:        69 07         ADC #$07                  
CODE_12B189:        29 F0         AND #$F0                  
CODE_12B18B:        95 29         STA $29,x                 
CODE_12B18D:        B5 15         LDA $15,x                 
CODE_12B18F:        69 00         ADC #$00                  
CODE_12B191:        95 15         STA $15,x                 
CODE_12B193:        DA            PHX                       
CODE_12B194:        20 AB DD      JSR CODE_12DDAB           
CODE_12B197:        FA            PLX                       
CODE_12B198:        B5 33         LDA $33,x                 
CODE_12B19A:        38            SEC                       
CODE_12B19B:        E9 10         SBC #$10                  
CODE_12B19D:        95 33         STA $33,x                 
CODE_12B19F:        C9 E0         CMP #$E0                  
CODE_12B1A1:        90 08         BCC CODE_12B1AB           
CODE_12B1A3:        A5 EB         LDA $EB                   
CODE_12B1A5:        F0 04         BEQ CODE_12B1AB           
CODE_12B1A7:        20 3B A8      JSR CODE_12A83B           
CODE_12B1AA:        60            RTS
                       
CODE_12B1AB:        A9 10         LDA #$10                  
CODE_12B1AD:        9D 53 04      STA $0453,x               
CODE_12B1B0:        A9 10         LDA #$10                  
CODE_12B1B2:        8D E0 1D      STA $1DE0                 
CODE_12B1B5:        F6 B1         INC $B1,x                 
CODE_12B1B7:        A9 3C         LDA #$3C                  
CODE_12B1B9:        95 90         STA $90,x                 
CODE_12B1BB:        DA            PHX                       
CODE_12B1BC:        A2 05         LDX #$05                  
CODE_12B1BE:        BF AE 9B 11   LDA.l DATA_119BAE,x             
CODE_12B1C2:        C5 00         CMP $00                   
CODE_12B1C4:        F0 06         BEQ CODE_12B1CC           
CODE_12B1C6:        CA            DEX                       
CODE_12B1C7:        10 F5         BPL CODE_12B1BE           
CODE_12B1C9:        FA            PLX                       
CODE_12B1CA:        80 06         BRA CODE_12B1D2           

CODE_12B1CC:        FA            PLX                       
CODE_12B1CD:        A9 05         LDA #$05                  
CODE_12B1CF:        9D 51 00      STA $0051,x               
CODE_12B1D2:        20 7A 9F      JSR CODE_129F7A           
CODE_12B1D5:        A9 10         LDA #$10                  
CODE_12B1D7:        8D 94 05      STA $0594                 
CODE_12B1DA:        A5 EB         LDA $EB                   
CODE_12B1DC:        D0 03         BNE CODE_12B1E1           
CODE_12B1DE:        20 3B A8      JSR CODE_12A83B           
CODE_12B1E1:        20 35 B3      JSR CODE_12B335           
CODE_12B1E4:        30 27         BMI CODE_12B20D           
CODE_12B1E6:        A4 00         LDY $00                   
CODE_12B1E8:        B5 29         LDA $29,x                 
CODE_12B1EA:        99 29 00      STA $0029,y               
CODE_12B1ED:        B5 15         LDA $15,x                 
CODE_12B1EF:        99 15 00      STA $0015,y               
CODE_12B1F2:        A9 41         LDA #$41                  
CODE_12B1F4:        99 65 00      STA $0065,y               
CODE_12B1F7:        98            TYA                       
CODE_12B1F8:        AA            TAX                       
CODE_12B1F9:        B5 65         LDA $65,x                 
CODE_12B1FB:        29 FC         AND #$FC                  
CODE_12B1FD:        09 01         ORA #$01                  
CODE_12B1FF:        95 65         STA $65,x                 
CODE_12B201:        A9 05         LDA #$05                  
CODE_12B203:        95 51         STA $51,x                 
CODE_12B205:        95 9F         STA $9F,x                 
CODE_12B207:        A9 1F         LDA #$1F                  
CODE_12B209:        95 86         STA $86,x                 
CODE_12B20B:        A6 12         LDX $12                   
CODE_12B20D:        60            RTS
                       
CODE_12B20E:        B5 79         LDA $79,x                 
CODE_12B210:        D0 0C         BNE CODE_12B21E           
CODE_12B212:        A0 05         LDY #$05                  
CODE_12B214:        B9 90 00      LDA $0090,y               
CODE_12B217:        C9 1C         CMP #$1C                  
CODE_12B219:        F0 0A         BEQ CODE_12B225           
CODE_12B21B:        88            DEY                       
CODE_12B21C:        10 F6         BPL CODE_12B214           
CODE_12B21E:        A9 01         LDA #$01                  
CODE_12B220:        95 79         STA $79,x                 
CODE_12B222:        4C 7A 9F      JMP CODE_129F7A           

CODE_12B225:        B9 15 00      LDA $0015,y               
CODE_12B228:        D5 15         CMP $15,x                 
CODE_12B22A:        D0 F2         BNE CODE_12B21E           
CODE_12B22C:        B9 02 07      LDA $0702,y               
CODE_12B22F:        10 05         BPL CODE_12B236           
CODE_12B231:        A9 00         LDA #$00                  
CODE_12B233:        99 02 07      STA $0702,y               
CODE_12B236:        DA            PHX                       
CODE_12B237:        A2 08         LDX #$08                  
CODE_12B239:        B9 6F 00      LDA $006F,y               
CODE_12B23C:        C9 01         CMP #$01                  
CODE_12B23E:        F0 02         BEQ CODE_12B242           
CODE_12B240:        A2 F8         LDX #$F8                  
CODE_12B242:        8A            TXA                       
CODE_12B243:        FA            PLX                       
CODE_12B244:        95 3D         STA $3D,x                 
CODE_12B246:        B9 51 00      LDA $0051,y               
CODE_12B249:        C9 02         CMP #$02                  
CODE_12B24B:        D0 09         BNE CODE_12B256           
CODE_12B24D:        B9 47 00      LDA $0047,y               
CODE_12B250:        30 04         BMI CODE_12B256           
CODE_12B252:        C9 12         CMP #$12                  
CODE_12B254:        B0 C8         BCS CODE_12B21E                   
CODE_12B256:        B9 29 00      LDA $0029,y               
CODE_12B259:        95 29         STA $29,x                 
CODE_12B25B:        B9 33 00      LDA $0033,y               
CODE_12B25E:        69 00         ADC #$00                  
CODE_12B260:        95 33         STA $33,x                 
CODE_12B262:        20 DA C1      JSR CODE_12C1DA           
CODE_12B265:        B9 1D 98      LDA.w DATA_11981D,y               
CODE_12B268:        95 3D         STA $3D,x                 
CODE_12B26A:        A9 E0         LDA #$E0                  
CODE_12B26C:        95 47         STA $47,x                 
CODE_12B26E:        68            PLA                       
CODE_12B26F:        68            PLA                       
CODE_12B270:        A9 07         LDA #$07                  
CODE_12B272:        9D 6E 04      STA $046E,x               
CODE_12B275:        60            RTS
                       
CODE_12B276:        20 96 9F      JSR CODE_129F96           
CODE_12B279:        A9 F0         LDA #$F0                  ; \ Init X speed = #$F0 (left).
CODE_12B27B:        D0 05         BNE CODE_12B282           ; / More convenient than BRA. (Because the zero bit is clear, anyway.)

CODE_12B27D:        20 96 9F      JSR CODE_129F96           
CODE_12B280:        A9 10         LDA #$10                  ; \ Init X speed = #$10 (right).
CODE_12B282:        95 3D         STA $3D,x                 ; /
CODE_12B284:        F6 B1         INC $B1,x                 
CODE_12B286:        B5 90         LDA $90,x                 
CODE_12B288:        38            SEC                       
CODE_12B289:        E9 0B         SBC #$0B                  
CODE_12B28B:        A8            TAY                       
CODE_12B28C:        AD C1 04      LDA $04C1                 
CODE_12B28F:        79 1F 98      ADC.w DATA_11981F,y               
CODE_12B292:        95 29         STA $29,x                 
CODE_12B294:        AD BF 04      LDA $04BF                 
CODE_12B297:        79 20 98      ADC.w DATA_119820,y               
CODE_12B29A:        95 15         STA $15,x                 
CODE_12B29C:        60            RTS
                       
CODE_12B29D:        A5 10         LDA $10                   
CODE_12B29F:        29 07         AND #$07                  
CODE_12B2A1:        D0 02         BNE CODE_12B2A5           
CODE_12B2A3:        F6 9F         INC $9F,x                 
CODE_12B2A5:        B5 9F         LDA $9F,x                 
CODE_12B2A7:        C9 07         CMP #$07                  
CODE_12B2A9:        90 02         BCC CODE_12B2AD           
CODE_12B2AB:        74 9F         STZ $9F,x                 
CODE_12B2AD:        20 E9 BC      JSR CODE_12BCE9           
CODE_12B2B0:        B5 B1         LDA $B1,x                 
CODE_12B2B2:        D0 2C         BNE CODE_12B2E0           
CODE_12B2B4:        B5 5B         LDA $5B,x                 
CODE_12B2B6:        29 10         AND #$10                  
CODE_12B2B8:        D0 0B         BNE CODE_12B2C5           
CODE_12B2BA:        20 DA C1      JSR CODE_12C1DA           
CODE_12B2BD:        A5 0F         LDA $0F                   
CODE_12B2BF:        69 30         ADC #$30                  
CODE_12B2C1:        C9 60         CMP #$60                  
CODE_12B2C3:        B0 18         BCS CODE_12B2DD                   
CODE_12B2C5:        20 35 B3      JSR CODE_12B335           
CODE_12B2C8:        30 13         BMI CODE_12B2DD           
CODE_12B2CA:        A6 00         LDX $00                   
CODE_12B2CC:        A9 09         LDA #$09                  ; \ Spawn Bob-Omb.
CODE_12B2CE:        95 90         STA $90,x                 ; /
CODE_12B2D0:        B5 33         LDA $33,x                 
CODE_12B2D2:        69 10         ADC #$10                  
CODE_12B2D4:        95 33         STA $33,x                 
CODE_12B2D6:        20 1C A0      JSR CODE_12A01C           
CODE_12B2D9:        A6 12         LDX $12                   
CODE_12B2DB:        F6 B1         INC $B1,x                 
CODE_12B2DD:        4C E3 B2      JMP CODE_12B2E3           

CODE_12B2E0:        20 16 BB      JSR CODE_12BB16           
CODE_12B2E3:        4C EF C1      JMP CODE_12C1EF           

CODE_12B2E6:        20 F6 B2      JSR CODE_12B2F6           
CODE_12B2E9:        16 65         ASL $65,x                 
CODE_12B2EB:        A5 10         LDA $10                   
CODE_12B2ED:        4A            LSR A                     
CODE_12B2EE:        4A            LSR A                     
CODE_12B2EF:        4A            LSR A                     
CODE_12B2F0:        76 65         ROR $65,x                 
CODE_12B2F2:        60            RTS
                       
CODE_12B2F3:        20 AB DD      JSR CODE_12DDAB           
CODE_12B2F6:        20 16 BB      JSR CODE_12BB16           
CODE_12B2F9:        20 46 BA      JSR CODE_12BA46           
CODE_12B2FC:        B5 B1         LDA $B1,x                 
CODE_12B2FE:        1D 2F 04      ORA $042F,x               
CODE_12B301:        F0 03         BEQ CODE_12B306           
CODE_12B303:        4C A7 A0      JMP CODE_12A0A7           

CODE_12B306:        B5 47         LDA $47,x                 
CODE_12B308:        10 02         BPL CODE_12B30C           
CODE_12B30A:        95 B1         STA $B1,x                 
CODE_12B30C:        B5 5B         LDA $5B,x                 
CODE_12B30E:        29 03         AND #$03                  
CODE_12B310:        F0 19         BEQ CODE_12B32B           
CODE_12B312:        95 B1         STA $B1,x                 
CODE_12B314:        B5 90         LDA $90,x                 
CODE_12B316:        C9 1B         CMP #$1B                  
CODE_12B318:        D0 08         BNE CODE_12B322           
CODE_12B31A:        A9 02         LDA #$02                  
CODE_12B31C:        95 51         STA $51,x                 
CODE_12B31E:        F6 33         INC $33,x                 
CODE_12B320:        F6 33         INC $33,x                 
CODE_12B322:        20 48 C2      JSR CODE_12C248           
CODE_12B325:        20 3B B6      JSR CODE_12B63B           
CODE_12B328:        20 3B B6      JSR CODE_12B63B           
CODE_12B32B:        20 EF C1      JSR CODE_12C1EF           
CODE_12B32E:        4C 29 BD      JMP CODE_12BD29           

CODE_12B331:        A0 08         LDY #$08                  ; \ Start loop, maximum index.
CODE_12B333:        D0 02         BNE CODE_12B337           ; / 

CODE_12B335:        A0 05         LDY #$05                  ; Start loop with a lower index.

CODE_12B337:        B9 51 00      LDA $0051,y               ; \ Check if there's a free sprite slot somewhere.
CODE_12B33A:        F0 04         BEQ CODE_12B340           ;  | $51,y - 00 = free slot.
CODE_12B33C:        88            DEY                       ;  | If not, get to next index.
CODE_12B33D:        10 F8         BPL CODE_12B337           ;  | Loop
CODE_12B33F:        60            RTS                       ; / If all slots full, return.
                        
CODE_12B340:        A9 01         LDA #$01                  
CODE_12B342:        99 51 00      STA $0051,y               
CODE_12B345:        4A            LSR A                     
CODE_12B346:        99 9B 04      STA $049B,y               
CODE_12B349:        A9 01         LDA #$01                  
CODE_12B34B:        99 90 00      STA $0090,y               
CODE_12B34E:        B5 29         LDA $29,x                 
CODE_12B350:        69 05         ADC #$05                  
CODE_12B352:        99 29 00      STA $0029,y               
CODE_12B355:        B5 15         LDA $15,x                 
CODE_12B357:        69 00         ADC #$00                  
CODE_12B359:        99 15 00      STA $0015,y               
CODE_12B35C:        B5 33         LDA $33,x                 
CODE_12B35E:        99 33 00      STA $0033,y               
CODE_12B361:        B5 1F         LDA $1F,x                 
CODE_12B363:        99 1F 00      STA $001F,y               
CODE_12B366:        84 00         STY $00                   ; Use $00 as index for new sprite.
CODE_12B368:        98            TYA                       
CODE_12B369:        AA            TAX                       
CODE_12B36A:        20 96 9F      JSR CODE_129F96           
CODE_12B36D:        20 9C A0      JSR CODE_12A09C           
CODE_12B370:        A6 12         LDX $12                   
CODE_12B372:        60            RTS
                       
CODE_12B373:        BD 4A 04      LDA $044A,x               ; \
CODE_12B376:        F0 03         BEQ CODE_12B37B           ;  | Phanto shake animation timer (upon takeoff)
CODE_12B378:        DE 4A 04      DEC $044A,x               ; /
CODE_12B37B:        20 29 BD      JSR CODE_12BD29           ; Draw GFX?
CODE_12B37E:        A0 01         LDY #$01                  ; Y = #$01.
CODE_12B380:        A5 9C         LDA $9C                   ; \ Check if player is holding something.
CODE_12B382:        F0 1A         BEQ CODE_12B39E           ; / If not, branch.
CODE_12B384:        AE 2D 04      LDX $042D                 ; Get index of carried sprite.
CODE_12B387:        B5 90         LDA $90,x                 ; \ Check if carried sprite = #$3D. (Key)
CODE_12B389:        A6 12         LDX $12                   ;  | (Get Phanto's index back again)
CODE_12B38B:        C9 3D         CMP #$3D                  ;  |
CODE_12B38D:        90 0F         BCC CODE_12B39E           ;  | If not, branch.
CODE_12B38F:        C9 3E         CMP #$3E                  ;  | (Why not simply use BNE?)
CODE_12B391:        B0 0B         BCS CODE_12B39E           ; /
CODE_12B393:        AD 95 05      LDA $0595                 ; \
CODE_12B396:        C9 A0         CMP #$A0                  ;  |Decrease takeoff timer until it hits 0
CODE_12B398:        D0 03         BNE CODE_12B39D           ;  |
CODE_12B39A:        CE 95 05      DEC $0595                 ; /
CODE_12B39D:        88            DEY                       
CODE_12B39E:        B5 1F         LDA $1F,x                 
CODE_12B3A0:        18            CLC                       
CODE_12B3A1:        69 01         ADC #$01                  
CODE_12B3A3:        85 05         STA $05                   
CODE_12B3A5:        A5 32         LDA $32                   
CODE_12B3A7:        D5 33         CMP $33,x                 
CODE_12B3A9:        A6 1E         LDX $1E                   
CODE_12B3AB:        E8            INX                       
CODE_12B3AC:        8A            TXA                       
CODE_12B3AD:        A6 12         LDX $12                   
CODE_12B3AF:        E5 05         SBC $05                   
CODE_12B3B1:        10 01         BPL CODE_12B3B4           
CODE_12B3B3:        C8            INY                       
CODE_12B3B4:        B5 47         LDA $47,x                 
CODE_12B3B6:        D9 29 98      CMP.w DATA_119829,y         ;Phanto maximum Y speed
CODE_12B3B9:        F0 06         BEQ CODE_12B3C1           
CODE_12B3BB:        18            CLC                       
CODE_12B3BC:        79 26 98      ADC.w DATA_119826,y         ;Phanto acceleration rate
CODE_12B3BF:        95 47         STA $47,x                 
CODE_12B3C1:        BD 80 04      LDA $0480,x               
CODE_12B3C4:        18            CLC                       
CODE_12B3C5:        69 A0         ADC #$A0                  
CODE_12B3C7:        9D 80 04      STA $0480,x               
CODE_12B3CA:        90 16         BCC CODE_12B3E2           
CODE_12B3CC:        BD 77 04      LDA $0477,x               
CODE_12B3CF:        29 01         AND #$01                  
CODE_12B3D1:        A8            TAY                       
CODE_12B3D2:        B5 3D         LDA $3D,x                 
CODE_12B3D4:        18            CLC                       
CODE_12B3D5:        79 22 98      ADC.w DATA_119822,y               
CODE_12B3D8:        95 3D         STA $3D,x                 
CODE_12B3DA:        D9 24 98      CMP.w DATA_119824,y               
CODE_12B3DD:        D0 03         BNE CODE_12B3E2           
CODE_12B3DF:        FE 77 04      INC $0477,x               
CODE_12B3E2:        A5 EB         LDA $EB                   
CODE_12B3E4:        F0 05         BEQ CODE_12B3EB           
CODE_12B3E6:        A5 3C         LDA $3C                   
CODE_12B3E8:        9D CD 04      STA $04CD,x               
CODE_12B3EB:        AC 95 05      LDY $0595                 
CODE_12B3EE:        F0 27         BEQ CODE_12B417           
CODE_12B3F0:        C0 A0         CPY #$A0                  
CODE_12B3F2:        F0 1A         BEQ CODE_12B40E           
CODE_12B3F4:        C0 80         CPY #$80                  
CODE_12B3F6:        D0 05         BNE CODE_12B3FD           
CODE_12B3F8:        A9 40         LDA #$40                  
CODE_12B3FA:        9D 5C 04      STA $045C,x               
CODE_12B3FD:        C0 40         CPY #$40                  
CODE_12B3FF:        D0 0A         BNE CODE_12B40B           
CODE_12B401:        A9 40         LDA #$40                  
CODE_12B403:        9D 4A 04      STA $044A,x               
CODE_12B406:        A9 2E         LDA #$2E                  
CODE_12B408:        8D E0 1D      STA $1DE0                 
CODE_12B40B:        CE 95 05      DEC $0595                 
CODE_12B40E:        A9 00         LDA #$00                  
CODE_12B410:        9D CD 04      STA $04CD,x               
CODE_12B413:        95 3D         STA $3D,x                 
CODE_12B415:        95 47         STA $47,x                 
CODE_12B417:        4C 97 B4      JMP CODE_12B497           

CODE_12B41A:        B5 5B         LDA $5B,x                 
CODE_12B41C:        29 04         AND #$04                  
CODE_12B41E:        F0 4B         BEQ CODE_12B46B           
CODE_12B420:        BD 2F 04      LDA $042F,x               
CODE_12B423:        D0 02         BNE CODE_12B427           
CODE_12B425:        95 3D         STA $3D,x                 
CODE_12B427:        8A            TXA                       
CODE_12B428:        0A            ASL A                     
CODE_12B429:        0A            ASL A                     
CODE_12B42A:        0A            ASL A                     
CODE_12B42B:        65 10         ADC $10                   
CODE_12B42D:        29 3F         AND #$3F                  
CODE_12B42F:        D0 3A         BNE CODE_12B46B           
CODE_12B431:        B5 9F         LDA $9F,x                 
CODE_12B433:        29 C0         AND #$C0                  
CODE_12B435:        0A            ASL A                     
CODE_12B436:        2A            ROL A                     
CODE_12B437:        2A            ROL A                     
CODE_12B438:        A8            TAY                       
CODE_12B439:        B9 2C 98      LDA.w DATA_11982C,y               
CODE_12B43C:        D0 22         BNE CODE_12B460           
CODE_12B43E:        B5 5B         LDA $5B,x                 
CODE_12B440:        29 04         AND #$04                  
CODE_12B442:        F0 27         BEQ CODE_12B46B           
CODE_12B444:        A5 32         LDA $32                   
CODE_12B446:        18            CLC                       
CODE_12B447:        69 10         ADC #$10                  
CODE_12B449:        D5 33         CMP $33,x                 
CODE_12B44B:        D0 1E         BNE CODE_12B46B           
CODE_12B44D:        20 DA C1      JSR CODE_12C1DA           
CODE_12B450:        C8            INY                       
CODE_12B451:        98            TYA                       
CODE_12B452:        D5 6F         CMP $6F,x                 
CODE_12B454:        D0 15         BNE CODE_12B46B           
CODE_12B456:        A5 0F         LDA $0F                   
CODE_12B458:        69 28         ADC #$28                  
CODE_12B45A:        C9 50         CMP #$50                  
CODE_12B45C:        B0 0D         BCS CODE_12B46B                   
CODE_12B45E:        A9 D8         LDA #$D8                  
CODE_12B460:        95 47         STA $47,x                 
CODE_12B462:        B5 9F         LDA $9F,x                 
CODE_12B464:        29 F0         AND #$F0                  
CODE_12B466:        95 9F         STA $9F,x                 
CODE_12B468:        20 EA C1      JSR CODE_12C1EA           
CODE_12B46B:        4C D1 B4      JMP CODE_12B4D1           

CODE_12B46E:        AD 28 06      LDA $0628                 
CODE_12B471:        C9 02         CMP #$02                  
CODE_12B473:        D0 01         BNE CODE_12B476           
CODE_12B475:        60            RTS
                       
CODE_12B476:        20 16 BB      JSR CODE_12BB16           
CODE_12B479:        20 29 BD      JSR CODE_12BD29           
CODE_12B47C:        F6 9F         INC $9F,x                 
CODE_12B47E:        20 4F BA      JSR CODE_12BA4F           
CODE_12B481:        20 43 AA      JSR CODE_12AA43           
CODE_12B484:        20 46 BA      JSR CODE_12BA46           
CODE_12B487:        B5 47         LDA $47,x                 
CODE_12B489:        F0 12         BEQ CODE_12B49D           
CODE_12B48B:        10 03         BPL CODE_12B490           
CODE_12B48D:        9D 2F 04      STA $042F,x               
CODE_12B490:        A5 10         LDA $10                   
CODE_12B492:        4A            LSR A                     
CODE_12B493:        90 02         BCC CODE_12B497           
CODE_12B495:        D6 47         DEC $47,x                 
CODE_12B497:        20 EF C1      JSR CODE_12C1EF           
CODE_12B49A:        4C EA C1      JMP CODE_12C1EA           

CODE_12B49D:        20 EF C1      JSR CODE_12C1EF           
CODE_12B4A0:        4C 97 B4      JMP CODE_12B497           

CODE_12B4A3:        B4 86         LDY $86,x                 
CODE_12B4A5:        C0 3A         CPY #$3A                  
CODE_12B4A7:        B0 28         BCS CODE_12B4D1                   
CODE_12B4A9:        B5 5B         LDA $5B,x                 
CODE_12B4AB:        29 04         AND #$04                  
CODE_12B4AD:        F0 02         BEQ CODE_12B4B1           
CODE_12B4AF:        74 3D         STZ $3D,x                 
CODE_12B4B1:        D6 9F         DEC $9F,x                 
CODE_12B4B3:        98            TYA                       
CODE_12B4B4:        D0 0B         BNE CODE_12B4C1           
CODE_12B4B6:        B5 A8         LDA $A8,x                 
CODE_12B4B8:        F0 04         BEQ CODE_12B4BE           
CODE_12B4BA:        84 9C         STY $9C                   
CODE_12B4BC:        94 A8         STY $A8,x                 
CODE_12B4BE:        4C 20 B1      JMP CODE_12B120           

CODE_12B4C1:        C9 30         CMP #$30                  
CODE_12B4C3:        B0 0C         BCS CODE_12B4D1                   
CODE_12B4C5:        4A            LSR A                     
CODE_12B4C6:        90 09         BCC CODE_12B4D1           
CODE_12B4C8:        A5 10         LDA $10                   
CODE_12B4CA:        9D 5C 04      STA $045C,x               
CODE_12B4CD:        A9 01         LDA #$01                  
CODE_12B4CF:        95 9F         STA $9F,x                 
CODE_12B4D1:        20 AB DD      JSR CODE_12DDAB           
CODE_12B4D4:        20 16 BB      JSR CODE_12BB16           
CODE_12B4D7:        BD 80 04      LDA $0480,x               
CODE_12B4DA:        F0 1C         BEQ CODE_12B4F8           
CODE_12B4DC:        B5 5B         LDA $5B,x                 
CODE_12B4DE:        29 08         AND #$08                  
CODE_12B4E0:        F0 03         BEQ CODE_12B4E5           
CODE_12B4E2:        4C 3B A8      JMP CODE_12A83B           

CODE_12B4E5:        DE 80 04      DEC $0480,x               
CODE_12B4E8:        F6 86         INC $86,x                 
CODE_12B4EA:        B5 65         LDA $65,x                 
CODE_12B4EC:        29 EF         AND #$EF                  
CODE_12B4EE:        09 20         ORA #$20                  
CODE_12B4F0:        95 65         STA $65,x                 
CODE_12B4F2:        20 EA C1      JSR CODE_12C1EA           
CODE_12B4F5:        4C 29 BD      JMP CODE_12BD29           

CODE_12B4F8:        B5 5B         LDA $5B,x                 
CODE_12B4FA:        35 6F         AND $6F,x                 
CODE_12B4FC:        F0 0E         BEQ CODE_12B50C           
CODE_12B4FE:        20 48 C2      JSR CODE_12C248           
CODE_12B501:        BD 2F 04      LDA $042F,x               
CODE_12B504:        F0 06         BEQ CODE_12B50C           
CODE_12B506:        20 3B B6      JSR CODE_12B63B           
CODE_12B509:        20 3B B6      JSR CODE_12B63B           
CODE_12B50C:        F6 9F         INC $9F,x                 
CODE_12B50E:        20 46 BA      JSR CODE_12BA46           
CODE_12B511:        20 29 BD      JSR CODE_12BD29           
CODE_12B514:        B5 90         LDA $90,x                 
CODE_12B516:        C9 06         CMP #$06                  
CODE_12B518:        D0 07         BNE CODE_12B521           
CODE_12B51A:        BD 2F 04      LDA $042F,x               
CODE_12B51D:        D0 02         BNE CODE_12B521           
CODE_12B51F:        95 3D         STA $3D,x                 
CODE_12B521:        20 AA A0      JSR CODE_12A0AA           
CODE_12B524:        B5 5B         LDA $5B,x                 
CODE_12B526:        B4 47         LDY $47,x                 
CODE_12B528:        10 64         BPL CODE_12B58E           
CODE_12B52A:        29 08         AND #$08                  
CODE_12B52C:        F0 05         BEQ CODE_12B533           
CODE_12B52E:        A9 00         LDA #$00                  
CODE_12B530:        95 47         STA $47,x                 
CODE_12B532:        60            RTS
                       
CODE_12B533:        BD 2F 04      LDA $042F,x               
CODE_12B536:        D0 39         BNE CODE_12B571           
CODE_12B538:        B5 90         LDA $90,x                 
CODE_12B53A:        C9 02         CMP #$02                  
CODE_12B53C:        D0 21         BNE CODE_12B55F           
CODE_12B53E:        D6 9F         DEC $9F,x                 
CODE_12B540:        B5 47         LDA $47,x                 
CODE_12B542:        30 04         BMI CODE_12B548           
CODE_12B544:        74 9F         STZ $9F,x                 
CODE_12B546:        80 2B         BRA CODE_12B573           

CODE_12B548:        A0 03         LDY #$03                  
CODE_12B54A:        B5 79         LDA $79,x                 
CODE_12B54C:        29 03         AND #$03                  
CODE_12B54E:        D0 02         BNE CODE_12B552           
CODE_12B550:        A0 01         LDY #$01                  
CODE_12B552:        98            TYA                       
CODE_12B553:        25 10         AND $10                   
CODE_12B555:        D0 1C         BNE CODE_12B573           
CODE_12B557:        B5 9F         LDA $9F,x                 
CODE_12B559:        49 08         EOR #$08                  
CODE_12B55B:        95 9F         STA $9F,x                 
CODE_12B55D:        80 14         BRA CODE_12B573           

CODE_12B55F:        C9 06         CMP #$06                  
CODE_12B561:        D0 0E         BNE CODE_12B571           
CODE_12B563:        B5 47         LDA $47,x                 
CODE_12B565:        C9 FE         CMP #$FE                  
CODE_12B567:        D0 08         BNE CODE_12B571           
CODE_12B569:        AD 87 05      LDA $0587                 
CODE_12B56C:        10 03         BPL CODE_12B571           
CODE_12B56E:        20 76 B6      JSR CODE_12B676           
CODE_12B571:        D6 9F         DEC $9F,x                 
CODE_12B573:        B5 90         LDA $90,x                 
CODE_12B575:        C9 07         CMP #$07                  
CODE_12B577:        F0 04         BEQ CODE_12B57D           
CODE_12B579:        C9 03         CMP #$03                  
CODE_12B57B:        D0 10         BNE CODE_12B58D           
CODE_12B57D:        BD 2F 04      LDA $042F,x               
CODE_12B580:        D0 0B         BNE CODE_12B58D           
CODE_12B582:        BD 77 04      LDA $0477,x               
CODE_12B585:        D0 06         BNE CODE_12B58D           
CODE_12B587:        FE 77 04      INC $0477,x               
CODE_12B58A:        4C 48 C2      JMP CODE_12C248           

CODE_12B58D:        60            RTS
                       
CODE_12B58E:        29 04         AND #$04                  
CODE_12B590:        F0 A1         BEQ CODE_12B533           
CODE_12B592:        A9 00         LDA #$00                  
CODE_12B594:        9D 77 04      STA $0477,x               
CODE_12B597:        B4 90         LDY $90,x                 
CODE_12B599:        C0 02         CPY #$02                  
CODE_12B59B:        D0 16         BNE CODE_12B5B3           
CODE_12B59D:        A9 3F         LDA #$3F                  
CODE_12B59F:        20 24 B6      JSR CODE_12B624           
CODE_12B5A2:        F6 79         INC $79,x                 
CODE_12B5A4:        A0 F0         LDY #$F0                  
CODE_12B5A6:        B5 79         LDA $79,x                 
CODE_12B5A8:        29 03         AND #$03                  
CODE_12B5AA:        D0 02         BNE CODE_12B5AE           
CODE_12B5AC:        A0 E0         LDY #$E0                  
CODE_12B5AE:        94 47         STY $47,x                 
CODE_12B5B0:        4C EA C1      JMP CODE_12C1EA           

CODE_12B5B3:        A9 1F         LDA #$1F                  
CODE_12B5B5:        C0 09         CPY #$09                  
CODE_12B5B7:        F0 6B         BEQ CODE_12B624           
CODE_12B5B9:        C0 29         CPY #$29                  
CODE_12B5BB:        F0 67         BEQ CODE_12B624           
CODE_12B5BD:        A9 3F         LDA #$3F                  
CODE_12B5BF:        C0 0D         CPY #$0D                  
CODE_12B5C1:        F0 61         BEQ CODE_12B624           
CODE_12B5C3:        A9 7F         LDA #$7F                  
CODE_12B5C5:        C0 05         CPY #$05                  
CODE_12B5C7:        F0 24         BEQ CODE_12B5ED           
CODE_12B5C9:        C0 05         CPY #$05                  
CODE_12B5CB:        F0 20         BEQ CODE_12B5ED           
CODE_12B5CD:        C0 07         CPY #$07                  
CODE_12B5CF:        F0 1C         BEQ CODE_12B5ED           
CODE_12B5D1:        C0 06         CPY #$06                  
CODE_12B5D3:        D0 53         BNE CODE_12B628           
CODE_12B5D5:        BD 2F 04      LDA $042F,x               
CODE_12B5D8:        D0 4E         BNE CODE_12B628           
CODE_12B5DA:        20 DA C1      JSR CODE_12C1DA           
CODE_12B5DD:        C8            INY                       
CODE_12B5DE:        94 6F         STY $6F,x                 
CODE_12B5E0:        B5 9F         LDA $9F,x                 
CODE_12B5E2:        29 3F         AND #$3F                  
CODE_12B5E4:        D0 07         BNE CODE_12B5ED           
CODE_12B5E6:        A9 E8         LDA #$E8                  
CODE_12B5E8:        95 47         STA $47,x                 
CODE_12B5EA:        4C EA C1      JMP CODE_12C1EA           

CODE_12B5ED:        BD 4A 04      LDA $044A,x               
CODE_12B5F0:        F0 0D         BEQ CODE_12B5FF           
CODE_12B5F2:        D6 9F         DEC $9F,x                 
CODE_12B5F4:        DE 4A 04      DEC $044A,x               
CODE_12B5F7:        D0 06         BNE CODE_12B5FF           
CODE_12B5F9:        20 76 B6      JSR CODE_12B676           
CODE_12B5FC:        4C 46 B6      JMP CODE_12B646           

CODE_12B5FF:        8A            TXA                       
CODE_12B600:        0A            ASL A                     
CODE_12B601:        0A            ASL A                     
CODE_12B602:        0A            ASL A                     
CODE_12B603:        65 10         ADC $10                   
CODE_12B605:        0A            ASL A                     
CODE_12B606:        D0 1A         BNE CODE_12B622           
CODE_12B608:        B5 90         LDA $90,x                 
CODE_12B60A:        C9 06         CMP #$06                  
CODE_12B60C:        D0 06         BNE CODE_12B614           
CODE_12B60E:        20 76 B6      JSR CODE_12B676           
CODE_12B611:        4C 55 B6      JMP CODE_12B655           

CODE_12B614:        B5 33         LDA $33,x                 
CODE_12B616:        38            SEC                       
CODE_12B617:        E9 10         SBC #$10                  
CODE_12B619:        C5 32         CMP $32                   
CODE_12B61B:        D0 05         BNE CODE_12B622           
CODE_12B61D:        A9 30         LDA #$30                  
CODE_12B61F:        9D 4A 04      STA $044A,x               
CODE_12B622:        A9 7F         LDA #$7F                  
CODE_12B624:        35 9F         AND $9F,x                 
CODE_12B626:        F0 1B         BEQ CODE_12B643           
CODE_12B628:        BD 2F 04      LDA $042F,x               
CODE_12B62B:        F0 19         BEQ CODE_12B646           
CODE_12B62D:        B5 47         LDA $47,x                 
CODE_12B62F:        C9 1A         CMP #$1A                  
CODE_12B631:        90 10         BCC CODE_12B643           
CODE_12B633:        A9 F0         LDA #$F0                  
CODE_12B635:        20 5B B6      JSR CODE_12B65B           
CODE_12B638:        20 EA C1      JSR CODE_12C1EA           
CODE_12B63B:        B5 3D         LDA $3D,x                 
CODE_12B63D:        85 00         STA $00                   
CODE_12B63F:        0A            ASL A                     
CODE_12B640:        76 3D         ROR $3D,x                 
CODE_12B642:        60            RTS
                       
CODE_12B643:        20 98 9F      JSR CODE_129F98           
CODE_12B646:        B5 90         LDA $90,x                 
CODE_12B648:        C9 01         CMP #$01                  
CODE_12B64A:        D0 09         BNE CODE_12B655           
CODE_12B64C:        B5 47         LDA $47,x                 
CODE_12B64E:        C9 04         CMP #$04                  
CODE_12B650:        90 03         BCC CODE_12B655           
CODE_12B652:        20 98 9F      JSR CODE_129F98           
CODE_12B655:        16 65         ASL $65,x                 
CODE_12B657:        56 65         LSR $65,x                 
CODE_12B659:        A9 00         LDA #$00                  
CODE_12B65B:        95 47         STA $47,x                 
CODE_12B65D:        B5 90         LDA $90,x                 
CODE_12B65F:        C9 32         CMP #$32                  
CODE_12B661:        B5 33         LDA $33,x                 
CODE_12B663:        B0 06         BCS CODE_12B66B                   
CODE_12B665:        69 08         ADC #$08                  
CODE_12B667:        90 02         BCC CODE_12B66B           
CODE_12B669:        F6 1F         INC $1F,x                 
CODE_12B66B:        29 F0         AND #$F0                  
CODE_12B66D:        95 33         STA $33,x                 
CODE_12B66F:        60            RTS
                       
CODE_12B670:        20 31 B3      JSR CODE_12B331           
CODE_12B673:        4C 79 B6      JMP CODE_12B679           

CODE_12B676:        20 35 B3      JSR CODE_12B335           
CODE_12B679:        30 16         BMI CODE_12B691           
CODE_12B67B:        B4 6F         LDY $6F,x                 
CODE_12B67D:        A6 00         LDX $00                   
CODE_12B67F:        B9 2F 98      LDA.w DATA_11982F,y         ; \ Set X speed.       
CODE_12B682:        95 3D         STA $3D,x                 ; /
CODE_12B684:        A9 00         LDA #$00                  ; \ No Y speed.
CODE_12B686:        95 47         STA $47,x                 ; /
CODE_12B688:        A9 1B         LDA #$1B                  ; \ Spawn Bullet.
CODE_12B68A:        95 90         STA $90,x                 ; /
CODE_12B68C:        20 7A 9F      JSR CODE_129F7A           
CODE_12B68F:        A6 12         LDX $12                   
CODE_12B691:        60            RTS
                       
CODE_12B692:        A5 9D         LDA $9D                   
CODE_12B694:        49 01         EOR #$01                  
CODE_12B696:        A8            TAY                       
CODE_12B697:        C8            INY                       
CODE_12B698:        94 6F         STY $6F,x                 
CODE_12B69A:        A5 28         LDA $28                   
CODE_12B69C:        95 29         STA $29,x                 
CODE_12B69E:        A5 14         LDA $14                   
CODE_12B6A0:        95 15         STA $15,x                 
CODE_12B6A2:        A5 1E         LDA $1E                   
CODE_12B6A4:        85 07         STA $07                   
CODE_12B6A6:        A5 32         LDA $32                   
CODE_12B6A8:        BC 89 04      LDY $0489,x               
CODE_12B6AB:        C0 03         CPY #$03                  
CODE_12B6AD:        F0 0A         BEQ CODE_12B6B9           
CODE_12B6AF:        C0 02         CPY #$02                  
CODE_12B6B1:        F0 06         BEQ CODE_12B6B9           
CODE_12B6B3:        E9 0E         SBC #$0E                  
CODE_12B6B5:        B0 02         BCS CODE_12B6B9                   
CODE_12B6B7:        C6 07         DEC $07                   
CODE_12B6B9:        A4 C7         LDY $C7                   
CODE_12B6BB:        C0 04         CPY #$04                  
CODE_12B6BD:        18            CLC                       
CODE_12B6BE:        D0 10         BNE CODE_12B6D0           
CODE_12B6C0:        AC C2 06      LDY $06C2                 
CODE_12B6C3:        C0 01         CPY #$01                  
CODE_12B6C5:        A4 8F         LDY $8F                   
CODE_12B6C7:        90 04         BCC CODE_12B6CD           
CODE_12B6C9:        C8            INY                       
CODE_12B6CA:        C8            INY                       
CODE_12B6CB:        C8            INY                       
CODE_12B6CC:        C8            INY                       
CODE_12B6CD:        79 32 98      ADC.w DATA_119832,y               
CODE_12B6D0:        08            PHP                       
CODE_12B6D1:        B4 A8         LDY $A8,x                 
CODE_12B6D3:        18            CLC                       
CODE_12B6D4:        AE C2 06      LDX $06C2                 
CODE_12B6D7:        F0 07         BEQ CODE_12B6E0           
CODE_12B6D9:        C8            INY                       
CODE_12B6DA:        C8            INY                       
CODE_12B6DB:        C8            INY                       
CODE_12B6DC:        C8            INY                       
CODE_12B6DD:        C8            INY                       
CODE_12B6DE:        C8            INY                       
CODE_12B6DF:        C8            INY                       
CODE_12B6E0:        79 FF 1E      ADC $1EFF,y               
CODE_12B6E3:        A6 12         LDX $12                   
CODE_12B6E5:        95 33         STA $33,x                 
CODE_12B6E7:        A5 07         LDA $07                   
CODE_12B6E9:        79 0D 1F      ADC $1F0D,y               
CODE_12B6EC:        28            PLP                       
CODE_12B6ED:        69 00         ADC #$00                  
CODE_12B6EF:        95 1F         STA $1F,x                 
CODE_12B6F1:        B4 A8         LDY $A8,x                 
CODE_12B6F3:        C0 05         CPY #$05                  
CODE_12B6F5:        B0 16         BCS CODE_12B70D                   
CODE_12B6F7:        B5 90         LDA $90,x                 
CODE_12B6F9:        C9 22         CMP #$22                  
CODE_12B6FB:        F0 10         BEQ CODE_12B70D           
CODE_12B6FD:        C9 32         CMP #$32                  
CODE_12B6FF:        B0 0C         BCS CODE_12B70D                   
CODE_12B701:        BD 38 04      LDA $0438,x               
CODE_12B704:        D0 02         BNE CODE_12B708           
CODE_12B706:        F6 9F         INC $9F,x                 
CODE_12B708:        16 65         ASL $65,x                 
CODE_12B70A:        38            SEC                       
CODE_12B70B:        76 65         ROR $65,x                 
CODE_12B70D:        20 60 BB      JSR CODE_12BB60           
CODE_12B710:        22 10 92 13   JSL CODE_139210           
CODE_12B714:        4C 29 BD      JMP CODE_12BD29           

CODE_12B717:        20 1B B7      JSR CODE_12B71B           ; \ Wrapper.
CODE_12B71A:        60            RTS                       ; /
                       
CODE_12B71B:        B5 A8         LDA $A8,x                 
CODE_12B71D:        F0 05         BEQ CODE_12B724           
CODE_12B71F:        68            PLA                       
CODE_12B720:        68            PLA                       
CODE_12B721:        4C 92 B6      JMP CODE_12B692           

CODE_12B724:        20 29 BD      JSR CODE_12BD29           
CODE_12B727:        B5 90         LDA $90,x                 ; \ Check if sprite = POW
CODE_12B729:        C9 3A         CMP #$3A                  ;  | (#$3A)
CODE_12B72B:        B0 05         BCS CODE_12B732           ; / If that is the case, branch. Otherwise it's a mushroom block.
CODE_12B72D:        20 A7 DD      JSR CODE_12DDA7           
CODE_12B730:        80 03         BRA CODE_12B735
           
CODE_12B732:        20 AB DD      JSR CODE_12DDAB           
CODE_12B735:        BD 2F 04      LDA $042F,x               
CODE_12B738:        F0 E0         BEQ CODE_12B71A           
CODE_12B73A:        20 AA A0      JSR CODE_12A0AA           
CODE_12B73D:        68            PLA                       
CODE_12B73E:        68            PLA                       
CODE_12B73F:        B5 5B         LDA $5B,x                 
CODE_12B741:        48            PHA                       
CODE_12B742:        29 03         AND #$03                  
CODE_12B744:        F0 16         BEQ CODE_12B75C           
CODE_12B746:        A9 00         LDA #$00                  
CODE_12B748:        95 3D         STA $3D,x                 
CODE_12B74A:        B5 29         LDA $29,x                 
CODE_12B74C:        69 08         ADC #$08                  
CODE_12B74E:        29 F0         AND #$F0                  
CODE_12B750:        95 29         STA $29,x                 
CODE_12B752:        A5 EB         LDA $EB                   
CODE_12B754:        F0 06         BEQ CODE_12B75C           
CODE_12B756:        B5 15         LDA $15,x                 
CODE_12B758:        69 00         ADC #$00                  
CODE_12B75A:        95 15         STA $15,x                 
CODE_12B75C:        68            PLA                       
CODE_12B75D:        B4 47         LDY $47,x                 
CODE_12B75F:        30 58         BMI CODE_12B7B9           
CODE_12B761:        29 04         AND #$04                  
CODE_12B763:        F0 54         BEQ CODE_12B7B9           
CODE_12B765:        A5 0E         LDA $0E                   
CODE_12B767:        C9 26         CMP #$26                  
CODE_12B769:        D0 09         BNE CODE_12B774           
CODE_12B76B:        B5 3D         LDA $3D,x                 
CODE_12B76D:        F0 05         BEQ CODE_12B774           
CODE_12B76F:        A9 14         LDA #$14                  
CODE_12B771:        4C 5B B6      JMP CODE_12B65B           

CODE_12B774:        B5 90         LDA $90,x                 ; \ Check if sprite = POW
CODE_12B776:        C9 3A         CMP #$3A                  ;  | If that is the case, kill sprites and make a sound effect.
CODE_12B778:        D0 0F         BNE CODE_12B789           ; / Otherwise it's a mushroom block.
CODE_12B77A:        A9 20         LDA #$20                  ; \ Shake screen and kill all enemies on-screen for #$20 frames.
CODE_12B77C:        8D C5 04      STA $04C5                 ; /
CODE_12B77F:        A9 09         LDA #$09                  ; \ POW SFX.
CODE_12B781:        8D E3 1D      STA $1DE3                 ; /
CODE_12B784:        A9 08         LDA #$08                  ; \ Disappear in two puffs of smoke.
CODE_12B786:        4C 3F BA      JMP CODE_12BA3F           ; /

CODE_12B789:        B5 47         LDA $47,x                 ; \ If Y speed of mushroom block is too great (=> #$16)...
CODE_12B78B:        C9 16         CMP #$16                  ;  |
CODE_12B78D:        B0 16         BCS CODE_12B7A5           ; / branch. Don't lock block in place yet.
CODE_12B78F:        B5 3D         LDA $3D,x                 ; \ Check if X speed of mushroom blocks is too great (=> #$30 on either sides...
CODE_12B791:        10 03         BPL CODE_12B796           ;  |
CODE_12B793:        49 FF         EOR #$FF                  ;  |
CODE_12B795:        1A            INC A                     ;  |
CODE_12B796:        C9 30         CMP #$30                  ;  |
CODE_12B798:        90 13         BCC CODE_12B7AD           ;  | If that is not the case, branch.
CODE_12B79A:        A9 2F         LDA #$2F                  ;  | If it is, set the speed value to a value lower than #$30.
CODE_12B79C:        34 3D         BIT $3D,x                 ;  | So #$2F or #$D1, depending on the direction.
CODE_12B79E:        10 02         BPL CODE_12B7A2           ;  |
CODE_12B7A0:        A9 D1         LDA #$D1                  ;  |
CODE_12B7A2:        95 3D         STA $3D,x                 ; /
CODE_12B7A4:        60            RTS                       ; Return.
                       
CODE_12B7A5:        20 59 B6      JSR CODE_12B659           
CODE_12B7A8:        A9 F5         LDA #$F5                  ; New Y speed (bouncing off ground).
CODE_12B7AA:        4C 35 B6      JMP CODE_12B635           

CODE_12B7AD:        20 59 B6      JSR CODE_12B659           
CODE_12B7B0:        B5 79         LDA $79,x                 ; \ Change into the tile $79,x is holding.
CODE_12B7B2:        22 0D FA 13   JSL CODE_13FA0D           ; / (Should be #$64.)
CODE_12B7B6:        4C 3B A8      JMP CODE_12A83B           ; Terminate mushroom block sprite.

CODE_12B7B9:        60            RTS                       ; Return.
                       
CODE_12B7BA:        A9 04         LDA #$04                  
CODE_12B7BC:        9D 89 04      STA $0489,x               
CODE_12B7BF:        A9 02         LDA #$02                  
CODE_12B7C1:        95 6F         STA $6F,x                 
CODE_12B7C3:        AC B7 04      LDY $04B7                 
CODE_12B7C6:        F0 20         BEQ CODE_12B7E8           
CODE_12B7C8:        A5 10         LDA $10                   
CODE_12B7CA:        29 03         AND #$03                  
CODE_12B7CC:        D0 1A         BNE CODE_12B7E8           
CODE_12B7CE:        A4 50         LDY $50                   
CODE_12B7D0:        C0 07         CPY #$07                  
CODE_12B7D2:        F0 14         BEQ CODE_12B7E8           
CODE_12B7D4:        AD BE 04      LDA $04BE                 
CODE_12B7D7:        D0 0F         BNE CODE_12B7E8           
CODE_12B7D9:        CE B7 04      DEC $04B7                 ; Decrease amount of time you stay in the dark potion room.
CODE_12B7DC:        D0 0A         BNE CODE_12B7E8           
CODE_12B7DE:        8D 28 06      STA $0628                 
CODE_12B7E1:        22 5A E3 14   JSL CODE_14E35A           
CODE_12B7E5:        4C D9 B8      JMP CODE_12B8D9           

CODE_12B7E8:        BD 53 04      LDA $0453,x               
CODE_12B7EB:        D0 CC         BNE CODE_12B7B9           
CODE_12B7ED:        AD B3 04      LDA $04B3                 
CODE_12B7F0:        F0 08         BEQ CODE_12B7FA           
CODE_12B7F2:        CE B3 04      DEC $04B3                 
CODE_12B7F5:        D0 03         BNE CODE_12B7FA           
CODE_12B7F7:        4C F9 B1      JMP CODE_12B1F9           

CODE_12B7FA:        B5 65         LDA $65,x                 
CODE_12B7FC:        09 40         ORA #$40                  
CODE_12B7FE:        95 65         STA $65,x                 
CODE_12B800:        AC BE 04      LDY $04BE                 
CODE_12B803:        B9 3C 98      LDA.w DATA_11983C,y               
CODE_12B806:        A0 00         LDY #$00                  
CODE_12B808:        0A            ASL A                     
CODE_12B809:        90 03         BCC CODE_12B80E           
CODE_12B80B:        C8            INY                       
CODE_12B80C:        94 6F         STY $6F,x                 
CODE_12B80E:        AD BE 04      LDA $04BE                 
CODE_12B811:        F0 31         BEQ CODE_12B844           
CODE_12B813:        A0 F8         LDY #$F8                  
CODE_12B815:        AD BE 04      LDA $04BE                 
CODE_12B818:        C9 09         CMP #$09                  
CODE_12B81A:        90 02         BCC CODE_12B81E           
CODE_12B81C:        A0 D8         LDY #$D8                  
CODE_12B81E:        8C F6 02      STY $02F6                 
CODE_12B821:        A0 01         LDY #$01                  
CODE_12B823:        8C F7 02      STY $02F7                 
CODE_12B826:        AD F6 02      LDA $02F6                 
CODE_12B829:        8D F8 02      STA $02F8                 
CODE_12B82C:        AD F7 02      LDA $02F7                 
CODE_12B82F:        8D F9 02      STA $02F9                 
CODE_12B832:        A9 78         LDA #$78                  
CODE_12B834:        20 D5 BD      JSR CODE_12BDD5           
CODE_12B837:        C2 10         REP #$10                  
CODE_12B839:        AC F6 02      LDY $02F6                 
CODE_12B83C:        B9 00 08      LDA $0800,y               
CODE_12B83F:        99 04 08      STA $0804,y               
CODE_12B842:        E2 10         SEP #$10                  
CODE_12B844:        A0 E0         LDY #$E0                  
CODE_12B846:        AD F6 02      LDA $02F6                 
CODE_12B849:        C9 D8         CMP #$D8                  
CODE_12B84B:        F0 02         BEQ CODE_12B84F           
CODE_12B84D:        A0 D8         LDY #$D8                  
CODE_12B84F:        8C F6 02      STY $02F6                 
CODE_12B852:        A0 01         LDY #$01                  
CODE_12B854:        8C F7 02      STY $02F7                 
CODE_12B857:        AD BE 04      LDA $04BE                 
CODE_12B85A:        C9 19         CMP #$19                  
CODE_12B85C:        90 11         BCC CODE_12B86F           
CODE_12B85E:        C9 30         CMP #$30                  
CODE_12B860:        D0 05         BNE CODE_12B867           
CODE_12B862:        A9 10         LDA #$10                  
CODE_12B864:        8D E3 1D      STA $1DE3                 
CODE_12B867:        A0 40         LDY #$40                  
CODE_12B869:        8C F6 02      STY $02F6                 
CODE_12B86C:        9C F7 02      STZ $02F7                 
CODE_12B86F:        A9 74         LDA #$74                  
CODE_12B871:        BC 77 04      LDY $0477,x               
CODE_12B874:        F0 02         BEQ CODE_12B878           
CODE_12B876:        A9 7C         LDA #$7C                  
CODE_12B878:        20 04 B9      JSR CODE_12B904           
CODE_12B87B:        AE BE 04      LDX $04BE                 
CODE_12B87E:        F0 59         BEQ CODE_12B8D9           
CODE_12B880:        EE BE 04      INC $04BE                 
CODE_12B883:        AC F6 02      LDY $02F6                 
CODE_12B886:        BD 3C 98      LDA.w DATA_11983C,x               
CODE_12B889:        30 4E         BMI CODE_12B8D9           
CODE_12B88B:        C2 10         REP #$10                  
CODE_12B88D:        AC F6 02      LDY $02F6                 
CODE_12B890:        18            CLC                       
CODE_12B891:        79 00 08      ADC $0800,y               
CODE_12B894:        99 00 08      STA $0800,y               
CODE_12B897:        99 04 08      STA $0804,y               
CODE_12B89A:        99 08 08      STA $0808,y               
CODE_12B89D:        99 0C 08      STA $080C,y               
CODE_12B8A0:        E2 10         SEP #$10                  
CODE_12B8A2:        E0 30         CPX #$30                  
CODE_12B8A4:        D0 33         BNE CODE_12B8D9           
CODE_12B8A6:        9C BE 04      STZ $04BE                 
CODE_12B8A9:        A2 08         LDX #$08                  
CODE_12B8AB:        B5 90         LDA $90,x                 
CODE_12B8AD:        C9 3C         CMP #$3C                  
CODE_12B8AF:        D0 0F         BNE CODE_12B8C0           
CODE_12B8B1:        74 90         STZ $90,x                 
CODE_12B8B3:        74 51         STZ $51,x                 
CODE_12B8B5:        BC 41 04      LDY $0441,x               
CODE_12B8B8:        30 06         BMI CODE_12B8C0           
CODE_12B8BA:        B1 CC         LDA ($CC),y               
CODE_12B8BC:        29 7F         AND #$7F                  
CODE_12B8BE:        91 CC         STA ($CC),y               
CODE_12B8C0:        CA            DEX                       
CODE_12B8C1:        10 E8         BPL CODE_12B8AB           
CODE_12B8C3:        A6 12         LDX $12                   
CODE_12B8C5:        AD 36 05      LDA $0536                 
CODE_12B8C8:        C9 01         CMP #$01                  
CODE_12B8CA:        D0 05         BNE CODE_12B8D1           
CODE_12B8CC:        EE 27 06      INC $0627                 
CODE_12B8CF:        D0 08         BNE CODE_12B8D9           
CODE_12B8D1:        AD 28 06      LDA $0628                 
CODE_12B8D4:        49 02         EOR #$02                  
CODE_12B8D6:        8D 28 06      STA $0628                 
CODE_12B8D9:        A6 12         LDX $12                   
CODE_12B8DB:        60            RTS

DATA_12B8DC:        db $A2,$B2,$A4,$B4,$A3,$B3,$A5,$B5
      
DATA_12B8E4:        db $A2,$B2,$8B,$9B,$A3,$B3,$A5,$B5

DATA_12B8EC:        db $00,$00,$00,$00,$08,$08,$08,$08

DATA_12B8F4:        db $00,$08,$10,$18,$00,$08,$10,$18
                       
DATA_12B8FC:        db $22,$22,$26,$26,$22,$22,$22,$22
        
CODE_12B904:        29 08         AND #$08                  
CODE_12B906:        85 00         STA $00                   
CODE_12B908:        C2 10         REP #$10                  
CODE_12B90A:        A2 00 00      LDX #$0000                
CODE_12B90D:        AC F6 02      LDY $02F6                 
CODE_12B910:        A9 07         LDA #$07                  
CODE_12B912:        85 02         STA $02                   
CODE_12B914:        AD 29 04      LDA $0429                 
CODE_12B917:        85 04         STA $04                   
CODE_12B919:        AD 1F 02      LDA $021F                 
CODE_12B91C:        85 05         STA $05                   
CODE_12B91E:        C2 20         REP #$20                  
CODE_12B920:        BF EC B8 12   LDA.l DATA_12B8EC,x             
CODE_12B924:        29 FF 00      AND #$00FF                
CODE_12B927:        18            CLC                       
CODE_12B928:        65 04         ADC $04                   
CODE_12B92A:        64 04         STZ $04                   
CODE_12B92C:        29 00 FF      AND #$FF00                
CODE_12B92F:        F0 05         BEQ CODE_12B936           
CODE_12B931:        A9 00 01      LDA #$0100                
CODE_12B934:        85 04         STA $04                   
CODE_12B936:        E2 20         SEP #$20                  
CODE_12B938:        BF EC B8 12   LDA.l DATA_12B8EC,x             
CODE_12B93C:        18            CLC                       
CODE_12B93D:        6D 29 04      ADC $0429                 
CODE_12B940:        99 00 08      STA $0800,y               
CODE_12B943:        BF F4 B8 12   LDA.l DATA_12B8F4,x             
CODE_12B947:        18            CLC                       
CODE_12B948:        6D 2C 04      ADC $042C                 
CODE_12B94B:        99 01 08      STA $0801,y               
CODE_12B94E:        A5 00         LDA $00                   
CODE_12B950:        D0 09         BNE CODE_12B95B           
CODE_12B952:        BF DC B8 12   LDA.l DATA_12B8DC,x             
CODE_12B956:        48            PHA                       
CODE_12B957:        A9 22         LDA #$22                  
CODE_12B959:        80 09         BRA CODE_12B964           

CODE_12B95B:        BF E4 B8 12   LDA.l DATA_12B8E4,x             
CODE_12B95F:        48            PHA                       
CODE_12B960:        BF FC B8 12   LDA.l DATA_12B8FC,x             
CODE_12B964:        99 03 08      STA $0803,y               
CODE_12B967:        68            PLA                       
CODE_12B968:        99 02 08      STA $0802,y               
CODE_12B96B:        5A            PHY                       
CODE_12B96C:        C2 20         REP #$20                  
CODE_12B96E:        98            TYA                       
CODE_12B96F:        4A            LSR A                     
CODE_12B970:        4A            LSR A                     
CODE_12B971:        A8            TAY                       
CODE_12B972:        E2 20         SEP #$20                  
CODE_12B974:        A5 05         LDA $05                   
CODE_12B976:        99 20 0A      STA $0A20,y               
CODE_12B979:        7A            PLY                       
CODE_12B97A:        E8            INX                       
CODE_12B97B:        C8            INY                       
CODE_12B97C:        C8            INY                       
CODE_12B97D:        C8            INY                       
CODE_12B97E:        C8            INY                       
CODE_12B97F:        C6 02         DEC $02                   
CODE_12B981:        10 91         BPL CODE_12B914           
CODE_12B983:        E2 10         SEP #$10                  
CODE_12B985:        60            RTS
                       
CODE_12B986:        A9 02         LDA #$02                  
CODE_12B988:        D0 06         BNE CODE_12B990           
CODE_12B98A:        A9 01         LDA #$01                  
CODE_12B98C:        D0 02         BNE CODE_12B990           
CODE_12B98E:        A9 00         LDA #$00                  
CODE_12B990:        48            PHA                       
CODE_12B991:        A0 08         LDY #$08                  
CODE_12B993:        B9 51 00      LDA $0051,y               
CODE_12B996:        F0 11         BEQ CODE_12B9A9           
CODE_12B998:        B9 90 00      LDA $0090,y               
CODE_12B99B:        C9 3C         CMP #$3C                  
CODE_12B99D:        D0 0A         BNE CODE_12B9A9           
CODE_12B99F:        A9 05         LDA #$05                  
CODE_12B9A1:        99 51 00      STA $0051,y               
CODE_12B9A4:        A9 20         LDA #$20                  
CODE_12B9A6:        99 86 00      STA $0086,y               
CODE_12B9A9:        88            DEY                       
CODE_12B9AA:        10 E7         BPL CODE_12B993           
CODE_12B9AC:        20 31 B3      JSR CODE_12B331           
CODE_12B9AF:        30 32         BMI CODE_12B9E3           
CODE_12B9B1:        A9 00         LDA #$00                  
CODE_12B9B3:        8D BE 04      STA $04BE                 
CODE_12B9B6:        8D B3 04      STA $04B3                 
CODE_12B9B9:        A6 00         LDX $00                   
CODE_12B9BB:        68            PLA                       
CODE_12B9BC:        9D 77 04      STA $0477,x               
CODE_12B9BF:        A9 3C         LDA #$3C                  
CODE_12B9C1:        95 90         STA $90,x                 
CODE_12B9C3:        20 7A 9F      JSR CODE_129F7A           
CODE_12B9C6:        A5 28         LDA $28                   
CODE_12B9C8:        69 08         ADC #$08                  
CODE_12B9CA:        29 F0         AND #$F0                  
CODE_12B9CC:        95 29         STA $29,x                 
CODE_12B9CE:        A5 14         LDA $14                   
CODE_12B9D0:        69 00         ADC #$00                  
CODE_12B9D2:        95 15         STA $15,x                 
CODE_12B9D4:        A5 32         LDA $32                   
CODE_12B9D6:        95 33         STA $33,x                 
CODE_12B9D8:        A5 1E         LDA $1E                   
CODE_12B9DA:        95 1F         STA $1F,x                 
CODE_12B9DC:        A9 41         LDA #$41                  
CODE_12B9DE:        95 65         STA $65,x                 
CODE_12B9E0:        A6 12         LDX $12                   
CODE_12B9E2:        60            RTS
                       
CODE_12B9E3:        68            PLA                       
CODE_12B9E4:        60            RTS
                       
DATA_12B9E5:        db $2E,$C6,$C8,$C6

CODE_12B9E9:        20 AB DD      JSR CODE_12DDAB                   
CODE_12B9EC:        20 46 BA      JSR CODE_12BA46                                 
CODE_12B9EF:        A9 01         LDA #$01                  
CODE_12B9F1:        9D 00 0D      STA $0D00,x               
CODE_12B9F4:        B5 5B         LDA $5B,x                 
CODE_12B9F6:        29 03         AND #$03                  
CODE_12B9F8:        F0 08         BEQ CODE_12BA02           
CODE_12B9FA:        A9 0F         LDA #$0F                  
CODE_12B9FC:        8D E0 1D      STA $1DE0                 
CODE_12B9FF:        4C F9 B1      JMP CODE_12B1F9           

CODE_12BA02:        B5 5B         LDA $5B,x                 
CODE_12BA04:        29 04         AND #$04                  
CODE_12BA06:        F0 03         BEQ CODE_12BA0B           
CODE_12BA08:        20 59 B6      JSR CODE_12B659           
CODE_12BA0B:        B5 6F         LDA $6F,x                 
CODE_12BA0D:        48            PHA                       
CODE_12BA0E:        DA            PHX                       
CODE_12BA0F:        A9 02         LDA #$02                  
CODE_12BA11:        95 6F         STA $6F,x                 
CODE_12BA13:        A5 10         LDA $10                   
CODE_12BA15:        29 0C         AND #$0C                  
CODE_12BA17:        4A            LSR A                     
CODE_12BA18:        4A            LSR A                     
CODE_12BA19:        AA            TAX                       
CODE_12BA1A:        E0 03         CPX #$03                  
CODE_12BA1C:        D0 0A         BNE CODE_12BA28           
CODE_12BA1E:        DA            PHX                       
CODE_12BA1F:        A6 12         LDX $12                   
CODE_12BA21:        B5 6F         LDA $6F,x                 
CODE_12BA23:        49 03         EOR #$03                  
CODE_12BA25:        95 6F         STA $6F,x                 
CODE_12BA27:        FA            PLX                       
CODE_12BA28:        BF E5 B9 12   LDA.l DATA_12B9E5,x             
CODE_12BA2C:        FA            PLX                       
CODE_12BA2D:        20 D5 BD      JSR CODE_12BDD5           
CODE_12BA30:        68            PLA                       
CODE_12BA31:        95 6F         STA $6F,x                 
CODE_12BA33:        B4 6F         LDY $6F,x                 
CODE_12BA35:        B9 6C 98      LDA.w DATA_11986C,y               
CODE_12BA38:        95 3D         STA $3D,x                 
CODE_12BA3A:        4C AA A0      JMP CODE_12A0AA           

CODE_12BA3D:        A9 03         LDA #$03                  
CODE_12BA3F:        95 51         STA $51,x                 
CODE_12BA41:        A9 18         LDA #$18                  
CODE_12BA43:        95 86         STA $86,x                 
CODE_12BA45:        60            RTS
                       
CODE_12BA46:        B5 A8         LDA $A8,x                 
CODE_12BA48:        F0 FB         BEQ CODE_12BA45           
CODE_12BA4A:        68            PLA                       
CODE_12BA4B:        68            PLA                       
CODE_12BA4C:        4C 92 B6      JMP CODE_12B692           

CODE_12BA4F:        BD 2F 04      LDA $042F,x               
CODE_12BA52:        F0 0F         BEQ CODE_12BA63           
CODE_12BA54:        68            PLA                       
CODE_12BA55:        68            PLA                       
CODE_12BA56:        4C A7 A0      JMP CODE_12A0A7           

CODE_12BA59:        20 85 AC      JSR CODE_12AC85           
CODE_12BA5C:        9D 38 04      STA $0438,x               
CODE_12BA5F:        B5 33         LDA $33,x                 
CODE_12BA61:        95 79         STA $79,x                 
CODE_12BA63:        60            RTS
                       
CODE_12BA64:        16 65         ASL $65,x                 
CODE_12BA66:        A5 10         LDA $10                   
CODE_12BA68:        0A            ASL A                     
CODE_12BA69:        0A            ASL A                     
CODE_12BA6A:        0A            ASL A                     
CODE_12BA6B:        0A            ASL A                     
CODE_12BA6C:        76 65         ROR $65,x                 
CODE_12BA6E:        B4 B1         LDY $B1,x                 
CODE_12BA70:        D0 20         BNE CODE_12BA92           
CODE_12BA72:        B5 65         LDA $65,x                 
CODE_12BA74:        09 20         ORA #$20                  
CODE_12BA76:        95 65         STA $65,x                 
CODE_12BA78:        B5 79         LDA $79,x                 
CODE_12BA7A:        38            SEC                       
CODE_12BA7B:        E9 0C         SBC #$0C                  
CODE_12BA7D:        D5 33         CMP $33,x                 
CODE_12BA7F:        A9 FE         LDA #$FE                  
CODE_12BA81:        90 0A         BCC CODE_12BA8D           
CODE_12BA83:        B5 65         LDA $65,x                 
CODE_12BA85:        29 DF         AND #$DF                  
CODE_12BA87:        95 65         STA $65,x                 
CODE_12BA89:        F6 B1         INC $B1,x                 
CODE_12BA8B:        A9 04         LDA #$04                  
CODE_12BA8D:        95 47         STA $47,x                 
CODE_12BA8F:        4C 9A BA      JMP CODE_12BA9A           

CODE_12BA92:        A5 10         LDA $10                   
CODE_12BA94:        29 07         AND #$07                  
CODE_12BA96:        D0 02         BNE CODE_12BA9A           
CODE_12BA98:        F6 47         INC $47,x                 
CODE_12BA9A:        20 EA C1      JSR CODE_12C1EA           
CODE_12BA9D:        B5 33         LDA $33,x                 
CODE_12BA9F:        C9 F0         CMP #$F0                  
CODE_12BAA1:        90 08         BCC CODE_12BAAB           
CODE_12BAA3:        A9 00         LDA #$00                  
CODE_12BAA5:        95 B1         STA $B1,x                 
CODE_12BAA7:        B5 79         LDA $79,x                 
CODE_12BAA9:        95 33         STA $33,x                 
CODE_12BAAB:        4C 29 BD      JMP CODE_12BD29           

CODE_12BAAE:        A9 00         LDA #$00                  
CODE_12BAB0:        20 B4 BA      JSR CODE_12BAB4           
CODE_12BAB3:        6B            RTL
                       
CODE_12BAB4:        85 00         STA $00                   
CODE_12BAB6:        A2 08         LDX #$08                  
CODE_12BAB8:        B5 51         LDA $51,x                 
CODE_12BABA:        C9 01         CMP #$01                  
CODE_12BABC:        D0 52         BNE CODE_12BB10           
CODE_12BABE:        A5 00         LDA $00                   
CODE_12BAC0:        F0 40         BEQ CODE_12BB02           
CODE_12BAC2:        B5 90         LDA $90,x                 
CODE_12BAC4:        C9 39         CMP #$39                  
CODE_12BAC6:        F0 08         BEQ CODE_12BAD0           
CODE_12BAC8:        C9 37         CMP #$37                  
CODE_12BACA:        F0 04         BEQ CODE_12BAD0           
CODE_12BACC:        C9 32         CMP #$32                  
CODE_12BACE:        B0 40         BCS CODE_12BB10                   
CODE_12BAD0:        A5 9C         LDA $9C                   
CODE_12BAD2:        F0 09         BEQ CODE_12BADD           
CODE_12BAD4:        EC 2D 04      CPX $042D                 
CODE_12BAD7:        D0 04         BNE CODE_12BADD           
CODE_12BAD9:        A9 00         LDA #$00                  
CODE_12BADB:        85 9C         STA $9C                   
CODE_12BADD:        86 0E         STX $0E                   
CODE_12BADF:        20 F9 B1      JSR CODE_12B1F9           
CODE_12BAE2:        A6 0E         LDX $0E                   
CODE_12BAE4:        B5 33         LDA $33,x                 
CODE_12BAE6:        38            SEC                       
CODE_12BAE7:        E5 CB         SBC $CB                   
CODE_12BAE9:        8D 97 07      STA $0797                 
CODE_12BAEC:        B5 1F         LDA $1F,x                 
CODE_12BAEE:        E5 CA         SBC $CA                   
CODE_12BAF0:        8D 98 07      STA $0798                 
CODE_12BAF3:        D0 07         BNE CODE_12BAFC           
CODE_12BAF5:        AD 97 07      LDA $0797                 
CODE_12BAF8:        C9 F0         CMP #$F0                  
CODE_12BAFA:        90 03         BCC CODE_12BAFF           
CODE_12BAFC:        9E 51 00      STZ $0051,x               
CODE_12BAFF:        4C 10 BB      JMP CODE_12BB10           

CODE_12BB02:        B5 5B         LDA $5B,x                 
CODE_12BB04:        F0 0A         BEQ CODE_12BB10           
CODE_12BB06:        A9 D8         LDA #$D8                  
CODE_12BB08:        95 47         STA $47,x                 
CODE_12BB0A:        B5 5B         LDA $5B,x                 
CODE_12BB0C:        09 10         ORA #$10                  
CODE_12BB0E:        95 5B         STA $5B,x                 
CODE_12BB10:        CA            DEX                       
CODE_12BB11:        10 A5         BPL CODE_12BAB8           
CODE_12BB13:        A6 12         LDX $12                   
CODE_12BB15:        60            RTS
                       
CODE_12BB16:        B5 5B         LDA $5B,x                 
CODE_12BB18:        29 10         AND #$10                  
CODE_12BB1A:        F0 43         BEQ CODE_12BB5F           
CODE_12BB1C:        B5 A8         LDA $A8,x                 
CODE_12BB1E:        F0 04         BEQ CODE_12BB24           
CODE_12BB20:        A9 00         LDA #$00                  ; \ Player is not holding anything.
CODE_12BB22:        85 9C         STA $9C                   ; /
CODE_12BB24:        B4 90         LDY $90,x                 
CODE_12BB26:        B9 8C CC      LDA.w DATA_11CC8C,y               
CODE_12BB29:        29 08         AND #$08                  
CODE_12BB2B:        0A            ASL A                     
CODE_12BB2C:        D0 0C         BNE CODE_12BB3A           
CODE_12BB2E:        AD E1 1D      LDA $1DE1                 
CODE_12BB31:        D0 0A         BNE CODE_12BB3D           
CODE_12BB33:        A9 34         LDA #$34                  
CODE_12BB35:        8D E0 1D      STA $1DE0                 
CODE_12BB38:        D0 03         BNE CODE_12BB3D           
CODE_12BB3A:        8D E0 1D      STA $1DE0                 
CODE_12BB3D:        C0 12         CPY #$12                  
CODE_12BB3F:        D0 08         BNE CODE_12BB49           
CODE_12BB41:        BD 2F 04      LDA $042F,x               ; \ Generate another sprite when picked up.
CODE_12BB44:        D0 03         BNE CODE_12BB49           ;  | (If not the correct value, don't generate that sprite)
CODE_12BB46:        20 D8 C5      JSR CODE_12C5D8           ; / Pidgit's carpet.
CODE_12BB49:        A9 02         LDA #$02                  ; \ Fall down.
CODE_12BB4B:        95 51         STA $51,x                 ; /
CODE_12BB4D:        9E A8 00      STZ $00A8,x               
CODE_12BB50:        B5 65         LDA $65,x                 
CODE_12BB52:        29 DF         AND #$DF                  
CODE_12BB54:        95 65         STA $65,x                 
CODE_12BB56:        DA            PHX                       
CODE_12BB57:        5A            PHY                       
CODE_12BB58:        20 29 BD      JSR CODE_12BD29           
CODE_12BB5B:        7A            PLY                       
CODE_12BB5C:        FA            PLX                       
CODE_12BB5D:        68            PLA                       
CODE_12BB5E:        68            PLA                       
CODE_12BB5F:        60            RTS
                       
CODE_12BB60:        B5 33         LDA $33,x                 
CODE_12BB62:        18            CLC                       
CODE_12BB63:        E5 CB         SBC $CB                   
CODE_12BB65:        B4 A8         LDY $A8,x                 
CODE_12BB67:        F0 0C         BEQ CODE_12BB75           
CODE_12BB69:        A4 C7         LDY $C7                   
CODE_12BB6B:        D0 08         BNE CODE_12BB75           
CODE_12BB6D:        A4 8F         LDY $8F                   
CODE_12BB6F:        88            DEY                       
CODE_12BB70:        F0 03         BEQ CODE_12BB75           
CODE_12BB72:        38            SEC                       
CODE_12BB73:        E9 01         SBC #$01                  
CODE_12BB75:        8D 2C 04      STA $042C                 
CODE_12BB78:        AD C1 04      LDA $04C1                 
CODE_12BB7B:        85 0E         STA $0E                   
CODE_12BB7D:        AD BF 04      LDA $04BF                 
CODE_12BB80:        85 0F         STA $0F                   
CODE_12BB82:        B5 15         LDA $15,x                 
CODE_12BB84:        EB            XBA                       
CODE_12BB85:        B5 29         LDA $29,x                 
CODE_12BB87:        C2 20         REP #$20                  
CODE_12BB89:        38            SEC                       
CODE_12BB8A:        E5 0E         SBC $0E                   
CODE_12BB8C:        E2 20         SEP #$20                  
CODE_12BB8E:        8D 29 04      STA $0429                 
CODE_12BB91:        EB            XBA                       
CODE_12BB92:        8D 1F 02      STA $021F                 
CODE_12BB95:        9C 48 02      STZ $0248                 
CODE_12BB98:        9C 49 02      STZ $0249                 
CODE_12BB9B:        60            RTS
           
DATA_12BB9C:        db $68,$BA,$BE,$C2
                              
CODE_12BBA0:        B5 51         LDA $51,x            
CODE_12BBA2:        C9 01         CMP #$01
CODE_12BBA4:        D0 09         BNE CODE_12BBAF
CODE_12BBA6:        BD 5C 04      LDA $045C,x
CODE_12BBA9:        F0 57         BEQ CODE_12BC02          
CODE_12BBAB:        A9 68         LDA #$68                  
CODE_12BBAD:        80 59         BRA CODE_12BC08           

CODE_12BBAF:        A0 02         LDY #$02                  
CODE_12BBB1:        B5 3D         LDA $3D,x                 
CODE_12BBB3:        10 01         BPL CODE_12BBB6           
CODE_12BBB5:        88            DEY                       
CODE_12BBB6:        94 6F         STY $6F,x                 
CODE_12BBB8:        B5 47         LDA $47,x                 
CODE_12BBBA:        10 0A         BPL CODE_12BBC6           
CODE_12BBBC:        B5 65         LDA $65,x                 
CODE_12BBBE:        29 3F         AND #$3F                  
CODE_12BBC0:        09 40         ORA #$40                  
CODE_12BBC2:        95 65         STA $65,x                 
CODE_12BBC4:        80 10         BRA CODE_12BBD6           

CODE_12BBC6:        C9 18         CMP #$18                  
CODE_12BBC8:        90 F2         BCC CODE_12BBBC           
CODE_12BBCA:        B5 6F         LDA $6F,x                 
CODE_12BBCC:        49 03         EOR #$03                  
CODE_12BBCE:        95 6F         STA $6F,x                 
CODE_12BBD0:        B5 65         LDA $65,x                 
CODE_12BBD2:        09 80         ORA #$80                  
CODE_12BBD4:        95 65         STA $65,x                 
CODE_12BBD6:        A0 00         LDY #$00                  
CODE_12BBD8:        BD 02 07      LDA $0702,x               
CODE_12BBDB:        30 1A         BMI CODE_12BBF7           
CODE_12BBDD:        B5 47         LDA $47,x                 
CODE_12BBDF:        10 07         BPL CODE_12BBE8           
CODE_12BBE1:        C9 F8         CMP #$F8                  
CODE_12BBE3:        90 12         BCC CODE_12BBF7           
CODE_12BBE5:        C8            INY                       
CODE_12BBE6:        80 0F         BRA CODE_12BBF7           

CODE_12BBE8:        C9 18         CMP #$18                  
CODE_12BBEA:        B0 0B         BCS CODE_12BBF7                   
CODE_12BBEC:        C8            INY                       
CODE_12BBED:        C9 08         CMP #$08                  
CODE_12BBEF:        90 06         BCC CODE_12BBF7           
CODE_12BBF1:        C8            INY                       
CODE_12BBF2:        C9 10         CMP #$10                  
CODE_12BBF4:        90 01         BCC CODE_12BBF7           
CODE_12BBF6:        C8            INY                       
CODE_12BBF7:        DA            PHX                       
CODE_12BBF8:        BB            TYX                       
CODE_12BBF9:        BF 9C BB 12   LDA.l DATA_12BB9C,x             
CODE_12BBFD:        FA            PLX                       
CODE_12BBFE:        74 9F         STZ $9F,x                 
CODE_12BC00:        80 06         BRA CODE_12BC08           

CODE_12BC02:        B5 86         LDA $86,x                 
CODE_12BC04:        F0 09         BEQ CODE_12BC0F           
CODE_12BC06:        A9 60         LDA #$60                  
CODE_12BC08:        48            PHA                       
CODE_12BC09:        20 D5 BD      JSR CODE_12BDD5           
CODE_12BC0C:        68            PLA                       
CODE_12BC0D:        80 16         BRA CODE_12BC25           

CODE_12BC0F:        20 C9 BD      JSR CODE_12BDC9           
CODE_12BC12:        A9 00         LDA #$00                  
CODE_12BC14:        80 0F         BRA CODE_12BC25           

DATA_12BC16:        db $26,$26,$28

DATA_12BC19:        db $F8,$F8,$FB,$18,$18,$15

DATA_12BC1F:        db $02,$03,$06,$FE,$FD,$FA
             
CODE_12BC25:        A0 00         LDY #$00                  
CODE_12BC27:        C9 00         CMP #$00                  
CODE_12BC29:        F0 06         BEQ CODE_12BC31           
CODE_12BC2B:        C8            INY                       
CODE_12BC2C:        C9 60         CMP #$60                  
CODE_12BC2E:        F0 01         BEQ CODE_12BC31           
CODE_12BC30:        C8            INY                       
CODE_12BC31:        5A            PHY                       
CODE_12BC32:        B5 6F         LDA $6F,x                 
CODE_12BC34:        29 01         AND #$01                  
CODE_12BC36:        4A            LSR A                     
CODE_12BC37:        6A            ROR A                     
CODE_12BC38:        6A            ROR A                     
CODE_12BC39:        8D 12 07      STA $0712                 
CODE_12BC3C:        B5 65         LDA $65,x                 
CODE_12BC3E:        29 80         AND #$80                  
CODE_12BC40:        8D 13 07      STA $0713                 
CODE_12BC43:        22 5B FC 13   JSL CODE_13FC5B           
CODE_12BC47:        7A            PLY                       
CODE_12BC48:        A5 EE         LDA $EE                   
CODE_12BC4A:        F0 01         BEQ CODE_12BC4D           
CODE_12BC4C:        60            RTS
                       
CODE_12BC4D:        BB            TYX                       
CODE_12BC4E:        DA            PHX                       
CODE_12BC4F:        AD 13 07      LDA $0713                 
CODE_12BC52:        F0 05         BEQ CODE_12BC59           
CODE_12BC54:        8A            TXA                       
CODE_12BC55:        18            CLC                       
CODE_12BC56:        69 03         ADC #$03                  
CODE_12BC58:        AA            TAX                       
CODE_12BC59:        BF 19 BC 12   LDA.l DATA_12BC19,x             
CODE_12BC5D:        18            CLC                       
CODE_12BC5E:        6D 2C 04      ADC $042C                 
CODE_12BC61:        85 00         STA $00                   
CODE_12BC63:        FA            PLX                       
CODE_12BC64:        DA            PHX                       
CODE_12BC65:        AD 12 07      LDA $0712                 
CODE_12BC68:        F0 05         BEQ CODE_12BC6F           
CODE_12BC6A:        8A            TXA                       
CODE_12BC6B:        18            CLC                       
CODE_12BC6C:        69 03         ADC #$03                  
CODE_12BC6E:        AA            TAX                       
CODE_12BC6F:        C2 20         REP #$20                  
CODE_12BC71:        BF 1F BC 12   LDA.l DATA_12BC1F,x             
CODE_12BC75:        29 FF 00      AND #$00FF                
CODE_12BC78:        C9 80 00      CMP #$0080                
CODE_12BC7B:        90 03         BCC CODE_12BC80           
CODE_12BC7D:        09 00 FF      ORA #$FF00                
CODE_12BC80:        8D 16 07      STA $0716                 
CODE_12BC83:        E2 20         SEP #$20                  
CODE_12BC85:        AD 1F 02      LDA $021F                 
CODE_12BC88:        EB            XBA                       
CODE_12BC89:        AD 29 04      LDA $0429                 
CODE_12BC8C:        C2 20         REP #$20                  
CODE_12BC8E:        18            CLC                       
CODE_12BC8F:        6D 16 07      ADC $0716                 
CODE_12BC92:        C9 80 01      CMP #$0180                
CODE_12BC95:        90 08         BCC CODE_12BC9F           
CODE_12BC97:        C9 80 FF      CMP #$FF80                
CODE_12BC9A:        B0 03         BCS CODE_12BC9F                   
CODE_12BC9C:        FA            PLX                       
CODE_12BC9D:        80 45         BRA CODE_12BCE4
           
CODE_12BC9F:        E2 20         SEP #$20                  
CODE_12BCA1:        85 01         STA $01                   
CODE_12BCA3:        EB            XBA                       
CODE_12BCA4:        85 02         STA $02                   
CODE_12BCA6:        FA            PLX                       
CODE_12BCA7:        BF 16 BC 12   LDA.l DATA_12BC16,x             
CODE_12BCAB:        8D 14 07      STA $0714                 
CODE_12BCAE:        C2 10         REP #$10                  
CODE_12BCB0:        AC F8 02      LDY $02F8                 
CODE_12BCB3:        A5 01         LDA $01                   
CODE_12BCB5:        99 00 08      STA $0800,y               
CODE_12BCB8:        A5 00         LDA $00                   
CODE_12BCBA:        99 01 08      STA $0801,y               
CODE_12BCBD:        AD 14 07      LDA $0714                 
CODE_12BCC0:        99 02 08      STA $0802,y               
CODE_12BCC3:        AD 13 07      LDA $0713                 
CODE_12BCC6:        0D 12 07      ORA $0712                 
CODE_12BCC9:        09 2A         ORA #$2A                  
CODE_12BCCB:        99 03 08      STA $0803,y               
CODE_12BCCE:        C2 20         REP #$20                  
CODE_12BCD0:        98            TYA                       
CODE_12BCD1:        4A            LSR A                     
CODE_12BCD2:        4A            LSR A                     
CODE_12BCD3:        A8            TAY                       
CODE_12BCD4:        E2 20         SEP #$20                  
CODE_12BCD6:        A2 00 00      LDX #$0000                
CODE_12BCD9:        A5 02         LDA $02                   
CODE_12BCDB:        F0 01         BEQ CODE_12BCDE           
CODE_12BCDD:        E8            INX                       
CODE_12BCDE:        8A            TXA                       
CODE_12BCDF:        09 02         ORA #$02                  
CODE_12BCE1:        99 20 0A      STA $0A20,y               
CODE_12BCE4:        E2 30         SEP #$30                  
CODE_12BCE6:        A6 12         LDX $12                   
CODE_12BCE8:        60            RTS
                       
CODE_12BCE9:        A5 ED         LDA $ED                   
CODE_12BCEB:        48            PHA                       
CODE_12BCEC:        22 10 91 13   JSL CODE_139110           
CODE_12BCF0:        68            PLA                       
CODE_12BCF1:        0A            ASL A                     
CODE_12BCF2:        85 ED         STA $ED                   
CODE_12BCF4:        B5 B1         LDA $B1,x                 
CODE_12BCF6:        05 EE         ORA $EE                   
CODE_12BCF8:        D0 54         BNE CODE_12BD4E           
CODE_12BCFA:        AD 2C 04      LDA $042C                 
CODE_12BCFD:        18            CLC                       
CODE_12BCFE:        69 10         ADC #$10                  
CODE_12BD00:        85 00         STA $00                   
CODE_12BD02:        AD 29 04      LDA $0429                 
CODE_12BD05:        18            CLC                       
CODE_12BD06:        69 08         ADC #$08                  
CODE_12BD08:        85 01         STA $01                   
CODE_12BD0A:        B5 6F         LDA $6F,x                 
CODE_12BD0C:        85 02         STA $02                   
CODE_12BD0E:        A9 03         LDA #$03                  
CODE_12BD10:        85 03         STA $03                   
CODE_12BD12:        85 05         STA $05                   
CODE_12BD14:        AD 13 02      LDA $0213                 
CODE_12BD17:        29 71         AND #$71                  
CODE_12BD19:        09 01         ORA #$01                  
CODE_12BD1B:        8D 13 02      STA $0213                 
CODE_12BD1E:        22 83 E4 14   JSL CODE_14E483           
CODE_12BD22:        64 0B         STZ $0B                   
CODE_12BD24:        A2 14         LDX #$14                  
CODE_12BD26:        4C F7 BE      JMP CODE_12BEF7           

CODE_12BD29:        B4 90         LDY $90,x                 
CODE_12BD2B:        B9 3B 99      LDA.w DATA_11993B,y               
CODE_12BD2E:        C9 FF         CMP #$FF                  
CODE_12BD30:        F0 1C         BEQ CODE_12BD4E           
CODE_12BD32:        C0 1D         CPY #$1D                  
CODE_12BD34:        D0 03         BNE CODE_12BD39           
CODE_12BD36:        4C 85 C8      JMP CODE_12C885           

CODE_12BD39:        C0 21         CPY #$21                  
CODE_12BD3B:        D0 03         BNE CODE_12BD40           
CODE_12BD3D:        4C 31 C3      JMP CODE_12C331           

CODE_12BD40:        C0 22         CPY #$22                  
CODE_12BD42:        D0 03         BNE CODE_12BD47           
CODE_12BD44:        4C A2 C4      JMP CODE_12C4A2           

CODE_12BD47:        C0 2D         CPY #$2D                  
CODE_12BD49:        D0 04         BNE CODE_12BD4F           
CODE_12BD4B:        4C FE D8      JMP CODE_12D8FE           

CODE_12BD4E:        60            RTS
                       
CODE_12BD4F:        C0 12         CPY #$12                  
CODE_12BD51:        D0 03         BNE CODE_12BD56           
CODE_12BD53:        4C 8E C6      JMP CODE_12C68E           

CODE_12BD56:        C0 04         CPY #$04                  
CODE_12BD58:        D0 03         BNE CODE_12BD5D           
CODE_12BD5A:        4C A1 C1      JMP CODE_12C1A1           

CODE_12BD5D:        C0 33         CPY #$33                  
CODE_12BD5F:        D0 03         BNE CODE_12BD64           
CODE_12BD61:        4C 47 B1      JMP CODE_12B147           

CODE_12BD64:        C0 26         CPY #$26                  
CODE_12BD66:        D0 03         BNE CODE_12BD6B           
CODE_12BD68:        4C 0D D5      JMP CODE_12D50D           

CODE_12BD6B:        C0 2A         CPY #$2A                  
CODE_12BD6D:        D0 03         BNE CODE_12BD72           
CODE_12BD6F:        4C 09 D2      JMP CODE_12D209           

CODE_12BD72:        C0 43         CPY #$43                  
CODE_12BD74:        D0 03         BNE CODE_12BD79           
CODE_12BD76:        4C 30 AD      JMP CODE_12AD30           

CODE_12BD79:        C0 2C         CPY #$2C                  
CODE_12BD7B:        D0 03         BNE CODE_12BD80           
CODE_12BD7D:        4C 2A DC      JMP CODE_12DC2A           

CODE_12BD80:        C0 28         CPY #$28                  
CODE_12BD82:        D0 03         BNE CODE_12BD87           
CODE_12BD84:        4C D6 D5      JMP CODE_12D5D6           

CODE_12BD87:        C0 1A         CPY #$1A                  
CODE_12BD89:        D0 03         BNE CODE_12BD8E           
CODE_12BD8B:        4C D0 CE      JMP CODE_12CED0           

CODE_12BD8E:        C0 00         CPY #$00                  
CODE_12BD90:        D0 03         BNE CODE_12BD95           
CODE_12BD92:        4C DD AE      JMP CODE_12AEDD           

CODE_12BD95:        C0 08         CPY #$08                  
CODE_12BD97:        D0 03         BNE CODE_12BD9C           
CODE_12BD99:        4C FD C8      JMP CODE_12C8FD           

CODE_12BD9C:        C0 1F         CPY #$1F                  
CODE_12BD9E:        D0 03         BNE CODE_12BDA3           
CODE_12BDA0:        4C B7 CA      JMP CODE_12CAB7           

CODE_12BDA3:        C0 1C         CPY #$1C                  
CODE_12BDA5:        D0 03         BNE CODE_12BDAA           
CODE_12BDA7:        4C A0 BB      JMP CODE_12BBA0           

CODE_12BDAA:        C0 0A         CPY #$0A                  
CODE_12BDAC:        90 07         BCC CODE_12BDB5           
CODE_12BDAE:        C0 0D         CPY #$0D                  
CODE_12BDB0:        B0 03         BCS CODE_12BDB5                   
CODE_12BDB2:        4C E9 BC      JMP CODE_12BCE9           

CODE_12BDB5:        C0 41         CPY #$41                  
CODE_12BDB7:        D0 10         BNE CODE_12BDC9           
CODE_12BDB9:        AD F6 02      LDA $02F6                 
CODE_12BDBC:        8D F8 02      STA $02F8                 
CODE_12BDBF:        AD F7 02      LDA $02F7                 
CODE_12BDC2:        8D F9 02      STA $02F9                 
CODE_12BDC5:        4C E5 C6      JMP CODE_12C6E5           

CODE_12BDC8:        60            RTS
                       
CODE_12BDC9:        B4 90         LDY $90,x                 
CODE_12BDCB:        C0 38         CPY #$38                  
CODE_12BDCD:        D0 03         BNE CODE_12BDD2           
CODE_12BDCF:        4C A8 D1      JMP CODE_12D1A8           

CODE_12BDD2:        B9 3B 99      LDA.w DATA_11993B,y               
CODE_12BDD5:        85 0F         STA $0F                   
CODE_12BDD7:        A5 EE         LDA $EE                   
CODE_12BDD9:        D0 ED         BNE CODE_12BDC8           
CODE_12BDDB:        BD 6E 04      LDA $046E,x               
CODE_12BDDE:        29 10         AND #$10                  
CODE_12BDE0:        85 0B         STA $0B                   
CODE_12BDE2:        B4 6F         LDY $6F,x                 
CODE_12BDE4:        B5 65         LDA $65,x                 
CODE_12BDE6:        29 18         AND #$18                  
CODE_12BDE8:        F0 10         BEQ CODE_12BDFA           
CODE_12BDEA:        A0 02         LDY #$02                  
CODE_12BDEC:        AD 28 06      LDA $0628                 
CODE_12BDEF:        C9 02         CMP #$02                  
CODE_12BDF1:        D0 07         BNE CODE_12BDFA           
CODE_12BDF3:        B5 90         LDA $90,x                 
CODE_12BDF5:        C9 3D         CMP #$3D                  
CODE_12BDF7:        F0 01         BEQ CODE_12BDFA           
CODE_12BDF9:        88            DEY                       
CODE_12BDFA:        84 02         STY $02                   
CODE_12BDFC:        B5 65         LDA $65,x                 
CODE_12BDFE:        29 44         AND #$44                  
CODE_12BE00:        85 05         STA $05                   
CODE_12BE02:        AD 2C 04      LDA $042C                 
CODE_12BE05:        85 00         STA $00                   
CODE_12BE07:        9C 00 07      STZ $0700                 
CODE_12BE0A:        9C 01 07      STZ $0701                 
CODE_12BE0D:        BD 4A 04      LDA $044A,x               
CODE_12BE10:        29 02         AND #$02                  
CODE_12BE12:        4A            LSR A                     
CODE_12BE13:        A4 ED         LDY $ED                   
CODE_12BE15:        F0 02         BEQ CODE_12BE19           
CODE_12BE17:        A9 00         LDA #$00                  
CODE_12BE19:        6D 29 04      ADC $0429                 
CODE_12BE1C:        85 01         STA $01                   
CODE_12BE1E:        DA            PHX                       
CODE_12BE1F:        B5 90         LDA $90,x                 
CODE_12BE21:        AA            TAX                       
CODE_12BE22:        BF A5 EB 15   LDA.l DATA_15EBA5,x             
CODE_12BE26:        48            PHA                       
CODE_12BE27:        29 0F         AND #$0F                  
CODE_12BE29:        0D 49 02      ORA $0249                 
CODE_12BE2C:        E0 17         CPX #$17                  
CODE_12BE2E:        D0 02         BNE CODE_12BE32           
CODE_12BE30:        09 10         ORA #$10                  
CODE_12BE32:        8D 13 02      STA $0213                 
CODE_12BE35:        9C 18 02      STZ $0218                 
CODE_12BE38:        68            PLA                       
CODE_12BE39:        48            PHA                       
CODE_12BE3A:        29 40         AND #$40                  
CODE_12BE3C:        F0 0B         BEQ CODE_12BE49           
CODE_12BE3E:        AD 13 02      LDA $0213                 
CODE_12BE41:        29 F1         AND #$F1                  
CODE_12BE43:        0D 48 02      ORA $0248                 
CODE_12BE46:        8D 13 02      STA $0213                 
CODE_12BE49:        68            PLA                       
CODE_12BE4A:        0A            ASL A                     
CODE_12BE4B:        2E 18 02      ROL $0218                 
CODE_12BE4E:        0E 18 02      ASL $0218                 
CODE_12BE51:        BF EC EB 15   LDA.l DATA_15EBEC,x             
CODE_12BE55:        18            CLC                       
CODE_12BE56:        65 00         ADC $00                   
CODE_12BE58:        85 00         STA $00                   
CODE_12BE5A:        FA            PLX                       
CODE_12BE5B:        B5 65         LDA $65,x                 
CODE_12BE5D:        29 A0         AND #$A0                  
CODE_12BE5F:        BC 5C 04      LDY $045C,x               
CODE_12BE62:        F0 16         BEQ CODE_12BE7A           
CODE_12BE64:        85 08         STA $08                   
CODE_12BE66:        22 DC 91 13   JSL CODE_1391DC           
CODE_12BE6A:        B0 0E         BCS CODE_12BE7A                   
CODE_12BE6C:        AD 13 02      LDA $0213                 
CODE_12BE6F:        29 F1         AND #$F1                  
CODE_12BE71:        8D 13 02      STA $0213                 
CODE_12BE74:        98            TYA                       
CODE_12BE75:        4A            LSR A                     
CODE_12BE76:        29 03         AND #$03                  
CODE_12BE78:        05 08         ORA $08                   
CODE_12BE7A:        85 03         STA $03                   
CODE_12BE7C:        BD 6E 04      LDA $046E,x               
CODE_12BE7F:        85 0C         STA $0C                   
CODE_12BE81:        0A            ASL A                     
CODE_12BE82:        B5 9F         LDA $9F,x                 
CODE_12BE84:        A6 0F         LDX $0F                   
CODE_12BE86:        29 08         AND #$08                  
CODE_12BE88:        F0 1A         BEQ CODE_12BEA4           
CODE_12BE8A:        90 06         BCC CODE_12BE92           
CODE_12BE8C:        A9 01         LDA #$01                  
CODE_12BE8E:        85 02         STA $02                   
CODE_12BE90:        D0 12         BNE CODE_12BEA4           
CODE_12BE92:        E8            INX                       
CODE_12BE93:        E8            INX                       
CODE_12BE94:        A5 05         LDA $05                   
CODE_12BE96:        29 40         AND #$40                  
CODE_12BE98:        F0 0A         BEQ CODE_12BEA4           
CODE_12BE9A:        E8            INX                       
CODE_12BE9B:        E8            INX                       
CODE_12BE9C:        A5 0C         LDA $0C                   
CODE_12BE9E:        29 20         AND #$20                  
CODE_12BEA0:        F0 02         BEQ CODE_12BEA4           
CODE_12BEA2:        E8            INX                       
CODE_12BEA3:        E8            INX                       
CODE_12BEA4:        AD F6 02      LDA $02F6                 
CODE_12BEA7:        8D F8 02      STA $02F8                 
CODE_12BEAA:        AD F7 02      LDA $02F7                 
CODE_12BEAD:        8D F9 02      STA $02F9                 
CODE_12BEB0:        A5 05         LDA $05                   
CODE_12BEB2:        29 40         AND #$40                  
CODE_12BEB4:        F0 41         BEQ CODE_12BEF7           
CODE_12BEB6:        A5 05         LDA $05                   
CODE_12BEB8:        29 04         AND #$04                  
CODE_12BEBA:        F0 14         BEQ CODE_12BED0           
CODE_12BEBC:        A5 ED         LDA $ED                   
CODE_12BEBE:        85 08         STA $08                   
CODE_12BEC0:        A5 02         LDA $02                   
CODE_12BEC2:        C9 01         CMP #$01                  
CODE_12BEC4:        D0 0A         BNE CODE_12BED0           
CODE_12BEC6:        A5 01         LDA $01                   
CODE_12BEC8:        69 0F         ADC #$0F                  
CODE_12BECA:        85 01         STA $01                   
CODE_12BECC:        06 ED         ASL $ED                   
CODE_12BECE:        06 ED         ASL $ED                   
CODE_12BED0:        20 3B C0      JSR CODE_12C03B           
CODE_12BED3:        A5 05         LDA $05                   
CODE_12BED5:        29 04         AND #$04                  
CODE_12BED7:        F0 1E         BEQ CODE_12BEF7           
CODE_12BED9:        AD 2C 04      LDA $042C                 
CODE_12BEDC:        85 00         STA $00                   
CODE_12BEDE:        AD 29 04      LDA $0429                 
CODE_12BEE1:        85 01         STA $01                   
CODE_12BEE3:        A5 08         LDA $08                   
CODE_12BEE5:        85 ED         STA $ED                   
CODE_12BEE7:        A5 02         LDA $02                   
CODE_12BEE9:        C9 01         CMP #$01                  
CODE_12BEEB:        F0 0A         BEQ CODE_12BEF7           
CODE_12BEED:        A5 01         LDA $01                   
CODE_12BEEF:        69 0F         ADC #$0F                  
CODE_12BEF1:        85 01         STA $01                   
CODE_12BEF3:        06 ED         ASL $ED                   
CODE_12BEF5:        06 ED         ASL $ED                   
CODE_12BEF7:        20 3B C0      JSR CODE_12C03B           
CODE_12BEFA:        A5 05         LDA $05                   
CODE_12BEFC:        C9 40         CMP #$40                  
CODE_12BEFE:        D0 47         BNE CODE_12BF47           
CODE_12BF00:        A5 03         LDA $03                   
CODE_12BF02:        10 43         BPL CODE_12BF47           
CODE_12BF04:        A5 0C         LDA $0C                   
CODE_12BF06:        29 20         AND #$20                  
CODE_12BF08:        F0 28         BEQ CODE_12BF32           
CODE_12BF0A:        C2 10         REP #$10                  
CODE_12BF0C:        AC F6 02      LDY $02F6                 
CODE_12BF0F:        AE 00 07      LDX $0700                 
CODE_12BF12:        BD 01 08      LDA $0801,x               
CODE_12BF15:        48            PHA                       
CODE_12BF16:        B9 01 08      LDA $0801,y               
CODE_12BF19:        9D 01 08      STA $0801,x               
CODE_12BF1C:        68            PLA                       
CODE_12BF1D:        99 01 08      STA $0801,y               
CODE_12BF20:        BD 05 08      LDA $0805,x               
CODE_12BF23:        48            PHA                       
CODE_12BF24:        B9 05 08      LDA $0805,y               
CODE_12BF27:        9D 05 08      STA $0805,x               
CODE_12BF2A:        68            PLA                       
CODE_12BF2B:        99 05 08      STA $0805,y               
CODE_12BF2E:        E2 10         SEP #$10                  
CODE_12BF30:        B0 15         BCS CODE_12BF47                   
CODE_12BF32:        C2 10         REP #$10                  
CODE_12BF34:        AC F6 02      LDY $02F6                 
CODE_12BF37:        B9 01 08      LDA $0801,y               
CODE_12BF3A:        48            PHA                       
CODE_12BF3B:        B9 05 08      LDA $0805,y               
CODE_12BF3E:        99 01 08      STA $0801,y               
CODE_12BF41:        68            PLA                       
CODE_12BF42:        99 05 08      STA $0805,y               
CODE_12BF45:        E2 10         SEP #$10                  
CODE_12BF47:        A6 12         LDX $12                   
CODE_12BF49:        B5 65         LDA $65,x                 
CODE_12BF4B:        29 10         AND #$10                  
CODE_12BF4D:        F0 19         BEQ CODE_12BF68           
CODE_12BF4F:        C2 10         REP #$10                  
CODE_12BF51:        AC F6 02      LDY $02F6                 
CODE_12BF54:        A5 03         LDA $03                   
CODE_12BF56:        0A            ASL A                     
CODE_12BF57:        0D 13 02      ORA $0213                 
CODE_12BF5A:        29 3F         AND #$3F                  
CODE_12BF5C:        09 20         ORA #$20                  
CODE_12BF5E:        99 03 08      STA $0803,y               
CODE_12BF61:        09 40         ORA #$40                  
CODE_12BF63:        99 07 08      STA $0807,y               
CODE_12BF66:        E2 10         SEP #$10                  
CODE_12BF68:        C2 10         REP #$10                  
CODE_12BF6A:        A5 EB         LDA $EB                   
CODE_12BF6C:        D0 2A         BNE CODE_12BF98           
CODE_12BF6E:        C2 20         REP #$20                  
CODE_12BF70:        AD F8 02      LDA $02F8                 
CODE_12BF73:        38            SEC                       
CODE_12BF74:        E9 04 00      SBC #$0004                
CODE_12BF77:        8D 00 07      STA $0700                 
CODE_12BF7A:        E2 20         SEP #$20                  
CODE_12BF7C:        B5 90         LDA $90,x                 
CODE_12BF7E:        C9 0F         CMP #$0F                  
CODE_12BF80:        F0 16         BEQ CODE_12BF98           
CODE_12BF82:        C9 10         CMP #$10                  
CODE_12BF84:        F0 12         BEQ CODE_12BF98           
CODE_12BF86:        C9 1B         CMP #$1B                  
CODE_12BF88:        F0 0E         BEQ CODE_12BF98           
CODE_12BF8A:        C9 20         CMP #$20                  
CODE_12BF8C:        F0 0A         BEQ CODE_12BF98           
CODE_12BF8E:        AC F6 02      LDY $02F6                 
CODE_12BF91:        B9 00 08      LDA $0800,y               
CODE_12BF94:        C9 F0         CMP #$F0                  
CODE_12BF96:        B0 03         BCS CODE_12BF9B                   
CODE_12BF98:        82 9B 00      BRL CODE_12C036           

CODE_12BF9B:        B5 90         LDA $90,x                 
CODE_12BF9D:        C9 2A         CMP #$2A                  
CODE_12BF9F:        D0 0C         BNE CODE_12BFAD           
CODE_12BFA1:        AD F7 02      LDA $02F7                 
CODE_12BFA4:        D0 07         BNE CODE_12BFAD           
CODE_12BFA6:        AD F6 02      LDA $02F6                 
CODE_12BFA9:        C9 20         CMP #$20                  
CODE_12BFAB:        F0 0F         BEQ CODE_12BFBC           
CODE_12BFAD:        B5 A8         LDA $A8,x                 
CODE_12BFAF:        F0 07         BEQ CODE_12BFB8           
CODE_12BFB1:        AD BE 04      LDA $04BE                 
CODE_12BFB4:        C9 19         CMP #$19                  
CODE_12BFB6:        90 04         BCC CODE_12BFBC           
CODE_12BFB8:        22 83 E4 14   JSL CODE_14E483           
CODE_12BFBC:        C2 10         REP #$10                  
CODE_12BFBE:        AC F6 02      LDY $02F6                 
CODE_12BFC1:        AE F8 02      LDX $02F8                 
CODE_12BFC4:        B9 00 08      LDA $0800,y               
CODE_12BFC7:        9D 00 08      STA $0800,x               
CODE_12BFCA:        B9 01 08      LDA $0801,y               
CODE_12BFCD:        9D 01 08      STA $0801,x               
CODE_12BFD0:        B9 02 08      LDA $0802,y               
CODE_12BFD3:        9D 02 08      STA $0802,x               
CODE_12BFD6:        B9 03 08      LDA $0803,y               
CODE_12BFD9:        9D 03 08      STA $0803,x               
CODE_12BFDC:        C2 20         REP #$20                  
CODE_12BFDE:        98            TYA                       
CODE_12BFDF:        4A            LSR A                     
CODE_12BFE0:        4A            LSR A                     
CODE_12BFE1:        A8            TAY                       
CODE_12BFE2:        8A            TXA                       
CODE_12BFE3:        4A            LSR A                     
CODE_12BFE4:        4A            LSR A                     
CODE_12BFE5:        AA            TAX                       
CODE_12BFE6:        E2 20         SEP #$20                  
CODE_12BFE8:        AD 18 02      LDA $0218                 
CODE_12BFEB:        09 01         ORA #$01                  
CODE_12BFED:        99 20 0A      STA $0A20,y               
CODE_12BFF0:        3A            DEC A                     
CODE_12BFF1:        9D 20 0A      STA $0A20,x               
CODE_12BFF4:        A5 05         LDA $05                   
CODE_12BFF6:        29 40         AND #$40                  
CODE_12BFF8:        F0 3C         BEQ CODE_12C036           
CODE_12BFFA:        22 83 E4 14   JSL CODE_14E483           
CODE_12BFFE:        C2 10         REP #$10                  
CODE_12C000:        AC 00 07      LDY $0700                 
CODE_12C003:        AE F8 02      LDX $02F8                 
CODE_12C006:        B9 00 08      LDA $0800,y               
CODE_12C009:        9D 00 08      STA $0800,x               
CODE_12C00C:        B9 01 08      LDA $0801,y               
CODE_12C00F:        9D 01 08      STA $0801,x               
CODE_12C012:        B9 02 08      LDA $0802,y               
CODE_12C015:        9D 02 08      STA $0802,x               
CODE_12C018:        B9 03 08      LDA $0803,y               
CODE_12C01B:        9D 03 08      STA $0803,x               
CODE_12C01E:        C2 20         REP #$20                  
CODE_12C020:        98            TYA                       
CODE_12C021:        4A            LSR A                     
CODE_12C022:        4A            LSR A                     
CODE_12C023:        A8            TAY                       
CODE_12C024:        8A            TXA                       
CODE_12C025:        4A            LSR A                     
CODE_12C026:        4A            LSR A                     
CODE_12C027:        AA            TAX                       
CODE_12C028:        E2 20         SEP #$20                  
CODE_12C02A:        AD 18 02      LDA $0218                 
CODE_12C02D:        09 01         ORA #$01                  
CODE_12C02F:        99 20 0A      STA $0A20,y               
CODE_12C032:        3A            DEC A                     
CODE_12C033:        9D 20 0A      STA $0A20,x               
CODE_12C036:        E2 10         SEP #$10                  
CODE_12C038:        A6 12         LDX $12                   
CODE_12C03A:        60            RTS
                       
CODE_12C03B:        AD 29 04      LDA $0429                 
CODE_12C03E:        8D 12 07      STA $0712                 
CODE_12C041:        AD 1F 02      LDA $021F                 
CODE_12C044:        8D 13 07      STA $0713                 
CODE_12C047:        C2 20         REP #$20                  
CODE_12C049:        AD 12 07      LDA $0712                 
CODE_12C04C:        10 07         BPL CODE_12C055           
CODE_12C04E:        C9 80 FF      CMP #$FF80                
CODE_12C051:        B0 0C         BCS CODE_12C05F                   
CODE_12C053:        80 05         BRA CODE_12C05A           

CODE_12C055:        C9 80 01      CMP #$0180                
CODE_12C058:        90 05         BCC CODE_12C05F           
CODE_12C05A:        E2 20         SEP #$20                  
CODE_12C05C:        4C FE C0      JMP CODE_12C0FE
           
CODE_12C05F:        E2 20         SEP #$20                  
CODE_12C061:        A5 0C         LDA $0C                   
CODE_12C063:        29 20         AND #$20                  
CODE_12C065:        F0 03         BEQ CODE_12C06A           
CODE_12C067:        4C FF C0      JMP CODE_12C0FF           

CODE_12C06A:        A5 0B         LDA $0B                   
CODE_12C06C:        D0 05         BNE CODE_12C073           
CODE_12C06E:        BD 6F 98      LDA.w DATA_11986F,x               
CODE_12C071:        80 03         BRA CODE_12C076           

CODE_12C073:        BD 92 99      LDA.w DATA_119992,x               
CODE_12C076:        8D 12 07      STA $0712                 
CODE_12C079:        A5 02         LDA $02                   
CODE_12C07B:        4A            LSR A                     
CODE_12C07C:        08            PHP                       
CODE_12C07D:        A5 03         LDA $03                   
CODE_12C07F:        29 C0         AND #$C0                  
CODE_12C081:        0C 13 02      TSB $0213                 
CODE_12C084:        DA            PHX                       
CODE_12C085:        A6 12         LDX $12                   
CODE_12C087:        B5 A8         LDA $A8,x                 
CODE_12C089:        F0 12         BEQ CODE_12C09D           
CODE_12C08B:        B5 90         LDA $90,x                 
CODE_12C08D:        C9 19         CMP #$19                  
CODE_12C08F:        D0 0C         BNE CODE_12C09D           
CODE_12C091:        B5 65         LDA $65,x                 
CODE_12C093:        29 DF         AND #$DF                  
CODE_12C095:        95 65         STA $65,x                 
CODE_12C097:        A5 03         LDA $03                   
CODE_12C099:        29 DF         AND #$DF                  
CODE_12C09B:        85 03         STA $03                   
CODE_12C09D:        FA            PLX                       
CODE_12C09E:        A5 03         LDA $03                   
CODE_12C0A0:        29 20         AND #$20                  
CODE_12C0A2:        49 20         EOR #$20                  
CODE_12C0A4:        0C 13 02      TSB $0213                 
CODE_12C0A7:        A5 03         LDA $03                   
CODE_12C0A9:        29 03         AND #$03                  
CODE_12C0AB:        0A            ASL A                     
CODE_12C0AC:        28            PLP                       
CODE_12C0AD:        90 02         BCC CODE_12C0B1           
CODE_12C0AF:        09 40         ORA #$40                  
CODE_12C0B1:        0D 13 02      ORA $0213                 
CODE_12C0B4:        8D 13 07      STA $0713                 
CODE_12C0B7:        22 07 D0 15   JSL CODE_15D007           
CODE_12C0BB:        C2 10         REP #$10                  
CODE_12C0BD:        AC F8 02      LDY $02F8                 
CODE_12C0C0:        A5 00         LDA $00                   
CODE_12C0C2:        99 01 08      STA $0801,y               
CODE_12C0C5:        18            CLC                       
CODE_12C0C6:        69 10         ADC #$10                  
CODE_12C0C8:        85 00         STA $00                   
CODE_12C0CA:        A5 01         LDA $01                   
CODE_12C0CC:        99 00 08      STA $0800,y               
CODE_12C0CF:        AD 12 07      LDA $0712                 
CODE_12C0D2:        99 02 08      STA $0802,y               
CODE_12C0D5:        AD 13 07      LDA $0713                 
CODE_12C0D8:        99 03 08      STA $0803,y               
CODE_12C0DB:        C2 20         REP #$20                  
CODE_12C0DD:        AD F8 02      LDA $02F8                 
CODE_12C0E0:        18            CLC                       
CODE_12C0E1:        69 04 00      ADC #$0004                
CODE_12C0E4:        8D F8 02      STA $02F8                 
CODE_12C0E7:        98            TYA                       
CODE_12C0E8:        4A            LSR A                     
CODE_12C0E9:        4A            LSR A                     
CODE_12C0EA:        A8            TAY                       
CODE_12C0EB:        E2 20         SEP #$20                  
CODE_12C0ED:        A5 ED         LDA $ED                   
CODE_12C0EF:        29 08         AND #$08                  
CODE_12C0F1:        4A            LSR A                     
CODE_12C0F2:        4A            LSR A                     
CODE_12C0F3:        4A            LSR A                     
CODE_12C0F4:        0D 18 02      ORA $0218                 
CODE_12C0F7:        99 20 0A      STA $0A20,y               
CODE_12C0FA:        E2 10         SEP #$10                  
CODE_12C0FC:        E8            INX                       
CODE_12C0FD:        E8            INX                       
CODE_12C0FE:        60            RTS
                       
CODE_12C0FF:        A5 02         LDA $02                   
CODE_12C101:        4A            LSR A                     
CODE_12C102:        08            PHP                       
CODE_12C103:        A5 03         LDA $03                   
CODE_12C105:        29 C0         AND #$C0                  
CODE_12C107:        0C 13 02      TSB $0213                 
CODE_12C10A:        A5 03         LDA $03                   
CODE_12C10C:        29 03         AND #$03                  
CODE_12C10E:        0A            ASL A                     
CODE_12C10F:        28            PLP                       
CODE_12C110:        90 02         BCC CODE_12C114           
CODE_12C112:        09 40         ORA #$40                  
CODE_12C114:        09 20         ORA #$20                  
CODE_12C116:        0D 13 02      ORA $0213                 
CODE_12C119:        8D 12 07      STA $0712                 
CODE_12C11C:        29 40         AND #$40                  
CODE_12C11E:        D0 09         BNE CODE_12C129           
CODE_12C120:        BD 92 99      LDA.w DATA_119992,x               
CODE_12C123:        48            PHA                       
CODE_12C124:        BD 93 99      LDA.w DATA_119992+1,x               
CODE_12C127:        80 07         BRA CODE_12C130           

CODE_12C129:        BD 93 99      LDA.w DATA_119992+1,x               
CODE_12C12C:        48            PHA                       
CODE_12C12D:        BD 92 99      LDA.w DATA_119992,x               
CODE_12C130:        C2 10         REP #$10                  
CODE_12C132:        AC F8 02      LDY $02F8                 
CODE_12C135:        99 06 08      STA $0806,y               
CODE_12C138:        68            PLA                       
CODE_12C139:        99 02 08      STA $0802,y               
CODE_12C13C:        A5 00         LDA $00                   
CODE_12C13E:        99 01 08      STA $0801,y               
CODE_12C141:        99 05 08      STA $0805,y               
CODE_12C144:        18            CLC                       
CODE_12C145:        69 10         ADC #$10                  
CODE_12C147:        85 00         STA $00                   
CODE_12C149:        A5 01         LDA $01                   
CODE_12C14B:        99 00 08      STA $0800,y               
CODE_12C14E:        69 08         ADC #$08                  
CODE_12C150:        99 04 08      STA $0804,y               
CODE_12C153:        AD 12 07      LDA $0712                 
CODE_12C156:        99 03 08      STA $0803,y               
CODE_12C159:        99 07 08      STA $0807,y               
CODE_12C15C:        C2 20         REP #$20                  
CODE_12C15E:        98            TYA                       
CODE_12C15F:        4A            LSR A                     
CODE_12C160:        4A            LSR A                     
CODE_12C161:        A8            TAY                       
CODE_12C162:        E2 20         SEP #$20                  
CODE_12C164:        A5 ED         LDA $ED                   
CODE_12C166:        29 08         AND #$08                  
CODE_12C168:        4A            LSR A                     
CODE_12C169:        4A            LSR A                     
CODE_12C16A:        4A            LSR A                     
CODE_12C16B:        0D 18 02      ORA $0218                 
CODE_12C16E:        99 20 0A      STA $0A20,y               
CODE_12C171:        A5 ED         LDA $ED                   
CODE_12C173:        29 04         AND #$04                  
CODE_12C175:        4A            LSR A                     
CODE_12C176:        4A            LSR A                     
CODE_12C177:        0D 18 02      ORA $0218                 
CODE_12C17A:        99 21 0A      STA $0A21,y               
CODE_12C17D:        E2 10         SEP #$10                  
CODE_12C17F:        8A            TXA                       
CODE_12C180:        48            PHA                       
CODE_12C181:        22 83 E4 14   JSL CODE_14E483           
CODE_12C185:        68            PLA                       
CODE_12C186:        AA            TAX                       
CODE_12C187:        AD 00 07      LDA $0700                 
CODE_12C18A:        D0 11         BNE CODE_12C19D           
CODE_12C18C:        AD 01 07      LDA $0701                 
CODE_12C18F:        D0 0C         BNE CODE_12C19D           
CODE_12C191:        AC F8 02      LDY $02F8                 
CODE_12C194:        8C 00 07      STY $0700                 
CODE_12C197:        AC F9 02      LDY $02F9                 
CODE_12C19A:        8C 01 07      STY $0701                 
CODE_12C19D:        E8            INX                       
CODE_12C19E:        E8            INX                       
CODE_12C19F:        E8            INX                       
CODE_12C1A0:        60            RTS
                       
CODE_12C1A1:        20 C9 BD      JSR CODE_12BDC9           
CODE_12C1A4:        A5 ED         LDA $ED                   
CODE_12C1A6:        29 0C         AND #$0C                  
CODE_12C1A8:        D0 2F         BNE CODE_12C1D9           
CODE_12C1AA:        B5 9F         LDA $9F,x                 
CODE_12C1AC:        29 0C         AND #$0C                  
CODE_12C1AE:        4A            LSR A                     
CODE_12C1AF:        4A            LSR A                     
CODE_12C1B0:        85 00         STA $00                   
CODE_12C1B2:        C2 30         REP #$30                  
CODE_12C1B4:        B5 6F         LDA $6F,x                 
CODE_12C1B6:        0A            ASL A                     
CODE_12C1B7:        0A            ASL A                     
CODE_12C1B8:        65 00         ADC $00                   
CODE_12C1BA:        29 FF 00      AND #$00FF                
CODE_12C1BD:        AA            TAX                       
CODE_12C1BE:        E2 20         SEP #$20                  
CODE_12C1C0:        AC F6 02      LDY $02F6                 
CODE_12C1C3:        B9 01 08      LDA $0801,y               
CODE_12C1C6:        7D 86 99      ADC.w DATA_11998A-4,x               
CODE_12C1C9:        99 01 08      STA $0801,y               
CODE_12C1CC:        B9 00 08      LDA $0800,y               
CODE_12C1CF:        7D 7E 99      ADC.w DATA_119982-4,x               
CODE_12C1D2:        99 00 08      STA $0800,y               
CODE_12C1D5:        E2 10         SEP #$10                  
CODE_12C1D7:        A6 12         LDX $12                   
CODE_12C1D9:        60            RTS
                       
CODE_12C1DA:        A5 28         LDA $28                   
CODE_12C1DC:        F5 29         SBC $29,x                 
CODE_12C1DE:        85 0F         STA $0F                   
CODE_12C1E0:        A5 14         LDA $14                   
CODE_12C1E2:        A0 00         LDY #$00                  
CODE_12C1E4:        F5 15         SBC $15,x                 
CODE_12C1E6:        B0 01         BCS CODE_12C1E9                   
CODE_12C1E8:        C8            INY                       
CODE_12C1E9:        60            RTS
                       
CODE_12C1EA:        8A            TXA                       
CODE_12C1EB:        18            CLC                       
CODE_12C1EC:        69 0A         ADC #$0A                  
CODE_12C1EE:        AA            TAX                       
CODE_12C1EF:        B5 3D         LDA $3D,x                 
CODE_12C1F1:        18            CLC                       
CODE_12C1F2:        7D CD 04      ADC $04CD,x               
CODE_12C1F5:        48            PHA                       
CODE_12C1F6:        0A            ASL A                     
CODE_12C1F7:        0A            ASL A                     
CODE_12C1F8:        0A            ASL A                     
CODE_12C1F9:        0A            ASL A                     
CODE_12C1FA:        85 01         STA $01                   
CODE_12C1FC:        68            PLA                       
CODE_12C1FD:        4A            LSR A                     
CODE_12C1FE:        4A            LSR A                     
CODE_12C1FF:        4A            LSR A                     
CODE_12C200:        4A            LSR A                     
CODE_12C201:        C9 08         CMP #$08                  
CODE_12C203:        90 02         BCC CODE_12C207           
CODE_12C205:        09 F0         ORA #$F0                  
CODE_12C207:        85 00         STA $00                   
CODE_12C209:        A0 00         LDY #$00                  
CODE_12C20B:        0A            ASL A                     
CODE_12C20C:        90 01         BCC CODE_12C20F           
CODE_12C20E:        88            DEY                       
CODE_12C20F:        84 02         STY $02                   
CODE_12C211:        BD 08 04      LDA $0408,x               
CODE_12C214:        18            CLC                       
CODE_12C215:        65 01         ADC $01                   
CODE_12C217:        9D 08 04      STA $0408,x               
CODE_12C21A:        B5 29         LDA $29,x                 
CODE_12C21C:        65 00         ADC $00                   
CODE_12C21E:        95 29         STA $29,x                 
CODE_12C220:        26 01         ROL $01                   
CODE_12C222:        E0 0A         CPX #$0A                  
CODE_12C224:        B0 17         BCS CODE_12C23D                   
CODE_12C226:        A9 00         LDA #$00                  
CODE_12C228:        9D A4 04      STA $04A4,x               
CODE_12C22B:        B5 90         LDA $90,x                 
CODE_12C22D:        C9 1B         CMP #$1B                  
CODE_12C22F:        F0 0C         BEQ CODE_12C23D           
CODE_12C231:        C9 0F         CMP #$0F                  
CODE_12C233:        F0 08         BEQ CODE_12C23D           
CODE_12C235:        C9 10         CMP #$10                  
CODE_12C237:        F0 04         BEQ CODE_12C23D           
CODE_12C239:        A4 EB         LDY $EB                   
CODE_12C23B:        F0 08         BEQ CODE_12C245           
CODE_12C23D:        46 01         LSR $01                   
CODE_12C23F:        B5 15         LDA $15,x                 
CODE_12C241:        65 02         ADC $02                   
CODE_12C243:        95 15         STA $15,x                 
CODE_12C245:        A6 12         LDX $12                   
CODE_12C247:        60            RTS
                       
CODE_12C248:        B5 3D         LDA $3D,x                 
CODE_12C24A:        49 FF         EOR #$FF                  
CODE_12C24C:        18            CLC                       
CODE_12C24D:        69 01         ADC #$01                  
CODE_12C24F:        95 3D         STA $3D,x                 
CODE_12C251:        F0 06         BEQ CODE_12C259           
CODE_12C253:        B5 6F         LDA $6F,x                 
CODE_12C255:        49 03         EOR #$03                  
CODE_12C257:        95 6F         STA $6F,x                 
CODE_12C259:        4C EF C1      JMP CODE_12C1EF           

CODE_12C25C:        20 F9 B1      JSR CODE_12B1F9           
CODE_12C25F:        6B            RTL
                       
DATA_12C260:        db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ; \ Empty.
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ; /
          
CODE_12C270:        20 2D AF      JSR CODE_12AF2D           
CODE_12C273:        A9 04         LDA #$04                  
CODE_12C275:        9D 65 04      STA $0465,x               
CODE_12C278:        A9 00         LDA #$00                  
CODE_12C27A:        95 3D         STA $3D,x                 
CODE_12C27C:        B5 29         LDA $29,x                 
CODE_12C27E:        18            CLC                       
CODE_12C27F:        69 04         ADC #$04                  
CODE_12C281:        95 29         STA $29,x                 
CODE_12C283:        4C 7A 9F      JMP CODE_129F7A           

CODE_12C286:        BD 5C 04      LDA $045C,x               
CODE_12C289:        1D 38 04      ORA $0438,x               
CODE_12C28C:        F0 03         BEQ CODE_12C291           
CODE_12C28E:        4C 29 BD      JMP CODE_12BD29           

CODE_12C291:        20 16 BB      JSR CODE_12BB16           
CODE_12C294:        B5 33         LDA $33,x                 
CODE_12C296:        C9 70         CMP #$70                  
CODE_12C298:        90 03         BCC CODE_12C29D           
CODE_12C29A:        20 59 B6      JSR CODE_12B659           
CODE_12C29D:        B5 86         LDA $86,x                 
CODE_12C29F:        D0 2E         BNE CODE_12C2CF           
CODE_12C2A1:        B5 79         LDA $79,x                 
CODE_12C2A3:        29 3F         AND #$3F                  
CODE_12C2A5:        D0 17         BNE CODE_12C2BE           
CODE_12C2A7:        AD 87 05      LDA $0587                 
CODE_12C2AA:        29 03         AND #$03                  
CODE_12C2AC:        F0 10         BEQ CODE_12C2BE           
CODE_12C2AE:        AC C1 04      LDY $04C1                 
CODE_12C2B1:        88            DEY                       
CODE_12C2B2:        C0 80         CPY #$80                  
CODE_12C2B4:        90 08         BCC CODE_12C2BE           
CODE_12C2B6:        A9 7F         LDA #$7F                  
CODE_12C2B8:        95 86         STA $86,x                 
CODE_12C2BA:        A0 00         LDY #$00                  
CODE_12C2BC:        F0 0C         BEQ CODE_12C2CA           
CODE_12C2BE:        F6 79         INC $79,x                 
CODE_12C2C0:        A0 F0         LDY #$F0                  
CODE_12C2C2:        B5 79         LDA $79,x                 
CODE_12C2C4:        29 20         AND #$20                  
CODE_12C2C6:        F0 02         BEQ CODE_12C2CA           
CODE_12C2C8:        A0 10         LDY #$10                  
CODE_12C2CA:        94 3D         STY $3D,x                 
CODE_12C2CC:        4C 28 C3      JMP CODE_12C328           

CODE_12C2CF:        C9 50         CMP #$50                  
CODE_12C2D1:        D0 00         BNE CODE_12C2D3           
CODE_12C2D3:        C9 20         CMP #$20                  
CODE_12C2D5:        D0 51         BNE CODE_12C328           
CODE_12C2D7:        AD 87 05      LDA $0587                 
CODE_12C2DA:        29 07         AND #$07                  
CODE_12C2DC:        A8            TAY                       
CODE_12C2DD:        B9 8C 9A      LDA.w DATA_119A8C,y               
CODE_12C2E0:        95 47         STA $47,x                 
CODE_12C2E2:        D6 33         DEC $33,x                 
CODE_12C2E4:        20 35 B3      JSR CODE_12B335           
CODE_12C2E7:        30 3F         BMI CODE_12C328           
CODE_12C2E9:        A4 00         LDY $00                   
CODE_12C2EB:        B5 33         LDA $33,x                 
CODE_12C2ED:        38            SEC                       
CODE_12C2EE:        E9 00         SBC #$00                  
CODE_12C2F0:        99 33 00      STA $0033,y               
CODE_12C2F3:        B5 1F         LDA $1F,x                 
CODE_12C2F5:        E9 00         SBC #$00                  
CODE_12C2F7:        99 1F 00      STA $001F,y               
CODE_12C2FA:        B5 29         LDA $29,x                 
CODE_12C2FC:        18            CLC                       
CODE_12C2FD:        69 08         ADC #$08                  
CODE_12C2FF:        99 29 00      STA $0029,y               
CODE_12C302:        B5 15         LDA $15,x                 
CODE_12C304:        69 00         ADC #$00                  
CODE_12C306:        99 15 00      STA $0015,y               
CODE_12C309:        A6 00         LDX $00                   
CODE_12C30B:        A9 22         LDA #$22                  
CODE_12C30D:        95 90         STA $90,x                 
CODE_12C30F:        A9 37         LDA #$37                  
CODE_12C311:        8D E0 1D      STA $1DE0                 
CODE_12C314:        AD 87 05      LDA $0587                 
CODE_12C317:        29 07         AND #$07                  
CODE_12C319:        A8            TAY                       
CODE_12C31A:        B9 84 9A      LDA.w DATA_119A84,y               
CODE_12C31D:        95 47         STA $47,x                 
CODE_12C31F:        A9 D0         LDA #$D0                  
CODE_12C321:        95 3D         STA $3D,x                 
CODE_12C323:        20 7A 9F      JSR CODE_129F7A           
CODE_12C326:        A6 12         LDX $12                   
CODE_12C328:        20 EF C1      JSR CODE_12C1EF           
CODE_12C32B:        20 B2 A0      JSR CODE_12A0B2           
CODE_12C32E:        4C 29 BD      JMP CODE_12BD29           

CODE_12C331:        B4 51         LDY $51,x                 
CODE_12C333:        88            DEY                       
CODE_12C334:        98            TYA                       
CODE_12C335:        1D 5C 04      ORA $045C,x               
CODE_12C338:        F0 08         BEQ CODE_12C342           
CODE_12C33A:        A0 D0         LDY #$D0                  
CODE_12C33C:        A9 00         LDA #$00                  
CODE_12C33E:        95 86         STA $86,x                 
CODE_12C340:        F0 22         BEQ CODE_12C364           
CODE_12C342:        A0 C0         LDY #$C0                  
CODE_12C344:        A5 10         LDA $10                   
CODE_12C346:        29 10         AND #$10                  
CODE_12C348:        D0 02         BNE CODE_12C34C           
CODE_12C34A:        A0 C4         LDY #$C4                  
CODE_12C34C:        B5 86         LDA $86,x                 
CODE_12C34E:        F0 14         BEQ CODE_12C364           
CODE_12C350:        A0 C8         LDY #$C8                  
CODE_12C352:        C9 60         CMP #$60                  
CODE_12C354:        B0 0E         BCS CODE_12C364                   
CODE_12C356:        A0 C0         LDY #$C0                  
CODE_12C358:        C9 40         CMP #$40                  
CODE_12C35A:        B0 08         BCS CODE_12C364                   
CODE_12C35C:        A0 C4         LDY #$C4                  
CODE_12C35E:        C9 20         CMP #$20                  
CODE_12C360:        B0 02         BCS CODE_12C364                   
CODE_12C362:        A0 C0         LDY #$C0                  
CODE_12C364:        A9 02         LDA #$02                  
CODE_12C366:        95 6F         STA $6F,x                 
CODE_12C368:        98            TYA                       
CODE_12C369:        20 D5 BD      JSR CODE_12BDD5           
CODE_12C36C:        A0 C4         LDY #$C4                  
CODE_12C36E:        A5 10         LDA $10                   
CODE_12C370:        29 10         AND #$10                  
CODE_12C372:        D0 02         BNE CODE_12C376           
CODE_12C374:        A0 C0         LDY #$C0                  
CODE_12C376:        B5 86         LDA $86,x                 
CODE_12C378:        F0 14         BEQ CODE_12C38E           
CODE_12C37A:        A0 CC         LDY #$CC                  
CODE_12C37C:        C9 60         CMP #$60                  
CODE_12C37E:        B0 0E         BCS CODE_12C38E                   
CODE_12C380:        A0 C0         LDY #$C0                  
CODE_12C382:        C9 40         CMP #$40                  
CODE_12C384:        B0 08         BCS CODE_12C38E                   
CODE_12C386:        A0 C4         LDY #$C4                  
CODE_12C388:        C9 20         CMP #$20                  
CODE_12C38A:        B0 02         BCS CODE_12C38E                   
CODE_12C38C:        A0 C0         LDY #$C0                  
CODE_12C38E:        BD 5C 04      LDA $045C,x               
CODE_12C391:        F0 02         BEQ CODE_12C395           
CODE_12C393:        A0 D0         LDY #$D0                  
CODE_12C395:        AD 29 04      LDA $0429                 
CODE_12C398:        18            CLC                       
CODE_12C399:        69 10         ADC #$10                  
CODE_12C39B:        8D 29 04      STA $0429                 
CODE_12C39E:        06 ED         ASL $ED                   
CODE_12C3A0:        06 ED         ASL $ED                   
CODE_12C3A2:        B5 86         LDA $86,x                 
CODE_12C3A4:        C9 60         CMP #$60                  
CODE_12C3A6:        B0 02         BCS CODE_12C3AA                   
CODE_12C3A8:        56 6F         LSR $6F,x                 
CODE_12C3AA:        98            TYA                       
CODE_12C3AB:        48            PHA                       
CODE_12C3AC:        22 83 E4 14   JSL CODE_14E483           
CODE_12C3B0:        AD F8 02      LDA $02F8                 
CODE_12C3B3:        8D F6 02      STA $02F6                 
CODE_12C3B6:        AD F9 02      LDA $02F9                 
CODE_12C3B9:        8D F7 02      STA $02F7                 
CODE_12C3BC:        68            PLA                       
CODE_12C3BD:        20 D5 BD      JSR CODE_12BDD5           
CODE_12C3C0:        BD 5C 04      LDA $045C,x               
CODE_12C3C3:        F0 28         BEQ CODE_12C3ED           
CODE_12C3C5:        B5 6F         LDA $6F,x                 
CODE_12C3C7:        48            PHA                       
CODE_12C3C8:        A5 10         LDA $10                   
CODE_12C3CA:        29 08         AND #$08                  
CODE_12C3CC:        4A            LSR A                     
CODE_12C3CD:        4A            LSR A                     
CODE_12C3CE:        4A            LSR A                     
CODE_12C3CF:        95 6F         STA $6F,x                 
CODE_12C3D1:        A9 50         LDA #$50                  
CODE_12C3D3:        8D F6 02      STA $02F6                 
CODE_12C3D6:        9C F7 02      STZ $02F7                 
CODE_12C3D9:        46 ED         LSR $ED                   
CODE_12C3DB:        AD 29 04      LDA $0429                 
CODE_12C3DE:        38            SEC                       
CODE_12C3DF:        E9 08         SBC #$08                  
CODE_12C3E1:        8D 29 04      STA $0429                 
CODE_12C3E4:        A0 D4         LDY #$D4                  
CODE_12C3E6:        98            TYA                       
CODE_12C3E7:        20 D5 BD      JSR CODE_12BDD5           
CODE_12C3EA:        68            PLA                       
CODE_12C3EB:        95 6F         STA $6F,x                 
CODE_12C3ED:        B5 86         LDA $86,x                 
CODE_12C3EF:        F0 75         BEQ CODE_12C466           
CODE_12C3F1:        4A            LSR A                     
CODE_12C3F2:        4A            LSR A                     
CODE_12C3F3:        4A            LSR A                     
CODE_12C3F4:        4A            LSR A                     
CODE_12C3F5:        4A            LSR A                     
CODE_12C3F6:        F0 6D         BEQ CODE_12C465           
CODE_12C3F8:        A8            TAY                       
CODE_12C3F9:        B5 29         LDA $29,x                 
CODE_12C3FB:        48            PHA                       
CODE_12C3FC:        18            CLC                       
CODE_12C3FD:        79 93 9A      ADC.w DATA_119A93,y               
CODE_12C400:        95 29         STA $29,x                 
CODE_12C402:        38            SEC                       
CODE_12C403:        ED C1 04      SBC $04C1                 
CODE_12C406:        8D 29 04      STA $0429                 
CODE_12C409:        B5 33         LDA $33,x                 
CODE_12C40B:        18            CLC                       
CODE_12C40C:        79 96 9A      ADC.w DATA_119A96,y               
CODE_12C40F:        8D 2C 04      STA $042C                 
CODE_12C412:        B5 86         LDA $86,x                 
CODE_12C414:        C9 30         CMP #$30                  
CODE_12C416:        90 12         BCC CODE_12C42A           
CODE_12C418:        C9 40         CMP #$40                  
CODE_12C41A:        B0 0E         BCS CODE_12C42A                   
CODE_12C41C:        4A            LSR A                     
CODE_12C41D:        29 07         AND #$07                  
CODE_12C41F:        A8            TAY                       
CODE_12C420:        AD 2C 04      LDA $042C                 
CODE_12C423:        38            SEC                       
CODE_12C424:        F9 9A 9A      SBC.w DATA_119A9A,y               
CODE_12C427:        8D 2C 04      STA $042C                 
CODE_12C42A:        20 F9 A6      JSR CODE_12A6F9           
CODE_12C42D:        A0 40         LDY #$40                  
CODE_12C42F:        8C F6 02      STY $02F6                 
CODE_12C432:        9C F7 02      STZ $02F7                 
CODE_12C435:        B5 65         LDA $65,x                 
CODE_12C437:        48            PHA                       
CODE_12C438:        A9 02         LDA #$02                  
CODE_12C43A:        95 65         STA $65,x                 
CODE_12C43C:        BD 6E 04      LDA $046E,x               
CODE_12C43F:        48            PHA                       
CODE_12C440:        A9 10         LDA #$10                  
CODE_12C442:        9D 6E 04      STA $046E,x               
CODE_12C445:        A9 D8         LDA #$D8                  
CODE_12C447:        20 D5 BD      JSR CODE_12BDD5           
CODE_12C44A:        C2 10         REP #$10                  
CODE_12C44C:        AC F6 02      LDY $02F6                 
CODE_12C44F:        B9 03 08      LDA $0803,y               
CODE_12C452:        29 F1         AND #$F1                  
CODE_12C454:        09 06         ORA #$06                  
CODE_12C456:        99 03 08      STA $0803,y               
CODE_12C459:        E2 10         SEP #$10                  
CODE_12C45B:        68            PLA                       
CODE_12C45C:        9D 6E 04      STA $046E,x               
CODE_12C45F:        68            PLA                       
CODE_12C460:        95 65         STA $65,x                 
CODE_12C462:        68            PLA                       
CODE_12C463:        95 29         STA $29,x                 
CODE_12C465:        60            RTS
                       
CODE_12C466:        A6 12         LDX $12                   
CODE_12C468:        60            RTS
                       
CODE_12C469:        A9 00         LDA #$00                  
CODE_12C46B:        9D 5C 04      STA $045C,x               
CODE_12C46E:        20 16 BB      JSR CODE_12BB16           
CODE_12C471:        20 46 BA      JSR CODE_12BA46           
CODE_12C474:        20 EF C1      JSR CODE_12C1EF           
CODE_12C477:        20 B2 A0      JSR CODE_12A0B2           
CODE_12C47A:        20 AB DD      JSR CODE_12DDAB           
CODE_12C47D:        B5 5B         LDA $5B,x                 
CODE_12C47F:        29 03         AND #$03                  
CODE_12C481:        F0 06         BEQ CODE_12C489           
CODE_12C483:        20 48 C2      JSR CODE_12C248           
CODE_12C486:        20 3B B6      JSR CODE_12B63B           
CODE_12C489:        B5 5B         LDA $5B,x                 
CODE_12C48B:        29 04         AND #$04                  
CODE_12C48D:        F0 10         BEQ CODE_12C49F           
CODE_12C48F:        B5 33         LDA $33,x                 
CODE_12C491:        29 F0         AND #$F0                  
CODE_12C493:        95 33         STA $33,x                 
CODE_12C495:        B5 47         LDA $47,x                 
CODE_12C497:        4A            LSR A                     
CODE_12C498:        49 FF         EOR #$FF                  
CODE_12C49A:        18            CLC                       
CODE_12C49B:        69 01         ADC #$01                  
CODE_12C49D:        95 47         STA $47,x                 
CODE_12C49F:        4C 29 BD      JMP CODE_12BD29           

CODE_12C4A2:        BD A8 00      LDA $00A8,x               
CODE_12C4A5:        1D 38 04      ORA $0438,x               
CODE_12C4A8:        D0 37         BNE CODE_12C4E1           
CODE_12C4AA:        A5 10         LDA $10                   
CODE_12C4AC:        85 00         STA $00                   
CODE_12C4AE:        B5 3D         LDA $3D,x                 
CODE_12C4B0:        10 05         BPL CODE_12C4B7           
CODE_12C4B2:        49 FF         EOR #$FF                  
CODE_12C4B4:        18            CLC                       
CODE_12C4B5:        69 01         ADC #$01                  
CODE_12C4B7:        C9 20         CMP #$20                  
CODE_12C4B9:        B0 08         BCS CODE_12C4C3                   
CODE_12C4BB:        46 00         LSR $00                   
CODE_12C4BD:        C9 08         CMP #$08                  
CODE_12C4BF:        B0 02         BCS CODE_12C4C3                   
CODE_12C4C1:        46 00         LSR $00                   
CODE_12C4C3:        A5 00         LDA $00                   
CODE_12C4C5:        18            CLC                       
CODE_12C4C6:        69 04         ADC #$04                  
CODE_12C4C8:        29 08         AND #$08                  
CODE_12C4CA:        4A            LSR A                     
CODE_12C4CB:        4A            LSR A                     
CODE_12C4CC:        4A            LSR A                     
CODE_12C4CD:        B4 3D         LDY $3D,x                 
CODE_12C4CF:        10 02         BPL CODE_12C4D3           
CODE_12C4D1:        49 01         EOR #$01                  
CODE_12C4D3:        95 6F         STA $6F,x                 
CODE_12C4D5:        A5 00         LDA $00                   
CODE_12C4D7:        29 08         AND #$08                  
CODE_12C4D9:        0A            ASL A                     
CODE_12C4DA:        0A            ASL A                     
CODE_12C4DB:        0A            ASL A                     
CODE_12C4DC:        0A            ASL A                     
CODE_12C4DD:        09 02         ORA #$02                  
CODE_12C4DF:        95 65         STA $65,x                 
CODE_12C4E1:        20 C9 BD      JSR CODE_12BDC9           
CODE_12C4E4:        C2 10         REP #$10                  
CODE_12C4E6:        AC F6 02      LDY $02F6                 
CODE_12C4E9:        B9 03 08      LDA $0803,y               
CODE_12C4EC:        29 F1         AND #$F1                  
CODE_12C4EE:        09 06         ORA #$06                  
CODE_12C4F0:        99 03 08      STA $0803,y               
CODE_12C4F3:        E2 10         SEP #$10                  
CODE_12C4F5:        60            RTS
                       
CODE_12C4F6:        20 AB DD      JSR CODE_12DDAB           
CODE_12C4F9:        A5 10         LDA $10                   
CODE_12C4FB:        29 03         AND #$03                  
CODE_12C4FD:        D0 0A         BNE CODE_12C509           
CODE_12C4FF:        D6 B1         DEC $B1,x                 
CODE_12C501:        D0 06         BNE CODE_12C509           
CODE_12C503:        8D B2 04      STA $04B2                 
CODE_12C506:        4C 3B A8      JMP CODE_12A83B           

CODE_12C509:        AD B2 04      LDA $04B2                 
CODE_12C50C:        F0 0E         BEQ CODE_12C51C           
CODE_12C50E:        A5 46         LDA $46                   
CODE_12C510:        10 0A         BPL CODE_12C51C           
CODE_12C512:        A9 00         LDA #$00                  
CODE_12C514:        95 47         STA $47,x                 
CODE_12C516:        8D B2 04      STA $04B2                 
CODE_12C519:        4C C9 C5      JMP CODE_12C5C9           

CODE_12C51C:        B5 5B         LDA $5B,x                 
CODE_12C51E:        29 20         AND #$20                  
CODE_12C520:        8D B2 04      STA $04B2                 
CODE_12C523:        D0 03         BNE CODE_12C528           
CODE_12C525:        4C B6 C5      JMP CODE_12C5B6           

CODE_12C528:        B5 3D         LDA $3D,x                 
CODE_12C52A:        F0 06         BEQ CODE_12C532           
CODE_12C52C:        B5 6F         LDA $6F,x                 
CODE_12C52E:        29 01         AND #$01                  
CODE_12C530:        85 9D         STA $9D                   
CODE_12C532:        B5 33         LDA $33,x                 
CODE_12C534:        38            SEC                       
CODE_12C535:        E9 1A         SBC #$1A                  
CODE_12C537:        85 32         STA $32                   
CODE_12C539:        B5 1F         LDA $1F,x                 
CODE_12C53B:        E9 00         SBC #$00                  
CODE_12C53D:        85 1E         STA $1E                   
CODE_12C53F:        A5 28         LDA $28                   
CODE_12C541:        38            SEC                       
CODE_12C542:        E9 08         SBC #$08                  
CODE_12C544:        95 29         STA $29,x                 
CODE_12C546:        A5 14         LDA $14                   
CODE_12C548:        E9 00         SBC #$00                  
CODE_12C54A:        95 15         STA $15,x                 
CODE_12C54C:        A0 01         LDY #$01                  
CODE_12C54E:        B5 3D         LDA $3D,x                 
CODE_12C550:        30 02         BMI CODE_12C554           
CODE_12C552:        A0 FF         LDY #$FF                  
CODE_12C554:        8C 06 12      STY $1206                 
CODE_12C557:        A5 F6         LDA $F6                   
CODE_12C559:        29 03         AND #$03                  
CODE_12C55B:        A8            TAY                       
CODE_12C55C:        25 5A         AND $5A                   
CODE_12C55E:        D0 12         BNE CODE_12C572           
CODE_12C560:        B9 A2 9A      LDA.w DATA_119AA2,y               
CODE_12C563:        D5 3D         CMP $3D,x                 
CODE_12C565:        F0 08         BEQ CODE_12C56F           
CODE_12C567:        B5 3D         LDA $3D,x                 
CODE_12C569:        18            CLC                       
CODE_12C56A:        79 06 12      ADC $1206,y               
CODE_12C56D:        95 3D         STA $3D,x                 
CODE_12C56F:        4C 76 C5      JMP CODE_12C576           

CODE_12C572:        A9 00         LDA #$00                  
CODE_12C574:        95 3D         STA $3D,x                 
CODE_12C576:        A0 01         LDY #$01                  
CODE_12C578:        B5 47         LDA $47,x                 
CODE_12C57A:        30 02         BMI CODE_12C57E           
CODE_12C57C:        A0 FF         LDY #$FF                  
CODE_12C57E:        8C 06 12      STY $1206                 
CODE_12C581:        A9 20         LDA #$20                  
CODE_12C583:        CD 2C 04      CMP $042C                 
CODE_12C586:        A9 00         LDA #$00                  
CODE_12C588:        2A            ROL A                     
CODE_12C589:        0A            ASL A                     
CODE_12C58A:        0A            ASL A                     
CODE_12C58B:        0A            ASL A                     
CODE_12C58C:        25 F6         AND $F6                   
CODE_12C58E:        D0 13         BNE CODE_12C5A3           
CODE_12C590:        B5 5B         LDA $5B,x                 
CODE_12C592:        4A            LSR A                     
CODE_12C593:        4A            LSR A                     
CODE_12C594:        29 03         AND #$03                  
CODE_12C596:        85 00         STA $00                   
CODE_12C598:        A5 F6         LDA $F6                   
CODE_12C59A:        4A            LSR A                     
CODE_12C59B:        4A            LSR A                     
CODE_12C59C:        29 03         AND #$03                  
CODE_12C59E:        A8            TAY                       
CODE_12C59F:        25 00         AND $00                   
CODE_12C5A1:        F0 04         BEQ CODE_12C5A7           
CODE_12C5A3:        A9 00         LDA #$00                  
CODE_12C5A5:        F0 0D         BEQ CODE_12C5B4           
CODE_12C5A7:        B9 A2 9A      LDA.w DATA_119AA2,y               
CODE_12C5AA:        D5 47         CMP $47,x                 
CODE_12C5AC:        F0 08         BEQ CODE_12C5B6           
CODE_12C5AE:        B5 47         LDA $47,x                 
CODE_12C5B0:        18            CLC                       
CODE_12C5B1:        79 06 12      ADC $1206,y               
CODE_12C5B4:        95 47         STA $47,x                 
CODE_12C5B6:        20 EF C1      JSR CODE_12C1EF           
CODE_12C5B9:        20 EA C1      JSR CODE_12C1EA           
CODE_12C5BC:        B5 B1         LDA $B1,x                 
CODE_12C5BE:        C9 20         CMP #$20                  
CODE_12C5C0:        B0 07         BCS CODE_12C5C9                   
CODE_12C5C2:        A5 10         LDA $10                   
CODE_12C5C4:        29 02         AND #$02                  
CODE_12C5C6:        D0 01         BNE CODE_12C5C9           
CODE_12C5C8:        60            RTS
                       
CODE_12C5C9:        AD F6 02      LDA $02F6                 
CODE_12C5CC:        8D F8 02      STA $02F8                 
CODE_12C5CF:        AD F7 02      LDA $02F7                 
CODE_12C5D2:        8D F9 02      STA $02F9                 
CODE_12C5D5:        4C E5 C6      JMP CODE_12C6E5           

CODE_12C5D8:        20 31 B3      JSR CODE_12B331           ; \ Check if free sprite slot is available.
CODE_12C5DB:        30 33         BMI CODE_12C610           ; / If not, return.
CODE_12C5DD:        A6 00         LDX $00                   ; New sprite index.
CODE_12C5DF:        A4 12         LDY $12                   ; Old sprite index.
CODE_12C5E1:        A9 00         LDA #$00                  ; \ Zero X speed.
CODE_12C5E3:        95 3D         STA $3D,x                 ;  | Zero Y speed.
CODE_12C5E5:        95 47         STA $47,x                 ; / (Why not simply use STZ $3D,x STZ $47,x?)
CODE_12C5E7:        A9 41         LDA #$41                  ; \ Generate carpet sprite.
CODE_12C5E9:        95 90         STA $90,x                 ; /
CODE_12C5EB:        B9 29 00      LDA $0029,y               ; \ Generate carpet 8 pixels to the left from Pidgit.
CODE_12C5EE:        38            SEC                       ;  |
CODE_12C5EF:        E9 08         SBC #$08                  ;  |
CODE_12C5F1:        95 29         STA $29,x                 ;  |
CODE_12C5F3:        B9 15 00      LDA $0015,y               ;  |
CODE_12C5F6:        E9 00         SBC #$00                  ;  |
CODE_12C5F8:        95 15         STA $15,x                 ; /
CODE_12C5FA:        B9 33 00      LDA $0033,y               ; \ ...and 14 pixels below Pidgit.
CODE_12C5FD:        18            CLC                       ;  |
CODE_12C5FE:        69 0E         ADC #$0E                  ;  |
CODE_12C600:        95 33         STA $33,x                 ;  |
CODE_12C602:        B9 1F 00      LDA $001F,y               ;  |
CODE_12C605:        69 00         ADC #$00                  ;  |
CODE_12C607:        95 1F         STA $1F,x                 ; /
CODE_12C609:        20 7A 9F      JSR CODE_129F7A           
CODE_12C60C:        A9 A0         LDA #$A0                  ; \ Amount of time carpet will remain.
CODE_12C60E:        95 B1         STA $B1,x                 ; /
CODE_12C610:        A6 12         LDX $12                   ; X = old sprite index.
CODE_12C612:        60            RTS                       ; Return.
                       
CODE_12C613:        20 16 BB      JSR CODE_12BB16           
CODE_12C616:        F6 9F         INC $9F,x                 
CODE_12C618:        BD 2F 04      LDA $042F,x               
CODE_12C61B:        F0 0C         BEQ CODE_12C629           
CODE_12C61D:        B5 65         LDA $65,x                 
CODE_12C61F:        09 80         ORA #$80                  
CODE_12C621:        95 65         STA $65,x                 
CODE_12C623:        20 8E C6      JSR CODE_12C68E           
CODE_12C626:        4C AA A0      JMP CODE_12A0AA           

CODE_12C629:        20 46 BA      JSR CODE_12BA46           
CODE_12C62C:        B5 B1         LDA $B1,x                 
CODE_12C62E:        F0 17         BEQ CODE_12C647           
CODE_12C630:        D6 47         DEC $47,x                 
CODE_12C632:        10 10         BPL CODE_12C644           
CODE_12C634:        B5 33         LDA $33,x                 
CODE_12C636:        C9 30         CMP #$30                  
CODE_12C638:        B0 0A         BCS CODE_12C644                   
CODE_12C63A:        A9 00         LDA #$00                  
CODE_12C63C:        95 B1         STA $B1,x                 
CODE_12C63E:        95 3D         STA $3D,x                 
CODE_12C640:        95 47         STA $47,x                 
CODE_12C642:        D6 86         DEC $86,x                 
CODE_12C644:        4C 88 C6      JMP CODE_12C688           

CODE_12C647:        B5 86         LDA $86,x                 
CODE_12C649:        D0 11         BNE CODE_12C65C           
CODE_12C64B:        A9 30         LDA #$30                  
CODE_12C64D:        95 47         STA $47,x                 
CODE_12C64F:        20 DA C1      JSR CODE_12C1DA           
CODE_12C652:        B9 BA 9A      LDA.w DATA_119ABA,y               
CODE_12C655:        95 3D         STA $3D,x                 
CODE_12C657:        F6 B1         INC $B1,x                 
CODE_12C659:        4C 8E C6      JMP CODE_12C68E           

CODE_12C65C:        BD 80 04      LDA $0480,x               
CODE_12C65F:        29 01         AND #$01                  
CODE_12C661:        A8            TAY                       
CODE_12C662:        B5 47         LDA $47,x                 
CODE_12C664:        18            CLC                       
CODE_12C665:        79 B2 9A      ADC.w DATA_119AB2,y               
CODE_12C668:        95 47         STA $47,x                 
CODE_12C66A:        D9 B4 9A      CMP.w DATA_119AB4,y               
CODE_12C66D:        D0 03         BNE CODE_12C672           
CODE_12C66F:        FE 80 04      INC $0480,x               
CODE_12C672:        BD 77 04      LDA $0477,x               
CODE_12C675:        29 01         AND #$01                  
CODE_12C677:        A8            TAY                       
CODE_12C678:        B5 3D         LDA $3D,x                 
CODE_12C67A:        18            CLC                       
CODE_12C67B:        79 B6 9A      ADC.w DATA_119AB6,y               
CODE_12C67E:        95 3D         STA $3D,x                 
CODE_12C680:        D9 B8 9A      CMP.w DATA_119AB8,y               
CODE_12C683:        D0 03         BNE CODE_12C688           
CODE_12C685:        FE 77 04      INC $0477,x               
CODE_12C688:        20 EA C1      JSR CODE_12C1EA           
CODE_12C68B:        20 EF C1      JSR CODE_12C1EF           
CODE_12C68E:        20 C9 BD      JSR CODE_12BDC9           
CODE_12C691:        B5 51         LDA $51,x                 
CODE_12C693:        38            SEC                       
CODE_12C694:        E9 01         SBC #$01                  
CODE_12C696:        1D 2F 04      ORA $042F,x               
CODE_12C699:        15 A8         ORA $A8,x                 
CODE_12C69B:        D0 45         BNE CODE_12C6E2           
CODE_12C69D:        22 83 E4 14   JSL CODE_14E483           
CODE_12C6A1:        A9 45         LDA #$45                  
CODE_12C6A3:        95 65         STA $65,x                 
CODE_12C6A5:        B5 29         LDA $29,x                 
CODE_12C6A7:        48            PHA                       
CODE_12C6A8:        38            SEC                       
CODE_12C6A9:        E9 08         SBC #$08                  
CODE_12C6AB:        95 29         STA $29,x                 
CODE_12C6AD:        B5 15         LDA $15,x                 
CODE_12C6AF:        48            PHA                       
CODE_12C6B0:        E9 00         SBC #$00                  
CODE_12C6B2:        95 15         STA $15,x                 
CODE_12C6B4:        20 F9 A6      JSR CODE_12A6F9           
CODE_12C6B7:        68            PLA                       
CODE_12C6B8:        95 15         STA $15,x                 
CODE_12C6BA:        68            PLA                       
CODE_12C6BB:        95 29         STA $29,x                 
CODE_12C6BD:        AD 2C 04      LDA $042C                 
CODE_12C6C0:        18            CLC                       
CODE_12C6C1:        69 0C         ADC #$0C                  
CODE_12C6C3:        8D 2C 04      STA $042C                 
CODE_12C6C6:        AD 1F 02      LDA $021F                 
CODE_12C6C9:        EB            XBA                       
CODE_12C6CA:        AD 29 04      LDA $0429                 
CODE_12C6CD:        C2 20         REP #$20                  
CODE_12C6CF:        E9 07 00      SBC #$0007                
CODE_12C6D2:        E2 20         SEP #$20                  
CODE_12C6D4:        8D 29 04      STA $0429                 
CODE_12C6D7:        EB            XBA                       
CODE_12C6D8:        8D 1F 02      STA $021F                 
CODE_12C6DB:        20 E5 C6      JSR CODE_12C6E5           
CODE_12C6DE:        A9 0D         LDA #$0D                  
CODE_12C6E0:        95 65         STA $65,x                 
CODE_12C6E2:        E2 20         SEP #$20                  
CODE_12C6E4:        60            RTS
                       
CODE_12C6E5:        22 1F D2 15   JSL CODE_15D21F           
CODE_12C6E9:        B0 F7         BCS CODE_12C6E2                   
CODE_12C6EB:        C2 30         REP #$30                  
CODE_12C6ED:        98            TYA                       
CODE_12C6EE:        4A            LSR A                     
CODE_12C6EF:        4A            LSR A                     
CODE_12C6F0:        A8            TAY                       
CODE_12C6F1:        E2 20         SEP #$20                  
CODE_12C6F3:        A9 00         LDA #$00                  
CODE_12C6F5:        99 20 0A      STA $0A20,y               
CODE_12C6F8:        99 21 0A      STA $0A21,y               
CODE_12C6FB:        8C 12 07      STY $0712                 
CODE_12C6FE:        AC 0B 07      LDY $070B                 
CODE_12C701:        AD 29 04      LDA $0429                 
CODE_12C704:        85 0E         STA $0E                   
CODE_12C706:        AD 1F 02      LDA $021F                 
CODE_12C709:        85 0F         STA $0F                   
CODE_12C70B:        C2 20         REP #$20                  
CODE_12C70D:        98            TYA                       
CODE_12C70E:        4A            LSR A                     
CODE_12C70F:        4A            LSR A                     
CODE_12C710:        A8            TAY                       
CODE_12C711:        A5 12         LDA $12                   
CODE_12C713:        29 FF 00      AND #$00FF                
CODE_12C716:        AA            TAX                       
CODE_12C717:        A5 ED         LDA $ED                   
CODE_12C719:        29 FF 00      AND #$00FF                
CODE_12C71C:        8D 16 07      STA $0716                 
CODE_12C71F:        E2 20         SEP #$20                  
CODE_12C721:        BD 4A 04      LDA $044A,x               
CODE_12C724:        29 02         AND #$02                  
CODE_12C726:        4A            LSR A                     
CODE_12C727:        AE 16 07      LDX $0716                 
CODE_12C72A:        F0 02         BEQ CODE_12C72E           
CODE_12C72C:        A9 00         LDA #$00                  
CODE_12C72E:        8D 14 07      STA $0714                 
CODE_12C731:        9C 15 07      STZ $0715                 
CODE_12C734:        C2 20         REP #$20                  
CODE_12C736:        A5 0E         LDA $0E                   
CODE_12C738:        6D 14 07      ADC $0714                 
CODE_12C73B:        85 04         STA $04                   
CODE_12C73D:        18            CLC                       
CODE_12C73E:        69 08 00      ADC #$0008                
CODE_12C741:        85 06         STA $06                   
CODE_12C743:        A5 04         LDA $04                   
CODE_12C745:        18            CLC                       
CODE_12C746:        69 10 00      ADC #$0010                
CODE_12C749:        85 08         STA $08                   
CODE_12C74B:        A5 04         LDA $04                   
CODE_12C74D:        18            CLC                       
CODE_12C74E:        69 18 00      ADC #$0018                
CODE_12C751:        85 0A         STA $0A                   
CODE_12C753:        E2 20         SEP #$20                  
CODE_12C755:        A9 00         LDA #$00                  
CODE_12C757:        99 20 0A      STA $0A20,y               
CODE_12C75A:        99 21 0A      STA $0A21,y               
CODE_12C75D:        A5 EB         LDA $EB                   
CODE_12C75F:        F0 28         BEQ CODE_12C789           
CODE_12C761:        A2 01 00      LDX #$0001                
CODE_12C764:        A5 05         LDA $05                   
CODE_12C766:        F0 04         BEQ CODE_12C76C           
CODE_12C768:        8A            TXA                       
CODE_12C769:        99 20 0A      STA $0A20,y               
CODE_12C76C:        A5 07         LDA $07                   
CODE_12C76E:        F0 04         BEQ CODE_12C774           
CODE_12C770:        8A            TXA                       
CODE_12C771:        99 21 0A      STA $0A21,y               
CODE_12C774:        AC 12 07      LDY $0712                 
CODE_12C777:        A5 09         LDA $09                   
CODE_12C779:        F0 04         BEQ CODE_12C77F           
CODE_12C77B:        8A            TXA                       
CODE_12C77C:        99 20 0A      STA $0A20,y               
CODE_12C77F:        A5 0B         LDA $0B                   
CODE_12C781:        F0 04         BEQ CODE_12C787           
CODE_12C783:        8A            TXA                       
CODE_12C784:        99 21 0A      STA $0A21,y               
CODE_12C787:        80 2A         BRA CODE_12C7B3           

CODE_12C789:        AE 0B 07      LDX $070B                 
CODE_12C78C:        20 B8 C7      JSR CODE_12C7B8           
CODE_12C78F:        AE 0D 07      LDX $070D                 
CODE_12C792:        20 B8 C7      JSR CODE_12C7B8           
CODE_12C795:        C2 20         REP #$20                  
CODE_12C797:        AD 0B 07      LDA $070B                 
CODE_12C79A:        18            CLC                       
CODE_12C79B:        69 04 00      ADC #$0004                
CODE_12C79E:        AA            TAX                       
CODE_12C79F:        E2 20         SEP #$20                  
CODE_12C7A1:        20 B8 C7      JSR CODE_12C7B8           
CODE_12C7A4:        C2 20         REP #$20                  
CODE_12C7A6:        AD 0D 07      LDA $070D                 
CODE_12C7A9:        18            CLC                       
CODE_12C7AA:        69 04 00      ADC #$0004                
CODE_12C7AD:        AA            TAX                       
CODE_12C7AE:        E2 20         SEP #$20                  
CODE_12C7B0:        20 B8 C7      JSR CODE_12C7B8           
CODE_12C7B3:        E2 30         SEP #$30                  
CODE_12C7B5:        A6 12         LDX $12                   
CODE_12C7B7:        60            RTS
                       
CODE_12C7B8:        BD 00 08      LDA $0800,x               
CODE_12C7BB:        C9 F8         CMP #$F8                  
CODE_12C7BD:        90 38         BCC CODE_12C7F7           
CODE_12C7BF:        DA            PHX                       
CODE_12C7C0:        22 83 E4 14   JSL CODE_14E483           
CODE_12C7C4:        C2 10         REP #$10                  
CODE_12C7C6:        FA            PLX                       
CODE_12C7C7:        AC F8 02      LDY $02F8                 
CODE_12C7CA:        BD 00 08      LDA $0800,x               
CODE_12C7CD:        99 00 08      STA $0800,y               
CODE_12C7D0:        BD 01 08      LDA $0801,x               
CODE_12C7D3:        99 01 08      STA $0801,y               
CODE_12C7D6:        BD 02 08      LDA $0802,x               
CODE_12C7D9:        99 02 08      STA $0802,y               
CODE_12C7DC:        BD 03 08      LDA $0803,x               
CODE_12C7DF:        99 03 08      STA $0803,y               
CODE_12C7E2:        C2 20         REP #$20                  
CODE_12C7E4:        98            TYA                       
CODE_12C7E5:        4A            LSR A                     
CODE_12C7E6:        4A            LSR A                     
CODE_12C7E7:        A8            TAY                       
CODE_12C7E8:        8A            TXA                       
CODE_12C7E9:        4A            LSR A                     
CODE_12C7EA:        4A            LSR A                     
CODE_12C7EB:        AA            TAX                       
CODE_12C7EC:        E2 20         SEP #$20                  
CODE_12C7EE:        A9 01         LDA #$01                  
CODE_12C7F0:        9D 20 0A      STA $0A20,x               
CODE_12C7F3:        3A            DEC A                     
CODE_12C7F4:        99 20 0A      STA $0A20,y               
CODE_12C7F7:        60            RTS
                       
CODE_12C7F8:        20 2D AF      JSR CODE_12AF2D           
CODE_12C7FB:        A9 02         LDA #$02                  
CODE_12C7FD:        AC 35 06      LDY $0635                 
CODE_12C800:        F0 02         BEQ CODE_12C804           
CODE_12C802:        A9 04         LDA #$04                  
CODE_12C804:        9D 65 04      STA $0465,x               
CODE_12C807:        60            RTS
                       
CODE_12C808:        20 16 BB      JSR CODE_12BB16           
CODE_12C80B:        BD 5C 04      LDA $045C,x               
CODE_12C80E:        F0 03         BEQ CODE_12C813           
CODE_12C810:        4C 29 BD      JMP CODE_12BD29           

CODE_12C813:        20 AB DD      JSR CODE_12DDAB           
CODE_12C816:        A9 02         LDA #$02                  
CODE_12C818:        95 6F         STA $6F,x                 
CODE_12C81A:        20 29 BD      JSR CODE_12BD29           
CODE_12C81D:        B5 5B         LDA $5B,x                 
CODE_12C81F:        29 04         AND #$04                  
CODE_12C821:        F0 5F         BEQ CODE_12C882           
CODE_12C823:        20 59 B6      JSR CODE_12B659           
CODE_12C826:        A5 10         LDA $10                   
CODE_12C828:        29 FF         AND #$FF                  
CODE_12C82A:        D0 06         BNE CODE_12C832           
CODE_12C82C:        A9 D8         LDA #$D8                  
CODE_12C82E:        95 47         STA $47,x                 
CODE_12C830:        D0 50         BNE CODE_12C882           
CODE_12C832:        A5 10         LDA $10                   
CODE_12C834:        29 3F         AND #$3F                  
CODE_12C836:        D0 04         BNE CODE_12C83C           
CODE_12C838:        A9 20         LDA #$20                  
CODE_12C83A:        95 86         STA $86,x                 
CODE_12C83C:        B4 86         LDY $86,x                 
CODE_12C83E:        D0 1B         BNE CODE_12C85B           
CODE_12C840:        F6 B1         INC $B1,x                 
CODE_12C842:        B5 B1         LDA $B1,x                 
CODE_12C844:        29 20         AND #$20                  
CODE_12C846:        F0 39         BEQ CODE_12C881           
CODE_12C848:        F6 9F         INC $9F,x                 
CODE_12C84A:        F6 9F         INC $9F,x                 
CODE_12C84C:        A0 18         LDY #$18                  
CODE_12C84E:        B5 B1         LDA $B1,x                 
CODE_12C850:        29 40         AND #$40                  
CODE_12C852:        D0 02         BNE CODE_12C856           
CODE_12C854:        A0 E8         LDY #$E8                  
CODE_12C856:        94 3D         STY $3D,x                 
CODE_12C858:        4C EF C1      JMP CODE_12C1EF           

CODE_12C85B:        C0 10         CPY #$10                  
CODE_12C85D:        D0 22         BNE CODE_12C881           
CODE_12C85F:        20 31 B3      JSR CODE_12B331           
CODE_12C862:        30 1D         BMI CODE_12C881           
CODE_12C864:        A6 00         LDX $00                   
CODE_12C866:        A9 37         LDA #$37                  
CODE_12C868:        95 90         STA $90,x                 
CODE_12C86A:        B5 33         LDA $33,x                 
CODE_12C86C:        69 03         ADC #$03                  
CODE_12C86E:        95 33         STA $33,x                 
CODE_12C870:        A9 E0         LDA #$E0                  
CODE_12C872:        95 47         STA $47,x                 
CODE_12C874:        20 7A 9F      JSR CODE_129F7A           
CODE_12C877:        A9 FF         LDA #$FF                  
CODE_12C879:        95 86         STA $86,x                 
CODE_12C87B:        A9 E0         LDA #$E0                  
CODE_12C87D:        95 3D         STA $3D,x                 
CODE_12C87F:        A6 12         LDX $12                   
CODE_12C881:        60            RTS                       

CODE_12C882:        4C B2 A0      JMP CODE_12A0B2           

CODE_12C885:        B5 51         LDA $51,x                 
CODE_12C887:        C9 01         CMP #$01                  
CODE_12C889:        D0 0B         BNE CODE_12C896           
CODE_12C88B:        BD 5C 04      LDA $045C,x               
CODE_12C88E:        F0 0F         BEQ CODE_12C89F           
CODE_12C890:        F6 9F         INC $9F,x                 
CODE_12C892:        A9 4A         LDA #$4A                  
CODE_12C894:        95 65         STA $65,x                 
CODE_12C896:        A9 B3         LDA #$B3                  
CODE_12C898:        9D 6E 04      STA $046E,x               
CODE_12C89B:        A9 2C         LDA #$2C                  
CODE_12C89D:        D0 09         BNE CODE_12C8A8           
CODE_12C89F:        B4 86         LDY $86,x                 
CODE_12C8A1:        88            DEY                       
CODE_12C8A2:        C0 10         CPY #$10                  
CODE_12C8A4:        B0 07         BCS CODE_12C8AD                   
CODE_12C8A6:        A9 20         LDA #$20                  
CODE_12C8A8:        20 D5 BD      JSR CODE_12BDD5           
CODE_12C8AB:        80 46         BRA CODE_12C8F3           

CODE_12C8AD:        20 C9 BD      JSR CODE_12BDC9           
CODE_12C8B0:        B5 86         LDA $86,x                 
CODE_12C8B2:        C9 10         CMP #$10                  
CODE_12C8B4:        90 3D         BCC CODE_12C8F3           
CODE_12C8B6:        A9 01         LDA #$01                  
CODE_12C8B8:        95 65         STA $65,x                 
CODE_12C8BA:        A9 10         LDA #$10                  
CODE_12C8BC:        9D 6E 04      STA $046E,x               
CODE_12C8BF:        AD 1F 02      LDA $021F                 
CODE_12C8C2:        EB            XBA                       
CODE_12C8C3:        AD 29 04      LDA $0429                 
CODE_12C8C6:        C2 20         REP #$20                  
CODE_12C8C8:        18            CLC                       
CODE_12C8C9:        69 0B 00      ADC #$000B                
CODE_12C8CC:        E2 20         SEP #$20                  
CODE_12C8CE:        8D 29 04      STA $0429                 
CODE_12C8D1:        EB            XBA                       
CODE_12C8D2:        8D 1F 02      STA $021F                 
CODE_12C8D5:        29 01         AND #$01                  
CODE_12C8D7:        0A            ASL A                     
CODE_12C8D8:        0A            ASL A                     
CODE_12C8D9:        0A            ASL A                     
CODE_12C8DA:        85 ED         STA $ED                   
CODE_12C8DC:        A0 5C         LDY #$5C             
CODE_12C8DE:        8C F6 02      STY $02F6                
CODE_12C8E1:        9C F7 02      STZ $02F7                 
CODE_12C8E4:        B5 90         LDA $90,x                 
CODE_12C8E6:        48            PHA                       
CODE_12C8E7:        A9 37         LDA #$37                  
CODE_12C8E9:        95 90         STA $90,x                 
CODE_12C8EB:        A9 38         LDA #$38                  
CODE_12C8ED:        20 D5 BD      JSR CODE_12BDD5           
CODE_12C8F0:        68            PLA                       
CODE_12C8F1:        95 90         STA $90,x                 
CODE_12C8F3:        A9 43         LDA #$43                  
CODE_12C8F5:        95 65         STA $65,x                 
CODE_12C8F7:        A9 33         LDA #$33                  
CODE_12C8F9:        9D 6E 04      STA $046E,x               
CODE_12C8FC:        60            RTS
                       
CODE_12C8FD:        20 D2 BD      JSR CODE_12BDD2           
CODE_12C900:        A5 EE         LDA $EE                   
CODE_12C902:        15 B1         ORA $B1,x                 
CODE_12C904:        D0 2F         BNE CODE_12C935           
CODE_12C906:        B5 33         LDA $33,x                 
CODE_12C908:        38            SEC                       
CODE_12C909:        E9 02         SBC #$02                  
CODE_12C90B:        85 00         STA $00                   
CODE_12C90D:        20 36 C9      JSR CODE_12C936           
CODE_12C910:        22 83 E4 14   JSL CODE_14E483           
CODE_12C914:        AD 13 02      LDA $0213                 
CODE_12C917:        48            PHA                       
CODE_12C918:        29 F1         AND #$F1                  
CODE_12C91A:        09 02         ORA #$02                  
CODE_12C91C:        8D 13 02      STA $0213                 
CODE_12C91F:        C9 A3         CMP #$A3                  
CODE_12C921:        D0 07         BNE CODE_12C92A           
CODE_12C923:        A5 00         LDA $00                   
CODE_12C925:        18            CLC                       
CODE_12C926:        69 10         ADC #$10                  
CODE_12C928:        85 00         STA $00                   
CODE_12C92A:        A2 78 20      LDX #$78
CODE_12C92C:        20 3B C0      JSR CODE_12C03B                
CODE_12C92F:        68            PLA
CODE_12C930:        8D 13 02      STA $0213                 
CODE_12C933:        A6 12         LDX $12                   
CODE_12C935:        60            RTS
                       
CODE_12C936:        B4 6F         LDY $6F,x                 
CODE_12C938:        64 ED         STZ $ED                   
CODE_12C93A:        B5 29         LDA $29,x                 
CODE_12C93C:        8D 12 07      STA $0712                 
CODE_12C93F:        B5 15         LDA $15,x                 
CODE_12C941:        8D 13 07      STA $0713                 
CODE_12C944:        AD C1 04      LDA $04C1                 
CODE_12C947:        8D 14 07      STA $0714                 
CODE_12C94A:        AD BF 04      LDA $04BF                 
CODE_12C94D:        8D 15 07      STA $0715                 
CODE_12C950:        C2 20         REP #$20                  
CODE_12C952:        B9 BB 9A      LDA.w DATA_119ABB,y               
CODE_12C955:        29 FF 00      AND #$00FF                
CODE_12C958:        C9 80 00      CMP #$0080                
CODE_12C95B:        90 03         BCC CODE_12C960           
CODE_12C95D:        09 00 FF      ORA #$FF00                
CODE_12C960:        18            CLC                       
CODE_12C961:        6D 12 07      ADC $0712                 
CODE_12C964:        38            SEC                       
CODE_12C965:        ED 14 07      SBC $0714                 
CODE_12C968:        E2 20         SEP #$20                  
CODE_12C96A:        8D 29 04      STA $0429                 
CODE_12C96D:        85 01         STA $01                   
CODE_12C96F:        EB            XBA                       
CODE_12C970:        8D 1F 02      STA $021F                 
CODE_12C973:        F0 04         BEQ CODE_12C979           
CODE_12C975:        A9 08         LDA #$08                  
CODE_12C977:        85 ED         STA $ED                   
CODE_12C979:        60            RTS
                       
CODE_12C97A:        B5 B1         LDA $B1,x                 
CODE_12C97C:        F0 03         BEQ CODE_12C981           
CODE_12C97E:        82 9F 00      BRL CODE_12CA20           

CODE_12C981:        B5 A8         LDA $A8,x                 
CODE_12C983:        F0 7E         BEQ CODE_12CA03           
CODE_12C985:        A9 01         LDA #$01                  
CODE_12C987:        95 90         STA $90,x                 
CODE_12C989:        20 7A 9F      JSR CODE_129F7A           
CODE_12C98C:        AD 29 04      LDA $0429                 
CODE_12C98F:        8D 16 07      STA $0716                 
CODE_12C992:        AD 1F 02      LDA $021F                 
CODE_12C995:        8D 17 07      STA $0717                 
CODE_12C998:        A5 ED         LDA $ED                   
CODE_12C99A:        48            PHA                       
CODE_12C99B:        20 36 C9      JSR CODE_12C936           
CODE_12C99E:        B4 90         LDY $90,x                 
CODE_12C9A0:        20 D2 BD      JSR CODE_12BDD2           
CODE_12C9A3:        68            PLA                       
CODE_12C9A4:        85 ED         STA $ED                   
CODE_12C9A6:        AD 17 07      LDA $0717                 
CODE_12C9A9:        8D 1F 02      STA $021F                 
CODE_12C9AC:        AD 16 07      LDA $0716                 
CODE_12C9AF:        8D 29 04      STA $0429                 
CODE_12C9B2:        20 31 B3      JSR CODE_12B331           
CODE_12C9B5:        30 4B         BMI CODE_12CA02           
CODE_12C9B7:        A4 00         LDY $00                   
CODE_12C9B9:        A9 08         LDA #$08                  
CODE_12C9BB:        99 90 00      STA $0090,y               
CODE_12C9BE:        99 B1 00      STA $00B1,y               
CODE_12C9C1:        B5 9F         LDA $9F,x                 
CODE_12C9C3:        99 9F 00      STA $009F,y               
CODE_12C9C6:        B5 29         LDA $29,x                 
CODE_12C9C8:        99 29 00      STA $0029,y               
CODE_12C9CB:        B5 15         LDA $15,x                 
CODE_12C9CD:        99 15 00      STA $0015,y               
CODE_12C9D0:        B5 6F         LDA $6F,x                 
CODE_12C9D2:        99 6F 00      STA $006F,y               
CODE_12C9D5:        BD 41 04      LDA $0441,x               
CODE_12C9D8:        99 41 04      STA $0441,y               
CODE_12C9DB:        A9 FF         LDA #$FF                  
CODE_12C9DD:        9D 41 04      STA $0441,x               
CODE_12C9E0:        B5 3D         LDA $3D,x                 
CODE_12C9E2:        99 3D 00      STA $003D,y               
CODE_12C9E5:        BB            TYX                       
CODE_12C9E6:        20 7A 9F      JSR CODE_129F7A           
CODE_12C9E9:        DA            PHX                       
CODE_12C9EA:        22 83 E4 14   JSL CODE_14E483           
CODE_12C9EE:        FA            PLX                       
CODE_12C9EF:        B4 90         LDY $90,x                 
CODE_12C9F1:        20 FD C8      JSR CODE_12C8FD           
CODE_12C9F4:        AD F6 02      LDA $02F6                 
CODE_12C9F7:        8D F8 02      STA $02F8                 
CODE_12C9FA:        AD F7 02      LDA $02F7                 
CODE_12C9FD:        8D F9 02      STA $02F9                 
CODE_12CA00:        A6 12         LDX $12                   
CODE_12CA02:        60            RTS
                       
CODE_12CA03:        B5 5B         LDA $5B,x                 
CODE_12CA05:        29 10         AND #$10                  
CODE_12CA07:        F0 17         BEQ CODE_12CA20           
CODE_12CA09:        F6 B1         INC $B1,x                 
CODE_12CA0B:        95 9F         STA $9F,x                 
CODE_12CA0D:        20 35 B3      JSR CODE_12B335           
CODE_12CA10:        30 0E         BMI CODE_12CA20           
CODE_12CA12:        A4 00         LDY $00                   
CODE_12CA14:        B5 3D         LDA $3D,x                 
CODE_12CA16:        99 3D 00      STA $003D,y               
CODE_12CA19:        A9 20         LDA #$20                  
CODE_12CA1B:        99 53 04      STA $0453,y               
CODE_12CA1E:        80 11         BRA CODE_12CA31           

CODE_12CA20:        B5 A8         LDA $A8,x                 
CODE_12CA22:        F0 07         BEQ CODE_12CA2B           
CODE_12CA24:        AD 00 05      LDA $0500                 
CODE_12CA27:        F0 02         BEQ CODE_12CA2B           
CODE_12CA29:        D6 9F         DEC $9F,x                 
CODE_12CA2B:        20 46 BA      JSR CODE_12BA46           
CODE_12CA2E:        20 16 BB      JSR CODE_12BB16           
CODE_12CA31:        AD 00 05      LDA $0500                 
CODE_12CA34:        F0 07         BEQ CODE_12CA3D           
CODE_12CA36:        BD 2F 04      LDA $042F,x               
CODE_12CA39:        F0 42         BEQ CODE_12CA7D           
CODE_12CA3B:        80 03         BRA CODE_12CA40           

CODE_12CA3D:        20 AB DD      JSR CODE_12DDAB           
CODE_12CA40:        B5 5B         LDA $5B,x                 
CODE_12CA42:        35 6F         AND $6F,x                 
CODE_12CA44:        F0 03         BEQ CODE_12CA49           
CODE_12CA46:        20 48 C2      JSR CODE_12C248           
CODE_12CA49:        B5 5B         LDA $5B,x                 
CODE_12CA4B:        29 04         AND #$04                  
CODE_12CA4D:        F0 1A         BEQ CODE_12CA69           
CODE_12CA4F:        BD 2F 04      LDA $042F,x               
CODE_12CA52:        F0 08         BEQ CODE_12CA5C           
CODE_12CA54:        A9 00         LDA #$00                  
CODE_12CA56:        9D 2F 04      STA $042F,x               
CODE_12CA59:        20 CA 9F      JSR CODE_129FCA           
CODE_12CA5C:        B5 9F         LDA $9F,x                 
CODE_12CA5E:        49 08         EOR #$08                  
CODE_12CA60:        95 9F         STA $9F,x                 
CODE_12CA62:        20 59 B6      JSR CODE_12B659           
CODE_12CA65:        A9 F0         LDA #$F0                  
CODE_12CA67:        95 47         STA $47,x                 
CODE_12CA69:        FE 77 04      INC $0477,x               
CODE_12CA6C:        B5 B1         LDA $B1,x                 
CODE_12CA6E:        D0 0A         BNE CODE_12CA7A           
CODE_12CA70:        BD 77 04      LDA $0477,x               
CODE_12CA73:        29 3F         AND #$3F                  
CODE_12CA75:        D0 03         BNE CODE_12CA7A           
CODE_12CA77:        20 CD 9F      JSR CODE_129FCD           
CODE_12CA7A:        20 AA A0      JSR CODE_12A0AA           
CODE_12CA7D:        4C 29 BD      JMP CODE_12BD29           

CODE_12CA80:        20 96 9F      JSR CODE_129F96           
CODE_12CA83:        A9 40         LDA #$40                  
CODE_12CA85:        9D 77 04      STA $0477,x               
CODE_12CA88:        A9 02         LDA #$02                  
CODE_12CA8A:        9D 65 04      STA $0465,x               
CODE_12CA8D:        4C 50 AF      JMP CODE_12AF50    
       
CODE_12CA90:        60            RTS
                       
CODE_12CA91:        20 16 BB      JSR CODE_12BB16           
CODE_12CA94:        A0 00         LDY #$00                  
CODE_12CA96:        BD 77 04      LDA $0477,x               
CODE_12CA99:        0A            ASL A                     
CODE_12CA9A:        90 07         BCC CODE_12CAA3           
CODE_12CA9C:        A0 02         LDY #$02                  
CODE_12CA9E:        0A            ASL A                     
CODE_12CA9F:        90 02         BCC CODE_12CAA3           
CODE_12CAA1:        A0 FE         LDY #$FE                  
CODE_12CAA3:        94 3D         STY $3D,x                 
CODE_12CAA5:        20 EF C1      JSR CODE_12C1EF           
CODE_12CAA8:        FE 77 04      INC $0477,x               
CODE_12CAAB:        B5 B1         LDA $B1,x                 
CODE_12CAAD:        18            CLC                       
CODE_12CAAE:        69 D0         ADC #$D0                  
CODE_12CAB0:        95 B1         STA $B1,x                 
CODE_12CAB2:        90 03         BCC CODE_12CAB7           
CODE_12CAB4:        FE 80 04      INC $0480,x               
CODE_12CAB7:        A5 EE         LDA $EE                   
CODE_12CAB9:        D0 D5         BNE CODE_12CA90           
CODE_12CABB:        A9 49         LDA #$49                  
CODE_12CABD:        95 65         STA $65,x                 
CODE_12CABF:        A0 44         LDY #$44                  
CODE_12CAC1:        B5 51         LDA $51,x                 
CODE_12CAC3:        38            SEC                       
CODE_12CAC4:        E9 01         SBC #$01                  
CODE_12CAC6:        1D 5C 04      ORA $045C,x               
CODE_12CAC9:        85 07         STA $07                   
CODE_12CACB:        F0 02         BEQ CODE_12CACF           
CODE_12CACD:        A0 48         LDY #$48                  
CODE_12CACF:        98            TYA                       
CODE_12CAD0:        A0 60         LDY #$60                  
CODE_12CAD2:        8C F6 02      STY $02F6                 
CODE_12CAD5:        9C F7 02      STZ $02F7                 
CODE_12CAD8:        20 D5 BD      JSR CODE_12BDD5           
CODE_12CADB:        B5 1F         LDA $1F,x                 
CODE_12CADD:        EB            XBA                       
CODE_12CADE:        B5 33         LDA $33,x                 
CODE_12CAE0:        C2 20         REP #$20                  
CODE_12CAE2:        18            CLC                       
CODE_12CAE3:        69 20 00      ADC #$0020                
CODE_12CAE6:        C9 F0 00      CMP #$00F0                
CODE_12CAE9:        E2 20         SEP #$20                  
CODE_12CAEB:        B0 2D         BCS CODE_12CB1A                   
CODE_12CAED:        A9 09         LDA #$09                  
CODE_12CAEF:        95 65         STA $65,x                 
CODE_12CAF1:        A9 33         LDA #$33                  
CODE_12CAF3:        9D 6E 04      STA $046E,x               
CODE_12CAF6:        20 87 CC      JSR CODE_12CC87           
CODE_12CAF9:        A2 4C         LDX #$4C                  
CODE_12CAFB:        A5 10         LDA $10                   
CODE_12CAFD:        29 20         AND #$20                  
CODE_12CAFF:        D0 08         BNE CODE_12CB09           
CODE_12CB01:        A9 04         LDA #$04                  
CODE_12CB03:        25 10         AND $10                   
CODE_12CB05:        F0 02         BEQ CODE_12CB09           
CODE_12CB07:        A2 4F         LDX #$4F                  
CODE_12CB09:        A9 20         LDA #$20                  
CODE_12CB0B:        85 0C         STA $0C                   
CODE_12CB0D:        A0 E0         LDY #$E0                  
CODE_12CB0F:        8C F8 02      STY $02F8                 
CODE_12CB12:        A0 01         LDY #$01                  
CODE_12CB14:        8C F9 02      STY $02F9                 
CODE_12CB17:        20 3B C0      JSR CODE_12C03B           
CODE_12CB1A:        A6 12         LDX $12                   
CODE_12CB1C:        A9 13         LDA #$13                  
CODE_12CB1E:        9D 6E 04      STA $046E,x               
CODE_12CB21:        B5 33         LDA $33,x                 
CODE_12CB23:        18            CLC                       
CODE_12CB24:        69 FF         ADC #$FF                  
CODE_12CB26:        85 00         STA $00                   
CODE_12CB28:        BD 77 04      LDA $0477,x               
CODE_12CB2B:        29 78         AND #$78                  
CODE_12CB2D:        4A            LSR A                     
CODE_12CB2E:        4A            LSR A                     
CODE_12CB2F:        4A            LSR A                     
CODE_12CB30:        A8            TAY                       
CODE_12CB31:        B9 BE 9A      LDA.w DATA_119ABE,y               
CODE_12CB34:        6D 29 04      ADC $0429                 
CODE_12CB37:        69 F0         ADC #$F0                  
CODE_12CB39:        85 01         STA $01                   
CODE_12CB3B:        20 4C CC      JSR CODE_12CC4C           
CODE_12CB3E:        A2 52         LDX #$52                  
CODE_12CB40:        A5 07         LDA $07                   
CODE_12CB42:        D0 0C         BNE CODE_12CB50           
CODE_12CB44:        A2 54         LDX #$54                  
CODE_12CB46:        88            DEY                       
CODE_12CB47:        88            DEY                       
CODE_12CB48:        88            DEY                       
CODE_12CB49:        88            DEY                       
CODE_12CB4A:        C0 07         CPY #$07                  
CODE_12CB4C:        B0 02         BCS CODE_12CB50                   
CODE_12CB4E:        A2 56         LDX #$56                  
CODE_12CB50:        A0 50         LDY #$50                  
CODE_12CB52:        8C F8 02      STY $02F8                 
CODE_12CB55:        9C F9 02      STZ $02F9                 
CODE_12CB58:        20 3B C0      JSR CODE_12C03B           
CODE_12CB5B:        A6 12         LDX $12                   
CODE_12CB5D:        B5 33         LDA $33,x                 
CODE_12CB5F:        18            CLC                       
CODE_12CB60:        69 10         ADC #$10                  
CODE_12CB62:        85 00         STA $00                   
CODE_12CB64:        BD 80 04      LDA $0480,x               
CODE_12CB67:        29 78         AND #$78                  
CODE_12CB69:        4A            LSR A                     
CODE_12CB6A:        4A            LSR A                     
CODE_12CB6B:        4A            LSR A                     
CODE_12CB6C:        A8            TAY                       
CODE_12CB6D:        B9 BE 9A      LDA.w DATA_119ABE,y               
CODE_12CB70:        6D 29 04      ADC $0429                 
CODE_12CB73:        69 F0         ADC #$F0                  
CODE_12CB75:        85 01         STA $01                   
CODE_12CB77:        20 4C CC      JSR CODE_12CC4C           
CODE_12CB7A:        A2 52         LDX #$52                  
CODE_12CB7C:        A5 07         LDA $07                   
CODE_12CB7E:        D0 0C         BNE CODE_12CB8C           
CODE_12CB80:        A2 54         LDX #$54                  
CODE_12CB82:        88            DEY                       
CODE_12CB83:        88            DEY                       
CODE_12CB84:        88            DEY                       
CODE_12CB85:        88            DEY                       
CODE_12CB86:        C0 07         CPY #$07                  
CODE_12CB88:        B0 02         BCS CODE_12CB8C                   
CODE_12CB8A:        A2 56         LDX #$56                  
CODE_12CB8C:        A0 68         LDY #$68                  
CODE_12CB8E:        8C F8 02      STY $02F8                 
CODE_12CB91:        9C F9 02      STZ $02F9                 
CODE_12CB94:        20 3B C0      JSR CODE_12C03B           
CODE_12CB97:        A6 12         LDX $12                   
CODE_12CB99:        A9 13         LDA #$13                  
CODE_12CB9B:        9D 6E 04      STA $046E,x               
CODE_12CB9E:        A5 01         LDA $01                   
CODE_12CBA0:        18            CLC                       
CODE_12CBA1:        69 08         ADC #$08                  
CODE_12CBA3:        8D C0 09      STA $09C0                 
CODE_12CBA6:        B5 33         LDA $33,x                 
CODE_12CBA8:        18            CLC                       
CODE_12CBA9:        69 10         ADC #$10                  
CODE_12CBAB:        8D C1 09      STA $09C1                 
CODE_12CBAE:        A9 C1         LDA #$C1                  
CODE_12CBB0:        8D C2 09      STA $09C2                 
CODE_12CBB3:        AD 63 08      LDA $0863                 
CODE_12CBB6:        8D C3 09      STA $09C3                 
CODE_12CBB9:        8D 23 08      STA $0823                 
CODE_12CBBC:        A5 ED         LDA $ED                   
CODE_12CBBE:        29 04         AND #$04                  
CODE_12CBC0:        4A            LSR A                     
CODE_12CBC1:        4A            LSR A                     
CODE_12CBC2:        09 02         ORA #$02                  
CODE_12CBC4:        8D 90 0A      STA $0A90                 
CODE_12CBC7:        B5 33         LDA $33,x                 
CODE_12CBC9:        18            CLC                       
CODE_12CBCA:        69 FF         ADC #$FF                  
CODE_12CBCC:        8D 21 08      STA $0821                 
CODE_12CBCF:        AD 62 08      LDA $0862                 
CODE_12CBD2:        8D 22 08      STA $0822                 
CODE_12CBD5:        AD 29 04      LDA $0429                 
CODE_12CBD8:        8D 20 08      STA $0820                 
CODE_12CBDB:        A9 02         LDA #$02                  
CODE_12CBDD:        AC 1F 02      LDY $021F                 
CODE_12CBE0:        F0 02         BEQ CODE_12CBE4           
CODE_12CBE2:        09 01         ORA #$01                  
CODE_12CBE4:        8D 28 0A      STA $0A28                 
CODE_12CBE7:        64 05         STZ $05                   
CODE_12CBE9:        BD 77 04      LDA $0477,x               
CODE_12CBEC:        20 F4 CB      JSR CODE_12CBF4           
CODE_12CBEF:        E6 05         INC $05                   
CODE_12CBF1:        BD 80 04      LDA $0480,x               
CODE_12CBF4:        29 67         AND #$67                  
CODE_12CBF6:        C9 40         CMP #$40                  
CODE_12CBF8:        D0 51         BNE CODE_12CC4B           
CODE_12CBFA:        BD 5C 04      LDA $045C,x               
CODE_12CBFD:        D0 4C         BNE CODE_12CC4B           
CODE_12CBFF:        20 35 B3      JSR CODE_12B335           
CODE_12CC02:        30 47         BMI CODE_12CC4B           
CODE_12CC04:        A9 17         LDA #$17                  
CODE_12CC06:        8D E3 1D      STA $1DE3                 
CODE_12CC09:        A4 00         LDY $00                   
CODE_12CC0B:        A9 20         LDA #$20                  
CODE_12CC0D:        99 90 00      STA $0090,y               
CODE_12CC10:        99 79 00      STA $0079,y               
CODE_12CC13:        99 B1 00      STA $00B1,y               
CODE_12CC16:        B5 29         LDA $29,x                 
CODE_12CC18:        E9 18         SBC #$18                  
CODE_12CC1A:        99 29 00      STA $0029,y               
CODE_12CC1D:        A5 05         LDA $05                   
CODE_12CC1F:        F0 08         BEQ CODE_12CC29           
CODE_12CC21:        B5 33         LDA $33,x                 
CODE_12CC23:        18            CLC                       
CODE_12CC24:        69 10         ADC #$10                  
CODE_12CC26:        99 33 00      STA $0033,y               
CODE_12CC29:        A5 28         LDA $28                   
CODE_12CC2B:        4A            LSR A                     
CODE_12CC2C:        4A            LSR A                     
CODE_12CC2D:        4A            LSR A                     
CODE_12CC2E:        4A            LSR A                     
CODE_12CC2F:        29 0F         AND #$0F                  
CODE_12CC31:        C9 0B         CMP #$0B                  
CODE_12CC33:        90 02         BCC CODE_12CC37           
CODE_12CC35:        A9 0B         LDA #$0B                  
CODE_12CC37:        AA            TAX                       
CODE_12CC38:        BD CE 9A      LDA.w DATA_119ACE,x               
CODE_12CC3B:        99 47 00      STA $0047,y               
CODE_12CC3E:        BD DA 9A      LDA.w DATA_119ADA,x               
CODE_12CC41:        99 3D 00      STA $003D,y               
CODE_12CC44:        98            TYA                       
CODE_12CC45:        AA            TAX                       
CODE_12CC46:        20 7A 9F      JSR CODE_129F7A           
CODE_12CC49:        A6 12         LDX $12                   
CODE_12CC4B:        60            RTS                       
                       
CODE_12CC4C:        AD 29 04      LDA $0429                 
CODE_12CC4F:        85 08         STA $08                   
CODE_12CC51:        AD 1F 02      LDA $021F                 
CODE_12CC54:        85 09         STA $09                   
CODE_12CC56:        64 ED         STZ $ED                   
CODE_12CC58:        C2 20         REP #$20                  
CODE_12CC5A:        B9 BE 9A      LDA.w DATA_119ABE,y               
CODE_12CC5D:        29 FF 00      AND #$00FF                
CODE_12CC60:        09 00 FF      ORA #$FF00                
CODE_12CC63:        65 08         ADC $08                   
CODE_12CC65:        69 F0 FF      ADC #$FFF0                
CODE_12CC68:        85 08         STA $08                   
CODE_12CC6A:        29 00 FF      AND #$FF00                
CODE_12CC6D:        F0 05         BEQ CODE_12CC74           
CODE_12CC6F:        A9 08 00      LDA #$0008                
CODE_12CC72:        04 ED         TSB $ED                   
CODE_12CC74:        A5 08         LDA $08                   
CODE_12CC76:        18            CLC                       
CODE_12CC77:        69 08 00      ADC #$0008                
CODE_12CC7A:        29 00 FF      AND #$FF00                
CODE_12CC7D:        F0 05         BEQ CODE_12CC84           
CODE_12CC7F:        A9 04 00      LDA #$0004                
CODE_12CC82:        04 ED         TSB $ED                   
CODE_12CC84:        E2 20         SEP #$20                  
CODE_12CC86:        60            RTS
                       
CODE_12CC87:        AD 29 04      LDA $0429                 
CODE_12CC8A:        85 08         STA $08                   
CODE_12CC8C:        AD 1F 02      LDA $021F                 
CODE_12CC8F:        85 09         STA $09                   
CODE_12CC91:        64 ED         STZ $ED                   
CODE_12CC93:        C2 20         REP #$20                  
CODE_12CC95:        A5 08         LDA $08                   
CODE_12CC97:        29 00 FF      AND #$FF00                
CODE_12CC9A:        F0 05         BEQ CODE_12CCA1           
CODE_12CC9C:        A9 04 00      LDA #$0004                
CODE_12CC9F:        04 ED         TSB $ED                   
CODE_12CCA1:        A5 08         LDA $08                   
CODE_12CCA3:        38            SEC                       
CODE_12CCA4:        E9 08 00      SBC #$0008                
CODE_12CCA7:        85 08         STA $08                   
CODE_12CCA9:        29 00 FF      AND #$FF00                
CODE_12CCAC:        F0 05         BEQ CODE_12CCB3           
CODE_12CCAE:        A9 08 00      LDA #$0008                
CODE_12CCB1:        04 ED         TSB $ED                   
CODE_12CCB3:        E2 20         SEP #$20                  
CODE_12CCB5:        A5 08         LDA $08                   
CODE_12CCB7:        85 01         STA $01                   
CODE_12CCB9:        60            RTS
                       
CODE_12CCBA:        20 96 9F      JSR CODE_129F96           
CODE_12CCBD:        B5 33         LDA $33,x                 
CODE_12CCBF:        38            SEC                       
CODE_12CCC0:        E9 08         SBC #$08                  
CODE_12CCC2:        95 79         STA $79,x                 
CODE_12CCC4:        60            RTS
                       
CODE_12CCC5:        20 16 BB      JSR CODE_12BB16           
CODE_12CCC8:        20 4F BA      JSR CODE_12BA4F           
CODE_12CCCB:        20 46 BA      JSR CODE_12BA46           
CODE_12CCCE:        20 AB DD      JSR CODE_12DDAB           
CODE_12CCD1:        BD 80 04      LDA $0480,x               ; \ Check if Cobrat needs to remain in sand.
CODE_12CCD4:        D0 30         BNE CODE_12CD06           ; / If not, branch.
CODE_12CCD6:        95 3D         STA $3D,x                 ; X speed = #$00.
CODE_12CCD8:        20 DA C1      JSR CODE_12C1DA         
CODE_12CCDB:        A5 0F         LDA $0F                   ; \ Check if player is near enough to Cobrat.  
CODE_12CCDD:        69 40         ADC #$40                  ;  |
CODE_12CCDF:        C9 80         CMP #$80                  ;  |
CODE_12CCE1:        B0 09         BCS CODE_12CCEC           ; / If not, do regular routine. (Remain in sand)      
CODE_12CCE3:        FE 80 04      INC $0480,x               ; Don't retreat into sand anymore.
CODE_12CCE6:        A9 C0         LDA #$C0                  ; \ Jump up.
CODE_12CCE8:        95 47         STA $47,x                 ; /
CODE_12CCEA:        D0 1A         BNE CODE_12CD06           ; Branch. 

CODE_12CCEC:        FE 77 04      INC $0477,x               ; Increase every frame.  
CODE_12CCEF:        A0 FC         LDY #$FC                  ; \ Y speed = #$FC for $20 frames.
CODE_12CCF1:        BD 77 04      LDA $0477,x               ;  |
CODE_12CCF4:        29 20         AND #$20                  ;  |
CODE_12CCF6:        F0 02         BEQ CODE_12CCFA           ;  |
CODE_12CCF8:        A0 04         LDY #$04                  ;  | The other $20 frames, Y speed = #$04.
CODE_12CCFA:        94 47         STY $47,x                 ; /
CODE_12CCFC:        20 EA C1      JSR CODE_12C1EA           
CODE_12CCFF:        A9 61         LDA #$61                  
CODE_12CD01:        95 65         STA $65,x                 
CODE_12CD03:        4C 29 BD      JMP CODE_12BD29           

CODE_12CD06:        B5 47         LDA $47,x                 ; \ If Y speed is negative, branch.
CODE_12CD08:        30 0F         BMI CODE_12CD19           ; /
CODE_12CD0A:        B5 79         LDA $79,x                 
CODE_12CD0C:        38            SEC                       
CODE_12CD0D:        E9 18         SBC #$18                  
CODE_12CD0F:        D5 33         CMP $33,x                 
CODE_12CD11:        B0 06         BCS CODE_12CD19                   
CODE_12CD13:        95 33         STA $33,x                 
CODE_12CD15:        A9 00         LDA #$00                  
CODE_12CD17:        95 47         STA $47,x                 
CODE_12CD19:        20 AA A0      JSR CODE_12A0AA           ; Gravity.
CODE_12CD1C:        F6 9F         INC $9F,x                 
CODE_12CD1E:        B5 9F         LDA $9F,x                 
CODE_12CD20:        48            PHA                       
CODE_12CD21:        29 3F         AND #$3F                  
CODE_12CD23:        D0 03         BNE CODE_12CD28           
CODE_12CD25:        20 CD 9F      JSR CODE_129FCD           
CODE_12CD28:        68            PLA                       
CODE_12CD29:        D0 05         BNE CODE_12CD30           
CODE_12CD2B:        A9 18         LDA #$18                  
CODE_12CD2D:        9D 53 04      STA $0453,x               
CODE_12CD30:        B5 5B         LDA $5B,x                 
CODE_12CD32:        29 03         AND #$03                  
CODE_12CD34:        F0 03         BEQ CODE_12CD39           
CODE_12CD36:        20 48 C2      JSR CODE_12C248           
CODE_12CD39:        A9 41         LDA #$41                  
CODE_12CD3B:        B4 47         LDY $47,x                 
CODE_12CD3D:        10 02         BPL CODE_12CD41           
CODE_12CD3F:        A9 61         LDA #$61                  
CODE_12CD41:        4C D2 CD      JMP CODE_12CDD2           

CODE_12CD44:        B5 A8         LDA $A8,x                 
CODE_12CD46:        C9 05         CMP #$05                  
CODE_12CD48:        D0 06         BNE CODE_12CD50           
CODE_12CD4A:        B5 65         LDA $65,x                 
CODE_12CD4C:        29 DF         AND #$DF                  
CODE_12CD4E:        95 65         STA $65,x                 
CODE_12CD50:        20 16 BB      JSR CODE_12BB16           
CODE_12CD53:        20 4F BA      JSR CODE_12BA4F           
CODE_12CD56:        20 46 BA      JSR CODE_12BA46           
CODE_12CD59:        20 AB DD      JSR CODE_12DDAB           
CODE_12CD5C:        B5 5B         LDA $5B,x                 
CODE_12CD5E:        29 08         AND #$08                  
CODE_12CD60:        F0 05         BEQ CODE_12CD67           
CODE_12CD62:        B5 79         LDA $79,x                 
CODE_12CD64:        95 33         STA $33,x                 
CODE_12CD66:        60            RTS
                       
CODE_12CD67:        20 DA C1      JSR CODE_12C1DA           
CODE_12CD6A:        C8            INY                       
CODE_12CD6B:        94 6F         STY $6F,x                 
CODE_12CD6D:        B5 B1         LDA $B1,x                 
CODE_12CD6F:        D0 1F         BNE CODE_12CD90           
CODE_12CD71:        B5 86         LDA $86,x                 
CODE_12CD73:        D0 09         BNE CODE_12CD7E           
CODE_12CD75:        A9 D0         LDA #$D0                  
CODE_12CD77:        95 47         STA $47,x                 
CODE_12CD79:        F6 B1         INC $B1,x                 
CODE_12CD7B:        4C CD CD      JMP CODE_12CDCD           

CODE_12CD7E:        A0 FC         LDY #$FC
CODE_12CD80:        A5 10         LDA $10                
CODE_12CD82:        29 20         AND #$20
CODE_12CD84:        F0 02         BEQ CODE_12CD88          
CODE_12CD86:        A0 04         LDY #$04                  
CODE_12CD88:        94 47         STY $47,x                 
CODE_12CD8A:        20 EA C1      JSR CODE_12C1EA           
CODE_12CD8D:        4C D0 CD      JMP CODE_12CDD0           

CODE_12CD90:        F6 9F         INC $9F,x                 
CODE_12CD92:        B5 47         LDA $47,x                 
CODE_12CD94:        30 37         BMI CODE_12CDCD           
CODE_12CD96:        D0 05         BNE CODE_12CD9D           
CODE_12CD98:        A9 10         LDA #$10                  
CODE_12CD9A:        9D 53 04      STA $0453,x               
CODE_12CD9D:        B5 47         LDA $47,x                 
CODE_12CD9F:        30 1C         BMI CODE_12CDBD           
CODE_12CDA1:        B5 5B         LDA $5B,x                 
CODE_12CDA3:        29 04         AND #$04                  
CODE_12CDA5:        F0 16         BEQ CODE_12CDBD           
CODE_12CDA7:        A5 0E         LDA $0E                   
CODE_12CDA9:        38            SEC                       
CODE_12CDAA:        E9 6A         SBC #$6A                  
CODE_12CDAC:        C9 06         CMP #$06                  
CODE_12CDAE:        90 0D         BCC CODE_12CDBD           
CODE_12CDB0:        A9 02         LDA #$02                  
CODE_12CDB2:        95 51         STA $51,x                 
CODE_12CDB4:        A9 E0         LDA #$E0                  
CODE_12CDB6:        95 47         STA $47,x                 
CODE_12CDB8:        A9 40         LDA #$40                  
CODE_12CDBA:        8D 01 06      STA $0601                 
CODE_12CDBD:        B5 79         LDA $79,x                 
CODE_12CDBF:        D5 33         CMP $33,x                 
CODE_12CDC1:        B0 0A         BCS CODE_12CDCD                   
CODE_12CDC3:        95 33         STA $33,x                 
CODE_12CDC5:        A9 00         LDA #$00                  
CODE_12CDC7:        95 B1         STA $B1,x                 
CODE_12CDC9:        A9 A0         LDA #$A0                  
CODE_12CDCB:        95 86         STA $86,x                 
CODE_12CDCD:        20 B2 A0      JSR CODE_12A0B2           
CODE_12CDD0:        A9 61         LDA #$61                  
CODE_12CDD2:        95 65         STA $65,x                 
CODE_12CDD4:        BD 53 04      LDA $0453,x               
CODE_12CDD7:        F0 0C         BEQ CODE_12CDE5           
CODE_12CDD9:        C9 05         CMP #$05                  
CODE_12CDDB:        D0 03         BNE CODE_12CDE0           
CODE_12CDDD:        20 76 B6      JSR CODE_12B676           
CODE_12CDE0:        A9 60         LDA #$60                  
CODE_12CDE2:        4C D5 BD      JMP CODE_12BDD5           

CODE_12CDE5:        4C 29 BD      JMP CODE_12BD29           

CODE_12CDE8:        20 96 9F      JSR CODE_129F96           
CODE_12CDEB:        A9 03         LDA #$03                  
CODE_12CDED:        95 79         STA $79,x                 
CODE_12CDEF:        60            RTS                       

CODE_12CDF0:        B5 79         LDA $79,x                 
CODE_12CDF2:        D0 09         BNE CODE_12CDFD           
CODE_12CDF4:        20 16 BB      JSR CODE_12BB16           
CODE_12CDF7:        20 46 BA      JSR CODE_12BA46           
CODE_12CDFA:        20 4F BA      JSR CODE_12BA4F           
CODE_12CDFD:        B5 5B         LDA $5B,x                 
CODE_12CDFF:        29 10         AND #$10                  
CODE_12CE01:        F0 07         BEQ CODE_12CE0A           
CODE_12CE03:        20 11 CE      JSR CODE_12CE11           
CODE_12CE06:        FE 2F 04      INC $042F,x               
CODE_12CE09:        60            RTS                       

CODE_12CE0A:        B5 A8         LDA $A8,x                 
CODE_12CE0C:        D0 03         BNE CODE_12CE11           
CODE_12CE0E:        82 A9 00      BRL CODE_12CEBA           

CODE_12CE11:        B5 79         LDA $79,x                 
CODE_12CE13:        F0 F9         BEQ CODE_12CE0E           
CODE_12CE15:        9D 77 04      STA $0477,x               
CODE_12CE18:        A9 00         LDA #$00                  
CODE_12CE1A:        95 79         STA $79,x                 
CODE_12CE1C:        A9 02         LDA #$02                  
CODE_12CE1E:        9D 89 04      STA $0489,x               
CODE_12CE21:        BD 41 04      LDA $0441,x               
CODE_12CE24:        85 06         STA $06                   
CODE_12CE26:        A9 FF         LDA #$FF                  
CODE_12CE28:        9D 41 04      STA $0441,x               
CODE_12CE2B:        20 31 B3      JSR CODE_12B331           
CODE_12CE2E:        30 DE         BMI CODE_12CE0E           
CODE_12CE30:        A4 00         LDY $00                   
CODE_12CE32:        A9 1A         LDA #$1A                  
CODE_12CE34:        99 90 00      STA $0090,y               
CODE_12CE37:        20 44 CC      JSR CODE_12CC44           
CODE_12CE3A:        A4 00         LDY $00                   
CODE_12CE3C:        A5 06         LDA $06                   
CODE_12CE3E:        99 41 04      STA $0441,y               
CODE_12CE41:        BD 77 04      LDA $0477,x               
CODE_12CE44:        38            SEC                       
CODE_12CE45:        E9 01         SBC #$01                  
CODE_12CE47:        99 79 00      STA $0079,y               
CODE_12CE4A:        A8            TAY                       
CODE_12CE4B:        B9 E6 9A      LDA.w DATA_119AE6,y               
CODE_12CE4E:        A4 00         LDY $00                   
CODE_12CE50:        99 89 04      STA $0489,y               
CODE_12CE53:        B5 29         LDA $29,x                 
CODE_12CE55:        99 29 00      STA $0029,y               
CODE_12CE58:        B5 15         LDA $15,x                 
CODE_12CE5A:        99 15 00      STA $0015,y               
CODE_12CE5D:        B5 33         LDA $33,x                 
CODE_12CE5F:        18            CLC                       
CODE_12CE60:        69 10         ADC #$10                  
CODE_12CE62:        99 33 00      STA $0033,y               
CODE_12CE65:        B5 1F         LDA $1F,x                 
CODE_12CE67:        69 00         ADC #$00                  
CODE_12CE69:        99 1F 00      STA $001F,y               
CODE_12CE6C:        AD F6 02      LDA $02F6                 
CODE_12CE6F:        8D 1E 07      STA $071E                 
CODE_12CE72:        AD F7 02      LDA $02F7                 
CODE_12CE75:        8D 1F 07      STA $071F                 
CODE_12CE78:        DA            PHX                       
CODE_12CE79:        5A            PHY                       
CODE_12CE7A:        22 83 E4 14   JSL CODE_14E483           
CODE_12CE7E:        7A            PLY                       
CODE_12CE7F:        FA            PLX                       
CODE_12CE80:        AD F8 02      LDA $02F8                 
CODE_12CE83:        8D F6 02      STA $02F6                 
CODE_12CE86:        AD F9 02      LDA $02F9                 
CODE_12CE89:        8D F7 02      STA $02F7                 
CODE_12CE8C:        A5 12         LDA $12                   
CODE_12CE8E:        8D 20 07      STA $0720                 
CODE_12CE91:        84 12         STY $12                   
CODE_12CE93:        AD 2C 04      LDA $042C                 
CODE_12CE96:        8D 21 07      STA $0721                 
CODE_12CE99:        18            CLC                       
CODE_12CE9A:        69 10         ADC #$10                  
CODE_12CE9C:        8D 2C 04      STA $042C                 
CODE_12CE9F:        BB            TYX                       
CODE_12CEA0:        20 D0 CE      JSR CODE_12CED0           
CODE_12CEA3:        AD 21 07      LDA $0721                 
CODE_12CEA6:        8D 2C 04      STA $042C                 
CODE_12CEA9:        AE 20 07      LDX $0720                 
CODE_12CEAC:        86 12         STX $12                   
CODE_12CEAE:        AD 1E 07      LDA $071E                 
CODE_12CEB1:        8D F6 02      STA $02F6                 
CODE_12CEB4:        AD 1F 07      LDA $071F                 
CODE_12CEB7:        8D F7 02      STA $02F7                 
CODE_12CEBA:        AD 00 05      LDA $0500                 
CODE_12CEBD:        D0 0E         BNE CODE_12CECD           
CODE_12CEBF:        F6 9F         INC $9F,x                 
CODE_12CEC1:        B5 9F         LDA $9F,x                 
CODE_12CEC3:        29 3F         AND #$3F                  
CODE_12CEC5:        D0 03         BNE CODE_12CECA           
CODE_12CEC7:        20 CD 9F      JSR CODE_129FCD           
CODE_12CECA:        20 EF C1      JSR CODE_12C1EF           
CODE_12CECD:        4C 29 BD      JMP CODE_12BD29           

CODE_12CED0:        A0 00         LDY #$00                  
CODE_12CED2:        A5 ED         LDA $ED                   
CODE_12CED4:        D0 08         BNE CODE_12CEDE           
CODE_12CED6:        A5 10         LDA $10                   
CODE_12CED8:        29 18         AND #$18                  
CODE_12CEDA:        4A            LSR A                     
CODE_12CEDB:        4A            LSR A                     
CODE_12CEDC:        4A            LSR A                     
CODE_12CEDD:        A8            TAY                       
CODE_12CEDE:        84 07         STY $07                   
CODE_12CEE0:        9C 12 07      STZ $0712                 
CODE_12CEE3:        9C 13 07      STZ $0713                 
CODE_12CEE6:        AD 1F 02      LDA $021F                 
CODE_12CEE9:        8D 15 07      STA $0715                 
CODE_12CEEC:        AD 29 04      LDA $0429                 
CODE_12CEEF:        8D 14 07      STA $0714                 
CODE_12CEF2:        B9 EA 9A      LDA.w DATA_119AEA,y               
CODE_12CEF5:        20 55 CF      JSR CODE_12CF55           
CODE_12CEF8:        20 C9 BD      JSR CODE_12BDC9           
CODE_12CEFB:        B5 79         LDA $79,x                 
CODE_12CEFD:        85 09         STA $09                   
CODE_12CEFF:        F0 51         BEQ CODE_12CF52           
CODE_12CF01:        A9 10         LDA #$10                  
CODE_12CF03:        8D 12 07      STA $0712                 
CODE_12CF06:        9C 13 07      STZ $0713                 
CODE_12CF09:        A6 07         LDX $07                   
CODE_12CF0B:        BD EB 9A      LDA.w DATA_119AEB,x               
CODE_12CF0E:        20 55 CF      JSR CODE_12CF55           
CODE_12CF11:        D0 05         BNE CODE_12CF18           
CODE_12CF13:        A2 6C         LDX #$6C                  
CODE_12CF15:        20 3B C0      JSR CODE_12C03B           
CODE_12CF18:        C6 09         DEC $09                   
CODE_12CF1A:        F0 36         BEQ CODE_12CF52           
CODE_12CF1C:        22 83 E4 14   JSL CODE_14E483           
CODE_12CF20:        A9 20         LDA #$20                  
CODE_12CF22:        8D 12 07      STA $0712                 
CODE_12CF25:        9C 13 07      STZ $0713                 
CODE_12CF28:        A6 07         LDX $07                   
CODE_12CF2A:        BD EC 9A      LDA.w DATA_119AEC,x               
CODE_12CF2D:        20 55 CF      JSR CODE_12CF55           
CODE_12CF30:        D0 05         BNE CODE_12CF37           
CODE_12CF32:        A2 6C         LDX #$6C                  
CODE_12CF34:        20 3B C0      JSR CODE_12C03B           
CODE_12CF37:        C6 09         DEC $09                   
CODE_12CF39:        F0 17         BEQ CODE_12CF52           
CODE_12CF3B:        A9 30         LDA #$30                  
CODE_12CF3D:        8D 12 07      STA $0712                 
CODE_12CF40:        9C 13 07      STZ $0713                 
CODE_12CF43:        A6 07         LDX $07                   
CODE_12CF45:        BD ED 9A      LDA.w DATA_119AED,x               
CODE_12CF48:        20 55 CF      JSR CODE_12CF55           
CODE_12CF4B:        D0 05         BNE CODE_12CF52           
CODE_12CF4D:        A2 6C         LDX #$6C                  
CODE_12CF4F:        20 3B C0      JSR CODE_12C03B           
CODE_12CF52:        A6 12         LDX $12                   
CODE_12CF54:        60            RTS                       
                       
CODE_12CF55:        64 ED         STZ $ED                   
CODE_12CF57:        C2 20         REP #$20                  
CODE_12CF59:        29 FF 00      AND #$00FF                
CODE_12CF5C:        C9 80 00      CMP #$0080                
CODE_12CF5F:        90 03         BCC CODE_12CF64           
CODE_12CF61:        09 00 FF      ORA #$FF00                
CODE_12CF64:        18            CLC                       
CODE_12CF65:        6D 14 07      ADC $0714                 
CODE_12CF68:        E2 20         SEP #$20                  
CODE_12CF6A:        85 01         STA $01                   
CODE_12CF6C:        8D 29 04      STA $0429                 
CODE_12CF6F:        EB            XBA                       
CODE_12CF70:        8D 1F 02      STA $021F                 
CODE_12CF73:        F0 04         BEQ CODE_12CF79           
CODE_12CF75:        A9 08         LDA #$08                  
CODE_12CF77:        85 ED         STA $ED                   
CODE_12CF79:        A6 12         LDX $12                   
CODE_12CF7B:        A5 CB         LDA $CB                   
CODE_12CF7D:        8D 16 07      STA $0716                 
CODE_12CF80:        A5 CA         LDA $CA                   
CODE_12CF82:        8D 17 07      STA $0717                 
CODE_12CF85:        B5 1F         LDA $1F,x                 
CODE_12CF87:        EB            XBA                       
CODE_12CF88:        B5 33         LDA $33,x                 
CODE_12CF8A:        C2 20         REP #$20                  
CODE_12CF8C:        18            CLC                       
CODE_12CF8D:        6D 12 07      ADC $0712                 
CODE_12CF90:        38            SEC                       
CODE_12CF91:        ED 16 07      SBC $0716                 
CODE_12CF94:        EB            XBA                       
CODE_12CF95:        29 FF 00      AND #$00FF                
CODE_12CF98:        E2 20         SEP #$20                  
CODE_12CF9A:        60            RTS
                       
DATA_12CF9B:        db $FF

DATA_12CF9C:        db $FF

DATA_12CF9D:        db $FF

DATA_12CF9E:        db $FF,$88,$88,$88,$FF,$98,$98,$98
                    db $FF,$84,$94,$85,$94,$94,$85,$95
                    db $85,$85,$95,$84,$95,$95,$84,$94
                    db $84

DATA_12CFB7:        db $00,$01,$00,$01,$01,$02,$01,$02
                    db $03,$04,$05,$06            
                 
CODE_12CFC3:        B5 B1         LDA $B1,x                   
CODE_12CFC5:        D0 03         BNE CODE_12CFCA               
CODE_12CFC7:        4C 91 D1      JMP CODE_12D191                 
            
CODE_12CFCA:        A0 03         LDY #$03    
CODE_12CFCC:        B5 47         LDA $47,x            
CODE_12CFCE:        F0 04         BEQ CODE_12CFD4          
CODE_12CFD0:        C9 FD         CMP #$FD                   
CODE_12CFD2:        90 11         BCC CODE_12CFE5               
CODE_12CFD4:        A0 3F         LDY #$3F                
CODE_12CFD6:        EE 29 04      INC $0429                  
CODE_12CFD9:        A5 10         LDA $10                   
CODE_12CFDB:        29 02         AND #$02                  
CODE_12CFDD:        D0 06         BNE CODE_12CFE5           
CODE_12CFDF:        CE 29 04      DEC $0429                 
CODE_12CFE2:        CE 29 04      DEC $0429                 
CODE_12CFE5:        98            TYA                       
CODE_12CFE6:        25 10         AND $10                   
CODE_12CFE8:        D0 0D         BNE CODE_12CFF7           
CODE_12CFEA:        D6 47         DEC $47,x                 
CODE_12CFEC:        B5 47         LDA $47,x                 
CODE_12CFEE:        C9 FA         CMP #$FA                  
CODE_12CFF0:        D0 05         BNE CODE_12CFF7           
CODE_12CFF2:        A9 45         LDA #$45                  
CODE_12CFF4:        8D E3 1D      STA $1DE3                 
CODE_12CFF7:        20 EA C1      JSR CODE_12C1EA           
CODE_12CFFA:        BD 77 04      LDA $0477,x               
CODE_12CFFD:        D0 24         BNE CODE_12D023           
CODE_12CFFF:        B4 1F         LDY $1F,x                 
CODE_12D001:        10 44         BPL CODE_12D047           
CODE_12D003:        B5 33         LDA $33,x                 
CODE_12D005:        C9 D0         CMP #$D0                  
CODE_12D007:        B0 3E         BCS CODE_12D047                   
CODE_12D009:        22 5A E3 14   JSL CODE_14E35A           
CODE_12D00D:        A9 38         LDA #$38                  
CODE_12D00F:        8D AF 04      STA $04AF                 
CODE_12D012:        EE 27 06      INC $0627                 
CODE_12D015:        EE B8 02      INC $02B8                 
CODE_12D018:        A9 05         LDA #$05                  
CODE_12D01A:        8D 36 05      STA $0536                 
CODE_12D01D:        A9 00         LDA #$00                  
CODE_12D01F:        8D 50 00      STA $0050                 
CODE_12D022:        60            RTS
                       
CODE_12D023:        B5 33         LDA $33,x                 
CODE_12D025:        C9 30         CMP #$30                  
CODE_12D027:        B0 1E         BCS CODE_12D047                   
CODE_12D029:        AC C8 04      LDY $04C8                 
CODE_12D02C:        D0 07         BNE CODE_12D035           
CODE_12D02E:        C9 18         CMP #$18                  
CODE_12D030:        B0 15         BCS CODE_12D047                   
CODE_12D032:        4C 20 B1      JMP CODE_12B120           

CODE_12D035:        A9 00         LDA #$00                  
CODE_12D037:        8D C8 04      STA $04C8                 
CODE_12D03A:        85 9C         STA $9C                   
CODE_12D03C:        85 3C         STA $3C                   
CODE_12D03E:        B5 33         LDA $33,x                 
CODE_12D040:        69 20         ADC #$20                  
CODE_12D042:        85 32         STA $32                   
CODE_12D044:        8D 2B 04      STA $042B                 
CODE_12D047:        20 A8 D1      JSR CODE_12D1A8           
CODE_12D04A:        B5 33         LDA $33,x                 
CODE_12D04C:        8D 12 07      STA $0712                 
CODE_12D04F:        B5 1F         LDA $1F,x                 
CODE_12D051:        8D 13 07      STA $0713                 
CODE_12D054:        A0 00         LDY #$00                  
CODE_12D056:        B5 47         LDA $47,x                 
CODE_12D058:        C9 FE         CMP #$FE                  
CODE_12D05A:        B0 06         BCS CODE_12D062                   
CODE_12D05C:        C8            INY                       
CODE_12D05D:        C9 FD         CMP #$FD                  
CODE_12D05F:        F0 01         BEQ CODE_12D062           
CODE_12D061:        C8            INY                       
CODE_12D062:        8C 14 07      STY $0714                 
CODE_12D065:        AD 29 04      LDA $0429                 
CODE_12D068:        18            CLC                       
CODE_12D069:        69 FD         ADC #$FD                  
CODE_12D06B:        8D A0 09      STA $09A0                 
CODE_12D06E:        8D B0 09      STA $09B0                 
CODE_12D071:        18            CLC                       
CODE_12D072:        69 07         ADC #$07                  
CODE_12D074:        8D A4 09      STA $09A4                 
CODE_12D077:        8D B4 09      STA $09B4                 
CODE_12D07A:        8D AC 09      STA $09AC                 
CODE_12D07D:        18            CLC                       
CODE_12D07E:        69 07         ADC #$07                  
CODE_12D080:        8D A8 09      STA $09A8                 
CODE_12D083:        8D B8 09      STA $09B8                 
CODE_12D086:        A9 1E         LDA #$1E                  
CODE_12D088:        18            CLC                       
CODE_12D089:        6D 12 07      ADC $0712                 
CODE_12D08C:        8D A1 09      STA $09A1                 
CODE_12D08F:        8D A5 09      STA $09A5                 
CODE_12D092:        8D A9 09      STA $09A9                 
CODE_12D095:        C0 02         CPY #$02                  
CODE_12D097:        D0 12         BNE CODE_12D0AB           
CODE_12D099:        18            CLC                       
CODE_12D09A:        69 07         ADC #$07                  
CODE_12D09C:        8D B1 09      STA $09B1                 
CODE_12D09F:        8D B5 09      STA $09B5                 
CODE_12D0A2:        8D B9 09      STA $09B9                 
CODE_12D0A5:        18            CLC                       
CODE_12D0A6:        69 07         ADC #$07                  
CODE_12D0A8:        8D AD 09      STA $09AD                 
CODE_12D0AB:        C2 20         REP #$20                  
CODE_12D0AD:        AD 12 07      LDA $0712                 
CODE_12D0B0:        18            CLC                       
CODE_12D0B1:        69 20 00      ADC #$0020                
CODE_12D0B4:        C9 EA 00      CMP #$00EA                
CODE_12D0B7:        90 1E         BCC CODE_12D0D7           
CODE_12D0B9:        C9 D0 FF      CMP #$FFD0                
CODE_12D0BC:        B0 19         BCS CODE_12D0D7                   
CODE_12D0BE:        E2 20         SEP #$20                  
CODE_12D0C0:        A9 F0         LDA #$F0                  
CODE_12D0C2:        8D A1 09      STA $09A1                 
CODE_12D0C5:        8D A5 09      STA $09A5                 
CODE_12D0C8:        8D A9 09      STA $09A9                 
CODE_12D0CB:        8D AD 09      STA $09AD                 
CODE_12D0CE:        8D B1 09      STA $09B1                 
CODE_12D0D1:        8D B5 09      STA $09B5                 
CODE_12D0D4:        8D B9 09      STA $09B9                 
CODE_12D0D7:        E2 20         SEP #$20                  
CODE_12D0D9:        A9 22         LDA #$22                  
CODE_12D0DB:        8D A3 09      STA $09A3                 
CODE_12D0DE:        8D A7 09      STA $09A7                 
CODE_12D0E1:        8D AB 09      STA $09AB                 
CODE_12D0E4:        8D AF 09      STA $09AF                 
CODE_12D0E7:        09 40         ORA #$40                  
CODE_12D0E9:        8D B3 09      STA $09B3                 
CODE_12D0EC:        8D B7 09      STA $09B7                 
CODE_12D0EF:        8D BB 09      STA $09BB                 
CODE_12D0F2:        A9 00         LDA #$00                  
CODE_12D0F4:        8D 88 0A      STA $0A88                 
CODE_12D0F7:        8D 89 0A      STA $0A89                 
CODE_12D0FA:        8D 8A 0A      STA $0A8A                 
CODE_12D0FD:        8D 8B 0A      STA $0A8B                 
CODE_12D100:        8D 8C 0A      STA $0A8C                 
CODE_12D103:        8D 8D 0A      STA $0A8D                 
CODE_12D106:        8D 8E 0A      STA $0A8E                 
CODE_12D109:        A2 06         LDX #$06                  
CODE_12D10B:        C0 02         CPY #$02                  
CODE_12D10D:        F0 02         BEQ CODE_12D111           
CODE_12D10F:        A2 0C         LDX #$0C                  
CODE_12D111:        8A            TXA                       
CODE_12D112:        25 10         AND $10                   
CODE_12D114:        4A            LSR A                     
CODE_12D115:        C0 02         CPY #$02                  
CODE_12D117:        F0 01         BEQ CODE_12D11A           
CODE_12D119:        4A            LSR A                     
CODE_12D11A:        85 00         STA $00                   
CODE_12D11C:        98            TYA                       
CODE_12D11D:        0A            ASL A                     
CODE_12D11E:        0A            ASL A                     
CODE_12D11F:        18            CLC                       
CODE_12D120:        65 00         ADC $00                   
CODE_12D122:        AA            TAX                       
CODE_12D123:        BF B7 CF 12   LDA.l DATA_12CFB7,x             
CODE_12D127:        0A            ASL A                     
CODE_12D128:        0A            ASL A                     
CODE_12D129:        AA            TAX                       
CODE_12D12A:        BF 9B CF 12   LDA.l DATA_12CF9B,x             
CODE_12D12E:        C9 FF         CMP #$FF                  
CODE_12D130:        D0 08         BNE CODE_12D13A           
CODE_12D132:        A9 F0         LDA #$F0                  
CODE_12D134:        8D A1 09      STA $09A1                 
CODE_12D137:        8D B9 09      STA $09B9                 
CODE_12D13A:        8D A2 09      STA $09A2                 
CODE_12D13D:        8D BA 09      STA $09BA                 
CODE_12D140:        BF 9C CF 12   LDA.l DATA_12CF9C,x             
CODE_12D144:        C9 FF         CMP #$FF                  
CODE_12D146:        D0 08         BNE CODE_12D150           
CODE_12D148:        A9 F0         LDA #$F0                  
CODE_12D14A:        8D A5 09      STA $09A5                 
CODE_12D14D:        8D B5 09      STA $09B5                 
CODE_12D150:        8D A6 09      STA $09A6                 
CODE_12D153:        8D B6 09      STA $09B6                 
CODE_12D156:        BF 9D CF 12   LDA.l DATA_12CF9D,x             
CODE_12D15A:        C9 FF         CMP #$FF                  
CODE_12D15C:        D0 08         BNE CODE_12D166           
CODE_12D15E:        A9 F0         LDA #$F0                  
CODE_12D160:        8D A9 09      STA $09A9                 
CODE_12D163:        8D B1 09      STA $09B1                 
CODE_12D166:        8D AA 09      STA $09AA                 
CODE_12D169:        8D B2 09      STA $09B2                 
CODE_12D16C:        BF 9E CF 12   LDA.l DATA_12CF9E,x             
CODE_12D170:        C9 FF         CMP #$FF                  
CODE_12D172:        D0 05         BNE CODE_12D179           
CODE_12D174:        A9 F0         LDA #$F0                  
CODE_12D176:        8D AD 09      STA $09AD                 
CODE_12D179:        8D AE 09      STA $09AE                 
CODE_12D17C:        C0 02         CPY #$02                  
CODE_12D17E:        F0 0E         BEQ CODE_12D18E           
CODE_12D180:        A9 F0         LDA #$F0                  
CODE_12D182:        8D AD 09      STA $09AD                 
CODE_12D185:        8D B1 09      STA $09B1                 
CODE_12D188:        8D B5 09      STA $09B5                 
CODE_12D18B:        8D B9 09      STA $09B9                 
CODE_12D18E:        A6 12         LDX $12                   
CODE_12D190:        60            RTS                       
                       
CODE_12D191:        B5 A8         LDA $A8,x                 
CODE_12D193:        C9 01         CMP #$01                  
CODE_12D195:        D0 0E         BNE CODE_12D1A5           
CODE_12D197:        95 B1         STA $B1,x                 
CODE_12D199:        8D C8 04      STA $04C8                 
CODE_12D19C:        A9 35         LDA #$35                  
CODE_12D19E:        8D E3 1D      STA $1DE3                 
CODE_12D1A1:        A9 FE         LDA #$FE                  
CODE_12D1A3:        95 47         STA $47,x                 
CODE_12D1A5:        20 92 B6      JSR CODE_12B692           
CODE_12D1A8:        A5 EE         LDA $EE                   
CODE_12D1AA:        D0 E2         BNE CODE_12D18E           
CODE_12D1AC:        AD 2C 04      LDA $042C                 
CODE_12D1AF:        85 00         STA $00                   
CODE_12D1B1:        AD 29 04      LDA $0429                 
CODE_12D1B4:        38            SEC                       
CODE_12D1B5:        E9 08         SBC #$08                  
CODE_12D1B7:        85 01         STA $01                   
CODE_12D1B9:        A9 02         LDA #$02                  
CODE_12D1BB:        85 02         STA $02                   
CODE_12D1BD:        85 05         STA $05                   
CODE_12D1BF:        85 0C         STA $0C                   
CODE_12D1C1:        DA            PHX                       
CODE_12D1C2:        B5 90         LDA $90,x                 
CODE_12D1C4:        AA            TAX                       
CODE_12D1C5:        BF A5 EB 15   LDA.l DATA_15EBA5,x             
CODE_12D1C9:        29 0F         AND #$0F                  
CODE_12D1CB:        8D 13 02      STA $0213                 
CODE_12D1CE:        FA            PLX                       
CODE_12D1CF:        B5 65         LDA $65,x                 
CODE_12D1D1:        29 20         AND #$20                  
CODE_12D1D3:        85 03         STA $03                   
CODE_12D1D5:        A9 40         LDA #$40                  
CODE_12D1D7:        8D F8 02      STA $02F8                 
CODE_12D1DA:        9C F9 02      STZ $02F9                 
CODE_12D1DD:        A2 94         LDX #$94                  
CODE_12D1DF:        20 D0 BE      JSR CODE_12BED0           
CODE_12D1E2:        A5 01         LDA $01                   
CODE_12D1E4:        18            CLC                       
CODE_12D1E5:        69 10         ADC #$10                  
CODE_12D1E7:        85 01         STA $01                   
CODE_12D1E9:        C6 02         DEC $02                   
CODE_12D1EB:        AD 2C 04      LDA $042C                 
CODE_12D1EE:        85 00         STA $00                   
CODE_12D1F0:        A9 50         LDA #$50                  
CODE_12D1F2:        8D F8 02      STA $02F8                 
CODE_12D1F5:        9C F9 02      STZ $02F9                 
CODE_12D1F8:        A2 94         LDX #$94                  
CODE_12D1FA:        4C D0 BE      JMP CODE_12BED0           
 
DATA_12D1FD:        db $7C,$DC,$80,$E0

DATA_12D201:        db $80,$E0,$7C,$DC

DATA_12D205:        db $EC,$EE,$EC,$EE
              
CODE_12D209:        BD 6E 04      LDA $046E,x
CODE_12D20C:        8D 1E 07      STA $071E                
CODE_12D20F:        64 ED         STZ $ED
CODE_12D211:        A9 10         LDA #$10                
CODE_12D213:        8D 1A 07      STA $071A                 
CODE_12D216:        BD 5C 04      LDA $045C,x               
CODE_12D219:        F0 07         BEQ CODE_12D222           
CODE_12D21B:        F6 9F         INC $9F,x                 
CODE_12D21D:        A9 08         LDA #$08                  
CODE_12D21F:        8D 1A 07      STA $071A                 
CODE_12D222:        B5 9F         LDA $9F,x                 
CODE_12D224:        29 08         AND #$08                  
CODE_12D226:        4A            LSR A                     
CODE_12D227:        4A            LSR A                     
CODE_12D228:        4A            LSR A                     
CODE_12D229:        85 07         STA $07                   
CODE_12D22B:        A4 07         LDY $07                   
CODE_12D22D:        AD 29 04      LDA $0429                 
CODE_12D230:        8D 20 07      STA $0720                 
CODE_12D233:        48            PHA                       
CODE_12D234:        18            CLC                       
CODE_12D235:        79 F1 9A      ADC.w DATA_119AF1,y               
CODE_12D238:        8D 29 04      STA $0429                 
CODE_12D23B:        B5 9F         LDA $9F,x                 
CODE_12D23D:        48            PHA                       
CODE_12D23E:        29 18         AND #$18                  
CODE_12D240:        4A            LSR A                     
CODE_12D241:        4A            LSR A                     
CODE_12D242:        4A            LSR A                     
CODE_12D243:        8D 18 07      STA $0718                 
CODE_12D246:        68            PLA                       
CODE_12D247:        29 0C         AND #$0C                  
CODE_12D249:        4A            LSR A                     
CODE_12D24A:        4A            LSR A                     
CODE_12D24B:        8D 19 07      STA $0719                 
CODE_12D24E:        BD 6E 04      LDA $046E,x               
CODE_12D251:        29 7F         AND #$7F                  
CODE_12D253:        9D 6E 04      STA $046E,x               
CODE_12D256:        A0 00         LDY #$00                  
CODE_12D258:        B5 9F         LDA $9F,x                 
CODE_12D25A:        2D 1A 07      AND $071A                 
CODE_12D25D:        F0 02         BEQ CODE_12D261           
CODE_12D25F:        A0 40         LDY #$40                  
CODE_12D261:        8C 49 02      STY $0249                 
CODE_12D264:        AD 18 07      LDA $0718                 
CODE_12D267:        BC 5C 04      LDY $045C,x               
CODE_12D26A:        F0 03         BEQ CODE_12D26F           
CODE_12D26C:        AD 19 07      LDA $0719                 
CODE_12D26F:        DA            PHX                       
CODE_12D270:        AA            TAX                       
CODE_12D271:        BF FD D1 12   LDA.l DATA_12D1FD,x             
CODE_12D275:        FA            PLX                       
CODE_12D276:        20 D5 BD      JSR CODE_12BDD5           
CODE_12D279:        22 83 E4 14   JSL CODE_14E483           
CODE_12D27D:        AD F8 02      LDA $02F8                 
CODE_12D280:        8D F6 02      STA $02F6                 
CODE_12D283:        AD F9 02      LDA $02F9                 
CODE_12D286:        8D F7 02      STA $02F7                 
CODE_12D289:        68            PLA                       
CODE_12D28A:        18            CLC                       
CODE_12D28B:        A4 07         LDY $07                   
CODE_12D28D:        79 F2 9A      ADC.w DATA_119AF2,y               
CODE_12D290:        8D 29 04      STA $0429                 
CODE_12D293:        AD 18 07      LDA $0718                 
CODE_12D296:        BC 5C 04      LDY $045C,x               
CODE_12D299:        F0 03         BEQ CODE_12D29E           
CODE_12D29B:        AD 19 07      LDA $0719                 
CODE_12D29E:        DA            PHX                       
CODE_12D29F:        AA            TAX                       
CODE_12D2A0:        BF 01 D2 12   LDA.l DATA_12D201,x             
CODE_12D2A4:        FA            PLX                       
CODE_12D2A5:        20 D5 BD      JSR CODE_12BDD5           
CODE_12D2A8:        B5 9F         LDA $9F,x                 
CODE_12D2AA:        8D 21 07      STA $0721                 
CODE_12D2AD:        B5 65         LDA $65,x                 
CODE_12D2AF:        48            PHA                       
CODE_12D2B0:        29 BF         AND #$BF                  
CODE_12D2B2:        95 65         STA $65,x                 
CODE_12D2B4:        74 9F         STZ $9F,x                 
CODE_12D2B6:        AD 20 07      LDA $0720                 
CODE_12D2B9:        18            CLC                       
CODE_12D2BA:        69 F8         ADC #$F8                  
CODE_12D2BC:        8D 29 04      STA $0429                 
CODE_12D2BF:        AD 2C 04      LDA $042C                 
CODE_12D2C2:        18            CLC                       
CODE_12D2C3:        69 0E         ADC #$0E                  
CODE_12D2C5:        8D 2C 04      STA $042C                 
CODE_12D2C8:        A9 20         LDA #$20                  
CODE_12D2CA:        8D F8 02      STA $02F8                 
CODE_12D2CD:        8D F6 02      STA $02F6                 
CODE_12D2D0:        9C F9 02      STZ $02F9                 
CODE_12D2D3:        9C F7 02      STZ $02F7                 
CODE_12D2D6:        BC 5C 04      LDY $045C,x               
CODE_12D2D9:        F0 04         BEQ CODE_12D2DF           
CODE_12D2DB:        A9 F0         LDA #$F0                  
CODE_12D2DD:        80 0C         BRA CODE_12D2EB           
      
CODE_12D2DF:        9C 49 02      STZ $0249                 
CODE_12D2E2:        DA            PHX                       
CODE_12D2E3:        AE 18 07      LDX $0718                 
CODE_12D2E6:        BF 05 D2 12   LDA.l DATA_12D205,x             
CODE_12D2EA:        FA            PLX                       
CODE_12D2EB:        20 D5 BD      JSR CODE_12BDD5           
CODE_12D2EE:        68            PLA                       
CODE_12D2EF:        95 65         STA $65,x                 
CODE_12D2F1:        AD 21 07      LDA $0721                 
CODE_12D2F4:        95 9F         STA $9F,x                 
CODE_12D2F6:        AD 1E 07      LDA $071E                 
CODE_12D2F9:        9D 6E 04      STA $046E,x               
CODE_12D2FC:        60            RTS
                       
CODE_12D2FD:        20 96 9F      JSR CODE_129F96           
CODE_12D300:        A9 04         LDA #$04                  
CODE_12D302:        9D 65 04      STA $0465,x               
CODE_12D305:        A9 00         LDA #$00                  
CODE_12D307:        95 79         STA $79,x                 
CODE_12D309:        60            RTS
                       
CODE_12D30A:        A9 02         LDA #$02                  
CODE_12D30C:        95 6F         STA $6F,x                 
CODE_12D30E:        F6 9F         INC $9F,x                 
CODE_12D310:        BC 65 04      LDY $0465,x               
CODE_12D313:        88            DEY                       
CODE_12D314:        D0 50         BNE CODE_12D366           
CODE_12D316:        A9 03         LDA #$03                  
CODE_12D318:        85 09         STA $09                   
CODE_12D31A:        8D F9 04      STA $04F9                 
CODE_12D31D:        20 3B A8      JSR CODE_12A83B           
CODE_12D320:        20 35 B3      JSR CODE_12B335           
CODE_12D323:        30 3D         BMI CODE_12D362           
CODE_12D325:        A4 00         LDY $00                   
CODE_12D327:        B5 1F         LDA $1F,x                 
CODE_12D329:        99 F0 04      STA $04F0,y               
CODE_12D32C:        A9 F0         LDA #$F0                  
CODE_12D32E:        99 47 00      STA $0047,y               
CODE_12D331:        A9 2B         LDA #$2B                  
CODE_12D333:        99 90 00      STA $0090,y               
CODE_12D336:        A9 30         LDA #$30                  
CODE_12D338:        99 53 04      STA $0453,y               
CODE_12D33B:        B5 33         LDA $33,x                 
CODE_12D33D:        48            PHA                       
CODE_12D33E:        A6 09         LDX $09                   
CODE_12D340:        BD F4 9A      LDA.w DATA_119AF4,x               
CODE_12D343:        99 3D 00      STA $003D,y               
CODE_12D346:        AD 29 04      LDA $0429                 
CODE_12D349:        7D F8 9A      ADC.w DATA_119AF8,x               
CODE_12D34C:        99 29 00      STA $0029,y               
CODE_12D34F:        68            PLA                       
CODE_12D350:        7D FC 9A      ADC.w DATA_119AFC,x               
CODE_12D353:        99 33 00      STA $0033,y               
CODE_12D356:        A9 00         LDA #$00                  
CODE_12D358:        99 15 00      STA $0015,y               
CODE_12D35B:        98            TYA                       
CODE_12D35C:        AA            TAX                       
CODE_12D35D:        20 7A 9F      JSR CODE_129F7A           
CODE_12D360:        A6 12         LDX $12                   
CODE_12D362:        C6 09         DEC $09                   
CODE_12D364:        10 BA         BPL CODE_12D320           
CODE_12D366:        A5 10         LDA $10                   
CODE_12D368:        29 1F         AND #$1F                  
CODE_12D36A:        D0 1F         BNE CODE_12D38B           
CODE_12D36C:        20 35 B3      JSR CODE_12B335           
CODE_12D36F:        A6 00         LDX $00                   
CODE_12D371:        A9 20         LDA #$20                  
CODE_12D373:        95 90         STA $90,x                 
CODE_12D375:        A9 27         LDA #$27                  
CODE_12D377:        8D E3 1D      STA $1DE3                 
CODE_12D37A:        B5 29         LDA $29,x                 
CODE_12D37C:        E9 08         SBC #$08                  
CODE_12D37E:        95 29         STA $29,x                 
CODE_12D380:        B5 33         LDA $33,x                 
CODE_12D382:        69 18         ADC #$18                  
CODE_12D384:        95 33         STA $33,x                 
CODE_12D386:        20 CA 9F      JSR CODE_129FCA           
CODE_12D389:        A6 12         LDX $12                   
CODE_12D38B:        A5 10         LDA $10                   
CODE_12D38D:        29 01         AND #$01                  
CODE_12D38F:        D0 2A         BNE CODE_12D3BB           
CODE_12D391:        B5 79         LDA $79,x                 
CODE_12D393:        29 01         AND #$01                  
CODE_12D395:        A8            TAY                       
CODE_12D396:        B5 47         LDA $47,x                 
CODE_12D398:        18            CLC                       
CODE_12D399:        79 04 9B      ADC.w DATA_119B04,y               
CODE_12D39C:        95 47         STA $47,x                 
CODE_12D39E:        D9 06 9B      CMP.w DATA_119B06,y               
CODE_12D3A1:        D0 02         BNE CODE_12D3A5           
CODE_12D3A3:        F6 79         INC $79,x                 
CODE_12D3A5:        BD 77 04      LDA $0477,x               
CODE_12D3A8:        29 01         AND #$01                  
CODE_12D3AA:        A8            TAY                       
CODE_12D3AB:        B5 3D         LDA $3D,x                 
CODE_12D3AD:        18            CLC                       
CODE_12D3AE:        79 00 9B      ADC.w DATA_119B00,y               
CODE_12D3B1:        95 3D         STA $3D,x                 
CODE_12D3B3:        D9 02 9B      CMP.w DATA_119B02,y               
CODE_12D3B6:        D0 03         BNE CODE_12D3BB           
CODE_12D3B8:        FE 77 04      INC $0477,x               
CODE_12D3BB:        20 09 D2      JSR CODE_12D209           
CODE_12D3BE:        20 EA C1      JSR CODE_12C1EA           
CODE_12D3C1:        4C EF C1      JMP CODE_12C1EF           

CODE_12D3C4:        B5 5B         LDA $5B,x                 
CODE_12D3C6:        29 10         AND #$10                  
CODE_12D3C8:        F0 11         BEQ CODE_12D3DB           
CODE_12D3CA:        20 52 E3      JSR CODE_12E352           
CODE_12D3CD:        9E 6E 04      STZ $046E,x               
CODE_12D3D0:        74 9F         STZ $9F,x                 
CODE_12D3D2:        A9 09         LDA #$09                  
CODE_12D3D4:        95 51         STA $51,x                 
CODE_12D3D6:        A9 1F         LDA #$1F                  
CODE_12D3D8:        95 86         STA $86,x                 
CODE_12D3DA:        60            RTS
                       
CODE_12D3DB:        A9 02         LDA #$02                  
CODE_12D3DD:        95 6F         STA $6F,x                 
CODE_12D3DF:        A5 10         LDA $10                   
CODE_12D3E1:        9D 4A 04      STA $044A,x               
CODE_12D3E4:        F6 9F         INC $9F,x                 
CODE_12D3E6:        B5 9F         LDA $9F,x                 
CODE_12D3E8:        29 10         AND #$10                  
CODE_12D3EA:        F0 02         BEQ CODE_12D3EE           
CODE_12D3EC:        D6 6F         DEC $6F,x                 
CODE_12D3EE:        20 AB DD      JSR CODE_12DDAB           
CODE_12D3F1:        20 29 BD      JSR CODE_12BD29           
CODE_12D3F4:        B5 5B         LDA $5B,x                 
CODE_12D3F6:        48            PHA                       
CODE_12D3F7:        29 04         AND #$04                  
CODE_12D3F9:        F0 07         BEQ CODE_12D402           
CODE_12D3FB:        20 59 B6      JSR CODE_12B659           
CODE_12D3FE:        A9 00         LDA #$00                  
CODE_12D400:        95 3D         STA $3D,x                 
CODE_12D402:        68            PLA                       
CODE_12D403:        29 03         AND #$03                  
CODE_12D405:        F0 06         BEQ CODE_12D40D           
CODE_12D407:        20 48 C2      JSR CODE_12C248           
CODE_12D40A:        20 3B B6      JSR CODE_12B63B           
CODE_12D40D:        8A            TXA                       
CODE_12D40E:        0A            ASL A                     
CODE_12D40F:        0A            ASL A                     
CODE_12D410:        0A            ASL A                     
CODE_12D411:        65 10         ADC $10                   
CODE_12D413:        AC F9 04      LDY $04F9                 
CODE_12D416:        39 08 9B      AND.w DATA_119B08,y               
CODE_12D419:        15 47         ORA $47,x                 
CODE_12D41B:        D0 16         BNE CODE_12D433           
CODE_12D41D:        AD 87 05      LDA $0587                 
CODE_12D420:        29 1F         AND #$1F                  
CODE_12D422:        19 0C 9B      ORA.w DATA_119B0C,y               
CODE_12D425:        95 47         STA $47,x                 
CODE_12D427:        20 CD 9F      JSR CODE_129FCD           
CODE_12D42A:        AD F9 04      LDA $04F9                 
CODE_12D42D:        C9 02         CMP #$02                  
CODE_12D42F:        B0 02         BCS CODE_12D433                   
CODE_12D431:        16 3D         ASL $3D,x                 
CODE_12D433:        A5 50         LDA $50                   
CODE_12D435:        C9 08         CMP #$08                  
CODE_12D437:        F0 06         BEQ CODE_12D43F           
CODE_12D439:        20 EF C1      JSR CODE_12C1EF           
CODE_12D43C:        4C B2 A0      JMP CODE_12A0B2           

CODE_12D43F:        60            RTS
                       
CODE_12D440:        B5 B1         LDA $B1,x                 
CODE_12D442:        D0 72         BNE CODE_12D4B6           
CODE_12D444:        B5 5B         LDA $5B,x                 
CODE_12D446:        29 10         AND #$10                  
CODE_12D448:        15 A8         ORA $A8,x                 
CODE_12D44A:        F0 6A         BEQ CODE_12D4B6           
CODE_12D44C:        A9 01         LDA #$01                  
CODE_12D44E:        95 90         STA $90,x                 
CODE_12D450:        20 7A 9F      JSR CODE_129F7A           
CODE_12D453:        BD 41 04      LDA $0441,x               
CODE_12D456:        85 06         STA $06                   
CODE_12D458:        A9 FF         LDA #$FF                  
CODE_12D45A:        9D 41 04      STA $0441,x               
CODE_12D45D:        20 35 B3      JSR CODE_12B335           
CODE_12D460:        30 54         BMI CODE_12D4B6           
CODE_12D462:        A4 00         LDY $00                   
CODE_12D464:        A5 06         LDA $06                   
CODE_12D466:        99 41 04      STA $0441,y               
CODE_12D469:        B5 29         LDA $29,x                 
CODE_12D46B:        99 29 00      STA $0029,y               
CODE_12D46E:        B5 15         LDA $15,x                 
CODE_12D470:        99 15 00      STA $0015,y               
CODE_12D473:        A6 00         LDX $00                   
CODE_12D475:        A9 26         LDA #$26                  
CODE_12D477:        95 90         STA $90,x                 
CODE_12D479:        20 CA 9F      JSR CODE_129FCA           
CODE_12D47C:        F6 B1         INC $B1,x                 
CODE_12D47E:        20 7A 9F      JSR CODE_129F7A           
CODE_12D481:        A9 04         LDA #$04                  
CODE_12D483:        9D 89 04      STA $0489,x               
CODE_12D486:        AD F6 02      LDA $02F6                 
CODE_12D489:        48            PHA                       
CODE_12D48A:        AD F7 02      LDA $02F7                 
CODE_12D48D:        48            PHA                       
CODE_12D48E:        DA            PHX                       
CODE_12D48F:        22 83 E4 14   JSL CODE_14E483           
CODE_12D493:        FA            PLX                       
CODE_12D494:        AD F8 02      LDA $02F8                 
CODE_12D497:        8D F6 02      STA $02F6                 
CODE_12D49A:        AD F9 02      LDA $02F9                 
CODE_12D49D:        8D F7 02      STA $02F7                 
CODE_12D4A0:        20 0D D5      JSR CODE_12D50D           
CODE_12D4A3:        68            PLA                       
CODE_12D4A4:        8D F7 02      STA $02F7                 
CODE_12D4A7:        68            PLA                       
CODE_12D4A8:        8D F6 02      STA $02F6                 
CODE_12D4AB:        A6 12         LDX $12                   
CODE_12D4AD:        AD 2C 04      LDA $042C                 
CODE_12D4B0:        18            CLC                       
CODE_12D4B1:        69 E5         ADC #$E5                  
CODE_12D4B3:        8D 2C 04      STA $042C                 
CODE_12D4B6:        20 16 BB      JSR CODE_12BB16           
CODE_12D4B9:        20 AB DD      JSR CODE_12DDAB           
CODE_12D4BC:        B5 5B         LDA $5B,x                 
CODE_12D4BE:        48            PHA                       
CODE_12D4BF:        29 04         AND #$04                  
CODE_12D4C1:        F0 03         BEQ CODE_12D4C6           
CODE_12D4C3:        20 59 B6      JSR CODE_12B659           
CODE_12D4C6:        68            PLA                       
CODE_12D4C7:        29 03         AND #$03                  
CODE_12D4C9:        F0 06         BEQ CODE_12D4D1           
CODE_12D4CB:        20 48 C2      JSR CODE_12C248           
CODE_12D4CE:        20 EF C1      JSR CODE_12C1EF           
CODE_12D4D1:        F6 9F         INC $9F,x                 
CODE_12D4D3:        B5 B1         LDA $B1,x                 
CODE_12D4D5:        D0 30         BNE CODE_12D507           
CODE_12D4D7:        8A            TXA                       
CODE_12D4D8:        0A            ASL A                     
CODE_12D4D9:        0A            ASL A                     
CODE_12D4DA:        0A            ASL A                     
CODE_12D4DB:        0A            ASL A                     
CODE_12D4DC:        65 10         ADC $10                   
CODE_12D4DE:        29 7F         AND #$7F                  
CODE_12D4E0:        D0 03         BNE CODE_12D4E5           
CODE_12D4E2:        20 CD 9F      JSR CODE_129FCD           
CODE_12D4E5:        B5 9F         LDA $9F,x                 
CODE_12D4E7:        29 7F         AND #$7F                  
CODE_12D4E9:        D0 1C         BNE CODE_12D507           
CODE_12D4EB:        20 CD 9F      JSR CODE_129FCD           
CODE_12D4EE:        20 76 B6      JSR CODE_12B676           
CODE_12D4F1:        30 14         BMI CODE_12D507           
CODE_12D4F3:        A9 17         LDA #$17                  
CODE_12D4F5:        8D E3 1D      STA $1DE3                 
CODE_12D4F8:        A6 00         LDX $00                   
CODE_12D4FA:        A9 27         LDA #$27                  
CODE_12D4FC:        20 0D B0      JSR CODE_12B00D           
CODE_12D4FF:        A6 00         LDX $00                   
CODE_12D501:        D6 33         DEC $33,x                 
CODE_12D503:        D6 33         DEC $33,x                 
CODE_12D505:        A6 12         LDX $12                   
CODE_12D507:        20 AA A0      JSR CODE_12A0AA           
CODE_12D50A:        4C 29 BD      JMP CODE_12BD29           

CODE_12D50D:        B5 51         LDA $51,x                 
CODE_12D50F:        C9 01         CMP #$01                  
CODE_12D511:        F0 0B         BEQ CODE_12D51E           
CODE_12D513:        A9 C1         LDA #$C1                  
CODE_12D515:        95 65         STA $65,x                 
CODE_12D517:        95 9F         STA $9F,x                 
CODE_12D519:        A9 72         LDA #$72                  
CODE_12D51B:        4C D5 BD      JMP CODE_12BDD5           

CODE_12D51E:        B5 B1         LDA $B1,x                 
CODE_12D520:        D0 3A         BNE CODE_12D55C           
CODE_12D522:        AD F6 02      LDA $02F6                 
CODE_12D525:        48            PHA                       
CODE_12D526:        AD F7 02      LDA $02F7                 
CODE_12D529:        48            PHA                       
CODE_12D52A:        AD 2C 04      LDA $042C                 
CODE_12D52D:        18            CLC                       
CODE_12D52E:        69 F5         ADC #$F5                  
CODE_12D530:        8D 2C 04      STA $042C                 
CODE_12D533:        DA            PHX                       
CODE_12D534:        22 83 E4 14   JSL CODE_14E483           
CODE_12D538:        FA            PLX                       
CODE_12D539:        AD F8 02      LDA $02F8                 
CODE_12D53C:        8D F6 02      STA $02F6                 
CODE_12D53F:        AD F9 02      LDA $02F9                 
CODE_12D542:        8D F7 02      STA $02F7                 
CODE_12D545:        A9 02         LDA #$02                  
CODE_12D547:        9D 5C 04      STA $045C,x               
CODE_12D54A:        DA            PHX                       
CODE_12D54B:        A9 78         LDA #$78                  
CODE_12D54D:        20 D5 BD      JSR CODE_12BDD5           
CODE_12D550:        FA            PLX                       
CODE_12D551:        9E 5C 04      STZ $045C,x               
CODE_12D554:        68            PLA                       
CODE_12D555:        8D F7 02      STA $02F7                 
CODE_12D558:        68            PLA                       
CODE_12D559:        8D F6 02      STA $02F6                 
CODE_12D55C:        B5 33         LDA $33,x                 
CODE_12D55E:        8D 2C 04      STA $042C                 
CODE_12D561:        DA            PHX                       
CODE_12D562:        20 C9 BD      JSR CODE_12BDC9           
CODE_12D565:        FA            PLX                       
CODE_12D566:        A9 02         LDA #$02                  
CODE_12D568:        95 6F         STA $6F,x                 
CODE_12D56A:        C2 20         REP #$20                  
CODE_12D56C:        AD F6 02      LDA $02F6                 
CODE_12D56F:        18            CLC                       
CODE_12D570:        69 04 00      ADC #$0004                
CODE_12D573:        8D F6 02      STA $02F6                 
CODE_12D576:        E2 20         SEP #$20                  
CODE_12D578:        A5 00         LDA $00                   
CODE_12D57A:        8D 2C 04      STA $042C                 
CODE_12D57D:        A9 D0         LDA #$D0                  
CODE_12D57F:        9D 6E 04      STA $046E,x               
CODE_12D582:        DA            PHX                       
CODE_12D583:        A9 74         LDA #$74                  
CODE_12D585:        20 D5 BD      JSR CODE_12BDD5           
CODE_12D588:        FA            PLX                       
CODE_12D589:        A9 50         LDA #$50                  
CODE_12D58B:        B4 B1         LDY $B1,x                 
CODE_12D58D:        F0 02         BEQ CODE_12D591           
CODE_12D58F:        A9 52         LDA #$52                  
CODE_12D591:        9D 6E 04      STA $046E,x               
CODE_12D594:        60            RTS
                       
CODE_12D595:        20 96 9F      JSR CODE_129F96           
CODE_12D598:        B5 33         LDA $33,x                 
CODE_12D59A:        95 B1         STA $B1,x                 
CODE_12D59C:        60            RTS
                       
CODE_12D59D:        F6 9F         INC $9F,x                 
CODE_12D59F:        F6 9F         INC $9F,x                 
CODE_12D5A1:        F6 79         INC $79,x                 
CODE_12D5A3:        B5 79         LDA $79,x                 
CODE_12D5A5:        C9 40         CMP #$40                  
CODE_12D5A7:        B0 05         BCS CODE_12D5AE                   
CODE_12D5A9:        A9 E0         LDA #$E0                  
CODE_12D5AB:        95 33         STA $33,x                 
CODE_12D5AD:        60            RTS

CODE_12D5AE:        D0 0D         BNE CODE_12D5BD           
CODE_12D5B0:        A9 D0         LDA #$D0                  
CODE_12D5B2:        95 47         STA $47,x                 
CODE_12D5B4:        B5 B1         LDA $B1,x                 
CODE_12D5B6:        95 33         STA $33,x                 
CODE_12D5B8:        A9 49         LDA #$49                  
CODE_12D5BA:        8D E3 1D      STA $1DE3                 
CODE_12D5BD:        B5 79         LDA $79,x                 
CODE_12D5BF:        C9 80         CMP #$80                  
CODE_12D5C1:        90 0E         BCC CODE_12D5D1           
CODE_12D5C3:        C9 DC         CMP #$DC                  
CODE_12D5C5:        B0 0A         BCS CODE_12D5D1                   
CODE_12D5C7:        A0 03         LDY #$03                  
CODE_12D5C9:        29 10         AND #$10                  
CODE_12D5CB:        F0 02         BEQ CODE_12D5CF           
CODE_12D5CD:        A0 FB         LDY #$FB                  
CODE_12D5CF:        94 47         STY $47,x                 
CODE_12D5D1:        F6 47         INC $47,x                 
CODE_12D5D3:        20 EA C1      JSR CODE_12C1EA           
CODE_12D5D6:        B5 79         LDA $79,x                 
CODE_12D5D8:        85 07         STA $07                   
CODE_12D5DA:        A9 29         LDA #$29                  
CODE_12D5DC:        95 65         STA $65,x                 
CODE_12D5DE:        B4 79         LDY $79,x                 
CODE_12D5E0:        C0 DC         CPY #$DC                  
CODE_12D5E2:        90 18         BCC CODE_12D5FC           
CODE_12D5E4:        A9 9E         LDA #$9E                  
CODE_12D5E6:        C0 F4         CPY #$F4                  
CODE_12D5E8:        90 02         BCC CODE_12D5EC           
CODE_12D5EA:        A9 9F         LDA #$9F                  
CODE_12D5EC:        85 04         STA $04                   
CODE_12D5EE:        22 83 E4 14   JSL CODE_14E483           
CODE_12D5F2:        20 3A D7      JSR CODE_12D73A           
CODE_12D5F5:        C2 10         REP #$10                  
CODE_12D5F7:        AE F8 02      LDX $02F8                 
CODE_12D5FA:        80 16         BRA CODE_12D612           
CODE_12D5FC:        64 04         STZ $04                   
CODE_12D5FE:        A9 90         LDA #$90                  
CODE_12D600:        20 D5 BD      JSR CODE_12BDD5           
CODE_12D603:        C2 10         REP #$10                  
CODE_12D605:        AE F6 02      LDX $02F6                 
CODE_12D608:        BD 03 08      LDA $0803,x               
CODE_12D60B:        29 CF         AND #$CF                  
CODE_12D60D:        09 20         ORA #$20                  
CODE_12D60F:        9D 03 08      STA $0803,x               
CODE_12D612:        BD 03 08      LDA $0803,x               
CODE_12D615:        85 05         STA $05                   
CODE_12D617:        E2 10         SEP #$10                  
CODE_12D619:        A6 12         LDX $12                   
CODE_12D61B:        A5 EE         LDA $EE                   
CODE_12D61D:        D0 8E         BNE CODE_12D5AD           
CODE_12D61F:        64 ED         STZ $ED                   
CODE_12D621:        AD 29 04      LDA $0429                 
CODE_12D624:        18            CLC                       
CODE_12D625:        69 04         ADC #$04                  
CODE_12D627:        AD 1F 02      LDA $021F                 
CODE_12D62A:        69 00         ADC #$00                  
CODE_12D62C:        F0 04         BEQ CODE_12D632           
CODE_12D62E:        A9 04         LDA #$04                  
CODE_12D630:        85 ED         STA $ED                   
CODE_12D632:        22 83 E4 14   JSL CODE_14E483           
CODE_12D636:        A9 E0         LDA #$E0                  
CODE_12D638:        85 02         STA $02                   
CODE_12D63A:        A9 E4         LDA #$E4                  
CODE_12D63C:        85 03         STA $03                   
CODE_12D63E:        A6 12         LDX $12                   
CODE_12D640:        B5 33         LDA $33,x                 
CODE_12D642:        8D 12 07      STA $0712                 
CODE_12D645:        B5 1F         LDA $1F,x                 
CODE_12D647:        8D 13 07      STA $0713                 
CODE_12D64A:        C2 20         REP #$20                  
CODE_12D64C:        AD 12 07      LDA $0712                 
CODE_12D64F:        18            CLC                       
CODE_12D650:        69 0F 00      ADC #$000F                
CODE_12D653:        8D 12 07      STA $0712                 
CODE_12D656:        69 08 00      ADC #$0008                
CODE_12D659:        8D 14 07      STA $0714                 
CODE_12D65C:        E2 20         SEP #$20                  
CODE_12D65E:        08            PHP                       
CODE_12D65F:        20 D6 D6      JSR CODE_12D6D6           
CODE_12D662:        22 83 E4 14   JSL CODE_14E483           
CODE_12D666:        A9 E8         LDA #$E8                  
CODE_12D668:        85 02         STA $02                   
CODE_12D66A:        A9 EC         LDA #$EC                  
CODE_12D66C:        85 03         STA $03                   
CODE_12D66E:        A6 12         LDX $12                   
CODE_12D670:        28            PLP                       
CODE_12D671:        C2 20         REP #$20                  
CODE_12D673:        AD 14 07      LDA $0714                 
CODE_12D676:        69 08 00      ADC #$0008                
CODE_12D679:        8D 12 07      STA $0712                 
CODE_12D67C:        69 08 00      ADC #$0008                
CODE_12D67F:        8D 14 07      STA $0714                 
CODE_12D682:        E2 20         SEP #$20                  
CODE_12D684:        08            PHP                       
CODE_12D685:        20 D6 D6      JSR CODE_12D6D6           
CODE_12D688:        22 83 E4 14   JSL CODE_14E483           
CODE_12D68C:        A9 F0         LDA #$F0                  
CODE_12D68E:        85 02         STA $02                   
CODE_12D690:        A9 F4         LDA #$F4                  
CODE_12D692:        85 03         STA $03                   
CODE_12D694:        A6 12         LDX $12                   
CODE_12D696:        28            PLP                       
CODE_12D697:        C2 20         REP #$20                  
CODE_12D699:        AD 14 07      LDA $0714                 
CODE_12D69C:        69 08 00      ADC #$0008                
CODE_12D69F:        8D 12 07      STA $0712                 
CODE_12D6A2:        69 08 00      ADC #$0008                
CODE_12D6A5:        8D 14 07      STA $0714                 
CODE_12D6A8:        E2 20         SEP #$20                  
CODE_12D6AA:        08            PHP                       
CODE_12D6AB:        20 D6 D6      JSR CODE_12D6D6           
CODE_12D6AE:        22 83 E4 14   JSL CODE_14E483           
CODE_12D6B2:        A9 F8         LDA #$F8                  
CODE_12D6B4:        85 02         STA $02                   
CODE_12D6B6:        A9 FC         LDA #$FC                  
CODE_12D6B8:        85 03         STA $03                   
CODE_12D6BA:        A6 12         LDX $12                   
CODE_12D6BC:        28            PLP                       
CODE_12D6BD:        C2 20         REP #$20                  
CODE_12D6BF:        AD 14 07      LDA $0714                 
CODE_12D6C2:        69 08 00      ADC #$0008                
CODE_12D6C5:        8D 12 07      STA $0712                 
CODE_12D6C8:        69 08 00      ADC #$0008                
CODE_12D6CB:        8D 14 07      STA $0714                 
CODE_12D6CE:        E2 20         SEP #$20                  
CODE_12D6D0:        20 D6 D6      JSR CODE_12D6D6           
CODE_12D6D3:        A6 12         LDX $12                   
CODE_12D6D5:        60            RTS
                       
CODE_12D6D6:        C2 20         REP #$20                  
CODE_12D6D8:        AD 12 07      LDA $0712                 
CODE_12D6DB:        C9 F0 00      CMP #$00F0                
CODE_12D6DE:        E2 20         SEP #$20                  
CODE_12D6E0:        B0 F3         BCS CODE_12D6D5                   
CODE_12D6E2:        A9 8E         LDA #$8E                  
CODE_12D6E4:        A6 07         LDX $07                   
CODE_12D6E6:        E4 02         CPX $02                   
CODE_12D6E8:        90 02         BCC CODE_12D6EC           
CODE_12D6EA:        A5 04         LDA $04                   
CODE_12D6EC:        48            PHA                       
CODE_12D6ED:        A9 8E         LDA #$8E                  
CODE_12D6EF:        E4 03         CPX $03                   
CODE_12D6F1:        90 02         BCC CODE_12D6F5           
CODE_12D6F3:        A5 04         LDA $04                   
CODE_12D6F5:        48            PHA                       
CODE_12D6F6:        C2 10         REP #$10                  
CODE_12D6F8:        AC F8 02      LDY $02F8                 
CODE_12D6FB:        68            PLA                       
CODE_12D6FC:        99 06 08      STA $0806,y               
CODE_12D6FF:        68            PLA                       
CODE_12D700:        99 02 08      STA $0802,y               
CODE_12D703:        A5 05         LDA $05                   
CODE_12D705:        99 03 08      STA $0803,y               
CODE_12D708:        99 07 08      STA $0807,y               
CODE_12D70B:        AD 29 04      LDA $0429                 
CODE_12D70E:        18            CLC                       
CODE_12D70F:        69 04         ADC #$04                  
CODE_12D711:        99 00 08      STA $0800,y               
CODE_12D714:        99 04 08      STA $0804,y               
CODE_12D717:        AD 12 07      LDA $0712                 
CODE_12D71A:        99 01 08      STA $0801,y               
CODE_12D71D:        AD 14 07      LDA $0714                 
CODE_12D720:        99 05 08      STA $0805,y               
CODE_12D723:        C2 20         REP #$20                  
CODE_12D725:        98            TYA                       
CODE_12D726:        4A            LSR A                     
CODE_12D727:        4A            LSR A                     
CODE_12D728:        A8            TAY                       
CODE_12D729:        E2 20         SEP #$20                  
CODE_12D72B:        A5 ED         LDA $ED                   
CODE_12D72D:        29 04         AND #$04                  
CODE_12D72F:        4A            LSR A                     
CODE_12D730:        4A            LSR A                     
CODE_12D731:        99 20 0A      STA $0A20,y               
CODE_12D734:        99 21 0A      STA $0A21,y               
CODE_12D737:        E2 10         SEP #$10                  
CODE_12D739:        60            RTS
                       
CODE_12D73A:        20 41 D7      JSR CODE_12D741           
CODE_12D73D:        22 83 E4 14   JSL CODE_14E483           
CODE_12D741:        C2 10         REP #$10                  
CODE_12D743:        AC F8 02      LDY $02F8                 
CODE_12D746:        AD 29 04      LDA $0429                 
CODE_12D749:        99 00 08      STA $0800,y               
CODE_12D74C:        18            CLC                       
CODE_12D74D:        69 08         ADC #$08                  
CODE_12D74F:        99 04 08      STA $0804,y               
CODE_12D752:        AD 2C 04      LDA $042C                 
CODE_12D755:        99 01 08      STA $0801,y               
CODE_12D758:        99 05 08      STA $0805,y               
CODE_12D75B:        A5 04         LDA $04                   
CODE_12D75D:        99 02 08      STA $0802,y               
CODE_12D760:        99 06 08      STA $0806,y               
CODE_12D763:        A2 00 00      LDX #$0000                
CODE_12D766:        A5 10         LDA $10                   
CODE_12D768:        29 04         AND #$04                  
CODE_12D76A:        F0 03         BEQ CODE_12D76F           
CODE_12D76C:        A2 40 00      LDX #$0040                
CODE_12D76F:        8A            TXA                       
CODE_12D770:        09 03         ORA #$03                  
CODE_12D772:        99 03 08      STA $0803,y               
CODE_12D775:        99 07 08      STA $0807,y               
CODE_12D778:        C2 20         REP #$20                  
CODE_12D77A:        98            TYA                       
CODE_12D77B:        4A            LSR A                     
CODE_12D77C:        4A            LSR A                     
CODE_12D77D:        A8            TAY                       
CODE_12D77E:        E2 20         SEP #$20                  
CODE_12D780:        A5 ED         LDA $ED                   
CODE_12D782:        29 08         AND #$08                  
CODE_12D784:        4A            LSR A                     
CODE_12D785:        4A            LSR A                     
CODE_12D786:        4A            LSR A                     
CODE_12D787:        99 20 0A      STA $0A20,y               
CODE_12D78A:        A5 ED         LDA $ED                   
CODE_12D78C:        29 04         AND #$04                  
CODE_12D78E:        4A            LSR A                     
CODE_12D78F:        4A            LSR A                     
CODE_12D790:        99 21 0A      STA $0A21,y               
CODE_12D793:        E2 10         SEP #$10                  
CODE_12D795:        60            RTS
                       
CODE_12D796:        F6 9F         INC $9F,x                 
CODE_12D798:        20 16 BB      JSR CODE_12BB16           
CODE_12D79B:        20 46 BA      JSR CODE_12BA46           
CODE_12D79E:        20 AB DD      JSR CODE_12DDAB           
CODE_12D7A1:        B5 5B         LDA $5B,x                 
CODE_12D7A3:        29 03         AND #$03                  
CODE_12D7A5:        F0 03         BEQ CODE_12D7AA           
CODE_12D7A7:        20 48 C2      JSR CODE_12C248           
CODE_12D7AA:        B5 5B         LDA $5B,x                 
CODE_12D7AC:        29 04         AND #$04                  
CODE_12D7AE:        F0 21         BEQ CODE_12D7D1           
CODE_12D7B0:        B5 47         LDA $47,x                 
CODE_12D7B2:        48            PHA                       
CODE_12D7B3:        20 59 B6      JSR CODE_12B659           
CODE_12D7B6:        68            PLA                       
CODE_12D7B7:        BC 2F 04      LDY $042F,x               
CODE_12D7BA:        F0 15         BEQ CODE_12D7D1           
CODE_12D7BC:        C9 18         CMP #$18                  
CODE_12D7BE:        30 09         BMI CODE_12D7C9           
CODE_12D7C0:        20 3B B6      JSR CODE_12B63B           
CODE_12D7C3:        A9 F0         LDA #$F0                  
CODE_12D7C5:        95 47         STA $47,x                 
CODE_12D7C7:        D0 2E         BNE CODE_12D7F7           
CODE_12D7C9:        A9 00         LDA #$00                  
CODE_12D7CB:        9D 2F 04      STA $042F,x               
CODE_12D7CE:        20 7A 9F      JSR CODE_129F7A           
CODE_12D7D1:        A5 0E         LDA $0E                   
CODE_12D7D3:        C9 26         CMP #$26                  
CODE_12D7D5:        F0 05         BEQ CODE_12D7DC           
CODE_12D7D7:        D6 9F         DEC $9F,x                 
CODE_12D7D9:        4C D4 B4      JMP CODE_12B4D4           

CODE_12D7DC:        20 DA C1      JSR CODE_12C1DA           
CODE_12D7DF:        C8            INY                       
CODE_12D7E0:        94 6F         STY $6F,x                 
CODE_12D7E2:        A5 10         LDA $10                   
CODE_12D7E4:        29 01         AND #$01                  
CODE_12D7E6:        D0 0F         BNE CODE_12D7F7           
CODE_12D7E8:        B5 3D         LDA $3D,x                 
CODE_12D7EA:        D9 0F 9B      CMP.w DATA_119B0F,y               
CODE_12D7ED:        F0 08         BEQ CODE_12D7F7           
CODE_12D7EF:        18            CLC                       
CODE_12D7F0:        79 11 9B      ADC.w DATA_119B11,y               
CODE_12D7F3:        95 3D         STA $3D,x                 
CODE_12D7F5:        F6 9F         INC $9F,x                 
CODE_12D7F7:        20 AA A0      JSR CODE_12A0AA           
CODE_12D7FA:        FE A4 04      INC $04A4,x               
CODE_12D7FD:        4C 29 BD      JMP CODE_12BD29           

CODE_12D800:        20 78 AC      JSR CODE_12AC78           
CODE_12D803:        A9 03         LDA #$03                  
CODE_12D805:        9D 65 04      STA $0465,x               
CODE_12D808:        60            RTS
                       
CODE_12D809:        20 FE D8      JSR CODE_12D8FE           
CODE_12D80C:        A9 06         LDA #$06                  
CODE_12D80E:        9D 6E 04      STA $046E,x               
CODE_12D811:        A9 02         LDA #$02                  
CODE_12D813:        8D 38 12      STA $1238                 
CODE_12D816:        AD B5 04      LDA $04B5                 
CODE_12D819:        F0 5A         BEQ CODE_12D875           
CODE_12D81B:        C9 01         CMP #$01                  
CODE_12D81D:        D0 12         BNE CODE_12D831           
CODE_12D81F:        9D 80 04      STA $0480,x               
CODE_12D822:        A9 90         LDA #$90                  
CODE_12D824:        95 86         STA $86,x                 
CODE_12D826:        A9 40         LDA #$40                  
CODE_12D828:        9D 38 04      STA $0438,x               
CODE_12D82B:        9D 5C 04      STA $045C,x               
CODE_12D82E:        8D B5 04      STA $04B5                 
CODE_12D831:        BD 80 04      LDA $0480,x               
CODE_12D834:        C9 02         CMP #$02                  
CODE_12D836:        90 79         BCC CODE_12D8B1           
CODE_12D838:        B5 B1         LDA $B1,x                 
CODE_12D83A:        D0 14         BNE CODE_12D850           
CODE_12D83C:        FE 80 04      INC $0480,x               
CODE_12D83F:        BD 80 04      LDA $0480,x               
CODE_12D842:        C9 31         CMP #$31                  
CODE_12D844:        D0 30         BNE CODE_12D876           
CODE_12D846:        BD 53 04      LDA $0453,x               
CODE_12D849:        D0 05         BNE CODE_12D850           
CODE_12D84B:        F6 B1         INC $B1,x                 
CODE_12D84D:        20 AB D8      JSR CODE_12D8AB           
CODE_12D850:        DE 80 04      DEC $0480,x               
CODE_12D853:        BC 80 04      LDY $0480,x               
CODE_12D856:        88            DEY                       
CODE_12D857:        D0 1D         BNE CODE_12D876           
CODE_12D859:        D6 B1         DEC $B1,x                 
CODE_12D85B:        A5 50         LDA $50                   
CODE_12D85D:        C9 06         CMP #$06                  
CODE_12D85F:        D0 15         BNE CODE_12D876           
CODE_12D861:        A9 01         LDA #$01                  
CODE_12D863:        8D 36 05      STA $0536                 
CODE_12D866:        22 5A E3 14   JSL CODE_14E35A           
CODE_12D86A:        A9 09         LDA #$09                  
CODE_12D86C:        85 14         STA $14                   
CODE_12D86E:        EE 27 06      INC $0627                 
CODE_12D871:        68            PLA                       
CODE_12D872:        68            PLA                       
CODE_12D873:        68            PLA                       
CODE_12D874:        68            PLA                       
CODE_12D875:        60            RTS
                       
CODE_12D876:        BD 80 04      LDA $0480,x               
CODE_12D879:        C9 30         CMP #$30                  
CODE_12D87B:        D0 33         BNE CODE_12D8B0           
CODE_12D87D:        B5 5B         LDA $5B,x                 
CODE_12D87F:        29 40         AND #$40                  
CODE_12D881:        F0 2D         BEQ CODE_12D8B0           
CODE_12D883:        A5 9C         LDA $9C                   
CODE_12D885:        D0 29         BNE CODE_12D8B0           
CODE_12D887:        85 5A         STA $5A                   
CODE_12D889:        F6 B1         INC $B1,x                 
CODE_12D88B:        EE B4 04      INC $04B4                 
CODE_12D88E:        DE 80 04      DEC $0480,x               
CODE_12D891:        B5 29         LDA $29,x                 
CODE_12D893:        85 28         STA $28                   
CODE_12D895:        B5 15         LDA $15,x                 
CODE_12D897:        85 14         STA $14                   
CODE_12D899:        B5 33         LDA $33,x                 
CODE_12D89B:        69 10         ADC #$10                  
CODE_12D89D:        85 32         STA $32                   
CODE_12D89F:        A9 06         LDA #$06                  
CODE_12D8A1:        85 50         STA $50                   
CODE_12D8A3:        A9 60         LDA #$60                  
CODE_12D8A5:        85 82         STA $82                   
CODE_12D8A7:        A9 FC         LDA #$FC                  
CODE_12D8A9:        85 46         STA $46                   
CODE_12D8AB:        A9 2D         LDA #$2D                  
CODE_12D8AD:        8D E0 1D      STA $1DE0                 
CODE_12D8B0:        60            RTS
                       
CODE_12D8B1:        A9 03         LDA #$03                  
CODE_12D8B3:        9D 6E 04      STA $046E,x               
CODE_12D8B6:        A9 00         LDA #$00                  
CODE_12D8B8:        8D 38 12      STA $1238                 
CODE_12D8BB:        BD 65 04      LDA $0465,x               
CODE_12D8BE:        D0 12         BNE CODE_12D8D2           
CODE_12D8C0:        A9 03         LDA #$03                  
CODE_12D8C2:        9D 65 04      STA $0465,x               
CODE_12D8C5:        A9 2C         LDA #$2C                  
CODE_12D8C7:        8D E0 1D      STA $1DE0                 
CODE_12D8CA:        FE 80 04      INC $0480,x               
CODE_12D8CD:        A9 FF         LDA #$FF                  
CODE_12D8CF:        9D 53 04      STA $0453,x               
CODE_12D8D2:        A5 10         LDA $10                   
CODE_12D8D4:        4A            LSR A                     
CODE_12D8D5:        90 24         BCC CODE_12D8FB           
CODE_12D8D7:        B5 79         LDA $79,x                 
CODE_12D8D9:        29 01         AND #$01                  
CODE_12D8DB:        A8            TAY                       
CODE_12D8DC:        B5 47         LDA $47,x                 
CODE_12D8DE:        18            CLC                       
CODE_12D8DF:        79 26 98      ADC.w DATA_119826,y               
CODE_12D8E2:        95 47         STA $47,x                 
CODE_12D8E4:        D9 16 9B      CMP.w DATA_119B16,y               
CODE_12D8E7:        D0 02         BNE CODE_12D8EB           
CODE_12D8E9:        F6 79         INC $79,x                 
CODE_12D8EB:        20 DA C1      JSR CODE_12C1DA           
CODE_12D8EE:        B5 3D         LDA $3D,x                 
CODE_12D8F0:        D9 14 9B      CMP.w DATA_119B14,y               
CODE_12D8F3:        F0 06         BEQ CODE_12D8FB           
CODE_12D8F5:        18            CLC                       
CODE_12D8F6:        79 22 98      ADC.w DATA_119822,y               
CODE_12D8F9:        95 3D         STA $3D,x                 
CODE_12D8FB:        4C 97 B4      JMP CODE_12B497           

CODE_12D8FE:        BD 80 04      LDA $0480,x               
CODE_12D901:        20 41 AD      JSR CODE_12AD41           
CODE_12D904:        AD B5 04      LDA $04B5                 ;\If crystal ball has not been collected
CODE_12D907:        F0 06         BEQ CODE_12D90F           ;/
CODE_12D909:        C9 01         CMP #$01                  ;\If collected
CODE_12D90B:        F0 02         BEQ CODE_12D90F           ;/
CODE_12D90D:        80 03         BRA CODE_12D912           

CODE_12D90F:        82 DF 01      BRL CODE_12DAF1           

CODE_12D912:        AD F8 02      LDA $02F8                 
CODE_12D915:        8D F6 02      STA $02F6                 
CODE_12D918:        AD F9 02      LDA $02F9                 
CODE_12D91B:        8D F7 02      STA $02F7                 
CODE_12D91E:        B5 86         LDA $86,x                 
CODE_12D920:        85 07         STA $07                   
CODE_12D922:        22 83 E4 14   JSL CODE_14E483           
CODE_12D926:        A6 02         LDX $02                   
CODE_12D928:        AD 1F 02      LDA $021F                 
CODE_12D92B:        EB            XBA                       
CODE_12D92C:        AD 29 04      LDA $0429                 
CODE_12D92F:        C2 20         REP #$20                  
CODE_12D931:        8D 12 07      STA $0712                 
CODE_12D934:        BD 17 9B      LDA.w DATA_119B17,x               
CODE_12D937:        29 FF 00      AND #$00FF                
CODE_12D93A:        C9 80 00      CMP #$0080                
CODE_12D93D:        90 03         BCC CODE_12D942           
CODE_12D93F:        09 00 FF      ORA #$FF00                
CODE_12D942:        18            CLC                       
CODE_12D943:        6D 12 07      ADC $0712                 
CODE_12D946:        8D 14 07      STA $0714                 
CODE_12D949:        E2 20         SEP #$20                  
CODE_12D94B:        48            PHA                       
CODE_12D94C:        08            PHP                       
CODE_12D94D:        CA            DEX                       
CODE_12D94E:        F0 04         BEQ CODE_12D954           
CODE_12D950:        68            PLA                       
CODE_12D951:        49 01         EOR #$01                  
CODE_12D953:        48            PHA                       
CODE_12D954:        28            PLP                       
CODE_12D955:        68            PLA                       
CODE_12D956:        C2 10         REP #$10                  
CODE_12D958:        AC F8 02      LDY $02F8                 
CODE_12D95B:        99 00 08      STA $0800,y               
CODE_12D95E:        99 04 08      STA $0804,y               
CODE_12D961:        8D 12 07      STA $0712                 
CODE_12D964:        A2 60 00      LDX #$0060                
CODE_12D967:        BD 01 08      LDA $0801,x               
CODE_12D96A:        99 01 08      STA $0801,y               
CODE_12D96D:        18            CLC                       
CODE_12D96E:        69 08         ADC #$08                  
CODE_12D970:        99 05 08      STA $0805,y               
CODE_12D973:        BD 03 08      LDA $0803,x               
CODE_12D976:        8D 16 07      STA $0716                 
CODE_12D979:        A5 07         LDA $07                   
CODE_12D97B:        F0 0A         BEQ CODE_12D987           
CODE_12D97D:        AD 16 07      LDA $0716                 
CODE_12D980:        29 CF         AND #$CF                  
CODE_12D982:        09 10         ORA #$10                  
CODE_12D984:        8D 16 07      STA $0716                 
CODE_12D987:        AD 16 07      LDA $0716                 
CODE_12D98A:        09 01         ORA #$01                  
CODE_12D98C:        99 03 08      STA $0803,y               
CODE_12D98F:        99 07 08      STA $0807,y               
CODE_12D992:        A9 AE         LDA #$AE                  
CODE_12D994:        99 02 08      STA $0802,y               
CODE_12D997:        A9 BE         LDA #$BE                  
CODE_12D999:        99 06 08      STA $0806,y               
CODE_12D99C:        C2 20         REP #$20                  
CODE_12D99E:        98            TYA                       
CODE_12D99F:        4A            LSR A                     
CODE_12D9A0:        4A            LSR A                     
CODE_12D9A1:        A8            TAY                       
CODE_12D9A2:        E2 20         SEP #$20                  
CODE_12D9A4:        AD 15 07      LDA $0715                 
CODE_12D9A7:        F0 02         BEQ CODE_12D9AB           
CODE_12D9A9:        A9 01         LDA #$01                  
CODE_12D9AB:        99 20 0A      STA $0A20,y               
CODE_12D9AE:        99 21 0A      STA $0A21,y               
CODE_12D9B1:        22 83 E4 14   JSL CODE_14E483           
CODE_12D9B5:        C2 10         REP #$10                  
CODE_12D9B7:        A2 60 00      LDX #$0060                
CODE_12D9BA:        AC F8 02      LDY $02F8                 
CODE_12D9BD:        AD 12 07      LDA $0712                 
CODE_12D9C0:        99 00 08      STA $0800,y               
CODE_12D9C3:        99 04 08      STA $0804,y               
CODE_12D9C6:        BD 01 08      LDA $0801,x               
CODE_12D9C9:        18            CLC                       
CODE_12D9CA:        69 10         ADC #$10                  
CODE_12D9CC:        99 01 08      STA $0801,y               
CODE_12D9CF:        18            CLC                       
CODE_12D9D0:        69 08         ADC #$08                  
CODE_12D9D2:        99 05 08      STA $0805,y               
CODE_12D9D5:        AD 16 07      LDA $0716                 
CODE_12D9D8:        09 01         ORA #$01                  
CODE_12D9DA:        99 03 08      STA $0803,y               
CODE_12D9DD:        99 07 08      STA $0807,y               
CODE_12D9E0:        A9 AF         LDA #$AF                  
CODE_12D9E2:        99 02 08      STA $0802,y               
CODE_12D9E5:        A9 BF         LDA #$BF                  
CODE_12D9E7:        99 06 08      STA $0806,y               
CODE_12D9EA:        C2 20         REP #$20                  
CODE_12D9EC:        98            TYA                       
CODE_12D9ED:        4A            LSR A                     
CODE_12D9EE:        4A            LSR A                     
CODE_12D9EF:        A8            TAY                       
CODE_12D9F0:        E2 20         SEP #$20                  
CODE_12D9F2:        AD 15 07      LDA $0715                 
CODE_12D9F5:        F0 02         BEQ CODE_12D9F9           
CODE_12D9F7:        A9 01         LDA #$01                  
CODE_12D9F9:        99 20 0A      STA $0A20,y               
CODE_12D9FC:        99 21 0A      STA $0A21,y               
CODE_12D9FF:        22 83 E4 14   JSL CODE_14E483           
CODE_12DA03:        C2 10         REP #$10                  
CODE_12DA05:        A2 60 00      LDX #$0060                
CODE_12DA08:        AC F8 02      LDY $02F8                 
CODE_12DA0B:        AD 12 07      LDA $0712                 
CODE_12DA0E:        99 00 08      STA $0800,y               
CODE_12DA11:        BD 01 08      LDA $0801,x               
CODE_12DA14:        18            CLC                       
CODE_12DA15:        69 20         ADC #$20                  
CODE_12DA17:        99 01 08      STA $0801,y               
CODE_12DA1A:        A9 BF         LDA #$BF                  
CODE_12DA1C:        99 02 08      STA $0802,y               
CODE_12DA1F:        AD 16 07      LDA $0716                 
CODE_12DA22:        09 01         ORA #$01                  
CODE_12DA24:        99 03 08      STA $0803,y               
CODE_12DA27:        C2 20         REP #$20                  
CODE_12DA29:        A5 12         LDA $12                   
CODE_12DA2B:        29 FF 00      AND #$00FF                
CODE_12DA2E:        AA            TAX                       
CODE_12DA2F:        E2 20         SEP #$20                  
CODE_12DA31:        BD 80 04      LDA $0480,x               
CODE_12DA34:        C9 02         CMP #$02                  
CODE_12DA36:        B0 05         BCS CODE_12DA3D                   
CODE_12DA38:        A9 F0         LDA #$F0                  
CODE_12DA3A:        99 01 08      STA $0801,y               
CODE_12DA3D:        C2 20         REP #$20                  
CODE_12DA3F:        98            TYA                       
CODE_12DA40:        4A            LSR A                     
CODE_12DA41:        4A            LSR A                     
CODE_12DA42:        A8            TAY                       
CODE_12DA43:        E2 20         SEP #$20                  
CODE_12DA45:        AD 15 07      LDA $0715                 
CODE_12DA48:        F0 02         BEQ CODE_12DA4C           
CODE_12DA4A:        A9 01         LDA #$01                  
CODE_12DA4C:        99 20 0A      STA $0A20,y               
CODE_12DA4F:        22 83 E4 14   JSL CODE_14E483           
CODE_12DA53:        C2 10         REP #$10                  
CODE_12DA55:        A2 60 00      LDX #$0060                
CODE_12DA58:        AC F8 02      LDY $02F8                 
CODE_12DA5B:        AD 12 07      LDA $0712                 
CODE_12DA5E:        99 00 08      STA $0800,y               
CODE_12DA61:        99 04 08      STA $0804,y               
CODE_12DA64:        BD 03 08      LDA $0803,x               
CODE_12DA67:        8D 16 07      STA $0716                 
CODE_12DA6A:        A5 07         LDA $07                   
CODE_12DA6C:        F0 0A         BEQ CODE_12DA78           
CODE_12DA6E:        BD 03 08      LDA $0803,x               
CODE_12DA71:        29 CF         AND #$CF                  
CODE_12DA73:        09 10         ORA #$10                  
CODE_12DA75:        8D 16 07      STA $0716                 
CODE_12DA78:        AD 16 07      LDA $0716                 
CODE_12DA7B:        09 01         ORA #$01                  
CODE_12DA7D:        99 03 08      STA $0803,y               
CODE_12DA80:        99 07 08      STA $0807,y               
CODE_12DA83:        8D 16 07      STA $0716                 
CODE_12DA86:        A2 68 00      LDX #$0068                
CODE_12DA89:        BD 01 08      LDA $0801,x               
CODE_12DA8C:        18            CLC                       
CODE_12DA8D:        69 08         ADC #$08                  
CODE_12DA8F:        99 01 08      STA $0801,y               
CODE_12DA92:        18            CLC                       
CODE_12DA93:        69 08         ADC #$08                  
CODE_12DA95:        99 05 08      STA $0805,y               
CODE_12DA98:        A9 AF         LDA #$AF                  
CODE_12DA9A:        99 02 08      STA $0802,y               
CODE_12DA9D:        A9 BF         LDA #$BF                  
CODE_12DA9F:        99 06 08      STA $0806,y               
CODE_12DAA2:        C2 20         REP #$20                  
CODE_12DAA4:        98            TYA                       
CODE_12DAA5:        4A            LSR A                     
CODE_12DAA6:        4A            LSR A                     
CODE_12DAA7:        A8            TAY                       
CODE_12DAA8:        E2 20         SEP #$20                  
CODE_12DAAA:        AD 15 07      LDA $0715                 
CODE_12DAAD:        F0 02         BEQ CODE_12DAB1           
CODE_12DAAF:        A9 01         LDA #$01                  
CODE_12DAB1:        99 20 0A      STA $0A20,y               
CODE_12DAB4:        99 21 0A      STA $0A21,y               
CODE_12DAB7:        22 83 E4 14   JSL CODE_14E483           
CODE_12DABB:        C2 10         REP #$10                  
CODE_12DABD:        A2 68 00      LDX #$0068                
CODE_12DAC0:        AC F8 02      LDY $02F8                 
CODE_12DAC3:        AD 12 07      LDA $0712                 
CODE_12DAC6:        99 00 08      STA $0800,y               
CODE_12DAC9:        BD 01 08      LDA $0801,x               
CODE_12DACC:        18            CLC                       
CODE_12DACD:        69 18         ADC #$18                  
CODE_12DACF:        99 01 08      STA $0801,y               
CODE_12DAD2:        A9 8F         LDA #$8F                  
CODE_12DAD4:        99 02 08      STA $0802,y               
CODE_12DAD7:        AD 16 07      LDA $0716                 
CODE_12DADA:        09 01         ORA #$01                  
CODE_12DADC:        99 03 08      STA $0803,y               
CODE_12DADF:        C2 20         REP #$20                  
CODE_12DAE1:        98            TYA                       
CODE_12DAE2:        4A            LSR A                     
CODE_12DAE3:        4A            LSR A                     
CODE_12DAE4:        A8            TAY                       
CODE_12DAE5:        E2 20         SEP #$20                  
CODE_12DAE7:        AD 15 07      LDA $0715                 
CODE_12DAEA:        F0 02         BEQ CODE_12DAEE           
CODE_12DAEC:        A9 01         LDA #$01                  
CODE_12DAEE:        99 20 0A      STA $0A20,y               
CODE_12DAF1:        E2 10         SEP #$10                  
CODE_12DAF3:        A6 12         LDX $12                   
CODE_12DAF5:        60            RTS
                       
CODE_12DAF6:        A5 9C         LDA $9C                   
CODE_12DAF8:        D0 48         BNE CODE_12DB42           
CODE_12DAFA:        A5 10         LDA $10                   
CODE_12DAFC:        29 FF         AND #$FF                  
CODE_12DAFE:        D0 42         BNE CODE_12DB42           
CODE_12DB00:        EE FA 04      INC $04FA                 
CODE_12DB03:        20 31 B3      JSR CODE_12B331           
CODE_12DB06:        30 3A         BMI CODE_12DB42           
CODE_12DB08:        A6 00         LDX $00                   
CODE_12DB0A:        AD FA 04      LDA $04FA                 
CODE_12DB0D:        29 07         AND #$07                  
CODE_12DB0F:        A8            TAY                       
CODE_12DB10:        B9 22 9B      LDA.w DATA_119B22,y               
CODE_12DB13:        95 3D         STA $3D,x                 
CODE_12DB15:        98            TYA                       
CODE_12DB16:        29 03         AND #$03                  
CODE_12DB18:        A8            TAY                       
CODE_12DB19:        A9 02         LDA #$02                  
CODE_12DB1B:        95 15         STA $15,x                 
CODE_12DB1D:        B9 1A 9B      LDA.w DATA_119B1A,y               
CODE_12DB20:        95 29         STA $29,x                 
CODE_12DB22:        B9 1E 9B      LDA.w DATA_119B1E,y               
CODE_12DB25:        95 33         STA $33,x                 
CODE_12DB27:        A9 00         LDA #$00                  
CODE_12DB29:        95 1F         STA $1F,x                 
CODE_12DB2B:        AD 87 05      LDA $0587                 
CODE_12DB2E:        29 03         AND #$03                  
CODE_12DB30:        C9 02         CMP #$02                  
CODE_12DB32:        90 03         BCC CODE_12DB37           
CODE_12DB34:        0A            ASL A                     
CODE_12DB35:        95 B1         STA $B1,x                 
CODE_12DB37:        A0 33         LDY #$33                  
CODE_12DB39:        94 90         STY $90,x                 
CODE_12DB3B:        20 7A 9F      JSR CODE_129F7A           
CODE_12DB3E:        A9 D0         LDA #$D0                  
CODE_12DB40:        95 47         STA $47,x                 
CODE_12DB42:        60            RTS
                       
CODE_12DB43:        20 96 9F      JSR CODE_129F96           
CODE_12DB46:        A9 06         LDA #$06                  
CODE_12DB48:        9D 65 04      STA $0465,x               
CODE_12DB4B:        B5 15         LDA $15,x                 
CODE_12DB4D:        9D F0 04      STA $04F0,x               
CODE_12DB50:        60            RTS
                       
CODE_12DB51:        B5 B1         LDA $B1,x                 
CODE_12DB53:        D0 73         BNE CODE_12DBC8           
CODE_12DB55:        BD 65 04      LDA $0465,x               
CODE_12DB58:        D0 08         BNE CODE_12DB62           
CODE_12DB5A:        A9 80         LDA #$80                  
CODE_12DB5C:        95 86         STA $86,x                 
CODE_12DB5E:        95 B1         STA $B1,x                 
CODE_12DB60:        D0 63         BNE CODE_12DBC5           
CODE_12DB62:        F6 79         INC $79,x                 
CODE_12DB64:        A5 10         LDA $10                   
CODE_12DB66:        29 FF         AND #$FF                  
CODE_12DB68:        D0 07         BNE CODE_12DB71           
CODE_12DB6A:        A9 5F         LDA #$5F                  
CODE_12DB6C:        95 86         STA $86,x                 
CODE_12DB6E:        FE 80 04      INC $0480,x               
CODE_12DB71:        A9 00         LDA #$00                  
CODE_12DB73:        95 3D         STA $3D,x                 
CODE_12DB75:        B5 79         LDA $79,x                 
CODE_12DB77:        29 40         AND #$40                  
CODE_12DB79:        F0 0D         BEQ CODE_12DB88           
CODE_12DB7B:        FE 77 04      INC $0477,x               
CODE_12DB7E:        A9 F8         LDA #$F8                  
CODE_12DB80:        B4 79         LDY $79,x                 
CODE_12DB82:        10 02         BPL CODE_12DB86           
CODE_12DB84:        A9 08         LDA #$08                  
CODE_12DB86:        95 3D         STA $3D,x                 
CODE_12DB88:        20 EF C1      JSR CODE_12C1EF           
CODE_12DB8B:        BD 5C 04      LDA $045C,x               
CODE_12DB8E:        D0 35         BNE CODE_12DBC5           
CODE_12DB90:        B5 86         LDA $86,x                 
CODE_12DB92:        F0 31         BEQ CODE_12DBC5           
CODE_12DB94:        29 0F         AND #$0F                  
CODE_12DB96:        D0 2D         BNE CODE_12DBC5           
CODE_12DB98:        20 35 B3      JSR CODE_12B335           
CODE_12DB9B:        30 28         BMI CODE_12DBC5           
CODE_12DB9D:        A9 46         LDA #$46                  
CODE_12DB9F:        8D E3 1D      STA $1DE3                 
CODE_12DBA2:        BD 80 04      LDA $0480,x               
CODE_12DBA5:        29 03         AND #$03                  
CODE_12DBA7:        A8            TAY                       
CODE_12DBA8:        B5 86         LDA $86,x                 
CODE_12DBAA:        A6 00         LDX $00                   
CODE_12DBAC:        4A            LSR A                     
CODE_12DBAD:        49 FF         EOR #$FF                  
CODE_12DBAF:        95 3D         STA $3D,x                 
CODE_12DBB1:        B9 2A 9B      LDA.w DATA_119B2A,y               
CODE_12DBB4:        95 47         STA $47,x                 
CODE_12DBB6:        A9 11         LDA #$11                  
CODE_12DBB8:        95 90         STA $90,x                 
CODE_12DBBA:        B5 33         LDA $33,x                 
CODE_12DBBC:        69 08         ADC #$08                  
CODE_12DBBE:        95 33         STA $33,x                 
CODE_12DBC0:        20 7A 9F      JSR CODE_129F7A           
CODE_12DBC3:        A6 12         LDX $12                   
CODE_12DBC5:        4C 29 BD      JMP CODE_12BD29           

CODE_12DBC8:        B5 86         LDA $86,x                 
CODE_12DBCA:        F0 17         BEQ CODE_12DBE3           
CODE_12DBCC:        9D 5C 04      STA $045C,x               
CODE_12DBCF:        C9 01         CMP #$01                  
CODE_12DBD1:        D0 04         BNE CODE_12DBD7           
CODE_12DBD3:        22 C2 DC 13   JSL CODE_13DCC2           
CODE_12DBD7:        FE 77 04      INC $0477,x               
CODE_12DBDA:        FE 77 04      INC $0477,x               
CODE_12DBDD:        A9 F0         LDA #$F0                  
CODE_12DBDF:        95 47         STA $47,x                 
CODE_12DBE1:        D0 36         BNE CODE_12DC19           
CODE_12DBE3:        A9 04         LDA #$04                  
CODE_12DBE5:        95 3D         STA $3D,x                 
CODE_12DBE7:        20 EF C1      JSR CODE_12C1EF           
CODE_12DBEA:        20 EA C1      JSR CODE_12C1EA           
CODE_12DBED:        A5 10         LDA $10                   
CODE_12DBEF:        4A            LSR A                     
CODE_12DBF0:        B0 1D         BCS CODE_12DC0F                   
CODE_12DBF2:        F6 47         INC $47,x                 
CODE_12DBF4:        30 19         BMI CODE_12DC0F           
CODE_12DBF6:        A5 10         LDA $10                   
CODE_12DBF8:        29 1F         AND #$1F                  
CODE_12DBFA:        D0 13         BNE CODE_12DC0F           
CODE_12DBFC:        20 35 B3      JSR CODE_12B335           
CODE_12DBFF:        A6 00         LDX $00                   
CODE_12DC01:        B5 33         LDA $33,x                 
CODE_12DC03:        69 08         ADC #$08                  
CODE_12DC05:        95 33         STA $33,x                 
CODE_12DC07:        20 F9 B1      JSR CODE_12B1F9           
CODE_12DC0A:        A9 20         LDA #$20                  
CODE_12DC0C:        8D E3 1D      STA $1DE3                 
CODE_12DC0F:        B5 33         LDA $33,x                 
CODE_12DC11:        C9 D0         CMP #$D0                  
CODE_12DC13:        90 04         BCC CODE_12DC19           
CODE_12DC15:        A9 02         LDA #$02                  
CODE_12DC17:        95 51         STA $51,x                 
CODE_12DC19:        4C 29 BD      JMP CODE_12BD29           

CODE_12DC1C:        F6 9F         INC $9F,x                 
CODE_12DC1E:        20 EF C1      JSR CODE_12C1EF           
CODE_12DC21:        20 EA C1      JSR CODE_12C1EA           
CODE_12DC24:        F6 47         INC $47,x                 
CODE_12DC26:        4C 29 BD      JMP CODE_12BD29           

CODE_12DC29:        60            RTS
                       
CODE_12DC2A:        C2 20         REP #$20                  
CODE_12DC2C:        AD F6 02      LDA $02F6                 
CODE_12DC2F:        8D 6C 12      STA $126C                 
CODE_12DC32:        8D 74 12      STA $1274                 
CODE_12DC35:        E2 20         SEP #$20                  
CODE_12DC37:        A5 10         LDA $10                   
CODE_12DC39:        29 03         AND #$03                  
CODE_12DC3B:        0A            ASL A                     
CODE_12DC3C:        85 07         STA $07                   
CODE_12DC3E:        A8            TAY                       
CODE_12DC3F:        C2 20         REP #$20                  
CODE_12DC41:        B9 68 12      LDA $1268,y               
CODE_12DC44:        8D F6 02      STA $02F6                 
CODE_12DC47:        E2 20         SEP #$20                  
CODE_12DC49:        A5 EE         LDA $EE                   
CODE_12DC4B:        D0 DC         BNE CODE_12DC29           
CODE_12DC4D:        BC 65 04      LDY $0465,x               
CODE_12DC50:        D0 04         BNE CODE_12DC56           
CODE_12DC52:        A9 4E         LDA #$4E                  
CODE_12DC54:        95 65         STA $65,x                 
CODE_12DC56:        A5 ED         LDA $ED                   
CODE_12DC58:        48            PHA                       
CODE_12DC59:        48            PHA                       
CODE_12DC5A:        A0 AC         LDY #$AC                  
CODE_12DC5C:        B5 B1         LDA $B1,x                 
CODE_12DC5E:        D0 0F         BNE CODE_12DC6F           
CODE_12DC60:        BD 5C 04      LDA $045C,x               
CODE_12DC63:        F0 0D         BEQ CODE_12DC72           
CODE_12DC65:        C9 30         CMP #$30                  
CODE_12DC67:        B0 06         BCS CODE_12DC6F                   
CODE_12DC69:        29 08         AND #$08                  
CODE_12DC6B:        D0 02         BNE CODE_12DC6F           
CODE_12DC6D:        A0 9C         LDY #$9C                  
CODE_12DC6F:        98            TYA                       
CODE_12DC70:        D0 08         BNE CODE_12DC7A           
CODE_12DC72:        A9 9C         LDA #$9C                  
CODE_12DC74:        B4 86         LDY $86,x                 
CODE_12DC76:        F0 02         BEQ CODE_12DC7A           
CODE_12DC78:        A9 A0         LDA #$A0                  
CODE_12DC7A:        20 D5 BD      JSR CODE_12BDD5           
CODE_12DC7D:        A5 00         LDA $00                   
CODE_12DC7F:        8D 2C 04      STA $042C                 
CODE_12DC82:        C2 20         REP #$20                  
CODE_12DC84:        A4 07         LDY $07                   
CODE_12DC86:        B9 6A 12      LDA $126A,y               
CODE_12DC89:        8D F6 02      STA $02F6                 
CODE_12DC8C:        E2 20         SEP #$20                  
CODE_12DC8E:        A0 A4         LDY #$A4                  
CODE_12DC90:        B5 B1         LDA $B1,x                 
CODE_12DC92:        D0 13         BNE CODE_12DCA7           
CODE_12DC94:        BD 5C 04      LDA $045C,x               
CODE_12DC97:        F0 0A         BEQ CODE_12DCA3           
CODE_12DC99:        C9 30         CMP #$30                  
CODE_12DC9B:        B0 0A         BCS CODE_12DCA7                   
CODE_12DC9D:        29 08         AND #$08                  
CODE_12DC9F:        D0 06         BNE CODE_12DCA7           
CODE_12DCA1:        F0 06         BEQ CODE_12DCA9           
CODE_12DCA3:        B5 86         LDA $86,x                 
CODE_12DCA5:        F0 02         BEQ CODE_12DCA9           
CODE_12DCA7:        A0 A8         LDY #$A8                  
CODE_12DCA9:        68            PLA                       
CODE_12DCAA:        85 ED         STA $ED                   
CODE_12DCAC:        98            TYA                       
CODE_12DCAD:        20 D5 BD      JSR CODE_12BDD5           
CODE_12DCB0:        A5 00         LDA $00                   
CODE_12DCB2:        8D 2C 04      STA $042C                 
CODE_12DCB5:        C2 20         REP #$20                  
CODE_12DCB7:        A4 07         LDY $07                   
CODE_12DCB9:        B9 6C 12      LDA $126C,y               
CODE_12DCBC:        8D F6 02      STA $02F6                 
CODE_12DCBF:        E2 20         SEP #$20                  
CODE_12DCC1:        A0 B8         LDY #$B8                  
CODE_12DCC3:        B5 3D         LDA $3D,x                 
CODE_12DCC5:        F0 0B         BEQ CODE_12DCD2           
CODE_12DCC7:        A0 B0         LDY #$B0                  
CODE_12DCC9:        BD 77 04      LDA $0477,x               
CODE_12DCCC:        29 10         AND #$10                  
CODE_12DCCE:        F0 02         BEQ CODE_12DCD2           
CODE_12DCD0:        A0 B4         LDY #$B4                  
CODE_12DCD2:        68            PLA                       
CODE_12DCD3:        85 ED         STA $ED                   
CODE_12DCD5:        98            TYA                       
CODE_12DCD6:        20 D5 BD      JSR CODE_12BDD5           
CODE_12DCD9:        A5 ED         LDA $ED                   
CODE_12DCDB:        F0 03         BEQ CODE_12DCE0           
CODE_12DCDD:        82 90 00      BRL CODE_12DD70           

CODE_12DCE0:        C2 30         REP #$30                  
CODE_12DCE2:        A5 07         LDA $07                   
CODE_12DCE4:        29 FF 00      AND #$00FF                
CODE_12DCE7:        A8            TAY                       
CODE_12DCE8:        BE 6C 12      LDX $126C,y               
CODE_12DCEB:        B9 6E 12      LDA $126E,y               
CODE_12DCEE:        A8            TAY                       
CODE_12DCEF:        E2 20         SEP #$20                  
CODE_12DCF1:        AD 29 04      LDA $0429                 
CODE_12DCF4:        18            CLC                       
CODE_12DCF5:        69 20         ADC #$20                  
CODE_12DCF7:        B0 77         BCS CODE_12DD70                   
CODE_12DCF9:        99 00 08      STA $0800,y               
CODE_12DCFC:        99 04 08      STA $0804,y               
CODE_12DCFF:        8D 12 07      STA $0712                 
CODE_12DD02:        A5 00         LDA $00                   
CODE_12DD04:        E9 2F         SBC #$2F                  
CODE_12DD06:        99 01 08      STA $0801,y               
CODE_12DD09:        69 0F         ADC #$0F                  
CODE_12DD0B:        99 05 08      STA $0805,y               
CODE_12DD0E:        69 10         ADC #$10                  
CODE_12DD10:        8D 13 07      STA $0713                 
CODE_12DD13:        BD 03 08      LDA $0803,x               
CODE_12DD16:        99 03 08      STA $0803,y               
CODE_12DD19:        99 07 08      STA $0807,y               
CODE_12DD1C:        8D 14 07      STA $0714                 
CODE_12DD1F:        A9 C4         LDA #$C4                  
CODE_12DD21:        99 02 08      STA $0802,y               
CODE_12DD24:        A9 CA         LDA #$CA                  
CODE_12DD26:        99 06 08      STA $0806,y               
CODE_12DD29:        C2 20         REP #$20                  
CODE_12DD2B:        98            TYA                       
CODE_12DD2C:        4A            LSR A                     
CODE_12DD2D:        4A            LSR A                     
CODE_12DD2E:        A8            TAY                       
CODE_12DD2F:        E2 20         SEP #$20                  
CODE_12DD31:        A5 ED         LDA $ED                   
CODE_12DD33:        29 04         AND #$04                  
CODE_12DD35:        4A            LSR A                     
CODE_12DD36:        4A            LSR A                     
CODE_12DD37:        09 02         ORA #$02                  
CODE_12DD39:        99 20 0A      STA $0A20,y               
CODE_12DD3C:        99 21 0A      STA $0A21,y               
CODE_12DD3F:        8D 15 07      STA $0715                 
CODE_12DD42:        22 83 E4 14   JSL CODE_14E483           
CODE_12DD46:        C2 10         REP #$10                  
CODE_12DD48:        AC F8 02      LDY $02F8                 
CODE_12DD4B:        AD 12 07      LDA $0712                 
CODE_12DD4E:        99 00 08      STA $0800,y               
CODE_12DD51:        AD 13 07      LDA $0713                 
CODE_12DD54:        99 01 08      STA $0801,y               
CODE_12DD57:        A9 E0         LDA #$E0                  
CODE_12DD59:        99 02 08      STA $0802,y               
CODE_12DD5C:        AD 14 07      LDA $0714                 
CODE_12DD5F:        99 03 08      STA $0803,y               
CODE_12DD62:        C2 20         REP #$20                  
CODE_12DD64:        98            TYA                       
CODE_12DD65:        4A            LSR A                     
CODE_12DD66:        4A            LSR A                     
CODE_12DD67:        A8            TAY                       
CODE_12DD68:        E2 20         SEP #$20                  
CODE_12DD6A:        AD 15 07      LDA $0715                 
CODE_12DD6D:        99 20 0A      STA $0A20,y               
CODE_12DD70:        E2 10         SEP #$10                  
CODE_12DD72:        A6 12         LDX $12                   
CODE_12DD74:        60            RTS
                       
DATA_12DD75:        db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ; \ Empty.
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF                          ; /
          
CODE_12DD90:        20 5A DE      JSR CODE_12DE5A             
CODE_12DD93:        A8            TAY                       
CODE_12DD94:        B5 46         LDA $46,x              
CODE_12DD96:        30 01         BMI CODE_12DD99                   
CODE_12DD98:        C8            INY               
CODE_12DD99:        20 45 E4      JSR CODE_12E445           
CODE_12DD9C:        B0 07         BCS CODE_12DDA5                   
CODE_12DD9E:        A5 00         LDA $00                   
CODE_12DDA0:        C9 82         CMP #$82                  
CODE_12DDA2:        F0 01         BEQ CODE_12DDA5           
CODE_12DDA4:        18            CLC                       
CODE_12DDA5:        CA            DEX                       
CODE_12DDA6:        60            RTS
                       
CODE_12DDA7:        A9 04         LDA #$04                  
CODE_12DDA9:        D0 02         BNE CODE_12DDAD           

CODE_12DDAB:        A9 00         LDA #$00                  
CODE_12DDAD:        85 07         STA $07                   
CODE_12DDAF:        64 0B         STZ $0B                   
CODE_12DDB1:        64 0E         STZ $0E                   
CODE_12DDB3:        20 5A DE      JSR CODE_12DE5A           
CODE_12DDB6:        85 08         STA $08                   
CODE_12DDB8:        B5 46         LDA $46,x                 
CODE_12DDBA:        10 09         BPL CODE_12DDC5           
CODE_12DDBC:        20 38 DE      JSR CODE_12DE38           
CODE_12DDBF:        E6 07         INC $07                   
CODE_12DDC1:        E6 08         INC $08                   
CODE_12DDC3:        D0 62         BNE CODE_12DE27           
CODE_12DDC5:        E6 07         INC $07                   
CODE_12DDC7:        E6 08         INC $08                   
CODE_12DDC9:        20 38 DE      JSR CODE_12DE38           
CODE_12DDCC:        B5 8F         LDA $8F,x                 
CODE_12DDCE:        C9 18         CMP #$18                  
CODE_12DDD0:        F0 1A         BEQ CODE_12DDEC           
CODE_12DDD2:        C9 19         CMP #$19                  
CODE_12DDD4:        F0 16         BEQ CODE_12DDEC           
CODE_12DDD6:        A5 00         LDA $00                   
CODE_12DDD8:        38            SEC                       
CODE_12DDD9:        E9 92         SBC #$92                  
CODE_12DDDB:        C9 02         CMP #$02                  
CODE_12DDDD:        B0 0D         BCS CODE_12DDEC                   
CODE_12DDDF:        0A            ASL A                     
CODE_12DDE0:        69 01         ADC #$01                  
CODE_12DDE2:        95 46         STA $46,x                 
CODE_12DDE4:        A9 07         LDA #$07                  
CODE_12DDE6:        95 50         STA $50,x                 
CODE_12DDE8:        A9 FF         LDA #$FF                  
CODE_12DDEA:        95 85         STA $85,x                 
CODE_12DDEC:        A5 00         LDA $00                   
CODE_12DDEE:        85 0E         STA $0E                   
CODE_12DDF0:        38            SEC                       
CODE_12DDF1:        E9 60         SBC #$60                  
CODE_12DDF3:        C9 02         CMP #$02                  
CODE_12DDF5:        B0 30         BCS CODE_12DE27                   
CODE_12DDF7:        BC 37 04      LDY $0437,x               
CODE_12DDFA:        D0 2B         BNE CODE_12DE27           
CODE_12DDFC:        B4 8F         LDY $8F,x                 
CODE_12DDFE:        C0 32         CPY #$32                  
CODE_12DE00:        90 16         BCC CODE_12DE18           
CODE_12DE02:        A8            TAY                       
CODE_12DE03:        B5 46         LDA $46,x                 
CODE_12DE05:        C9 03         CMP #$03                  
CODE_12DE07:        B0 1E         BCS CODE_12DE27                   
CODE_12DE09:        A5 0D         LDA $0D                   
CODE_12DE0B:        29 03         AND #$03                  
CODE_12DE0D:        D0 18         BNE CODE_12DE27           
CODE_12DE0F:        B9 2F AB      LDA.w DATA_11AB2F,y               
CODE_12DE12:        95 3C         STA $3C,x                 
CODE_12DE14:        85 0B         STA $0B                   
CODE_12DE16:        D0 0F         BNE CODE_12DE27           
CODE_12DE18:        B4 3C         LDY $3C,x                 
CODE_12DE1A:        F0 09         BEQ CODE_12DE25           
CODE_12DE1C:        55 6E         EOR $6E,x                 
CODE_12DE1E:        4A            LSR A                     
CODE_12DE1F:        B0 04         BCS CODE_12DE25                   
CODE_12DE21:        D6 9E         DEC $9E,x                 
CODE_12DE23:        D6 9E         DEC $9E,x                 
CODE_12DE25:        F6 9E         INC $9E,x                 
CODE_12DE27:        B5 3C         LDA $3C,x                 
CODE_12DE29:        18            CLC                       
CODE_12DE2A:        7D CC 04      ADC $04CC,x               
CODE_12DE2D:        30 04         BMI CODE_12DE33           
CODE_12DE2F:        E6 07         INC $07                   
CODE_12DE31:        E6 08         INC $08                   
CODE_12DE33:        20 38 DE      JSR CODE_12DE38           
CODE_12DE36:        CA            DEX                       
CODE_12DE37:        60            RTS
                       
CODE_12DE38:        A4 08         LDY $08                   
CODE_12DE3A:        22 00 F9 13   JSL CODE_13F900           
CODE_12DE3E:        A4 07         LDY $07                   
CODE_12DE40:        B9 31 AB      LDA.w DATA_11AB31,y               
CODE_12DE43:        A8            TAY                       
CODE_12DE44:        A5 00         LDA $00                   
CODE_12DE46:        22 9C F9 13   JSL CODE_13F99C           
CODE_12DE4A:        90 09         BCC CODE_12DE55           
CODE_12DE4C:        A4 07         LDY $07                   
CODE_12DE4E:        B9 39 AB      LDA.w DATA_11AB39,y               
CODE_12DE51:        15 5A         ORA $5A,x                 
CODE_12DE53:        95 5A         STA $5A,x                 
CODE_12DE55:        E6 07         INC $07                   
CODE_12DE57:        E6 08         INC $08                   
CODE_12DE59:        60            RTS
                       
CODE_12DE5A:        E8            INX                       
CODE_12DE5B:        B5 5A         LDA $5A,x                 
CODE_12DE5D:        85 0D         STA $0D                   
CODE_12DE5F:        29 F0         AND #$F0                  
CODE_12DE61:        95 5A         STA $5A,x                 
CODE_12DE63:        BC 91 04      LDY $0491,x               
CODE_12DE66:        B9 FD CA      LDA.w DATA_11CAFD,y               
CODE_12DE69:        60            RTS
                       
CODE_12DE6A:        A9 00         LDA #$00                  
CODE_12DE6C:        9D CD 04      STA $04CD,x               
CODE_12DE6F:        B5 5B         LDA $5B,x                 
CODE_12DE71:        29 0F         AND #$0F                  
CODE_12DE73:        95 5B         STA $5B,x                 
CODE_12DE75:        B5 51         LDA $51,x                 
CODE_12DE77:        C9 04         CMP #$04                  
CODE_12DE79:        D0 04         BNE CODE_12DE7F           
CODE_12DE7B:        A0 06         LDY #$06                  
CODE_12DE7D:        D0 1E         BNE CODE_12DE9D           
CODE_12DE7F:        C9 07         CMP #$07                  
CODE_12DE81:        F0 13         BEQ CODE_12DE96           
CODE_12DE83:        B4 90         LDY $90,x                 
CODE_12DE85:        C0 1E         CPY #$1E                  
CODE_12DE87:        F0 09         BEQ CODE_12DE92           
CODE_12DE89:        C0 1A         CPY #$1A                  
CODE_12DE8B:        F0 05         BEQ CODE_12DE92           
CODE_12DE8D:        BC 2F 04      LDY $042F,x               
CODE_12DE90:        D0 04         BNE CODE_12DE96           
CODE_12DE92:        C9 01         CMP #$01                  
CODE_12DE94:        D0 D3         BNE CODE_12DE69           
CODE_12DE96:        B5 A8         LDA $A8,x                 
CODE_12DE98:        D0 CF         BNE CODE_12DE69           
CODE_12DE9A:        BC 89 04      LDY $0489,x               
CODE_12DE9D:        B9 28 11      LDA $1128,y               
CODE_12DEA0:        85 09         STA $09                   
CODE_12DEA2:        A9 00         LDA #$00                  
CODE_12DEA4:        85 00         STA $00                   
CODE_12DEA6:        B9 00 11      LDA $1100,y               
CODE_12DEA9:        10 02         BPL CODE_12DEAD           
CODE_12DEAB:        C6 00         DEC $00                   
CODE_12DEAD:        18            CLC                       
CODE_12DEAE:        75 29         ADC $29,x                 
CODE_12DEB0:        85 05         STA $05                   
CODE_12DEB2:        B5 15         LDA $15,x                 
CODE_12DEB4:        65 00         ADC $00                   
CODE_12DEB6:        85 01         STA $01                   
CODE_12DEB8:        A5 EB         LDA $EB                   
CODE_12DEBA:        D0 02         BNE CODE_12DEBE           
CODE_12DEBC:        85 01         STA $01                   
CODE_12DEBE:        B9 3C 11      LDA $113C,y               
CODE_12DEC1:        85 0B         STA $0B                   
CODE_12DEC3:        A9 00         LDA #$00                  
CODE_12DEC5:        85 00         STA $00                   
CODE_12DEC7:        B9 14 11      LDA $1114,y               
CODE_12DECA:        10 02         BPL CODE_12DECE           
CODE_12DECC:        C6 00         DEC $00                   
CODE_12DECE:        18            CLC                       
CODE_12DECF:        75 33         ADC $33,x                 
CODE_12DED1:        85 07         STA $07                   
CODE_12DED3:        B5 1F         LDA $1F,x                 
CODE_12DED5:        65 00         ADC $00                   
CODE_12DED7:        85 03         STA $03                   
CODE_12DED9:        86 EC         STX $EC                   
CODE_12DEDB:        8A            TXA                       
CODE_12DEDC:        D0 21         BNE CODE_12DEFF           
CODE_12DEDE:        AD C8 04      LDA $04C8                 
CODE_12DEE1:        0D 1B 04      ORA $041B                 
CODE_12DEE4:        D0 06         BNE CODE_12DEEC           
CODE_12DEE6:        B5 50         LDA $50,x                 
CODE_12DEE8:        C9 02         CMP #$02                  
CODE_12DEEA:        90 03         BCC CODE_12DEEF           
CODE_12DEEC:        4C 8D DF      JMP CODE_12DF8D           

CODE_12DEEF:        A4 12         LDY $12                   
CODE_12DEF1:        B9 2F 04      LDA $042F,y               
CODE_12DEF4:        F0 04         BEQ CODE_12DEFA           
CODE_12DEF6:        C9 20         CMP #$20                  
CODE_12DEF8:        90 F2         BCC CODE_12DEEC           
CODE_12DEFA:        A4 9A         LDY $9A                   
CODE_12DEFC:        4C 44 DF      JMP CODE_12DF44           

CODE_12DEFF:        A4 12         LDY $12                   
CODE_12DF01:        B9 51 00      LDA $0051,y               
CODE_12DF04:        C9 04         CMP #$04                  
CODE_12DF06:        F0 07         BEQ CODE_12DF0F           
CODE_12DF08:        B9 6E 04      LDA $046E,y               
CODE_12DF0B:        29 04         AND #$04                  
CODE_12DF0D:        D0 1F         BNE CODE_12DF2E           
CODE_12DF0F:        B5 50         LDA $50,x                 
CODE_12DF11:        C9 04         CMP #$04                  
CODE_12DF13:        D0 04         BNE CODE_12DF19           
CODE_12DF15:        A0 06         LDY #$06                  
CODE_12DF17:        D0 2B         BNE CODE_12DF44           
CODE_12DF19:        C9 07         CMP #$07                  
CODE_12DF1B:        F0 13         BEQ CODE_12DF30           
CODE_12DF1D:        B4 8F         LDY $8F,x                 
CODE_12DF1F:        C0 1E         CPY #$1E                  
CODE_12DF21:        F0 09         BEQ CODE_12DF2C           
CODE_12DF23:        C0 1A         CPY #$1A                  
CODE_12DF25:        F0 05         BEQ CODE_12DF2C           
CODE_12DF27:        BC 2E 04      LDY $042E,x               
CODE_12DF2A:        D0 04         BNE CODE_12DF30           
CODE_12DF2C:        C9 01         CMP #$01                  
CODE_12DF2E:        D0 5D         BNE CODE_12DF8D           
CODE_12DF30:        B5 A7         LDA $A7,x                 
CODE_12DF32:        D0 59         BNE CODE_12DF8D           
CODE_12DF34:        B5 5A         LDA $5A,x                 
CODE_12DF36:        29 10         AND #$10                  
CODE_12DF38:        D0 53         BNE CODE_12DF8D           
CODE_12DF3A:        BD 6D 04      LDA $046D,x               
CODE_12DF3D:        29 04         AND #$04                  
CODE_12DF3F:        D0 4C         BNE CODE_12DF8D           
CODE_12DF41:        BC 88 04      LDY $0488,x               
CODE_12DF44:        B9 28 11      LDA $1128,y               
CODE_12DF47:        85 0A         STA $0A                   
CODE_12DF49:        A9 00         LDA #$00                  
CODE_12DF4B:        85 00         STA $00                   
CODE_12DF4D:        B9 00 11      LDA $1100,y               
CODE_12DF50:        10 02         BPL CODE_12DF54           
CODE_12DF52:        C6 00         DEC $00                   
CODE_12DF54:        18            CLC                       
CODE_12DF55:        75 28         ADC $28,x                 
CODE_12DF57:        85 06         STA $06                   
CODE_12DF59:        B5 14         LDA $14,x                 
CODE_12DF5B:        65 00         ADC $00                   
CODE_12DF5D:        85 02         STA $02                   
CODE_12DF5F:        A5 EB         LDA $EB                   
CODE_12DF61:        D0 02         BNE CODE_12DF65           
CODE_12DF63:        85 02         STA $02                   
CODE_12DF65:        B9 3C 11      LDA $113C,y               
CODE_12DF68:        85 0C         STA $0C                   
CODE_12DF6A:        64 00         STZ $00                   
CODE_12DF6C:        B9 14 11      LDA $1114,y               
CODE_12DF6F:        10 02         BPL CODE_12DF73           
CODE_12DF71:        C6 00         DEC $00                   
CODE_12DF73:        18            CLC                       
CODE_12DF74:        75 32         ADC $32,x                 
CODE_12DF76:        85 08         STA $08                   
CODE_12DF78:        B5 1E         LDA $1E,x                 
CODE_12DF7A:        65 00         ADC $00                   
CODE_12DF7C:        85 04         STA $04                   
CODE_12DF7E:        22 E9 FA 13   JSL CODE_13FAE9           
CODE_12DF82:        B0 09         BCS CODE_12DF8D                   
CODE_12DF84:        A5 0B         LDA $0B                   
CODE_12DF86:        48            PHA                       
CODE_12DF87:        20 96 DF      JSR CODE_12DF96           
CODE_12DF8A:        68            PLA                       
CODE_12DF8B:        85 0B         STA $0B                   
CODE_12DF8D:        CA            DEX                       
CODE_12DF8E:        30 03         BMI CODE_12DF93           
CODE_12DF90:        4C D9 DE      JMP CODE_12DED9           

CODE_12DF93:        A6 12         LDX $12                   
CODE_12DF95:        60            RTS
                       
CODE_12DF96:        8A            TXA                       
CODE_12DF97:        D0 0B         BNE CODE_12DFA4           
CODE_12DF99:        A5 9C         LDA $9C                   
CODE_12DF9B:        F0 07         BEQ CODE_12DFA4           
CODE_12DF9D:        AD 2D 04      LDA $042D                 
CODE_12DFA0:        C5 12         CMP $12                   
CODE_12DFA2:        F0 F1         BEQ CODE_12DF95           
CODE_12DFA4:        A4 12         LDY $12                   
CODE_12DFA6:        B9 90 00      LDA $0090,y               
CODE_12DFA9:        A8            TAY                       
CODE_12DFAA:        B9 0B 12      LDA $120B,y               
CODE_12DFAD:        22 76 87 11   JSL CODE_118776

PNTR_12DFB1:        dw CODE_12E018
                    dw CODE_12E22F
                    dw CODE_12E1A2
                    dw CODE_12E229
                    dw CODE_12DFBB            

CODE_12DFBB:        8A            TXA
CODE_12DFBC:        D0 59         BNE CODE_12E017           
CODE_12DFBE:        A5 FA         LDA $FA                   
CODE_12DFC0:        29 08         AND #$08                  
CODE_12DFC2:        F0 53         BEQ CODE_12E017           
CODE_12DFC4:        A5 5A         LDA $5A                   
CODE_12DFC6:        29 04         AND #$04                  
CODE_12DFC8:        F0 4D         BEQ CODE_12E017           
CODE_12DFCA:        AD 26 04      LDA $0426                 
CODE_12DFCD:        C9 FA         CMP #$FA                  
CODE_12DFCF:        B0 46         BCS CODE_12E017                   
CODE_12DFD1:        AD BE 04      LDA $04BE                 
CODE_12DFD4:        0D B3 04      ORA $04B3                 
CODE_12DFD7:        D0 3E         BNE CODE_12E017           
CODE_12DFD9:        A5 9C         LDA $9C                   
CODE_12DFDB:        F0 0A         BEQ CODE_12DFE7           
CODE_12DFDD:        AC 2D 04      LDY $042D                 
CODE_12DFE0:        B9 90 00      LDA $0090,y               
CODE_12DFE3:        C9 3D         CMP #$3D                  
CODE_12DFE5:        D0 30         BNE CODE_12E017           
CODE_12DFE7:        AD 27 06      LDA $0627                 
CODE_12DFEA:        D0 2B         BNE CODE_12E017           
CODE_12DFEC:        A4 12         LDY $12                   
CODE_12DFEE:        B9 29 00      LDA $0029,y               
CODE_12DFF1:        85 28         STA $28                   
CODE_12DFF3:        B9 15 00      LDA $0015,y               
CODE_12DFF6:        85 14         STA $14                   
CODE_12DFF8:        22 42 FA 13   JSL CODE_13FA42           
CODE_12DFFC:        A9 04         LDA #$04                  
CODE_12DFFE:        8D 36 05      STA $0536                 
CODE_12E001:        AD 28 06      LDA $0628                 
CODE_12E004:        D0 0E         BNE CODE_12E014           
CODE_12E006:        AD 00 05      LDA $0500                 
CODE_12E009:        8D 9D 07      STA $079D                 
CODE_12E00C:        A9 80         LDA #$80                  
CODE_12E00E:        8D 00 05      STA $0500                 
CODE_12E011:        8D 9C 07      STA $079C                 
CODE_12E014:        4C 20 8B      JMP CODE_128B20           

CODE_12E017:        60            RTS
                       
CODE_12E018:        A4 12         LDY $12                   
CODE_12E01A:        8A            TXA                       
CODE_12E01B:        D0 03         BNE CODE_12E020           
CODE_12E01D:        82 83 00      BRL CODE_12E0A3           

CODE_12E020:        B9 5C 04      LDA $045C,y               
CODE_12E023:        1D 5B 04      ORA $045B,x               
CODE_12E026:        D0 EF         BNE CODE_12E017           
CODE_12E028:        B9 2F 04      LDA $042F,y               
CODE_12E02B:        D0 1F         BNE CODE_12E04C           
CODE_12E02D:        B9 51 00      LDA $0051,y               
CODE_12E030:        C9 04         CMP #$04                  
CODE_12E032:        F0 18         BEQ CODE_12E04C           
CODE_12E034:        8A            TXA                       
CODE_12E035:        A8            TAY                       
CODE_12E036:        88            DEY                       
CODE_12E037:        A6 12         LDX $12                   
CODE_12E039:        E8            INX                       
CODE_12E03A:        B9 51 00      LDA $0051,y               
CODE_12E03D:        C9 04         CMP #$04                  
CODE_12E03F:        F0 0B         BEQ CODE_12E04C           
CODE_12E041:        B9 2F 04      LDA $042F,y               
CODE_12E044:        F0 5A         BEQ CODE_12E0A0           
CODE_12E046:        B5 5A         LDA $5A,x                 
CODE_12E048:        29 10         AND #$10                  
CODE_12E04A:        D0 54         BNE CODE_12E0A0           
CODE_12E04C:        B9 53 04      LDA $0453,y               
CODE_12E04F:        19 5C 04      ORA $045C,y               
CODE_12E052:        D0 3D         BNE CODE_12E091           
CODE_12E054:        B9 6E 04      LDA $046E,y               
CODE_12E057:        29 08         AND #$08                  
CODE_12E059:        F0 03         BEQ CODE_12E05E           
CODE_12E05B:        20 52 E3      JSR CODE_12E352           
CODE_12E05E:        B9 65 04      LDA $0465,y               
CODE_12E061:        38            SEC                       
CODE_12E062:        E9 01         SBC #$01                  
CODE_12E064:        99 65 04      STA $0465,y               
CODE_12E067:        30 0E         BMI CODE_12E077           
CODE_12E069:        20 52 E3      JSR CODE_12E352           
CODE_12E06C:        A9 21         LDA #$21                  
CODE_12E06E:        99 5C 04      STA $045C,y               
CODE_12E071:        4A            LSR A                     
CODE_12E072:        99 38 04      STA $0438,y               
CODE_12E075:        D0 1A         BNE CODE_12E091           
CODE_12E077:        B9 5B 00      LDA $005B,y               
CODE_12E07A:        09 10         ORA #$10                  
CODE_12E07C:        99 5B 00      STA $005B,y               
CODE_12E07F:        A9 E0         LDA #$E0                  
CODE_12E081:        99 47 00      STA $0047,y               
CODE_12E084:        B9 3D 00      LDA $003D,y               
CODE_12E087:        85 00         STA $00                   
CODE_12E089:        0A            ASL A                     
CODE_12E08A:        66 00         ROR $00                   
CODE_12E08C:        A5 00         LDA $00                   
CODE_12E08E:        99 3D 00      STA $003D,y               
CODE_12E091:        B5 8F         LDA $8F,x                 
CODE_12E093:        C9 32         CMP #$32                  
CODE_12E095:        B0 09         BCS CODE_12E0A0                   
CODE_12E097:        B5 50         LDA $50,x                 
CODE_12E099:        C9 02         CMP #$02                  
CODE_12E09B:        F0 03         BEQ CODE_12E0A0           
CODE_12E09D:        20 32 E3      JSR CODE_12E332           
CODE_12E0A0:        A6 EC         LDX $EC                   
CODE_12E0A2:        60            RTS
                       
CODE_12E0A3:        A5 ED         LDA $ED                   
CODE_12E0A5:        29 08         AND #$08                  
CODE_12E0A7:        D0 4C         BNE CODE_12E0F5           
CODE_12E0A9:        A5 50         LDA $50                   
CODE_12E0AB:        C9 04         CMP #$04                  
CODE_12E0AD:        F0 46         BEQ CODE_12E0F5           
CODE_12E0AF:        B9 90 00      LDA $0090,y               
CODE_12E0B2:        D0 25         BNE CODE_12E0D9           
CODE_12E0B4:        99 51 00      STA $0051,y               
CODE_12E0B7:        AD C3 04      LDA $04C3                 
CODE_12E0BA:        C9 0F         CMP #$0F                  
CODE_12E0BC:        F0 05         BEQ CODE_12E0C3           
CODE_12E0BE:        A9 3B         LDA #$3B                  
CODE_12E0C0:        8D E3 1D      STA $1DE3                 
CODE_12E0C3:        AC C4 04      LDY $04C4                 
CODE_12E0C6:        AD C3 04      LDA $04C3                 
CODE_12E0C9:        18            CLC                       
CODE_12E0CA:        69 10         ADC #$10                  
CODE_12E0CC:        8D C3 04      STA $04C3                 
CODE_12E0CF:        D9 EE CB      CMP.w DATA_11CBEE,y               
CODE_12E0D2:        90 21         BCC CODE_12E0F5           
CODE_12E0D4:        22 98 E0 14   JSL CODE_14E098           
CODE_12E0D8:        60            RTS
                       
CODE_12E0D9:        C9 17         CMP #$17                  
CODE_12E0DB:        D0 05         BNE CODE_12E0E2           
CODE_12E0DD:        AC 95 05      LDY $0595                 
CODE_12E0E0:        D0 13         BNE CODE_12E0F5           
CODE_12E0E2:        C9 45         CMP #$45                  ; \ If in contact with star...
CODE_12E0E4:        D0 10         BNE CODE_12E0F6           ; / Make player invincible.
CODE_12E0E6:        A9 3F         LDA #$3F                  ; \ Flashing timer = #$3F.
CODE_12E0E8:        8D E1 04      STA $04E1                 ; /
CODE_12E0EB:        A9 0D         LDA #$0D                  ; \ Star music.
CODE_12E0ED:        8D E2 1D      STA $1DE2                 ; /
CODE_12E0F0:        A9 00         LDA #$00                  ; \ Remove sprite.
CODE_12E0F2:        99 51 00      STA $0051,y               ; /
CODE_12E0F5:        60            RTS                       ; Return.
                       
CODE_12E0F6:        C9 28         CMP #$28                  
CODE_12E0F8:        D0 17         BNE CODE_12E111           
CODE_12E0FA:        B9 79 00      LDA $0079,y               
CODE_12E0FD:        C9 DC         CMP #$DC                  
CODE_12E0FF:        B0 0F         BCS CODE_12E110                   
CODE_12E101:        AD E1 04      LDA $04E1                 
CODE_12E104:        F0 44         BEQ CODE_12E14A           
CODE_12E106:        A9 DC         LDA #$DC                  
CODE_12E108:        99 79 00      STA $0079,y               
CODE_12E10B:        A9 00         LDA #$00                  
CODE_12E10D:        99 47 00      STA $0047,y               
CODE_12E110:        60            RTS
                       
CODE_12E111:        C9 2C         CMP #$2C                  
CODE_12E113:        D0 04         BNE CODE_12E119           
CODE_12E115:        B5 B1         LDA $B1,x                 
CODE_12E117:        D0 F7         BNE CODE_12E110           
CODE_12E119:        AC E1 04      LDY $04E1                 
CODE_12E11C:        F0 2C         BEQ CODE_12E14A           
CODE_12E11E:        A6 12         LDX $12                   
CODE_12E120:        C9 27         CMP #$27                  
CODE_12E122:        F0 04         BEQ CODE_12E128           
CODE_12E124:        C9 20         CMP #$20                  
CODE_12E126:        D0 0B         BNE CODE_12E133           
CODE_12E128:        A9 00         LDA #$00                  
CODE_12E12A:        9D 6E 04      STA $046E,x               
CODE_12E12D:        20 FA B9      JSR CODE_12B9FA           
CODE_12E130:        4C 45 E1      JMP CODE_12E145           

CODE_12E133:        20 DA C1      JSR CODE_12C1DA           
CODE_12E136:        B9 41 AB      LDA.w DATA_11AB41,y               
CODE_12E139:        95 3D         STA $3D,x                 
CODE_12E13B:        A9 E0         LDA #$E0                  
CODE_12E13D:        95 47         STA $47,x                 
CODE_12E13F:        B5 5B         LDA $5B,x                 
CODE_12E141:        09 10         ORA #$10                  
CODE_12E143:        95 5B         STA $5B,x                 
CODE_12E145:        A6 EC         LDX $EC                   
CODE_12E147:        A4 12         LDY $12                   
CODE_12E149:        60            RTS                       
CODE_12E14A:        A4 12         LDY $12                   
CODE_12E14C:        B9 51 00      LDA $0051,y               
CODE_12E14F:        C9 04         CMP #$04                  
CODE_12E151:        F0 13         BEQ CODE_12E166           
CODE_12E153:        B9 6E 04      LDA $046E,y               
CODE_12E156:        29 01         AND #$01                  
CODE_12E158:        D0 0C         BNE CODE_12E166           
CODE_12E15A:        20 7E E3      JSR CODE_12E37E           
CODE_12E15D:        A5 0F         LDA $0F                   
CODE_12E15F:        D0 01         BNE CODE_12E162           
CODE_12E161:        60            RTS
                       
CODE_12E162:        29 0B         AND #$0B                  
CODE_12E164:        F0 03         BEQ CODE_12E169           
CODE_12E166:        4C CD E2      JMP CODE_12E2CD           

CODE_12E169:        A9 00         LDA #$00                  
CODE_12E16B:        85 99         STA $99                   
CODE_12E16D:        A6 12         LDX $12                   
CODE_12E16F:        B5 5B         LDA $5B,x                 
CODE_12E171:        09 20         ORA #$20                  
CODE_12E173:        95 5B         STA $5B,x                 
CODE_12E175:        BD 6E 04      LDA $046E,x               
CODE_12E178:        29 02         AND #$02                  
CODE_12E17A:        D0 23         BNE CODE_12E19F           
CODE_12E17C:        24 FA         BIT $FA                   ; \ Don't pick enemy up if not pressing X nor Y.
CODE_12E17E:        50 1F         BVC CODE_12E19F           ; /     
CODE_12E180:        A5 9C         LDA $9C                   
CODE_12E182:        05 9A         ORA $9A                   
CODE_12E184:        D0 19         BNE CODE_12E19F           
CODE_12E186:        95 5B         STA $5B,x                 
CODE_12E188:        8E 2D 04      STX $042D                 
CODE_12E18B:        9D 4A 04      STA $044A,x               
CODE_12E18E:        A9 07         LDA #$07                  
CODE_12E190:        95 A8         STA $A8,x                 
CODE_12E192:        22 D7 F9 13   JSL CODE_13F9D7           ; Handle player animation and sound effect.
CODE_12E196:        B5 90         LDA $90,x                 ; \ Handle JSR if Pidgit.
CODE_12E198:        C9 12         CMP #$12                  ;  |
CODE_12E19A:        D0 03         BNE CODE_12E19F           ; /
CODE_12E19C:        20 D8 C5      JSR CODE_12C5D8           ; Generate carpet.
CODE_12E19F:        A6 EC         LDX $EC                   
CODE_12E1A1:        60            RTS
                       
CODE_12E1A2:        A4 12         LDY $12                   
CODE_12E1A4:        8A            TXA                       
CODE_12E1A5:        F0 2D         BEQ CODE_12E1D4           
CODE_12E1A7:        B9 90 00      LDA $0090,y               
CODE_12E1AA:        C9 3D         CMP #$3D                  
CODE_12E1AC:        D0 07         BNE CODE_12E1B5           
CODE_12E1AE:        B9 5B 00      LDA $005B,y               
CODE_12E1B1:        29 04         AND #$04                  
CODE_12E1B3:        D0 1E         BNE CODE_12E1D3           
CODE_12E1B5:        B9 2F 04      LDA $042F,y               
CODE_12E1B8:        D0 16         BNE CODE_12E1D0           
CODE_12E1BA:        20 7E E3      JSR CODE_12E37E           
CODE_12E1BD:        A5 0F         LDA $0F                   
CODE_12E1BF:        35 6E         AND $6E,x                 
CODE_12E1C1:        F0 06         BEQ CODE_12E1C9           
CODE_12E1C3:        CA            DEX                       
CODE_12E1C4:        20 48 C2      JSR CODE_12C248           
CODE_12E1C7:        A6 EC         LDX $EC                   
CODE_12E1C9:        20 2C E4      JSR CODE_12E42C           
CODE_12E1CC:        C0 00         CPY #$00                  
CODE_12E1CE:        F0 03         BEQ CODE_12E1D3           
CODE_12E1D0:        4C BD E2      JMP CODE_12E2BD           

CODE_12E1D3:        60            RTS
                       
CODE_12E1D4:        B9 5B 00      LDA $005B,y               
CODE_12E1D7:        09 40         ORA #$40                  
CODE_12E1D9:        99 5B 00      STA $005B,y               
CODE_12E1DC:        20 7E E3      JSR CODE_12E37E           
CODE_12E1DF:        A5 0F         LDA $0F                   
CODE_12E1E1:        25 6E         AND $6E                   
CODE_12E1E3:        F0 04         BEQ CODE_12E1E9           
CODE_12E1E5:        22 BB F9 13   JSL CODE_13F9BB           
CODE_12E1E9:        A5 0F         LDA $0F                   
CODE_12E1EB:        29 04         AND #$04                  
CODE_12E1ED:        F0 03         BEQ CODE_12E1F2           
CODE_12E1EF:        20 69 E1      JSR CODE_12E169           
CODE_12E1F2:        20 2C E4      JSR CODE_12E42C           
CODE_12E1F5:        C0 01         CPY #$01                  
CODE_12E1F7:        D0 2F         BNE CODE_12E228           
CODE_12E1F9:        A4 12         LDY $12                   
CODE_12E1FB:        B9 47 00      LDA $0047,y               
CODE_12E1FE:        F0 28         BEQ CODE_12E228           
CODE_12E200:        29 80         AND #$80                  
CODE_12E202:        0A            ASL A                     
CODE_12E203:        2A            ROL A                     
CODE_12E204:        A8            TAY                       
CODE_12E205:        A5 0F         LDA $0F                   
CODE_12E207:        39 43 AB      AND.w DATA_11AB43,y               
CODE_12E20A:        F0 1C         BEQ CODE_12E228           
CODE_12E20C:        A4 12         LDY $12                   
CODE_12E20E:        B9 47 00      LDA $0047,y               
CODE_12E211:        49 FF         EOR #$FF                  
CODE_12E213:        18            CLC                       
CODE_12E214:        69 01         ADC #$01                  
CODE_12E216:        99 47 00      STA $0047,y               
CODE_12E219:        A9 01         LDA #$01                  
CODE_12E21B:        85 9A         STA $9A                   
CODE_12E21D:        A9 04         LDA #$04                  
CODE_12E21F:        9C 8C 07      STZ $078C                 
CODE_12E222:        85 C7         STA $C7                   
CODE_12E224:        A9 10         LDA #$10                  
CODE_12E226:        85 82         STA $82                   
CODE_12E228:        60            RTS
                       
CODE_12E229:        8A            TXA                       
CODE_12E22A:        F0 FC         BEQ CODE_12E228           
CODE_12E22C:        4C BD E2      JMP CODE_12E2BD           

CODE_12E22F:        A4 12         LDY $12                   
CODE_12E231:        8A            TXA                       
CODE_12E232:        D0 32         BNE CODE_12E266           
CODE_12E234:        B9 51 00      LDA $0051,y               
CODE_12E237:        C9 04         CMP #$04                  
CODE_12E239:        D0 06         BNE CODE_12E241           
CODE_12E23B:        AD E1 04      LDA $04E1                 
CODE_12E23E:        F0 23         BEQ CODE_12E263           
CODE_12E240:        60            RTS
                       
CODE_12E241:        20 7E E3      JSR CODE_12E37E           
CODE_12E244:        A5 0F         LDA $0F                   
CODE_12E246:        29 08         AND #$08                  
CODE_12E248:        F0 10         BEQ CODE_12E25A           
CODE_12E24A:        A5 9C         LDA $9C                   
CODE_12E24C:        D0 F2         BNE CODE_12E240           
CODE_12E24E:        A4 12         LDY $12                   
CODE_12E250:        8C 2D 04      STY $042D                 
CODE_12E253:        A9 01         LDA #$01                  
CODE_12E255:        99 A8 00      STA $00A8,y               
CODE_12E258:        E6 9C         INC $9C                   
CODE_12E25A:        A5 0F         LDA $0F                   
CODE_12E25C:        29 04         AND #$04                  
CODE_12E25E:        F0 E0         BEQ CODE_12E240           
CODE_12E260:        4C 69 E1      JMP CODE_12E169           

CODE_12E263:        4C CD E2      JMP CODE_12E2CD           

CODE_12E266:        B5 8F         LDA $8F,x                 
CODE_12E268:        C9 2C         CMP #$2C                  
CODE_12E26A:        D0 1E         BNE CODE_12E28A           
CODE_12E26C:        B5 85         LDA $85,x                 
CODE_12E26E:        F0 5C         BEQ CODE_12E2CC           
CODE_12E270:        A9 00         LDA #$00                  
CODE_12E272:        99 51 00      STA $0051,y               
CODE_12E275:        20 32 E3      JSR CODE_12E332           
CODE_12E278:        A9 60         LDA #$60                  
CODE_12E27A:        9D 5B 04      STA $045B,x               
CODE_12E27D:        4A            LSR A                     
CODE_12E27E:        9D 37 04      STA $0437,x               
CODE_12E281:        BD 64 04      LDA $0464,x               
CODE_12E284:        D0 03         BNE CODE_12E289           
CODE_12E286:        EE FB 04      INC $04FB                 
CODE_12E289:        60            RTS
                       
CODE_12E28A:        C9 32         CMP #$32                  
CODE_12E28C:        B0 FB         BCS CODE_12E289                   
CODE_12E28E:        C9 11         CMP #$11                  
CODE_12E290:        D0 0B         BNE CODE_12E29D           
CODE_12E292:        A9 05         LDA #$05                  
CODE_12E294:        99 51 00      STA $0051,y               
CODE_12E297:        A9 1E         LDA #$1E                  
CODE_12E299:        99 86 00      STA $0086,y               
CODE_12E29C:        60            RTS
                       
CODE_12E29D:        B9 51 00      LDA $0051,y               
CODE_12E2A0:        C9 04         CMP #$04                  
CODE_12E2A2:        F0 1B         BEQ CODE_12E2BF           
CODE_12E2A4:        B9 90 00      LDA $0090,y               
CODE_12E2A7:        C9 35         CMP #$35                  
CODE_12E2A9:        F0 12         BEQ CODE_12E2BD           
CODE_12E2AB:        A9 E8         LDA #$E8                  
CODE_12E2AD:        99 47 00      STA $0047,y               
CODE_12E2B0:        86 00         STX $00                   
CODE_12E2B2:        B6 3D         LDX $3D,y                 
CODE_12E2B4:        30 02         BMI CODE_12E2B8           
CODE_12E2B6:        A9 18         LDA #$18                  
CODE_12E2B8:        99 3D 00      STA $003D,y               
CODE_12E2BB:        A6 00         LDX $00                   
CODE_12E2BD:        A4 12         LDY $12                   
CODE_12E2BF:        20 32 E3      JSR CODE_12E332           
CODE_12E2C2:        D0 08         BNE CODE_12E2CC           
CODE_12E2C4:        B5 3C         LDA $3C,x                 
CODE_12E2C6:        0A            ASL A                     
CODE_12E2C7:        76 3C         ROR $3C,x                 
CODE_12E2C9:        0A            ASL A                     
CODE_12E2CA:        76 3C         ROR $3C,x                 
CODE_12E2CC:        60            RTS
                       
CODE_12E2CD:        A5 85         LDA $85                   
CODE_12E2CF:        D0 33         BNE CODE_12E304           
CODE_12E2D1:        AD C3 04      LDA $04C3                 
CODE_12E2D4:        38            SEC                       
CODE_12E2D5:        E9 10         SBC #$10                  
CODE_12E2D7:        90 2C         BCC CODE_12E305           
CODE_12E2D9:        8D C3 04      STA $04C3                 
CODE_12E2DC:        A0 7F         LDY #$7F                  
CODE_12E2DE:        84 85         STY $85                   
CODE_12E2E0:        A0 00         LDY #$00                  
CODE_12E2E2:        84 46         STY $46                   
CODE_12E2E4:        84 3C         STY $3C                   
CODE_12E2E6:        C9 10         CMP #$10                  
CODE_12E2E8:        90 15         BCC CODE_12E2FF           
CODE_12E2EA:        AD 28 04      LDA $0428                 
CODE_12E2ED:        38            SEC                       
CODE_12E2EE:        ED 29 04      SBC $0429                 
CODE_12E2F1:        0A            ASL A                     
CODE_12E2F2:        0A            ASL A                     
CODE_12E2F3:        85 3C         STA $3C                   
CODE_12E2F5:        A9 C0         LDA #$C0                  
CODE_12E2F7:        A4 46         LDY $46                   
CODE_12E2F9:        10 02         BPL CODE_12E2FD           
CODE_12E2FB:        A9 00         LDA #$00                  
CODE_12E2FD:        85 46         STA $46                   
CODE_12E2FF:        A9 33         LDA #$33                  
CODE_12E301:        8D E0 1D      STA $1DE0                 
CODE_12E304:        60            RTS
                       
CODE_12E305:        8A            TXA                       
CODE_12E306:        48            PHA                       
CODE_12E307:        A6 12         LDX $12                   
CODE_12E309:        B5 90         LDA $90,x                 
CODE_12E30B:        C9 0F         CMP #$0F                  
CODE_12E30D:        B0 0C         BCS CODE_12E31B                   
CODE_12E30F:        20 DA C1      JSR CODE_12C1DA           
CODE_12E312:        C8            INY                       
CODE_12E313:        98            TYA                       
CODE_12E314:        D5 6F         CMP $6F,x                 
CODE_12E316:        F0 03         BEQ CODE_12E31B           
CODE_12E318:        20 48 C2      JSR CODE_12C248           
CODE_12E31B:        68            PLA                       
CODE_12E31C:        AA            TAX                       
CODE_12E31D:        A9 C0         LDA #$C0                  ; \ Rise in air.
CODE_12E31F:        85 46         STA $46                   ; /
CODE_12E321:        A9 20         LDA #$20                  ; \ Remain mid-air for some time.
CODE_12E323:        85 82         STA $82                   ; /
CODE_12E325:        A4 12         LDY $12                   
CODE_12E327:        30 04         BMI CODE_12E32D           
CODE_12E329:        4A            LSR A                     
CODE_12E32A:        99 38 04      STA $0438,y               
CODE_12E32D:        22 9F E3 14   JSL CODE_14E39F           ; Kill player.
CODE_12E331:        60            RTS
                       
CODE_12E332:        BD 52 04      LDA $0452,x               
CODE_12E335:        1D 5B 04      ORA $045B,x               
CODE_12E338:        D0 43         BNE CODE_12E37D           
CODE_12E33A:        BD 6D 04      LDA $046D,x               
CODE_12E33D:        29 08         AND #$08                  
CODE_12E33F:        F0 03         BEQ CODE_12E344           
CODE_12E341:        20 52 E3      JSR CODE_12E352           
CODE_12E344:        DE 64 04      DEC $0464,x               
CODE_12E347:        30 23         BMI CODE_12E36C           
CODE_12E349:        A9 21         LDA #$21                  
CODE_12E34B:        9D 5B 04      STA $045B,x               
CODE_12E34E:        4A            LSR A                     
CODE_12E34F:        9D 37 04      STA $0437,x               
CODE_12E352:        B5 8F         LDA $8F,x                 
CODE_12E354:        C9 2C         CMP #$2C                  
CODE_12E356:        D0 0E         BNE CODE_12E366           
CODE_12E358:        BD 64 04      LDA $0464,x               
CODE_12E35B:        D0 09         BNE CODE_12E366           
CODE_12E35D:        A9 F0         LDA #$F0                  
CODE_12E35F:        8D E2 1D      STA $1DE2                 
CODE_12E362:        A9 47         LDA #$47                  
CODE_12E364:        80 02         BRA CODE_12E368           

CODE_12E366:        A9 28         LDA #$28                  
CODE_12E368:        8D E3 1D      STA $1DE3                 
CODE_12E36B:        60            RTS
                       
CODE_12E36C:        B5 5A         LDA $5A,x                 
CODE_12E36E:        09 10         ORA #$10                  
CODE_12E370:        95 5A         STA $5A,x                 
CODE_12E372:        A9 E0         LDA #$E0                  
CODE_12E374:        95 46         STA $46,x                 
CODE_12E376:        B9 3D 00      LDA $003D,y               
CODE_12E379:        95 3C         STA $3C,x                 
CODE_12E37B:        A9 00         LDA #$00                  
CODE_12E37D:        60            RTS
                       
CODE_12E37E:        A9 00         LDA #$00                  
CODE_12E380:        85 0F         STA $0F                   
CODE_12E382:        A4 12         LDY $12                   
CODE_12E384:        AD 27 04      LDA $0427                 
CODE_12E387:        C9 F4         CMP #$F4                  
CODE_12E389:        B0 20         BCS CODE_12E3AB                   
CODE_12E38B:        B9 29 00      LDA $0029,y               
CODE_12E38E:        A0 02         LDY #$02                  
CODE_12E390:        D5 28         CMP $28,x                 
CODE_12E392:        30 02         BMI CODE_12E396           
CODE_12E394:        A0 01         LDY #$01                  
CODE_12E396:        84 0F         STY $0F                   
CODE_12E398:        98            TYA                       
CODE_12E399:        35 6E         AND $6E,x                 
CODE_12E39B:        F0 0D         BEQ CODE_12E3AA           
CODE_12E39D:        A4 12         LDY $12                   
CODE_12E39F:        B9 A4 04      LDA $04A4,y               
CODE_12E3A2:        D0 06         BNE CODE_12E3AA           
CODE_12E3A4:        B9 3D 00      LDA $003D,y               
CODE_12E3A7:        9D CC 04      STA $04CC,x               
CODE_12E3AA:        60            RTS
                       
CODE_12E3AB:        B9 33 00      LDA $0033,y               
CODE_12E3AE:        E0 01         CPX #$01                  
CODE_12E3B0:        B0 08         BCS CODE_12E3BA                   
CODE_12E3B2:        48            PHA                       
CODE_12E3B3:        A4 9A         LDY $9A                   
CODE_12E3B5:        68            PLA                       
CODE_12E3B6:        38            SEC                       
CODE_12E3B7:        F9 45 AB      SBC.w DATA_11AB45,y               
CODE_12E3BA:        D5 32         CMP $32,x                 
CODE_12E3BC:        30 37         BMI CODE_12E3F5           
CODE_12E3BE:        B5 46         LDA $46,x                 
CODE_12E3C0:        10 09         BPL CODE_12E3CB           
CODE_12E3C2:        A4 12         LDY $12                   
CODE_12E3C4:        B9 47 00      LDA $0047,y               
CODE_12E3C7:        30 0F         BMI CODE_12E3D8           
CODE_12E3C9:        80 60         BRA CODE_12E42B           

CODE_12E3CB:        A4 12         LDY $12                   
CODE_12E3CD:        B9 A4 04      LDA $04A4,y               
CODE_12E3D0:        D0 06         BNE CODE_12E3D8           
CODE_12E3D2:        B9 3D 00      LDA $003D,y               
CODE_12E3D5:        9D CC 04      STA $04CC,x               
CODE_12E3D8:        A0 00         LDY #$00                  
CODE_12E3DA:        EE 27 04      INC $0427                 
CODE_12E3DD:        10 01         BPL CODE_12E3E0           
CODE_12E3DF:        88            DEY                       
CODE_12E3E0:        AD 27 04      LDA $0427                 
CODE_12E3E3:        18            CLC                       
CODE_12E3E4:        75 32         ADC $32,x                 
CODE_12E3E6:        95 32         STA $32,x                 
CODE_12E3E8:        98            TYA                       
CODE_12E3E9:        75 1E         ADC $1E,x                 
CODE_12E3EB:        95 1E         STA $1E,x                 
CODE_12E3ED:        B5 46         LDA $46,x                 
CODE_12E3EF:        30 3A         BMI CODE_12E42B           
CODE_12E3F1:        A0 04         LDY #$04                  
CODE_12E3F3:        D0 1E         BNE CODE_12E413           
CODE_12E3F5:        B5 46         LDA $46,x                 
CODE_12E3F7:        F0 0B         BEQ CODE_12E404           
CODE_12E3F9:        10 30         BPL CODE_12E42B           
CODE_12E3FB:        A4 12         LDY $12                   
CODE_12E3FD:        B9 90 00      LDA $0090,y               
CODE_12E400:        C9 36         CMP #$36                  
CODE_12E402:        F0 27         BEQ CODE_12E42B           
CODE_12E404:        A4 12         LDY $12                   
CODE_12E406:        B9 90 00      LDA $0090,y               
CODE_12E409:        C9 44         CMP #$44                  
CODE_12E40B:        F0 1E         BEQ CODE_12E42B           
CODE_12E40D:        C9 39         CMP #$39                  
CODE_12E40F:        F0 1A         BEQ CODE_12E42B           
CODE_12E411:        A0 08         LDY #$08                  
CODE_12E413:        84 0F         STY $0F                   
CODE_12E415:        A4 12         LDY $12                   
CODE_12E417:        B9 A4 04      LDA $04A4,y               
CODE_12E41A:        D0 06         BNE CODE_12E422           
CODE_12E41C:        B9 47 00      LDA $0047,y               
CODE_12E41F:        9D D6 04      STA $04D6,x               
CODE_12E422:        A9 10         LDA #$10                  
CODE_12E424:        95 46         STA $46,x                 
CODE_12E426:        9E 11 04      STZ $0411,x               
CODE_12E429:        F6 9E         INC $9E,x                 
CODE_12E42B:        60            RTS
                       
CODE_12E42C:        A0 00         LDY #$00                  
CODE_12E42E:        B5 5A         LDA $5A,x                 
CODE_12E430:        05 0F         ORA $0F                   
CODE_12E432:        29 0C         AND #$0C                  
CODE_12E434:        C9 0C         CMP #$0C                  
CODE_12E436:        F0 0B         BEQ CODE_12E443           
CODE_12E438:        B5 5A         LDA $5A,x                 
CODE_12E43A:        05 0F         ORA $0F                   
CODE_12E43C:        29 03         AND #$03                  
CODE_12E43E:        C9 03         CMP #$03                  
CODE_12E440:        D0 02         BNE CODE_12E444           
CODE_12E442:        C8            INY                       
CODE_12E443:        C8            INY                       
CODE_12E444:        60            RTS
                       
CODE_12E445:        22 00 F9 13   JSL CODE_13F900           
CODE_12E449:        A5 00         LDA $00                   
CODE_12E44B:        A0 09         LDY #$09                  
CODE_12E44D:        D9 50 9B      CMP.w DATA_119B50,y               
CODE_12E450:        F0 04         BEQ CODE_12E456           
CODE_12E452:        88            DEY                       
CODE_12E453:        10 F8         BPL CODE_12E44D           
CODE_12E455:        18            CLC                       
CODE_12E456:        60            RTS
                       
DATA_12E457:        db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ; \ Empty.
                    db $FF                                  ; /
           
CODE_12E460:        0A            ASL A
CODE_12E461:        AA            TAX             
CODE_12E462:        7C 65 E4      JMP (PNTR_12E465,x)                   

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
                  
CODE_12E47F:        0A            ASL A
CODE_12E480:        AA            TAX               
CODE_12E481:        7C 84 E4      JMP (PNTR_12E484,x)

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
                     
CODE_12E4A4:        AD 0F 05      LDA $050F           
CODE_12E4A7:        0A            ASL A
CODE_12E4A8:        AA            TAX            
CODE_12E4A9:        7C AC E4      JMP (PNTR_12E4AC,x)

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
                           
CODE_12E4CE:        AD 0F 05      LDA $050F                 ; \ Get object type number (0 = bricks, 1 = X-blocks, etc. C = waterfalls) * 4 into $0F.
CODE_12E4D1:        0A            ASL                       ;  |
CODE_12E4D2:        0A            ASL A                     ;  |
CODE_12E4D3:        85 0F         STA $0F                   ; /
CODE_12E4D5:        AD 45 05      LDA $0545                 
CODE_12E4D8:        AE 0F 05      LDX $050F                 
CODE_12E4DB:        E0 07         CPX #$07                  
CODE_12E4DD:        B0 03         BCS CODE_12E4E2                   
CODE_12E4DF:        AD 44 05      LDA $0544                 
CODE_12E4E2:        18            CLC                       
CODE_12E4E3:        65 0F         ADC $0F                   
CODE_12E4E5:        AA            TAX                       
CODE_12E4E6:        AD 0F 05      LDA $050F                 
CODE_12E4E9:        C9 03         CMP #$03                  
CODE_12E4EB:        D0 2D         BNE CODE_12E51A           
CODE_12E4ED:        B7 01         LDA [$01],y               
CODE_12E4EF:        C9 1C         CMP #$1C                  
CODE_12E4F1:        D0 05         BNE CODE_12E4F8           
CODE_12E4F3:        A9 2A         LDA #$2A                  
CODE_12E4F5:        82 B0 00      BRL CODE_12E5A8           

CODE_12E4F8:        C9 20         CMP #$20                  
CODE_12E4FA:        D0 05         BNE CODE_12E501           
CODE_12E4FC:        A9 29         LDA #$29                  
CODE_12E4FE:        82 A7 00      BRL CODE_12E5A8           

CODE_12E501:        C9 21         CMP #$21                  
CODE_12E503:        D0 05         BNE CODE_12E50A           
CODE_12E505:        A9 2B         LDA #$2B                  
CODE_12E507:        82 9E 00      BRL CODE_12E5A8           

CODE_12E50A:        AD 33 05      LDA $0533                 
CODE_12E50D:        C9 02         CMP #$02                  
CODE_12E50F:        F0 04         BEQ CODE_12E515           
CODE_12E511:        C9 0B         CMP #$0B                  
CODE_12E513:        D0 05         BNE CODE_12E51A           
CODE_12E515:        A9 28         LDA #$28                  
CODE_12E517:        82 8E 00      BRL CODE_12E5A8           

CODE_12E51A:        86 07         STX $07                   
CODE_12E51C:        84 08         STY $08                   
CODE_12E51E:        AE 35 06      LDX $0635                 
CODE_12E521:        BD 64 B5      LDA.w PNTR_11B564,x               
CODE_12E524:        85 0C         STA $0C                   
CODE_12E526:        BD 6B B5      LDA.w PNTR_11B56B,x               
CODE_12E529:        85 0D         STA $0D                   
CODE_12E52B:        A9 11         LDA #$11                  
CODE_12E52D:        85 0E         STA $0E                   
CODE_12E52F:        A4 07         LDY $07                   
CODE_12E531:        B7 0C         LDA [$0C],y               
CODE_12E533:        9C 62 07      STZ $0762                 
CODE_12E536:        AE 33 05      LDX $0533                 
CODE_12E539:        E0 11         CPX #$11                  
CODE_12E53B:        D0 09         BNE CODE_12E546           
CODE_12E53D:        AE 34 05      LDX $0534                 
CODE_12E540:        E0 03         CPX #$03                  
CODE_12E542:        D0 02         BNE CODE_12E546           
CODE_12E544:        80 16         BRA CODE_12E55C    
       
CODE_12E546:        AE 33 05      LDX $0533                 
CODE_12E549:        E0 0D         CPX #$0D                  
CODE_12E54B:        D0 0B         BNE CODE_12E558           
CODE_12E54D:        AE 34 05      LDX $0534                 
CODE_12E550:        E0 02         CPX #$02                  
CODE_12E552:        F0 08         BEQ CODE_12E55C           
CODE_12E554:        E0 03         CPX #$03                  
CODE_12E556:        F0 04         BEQ CODE_12E55C           
CODE_12E558:        A6 EB         LDX $EB                   
CODE_12E55A:        F0 08         BEQ CODE_12E564           
CODE_12E55C:        20 B4 E5      JSR CODE_12E5B4           
CODE_12E55F:        AE 62 07      LDX $0762                 
CODE_12E562:        D0 49         BNE CODE_12E5AD           
CODE_12E564:        20 A6 E7      JSR CODE_12E7A6           
CODE_12E567:        A4 08         LDY $08                   
CODE_12E569:        A6 07         LDX $07                   
CODE_12E56B:        C9 B0         CMP #$B0                  
CODE_12E56D:        D0 1A         BNE CODE_12E589           
CODE_12E56F:        AE 33 05      LDX $0533                 
CODE_12E572:        E0 0B         CPX #$0B                  
CODE_12E574:        D0 13         BNE CODE_12E589           
CODE_12E576:        AE 34 05      LDX $0534                 
CODE_12E579:        E0 04         CPX #$04                  
CODE_12E57B:        D0 0C         BNE CODE_12E589           
CODE_12E57D:        20 F3 F1      JSR CODE_12F1F3           
CODE_12E580:        AE 0E 05      LDX $050E                 
CODE_12E583:        BF CC E4 12   LDA.l DATA_12E4CC,x             
CODE_12E587:        80 1B         BRA CODE_12E5A4
           
CODE_12E589:        C9 B0         CMP #$B0                  
CODE_12E58B:        D0 17         BNE CODE_12E5A4           
CODE_12E58D:        AE 33 05      LDX $0533                 
CODE_12E590:        E0 02         CPX #$02                  
CODE_12E592:        D0 07         BNE CODE_12E59B           
CODE_12E594:        AE 34 05      LDX $0534                 
CODE_12E597:        E0 03         CPX #$03                  
CODE_12E599:        F0 07         BEQ CODE_12E5A2           
CODE_12E59B:        AE 33 05      LDX $0533                 
CODE_12E59E:        E0 08         CPX #$08                  
CODE_12E5A0:        D0 02         BNE CODE_12E5A4           
CODE_12E5A2:        A9 3E         LDA #$3E                  
CODE_12E5A4:        97 01         STA [$01],y               
CODE_12E5A6:        80 02         BRA CODE_12E5AA           

CODE_12E5A8:        97 01         STA [$01],y               
CODE_12E5AA:        20 3A F1      JSR CODE_12F13A           
CODE_12E5AD:        60            RTS
           
DATA_12E5AE:        db $04,$10

DATA_12E5B0:        db $07,$13

DATA_12E5B2:        db $09,$18            
              
CODE_12E5B4:        8D 21 07      STA $0721                 
CODE_12E5B7:        C9 AE         CMP #$AE                  
CODE_12E5B9:        F0 01         BEQ CODE_12E5BC           
CODE_12E5BB:        60            RTS
                       
CODE_12E5BC:        AD 68 07      LDA $0768                 
CODE_12E5BF:        D0 03         BNE CODE_12E5C4           
CODE_12E5C1:        82 CC 00      BRL CODE_12E690           

CODE_12E5C4:        A5 01         LDA $01                   
CODE_12E5C6:        8D 13 07      STA $0713                 
CODE_12E5C9:        A5 02         LDA $02                   
CODE_12E5CB:        8D 14 07      STA $0714                 
CODE_12E5CE:        A5 08         LDA $08                   
CODE_12E5D0:        29 0F         AND #$0F                  
CODE_12E5D2:        D0 03         BNE CODE_12E5D7           
CODE_12E5D4:        82 85 00      BRL CODE_12E65C           

CODE_12E5D7:        A4 08         LDY $08                   
CODE_12E5D9:        88            DEY                       
CODE_12E5DA:        B7 01         LDA [$01],y               
CODE_12E5DC:        C9 40         CMP #$40                  
CODE_12E5DE:        D0 30         BNE CODE_12E610           
CODE_12E5E0:        C8            INY                       
CODE_12E5E1:        C8            INY                       
CODE_12E5E2:        B7 01         LDA [$01],y               
CODE_12E5E4:        C9 40         CMP #$40                  
CODE_12E5E6:        F0 74         BEQ CODE_12E65C           
CODE_12E5E8:        20 63 E7      JSR CODE_12E763           
CODE_12E5EB:        A5 08         LDA $08                   
CODE_12E5ED:        29 F0         AND #$F0                  
CODE_12E5EF:        F0 10         BEQ CODE_12E601           
CODE_12E5F1:        A5 08         LDA $08                   
CODE_12E5F3:        38            SEC                       
CODE_12E5F4:        E9 10         SBC #$10                  
CODE_12E5F6:        A8            TAY                       
CODE_12E5F7:        B7 01         LDA [$01],y               
CODE_12E5F9:        C9 40         CMP #$40                  
CODE_12E5FB:        D0 04         BNE CODE_12E601           
CODE_12E5FD:        A9 00         LDA #$00                  
CODE_12E5FF:        80 7E         BRA CODE_12E67F           

CODE_12E601:        A5 08         LDA $08                   
CODE_12E603:        29 10         AND #$10                  
CODE_12E605:        4A            LSR A                     
CODE_12E606:        4A            LSR A                     
CODE_12E607:        4A            LSR A                     
CODE_12E608:        4A            LSR A                     
CODE_12E609:        AA            TAX                       
CODE_12E60A:        BF AE E5 12   LDA.l DATA_12E5AE,x             
CODE_12E60E:        80 6F         BRA CODE_12E67F           

CODE_12E610:        A5 08         LDA $08                   
CODE_12E612:        29 0F         AND #$0F                  
CODE_12E614:        F0 03         BEQ CODE_12E619           
CODE_12E616:        20 BE E6      JSR CODE_12E6BE           
CODE_12E619:        A5 08         LDA $08                   
CODE_12E61B:        29 F0         AND #$F0                  
CODE_12E61D:        F0 20         BEQ CODE_12E63F           
CODE_12E61F:        A5 08         LDA $08                   
CODE_12E621:        38            SEC                       
CODE_12E622:        E9 10         SBC #$10                  
CODE_12E624:        A8            TAY                       
CODE_12E625:        B7 01         LDA [$01],y               
CODE_12E627:        C9 40         CMP #$40                  
CODE_12E629:        F0 10         BEQ CODE_12E63B           
CODE_12E62B:        C2 20         REP #$20                  
CODE_12E62D:        A5 01         LDA $01                   
CODE_12E62F:        18            CLC                       
CODE_12E630:        69 00 70      ADC #$7000                
CODE_12E633:        85 01         STA $01                   
CODE_12E635:        E2 20         SEP #$20                  
CODE_12E637:        B7 01         LDA [$01],y               
CODE_12E639:        D0 04         BNE CODE_12E63F           
CODE_12E63B:        A9 03         LDA #$03                  
CODE_12E63D:        80 40         BRA CODE_12E67F           

CODE_12E63F:        AD 14 07      LDA $0714                 
CODE_12E642:        85 02         STA $02                   
CODE_12E644:        A4 08         LDY $08                   
CODE_12E646:        88            DEY                       
CODE_12E647:        B7 01         LDA [$01],y               
CODE_12E649:        C9 C2         CMP #$C2                  
CODE_12E64B:        F0 B4         BEQ CODE_12E601           
CODE_12E64D:        A5 08         LDA $08                   
CODE_12E64F:        29 10         AND #$10                  
CODE_12E651:        4A            LSR A                     
CODE_12E652:        4A            LSR A                     
CODE_12E653:        4A            LSR A                     
CODE_12E654:        4A            LSR A                     
CODE_12E655:        AA            TAX                       
CODE_12E656:        BF B0 E5 12   LDA.l DATA_12E5B0,x             
CODE_12E65A:        80 23         BRA CODE_12E67F           

CODE_12E65C:        A5 08         LDA $08                   
CODE_12E65E:        29 F0         AND #$F0                  
CODE_12E660:        F0 10         BEQ CODE_12E672           
CODE_12E662:        A5 08         LDA $08                   
CODE_12E664:        38            SEC                       
CODE_12E665:        E9 10         SBC #$10                  
CODE_12E667:        A8            TAY                       
CODE_12E668:        B7 01         LDA [$01],y               
CODE_12E66A:        C9 40         CMP #$40                  
CODE_12E66C:        D0 04         BNE CODE_12E672           
CODE_12E66E:        A9 08         LDA #$08                  
CODE_12E670:        80 0D         BRA CODE_12E67F           

CODE_12E672:        A5 08         LDA $08                   
CODE_12E674:        29 10         AND #$10                  
CODE_12E676:        4A            LSR A                     
CODE_12E677:        4A            LSR A                     
CODE_12E678:        4A            LSR A                     
CODE_12E679:        4A            LSR A                     
CODE_12E67A:        AA            TAX                       
CODE_12E67B:        BF B2 E5 12   LDA.l DATA_12E5B2,x             
CODE_12E67F:        AE 13 07      LDX $0713                 
CODE_12E682:        86 01         STX $01                   
CODE_12E684:        AE 14 07      LDX $0714                 
CODE_12E687:        86 02         STX $02                   
CODE_12E689:        A4 08         LDY $08                   
CODE_12E68B:        97 01         STA [$01],y               
CODE_12E68D:        20 54 F1      JSR CODE_12F154           
CODE_12E690:        EE 62 07      INC $0762                 
CODE_12E693:        AD 21 07      LDA $0721                 
CODE_12E696:        60            RTS
           
DATA_12E697:         db $01,$02,$05,$06,$11,$12,$00,$04
                     db $10,$03,$07,$13

DATA_12E6A3:         db $02,$01,$06,$05,$12,$11,$01,$05
                     db $11,$02,$06,$12

DATA_12E6AF:         db $08,$09,$18

DATA_12E6B2:         db $00,$10,$04

DATA_12E6B5:         db $01,$06,$12

DATA_12E6B8:         db $03,$07,$13

DATA_12E6BB:         db $01,$05,$11
                            
CODE_12E6BE:        A4 08         LDY $08                   
CODE_12E6C0:        88            DEY                       
CODE_12E6C1:        A5 02         LDA $02                   
CODE_12E6C3:        8D 14 07      STA $0714                 
CODE_12E6C6:        18            CLC                       
CODE_12E6C7:        69 70         ADC #$70                  
CODE_12E6C9:        85 02         STA $02                   
CODE_12E6CB:        B7 01         LDA [$01],y               
CODE_12E6CD:        D0 03         BNE CODE_12E6D2           
CODE_12E6CF:        82 8B 00      BRL CODE_12E75D           

CODE_12E6D2:        AD 14 07      LDA $0714                 
CODE_12E6D5:        85 02         STA $02                   
CODE_12E6D7:        AD 33 05      LDA $0533                 
CODE_12E6DA:        C9 0C         CMP #$0C                  
CODE_12E6DC:        D0 1C         BNE CODE_12E6FA           
CODE_12E6DE:        AD 34 05      LDA $0534                 
CODE_12E6E1:        C9 01         CMP #$01                  
CODE_12E6E3:        D0 15         BNE CODE_12E6FA           
CODE_12E6E5:        A2 02         LDX #$02                  
CODE_12E6E7:        B7 01         LDA [$01],y               
CODE_12E6E9:        DF AF E6 12   CMP $12E6AF,x             
CODE_12E6ED:        F0 05         BEQ CODE_12E6F4           
CODE_12E6EF:        CA            DEX                       
CODE_12E6F0:        10 F7         BPL CODE_12E6E9           
CODE_12E6F2:        80 1F         BRA CODE_12E713           

CODE_12E6F4:        BF B5 E6 12   LDA.l DATA_12E6B5,x             
CODE_12E6F8:        80 5E         BRA CODE_12E758           

CODE_12E6FA:        B7 01         LDA [$01],y               
CODE_12E6FC:        F0 5F         BEQ CODE_12E75D           
CODE_12E6FE:        C9 04         CMP #$04                  
CODE_12E700:        F0 5B         BEQ CODE_12E75D           
CODE_12E702:        C9 10         CMP #$10                  
CODE_12E704:        F0 57         BEQ CODE_12E75D           
CODE_12E706:        A2 02         LDX #$02                  
CODE_12E708:        B7 01         LDA [$01],y               
CODE_12E70A:        DF AF E6 12   CMP $12E6AF,x             
CODE_12E70E:        F0 44         BEQ CODE_12E754           
CODE_12E710:        CA            DEX                       
CODE_12E711:        10 F7         BPL CODE_12E70A           
CODE_12E713:        88            DEY                       
CODE_12E714:        A5 02         LDA $02                   
CODE_12E716:        18            CLC                       
CODE_12E717:        69 70         ADC #$70                  
CODE_12E719:        85 02         STA $02                   
CODE_12E71B:        B7 01         LDA [$01],y               
CODE_12E71D:        D0 1B         BNE CODE_12E73A           
CODE_12E71F:        AD 14 07      LDA $0714                 
CODE_12E722:        85 02         STA $02                   
CODE_12E724:        A2 02         LDX #$02                  
CODE_12E726:        C8            INY                       
CODE_12E727:        B7 01         LDA [$01],y               
CODE_12E729:        DF B8 E6 12   CMP $12E6B8,x             
CODE_12E72D:        F0 05         BEQ CODE_12E734           
CODE_12E72F:        CA            DEX                       
CODE_12E730:        10 F7         BPL CODE_12E729           
CODE_12E732:        80 29         BRA CODE_12E75D           

CODE_12E734:        BF BB E6 12   LDA.l DATA_12E6BB,x             
CODE_12E738:        80 1E         BRA CODE_12E758           

CODE_12E73A:        AD 14 07      LDA $0714                 
CODE_12E73D:        85 02         STA $02                   
CODE_12E73F:        A2 0B         LDX #$0B                  
CODE_12E741:        B7 01         LDA [$01],y               
CODE_12E743:        DF 97 E6 12   CMP $12E697,x             
CODE_12E747:        F0 05         BEQ CODE_12E74E           
CODE_12E749:        CA            DEX                       
CODE_12E74A:        10 F7         BPL CODE_12E743           
CODE_12E74C:        80 0F         BRA CODE_12E75D           

CODE_12E74E:        BF A3 E6 12   LDA.l DATA_12E6A3,x             
CODE_12E752:        80 04         BRA CODE_12E758           

CODE_12E754:        BF B2 E6 12   LDA.l DATA_12E6B2,x             
CODE_12E758:        A4 08         LDY $08                   
CODE_12E75A:        88            DEY                       
CODE_12E75B:        97 01         STA [$01],y               
CODE_12E75D:        AD 14 07      LDA $0714                 
CODE_12E760:        85 02         STA $02                   
CODE_12E762:        60            RTS
                       
CODE_12E763:        A4 08         LDY $08                   
CODE_12E765:        C8            INY                       
CODE_12E766:        A5 02         LDA $02                   
CODE_12E768:        8D 14 07      STA $0714                 
CODE_12E76B:        18            CLC                       
CODE_12E76C:        69 70         ADC #$70                  
CODE_12E76E:        85 02         STA $02                   
CODE_12E770:        B7 01         LDA [$01],y               
CODE_12E772:        F0 2C         BEQ CODE_12E7A0           
CODE_12E774:        AD 14 07      LDA $0714                 
CODE_12E777:        85 02         STA $02                   
CODE_12E779:        B7 01         LDA [$01],y               
CODE_12E77B:        C9 03         CMP #$03                  
CODE_12E77D:        F0 21         BEQ CODE_12E7A0           
CODE_12E77F:        C9 07         CMP #$07                  
CODE_12E781:        F0 1D         BEQ CODE_12E7A0           
CODE_12E783:        C9 13         CMP #$13                  
CODE_12E785:        F0 19         BEQ CODE_12E7A0           
CODE_12E787:        A2 05         LDX #$05                  
CODE_12E789:        C8            INY                       
CODE_12E78A:        B7 01         LDA [$01],y               
CODE_12E78C:        DF 97 E6 12   CMP $12E697,x             
CODE_12E790:        F0 05         BEQ CODE_12E797           
CODE_12E792:        CA            DEX                       
CODE_12E793:        10 F7         BPL CODE_12E78C           
CODE_12E795:        80 C6         BRA CODE_12E75D           

CODE_12E797:        BF A3 E6 12   LDA.l DATA_12E6A3,x             
CODE_12E79B:        A4 08         LDY $08                   
CODE_12E79D:        C8            INY                       
CODE_12E79E:        97 01         STA [$01],y               
CODE_12E7A0:        AD 14 07      LDA $0714                 
CODE_12E7A3:        85 02         STA $02                   
CODE_12E7A5:        60            RTS
                       
CODE_12E7A6:        C9 07         CMP #$07                  
CODE_12E7A8:        D0 12         BNE CODE_12E7BC           
CODE_12E7AA:        A4 08         LDY $08                   
CODE_12E7AC:        30 07         BMI CODE_12E7B5           
CODE_12E7AE:        C0 10         CPY #$10                  
CODE_12E7B0:        10 03         BPL CODE_12E7B5           
CODE_12E7B2:        20 BD E7      JSR CODE_12E7BD           
CODE_12E7B5:        AE 0E 05      LDX $050E                 
CODE_12E7B8:        D0 02         BNE CODE_12E7BC           
CODE_12E7BA:        A9 18         LDA #$18                  
CODE_12E7BC:        60            RTS
                       
CODE_12E7BD:        8D C6 02      STA $02C6                 
CODE_12E7C0:        C2 20         REP #$20                  
CODE_12E7C2:        A5 01         LDA $01                   
CODE_12E7C4:        8D C9 02      STA $02C9                 
CODE_12E7C7:        38            SEC                       
CODE_12E7C8:        E9 10 00      SBC #$0010                
CODE_12E7CB:        85 01         STA $01                   
CODE_12E7CD:        E2 20         SEP #$20                  
CODE_12E7CF:        B7 01         LDA [$01],y               
CODE_12E7D1:        C9 18         CMP #$18                  
CODE_12E7D3:        D0 07         BNE CODE_12E7DC           
CODE_12E7D5:        A9 07         LDA #$07                  
CODE_12E7D7:        97 01         STA [$01],y               
CODE_12E7D9:        20 3A F1      JSR CODE_12F13A           
CODE_12E7DC:        C2 20         REP #$20                  
CODE_12E7DE:        AD C9 02      LDA $02C9                 
CODE_12E7E1:        85 01         STA $01                   
CODE_12E7E3:        E2 20         SEP #$20                  
CODE_12E7E5:        AD C6 02      LDA $02C6                 
CODE_12E7E8:        60            RTS
                       
CODE_12E7E9:        A4 E7         LDY $E7                  
CODE_12E7EB:        20 CE E4      JSR CODE_12E4CE           
CODE_12E7EE:        20 D6 F8      JSR CODE_12F8D6           
CODE_12E7F1:        CE 0E 05      DEC $050E                 ; \ If amount of Map16 blocks to transfer is negative, terminate.
CODE_12E7F4:        10 F5         BPL CODE_12E7EB           ; /
CODE_12E7F6:        60            RTS                       ; Return.
                       
CODE_12E7F7:        AD 35 06      LDA $0635                 
CODE_12E7FA:        C9 05         CMP #$05                  
CODE_12E7FC:        F0 29         BEQ CODE_12E827           
CODE_12E7FE:        A4 E7         LDY $E7                   
CODE_12E800:        A9 52         LDA #$52                  
CODE_12E802:        97 01         STA [$01],y               
CODE_12E804:        20 3A F1      JSR CODE_12F13A           
CODE_12E807:        A5 E7         LDA $E7                   
CODE_12E809:        18            CLC                       
CODE_12E80A:        69 10         ADC #$10                  
CODE_12E80C:        A8            TAY                       
CODE_12E80D:        A9 52         LDA #$52                  
CODE_12E80F:        97 01         STA [$01],y               
CODE_12E811:        20 3A F1      JSR CODE_12F13A           
CODE_12E814:        AD 35 06      LDA $0635                 
CODE_12E817:        C9 05         CMP #$05                  
CODE_12E819:        F0 07         BEQ CODE_12E822           
CODE_12E81B:        C9 06         CMP #$06                  
CODE_12E81D:        F0 03         BEQ CODE_12E822           
CODE_12E81F:        20 28 F9      JSR CODE_12F928           
CODE_12E822:        22 B2 F7 14   JSL CODE_14F7B2           
CODE_12E826:        60            RTS
                       
CODE_12E827:        AD 33 05      LDA $0533                 
CODE_12E82A:        C9 11         CMP #$11                  
CODE_12E82C:        D0 07         BNE CODE_12E835           
CODE_12E82E:        AD 34 05      LDA $0534                 
CODE_12E831:        C9 02         CMP #$02                  
CODE_12E833:        F0 1C         BEQ CODE_12E851           
CODE_12E835:        A4 E7         LDY $E7                   
CODE_12E837:        A9 52         LDA #$52                  
CODE_12E839:        97 01         STA [$01],y               
CODE_12E83B:        20 3A F1      JSR CODE_12F13A           
CODE_12E83E:        A5 08         LDA $08                   
CODE_12E840:        98            TYA                       
CODE_12E841:        18            CLC                       
CODE_12E842:        69 10         ADC #$10                  
CODE_12E844:        A8            TAY                       
CODE_12E845:        A9 52         LDA #$52                  
CODE_12E847:        97 01         STA [$01],y               
CODE_12E849:        20 3A F1      JSR CODE_12F13A           
CODE_12E84C:        22 B2 F7 14   JSL CODE_14F7B2           
CODE_12E850:        60            RTS
                       
CODE_12E851:        A4 E7         LDY $E7                   
CODE_12E853:        88            DEY                       
CODE_12E854:        A9 52         LDA #$52                  
CODE_12E856:        97 01         STA [$01],y               
CODE_12E858:        C8            INY                       
CODE_12E859:        A9 52         LDA #$52                  
CODE_12E85B:        97 01         STA [$01],y               
CODE_12E85D:        A2 02         LDX #$02                  
CODE_12E85F:        98            TYA                       
CODE_12E860:        18            CLC                       
CODE_12E861:        69 10         ADC #$10                  
CODE_12E863:        A8            TAY                       
CODE_12E864:        A9 52         LDA #$52                  
CODE_12E866:        97 01         STA [$01],y               
CODE_12E868:        CA            DEX                       
CODE_12E869:        10 F4         BPL CODE_12E85F           
CODE_12E86B:        22 FC F7 14   JSL CODE_14F7FC           
CODE_12E86F:        60            RTS
                       
CODE_12E870:        A4 E7         LDY $E7                   
CODE_12E872:        A9 52         LDA #$52                  
CODE_12E874:        97 01         STA [$01],y               
CODE_12E876:        20 3A F1      JSR CODE_12F13A           
CODE_12E879:        A4 E7         LDY $E7                   
CODE_12E87B:        98            TYA                       
CODE_12E87C:        18            CLC                       
CODE_12E87D:        69 10         ADC #$10                  
CODE_12E87F:        A8            TAY                       
CODE_12E880:        A9 52         LDA #$52                  
CODE_12E882:        97 01         STA [$01],y               
CODE_12E884:        20 3A F1      JSR CODE_12F13A           
CODE_12E887:        AD 35 06      LDA $0635                 
CODE_12E88A:        C9 05         CMP #$05                  
CODE_12E88C:        F0 07         BEQ CODE_12E895           
CODE_12E88E:        C9 06         CMP #$06                  
CODE_12E890:        F0 03         BEQ CODE_12E895           
CODE_12E892:        20 28 F9      JSR CODE_12F928           
CODE_12E895:        22 D7 F7 14   JSL CODE_14F7D7           
CODE_12E899:        60            RTS
                       
CODE_12E89A:        AD 33 05      LDA $0533                 
CODE_12E89D:        C9 0B         CMP #$0B                  
CODE_12E89F:        D0 07         BNE CODE_12E8A8           
CODE_12E8A1:        AD 34 05      LDA $0534                 
CODE_12E8A4:        C9 01         CMP #$01                  
CODE_12E8A6:        F0 5A         BEQ CODE_12E902           
CODE_12E8A8:        AD 33 05      LDA $0533                 
CODE_12E8AB:        C9 0E         CMP #$0E                  
CODE_12E8AD:        D0 07         BNE CODE_12E8B6           
CODE_12E8AF:        AD 34 05      LDA $0534                 
CODE_12E8B2:        C9 03         CMP #$03                  
CODE_12E8B4:        F0 49         BEQ CODE_12E8FF           
CODE_12E8B6:        A4 E7         LDY $E7                   
CODE_12E8B8:        AD 0F 05      LDA $050F                 
CODE_12E8BB:        C9 06         CMP #$06                  
CODE_12E8BD:        D0 1E         BNE CODE_12E8DD           
CODE_12E8BF:        AD 33 05      LDA $0533                 
CODE_12E8C2:        C9 0E         CMP #$0E                  
CODE_12E8C4:        D0 17         BNE CODE_12E8DD           
CODE_12E8C6:        AD 34 05      LDA $0534                 
CODE_12E8C9:        C9 05         CMP #$05                  
CODE_12E8CB:        D0 10         BNE CODE_12E8DD           
CODE_12E8CD:        A9 36         LDA #$36                  
CODE_12E8CF:        97 01         STA [$01],y               
CODE_12E8D1:        20 3A F1      JSR CODE_12F13A           
CODE_12E8D4:        20 14 F9      JSR CODE_12F914           
CODE_12E8D7:        CE 0E 05      DEC $050E                 
CODE_12E8DA:        10 F1         BPL CODE_12E8CD           
CODE_12E8DC:        60            RTS
                       
CODE_12E8DD:        AD 0F 05      LDA $050F                 
CODE_12E8E0:        C9 06         CMP #$06                  
CODE_12E8E2:        D0 10         BNE CODE_12E8F4           
CODE_12E8E4:        A9 00         LDA #$00                  
CODE_12E8E6:        97 01         STA [$01],y               
CODE_12E8E8:        20 54 F1      JSR CODE_12F154           
CODE_12E8EB:        84 08         STY $08                   
CODE_12E8ED:        20 63 E7      JSR CODE_12E763           
CODE_12E8F0:        A4 08         LDY $08                   
CODE_12E8F2:        80 03         BRA CODE_12E8F7           

CODE_12E8F4:        20 CE E4      JSR CODE_12E4CE           
CODE_12E8F7:        20 14 F9      JSR CODE_12F914           
CODE_12E8FA:        CE 0E 05      DEC $050E                 
CODE_12E8FD:        10 F5         BPL CODE_12E8F4           
CODE_12E8FF:        60            RTS
                       
DATA_12E900:        db $07,$13
                 
CODE_12E902:        A4 E7         LDY $E7                   
CODE_12E904:        98            TYA                       
CODE_12E905:        29 10         AND #$10                  
CODE_12E907:        4A            LSR A                     
CODE_12E908:        4A            LSR A                     
CODE_12E909:        4A            LSR A                     
CODE_12E90A:        4A            LSR A                     
CODE_12E90B:        AA            TAX                       
CODE_12E90C:        BF 00 E9 12   LDA.l DATA_12E900,x             
CODE_12E910:        97 01         STA [$01],y               
CODE_12E912:        20 54 F1      JSR CODE_12F154           
CODE_12E915:        98            TYA                       
CODE_12E916:        18            CLC                       
CODE_12E917:        69 10         ADC #$10                  
CODE_12E919:        C9 B0         CMP #$B0                  
CODE_12E91B:        B0 03         BCS CODE_12E920                   
CODE_12E91D:        A8            TAY                       
CODE_12E91E:        80 E4         BRA CODE_12E904           

CODE_12E920:        60            RTS
                       
CODE_12E921:        AE 0F 05      LDX $050F                 
CODE_12E924:        E0 05         CPX #$05                  
CODE_12E926:        D0 06         BNE CODE_12E92E           
CODE_12E928:        AD 45 05      LDA $0545                 
CODE_12E92B:        F0 01         BEQ CODE_12E92E           
CODE_12E92D:        E8            INX                       
CODE_12E92E:        BD 75 B6      LDA.w DATA_11B675,x               
CODE_12E931:        AC 35 06      LDY $0635                 
CODE_12E934:        C0 06         CPY #$06                  
CODE_12E936:        F0 03         BEQ CODE_12E93B           
CODE_12E938:        BD 6E B6      LDA.w DATA_11B66E,x               
CODE_12E93B:        AC E7 00      LDY $00E7                 
CODE_12E93E:        48            PHA                       
CODE_12E93F:        88            DEY                       
CODE_12E940:        20 BF F0      JSR CODE_12F0BF           
CODE_12E943:        22 95 98 15   JSL CODE_159895           
CODE_12E947:        C8            INY                       
CODE_12E948:        C8            INY                       
CODE_12E949:        20 FC F0      JSR CODE_12F0FC           
CODE_12E94C:        22 DF 98 15   JSL CODE_1598DF           
CODE_12E950:        88            DEY                       
CODE_12E951:        68            PLA                       
CODE_12E952:        97 01         STA [$01],y               
CODE_12E954:        20 3A F1      JSR CODE_12F13A           
CODE_12E957:        60            RTS
                       
CODE_12E958:        AD 35 06      LDA $0635                 
CODE_12E95B:        C9 04         CMP #$04                  
CODE_12E95D:        D0 03         BNE CODE_12E962           
CODE_12E95F:        4C 3F EE      JMP CODE_12EE3F           

CODE_12E962:        A4 E7         LDY $E7                   
CODE_12E964:        AD 0F 05      LDA $050F                 
CODE_12E967:        38            SEC                       
CODE_12E968:        E9 0A         SBC #$0A                  
CODE_12E96A:        AA            TAX                       
CODE_12E96B:        BD 7C B6      LDA.w DATA_11B67C,x               
CODE_12E96E:        97 01         STA [$01],y               
CODE_12E970:        20 3A F1      JSR CODE_12F13A           
CODE_12E973:        CE 0E 05      DEC $050E                 
CODE_12E976:        F0 10         BEQ CODE_12E988           
CODE_12E978:        20 D6 F8      JSR CODE_12F8D6           
CODE_12E97B:        BD 7E B6      LDA.w DATA_11B67E,x               
CODE_12E97E:        97 01         STA [$01],y               
CODE_12E980:        20 3A F1      JSR CODE_12F13A           
CODE_12E983:        CE 0E 05      DEC $050E                 
CODE_12E986:        D0 F0         BNE CODE_12E978           
CODE_12E988:        20 D6 F8      JSR CODE_12F8D6           
CODE_12E98B:        BD 80 B6      LDA.w DATA_11B680,x               
CODE_12E98E:        97 01         STA [$01],y               
CODE_12E990:        20 3A F1      JSR CODE_12F13A           
CODE_12E993:        60            RTS
                       
CODE_12E994:        AD 35 06      LDA $0635                 
CODE_12E997:        C9 06         CMP #$06                  
CODE_12E999:        D0 03         BNE CODE_12E99E           
CODE_12E99B:        4C F7 EF      JMP CODE_12EFF7           

CODE_12E99E:        AD 33 05      LDA $0533                 
CODE_12E9A1:        D0 15         BNE CODE_12E9B8           
CODE_12E9A3:        AD 34 05      LDA $0534                 
CODE_12E9A6:        C9 02         CMP #$02                  
CODE_12E9A8:        D0 0E         BNE CODE_12E9B8           
CODE_12E9AA:        AD E9 00      LDA $00E9                 
CODE_12E9AD:        C9 09         CMP #$09                  
CODE_12E9AF:        D0 07         BNE CODE_12E9B8           
CODE_12E9B1:        AD E7 00      LDA $00E7                 
CODE_12E9B4:        C9 0F         CMP #$0F                  
CODE_12E9B6:        F0 38         BEQ CODE_12E9F0           
CODE_12E9B8:        A2 00         LDX #$00                  
CODE_12E9BA:        86 0B         STX $0B                   
CODE_12E9BC:        A6 E9         LDX $E9                   
CODE_12E9BE:        20 B0 F8      JSR CODE_12F8B0           
CODE_12E9C1:        A6 0B         LDX $0B                   
CODE_12E9C3:        A4 E7         LDY $E7                   
CODE_12E9C5:        AD 0E 05      LDA $050E                 
CODE_12E9C8:        85 07         STA $07                   
CODE_12E9CA:        20 F1 E9      JSR CODE_12E9F1           
CODE_12E9CD:        E8            INX                       
CODE_12E9CE:        A5 07         LDA $07                   
CODE_12E9D0:        F0 08         BEQ CODE_12E9DA           
CODE_12E9D2:        20 D6 F8      JSR CODE_12F8D6           
CODE_12E9D5:        20 F1 E9      JSR CODE_12E9F1           
CODE_12E9D8:        D0 F8         BNE CODE_12E9D2           
CODE_12E9DA:        20 D6 F8      JSR CODE_12F8D6           
CODE_12E9DD:        E8            INX                       
CODE_12E9DE:        20 F1 E9      JSR CODE_12E9F1           
CODE_12E9E1:        A5 E7         LDA $E7                   
CODE_12E9E3:        18            CLC                       
CODE_12E9E4:        69 10         ADC #$10                  
CODE_12E9E6:        C9 F0         CMP #$F0                  
CODE_12E9E8:        B0 06         BCS CODE_12E9F0                   
CODE_12E9EA:        A2 03         LDX #$03                  
CODE_12E9EC:        85 E7         STA $E7                   
CODE_12E9EE:        80 CA         BRA CODE_12E9BA
           
CODE_12E9F0:        60            RTS
                       
CODE_12E9F1:        86 08         STX $08                   
CODE_12E9F3:        A5 02         LDA $02                   
CODE_12E9F5:        8D 14 07      STA $0714                 
CODE_12E9F8:        18            CLC                       
CODE_12E9F9:        69 70         ADC #$70                  
CODE_12E9FB:        85 02         STA $02                   
CODE_12E9FD:        B7 01         LDA [$01],y               
CODE_12E9FF:        F0 07         BEQ CODE_12EA08           
CODE_12EA01:        AD 14 07      LDA $0714                 
CODE_12EA04:        85 02         STA $02                   
CODE_12EA06:        80 64         BRA CODE_12EA6C           

CODE_12EA08:        AD 14 07      LDA $0714                 
CODE_12EA0B:        85 02         STA $02                   
CODE_12EA0D:        8A            TXA                       
CODE_12EA0E:        D0 1A         BNE CODE_12EA2A           
CODE_12EA10:        A2 02         LDX #$02                  
CODE_12EA12:        B7 01         LDA [$01],y               
CODE_12EA14:        DD 8B B6      CMP.w DATA_11B68B,x               
CODE_12EA17:        F0 0C         BEQ CODE_12EA25           
CODE_12EA19:        CA            DEX                       
CODE_12EA1A:        DD 8B B6      CMP.w DATA_11B68B,x               
CODE_12EA1D:        F0 06         BEQ CODE_12EA25           
CODE_12EA1F:        CA            DEX                       
CODE_12EA20:        DD 8B B6      CMP.w DATA_11B68B,x               
CODE_12EA23:        D0 23         BNE CODE_12EA48           
CODE_12EA25:        BD 8E B6      LDA.w DATA_11B68E,x               
CODE_12EA28:        D0 31         BNE CODE_12EA5B           
CODE_12EA2A:        A6 08         LDX $08                   
CODE_12EA2C:        E0 02         CPX #$02                  
CODE_12EA2E:        D0 18         BNE CODE_12EA48           
CODE_12EA30:        B7 01         LDA [$01],y               
CODE_12EA32:        DD 8B B6      CMP.w DATA_11B68B,x               
CODE_12EA35:        F0 0C         BEQ CODE_12EA43           
CODE_12EA37:        CA            DEX                       
CODE_12EA38:        DD 8B B6      CMP.w DATA_11B68B,x               
CODE_12EA3B:        F0 06         BEQ CODE_12EA43           
CODE_12EA3D:        CA            DEX                       
CODE_12EA3E:        DD 8B B6      CMP.w DATA_11B68B,x               
CODE_12EA41:        D0 05         BNE CODE_12EA48           
CODE_12EA43:        BD 91 B6      LDA.w DATA_11B691,x               
CODE_12EA46:        D0 13         BNE CODE_12EA5B           
CODE_12EA48:        A2 08         LDX #$08                  
CODE_12EA4A:        B7 01         LDA [$01],y               
CODE_12EA4C:        DD 82 B6      CMP.w DATA_11B682,x               
CODE_12EA4F:        F0 05         BEQ CODE_12EA56           
CODE_12EA51:        CA            DEX                       
CODE_12EA52:        10 F6         BPL CODE_12EA4A           
CODE_12EA54:        80 16         BRA CODE_12EA6C           

CODE_12EA56:        A6 08         LDX $08                   
CODE_12EA58:        BD 82 B6      LDA.w DATA_11B682,x               
CODE_12EA5B:        48            PHA                       
CODE_12EA5C:        88            DEY                       
CODE_12EA5D:        20 BF F0      JSR CODE_12F0BF           
CODE_12EA60:        C8            INY                       
CODE_12EA61:        68            PLA                       
CODE_12EA62:        97 01         STA [$01],y               
CODE_12EA64:        20 3A F1      JSR CODE_12F13A           
CODE_12EA67:        C8            INY                       
CODE_12EA68:        20 FC F0      JSR CODE_12F0FC           
CODE_12EA6B:        88            DEY                       
CODE_12EA6C:        A6 08         LDX $08                   
CODE_12EA6E:        C6 07         DEC $07                   
CODE_12EA70:        60            RTS
                       
CODE_12EA71:        AD 35 06      LDA $0635                 
CODE_12EA74:        C9 04         CMP #$04                  
CODE_12EA76:        F0 29         BEQ CODE_12EAA1           
CODE_12EA78:        AD 0F 05      LDA $050F                 
CODE_12EA7B:        38            SEC                       
CODE_12EA7C:        E9 05         SBC #$05                  
CODE_12EA7E:        85 07         STA $07                   
CODE_12EA80:        AA            TAX                       
CODE_12EA81:        A4 E7         LDY $E7                   
CODE_12EA83:        BD 94 B6      LDA.w DATA_11B694,x               
CODE_12EA86:        97 01         STA [$01],y               
CODE_12EA88:        20 3A F1      JSR CODE_12F13A           
CODE_12EA8B:        20 14 F9      JSR CODE_12F914           
CODE_12EA8E:        B7 01         LDA [$01],y               
CODE_12EA90:        C9 40         CMP #$40                  
CODE_12EA92:        D0 0C         BNE CODE_12EAA0           
CODE_12EA94:        A6 07         LDX $07                   
CODE_12EA96:        BD 96 B6      LDA.w DATA_11B696,x               
CODE_12EA99:        97 01         STA [$01],y               
CODE_12EA9B:        20 3A F1      JSR CODE_12F13A           
CODE_12EA9E:        D0 EB         BNE CODE_12EA8B           
CODE_12EAA0:        60            RTS
                       
CODE_12EAA1:        A2 00         LDX #$00                  
CODE_12EAA3:        AD 0F 05      LDA $050F                 
CODE_12EAA6:        C9 05         CMP #$05                  
CODE_12EAA8:        F0 01         BEQ CODE_12EAAB           
CODE_12EAAA:        E8            INX                       
CODE_12EAAB:        86 07         STX $07                   
CODE_12EAAD:        A4 E7         LDY $E7                   
CODE_12EAAF:        BD 98 B6      LDA.w DATA_11B698,x               
CODE_12EAB2:        97 01         STA [$01],y               
CODE_12EAB4:        20 3A F1      JSR CODE_12F13A           
CODE_12EAB7:        20 14 F9      JSR CODE_12F914           
CODE_12EABA:        B7 01         LDA [$01],y               
CODE_12EABC:        C9 40         CMP #$40                  
CODE_12EABE:        D0 0E         BNE CODE_12EACE           
CODE_12EAC0:        A6 07         LDX $07                   
CODE_12EAC2:        BD 9A B6      LDA.w DATA_11B69A,x               
CODE_12EAC5:        97 01         STA [$01],y               
CODE_12EAC7:        20 3A F1      JSR CODE_12F13A           
CODE_12EACA:        C0 E0         CPY #$E0                  
CODE_12EACC:        90 E9         BCC CODE_12EAB7           
CODE_12EACE:        60            RTS
                       
CODE_12EACF:        AD 33 05      LDA $0533                 
CODE_12EAD2:        C9 06         CMP #$06                  
CODE_12EAD4:        D0 18         BNE CODE_12EAEE           
CODE_12EAD6:        AD 34 05      LDA $0534                 
CODE_12EAD9:        C9 03         CMP #$03                  
CODE_12EADB:        D0 11         BNE CODE_12EAEE           
CODE_12EADD:        A4 E7         LDY $E7                   
CODE_12EADF:        A9 01         LDA #$01                  
CODE_12EAE1:        97 01         STA [$01],y               
CODE_12EAE3:        20 3A F1      JSR CODE_12F13A           
CODE_12EAE6:        C8            INY                       
CODE_12EAE7:        A9 02         LDA #$02                  
CODE_12EAE9:        97 01         STA [$01],y               
CODE_12EAEB:        20 3A F1      JSR CODE_12F13A           
CODE_12EAEE:        60            RTS
                       
CODE_12EAEF:        AD 33 05      LDA $0533                 
CODE_12EAF2:        C9 06         CMP #$06                  
CODE_12EAF4:        D0 10         BNE CODE_12EB06           
CODE_12EAF6:        AD 34 05      LDA $0534                 
CODE_12EAF9:        C9 03         CMP #$03                  
CODE_12EAFB:        D0 09         BNE CODE_12EB06           
CODE_12EAFD:        A4 E7         LDY $E7                   
CODE_12EAFF:        A9 03         LDA #$03                  
CODE_12EB01:        97 01         STA [$01],y               
CODE_12EB03:        20 3A F1      JSR CODE_12F13A           
CODE_12EB06:        60            RTS
                       
CODE_12EB07:        A4 E7         LDY $E7                   
CODE_12EB09:        AD 0F 05      LDA $050F                 
CODE_12EB0C:        38            SEC                       
CODE_12EB0D:        E9 06         SBC #$06                  
CODE_12EB0F:        AA            TAX                       
CODE_12EB10:        BD 9C B6      LDA.w DATA_11B69C,x               
CODE_12EB13:        97 01         STA [$01],y               
CODE_12EB15:        20 3A F1      JSR CODE_12F13A           
CODE_12EB18:        20 14 F9      JSR CODE_12F914           
CODE_12EB1B:        B7 01         LDA [$01],y               
CODE_12EB1D:        C9 40         CMP #$40                  
CODE_12EB1F:        D0 04         BNE CODE_12EB25           
CODE_12EB21:        A9 6B         LDA #$6B                  
CODE_12EB23:        80 EE         BRA CODE_12EB13           

CODE_12EB25:        98            TYA                       
CODE_12EB26:        38            SEC                       
CODE_12EB27:        E9 10         SBC #$10                  
CODE_12EB29:        A8            TAY                       
CODE_12EB2A:        A9 6C         LDA #$6C                  
CODE_12EB2C:        97 01         STA [$01],y               
CODE_12EB2E:        20 3A F1      JSR CODE_12F13A           
CODE_12EB31:        60            RTS
                       
CODE_12EB32:        A4 E7         LDY $E7                   
CODE_12EB34:        AD 0F 05      LDA $050F                 
CODE_12EB37:        C9 0D         CMP #$0D                  
CODE_12EB39:        F0 1C         BEQ CODE_12EB57           
CODE_12EB3B:        88            DEY                       
CODE_12EB3C:        20 BF F0      JSR CODE_12F0BF           
CODE_12EB3F:        22 95 98 15   JSL CODE_159895           
CODE_12EB43:        C8            INY                       
CODE_12EB44:        A9 C1         LDA #$C1                  
CODE_12EB46:        97 01         STA [$01],y               
CODE_12EB48:        20 3A F1      JSR CODE_12F13A           
CODE_12EB4B:        C8            INY                       
CODE_12EB4C:        20 FC F0      JSR CODE_12F0FC           
CODE_12EB4F:        22 DF 98 15   JSL CODE_1598DF           
CODE_12EB53:        88            DEY                       
CODE_12EB54:        20 14 F9      JSR CODE_12F914           
CODE_12EB57:        B7 01         LDA [$01],y               
CODE_12EB59:        C9 40         CMP #$40                  
CODE_12EB5B:        D0 21         BNE CODE_12EB7E           
CODE_12EB5D:        88            DEY                       
CODE_12EB5E:        20 BF F0      JSR CODE_12F0BF           
CODE_12EB61:        22 95 98 15   JSL CODE_159895           
CODE_12EB65:        C8            INY                       
CODE_12EB66:        A9 C2         LDA #$C2                  
CODE_12EB68:        97 01         STA [$01],y               
CODE_12EB6A:        20 3A F1      JSR CODE_12F13A           
CODE_12EB6D:        C8            INY                       
CODE_12EB6E:        20 FC F0      JSR CODE_12F0FC           
CODE_12EB71:        22 DF 98 15   JSL CODE_1598DF           
CODE_12EB75:        88            DEY                       
CODE_12EB76:        A5 EB         LDA $EB                   
CODE_12EB78:        F0 DA         BEQ CODE_12EB54           
CODE_12EB7A:        C0 E0         CPY #$E0                  
CODE_12EB7C:        90 D6         BCC CODE_12EB54           
CODE_12EB7E:        60            RTS
                       
CODE_12EB7F:        A4 E7         LDY $E7                   
CODE_12EB81:        88            DEY                       
CODE_12EB82:        22 95 98 15   JSL CODE_159895           
CODE_12EB86:        C8            INY                       
CODE_12EB87:        A9 C3         LDA #$C3                  
CODE_12EB89:        97 01         STA [$01],y               
CODE_12EB8B:        20 3A F1      JSR CODE_12F13A           
CODE_12EB8E:        C8            INY                       
CODE_12EB8F:        22 DF 98 15   JSL CODE_1598DF           
CODE_12EB93:        88            DEY                       
CODE_12EB94:        98            TYA                       
CODE_12EB95:        38            SEC                       
CODE_12EB96:        E9 10         SBC #$10                  
CODE_12EB98:        A8            TAY                       
CODE_12EB99:        C9 F0         CMP #$F0                  
CODE_12EB9B:        B0 0A         BCS CODE_12EBA7                   
CODE_12EB9D:        B7 01         LDA [$01],y               
CODE_12EB9F:        C9 40         CMP #$40                  
CODE_12EBA1:        D0 04         BNE CODE_12EBA7           
CODE_12EBA3:        A9 C2         LDA #$C2                  
CODE_12EBA5:        80 E2         BRA CODE_12EB89
           
CODE_12EBA7:        60            RTS
                       
CODE_12EBA8:        AE 0F 05      LDX $050F                 
CODE_12EBAB:        BD 9F B6      LDA.w DATA_11B69F,x               
CODE_12EBAE:        C9 5A         CMP #$5A                  
CODE_12EBB0:        D0 0A         BNE CODE_12EBBC           
CODE_12EBB2:        BD 9F B6      LDA.w DATA_11B69F,x               
CODE_12EBB5:        AC 42 02      LDY $0242                 
CODE_12EBB8:        D0 02         BNE CODE_12EBBC           
CODE_12EBBA:        A9 EB         LDA #$EB                  
CODE_12EBBC:        A4 E7         LDY $E7                   
CODE_12EBBE:        97 01         STA [$01],y               
CODE_12EBC0:        20 3A F1      JSR CODE_12F13A           
CODE_12EBC3:        60            RTS
                       
CODE_12EBC4:        85 E7         STA $E7                   
CODE_12EBC6:        AD 33 05      LDA $0533                 
CODE_12EBC9:        C9 02         CMP #$02                  
CODE_12EBCB:        F0 08         BEQ CODE_12EBD5           
CODE_12EBCD:        C9 08         CMP #$08                  
CODE_12EBCF:        F0 04         BEQ CODE_12EBD5           
CODE_12EBD1:        C9 0B         CMP #$0B                  
CODE_12EBD3:        D0 03         BNE CODE_12EBD8           
CODE_12EBD5:        82 9C 05      BRL CODE_12F174           

CODE_12EBD8:        AD 0F 05      LDA $050F                 
CODE_12EBDB:        38            SEC                       
CODE_12EBDC:        E9 08         SBC #$08                  
CODE_12EBDE:        85 08         STA $08                   
CODE_12EBE0:        A6 E9         LDX $E9                   
CODE_12EBE2:        20 B0 F8      JSR CODE_12F8B0           
CODE_12EBE5:        A4 E7         LDY $E7                   
CODE_12EBE7:        A9 05         LDA #$05                  
CODE_12EBE9:        85 07         STA $07                   
CODE_12EBEB:        B7 01         LDA [$01],y               
CODE_12EBED:        C9 40         CMP #$40                  
CODE_12EBEF:        D0 26         BNE CODE_12EC17           
CODE_12EBF1:        A6 08         LDX $08                   
CODE_12EBF3:        AD 35 06      LDA $0635                 
CODE_12EBF6:        C9 06         CMP #$06                  
CODE_12EBF8:        D0 05         BNE CODE_12EBFF           
CODE_12EBFA:        22 90 A0 15   JSL CODE_15A090           
CODE_12EBFE:        60            RTS
                       
CODE_12EBFF:        BD AE B6      LDA.w DATA_11B6AE,x               
CODE_12EC02:        97 01         STA [$01],y               
CODE_12EC04:        20 3A F1      JSR CODE_12F13A           
CODE_12EC07:        20 D6 F8      JSR CODE_12F8D6           
CODE_12EC0A:        C6 07         DEC $07                   
CODE_12EC0C:        10 E3         BPL CODE_12EBF1           
CODE_12EC0E:        A5 E7         LDA $E7                   
CODE_12EC10:        18            CLC                       
CODE_12EC11:        69 10         ADC #$10                  
CODE_12EC13:        C9 F0         CMP #$F0                  
CODE_12EC15:        90 AD         BCC CODE_12EBC4           
CODE_12EC17:        60            RTS
                       
CODE_12EC18:        64 08         STZ $08                   
CODE_12EC1A:        AD 35 06      LDA $0635                 
CODE_12EC1D:        C9 03         CMP #$03                  
CODE_12EC1F:        D0 07         BNE CODE_12EC28           
CODE_12EC21:        22 CA 9D 15   JSL CODE_159DCA           
CODE_12EC25:        60            RTS
                       
CODE_12EC26:        85 E7         STA $E7                   
CODE_12EC28:        A6 E9         LDX $E9                   
CODE_12EC2A:        20 B0 F8      JSR CODE_12F8B0           
CODE_12EC2D:        A4 E7         LDY $E7                   
CODE_12EC2F:        88            DEY                       
CODE_12EC30:        20 BF F0      JSR CODE_12F0BF           
CODE_12EC33:        22 95 98 15   JSL CODE_159895           
CODE_12EC37:        C8            INY                       
CODE_12EC38:        AD 0E 05      LDA $050E                 
CODE_12EC3B:        85 07         STA $07                   
CODE_12EC3D:        A6 08         LDX $08                   
CODE_12EC3F:        BD B2 B6      LDA.w DATA_11B6B2,x               
CODE_12EC42:        97 01         STA [$01],y               
CODE_12EC44:        20 3A F1      JSR CODE_12F13A           
CODE_12EC47:        20 D6 F8      JSR CODE_12F8D6           
CODE_12EC4A:        C6 07         DEC $07                   
CODE_12EC4C:        10 F1         BPL CODE_12EC3F           
CODE_12EC4E:        20 FC F0      JSR CODE_12F0FC           
CODE_12EC51:        22 DF 98 15   JSL CODE_1598DF           
CODE_12EC55:        A9 01         LDA #$01                  
CODE_12EC57:        85 08         STA $08                   
CODE_12EC59:        A5 E7         LDA $E7                   
CODE_12EC5B:        18            CLC                       
CODE_12EC5C:        69 10         ADC #$10                  
CODE_12EC5E:        C9 F0         CMP #$F0                  
CODE_12EC60:        90 C4         BCC CODE_12EC26           
CODE_12EC62:        60            RTS
                       
CODE_12EC63:        A4 E7         LDY $E7                   
CODE_12EC65:        64 08         STZ $08                   
CODE_12EC67:        9C 42 02      STZ $0242                 
CODE_12EC6A:        5A            PHY                       
CODE_12EC6B:        98            TYA                       
CODE_12EC6C:        18            CLC                       
CODE_12EC6D:        69 10         ADC #$10                  
CODE_12EC6F:        A8            TAY                       
CODE_12EC70:        B7 01         LDA [$01],y               
CODE_12EC72:        C9 40         CMP #$40                  
CODE_12EC74:        F0 03         BEQ CODE_12EC79           
CODE_12EC76:        EE 42 02      INC $0242                 
CODE_12EC79:        7A            PLY                       
CODE_12EC7A:        AD 42 02      LDA $0242                 
CODE_12EC7D:        F0 04         BEQ CODE_12EC83           
CODE_12EC7F:        A9 8A         LDA #$8A                  
CODE_12EC81:        80 02         BRA CODE_12EC85           

CODE_12EC83:        A9 84         LDA #$84                  
CODE_12EC85:        97 01         STA [$01],y               
CODE_12EC87:        20 3A F1      JSR CODE_12F13A           
CODE_12EC8A:        A6 08         LDX $08                   
CODE_12EC8C:        F0 51         BEQ CODE_12ECDF           
CODE_12EC8E:        C8            INY                       
CODE_12EC8F:        AD 42 02      LDA $0242                 
CODE_12EC92:        F0 04         BEQ CODE_12EC98           
CODE_12EC94:        A9 8B         LDA #$8B                  
CODE_12EC96:        80 02         BRA CODE_12EC9A           

CODE_12EC98:        A9 88         LDA #$88                  
CODE_12EC9A:        97 01         STA [$01],y               
CODE_12EC9C:        20 3A F1      JSR CODE_12F13A           
CODE_12EC9F:        CA            DEX                       
CODE_12ECA0:        F0 2C         BEQ CODE_12ECCE           
CODE_12ECA2:        C8            INY                       
CODE_12ECA3:        AD 42 02      LDA $0242                 
CODE_12ECA6:        F0 04         BEQ CODE_12ECAC           
CODE_12ECA8:        A9 8C         LDA #$8C                  
CODE_12ECAA:        80 02         BRA CODE_12ECAE           

CODE_12ECAC:        A9 85         LDA #$85                  
CODE_12ECAE:        97 01         STA [$01],y               
CODE_12ECB0:        20 3A F1      JSR CODE_12F13A           
CODE_12ECB3:        CA            DEX                       
CODE_12ECB4:        D0 EC         BNE CODE_12ECA2           
CODE_12ECB6:        A6 08         LDX $08                   
CODE_12ECB8:        C8            INY                       
CODE_12ECB9:        AD 42 02      LDA $0242                 
CODE_12ECBC:        F0 04         BEQ CODE_12ECC2           
CODE_12ECBE:        A9 8D         LDA #$8D                  
CODE_12ECC0:        80 02         BRA CODE_12ECC4           

CODE_12ECC2:        A9 86         LDA #$86                  
CODE_12ECC4:        97 01         STA [$01],y               
CODE_12ECC6:        20 3A F1      JSR CODE_12F13A           
CODE_12ECC9:        CA            DEX                       
CODE_12ECCA:        E0 01         CPX #$01                  
CODE_12ECCC:        D0 EA         BNE CODE_12ECB8           
CODE_12ECCE:        C8            INY                       
CODE_12ECCF:        AD 42 02      LDA $0242                 
CODE_12ECD2:        F0 04         BEQ CODE_12ECD8           
CODE_12ECD4:        A9 8E         LDA #$8E                  
CODE_12ECD6:        80 02         BRA CODE_12ECDA           

CODE_12ECD8:        A9 89         LDA #$89                  
CODE_12ECDA:        97 01         STA [$01],y               
CODE_12ECDC:        20 3A F1      JSR CODE_12F13A           
CODE_12ECDF:        C8            INY                       
CODE_12ECE0:        AD 42 02      LDA $0242                 
CODE_12ECE3:        F0 04         BEQ CODE_12ECE9           
CODE_12ECE5:        A9 8F         LDA #$8F                  
CODE_12ECE7:        80 02         BRA CODE_12ECEB           

CODE_12ECE9:        A9 87         LDA #$87                  
CODE_12ECEB:        97 01         STA [$01],y               
CODE_12ECED:        20 3A F1      JSR CODE_12F13A           
CODE_12ECF0:        C9 8F         CMP #$8F                  
CODE_12ECF2:        D0 01         BNE CODE_12ECF5           
CODE_12ECF4:        60            RTS
                       
CODE_12ECF5:        E6 08         INC $08                   
CODE_12ECF7:        A5 E7         LDA $E7                   
CODE_12ECF9:        18            CLC                       
CODE_12ECFA:        69 10         ADC #$10                  
CODE_12ECFC:        85 E7         STA $E7                   
CODE_12ECFE:        38            SEC                       
CODE_12ECFF:        E5 08         SBC $08                   
CODE_12ED01:        A8            TAY                       
CODE_12ED02:        4C 6A EC      JMP CODE_12EC6A           

CODE_12ED05:        A4 E7         LDY $E7                   
CODE_12ED07:        A9 31         LDA #$31                  
CODE_12ED09:        97 01         STA [$01],y               
CODE_12ED0B:        20 3A F1      JSR CODE_12F13A           
CODE_12ED0E:        20 14 F9      JSR CODE_12F914           
CODE_12ED11:        B7 01         LDA [$01],y               
CODE_12ED13:        C9 40         CMP #$40                  
CODE_12ED15:        F0 01         BEQ CODE_12ED18           
CODE_12ED17:        60            RTS
                       
CODE_12ED18:        A9 32         LDA #$32                  
CODE_12ED1A:        80 ED         BRA CODE_12ED09           

CODE_12ED1C:        60            RTS
                       
CODE_12ED1D:        A4 E7         LDY $E7                   
CODE_12ED1F:        AD 0F 05      LDA $050F                 
CODE_12ED22:        38            SEC                       
CODE_12ED23:        E9 0C         SBC #$0C                  
CODE_12ED25:        AA            TAX                       
CODE_12ED26:        C9 03         CMP #$03                  
CODE_12ED28:        F0 05         BEQ CODE_12ED2F           
CODE_12ED2A:        AD 46 02      LDA $0246                 
CODE_12ED2D:        F0 12         BEQ CODE_12ED41           
CODE_12ED2F:        DA            PHX                       
CODE_12ED30:        AA            TAX                       
CODE_12ED31:        CA            DEX                       
CODE_12ED32:        20 A5 F0      JSR CODE_12F0A5           
CODE_12ED35:        BD D7 B6      LDA.w DATA_11B6D7,x               
CODE_12ED38:        97 01         STA [$01],y               
CODE_12ED3A:        20 3A F1      JSR CODE_12F13A           
CODE_12ED3D:        20 D6 F8      JSR CODE_12F8D6           
CODE_12ED40:        FA            PLX                       
CODE_12ED41:        BD C3 B6      LDA.w DATA_11B6C3,x               
CODE_12ED44:        97 01         STA [$01],y               
CODE_12ED46:        20 3A F1      JSR CODE_12F13A           
CODE_12ED49:        CE 0E 05      DEC $050E                 
CODE_12ED4C:        20 D6 F8      JSR CODE_12F8D6           
CODE_12ED4F:        BD C7 B6      LDA.w DATA_11B6C7,x               
CODE_12ED52:        97 01         STA [$01],y               
CODE_12ED54:        20 3A F1      JSR CODE_12F13A           
CODE_12ED57:        CE 0E 05      DEC $050E                 
CODE_12ED5A:        20 D6 F8      JSR CODE_12F8D6           
CODE_12ED5D:        BD CB B6      LDA.w DATA_11B6CB,x               
CODE_12ED60:        97 01         STA [$01],y               
CODE_12ED62:        20 3A F1      JSR CODE_12F13A           
CODE_12ED65:        CE 0E 05      DEC $050E                 
CODE_12ED68:        AD 0E 05      LDA $050E                 
CODE_12ED6B:        C9 01         CMP #$01                  
CODE_12ED6D:        D0 EB         BNE CODE_12ED5A           
CODE_12ED6F:        20 D6 F8      JSR CODE_12F8D6           
CODE_12ED72:        BD CF B6      LDA.w DATA_11B6CF,x               
CODE_12ED75:        97 01         STA [$01],y               
CODE_12ED77:        20 3A F1      JSR CODE_12F13A           
CODE_12ED7A:        CE 0E 05      DEC $050E                 
CODE_12ED7D:        20 D6 F8      JSR CODE_12F8D6           
CODE_12ED80:        BD D3 B6      LDA.w DATA_11B6D3,x               
CODE_12ED83:        97 01         STA [$01],y               
CODE_12ED85:        20 3A F1      JSR CODE_12F13A           
CODE_12ED88:        E0 03         CPX #$03                  
CODE_12ED8A:        F0 05         BEQ CODE_12ED91           
CODE_12ED8C:        AE 46 02      LDX $0246                 
CODE_12ED8F:        F0 0F         BEQ CODE_12EDA0           
CODE_12ED91:        CA            DEX                       
CODE_12ED92:        20 D6 F8      JSR CODE_12F8D6           
CODE_12ED95:        BD DA B6      LDA.w DATA_11B6DA,x               
CODE_12ED98:        97 01         STA [$01],y               
CODE_12ED9A:        20 3A F1      JSR CODE_12F13A           
CODE_12ED9D:        20 A5 F0      JSR CODE_12F0A5           
CODE_12EDA0:        60            RTS
                       
CODE_12EDA1:        9C 42 02      STZ $0242                 
CODE_12EDA4:        9C 46 02      STZ $0246                 
CODE_12EDA7:        AD 35 06      LDA $0635                 
CODE_12EDAA:        C9 06         CMP #$06                  
CODE_12EDAC:        D0 03         BNE CODE_12EDB1           
CODE_12EDAE:        4C 91 F0      JMP CODE_12F091           

CODE_12EDB1:        AD 0E 05      LDA $050E                 
CODE_12EDB4:        85 07         STA $07                   
CODE_12EDB6:        A9 0C         LDA #$0C                  
CODE_12EDB8:        8D 0F 05      STA $050F                 
CODE_12EDBB:        20 1D ED      JSR CODE_12ED1D           
CODE_12EDBE:        EE 0F 05      INC $050F                 
CODE_12EDC1:        A5 07         LDA $07                   
CODE_12EDC3:        8D 0E 05      STA $050E                 
CODE_12EDC6:        A5 E7         LDA $E7                   
CODE_12EDC8:        18            CLC                       
CODE_12EDC9:        69 10         ADC #$10                  
CODE_12EDCB:        85 E7         STA $E7                   
CODE_12EDCD:        A6 E9         LDX $E9                   
CODE_12EDCF:        20 B0 F8      JSR CODE_12F8B0           
CODE_12EDD2:        EE 46 02      INC $0246                 
CODE_12EDD5:        20 1D ED      JSR CODE_12ED1D           
CODE_12EDD8:        EE 0F 05      INC $050F                 
CODE_12EDDB:        98            TYA                       
CODE_12EDDC:        29 F0         AND #$F0                  
CODE_12EDDE:        C9 B0         CMP #$B0                  
CODE_12EDE0:        D0 0B         BNE CODE_12EDED           
CODE_12EDE2:        A5 07         LDA $07                   
CODE_12EDE4:        C9 0D         CMP #$0D                  
CODE_12EDE6:        30 2D         BMI CODE_12EE15           
CODE_12EDE8:        EE 42 02      INC $0242                 
CODE_12EDEB:        80 28         BRA CODE_12EE15           

CODE_12EDED:        EE 42 02      INC $0242                 
CODE_12EDF0:        9C 47 02      STZ $0247                 
CODE_12EDF3:        A5 07         LDA $07                   
CODE_12EDF5:        8D 0E 05      STA $050E                 
CODE_12EDF8:        A5 E7         LDA $E7                   
CODE_12EDFA:        18            CLC                       
CODE_12EDFB:        69 10         ADC #$10                  
CODE_12EDFD:        85 E7         STA $E7                   
CODE_12EDFF:        C9 B0         CMP #$B0                  
CODE_12EE01:        90 00         BCC CODE_12EE03           
CODE_12EE03:        A6 E9         LDX $E9                   
CODE_12EE05:        20 B0 F8      JSR CODE_12F8B0           
CODE_12EE08:        EE 46 02      INC $0246                 
CODE_12EE0B:        20 1D ED      JSR CODE_12ED1D           
CODE_12EE0E:        98            TYA                       
CODE_12EE0F:        29 F0         AND #$F0                  
CODE_12EE11:        C9 B0         CMP #$B0                  
CODE_12EE13:        D0 15         BNE CODE_12EE2A           
CODE_12EE15:        EE 47 02      INC $0247                 
CODE_12EE18:        20 D6 F8      JSR CODE_12F8D6           
CODE_12EE1B:        20 D6 F8      JSR CODE_12F8D6           
CODE_12EE1E:        A9 E1         LDA #$E1                  
CODE_12EE20:        97 01         STA [$01],y               
CODE_12EE22:        20 3A F1      JSR CODE_12F13A           
CODE_12EE25:        EE 0F 05      INC $050F                 
CODE_12EE28:        80 C6         BRA CODE_12EDF0           

CODE_12EE2A:        AD 0F 05      LDA $050F                 
CODE_12EE2D:        C9 0E         CMP #$0E                  
CODE_12EE2F:        90 BF         BCC CODE_12EDF0           
CODE_12EE31:        20 D6 F8      JSR CODE_12F8D6           
CODE_12EE34:        20 D6 F8      JSR CODE_12F8D6           
CODE_12EE37:        A9 11         LDA #$11                  
CODE_12EE39:        97 01         STA [$01],y               
CODE_12EE3B:        20 3A F1      JSR CODE_12F13A           
CODE_12EE3E:        60            RTS
                       
CODE_12EE3F:        A4 E7         LDY $E7                   
CODE_12EE41:        AD 0F 05      LDA $050F                 
CODE_12EE44:        38            SEC                       
CODE_12EE45:        E9 0A         SBC #$0A                  
CODE_12EE47:        AA            TAX                       
CODE_12EE48:        20 85 EE      JSR CODE_12EE85           
CODE_12EE4B:        BD DF B6      LDA.w DATA_11B6DF,x               
CODE_12EE4E:        97 01         STA [$01],y               
CODE_12EE50:        20 3A F1      JSR CODE_12F13A           
CODE_12EE53:        22 4B 9D 15   JSL CODE_159D4B           
CODE_12EE57:        A6 07         LDX $07                   
CODE_12EE59:        CE 0E 05      DEC $050E                 
CODE_12EE5C:        F0 14         BEQ CODE_12EE72           
CODE_12EE5E:        20 D6 F8      JSR CODE_12F8D6           
CODE_12EE61:        BD E2 B6      LDA.w DATA_11B6E2,x               
CODE_12EE64:        97 01         STA [$01],y               
CODE_12EE66:        20 3A F1      JSR CODE_12F13A           
CODE_12EE69:        22 4B 9D 15   JSL CODE_159D4B           
CODE_12EE6D:        CE 0E 05      DEC $050E                 
CODE_12EE70:        D0 EC         BNE CODE_12EE5E           
CODE_12EE72:        20 D6 F8      JSR CODE_12F8D6           
CODE_12EE75:        20 85 EE      JSR CODE_12EE85           
CODE_12EE78:        BD E4 B6      LDA.w DATA_11B6E4,x               
CODE_12EE7B:        97 01         STA [$01],y               
CODE_12EE7D:        20 3A F1      JSR CODE_12F13A           
CODE_12EE80:        22 4B 9D 15   JSL CODE_159D4B           
CODE_12EE84:        60            RTS
                       
CODE_12EE85:        86 07         STX $07                   
CODE_12EE87:        B7 01         LDA [$01],y               
CODE_12EE89:        C9 40         CMP #$40                  
CODE_12EE8B:        F0 02         BEQ CODE_12EE8F           
CODE_12EE8D:        A2 02         LDX #$02                  
CODE_12EE8F:        60            RTS
                       
CODE_12EE90:        64 07         STZ $07                   
CODE_12EE92:        9C 4A 02      STZ $024A                 
CODE_12EE95:        A4 E7         LDY $E7                   
CODE_12EE97:        A6 E9         LDX $E9                   
CODE_12EE99:        20 B0 F8      JSR CODE_12F8B0           
CODE_12EE9C:        B7 01         LDA [$01],y               
CODE_12EE9E:        C9 40         CMP #$40                  
CODE_12EEA0:        D0 33         BNE CODE_12EED5           
CODE_12EEA2:        AD 4A 02      LDA $024A                 
CODE_12EEA5:        18            CLC                       
CODE_12EEA6:        69 5C         ADC #$5C                  
CODE_12EEA8:        97 01         STA [$01],y               
CODE_12EEAA:        20 54 F1      JSR CODE_12F154           
CODE_12EEAD:        EE 4A 02      INC $024A                 
CODE_12EEB0:        AD 4A 02      LDA $024A                 
CODE_12EEB3:        29 0F         AND #$0F                  
CODE_12EEB5:        C9 0C         CMP #$0C                  
CODE_12EEB7:        F0 05         BEQ CODE_12EEBE           
CODE_12EEB9:        20 D6 F8      JSR CODE_12F8D6           
CODE_12EEBC:        80 E4         BRA CODE_12EEA2           

CODE_12EEBE:        A4 E7         LDY $E7                   
CODE_12EEC0:        20 14 F9      JSR CODE_12F914           
CODE_12EEC3:        84 E7         STY $E7                   
CODE_12EEC5:        E6 07         INC $07                   
CODE_12EEC7:        AD 4A 02      LDA $024A                 
CODE_12EECA:        C9 1C         CMP #$1C                  
CODE_12EECC:        F0 C4         BEQ CODE_12EE92           
CODE_12EECE:        A9 10         LDA #$10                  
CODE_12EED0:        8D 4A 02      STA $024A                 
CODE_12EED3:        80 C0         BRA CODE_12EE95           

CODE_12EED5:        A5 07         LDA $07                   
CODE_12EED7:        C9 0F         CMP #$0F                  
CODE_12EED9:        F0 47         BEQ CODE_12EF22           
CODE_12EEDB:        AD 33 05      LDA $0533                 
CODE_12EEDE:        C9 0E         CMP #$0E                  
CODE_12EEE0:        D0 0D         BNE CODE_12EEEF           
CODE_12EEE2:        AD 34 05      LDA $0534                 
CODE_12EEE5:        C9 01         CMP #$01                  
CODE_12EEE7:        D0 06         BNE CODE_12EEEF           
CODE_12EEE9:        A5 E9         LDA $E9                   
CODE_12EEEB:        C9 08         CMP #$08                  
CODE_12EEED:        D0 33         BNE CODE_12EF22           
CODE_12EEEF:        98            TYA                       
CODE_12EEF0:        38            SEC                       
CODE_12EEF1:        E9 11         SBC #$11                  
CODE_12EEF3:        A8            TAY                       
CODE_12EEF4:        A9 0E         LDA #$0E                  
CODE_12EEF6:        18            CLC                       
CODE_12EEF7:        69 5C         ADC #$5C                  
CODE_12EEF9:        97 01         STA [$01],y               
CODE_12EEFB:        20 54 F1      JSR CODE_12F154           
CODE_12EEFE:        C8            INY                       
CODE_12EEFF:        A9 0F         LDA #$0F                  
CODE_12EF01:        18            CLC                       
CODE_12EF02:        69 5C         ADC #$5C                  
CODE_12EF04:        97 01         STA [$01],y               
CODE_12EF06:        A2 0A         LDX #$0A                  
CODE_12EF08:        20 D6 F8      JSR CODE_12F8D6           
CODE_12EF0B:        CA            DEX                       
CODE_12EF0C:        10 FA         BPL CODE_12EF08           
CODE_12EF0E:        A9 0C         LDA #$0C                  
CODE_12EF10:        18            CLC                       
CODE_12EF11:        69 5C         ADC #$5C                  
CODE_12EF13:        97 01         STA [$01],y               
CODE_12EF15:        20 D6 F8      JSR CODE_12F8D6           
CODE_12EF18:        A9 0D         LDA #$0D                  
CODE_12EF1A:        18            CLC                       
CODE_12EF1B:        69 5C         ADC #$5C                  
CODE_12EF1D:        97 01         STA [$01],y               
CODE_12EF1F:        20 54 F1      JSR CODE_12F154           
CODE_12EF22:        60            RTS
                       
CODE_12EF23:        A5 E7         LDA $E7                   
CODE_12EF25:        8D 21 07      STA $0721                 
CODE_12EF28:        A2 00         LDX #$00                  
CODE_12EF2A:        A4 E7         LDY $E7                   
CODE_12EF2C:        BD ED B6      LDA.w DATA_11B6ED,x               
CODE_12EF2F:        97 01         STA [$01],y               
CODE_12EF31:        C9 83         CMP #$83                  
CODE_12EF33:        F0 05         BEQ CODE_12EF3A           
CODE_12EF35:        20 54 F1      JSR CODE_12F154           
CODE_12EF38:        80 03         BRA CODE_12EF3D           

CODE_12EF3A:        20 3A F1      JSR CODE_12F13A           
CODE_12EF3D:        E8            INX                       
CODE_12EF3E:        C8            INY                       
CODE_12EF3F:        BD ED B6      LDA.w DATA_11B6ED,x               
CODE_12EF42:        97 01         STA [$01],y               
CODE_12EF44:        C9 83         CMP #$83                  
CODE_12EF46:        F0 05         BEQ CODE_12EF4D           
CODE_12EF48:        20 54 F1      JSR CODE_12F154           
CODE_12EF4B:        80 03         BRA CODE_12EF50           

CODE_12EF4D:        20 3A F1      JSR CODE_12F13A           
CODE_12EF50:        E8            INX                       
CODE_12EF51:        C8            INY                       
CODE_12EF52:        BD ED B6      LDA.w DATA_11B6ED,x               
CODE_12EF55:        97 01         STA [$01],y               
CODE_12EF57:        20 54 F1      JSR CODE_12F154           
CODE_12EF5A:        E8            INX                       
CODE_12EF5B:        C8            INY                       
CODE_12EF5C:        A4 E7         LDY $E7                   
CODE_12EF5E:        98            TYA                       
CODE_12EF5F:        18            CLC                       
CODE_12EF60:        69 10         ADC #$10                  
CODE_12EF62:        85 E7         STA $E7                   
CODE_12EF64:        E0 1B         CPX #$1B                  
CODE_12EF66:        D0 C2         BNE CODE_12EF2A           
CODE_12EF68:        AD 21 07      LDA $0721                 
CODE_12EF6B:        85 E7         STA $E7                   
CODE_12EF6D:        22 A7 A2 15   JSL CODE_15A2A7           
CODE_12EF71:        60            RTS
                       
CODE_12EF72:        A4 E7         LDY $E7                   
CODE_12EF74:        AD 0F 05      LDA $050F                 
CODE_12EF77:        C9 09         CMP #$09                  
CODE_12EF79:        D0 08         BNE CODE_12EF83           
CODE_12EF7B:        AD B0 04      LDA $04B0                 
CODE_12EF7E:        F0 03         BEQ CODE_12EF83           
CODE_12EF80:        EE 0F 05      INC $050F                 
CODE_12EF83:        AD 33 05      LDA $0533                 
CODE_12EF86:        C9 13         CMP #$13                  
CODE_12EF88:        D0 12         BNE CODE_12EF9C           
CODE_12EF8A:        AD 34 05      LDA $0534                 
CODE_12EF8D:        C9 00         CMP #$00                  
CODE_12EF8F:        D0 0B         BNE CODE_12EF9C           
CODE_12EF91:        AD 0F 05      LDA $050F                 
CODE_12EF94:        C9 0B         CMP #$0B                  
CODE_12EF96:        D0 04         BNE CODE_12EF9C           
CODE_12EF98:        A2 05         LDX #$05                  
CODE_12EF9A:        80 07         BRA CODE_12EFA3           

CODE_12EF9C:        AD 0F 05      LDA $050F                 
CODE_12EF9F:        38            SEC                       
CODE_12EFA0:        E9 09         SBC #$09                  
CODE_12EFA2:        AA            TAX                       
CODE_12EFA3:        BD 08 B7      LDA.w DATA_11B708,x               
CODE_12EFA6:        97 01         STA [$01],y               
CODE_12EFA8:        20 3A F1      JSR CODE_12F13A           
CODE_12EFAB:        20 14 F9      JSR CODE_12F914           
CODE_12EFAE:        BD 0E B7      LDA.w DATA_11B70E,x               
CODE_12EFB1:        97 01         STA [$01],y               
CODE_12EFB3:        20 3A F1      JSR CODE_12F13A           
CODE_12EFB6:        AD 35 06      LDA $0635                 
CODE_12EFB9:        C9 05         CMP #$05                  
CODE_12EFBB:        F0 07         BEQ CODE_12EFC4           
CODE_12EFBD:        C9 06         CMP #$06                  
CODE_12EFBF:        F0 03         BEQ CODE_12EFC4           
CODE_12EFC1:        20 28 F9      JSR CODE_12F928           
CODE_12EFC4:        60            RTS
                       
CODE_12EFC5:        A4 E7         LDY $E7                   
CODE_12EFC7:        AD 0F 05      LDA $050F                 
CODE_12EFCA:        38            SEC                       
CODE_12EFCB:        E9 0A         SBC #$0A                  
CODE_12EFCD:        AA            TAX                       
CODE_12EFCE:        BD 14 B7      LDA.w DATA_11B714,x               
CODE_12EFD1:        97 01         STA [$01],y               
CODE_12EFD3:        20 3A F1      JSR CODE_12F13A           
CODE_12EFD6:        CE 0E 05      DEC $050E                 
CODE_12EFD9:        F0 10         BEQ CODE_12EFEB           
CODE_12EFDB:        20 D6 F8      JSR CODE_12F8D6           
CODE_12EFDE:        BD 19 B7      LDA.w DATA_11B719,x               
CODE_12EFE1:        97 01         STA [$01],y               
CODE_12EFE3:        20 3A F1      JSR CODE_12F13A           
CODE_12EFE6:        CE 0E 05      DEC $050E                 
CODE_12EFE9:        D0 F0         BNE CODE_12EFDB           
CODE_12EFEB:        20 D6 F8      JSR CODE_12F8D6           
CODE_12EFEE:        BD 1E B7      LDA.w DATA_11B71E,x               
CODE_12EFF1:        97 01         STA [$01],y               
CODE_12EFF3:        20 3A F1      JSR CODE_12F13A           
CODE_12EFF6:        60            RTS
                       
CODE_12EFF7:        AD 0E 05      LDA $050E                 
CODE_12EFFA:        85 07         STA $07                   
CODE_12EFFC:        A9 0C         LDA #$0C                  
CODE_12EFFE:        8D 0F 05      STA $050F                 
CODE_12F001:        20 C5 EF      JSR CODE_12EFC5           
CODE_12F004:        A5 E7         LDA $E7                   
CODE_12F006:        18            CLC                       
CODE_12F007:        69 10         ADC #$10                  
CODE_12F009:        85 E7         STA $E7                   
CODE_12F00B:        A8            TAY                       
CODE_12F00C:        A9 0D         LDA #$0D                  
CODE_12F00E:        8D 0F 05      STA $050F                 
CODE_12F011:        A5 07         LDA $07                   
CODE_12F013:        8D 0E 05      STA $050E                 
CODE_12F016:        20 C5 EF      JSR CODE_12EFC5           
CODE_12F019:        A5 E7         LDA $E7                   
CODE_12F01B:        18            CLC                       
CODE_12F01C:        69 10         ADC #$10                  
CODE_12F01E:        85 E7         STA $E7                   
CODE_12F020:        A8            TAY                       
CODE_12F021:        A9 0E         LDA #$0E                  
CODE_12F023:        8D 0F 05      STA $050F                 
CODE_12F026:        A5 07         LDA $07                   
CODE_12F028:        8D 0E 05      STA $050E                 
CODE_12F02B:        A6 E9         LDX $E9                   
CODE_12F02D:        20 B0 F8      JSR CODE_12F8B0           
CODE_12F030:        B7 01         LDA [$01],y               
CODE_12F032:        C9 40         CMP #$40                  
CODE_12F034:        D0 09         BNE CODE_12F03F           
CODE_12F036:        20 C5 EF      JSR CODE_12EFC5           
CODE_12F039:        A5 E7         LDA $E7                   
CODE_12F03B:        C9 E0         CMP #$E0                  
CODE_12F03D:        90 DA         BCC CODE_12F019           
CODE_12F03F:        60            RTS
                       
CODE_12F040:        AE 35 06      LDX $0635                 
CODE_12F043:        A4 E7         LDY $E7                   
CODE_12F045:        BD 23 B7      LDA.w DATA_11B723,x               
CODE_12F048:        97 01         STA [$01],y               
CODE_12F04A:        20 3A F1      JSR CODE_12F13A           
CODE_12F04D:        20 14 F9      JSR CODE_12F914           
CODE_12F050:        B7 01         LDA [$01],y               
CODE_12F052:        C9 40         CMP #$40                  
CODE_12F054:        D0 13         BNE CODE_12F069           
CODE_12F056:        AE 35 06      LDX $0635                 
CODE_12F059:        BD 2A B7      LDA.w DATA_11B72A,x               
CODE_12F05C:        97 01         STA [$01],y               
CODE_12F05E:        20 3A F1      JSR CODE_12F13A           
CODE_12F061:        E0 04         CPX #$04                  
CODE_12F063:        D0 E8         BNE CODE_12F04D           
CODE_12F065:        C0 E0         CPY #$E0                  
CODE_12F067:        90 E4         BCC CODE_12F04D           
CODE_12F069:        60            RTS
                       
CODE_12F06A:        C6 E7         DEC $E7                   
CODE_12F06C:        C6 E7         DEC $E7                   
CODE_12F06E:        A2 00         LDX #$00                  
CODE_12F070:        A4 E7         LDY $E7                   
CODE_12F072:        A9 05         LDA #$05                  
CODE_12F074:        8D 12 07      STA $0712                 
CODE_12F077:        BD 4C D0      LDA.w DATA_11D04C,x               
CODE_12F07A:        97 01         STA [$01],y               
CODE_12F07C:        E8            INX                       
CODE_12F07D:        E0 18         CPX #$18                  
CODE_12F07F:        F0 0F         BEQ CODE_12F090           
CODE_12F081:        C8            INY                       
CODE_12F082:        CE 12 07      DEC $0712                 
CODE_12F085:        10 F0         BPL CODE_12F077           
CODE_12F087:        A5 E7         LDA $E7                   
CODE_12F089:        18            CLC                       
CODE_12F08A:        69 10         ADC #$10                  
CODE_12F08C:        85 E7         STA $E7                   
CODE_12F08E:        80 E0         BRA CODE_12F070           

CODE_12F090:        60            RTS
                       
CODE_12F091:        A4 E7         LDY $E7                   
CODE_12F093:        A9 58         LDA #$58                  
CODE_12F095:        97 01         STA [$01],y               
CODE_12F097:        20 3A F1      JSR CODE_12F13A           
CODE_12F09A:        98            TYA                       
CODE_12F09B:        18            CLC                       
CODE_12F09C:        69 0F         ADC #$0F                  
CODE_12F09E:        A8            TAY                       
CODE_12F09F:        CE 0E 05      DEC $050E                 
CODE_12F0A2:        D0 EF         BNE CODE_12F093           
CODE_12F0A4:        60            RTS
                       
CODE_12F0A5:        88            DEY                       
CODE_12F0A6:        98            TYA                       
CODE_12F0A7:        29 0F         AND #$0F                  
CODE_12F0A9:        C9 0F         CMP #$0F                  
CODE_12F0AB:        D0 11         BNE CODE_12F0BE           
CODE_12F0AD:        98            TYA                       
CODE_12F0AE:        18            CLC                       
CODE_12F0AF:        69 10         ADC #$10                  
CODE_12F0B1:        A8            TAY                       
CODE_12F0B2:        86 0B         STX $0B                   
CODE_12F0B4:        A6 E9         LDX $E9                   
CODE_12F0B6:        CA            DEX                       
CODE_12F0B7:        86 0D         STX $0D                   
CODE_12F0B9:        20 B0 F8      JSR CODE_12F8B0           
CODE_12F0BC:        A6 0B         LDX $0B                   
CODE_12F0BE:        60            RTS
                       
CODE_12F0BF:        DA            PHX                       
CODE_12F0C0:        8C C7 02      STY $02C7                 
CODE_12F0C3:        98            TYA                       
CODE_12F0C4:        29 0F         AND #$0F                  
CODE_12F0C6:        C9 0F         CMP #$0F                  
CODE_12F0C8:        F0 2D         BEQ CODE_12F0F7           
CODE_12F0CA:        98            TYA                       
CODE_12F0CB:        30 04         BMI CODE_12F0D1           
CODE_12F0CD:        C9 10         CMP #$10                  
CODE_12F0CF:        30 26         BMI CODE_12F0F7           
CODE_12F0D1:        38            SEC                       
CODE_12F0D2:        E9 10         SBC #$10                  
CODE_12F0D4:        A8            TAY                       
CODE_12F0D5:        A2 03         LDX #$03                  
CODE_12F0D7:        B7 01         LDA [$01],y               
CODE_12F0D9:        DD 31 B7      CMP.w DATA_11B731,x               
CODE_12F0DC:        F0 19         BEQ CODE_12F0F7           
CODE_12F0DE:        A2 03         LDX #$03                  
CODE_12F0E0:        AC C7 02      LDY $02C7                 
CODE_12F0E3:        B7 01         LDA [$01],y               
CODE_12F0E5:        DD 31 B7      CMP.w DATA_11B731,x               
CODE_12F0E8:        D0 0A         BNE CODE_12F0F4           
CODE_12F0EA:        BD 35 B7      LDA.w DATA_11B735,x               
CODE_12F0ED:        97 01         STA [$01],y               
CODE_12F0EF:        20 3A F1      JSR CODE_12F13A           
CODE_12F0F2:        80 03         BRA CODE_12F0F7           

CODE_12F0F4:        CA            DEX                       
CODE_12F0F5:        10 EE         BPL CODE_12F0E5           
CODE_12F0F7:        AC C7 02      LDY $02C7                 
CODE_12F0FA:        FA            PLX                       
CODE_12F0FB:        60            RTS
                       
CODE_12F0FC:        DA            PHX                       
CODE_12F0FD:        8C C7 02      STY $02C7                 
CODE_12F100:        98            TYA                       
CODE_12F101:        29 0F         AND #$0F                  
CODE_12F103:        F0 30         BEQ CODE_12F135           
CODE_12F105:        98            TYA                       
CODE_12F106:        30 04         BMI CODE_12F10C           
CODE_12F108:        C9 10         CMP #$10                  
CODE_12F10A:        30 29         BMI CODE_12F135           
CODE_12F10C:        38            SEC                       
CODE_12F10D:        E9 10         SBC #$10                  
CODE_12F10F:        A8            TAY                       
CODE_12F110:        A2 03         LDX #$03                  
CODE_12F112:        B7 01         LDA [$01],y               
CODE_12F114:        DD 39 B7      CMP.w DATA_11B739,x               
CODE_12F117:        F0 1C         BEQ CODE_12F135           
CODE_12F119:        CA            DEX                       
CODE_12F11A:        10 F8         BPL CODE_12F114           
CODE_12F11C:        A2 03         LDX #$03                  
CODE_12F11E:        AC C7 02      LDY $02C7                 
CODE_12F121:        B7 01         LDA [$01],y               
CODE_12F123:        DD 39 B7      CMP.w DATA_11B739,x               
CODE_12F126:        D0 0A         BNE CODE_12F132           
CODE_12F128:        BD 3D B7      LDA.w DATA_11B73D,x               
CODE_12F12B:        97 01         STA [$01],y               
CODE_12F12D:        20 3A F1      JSR CODE_12F13A           
CODE_12F130:        80 03         BRA CODE_12F135           

CODE_12F132:        CA            DEX                       
CODE_12F133:        10 EE         BPL CODE_12F123           
CODE_12F135:        AC C7 02      LDY $02C7                 
CODE_12F138:        FA            PLX                       
CODE_12F139:        60            RTS
                       
CODE_12F13A:        8D 6E 07      STA $076E                 
CODE_12F13D:        A5 02         LDA $02                   
CODE_12F13F:        8D 6F 07      STA $076F                 
CODE_12F142:        18            CLC                       
CODE_12F143:        69 70         ADC #$70                  
CODE_12F145:        85 02         STA $02                   
CODE_12F147:        A9 00         LDA #$00                  
CODE_12F149:        97 01         STA [$01],y               
CODE_12F14B:        AD 6F 07      LDA $076F                 
CODE_12F14E:        85 02         STA $02                   
CODE_12F150:        AD 6E 07      LDA $076E                 
CODE_12F153:        60            RTS
                       
CODE_12F154:        8D 6E 07      STA $076E                 
CODE_12F157:        A5 02         LDA $02                   
CODE_12F159:        8D 6F 07      STA $076F                 
CODE_12F15C:        18            CLC                       
CODE_12F15D:        69 70         ADC #$70                  
CODE_12F15F:        85 02         STA $02                   
CODE_12F161:        A9 01         LDA #$01                  
CODE_12F163:        97 01         STA [$01],y               
CODE_12F165:        AD 6F 07      LDA $076F                 
CODE_12F168:        85 02         STA $02                   
CODE_12F16A:        AD 6E 07      LDA $076E                 
CODE_12F16D:        60            RTS
                    
   
DATA_12F16E:        db $20,$1C,$1C,$1C,$1C,$21     

           
CODE_12F174:        64 08         STZ $08                   
CODE_12F176:        A6 E9         LDX $E9                   
CODE_12F178:        20 B0 F8      JSR CODE_12F8B0           
CODE_12F17B:        20 C5 F1      JSR CODE_12F1C5           
CODE_12F17E:        A4 E7         LDY $E7                   
CODE_12F180:        A9 05         LDA #$05                  
CODE_12F182:        85 07         STA $07                   
CODE_12F184:        B7 01         LDA [$01],y               
CODE_12F186:        C9 40         CMP #$40                  
CODE_12F188:        F0 0A         BEQ CODE_12F194           
CODE_12F18A:        C9 1B         CMP #$1B                  
CODE_12F18C:        F0 20         BEQ CODE_12F1AE           
CODE_12F18E:        C9 1D         CMP #$1D                  
CODE_12F190:        F0 1C         BEQ CODE_12F1AE           
CODE_12F192:        80 30         BRA CODE_12F1C4           

CODE_12F194:        A6 08         LDX $08                   
CODE_12F196:        AD 19 07      LDA $0719                 
CODE_12F199:        F0 04         BEQ CODE_12F19F           
CODE_12F19B:        AA            TAX                       
CODE_12F19C:        9C 19 07      STZ $0719                 
CODE_12F19F:        B7 01         LDA [$01],y               
CODE_12F1A1:        C9 1D         CMP #$1D                  
CODE_12F1A3:        F0 09         BEQ CODE_12F1AE           
CODE_12F1A5:        BF 6E F1 12   LDA.l DATA_12F16E,x             
CODE_12F1A9:        97 01         STA [$01],y               
CODE_12F1AB:        20 3A F1      JSR CODE_12F13A           
CODE_12F1AE:        20 D6 F8      JSR CODE_12F8D6           
CODE_12F1B1:        E6 08         INC $08                   
CODE_12F1B3:        C6 07         DEC $07                   
CODE_12F1B5:        10 DD         BPL CODE_12F194           
CODE_12F1B7:        A5 E7         LDA $E7                   
CODE_12F1B9:        18            CLC                       
CODE_12F1BA:        69 10         ADC #$10                  
CODE_12F1BC:        C9 F0         CMP #$F0                  
CODE_12F1BE:        B0 04         BCS CODE_12F1C4                  
CODE_12F1C0:        85 E7         STA $E7                   
CODE_12F1C2:        80 B0         BRA CODE_12F174           

CODE_12F1C4:        60            RTS
                       
CODE_12F1C5:        9C 19 07      STZ $0719                 
CODE_12F1C8:        A4 E7         LDY $E7                   
CODE_12F1CA:        20 A5 F0      JSR CODE_12F0A5           
CODE_12F1CD:        B7 01         LDA [$01],y               
CODE_12F1CF:        C9 21         CMP #$21                  
CODE_12F1D1:        F0 08         BEQ CODE_12F1DB           
CODE_12F1D3:        C9 2B         CMP #$2B                  
CODE_12F1D5:        D0 0B         BNE CODE_12F1E2           
CODE_12F1D7:        A9 2A         LDA #$2A                  
CODE_12F1D9:        80 02         BRA CODE_12F1DD           

CODE_12F1DB:        A9 1C         LDA #$1C                  
CODE_12F1DD:        97 01         STA [$01],y               
CODE_12F1DF:        EE 19 07      INC $0719                 
CODE_12F1E2:        60            RTS
           
DATA_12F1E3:        db $00,$02,$02,$02,$04,$00,$02,$02
                    db $02,$04

DATA_12F1ED:        db $1B,$1A,$1D,$1D,$1F,$1E
                          
CODE_12F1F3:        AD 68 07      LDA $0768               
CODE_12F1F6:        F0 37         BEQ CODE_12F22F                
CODE_12F1F8:        A5 01         LDA $01               
CODE_12F1FA:        8D 15 07      STA $0715                
CODE_12F1FD:        A5 02         LDA $02                   
CODE_12F1FF:        8D 16 07      STA $0716                 
CODE_12F202:        8C 17 07      STY $0717                 
CODE_12F205:        20 14 F9      JSR CODE_12F914           
CODE_12F208:        AD 6A 07      LDA $076A                 
CODE_12F20B:        4A            LSR A                     
CODE_12F20C:        AA            TAX                       
CODE_12F20D:        BF E3 F1 12   LDA.l DATA_12F1E3,x             
CODE_12F211:        18            CLC                       
CODE_12F212:        6D 0E 05      ADC $050E                 
CODE_12F215:        AA            TAX                       
CODE_12F216:        BF ED F1 12   LDA.l DATA_12F1ED,x             
CODE_12F21A:        97 01         STA [$01],y               
CODE_12F21C:        20 3A F1      JSR CODE_12F13A           
CODE_12F21F:        EE 6A 07      INC $076A                 
CODE_12F222:        AD 15 07      LDA $0715                 
CODE_12F225:        85 01         STA $01                   
CODE_12F227:        AD 16 07      LDA $0716                 
CODE_12F22A:        85 02         STA $02                   
CODE_12F22C:        AC 17 07      LDY $0717                 
CODE_12F22F:        60            RTS

DATA_12F230:        dw $4040,$4040,$0000,$0000              ; Tiles with which the level is blanked out. $40 = low byte, $00 = high byte. Blank tile.

DATA_12F238:        dw $2000,$5800,$9000,$C800              ; Which area of the Layer 1 tables is affected. $7E2000-$7E8FFF = low bytes, $7E9000-$7EFFFF = high bytes.
                          
CODE_12F240:        AD FE 00      LDA $00FE                 ; \ Use brightness as an index.
CODE_12F243:        49 0F         EOR #$0F                  ;  | But only values #$0F, #$0D, #$0B and #$09 are used as brightness. (And there are XORd with #$0F)
CODE_12F245:        AA            TAX                       ; / Resulting value (#$00, #$02, #$04 or #$06) goes in X.
CODE_12F246:        C2 20         REP #$20                  ; A = 16-bit.
CODE_12F248:        A9 00 38      LDA #$3800                ; \ Amount of bytes to clear = #$3800.
CODE_12F24B:        85 00         STA $00                   ;  |
CODE_12F24D:        BF 30 F2 12   LDA.l DATA_12F230,x         ;  | Map16 Tile to use = $40 (low byte) and $00 (high byte).  
CODE_12F251:        85 02         STA $02                   ;  |
CODE_12F253:        BF 38 F2 12   LDA.l DATA_12F238,x         ;  | Which area in the Layer 1 Map16 table to affect.  
CODE_12F257:        A0 7E         LDY #$7E                  ;  | Bank num = $7E.
CODE_12F259:        22 90 86 00   JSL CODE_008690           ; / DMA all data via the math registers at $211B/C.
CODE_12F25D:        E2 20         SEP #$20                  ; A = 8-bit.
CODE_12F25F:        60            RTS                       ; Return.
                       
CODE_12F260:        E2 20         SEP #$20                  ; A = 8-bit. Unused?
CODE_12F262:        60            RTS                       ; Return. Unused?
                       
CODE_12F263:        AD 76 07      LDA $0776                 
CODE_12F266:        D0 31         BNE CODE_12F299           
CODE_12F268:        9C 00 02      STZ $0200                 
CODE_12F26B:        9C 06 02      STZ $0206                 
CODE_12F26E:        9C 02 02      STZ $0202                 
CODE_12F271:        9C 08 02      STZ $0208                 
CODE_12F274:        9C 04 02      STZ $0204                 
CODE_12F277:        9C 0A 02      STZ $020A                 
CODE_12F27A:        9C 38 05      STZ $0538                 
CODE_12F27D:        9C 6C 02      STZ $026C                 
CODE_12F280:        9C 50 07      STZ $0750                 
CODE_12F283:        64 D5         STZ $D5                   
CODE_12F285:        9C C1 02      STZ $02C1                 
CODE_12F288:        9C 4F 07      STZ $074F                 
CODE_12F28B:        64 E6         STZ $E6                   
CODE_12F28D:        64 CA         STZ $CA                   
CODE_12F28F:        64 CB         STZ $CB                   
CODE_12F291:        9C BF 04      STZ $04BF                 
CODE_12F294:        9C C1 04      STZ $04C1                 
CODE_12F297:        64 D8         STZ $D8                   
CODE_12F299:        60            RTS
                       
CODE_12F29A:        C2 20         REP #$20                  ; \ A = 16-bit.
CODE_12F29C:        A9 00 A0      LDA #$A000                ;  | Amount of bytes to clear = #$A000.
CODE_12F29F:        85 00         STA $00                   ;  |
CODE_12F2A1:        A9 FF 00      LDA #$00FF                ;  | Value to transfer is #$FFFF.
CODE_12F2A4:        EB            XBA                       ;  | Why not simply LDA #$FFFF?
CODE_12F2A5:        09 FF 00      ORA #$00FF                ;  |
CODE_12F2A8:        85 02         STA $02                   ;  |
CODE_12F2AA:        A9 00 20      LDA #$2000                ;  | Starting address of table = $7F2000 (Layer 2 Map16 table)
CODE_12F2AD:        A0 7F         LDY #$7F                  ;  |
CODE_12F2AF:        22 90 86 00   JSL CODE_008690           ; / DMA all data via the math registers at $211B/C.
CODE_12F2B3:        E2 20         SEP #$20                  ; A = 8-bit.
CODE_12F2B5:        60            RTS                       ; Return.
                       
CODE_12F2B6:        84 0E         STY $0E                   
CODE_12F2B8:        86 0D         STX $0D                   
CODE_12F2BA:        AE 35 06      LDX $0635                 ; \ Load index to palettes...
CODE_12F2BD:        BF 00 80 14   LDA.l DATA_148000,x         ;  | per world.
CODE_12F2C1:        85 07         STA $07                   ;  | [$07] = pal pointer.
CODE_12F2C3:        BF 0E 80 14   LDA.l DATA_14800E,x         ;  |
CODE_12F2C7:        85 08         STA $08                   ;  |
CODE_12F2C9:        A9 14         LDA #$14                  ;  |
CODE_12F2CB:        85 09         STA $09                   ; /
CODE_12F2CD:        80 17         BRA CODE_12F2E6           

CODE_12F2CF:        84 0E         STY $0E                   
CODE_12F2D1:        86 0D         STX $0D                   
CODE_12F2D3:        AE 35 06      LDX $0635                 ; \ Load index to palettes...
CODE_12F2D6:        BF 07 80 14   LDA.l DATA_148007,x         ;  | per world.
CODE_12F2DA:        85 07         STA $07                   ;  | [$07] = pal pointer.
CODE_12F2DC:        BF 15 80 14   LDA.l DATA_148015,x         ;  |
CODE_12F2E0:        85 08         STA $08                   ;  |
CODE_12F2E2:        A9 14         LDA #$14                  ;  |
CODE_12F2E4:        85 09         STA $09                   ; /
CODE_12F2E6:        A4 0D         LDY $0D                   
CODE_12F2E8:        B7 07         LDA [$07],y               
CODE_12F2EA:        A4 0E         LDY $0E                   
CODE_12F2EC:        A6 0D         LDX $0D                   
CODE_12F2EE:        60            RTS
                       
CODE_12F2EF:        22 CE F5 12   JSL CODE_12F5CE           ; Prepare ($D9) pointer to load the Layer 1 room data.
CODE_12F2F3:        A0 00         LDY #$00                  ; Start off at the very start of the table.
CODE_12F2F5:        B1 D9         LDA ($D9),y               ; \ Load first byte.
CODE_12F2F7:        48            PHA                       ;  | Preserve A first.
CODE_12F2F8:        20 B6 F2      JSR CODE_12F2B6           ;  | Prepare palette pointer.
CODE_12F2FB:        68            PLA                       ; / 
CODE_12F2FC:        85 0E         STA $0E                   
CODE_12F2FE:        64 0F         STZ $0F                   
CODE_12F300:        C2 30         REP #$30                  
CODE_12F302:        A5 0E         LDA $0E                   
CODE_12F304:        48            PHA                       
CODE_12F305:        29 38 00      AND #$0038                
CODE_12F308:        0A            ASL A                     
CODE_12F309:        0A            ASL A                     
CODE_12F30A:        0A            ASL A                     
CODE_12F30B:        0A            ASL A                     
CODE_12F30C:        0A            ASL A                     
CODE_12F30D:        A8            TAY                       
CODE_12F30E:        AD EF 04      LDA $04EF                 
CODE_12F311:        29 FF 00      AND #$00FF                
CODE_12F314:        F0 04         BEQ CODE_12F31A           
CODE_12F316:        B7 07         LDA [$07],y               
CODE_12F318:        80 03         BRA CODE_12F31D           

CODE_12F31A:        A9 00 00      LDA #$0000                
CODE_12F31D:        8D BC 04      STA $04BC                 
CODE_12F320:        A2 00 00      LDX #$0000                
CODE_12F323:        B7 07         LDA [$07],y               
CODE_12F325:        9D 00 0B      STA $0B00,x               
CODE_12F328:        C8            INY                       
CODE_12F329:        C8            INY                       
CODE_12F32A:        E8            INX                       
CODE_12F32B:        E8            INX                       
CODE_12F32C:        E0 00 01      CPX #$0100                
CODE_12F32F:        D0 F2         BNE CODE_12F323           
CODE_12F331:        E2 30         SEP #$30                  
CODE_12F333:        A5 0E         LDA $0E                   
CODE_12F335:        C9 30         CMP #$30                  
CODE_12F337:        F0 04         BEQ CODE_12F33D           
CODE_12F339:        22 50 DD 13   JSL CODE_13DD50           
CODE_12F33D:        20 CF F2      JSR CODE_12F2CF           
CODE_12F340:        C2 20         REP #$20                  
CODE_12F342:        68            PLA                       
CODE_12F343:        29 03 00      AND #$0003                
CODE_12F346:        0A            ASL A                     
CODE_12F347:        0A            ASL A                     
CODE_12F348:        0A            ASL A                     
CODE_12F349:        0A            ASL A                     
CODE_12F34A:        0A            ASL A                     
CODE_12F34B:        0A            ASL A                     
CODE_12F34C:        A8            TAY                       
CODE_12F34D:        A2 00         LDX #$00                  
CODE_12F34F:        B7 07         LDA [$07],y               
CODE_12F351:        9D C0 0C      STA $0CC0,x               
CODE_12F354:        C8            INY                       
CODE_12F355:        C8            INY                       
CODE_12F356:        E8            INX                       
CODE_12F357:        E8            INX                       
CODE_12F358:        E0 40         CPX #$40                  
CODE_12F35A:        D0 F3         BNE CODE_12F34F           
CODE_12F35C:        E2 20         SEP #$20                  
CODE_12F35E:        22 00 DC 13   JSL CODE_13DC00           
CODE_12F362:        C2 20         REP #$20                  
CODE_12F364:        A0 1E         LDY #$1E                  
CODE_12F366:        B9 D0 12      LDA $12D0,y               
CODE_12F369:        99 00 0C      STA $0C00,y               
CODE_12F36C:        88            DEY                       
CODE_12F36D:        88            DEY                       
CODE_12F36E:        10 F6         BPL CODE_12F366           
CODE_12F370:        A2 7E         LDX #$7E                  
CODE_12F372:        BD 1C BB      LDA.w DATA_11BB1C,x               
CODE_12F375:        9D 20 0C      STA $0C20,x               
CODE_12F378:        CA            DEX                       
CODE_12F379:        CA            DEX                       
CODE_12F37A:        10 F6         BPL CODE_12F372           
CODE_12F37C:        AD BC 04      LDA $04BC                 
CODE_12F37F:        8D 00 0B      STA $0B00                 
CODE_12F382:        8D 20 0B      STA $0B20                 
CODE_12F385:        E2 20         SEP #$20                  
CODE_12F387:        22 57 E4 13   JSL CODE_13E457           
CODE_12F38B:        20 4F FF      JSR CODE_12FF4F           
CODE_12F38E:        A9 01         LDA #$01                  
CODE_12F390:        8D A9 02      STA $02A9                 
CODE_12F393:        6B            RTL
                       
CODE_12F394:        20 AC FF      JSR CODE_12FFAC           
CODE_12F397:        AD 34 05      LDA $0534                 
CODE_12F39A:        8D 1B 05      STA $051B                 
CODE_12F39D:        A9 30         LDA #$30                  
CODE_12F39F:        85 0F         STA $0F                   
CODE_12F3A1:        22 E2 DE 13   JSL CODE_13DEE2           
CODE_12F3A5:        AD BF 04      LDA $04BF                 
CODE_12F3A8:        85 E9         STA $E9                   
CODE_12F3AA:        AD C1 04      LDA $04C1                 
CODE_12F3AD:        18            CLC                       
CODE_12F3AE:        69 08         ADC #$08                  
CODE_12F3B0:        90 02         BCC CODE_12F3B4           
CODE_12F3B2:        E6 E9         INC $E9                   
CODE_12F3B4:        29 F0         AND #$F0                  
CODE_12F3B6:        48            PHA                       
CODE_12F3B7:        38            SEC                       
CODE_12F3B8:        ED C1 04      SBC $04C1                 
CODE_12F3BB:        85 BA         STA $BA                   
CODE_12F3BD:        68            PLA                       
CODE_12F3BE:        4A            LSR A                     
CODE_12F3BF:        4A            LSR A                     
CODE_12F3C0:        4A            LSR A                     
CODE_12F3C1:        4A            LSR A                     
CODE_12F3C2:        85 E5         STA $E5                   
CODE_12F3C4:        A9 00         LDA #$00                  
CODE_12F3C6:        85 E6         STA $E6                   
CODE_12F3C8:        A5 E9         LDA $E9                   
CODE_12F3CA:        85 0D         STA $0D                   
CODE_12F3CC:        20 82 FF      JSR CODE_12FF82           
CODE_12F3CF:        20 A3 F8      JSR CODE_12F8A3           
CODE_12F3D2:        A4 E7         LDY $E7                   
CODE_12F3D4:        A2 0F         LDX #$0F                  
CODE_12F3D6:        B7 01         LDA [$01],y               
CODE_12F3D8:        20 27 F4      JSR CODE_12F427           
CODE_12F3DB:        8C 13 07      STY $0713                 
CODE_12F3DE:        9B            TXY                       
CODE_12F3DF:        97 C4         STA [$C4],y               
CODE_12F3E1:        A5 02         LDA $02                   
CODE_12F3E3:        8D 14 07      STA $0714                 
CODE_12F3E6:        18            CLC                       
CODE_12F3E7:        69 70         ADC #$70                  
CODE_12F3E9:        85 02         STA $02                   
CODE_12F3EB:        AC 13 07      LDY $0713                 
CODE_12F3EE:        B7 01         LDA [$01],y               
CODE_12F3F0:        F0 14         BEQ CODE_12F406           
CODE_12F3F2:        A5 C5         LDA $C5                   
CODE_12F3F4:        8D 15 07      STA $0715                 
CODE_12F3F7:        18            CLC                       
CODE_12F3F8:        69 70         ADC #$70                  
CODE_12F3FA:        85 C5         STA $C5                   
CODE_12F3FC:        9B            TXY                       
CODE_12F3FD:        A9 01         LDA #$01                  
CODE_12F3FF:        97 C4         STA [$C4],y               
CODE_12F401:        AD 15 07      LDA $0715                 
CODE_12F404:        85 C5         STA $C5                   
CODE_12F406:        AD 14 07      LDA $0714                 
CODE_12F409:        85 02         STA $02                   
CODE_12F40B:        AC 13 07      LDY $0713                 
CODE_12F40E:        98            TYA                       
CODE_12F40F:        18            CLC                       
CODE_12F410:        69 10         ADC #$10                  
CODE_12F412:        A8            TAY                       
CODE_12F413:        8A            TXA                       
CODE_12F414:        18            CLC                       
CODE_12F415:        69 10         ADC #$10                  
CODE_12F417:        AA            TAX                       
CODE_12F418:        29 F0         AND #$F0                  
CODE_12F41A:        D0 BA         BNE CODE_12F3D6           
CODE_12F41C:        98            TYA                       
CODE_12F41D:        29 0F         AND #$0F                  
CODE_12F41F:        A8            TAY                       
CODE_12F420:        20 D6 F8      JSR CODE_12F8D6           
CODE_12F423:        CA            DEX                       
CODE_12F424:        10 B0         BPL CODE_12F3D6           
CODE_12F426:        6B            RTL
                       
CODE_12F427:        84 08         STY $08                   
CODE_12F429:        86 07         STX $07                   
CODE_12F42B:        C9 41         CMP #$41                  
CODE_12F42D:        F0 06         BEQ CODE_12F435           
CODE_12F42F:        C9 42         CMP #$42                  
CODE_12F431:        F0 02         BEQ CODE_12F435           
CODE_12F433:        80 15         BRA CODE_12F44A           

CODE_12F435:        38            SEC                       
CODE_12F436:        E9 41         SBC #$41                  
CODE_12F438:        A8            TAY                       
CODE_12F439:        B9 FC 04      LDA $04FC,y               
CODE_12F43C:        D0 05         BNE CODE_12F443           
CODE_12F43E:        A6 07         LDX $07                   
CODE_12F440:        20 5F F9      JSR CODE_12F95F           
CODE_12F443:        A9 41         LDA #$41                  
CODE_12F445:        80 03         BRA CODE_12F44A           

CODE_12F447:        BD 39 B8      LDA.w DATA_11B839,x               
CODE_12F44A:        A6 07         LDX $07                   
CODE_12F44C:        A4 08         LDY $08                   
CODE_12F44E:        60            RTS
                       
CODE_12F44F:        A2 00         LDX #$00                  
CODE_12F451:        86 EB         STX $EB                   
CODE_12F453:        20 AC FF      JSR CODE_12FFAC           
CODE_12F456:        20 82 FF      JSR CODE_12FF82           
CODE_12F459:        A0 00         LDY #$00                  
CODE_12F45B:        A9 40         LDA #$40                  
CODE_12F45D:        97 C4         STA [$C4],y               
CODE_12F45F:        C8            INY                       
CODE_12F460:        D0 FB         BNE CODE_12F45D           
CODE_12F462:        AE 33 05      LDX $0533                 
CODE_12F465:        BF 98 D0 11   LDA.l DATA_11D098,x             
CODE_12F469:        18            CLC                       
CODE_12F46A:        69 04         ADC #$04                  
CODE_12F46C:        AA            TAX                       
CODE_12F46D:        BF 00 A4 15   LDA.l DATA_15A400,x             
CODE_12F471:        3A            DEC A                     
CODE_12F472:        3A            DEC A                     
CODE_12F473:        8D 6B 07      STA $076B                 
CODE_12F476:        22 05 9B 15   JSL CODE_159B05           
CODE_12F47A:        AD 34 05      LDA $0534                 
CODE_12F47D:        8D 1B 05      STA $051B                 
CODE_12F480:        A9 04         LDA #$04                  
CODE_12F482:        8D 34 05      STA $0534                 
CODE_12F485:        A9 0A         LDA #$0A                  
CODE_12F487:        20 E4 F5      JSR CODE_12F5E4           
CODE_12F48A:        A0 02         LDY #$02                  
CODE_12F48C:        B1 D9         LDA ($D9),y               
CODE_12F48E:        29 03         AND #$03                  
CODE_12F490:        8D 44 05      STA $0544                 
CODE_12F493:        B1 D9         LDA ($D9),y               
CODE_12F495:        4A            LSR A                     
CODE_12F496:        4A            LSR A                     
CODE_12F497:        29 03         AND #$03                  
CODE_12F499:        8D 45 05      STA $0545                 
CODE_12F49C:        20 E4 F5      JSR CODE_12F5E4           
CODE_12F49F:        A9 0A         LDA #$0A                  
CODE_12F4A1:        85 E9         STA $E9                   
CODE_12F4A3:        A9 00         LDA #$00                  
CODE_12F4A5:        85 E6         STA $E6                   
CODE_12F4A7:        85 E5         STA $E5                   
CODE_12F4A9:        A9 03         LDA #$03                  
CODE_12F4AB:        85 04         STA $04                   
CODE_12F4AD:        20 0C F6      JSR CODE_12F60C           
CODE_12F4B0:        A9 01         LDA #$01                  
CODE_12F4B2:        85 EB         STA $EB                   
CODE_12F4B4:        6B            RTL
                       
CODE_12F4B5:        A0 03         LDY #$03                  
CODE_12F4B7:        B1 05         LDA ($05),y               
CODE_12F4B9:        29 03         AND #$03                  
CODE_12F4BB:        8D 46 05      STA $0546                 
CODE_12F4BE:        CD 47 05      CMP $0547                 
CODE_12F4C1:        F0 0C         BEQ CODE_12F4CF           
CODE_12F4C3:        AD E1 04      LDA $04E1                 
CODE_12F4C6:        C9 08         CMP #$08                  
CODE_12F4C8:        B0 05         BCS CODE_12F4CF                   
CODE_12F4CA:        A9 80         LDA #$80                  
CODE_12F4CC:        8D 03 06      STA $0603                 
CODE_12F4CF:        60            RTS
                       
CODE_12F4D0:        9C B7 02      STZ $02B7                 
CODE_12F4D3:        22 14 80 11   JSL CODE_118014           
CODE_12F4D7:        A5 FE         LDA $FE                   ; \ Don't run following routine routine if screen is too dark.
CODE_12F4D9:        C9 09         CMP #$09                  ;  | Brightness < #$09.
CODE_12F4DB:        90 03         BCC CODE_12F4E0           ; /
CODE_12F4DD:        20 40 F2      JSR CODE_12F240           ; Clear Layer 1 RAM table.
CODE_12F4E0:        22 B2 D1 14   JSL CODE_14D1B2           
CODE_12F4E4:        AD B7 02      LDA $02B7                 
CODE_12F4E7:        F0 EA         BEQ CODE_12F4D3           
CODE_12F4E9:        20 ED F4      JSR CODE_12F4ED           
CODE_12F4EC:        6B            RTL
                       
CODE_12F4ED:        AD 34 05      LDA $0534                 
CODE_12F4F0:        48            PHA                       
CODE_12F4F1:        AE 33 05      LDX $0533                 
CODE_12F4F4:        BF 30 CF 11   LDA.l DATA_11CF30,x             
CODE_12F4F8:        8D E5 02      STA $02E5                 
CODE_12F4FB:        8D 34 05      STA $0534                 
CODE_12F4FE:        AE 33 05      LDX $0533                 
CODE_12F501:        BF 98 D0 11   LDA.l DATA_11D098,x             
CODE_12F505:        18            CLC                       
CODE_12F506:        6D 34 05      ADC $0534                 
CODE_12F509:        AA            TAX                       
CODE_12F50A:        BF AD D0 11   LDA.l DATA_11D0AD,x             
CODE_12F50E:        85 D9         STA $D9                   
CODE_12F510:        BF 7F D1 11   LDA.l DATA_11D17F,x             
CODE_12F514:        85 DA         STA $DA                   
CODE_12F516:        20 5B F5      JSR CODE_12F55B           
CODE_12F519:        22 23 A1 15   JSL CODE_15A123           
CODE_12F51D:        22 8C 9C 15   JSL CODE_159C8C           
CODE_12F521:        CE 34 05      DEC $0534                 
CODE_12F524:        10 D8         BPL CODE_12F4FE           
CODE_12F526:        68            PLA                       
CODE_12F527:        8D 34 05      STA $0534                 
CODE_12F52A:        22 53 9C 15   JSL CODE_159C53           
CODE_12F52E:        22 A3 A1 15   JSL CODE_15A1A3           
CODE_12F532:        20 36 F5      JSR CODE_12F536           
CODE_12F535:        60            RTS
                       
CODE_12F536:        AD 33 05      LDA $0533                 
CODE_12F539:        D0 1F         BNE CODE_12F55A           
CODE_12F53B:        A9 7F         LDA #$7F                  
CODE_12F53D:        85 01         STA $01                   
CODE_12F53F:        A9 3E         LDA #$3E                  
CODE_12F541:        85 02         STA $02                   
CODE_12F543:        A9 7E         LDA #$7E                  
CODE_12F545:        85 03         STA $03                   
CODE_12F547:        A0 00         LDY #$00                  
CODE_12F549:        A9 CA         LDA #$CA                  
CODE_12F54B:        97 01         STA [$01],y               
CODE_12F54D:        98            TYA                       
CODE_12F54E:        18            CLC                       
CODE_12F54F:        69 10         ADC #$10                  
CODE_12F551:        C9 D0         CMP #$D0                  
CODE_12F553:        F0 05         BEQ CODE_12F55A           
CODE_12F555:        A8            TAY                       
CODE_12F556:        A9 C7         LDA #$C7                  
CODE_12F558:        80 F1         BRA CODE_12F54B           

CODE_12F55A:        60            RTS
                       
CODE_12F55B:        A0 03         LDY #$03                  
CODE_12F55D:        B1 D9         LDA ($D9),y               
CODE_12F55F:        4A            LSR A                     
CODE_12F560:        29 1C         AND #$1C                  
CODE_12F562:        8D 60 05      STA $0560                 
CODE_12F565:        A0 00         LDY #$00                  ; \ Bit 7 of byte 1...
CODE_12F567:        B1 D9         LDA ($D9),y               ;  | ... of level header of object data...
CODE_12F569:        0A            ASL A                     ;  | Goes into carry.
CODE_12F56A:        A9 00         LDA #$00                  ;  | All bits are clear.
CODE_12F56C:        2A            ROL A                     ;  | Carry into bit 0.
CODE_12F56D:        85 EB         STA $EB                   ; / Store into horizontal level flag. So that depends on bit 7 of the first header byte.
CODE_12F56F:        64 E9         STZ $E9                   
CODE_12F571:        A0 02         LDY #$02                  
CODE_12F573:        B1 D9         LDA ($D9),y               
CODE_12F575:        AA            TAX                       
CODE_12F576:        4A            LSR A                     
CODE_12F577:        4A            LSR A                     
CODE_12F578:        4A            LSR A                     
CODE_12F579:        4A            LSR A                     
CODE_12F57A:        8D 41 05      STA $0541                 
CODE_12F57D:        8A            TXA                       
CODE_12F57E:        29 03         AND #$03                  
CODE_12F580:        8D 44 05      STA $0544                 
CODE_12F583:        8A            TXA                       
CODE_12F584:        4A            LSR A                     
CODE_12F585:        4A            LSR A                     
CODE_12F586:        29 03         AND #$03                  
CODE_12F588:        8D 45 05      STA $0545                 
CODE_12F58B:        88            DEY                       
CODE_12F58C:        B1 D9         LDA ($D9),y               
CODE_12F58E:        29 1F         AND #$1F                  
CODE_12F590:        C9 1F         CMP #$1F                  
CODE_12F592:        F0 29         BEQ CODE_12F5BD           
CODE_12F594:        8D 43 05      STA $0543                 
CODE_12F597:        C8            INY                       
CODE_12F598:        C8            INY                       
CODE_12F599:        C8            INY                       
CODE_12F59A:        64 E5         STZ $E5                   
CODE_12F59C:        64 E6         STZ $E6                   
CODE_12F59E:        AE 33 05      LDX $0533                 
CODE_12F5A1:        BF 98 D0 11   LDA.l DATA_11D098,x             
CODE_12F5A5:        18            CLC                       
CODE_12F5A6:        6D 34 05      ADC $0534                 
CODE_12F5A9:        AA            TAX                       
CODE_12F5AA:        BF 00 A4 15   LDA.l DATA_15A400,x             
CODE_12F5AE:        F0 0A         BEQ CODE_12F5BA           
CODE_12F5B0:        C9 01         CMP #$01                  
CODE_12F5B2:        D0 09         BNE CODE_12F5BD           
CODE_12F5B4:        22 00 94 15   JSL CODE_159400           
CODE_12F5B8:        80 03         BRA CODE_12F5BD           

CODE_12F5BA:        20 1C F7      JSR CODE_12F71C           
CODE_12F5BD:        64 E6         STZ $E6                   
CODE_12F5BF:        A9 03         LDA #$03                  
CODE_12F5C1:        85 04         STA $04                   
CODE_12F5C3:        20 0A F6      JSR CODE_12F60A           
CODE_12F5C6:        A9 22         LDA #$22                  
CODE_12F5C8:        05 10         ORA $10                   
CODE_12F5CA:        8D 85 05      STA $0585                 
CODE_12F5CD:        60            RTS
                       
CODE_12F5CE:        AC 33 05      LDY $0533                 ; \ Get 16-bit address of Layer 1 room data in 16-bit pointer ($D9)
CODE_12F5D1:        B9 98 D0      LDA.w DATA_11D098,y         ;  |
CODE_12F5D4:        18            CLC                       ;  |
CODE_12F5D5:        6D 34 05      ADC $0534                 ;  |
CODE_12F5D8:        A8            TAY                       ;  |
CODE_12F5D9:        B9 AD D0      LDA.w DATA_11D0AD,y         ;  |   
CODE_12F5DC:        85 D9         STA $D9                   ;  |
CODE_12F5DE:        B9 7F D1      LDA.w DATA_11D17F,y         ;  |   
CODE_12F5E1:        85 DA         STA $DA                   ; /
CODE_12F5E3:        6B            RTL                       ; Return.
                       
CODE_12F5E4:        A9 1A         LDA #$1A                  
CODE_12F5E6:        85 DA         STA $DA                   
CODE_12F5E8:        64 D9         STZ $D9                   
CODE_12F5EA:        60            RTS
                       
CODE_12F5EB:        AE 33 05      LDX $0533                 
CODE_12F5EE:        BF 00 9E 13   LDA.l DATA_139E00,x             
CODE_12F5F2:        18            CLC                       
CODE_12F5F3:        6D 34 05      ADC $0534                 
CODE_12F5F6:        AA            TAX                       
CODE_12F5F7:        BF 16 9E 13   LDA.l DATA_139E16,x             
CODE_12F5FB:        85 05         STA $05                   
CODE_12F5FD:        BF E8 9E 13   LDA.l DATA_139EE8,x             
CODE_12F601:        85 06         STA $06                   
CODE_12F603:        AF 15 9E 13   LDA.l DATA_139E15               
CODE_12F607:        85 07         STA $07                   
CODE_12F609:        60            RTS
                       
CODE_12F60A:        64 E9         STZ $E9                   
CODE_12F60C:        A4 04         LDY $04                   
CODE_12F60E:        C8            INY                       
CODE_12F60F:        B1 D9         LDA ($D9),y               ; \ Check if position byte inside the object tables is $FF...
CODE_12F611:        C9 FF         CMP #$FF                  ;  |
CODE_12F613:        F0 F4         BEQ CODE_12F609           ; / If so, terminate.
CODE_12F615:        29 0F         AND #$0F                  ; \ Get X position of object.
CODE_12F617:        85 E5         STA $E5                   ; /
CODE_12F619:        B1 D9         LDA ($D9),y               ; \ Get relative Y position....
CODE_12F61B:        29 F0         AND #$F0                  ;  |
CODE_12F61D:        C9 F0         CMP #$F0                  ;  | ... if $F0 (special object), don't branch.
CODE_12F61F:        D0 0B         BNE CODE_12F62C           ; /
CODE_12F621:        A5 E5         LDA $E5                   ;  Load X position of object...
CODE_12F623:        84 0F         STY $0F                   
CODE_12F625:        20 8C F6      JSR CODE_12F68C           
CODE_12F628:        A4 0F         LDY $0F                   
CODE_12F62A:        80 E2         BRA CODE_12F60E           

CODE_12F62C:        20 78 F6      JSR CODE_12F678           
CODE_12F62F:        C8            INY                       
CODE_12F630:        84 04         STY $04                   
CODE_12F632:        20 A3 F8      JSR CODE_12F8A3           
CODE_12F635:        B1 D9         LDA ($D9),y               
CODE_12F637:        4A            LSR A                     
CODE_12F638:        4A            LSR A                     
CODE_12F639:        4A            LSR A                     
CODE_12F63A:        4A            LSR A                     
CODE_12F63B:        8D 0F 05      STA $050F                 
CODE_12F63E:        C9 03         CMP #$03                  
CODE_12F640:        B0 19         BCS CODE_12F65B                   
CODE_12F642:        48            PHA                       
CODE_12F643:        B1 D9         LDA ($D9),y               
CODE_12F645:        29 0F         AND #$0F                  
CODE_12F647:        8D 0F 05      STA $050F                 
CODE_12F64A:        68            PLA                       
CODE_12F64B:        F0 23         BEQ CODE_12F670           
CODE_12F64D:        C9 01         CMP #$01                  
CODE_12F64F:        D0 05         BNE CODE_12F656           
CODE_12F651:        20 A4 E4      JSR CODE_12E4A4           
CODE_12F654:        80 B6         BRA CODE_12F60C           

CODE_12F656:        20 A8 EB      JSR CODE_12EBA8           
CODE_12F659:        80 B1         BRA CODE_12F60C          
 
CODE_12F65B:        B1 D9         LDA ($D9),y               
CODE_12F65D:        29 0F         AND #$0F                  
CODE_12F65F:        8D 0E 05      STA $050E                 
CODE_12F662:        AD 0F 05      LDA $050F                 
CODE_12F665:        38            SEC                       
CODE_12F666:        E9 03         SBC #$03                  
CODE_12F668:        8D 0F 05      STA $050F                 
CODE_12F66B:        20 60 E4      JSR CODE_12E460           
CODE_12F66E:        80 9C         BRA CODE_12F60C           

CODE_12F670:        AD 0F 05      LDA $050F                 
CODE_12F673:        20 7F E4      JSR CODE_12E47F           
CODE_12F676:        80 94         BRA CODE_12F60C           

CODE_12F678:        18            CLC                       
CODE_12F679:        65 E6         ADC $E6                   
CODE_12F67B:        90 04         BCC CODE_12F681           
CODE_12F67D:        69 0F         ADC #$0F                  
CODE_12F67F:        80 06         BRA CODE_12F687           

CODE_12F681:        C9 F0         CMP #$F0                  
CODE_12F683:        D0 04         BNE CODE_12F689           
CODE_12F685:        A9 00         LDA #$00                  
CODE_12F687:        E6 E9         INC $E9                   
CODE_12F689:        85 E6         STA $E6                   
CODE_12F68B:        60            RTS
                       
CODE_12F68C:        0A            ASL A                     ; \ Jump to code, dependant on...
CODE_12F68D:        AA            TAX                       ;  | ... X position of special object.
CODE_12F68E:        7C 91 F6      JMP (PNTR_12F691,x)       ; /

PNTR_12F691:        dw CODE_12F6C6
                    dw CODE_12F6C6
                    dw CODE_12F6B4
                    dw CODE_12F6B2
                    dw CODE_12F704
                    dw CODE_12F6C9
                    dw CODE_12F6C6                

CODE_12F69F:        0A            ASL A                     
CODE_12F6A0:        AA            TAX                       
CODE_12F6A1:        7C A4 F6      JMP (PNTR_12F6A4,x)             

PNTR_12F6A4:        dw CODE_12F6EA
                    dw CODE_12F6EF
                    dw CODE_12F6BC
                    dw CODE_12F6B9
                    dw CODE_12F709
                    dw CODE_12F70E
                    dw CODE_12F70F
               
CODE_12F6B2:        E6 E9         INC $E9
CODE_12F6B4:        E6 E9         INC $E9
CODE_12F6B6:        64 E6         STZ $E6
CODE_12F6B8:        60            RTS
                 
CODE_12F6B9:        EE 42 05      INC $0542                 
CODE_12F6BC:        EE 42 05      INC $0542                 
CODE_12F6BF:        64 0E         STZ $0E                   
CODE_12F6C1:        64 09         STZ $09                   
CODE_12F6C3:        6B            RTL
                       
CODE_12F6C4:        E6 0F         INC $0F                   
CODE_12F6C6:        E6 0F         INC $0F                   
CODE_12F6C8:        60            RTS
                       
CODE_12F6C9:        A4 0F         LDY $0F                   
CODE_12F6CB:        C8            INY                       
CODE_12F6CC:        A5 E9         LDA $E9                   
CODE_12F6CE:        0A            ASL A                     
CODE_12F6CF:        AA            TAX                       
CODE_12F6D0:        B1 D9         LDA ($D9),y               
CODE_12F6D2:        9D 1F 05      STA $051F,x               
CODE_12F6D5:        C8            INY                       
CODE_12F6D6:        E8            INX                       
CODE_12F6D7:        B1 D9         LDA ($D9),y               
CODE_12F6D9:        9D 1F 05      STA $051F,x               
CODE_12F6DC:        84 0F         STY $0F                   
CODE_12F6DE:        60            RTS
                       
CODE_12F6DF:        A4 0F         LDY $0F                   
CODE_12F6E1:        C8            INY                       
CODE_12F6E2:        B1 D9         LDA ($D9),y               
CODE_12F6E4:        4A            LSR A                     
CODE_12F6E5:        4A            LSR A                     
CODE_12F6E6:        4A            LSR A                     
CODE_12F6E7:        4A            LSR A                     
CODE_12F6E8:        4A            LSR A                     
CODE_12F6E9:        60            RTS
                       
CODE_12F6EA:        20 DF F6      JSR CODE_12F6DF           
CODE_12F6ED:        80 06         BRA CODE_12F6F5           

CODE_12F6EF:        20 DF F6      JSR CODE_12F6DF           
CODE_12F6F2:        18            CLC                       
CODE_12F6F3:        69 08         ADC #$08                  
CODE_12F6F5:        85 0E         STA $0E                   
CODE_12F6F7:        A5 EB         LDA $EB                   
CODE_12F6F9:        D0 08         BNE CODE_12F703           
CODE_12F6FB:        A5 0E         LDA $0E                   
CODE_12F6FD:        0A            ASL A                     
CODE_12F6FE:        0A            ASL A                     
CODE_12F6FF:        0A            ASL A                     
CODE_12F700:        0A            ASL A                     
CODE_12F701:        85 0E         STA $0E                   
CODE_12F703:        6B            RTL
                       
CODE_12F704:        64 E9         STZ $E9                   
CODE_12F706:        64 E6         STZ $E6                   
CODE_12F708:        60            RTS
                       
CODE_12F709:        9C 42 05      STZ $0542                 
CODE_12F70C:        64 0E         STZ $0E                   
CODE_12F70E:        6B            RTL
                       
CODE_12F70F:        A4 0F         LDY $0F                   
CODE_12F711:        C8            INY                       
CODE_12F712:        B1 D9         LDA ($D9),y               
CODE_12F714:        29 0F         AND #$0F                  
CODE_12F716:        0A            ASL A                     
CODE_12F717:        0A            ASL A                     
CODE_12F718:        8D 60 05      STA $0560                 
CODE_12F71B:        6B            RTL
                       
CODE_12F71C:        9C 42 05      STZ $0542                 
CODE_12F71F:        64 09         STZ $09                   
CODE_12F721:        B1 D9         LDA ($D9),y               
CODE_12F723:        C9 FF         CMP #$FF                  
CODE_12F725:        D0 0C         BNE CODE_12F733           
CODE_12F727:        AD 41 05      LDA $0541                 
CODE_12F72A:        1A            INC A                     
CODE_12F72B:        1A            INC A                     
CODE_12F72C:        8D 42 05      STA $0542                 
CODE_12F72F:        64 0E         STZ $0E                   
CODE_12F731:        80 46         BRA CODE_12F779           

CODE_12F733:        B1 D9         LDA ($D9),y               
CODE_12F735:        29 F0         AND #$F0                  
CODE_12F737:        F0 24         BEQ CODE_12F75D           
CODE_12F739:        C9 F0         CMP #$F0                  
CODE_12F73B:        D0 24         BNE CODE_12F761           
CODE_12F73D:        9C C8 02      STZ $02C8                 
CODE_12F740:        B1 D9         LDA ($D9),y               
CODE_12F742:        29 0F         AND #$0F                  
CODE_12F744:        84 0F         STY $0F                   
CODE_12F746:        22 9F F6 12   JSL CODE_12F69F           
CODE_12F74A:        A4 0F         LDY $0F                   
CODE_12F74C:        B1 D9         LDA ($D9),y               
CODE_12F74E:        29 0F         AND #$0F                  
CODE_12F750:        C9 02         CMP #$02                  
CODE_12F752:        90 25         BCC CODE_12F779           
CODE_12F754:        C9 06         CMP #$06                  
CODE_12F756:        F0 05         BEQ CODE_12F75D           
CODE_12F758:        C9 05         CMP #$05                  
CODE_12F75A:        D0 02         BNE CODE_12F75E           
CODE_12F75C:        C8            INY                       
CODE_12F75D:        C8            INY                       
CODE_12F75E:        C8            INY                       
CODE_12F75F:        80 C0         BRA CODE_12F721           

CODE_12F761:        18            CLC                       
CODE_12F762:        65 09         ADC $09                   
CODE_12F764:        90 04         BCC CODE_12F76A           
CODE_12F766:        69 0F         ADC #$0F                  
CODE_12F768:        80 06         BRA CODE_12F770           

CODE_12F76A:        C9 F0         CMP #$F0                  
CODE_12F76C:        D0 05         BNE CODE_12F773           
CODE_12F76E:        A9 00         LDA #$00                  
CODE_12F770:        EE 42 05      INC $0542                 
CODE_12F773:        85 09         STA $09                   
CODE_12F775:        C8            INY                       
CODE_12F776:        C8            INY                       
CODE_12F777:        80 A8         BRA CODE_12F721           

CODE_12F779:        20 A3 F8      JSR CODE_12F8A3           
CODE_12F77C:        22 CE F7 12   JSL CODE_12F7CE           
CODE_12F780:        A5 EB         LDA $EB                   
CODE_12F782:        F0 0E         BEQ CODE_12F792           
CODE_12F784:        E6 E5         INC $E5                   
CODE_12F786:        A5 E5         LDA $E5                   
CODE_12F788:        C9 10         CMP #$10                  
CODE_12F78A:        D0 0B         BNE CODE_12F797           
CODE_12F78C:        E6 E9         INC $E9                   
CODE_12F78E:        64 E5         STZ $E5                   
CODE_12F790:        80 05         BRA CODE_12F797           

CODE_12F792:        A9 10         LDA #$10                  
CODE_12F794:        20 78 F6      JSR CODE_12F678           
CODE_12F797:        A5 E9         LDA $E9                   
CODE_12F799:        CD 42 05      CMP $0542                 
CODE_12F79C:        D0 DB         BNE CODE_12F779           
CODE_12F79E:        A5 EB         LDA $EB                   
CODE_12F7A0:        F0 08         BEQ CODE_12F7AA           
CODE_12F7A2:        A5 E5         LDA $E5                   
CODE_12F7A4:        C5 0E         CMP $0E                   
CODE_12F7A6:        90 D1         BCC CODE_12F779           
CODE_12F7A8:        B0 06         BCS CODE_12F7B0                   
CODE_12F7AA:        A5 E6         LDA $E6                   
CODE_12F7AC:        C5 0E         CMP $0E                   
CODE_12F7AE:        90 C9         BCC CODE_12F779           
CODE_12F7B0:        B1 D9         LDA ($D9),y               
CODE_12F7B2:        C9 FF         CMP #$FF                  
CODE_12F7B4:        F0 17         BEQ CODE_12F7CD           
CODE_12F7B6:        C8            INY                       
CODE_12F7B7:        B1 D9         LDA ($D9),y               
CODE_12F7B9:        29 1F         AND #$1F                  
CODE_12F7BB:        8D 43 05      STA $0543                 
CODE_12F7BE:        C8            INY                       
CODE_12F7BF:        4C 21 F7      JMP CODE_12F721           

CODE_12F7C2:        A5 EB         LDA $EB                   
CODE_12F7C4:        D0 04         BNE CODE_12F7CA           
CODE_12F7C6:        BD BD B7      LDA.w DATA_11B7BD,x               
CODE_12F7C9:        60            RTS

CODE_12F7CA:        BD 41 B7      LDA.w DATA_11B741,x               
CODE_12F7CD:        60            RTS

CODE_12F7CE:        84 04         STY $04                   
CODE_12F7D0:        AD 43 05      LDA $0543                 
CODE_12F7D3:        0A            ASL A                     
CODE_12F7D4:        0A            ASL A                     
CODE_12F7D5:        AA            TAX                       
CODE_12F7D6:        A4 E7         LDY $E7                   
CODE_12F7D8:        A5 EB         LDA $EB                   
CODE_12F7DA:        D0 06         BNE CODE_12F7E2           
CODE_12F7DC:        BF BD B7 11   LDA.l DATA_11B7BD,x             
CODE_12F7E0:        80 04         BRA CODE_12F7E6           

CODE_12F7E2:        BF 41 B7 11   LDA.l DATA_11B741,x             
CODE_12F7E6:        8D 17 07      STA $0717                 
CODE_12F7E9:        20 11 F8      JSR CODE_12F811           
CODE_12F7EC:        AD 17 07      LDA $0717                 
CODE_12F7EF:        20 13 F8      JSR CODE_12F813           
CODE_12F7F2:        AD 17 07      LDA $0717                 
CODE_12F7F5:        20 15 F8      JSR CODE_12F815           
CODE_12F7F8:        AD 17 07      LDA $0717                 
CODE_12F7FB:        20 17 F8      JSR CODE_12F817           
CODE_12F7FE:        A5 EB         LDA $EB                   
CODE_12F800:        F0 06         BEQ CODE_12F808           
CODE_12F802:        E8            INX                       
CODE_12F803:        90 D3         BCC CODE_12F7D8           
CODE_12F805:        A4 04         LDY $04                   
CODE_12F807:        6B            RTL
                       
CODE_12F808:        E8            INX                       
CODE_12F809:        98            TYA                       
CODE_12F80A:        29 0F         AND #$0F                  
CODE_12F80C:        D0 CA         BNE CODE_12F7D8           
CODE_12F80E:        A4 04         LDY $04                   
CODE_12F810:        6B            RTL
                       
CODE_12F811:        4A            LSR A                     
CODE_12F812:        4A            LSR A                     
CODE_12F813:        4A            LSR A                     
CODE_12F814:        4A            LSR A                     
CODE_12F815:        4A            LSR A                     
CODE_12F816:        4A            LSR A                     
CODE_12F817:        29 03         AND #$03                  
CODE_12F819:        8E 10 02      STX $0210                 
CODE_12F81C:        F0 6A         BEQ CODE_12F888           
CODE_12F81E:        18            CLC                       
CODE_12F81F:        6D 60 05      ADC $0560                 
CODE_12F822:        AA            TAX                       
CODE_12F823:        86 0C         STX $0C                   
CODE_12F825:        84 0D         STY $0D                   
CODE_12F827:        AE 35 06      LDX $0635                 
CODE_12F82A:        A5 EB         LDA $EB                   
CODE_12F82C:        D0 10         BNE CODE_12F83E           
CODE_12F82E:        BD 8F AB      LDA.w PNTR_11AB8F,x               
CODE_12F831:        85 DC         STA $DC                   
CODE_12F833:        BD 9D AB      LDA.w PNTR_11AB9D,x               
CODE_12F836:        85 DD         STA $DD                   
CODE_12F838:        A9 11         LDA #$11                  
CODE_12F83A:        85 DE         STA $DE                   
CODE_12F83C:        80 0E         BRA CODE_12F84C           

CODE_12F83E:        BD 88 AB      LDA.w PNTR_11AB88,x               
CODE_12F841:        85 DC         STA $DC                   
CODE_12F843:        BD 96 AB      LDA.w PNTR_11AB96,x               
CODE_12F846:        85 DD         STA $DD                   
CODE_12F848:        A9 11         LDA #$11                  
CODE_12F84A:        85 DE         STA $DE                   
CODE_12F84C:        A4 0C         LDY $0C                   
CODE_12F84E:        B7 DC         LDA [$DC],y               
CODE_12F850:        48            PHA                       
CODE_12F851:        A5 E9         LDA $E9                   
CODE_12F853:        D0 09         BNE CODE_12F85E           
CODE_12F855:        A5 0D         LDA $0D                   
CODE_12F857:        29 0F         AND #$0F                  
CODE_12F859:        D0 03         BNE CODE_12F85E           
CODE_12F85B:        68            PLA                       
CODE_12F85C:        80 1E         BRA CODE_12F87C           

CODE_12F85E:        A5 0D         LDA $0D                   
CODE_12F860:        29 F0         AND #$F0                  
CODE_12F862:        D0 03         BNE CODE_12F867           
CODE_12F864:        68            PLA                       
CODE_12F865:        80 18         BRA CODE_12F87F           

CODE_12F867:        68            PLA                       
CODE_12F868:        20 F0 FE      JSR CODE_12FEF0           
CODE_12F86B:        C0 00         CPY #$00                  
CODE_12F86D:        F0 0D         BEQ CODE_12F87C           
CODE_12F86F:        AE C8 02      LDX $02C8                 
CODE_12F872:        D0 05         BNE CODE_12F879           
CODE_12F874:        20 30 FE      JSR CODE_12FE30           
CODE_12F877:        80 03         BRA CODE_12F87C           

CODE_12F879:        20 80 FE      JSR CODE_12FE80           
CODE_12F87C:        20 2B FF      JSR CODE_12FF2B           
CODE_12F87F:        20 C2 FF      JSR CODE_12FFC2           
CODE_12F882:        A6 0C         LDX $0C                   
CODE_12F884:        A4 0D         LDY $0D                   
CODE_12F886:        97 01         STA [$01],y               
CODE_12F888:        AE 10 02      LDX $0210                 
CODE_12F88B:        A5 EB         LDA $EB                   
CODE_12F88D:        D0 02         BNE CODE_12F891           
CODE_12F88F:        C8            INY                       
CODE_12F890:        60            RTS
                       
CODE_12F891:        98            TYA                       
CODE_12F892:        18            CLC                       
CODE_12F893:        69 10         ADC #$10                  
CODE_12F895:        A8            TAY                       
CODE_12F896:        29 F0         AND #$F0                  
CODE_12F898:        D0 08         BNE CODE_12F8A2           
CODE_12F89A:        AD C8 02      LDA $02C8                 
CODE_12F89D:        D0 03         BNE CODE_12F8A2           
CODE_12F89F:        EE C8 02      INC $02C8                 
CODE_12F8A2:        60            RTS
                       
CODE_12F8A3:        A6 E9         LDX $E9                   
CODE_12F8A5:        20 B0 F8      JSR CODE_12F8B0           
CODE_12F8A8:        A5 E6         LDA $E6                   
CODE_12F8AA:        18            CLC                       
CODE_12F8AB:        65 E5         ADC $E5                   
CODE_12F8AD:        85 E7         STA $E7                   
CODE_12F8AF:        60            RTS
                       
CODE_12F8B0:        8C F5 02      STY $02F5                 
CODE_12F8B3:        AD 28 06      LDA $0628                 
CODE_12F8B6:        3A            DEC A                     
CODE_12F8B7:        F0 09         BEQ CODE_12F8C2           
CODE_12F8B9:        DA            PHX                       
CODE_12F8BA:        AE 34 05      LDX $0534                 
CODE_12F8BD:        BF 11 AB 11   LDA.l DATA_11AB11,x             
CODE_12F8C1:        FA            PLX                       
CODE_12F8C2:        18            CLC                       
CODE_12F8C3:        7D FB AA      ADC.w DATA_11AAFB,x               
CODE_12F8C6:        85 02         STA $02                   
CODE_12F8C8:        BD F0 AA      LDA.w DATA_11AAF0,x               
CODE_12F8CB:        85 01         STA $01                   
CODE_12F8CD:        BD 06 AB      LDA.w DATA_11AB06,x               
CODE_12F8D0:        85 03         STA $03                   
CODE_12F8D2:        AC F5 02      LDY $02F5                 
CODE_12F8D5:        60            RTS
                       
CODE_12F8D6:        C8            INY                       
CODE_12F8D7:        98            TYA                       
CODE_12F8D8:        29 0F         AND #$0F                  
CODE_12F8DA:        D0 37         BNE CODE_12F913           
CODE_12F8DC:        98            TYA                       
CODE_12F8DD:        38            SEC                       
CODE_12F8DE:        E9 10         SBC #$10                  
CODE_12F8E0:        A8            TAY                       
CODE_12F8E1:        86 0B         STX $0B                   
CODE_12F8E3:        A6 E9         LDX $E9                   
CODE_12F8E5:        E0 06         CPX #$06                  
CODE_12F8E7:        D0 22         BNE CODE_12F90B           
CODE_12F8E9:        AD 46 02      LDA $0246                 
CODE_12F8EC:        C9 01         CMP #$01                  
CODE_12F8EE:        F0 06         BEQ CODE_12F8F6           
CODE_12F8F0:        C9 02         CMP #$02                  
CODE_12F8F2:        F0 08         BEQ CODE_12F8FC           
CODE_12F8F4:        80 15         BRA CODE_12F90B           

CODE_12F8F6:        C0 B0         CPY #$B0                  
CODE_12F8F8:        D0 11         BNE CODE_12F90B           
CODE_12F8FA:        80 04         BRA CODE_12F900           

CODE_12F8FC:        C0 C0         CPY #$C0                  
CODE_12F8FE:        D0 0B         BNE CODE_12F90B           
CODE_12F900:        A5 07         LDA $07                   
CODE_12F902:        C9 04         CMP #$04                  
CODE_12F904:        D0 05         BNE CODE_12F90B           
CODE_12F906:        AD 47 02      LDA $0247                 
CODE_12F909:        F0 01         BEQ CODE_12F90C           
CODE_12F90B:        E8            INX                       
CODE_12F90C:        86 0D         STX $0D                   
CODE_12F90E:        20 B0 F8      JSR CODE_12F8B0           
CODE_12F911:        A6 0B         LDX $0B                   
CODE_12F913:        60            RTS
                       
CODE_12F914:        98            TYA                       
CODE_12F915:        18            CLC                       
CODE_12F916:        69 10         ADC #$10                  
CODE_12F918:        A8            TAY                       
CODE_12F919:        C9 F0         CMP #$F0                  
CODE_12F91B:        90 0A         BCC CODE_12F927           
CODE_12F91D:        A6 E9         LDX $E9                   
CODE_12F91F:        E8            INX                       
CODE_12F920:        20 B0 F8      JSR CODE_12F8B0           
CODE_12F923:        98            TYA                       
CODE_12F924:        29 0F         AND #$0F                  
CODE_12F926:        A8            TAY                       
CODE_12F927:        60            RTS
                       
CODE_12F928:        A4 04         LDY $04                   
CODE_12F92A:        C8            INY                       
CODE_12F92B:        B1 D9         LDA ($D9),y               
CODE_12F92D:        85 07         STA $07                   
CODE_12F92F:        C8            INY                       
CODE_12F930:        B1 D9         LDA ($D9),y               
CODE_12F932:        85 08         STA $08                   
CODE_12F934:        84 04         STY $04                   
CODE_12F936:        A5 E9         LDA $E9                   
CODE_12F938:        0A            ASL A                     
CODE_12F939:        A8            TAY                       
CODE_12F93A:        A5 07         LDA $07                   
CODE_12F93C:        99 1F 05      STA $051F,y               
CODE_12F93F:        C8            INY                       
CODE_12F940:        A5 08         LDA $08                   
CODE_12F942:        99 1F 05      STA $051F,y               
CODE_12F945:        60            RTS
                       
CODE_12F946:        4A            LSR A                     
CODE_12F947:        B0 0B         BCS CODE_12F954                   
CODE_12F949:        A9 01         LDA #$01                  
CODE_12F94B:        85 C9         STA $C9                   
CODE_12F94D:        0A            ASL A                     
CODE_12F94E:        85 C8         STA $C8                   
CODE_12F950:        A9 00         LDA #$00                  
CODE_12F952:        80 07         BRA CODE_12F95B           

CODE_12F954:        64 C9         STZ $C9                   
CODE_12F956:        64 C8         STZ $C8                   
CODE_12F958:        B9 3C 9B      LDA.w DATA_119B3C,y               
CODE_12F95B:        8D 07 05      STA $0507                 
CODE_12F95E:        60            RTS
                       
CODE_12F95F:        8A            TXA                       
CODE_12F960:        48            PHA                       
CODE_12F961:        29 F0         AND #$F0                  
CODE_12F963:        85 33         STA $33                   
CODE_12F965:        8A            TXA                       
CODE_12F966:        0A            ASL A                     
CODE_12F967:        0A            ASL A                     
CODE_12F968:        0A            ASL A                     
CODE_12F969:        0A            ASL A                     
CODE_12F96A:        85 29         STA $29                   
CODE_12F96C:        A9 0A         LDA #$0A                  
CODE_12F96E:        85 15         STA $15                   
CODE_12F970:        A2 00         LDX #$00                  
CODE_12F972:        86 12         STX $12                   
CODE_12F974:        86 1F         STX $1F                   
CODE_12F976:        A9 3F         LDA #$3F                  
CODE_12F978:        85 90         STA $90                   
CODE_12F97A:        A9 01         LDA #$01                  
CODE_12F97C:        85 51         STA $51                   
CODE_12F97E:        84 79         STY $79                   
CODE_12F980:        A9 00         LDA #$00                  
CODE_12F982:        95 86         STA $86,x                 
CODE_12F984:        95 B1         STA $B1,x                 
CODE_12F986:        95 A8         STA $A8,x                 
CODE_12F988:        95 9F         STA $9F,x                 
CODE_12F98A:        9D 4A 04      STA $044A,x               
CODE_12F98D:        95 5B         STA $5B,x                 
CODE_12F98F:        9D 38 04      STA $0438,x               
CODE_12F992:        9D 53 04      STA $0453,x               
CODE_12F995:        9D 5C 04      STA $045C,x               
CODE_12F998:        95 47         STA $47,x                 
CODE_12F99A:        95 3D         STA $3D,x                 
CODE_12F99C:        B4 90         LDY $90,x                 
CODE_12F99E:        B9 45 CC      LDA.w DATA_11CC45,y               
CODE_12F9A1:        29 7F         AND #$7F                  
CODE_12F9A3:        95 65         STA $65,x                 
CODE_12F9A5:        B9 8C CC      LDA.w DATA_11CC8C,y               
CODE_12F9A8:        9D 6E 04      STA $046E,x               
CODE_12F9AB:        B9 1A CD      LDA.w DATA_11CD1A,y               
CODE_12F9AE:        9D 89 04      STA $0489,x               
CODE_12F9B1:        B9 D3 CC      LDA.w DATA_11CCD3,y               
CODE_12F9B4:        9D 92 04      STA $0492,x               
CODE_12F9B7:        A9 FF         LDA #$FF                  
CODE_12F9B9:        9D 41 04      STA $0441,x               
CODE_12F9BC:        68            PLA                       
CODE_12F9BD:        AA            TAX                       
CODE_12F9BE:        60            RTS
                       
CODE_12F9BF:        AD 35 06      LDA $0635                 ; \ Get world number * 3 into X index.
CODE_12F9C2:        29 0F         AND #$0F                  ;  |
CODE_12F9C4:        8D 35 06      STA $0635                 ;  |
CODE_12F9C7:        0A            ASL A                     ;  |
CODE_12F9C8:        18            CLC                       ;  |
CODE_12F9C9:        6D 35 06      ADC $0635                 ;  |
CODE_12F9CC:        AA            TAX                       ;  |
CODE_12F9CD:        BF 00 EF 15   LDA.l PNTR_15EF00,x      ;  | [$02] = Pointer to the miniature level during the 'World x-x' screen.
CODE_12F9D1:        85 02         STA $02                   ;  |
CODE_12F9D3:        BF 01 EF 15   LDA.l PNTR_15EF00+1,x    ;  |   
CODE_12F9D7:        85 03         STA $03                   ;  |
CODE_12F9D9:        BF 02 EF 15   LDA.l PNTR_15EF00+2,x    ;  |   
CODE_12F9DD:        85 04         STA $04                   ; /
CODE_12F9DF:        A9 80         LDA #$80                  ; \ Increase VRAM destination by 1 if written to $2119.
CODE_12F9E1:        8D 15 21      STA $2115                 ; /
CODE_12F9E4:        C2 30         REP #$30                  ; Accumulator and Index = 16-bit
CODE_12F9E6:        A9 66 05      LDA #$0566                ; \ Image on Layer 1 tilemap.
CODE_12F9E9:        85 00         STA $00                   ; /
CODE_12F9EB:        A0 00 00      LDY #$0000                ; Start with first byte of image table.
CODE_12F9EE:        A2 26 00      LDX #$0026                ; Amount of bytes to write per line = #$28.
CODE_12F9F1:        A5 00         LDA $00                   ; \ $00 into VRAM destination address.
CODE_12F9F3:        8D 16 21      STA $2116                 ; /
CODE_12F9F6:        B7 02         LDA [$02],y               ; \ Transfer image over to VRAM.
CODE_12F9F8:        8D 18 21      STA $2118                 ;  |
CODE_12F9FB:        C8            INY                       ;  |
CODE_12F9FC:        C8            INY                       ;  |
CODE_12F9FD:        CA            DEX                       ;  |
CODE_12F9FE:        CA            DEX                       ;  |
CODE_12F9FF:        10 F5         BPL CODE_12F9F6           ; / If line not completed, loop.
CODE_12FA01:        A5 00         LDA $00                   ; \ Go to next line.
CODE_12FA03:        69 20 00      ADC #$0020                ;  |
CODE_12FA06:        85 00         STA $00                   ;  |
CODE_12FA08:        C9 A6 06      CMP #$06A6                ;  | If result does not go beyond the miniature level's position in the tile map...
CODE_12FA0B:        D0 E1         BNE CODE_12F9EE           ; / Loop and transfer next line.
CODE_12FA0D:        E2 30         SEP #$30                  ; Accumulator and Index = 8-bit.
CODE_12FA0F:        6B            RTL                       ; Return.
                       
CODE_12FA10:        A5 8F         LDA $8F                   
CODE_12FA12:        0A            ASL A                     
CODE_12FA13:        0A            ASL A                     
CODE_12FA14:        0A            ASL A                     
CODE_12FA15:        0A            ASL A                     
CODE_12FA16:        0A            ASL A                     
CODE_12FA17:        C2 30         REP #$30                  
CODE_12FA19:        29 FF 00      AND #$00FF                
CODE_12FA1C:        A8            TAY                       
CODE_12FA1D:        A2 00 00      LDX #$0000                
CODE_12FA20:        DA            PHX                       
CODE_12FA21:        BB            TYX                       
CODE_12FA22:        BF 9C BA 11   LDA.l DATA_11BA9C,x             
CODE_12FA26:        FA            PLX                       
CODE_12FA27:        9D D0 12      STA $12D0,x               
CODE_12FA2A:        C8            INY                       
CODE_12FA2B:        C8            INY                       
CODE_12FA2C:        E8            INX                       
CODE_12FA2D:        E8            INX                       
CODE_12FA2E:        E0 20 00      CPX #$0020                
CODE_12FA31:        90 ED         BCC CODE_12FA20           
CODE_12FA33:        E2 30         SEP #$30                  
CODE_12FA35:        A6 8F         LDX $8F                   
CODE_12FA37:        BF 3C BA 11   LDA.l DATA_11BA3C,x             
CODE_12FA3B:        A8            TAY                       
CODE_12FA3C:        A2 00         LDX #$00                  
CODE_12FA3E:        DA            PHX                       
CODE_12FA3F:        BB            TYX                       
CODE_12FA40:        BF 40 BA 11   LDA.l DATA_11BA40,x             
CODE_12FA44:        FA            PLX                       
CODE_12FA45:        9D 48 05      STA $0548,x               
CODE_12FA48:        C8            INY                       
CODE_12FA49:        E8            INX                       
CODE_12FA4A:        E0 17         CPX #$17                  
CODE_12FA4C:        90 F0         BCC CODE_12FA3E           
CODE_12FA4E:        0B            PHD                       
CODE_12FA4F:        C2 20         REP #$20                  
CODE_12FA51:        A2 2F         LDX #$2F                  
CODE_12FA53:        BF B6 BC 11   LDA.l DATA_11BCB6,x             
CODE_12FA57:        9D 80 06      STA $0680,x               
CODE_12FA5A:        CA            DEX                       
CODE_12FA5B:        CA            DEX                       
CODE_12FA5C:        10 F5         BPL CODE_12FA53           
CODE_12FA5E:        A9 00 11      LDA #$1100                
CODE_12FA61:        5B            TCD                       
CODE_12FA62:        A2 9C         LDX #$9C                  
CODE_12FA64:        BF E6 BC 11   LDA.l DATA_11BCE6,x             
CODE_12FA68:        95 68         STA $68,x                 
CODE_12FA6A:        CA            DEX                       
CODE_12FA6B:        CA            DEX                       
CODE_12FA6C:        E0 FE         CPX #$FE                  
CODE_12FA6E:        D0 F4         BNE CODE_12FA64           
CODE_12FA70:        E2 20         SEP #$20                  
CODE_12FA72:        A2 17         LDX #$17                  
CODE_12FA74:        BF 9C BB 11   LDA.l DATA_11BB9C,x             
CODE_12FA78:        95 50         STA $50,x                 
CODE_12FA7A:        CA            DEX                       
CODE_12FA7B:        10 F7         BPL CODE_12FA74           
CODE_12FA7D:        A2 4F         LDX #$4F                  
CODE_12FA7F:        BF 9E CB 11   LDA.l DATA_11CB9E,x             
CODE_12FA83:        95 00         STA $00,x                 
CODE_12FA85:        CA            DEX                       
CODE_12FA86:        10 F7         BPL CODE_12FA7F           
CODE_12FA88:        A9 12         LDA #$12                  
CODE_12FA8A:        EB            XBA                       
CODE_12FA8B:        A9 00         LDA #$00                  
CODE_12FA8D:        5B            TCD                       
CODE_12FA8E:        A2 03         LDX #$03                  
CODE_12FA90:        BF B4 BB 11   LDA.l DATA_11BBB4,x             
CODE_12FA94:        95 06         STA $06,x                 
CODE_12FA96:        CA            DEX                       
CODE_12FA97:        10 F7         BPL CODE_12FA90           
CODE_12FA99:        A2 49         LDX #$49                  
CODE_12FA9B:        BF 61 CD 11   LDA.l DATA_11CD61,x             
CODE_12FA9F:        95 0B         STA $0B,x                 
CODE_12FAA1:        CA            DEX                       
CODE_12FAA2:        10 F7         BPL CODE_12FA9B           
CODE_12FAA4:        C2 20         REP #$20                  
CODE_12FAA6:        A2 0C         LDX #$0C                  
CODE_12FAA8:        BF B8 BB 11   LDA.l DATA_11BBB8,x             
CODE_12FAAC:        95 68         STA $68,x                 
CODE_12FAAE:        CA            DEX                       
CODE_12FAAF:        10 F7         BPL CODE_12FAA8           
CODE_12FAB1:        E2 20         SEP #$20                  
CODE_12FAB3:        2B            PLD                       
CODE_12FAB4:        A2 6C         LDX #$6C                  
CODE_12FAB6:        BF D3 CD 11   LDA.l DATA_11CDD3,x             
CODE_12FABA:        9D 4E 14      STA $144E,x               
CODE_12FABD:        CA            DEX                       
CODE_12FABE:        10 F6         BPL CODE_12FAB6           
CODE_12FAC0:        6B            RTL
       
DATA_12FAC1:        db $03,$04,$05,$0D,$0F,$0F,$0F,$01

DATA_12FAC9:        db $01,$03,$03,$04,$03,$05,$06,$03
                      
CODE_12FAD1:        20 63 F2      JSR CODE_12F263           
CODE_12FAD4:        AE 33 05      LDX $0533                 ; \ Get index to object data...
CODE_12FAD7:        BF 98 D0 11   LDA.l DATA_11D098,x         ;  | Per room, per level.
CODE_12FADB:        18            CLC                       ;  |
CODE_12FADC:        6D 34 05      ADC $0534                 ;  |
CODE_12FADF:        AA            TAX                       ;  |
CODE_12FAE0:        BD AD D0      LDA.w DATA_11D0AD,x         ;  | Forms pointer ($D9).  
CODE_12FAE3:        85 D9         STA $D9                   ;  |
CODE_12FAE5:        BD 7F D1      LDA.w DATA_11D17F,x         ;  |  
CODE_12FAE8:        85 DA         STA $DA                   ; /
CODE_12FAEA:        A0 00         LDY #$00                  
CODE_12FAEC:        B1 D9         LDA ($D9),y               
CODE_12FAEE:        0A            ASL A                     
CODE_12FAEF:        A9 00         LDA #$00                  
CODE_12FAF1:        2A            ROL A                     
CODE_12FAF2:        85 EB         STA $EB                   
CODE_12FAF4:        A0 02         LDY #$02                  
CODE_12FAF6:        B1 D9         LDA ($D9),y               
CODE_12FAF8:        4A            LSR A                     
CODE_12FAF9:        4A            LSR A                     
CODE_12FAFA:        4A            LSR A                     
CODE_12FAFB:        4A            LSR A                     
CODE_12FAFC:        8D 41 05      STA $0541                 
CODE_12FAFF:        B1 D9         LDA ($D9),y               
CODE_12FB01:        29 03         AND #$03                  
CODE_12FB03:        8D 44 05      STA $0544                 
CODE_12FB06:        B1 D9         LDA ($D9),y               
CODE_12FB08:        4A            LSR A                     
CODE_12FB09:        4A            LSR A                     
CODE_12FB0A:        29 03         AND #$03                  
CODE_12FB0C:        8D 45 05      STA $0545                 
CODE_12FB0F:        A2 08         LDX #$08                  
CODE_12FB11:        AD 33 05      LDA $0533                 
CODE_12FB14:        CA            DEX                       
CODE_12FB15:        30 60         BMI CODE_12FB77           
CODE_12FB17:        DF C1 FA 12   CMP.l DATA_12FAC1,x             
CODE_12FB1B:        D0 F4         BNE CODE_12FB11           
CODE_12FB1D:        AD 34 05      LDA $0534                 
CODE_12FB20:        DF C9 FA 12   CMP.l DATA_12FAC9,x             
CODE_12FB24:        D0 EB         BNE CODE_12FB11           
CODE_12FB26:        A0 03         LDY #$03                  
CODE_12FB28:        B1 D9         LDA ($D9),y               
CODE_12FB2A:        4A            LSR A                     
CODE_12FB2B:        29 1C         AND #$1C                  
CODE_12FB2D:        8D 60 05      STA $0560                 
CODE_12FB30:        88            DEY                       
CODE_12FB31:        88            DEY                       
CODE_12FB32:        B1 D9         LDA ($D9),y               
CODE_12FB34:        29 1F         AND #$1F                  
CODE_12FB36:        C9 1F         CMP #$1F                  
CODE_12FB38:        F0 3D         BEQ CODE_12FB77           
CODE_12FB3A:        8D 43 05      STA $0543                 
CODE_12FB3D:        64 E9         STZ $E9                   
CODE_12FB3F:        64 E5         STZ $E5                   
CODE_12FB41:        64 E6         STZ $E6                   
CODE_12FB43:        C8            INY                       
CODE_12FB44:        C8            INY                       
CODE_12FB45:        C8            INY                       
CODE_12FB46:        A5 EB         LDA $EB                   
CODE_12FB48:        D0 2A         BNE CODE_12FB74           
CODE_12FB4A:        AE 33 05      LDX $0533                 
CODE_12FB4D:        BF 98 D0 11   LDA.l DATA_11D098,x             
CODE_12FB51:        18            CLC                       
CODE_12FB52:        6D 34 05      ADC $0534                 
CODE_12FB55:        AA            TAX                       
CODE_12FB56:        BF 00 A4 15   LDA.l DATA_15A400,x             
CODE_12FB5A:        F0 18         BEQ CODE_12FB74           
CODE_12FB5C:        C9 01         CMP #$01                  
CODE_12FB5E:        D0 06         BNE CODE_12FB66           
CODE_12FB60:        22 00 94 15   JSL CODE_159400           
CODE_12FB64:        80 11         BRA CODE_12FB77          
 
CODE_12FB66:        3A            DEC A                     
CODE_12FB67:        3A            DEC A                     
CODE_12FB68:        8D 6B 07      STA $076B                 
CODE_12FB6B:        20 94 FF      JSR CODE_12FF94           
CODE_12FB6E:        22 05 9B 15   JSL CODE_159B05           
CODE_12FB72:        80 03         BRA CODE_12FB77          
 
CODE_12FB74:        20 1C F7      JSR CODE_12F71C           
CODE_12FB77:        20 41 FC      JSR CODE_12FC41           
CODE_12FB7A:        20 A1 FC      JSR CODE_12FCA1           
CODE_12FB7D:        64 E9         STZ $E9                   
CODE_12FB7F:        64 E6         STZ $E6                   
CODE_12FB81:        64 E5         STZ $E5                   
CODE_12FB83:        64 04         STZ $04                   
CODE_12FB85:        20 A4 FB      JSR CODE_12FBA4           
CODE_12FB88:        6B            RTL
                       
DATA_12FB89:        db $09,$0A,$0B,$13,$14,$1C,$1D,$05
                    db $03,$2B,$2D,$21,$26,$27,$22,$25
                    db $2A,$23,$24,$28,$50,$00,$01,$29
                    db $04,$02,$12

CODE_12FBA4:        A0 03         LDY #$03
CODE_12FBA6:        84 04         STY $04
CODE_12FBA8:        A4 04         LDY $04
CODE_12FBAA:        C8            INY                  
CODE_12FBAB:        B1 D9         LDA ($D9),y               
CODE_12FBAD:        C9 FF         CMP #$FF                  
CODE_12FBAF:        D0 01         BNE CODE_12FBB2           
CODE_12FBB1:        60            RTS
                       
CODE_12FBB2:        B1 D9         LDA ($D9),y               
CODE_12FBB4:        29 0F         AND #$0F                  
CODE_12FBB6:        85 E5         STA $E5                   
CODE_12FBB8:        B1 D9         LDA ($D9),y               
CODE_12FBBA:        29 F0         AND #$F0                  
CODE_12FBBC:        C9 F0         CMP #$F0                  
CODE_12FBBE:        D0 0B         BNE CODE_12FBCB           
CODE_12FBC0:        A5 E5         LDA $E5                   
CODE_12FBC2:        84 0F         STY $0F                   
CODE_12FBC4:        20 8C F6      JSR CODE_12F68C           
CODE_12FBC7:        A4 0F         LDY $0F                   
CODE_12FBC9:        80 DF         BRA CODE_12FBAA          
 
CODE_12FBCB:        20 78 F6      JSR CODE_12F678           
CODE_12FBCE:        C8            INY                       
CODE_12FBCF:        84 04         STY $04                   
CODE_12FBD1:        A2 1A         LDX #$1A                  
CODE_12FBD3:        B1 D9         LDA ($D9),y               
CODE_12FBD5:        DF 89 FB 12   CMP.l DATA_12FB89,x             
CODE_12FBD9:        F0 1B         BEQ CODE_12FBF6           
CODE_12FBDB:        CA            DEX                       
CODE_12FBDC:        10 F7         BPL CODE_12FBD5           
CODE_12FBDE:        29 F0         AND #$F0                  
CODE_12FBE0:        C9 50         CMP #$50                  
CODE_12FBE2:        F0 12         BEQ CODE_12FBF6           
CODE_12FBE4:        C9 80         CMP #$80                  
CODE_12FBE6:        F0 0E         BEQ CODE_12FBF6           
CODE_12FBE8:        C9 30         CMP #$30                  
CODE_12FBEA:        F0 0A         BEQ CODE_12FBF6           
CODE_12FBEC:        C9 40         CMP #$40                  
CODE_12FBEE:        F0 06         BEQ CODE_12FBF6           
CODE_12FBF0:        C9 A0         CMP #$A0                  
CODE_12FBF2:        F0 02         BEQ CODE_12FBF6           
CODE_12FBF4:        80 B2         BRA CODE_12FBA8  
         
CODE_12FBF6:        84 04         STY $04                   
CODE_12FBF8:        20 A3 F8      JSR CODE_12F8A3           
CODE_12FBFB:        B1 D9         LDA ($D9),y               
CODE_12FBFD:        4A            LSR A                     
CODE_12FBFE:        4A            LSR A                     
CODE_12FBFF:        4A            LSR A                     
CODE_12FC00:        4A            LSR A                     
CODE_12FC01:        8D 0F 05      STA $050F                 
CODE_12FC04:        C9 03         CMP #$03                  
CODE_12FC06:        B0 1A         BCS CODE_12FC22                   
CODE_12FC08:        48            PHA                       
CODE_12FC09:        B1 D9         LDA ($D9),y               
CODE_12FC0B:        29 0F         AND #$0F                  
CODE_12FC0D:        8D 0F 05      STA $050F                 
CODE_12FC10:        68            PLA                       
CODE_12FC11:        F0 25         BEQ CODE_12FC38           
CODE_12FC13:        C9 01         CMP #$01                  
CODE_12FC15:        D0 05         BNE CODE_12FC1C           
CODE_12FC17:        20 A4 E4      JSR CODE_12E4A4           
CODE_12FC1A:        80 8C         BRA CODE_12FBA8           

CODE_12FC1C:        20 A8 EB      JSR CODE_12EBA8           
CODE_12FC1F:        82 86 FF      BRL CODE_12FBA8           

CODE_12FC22:        B1 D9         LDA ($D9),y               
CODE_12FC24:        29 0F         AND #$0F                  
CODE_12FC26:        8D 0E 05      STA $050E                 
CODE_12FC29:        AD 0F 05      LDA $050F                 
CODE_12FC2C:        38            SEC                       
CODE_12FC2D:        E9 03         SBC #$03                  
CODE_12FC2F:        8D 0F 05      STA $050F                 
CODE_12FC32:        20 60 E4      JSR CODE_12E460           
CODE_12FC35:        82 70 FF      BRL CODE_12FBA8           

CODE_12FC38:        AD 0F 05      LDA $050F                 
CODE_12FC3B:        20 7F E4      JSR CODE_12E47F           
CODE_12FC3E:        82 67 FF      BRL CODE_12FBA8           

CODE_12FC41:        AD 76 07      LDA $0776                 
CODE_12FC44:        D0 5A         BNE CODE_12FCA0           
CODE_12FC46:        A2 00         LDX #$00                  
CODE_12FC48:        20 B0 F8      JSR CODE_12F8B0           
CODE_12FC4B:        AC 41 05      LDY $0541                 
CODE_12FC4E:        C2 30         REP #$30                  
CODE_12FC50:        A9 F0 00      LDA #$00F0                
CODE_12FC53:        88            DEY                       
CODE_12FC54:        30 06         BMI CODE_12FC5C           
CODE_12FC56:        18            CLC                       
CODE_12FC57:        69 F0 00      ADC #$00F0                
CODE_12FC5A:        80 F7         BRA CODE_12FC53      
     
CODE_12FC5C:        3A            DEC A                     
CODE_12FC5D:        8D C9 02      STA $02C9                 
CODE_12FC60:        A8            TAY                       
CODE_12FC61:        E2 20         SEP #$20                  
CODE_12FC63:        B7 01         LDA [$01],y               
CODE_12FC65:        C9 64         CMP #$64                  
CODE_12FC67:        D0 32         BNE CODE_12FC9B           
CODE_12FC69:        A5 01         LDA $01                   
CODE_12FC6B:        8D 13 07      STA $0713                 
CODE_12FC6E:        A5 02         LDA $02                   
CODE_12FC70:        8D 14 07      STA $0714                 
CODE_12FC73:        C2 20         REP #$20                  
CODE_12FC75:        A5 01         LDA $01                   
CODE_12FC77:        18            CLC                       
CODE_12FC78:        69 00 70      ADC #$7000                
CODE_12FC7B:        85 01         STA $01                   
CODE_12FC7D:        E2 20         SEP #$20                  
CODE_12FC7F:        B7 01         LDA [$01],y               
CODE_12FC81:        D0 0E         BNE CODE_12FC91           
CODE_12FC83:        AD 13 07      LDA $0713                 
CODE_12FC86:        85 01         STA $01                   
CODE_12FC88:        AD 14 07      LDA $0714                 
CODE_12FC8B:        85 02         STA $02                   
CODE_12FC8D:        A9 40         LDA #$40                  
CODE_12FC8F:        97 01         STA [$01],y               
CODE_12FC91:        AD 13 07      LDA $0713                 
CODE_12FC94:        85 01         STA $01                   
CODE_12FC96:        AD 14 07      LDA $0714                 
CODE_12FC99:        85 02         STA $02                   
CODE_12FC9B:        88            DEY                       
CODE_12FC9C:        10 C5         BPL CODE_12FC63           
CODE_12FC9E:        E2 10         SEP #$10                  
CODE_12FCA0:        60            RTS
                       
CODE_12FCA1:        A2 06         LDX #$06                  
CODE_12FCA3:        AD 33 05      LDA $0533                 
CODE_12FCA6:        DF 44 CF 11   CMP.l DATA_11CF44,x             
CODE_12FCAA:        F0 05         BEQ CODE_12FCB1           
CODE_12FCAC:        CA            DEX                       
CODE_12FCAD:        10 F7         BPL CODE_12FCA6           
CODE_12FCAF:        80 39         BRA CODE_12FCEA      
     
CODE_12FCB1:        AD 34 05      LDA $0534                 
CODE_12FCB4:        DF 4B CF 11   CMP.l DATA_11CF4B,x             
CODE_12FCB8:        D0 30         BNE CODE_12FCEA           
CODE_12FCBA:        A2 00         LDX #$00                  
CODE_12FCBC:        20 B0 F8      JSR CODE_12F8B0           
CODE_12FCBF:        C2 10         REP #$10                  
CODE_12FCC1:        AC C9 02      LDY $02C9                 
CODE_12FCC4:        B7 01         LDA [$01],y               
CODE_12FCC6:        C9 56         CMP #$56                  
CODE_12FCC8:        D0 04         BNE CODE_12FCCE           
CODE_12FCCA:        A9 40         LDA #$40                  
CODE_12FCCC:        97 01         STA [$01],y               
CODE_12FCCE:        88            DEY                       
CODE_12FCCF:        10 F3         BPL CODE_12FCC4           
CODE_12FCD1:        E2 10         SEP #$10                  
CODE_12FCD3:        AD 35 06      LDA $0635                 
CODE_12FCD6:        C9 06         CMP #$06                  
CODE_12FCD8:        D0 10         BNE CODE_12FCEA           
CODE_12FCDA:        A2 59         LDX #$59                  
CODE_12FCDC:        86 02         STX $02                   
CODE_12FCDE:        A2 98         LDX #$98                  
CODE_12FCE0:        86 01         STX $01                   
CODE_12FCE2:        A9 B9         LDA #$B9                  
CODE_12FCE4:        87 01         STA [$01]                 
CODE_12FCE6:        A0 10         LDY #$10                  
CODE_12FCE8:        97 01         STA [$01],y               
CODE_12FCEA:        60            RTS
                       
DATA_12FCEB:        db $03,$0D,$0D,$0D,$11,$11             ; 2-1, 5-2, 5-2, 5-2, 6-3, 6-3.

DATA_12FCF1:        db $00,$02,$03,$04,$03,$04             ; First room, third room, fourth room, fifth room, fourth room, fifth room.
                
CODE_12FCF7:        20 EB F5      JSR CODE_12F5EB
CODE_12FCFA:        A0 00         LDY #$00                    
CODE_12FCFC:        B7 05         LDA [$05],y                 
CODE_12FCFE:        29 01         AND #$01                  
CODE_12FD00:        8D C3 02      STA $02C3                 
CODE_12FD03:        B7 05         LDA [$05],y               
CODE_12FD05:        29 02         AND #$02                  
CODE_12FD07:        8D C4 02      STA $02C4                 
CODE_12FD0A:        B7 05         LDA [$05],y               ; \ Check if bit 2 from first byte is set...
CODE_12FD0C:        29 04         AND #$04                  ;  |
CODE_12FD0E:        F0 05         BEQ CODE_12FD15           ;  |
CODE_12FD10:        A9 4F         LDA #$4F                  ;  | If so, put up IRQ and the starry BG.
CODE_12FD12:        8D 4B 02      STA $024B                 ; /
CODE_12FD15:        B7 05         LDA [$05],y               ; \ Get bit 4...
CODE_12FD17:        29 10         AND #$10                  ;  | Divide by 16...
CODE_12FD19:        4A            LSR A                     ;  |
CODE_12FD1A:        4A            LSR A                     ;  |
CODE_12FD1B:        4A            LSR A                     ;  |
CODE_12FD1C:        4A            LSR A                     ;  |
CODE_12FD1D:        8D 72 07      STA $0772                 ; / And store result into Layer 3 transparency flag.
CODE_12FD20:        B7 05         LDA [$05],y               ; \ Enable Layer 3 background if applicable.
CODE_12FD22:        2A            ROL A                     ;  |
CODE_12FD23:        2A            ROL A                     ;  |
CODE_12FD24:        2A            ROL A                     ;  |
CODE_12FD25:        29 03         AND #$03                  ;  |
CODE_12FD27:        8D 4E 07      STA $074E                 ; /
CODE_12FD2A:        B7 05         LDA [$05],y               
CODE_12FD2C:        29 08         AND #$08                  
CODE_12FD2E:        8D 7C 07      STA $077C                 
CODE_12FD31:        B7 05         LDA [$05],y               
CODE_12FD33:        29 20         AND #$20                  
CODE_12FD35:        8D 7F 07      STA $077F                 
CODE_12FD38:        64 E9         STZ $E9                   
CODE_12FD3A:        64 E6         STZ $E6                   
CODE_12FD3C:        64 04         STZ $04                   
CODE_12FD3E:        9C 84 07      STZ $0784                 
CODE_12FD41:        AD 33 05      LDA $0533                 ; \ If not in 4-2...
CODE_12FD44:        C9 0A         CMP #$0A                  ;  |
CODE_12FD46:        D0 0B         BNE CODE_12FD53           ;  | Branch.
CODE_12FD48:        AD 34 05      LDA $0534                 ;  | If in first room of 4-2...
CODE_12FD4B:        F0 13         BEQ CODE_12FD60           ;  | Branch.
CODE_12FD4D:        C9 04         CMP #$04                  ;  | If in fifth room of 4-2...
CODE_12FD4F:        F0 0F         BEQ CODE_12FD60           ;  | Branch.
CODE_12FD51:        80 10         BRA CODE_12FD63           ; / Otherwise, branch further.
        
CODE_12FD53:        C9 0B         CMP #$0B                  ; \ Check if in 4-3...
CODE_12FD55:        D0 0C         BNE CODE_12FD63           ;  | If not, branch.
CODE_12FD57:        AD 34 05      LDA $0534                 ;  | Check if in first room..
CODE_12FD5A:        F0 04         BEQ CODE_12FD60           ;  | If so, branch.
CODE_12FD5C:        C9 06         CMP #$06                  ;  | If in second-sixth room...
CODE_12FD5E:        90 03         BCC CODE_12FD63           ; / Branch further.
CODE_12FD60:        EE 84 07      INC $0784                 
CODE_12FD63:        9C 87 07      STZ $0787                 
CODE_12FD66:        AD 33 05      LDA $0533                 ; \ Check if in 3-1.
CODE_12FD69:        C9 06         CMP #$06                  ;  |
CODE_12FD6B:        D0 0A         BNE CODE_12FD77           ;  | If not, branch.
CODE_12FD6D:        AD 34 05      LDA $0534                 ;  | Check if in second room.
CODE_12FD70:        C9 01         CMP #$01                  ;  |
CODE_12FD72:        D0 03         BNE CODE_12FD77           ; / If not, branch.
CODE_12FD74:        EE 87 07      INC $0787                 
CODE_12FD77:        9C 91 07      STZ $0791                 
CODE_12FD7A:        A2 05         LDX #$05                  
CODE_12FD7C:        AD 33 05      LDA $0533                 
CODE_12FD7F:        DF EB FC 12   CMP.l DATA_12FCEB,x             
CODE_12FD83:        D0 0D         BNE CODE_12FD92           
CODE_12FD85:        AD 34 05      LDA $0534                 
CODE_12FD88:        DF F1 FC 12   CMP.l DATA_12FCF1,x             
CODE_12FD8C:        D0 04         BNE CODE_12FD92           
CODE_12FD8E:        EE 91 07      INC $0791                 
CODE_12FD91:        6B            RTL
                       
CODE_12FD92:        CA            DEX                       
CODE_12FD93:        10 E7         BPL CODE_12FD7C           
CODE_12FD95:        6B            RTL
                       
CODE_12FD96:        20 9A F2      JSR CODE_12F29A           ; Clear Layer 2 Map16 tables.
CODE_12FD99:        AD 34 05      LDA $0534                 
CODE_12FD9C:        48            PHA                       
CODE_12FD9D:        AE 33 05      LDX $0533                 
CODE_12FDA0:        BF 30 CF 11   LDA.l DATA_11CF30,x             
CODE_12FDA4:        8D 34 05      STA $0534                 
CODE_12FDA7:        AE 33 05      LDX $0533                 
CODE_12FDAA:        BF 00 9E 13   LDA.l DATA_139E00,x             
CODE_12FDAE:        18            CLC                       
CODE_12FDAF:        6D 34 05      ADC $0534                 
CODE_12FDB2:        AA            TAX                       
CODE_12FDB3:        BF 16 9E 13   LDA.l DATA_139E16,x             
CODE_12FDB7:        85 05         STA $05                   
CODE_12FDB9:        BF E8 9E 13   LDA.l DATA_139EE8,x             
CODE_12FDBD:        85 06         STA $06                   
CODE_12FDBF:        AF 15 9E 13   LDA.l DATA_139E15               
CODE_12FDC3:        85 07         STA $07                   
CODE_12FDC5:        64 E9         STZ $E9                   
CODE_12FDC7:        64 E6         STZ $E6                   
CODE_12FDC9:        64 E5         STZ $E5                   
CODE_12FDCB:        64 04         STZ $04                   
CODE_12FDCD:        22 29 97 13   JSL CODE_139729           
CODE_12FDD1:        CE 34 05      DEC $0534                 
CODE_12FDD4:        10 D1         BPL CODE_12FDA7           
CODE_12FDD6:        68            PLA                       
CODE_12FDD7:        8D 34 05      STA $0534                 
CODE_12FDDA:        6B            RTL                       

CODE_12FDDB:        A5 0D         LDA $0D                   
CODE_12FDDD:        30 04         BMI CODE_12FDE3           
CODE_12FDDF:        C9 10         CMP #$10                  
CODE_12FDE1:        30 4C         BMI CODE_12FE2F           
CODE_12FDE3:        C2 20         REP #$20                  
CODE_12FDE5:        A5 01         LDA $01                   
CODE_12FDE7:        8D C9 02      STA $02C9                 
CODE_12FDEA:        E2 20         SEP #$20                  
CODE_12FDEC:        A5 0D         LDA $0D                   
CODE_12FDEE:        29 0F         AND #$0F                  
CODE_12FDF0:        D0 0C         BNE CODE_12FDFE           
CODE_12FDF2:        C2 20         REP #$20                  
CODE_12FDF4:        A5 01         LDA $01                   
CODE_12FDF6:        38            SEC                       
CODE_12FDF7:        E9 E0 00      SBC #$00E0                
CODE_12FDFA:        85 01         STA $01                   
CODE_12FDFC:        E2 20         SEP #$20                  
CODE_12FDFE:        A5 0D         LDA $0D                   
CODE_12FE00:        38            SEC                       
CODE_12FE01:        E9 11         SBC #$11                  
CODE_12FE03:        A8            TAY                       
CODE_12FE04:        B7 01         LDA [$01],y               
CODE_12FE06:        C9 A7         CMP #$A7                  
CODE_12FE08:        F0 04         BEQ CODE_12FE0E           
CODE_12FE0A:        C9 40         CMP #$40                  
CODE_12FE0C:        D0 18         BNE CODE_12FE26           
CODE_12FE0E:        A4 0D         LDY $0D                   
CODE_12FE10:        88            DEY                       
CODE_12FE11:        A2 03         LDX #$03                  
CODE_12FE13:        B7 01         LDA [$01],y               
CODE_12FE15:        DF 35 B7 11   CMP.l DATA_11B735,x             
CODE_12FE19:        F0 05         BEQ CODE_12FE20           
CODE_12FE1B:        CA            DEX                       
CODE_12FE1C:        10 F7         BPL CODE_12FE15           
CODE_12FE1E:        80 06         BRA CODE_12FE26     
      
CODE_12FE20:        BF 31 B7 11   LDA.l DATA_11B731,x             
CODE_12FE24:        97 01         STA [$01],y               
CODE_12FE26:        C2 20         REP #$20                  
CODE_12FE28:        AD C9 02      LDA $02C9                 
CODE_12FE2B:        85 01         STA $01                   
CODE_12FE2D:        E2 20         SEP #$20                  
CODE_12FE2F:        60            RTS
                       
CODE_12FE30:        8D C5 02      STA $02C5                 
CODE_12FE33:        20 DB FD      JSR CODE_12FDDB           
CODE_12FE36:        A5 0D         LDA $0D                   
CODE_12FE38:        30 04         BMI CODE_12FE3E           
CODE_12FE3A:        C9 10         CMP #$10                  
CODE_12FE3C:        30 3E         BMI CODE_12FE7C           
CODE_12FE3E:        AD C5 02      LDA $02C5                 
CODE_12FE41:        C9 A7         CMP #$A7                  
CODE_12FE43:        F0 18         BEQ CODE_12FE5D           
CODE_12FE45:        A5 0D         LDA $0D                   
CODE_12FE47:        38            SEC                       
CODE_12FE48:        E9 10         SBC #$10                  
CODE_12FE4A:        A8            TAY                       
CODE_12FE4B:        A2 03         LDX #$03                  
CODE_12FE4D:        B7 01         LDA [$01],y               
CODE_12FE4F:        DF 3D B7 11   CMP.l DATA_11B73D,x             
CODE_12FE53:        F0 27         BEQ CODE_12FE7C           
CODE_12FE55:        CA            DEX                       
CODE_12FE56:        10 F7         BPL CODE_12FE4F           
CODE_12FE58:        CD C5 02      CMP $02C5                 
CODE_12FE5B:        F0 1F         BEQ CODE_12FE7C           
CODE_12FE5D:        A4 0D         LDY $0D                   
CODE_12FE5F:        88            DEY                       
CODE_12FE60:        B7 01         LDA [$01],y               
CODE_12FE62:        C9 40         CMP #$40                  
CODE_12FE64:        D0 16         BNE CODE_12FE7C           
CODE_12FE66:        A2 03         LDX #$03                  
CODE_12FE68:        AD C5 02      LDA $02C5                 
CODE_12FE6B:        DF 39 B7 11   CMP $11B739,x             
CODE_12FE6F:        F0 05         BEQ CODE_12FE76           
CODE_12FE71:        CA            DEX                       
CODE_12FE72:        10 F7         BPL CODE_12FE6B           
CODE_12FE74:        80 06         BRA CODE_12FE7C
           
CODE_12FE76:        BF 3D B7 11   LDA.l DATA_11B73D,x             
CODE_12FE7A:        80 03         BRA CODE_12FE7F
           
CODE_12FE7C:        AD C5 02      LDA $02C5                 
CODE_12FE7F:        60            RTS
                       
CODE_12FE80:        8D C5 02      STA $02C5                 
CODE_12FE83:        C2 20         REP #$20                  
CODE_12FE85:        A5 01         LDA $01                   
CODE_12FE87:        8D C9 02      STA $02C9                 
CODE_12FE8A:        E2 20         SEP #$20                  
CODE_12FE8C:        A5 0D         LDA $0D                   
CODE_12FE8E:        29 0F         AND #$0F                  
CODE_12FE90:        D0 0C         BNE CODE_12FE9E           
CODE_12FE92:        C2 20         REP #$20                  
CODE_12FE94:        A5 01         LDA $01                   
CODE_12FE96:        38            SEC                       
CODE_12FE97:        E9 E0 00      SBC #$00E0                
CODE_12FE9A:        85 01         STA $01                   
CODE_12FE9C:        E2 20         SEP #$20                  
CODE_12FE9E:        A2 03         LDX #$03                  
CODE_12FEA0:        A4 0D         LDY $0D                   
CODE_12FEA2:        88            DEY                       
CODE_12FEA3:        B7 01         LDA [$01],y               
CODE_12FEA5:        DF 35 B7 11   CMP.l DATA_11B735,x             
CODE_12FEA9:        F0 05         BEQ CODE_12FEB0           
CODE_12FEAB:        CA            DEX                       
CODE_12FEAC:        10 F7         BPL CODE_12FEA5           
CODE_12FEAE:        80 06         BRA CODE_12FEB6
           
CODE_12FEB0:        BF 31 B7 11   LDA.l DATA_11B731,x             
CODE_12FEB4:        97 01         STA [$01],y               
CODE_12FEB6:        C2 20         REP #$20                  
CODE_12FEB8:        AD C9 02      LDA $02C9                 
CODE_12FEBB:        85 01         STA $01                   
CODE_12FEBD:        E2 20         SEP #$20                  
CODE_12FEBF:        AD C5 02      LDA $02C5                 
CODE_12FEC2:        C9 A7         CMP #$A7                  
CODE_12FEC4:        D0 04         BNE CODE_12FECA           
CODE_12FEC6:        A9 3A         LDA #$3A                  
CODE_12FEC8:        80 25         BRA CODE_12FEEF
           
CODE_12FECA:        A5 0D         LDA $0D                   
CODE_12FECC:        38            SEC                       
CODE_12FECD:        E9 10         SBC #$10                  
CODE_12FECF:        A8            TAY                       
CODE_12FED0:        B7 01         LDA [$01],y               
CODE_12FED2:        C9 40         CMP #$40                  
CODE_12FED4:        D0 16         BNE CODE_12FEEC           
CODE_12FED6:        A2 03         LDX #$03                  
CODE_12FED8:        AD C5 02      LDA $02C5                 
CODE_12FEDB:        DF 31 B7 11   CMP $11B731,x             
CODE_12FEDF:        F0 05         BEQ CODE_12FEE6           
CODE_12FEE1:        CA            DEX                       
CODE_12FEE2:        10 F7         BPL CODE_12FEDB           
CODE_12FEE4:        80 06         BRA CODE_12FEEC
           
CODE_12FEE6:        BF 35 B7 11   LDA.l DATA_11B735,x             
CODE_12FEEA:        80 03         BRA CODE_12FEEF           

CODE_12FEEC:        AD C5 02      LDA $02C5                 
CODE_12FEEF:        60            RTS
                       
CODE_12FEF0:        8D C5 02      STA $02C5                 
CODE_12FEF3:        A0 00         LDY #$00                  
CODE_12FEF5:        A2 07         LDX #$07                  
CODE_12FEF7:        AD C5 02      LDA $02C5                 
CODE_12FEFA:        DF 12 CF 11   CMP $11CF12,x             
CODE_12FEFE:        D0 12         BNE CODE_12FF12           
CODE_12FF00:        AD 33 05      LDA $0533                 
CODE_12FF03:        DF 1A CF 11   CMP $11CF1A,x             
CODE_12FF07:        D0 09         BNE CODE_12FF12           
CODE_12FF09:        AD 34 05      LDA $0534                 
CODE_12FF0C:        DF 22 CF 11   CMP $11CF22,x             
CODE_12FF10:        F0 04         BEQ CODE_12FF16           
CODE_12FF12:        CA            DEX                       
CODE_12FF13:        10 E2         BPL CODE_12FEF7           
CODE_12FF15:        C8            INY                       
CODE_12FF16:        AD C5 02      LDA $02C5                 
CODE_12FF19:        60            RTS
                       
CODE_12FF1A:        22 44 A2 15   JSL CODE_15A244           
CODE_12FF1E:        22 B9 9E 15   JSL CODE_159EB9           
CODE_12FF22:        22 3E 99 15   JSL CODE_15993E           
CODE_12FF26:        22 F9 A1 15   JSL CODE_15A1F9           
CODE_12FF2A:        6B            RTL
                       
CODE_12FF2B:        AE 33 05      LDX $0533                 
CODE_12FF2E:        E0 0B         CPX #$0B                  
CODE_12FF30:        D0 18         BNE CODE_12FF4A           
CODE_12FF32:        AE 34 05      LDX $0534                 
CODE_12FF35:        E0 01         CPX #$01                  
CODE_12FF37:        D0 11         BNE CODE_12FF4A           
CODE_12FF39:        A2 02         LDX #$02                  
CODE_12FF3B:        DF 2A CF 11   CMP $11CF2A,x             
CODE_12FF3F:        D0 06         BNE CODE_12FF47           
CODE_12FF41:        BF 2D CF 11   LDA.l DATA_11CF2D,x             
CODE_12FF45:        80 03         BRA CODE_12FF4A           

CODE_12FF47:        CA            DEX                       
CODE_12FF48:        10 F1         BPL CODE_12FF3B           
CODE_12FF4A:        60            RTS
                       
DATA_12FF4B:        db $03,$0D

DATA_12FF4D:        db $04,$04
                
CODE_12FF4F:        A2 01         LDX #$01                  
CODE_12FF51:        AD 33 05      LDA $0533                 
CODE_12FF54:        DF 4B FF 12   CMP $12FF4B,x             
CODE_12FF58:        D0 09         BNE CODE_12FF63           
CODE_12FF5A:        AD 34 05      LDA $0534                 
CODE_12FF5D:        DF 4D FF 12   CMP $12FF4D,x             
CODE_12FF61:        F0 04         BEQ CODE_12FF67           
CODE_12FF63:        CA            DEX                       
CODE_12FF64:        10 EB         BPL CODE_12FF51           
CODE_12FF66:        60            RTS
                       
CODE_12FF67:        C2 20         REP #$20                  
CODE_12FF69:        AF 80 BF 14   LDA.l DATA_14BF80               
CODE_12FF6D:        8D BC 04      STA $04BC                 
CODE_12FF70:        A2 00         LDX #$00                  
CODE_12FF72:        BF 80 BF 14   LDA.l DATA_14BF80,x             
CODE_12FF76:        9D 00 0B      STA $0B00,x               
CODE_12FF79:        E8            INX                       
CODE_12FF7A:        E8            INX                       
CODE_12FF7B:        E0 20         CPX #$20                  
CODE_12FF7D:        D0 F3         BNE CODE_12FF72           
CODE_12FF7F:        E2 20         SEP #$20                  
CODE_12FF81:        60            RTS
                       
CODE_12FF82:        A2 0A         LDX #$0A                  
CODE_12FF84:        BD F0 AA      LDA.w DATA_11AAF0,x               
CODE_12FF87:        85 C4         STA $C4                   
CODE_12FF89:        BD FB AA      LDA.w DATA_11AAFB,x               
CODE_12FF8C:        85 C5         STA $C5                   
CODE_12FF8E:        BD 06 AB      LDA.w DATA_11AB06,x               
CODE_12FF91:        85 C6         STA $C6                   
CODE_12FF93:        60            RTS
                       
CODE_12FF94:        AE 34 05      LDX $0534                 
CODE_12FF97:        BF 11 AB 11   LDA.l DATA_11AB11,x             
CODE_12FF9B:        18            CLC                       
CODE_12FF9C:        6D FB AA      ADC.w DATA_11AAFB                 
CODE_12FF9F:        85 C5         STA $C5                   
CODE_12FFA1:        AD F0 AA      LDA.w DATA_11AAF0                 
CODE_12FFA4:        85 C4         STA $C4                   
CODE_12FFA6:        AD 06 AB      LDA.w DATA_11AB06                 
CODE_12FFA9:        85 C6         STA $C6                   
CODE_12FFAB:        60            RTS
                       
CODE_12FFAC:        8B            PHB                       
CODE_12FFAD:        A9 7E         LDA #$7E                  
CODE_12FFAF:        48            PHA                       
CODE_12FFB0:        AB            PLB                       
CODE_12FFB1:        C2 20         REP #$20                  
CODE_12FFB3:        A2 FE         LDX #$FE                  
CODE_12FFB5:        9E 60 99      STZ $9960,x               
CODE_12FFB8:        CA            DEX                       
CODE_12FFB9:        CA            DEX                       
CODE_12FFBA:        E0 FE         CPX #$FE                  
CODE_12FFBC:        D0 F7         BNE CODE_12FFB5           
CODE_12FFBE:        E2 20         SEP #$20                  
CODE_12FFC0:        AB            PLB                       
CODE_12FFC1:        60            RTS
                       
CODE_12FFC2:        C9 B0         CMP #$B0                  
CODE_12FFC4:        D0 2B         BNE CODE_12FFF1           
CODE_12FFC6:        AE 33 05      LDX $0533                 
CODE_12FFC9:        E0 02         CPX #$02                  
CODE_12FFCB:        F0 0C         BEQ CODE_12FFD9           
CODE_12FFCD:        E0 08         CPX #$08                  
CODE_12FFCF:        F0 08         BEQ CODE_12FFD9           
CODE_12FFD1:        E0 0B         CPX #$0B                  
CODE_12FFD3:        F0 04         BEQ CODE_12FFD9           
CODE_12FFD5:        E0 11         CPX #$11                  
CODE_12FFD7:        D0 18         BNE CODE_12FFF1           
CODE_12FFD9:        A6 EB         LDX $EB                   
CODE_12FFDB:        D0 12         BNE CODE_12FFEF           
CODE_12FFDD:        A5 0D         LDA $0D                   
CODE_12FFDF:        29 0F         AND #$0F                  
CODE_12FFE1:        D0 04         BNE CODE_12FFE7           
CODE_12FFE3:        A9 3F         LDA #$3F                  
CODE_12FFE5:        80 0A         BRA CODE_12FFF1           

CODE_12FFE7:        C9 0F         CMP #$0F                  
CODE_12FFE9:        D0 04         BNE CODE_12FFEF           
CODE_12FFEB:        A9 76         LDA #$76                  
CODE_12FFED:        80 02         BRA CODE_12FFF1
           
CODE_12FFEF:        A9 3E         LDA #$3E                  
CODE_12FFF1:        60            RTS
                       
DATA_12FFF2:        db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ; \ Empty data.
                    db $FF,$FF,$FF,$FF,$FF,$FF              ; /
