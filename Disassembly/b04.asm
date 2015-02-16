;Super Mario Bros. 1

CODE_048000:        0B            PHD                       ;\
CODE_048001:        A9 24         LDA #$24                  ; |
CODE_048003:        85 00         STA $00                   ; |(BG1 and half of BG2 tilemap)
CODE_048005:        9C 15 21      STZ $2115                 ; |Clear VRAM 0000-17FF with 24,00,24,00,etc
CODE_048008:        C2 20         REP #$20                  ; |
CODE_04800A:        A9 00 43      LDA #$4300                ; |
CODE_04800D:        5B            TCD                       ; |Also clear VRAM B0F0-BFFF with 24,00,24,00,etc
CODE_04800E:        A9 00 08      LDA #$0800                ; |(layer 3 tilemap)
CODE_048011:        8D 16 21      STA $2116                 ; |
CODE_048014:        A9 08 18      LDA #$1808                ; |
CODE_048017:        85 00         STA $00                   ; |
CODE_048019:        64 02         STZ $02                   ; |
CODE_04801B:        64 04         STZ $04                   ; |
CODE_04801D:        A9 00 04      LDA #$0400                ; |
CODE_048020:        85 05         STA $05                   ; |
CODE_048022:        A0 01         LDY #$01                  ; |
CODE_048024:        8C 0B 42      STY $420B                 ; |
CODE_048027:        85 05         STA $05                   ; |
CODE_048029:        A9 00 08      LDA #$0800                ; |
CODE_04802C:        8D 16 21      STA $2116                 ; |
CODE_04802F:        9C 00 00      STZ $0000                 ; |
CODE_048032:        A2 80         LDX #$80                  ; |
CODE_048034:        8E 15 21      STX $2115                 ; |
CODE_048037:        A2 19         LDX #$19                  ; |
CODE_048039:        86 01         STX $01                   ; |
CODE_04803B:        8C 0B 42      STY $420B                 ; |
CODE_04803E:        A2 24         LDX #$24                  ; |
CODE_048040:        8E 00 00      STX $0000                 ; |
CODE_048043:        9C 15 21      STZ $2115                 ; |
CODE_048046:        A9 00 00      LDA #$0000                ; |
CODE_048049:        8D 16 21      STA $2116                 ; |
CODE_04804C:        A9 08 18      LDA #$1808                ; |
CODE_04804F:        85 00         STA $00                   ; |
CODE_048051:        64 02         STZ $02                   ; |
CODE_048053:        64 04         STZ $04                   ; |
CODE_048055:        A9 00 08      LDA #$0800                ; |
CODE_048058:        85 05         STA $05                   ; |
CODE_04805A:        8C 0B 42      STY $420B                 ; |
CODE_04805D:        85 05         STA $05                   ; |
CODE_04805F:        A9 00 00      LDA #$0000                ; |
CODE_048062:        8D 16 21      STA $2116                 ; |
CODE_048065:        9C 00 00      STZ $0000                 ; |
CODE_048068:        A2 80         LDX #$80                  ; |
CODE_04806A:        8E 15 21      STX $2115                 ; |
CODE_04806D:        A2 19         LDX #$19                  ; |
CODE_04806F:        86 01         STX $01                   ; |
CODE_048071:        8C 0B 42      STY $420B                 ; |
CODE_048074:        A2 28         LDX #$28                  ; |
CODE_048076:        8E 00 00      STX $0000                 ; |
CODE_048079:        9C 15 21      STZ $2115                 ; |
CODE_04807C:        A9 78 58      LDA #$5878                ; |
CODE_04807F:        8D 16 21      STA $2116                 ; |
CODE_048082:        A9 08 18      LDA #$1808                ; |
CODE_048085:        85 00         STA $00                   ; |
CODE_048087:        64 02         STZ $02                   ; |
CODE_048089:        64 04         STZ $04                   ; |
CODE_04808B:        A9 88 07      LDA #$0788                ; |
CODE_04808E:        85 05         STA $05                   ; |
CODE_048090:        8C 0B 42      STY $420B                 ; |
CODE_048093:        85 05         STA $05                   ; |
CODE_048095:        A9 78 58      LDA #$5878                ; |
CODE_048098:        8D 16 21      STA $2116                 ; |
CODE_04809B:        9C 00 00      STZ $0000                 ; |
CODE_04809E:        A2 80         LDX #$80                  ; |
CODE_0480A0:        8E 15 21      STX $2115                 ; |
CODE_0480A3:        A2 19         LDX #$19                  ; |
CODE_0480A5:        86 01         STX $01                   ; |
CODE_0480A7:        8C 0B 42      STY $420B                 ; |
CODE_0480AA:        E2 20         SEP #$20                  ; |
CODE_0480AC:        2B            PLD                       ; |
CODE_0480AD:        6B            RTL                       ;/

CODE_0480AE:        A9 28         LDA #$28                  ;\
CODE_0480B0:        85 00         STA $00                   ; |Clear entire layer 3 tilemap with 28 00 28 00 etc
CODE_0480B2:        9C 15 21      STZ $2115                 ; |Tilemap is located at $B000-$B3FF
CODE_0480B5:        C2 20         REP #$20                  ; |
CODE_0480B7:        A9 00 58      LDA #$5800                ; |Format: Tile, properties, tile, etc
CODE_0480BA:        8D 16 21      STA $2116                 ; |
CODE_0480BD:        A9 08 18      LDA #$1808                ; |Clears tilemap by fixed DMA.
CODE_0480C0:        8D 00 43      STA $4300                 ; |
CODE_0480C3:        9C 02 43      STZ $4302                 ; |Only runs during game loading
CODE_0480C6:        9C 04 43      STZ $4304                 ; |
CODE_0480C9:        A9 00 02      LDA #$0200                ; |
CODE_0480CC:        8D 05 43      STA $4305                 ; |
CODE_0480CF:        A0 01         LDY #$01                  ; |
CODE_0480D1:        8C 0B 42      STY $420B                 ; |
CODE_0480D4:        8D 05 43      STA $4305                 ; |
CODE_0480D7:        A9 00 58      LDA #$5800                ; |
CODE_0480DA:        8D 16 21      STA $2116                 ; |
CODE_0480DD:        E2 20         SEP #$20                  ; |
CODE_0480DF:        64 00         STZ $00                   ; |
CODE_0480E1:        A9 80         LDA #$80                  ; |
CODE_0480E3:        8D 15 21      STA $2115                 ; |
CODE_0480E6:        A9 19         LDA #$19                  ; |
CODE_0480E8:        8D 01 43      STA $4301                 ; |
CODE_0480EB:        8C 0B 42      STY $420B                 ; |
CODE_0480EE:        6B            RTL                       ;/

CODE_0480EF:        0B            PHD                       ;
CODE_0480F0:        A9 27         LDA #$27                  ;
CODE_0480F2:        85 00         STA $00                   ;
CODE_0480F4:        9C 15 21      STZ $2115                 ;
CODE_0480F7:        C2 20         REP #$20                  ;
CODE_0480F9:        A9 00 43      LDA #$4300                ;
CODE_0480FC:        5B            TCD                       ;
CODE_0480FD:        A9 00 00      LDA #$0000                ;
CODE_048100:        8D 16 21      STA $2116                 ;
CODE_048103:        A9 08 18      LDA #$1808                ;
CODE_048106:        85 00         STA $00                   ;
CODE_048108:        64 02         STZ $02                   ;
CODE_04810A:        64 04         STZ $04                   ;
CODE_04810C:        A9 00 04      LDA #$0400                ;
CODE_04810F:        85 05         STA $05                   ;
CODE_048111:        A0 01         LDY #$01                  ;
CODE_048113:        8C 0B 42      STY $420B                 ;
CODE_048116:        85 05         STA $05                   ;
CODE_048118:        A9 00 00      LDA #$0000                ;
CODE_04811B:        8D 16 21      STA $2116                 ;
CODE_04811E:        A2 0C         LDX #$0C                  ;
CODE_048120:        8E 00 00      STX $0000                 ;
CODE_048123:        A2 80         LDX #$80                  ;
CODE_048125:        8E 15 21      STX $2115                 ;
CODE_048128:        A2 19         LDX #$19                  ;
CODE_04812A:        86 01         STX $01                   ;
CODE_04812C:        84 0B         STY $0B                   ;
CODE_04812E:        A2 24         LDX #$24                  ;
CODE_048130:        8E 00 00      STX $0000                 ;
CODE_048133:        9C 15 21      STZ $2115                 ;
CODE_048136:        A9 00 08      LDA #$0800                ;
CODE_048139:        8D 16 21      STA $2116                 ;
CODE_04813C:        64 02         STZ $02                   ;
CODE_04813E:        64 04         STZ $04                   ;
CODE_048140:        A9 00 04      LDA #$0400                ;
CODE_048143:        85 05         STA $05                   ;
CODE_048145:        8C 0B 42      STY $420B                 ;
CODE_048148:        85 05         STA $05                   ;
CODE_04814A:        A9 00 08      LDA #$0800                ;
CODE_04814D:        8D 16 21      STA $2116                 ;
CODE_048150:        E2 20         SEP #$20                  ;
CODE_048152:        9C 00 00      STZ $0000                 ;
CODE_048155:        A9 80         LDA #$80                  ;
CODE_048157:        8D 15 21      STA $2115                 ;
CODE_04815A:        A9 19         LDA #$19                  ;
CODE_04815C:        85 01         STA $01                   ;
CODE_04815E:        8C 0B 42      STY $420B                 ;
CODE_048161:        2B            PLD                       ;
CODE_048162:        6B            RTL                       ;

CODE_048163:        AD 00 16      LDA $1600                 ;
CODE_048166:        D0 14         BNE CODE_04817C           ;
CODE_048168:        AD 40 21      LDA $2140                 ;
CODE_04816B:        CD 04 16      CMP $1604                 ;
CODE_04816E:        F0 0A         BEQ CODE_04817A           ;
CODE_048170:        EE 0A 16      INC $160A                 ;
CODE_048173:        AD 0A 16      LDA $160A                 ;
CODE_048176:        C9 03         CMP #$03                  ;
CODE_048178:        90 0B         BCC CODE_048185           ;
CODE_04817A:        A9 00         LDA #$00                  ;
CODE_04817C:        8D 40 21      STA $2140                 ;
CODE_04817F:        8D 04 16      STA $1604                 ;
CODE_048182:        9C 0A 16      STZ $160A                 ;
CODE_048185:        AD 01 16      LDA $1601                 ;
CODE_048188:        D0 16         BNE CODE_0481A0           ;
CODE_04818A:        AD 41 21      LDA $2141                 ;
CODE_04818D:        29 0F         AND #$0F                  ;
CODE_04818F:        CD 05 16      CMP $1605                 ;
CODE_048192:        F0 0A         BEQ CODE_04819E           ;
CODE_048194:        EE 0B 16      INC $160B                 ;
CODE_048197:        AD 0B 16      LDA $160B                 ;
CODE_04819A:        C9 03         CMP #$03                  ;
CODE_04819C:        90 0D         BCC CODE_0481AB           ;
CODE_04819E:        A9 00         LDA #$00                  ;
CODE_0481A0:        8D 41 21      STA $2141                 ;
CODE_0481A3:        29 0F         AND #$0F                  ;
CODE_0481A5:        8D 05 16      STA $1605                 ;
CODE_0481A8:        9C 0B 16      STZ $160B                 ;
CODE_0481AB:        AD 02 16      LDA $1602                 ;
CODE_0481AE:        F0 76         BEQ CODE_048226           ;
CODE_0481B0:        A0 04         LDY #$04                  ;
CODE_0481B2:        8C 0C 16      STY $160C                 ;
CODE_0481B5:        8D 42 21      STA $2142                 ;
CODE_0481B8:        C9 F0         CMP #$F0                  ;
CODE_0481BA:        B0 03         BCS CODE_0481BF           ;
CODE_0481BC:        8D 06 16      STA $1606                 ;
CODE_0481BF:        AD 03 16      LDA $1603                 ;
CODE_0481C2:        D0 21         BNE CODE_0481E5           ;
CODE_0481C4:        AD 43 21      LDA $2143                 ;
CODE_0481C7:        29 7F         AND #$7F                  ;
CODE_0481C9:        CD 07 16      CMP $1607                 ;
CODE_0481CC:        F0 0A         BEQ CODE_0481D8           ;
CODE_0481CE:        EE 0D 16      INC $160D                 ;
CODE_0481D1:        AD 0D 16      LDA $160D                 ;
CODE_0481D4:        C9 03         CMP #$03                  ;
CODE_0481D6:        90 31         BCC CODE_048209           ;
CODE_0481D8:        A9 00         LDA #$00                  ;
CODE_0481DA:        8D 43 21      STA $2143                 ;
CODE_0481DD:        8D 07 16      STA $1607                 ;
CODE_0481E0:        9C 0D 16      STZ $160D                 ;
CODE_0481E3:        80 24         BRA CODE_048209           ;

CODE_0481E5:        8D 07 16      STA $1607                 ;
CODE_0481E8:        C9 01         CMP #$01                  ;
CODE_0481EA:        F0 0C         BEQ CODE_0481F8           ;
CODE_0481EC:        C9 05         CMP #$05                  ;
CODE_0481EE:        F0 08         BEQ CODE_0481F8           ;
CODE_0481F0:        C9 06         CMP #$06                  ;
CODE_0481F2:        F0 04         BEQ CODE_0481F8           ;
CODE_0481F4:        C9 4A         CMP #$4A                  ;
CODE_0481F6:        D0 1E         BNE CODE_048216           ;
CODE_0481F8:        0D 0F 16      ORA $160F                 ;
CODE_0481FB:        8D 43 21      STA $2143                 ;
CODE_0481FE:        AD 0F 16      LDA $160F                 ;
CODE_048201:        49 80         EOR #$80                  ;
CODE_048203:        8D 0F 16      STA $160F                 ;
CODE_048206:        9C 0D 16      STZ $160D                 ;
CODE_048209:        9C 00 16      STZ $1600                 ;
CODE_04820C:        9C 01 16      STZ $1601                 ;
CODE_04820F:        9C 02 16      STZ $1602                 ;
CODE_048212:        9C 03 16      STZ $1603                 ;
CODE_048215:        6B            RTL                       ;

CODE_048216:        8D 43 21      STA $2143                 ;
CODE_048219:        9C 00 16      STZ $1600                 ;
CODE_04821C:        9C 01 16      STZ $1601                 ;
CODE_04821F:        9C 02 16      STZ $1602                 ;
CODE_048222:        9C 03 16      STZ $1603                 ;
CODE_048225:        6B            RTL                       ;

CODE_048226:        AC 42 21      LDY $2142                 ;
CODE_048229:        CC 06 16      CPY $1606                 ;
CODE_04822C:        D0 91         BNE CODE_0481BF           ;
CODE_04822E:        CE 0C 16      DEC $160C                 ;
CODE_048231:        AD 0C 16      LDA $160C                 ;
CODE_048234:        D0 89         BNE CODE_0481BF           ;
CODE_048236:        EE 0C 16      INC $160C                 ;
CODE_048239:        8D 42 21      STA $2142                 ;
CODE_04823C:        80 81         BRA CODE_0481BF           ;

DATA_04823E:        db $00,$00,$00,$00,$31,$00,$00,$00
                    db $00,$00,$10,$00,$20,$00,$30,$00

DATA_04824E:        db $31,$00,$31,$00,$31,$00,$31,$00
                    db $10,$00,$10,$00,$10,$00,$10,$00

CODE_04825E:        9C 0C 42      STZ $420C                 ;
CODE_048261:        9C 03 12      STZ $1203                 ;Disable HDMA channels
CODE_048264:        9C 07 12      STZ $1207                 ;main screen window mask designation: null
CODE_048267:        9C 08 12      STZ $1208                 ;sub screen window mask designation: null
CODE_04826A:        9C 04 12      STZ $1204                 ;window mask settings for bg1/2: null
CODE_04826D:        9C 05 12      STZ $1205                 ;^for bg3/4: null
CODE_048270:        9C 06 12      STZ $1206                 ;^for OBJ and color window: null
CODE_048273:        9C 09 12      STZ $1209                 ;Color addition select: null
CODE_048276:        A2 20         LDX #$20                  ;\CGADSUB: Enable color math on backdrop
CODE_048278:        8E 0A 12      STX $120A                 ;/
CODE_04827B:        C9 FF         CMP #$FF                  ;\
CODE_04827D:        D0 01         BNE CODE_048280           ; |If there's a HDMA gradient, execute the gradient code
CODE_04827F:        6B            RTL                       ;/

CODE_048280:        8B            PHB                       ;\
CODE_048281:        4B            PHK                       ; |DB = PB
CODE_048282:        AB            PLB                       ;/
CODE_048283:        85 00         STA $00                   ;HDMA gradient type goes into $00. See $7E00F1 for types
CODE_048285:        0A            ASL A                     ;
CODE_048286:        A8            TAY                       ;
CODE_048287:        5A            PHY                       ;
CODE_048288:        B9 4E 82      LDA $824E,y               ;
CODE_04828B:        85 01         STA $01                   ;
CODE_04828D:        BE 3E 82      LDX $823E,y               ;
CODE_048290:        A0 00         LDY #$00                  ;
CODE_048292:        BD AC 83      LDA $83AC,x               ;\
CODE_048295:        99 20 15      STA $1520,y               ; |
CODE_048298:        BD 0E 84      LDA $840E,x               ; |
CODE_04829B:        99 60 15      STA $1560,y               ; |Copy indirect HDMA pointers to RAM until you're done
CODE_04829E:        BD 70 84      LDA $8470,x               ; |
CODE_0482A1:        99 A0 15      STA $15A0,y               ; |
CODE_0482A4:        E8            INX                       ; |
CODE_0482A5:        C8            INY                       ; |
CODE_0482A6:        C4 01         CPY $01                   ; |
CODE_0482A8:        D0 E8         BNE CODE_048292           ;/
CODE_0482AA:        7A            PLY                       ;
CODE_0482AB:        B9 56 82      LDA $8256,y               ;
CODE_0482AE:        85 01         STA $01                   ;
CODE_0482B0:        BE 46 82      LDX $8246,y               ;
CODE_0482B3:        A0 00         LDY #$00                  ;
CODE_0482B5:        BD D2 84      LDA $84D2,x               ;
CODE_0482B8:        99 00 14      STA $1400,y               ;
CODE_0482BB:        BD 12 85      LDA $8512,x               ;
CODE_0482BE:        99 60 14      STA $1460,y               ;
CODE_0482C1:        BD 52 85      LDA $8552,x               ;
CODE_0482C4:        99 C0 14      STA $14C0,y               ;
CODE_0482C7:        E8            INX                       ;
CODE_0482C8:        C8            INY                       ;
CODE_0482C9:        C4 01         CPY $01                   ;
CODE_0482CB:        D0 E8         BNE CODE_0482B5           ;

CODE_0482CD:        C2 10         REP #$10                  ;16-bit XY.
CODE_0482CF:        A2 40 32      LDX #$3240                ;\Base reg: $2132 (direct color data)
CODE_0482D2:        8E 50 43      STX $4350                 ; |1 reg write once, indirect pointers
CODE_0482D5:        8E 60 43      STX $4360                 ; |We are setting up 3 HDMA channels it seems
CODE_0482D8:        8E 70 43      STX $4370                 ;/
CODE_0482DB:        A2 20 15      LDX #$1520                ;\
CODE_0482DE:        8E 52 43      STX $4352                 ; |
CODE_0482E1:        A2 60 15      LDX #$1560                ; |
CODE_0482E4:        8E 62 43      STX $4362                 ; |DMA source: $00:1520
CODE_0482E7:        A2 A0 15      LDX #$15A0                ; |            $00:1560
CODE_0482EA:        8E 72 43      STX $4372                 ; |            $00:15A0
CODE_0482ED:        A9 00         LDA #$00                  ; |
CODE_0482EF:        8D 54 43      STA $4354                 ; |
CODE_0482F2:        8D 64 43      STA $4364                 ; |
CODE_0482F5:        8D 74 43      STA $4374                 ;/
CODE_0482F8:        A9 00         LDA #$00                  ;\
CODE_0482FA:        8D 57 43      STA $4357                 ; |
CODE_0482FD:        A9 00         LDA #$00                  ; |
CODE_0482FF:        8D 67 43      STA $4367                 ; |Indirect HDMA bank bytes: $00
CODE_048302:        A9 00         LDA #$00                  ; |
CODE_048304:        8D 77 43      STA $4377                 ;/
CODE_048307:        A9 01         LDA #$01                  ;\Timer to move the gradient up and down(water)
CODE_048309:        8D E0 15      STA $15E0                 ;/Set to 1 so it doesn't keep moving up-down.
CODE_04830C:        A5 00         LDA $00                   ;
CODE_04830E:        C9 02         CMP #$02                  ;
CODE_048310:        D0 45         BNE CODE_048357           ;
CODE_048312:        A2 41 28      LDX #$2841                ;\Base reg: $2128. Indirect pointers.
CODE_048315:        8E 40 43      STX $4340                 ;/2 regs write once (Window 2 L+R position)
CODE_048318:        A2 A5 83      LDX #$83A5                ;\
CODE_04831B:        8E 42 43      STX $4342                 ; |
CODE_04831E:        A9 04         LDA #$04                  ; |DMA source: $04:83A5
CODE_048320:        8D 44 43      STA $4344                 ; |
CODE_048323:        A9 04         LDA #$04                  ; |
CODE_048325:        8D 47 43      STA $4347                 ;/
CODE_048328:        A9 17         LDA #$17                  ;\Window mask designation for main screen
CODE_04832A:        8D 07 12      STA $1207                 ;/Everything except BG4
CODE_04832D:        9C 08 12      STZ $1208                 ;Window mask designation for sub screen: none
CODE_048330:        9C 04 12      STZ $1204                 ;\Window Mask Settings for BG1/2/3/4
CODE_048333:        9C 05 12      STZ $1205                 ;/
CODE_048336:        A9 80         LDA #$80                  ;\Enable window 2 for BG1/BG3/OBJ
CODE_048338:        8D 06 12      STA $1206                 ;/
CODE_04833B:        A9 10         LDA #$10                  ;\Prevent color math outside window
CODE_04833D:        8D 09 12      STA $1209                 ;/
CODE_048340:        A9 33         LDA #$33                  ;\Enable color math on OBJ & Backdrop & BG1/2
CODE_048342:        8D 0A 12      STA $120A                 ;/
CODE_048345:        A9 F0         LDA #$F0                  ;\Enable HDMA channels 7/6/5/4
CODE_048347:        8D 03 12      STA $1203                 ;/
CODE_04834A:        9C 00 10      STZ $1000                 ;\Background color: black
CODE_04834D:        9C 01 10      STZ $1001                 ;/
CODE_048350:        EE 00 12      INC $1200                 ;
CODE_048353:        E2 10         SEP #$10                  ;8-bit XY
CODE_048355:        AB            PLB                       ;pull program bank
CODE_048356:        6B            RTL                       ;return

CODE_048357:        A9 E0         LDA #$E0                  ;\Enable HDMA channels 7/6/5
CODE_048359:        8D 03 12      STA $1203                 ;/
CODE_04835C:        E2 10         SEP #$10                  ;8-bit XY
CODE_04835E:        AB            PLB                       ;pull program bank
CODE_04835F:        6B            RTL                       ;return

DATA_048360:        db $00,$03,$06,$09,$09,$06,$03,$00

DATA_048368:        db $0C,$0C,$0C,$1C,$0C,$0C,$0C,$1C ;The very small pauses between going up and down 1 time
                                                       ;in the underwater HDMA wavy gradient effect

DATA_048370:        db $01,$01,$01,$01,$FF,$FF,$FF,$FF

CODE_048378:        8B            PHB                       ;
CODE_048379:        4B            PHK                       ;
CODE_04837A:        AB            PLB                       ;
CODE_04837B:        CE E0 15      DEC $15E0                 ;
CODE_04837E:        D0 23         BNE CODE_0483A3           ;
CODE_048380:        AE E2 15      LDX $15E2                 ;
CODE_048383:        BD 68 83      LDA $8368,x               ;
CODE_048386:        8D E0 15      STA $15E0                 ;
CODE_048389:        BC 60 83      LDY $8360,x               ;
CODE_04838C:        B9 20 15      LDA $1520,y               ;
CODE_04838F:        18            CLC                       ;
CODE_048390:        7D 70 83      ADC $8370,x               ;
CODE_048393:        99 20 15      STA $1520,y               ;
CODE_048396:        99 60 15      STA $1560,y               ;
CODE_048399:        99 A0 15      STA $15A0,y               ;
CODE_04839C:        E8            INX                       ;
CODE_04839D:        8A            TXA                       ;
CODE_04839E:        29 07         AND #$07                  ;
CODE_0483A0:        8D E2 15      STA $15E2                 ;
CODE_0483A3:        AB            PLB                       ;
CODE_0483A4:        6B            RTL                       ;

DATA_0483A5:        db $27,$92,$85,$02,$94,$85,$00     ;Unknown

DATA_0483AC:        db $40,$00,$14,$08,$01,$14,$08,$02 ;Red indirect pointers. Scanline - ram address (word) - scanline - etc
                    db $14,$08,$03,$14,$06,$04,$14,$06
                    db $05,$14,$06,$06,$14,$06,$07,$14
                    db $08,$08,$14,$04,$09,$14,$04,$0A
                    db $14,$04,$0B,$14,$04,$0C,$14,$04
                    db $0D,$14,$03,$0E,$14,$01,$0F,$14
                    db $00,$20,$00,$14,$02,$01,$14,$02
                    db $02,$14,$03,$03,$14,$03,$04,$14
                    db $04,$05,$14,$04,$06,$14,$05,$07
                    db $14,$06,$08,$14,$07,$09,$14,$08
                    db $0A,$14,$09,$0B,$14,$0A,$0C,$14
                    db $0B,$0D,$14,$0C,$0E,$14,$01,$0F
                    db $14,$00

DATA_04840E:        db $40,$60,$14,$08,$61,$14,$08,$62 ;green indirect pointers
                    db $14,$08,$63,$14,$06,$64,$14,$06
                    db $65,$14,$06,$66,$14,$06,$67,$14
                    db $08,$68,$14,$04,$69,$14,$04,$6A
                    db $14,$04,$6B,$14,$04,$6C,$14,$04
                    db $6D,$14,$03,$6E,$14,$01,$6F,$14
                    db $00,$20,$60,$14,$02,$61,$14,$02
                    db $62,$14,$03,$63,$14,$03,$64,$14
                    db $04,$65,$14,$04,$66,$14,$05,$67
                    db $14,$06,$68,$14,$07,$69,$14,$08
                    db $6A,$14,$09,$6B,$14,$0A,$6C,$14
                    db $0B,$6D,$14,$0C,$6E,$14,$01,$6F
                    db $14,$00

DATA_048470:        db $40,$C0,$14,$08,$C1,$14,$08,$C2 ;blue indirect pointers
                    db $14,$08,$C3,$14,$06,$C4,$14,$06
                    db $C5,$14,$06,$C6,$14,$06,$C7,$14
                    db $08,$C8,$14,$04,$C9,$14,$04,$CA
                    db $14,$04,$CB,$14,$04,$CC,$14,$04
                    db $CD,$14,$03,$CE,$14,$01,$CF,$14
                    db $00,$20,$C0,$14,$02,$C1,$14,$02
                    db $C2,$14,$03,$C3,$14,$03,$C4,$14
                    db $04,$C5,$14,$04,$C6,$14,$05,$C7
                    db $14,$06,$C8,$14,$07,$C9,$14,$08
                    db $CA,$14,$09,$CB,$14,$0A,$CC,$14
                    db $0B,$CD,$14,$0C,$CE,$14,$01,$CF
                    db $14,$00

DATA_0484D2:        db $2A,$2B,$2C,$2D,$2E,$2F,$30,$31 ;red intensity stuff. Actual data of $2132
                    db $32,$33,$34,$35,$36,$37,$38,$38 ;bgrc cccc
                    db $27,$26,$25,$24,$23,$22,$21,$20
                    db $20,$20,$20,$20,$20,$20,$20,$20
                    db $38,$2B,$2A,$29,$28,$27,$26,$25
                    db $24,$23,$22,$21,$20,$20,$20,$20
                    db $3A,$3B,$3C,$3D,$3E,$3F,$3F,$3F
                    db $3F,$3F,$3F,$3F,$3F,$3F,$3F,$3F

DATA_048512:        db $51,$52,$53,$54,$55,$56,$57,$58 ;green intensity stuff
                    db $59,$5A,$5B,$5C,$5D,$5E,$5F,$5F
                    db $47,$46,$45,$44,$43,$42,$41,$40
                    db $40,$40,$40,$40,$40,$40,$40,$40
                    db $5F,$51,$50,$4F,$4E,$4D,$4C,$4B
                    db $4A,$49,$48,$47,$46,$45,$44,$43
                    db $5F,$5F,$5F,$5F,$5F,$5F,$5F,$5F
                    db $5F,$5F,$5F,$5F,$5F,$5F,$5F,$5F

DATA_048552:        db $94,$95,$96,$97,$98,$99,$9A,$9B ;blue intensity stuff
                    db $9C,$9D,$9E,$9F,$9F,$9F,$9F,$9F
                    db $8D,$8C,$8B,$8A,$89,$88,$87,$86
                    db $85,$84,$83,$82,$81,$80,$80,$80
                    db $9F,$9C,$9B,$9A,$99,$98,$97,$96
                    db $95,$94,$93,$92,$91,$90,$8F,$8E
                    db $9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F
                    db $9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F

DATA_048592:        db $FF,$00,$00,$FF                 ;???

CODE_048596:        EE 5A 07      INC $075A                 ;\ Increase lives by 1 & make sure
CODE_048599:        AD 5A 07      LDA $075A                 ; |it doesn't get past 128.
CODE_04859C:        C9 80         CMP #$80                  ; |
CODE_04859E:        90 05         BCC CODE_0485A5           ; |
CODE_0485A0:        A9 7F         LDA #$7F                  ; |
CODE_0485A2:        8D 5A 07      STA $075A                 ; |
CODE_0485A5:        6B            RTL                       ;/

DATA_0485A6:        db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF

CODE_048600:        AD 80 16      LDA $1680                 ;\
CODE_048603:        30 24         BMI CODE_048629           ; |"pause" flag after rescuing princess
CODE_048605:        D0 12         BNE CODE_048619           ;/ skip all of these if negative, if 00 check for start button etc
CODE_048607:        AE 53 07      LDX $0753                 ;\
CODE_04860A:        BD F6 0F      LDA $0FF6,x               ; |
CODE_04860D:        29 10         AND #$10                  ; |Check for start button press
CODE_04860F:        F0 18         BEQ CODE_048629           ; |If pressed, enable "pause" flag after rescuing princess
CODE_048611:        EE 80 16      INC $1680                 ;/
CODE_048614:        A9 43         LDA #$43                  ;\Pause sound
CODE_048616:        8D 00 16      STA $1600                 ;/
CODE_048619:        CE 9A 0B      DEC $0B9A                 ;\
CODE_04861C:        CE 9A 0B      DEC $0B9A                 ; | Decrease portrait windowing hdma size until negative values
CODE_04861F:        AD 9A 0B      LDA $0B9A                 ; |
CODE_048622:        10 05         BPL CODE_048629           ;/
CODE_048624:        A9 0D         LDA #$0D                  ;\
CODE_048626:        8D 72 07      STA $0772                 ;/Rescued peach victory operation mode $0D
CODE_048629:        6B            RTL                       ;

;Rescued peach - Operation $0D
CODE_04862A:        22 31 DE 05   JSL CODE_05DE31           ;Show pause window.
CODE_04862E:        22 5A EB 05   JSL CODE_05EB5A           ;Enable the more difficult quest flag
CODE_048632:        A9 22         LDA #$22                  ;\
CODE_048634:        8D 04 12      STA $1204                 ;/Enable window 1 on BG1 and 2
CODE_048637:        A9 02         LDA #$02                  ;\
CODE_048639:        8D 05 12      STA $1205                 ;/Enable window 1 on BG3
CODE_04863C:        EE 72 07      INC $0772                 ;go to operation $0E
CODE_04863F:        6B            RTL                       ;

;Rescued peach - Operation $0E
CODE_048640:        AD 40 21      LDA $2140                 ;\
CODE_048643:        D0 0A         BNE CODE_04864F           ;/If there's something playing in SFX channel 0, skip.
CODE_048645:        A9 0C         LDA #$0C                  ;\ Operation mode $0C
CODE_048647:        8D 72 07      STA $0772                 ;/
CODE_04864A:        A9 80         LDA #$80                  ;\
CODE_04864C:        8D 80 16      STA $1680                 ;/Set pause flag after rescuing princess to negative. (unpause flag?)
CODE_04864F:        6B            RTL                       ;return

CODE_048650:        8B            PHB                       ;
CODE_048651:        4B            PHK                       ;
CODE_048652:        AB            PLB                       ;
CODE_048653:        AC 53 07      LDY $0753                 ;
CODE_048656:        B9 F6 0F      LDA $0FF6,y               ;
CODE_048659:        29 2C         AND #$2C                  ;
CODE_04865B:        F0 10         BEQ CODE_04866D           ;
CODE_04865D:        A9 01         LDA #$01                  ;\
CODE_04865F:        8D 03 16      STA $1603                 ;/Coin sound
CODE_048662:        9C 78 0B      STZ $0B78                 ;
CODE_048665:        AD 06 0F      LDA $0F06                 ;
CODE_048668:        49 10         EOR #$10                  ;
CODE_04866A:        8D 06 0F      STA $0F06                 ;
CODE_04866D:        A0 03         LDY #$03                  ;
CODE_04866F:        B9 DB 86      LDA $86DB,y               ;
CODE_048672:        99 00 08      STA $0800,y               ;
CODE_048675:        88            DEY                       ;
CODE_048676:        10 F7         BPL CODE_04866F           ;
CODE_048678:        AD 01 08      LDA $0801                 ;
CODE_04867B:        18            CLC                       ;
CODE_04867C:        6D 06 0F      ADC $0F06                 ;
CODE_04867F:        8D 01 08      STA $0801                 ;
CODE_048682:        EE 78 0B      INC $0B78                 ;
CODE_048685:        AD 78 0B      LDA $0B78                 ;
CODE_048688:        29 10         AND #$10                  ;
CODE_04868A:        4A            LSR A                     ;
CODE_04868B:        4A            LSR A                     ;
CODE_04868C:        4A            LSR A                     ;
CODE_04868D:        4A            LSR A                     ;
CODE_04868E:        09 02         ORA #$02                  ;
CODE_048690:        8D 00 0C      STA $0C00                 ;
CODE_048693:        AC 53 07      LDY $0753                 ;
CODE_048696:        A2 00         LDX #$00                  ;
CODE_048698:        B9 F6 0F      LDA $0FF6,y               ;
CODE_04869B:        29 10         AND #$10                  ;
CODE_04869D:        F0 38         BEQ CODE_0486D7           ;
CODE_04869F:        A9 29         LDA #$29                  ;\
CODE_0486A1:        8D 03 16      STA $1603                 ;/Correct sound
CODE_0486A4:        9C 5B 07      STZ $075B                 ;
CODE_0486A7:        9C 5E 07      STZ $075E                 ;
CODE_0486AA:        9C 60 07      STZ $0760                 ;
CODE_0486AD:        9C 5C 07      STZ $075C                 ;
CODE_0486B0:        AD 06 0F      LDA $0F06                 ;
CODE_0486B3:        F0 03         BEQ CODE_0486B8           ;
CODE_0486B5:        9C 5F 07      STZ $075F                 ;
CODE_0486B8:        B9 D9 86      LDA $86D9,y               ;
CODE_0486BB:        AA            TAX                       ;
CODE_0486BC:        A0 07         LDY #$07                  ;
CODE_0486BE:        9E DA 07      STZ $07DA,x               ;
CODE_0486C1:        9E CE 07      STZ $07CE,x               ;
CODE_0486C4:        E8            INX                       ;
CODE_0486C5:        88            DEY                       ;
CODE_0486C6:        D0 F6         BNE CODE_0486BE           ;
CODE_0486C8:        A2 02         LDX #$02                  ;
CODE_0486CA:        AD 06 0F      LDA $0F06                 ;
CODE_0486CD:        D0 08         BNE CODE_0486D7           ;
CODE_0486CF:        A9 04         LDA #$04                  ;
CODE_0486D1:        8D 5A 07      STA $075A                 ;
CODE_0486D4:        EE 5D 07      INC $075D                 ;
CODE_0486D7:        AB            PLB                       ;
CODE_0486D8:        6B            RTL                       ;

DATA_0486D9:        db $00,$06,$50,$6C,$0C,$2B ;Unreachable?

CODE_0486DF:        8B            PHB                       ;
CODE_0486E0:        4B            PHK                       ;
CODE_0486E1:        AB            PLB                       ;
CODE_0486E2:        C2 30         REP #$30                  ;
CODE_0486E4:        A2 00 00      LDX #$0000                ;
CODE_0486E7:        BD FD 86      LDA $86FD,x               ;
CODE_0486EA:        99 02 17      STA $1702,y               ;
CODE_0486ED:        C8            INY                       ;
CODE_0486EE:        C8            INY                       ;
CODE_0486EF:        E8            INX                       ;
CODE_0486F0:        E8            INX                       ;
CODE_0486F1:        C9 FF FF      CMP #$FFFF                ;
CODE_0486F4:        D0 F1         BNE CODE_0486E7           ;
CODE_0486F6:        8C 00 17      STY $1700                 ;
CODE_0486F9:        E2 30         SEP #$30                  ;
CODE_0486FB:        AB            PLB                       ;
CODE_0486FC:        6B            RTL                       ;

DATA_0486FD:        dw $CD09,$0F00,$02A1,$02A2
                    dw $02A3,$02A4,$02A5,$02A6
                    dw $02A7,$02A8,$0D0A,$0700
                    dw $02A9,$02AA,$02AB,$02AC
                    dw $FFFF

CODE_04871F:        AD 9A 0B      LDA $0B9A                 ;
CODE_048722:        C9 30         CMP #$30                  ;
CODE_048724:        90 01         BCC CODE_048727           ;
CODE_048726:        6B            RTL                       ;

CODE_048727:        8B            PHB                       ;
CODE_048728:        4B            PHK                       ;
CODE_048729:        AB            PLB                       ;
CODE_04872A:        0B            PHD                       ;
CODE_04872B:        C2 30         REP #$30                  ;
CODE_04872D:        A9 00 0B      LDA #$0B00                ;
CODE_048730:        5B            TCD                       ;
CODE_048731:        64 84         STZ $84                   ;
CODE_048733:        64 8E         STZ $8E                   ;
CODE_048735:        64 90         STZ $90                   ;
CODE_048737:        64 92         STZ $92                   ;
CODE_048739:        A5 9A         LDA $9A                   ;
CODE_04873B:        29 FF 00      AND #$00FF                ;
CODE_04873E:        0A            ASL A                     ;
CODE_04873F:        AA            TAX                       ;
CODE_048740:        BF 80 97 00   LDA $009780,x             ;
CODE_048744:        85 94         STA $94                   ;
CODE_048746:        A9 78 00      LDA #$0078                ;
CODE_048749:        85 96         STA $96                   ;
CODE_04874B:        A9 B0 00      LDA #$00B0                ;
CODE_04874E:        85 98         STA $98                   ;
CODE_048750:        A9 00 01      LDA #$0100                ;
CODE_048753:        85 80         STA $80                   ;
CODE_048755:        85 82         STA $82                   ;
CODE_048757:        A5 90         LDA $90                   ;
CODE_048759:        1A            INC A                     ;
CODE_04875A:        C5 9A         CMP $9A                   ;
CODE_04875C:        B0 36         BCS CODE_048794           ;
CODE_04875E:        A5 92         LDA $92                   ;
CODE_048760:        18            CLC                       ;
CODE_048761:        65 94         ADC $94                   ;
CODE_048763:        85 92         STA $92                   ;
CODE_048765:        EB            XBA                       ;
CODE_048766:        29 FF 00      AND #$00FF                ;
CODE_048769:        4A            LSR A                     ;
CODE_04876A:        E2 30         SEP #$30                  ;
CODE_04876C:        AA            TAX                       ;
CODE_04876D:        BF FF 96 00   LDA $0096FF,x             ;
CODE_048771:        8D 02 42      STA $4202                 ;
CODE_048774:        A5 9A         LDA $9A                   ;
CODE_048776:        8D 03 42      STA $4203                 ;
CODE_048779:        EA            NOP                       ;
CODE_04877A:        EA            NOP                       ;
CODE_04877B:        EA            NOP                       ;
CODE_04877C:        EA            NOP                       ;
CODE_04877D:        AD 17 42      LDA $4217                 ;
CODE_048780:        85 88         STA $88                   ;
CODE_048782:        64 89         STZ $89                   ;
CODE_048784:        C2 30         REP #$30                  ;
CODE_048786:        A5 88         LDA $88                   ;
CODE_048788:        18            CLC                       ;
CODE_048789:        65 98         ADC $98                   ;
CODE_04878B:        85 82         STA $82                   ;
CODE_04878D:        A5 98         LDA $98                   ;
CODE_04878F:        38            SEC                       ;
CODE_048790:        E5 88         SBC $88                   ;
CODE_048792:        85 80         STA $80                   ;
CODE_048794:        A5 96         LDA $96                   ;
CODE_048796:        38            SEC                       ;
CODE_048797:        E5 90         SBC $90                   ;
CODE_048799:        3A            DEC A                     ;
CODE_04879A:        0A            ASL A                     ;
CODE_04879B:        85 84         STA $84                   ;
CODE_04879D:        AA            TAX                       ;
CODE_04879E:        A5 80         LDA $80                   ;
CODE_0487A0:        A8            TAY                       ;
CODE_0487A1:        30 0F         BMI CODE_0487B2           ;
CODE_0487A3:        29 00 FF      AND #$FF00                ;
CODE_0487A6:        F0 0D         BEQ CODE_0487B5           ;
CODE_0487A8:        C9 00 01      CMP #$0100                ;
CODE_0487AB:        D0 05         BNE CODE_0487B2           ;
CODE_0487AD:        A0 FF 00      LDY #$00FF                ;
CODE_0487B0:        80 03         BRA CODE_0487B5           ;

CODE_0487B2:        A0 00 00      LDY #$0000                ;
CODE_0487B5:        98            TYA                       ;
CODE_0487B6:        29 FF 00      AND #$00FF                ;
CODE_0487B9:        85 86         STA $86                   ;
CODE_0487BB:        A5 82         LDA $82                   ;
CODE_0487BD:        A8            TAY                       ;
CODE_0487BE:        29 00 FF      AND #$FF00                ;
CODE_0487C1:        F0 03         BEQ CODE_0487C6           ;
CODE_0487C3:        A0 FF 00      LDY #$00FF                ;
CODE_0487C6:        98            TYA                       ;
CODE_0487C7:        29 FF 00      AND #$00FF                ;
CODE_0487CA:        EB            XBA                       ;
CODE_0487CB:        05 86         ORA $86                   ;
CODE_0487CD:        85 86         STA $86                   ;
CODE_0487CF:        E0 C0 01      CPX #$01C0                ;
CODE_0487D2:        B0 0C         BCS CODE_0487E0           ;
CODE_0487D4:        C9 FF FF      CMP #$FFFF                ;
CODE_0487D7:        D0 03         BNE CODE_0487DC           ;
CODE_0487D9:        A9 FF 00      LDA #$00FF                ;
CODE_0487DC:        9F 00 F0 7F   STA $7FF000,x             ;
CODE_0487E0:        A5 96         LDA $96                   ;
CODE_0487E2:        18            CLC                       ;
CODE_0487E3:        65 90         ADC $90                   ;
CODE_0487E5:        3A            DEC A                     ;
CODE_0487E6:        0A            ASL A                     ;
CODE_0487E7:        85 8E         STA $8E                   ;
CODE_0487E9:        C9 C0 01      CMP #$01C0                ;
CODE_0487EC:        B0 0F         BCS CODE_0487FD           ;
CODE_0487EE:        AA            TAX                       ;
CODE_0487EF:        A5 86         LDA $86                   ;
CODE_0487F1:        C9 FF FF      CMP #$FFFF                ;
CODE_0487F4:        D0 03         BNE CODE_0487F9           ;
CODE_0487F6:        A9 FF 00      LDA #$00FF                ;
CODE_0487F9:        9F 00 F0 7F   STA $7FF000,x             ;
CODE_0487FD:        E6 90         INC $90                   ;
CODE_0487FF:        A5 84         LDA $84                   ;
CODE_048801:        C9 C0 01      CMP #$01C0                ;
CODE_048804:        90 07         BCC CODE_04880D           ;
CODE_048806:        A5 8E         LDA $8E                   ;
CODE_048808:        C9 C0 01      CMP #$01C0                ;
CODE_04880B:        B0 03         BCS CODE_048810           ;
CODE_04880D:        4C 50 87      JMP CODE_048750           ;

CODE_048810:        E2 30         SEP #$30                  ;
CODE_048812:        E6 9A         INC $9A                   ;
CODE_048814:        2B            PLD                       ;
CODE_048815:        AB            PLB                       ;
CODE_048816:        6B            RTL                       ;

CODE_048817:        E2 10         SEP #$10                  ;
CODE_048819:        A2 00         LDX #$00                  ;
CODE_04881B:        9E D0 05      STZ $05D0,x               ;
CODE_04881E:        9E E0 05      STZ $05E0,x               ;
CODE_048821:        9E F0 05      STZ $05F0,x               ;
CODE_048824:        9E 00 06      STZ $0600,x               ;
CODE_048827:        9E 10 06      STZ $0610,x               ;
CODE_04882A:        9E 20 06      STZ $0620,x               ;
CODE_04882D:        9E 30 06      STZ $0630,x               ;
CODE_048830:        9E 40 06      STZ $0640,x               ;
CODE_048833:        9E 50 06      STZ $0650,x               ;
CODE_048836:        9E 60 06      STZ $0660,x               ;
CODE_048839:        9E 70 06      STZ $0670,x               ;
CODE_04883C:        9E 80 06      STZ $0680,x               ;
CODE_04883F:        9E 90 06      STZ $0690,x               ;
CODE_048842:        E8            INX                       ;
CODE_048843:        8A            TXA                       ;
CODE_048844:        29 0F         AND #$0F                  ;
CODE_048846:        D0 D3         BNE CODE_04881B           ;
CODE_048848:        A9 68         LDA #$68                  ;
CODE_04884A:        8D 40 06      STA $0640                 ;
CODE_04884D:        8D 41 06      STA $0641                 ;
CODE_048850:        8D 42 06      STA $0642                 ;
CODE_048853:        8D 73 06      STA $0673                 ;
CODE_048856:        8D 74 06      STA $0674                 ;
CODE_048859:        8D 75 06      STA $0675                 ;
CODE_04885C:        8D 76 06      STA $0676                 ;
CODE_04885F:        8D 49 06      STA $0649                 ;
CODE_048862:        8D 4A 06      STA $064A                 ;
CODE_048865:        8D 4B 06      STA $064B                 ;
CODE_048868:        8D 4C 06      STA $064C                 ;
CODE_04886B:        8D 4D 06      STA $064D                 ;
CODE_04886E:        8D 4E 06      STA $064E                 ;
CODE_048871:        A9 01         LDA #$01                  ;
CODE_048873:        8D C9 0E      STA $0EC9                 ;
CODE_048876:        6B            RTL                       ;

DATA_048877:        db $58,$43,$00,$09,$16,$20,$0A,$20
                    db $1B,$20,$12,$20,$18,$20,$FF

DATA_048886:        db $58,$43,$00,$09,$15,$20,$1E,$20
                    db $12,$20,$10,$20,$12,$20,$FF

CODE_048895:        8B            PHB                       ;
CODE_048896:        4B            PHK                       ;
CODE_048897:        AB            PLB                       ;
CODE_048898:        DA            PHX                       ;
CODE_048899:        AD 53 07      LDA $0753                 ;
CODE_04889C:        D0 10         BNE CODE_0488AE           ;
CODE_04889E:        A2 00         LDX #$00                  ;
CODE_0488A0:        BD 77 88      LDA $8877,x               ;
CODE_0488A3:        99 02 17      STA $1702,y               ;
CODE_0488A6:        C8            INY                       ;
CODE_0488A7:        E8            INX                       ;
CODE_0488A8:        C9 FF         CMP #$FF                  ;
CODE_0488AA:        D0 F4         BNE CODE_0488A0           ;
CODE_0488AC:        80 0E         BRA CODE_0488BC           ;

CODE_0488AE:        A2 00         LDX #$00                  ;
CODE_0488B0:        BD 86 88      LDA $8886,x               ;
CODE_0488B3:        99 02 17      STA $1702,y               ;
CODE_0488B6:        C8            INY                       ;
CODE_0488B7:        E8            INX                       ;
CODE_0488B8:        C9 FF         CMP #$FF                  ;
CODE_0488BA:        D0 F4         BNE CODE_0488B0           ;
CODE_0488BC:        FA            PLX                       ;
CODE_0488BD:        AB            PLB                       ;
CODE_0488BE:        6B            RTL                       ;

CODE_0488BF:        64 F6         STZ $F6                   ;Flag for vertically extendable objects
CODE_0488C1:        C2 30         REP #$30                  ;Accumulator 16-bit - Index 16-bit
CODE_0488C3:        AD EC 0E      LDA $0EEC                 ;
CODE_0488C6:        85 F3         STA $F3                   ;
CODE_0488C8:        64 F7         STZ $F7                   ;
CODE_0488CA:        A6 F3         LDX $F3                   ;
CODE_0488CC:        E2 20         SEP #$20                  ;
CODE_0488CE:        BF 49 89 04   LDA $048949,x             ;
CODE_0488D2:        18            CLC                       ;
CODE_0488D3:        2A            ROL A                     ;
CODE_0488D4:        2A            ROL A                     ;
CODE_0488D5:        29 01         AND #$01                  ;
CODE_0488D7:        85 F5         STA $F5                   ;
CODE_0488D9:        BF 4A 89 04   LDA $04894A,x             ;
CODE_0488DD:        0A            ASL A                     ;
CODE_0488DE:        C2 21         REP #$21                  ;
CODE_0488E0:        A6 F7         LDX $F7                   ;
CODE_0488E2:        65 F5         ADC $F5                   ;
CODE_0488E4:        29 FF 00      AND #$00FF                ;
CODE_0488E7:        C9 80 00      CMP #$0080                ;
CODE_0488EA:        90 03         BCC CODE_0488EF           ;
CODE_0488EC:        09 00 FF      ORA #$FF00                ;
CODE_0488EF:        18            CLC                       ;
CODE_0488F0:        6D FD 0E      ADC $0EFD                 ;
CODE_0488F3:        18            CLC                       ;
CODE_0488F4:        69 08 00      ADC #$0008                ;The change in position of the flow.
CODE_0488F7:        9F 00 20 7F   STA $7F2000,x             ;
CODE_0488FB:        A5 F3         LDA $F3                   ;
CODE_0488FD:        18            CLC                       ;
CODE_0488FE:        69 10 00      ADC #$0010                ;The frequency of the waving.
CODE_048901:        29 FF 01      AND #$01FF                ;
CODE_048904:        85 F3         STA $F3                   ;
CODE_048906:        E6 F7         INC $F7                   ;
CODE_048908:        E6 F7         INC $F7                   ;
CODE_04890A:        A5 F7         LDA $F7                   ;
CODE_04890C:        C9 40 00      CMP #$0040                ;
CODE_04890F:        D0 B9         BNE CODE_0488CA           ;
CODE_048911:        AD EC 0E      LDA $0EEC                 ;
CODE_048914:        18            CLC                       ;
CODE_048915:        69 04 00      ADC #$0004                ;The waving speed.
CODE_048918:        29 FF 01      AND #$01FF                ;
CODE_04891B:        8D EC 0E      STA $0EEC                 ;
CODE_04891E:        E2 30         SEP #$30                  ;
CODE_048920:        8B            PHB                       ;
CODE_048921:        A9 7F         LDA #$7F                  ;
CODE_048923:        48            PHA                       ;
CODE_048924:        AB            PLB                       ;
CODE_048925:        C2 20         REP #$20                  ;
CODE_048927:        A0 3E         LDY #$3E                  ;
CODE_048929:        B9 00 20      LDA $2000,y               ;
CODE_04892C:        99 40 20      STA $2040,y               ;
CODE_04892F:        99 80 20      STA $2080,y               ;
CODE_048932:        99 C0 20      STA $20C0,y               ;
CODE_048935:        99 00 21      STA $2100,y               ;
CODE_048938:        99 40 21      STA $2140,y               ;
CODE_04893B:        99 80 21      STA $2180,y               ;
CODE_04893E:        99 C0 21      STA $21C0,y               ;
CODE_048941:        88            DEY                       ;
CODE_048942:        88            DEY                       ;
CODE_048943:        10 E4         BPL CODE_048929           ;
CODE_048945:        E2 20         SEP #$20                  ;
CODE_048947:        AB            PLB                       ;
CODE_048948:        6B            RTL                       ;

DATA_048949:        dw $0000,$FFFA,$FFF4,$FFEE ;HDMA underwater wavy table
                    dw $FFE7,$FFE1,$FFDB,$FFD5 ;uses one addition-subtraction instruction only
                    dw $FFCF,$FFC8,$FFC2,$FFBC
                    dw $FFB6,$FFB0,$FFAA,$FFA4
                    dw $FF9F,$FF99,$FF93,$FF8D
                    dw $FF88,$FF82,$FF7D,$FF78
                    dw $FF72,$FF6D,$FF68,$FF63
                    dw $FF5E,$FF59,$FF55,$FF50
                    dw $FF4B,$FF47,$FF43,$FF3F
                    dw $FF3B,$FF37,$FF33,$FF2F
                    dw $FF2C,$FF28,$FF25,$FF22
                    dw $FF1F,$FF1C,$FF19,$FF16
                    dw $FF14,$FF12,$FF0F,$FF0D
                    dw $FF0C,$FF0A,$FF08,$FF07
                    dw $FF05,$FF04,$FF03,$FF02
                    dw $FF02,$FF01,$FF01,$FF01
                    dw $FF01,$FF01,$FF01,$FF01
                    dw $FF02,$FF02,$FF03,$FF04
                    dw $FF05,$FF07,$FF08,$FF0A
                    dw $FF0C,$FF0D,$FF0F,$FF12
                    dw $FF14,$FF16,$FF19,$FF1C
                    dw $FF1F,$FF22,$FF25,$FF28
                    dw $FF2C,$FF2F,$FF33,$FF37
                    dw $FF3B,$FF3F,$FF43,$FF47
                    dw $FF4B,$FF50,$FF55,$FF59
                    dw $FF5E,$FF63,$FF68,$FF6D
                    dw $FF72,$FF78,$FF7D,$FF82
                    dw $FF88,$FF8D,$FF93,$FF99
                    dw $FF9F,$FFA4,$FFAA,$FFB0
                    dw $FFB6,$FFBC,$FFC2,$FFC8
                    dw $FFCF,$FFD5,$FFDB,$FFE1
                    dw $FFE7,$FFEE,$FFF4,$FFFA
                    dw $0000,$0006,$000C,$0012
                    dw $0019,$001F,$0025,$002B
                    dw $0031,$0038,$003E,$0044
                    dw $004A,$0050,$0056,$005C
                    dw $0061,$0067,$006D,$0073
                    dw $0078,$007E,$0083,$0088
                    dw $008E,$0093,$0098,$009D
                    dw $00A2,$00A7,$00AB,$00B0
                    dw $00B5,$00B9,$00BD,$00C1
                    dw $00C5,$00C9,$00CD,$00D1
                    dw $00D4,$00D8,$00DB,$00DE
                    dw $00E1,$00E4,$00E7,$00EA
                    dw $00EC,$00EE,$00F1,$00F3
                    dw $00F4,$00F6,$00F8,$00F9
                    dw $00FB,$00FC,$00FD,$00FE
                    dw $00FE,$00FF,$00FF,$00FF
                    dw $00FF,$00FF,$00FF,$00FF
                    dw $00FE,$00FE,$00FD,$00FC
                    dw $00FB,$00F9,$00F8,$00F6
                    dw $00F4,$00F3,$00F1,$00EE
                    dw $00EC,$00EA,$00E7,$00E4
                    dw $00E1,$00DE,$00DB,$00D8
                    dw $00D4,$00D1,$00CD,$00C9
                    dw $00C5,$00C1,$00BD,$00B9
                    dw $00B5,$00B0,$00AB,$00A7
                    dw $00A2,$009D,$0098,$0093
                    dw $008E,$0088,$0083,$007E
                    dw $0078,$0073,$006D,$0067
                    dw $0061,$005C,$0056,$0050
                    dw $004A,$0044,$003E,$0038
                    dw $0031,$002B,$0025,$001F
                    dw $0019,$0012,$000C,$0006

CODE_048B49:        8B            PHB                       ;
CODE_048B4A:        4B            PHK                       ;
CODE_048B4B:        AB            PLB                       ;
CODE_048B4C:        80 0B         BRA CODE_048B59           ;

CODE_048B4E:        8B            PHB                       ;
CODE_048B4F:        4B            PHK                       ;
CODE_048B50:        AB            PLB                       ;
CODE_048B51:        AD DC 0E      LDA $0EDC                 ;
CODE_048B54:        F0 2F         BEQ CODE_048B85           ;
CODE_048B56:        20 77 8C      JSR CODE_048C77           ;
CODE_048B59:        DA            PHX                       ;
CODE_048B5A:        5A            PHY                       ;
CODE_048B5B:        AD D6 0E      LDA $0ED6                 ;
CODE_048B5E:        29 80         AND #$80                  ;
CODE_048B60:        8D D6 0E      STA $0ED6                 ;
CODE_048B63:        A5 5C         LDA $5C                   ;
CODE_048B65:        D0 0B         BNE CODE_048B72           ;
CODE_048B67:        20 28 8C      JSR CODE_048C28           ;
CODE_048B6A:        A9 06         LDA #$06                  ;
CODE_048B6C:        8D 73 07      STA $0773                 ;
CODE_048B6F:        4C 7E 8B      JMP CODE_048B7E           ;

CODE_048B72:        C9 01         CMP #$01                  ;
CODE_048B74:        D0 0D         BNE CODE_048B83           ;
CODE_048B76:        20 87 8B      JSR CODE_048B87           ;
CODE_048B79:        A9 01         LDA #$01                  ;
CODE_048B7B:        8D D4 0E      STA $0ED4                 ;
CODE_048B7E:        A9 01         LDA #$01                  ;
CODE_048B80:        8D DE 0E      STA $0EDE                 ;
CODE_048B83:        7A            PLY                       ;
CODE_048B84:        FA            PLX                       ;
CODE_048B85:        AB            PLB                       ;
CODE_048B86:        6B            RTL                       ;

CODE_048B87:        C2 30         REP #$30                  ;
CODE_048B89:        A9 0E 00      LDA #$000E                ;
CODE_048B8C:        85 F7         STA $F7                   ;
CODE_048B8E:        AD D9 0E      LDA $0ED9                 ;
CODE_048B91:        85 00         STA $00                   ;
CODE_048B93:        AF 00 20 7F   LDA $7F2000               ;
CODE_048B97:        AA            TAX                       ;
CODE_048B98:        A5 F3         LDA $F3                   ;
CODE_048B9A:        EB            XBA                       ;
CODE_048B9B:        9F 02 20 7F   STA $7F2002,x             ;
CODE_048B9F:        1A            INC A                     ;
CODE_048BA0:        9F 3C 20 7F   STA $7F203C,x             ;
CODE_048BA4:        DA            PHX                       ;
CODE_048BA5:        A6 00         LDX $00                   ;
CODE_048BA7:        BF 00 30 7F   LDA $7F3000,x             ;
CODE_048BAB:        29 FF 00      AND #$00FF                ;
CODE_048BAE:        0A            ASL A                     ;
CODE_048BAF:        0A            ASL A                     ;
CODE_048BB0:        0A            ASL A                     ;
CODE_048BB1:        A8            TAY                       ;
CODE_048BB2:        FA            PLX                       ;
CODE_048BB3:        B9 09 BD      LDA $BD09,y               ;
CODE_048BB6:        9F 04 20 7F   STA $7F2004,x             ;
CODE_048BBA:        B9 0B BD      LDA $BD0B,y               ;
CODE_048BBD:        9F 06 20 7F   STA $7F2006,x             ;
CODE_048BC1:        B9 0D BD      LDA $BD0D,y               ;
CODE_048BC4:        9F 3E 20 7F   STA $7F203E,x             ;
CODE_048BC8:        B9 0F BD      LDA $BD0F,y               ;
CODE_048BCB:        9F 40 20 7F   STA $7F2040,x             ;
CODE_048BCF:        E8            INX                       ;
CODE_048BD0:        E8            INX                       ;
CODE_048BD1:        E8            INX                       ;
CODE_048BD2:        E8            INX                       ;
CODE_048BD3:        A5 00         LDA $00                   ;
CODE_048BD5:        18            CLC                       ;
CODE_048BD6:        69 10 00      ADC #$0010                ;
CODE_048BD9:        85 00         STA $00                   ;
CODE_048BDB:        C6 F7         DEC $F7                   ;
CODE_048BDD:        D0 C5         BNE CODE_048BA4           ;
CODE_048BDF:        AF 00 20 7F   LDA $7F2000               ;
CODE_048BE3:        AA            TAX                       ;
CODE_048BE4:        A9 FF FF      LDA #$FFFF                ;
CODE_048BE7:        9F 76 20 7F   STA $7F2076,x             ;
CODE_048BEB:        AF 00 20 7F   LDA $7F2000               ;
CODE_048BEF:        18            CLC                       ;
CODE_048BF0:        69 74 00      ADC #$0074                ;
CODE_048BF3:        8F 00 20 7F   STA $7F2000               ;
CODE_048BF7:        AD D9 0E      LDA $0ED9                 ;
CODE_048BFA:        1A            INC A                     ;
CODE_048BFB:        29 0F 00      AND #$000F                ;
CODE_048BFE:        D0 0F         BNE CODE_048C0F           ;
CODE_048C00:        AD D9 0E      LDA $0ED9                 ;
CODE_048C03:        29 F0 FF      AND #$FFF0                ;
CODE_048C06:        18            CLC                       ;
CODE_048C07:        69 E0 00      ADC #$00E0                ;
CODE_048C0A:        8D D9 0E      STA $0ED9                 ;
CODE_048C0D:        80 03         BRA CODE_048C12           ;

CODE_048C0F:        EE D9 0E      INC $0ED9                 ;
CODE_048C12:        AD D9 0E      LDA $0ED9                 ;
CODE_048C15:        C9 80 0A      CMP #$0A80                ;
CODE_048C18:        90 03         BCC CODE_048C1D           ;
CODE_048C1A:        9C D9 0E      STZ $0ED9                 ;
CODE_048C1D:        A5 F3         LDA $F3                   ;
CODE_048C1F:        18            CLC                       ;
CODE_048C20:        69 00 02      ADC #$0200                ;
CODE_048C23:        85 F3         STA $F3                   ;
CODE_048C25:        E2 30         SEP #$30                  ;
CODE_048C27:        60            RTS                       ;

CODE_048C28:        C2 30         REP #$30                  ;
CODE_048C2A:        AE 00 1A      LDX $1A00                 ;
CODE_048C2D:        A5 F3         LDA $F3                   ;
CODE_048C2F:        9D 02 1A      STA $1A02,x               ;
CODE_048C32:        18            CLC                       ;
CODE_048C33:        69 00 01      ADC #$0100                ;
CODE_048C36:        9D 08 1A      STA $1A08,x               ;
CODE_048C39:        18            CLC                       ;
CODE_048C3A:        69 00 01      ADC #$0100                ;
CODE_048C3D:        85 F3         STA $F3                   ;
CODE_048C3F:        A9 00 01      LDA #$0100                ;
CODE_048C42:        9D 04 1A      STA $1A04,x               ;
CODE_048C45:        9D 0A 1A      STA $1A0A,x               ;
CODE_048C48:        A5 F3         LDA $F3                   ;
CODE_048C4A:        29 00 02      AND #$0200                ;
CODE_048C4D:        D0 08         BNE CODE_048C57           ;
CODE_048C4F:        A9 2C 2C      LDA #$2C2C                ;
CODE_048C52:        A0 2D 2C      LDY #$2C2D                ;
CODE_048C55:        80 06         BRA CODE_048C5D           ;

CODE_048C57:        A9 2E 2C      LDA #$2C2E                ;
CODE_048C5A:        A0 2F 2C      LDY #$2C2F                ;
CODE_048C5D:        9D 06 1A      STA $1A06,x               ;
CODE_048C60:        98            TYA                       ;
CODE_048C61:        9D 0C 1A      STA $1A0C,x               ;
CODE_048C64:        A9 FF FF      LDA #$FFFF                ;
CODE_048C67:        9D 0E 1A      STA $1A0E,x               ;
CODE_048C6A:        AD 00 1A      LDA $1A00                 ;
CODE_048C6D:        18            CLC                       ;
CODE_048C6E:        69 0C 00      ADC #$000C                ;
CODE_048C71:        8D 00 1A      STA $1A00                 ;
CODE_048C74:        E2 30         SEP #$30                  ;
CODE_048C76:        60            RTS                       ;

CODE_048C77:        C2 30         REP #$30                  ;
CODE_048C79:        AD EE 0E      LDA $0EEE                 ;
CODE_048C7C:        18            CLC                       ;
CODE_048C7D:        69 20 01      ADC #$0120                ;
CODE_048C80:        EB            XBA                       ;
CODE_048C81:        85 F3         STA $F3                   ;
CODE_048C83:        E2 30         SEP #$30                  ;
CODE_048C85:        A5 F3         LDA $F3                   ;
CODE_048C87:        29 01         AND #$01                  ;
CODE_048C89:        D0 04         BNE CODE_048C8F           ;
CODE_048C8B:        A9 58         LDA #$58                  ;
CODE_048C8D:        80 02         BRA CODE_048C91           ;

CODE_048C8F:        A9 5C         LDA #$5C                  ;
CODE_048C91:        85 F3         STA $F3                   ;
CODE_048C93:        A5 F4         LDA $F4                   ;
CODE_048C95:        4A            LSR A                     ;
CODE_048C96:        4A            LSR A                     ;
CODE_048C97:        4A            LSR A                     ;
CODE_048C98:        18            CLC                       ;
CODE_048C99:        69 80         ADC #$80                  ;
CODE_048C9B:        85 F4         STA $F4                   ;
CODE_048C9D:        60            RTS                       ;

;Portion of gate at brown castle 8x8 tilemap at level end. Give priority so Mario goes behind the scenes.

;Small castle
DATA_048C9E:        db $00,$00,$80,$07,$62,$2E,$72,$2E ;$00,$00,$80,$07. Those byte combinations are unknown
                    db $73,$2E,$72,$2E,$00,$00,$80,$07 ;Remaining: Tile, properties, tile, properties, etc.
                    db $63,$2E,$73,$2E,$72,$2E,$73,$2E
                    db $00,$00,$80,$07,$64,$2E,$74,$2E
                    db $4E,$2E,$74,$2E,$FF,$FF

;Big castle
DATA_048CC4:        db $00,$00,$80,$07,$73,$2E,$72,$2E
                    db $73,$2E,$72,$2E,$00,$00,$80,$07
                    db $72,$2E,$73,$2E,$72,$2E,$73,$2E
                    db $00,$00,$80,$07,$5E,$2E,$66,$2E
                    db $67,$6E,$66,$AE,$FF,$FF

PNTR_048CEA:        dw DATA_048C9E ;small castle
                    dw DATA_048CC4 ;big castle

CODE_048CEE:        8B            PHB                       ;
CODE_048CEF:        4B            PHK                       ;
CODE_048CF0:        AB            PLB                       ;
CODE_048CF1:        A9 04         LDA #$04                  ;
CODE_048CF3:        85 F5         STA $F5                   ;
CODE_048CF5:        AD E6 0E      LDA $0EE6                 ;
CODE_048CF8:        29 01         AND #$01                  ;
CODE_048CFA:        0A            ASL A                     ;
CODE_048CFB:        C2 30         REP #$30                  ;
CODE_048CFD:        29 02 00      AND #$0002                ;
CODE_048D00:        A8            TAY                       ;
CODE_048D01:        B9 EA 8C      LDA $8CEA,y               ;
CODE_048D04:        85 F3         STA $F3                   ;
CODE_048D06:        AE 00 17      LDX $1700                 ;
CODE_048D09:        A0 00 00      LDY #$0000                ;
CODE_048D0C:        B7 F3         LDA [$F3],y               ;
CODE_048D0E:        9D 02 17      STA $1702,x               ;
CODE_048D11:        C8            INY                       ;
CODE_048D12:        C8            INY                       ;
CODE_048D13:        E8            INX                       ;
CODE_048D14:        E8            INX                       ;
CODE_048D15:        C9 FF FF      CMP #$FFFF                ;
CODE_048D18:        D0 F2         BNE CODE_048D0C           ;
CODE_048D1A:        AE 00 17      LDX $1700                 ;
CODE_048D1D:        AD F4 0E      LDA $0EF4                 ;
CODE_048D20:        29 20 00      AND #$0020                ;
CODE_048D23:        F0 0C         BEQ CODE_048D31           ;
CODE_048D25:        AD F4 0E      LDA $0EF4                 ;
CODE_048D28:        29 DF 0F      AND #$0FDF                ;
CODE_048D2B:        49 00 04      EOR #$0400                ;
CODE_048D2E:        8D F4 0E      STA $0EF4                 ;
CODE_048D31:        AD F4 0E      LDA $0EF4                 ;
CODE_048D34:        18            CLC                       ;
CODE_048D35:        69 C1 02      ADC #$02C1                ;
CODE_048D38:        29 DF 0F      AND #$0FDF                ;
CODE_048D3B:        A8            TAY                       ;
CODE_048D3C:        EB            XBA                       ;
CODE_048D3D:        9D 02 17      STA $1702,x               ;
CODE_048D40:        98            TYA                       ;
CODE_048D41:        C8            INY                       ;
CODE_048D42:        98            TYA                       ;
CODE_048D43:        29 20 00      AND #$0020                ;
CODE_048D46:        F0 08         BEQ CODE_048D50           ;
CODE_048D48:        98            TYA                       ;
CODE_048D49:        29 DF 0F      AND #$0FDF                ;
CODE_048D4C:        49 00 04      EOR #$0400                ;
CODE_048D4F:        A8            TAY                       ;
CODE_048D50:        98            TYA                       ;
CODE_048D51:        EB            XBA                       ;
CODE_048D52:        9D 0E 17      STA $170E,x               ;
CODE_048D55:        C8            INY                       ;
CODE_048D56:        98            TYA                       ;
CODE_048D57:        EB            XBA                       ;
CODE_048D58:        9D 1A 17      STA $171A,x               ;
CODE_048D5B:        AD 00 17      LDA $1700                 ;
CODE_048D5E:        18            CLC                       ;
CODE_048D5F:        69 24 00      ADC #$0024                ;
CODE_048D62:        8D 00 17      STA $1700                 ;
CODE_048D65:        E2 30         SEP #$30                  ;
CODE_048D67:        9C E6 0E      STZ $0EE6                 ;
CODE_048D6A:        A9 06         LDA #$06                  ;
CODE_048D6C:        8D 73 07      STA $0773                 ;
CODE_048D6F:        AB            PLB                       ;
CODE_048D70:        6B            RTL                       ;

CODE_048D71:        AC 00 1A      LDY $1A00                 ;
CODE_048D74:        B9 F8 19      LDA $19F8,y               ;
CODE_048D77:        C9 24 00      CMP #$0024                ;
CODE_048D7A:        F0 05         BEQ CODE_048D81           ;
CODE_048D7C:        C9 A4 10      CMP #$10A4                ;
CODE_048D7F:        D0 40         BNE CODE_048DC1           ;
CODE_048D81:        AD CE 0E      LDA $0ECE                 ;
CODE_048D84:        29 FF 00      AND #$00FF                ;
CODE_048D87:        F0 03         BEQ CODE_048D8C           ;
CODE_048D89:        4C 14 8E      JMP CODE_048E14           ;

CODE_048D8C:        EE CE 0E      INC $0ECE                 ;
CODE_048D8F:        AE 00 17      LDX $1700                 ;
CODE_048D92:        AD CC 0E      LDA $0ECC                 ;
CODE_048D95:        3A            DEC A                     ;
CODE_048D96:        29 1F 04      AND #$041F                ;
CODE_048D99:        18            CLC                       ;
CODE_048D9A:        69 40 03      ADC #$0340                ;
CODE_048D9D:        EB            XBA                       ;
CODE_048D9E:        9D 02 17      STA $1702,x               ;
CODE_048DA1:        A9 80 07      LDA #$0780                ;
CODE_048DA4:        9D 04 17      STA $1704,x               ;
CODE_048DA7:        A9 0D 0A      LDA #$0A0D                ;
CODE_048DAA:        9D 06 17      STA $1706,x               ;
CODE_048DAD:        A9 1D 0A      LDA #$0A1D                ;
CODE_048DB0:        9D 08 17      STA $1708,x               ;
CODE_048DB3:        A9 0F 0A      LDA #$0A0F                ;
CODE_048DB6:        9D 0A 17      STA $170A,x               ;
CODE_048DB9:        A9 1F 0A      LDA #$0A1F                ;
CODE_048DBC:        9D 0C 17      STA $170C,x               ;
CODE_048DBF:        80 45         BRA CODE_048E06           ;

CODE_048DC1:        C9 08 0A      CMP #$0A08                ;
CODE_048DC4:        D0 4E         BNE CODE_048E14           ;
CODE_048DC6:        AD CF 0E      LDA $0ECF                 ;
CODE_048DC9:        29 FF 00      AND #$00FF                ;
CODE_048DCC:        F0 46         BEQ CODE_048E14           ;
CODE_048DCE:        9C CE 0E      STZ $0ECE                 ;
CODE_048DD1:        A5 43         LDA $43                   ;
CODE_048DD3:        D0 05         BNE CODE_048DDA           ;
CODE_048DD5:        AD CC 0E      LDA $0ECC                 ;
CODE_048DD8:        F0 3A         BEQ CODE_048E14           ;
CODE_048DDA:        AE 00 17      LDX $1700                 ;
CODE_048DDD:        AD CC 0E      LDA $0ECC                 ;
CODE_048DE0:        18            CLC                       ;
CODE_048DE1:        69 40 03      ADC #$0340                ;
CODE_048DE4:        EB            XBA                       ;
CODE_048DE5:        9D 02 17      STA $1702,x               ;
CODE_048DE8:        A9 80 07      LDA #$0780                ;
CODE_048DEB:        9D 04 17      STA $1704,x               ;
CODE_048DEE:        A9 0C 0A      LDA #$0A0C                ;
CODE_048DF1:        9D 06 17      STA $1706,x               ;
CODE_048DF4:        A9 1C 0A      LDA #$0A1C                ;
CODE_048DF7:        9D 08 17      STA $1708,x               ;
CODE_048DFA:        A9 0E 0A      LDA #$0A0E                ;
CODE_048DFD:        9D 0A 17      STA $170A,x               ;
CODE_048E00:        A9 1E 0A      LDA #$0A1E                ;
CODE_048E03:        9D 0C 17      STA $170C,x               ;
CODE_048E06:        A9 FF FF      LDA #$FFFF                ;
CODE_048E09:        9D 0E 17      STA $170E,x               ;
CODE_048E0C:        8A            TXA                       ;
CODE_048E0D:        18            CLC                       ;
CODE_048E0E:        69 0C 00      ADC #$000C                ;
CODE_048E11:        8D 00 17      STA $1700                 ;
CODE_048E14:        6B            RTL                       ;

CODE_048E15:        8B            PHB                       ;\
CODE_048E16:        4B            PHK                       ; |Setup program bank
CODE_048E17:        AB            PLB                       ;/
CODE_048E18:        C8            INY                       ;\Pass level header
CODE_048E19:        C8            INY                       ;/
CODE_048E1A:        A5 FA         LDA $FA                   ;\
CODE_048E1C:        85 F3         STA $F3                   ; |
CODE_048E1E:        A5 FB         LDA $FB                   ; |Copy low, high and bank bytes
CODE_048E20:        85 F4         STA $F4                   ; |of the level objects pointer.
CODE_048E22:        A5 FC         LDA $FC                   ; |
CODE_048E24:        85 F5         STA $F5                   ;/
CODE_048E26:        B7 F3         LDA [$F3],y               ;\Load level objects
CODE_048E28:        C2 20         REP #$20                  ; |16-bit A
CODE_048E2A:        29 7F 00      AND #$007F                ; |Filter
CODE_048E2D:        AA            TAX                       ; |to index
CODE_048E2E:        E2 20         SEP #$20                  ;/ 8-bit A. was the register width change really needed
CODE_048E30:        BD 43 8E      LDA $8E43,x               ;\
CODE_048E33:        85 00         STA $00                   ; |Load indirect pointers for object handling
CODE_048E35:        BD 44 8E      LDA $8E44,x               ; |
CODE_048E38:        85 01         STA $01                   ; |
CODE_048E3A:        E2 10         SEP #$10                  ;/ 8-bit XY
CODE_048E3C:        A6 9E         LDX $9E                   ;Sprite index in X
CODE_048E3E:        A4 F7         LDY $F7                   ;
CODE_048E40:        6C 00 00      JMP ($0000)               ;

PNTR_048E43:        dw CODE_048EB5
                    dw CODE_048EA3
                    dw CODE_048EA3
                    dw CODE_048EA3
                    dw CODE_048EA3
                    dw CODE_048EA3
                    dw CODE_048EA3
                    dw CODE_048EA3
                    dw CODE_048EBB
                    dw CODE_048EA5
                    dw CODE_048EA3
                    dw CODE_048EA3
                    dw CODE_048EA3
                    dw CODE_048EA3
                    dw CODE_048EA3
                    dw CODE_048EA3
                    dw CODE_048F44 ;related to castles at level end/begin?
                    dw CODE_048EA3
                    dw CODE_048EA3
                    dw CODE_048EA3
                    dw CODE_048FD2
                    dw CODE_048EA3
                    dw CODE_048EA3
                    dw CODE_048EA3
                    dw CODE_04901B
                    dw CODE_04903E
                    dw CODE_04907A
                    dw CODE_0490A0
                    dw CODE_0490C2
                    dw CODE_0490EB
                    dw CODE_049121
                    dw CODE_04915C
                    dw CODE_04917E
                    dw CODE_048EA3
                    dw CODE_048EA3
                    dw CODE_048EA3
                    dw CODE_048EA3
                    dw CODE_048EA3
                    dw CODE_048EA3
                    dw CODE_048EA3
                    dw CODE_0491B3
                    dw CODE_048EA3
                    dw CODE_048EA3
                    dw CODE_048EA3
                    dw CODE_048EA3
                    dw CODE_048EA3
                    dw CODE_048EA3
                    dw CODE_048EA3

CODE_048EA3:        AB            PLB                       ;
CODE_048EA4:        6B            RTL                       ;

CODE_048EA5:        20 C0 91      JSR CODE_0491C0           ;
CODE_048EA8:        22 13 AD 03   JSL CODE_03AD13           ;
CODE_048EAC:        A6 07         LDX $07                   ;
CODE_048EAE:        A9 00         LDA #$00                  ;
CODE_048EB0:        9D A1 06      STA $06A1,x               ;
CODE_048EB3:        AB            PLB                       ;
CODE_048EB4:        6B            RTL                       ;

CODE_048EB5:        A2 00         LDX #$00                  ;
CODE_048EB7:        A0 0F         LDY #$0F                  ;
CODE_048EB9:        80 13         BRA CODE_048ECE           ;

CODE_048EBB:        8A            TXA                       ;
CODE_048EBC:        48            PHA                       ;
CODE_048EBD:        A2 01         LDX #$01                  ;
CODE_048EBF:        A0 0F         LDY #$0F                  ;
CODE_048EC1:        A9 44         LDA #$44                  ;
CODE_048EC3:        22 0B AD 03   JSL CODE_03AD0B           ;
CODE_048EC7:        68            PLA                       ;
CODE_048EC8:        AA            TAX                       ;
CODE_048EC9:        20 C0 91      JSR CODE_0491C0           ;
CODE_048ECC:        A2 01         LDX #$01                  ;
CODE_048ECE:        A9 40         LDA #$40                  ;
CODE_048ED0:        22 0B AD 03   JSL CODE_03AD0B           ;
CODE_048ED4:        AB            PLB                       ;
CODE_048ED5:        6B            RTL                       ;

DATA_048ED6:        db $00,$00,$00,$DF,$C6,$C5,$DE,$00 ;small castle/top of big castle map16 tilemap
                    db $00,$00,$00,$00,$00,$D4,$DB,$DA
                    db $D0,$00,$00,$00,$00,$00,$E3,$E2
                    db $C7,$C4,$E1,$E0,$00,$00,$00,$00
                    db $D4,$D3,$CD,$CC,$D1,$D0,$00,$00
                    db $E6,$00,$D9,$D8,$DD,$DC,$D6,$D5

DATA_048F06:        db $E5,$E4,$CB,$CA,$C9,$C8,$C7,$C4 ;bottom of big castle tilemap.
                    db $C3,$C2,$C1,$C0,$D4,$D3,$D2,$CD ;first 2 bytes are for the leftmost flag, which
                    db $CC,$CD,$CC,$D2,$D1,$D0,$D9,$D8 ;belongs to the top.
                    db $D7,$DD,$DC,$DD,$DC,$D7,$D6,$D5
                    db $D9,$D8,$D7,$D7,$D7,$D7,$D7,$D7
                    db $D6,$D5,$D9,$D8,$CF,$CE,$CF,$CE
                    db $CF,$CE,$D6,$D5,$D9,$D8,$DD,$DC
                    db $DD,$DC,$DD,$DC,$D6,$D5

CODE_048F44:        20 C0 91      JSR CODE_0491C0           ;
CODE_048F47:        84 07         STY $07                   ;
CODE_048F49:        9C E7 0E      STZ $0EE7                 ;
CODE_048F4C:        98            TYA                       ;
CODE_048F4D:        D0 02         BNE CODE_048F51           ;
CODE_048F4F:        A0 08         LDY #$08                  ;
CODE_048F51:        C8            INY                       ;
CODE_048F52:        22 13 AD 03   JSL CODE_03AD13           ;
CODE_048F56:        DA            PHX                       ;
CODE_048F57:        BC 00 13      LDY $1300,x               ;
CODE_048F5A:        A6 07         LDX $07                   ;
CODE_048F5C:        A9 16         LDA #$16                  ;
CODE_048F5E:        85 06         STA $06                   ;
CODE_048F60:        B9 D6 8E      LDA $8ED6,y               ;
CODE_048F63:        9D A1 06      STA $06A1,x               ;
CODE_048F66:        E8            INX                       ;
CODE_048F67:        A5 06         LDA $06                   ;
CODE_048F69:        F0 07         BEQ CODE_048F72           ;
CODE_048F6B:        98            TYA                       ;
CODE_048F6C:        18            CLC                       ;
CODE_048F6D:        69 0A         ADC #$0A                  ;
CODE_048F6F:        A8            TAY                       ;
CODE_048F70:        C6 06         DEC $06                   ;
CODE_048F72:        E0 0B         CPX #$0B                  ;
CODE_048F74:        D0 EA         BNE CODE_048F60           ;
CODE_048F76:        FA            PLX                       ;
CODE_048F77:        A5 07         LDA $07                   ;
CODE_048F79:        F0 08         BEQ CODE_048F83           ;
CODE_048F7B:        BD 00 13      LDA $1300,x               ;
CODE_048F7E:        D0 03         BNE CODE_048F83           ;
CODE_048F80:        9C AB 06      STZ $06AB                 ;
CODE_048F83:        AD 25 07      LDA $0725                 ;
CODE_048F86:        F0 37         BEQ CODE_048FBF           ;
CODE_048F88:        BD 00 13      LDA $1300,x               ;
CODE_048F8B:        C9 05         CMP #$05                  ;
CODE_048F8D:        D0 30         BNE CODE_048FBF           ;
CODE_048F8F:        22 1B AD 03   JSL CODE_03AD1B           ;
CODE_048F93:        48            PHA                       ;
CODE_048F94:        22 23 AD 03   JSL CODE_03AD23           ;
CODE_048F98:        68            PLA                       ;
CODE_048F99:        18            CLC                       ;
CODE_048F9A:        69 08         ADC #$08                  ;
CODE_048F9C:        9D 1A 02      STA $021A,x               ;
CODE_048F9F:        AD 25 07      LDA $0725                 ;
CODE_048FA2:        69 00         ADC #$00                  ;
CODE_048FA4:        95 79         STA $79,x                 ;
CODE_048FA6:        A9 01         LDA #$01                  ;
CODE_048FA8:        95 BC         STA $BC,x                 ;
CODE_048FAA:        95 10         STA $10,x                 ;
CODE_048FAC:        A9 90         LDA #$90                  ;
CODE_048FAE:        9D 38 02      STA $0238,x               ;
CODE_048FB1:        A9 31         LDA #$31                  ;\
CODE_048FB3:        95 1C         STA $1C,x                 ;/Sprite to generate: Star Flag
CODE_048FB5:        EE E7 0E      INC $0EE7                 ;
CODE_048FB8:        A5 07         LDA $07                   ;
CODE_048FBA:        F0 03         BEQ CODE_048FBF           ;
CODE_048FBC:        EE E7 0E      INC $0EE7                 ;
CODE_048FBF:        AD 25 07      LDA $0725                 ;
CODE_048FC2:        F0 0C         BEQ CODE_048FD0           ;
CODE_048FC4:        AD AC 06      LDA $06AC                 ;
CODE_048FC7:        C9 56         CMP #$56                  ;
CODE_048FC9:        D0 05         BNE CODE_048FD0           ;
CODE_048FCB:        A9 FB         LDA #$FB                  ;
CODE_048FCD:        8D AC 06      STA $06AC                 ;
CODE_048FD0:        AB            PLB                       ;
CODE_048FD1:        6B            RTL                       ;

CODE_048FD2:        20 C0 91      JSR CODE_0491C0           ;
CODE_048FD5:        22 13 AD 03   JSL CODE_03AD13           ;
CODE_048FD9:        AD A1 06      LDA $06A1                 ;
CODE_048FDC:        85 F3         STA $F3                   ;
CODE_048FDE:        C9 65         CMP #$65                  ;
CODE_048FE0:        F0 03         BEQ CODE_048FE5           ;
CODE_048FE2:        3A            DEC A                     ;
CODE_048FE3:        80 01         BRA CODE_048FE6           ;

CODE_048FE5:        1A            INC A                     ;
CODE_048FE6:        85 F4         STA $F4                   ;
CODE_048FE8:        A5 07         LDA $07                   ;
CODE_048FEA:        A8            TAY                       ;
CODE_048FEB:        29 01         AND #$01                  ;
CODE_048FED:        F0 0B         BEQ CODE_048FFA           ;
CODE_048FEF:        A5 F4         LDA $F4                   ;
CODE_048FF1:        99 A1 06      STA $06A1,y               ;
CODE_048FF4:        DE 00 13      DEC $1300,x               ;
CODE_048FF7:        30 0E         BMI CODE_049007           ;
CODE_048FF9:        C8            INY                       ;
CODE_048FFA:        A5 F3         LDA $F3                   ;
CODE_048FFC:        99 A1 06      STA $06A1,y               ;
CODE_048FFF:        DE 00 13      DEC $1300,x               ;
CODE_049002:        30 03         BMI CODE_049007           ;
CODE_049004:        C8            INY                       ;
CODE_049005:        80 E8         BRA CODE_048FEF           ;

CODE_049007:        AB            PLB                       ;
CODE_049008:        6B            RTL                       ;

DATA_049009:        db $07,$07,$06,$05,$04,$03,$02,$01 ;Y-length of the 'cemented stairs' segments.
                    db $00                             ;1 byte more means 1 additional block down

DATA_049012:        db $03,$03,$04,$05,$06,$07,$08,$09 ;Y-PLACEMENT of the cemented stair blocks relative from the top
                    db $0A                             ;1 Byte more means 16 pixels lower

CODE_04901B:        20 C0 91      JSR CODE_0491C0           ;
CODE_04901E:        22 13 AD 03   JSL CODE_03AD13           ;
CODE_049022:        90 05         BCC CODE_049029           ;
CODE_049024:        A9 09         LDA #$09                  ;
CODE_049026:        8D 34 07      STA $0734                 ;
CODE_049029:        CE 34 07      DEC $0734                 ;
CODE_04902C:        AC 34 07      LDY $0734                 ;
CODE_04902F:        BE 12 90      LDX $9012,y               ;
CODE_049032:        B9 09 90      LDA $9009,y               ;
CODE_049035:        A8            TAY                       ;
CODE_049036:        A9 64         LDA #$64                  ;
CODE_049038:        22 0B AD 03   JSL CODE_03AD0B           ;
CODE_04903C:        AB            PLB                       ;
CODE_04903D:        6B            RTL                       ;

CODE_04903E:        20 C0 91      JSR CODE_0491C0           ;
CODE_049041:        22 13 AD 03   JSL CODE_03AD13           ;
CODE_049045:        A4 07         LDY $07                   ;
CODE_049047:        BD 00 13      LDA $1300,x               ;
CODE_04904A:        D0 13         BNE CODE_04905F           ;
CODE_04904C:        A9 F3         LDA #$F3                  ;
CODE_04904E:        99 A1 06      STA $06A1,y               ;
CODE_049051:        C8            INY                       ;
CODE_049052:        B9 A1 06      LDA $06A1,y               ;
CODE_049055:        D0 12         BNE CODE_049069           ;
CODE_049057:        A9 F4         LDA #$F4                  ;
CODE_049059:        99 A1 06      STA $06A1,y               ;
CODE_04905C:        C8            INY                       ;
CODE_04905D:        80 0A         BRA CODE_049069           ;

CODE_04905F:        B9 A1 06      LDA $06A1,y               ;
CODE_049062:        D0 0F         BNE CODE_049073           ;
CODE_049064:        A9 F5         LDA #$F5                  ;
CODE_049066:        99 A1 06      STA $06A1,y               ;
CODE_049069:        B9 A1 06      LDA $06A1,y               ;
CODE_04906C:        D0 05         BNE CODE_049073           ;
CODE_04906E:        A9 F6         LDA #$F6                  ;
CODE_049070:        99 A1 06      STA $06A1,y               ;
CODE_049073:        C8            INY                       ;
CODE_049074:        C0 0D         CPY #$0D                  ;
CODE_049076:        D0 F1         BNE CODE_049069           ;
CODE_049078:        AB            PLB                       ;
CODE_049079:        6B            RTL                       ;

CODE_04907A:        20 C0 91      JSR CODE_0491C0           ;
CODE_04907D:        22 13 AD 03   JSL CODE_03AD13           ;
CODE_049081:        A4 07         LDY $07                   ;
CODE_049083:        A9 67         LDA #$67                  ;
CODE_049085:        99 A1 06      STA $06A1,y               ;
CODE_049088:        C8            INY                       ;
CODE_049089:        C8            INY                       ;
CODE_04908A:        B9 A1 06      LDA $06A1,y               ;
CODE_04908D:        C9 65         CMP #$65                  ;
CODE_04908F:        F0 04         BEQ CODE_049095           ;
CODE_049091:        C9 66         CMP #$66                  ;
CODE_049093:        D0 09         BNE CODE_04909E           ;
CODE_049095:        A9 67         LDA #$67                  ;
CODE_049097:        99 A1 06      STA $06A1,y               ;
CODE_04909A:        C8            INY                       ;
CODE_04909B:        C8            INY                       ;
CODE_04909C:        80 EC         BRA CODE_04908A           ;

CODE_04909E:        AB            PLB                       ;
CODE_04909F:        6B            RTL                       ;

CODE_0490A0:        20 C0 91      JSR CODE_0491C0           ;
CODE_0490A3:        22 13 AD 03   JSL CODE_03AD13           ;
CODE_0490A7:        A4 07         LDY $07                   ;
CODE_0490A9:        A9 F7         LDA #$F7                  ;
CODE_0490AB:        99 A1 06      STA $06A1,y               ;
CODE_0490AE:        C8            INY                       ;
CODE_0490AF:        B9 A1 06      LDA $06A1,y               ;
CODE_0490B2:        C9 EB         CMP #$EB                  ;
CODE_0490B4:        F0 0A         BEQ CODE_0490C0           ;
CODE_0490B6:        A9 F8         LDA #$F8                  ;
CODE_0490B8:        99 A1 06      STA $06A1,y               ;
CODE_0490BB:        C8            INY                       ;
CODE_0490BC:        C0 0D         CPY #$0D                  ;
CODE_0490BE:        D0 EF         BNE CODE_0490AF           ;
CODE_0490C0:        AB            PLB                       ;
CODE_0490C1:        6B            RTL                       ;

CODE_0490C2:        20 C0 91      JSR CODE_0491C0           ;
CODE_0490C5:        22 13 AD 03   JSL CODE_03AD13           ;
CODE_0490C9:        A4 07         LDY $07                   ;
CODE_0490CB:        B9 A1 06      LDA $06A1,y               ;
CODE_0490CE:        C9 FC         CMP #$FC                  ;
CODE_0490D0:        F0 05         BEQ CODE_0490D7           ;
CODE_0490D2:        A9 F9         LDA #$F9                  ;
CODE_0490D4:        99 A1 06      STA $06A1,y               ;
CODE_0490D7:        C8            INY                       ;
CODE_0490D8:        B9 A1 06      LDA $06A1,y               ;
CODE_0490DB:        C9 F0         CMP #$F0                  ;
CODE_0490DD:        F0 0A         BEQ CODE_0490E9           ;
CODE_0490DF:        A9 FA         LDA #$FA                  ;
CODE_0490E1:        99 A1 06      STA $06A1,y               ;
CODE_0490E4:        C8            INY                       ;
CODE_0490E5:        C0 0D         CPY #$0D                  ;
CODE_0490E7:        D0 EF         BNE CODE_0490D8           ;
CODE_0490E9:        AB            PLB                       ;
CODE_0490EA:        6B            RTL                       ;

CODE_0490EB:        20 C0 91      JSR CODE_0491C0           ;
CODE_0490EE:        22 13 AD 03   JSL CODE_03AD13           ;
CODE_0490F2:        A4 07         LDY $07                   ;
CODE_0490F4:        BD 00 13      LDA $1300,x               ;
CODE_0490F7:        D0 0C         BNE CODE_049105           ;
CODE_0490F9:        A9 02         LDA #$02                  ;
CODE_0490FB:        99 A1 06      STA $06A1,y               ;
CODE_0490FE:        A9 ED         LDA #$ED                  ;
CODE_049100:        99 A2 06      STA $06A2,y               ;
CODE_049103:        80 1A         BRA CODE_04911F           ;

CODE_049105:        B9 A1 06      LDA $06A1,y               ;
CODE_049108:        C9 68         CMP #$68                  ;
CODE_04910A:        D0 04         BNE CODE_049110           ;
CODE_04910C:        A9 EE         LDA #$EE                  ;
CODE_04910E:        80 02         BRA CODE_049112           ;

CODE_049110:        A9 EB         LDA #$EB                  ;
CODE_049112:        99 A1 06      STA $06A1,y               ;
CODE_049115:        A9 EC         LDA #$EC                  ;
CODE_049117:        99 A2 06      STA $06A2,y               ;
CODE_04911A:        A9 69         LDA #$69                  ;
CODE_04911C:        8D AD 06      STA $06AD                 ;
CODE_04911F:        AB            PLB                       ;
CODE_049120:        6B            RTL                       ;

CODE_049121:        20 C0 91      JSR CODE_0491C0           ;
CODE_049124:        22 13 AD 03   JSL CODE_03AD13           ;
CODE_049128:        A4 07         LDY $07                   ;
CODE_04912A:        BD 00 13      LDA $1300,x               ;
CODE_04912D:        D0 21         BNE CODE_049150           ;
CODE_04912F:        B9 A1 06      LDA $06A1,y               ;
CODE_049132:        C9 68         CMP #$68                  ;
CODE_049134:        D0 04         BNE CODE_04913A           ;
CODE_049136:        A9 F2         LDA #$F2                  ;
CODE_049138:        80 02         BRA CODE_04913C           ;

CODE_04913A:        A9 F0         LDA #$F0                  ;
CODE_04913C:        99 A1 06      STA $06A1,y               ;
CODE_04913F:        A9 F1         LDA #$F1                  ;
CODE_049141:        99 A2 06      STA $06A2,y               ;
CODE_049144:        C8            INY                       ;
CODE_049145:        C0 0C         CPY #$0C                  ;
CODE_049147:        F0 11         BEQ CODE_04915A           ;
CODE_049149:        A9 69         LDA #$69                  ;
CODE_04914B:        99 A2 06      STA $06A2,y               ;
CODE_04914E:        80 F4         BRA CODE_049144           ;

CODE_049150:        A9 03         LDA #$03                  ;
CODE_049152:        99 A1 06      STA $06A1,y               ;
CODE_049155:        A9 EF         LDA #$EF                  ;
CODE_049157:        99 A2 06      STA $06A2,y               ;
CODE_04915A:        AB            PLB                       ;
CODE_04915B:        6B            RTL                       ;

CODE_04915C:        20 C0 91      JSR CODE_0491C0           ;
CODE_04915F:        22 13 AD 03   JSL CODE_03AD13           ;
CODE_049163:        A4 07         LDY $07                   ;
CODE_049165:        A9 71         LDA #$71                  ;
CODE_049167:        99 A1 06      STA $06A1,y               ;
CODE_04916A:        C8            INY                       ;
CODE_04916B:        DE 00 13      DEC $1300,x               ;
CODE_04916E:        10 F5         BPL CODE_049165           ;
CODE_049170:        AB            PLB                       ;
CODE_049171:        6B            RTL                       ;

DATA_049172:        db $19,$18,$00,$00,$19,$22,$21,$20 ;Level X-2 'go to the surface' pipe tilemap
                    db $19,$25,$24,$23                 ;

CODE_04917E:        A0 03         LDY #$03                  ;
CODE_049180:        22 13 AD 03   JSL CODE_03AD13           ;
CODE_049184:        20 C0 91      JSR CODE_0491C0           ;
CODE_049187:        88            DEY                       ;
CODE_049188:        88            DEY                       ;
CODE_049189:        84 05         STY $05                   ;
CODE_04918B:        BC 00 13      LDY $1300,x               ;
CODE_04918E:        84 06         STY $06                   ;
CODE_049190:        A6 05         LDX $05                   ;
CODE_049192:        E8            INX                       ;
CODE_049193:        B9 72 91      LDA $9172,y               ;
CODE_049196:        C9 00         CMP #$00                  ;
CODE_049198:        F0 09         BEQ CODE_0491A3           ;
CODE_04919A:        A2 00         LDX #$00                  ;
CODE_04919C:        A4 05         LDY $05                   ;
CODE_04919E:        22 0B AD 03   JSL CODE_03AD0B           ;
CODE_0491A2:        18            CLC                       ;
CODE_0491A3:        A4 06         LDY $06                   ;
CODE_0491A5:        B9 76 91      LDA $9176,y               ;
CODE_0491A8:        9D A1 06      STA $06A1,x               ;
CODE_0491AB:        B9 7A 91      LDA $917A,y               ;
CODE_0491AE:        9D A2 06      STA $06A2,x               ;
CODE_0491B1:        AB            PLB                       ;
CODE_0491B2:        6B            RTL                       ;

CODE_0491B3:        20 C0 91      JSR CODE_0491C0           ;
CODE_0491B6:        A2 02         LDX #$02                  ;
CODE_0491B8:        A9 77         LDA #$77                  ;
CODE_0491BA:        22 0B AD 03   JSL CODE_03AD0B           ;
CODE_0491BE:        AB            PLB                       ;
CODE_0491BF:        6B            RTL                       ;

CODE_0491C0:        DA            PHX                       ;
CODE_0491C1:        C2 30         REP #$30                  ;
CODE_0491C3:        8A            TXA                       ;
CODE_0491C4:        0A            ASL A                     ;
CODE_0491C5:        AA            TAX                       ;
CODE_0491C6:        E2 20         SEP #$20                  ;
CODE_0491C8:        BC 05 13      LDY $1305,x               ;
CODE_0491CB:        C8            INY                       ;
CODE_0491CC:        B7 F3         LDA [$F3],y               ;
CODE_0491CE:        4A            LSR A                     ;
CODE_0491CF:        4A            LSR A                     ;
CODE_0491D0:        4A            LSR A                     ;
CODE_0491D1:        4A            LSR A                     ;
CODE_0491D2:        85 07         STA $07                   ;
CODE_0491D4:        B7 F3         LDA [$F3],y               ;
CODE_0491D6:        29 0F         AND #$0F                  ;
CODE_0491D8:        E2 10         SEP #$10                  ;
CODE_0491DA:        A8            TAY                       ;
CODE_0491DB:        FA            PLX                       ;
CODE_0491DC:        60            RTS                       ;

CODE_0491DD:        8B            PHB                       ;
CODE_0491DE:        4B            PHK                       ;
CODE_0491DF:        AB            PLB                       ;
CODE_0491E0:        DA            PHX                       ;
CODE_0491E1:        C2 30         REP #$30                  ;
CODE_0491E3:        A2 00 00      LDX #$0000                ;
CODE_0491E6:        AC 00 1A      LDY $1A00                 ;
CODE_0491E9:        AD C3 0E      LDA $0EC3                 ;
CODE_0491EC:        29 FF 00      AND #$00FF                ;
CODE_0491EF:        F0 0F         BEQ CODE_049200           ;
CODE_0491F1:        BD C7 9C      LDA $9CC7,x               ;
CODE_0491F4:        99 02 1A      STA $1A02,y               ;
CODE_0491F7:        1A            INC A                     ;
CODE_0491F8:        F0 15         BEQ CODE_04920F           ;
CODE_0491FA:        E8            INX                       ;
CODE_0491FB:        E8            INX                       ;
CODE_0491FC:        C8            INY                       ;
CODE_0491FD:        C8            INY                       ;
CODE_0491FE:        80 F1         BRA CODE_0491F1           ;

CODE_049200:        BD 55 9C      LDA $9C55,x               ;
CODE_049203:        99 02 1A      STA $1A02,y               ;
CODE_049206:        1A            INC A                     ;
CODE_049207:        F0 06         BEQ CODE_04920F           ;
CODE_049209:        E8            INX                       ;
CODE_04920A:        E8            INX                       ;
CODE_04920B:        C8            INY                       ;
CODE_04920C:        C8            INY                       ;
CODE_04920D:        80 F1         BRA CODE_049200           ;

CODE_04920F:        A2 00 00      LDX #$0000                ;
CODE_049212:        BD 59 9D      LDA $9D59,x               ;
CODE_049215:        99 02 1A      STA $1A02,y               ;
CODE_049218:        1A            INC A                     ;
CODE_049219:        F0 06         BEQ CODE_049221           ;
CODE_04921B:        E8            INX                       ;
CODE_04921C:        E8            INX                       ;
CODE_04921D:        C8            INY                       ;
CODE_04921E:        C8            INY                       ;
CODE_04921F:        80 F1         BRA CODE_049212           ;

CODE_049221:        8C 00 1A      STY $1A00                 ;
CODE_049224:        A9 23 B6      LDA #$B623                ;
CODE_049227:        85 02         STA $02                   ;
CODE_049229:        A2 A0 00      LDX #$00A0                ;
CODE_04922C:        A0 00 00      LDY #$0000                ;
CODE_04922F:        20 24 97      JSR CODE_049724           ;
CODE_049232:        20 24 97      JSR CODE_049724           ;
CODE_049235:        20 24 97      JSR CODE_049724           ;
CODE_049238:        9C FD 0E      STZ $0EFD                 ;
CODE_04923B:        9C EE 0E      STZ $0EEE                 ;
CODE_04923E:        E2 30         SEP #$30                  ;
CODE_049240:        A9 06         LDA #$06                  ;
CODE_049242:        8D 73 07      STA $0773                 ;
CODE_049245:        9C D1 0E      STZ $0ED1                 ;
CODE_049248:        9C 0F 21      STZ $210F                 ;
CODE_04924B:        9C 0F 21      STZ $210F                 ;
CODE_04924E:        9C 11 21      STZ $2111                 ;
CODE_049251:        9C 11 21      STZ $2111                 ;
CODE_049254:        A9 17         LDA #$17                  ;
CODE_049256:        8D 0B 12      STA $120B                 ;
CODE_049259:        A9 0A         LDA #$0A                  ;
CODE_04925B:        8D 99 00      STA $0099                 ;
CODE_04925E:        8D 20 0E      STA $0E20                 ;
CODE_049261:        A9 01         LDA #$01                  ;
CODE_049263:        8D 00 12      STA $1200                 ;
CODE_049266:        22 B1 E6 05   JSL CODE_05E6B1           ;
CODE_04926A:        A9 FF         LDA #$FF                  ;
CODE_04926C:        8D 66 0E      STA $0E66                 ;
CODE_04926F:        9C D2 0E      STZ $0ED2                 ;
CODE_049272:        9C D3 0E      STZ $0ED3                 ;
CODE_049275:        9C 10 21      STZ $2110                 ;
CODE_049278:        9C 10 21      STZ $2110                 ;
CODE_04927B:        FA            PLX                       ;
CODE_04927C:        AB            PLB                       ;
CODE_04927D:        6B            RTL                       ;

DATA_04927E:        db $68,$04,$14,$05,$1A,$0D,$70,$06
                    db $76,$00,$00,$00,$18,$0B,$70,$06
                    db $02,$0F,$02,$0F,$9C,$0B,$70,$06
                    db $68,$04,$14,$05,$E0,$08,$70,$06
                    db $82,$01,$82,$01,$1A,$0D,$70,$06
                    db $68,$04,$68,$04,$9C,$0B,$70,$06
                    db $82,$01,$00,$00,$18,$0B,$70,$06
                    db $68,$04,$82,$01,$C6,$02,$56,$07
                    db $00,$01,$02,$03,$01,$01,$01,$01
                    db $01

DATA_0492C7:        db $02,$03,$0E,$06,$05,$08,$10,$06
                    db $27,$27,$27,$06,$02,$03,$0D,$06
                    db $05,$05,$0E,$06,$2B,$2B,$2B,$06
                    db $05,$08,$10,$06,$02,$05,$0C,$04

CODE_0492E7:        8B            PHB                       ;
CODE_0492E8:        4B            PHK                       ;
CODE_0492E9:        AB            PLB                       ;
CODE_0492EA:        DA            PHX                       ;
CODE_0492EB:        5A            PHY                       ;
CODE_0492EC:        AD 1A 0E      LDA $0E1A                 ;
CODE_0492EF:        F0 03         BEQ CODE_0492F4           ;
CODE_0492F1:        9C 1A 0E      STZ $0E1A                 ;
CODE_0492F4:        A9 80         LDA #$80                  ;
CODE_0492F6:        8D 02 16      STA $1602                 ;
CODE_0492F9:        AC 21 0E      LDY $0E21                 ;
CODE_0492FC:        88            DEY                       ;
CODE_0492FD:        B9 C7 92      LDA $92C7,y               ;
CODE_049300:        48            PHA                       ;
CODE_049301:        29 1F         AND #$1F                  ;
CODE_049303:        85 99         STA $99                   ;
CODE_049305:        68            PLA                       ;
CODE_049306:        29 E0         AND #$E0                  ;
CODE_049308:        8D 23 0E      STA $0E23                 ;
CODE_04930B:        A9 01         LDA #$01                  ;
CODE_04930D:        8D 74 07      STA $0774                 ;
CODE_049310:        8D D6 0E      STA $0ED6                 ;
CODE_049313:        22 B1 E6 05   JSL CODE_05E6B1           ;
CODE_049317:        9C C9 0E      STZ $0EC9                 ;
CODE_04931A:        9C F0 0E      STZ $0EF0                 ;
CODE_04931D:        9C CA 0E      STZ $0ECA                 ;
CODE_049320:        9C 0F 13      STZ $130F                 ;
CODE_049323:        9C DF 0E      STZ $0EDF                 ;
CODE_049326:        EE CE 0E      INC $0ECE                 ;
CODE_049329:        9C CF 0E      STZ $0ECF                 ;
CODE_04932C:        9C D1 0E      STZ $0ED1                 ;
CODE_04932F:        9C 9A 0B      STZ $0B9A                 ;
CODE_049332:        9C 80 16      STZ $1680                 ;
CODE_049335:        9C 81 16      STZ $1681                 ;
CODE_049338:        9C DC 0E      STZ $0EDC                 ;
CODE_04933B:        22 EF 80 04   JSL CODE_0480EF           ;
CODE_04933F:        AE 53 07      LDX $0753                 ;
CODE_049342:        8E C3 0E      STX $0EC3                 ;
CODE_049345:        BF 2A BD 03   LDA $03BD2A,x             ;
CODE_049349:        22 F1 9C 03   JSL CODE_039CF1           ;
CODE_04934D:        AC 00 17      LDY $1700                 ;
CODE_049350:        B9 F6 16      LDA $16F6,y               ;
CODE_049353:        D0 05         BNE CODE_04935A           ;
CODE_049355:        A9 28         LDA #$28                  ;
CODE_049357:        99 F6 16      STA $16F6,y               ;
CODE_04935A:        AD 7A 07      LDA $077A                 ;
CODE_04935D:        F0 55         BEQ CODE_0493B4           ;
CODE_04935F:        AD 61 07      LDA $0761                 ;
CODE_049362:        30 50         BMI CODE_0493B4           ;
CODE_049364:        C2 20         REP #$20                  ;
CODE_049366:        A9 58 72      LDA #$7258                ;
CODE_049369:        99 02 17      STA $1702,y               ;
CODE_04936C:        A9 00 07      LDA #$0700                ;
CODE_04936F:        99 04 17      STA $1704,y               ;
CODE_049372:        A9 28 20      LDA #$2028                ;
CODE_049375:        99 06 17      STA $1706,y               ;
CODE_049378:        E2 20         SEP #$20                  ;
CODE_04937A:        AD 5F 07      LDA $075F                 ;
CODE_04937D:        1A            INC A                     ;
CODE_04937E:        99 08 17      STA $1708,y               ;
CODE_049381:        A9 20         LDA #$20                  ;
CODE_049383:        99 09 17      STA $1709,y               ;
CODE_049386:        99 0B 17      STA $170B,y               ;
CODE_049389:        99 0D 17      STA $170D,y               ;
CODE_04938C:        A9 24         LDA #$24                  ;
CODE_04938E:        99 0A 17      STA $170A,y               ;
CODE_049391:        AD 5C 07      LDA $075C                 ;
CODE_049394:        1A            INC A                     ;
CODE_049395:        99 0C 17      STA $170C,y               ;
CODE_049398:        A9 FF         LDA #$FF                  ;
CODE_04939A:        99 0E 17      STA $170E,y               ;
CODE_04939D:        C2 20         REP #$20                  ;
CODE_04939F:        98            TYA                       ;
CODE_0493A0:        18            CLC                       ;
CODE_0493A1:        69 0C 00      ADC #$000C                ;
CODE_0493A4:        8D 00 17      STA $1700                 ;
CODE_0493A7:        A8            TAY                       ;
CODE_0493A8:        E2 20         SEP #$20                  ;
CODE_0493AA:        AD FC 07      LDA $07FC                 ;
CODE_0493AD:        F0 05         BEQ CODE_0493B4           ;
CODE_0493AF:        A9 2A         LDA #$2A                  ;
CODE_0493B1:        99 FA 16      STA $16FA,y               ;
CODE_0493B4:        A9 06         LDA #$06                  ;
CODE_0493B6:        8D 73 07      STA $0773                 ;
CODE_0493B9:        C2 30         REP #$30                  ;
CODE_0493BB:        9C CB 0E      STZ $0ECB                 ;
CODE_0493BE:        9C 10 13      STZ $1310                 ;
CODE_0493C1:        9C 12 13      STZ $1312                 ;
CODE_0493C4:        AC 00 1A      LDY $1A00                 ;
CODE_0493C7:        A9 09 C7      LDA #$C709                ;
CODE_0493CA:        99 02 1A      STA $1A02,y               ;
CODE_0493CD:        A9 C0 12      LDA #$12C0                ;
CODE_0493D0:        99 04 1A      STA $1A04,y               ;
CODE_0493D3:        A9 A2 30      LDA #$30A2                ;
CODE_0493D6:        99 06 1A      STA $1A06,y               ;
CODE_0493D9:        A9 09 D8      LDA #$D809                ;
CODE_0493DC:        99 08 1A      STA $1A08,y               ;
CODE_0493DF:        A9 C0 12      LDA #$12C0                ;
CODE_0493E2:        99 0A 1A      STA $1A0A,y               ;
CODE_0493E5:        A9 A2 70      LDA #$70A2                ;
CODE_0493E8:        99 0C 1A      STA $1A0C,y               ;
CODE_0493EB:        A9 09 A8      LDA #$A809                ;
CODE_0493EE:        99 0E 1A      STA $1A0E,y               ;
CODE_0493F1:        A9 40 1E      LDA #$1E40                ;
CODE_0493F4:        99 10 1A      STA $1A10,y               ;
CODE_0493F7:        A9 78 30      LDA #$3078                ;
CODE_0493FA:        99 12 1A      STA $1A12,y               ;
CODE_0493FD:        A9 0B 08      LDA #$080B                ;
CODE_049400:        99 14 1A      STA $1A14,y               ;
CODE_049403:        A9 40 1E      LDA #$1E40                ;
CODE_049406:        99 16 1A      STA $1A16,y               ;
CODE_049409:        A9 78 B0      LDA #$B078                ;
CODE_04940C:        99 18 1A      STA $1A18,y               ;
CODE_04940F:        98            TYA                       ;
CODE_049410:        18            CLC                       ;
CODE_049411:        69 18 00      ADC #$0018                ;
CODE_049414:        A8            TAY                       ;
CODE_049415:        A2 00 00      LDX #$0000                ;
CODE_049418:        BD AD 9D      LDA $9DAD,x               ;
CODE_04941B:        99 02 1A      STA $1A02,y               ;
CODE_04941E:        E8            INX                       ;
CODE_04941F:        E8            INX                       ;
CODE_049420:        C8            INY                       ;
CODE_049421:        C8            INY                       ;
CODE_049422:        1A            INC A                     ;
CODE_049423:        D0 F3         BNE CODE_049418           ;
CODE_049425:        88            DEY                       ;
CODE_049426:        88            DEY                       ;
CODE_049427:        AD 21 0E      LDA $0E21                 ;
CODE_04942A:        3A            DEC A                     ;
CODE_04942B:        29 FF 00      AND #$00FF                ;
CODE_04942E:        0A            ASL A                     ;
CODE_04942F:        AA            TAX                       ;
CODE_049430:        BD 7E 92      LDA $927E,x               ;
CODE_049433:        AA            TAX                       ;
CODE_049434:        BD EB 9D      LDA $9DEB,x               ;
CODE_049437:        99 02 1A      STA $1A02,y               ;
CODE_04943A:        E8            INX                       ;
CODE_04943B:        E8            INX                       ;
CODE_04943C:        C8            INY                       ;
CODE_04943D:        C8            INY                       ;
CODE_04943E:        1A            INC A                     ;
CODE_04943F:        D0 F3         BNE CODE_049434           ;
CODE_049441:        AD 22 0E      LDA $0E22                 ;
CODE_049444:        29 FF 00      AND #$00FF                ;
CODE_049447:        C9 11 00      CMP #$0011                ;
CODE_04944A:        D0 12         BNE CODE_04945E           ;
CODE_04944C:        88            DEY                       ;
CODE_04944D:        88            DEY                       ;
CODE_04944E:        A2 00 00      LDX #$0000                ;
CODE_049451:        BD 6F AD      LDA $AD6F,x               ;
CODE_049454:        99 02 1A      STA $1A02,y               ;
CODE_049457:        E8            INX                       ;
CODE_049458:        E8            INX                       ;
CODE_049459:        C8            INY                       ;
CODE_04945A:        C8            INY                       ;
CODE_04945B:        1A            INC A                     ;
CODE_04945C:        D0 F3         BNE CODE_049451           ;
CODE_04945E:        AD 22 0E      LDA $0E22                 ;
CODE_049461:        29 F0 00      AND #$00F0                ;
CODE_049464:        F0 1D         BEQ CODE_049483           ;
CODE_049466:        AD 22 0E      LDA $0E22                 ;
CODE_049469:        29 FF 00      AND #$00FF                ;
CODE_04946C:        C9 16 00      CMP #$0016                ;
CODE_04946F:        F0 12         BEQ CODE_049483           ;
CODE_049471:        88            DEY                       ;
CODE_049472:        88            DEY                       ;
CODE_049473:        A2 00 00      LDX #$0000                ;
CODE_049476:        BD 9B AD      LDA $AD9B,x               ;
CODE_049479:        99 02 1A      STA $1A02,y               ;
CODE_04947C:        E8            INX                       ;
CODE_04947D:        E8            INX                       ;
CODE_04947E:        C8            INY                       ;
CODE_04947F:        C8            INY                       ;
CODE_049480:        1A            INC A                     ;
CODE_049481:        D0 F3         BNE CODE_049476           ;
CODE_049483:        8C 00 1A      STY $1A00                 ;
CODE_049486:        E2 30         SEP #$30                  ;
CODE_049488:        20 E2 95      JSR CODE_0495E2           ;
CODE_04948B:        CE 3C 07      DEC $073C                 ;
CODE_04948E:        A9 01         LDA #$01                  ;
CODE_049490:        8D 00 12      STA $1200                 ;
CODE_049493:        9C 00 10      STZ $1000                 ;
CODE_049496:        9C 01 10      STZ $1001                 ;
CODE_049499:        AD 56 07      LDA $0756                 ;
CODE_04949C:        85 EB         STA $EB                   ;
CODE_04949E:        A9 01         LDA #$01                  ;
CODE_0494A0:        8D 56 07      STA $0756                 ;
CODE_0494A3:        AD 22 0E      LDA $0E22                 ;
CODE_0494A6:        29 F0         AND #$F0                  ;
CODE_0494A8:        F0 02         BEQ CODE_0494AC           ;
CODE_0494AA:        A9 04         LDA #$04                  ;
CODE_0494AC:        8D 44 07      STA $0744                 ;
CODE_0494AF:        AD 22 0E      LDA $0E22                 ;
CODE_0494B2:        C9 02         CMP #$02                  ;
CODE_0494B4:        D0 05         BNE CODE_0494BB           ;
CODE_0494B6:        A9 03         LDA #$03                  ;
CODE_0494B8:        8D 44 07      STA $0744                 ;
CODE_0494BB:        22 88 9A 04   JSL CODE_049A88           ;
CODE_0494BF:        CE 00 12      DEC $1200                 ;
CODE_0494C2:        A5 EB         LDA $EB                   ;
CODE_0494C4:        8D 56 07      STA $0756                 ;
CODE_0494C7:        9C 22 0E      STZ $0E22                 ;
CODE_0494CA:        A9 17         LDA #$17                  ;
CODE_0494CC:        8D 0B 12      STA $120B                 ;
CODE_0494CF:        A9 06         LDA #$06                  ;
CODE_0494D1:        8D 73 07      STA $0773                 ;
CODE_0494D4:        9C 20 0E      STZ $0E20                 ;
CODE_0494D7:        9C DE 0E      STZ $0EDE                 ;
CODE_0494DA:        9C D2 0E      STZ $0ED2                 ;
CODE_0494DD:        9C D3 0E      STZ $0ED3                 ;
CODE_0494E0:        9C 10 21      STZ $2110                 ;
CODE_0494E3:        9C 10 21      STZ $2110                 ;
CODE_0494E6:        7A            PLY                       ;
CODE_0494E7:        FA            PLX                       ;
CODE_0494E8:        AB            PLB                       ;
CODE_0494E9:        6B            RTL                       ;

CODE_0494EA:        A5 9B         LDA $9B                   ;
CODE_0494EC:        F0 25         BEQ CODE_049513           ;
CODE_0494EE:        64 9B         STZ $9B                   ;
CODE_0494F0:        A5 9C         LDA $9C                   ;
CODE_0494F2:        8D 1C 07      STA $071C                 ;
CODE_0494F5:        8D 3F 07      STA $073F                 ;
CODE_0494F8:        A5 9D         LDA $9D                   ;
CODE_0494FA:        8D 1A 07      STA $071A                 ;
CODE_0494FD:        C2 20         REP #$20                  ;
CODE_0494FF:        A5 9C         LDA $9C                   ;
CODE_049501:        4A            LSR A                     ;
CODE_049502:        8D FD 0E      STA $0EFD                 ;
CODE_049505:        4A            LSR A                     ;
CODE_049506:        8D EE 0E      STA $0EEE                 ;
CODE_049509:        8D D7 0E      STA $0ED7                 ;
CODE_04950C:        E2 20         SEP #$20                  ;
CODE_04950E:        AD 5C 00      LDA $005C                 ;
CODE_049511:        D0 00         BNE CODE_049513           ;
CODE_049513:        AD FE 0E      LDA $0EFE                 ;
CODE_049516:        29 01         AND #$01                  ;
CODE_049518:        8D F6 0E      STA $0EF6                 ;
CODE_04951B:        9C FC 0E      STZ $0EFC                 ;
CODE_04951E:        9C F8 0E      STZ $0EF8                 ;
CODE_049521:        22 00 80 05   JSL CODE_058000           ;
CODE_049525:        20 96 9B      JSR CODE_049B96           ;
CODE_049528:        20 BC 9B      JSR CODE_049BBC           ;
CODE_04952B:        20 BC 9B      JSR CODE_049BBC           ;
CODE_04952E:        20 BC 9B      JSR CODE_049BBC           ;
CODE_049531:        20 BC 9B      JSR CODE_049BBC           ;
CODE_049534:        20 BC 9B      JSR CODE_049BBC           ;
CODE_049537:        20 BC 9B      JSR CODE_049BBC           ;
CODE_04953A:        A5 BA         LDA $BA                   ;
CODE_04953C:        C9 03         CMP #$03                  ;
CODE_04953E:        F0 23         BEQ CODE_049563           ;
CODE_049540:        20 BC 9B      JSR CODE_049BBC           ;
CODE_049543:        20 BC 9B      JSR CODE_049BBC           ;
CODE_049546:        20 BC 9B      JSR CODE_049BBC           ;
CODE_049549:        20 BC 9B      JSR CODE_049BBC           ;
CODE_04954C:        AD D1 0E      LDA $0ED1                 ;
CODE_04954F:        F0 12         BEQ CODE_049563           ;
CODE_049551:        20 BC 9B      JSR CODE_049BBC           ;
CODE_049554:        20 BC 9B      JSR CODE_049BBC           ;
CODE_049557:        20 BC 9B      JSR CODE_049BBC           ;
CODE_04955A:        20 BC 9B      JSR CODE_049BBC           ;
CODE_04955D:        20 BC 9B      JSR CODE_049BBC           ;
CODE_049560:        20 BC 9B      JSR CODE_049BBC           ;
CODE_049563:        60            RTS                       ;

DATA_049564:        db $F8,$00,$20,$F8,$F0,$20,$00

CODE_04956B:        8B            PHB                       ;
CODE_04956C:        4B            PHK                       ;
CODE_04956D:        AB            PLB                       ;
CODE_04956E:        20 EA 94      JSR CODE_0494EA           ;
CODE_049571:        9C D2 0E      STZ $0ED2                 ;
CODE_049574:        9C D3 0E      STZ $0ED3                 ;
CODE_049577:        A5 5C         LDA $5C                   ;
CODE_049579:        F0 19         BEQ CODE_049594           ;
CODE_04957B:        C9 01         CMP #$01                  ;
CODE_04957D:        D0 0C         BNE CODE_04958B           ;
CODE_04957F:        AD DB 00      LDA $00DB                 ;
CODE_049582:        C9 0A         CMP #$0A                  ;
CODE_049584:        F0 05         BEQ CODE_04958B           ;
CODE_049586:        A9 F8         LDA #$F8                  ;
CODE_049588:        8D D2 0E      STA $0ED2                 ;
CODE_04958B:        A9 06         LDA #$06                  ;
CODE_04958D:        8D 09 12      STA $1209                 ;
CODE_049590:        A2 11         LDX #$11                  ;
CODE_049592:        80 2C         BRA CODE_0495C0           ;

CODE_049594:        C2 20         REP #$20                  ;
CODE_049596:        A9 42 0F      LDA #$0F42                ;
CODE_049599:        8D 20 43      STA $4320                 ;
CODE_04959C:        A9 64 95      LDA #$9564                ;
CODE_04959F:        8D 22 43      STA $4322                 ;
CODE_0495A2:        A2 04         LDX #$04                  ;
CODE_0495A4:        8E 24 43      STX $4324                 ;
CODE_0495A7:        A0 7F         LDY #$7F                  ;
CODE_0495A9:        8C 27 43      STY $4327                 ;
CODE_0495AC:        E2 20         SEP #$20                  ;
CODE_0495AE:        9C EC 0E      STZ $0EEC                 ;
CODE_0495B1:        9C F3 0E      STZ $0EF3                 ;
CODE_0495B4:        AD 03 12      LDA $1203                 ;
CODE_0495B7:        09 04         ORA #$04                  ;
CODE_0495B9:        8D 03 12      STA $1203                 ;
CODE_0495BC:        A9 00         LDA #$00                  ;
CODE_0495BE:        A2 17         LDX #$17                  ;
CODE_0495C0:        8E 0B 12      STX $120B                 ;
CODE_0495C3:        8D 0C 12      STA $120C                 ;
CODE_0495C6:        9C D9 0E      STZ $0ED9                 ;
CODE_0495C9:        A9 1F         LDA #$1F                  ;
CODE_0495CB:        8D F2 0E      STA $0EF2                 ;
CODE_0495CE:        AD D1 0E      LDA $0ED1                 ;\If starry night BG flag is set
CODE_0495D1:        F0 0A         BEQ CODE_0495DD           ;/
CODE_0495D3:        A9 AF         LDA #$AF                  ;\
CODE_0495D5:        8D F2 0E      STA $0EF2                 ;/Set IRQ V-timer to AF
CODE_0495D8:        A9 02         LDA #$02                  ;\
CODE_0495DA:        8D DE 0E      STA $0EDE                 ;/Enable IRQ
CODE_0495DD:        20 E2 95      JSR CODE_0495E2           ;
CODE_0495E0:        AB            PLB                       ;
CODE_0495E1:        6B            RTL                       ;

CODE_0495E2:        AD 65 0E      LDA $0E65                 ;
CODE_0495E5:        F0 07         BEQ CODE_0495EE           ;
CODE_0495E7:        85 DB         STA $DB                   ;
CODE_0495E9:        9C 65 0E      STZ $0E65                 ;
CODE_0495EC:        80 1C         BRA CODE_04960A           ;

CODE_0495EE:        A5 DB         LDA $DB                   ;
CODE_0495F0:        C9 0C         CMP #$0C                  ;
CODE_0495F2:        D0 16         BNE CODE_04960A           ;
CODE_0495F4:        8D 65 0E      STA $0E65                 ;
CODE_0495F7:        AD 5F 07      LDA $075F                 ;
CODE_0495FA:        F0 0A         BEQ CODE_049606           ;
CODE_0495FC:        C9 03         CMP #$03                  ;
CODE_0495FE:        F0 06         BEQ CODE_049606           ;
CODE_049600:        A9 01         LDA #$01                  ;
CODE_049602:        85 DB         STA $DB                   ;
CODE_049604:        80 04         BRA CODE_04960A           ;

CODE_049606:        A9 19         LDA #$19                  ;
CODE_049608:        85 DB         STA $DB                   ;
CODE_04960A:        C2 30         REP #$30                  ;
CODE_04960C:        A5 DB         LDA $DB                   ;
CODE_04960E:        29 FF 00      AND #$00FF                ;
CODE_049611:        0A            ASL A                     ;
CODE_049612:        0A            ASL A                     ;
CODE_049613:        0A            ASL A                     ;
CODE_049614:        0A            ASL A                     ;
CODE_049615:        A8            TAY                       ;
CODE_049616:        84 06         STY $06                   ;
CODE_049618:        64 02         STZ $02                   ;
CODE_04961A:        A4 06         LDY $06                   ;
CODE_04961C:        B9 CD 97      LDA $97CD,y               ;
CODE_04961F:        29 FF 00      AND #$00FF                ;
CODE_049622:        C8            INY                       ;
CODE_049623:        84 06         STY $06                   ;
CODE_049625:        0A            ASL A                     ;
CODE_049626:        AA            TAX                       ;
CODE_049627:        BD 3F AE      LDA $AE3F,x               ;
CODE_04962A:        A8            TAY                       ;
CODE_04962B:        A6 02         LDX $02                   ;
CODE_04962D:        A9 07 00      LDA #$0007                ;
CODE_049630:        85 04         STA $04                   ;
CODE_049632:        B9 C3 AE      LDA $AEC3,y               ;
CODE_049635:        9D 00 10      STA $1000,x               ;
CODE_049638:        B9 D3 AE      LDA $AED3,y               ;
CODE_04963B:        9D 10 10      STA $1010,x               ;
CODE_04963E:        E8            INX                       ;
CODE_04963F:        E8            INX                       ;
CODE_049640:        C8            INY                       ;
CODE_049641:        C8            INY                       ;
CODE_049642:        C6 04         DEC $04                   ;
CODE_049644:        10 EC         BPL CODE_049632           ;
CODE_049646:        8A            TXA                       ;
CODE_049647:        18            CLC                       ;
CODE_049648:        69 10 00      ADC #$0010                ;
CODE_04964B:        85 02         STA $02                   ;
CODE_04964D:        C9 E0 01      CMP #$01E0                ;
CODE_049650:        D0 C8         BNE CODE_04961A           ;
CODE_049652:        AD F8 02      LDA $02F8                 ;
CODE_049655:        29 FF 00      AND #$00FF                ;
CODE_049658:        F0 3F         BEQ CODE_049699           ;
CODE_04965A:        AD 53 07      LDA $0753                 ;
CODE_04965D:        29 FF 00      AND #$00FF                ;
CODE_049660:        F0 37         BEQ CODE_049699           ;
CODE_049662:        A0 00 00      LDY #$0000                ;
CODE_049665:        A2 E0 00      LDX #$00E0                ;
CODE_049668:        B9 79 96      LDA $9679,y               ;
CODE_04966B:        9D 00 10      STA $1000,x               ;
CODE_04966E:        E8            INX                       ;
CODE_04966F:        E8            INX                       ;
CODE_049670:        C8            INY                       ;
CODE_049671:        C8            INY                       ;
CODE_049672:        C0 20 00      CPY #$0020                ;
CODE_049675:        D0 F1         BNE CODE_049668           ;
CODE_049677:        80 20         BRA CODE_049699           ;

DATA_049679:        dw $772F,$7FFF,$14A5,$57F0              ;\
                    dw $0340,$0200,$46BF,$365D              ; |Bonus room Luigi background palette
                    dw $25BB,$04EF,$0D73,$4F7F              ; |
                    dw $7F0F,$4E06,$001E,$0012              ;/

CODE_049699:        A5 42         LDA $42                   ;
CODE_04969B:        4A            LSR A                     ;
CODE_04969C:        4A            LSR A                     ;
CODE_04969D:        8D EE 0E      STA $0EEE                 ;
CODE_0496A0:        29 00 FF      AND #$FF00                ;
CODE_0496A3:        EB            XBA                       ;
CODE_0496A4:        85 F3         STA $F3                   ;
CODE_0496A6:        AD 5F 07      LDA $075F                 ;
CODE_0496A9:        29 FF 00      AND #$00FF                ;
CODE_0496AC:        0A            ASL A                     ;
CODE_0496AD:        C9 0C 00      CMP #$000C                ;
CODE_0496B0:        90 03         BCC CODE_0496B5           ;
CODE_0496B2:        A9 00 00      LDA #$0000                ;
CODE_0496B5:        18            CLC                       ;
CODE_0496B6:        65 F3         ADC $F3                   ;
CODE_0496B8:        85 F3         STA $F3                   ;
CODE_0496BA:        9C D9 0E      STZ $0ED9                 ;
CODE_0496BD:        A5 F3         LDA $F3                   ;
CODE_0496BF:        F0 0E         BEQ CODE_0496CF           ;
CODE_0496C1:        AD D9 0E      LDA $0ED9                 ;
CODE_0496C4:        18            CLC                       ;
CODE_0496C5:        69 E0 00      ADC #$00E0                ;
CODE_0496C8:        8D D9 0E      STA $0ED9                 ;
CODE_0496CB:        C6 F3         DEC $F3                   ;
CODE_0496CD:        80 EE         BRA CODE_0496BD           ;

CODE_0496CF:        AD EE 0E      LDA $0EEE                 ;
CODE_0496D2:        29 F0 00      AND #$00F0                ;
CODE_0496D5:        4A            LSR A                     ;
CODE_0496D6:        4A            LSR A                     ;
CODE_0496D7:        4A            LSR A                     ;
CODE_0496D8:        4A            LSR A                     ;
CODE_0496D9:        18            CLC                       ;
CODE_0496DA:        6D D9 0E      ADC $0ED9                 ;
CODE_0496DD:        8D D9 0E      STA $0ED9                 ;
CODE_0496E0:        C9 80 0A      CMP #$0A80                ;
CODE_0496E3:        90 03         BCC CODE_0496E8           ;
CODE_0496E5:        9C D9 0E      STZ $0ED9                 ;
CODE_0496E8:        E2 30         SEP #$30                  ;
CODE_0496EA:        20 3C 97      JSR CODE_04973C           ;
CODE_0496ED:        AD DC 0E      LDA $0EDC                 ;
CODE_0496F0:        F0 29         BEQ CODE_04971B           ;
CODE_0496F2:        AD EF 0E      LDA $0EEF                 ;
CODE_0496F5:        85 F3         STA $F3                   ;
CODE_0496F7:        AD EE 0E      LDA $0EEE                 ;
CODE_0496FA:        85 F4         STA $F4                   ;
CODE_0496FC:        20 85 8C      JSR CODE_048C85           ;
CODE_0496FF:        A9 13         LDA #$13                  ;
CODE_049701:        85 F5         STA $F5                   ;
CODE_049703:        22 49 8B 04   JSL CODE_048B49           ;
CODE_049707:        A5 F4         LDA $F4                   ;
CODE_049709:        C9 A0         CMP #$A0                  ;
CODE_04970B:        90 0A         BCC CODE_049717           ;
CODE_04970D:        A5 F3         LDA $F3                   ;
CODE_04970F:        49 04         EOR #$04                  ;
CODE_049711:        85 F3         STA $F3                   ;
CODE_049713:        A9 80         LDA #$80                  ;
CODE_049715:        85 F4         STA $F4                   ;
CODE_049717:        C6 F5         DEC $F5                   ;
CODE_049719:        D0 E8         BNE CODE_049703           ;
CODE_04971B:        A9 01         LDA #$01                  ;
CODE_04971D:        8D 00 12      STA $1200                 ;
CODE_049720:        EE 3C 07      INC $073C                 ;
CODE_049723:        60            RTS                       ;

CODE_049724:        A9 04 00      LDA #$0004                ;
CODE_049727:        85 04         STA $04                   ;
CODE_049729:        A9 10 00      LDA #$0010                ;
CODE_04972C:        85 00         STA $00                   ;
CODE_04972E:        B7 02         LDA [$02],y               ;
CODE_049730:        9D 00 10      STA $1000,x               ;
CODE_049733:        C8            INY                       ;
CODE_049734:        C8            INY                       ;
CODE_049735:        E8            INX                       ;
CODE_049736:        E8            INX                       ;
CODE_049737:        C6 00         DEC $00                   ;
CODE_049739:        D0 F3         BNE CODE_04972E           ;
CODE_04973B:        60            RTS                       ;

CODE_04973C:        8B            PHB                       ;
CODE_04973D:        A9 7F         LDA #$7F                  ;
CODE_04973F:        48            PHA                       ;
CODE_049740:        AB            PLB                       ;
CODE_049741:        A2 00         LDX #$00                  ;
CODE_049743:        9E 00 30      STZ $3000,x               ;
CODE_049746:        9E 00 31      STZ $3100,x               ;
CODE_049749:        9E 00 32      STZ $3200,x               ;
CODE_04974C:        9E 00 33      STZ $3300,x               ;
CODE_04974F:        9E 00 34      STZ $3400,x               ;
CODE_049752:        9E 00 35      STZ $3500,x               ;
CODE_049755:        9E 00 36      STZ $3600,x               ;
CODE_049758:        9E 00 37      STZ $3700,x               ;
CODE_04975B:        9E 00 38      STZ $3800,x               ;
CODE_04975E:        9E 00 39      STZ $3900,x               ;
CODE_049761:        9E 00 3A      STZ $3A00,x               ;
CODE_049764:        CA            DEX                       ;
CODE_049765:        D0 DC         BNE CODE_049743           ;
CODE_049767:        AB            PLB                       ;
CODE_049768:        8B            PHB                       ;
CODE_049769:        4B            PHK                       ;
CODE_04976A:        AB            PLB                       ;
CODE_04976B:        A9 7F         LDA #$7F                  ;
CODE_04976D:        85 F5         STA $F5                   ;
CODE_04976F:        64 F6         STZ $F6                   ;
CODE_049771:        C2 30         REP #$30                  ;
CODE_049773:        A9 00 30      LDA #$3000                ;
CODE_049776:        85 F3         STA $F3                   ;
CODE_049778:        A0 00 00      LDY #$0000                ;
CODE_04977B:        64 F8         STZ $F8                   ;
CODE_04977D:        A6 F8         LDX $F8                   ;
CODE_04977F:        BD 83 B6      LDA $B683,x               ;
CODE_049782:        C9 FF FF      CMP #$FFFF                ;
CODE_049785:        F0 42         BEQ CODE_0497C9           ;
CODE_049787:        10 0A         BPL CODE_049793           ;
CODE_049789:        48            PHA                       ;
CODE_04978A:        A5 F3         LDA $F3                   ;
CODE_04978C:        18            CLC                       ;
CODE_04978D:        69 E0 00      ADC #$00E0                ;
CODE_049790:        85 F3         STA $F3                   ;
CODE_049792:        68            PLA                       ;
CODE_049793:        48            PHA                       ;
CODE_049794:        29 FF 00      AND #$00FF                ;
CODE_049797:        A8            TAY                       ;
CODE_049798:        68            PLA                       ;
CODE_049799:        0A            ASL A                     ;
CODE_04979A:        0A            ASL A                     ;
CODE_04979B:        A9 00 00      LDA #$0000                ;
CODE_04979E:        2A            ROL A                     ;
CODE_04979F:        85 F6         STA $F6                   ;
CODE_0497A1:        E2 20         SEP #$20                  ;
CODE_0497A3:        E8            INX                       ;
CODE_0497A4:        BD 83 B6      LDA $B683,x               ;
CODE_0497A7:        29 3F         AND #$3F                  ;
CODE_0497A9:        85 F7         STA $F7                   ;
CODE_0497AB:        A5 F7         LDA $F7                   ;
CODE_0497AD:        97 F3         STA [$F3],y               ;
CODE_0497AF:        A5 F6         LDA $F6                   ;
CODE_0497B1:        F0 0E         BEQ CODE_0497C1           ;
CODE_0497B3:        98            TYA                       ;
CODE_0497B4:        29 F0         AND #$F0                  ;
CODE_0497B6:        C9 D0         CMP #$D0                  ;
CODE_0497B8:        F0 07         BEQ CODE_0497C1           ;
CODE_0497BA:        98            TYA                       ;
CODE_0497BB:        18            CLC                       ;
CODE_0497BC:        69 10         ADC #$10                  ;
CODE_0497BE:        A8            TAY                       ;
CODE_0497BF:        80 EA         BRA CODE_0497AB           ;

CODE_0497C1:        C2 20         REP #$20                  ;
CODE_0497C3:        E6 F8         INC $F8                   ;
CODE_0497C5:        E6 F8         INC $F8                   ;
CODE_0497C7:        80 B4         BRA CODE_04977D           ;

CODE_0497C9:        E2 30         SEP #$30                  ;
CODE_0497CB:        AB            PLB                       ;
CODE_0497CC:        60            RTS                       ;

DATA_0497CD:        dw $0100,$0302,$1004,$1211
                    dw $0908,$0B0A,$0D0C,$0F0E
                    dw $0100,$0302,$1004,$1211
                    dw $0908,$0B0A,$0D0C,$0F0E
                    dw $0100,$031B,$3904,$1211
                    dw $0908,$0B0A,$0D0C,$0F0E
                    dw $0100,$0302,$3604,$3706
                    dw $0908,$0B0A,$0D0C,$0F0E
                    dw $0100,$0302,$0504,$2E06
                    dw $0908,$0B0A,$0D0C,$0F0E
                    dw $0100,$0302,$0504,$0706
                    dw $0908,$0B0A,$0D0C,$0F0E
                    dw $0100,$0302,$3604,$3706
                    dw $0908,$0B0A,$0D0C,$0F0E
                    dw $0100,$4135,$3604,$3706
                    dw $0908,$0B0A,$0D0C,$0F0E
                    dw $0100,$0302,$0504,$0731
                    dw $0908,$0B0A,$0D0C,$0F0E
                    dw $0100,$0302,$0504,$3806
                    dw $0908,$0B0A,$0D0C,$0F0E
                    dw $0100,$0302,$3A04,$3B06
                    dw $0908,$0B0A,$0D0C,$0F0E
                    dw $0100,$0302,$0504,$2B06
                    dw $0908,$0B0A,$0D0C,$0F0E
                    dw $0100,$0302,$0504,$0706
                    dw $0908,$0B0A,$0D0C,$0F0E
                    dw $0100,$4034,$3D04,$2D06
                    dw $0908,$0B0A,$0D0C,$0F0E
                    dw $0100,$0302,$1904,$1A06
                    dw $0908,$0B0A,$0D0C,$0F0E
                    dw $0100,$0326,$0528,$2A29
                    dw $0908,$0B0A,$0D0C,$0F0E
                    dw $0100,$0302,$3604,$3706
                    dw $0908,$0B0A,$0D0C,$0F0E
                    dw $0100,$0302,$3604,$3706
                    dw $0908,$0B0A,$0D0C,$0F0E
                    dw $0100,$2726,$0528,$2A29
                    dw $0908,$0B0A,$0D0C,$0F0E
                    dw $0100,$0302,$0504,$0706
                    dw $0908,$0B0A,$0D0C,$0F0E
                    dw $0100,$4034,$3D04,$2D06
                    dw $0908,$0B0A,$0D0C,$0F0E
                    dw $0100,$0302,$0504,$3C06
                    dw $0908,$0B0A,$0D0C,$0F0E
                    dw $0100,$4135,$3D04,$2D06
                    dw $0908,$0B0A,$0D0C,$0F0E
                    dw $0100,$0302,$1904,$1A06
                    dw $0908,$0B0A,$0D0C,$0F0E
                    dw $0100,$4135,$3604,$3706
                    dw $0908,$0B0A,$0D0C,$0F0E
                    dw $0100,$1413,$1504,$1606
                    dw $1708,$0B0A,$180C,$0F0E
                    dw $0100,$1413,$1504,$1606
                    dw $1708,$0B0A,$180C,$0F0E
                    dw $0100,$1413,$1904,$1A06
                    dw $1708,$0B0A,$180C,$0F0E
                    dw $0100,$1C1B,$1D04,$1F1E
                    dw $2008,$0B0A,$210C,$0F0E
                    dw $0100,$1C1B,$1D04,$1F1E
                    dw $2008,$0B0A,$210C,$0F0E
                    dw $0100,$1C1B,$1D04,$1F1E
                    dw $2008,$0B0A,$210C,$0F0E
                    dw $0100,$1C1B,$1D04,$1F1E
                    dw $2008,$0B0A,$210C,$0F0E
                    dw $0100,$1C1B,$1D04,$1F1E
                    dw $2008,$0B0A,$210C,$0F0E
                    dw $0100,$1C1B,$2F04,$301E
                    dw $2008,$0B0A,$210C,$0F0E

DATA_0499ED:        dw $7FF8,$7FF8,$0000,$0000             ;Background colors, indexed by 0744 or BA
                    dw $3908,$7FF8,$3908,$3908             ;Light blue x2, black, indigo, light blue, indigo * 2

DATA_0499FD:        dw $0000,$7FFF,$0C63,$0155             ;Mario palette
                    dw $1A1C,$1B3E,$2D9C,$3ABF
                    dw $0000,$152F,$0014,$0C19
                    dw $1C9F,$762E,$5D68,$44E6

                    dw $0000,$7FFF,$0C63,$0155             ;Luigi palette
                    dw $1A1C,$1B3E,$2D9C,$3ABF
                    dw $0000,$152F,$1E60,$3304
                    dw $4388,$7655,$7190,$58CA

                    dw $0000,$7FFF,$0C63,$0155             ;Fire Mario palette
                    dw $1A1C,$1B3E,$2D9C,$3ABF
                    dw $0000,$152F,$3ED9,$4F5D
                    dw $639F,$0D9F,$001D,$0015

                    dw $0000,$7FFF,$0C63,$0155             ;Fire Luigi palette
                    dw $1A1C,$1B3E,$2D9C,$3ABF
                    dw $0000,$152F,$3ED9,$4F5D
                    dw $639F,$0352,$02AD,$0208

CODE_049A7D:        AD 22 0E      LDA $0E22                 ;
CODE_049A80:        F0 03         BEQ CODE_049A85           ;
CODE_049A82:        4C 34 9B      JMP CODE_049B34           ;

CODE_049A85:        EE 3C 07      INC $073C                 ;
CODE_049A88:        8B            PHB                       ;
CODE_049A89:        4B            PHK                       ;
CODE_049A8A:        AB            PLB                       ;
CODE_049A8B:        DA            PHX                       ;
CODE_049A8C:        AD 44 07      LDA $0744                 ;\
CODE_049A8F:        D0 02         BNE CODE_049A93           ;/Branch if background color != 00
CODE_049A91:        A5 BA         LDA $BA                   ;Get level current background palette and music
CODE_049A93:        C2 30         REP #$30                  ;
CODE_049A95:        29 FF 00      AND #$00FF                ;
CODE_049A98:        0A            ASL A                     ;
CODE_049A99:        A8            TAY                       ;
CODE_049A9A:        AD 43 07      LDA $0743                 ;\ Bonus game flag
CODE_049A9D:        29 FF 00      AND #$00FF                ; |
CODE_049AA0:        F0 15         BEQ CODE_049AB7           ;/ branch if not bonus game
CODE_049AA2:        AD 44 07      LDA $0744                 ;\
CODE_049AA5:        29 04 00      AND #$0004                ; | Branch if background color is $04
CODE_049AA8:        D0 0D         BNE CODE_049AB7           ;/
CODE_049AAA:        AD 5A 07      LDA $075A                 ;\
CODE_049AAD:        29 80 00      AND #$0080                ; | Branch if something with lives
CODE_049AB0:        D0 05         BNE CODE_049AB7           ;/
CODE_049AB2:        A9 2A 52      LDA #$522A                ;
CODE_049AB5:        80 03         BRA CODE_049ABA           ;

CODE_049AB7:        B9 ED 99      LDA $99ED,y               ;
CODE_049ABA:        8D 00 10      STA $1000                 ;
CODE_049ABD:        29 1F 00      AND #$001F                ;
CODE_049AC0:        18            CLC                       ;
CODE_049AC1:        69 20 00      ADC #$0020                ;
CODE_049AC4:        8D E0 0E      STA $0EE0                 ;
CODE_049AC7:        AD 00 10      LDA $1000                 ;
CODE_049ACA:        29 E0 03      AND #$03E0                ;
CODE_049ACD:        0A            ASL A                     ;
CODE_049ACE:        0A            ASL A                     ;
CODE_049ACF:        0A            ASL A                     ;
CODE_049AD0:        EB            XBA                       ;
CODE_049AD1:        18            CLC                       ;
CODE_049AD2:        69 40 00      ADC #$0040                ;
CODE_049AD5:        8D E1 0E      STA $0EE1                 ;
CODE_049AD8:        AD 00 10      LDA $1000                 ;
CODE_049ADB:        29 00 7C      AND #$7C00                ;
CODE_049ADE:        4A            LSR A                     ;
CODE_049ADF:        4A            LSR A                     ;
CODE_049AE0:        EB            XBA                       ;
CODE_049AE1:        18            CLC                       ;
CODE_049AE2:        69 80 00      ADC #$0080                ;
CODE_049AE5:        8D E2 0E      STA $0EE2                 ;
CODE_049AE8:        9C 00 10      STZ $1000                 ;
CODE_049AEB:        80 0C         BRA CODE_049AF9           ;

CODE_049AED:        A9 E0 00      LDA #$00E0                ;
CODE_049AF0:        8D E0 0E      STA $0EE0                 ;
CODE_049AF3:        8D E1 0E      STA $0EE1                 ;
CODE_049AF6:        8D E2 0E      STA $0EE2                 ;
CODE_049AF9:        E2 30         SEP #$30                  ;
CODE_049AFB:        AD 54 02      LDA $0254                 ;
CODE_049AFE:        D0 32         BNE CODE_049B32           ;
CODE_049B00:        A0 00         LDY #$00                  ;
CODE_049B02:        AD 53 07      LDA $0753                 ;
CODE_049B05:        F0 02         BEQ CODE_049B09           ;
CODE_049B07:        A0 20         LDY #$20                  ;
CODE_049B09:        AD 56 07      LDA $0756                 ;
CODE_049B0C:        C9 02         CMP #$02                  ;
CODE_049B0E:        D0 05         BNE CODE_049B15           ;
CODE_049B10:        98            TYA                       ;
CODE_049B11:        18            CLC                       ;
CODE_049B12:        69 40         ADC #$40                  ;
CODE_049B14:        A8            TAY                       ;
CODE_049B15:        C2 20         REP #$20                  ;
CODE_049B17:        A2 00         LDX #$00                  ;
CODE_049B19:        B9 FD 99      LDA $99FD,y               ;
CODE_049B1C:        9D E0 11      STA $11E0,x               ;
CODE_049B1F:        B9 0D 9A      LDA $9A0D,y               ;
CODE_049B22:        9D F0 11      STA $11F0,x               ;
CODE_049B25:        E8            INX                       ;
CODE_049B26:        E8            INX                       ;
CODE_049B27:        C8            INY                       ;
CODE_049B28:        C8            INY                       ;
CODE_049B29:        E0 10         CPX #$10                  ;
CODE_049B2B:        D0 EC         BNE CODE_049B19           ;
CODE_049B2D:        E2 20         SEP #$20                  ;
CODE_049B2F:        EE 00 12      INC $1200                 ;
CODE_049B32:        FA            PLX                       ;
CODE_049B33:        AB            PLB                       ;
CODE_049B34:        6B            RTL                       ;

CODE_049B35:        8B            PHB                       ;
CODE_049B36:        4B            PHK                       ;
CODE_049B37:        AB            PLB                       ;
CODE_049B38:        DA            PHX                       ;
CODE_049B39:        5A            PHY                       ;
CODE_049B3A:        48            PHA                       ;
CODE_049B3B:        A9 20         LDA #$20                  ;
CODE_049B3D:        85 00         STA $00                   ;
CODE_049B3F:        A5 BA         LDA $BA                   ;
CODE_049B41:        C9 03         CMP #$03                  ;
CODE_049B43:        D0 02         BNE CODE_049B47           ;
CODE_049B45:        06 00         ASL $00                   ;
CODE_049B47:        AD FD 0E      LDA $0EFD                 ;
CODE_049B4A:        18            CLC                       ;
CODE_049B4B:        65 00         ADC $00                   ;
CODE_049B4D:        29 F0         AND #$F0                  ;
CODE_049B4F:        4A            LSR A                     ;
CODE_049B50:        4A            LSR A                     ;
CODE_049B51:        8D F7 0E      STA $0EF7                 ;
CODE_049B54:        4A            LSR A                     ;
CODE_049B55:        85 00         STA $00                   ;
CODE_049B57:        A5 00         LDA $00                   ;
CODE_049B59:        D0 13         BNE CODE_049B6E           ;
CODE_049B5B:        AD F6 0E      LDA $0EF6                 ;
CODE_049B5E:        F0 07         BEQ CODE_049B67           ;
CODE_049B60:        9C F6 0E      STZ $0EF6                 ;
CODE_049B63:        A9 14         LDA #$14                  ;
CODE_049B65:        80 14         BRA CODE_049B7B           ;

CODE_049B67:        A9 10         LDA #$10                  ;
CODE_049B69:        8D F6 0E      STA $0EF6                 ;
CODE_049B6C:        80 0D         BRA CODE_049B7B           ;

CODE_049B6E:        AD FE 0E      LDA $0EFE                 ;
CODE_049B71:        29 01         AND #$01                  ;
CODE_049B73:        F0 04         BEQ CODE_049B79           ;
CODE_049B75:        A9 10         LDA #$10                  ;
CODE_049B77:        80 02         BRA CODE_049B7B           ;

CODE_049B79:        A9 14         LDA #$14                  ;
CODE_049B7B:        85 01         STA $01                   ;
CODE_049B7D:        AD FE 0E      LDA $0EFE                 ;
CODE_049B80:        29 0F         AND #$0F                  ;
CODE_049B82:        A6 00         LDX $00                   ;
CODE_049B84:        D0 01         BNE CODE_049B87           ;
CODE_049B86:        1A            INC A                     ;
CODE_049B87:        1A            INC A                     ;
CODE_049B88:        0A            ASL A                     ;
CODE_049B89:        0A            ASL A                     ;
CODE_049B8A:        0A            ASL A                     ;
CODE_049B8B:        8D F8 0E      STA $0EF8                 ;
CODE_049B8E:        20 BC 9B      JSR CODE_049BBC           ;
CODE_049B91:        68            PLA                       ;
CODE_049B92:        7A            PLY                       ;
CODE_049B93:        FA            PLX                       ;
CODE_049B94:        AB            PLB                       ;
CODE_049B95:        6B            RTL                       ;

CODE_049B96:        AD FD 0E      LDA $0EFD                 ;
CODE_049B99:        29 F0         AND #$F0                  ;
CODE_049B9B:        4A            LSR A                     ;
CODE_049B9C:        4A            LSR A                     ;
CODE_049B9D:        8D F7 0E      STA $0EF7                 ;
CODE_049BA0:        4A            LSR A                     ;
CODE_049BA1:        85 00         STA $00                   ;
CODE_049BA3:        AD FE 0E      LDA $0EFE                 ;
CODE_049BA6:        0A            ASL A                     ;
CODE_049BA7:        0A            ASL A                     ;
CODE_049BA8:        0A            ASL A                     ;
CODE_049BA9:        8D F8 0E      STA $0EF8                 ;
CODE_049BAC:        AD FE 0E      LDA $0EFE                 ;
CODE_049BAF:        29 01         AND #$01                  ;
CODE_049BB1:        F0 04         BEQ CODE_049BB7           ;
CODE_049BB3:        A9 14         LDA #$14                  ;
CODE_049BB5:        80 02         BRA CODE_049BB9           ;

CODE_049BB7:        A9 10         LDA #$10                  ;
CODE_049BB9:        85 01         STA $01                   ;
CODE_049BBB:        60            RTS                       ;

CODE_049BBC:        C2 30         REP #$30                  ;
CODE_049BBE:        A9 04 00      LDA #$0004                ;
CODE_049BC1:        8D FA 0E      STA $0EFA                 ;something related to how many background tiles you load as you scroll
CODE_049BC4:        A5 BA         LDA $BA                   ;\
CODE_049BC6:        29 FF 00      AND #$00FF                ; |
CODE_049BC9:        C9 03 00      CMP #$0003                ; | Branch if not Black background with castle music
CODE_049BCC:        D0 03         BNE CODE_049BD1           ;/
CODE_049BCE:        0E FA 0E      ASL $0EFA                 ;When Black background with castle music, do this
CODE_049BD1:        AF 00 00 7F   LDA $7F0000               ;
CODE_049BD5:        A8            TAY                       ;
CODE_049BD6:        A5 00         LDA $00                   ;
CODE_049BD8:        29 20 00      AND #$0020                ;
CODE_049BDB:        F0 0B         BEQ CODE_049BE8           ;
CODE_049BDD:        A5 00         LDA $00                   ;
CODE_049BDF:        18            CLC                       ;
CODE_049BE0:        69 00 04      ADC #$0400                ;
CODE_049BE3:        29 00 14      AND #$1400                ;
CODE_049BE6:        85 00         STA $00                   ;
CODE_049BE8:        BB            TYX                       ;
CODE_049BE9:        A5 00         LDA $00                   ;
CODE_049BEB:        38            SEC                       ;
CODE_049BEC:        E9 00 08      SBC #$0800                ;
CODE_049BEF:        9F 02 00 7F   STA $7F0002,x             ;
CODE_049BF3:        A9 20 00      LDA #$0020                ;
CODE_049BF6:        85 02         STA $02                   ;
CODE_049BF8:        9B            TXY                       ;
CODE_049BF9:        AD F7 0E      LDA $0EF7                 ;
CODE_049BFC:        29 40 00      AND #$0040                ;
CODE_049BFF:        F0 0D         BEQ CODE_049C0E           ;
CODE_049C01:        A9 00 08      LDA #$0800                ;
CODE_049C04:        18            CLC                       ;
CODE_049C05:        6D F7 0E      ADC $0EF7                 ;
CODE_049C08:        29 00 FF      AND #$FF00                ;
CODE_049C0B:        8D F7 0E      STA $0EF7                 ;
CODE_049C0E:        AE F7 0E      LDX $0EF7                 ;
CODE_049C11:        86 04         STX $04                   ;
CODE_049C13:        BF 00 20 7E   LDA $7E2000,x             ;
CODE_049C17:        BB            TYX                       ;
CODE_049C18:        9F 04 00 7F   STA $7F0004,x             ;
CODE_049C1C:        C8            INY                       ;
CODE_049C1D:        C8            INY                       ;
CODE_049C1E:        A5 04         LDA $04                   ;
CODE_049C20:        18            CLC                       ;
CODE_049C21:        69 40 00      ADC #$0040                ;
CODE_049C24:        85 04         STA $04                   ;
CODE_049C26:        AA            TAX                       ;
CODE_049C27:        C6 02         DEC $02                   ;
CODE_049C29:        10 E8         BPL CODE_049C13           ;
CODE_049C2B:        BB            TYX                       ;
CODE_049C2C:        A9 24 00      LDA #$0024                ;
CODE_049C2F:        9F 00 00 7F   STA $7F0000,x             ;
CODE_049C33:        EE F7 0E      INC $0EF7                 ;
CODE_049C36:        EE F7 0E      INC $0EF7                 ;
CODE_049C39:        E6 00         INC $00                   ;
CODE_049C3B:        CE FA 0E      DEC $0EFA                 ;
CODE_049C3E:        D0 96         BNE CODE_049BD6           ;
CODE_049C40:        98            TYA                       ;
CODE_049C41:        8F 00 00 7F   STA $7F0000               ;
CODE_049C45:        AA            TAX                       ;
CODE_049C46:        A9 FF FF      LDA #$FFFF                ;
CODE_049C49:        9F 02 00 7F   STA $7F0002,x             ;
CODE_049C4D:        E2 30         SEP #$30                  ;
CODE_049C4F:        A9 01         LDA #$01                  ;
CODE_049C51:        8D F9 0E      STA $0EF9                 ;
CODE_049C54:        60            RTS                       ;

DATA_049C55:        dw $8D0A,$0B00,$0024,$0024
                    dw $1E45,$1E46,$1E47,$0024
                    dw $AD0A,$0B00,$1E4A,$1E4B
                    dw $1E48,$1E49,$1E59,$0024
                    dw $CD0A,$0B00,$1E5A,$1E5B
                    dw $1E69,$1E6A,$1E6F,$0024
                    dw $ED0A,$0B00,$0024,$1E6B
                    dw $1E4C,$1E4D,$1E4E,$1E4F
                    dw $0D0B,$0B00,$0024,$0024
                    dw $1E5C,$1E5D,$1E5E,$1E5F
                    dw $2D0B,$0B00,$0024,$1E7A
                    dw $1E6C,$1E6D,$1E6E,$0024
                    dw $4D0B,$0B00,$0024,$1E7B
                    dw $1E7C,$1E7D,$1E7E,$0024
                    dw $FFFF

DATA_049CC7:        dw $4D0A,$0B00,$0024,$1680
                    dw $1681,$1682,$0024,$0024
                    dw $6D0A,$0B00,$0024,$1683
                    dw $1684,$1685,$0024,$0024
                    dw $8D0A,$0B00,$0024,$1686
                    dw $1687,$1688,$0024,$0024
                    dw $AD0A,$0B00,$0024,$1689
                    dw $168A,$168B,$168C,$0024
                    dw $CD0A,$0B00,$0024,$168D
                    dw $168E,$168F,$1690,$0024
                    dw $ED0A,$0B00,$1691,$1692
                    dw $1693,$1694,$1695,$0024
                    dw $0D0B,$0B00,$1696,$1697
                    dw $1698,$1699,$0024,$0024
                    dw $2D0B,$0B00,$0024,$169A
                    dw $169B,$169C,$0024,$0024
                    dw $4D0B,$0B00,$0024,$169D
                    dw $169E,$169F,$16A0,$0024
                    dw $FFFF

DATA_049D59:        dw $F30A,$0900,$1A40,$1A41
                    dw $1A42,$1A43,$1A44,$130B
                    dw $1100,$1A50,$1A51,$1A52
                    dw $1A53,$1A54,$1A55,$1A56
                    dw $1A57,$1A58,$330B,$1100
                    dw $1A60,$1A61,$1A62,$1A63
                    dw $1A64,$1A65,$1A66,$1A67
                    dw $1A68,$530B,$1300,$1A70
                    dw $1A71,$1A72,$1A73,$1A74
                    dw $1A75,$1A76,$1A77,$1A78
                    dw $1A79,$FFFF

DATA_049DAD:        dw $C801,$1E40,$0024,$E801
                    dw $1E40,$0024,$0802,$1E40
                    dw $0024,$2802,$1E40,$0024
                    dw $4802,$1E40,$0024,$6802
                    dw $1E40,$0024,$8802,$1E40
                    dw $0024,$A802,$1E40,$0024
                    dw $C802,$1E40,$0024,$E802
                    dw $1E40,$0024,$FFFF

DATA_049DEB:        dw $E801,$1F00,$18EC,$18ED
                    dw $18EE,$18EF,$18EC,$18ED
                    dw $18EE,$18EF,$18EC,$18ED
                    dw $18EE,$18EF,$18EC,$18ED
                    dw $18EE,$18EF,$4C02,$0B80
                    dw $1D4A,$1D5A,$1D4A,$1D5A
                    dw $1082,$1084,$4D02,$0B80
                    dw $1D4B,$1D5B,$1D4B,$1D5B
                    dw $1083,$1085,$080A,$1E40
                    dw $1900,$280A,$1E40,$1900
                    dw $480A,$1E40,$1901,$680A
                    dw $1E40,$1901,$880A,$1E40
                    dw $1901,$A80A,$1E40,$1901
                    dw $C80A,$1E40,$1901,$E80A
                    dw $1E40,$1901,$FFFF,$CA09
                    dw $0900,$1DDF,$1DC3,$1DC0
                    dw $1DC1,$1DCA,$EA09,$0B00
                    dw $1DDC,$1DD3,$1DD0,$1DD1
                    dw $1DDA,$1DDB,$090A,$0D00
                    dw $1DDD,$1DE2,$1DE3,$1DE0
                    dw $1DE1,$1DE2,$1DF8,$290A
                    dw $0D00,$1DDE,$1DF2,$1DF3
                    dw $1DF0,$1DF1,$1DF2,$1DF3
                    dw $490A,$1B00,$1DE9,$1DC6
                    dw $1DC7,$1DC4,$1DC5,$1DC6
                    dw $1DC7,$1DE8,$0024,$0024
                    dw $1DE9,$1DEA,$1DEB,$1DE8
                    dw $690A,$1B00,$1DF9,$1DD6
                    dw $1DD7,$1DD4,$1DD5,$1DD6
                    dw $1DD7,$1DF8,$0024,$0024
                    dw $1DF9,$1DFA,$1DFB,$1DF8
                    dw $890A,$1B00,$1DE5,$1DE6
                    dw $1DE7,$1DE4,$1DE5,$1DE6
                    dw $1DE7,$1DE4,$0024,$0024
                    dw $1DE5,$1DE6,$1DE7,$1DE4
                    dw $A90A,$1B00,$1DF5,$1DF6
                    dw $1DF7,$1DF4,$1DF5,$1DF6
                    dw $1DF7,$1DF4,$0024,$0024
                    dw $1DF5,$1DF6,$1DF7,$1DF4
                    dw $C802,$1F00,$0A08,$0A09
                    dw $0A08,$0A09,$0A08,$0A09
                    dw $0A08,$0A09,$0A08,$0A09
                    dw $0A08,$0A09,$0A08,$0A09
                    dw $0A08,$0A09,$E802,$1F00
                    dw $0A18,$0A19,$0A18,$0A19
                    dw $0A18,$0A19,$0A18,$0A19
                    dw $0A18,$0A19,$0A18,$0A19
                    dw $0A18,$0A19,$0A18,$0A19
                    dw $FFFF,$CA09,$0900,$1DDF
                    dw $1DC3,$1DC0,$1DC1,$1DCA
                    dw $EA09,$0B00,$1DDC,$1DD3
                    dw $1DD0,$1DD1,$1DDA,$1DDB
                    dw $090A,$0D00,$1DDD,$1DE2
                    dw $1DE3,$1DE0,$1DE1,$1DE2
                    dw $1DF8,$290A,$0D00,$1DDE
                    dw $1DF2,$1DF3,$1DF0,$1DF1
                    dw $1DF2,$1DF3,$490A,$1B00
                    dw $1DE9,$1DC6,$1DC7,$1DC4
                    dw $1DC5,$1DC6,$1DC7,$1DE8
                    dw $0024,$0024,$1DE9,$1DEA
                    dw $1DEB,$1DE8,$690A,$1B00
                    dw $1DF9,$1DD6,$1DD7,$1DD4
                    dw $1DD5,$1DD6,$1DD7,$1DF8
                    dw $0024,$0024,$1DF9,$1DFA
                    dw $1DFB,$1DF8,$890A,$1B00
                    dw $1DE5,$1DE6,$1DE7,$1DE4
                    dw $1DE5,$1DE6,$1DE7,$1DE4
                    dw $0024,$0024,$1DE5,$1DE6
                    dw $1DE7,$1DE4,$A90A,$1B00
                    dw $1DF5,$1DF6,$1DF7,$1DF4
                    dw $1DF5,$1DF6,$1DF7,$1DF4
                    dw $0024,$0024,$1DF5,$1DF6
                    dw $1DF7,$1DF4,$0A02,$0B80
                    dw $08B8,$08BA,$08BA,$08BC
                    dw $0CBE,$0CBE,$0B02,$0B80
                    dw $08B9,$08BB,$08BB,$08BD
                    dw $0CBF,$0CBF,$9202,$0700
                    dw $1214,$1215,$1214,$1215
                    dw $B202,$0700,$1216,$1217
                    dw $1216,$1217,$C802,$1F00
                    dw $0A08,$0A09,$0A08,$0A09
                    dw $0A08,$0A09,$0A08,$0A09
                    dw $0A08,$0A09,$0A08,$0A09
                    dw $0A08,$0A09,$0A08,$0A09
                    dw $E802,$1F00,$0A18,$0A19
                    dw $0A18,$0A19,$0A18,$0A19
                    dw $0A18,$0A19,$0A18,$0A19
                    dw $0A18,$0A19,$0A18,$0A19
                    dw $0A18,$0A19,$FFFF,$C809
                    dw $1F00,$1DC2,$1DC3,$1DC0
                    dw $1DC1,$1DC2,$1DC3,$1DC0
                    dw $1DC1,$1DC2,$1DC3,$1DC0
                    dw $1DC1,$1DC2,$1DC3,$1DC0
                    dw $1DC1,$E809,$1F00,$1DD2
                    dw $1DD3,$1DD0,$1DD1,$1DD2
                    dw $1DD3,$1DD0,$1DD1,$1DD2
                    dw $1DD3,$1DD0,$1DD1,$1DD2
                    dw $1DD3,$1DD0,$1DD1,$080A
                    dw $1F00,$1DE2,$1DE1,$1DE2
                    dw $1DE1,$1DE2,$1DE1,$1DE2
                    dw $1DE1,$1DE2,$1DE1,$1DE2
                    dw $1DE1,$1DE2,$1DE1,$1DE2
                    dw $1DE1,$280A,$1F00,$1DD2
                    dw $1DD1,$1DE4,$1DE5,$1DD2
                    dw $1D82,$1D83,$1D84,$1D85
                    dw $1D80,$1D81,$1DD1,$1DE4
                    dw $1DE5,$1DD2,$1DD1,$480A
                    dw $1F00,$1DE2,$1DE1,$1DF4
                    dw $1DF5,$1DE2,$1DDC,$1DDD
                    dw $1DDE,$1DDF,$1D90,$1D91
                    dw $1DE1,$1DF4,$1DF5,$1DE2
                    dw $1DE1,$680A,$1F00,$1DD2
                    dw $1DD1,$1DD8,$1DE8,$1DD2
                    dw $1DEC,$1DED,$1DEE,$1DEF
                    dw $1DA0,$1DA1,$1DD1,$1DD8
                    dw $1DE8,$1DD2,$1DD1,$880A
                    dw $1F00,$1DE2,$1DE1,$1DE2
                    dw $1DE1,$1DE2,$1DFC,$1DFD
                    dw $1DFE,$1DFF,$1DB0,$1DB1
                    dw $1DE1,$1DE2,$1DE1,$1DE2
                    dw $1DE1,$A80A,$1F00,$1DF0
                    dw $1DF1,$1DF2,$1DF3,$1DF0
                    dw $1DF1,$1DF2,$1DF3,$1DF0
                    dw $1DF1,$1DF2,$1DF3,$1DF0
                    dw $1DF1,$1DF2,$1DF3,$0A02
                    dw $0B80,$08B8,$08BA,$08BA
                    dw $08BC,$0CBE,$0CBE,$0B02
                    dw $0B80,$08B9,$08BB,$08BB
                    dw $08BD,$0CBF,$0CBF,$9202
                    dw $0700,$1214,$1215,$1214
                    dw $1215,$B202,$0700,$1216
                    dw $1217,$1216,$1217,$C802
                    dw $1F00,$0A08,$0A09,$0A08
                    dw $0A09,$0A08,$0A09,$0A08
                    dw $0A09,$0A08,$0A09,$0A08
                    dw $0A09,$0A08,$0A09,$0A08
                    dw $0A09,$E802,$1F00,$0A18
                    dw $0A19,$0A18,$0A19,$0A18
                    dw $0A19,$0A18,$0A19,$0A18
                    dw $0A19,$0A18,$0A19,$0A18
                    dw $0A19,$0A18,$0A19,$FFFF
                    dw $EB01,$0300,$10D6,$10D7
                    dw $0A02,$0700,$10D8,$10D9
                    dw $10DA,$10DB,$2A02,$0700
                    dw $10DC,$10DD,$10DE,$10DF
                    dw $5302,$0700,$1501,$1502
                    dw $1503,$1504,$7202,$0B00
                    dw $1510,$1511,$150A,$1505
                    dw $1514,$1515,$9102,$0D00
                    dw $1506,$1516,$150A,$1512
                    dw $150A,$150A,$150D,$B002
                    dw $0F00,$1506,$1516,$150A
                    dw $150A,$9512,$1519,$150A
                    dw $151D,$C802,$1F00,$0A08
                    dw $0A09,$0A08,$0A09,$0A08
                    dw $0A09,$0A08,$0A09,$0A08
                    dw $0A09,$0A08,$0A09,$0A08
                    dw $0A09,$0A08,$0A09,$E802
                    dw $1F00,$0A18,$0A19,$0A18
                    dw $0A19,$0A18,$0A19,$0A18
                    dw $0A19,$0A18,$0A19,$0A18
                    dw $0A19,$0A18,$0A19,$0A18
                    dw $0A19,$FFFF,$C801,$1E40
                    dw $0C47,$CD01,$0700,$0868
                    dw $0869,$0897,$086A,$E801
                    dw $0D80,$0C45,$0C47,$0C45
                    dw $0C47,$0C45,$0C47,$0C45
                    dw $E901,$1D00,$1D32,$1D33
                    dw $1D30,$1D31,$8864,$8865
                    dw $8866,$8867,$1D32,$1D33
                    dw $1D30,$1D31,$1D32,$1D33
                    dw $1D30,$0902,$1D00,$1D02
                    dw $1D03,$1D00,$1D01,$8860
                    dw $8861,$8862,$8863,$1D02
                    dw $1D03,$1D48,$1D49,$1D4A
                    dw $1D4B,$1D00,$2902,$1D00
                    dw $153A,$1D13,$1D10,$1D11
                    dw $1D12,$1D13,$1D10,$1D11
                    dw $1D12,$1D13,$1D58,$1D59
                    dw $1D5A,$1D5B,$1D10,$4902
                    dw $1D00,$1D22,$1D23,$1D20
                    dw $1D21,$1D22,$1D23,$1D20
                    dw $1D21,$1D22,$1D23,$1D68
                    dw $1D69,$1D6A,$1D6B,$1D20
                    dw $6902,$1D00,$1D32,$1D33
                    dw $151D,$151D,$1D32,$1D33
                    dw $1D30,$1D31,$1D32,$1D33
                    dw $1D78,$1D79,$1D7A,$1D7B
                    dw $1D30,$8902,$1D00,$1D02
                    dw $1D03,$1528,$1529,$1D02
                    dw $1D03,$1D00,$1D01,$1D02
                    dw $1D03,$1D00,$1D01,$1D02
                    dw $1D03,$1D00,$A902,$1D00
                    dw $1D12,$1D13,$1D10,$1D11
                    dw $1D12,$1D13,$1D10,$1D11
                    dw $1D12,$1D13,$1D10,$1D11
                    dw $1D12,$1D13,$1D10,$C802
                    dw $1F00,$0A08,$0A09,$0A08
                    dw $0A09,$0A08,$0A09,$0A08
                    dw $0A09,$0A08,$0A09,$0A08
                    dw $0A09,$0A08,$0A09,$0A08
                    dw $0A09,$E802,$1F00,$0A18
                    dw $0A19,$0A18,$0A19,$0A18
                    dw $0A19,$0A18,$0A19,$0A18
                    dw $0A19,$0A18,$0A19,$0A18
                    dw $0A19,$0A18,$0A19,$FFFF
                    dw $C801,$1F00,$09E6,$09E7
                    dw $09E8,$09E9,$09E6,$09E7
                    dw $09E8,$09E9,$09E6,$09E7
                    dw $09E8,$09E9,$09E6,$09E7
                    dw $09E8,$09E9,$E801,$1F00
                    dw $09F6,$09F7,$09F8,$09F9
                    dw $09F6,$09F7,$09F8,$09F9
                    dw $09F6,$09F7,$09F8,$09F9
                    dw $09F6,$09F7,$09F8,$09F9
                    dw $080A,$1E40,$1534,$280A
                    dw $1E40,$1534,$480A,$1E40
                    dw $1534,$680A,$1E40,$1534
                    dw $880A,$1E40,$1534,$A80A
                    dw $1E40,$1534,$CB0A,$1840
                    dw $1534,$EB0A,$0E40,$1534
                    dw $0B0A,$0EC0,$1536,$0C0A
                    dw $0EC0,$1537,$0D0A,$0EC0
                    dw $1528,$130A,$0CC0,$1536
                    dw $140A,$0CC0,$1537,$150A
                    dw $0CC0,$1528,$C802,$1F00
                    dw $09CA,$09CB,$09CA,$09C3
                    dw $0024,$0024,$0024,$0024
                    dw $09C0,$09CB,$09CA,$09C3
                    dw $189B,$189C,$189B,$189C
                    dw $E802,$1F00,$09DA,$09DB
                    dw $09DA,$09D3,$18E0,$18E1
                    dw $18E0,$18E1,$09D0,$09DB
                    dw $09DA,$09D3,$189D,$189E
                    dw $189D,$189E,$FFFF,$C809
                    dw $1E40,$1534,$E809,$1E40
                    dw $1534,$080A,$1E40,$1534
                    dw $280A,$1E40,$1534,$480A
                    dw $1E40,$1534,$680A,$1E40
                    dw $1534,$880A,$1E40,$1534
                    dw $A80A,$1E40,$1534,$CB0A
                    dw $1840,$1534,$EB0A,$0E40
                    dw $1534,$CE09,$09C0,$1536
                    dw $CF09,$09C0,$1537,$6E0A
                    dw $0300,$9526,$9527,$8D0A
                    dw $0700,$9524,$9516,$9517
                    dw $9518,$AD0A,$0700,$1532
                    dw $1522,$1522,$1523,$D209
                    dw $0B00,$1DA8,$1DA9,$1D8A
                    dw $1D8B,$5DA9,$1DAC,$F209
                    dw $0B00,$1DA8,$1DB9,$1DB9
                    dw $1DB9,$1DBA,$1DAC,$120A
                    dw $0B00,$1DA8,$1D89,$1D8A
                    dw $1D8B,$5D89,$1D9C,$320A
                    dw $0B00,$1DA8,$1D99,$1D9A
                    dw $1D9B,$5D99,$1DAC,$520A
                    dw $0B00,$1DA8,$1DA9,$1D8A
                    dw $1D8B,$5DA9,$1DAC,$720A
                    dw $0B00,$1DB8,$1DB9,$1DB9
                    dw $1DB9,$1DB9,$1DBA,$E909
                    dw $0700,$1DB0,$1DB1,$5DB1
                    dw $5DB0,$090A,$0700,$1DB2
                    dw $1CE8,$1CE9,$5DB2,$290A
                    dw $0700,$1DB3,$1CEA,$1CEB
                    dw $5DB3,$490A,$0700,$1D34
                    dw $1D8E,$1D8F,$1D34,$C80A
                    dw $1F00,$1510,$1511,$1510
                    dw $1511,$1510,$1511,$1510
                    dw $1511,$1510,$1511,$1510
                    dw $1511,$1510,$1511,$1510
                    dw $1511,$E80A,$1F00,$1520
                    dw $1521,$1520,$1521,$1520
                    dw $1521,$1520,$1521,$1520
                    dw $1521,$1520,$1521,$1520
                    dw $1521,$1520,$1521,$C802
                    dw $1F00,$09CA,$09CB,$09CA
                    dw $09C3,$0024,$0024,$0024
                    dw $0024,$09C0,$09CB,$09CA
                    dw $09C3,$189B,$189C,$189B
                    dw $189C,$E802,$1F00,$09DA
                    dw $09DB,$09DA,$09D3,$18E0
                    dw $18E1,$18E0,$18E1,$09D0
                    dw $09DB,$09DA,$09D3,$189D
                    dw $189E,$189D,$189E,$FFFF
                    dw $0802,$0B00,$186B,$182C
                    dw $186C,$186D,$186E,$186F
                    dw $2802,$0B00,$1870,$182D
                    dw $1871,$1872,$1873,$1874
                    dw $4A02,$0300,$1875,$1876
                    dw $6A02,$09C0,$189F,$6B02
                    dw $09C0,$589F,$5002,$0B00
                    dw $186B,$182C,$186C,$186D
                    dw $186E,$186F,$7002,$0B00
                    dw $1870,$182D,$1871,$1872
                    dw $1873,$1874,$9202,$0300
                    dw $1875,$1876,$B202,$0300
                    dw $189F,$589F,$C802,$1F00
                    dw $186B,$182C,$186C,$186D
                    dw $186E,$182C,$186C,$186D
                    dw $186E,$182C,$186C,$186D
                    dw $186E,$182C,$186C,$186F
                    dw $E802,$1F00,$1870,$182D
                    dw $1871,$1872,$1873,$182D
                    dw $1871,$1872,$1873,$182D
                    dw $1871,$1872,$1873,$182D
                    dw $1873,$1874,$CA09,$0B00
                    dw $1DCA,$1DCB,$1DCC,$1DCD
                    dw $1DCE,$1DCF,$EA09,$0B00
                    dw $1DDA,$1DDB,$1DDC,$1DDD
                    dw $1DDE,$1DDF,$0C0A,$0B80
                    dw $1DF2,$1DE2,$1DE2,$1DE2
                    dw $1DE2,$1DE2,$0D0A,$0B80
                    dw $1DF3,$1DE3,$1DE3,$1DE3
                    dw $1DE3,$1DE3,$F109,$0B00
                    dw $1DCA,$1DCB,$1DCC,$1DCD
                    dw $1DCE,$1DCF,$110A,$0B00
                    dw $1DDA,$1DDB,$1DDC,$1DDD
                    dw $1DDE,$1DDF,$330A,$0B80
                    dw $1DF2,$1DE2,$1DE2,$1DE2
                    dw $1DE2,$1DE2,$340A,$0B80
                    dw $1DF3,$1DE3,$1DE3,$1DE3
                    dw $1DE3,$1DE3,$FFFF,$0802
                    dw $0B00,$186B,$182C,$186C
                    dw $186D,$186E,$186F,$2802
                    dw $0B00,$1870,$182D,$1871
                    dw $1872,$1873,$1874,$5002
                    dw $0B00,$186B,$182C,$186C
                    dw $186D,$186E,$186F,$7002
                    dw $0B00,$1870,$182D,$1871
                    dw $1872,$1873,$1874,$C802
                    dw $1F00,$186B,$182C,$186C
                    dw $186D,$186E,$182C,$186C
                    dw $186D,$186E,$182C,$186C
                    dw $186D,$186E,$182C,$186C
                    dw $186F,$E802,$1F00,$1870
                    dw $182D,$1871,$1872,$1873
                    dw $182D,$1871,$1872,$1873
                    dw $182D,$1871,$1872,$1873
                    dw $182D,$1873,$1874,$CA09
                    dw $0B00,$1DCA,$1DCB,$1DCC
                    dw $1DCD,$1DCE,$1DCF,$EA09
                    dw $0B00,$1DDA,$1DDB,$1DDC
                    dw $1DDD,$1DDE,$1DDF,$0C0A
                    dw $0B80,$1DF2,$1DE2,$1DE2
                    dw $1DE2,$1DE2,$1DE2,$0D0A
                    dw $0B80,$1DF3,$1DE3,$1DE3
                    dw $1DE3,$1DE3,$1DE3,$F109
                    dw $0B00,$1DCA,$1DCB,$1DCC
                    dw $1DCD,$1DCE,$1DCF,$110A
                    dw $0B00,$1DDA,$1DDB,$1DDC
                    dw $1DDD,$1DDE,$1DDF,$330A
                    dw $0B80,$1DF2,$1DE2,$1DE2
                    dw $1DE2,$1DE2,$1DE2,$340A
                    dw $0B80,$1DF3,$1DE3,$1DE3
                    dw $1DE3,$1DE3,$1DE3,$FFFF
                    dw $C802,$0300,$0CAB,$0CAD
                    dw $E802,$0300,$0CAC,$0CAE
                    dw $CA02,$1B40,$3221,$AA02
                    dw $0100,$0881,$AB02,$1940
                    dw $2A20,$0E0A,$0F80,$1DE0
                    dw $1DF0,$1DC3,$1DD3,$1DE3
                    dw $1DF3,$1DC1,$1DE2,$0F0A
                    dw $0F80,$1DE1,$5DF0,$1DC4
                    dw $1DD4,$1DE4,$1DF4,$1DD0
                    dw $1DF2,$4D0A,$0100,$1DC2
                    dw $500A,$0100,$1DC5,$CD0A
                    dw $0100,$1DC0,$D00A,$0100
                    dw $1DD1,$540A,$0B80,$15CA
                    dw $15F1,$15C6,$15D6,$15E6
                    dw $15F6,$550A,$0B80,$15CB
                    dw $55F1,$15C7,$15D7,$15E7
                    dw $15F7,$FFFF,$0902,$1300
                    dw $104B,$104D,$104D,$104D
                    dw $104D,$104D,$104D,$104D
                    dw $104D,$1050,$2902,$1300
                    dw $104C,$104E,$104F,$104A
                    dw $104F,$104A,$104F,$104A
                    dw $104E,$1051,$4D02,$0780
                    dw $1204,$1210,$1200,$1210
                    dw $4E02,$0780,$1207,$1213
                    dw $1203,$1213,$C802,$1F00
                    dw $104B,$104D,$104D,$104D
                    dw $104D,$104D,$104D,$104D
                    dw $104D,$104D,$104D,$104D
                    dw $104D,$104D,$104D,$1050
                    dw $E802,$1F00,$104C,$104E
                    dw $104F,$104A,$104F,$104A
                    dw $104F,$104A,$104F,$104A
                    dw $104F,$104A,$104F,$104A
                    dw $104E,$1051,$EA09,$0100
                    dw $1CC0,$F609,$0100,$1CC4
                    dw $D509,$0100,$1CC1,$CF09
                    dw $0100,$1CC6,$150A,$0100
                    dw $1CC2,$710A,$0100,$1CC5
                    dw $360A,$0100,$1CC5,$500A
                    dw $0100,$1CC4,$540A,$0100
                    dw $1CC7,$770A,$0100,$1CC3
                    dw $6F0A,$0100,$1CC4,$930A
                    dw $0100,$1CC2,$890A,$0100
                    dw $1CC5,$6B0A,$0100,$1CC1
                    dw $480A,$0100,$1CC0,$FFFF
                    dw $0902,$1300,$104B,$104D
                    dw $104D,$104D,$104D,$104D
                    dw $104D,$104D,$104D,$1050
                    dw $2902,$1300,$104C,$104E
                    dw $104F,$104A,$104F,$104A
                    dw $104F,$104A,$104E,$1051
                    dw $4D02,$0780,$1204,$1210
                    dw $1200,$1210,$4E02,$0780
                    dw $1207,$1213,$1203,$1213
                    dw $C802,$1F00,$104B,$104D
                    dw $104D,$104D,$104D,$104D
                    dw $104D,$104D,$104D,$104D
                    dw $104D,$104D,$104D,$104D
                    dw $104D,$1050,$E802,$1F00
                    dw $104C,$104E,$104F,$104A
                    dw $104F,$104A,$104F,$104A
                    dw $104F,$104A,$104F,$104A
                    dw $104F,$104A,$104E,$1051
                    dw $FFFF,$0902,$1300,$104B
                    dw $104D,$104D,$104D,$104D
                    dw $104D,$104D,$104D,$104D
                    dw $1050,$2902,$1300,$104C
                    dw $104E,$104F,$104A,$104F
                    dw $104A,$104F,$104A,$104E
                    dw $1051,$4D02,$0780,$1204
                    dw $1210,$1200,$1210,$4E02
                    dw $0780,$1207,$1213,$1203
                    dw $1213,$C802,$1F00,$104B
                    dw $104D,$104D,$104D,$104D
                    dw $104D,$104D,$104D,$104D
                    dw $104D,$104D,$104D,$104D
                    dw $104D,$104D,$1050,$E802
                    dw $1F00,$104C,$104E,$104F
                    dw $104A,$104F,$104A,$104F
                    dw $104A,$104F,$104A,$104F
                    dw $104A,$104F,$104A,$104E
                    dw $1051,$680A,$1F00,$1DD4
                    dw $1DD5,$1DC1,$1DC2,$1CCA
                    dw $1CCB,$1CCA,$1CCB,$1CCA
                    dw $1CCB,$1CCA,$1CCB,$1DC0
                    dw $1DD1,$1DD2,$1DD3,$880A
                    dw $1F00,$1DE8,$1DE9,$1DEA
                    dw $1DEB,$1DE0,$1DE1,$1DE4
                    dw $1DE5,$1DE0,$1DE1,$1DE4
                    dw $1DE5,$1DE8,$1DE9,$1DEA
                    dw $1DEB,$A80A,$1F00,$1DF8
                    dw $1DF9,$1DFA,$1DFB,$1DF0
                    dw $1DF1,$1DF4,$1DF5,$1DF0
                    dw $1DF1,$1DF4,$1DF5,$1DF8
                    dw $1DF9,$1DFA,$1DFB,$C80A
                    dw $1F00,$1DC8,$1DC9,$1DCA
                    dw $1DCB,$1DE2,$1DE3,$1DE6
                    dw $1DE7,$1DE2,$1DE3,$1DE6
                    dw $1DE7,$1DC8,$1DC9,$1DCA
                    dw $1DCB,$E80A,$1F00,$1DD8
                    dw $1DD9,$1DDA,$1DDB,$1DF2
                    dw $1DF3,$1DF6,$1DF7,$1DF2
                    dw $1DF3,$1DF6,$1DF7,$1DD8
                    dw $1DD9,$1DDA,$1DDB,$FFFF
                    dw $8A02,$0B00,$1214,$1215
                    dw $1214,$1215,$1214,$1215
                    dw $AA02,$0B00,$1216,$1217
                    dw $1216,$1217,$1216,$1217
                    dw $4C02,$0780,$08B8,$08BC
                    dw $0CBE,$0CBE,$4D02,$0780
                    dw $08B9,$08BD,$0CBF,$0CBF
                    dw $F301,$0300,$10D6,$10D7
                    dw $1202,$0700,$10D8,$10D9
                    dw $10DA,$10DB,$3202,$0700
                    dw $10DC,$10DD,$10DE,$10DF
                    dw $C802,$1F00,$0A08,$0A09
                    dw $0A08,$0A09,$0A08,$0A09
                    dw $0A08,$0A09,$0A08,$0A09
                    dw $0A08,$0A09,$0A08,$0A09
                    dw $0A08,$0A09,$E802,$1F00
                    dw $0A18,$0A19,$0A18,$0A19
                    dw $0A18,$0A19,$0A18,$0A19
                    dw $0A18,$0A19,$0A18,$0A19
                    dw $0A18,$0A19,$0A18,$0A19
                    dw $FFFF,$0A02,$0B80,$08B8
                    dw $08BA,$08BA,$08BC,$0CBE
                    dw $0CBE,$0B02,$0B80,$08B9
                    dw $08BB,$08BB,$08BD,$0CBF
                    dw $0CBF,$9202,$0700,$1214
                    dw $1215,$1214,$1215,$B202
                    dw $0700,$1216,$1217,$1216
                    dw $1217,$C802,$1F00,$0A08
                    dw $0A09,$0A08,$0A09,$0A08
                    dw $0A09,$0A08,$0A09,$0A08
                    dw $0A09,$0A08,$0A09,$0A08
                    dw $0A09,$0A08,$0A09,$E802
                    dw $1F00,$0A18,$0A19,$0A18
                    dw $0A19,$0A18,$0A19,$0A18
                    dw $0A19,$0A18,$0A19,$0A18
                    dw $0A19,$0A18,$0A19,$0A18
                    dw $0A19,$FFFF

DATA_04AD6F:        dw $EB01,$0240,$0024,$0A02
                    dw $0640,$0024,$2A02,$0640
                    dw $0024,$5302,$0640,$0024
                    dw $7202,$0A40,$0024,$9102
                    dw $0C40,$0024,$B002,$0E40
                    dw $0024,$FFFF

DATA_04AD9B:        dw $EB09,$0900,$1CC0,$0024
                    dw $1CC5,$0024,$1CC3,$0C0A
                    dw $0500,$1CC2,$0024,$1CC1
                    dw $290A,$0100,$1CC2,$4B0A
                    dw $0100,$1CC1,$140A,$0100
                    dw $1CC5,$530A,$0700,$1CC3
                    dw $0024,$1CC4,$0024,$680A
                    dw $1F00,$15C6,$15C7,$15C8
                    dw $15C9,$15CA,$15CB,$1CC6
                    dw $15CD,$15C6,$15C7,$15C8
                    dw $15C9,$15CA,$15CB,$15CC
                    dw $15CD,$880A,$1F00,$15D6
                    dw $15D7,$15D8,$15D9,$15DA
                    dw $15DB,$15DC,$15DD,$15D6
                    dw $15D7,$15D8,$15D9,$15DA
                    dw $15DB,$15DC,$15DD,$A80A
                    dw $1F00,$15E6,$15E7,$15E8
                    dw $15E9,$15EA,$15EB,$15EC
                    dw $15ED,$15E6,$15E7,$15E8
                    dw $15E9,$15EA,$15EB,$15EC
                    dw $15ED,$FFFF

DATA_04AE3F:        dw $0000,$0020,$0040,$0060
                    dw $0080,$00A0,$00C0,$00E0
                    dw $0100,$0120,$0140,$0160
                    dw $0180,$01A0,$01C0,$01E0
                    dw $0200,$0220,$0240,$0260
                    dw $0280,$02A0,$02C0,$02E0
                    dw $0300,$0320,$0340,$03A0
                    dw $03E0,$03C0,$03E0,$0420
                    dw $0360,$0380,$02E0,$02E0
                    dw $02E0,$02E0,$0500,$0520
                    dw $0540,$0560,$0580,$05C0
                    dw $05E0,$0600,$0620,$0640
                    dw $0660,$0740,$0780,$07A0
                    dw $0460,$04A0,$04C0,$04E0
                    dw $05A0,$0680,$06A0,$06C0
                    dw $06E0,$0700,$0400,$0720
                    dw $0440,$0480

DATA_04AEC3:        dw $42DD,$7FFF,$1084,$3800 ;THIS TABLE AND THE NEXT ONE LOOKS LIKE PALETTE DATA
                    dw $7708,$035F,$0259,$3800

DATA_04AED3:        dw $7708,$7FFF,$73B9,$6335
                    dw $7708,$7FFF,$722B,$65C8
                    dw $7708,$7FFF,$1084,$1BDF
                    dw $027F,$0139,$1ADA,$0DF3
                    dw $050D,$4F7F,$3298,$15B1
                    dw $3FFF,$45BF,$20D4,$2D3A
                    dw $7BAF,$7FFF,$1084,$57F3
                    dw $0340,$01A0,$0000,$0000
                    dw $0000,$04D0,$0554,$11D8
                    dw $125C,$2BAA,$3800,$0A62
                    dw $7BAF,$7FFF,$0842,$2B30
                    dw $14B8,$0D3F,$029F,$035F
                    dw $0008,$008E,$1575,$1A3A
                    dw $3F5F,$5AD6,$2529,$3DEF
                    dw $7BAF,$7FFF,$1084,$7FB8
                    dw $72B0,$32FC,$2256,$11CF
                    dw $054B,$09E6,$1AAB,$2B30
                    dw $3BB4,$287F,$000E,$0015
                    dw $7BAF,$376D,$1084,$22A9
                    dw $219B,$1538,$04B4,$0470
                    dw $040C,$21C2,$3246,$3EA9
                    dw $4B0C,$534E,$01C3,$1646
                    dw $772F,$7FFF,$1084,$729F
                    dw $51B8,$30B0,$7E97,$6DB0
                    dw $54EA,$294A,$4210,$5EF7
                    dw $6F7B,$571F,$251C,$3E3F
                    dw $7BAF,$7FFF,$1084,$778C
                    dw $6F4A,$6708,$5EC6,$5684
                    dw $4E42,$21C2,$3246,$42CA
                    dw $4F2D,$6372,$1084,$1084
                    dw $45BC,$7FFF,$14A5,$01A5
                    dw $0249,$02CD,$4631,$5AD6
                    dw $0000,$0351,$0019,$011F
                    dw $061F,$129F,$017A,$0113
                    dw $45BC,$7FFF,$14A5,$008D
                    dw $0112,$19D9,$2A9E,$36FF
                    dw $0000,$7FFF,$0813,$2D9B
                    dw $465F,$539F,$1B9F,$1A5F
                    dw $45BC,$7FFF,$14A5,$013B
                    dw $027F,$179F,$0135,$265E
                    dw $0000,$0C9B,$0135,$261D
                    dw $42DF,$6ADF,$4A1D,$28FA
                    dw $734E,$7FFF,$14A5,$3D84
                    dw $5229,$27BF,$31BB,$3ABF
                    dw $0000,$152F,$355D,$525F
                    dw $169B,$1C9F,$0C19,$0C19
                    dw $45BC,$7FFF,$14A5,$013B
                    dw $027F,$179F,$0135,$265E
                    dw $0000,$0C9B,$0220,$0EE0
                    dw $23A0,$6ADF,$4A1D,$28FA
                    dw $45BC,$7FFF,$14A5,$0203
                    dw $0F0A,$2BF1,$0135,$265E
                    dw $0000,$3F5F,$294A,$4631
                    dw $6318,$1A3A,$1575,$008E
                    dw $45BC,$7FFF,$14A5,$0055
                    dw $0C3E,$3D9F,$0135,$265E
                    dw $0000,$42DF,$4025,$74D2
                    dw $7EB2,$261D,$1557,$00AF
                    dw $45BC,$7FFF,$14A5,$0111
                    dw $0DB9,$22DD,$2D9C,$3ABF
                    dw $0000,$0000,$14EC,$1DD4
                    dw $369A,$20BC,$1096,$000F
                    dw $7F92,$7FFF,$1084,$5B0C
                    dw $568A,$5208,$4DA6,$4944
                    dw $44E2,$0887,$14EA,$214D
                    dw $298F,$2936,$0831,$1CD3
                    dw $7F92,$7FFF,$1084,$722B
                    dw $65C8,$5D86,$7F36,$6DB0
                    dw $54EA,$294A,$4210,$5EF7
                    dw $6F7B,$52FF,$35BC,$469C
                    dw $7F92,$7FFF,$0000,$0A1F
                    dw $011D,$0013,$0000,$0000
                    dw $0000,$0887,$14EA,$214D
                    dw $298F,$4280,$2940,$35E0
                    dw $772F,$7FFF,$1084,$57F0
                    dw $0340,$01A0,$1BDF,$027F
                    dw $0139,$3CE1,$5186,$662B
                    dw $7AD0,$2BAA,$3800,$0A62
                    dw $772F,$7FFF,$1084,$0000
                    dw $0000,$0000,$1ADA,$0DF3
                    dw $050D,$3961,$4E06,$62AB
                    dw $7750,$5AD6,$2529,$3DEF
                    dw $772F,$7FFF,$0000,$264E
                    dw $49EC,$41AA,$3968,$3126
                    dw $28E4,$1C41,$28A3,$3506
                    dw $3D48,$0525,$0D88,$19EB
                    dw $772F,$6739,$0000,$2CC5
                    dw $3D89,$3DCD,$4E51,$2EF8
                    dw $1E74,$1C41,$28A3,$3506
                    dw $3D48,$4210,$2108,$318C
                    dw $45BC,$7FFF,$14A5,$2CE0
                    dw $41A3,$5648,$6AED,$7F71
                    dw $0000,$7FFF,$3013,$4D9B
                    dw $625F,$539F,$1B9F,$1A5F
                    dw $45BC,$7FFF,$14A5,$1E22
                    dw $2F01,$3FE0,$0135,$1A9F
                    dw $0000,$7750,$294A,$4631
                    dw $6318,$62AB,$4E06,$3961
                    dw $772F,$7FFF,$1084,$3B1F
                    dw $035F,$029F,$11D7,$0153
                    dw $00CF,$0000,$0000,$0000
                    dw $0000,$0000,$0000,$0000
                    dw $772F,$7FFF,$14A5,$05BF
                    dw $001E,$0017,$46BF,$365D
                    dw $25BB,$04EF,$0D73,$4F7F
                    dw $7F0F,$0000,$0000,$0000
                    dw $45BC,$7FFF,$14C5,$256D
                    dw $3A12,$4A96,$5B1A,$6B9E
                    dw $0000,$7FFF,$210E,$35B7
                    dw $4E79,$539F,$1B9F,$1A5F
                    dw $45BC,$7FFF,$14A5,$1E22
                    dw $2F01,$3FE0,$0135,$1A9F
                    dw $0000,$5B1A,$294A,$4631
                    dw $6318,$4A96,$3A12,$256D
                    dw $7708,$7FFF,$1084,$57F3
                    dw $0340,$01A0,$0000,$0000
                    dw $0000,$1D28,$2DAC,$3E30
                    dw $4EB4,$2BAA,$3800,$0A62
                    dw $7708,$15EF,$114C,$012E
                    dw $00EC,$00AA,$090A,$1D63
                    dw $1521,$0864,$10A6,$18E8
                    dw $212A,$296C,$31AE,$39F0
                    dw $7708,$7FFF,$1084,$097F
                    dw $005A,$000F,$7E97,$6DB0
                    dw $54EA,$256D,$3A12,$4A96
                    dw $5B1A,$571F,$251C,$3E3F
                    dw $7BAF,$7FFF,$1084,$0000
                    dw $0000,$0000,$0000,$0000
                    dw $0000,$294A,$4210,$5EF7
                    dw $6F7B,$5AD6,$2529,$3DEF
                    dw $7708,$7FFF,$3DAD,$314A
                    dw $24E7,$01F6,$0192,$012F
                    dw $00AC,$0864,$10A6,$18E8
                    dw $212A,$296C,$0088,$00CA
                    dw $7BAF,$7FFF,$0842,$2B30
                    dw $14B8,$0D3F,$029F,$035F
                    dw $0008,$008E,$1575,$1A3A
                    dw $3F5F,$6F7B,$5AD6,$3DEF
                    dw $7708,$7FFF,$1084,$77BD
                    dw $5EF7,$3DEF,$1BDF,$027F
                    dw $0139,$0492,$0D17,$25DD
                    dw $3A7F,$6F7B,$3800,$5294
                    dw $3908,$7FFF,$0842,$2B30
                    dw $14B8,$0D3F,$029F,$035F
                    dw $0008,$008E,$1575,$1A3A
                    dw $3F5F,$6F7B,$5AD6,$3DEF
                    dw $7708,$7FFF,$1084,$77BD
                    dw $5EF7,$3DEF,$1BDF,$027F
                    dw $0139,$0492,$0D17,$25DD
                    dw $3A7F,$6F7B,$3800,$5294
                    dw $3908,$4D4B,$18C6,$4509
                    dw $4D2D,$44EB,$3CA9,$7FFF
                    dw $73B9,$21C2,$3246,$42CA
                    dw $4F2D,$6372,$30C3,$3904
                    dw $3C63,$7F7B,$7E73,$5D6B
                    dw $6FFB,$4FF3,$2EEB,$0DE3
                    dw $3FFF,$1EF7,$0A52,$01CE
                    dw $6F7F,$4E7F,$2D77,$0C75
                    dw $7708,$7FFF,$1084,$57F3
                    dw $0340,$01A0,$1BDF,$027F
                    dw $0139,$04D0,$0554,$11D8
                    dw $125C,$2BAA,$3800,$0A62
                    dw $7708,$7FFF,$1084,$0000
                    dw $0000,$0000,$1ADA,$0DF3
                    dw $050D,$008E,$1575,$1A3A
                    dw $3F5F,$5AD6,$2529,$3DEF
                    dw $7708,$7FFF,$1084,$7FB8
                    dw $72B0,$32FC,$2256,$11CF
                    dw $054B,$5AD6,$6739,$739C
                    dw $7FFF,$287F,$000E,$0015
                    dw $7BAF,$7FFF,$1084,$5B5B
                    dw $46D7,$435F,$32DF,$225B
                    dw $11D7,$01B3,$0A37,$1ABB
                    dw $2F5F,$1D3C,$0034,$0CB8
                    dw $7BAF,$7FFF,$1CE7,$4EFF
                    dw $42BF,$53FF,$479D,$3B3A
                    dw $2ED7,$2E7E,$3ADF,$473F
                    dw $4B9F,$0000,$0000,$0000
                    dw $7BAF,$7F38,$216D,$7FBF
                    dw $7F38,$5B3B,$4AB7,$3A33
                    dw $29AF,$2A13,$3A97,$4B1B
                    dw $5B9E,$76B4,$69C9,$7230
                    dw $7BAF,$7FFF,$1084,$2B96
                    dw $1713,$3B9D,$12F8,$0A74
                    dw $01F0,$2A03,$3A87,$4B0B
                    dw $576E,$6BB3,$020B,$028F
                    dw $7BAF,$130F,$05C5,$0A8B
                    dw $01F8,$0172,$010D,$7FFF
                    dw $73B9,$21C2,$3246,$3EA9
                    dw $4B0C,$5FB1,$0589,$0A29
                    dw $7BAF,$7FFF,$1084,$7FFF
                    dw $6FD9,$7FFF,$777B,$66F7
                    dw $5673,$4E7F,$5EFF,$6F7F
                    dw $7FFF,$6372,$4ED1,$5F55
                    dw $7BAF,$7FFF,$1907,$5B57
                    dw $577C,$46F8,$3674,$25F0
                    dw $156C,$296D,$39F1,$4A75
                    dw $5AF9,$6B7D,$3A4F,$4AD3
                    dw $7708,$15EF,$114C,$012E
                    dw $00EC,$00AA,$090A,$1D63
                    dw $1521,$0C63,$14A3,$1CE5
                    dw $2527,$2D69,$35AB,$3DED
                    dw $7708,$0C63,$1CE5,$2D69
                    dw $2527,$1D0B,$18EA,$10A8
                    dw $0866,$0C63,$14A3,$1CE5
                    dw $2527,$2D69,$00D6,$015A
                    dw $7F92,$7FFF,$0842,$4631
                    dw $3DEF,$35AD,$2D6B,$2529
                    dw $1CE7,$10EA,$1D4D,$29B0
                    dw $3613,$3208,$1942,$25A5
                    dw $7F92,$7FFF,$29F8,$67FF
                    dw $4BDF,$3B7E,$331B,$26B8
                    dw $1A55,$2E79,$3ADC,$473F
                    dw $539F,$4F1F,$365B,$42BE
                    dw $7F92,$7FFF,$29F8,$6BFF
                    dw $5FFC,$53B9,$4756,$3AF3
                    dw $2E90,$2E79,$3ADC,$473F
                    dw $539F,$4F1F,$365B,$42BE
                    dw $7BAF,$7FFF,$1084,$29F9
                    dw $1975,$1A98,$0E15,$0191
                    dw $010D,$184D,$20D1,$2955
                    dw $31D9,$3A5D,$006E,$08F1
                    dw $7BAF,$02D4,$1084,$7FFF
                    dw $3E99,$2E15,$1D91,$092E
                    dw $00AA,$21C2,$3246,$3EA9
                    dw $4B0C,$534E,$6739,$739C
                    dw $45BC,$7FFF,$0C63,$40C0
                    dw $5565,$65E9,$4631,$5AD6
                    dw $0000,$766D,$0012,$101A
                    dw $311F,$367A,$21D5,$0D30
                    dw $7708,$7FFF,$1084,$53BF
                    dw $033E,$025C,$4A5F,$315F
                    dw $001D,$004A,$04B2,$0A1C
                    dw $133D,$677F,$017C,$0019
                    dw $1084,$7FFF,$04CA,$0155
                    dw $1A1C,$1B3E,$2DFF,$471F
                    dw $56B5,$1173,$1242,$3329
                    dw $1C9F,$0C18,$79E6,$5144
                    dw $7BAF,$7FFF,$1084,$53BF
                    dw $033E,$025C,$0000,$0000
                    dw $0000,$1058,$015F,$0E1F
                    dw $140E,$02BF,$017C,$0019
                    dw $1084,$7FFF,$0C63,$0113
                    dw $11DA,$1B3E,$2DFF,$471F
                    dw $5EF7,$152F,$0012,$0C19
                    dw $1C9F,$762D,$7189,$5905

DATA_04B6B3:        dw $04D0,$20B1,$23C1,$14D1
                    dw $0492,$23A2,$14B2,$47C2
                    dw $2083,$1493,$47A3,$0474
                    dw $1484,$4794,$0455,$0965
                    dw $0675,$4785,$17D5,$2046
                    dw $1456,$0C66,$1476,$4786
                    dw $17C6,$14D6,$2147,$0157
                    dw $4767,$10B7,$14C7,$2248
                    dw $0858,$1A68,$4778,$13B8
                    dw $1559,$1B69,$4779,$10A9
                    dw $14B9,$204A,$145A,$476A
                    dw $18AA,$224B,$085B,$476B
                    dw $109B,$14AB,$065C,$476C
                    dw $178C,$029C,$055D,$086D
                    dw $477D,$198D,$039D,$1AAD
                    dw $08BD,$226E,$087E,$478E
                    dw $199E,$2FAE,$11BE,$08CE
                    dw $217F,$478F,$19CF,$A060
                    dw $1470,$4780,$2161,$2C71
                    dw $4781,$2162,$2D72,$4782
                    dw $0563,$0873,$1A83,$4793
                    dw $2274,$0B84,$2294,$08A4
                    dw $47B4,$21A5,$47B5,$05A6
                    dw $08B6,$47C6,$22B7,$08C7
                    dw $07D7,$2018,$2928,$22C8
                    dw $08D8,$2009,$1419,$0C29
                    dw $0939,$05D9,$210A,$2C1A
                    dw $072A,$0A3A,$210B,$2D1B
                    dw $072B,$0A3B,$220C,$081C
                    dw $1A2C,$2B3C,$221D,$0B2D
                    dw $A0D0,$20A1,$63B1,$14D1
                    dw $0482,$2392,$14A2,$47B2
                    dw $0433,$2343,$0953,$2063
                    dw $2373,$1483,$4793,$2024
                    dw $0234,$4744,$0C54,$1464
                    dw $2225,$0335,$4745,$0536
                    dw $0846,$4756,$2037,$1947
                    dw $0857,$4767,$0428,$1438
                    dw $4748,$2229,$0839,$4749
                    dw $053A,$104A,$145A,$476A
                    dw $1A8A,$109A,$14AA,$203B
                    dw $144B,$475B,$1A7B,$0B8B
                    dw $219B,$109C,$213C,$014C
                    dw $475C,$0A7C,$008C,$059C
                    dw $08AC,$1ABC,$08CC,$053D
                    dw $084D,$075D,$1A6D,$0B7D
                    dw $22AD,$0BBD,$06CD,$1ADD
                    dw $224E,$245E,$0B6E,$05CE
                    dw $0BDE,$84B0,$23C0,$29D0
                    dw $20A1,$47B1,$2082,$0F92
                    dw $14A2,$47B2,$2013,$0923
                    dw $0473,$0283,$4793,$2004
                    dw $1414,$0724,$2934,$1574
                    dw $0384,$4794,$2105,$0115
                    dw $0725,$0A35,$0465,$4775
                    dw $1885,$0506,$0816,$1A26
                    dw $0B36,$0666,$1076,$1186
                    dw $0896,$47A6,$2217,$0B27
                    dw $2167,$1877,$4787,$2058
                    dw $1468,$1978,$0888,$4798
                    dw $1AA8,$08B8,$0439,$0F49
                    dw $1459,$4769,$1189,$1F99
                    dw $1BA9,$19B9,$08C9,$272A
                    dw $283A,$474A,$08AA,$13CA
                    dw $223B,$084B,$475B,$1A6B
                    dw $087B,$11AB,$1CBB,$08CB
                    dw $054C,$245C,$0B6C,$057C
                    dw $088C,$479C,$19CC,$228D
                    dw $089D,$47AD,$059E,$08AE
                    dw $1ABE,$08CE,$07DE,$22AF
                    dw $0BBF,$05CF,$0BDF,$A0D0
                    dw $2091,$29A1,$20C1,$14D1
                    dw $0472,$2382,$1492,$0CA2
                    dw $0FB2,$14C2,$07D2,$2043
                    dw $0953,$2063,$1473,$4783
                    dw $0434,$1444,$0C54,$1D64
                    dw $1474,$4784,$2025,$1435
                    dw $2C45,$4755,$2226,$0836
                    dw $2D46,$4756,$0537,$0847
                    dw $4757,$1797,$2EA7,$2248
                    dw $0858,$1A68,$4778,$1088
                    dw $1498,$0CA8,$1559,$1B69
                    dw $4779,$1889,$0199,$204A
                    dw $145A,$476A,$198A,$089A
                    dw $1AAA,$214B,$015B,$476B
                    dw $199B,$1BAB,$054C,$085C
                    dw $476C,$225D,$256D,$287D
                    dw $478D,$227E,$088E,$1A9E
                    dw $08AE,$07BE,$1ACE,$08DE
                    dw $058F,$0B9F,$05AF,$24BF
                    dw $0BCF,$05DF,$84A1,$09B1
                    dw $20D1,$0402,$2312,$2922
                    dw $2092,$14A2,$0CB2,$0FC2
                    dw $14D2,$2103,$2C13,$0A23
                    dw $2063,$2373,$2683,$2893
                    dw $01A3,$47B3,$2104,$2D14
                    dw $0A24,$2054,$1464,$4774
                    dw $1194,$08A4,$0505,$2415
                    dw $0B25,$2155,$0165,$4775
                    dw $2256,$0866,$4776,$1786
                    dw $1496,$0567,$0877,$1987
                    dw $0897,$47A7,$2068,$1478
                    dw $4788,$1198,$08A8,$0459
                    dw $1469,$2C79,$4789,$18A9
                    dw $225A,$086A,$2D7A,$478A
                    dw $19AA,$08BA,$226B,$087B
                    dw $478B,$11BB,$1BCB,$08DB
                    dw $227C,$088C,$479C,$1AAC
                    dw $08BC,$19DC,$058D,$249D
                    dw $0BAD,$05BD,$08CD,$07DD
                    dw $22CE,$08DE,$22DF,$A0D0
                    dw $04B1,$0FC1,$14D1,$20A2
                    dw $14B2,$47C2,$0493,$47A3
                    dw $2194,$01A4,$47B4,$2295
                    dw $08A5,$47B5,$22A6,$08B6
                    dw $47C6,$0477,$0987,$15B7
                    dw $08C7,$07D7,$2068,$1478
                    dw $0C88,$0998,$20A8,$14B8
                    dw $19C8,$08D8,$2049,$0F59
                    dw $1469,$4779,$0C99,$14A9
                    dw $043A,$144A,$475A,$063B
                    dw $474B,$202C,$143C,$2C4C
                    dw $475C,$222D,$083D,$2D4D
                    dw $475D,$1A7D,$088D,$053E
                    dw $474E,$1A6E,$0B7E,$158E
                    dw $089E,$224F,$085F,$0C6F
                    dw $237F,$148F,$199F,$08AF
                    dw $47BF,$A040,$1450,$4760
                    dw $19A0,$1CB0,$08C0,$07D0
                    dw $2031,$1441,$4751,$2132
                    dw $4742,$0152,$2233,$0843
                    dw $4753,$0544,$0854,$4764
                    dw $2045,$1455,$4765,$0436
                    dw $0E46,$1456,$4766,$1776
                    dw $1486,$2027,$4737,$1067
                    dw $1477,$0528,$2438,$0848
                    dw $4758,$1868,$0549,$1059
                    dw $1469,$2C79,$4789,$225A
                    dw $086A,$2D7A,$478A,$056B
                    dw $087B,$478B,$227C,$088C
                    dw $1A9C,$24AC,$08BC,$47CC
                    dw $058D,$0B9D,$22BD,$08CD
                    dw $07DD,$05CE,$08DE,$22DF
                    dw $A0D2,$2053,$0963,$04C3
                    dw $14D3,$0444,$1454,$0C64
                    dw $2374,$0984,$0494,$09A4
                    dw $05C4,$08D4,$2035,$1445
                    dw $4755,$1075,$0E85,$1495
                    dw $0CA5,$29B5,$20C5,$14D5
                    dw $2136,$4746,$1476,$0CB6
                    dw $14C6,$2027,$4737,$0157
                    dw $0528,$0838,$4748,$10A8
                    dw $2EB8,$2239,$0849,$1A59
                    dw $0869,$4779,$1799,$14A9
                    dw $0CB9,$054A,$0B5A,$226A
                    dw $087A,$178A,$149A,$47AA
                    dw $046B,$147B,$198B,$089B
                    dw $47AB,$056C,$247C,$178C
                    dw $149C,$47AC,$047D,$148D
                    dw $479D,$217E,$478E,$2C9E
                    dw $217F,$478F,$2D9F,$8570
                    dw $0880,$4790,$2071,$1981
                    dw $0891,$1AA1,$08B1,$47C1
                    dw $0452,$0F62,$1472,$4782
                    dw $1992,$1BA2,$19B2,$08C2
                    dw $2043,$0253,$4763,$19C3
                    dw $08D3,$0544,$0354,$4764
                    dw $19D4,$2255,$1B65,$4775
                    dw $0566,$0876,$4786,$2277
                    dw $0887,$1A97,$08A7,$47B7
                    dw $0588,$0B98,$05A8,$08B8
                    dw $47C8,$22B9,$08C9,$07D9
                    dw $05CA,$0BDA,$8420,$2330
                    dw $0940,$2011,$1421,$0731
                    dw $0C41,$0951,$2112,$0122
                    dw $0732,$0742,$0A52,$0513
                    dw $0823,$0733,$0743,$0B53
                    dw $04A3,$23B3,$09C3,$2224
                    dw $2434,$0B44,$2094,$14A4
                    dw $07B4,$17C4,$0FD4,$2085
                    dw $1495,$47A5,$14C5,$2286
                    dw $0896,$47A6,$2067,$0977
                    dw $0487,$1397,$47A7,$2058
                    dw $1468,$0C78,$1488,$1398
                    dw $47A8,$0449,$1459,$4769
                    dw $1789,$1499,$2CA9,$064A
                    dw $475A,$198A,$089A,$2DAA
                    dw $203B,$144B,$475B,$199B
                    dw $08AB,$213C,$474C,$105C
                    dw $2E6C,$107C,$148C,$109C
                    dw $14AC,$053D,$104D,$145D
                    dw $0C6D,$147D,$478D,$149D
                    dw $064E,$475E,$2C6E,$054F
                    dw $085F,$2D6F,$477F,$A250
                    dw $0860,$4770,$0661,$4771
                    dw $2052,$1162,$1F72,$0882
                    dw $4792,$2153,$4763,$1983
                    dw $1F93,$08A3,$0554,$0864
                    dw $4774,$19A4,$08B4,$2265
                    dw $0875,$4785,$13B5,$0676
                    dw $4786,$11B6,$08C6,$0467
                    dw $1477,$2C87,$4797,$19C7
                    dw $08D7,$2268,$0878,$2D88
                    dw $4798,$11D8,$0579,$0889
                    dw $4799,$207A,$148A,$479A
                    dw $227B,$248B,$089B,$47AB
                    dw $219C,$47AC,$1ABC,$08CC
                    dw $229D,$24AD,$2BBD,$22CD
                    dw $08DD,$05DE,$FFFF,$085C
                    dw $085C,$085C,$085C,$0855
                    dw $0856,$0855,$4856,$0854
                    dw $0853,$0855,$0856,$0855
                    dw $4856,$4854,$0853,$085C
                    dw $0857,$0857,$0854,$4857
                    dw $4854,$085C,$4857,$4857
                    dw $4854,$0857,$0854,$0853
                    dw $0853,$0853,$0853,$0853
                    dw $0853,$4854,$0853,$8850
                    dw $8851,$0853,$8852,$0853
                    dw $C852,$0853,$8852,$0853
                    dw $C852,$C850,$C851,$0853
                    dw $8854,$0853,$0853,$C854
                    dw $4854,$C857,$4857,$8858
                    dw $0858,$0853,$0853,$8857
                    dw $0857,$8854,$0854,$0853
                    dw $085B,$085B,$0854,$485B
                    dw $4854,$8853,$485B,$0853
                    dw $8854,$4854,$0853,$485B
                    dw $4854,$085B,$0854,$0854
                    dw $0853,$0853,$0853,$4857
                    dw $4854,$0857,$485B,$4857
                    dw $085B,$0857,$0854,$0859
                    dw $0858,$085A,$0853,$485A
                    dw $0853,$085A,$0853,$485A
                    dw $0853,$4859,$4858,$0853
                    dw $0853,$0853,$C854,$C854
                    dw $C85B,$C85B,$0853,$C854
                    dw $4854,$C85B,$485B,$885B
                    dw $085B,$8854,$0854,$C854
                    dw $0853,$8854,$0853,$0853
                    dw $0853,$C858,$4858,$0851
                    dw $0850,$0852,$0853,$4852
                    dw $0853,$0852,$0853,$4852
                    dw $0853,$4851,$4850,$8850
                    dw $0850,$0853,$0853,$0853
                    dw $0853,$C850,$4850,$C854
                    dw $085B,$C857,$4857,$8857
                    dw $0857,$8854,$485B,$085C
                    dw $0857,$085C,$4857,$0854
                    dw $0853,$4854,$0853,$8857
                    dw $085C,$8854,$8857,$C854
                    dw $C857,$8854,$8857,$C854
                    dw $C857,$C857,$085C,$0853
                    dw $0853,$0855,$0856,$0855
                    dw $4856,$0853,$0853,$8858
                    dw $8859,$0853,$885A,$0853
                    dw $C85A,$C858,$C859

DATA_04BE89:        db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;Empty
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
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

DATA_04C000:        db $26,$AC,$26,$26,$26,$72,$72,$72
                    db $13,$59,$8B

;level number and map type handler.
CODE_04C00B:        8B            PHB                       ;\
CODE_04C00C:        4B            PHK                       ; |Setup program bank
CODE_04C00D:        AB            PLB                       ;/
CODE_04C00E:        22 1F C0 04   JSL CODE_04C01F           ;\Jump to level loading routine
CODE_04C012:        8D 50 07      STA $0750                 ;/Store the output (level number) here
CODE_04C015:        29 60         AND #$60                  ;AND the output with $60 (01100000 c)
CODE_04C017:        0A            ASL A                     ;*2 (11000000 c)
CODE_04C018:        2A            ROL A                     ;*2 with carry (10000000 C)
CODE_04C019:        2A            ROL A                     ;*2 with carry (00000001 C)
CODE_04C01A:        2A            ROL A                     ;*2 with carry (00000011 c)
CODE_04C01B:        85 5C         STA $5C                   ;Store in map type. This means that bits 6 and 5 are the map type!
CODE_04C01D:        AB            PLB                       ;\Restore original program bank
CODE_04C01E:        6B            RTL                       ;/

CODE_04C01F:        8B            PHB                       ;\
CODE_04C020:        4B            PHK                       ; |Setup program bank again.
CODE_04C021:        AB            PLB                       ;/
CODE_04C022:        AC 5F 07      LDY $075F                 ;\Load world.
CODE_04C025:        C0 08         CPY #$08                  ; |If it is smaller than world 08
CODE_04C027:        90 0B         BCC CODE_04C034           ;/go setup normal level.
CODE_04C029:        9C 60 07      STZ $0760                 ;Store zero to current level
CODE_04C02C:        9C 5C 07      STZ $075C                 ;Store zero to written number of current level
CODE_04C02F:        A0 00         LDY #$00                  ;\
CODE_04C031:        8C 5F 07      STY $075F                 ;/Store zero to current world
CODE_04C034:        B9 1C C1      LDA $C11C,y               ;\Load indexes to the level number table
CODE_04C037:        18            CLC                       ; |clear carry flag
CODE_04C038:        6D 60 07      ADC $0760                 ; |add current level to it
CODE_04C03B:        A8            TAY                       ; |use it as index
CODE_04C03C:        B9 24 C1      LDA $C124,y               ;\|Load the level number
CODE_04C03F:        AB            PLB                       ; |return it
CODE_04C040:        6B            RTL                       ;/

CODE_04C041:        8B            PHB                       ;\
CODE_04C042:        4B            PHK                       ; |Setup program bank.
CODE_04C043:        AB            PLB                       ;/
CODE_04C044:        64 BA         STZ $BA                   ;Store zero to current bg palette and music
CODE_04C046:        AD 50 07      LDA $0750                 ;\Load level number
CODE_04C049:        29 60         AND #$60                  ; |
CODE_04C04B:        0A            ASL A                     ; |Make bit 5 and 6 of the level number
CODE_04C04C:        2A            ROL A                     ; |into bit 0 and 1.
CODE_04C04D:        2A            ROL A                     ; |Values range from 0-3
CODE_04C04E:        2A            ROL A                     ; |Store into map type
CODE_04C04F:        85 5C         STA $5C                   ;/(00 underwater, 01 ground, 02 underground, 03 castle)
CODE_04C051:        A8            TAY                       ;Transfer A to Y to use it as an index.
CODE_04C052:        AD 50 07      LDA $0750                 ;\Load level number again
CODE_04C055:        29 1F         AND #$1F                  ; |AND with $1F to get the level number WITHOUT map type
CODE_04C057:        8D 4F 07      STA $074F                 ;/Store into a RAM address to hold it.
CODE_04C05A:        B9 48 C1      LDA $C148,y               ;\ 
CODE_04C05D:        18            CLC                       ; |Load the map type offsets
CODE_04C05E:        6D 4F 07      ADC $074F                 ; |Add the offsets with level number
CODE_04C061:        A8            TAY                       ;/| Use it as an index again...
CODE_04C062:        B9 4C C1      LDA $C14C,y               ;\|
CODE_04C065:        85 FD         STA $FD                   ; |Load pointers to enemy data
CODE_04C067:        B9 6E C1      LDA $C16E,y               ; |in $FD-$FF
CODE_04C06A:        85 FE         STA $FE                   ; |
CODE_04C06C:        A9 04         LDA #$04                  ; |$FF is a constant: #$04
CODE_04C06E:        85 FF         STA $FF                   ;/
CODE_04C070:        A4 5C         LDY $5C                   ;\Load map type again
CODE_04C072:        B9 90 C1      LDA $C190,y               ; |
CODE_04C075:        18            CLC                       ; |Load something again
CODE_04C076:        6D 4F 07      ADC $074F                 ; |add the level number to it
CODE_04C079:        A8            TAY                       ; |Use it as an index
CODE_04C07A:        85 DB         STA $DB                   ;/Store it in the layer 2 background.
CODE_04C07C:        C9 1C         CMP #$1C                  ;\If it is a castle, change BG palette and music to
CODE_04C07E:        B0 0C         BCS CODE_04C08C           ;/Black and Castle (Also changes ground tileset) ($03)
CODE_04C080:        C9 19         CMP #$19                  ;\If it is an underground (bonus room),change BG palette and music to
CODE_04C082:        B0 0A         BCS CODE_04C08E           ;/Black and underground ($02)
CODE_04C084:        C9 03         CMP #$03                  ;\If it is any minor background, change BG palette and music to
CODE_04C086:        B0 08         BCS CODE_04C090           ;/Light Blue and ground ($01)
CODE_04C088:        C9 02         CMP #$02                  ;\If it is any underwater stage, change BG palette and music to
CODE_04C08A:        90 06         BCC CODE_04C092           ;/Light Blue and Underwater ($00)
CODE_04C08C:        E6 BA         INC $BA                   ;\
CODE_04C08E:        E6 BA         INC $BA                   ; |Set BG palette and music
CODE_04C090:        E6 BA         INC $BA                   ;/
CODE_04C092:        B9 94 C1      LDA $C194,y               ;\
CODE_04C095:        85 FA         STA $FA                   ; |
CODE_04C097:        B9 B6 C1      LDA $C1B6,y               ; |Setup the pointer of the level header
CODE_04C09A:        85 FB         STA $FB                   ; |and the level object data.
CODE_04C09C:        A9 04         LDA #$04                  ; |24-bits pointer at $FA
CODE_04C09E:        85 FC         STA $FC                   ;/ Bank is constant: $04
CODE_04C0A0:        A0 00         LDY #$00                  ;\
CODE_04C0A2:        B7 FA         LDA [$FA],y               ; |Load level haeder
CODE_04C0A4:        48            PHA                       ;/ Push it into A
CODE_04C0A5:        29 07         AND #$07                  ;\Get the background bits.
CODE_04C0A7:        C9 04         CMP #$04                  ; |If it is 04 or smaller
CODE_04C0A9:        90 07         BCC CODE_04C0B2           ;/ Branch
CODE_04C0AB:        29 04         AND #$04                  ;\Filter bit 2
CODE_04C0AD:        8D 44 07      STA $0744                 ;/Store into "BG is lower than 3" flag
CODE_04C0B0:        A9 00         LDA #$00                  ;\
CODE_04C0B2:        8D 41 07      STA $0741                 ;/If BG is lower than 3, use nothing for layer 1 background
CODE_04C0B5:        68            PLA                       ;\Pull level header's first byte
CODE_04C0B6:        48            PHA                       ;/...then push it again.
CODE_04C0B7:        29 38         AND #$38                  ;\Filter Mario's starting Y position
CODE_04C0B9:        4A            LSR A                     ; |
CODE_04C0BA:        4A            LSR A                     ; |>> 3
CODE_04C0BB:        4A            LSR A                     ; |so the value is between 0-7 instead of whatever.
CODE_04C0BC:        8D 10 07      STA $0710                 ;/Store into Mario's starting position.
CODE_04C0BF:        68            PLA                       ;Pull level header again.
CODE_04C0C0:        29 C0         AND #$C0                  ;Filter the time bits.
CODE_04C0C2:        18            CLC                       ;\Clear carry flag
CODE_04C0C3:        2A            ROL A                     ; |<<3 so the value is between 0-3.
CODE_04C0C4:        2A            ROL A                     ; |
CODE_04C0C5:        2A            ROL A                     ; |Store into starting timer
CODE_04C0C6:        8D 15 07      STA $0715                 ;/
CODE_04C0C9:        C8            INY                       ;Increase Y.
CODE_04C0CA:        B7 FA         LDA [$FA],y               ;Load level header byte 2.
CODE_04C0CC:        48            PHA                       ;Push it into A.
CODE_04C0CD:        29 0F         AND #$0F                  ;\Filter floor set
CODE_04C0CF:        8D 27 07      STA $0727                 ;/Store it into Floor Set RAM address
CODE_04C0D2:        68            PLA                       ;Pull A
CODE_04C0D3:        48            PHA                       ;Push A
CODE_04C0D4:        29 30         AND #$30                  ;\Filter ground set and palette bits
CODE_04C0D6:        4A            LSR A                     ; |
CODE_04C0D7:        4A            LSR A                     ; |>>4 so that the value ranges from 00-03
CODE_04C0D8:        4A            LSR A                     ; |
CODE_04C0D9:        4A            LSR A                     ; |
CODE_04C0DA:        C9 01         CMP #$01                  ;/
CODE_04C0DC:        D0 02         BNE CODE_04C0E0           ;(If the result is not 01 (Orange and mushroom)
CODE_04C0DE:        A9 00         LDA #$00                  ;\and unnecessary LDA.
CODE_04C0E0:        8D 42 07      STA $0742                 ;/Store bits into ground set and palette RAM address.
CODE_04C0E3:        68            PLA                       ;\Pull level header byte 2 from the stack.
CODE_04C0E4:        29 C0         AND #$C0                  ; |
CODE_04C0E6:        18            CLC                       ; |Filter ground set
CODE_04C0E7:        2A            ROL A                     ; |make the last 2 bits the first 2 bits.
CODE_04C0E8:        2A            ROL A                     ; |
CODE_04C0E9:        2A            ROL A                     ; |
CODE_04C0EA:        C9 03         CMP #$03                  ; |If ground set is clouds, branch.
CODE_04C0EC:        D0 05         BNE CODE_04C0F3           ;/
CODE_04C0EE:        8D 43 07      STA $0743                 ;Store bits into "Cloud terrain type override flag"
CODE_04C0F1:        A9 00         LDA #$00                  ;\set ground set to none, if ground set is clouds
CODE_04C0F3:        8D 33 07      STA $0733                 ;/otherwise store as normal.
CODE_04C0F6:        20 0B C1      JSR CODE_04C10B           ;Handle vine growing in the start of level?
CODE_04C0F9:        A5 FA         LDA $FA                   ;\
CODE_04C0FB:        18            CLC                       ; |
CODE_04C0FC:        69 02         ADC #$02                  ; |Increase the pointer by 2 so we don't
CODE_04C0FE:        85 FA         STA $FA                   ; |need to bother with Y indexing later.
CODE_04C100:        A5 FB         LDA $FB                   ; |
CODE_04C102:        69 00         ADC #$00                  ; |
CODE_04C104:        85 FB         STA $FB                   ;/
CODE_04C106:        9C E8 0E      STZ $0EE8                 ;Store zero to "Counter for the screen's X-pos in 16x16"
CODE_04C109:        AB            PLB                       ;Pull program bank
CODE_04C10A:        6B            RTL                       ;And return

CODE_04C10B:        AD 43 07      LDA $0743                 ;if cloud terrain type override flag is set
CODE_04C10E:        D0 06         BNE CODE_04C116           ;branch.
CODE_04C110:        A5 DB         LDA $DB                   ;\
CODE_04C112:        C9 12         CMP #$12                  ; |If layer 2 background is not "Mushrooms"
CODE_04C114:        D0 05         BNE CODE_04C11B           ;/ Return.
CODE_04C116:        A9 01         LDA #$01                  ;\Grow a vine in the start of level flag?
CODE_04C118:        8D 36 02      STA $0236                 ;/
CODE_04C11B:        60            RTS                       ;

DATA_04C11C:        db $00,$05,$0A,$0E,$13,$17,$1B,$20 ; "Levels per world". Actually indexes to the next tables

DATA_04C124:        db $25,$29,$C0,$26,$60             ; "World 1 Levels" They get stored in $7E:0750

DATA_04C129:        db $28,$29,$01,$27,$62             ; "World 2 Levels"

DATA_04C12E:        db $24,$35,$20,$63                 ; "World 3 Levels"

DATA_04C132:        db $22,$29,$41,$2C,$61             ; "World 4 Levels"

DATA_04C137:        db $2A,$31,$26,$62                 ; "World 5 Levels"

DATA_04C13B:        db $2E,$23,$2D,$60                 ; "World 6 Levels"

DATA_04C13F:        db $33,$29,$01,$27,$64             ; "World 7 Levels"

DATA_04C144:        db $30,$32,$21,$65                 ; "World 8 Levels"

DATA_04C148:        db $1F,$06,$1C,$00                 ; "Map type offsets"

DATA_04C14C:        db $D8,$FF,$18,$47,$72,$87         ; The castle levels sprites offset low

DATA_04C152:        db $C1,$E6,$03,$11,$38,$69,$87,$A4 ; The grassland levels sprites offset low
                    db $B9,$E3,$E4,$08,$11,$36,$59,$62
                    db $63,$9D,$C8,$F6,$12,$1B

DATA_04C168:        db $40,$6D,$9B                     ; The underground levels sprites offset low

DATA_04C16B:        db $C8,$D9,$03                     ; The underwater levels sprites offset low

DATA_04C16E:        db $C1,$C1,$C2,$C2,$C2,$C2,$C2,$C2 ; Enemy address high bytes
                    db $C3,$C3,$C3,$C3,$C3,$C3,$C3,$C3
                    db $C3,$C4,$C4,$C4,$C4,$C4,$C4,$C4
                    db $C4,$C4,$C5,$C5,$C5,$C5,$C5,$C5
                    db $C5,$C6

DATA_04C190:        db $00,$03,$19,$1C                 ; indexes to the next 4 types tables

DATA_04C194:        db $08,$71,$0D                     ; The Underwater levels objects offset low

DATA_04C197:        db $0B,$74,$C3,$1B,$B0,$2F,$9A,$F1 ; The grassland levels objects offset low
                    db $7A,$E7,$F1,$35,$4A,$BB,$28,$A3
                    db $D5,$6D,$EB,$6B,$CA,$F5

DATA_04C1AD:        db $2D,$D2,$76                     ; The underground levels objects offset low

DATA_04C1B0:        db $17,$D2,$FA,$D8,$D4,$01         ; The castle levels objects offset low

DATA_04C1B6:        db $D6,$D6,$D7,$CC,$CC,$CC,$CD,$CD ; Objects address high bytes
                    db $CE,$CE,$CE,$CF,$CF,$CF,$D0,$D0
                    db $D0,$D1,$D1,$D1,$D2,$D2,$D3,$D3
                    db $D3,$D4,$D4,$D5,$C6,$C6,$C7,$C8
                    db $C9,$CB

;SMB1 LEVEL SPRITE DATA. Ends with FF.

DATA_04C1D8:        db $76,$DD,$BB,$4C,$EA,$1D,$1B,$CC          ; 1-4 & 6-4, Level #60
                    db $56,$5D,$16,$9D,$C6,$1D,$36,$9D
                    db $C9,$1D,$04,$DB,$49,$1D,$84,$1B
                    db $C9,$5D,$88,$95,$0F,$08,$30,$4C
                    db $78,$2D,$A6,$28,$90,$B5,$FF

DATA_04C1FF:        db $0F,$03,$56,$1B,$C9,$1B,$0F,$07          ; 4-4, Level #61
                    db $36,$1B,$AA,$1B,$48,$95,$0F,$0A
                    db $2A,$1B,$5B,$0C,$78,$2D,$90,$B5
                    db $FF

DATA_04C218:        db $0B,$8C,$4B,$4C,$77,$5F,$EB,$0C          ; 2-4, Level #62
                    db $BD,$DB,$19,$9D,$75,$1D,$7D,$5B
                    db $D9,$1D,$3D,$DD,$99,$1D,$26,$9D
                    db $5A,$2B,$8A,$2C,$CA,$1B,$20,$95
                    db $7B,$5C,$DB,$4C,$1B,$CC,$3B,$CC
                    db $78,$2D,$A6,$28,$90,$B5,$FF

DATA_04C247:        db $0B,$8C,$3B,$1D,$8B,$1D,$AB,$0C          ; 3-4, Level #63
                    db $DB,$1D,$0F,$03,$65,$1D,$6B,$1B
                    db $05,$9D,$0B,$1B,$05,$9B,$0B,$1D
                    db $8B,$0C,$1B,$8C,$70,$15,$7B,$0C
                    db $DB,$0C,$0F,$08,$78,$2D,$A6,$28
                    db $90,$B5,$FF

DATA_04C272:        db $27,$A9,$4B,$0C,$68,$29,$0F,$06          ; 7-4, Level #64
                    db $77,$1B,$0F,$0B,$60,$15,$4B,$8C
                    db $78,$2D,$90,$B5,$FF

DATA_04C287:        db $0F,$03,$8E,$65,$E1,$BB,$38,$6C          ; 8-4, Level #65
                    db $A8,$3E,$E5,$E7,$0F,$08,$0B,$02
                    db $2B,$02,$5E,$65,$E1,$BB,$0E,$DB
                    db $0E,$BB,$8E,$DB,$0E,$FE,$65,$EC
                    db $0F,$0D,$4E,$65,$E1,$0F,$0E,$4E
                    db $02,$E0,$0F,$10,$FE,$E5,$E1,$1B
                    db $85,$7B,$0C,$5B,$95,$78,$2D,$D0
                    db $B5,$FF

DATA_04C2C1:        db $A5,$86,$E4,$28,$18,$A8,$45,$83          ; 3-3, Level #20
                    db $69,$03,$C6,$29,$9B,$83,$16,$A4
                    db $88,$24,$E9,$28,$05,$A8,$7B,$28
                    db $24,$8F,$C8,$03,$E8,$03,$46,$A8
                    db $85,$24,$C8,$24,$FF

DATA_04C2E6:        db $EB,$8E,$0F,$03,$FB,$05,$17,$85          ; 8-3, Level #21
                    db $DB,$8E,$0F,$07,$57,$05,$7B,$05
                    db $9B,$80,$2B,$85,$FB,$05,$0F,$0B
                    db $1B,$05,$9B,$05,$FF

DATA_04C303:        db $2E,$C2,$66,$E2,$11,$0F,$07,$02          ; 4-1, Level #22
                    db $11,$0F,$0C,$12,$11,$FF

DATA_04C311:        db $0E,$C2,$A8,$AB,$00,$BB,$8E,$6B          ; 6-2, Level #23
                    db $82,$DE,$00,$A0,$33,$86,$43,$06
                    db $3E,$B4,$A0,$CB,$02,$0F,$07,$7E
                    db $42,$A6,$83,$02,$0F,$0A,$3B,$02
                    db $CB,$37,$0F,$0C,$E3,$0E,$FF

DATA_04C338:        db $9B,$8E,$CA,$0E,$EE,$42,$44,$5B          ; 3-1, Level #24
                    db $86,$80,$B8,$1B,$80,$50,$BA,$10
                    db $B7,$5B,$00,$17,$85,$4B,$05,$FE
                    db $34,$40,$B7,$86,$C6,$06,$5B,$80
                    db $83,$00,$D0,$38,$5B,$8E,$8A,$0E
                    db $A6,$00,$BB,$0E,$C5,$80,$F3,$00
                    db $FF

DATA_04C369:        db $1E,$C2,$00,$6B,$06,$8B,$86,$63          ; 1-1, Level #25
                    db $B7,$0F,$05,$03,$06,$23,$06,$4B
                    db $B7,$BB,$00,$5B,$B7,$FB,$37,$3B
                    db $B7,$0F,$0B,$1B,$37,$FF

DATA_04C387:        db $2B,$D7,$E3,$03,$C2,$86,$E2,$06          ; 1-3 & 5-3, Level #26
                    db $76,$A5,$A3,$8F,$03,$86,$2B,$57
                    db $68,$28,$E9,$28,$E5,$83,$24,$8F
                    db $36,$A8,$5B,$03,$FF

DATA_04C3A4:        db $0F,$02,$78,$40,$48,$CE,$F8,$C3          ; 2-3 & 7-3, Level #27
                    db $F8,$C3,$0F,$07,$7B,$43,$C6,$D0
                    db $0F,$8A,$C8,$50,$FF

DATA_04C3B9:        db $85,$86,$0B,$80,$1B,$00,$DB,$37          ; 2-1, Level #28
                    db $77,$80,$EB,$37,$FE,$2B,$20,$2B
                    db $80,$7B,$38,$AB,$B8,$77,$86,$FE
                    db $42,$20,$49,$86,$8B,$06,$9B,$80
                    db $7B,$8E,$5B,$B7,$9B,$0E,$BB,$0E
                    db $9B,$80,$FF

DATA_04C3E4:        db $0B,$80,$60,$38,$10,$B8,$C0,$3B          ; 5-1, Level #2A
                    db $DB,$8E,$40,$B8,$F0,$38,$7B,$8E
                    db $A0,$B8,$C0,$B8,$FB,$00,$A0,$B8
                    db $30,$BB,$EE,$42,$88,$0F,$0B,$2B
                    db $0E,$67,$0E,$FF

DATA_04C408:        db $0A,$AA,$0E,$28,$2A,$0E,$31,$88          ; Sky Bonus Area (Day), Level #2B
                    db $FF

DATA_04C411:        db $C7,$83,$D7,$03,$42,$8F,$7A,$03          ; 4-3, Level #2C
                    db $05,$A4,$78,$24,$A6,$25,$E4,$25
                    db $4B,$83,$E3,$03,$05,$A4,$89,$24
                    db $B5,$24,$09,$A4,$65,$24,$C9,$24
                    db $0F,$08,$85,$25,$FF

DATA_04C436:        db $CC,$A5,$B5,$A8,$07,$A8,$76,$28          ; 6-3, Level #2D
                    db $CC,$25,$65,$A4,$A9,$24,$E5,$24
                    db $19,$A4,$0F,$07,$95,$28,$E6,$24
                    db $19,$A4,$D7,$29,$16,$A9,$58,$29
                    db $97,$29,$FF

DATA_04C459:        db $0F,$02,$02,$11,$0F,$07,$02,$11          ; 6-1, Level #2E
                    db $FF

DATA_04C462:        db $FF                        ; 4-2 Warp Zone, Level #2F

DATA_04C463:        db $2B,$82,$AB,$38,$DE,$42,$E2,$1B          ; 8-1, Level #30
                    db $86,$EB,$3B,$DB,$80,$8B,$B8,$1B
                    db $82,$FB,$B8,$7B,$80,$FB,$3C,$5B
                    db $80,$7B,$B8,$1B,$8E,$CB,$0E,$1B
                    db $8E,$0F,$0D,$2B,$3B,$BB,$B8,$EB
                    db $82,$4B,$B8,$BB,$38,$3B,$B7,$BB
                    db $02,$0F,$13,$1B,$00,$CB,$80,$6B
                    db $BC,$FF

DATA_04C49D:        db $7B,$80,$AE,$00,$80,$8B,$8E,$E8          ; 5-2, Level #31
                    db $05,$F9,$86,$17,$86,$16,$85,$4E
                    db $2B,$80,$AB,$8E,$87,$85,$C3,$05
                    db $8B,$82,$9B,$02,$AB,$02,$BB,$86
                    db $CB,$06,$D3,$03,$3B,$8E,$6B,$0E
                    db $A7,$8E,$FF

DATA_04C4C8:        db $29,$8E,$52,$11,$83,$0E,$0F,$03          ; 8-2, Level #32
                    db $9B,$0E,$2B,$8E,$5B,$0E,$CB,$8E
                    db $FB,$0E,$FB,$82,$9B,$82,$BB,$02
                    db $FE,$42,$E8,$BB,$8E,$0F,$0A,$AB
                    db $0E,$CB,$0E,$F9,$0E,$88,$86,$A6
                    db $06,$DB,$02,$B6,$8E,$FF

DATA_04C4F6:        db $AB,$CE,$DE,$42,$C0,$CB,$CE,$5B          ; 7-1, Level #33
                    db $8E,$1B,$CE,$4B,$85,$67,$45,$0F
                    db $07,$2B,$00,$7B,$85,$97,$05,$0F
                    db $0A,$92,$02,$FF

DATA_04C512:        db $0A,$AA,$0E,$24,$4A,$1E,$23,$AA          ; Sky Bonus Area (Night), Level #34
                    db $FF

DATA_04C51B:        db $1B,$80,$BB,$38,$4B,$BC,$EB,$3B          ; 3-2, Level #35
                    db $0F,$04,$2B,$00,$AB,$38,$EB,$00
                    db $CB,$8E,$FB,$80,$AB,$B8,$6B,$80
                    db $FB,$3C,$9B,$BB,$5B,$BC,$FB,$00
                    db $6B,$B8,$FB,$38,$FF

DATA_04C540:        db $0B,$86,$1A,$06,$DB,$06,$DE,$C2          ; 1-2, Level #C0
                    db $02,$F0,$3B,$BB,$80,$EB,$06,$0B
                    db $86,$93,$06,$F0,$39,$0F,$06,$60
                    db $B8,$1B,$86,$A0,$B9,$B7,$27,$BD
                    db $27,$2B,$83,$A1,$26,$A9,$26,$EE
                    db $25,$0B,$27,$B4,$FF

DATA_04C56D:        db $0F,$02,$1E,$2F,$60,$E0,$3A          ; 4-2, Level #C1
                    db $A5,$A7,$DB,$80,$3B,$82,$8B,$02
                    db $FE,$42,$68,$70,$BB,$25,$A7,$2C
                    db $27,$B2,$26,$B9,$26,$9B,$80,$A8
                    db $82,$B5,$27,$BC,$27,$B0,$BB,$3B
                    db $82,$87,$34,$EE,$25,$6B,$FF

DATA_04C59B:        db $1E,$A5,$0A,$2E,$28,$27,$2E,$33          ; Underground Bonus Area, Level #C2
                    db $C7,$0F,$03,$1E,$40,$07,$2E,$30
                    db $E7,$0F,$05,$1E,$24,$44,$0F,$07
                    db $1E,$22,$6A,$2E,$23,$AB,$0F,$09
                    db $1E,$41,$68,$1E,$2A,$8A,$2E,$23
                    db $A2,$2E,$32,$EA,$FF

DATA_04C5C8:        db $3B,$87,$66,$27,$CC,$27,$EE,$31          ; Underwater Bonus Area, Level #00
                    db $87,$EE,$23,$A7,$3B,$87,$DB,$07
                    db $FF

DATA_04C5D9:        db $0F,$01,$2E,$25,$2B,$2E,$25,$4B          ; 2-2 & 7-2, Level #01
                    db $4E,$25,$CB,$6B,$07,$97,$47,$E9
                    db $87,$47,$C7,$7A,$07,$D6,$C7,$78
                    db $07,$38,$87,$AB,$47,$E3,$07,$9B
                    db $87,$0F,$09,$68,$47,$DB,$C7,$3B
                    db $C7,$FF

DATA_04C603:        db $47,$9B,$CB,$07,$FA,$1D,$86,$9B          ; 8-4 Underwater, Level #02
                    db $3A,$87,$56,$07,$88,$1B,$07,$9D
                    db $2E,$65,$F0,$FF

;SMB1 LEVEL OBJECT DATA. Ends with FD.
 
DATA_04C617:        db $9B,$07,$0F,$52,$32,$0F,$63,$32 ; 1-4 & 6-4, Level #60
                    db $0F,$74,$32,$CF,$80,$36,$CE,$03
                    db $DC,$51,$EE,$07,$FF,$80,$38,$7F
                    db $30,$B4,$74,$0A,$7E,$06,$7F,$20
                    db $34,$9F,$80,$36,$9E,$0A,$CE,$06
                    db $DF,$80,$38,$E4,$00,$E8,$0A,$FF
                    db $80,$36,$FE,$0A,$2E,$89,$3F,$70
                    db $38,$4E,$0B,$5F,$10,$34,$54,$0A
                    db $14,$8A,$C4,$0A,$34,$8A,$7F,$71
                    db $3A,$7F,$20,$34,$7E,$06,$C7,$0A
                    db $0F,$10,$B4,$02,$0A,$47,$0A,$8F
                    db $10,$34,$82,$0A,$C7,$0A,$0E,$87
                    db $1F,$10,$34,$7F,$20,$34,$7F,$A1
                    db $3A,$7F,$80,$36,$7E,$02,$A7,$02
                    db $B3,$02,$D7,$02,$E3,$02,$07,$82
                    db $13,$02,$3E,$06,$3F,$A1,$3C,$4F
                    db $80,$38,$7F,$A1,$3A,$7F,$80,$36
                    db $7E,$02,$AE,$07,$AF,$A1,$3C,$BF
                    db $80,$38,$BF,$10,$34,$FE,$0A,$FF
                    db $20,$34,$FF,$80,$36,$0D,$C4,$CD
                    db $43,$CE,$09,$DE,$0B,$DF,$70,$38
                    db $DD,$42,$EF,$20,$34,$FF,$20,$34
                    db $FF,$A1,$3A,$FF,$70,$36,$FE,$02
                    db $5D,$C7,$FD

DATA_04C6D2:        db $5B,$07,$0F,$52,$32,$0F,$63,$32 ; 4-4, Level #61
                    db $0F,$74,$32,$5E,$0A,$5F,$20,$34
                    db $6F,$80,$36,$68,$64,$9F,$80,$38
                    db $AF,$80,$36,$CE,$06,$DF,$80,$38
                    db $FF,$A1,$3A,$FF,$80,$36,$FE,$02
                    db $0D,$01,$1E,$0E,$24,$63,$34,$63
                    db $44,$63,$54,$63,$64,$63,$74,$63
                    db $7E,$02,$94,$63,$B4,$63,$D4,$63
                    db $F4,$63,$14,$E3,$2E,$0E,$34,$63
                    db $44,$63,$54,$63,$5E,$02,$64,$35
                    db $88,$72,$BE,$0E,$C4,$63,$D4,$63
                    db $E4,$63,$F4,$63,$04,$E3,$14,$63
                    db $24,$63,$34,$63,$44,$63,$54,$63
                    db $64,$63,$74,$63,$84,$63,$94,$63
                    db $A4,$63,$B4,$63,$C4,$63,$D4,$63
                    db $E4,$63,$F4,$63,$0D,$04,$04,$63
                    db $14,$63,$24,$63,$34,$63,$44,$63
                    db $54,$63,$64,$63,$74,$63,$84,$63
                    db $94,$63,$A4,$63,$AE,$02,$CE,$08
                    db $CF,$A1,$3C,$CD,$4B,$DF,$10,$34
                    db $DF,$80,$38,$FF,$A1,$3A,$FF,$80
                    db $36,$FF,$20,$34,$FE,$02,$0D,$05
                    db $68,$31,$7E,$0A,$7F,$B0,$36,$96
                    db $31,$A9,$63,$A8,$33,$D5,$30,$EE
                    db $02,$E6,$62,$F4,$61,$FF,$B0,$38
                    db $04,$B1,$08,$3F,$44,$33,$94,$63
                    db $A4,$31,$E4,$31,$04,$BF,$08,$3F
                    db $04,$BF,$08,$3F,$CD,$4B,$03,$E4
                    db $0E,$03,$1F,$10,$34,$2E,$01,$2F
                    db $10,$34,$7E,$06,$7F,$A1,$3C,$8F
                    db $00,$34,$8F,$80,$38,$BE,$02,$BF
                    db $A1,$3A,$BF,$80,$36,$DE,$06,$DF
                    db $A1,$3C,$EF,$80,$38,$FE,$0A,$FF
                    db $80,$36,$0D,$C4,$CD,$43,$CE,$09
                    db $DF,$70,$38,$DE,$0B,$DD,$42,$EF
                    db $20,$34,$FF,$20,$34,$FE,$02,$FF
                    db $A1,$3A,$FF,$70,$36,$5D,$C7,$FD

DATA_04C7FA:        db $9B,$07,$0F,$52,$32,$0F,$63,$32 ; 2-4 & 5-4, Level #62
                    db $0F,$74,$32,$FF,$80,$36,$FF,$00
                    db $34,$FE,$00,$27,$B1,$65,$32,$75
                    db $0A,$71,$00,$B7,$31,$0F,$80,$B8
                    db $1F,$A1,$3A,$1F,$80,$36,$1E,$04
                    db $2F,$00,$34,$57,$3B,$BB,$0A,$17
                    db $8A,$27,$3A,$6F,$30,$34,$73,$0A
                    db $7B,$0A,$D7,$0A,$E7,$3A,$3B,$8A
                    db $97,$0A,$FE,$08,$FF,$A1,$3C,$0F
                    db $80,$B8,$24,$0A,$2E,$00,$2F,$10
                    db $34,$3E,$40,$3F,$80,$36,$38,$64
                    db $6F,$F0,$00,$9F,$F0,$00,$BE,$43
                    db $C8,$0A,$CF,$80,$38,$CE,$07,$DF
                    db $10,$34,$FE,$07,$2E,$81,$2F,$10
                    db $34,$2F,$A1,$3A,$2F,$80,$36,$66
                    db $42,$6A,$42,$79,$0A,$BE,$00,$BF
                    db $B0,$36,$C8,$64,$F8,$64,$FF,$80
                    db $38,$0F,$80,$B6,$08,$64,$2E,$07
                    db $3F,$10,$34,$3F,$80,$38,$7F,$A1
                    db $3A,$7F,$80,$36,$7E,$03,$9E,$07
                    db $9F,$A1,$3C,$AF,$80,$38,$BF,$A1
                    db $3A,$BF,$80,$36,$BE,$03,$DE,$07
                    db $DF,$A1,$3C,$EF,$80,$38,$FE,$0A
                    db $FF,$20,$34,$FF,$80,$36,$03,$A5
                    db $0D,$44,$CD,$43,$CE,$09,$DF,$70
                    db $38,$DD,$42,$DE,$0B,$EF,$20,$34
                    db $FE,$02,$FF,$20,$34,$FF,$A1,$3A
                    db $FF,$70,$36,$5D,$C7,$FD

DATA_04C8D8:        db $9B,$07,$0F,$52,$32,$0F,$63,$32 ; 3-4, Level #63
                    db $0F,$74,$32,$FF,$20,$34,$FF,$80
                    db $36,$FE,$06,$0C,$81,$0C,$51,$2F
                    db $80,$38,$39,$0A,$4F,$80,$36,$5C
                    db $01,$5C,$51,$7F,$80,$38,$89,$0A
                    db $9F,$80,$36,$AC,$01,$AC,$51,$CF
                    db $80,$38,$D9,$0A,$EF,$80,$36,$FC
                    db $01,$FC,$51,$1F,$80,$B8,$2E,$03
                    db $3F,$10,$34,$3F,$A1,$3A,$3F,$80
                    db $36,$A7,$01,$B7,$00,$C7,$01,$DF
                    db $20,$34,$DF,$B0,$36,$DE,$0A,$FE
                    db $02,$0F,$B0,$B8,$4E,$03,$5F,$10
                    db $34,$5F,$A2,$34,$63,$0A,$69,$0A
                    db $7E,$02,$7F,$20,$34,$EE,$03,$FF
                    db $10,$34,$FF,$A2,$34,$03,$8A,$09
                    db $0A,$1E,$02,$1F,$20,$34,$EE,$03
                    db $FF,$10,$34,$FF,$A2,$34,$03,$8A
                    db $09,$0A,$14,$42,$1E,$02,$1F,$20
                    db $34,$7F,$B0,$36,$7E,$0A,$9E,$07
                    db $AF,$20,$34,$AF,$80,$38,$FE,$0A
                    db $FF,$20,$34,$FF,$80,$36,$2E,$86
                    db $3F,$80,$38,$5E,$0A,$5F,$80,$36
                    db $8E,$06,$9F,$80,$38,$BE,$0A,$BF
                    db $80,$36,$EE,$07,$EF,$80,$38,$FF
                    db $10,$34,$3E,$83,$3F,$A1,$3A,$3F
                    db $80,$36,$5E,$07,$5F,$A1,$3C,$6F
                    db $80,$38,$FE,$0A,$FF,$20,$34,$FF
                    db $80,$36,$0D,$C4,$41,$52,$51,$52
                    db $CD,$43,$CE,$09,$DF,$70,$38,$DE
                    db $0B,$DD,$42,$EF,$20,$34,$FE,$02
                    db $FF,$20,$34,$FF,$A1,$3A,$FF,$70
                    db $36,$5D,$C7,$FD

DATA_04C9D4:        db $5B,$07,$0F,$52,$32,$0F,$63,$32 ; 7-4, Level #64
                    db $0F,$74,$32,$FE,$0A,$FF,$20,$34
                    db $FF,$80,$36,$AE,$86,$BF,$80,$38
                    db $BE,$07,$CF,$20,$34,$FF,$20,$34
                    db $FF,$A1,$3A,$FF,$80,$36,$FE,$02
                    db $0D,$02,$27,$32,$46,$61,$55,$62
                    db $5E,$0E,$64,$39,$65,$39,$66,$39
                    db $67,$39,$04,$E3,$1E,$02,$14,$63
                    db $68,$3C,$74,$3A,$7D,$4B,$5E,$8E
                    db $64,$39,$65,$39,$66,$39,$67,$39
                    db $7D,$4B,$04,$B7,$05,$37,$06,$37
                    db $07,$37,$7E,$02,$84,$62,$94,$61
                    db $A4,$31,$BD,$4B,$CE,$06,$CF,$A1
                    db $3C,$DF,$80,$38,$FF,$A1,$3A,$FF
                    db $80,$36,$FE,$02,$0D,$06,$34,$31
                    db $3E,$0A,$3F,$B0,$36,$64,$32,$75
                    db $0A,$7B,$61,$A4,$33,$AE,$02,$BF
                    db $B0,$38,$DE,$0E,$E4,$35,$E5,$35
                    db $E6,$35,$E7,$35,$3E,$82,$64,$32
                    db $78,$32,$B4,$36,$C8,$36,$DD,$4B
                    db $44,$B2,$58,$32,$94,$63,$A4,$3E
                    db $BA,$30,$C9,$61,$CE,$06,$CF,$A1
                    db $3C,$DF,$80,$38,$DD,$4B,$CE,$86
                    db $DD,$4B,$FE,$02,$FF,$A1,$3A,$FF
                    db $80,$36,$2E,$86,$2F,$A1,$3C,$3F
                    db $80,$38,$5E,$02,$5F,$A1,$3A,$5F
                    db $80,$36,$7E,$06,$7F,$A1,$3C,$8F
                    db $80,$38,$FE,$02,$FF,$A1,$3A,$FF
                    db $80,$36,$1E,$86,$1F,$A1,$3C,$2F
                    db $80,$38,$3E,$02,$3F,$A1,$3A,$3F
                    db $80,$36,$5E,$06,$5F,$A1,$3C,$6F
                    db $80,$38,$7E,$02,$7F,$A1,$3A,$7F
                    db $80,$36,$9E,$06,$9F,$A1,$3C,$AF
                    db $80,$38,$FE,$0A,$FF,$80,$36,$0D
                    db $C4,$CD,$43,$CE,$09,$DE,$0B,$DD
                    db $42,$DF,$70,$38,$EF,$20,$34,$FE
                    db $02,$FF,$20,$34,$FF,$A1,$3A,$FF
                    db $70,$36,$5D,$C7,$FD

DATA_04CB01:        db $5B,$06,$0F,$52,$32,$0F,$63,$32 ; 8-4, Level #65
                    db $0F,$74,$32,$5F,$80,$36,$5E,$0A
                    db $BF,$B0,$38,$BE,$02,$0D,$01,$2F
                    db $B0,$36,$39,$73,$5F,$B0,$38,$0D
                    db $03,$2F,$B0,$36,$39,$7B,$4D,$4B
                    db $5F,$B0,$38,$DE,$06,$DF,$A1,$3C
                    db $EF,$80,$38,$1F,$80,$B6,$1E,$0A
                    db $AE,$06,$BF,$80,$38,$C4,$33,$0F
                    db $80,$B6,$16,$7E,$3F,$80,$38,$9F
                    db $80,$36,$A5,$77,$CF,$80,$38,$FF
                    db $A1,$3A,$FF,$80,$36,$FE,$02,$FE
                    db $82,$0D,$07,$2F,$B0,$36,$39,$73
                    db $5F,$B0,$38,$9F,$B0,$36,$A8,$74
                    db $CF,$B0,$38,$ED,$4B,$3F,$B0,$B6
                    db $49,$7B,$6F,$B0,$38,$DF,$B0,$36
                    db $E8,$74,$FE,$0A,$2E,$82,$2F,$B0
                    db $38,$67,$02,$84,$7A,$87,$31,$0D
                    db $0B,$FE,$02,$0D,$0C,$2F,$B0,$36
                    db $39,$73,$5E,$06,$5F,$A1,$3C,$5F
                    db $B0,$38,$6F,$80,$38,$BF,$80,$36
                    db $C6,$76,$EF,$80,$38,$3F,$80,$B6
                    db $45,$7F,$6F,$80,$38,$BF,$80,$36
                    db $BE,$0A,$DD,$48,$FE,$06,$0F,$80
                    db $B8,$3D,$4B,$3F,$80,$36,$46,$7E
                    db $6F,$80,$38,$AD,$4A,$FF,$A1,$BA
                    db $FF,$80,$36,$FE,$02,$2F,$B0,$B6
                    db $39,$73,$5F,$B0,$38,$9F,$B0,$36
                    db $A9,$7B,$CF,$B0,$38,$4E,$8A,$4F
                    db $B0,$36,$9E,$07,$AF,$20,$34,$AF
                    db $80,$38,$FE,$0A,$FF,$20,$34,$FF
                    db $80,$36,$0D,$C4,$CD,$43,$CE,$09
                    db $DF,$70,$38,$DE,$0B,$DD,$42,$EF
                    db $20,$34,$FE,$02,$FF,$20,$34,$5D
                    db $C7,$FD

DATA_04CC0B:        db $94,$11,$0F,$F6,$20,$FE,$10,$28 ; 3-3, Level #20
                    db $94,$65,$15,$EB,$12,$FA,$41,$4A
                    db $96,$54,$40,$A4,$42,$B7,$13,$E9
                    db $19,$F5,$15,$11,$80,$47,$42,$71
                    db $13,$80,$41,$15,$92,$1B,$1F,$24
                    db $40,$55,$12,$64,$40,$95,$12,$A4
                    db $40,$D2,$12,$E1,$40,$13,$C0,$2C
                    db $17,$2F,$F2,$10,$49,$13,$83,$40
                    db $9F,$F4,$10,$A3,$40,$17,$92,$83
                    db $13,$92,$41,$B9,$14,$C5,$12,$C8
                    db $40,$D4,$40,$4B,$92,$78,$1B,$9C
                    db $94,$9F,$F1,$10,$DF,$F4,$10,$FE
                    db $11,$7D,$C1,$9F,$F0,$20,$9D,$C7
                    db $FD

DATA_04CC74:        db $90,$B1,$0F,$F6,$20,$29,$91,$28 ; 8-3, Level #21
                    db $92,$57,$F3,$C3,$25,$C7,$27,$23
                    db $84,$33,$20,$5C,$01,$77,$63,$88
                    db $62,$99,$61,$AA,$60,$BC,$01,$69
                    db $91,$F8,$62,$D7,$E3,$E7,$63,$33
                    db $A7,$37,$27,$43,$04,$CC,$01,$E7
                    db $73,$0C,$81,$0D,$0A,$88,$72,$E7
                    db $87,$39,$E1,$4E,$00,$69,$60,$87
                    db $60,$A5,$60,$C3,$31,$FE,$31,$6D
                    db $C1,$8F,$F0,$20,$8D,$C7,$FD

DATA_04CCC3:        db $52,$21,$0F,$F0,$20,$6E,$40,$58 ; 4-1, Level #22
                    db $F2,$93,$01,$97,$00,$0C,$81,$97
                    db $40,$A6,$41,$C7,$40,$0D,$04,$03
                    db $01,$07,$01,$23,$01,$27,$01,$EC
                    db $03,$AC,$F3,$C3,$03,$78,$E2,$94
                    db $43,$47,$F3,$74,$43,$47,$FB,$74
                    db $43,$2C,$F1,$4C,$63,$47,$00,$57
                    db $21,$5C,$01,$7C,$72,$39,$F1,$EC
                    db $02,$4C,$81,$D8,$62,$EC,$01,$0D
                    db $0D,$0F,$F8,$30,$C7,$07,$ED,$4A
                    db $1D,$C1,$5F,$F6,$20,$1D,$C7,$FD

DATA_04CD1B:        db $54,$21,$0F,$F6,$20,$A7,$22,$37 ; 6-2, Level #23
                    db $FB,$73,$20,$83,$07,$87,$02,$93
                    db $20,$C7,$73,$04,$F1,$06,$31,$39
                    db $71,$59,$71,$E7,$73,$37,$A0,$47
                    db $04,$86,$7C,$E5,$71,$E7,$31,$33
                    db $A4,$39,$71,$A9,$71,$D3,$23,$08
                    db $F2,$13,$05,$27,$02,$49,$71,$75
                    db $75,$E8,$72,$67,$F3,$99,$71,$E7
                    db $20,$F4,$72,$F7,$31,$17,$A0,$33
                    db $20,$39,$71,$73,$28,$BC,$05,$39
                    db $F1,$79,$71,$A6,$21,$C3,$06,$D3
                    db $20,$DC,$00,$FC,$00,$07,$A2,$13
                    db $21,$5F,$F2,$30,$8C,$00,$98,$7A
                    db $C7,$63,$D9,$61,$03,$A2,$07,$22
                    db $74,$72,$77,$31,$E7,$73,$39,$F1
                    db $58,$72,$77,$73,$D8,$72,$7F,$F6
                    db $B0,$97,$73,$B6,$64,$C5,$65,$D4
                    db $66,$E3,$67,$F3,$67,$8D,$C1,$CF
                    db $F6,$20,$9D,$C7,$FD

DATA_04CDB0:        db $52,$31,$0F,$F0,$20,$6E,$66,$07 ; 3-1, Level #24
                    db $81,$36,$01,$66,$00,$A7,$22,$08
                    db $F2,$67,$7B,$DC,$02,$98,$F2,$D7
                    db $20,$39,$F1,$9F,$F3,$30,$DC,$27
                    db $DC,$57,$23,$83,$57,$64,$6C,$51
                    db $87,$63,$99,$61,$A3,$06,$B3,$21
                    db $77,$F3,$F3,$21,$F7,$2A,$13,$81
                    db $23,$22,$53,$00,$63,$22,$E9,$0B
                    db $0C,$83,$13,$21,$16,$22,$33,$05
                    db $8F,$F5,$30,$8F,$90,$12,$EC,$01
                    db $63,$A0,$67,$20,$73,$01,$77,$01
                    db $83,$20,$87,$20,$B3,$20,$B7,$20
                    db $C3,$01,$C7,$00,$D3,$20,$D7,$20
                    db $67,$A0,$77,$07,$87,$22,$E8,$62
                    db $F5,$65,$1C,$82,$7F,$F8,$30,$8D
                    db $C1,$CF,$F6,$20,$8D,$C7,$FD

DATA_04CE2F:        db $50,$21,$07,$81,$47,$24,$57,$00 ; 1-1, Level #25
                    db $63,$01,$77,$01,$C9,$71,$68,$F2
                    db $E7,$73,$97,$FB,$06,$83,$5C,$01
                    db $D7,$22,$E7,$00,$03,$A7,$6C,$02
                    db $B3,$22,$E3,$01,$E7,$07,$47,$A0
                    db $57,$06,$A7,$01,$D3,$00,$D7,$01
                    db $07,$81,$67,$20,$93,$22,$03,$A3
                    db $1C,$61,$17,$21,$6F,$F3,$30,$C7
                    db $63,$D8,$62,$E9,$61,$FA,$60,$4F
                    db $F3,$B0,$87,$63,$9C,$01,$B7,$63
                    db $C8,$62,$D9,$61,$EA,$60,$39,$F1
                    db $87,$21,$A7,$01,$B7,$20,$39,$F1
                    db $5F,$F8,$30,$6D,$C1,$AF,$F6,$20
                    db $7D,$C7,$FD

DATA_04CE9A:        db $90,$11,$0F,$F6,$20,$FE,$10,$2A ; 1-3 & 5-3, Level #26
                    db $93,$87,$17,$A3,$14,$B2,$42,$0A
                    db $92,$19,$40,$36,$14,$50,$41,$82
                    db $16,$2B,$93,$24,$41,$BB,$14,$B8
                    db $00,$C2,$43,$C3,$13,$1B,$94,$67
                    db $12,$C4,$15,$53,$C1,$D2,$41,$12
                    db $C1,$29,$13,$85,$17,$1B,$92,$1A
                    db $42,$47,$13,$83,$41,$A7,$13,$0E
                    db $91,$A7,$63,$B7,$63,$C5,$65,$D5
                    db $65,$DD,$4A,$E3,$67,$F3,$67,$8D
                    db $C1,$AF,$F0,$20,$AD,$C7,$FD

DATA_04CEF1:        db $90,$11,$0F,$F6,$20,$6E,$10,$8B ; 2-3 & 7-3, Level #27
                    db $17,$AF,$F2,$30,$D8,$62,$E8,$62
                    db $FC,$3F,$AD,$C8,$F8,$64,$0C,$BE
                    db $43,$43,$F8,$64,$0C,$BE,$73,$40
                    db $84,$40,$93,$40,$A4,$40,$B3,$40
                    db $F8,$64,$48,$E4,$5C,$39,$83,$40
                    db $92,$41,$B3,$40,$F8,$64,$48,$E4
                    db $5C,$39,$F8,$64,$13,$C2,$37,$65
                    db $4C,$24,$63,$00,$97,$65,$C3,$42
                    db $0B,$97,$AC,$32,$F8,$64,$0C,$BE
                    db $53,$45,$9D,$48,$F8,$64,$2A,$E2
                    db $3C,$47,$56,$43,$BA,$62,$F8,$64
                    db $0C,$B7,$88,$64,$BC,$31,$D4,$45
                    db $FC,$31,$3C,$B1,$78,$64,$8C,$38
                    db $0B,$9C,$1A,$33,$18,$61,$28,$61
                    db $39,$60,$5D,$4A,$EE,$11,$0F,$F8
                    db $B0,$1D,$C1,$3F,$F0,$20,$3D,$C7
                    db $FD

DATA_04CF7A:        db $52,$31,$0F,$F0,$20,$6E,$40,$F7 ; 2-1, Level #28
                    db $20,$07,$84,$17,$20,$4F,$F4,$30
                    db $5F,$80,$12,$C3,$03,$C7,$02,$D3
                    db $22,$27,$E3,$39,$61,$E7,$73,$5C
                    db $E4,$57,$00,$6C,$73,$47,$A0,$53
                    db $06,$63,$22,$A7,$73,$FC,$73,$13
                    db $A1,$33,$05,$43,$21,$5C,$72,$C3
                    db $23,$CC,$03,$77,$FB,$AC,$02,$39
                    db $F1,$A7,$73,$D3,$04,$E8,$72,$E3
                    db $22,$26,$F4,$BC,$02,$8C,$81,$A8
                    db $62,$17,$87,$43,$24,$A7,$01,$C3
                    db $04,$08,$F2,$97,$21,$A3,$02,$C9
                    db $0B,$E1,$69,$F1,$69,$8D,$C1,$CF
                    db $F6,$20,$9D,$C7,$FD

DATA_04CFE7:        db $38,$11,$0F,$F6,$20,$AD,$40,$3D ; Pipe entrance, Level #29
                    db $C7,$FD

DATA_04CFF1:        db $95,$B1,$0F,$F6,$20,$0D,$02,$C8 ; 5-1, Level #2A
                    db $72,$1C,$81,$38,$72,$0D,$05,$97
                    db $34,$98,$62,$A3,$20,$B3,$06,$C3
                    db $20,$CC,$03,$F9,$91,$2C,$81,$48
                    db $62,$0D,$09,$37,$63,$47,$03,$57
                    db $21,$8C,$02,$C5,$79,$C7,$31,$F9
                    db $11,$39,$F1,$A9,$11,$6F,$F4,$B0
                    db $D3,$65,$E3,$65,$7D,$C1,$BF,$F6
                    db $20,$8D,$C7,$FD

DATA_04D035:        db $00,$C1,$4C,$00,$F4,$4F,$0D,$02 ; Sky Bonus Area (Day), Level #2B
                    db $02,$42,$43,$4F,$52,$C2,$DE,$00
                    db $5A,$C2,$4D,$C7,$FD

DATA_04D04A:        db $90,$51,$0F,$F6,$20,$EE,$10,$0B ; 4-3, Level #2C
                    db $94,$33,$14,$42,$42,$77,$16,$86
                    db $44,$02,$92,$4A,$16,$69,$42,$73
                    db $14,$B0,$00,$C7,$12,$05,$C0,$1C
                    db $17,$1F,$F1,$10,$36,$12,$8F,$F4
                    db $10,$91,$40,$1B,$94,$35,$12,$34
                    db $42,$60,$42,$61,$12,$87,$12,$96
                    db $40,$A3,$14,$1C,$98,$1F,$F1,$10
                    db $47,$12,$9F,$F5,$10,$CC,$15,$CF
                    db $F1,$10,$05,$C0,$1F,$F5,$10,$39
                    db $12,$7C,$16,$7F,$F1,$10,$82,$40
                    db $98,$12,$DF,$F5,$10,$16,$C4,$17
                    db $14,$54,$12,$9B,$16,$28,$94,$CE
                    db $01,$3D,$C1,$5F,$F0,$20,$5D,$C7
                    db $FD

DATA_04D0BB:        db $97,$11,$0F,$F6,$20,$FE,$10,$2B ; 6-3, Level #2D
                    db $92,$57,$12,$8B,$12,$C0,$41,$F7
                    db $13,$5B,$92,$69,$0B,$BB,$12,$B2
                    db $46,$19,$93,$71,$00,$17,$94,$7C
                    db $14,$7F,$F1,$10,$93,$41,$BF,$F5
                    db $10,$FC,$13,$FF,$F1,$10,$2F,$F5
                    db $90,$50,$42,$51,$12,$58,$14,$A6
                    db $12,$DB,$12,$1B,$93,$46,$43,$7B
                    db $12,$8D,$49,$B7,$14,$1B,$94,$49
                    db $0B,$BB,$12,$FC,$13,$FF,$F2,$10
                    db $03,$C1,$2F,$F5,$10,$43,$12,$4B
                    db $13,$77,$13,$9D,$4A,$15,$C1,$A1
                    db $41,$C3,$12,$FE,$01,$7D,$C1,$9F
                    db $F0,$20,$9D,$C7,$FD

DATA_04D128:        db $52,$21,$0F,$F0,$20,$6E,$44,$0C ; 6-1, Level #2E
                    db $F1,$4C,$01,$AA,$35,$D9,$34,$EE
                    db $20,$08,$B3,$37,$32,$43,$04,$4E
                    db $21,$53,$20,$7C,$01,$97,$21,$B7
                    db $07,$9C,$81,$E7,$42,$5F,$F3,$B0
                    db $97,$63,$AC,$02,$C5,$41,$49,$E0
                    db $58,$61,$76,$64,$85,$65,$94,$66
                    db $A4,$22,$A6,$03,$C8,$22,$DC,$02
                    db $68,$F2,$96,$42,$13,$82,$17,$02
                    db $AF,$F4,$30,$F6,$21,$FC,$06,$26
                    db $80,$2A,$24,$36,$01,$8C,$00,$FF
                    db $F5,$30,$4E,$A0,$55,$21,$77,$20
                    db $87,$07,$89,$22,$AE,$21,$4C,$82
                    db $9F,$F4,$30,$EC,$01,$03,$E7,$13
                    db $67,$8D,$4A,$AD,$41,$EF,$F6,$20
                    db $BD,$C7,$FD

DATA_04D1A3:        db $10,$51,$4C,$00,$C7,$12,$C6,$42 ; 4-2 Warpzone, Level #2F
                    db $03,$92,$02,$42,$29,$12,$63,$12
                    db $62,$42,$69,$14,$A5,$12,$A4,$42
                    db $E2,$14,$E1,$44,$F8,$16,$37,$C1
                    db $8F,$F8,$30,$02,$BB,$28,$7A,$68
                    db $7A,$A8,$7A,$E0,$6A,$F0,$6A,$6D
                    db $C5,$FD

DATA_04D1D5:        db $92,$31,$0F,$F0,$20,$6E,$40,$0D ; 8-1, Level #30
                    db $02,$37,$73,$EC,$00,$0C,$80,$3C
                    db $00,$6C,$00,$9C,$00,$06,$C0,$C7
                    db $73,$06,$83,$28,$72,$96,$40,$E7
                    db $73,$26,$C0,$87,$7B,$D2,$41,$39
                    db $F1,$C8,$F2,$97,$E3,$A3,$23,$E7
                    db $02,$E3,$07,$F3,$22,$37,$E3,$9C
                    db $00,$BC,$00,$EC,$00,$0C,$80,$3C
                    db $00,$86,$21,$A6,$06,$B6,$24,$5C
                    db $80,$7C,$00,$9C,$00,$29,$E1,$DC
                    db $05,$F6,$41,$DC,$80,$E8,$72,$0C
                    db $81,$27,$73,$4C,$01,$66,$74,$0D
                    db $11,$3F,$F5,$30,$B6,$41,$2C,$82
                    db $36,$40,$7C,$02,$86,$40,$F9,$61
                    db $39,$E1,$AC,$04,$C6,$41,$0C,$83
                    db $16,$41,$88,$F2,$39,$F1,$7C,$00
                    db $89,$61,$9C,$00,$A7,$63,$BC,$00
                    db $C5,$65,$DC,$00,$E3,$67,$F3,$67
                    db $8D,$C1,$CF,$F6,$20,$8D,$C7,$FD

DATA_04D26D:        db $55,$B1,$0F,$F6,$20,$CF,$F3,$30 ; 5-2, Level #31
                    db $DF,$80,$12,$07,$B2,$15,$11,$52
                    db $42,$99,$0B,$AC,$02,$D3,$24,$D6
                    db $42,$D7,$25,$23,$84,$CF,$F3,$30
                    db $07,$E3,$19,$61,$78,$7A,$EF,$F3
                    db $30,$2C,$81,$46,$64,$55,$65,$65
                    db $65,$EC,$74,$47,$82,$53,$05,$63
                    db $21,$62,$41,$96,$22,$9A,$41,$CC
                    db $03,$B9,$91,$39,$F1,$63,$26,$67
                    db $27,$D3,$06,$FC,$01,$18,$E2,$D9
                    db $07,$E9,$04,$0C,$86,$37,$22,$93
                    db $24,$87,$84,$AC,$02,$C2,$41,$C3
                    db $23,$D9,$71,$FC,$01,$7F,$F1,$B0
                    db $9C,$00,$A7,$63,$B6,$64,$CC,$00
                    db $D4,$66,$E3,$67,$F3,$67,$8D,$C1
                    db $CF,$F6,$20,$9D,$C7,$FD

DATA_04D2EB:        db $50,$B1,$0F,$F6,$20,$FC,$00,$1F ; 8-2, Level #32
                    db $F3,$B0,$5C,$00,$65,$65,$74,$66
                    db $83,$67,$93,$67,$DC,$73,$4C,$80
                    db $B3,$20,$C9,$0B,$C3,$08,$D3,$2F
                    db $DC,$00,$2C,$80,$4C,$00,$8C,$00
                    db $D3,$2E,$ED,$4A,$FC,$00,$D7,$A1
                    db $EC,$01,$4C,$80,$59,$11,$D8,$11
                    db $DA,$10,$37,$A0,$47,$04,$99,$11
                    db $E7,$21,$3A,$90,$67,$20,$76,$10
                    db $77,$60,$87,$07,$D8,$12,$39,$F1
                    db $AC,$00,$E9,$71,$0C,$80,$2C,$00
                    db $4C,$05,$C7,$7B,$39,$F1,$EC,$00
                    db $F9,$11,$0C,$82,$6F,$F4,$30,$F8
                    db $11,$FA,$10,$7F,$F2,$B0,$AC,$00
                    db $B6,$64,$CC,$01,$E3,$67,$F3,$67
                    db $8D,$C1,$CF,$F6,$20,$8D,$C7,$FD

DATA_04D36B:        db $52,$B1,$0F,$F0,$20,$6E,$45,$39 ; 7-1, Level #33
                    db $91,$B3,$04,$C3,$21,$C8,$11,$CA
                    db $10,$49,$91,$7C,$73,$E8,$12,$88
                    db $91,$8A,$10,$E7,$21,$05,$91,$07
                    db $30,$17,$07,$27,$20,$49,$11,$9C
                    db $01,$C8,$72,$23,$A6,$27,$26,$D3
                    db $03,$D8,$7A,$89,$91,$D8,$72,$39
                    db $F1,$A9,$11,$09,$F1,$63,$24,$67
                    db $24,$D8,$62,$28,$91,$2A,$10,$56
                    db $21,$70,$04,$79,$0B,$8C,$00,$94
                    db $21,$9F,$F5,$30,$2F,$F8,$B0,$3D
                    db $C1,$7F,$F6,$20,$3D,$C7,$FD

DATA_04D3CA:        db $06,$C1,$4C,$00,$F4,$4F,$0D,$02 ; Sky Bonus Area (Night), Level  #34
                    db $06,$20,$24,$4F,$35,$A0,$36,$20
                    db $53,$46,$D5,$20,$D6,$20,$34,$A1
                    db $73,$49,$74,$20,$94,$20,$B4,$20
                    db $D4,$20,$F4,$20,$2E,$80,$59,$42
                    db $4D,$C7,$FD

DATA_04D3F5:        db $96,$31,$0F,$F6,$20,$0D,$03,$1A ; 3-2, Level #35
                    db $60,$77,$42,$C4,$00,$C8,$62,$B9
                    db $E1,$D3,$06,$D7,$07,$F9,$61,$0C
                    db $81,$4E,$B1,$8E,$B1,$BC,$01,$E4
                    db $50,$E9,$61,$0C,$81,$0D,$0A,$84
                    db $43,$98,$72,$0D,$0C,$0F,$F8,$30
                    db $1D,$C1,$5F,$F6,$20,$1D,$C7,$FD

DATA_04D42D:        db $48,$0F,$0E,$01,$5E,$02,$A7,$00 ; 1-2, Level #C0
                    db $BC,$73,$1A,$E0,$39,$61,$58,$62
                    db $77,$63,$97,$63,$B8,$62,$D6,$07
                    db $F8,$62,$19,$E1,$75,$52,$86,$40
                    db $87,$50,$95,$52,$93,$43,$A5,$21
                    db $C5,$52,$D6,$40,$D7,$20,$E5,$06
                    db $E6,$51,$3E,$8D,$5E,$03,$67,$52
                    db $77,$52,$7E,$02,$9E,$03,$A6,$43
                    db $A7,$23,$DE,$05,$FE,$02,$1E,$83
                    db $33,$54,$46,$40,$47,$21,$56,$04
                    db $5E,$02,$83,$54,$93,$52,$96,$07
                    db $97,$50,$BE,$03,$C7,$23,$FE,$02
                    db $0C,$82,$43,$45,$45,$24,$46,$24
                    db $90,$08,$95,$51,$78,$FA,$D7,$73
                    db $39,$F1,$8C,$01,$A8,$52,$B8,$52
                    db $CC,$01,$5F,$F3,$B0,$97,$63,$9E
                    db $00,$0E,$81,$16,$24,$66,$04,$8E
                    db $00,$FE,$01,$08,$D2,$0E,$06,$6F
                    db $F7,$40,$9E,$0F,$0E,$82,$2D,$47
                    db $28,$7A,$68,$7A,$A8,$7A,$AE,$01
                    db $DE,$0F,$6D,$C5,$FD

DATA_04D4D2:        db $48,$0F,$0E,$01,$5E,$02,$BC,$01 ; 4-2, Level #C1
                    db $FC,$01,$2C,$82,$41,$52,$4E,$04
                    db $67,$25,$68,$24,$69,$24,$BA,$42
                    db $C7,$04,$DE,$0B,$B2,$87,$FE,$02
                    db $2C,$E1,$2C,$71,$67,$01,$77,$00
                    db $87,$01,$8E,$00,$EE,$01,$F6,$02
                    db $03,$85,$05,$02,$13,$21,$16,$02
                    db $27,$02,$2E,$02,$88,$72,$C7,$20
                    db $D7,$07,$E4,$76,$07,$A0,$17,$06
                    db $48,$7A,$76,$20,$98,$72,$79,$E1
                    db $88,$62,$9C,$01,$B7,$73,$DC,$01
                    db $F8,$62,$FE,$01,$08,$E2,$0E,$00
                    db $6E,$02,$73,$20,$77,$23,$83,$04
                    db $93,$20,$AE,$00,$FE,$0A,$0E,$82
                    db $39,$71,$A8,$72,$E7,$73,$0C,$81
                    db $8F,$F2,$30,$AE,$00,$FE,$04,$04
                    db $D1,$17,$04,$26,$49,$27,$29,$DF
                    db $F3,$30,$FE,$02,$44,$F6,$7C,$01
                    db $8E,$06,$BF,$F7,$40,$EE,$0F,$4D
                    db $C7,$0E,$82,$68,$7A,$AE,$01,$DE
                    db $0F,$6D,$C5,$FD

DATA_04D576:        db $48,$01,$0E,$01,$00,$5A,$3E,$06 ; Underground Bonus Area, Level #C2
                    db $45,$46,$47,$46,$53,$44,$AE,$01
                    db $DF,$FA,$40,$4D,$C7,$0E,$81,$00
                    db $5A,$2E,$04,$37,$28,$3A,$48,$46
                    db $47,$C7,$07,$CE,$0F,$DF,$FA,$40
                    db $4D,$C7,$0E,$81,$00,$5A,$33,$53
                    db $43,$51,$46,$40,$47,$50,$53,$04
                    db $55,$40,$56,$50,$62,$43,$64,$40
                    db $65,$50,$71,$41,$73,$51,$83,$51
                    db $94,$40,$95,$50,$A3,$50,$A5,$40
                    db $A6,$50,$B3,$51,$B6,$40,$B7,$50
                    db $C3,$53,$DF,$FA,$40,$4D,$C7,$0E
                    db $81,$00,$5A,$2E,$02,$36,$47,$37
                    db $52,$3A,$49,$47,$25,$A7,$52,$D7
                    db $04,$DF,$FA,$40,$4D,$C7,$0E,$81
                    db $00,$5A,$3E,$02,$44,$51,$53,$44
                    db $54,$44,$55,$24,$A1,$54,$AE,$01
                    db $B4,$21,$DF,$FA,$40,$E5,$07,$4D
                    db $C7,$FD

DATA_04D608:        db $41,$01,$B4,$34,$C8,$52,$F2,$51 ; Underwater Bonus Area, Level #00
                    db $47,$D3,$6C,$03,$65,$49,$9E,$07
                    db $AF,$02,$3E,$AF,$82,$3E,$BE,$01
                    db $BF,$02,$3E,$BF,$82,$3E,$CC,$03
                    db $FE,$07,$0D,$C9,$0F,$02,$3E,$0F
                    db $82,$3E,$1E,$01,$1F,$02,$3E,$1F
                    db $82,$3E,$6C,$01,$62,$35,$63,$53
                    db $8A,$41,$AC,$01,$B3,$53,$E9,$51
                    db $26,$C3,$27,$33,$63,$43,$64,$33
                    db $BA,$60,$C9,$61,$CE,$0B,$DE,$0F
                    db $DF,$03,$3E,$DF,$73,$3E,$E5,$09
                    db $EF,$04,$3E,$EF,$73,$3E,$FF,$0A
                    db $3E,$0F,$0A,$BE,$7D,$4A,$7D,$47
                    db $FD

DATA_04D671:        db $41,$01,$B8,$52,$EA,$41,$27,$B2 ; 2-2 & 7-2, Level #01
                    db $B3,$42,$16,$D4,$4A,$42,$A5,$51
                    db $A7,$31,$27,$D3,$08,$E2,$16,$64
                    db $2C,$04,$38,$42,$76,$64,$88,$62
                    db $DE,$07,$EF,$02,$3E,$EF,$82,$3E
                    db $FE,$01,$FF,$02,$3E,$FF,$82,$3E
                    db $0D,$C9,$23,$32,$31,$51,$98,$52
                    db $0D,$C9,$59,$42,$63,$53,$67,$31
                    db $14,$C2,$36,$31,$87,$53,$17,$E3
                    db $29,$61,$30,$62,$3C,$08,$42,$37
                    db $59,$40,$6A,$42,$99,$40,$C9,$61
                    db $D7,$63,$39,$D1,$58,$52,$C3,$67
                    db $D3,$31,$DC,$06,$F7,$42,$FA,$42
                    db $23,$B1,$43,$67,$C3,$34,$C7,$34
                    db $D1,$51,$43,$B3,$47,$33,$9A,$30
                    db $A9,$61,$B8,$62,$BE,$0B,$CE,$0F
                    db $CF,$03,$3E,$CF,$73,$3E,$D5,$09
                    db $DF,$04,$3E,$DF,$73,$3E,$EF,$0A
                    db $3E,$FF,$0A,$3E,$0F,$0A,$BE,$0D
                    db $4A,$7D,$47,$FD

DATA_04D70D:        db $49,$0F,$1E,$01,$1F,$00,$34,$2F ; 8-4 Underwater, Level #02
                    db $B0,$34,$2F,$C0,$34,$39,$73,$5E
                    db $07,$5F,$A1,$3C,$5F,$B0,$38,$6F
                    db $80,$38,$6F,$00,$34,$AE,$0B,$AF
                    db $71,$3C,$BF,$30,$34,$1E,$82,$1F
                    db $20,$34,$1F,$A1,$3A,$1F,$70,$36
                    db $6E,$88,$6F,$A1,$3C,$7F,$10,$34
                    db $7F,$80,$38,$9E,$02,$9F,$20,$34
                    db $9F,$A1,$3A,$9F,$80,$36,$0D,$04
                    db $2E,$0B,$2F,$A1,$3C,$3F,$10,$34
                    db $3F,$70,$38,$3E,$0B,$4F,$40,$34
                    db $45,$09,$5F,$42,$28,$5F,$50,$34
                    db $6F,$42,$28,$7F,$42,$28,$ED,$47
                    db $FD

DATA_04D776:        db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; empty
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; From here on starts duplicate code of $00C000
;; This is for SMB1 while the code at $00C000 is for
;; The Lost Levels.
;; Please refer to bank 00 for the comments
;;

CODE_04D800:        AD A5 0B      LDA $0BA5                 ;\If skip player animations flag is set, return
CODE_04D803:        D0 54         BNE CODE_04D859           ;/
CODE_04D805:        AD D5 06      LDA $06D5                 ;
CODE_04D808:        C9 18         CMP #$18                  ;
CODE_04D80A:        F0 04         BEQ CODE_04D810           ;
CODE_04D80C:        C9 78         CMP #$78                  ;
CODE_04D80E:        D0 10         BNE CODE_04D820           ;
CODE_04D810:        A5 09         LDA $09                   ;\
CODE_04D812:        29 07         AND #$07                  ; |
CODE_04D814:        D0 0A         BNE CODE_04D820           ; |
CODE_04D816:        AD 01 16      LDA $1601                 ; |Play the "Mario is turning sound"
CODE_04D819:        D0 05         BNE CODE_04D820           ; |Every 7 frames
CODE_04D81B:        A9 04         LDA #$04                  ; |
CODE_04D81D:        8D 01 16      STA $1601                 ;/
CODE_04D820:        9C 8E 02      STZ $028E                 ;
CODE_04D823:        AD D5 06      LDA $06D5                 ;
CODE_04D826:        4A            LSR A                     ;
CODE_04D827:        4A            LSR A                     ;
CODE_04D828:        4A            LSR A                     ;
CODE_04D829:        EE 8E 02      INC $028E                 ;
CODE_04D82C:        C2 20         REP #$20                  ;
CODE_04D82E:        29 FF 00      AND #$00FF                ;
CODE_04D831:        EB            XBA                       ;
CODE_04D832:        18            CLC                       ;
CODE_04D833:        69 00 80      ADC #$8000                ;
CODE_04D836:        8D 8F 02      STA $028F                 ;
CODE_04D839:        A9 00 60      LDA #$6000                ;
CODE_04D83C:        8D 95 02      STA $0295                 ;
CODE_04D83F:        A9 00 01      LDA #$0100                ;
CODE_04D842:        8D 93 02      STA $0293                 ;
CODE_04D845:        E2 20         SEP #$20                  ;
CODE_04D847:        AD C2 0E      LDA $0EC2                 ;
CODE_04D84A:        F0 08         BEQ CODE_04D854           ;
CODE_04D84C:        AD 90 02      LDA $0290                 ;
CODE_04D84F:        09 40         ORA #$40                  ;
CODE_04D851:        8D 90 02      STA $0290                 ;
CODE_04D854:        A9 0A         LDA #$0A                  ;
CODE_04D856:        8D 91 02      STA $0291                 ;
CODE_04D859:        6B            RTL                       ;

CODE_04D85A:        9C 4A 0F      STZ $0F4A                 ;
CODE_04D85D:        A9 35         LDA #$35                  ;
CODE_04D85F:        6B            RTL                       ;

CODE_04D860:        C2 20         REP #$20                  ;16-bit A
CODE_04D862:        A2 1E         LDX #$1E                  ;Load amount of loops for palette upload
CODE_04D864:        AD 53 07      LDA $0753                 ;Load 'current character'
CODE_04D867:        F0 06         BEQ CODE_04D86F           ;If it is Mario, branch.
CODE_04D869:        BF A3 D8 04   LDA $04D8A3,x             ;Load Luigi and princess kiss sequence palette
CODE_04D86D:        80 04         BRA CODE_04D873           ;Upload them

CODE_04D86F:        BF 83 D8 04   LDA $04D883,x             ;Load Mario and princess kiss sequence palette
CODE_04D873:        9D 60 11      STA $1160,x               ;Upload them. (Sequence is after bowser btw)
CODE_04D876:        CA            DEX                       ;\
CODE_04D877:        CA            DEX                       ; |If not done, loop
CODE_04D878:        10 EA         BPL CODE_04D864           ;/ 
CODE_04D87A:        E2 20         SEP #$20                  ; 8-bit A
CODE_04D87C:        EE 00 12      INC $1200                 ;
CODE_04D87F:        20 C3 D8      JSR CODE_04D8C3           ;
CODE_04D882:        6B            RTL                       ; Return

DATA_04D883:        dw $734E,$7FFF,$14A5,$5D68 ; Mario palette of princess kiss sequence
                    dw $762E,$27BF,$31BB,$3ABF
                    dw $0000,$152F,$355D,$525F
                    dw $169B,$1C9F,$0C19,$0C19

DATA_04D8A3:        dw $734E,$7FFF,$14A5,$5588 ; Luigi palette of princess kiss sequence
                    dw $724D,$27BF,$31BB,$3ABF
                    dw $0000,$152F,$355D,$525F
                    dw $169B,$3303,$1A40,$1C9F

CODE_04D8C3:        8B            PHB                       ;\  Upload the stripe image message of princess peach to the player
CODE_04D8C4:        4B            PHK                       ; | Exact same copy of 00C0C3. Please refer to bank 00.
CODE_04D8C5:        AB            PLB                       ; |
CODE_04D8C6:        DA            PHX                       ; |
CODE_04D8C7:        A9 FF         LDA #$FF                  ; |
CODE_04D8C9:        8D EE 0E      STA $0EEE                 ; |
CODE_04D8CC:        9C EF 0E      STZ $0EEF                 ; |
CODE_04D8CF:        9C A3 0B      STZ $0BA3                 ; |
CODE_04D8D2:        A9 15         LDA #$15                  ; |
CODE_04D8D4:        8D 0B 12      STA $120B                 ; |
CODE_04D8D7:        A9 02         LDA #$02                  ; |
CODE_04D8D9:        8D 0C 12      STA $120C                 ; |
CODE_04D8DC:        C2 10         REP #$10                  ; |
CODE_04D8DE:        AD 5F 07      LDA $075F                 ; |
CODE_04D8E1:        48            PHA                       ; |
CODE_04D8E2:        AF 0F 00 70   LDA $70000F               ; |
CODE_04D8E6:        D0 0A         BNE CODE_04D8F2           ; |
CODE_04D8E8:        AD FC 07      LDA $07FC                 ; |
CODE_04D8EB:        F0 05         BEQ CODE_04D8F2           ; |
CODE_04D8ED:        A9 0C         LDA #$0C                  ; |
CODE_04D8EF:        8D 5F 07      STA $075F                 ; |
CODE_04D8F2:        A9 00         LDA #$00                  ; |
CODE_04D8F4:        EB            XBA                       ; |
CODE_04D8F5:        AD 53 07      LDA $0753                 ; |
CODE_04D8F8:        0A            ASL A                     ; |
CODE_04D8F9:        0A            ASL A                     ; |
CODE_04D8FA:        85 00         STA $00                   ; |
CODE_04D8FC:        AD 5F 07      LDA $075F                 ; |
CODE_04D8FF:        29 08         AND #$08                  ; |
CODE_04D901:        4A            LSR A                     ; |
CODE_04D902:        4A            LSR A                     ; |
CODE_04D903:        05 00         ORA $00                   ; |
CODE_04D905:        A8            TAY                       ; |
CODE_04D906:        68            PLA                       ; |
CODE_04D907:        8D 5F 07      STA $075F                 ; |
CODE_04D90A:        BE 26 D9      LDX $D926,y               ; |
CODE_04D90D:        9B            TXY                       ; |
CODE_04D90E:        AE 00 17      LDX $1700                 ; |
CODE_04D911:        B9 2E D9      LDA $D92E,y               ; |
CODE_04D914:        9D 02 17      STA $1702,x               ; |
CODE_04D917:        1A            INC A                     ; |
CODE_04D918:        F0 04         BEQ CODE_04D91E           ; |
CODE_04D91A:        E8            INX                       ; |
CODE_04D91B:        C8            INY                       ; |
CODE_04D91C:        80 F3         BRA CODE_04D911           ; |

CODE_04D91E:        8E 00 17      STX $1700                 ; |
CODE_04D921:        E2 10         SEP #$10                  ; |
CODE_04D923:        FA            PLX                       ; |
CODE_04D924:        AB            PLB                       ; |
CODE_04D925:        60            RTS                       ;/

DATA_04D926:        dw $0000,$00A4,$0156,$01FA         ;Indices for next table. 

DATA_04D92E:        db $59,$05,$00,$11,$1D,$20,$11,$20 ; "Thank you Mario! The kingdom is saved!
                    db $0A,$20,$17,$20,$14,$20,$28,$20 ;  Now try a more difficult quest..." text.
                    db $22,$20,$18,$20,$1E,$20,$59,$45
                    db $00,$0B,$16,$20,$0A,$20,$1B,$20 ; Encoded in stripe image.
                    db $12,$20,$18,$20,$26,$20,$59,$85
                    db $00,$15,$1D,$20,$11,$20,$0E,$20
                    db $28,$20,$14,$20,$12,$20,$17,$20
                    db $10,$20,$0D,$20,$18,$20,$16,$20
                    db $59,$C5,$00,$11,$12,$20,$1C,$20
                    db $28,$20,$1C,$20,$0A,$20,$1F,$20
                    db $0E,$20,$0D,$20,$26,$20,$5A,$05
                    db $00,$0D,$17,$20,$18,$20,$20,$20
                    db $28,$20,$1D,$20,$1B,$20,$22,$20
                    db $5A,$45,$00,$0B,$0A,$20,$28,$20
                    db $16,$20,$18,$20,$1B,$20,$0E,$20
                    db $5A,$85,$00,$11,$0D,$20,$12,$20
                    db $0F,$20,$0F,$20,$12,$20,$0C,$20
                    db $1E,$20,$15,$20,$1D,$20,$5A,$C5
                    db $00,$0F,$1A,$20,$1E,$20,$0E,$20
                    db $1C,$20,$1D,$20,$29,$20,$29,$20
                    db $29,$20,$FF,$FF

DATA_04D9D2:        db $59,$05,$00,$11,$1D,$20,$11,$20 ; "Thank you Mario for restoring peace to our
                    db $0A,$20,$17,$20,$14,$20,$28,$20 ;  kingdom. Hurrah to our hero, Mario!" text
                    db $22,$20,$18,$20,$1E,$20,$59,$45
                    db $00,$11,$16,$20,$0A,$20,$1B,$20 ; Encoded in stripe image
                    db $12,$20,$18,$20,$28,$20,$0F,$20
                    db $18,$20,$1B,$20,$59,$85,$00,$11
                    db $1B,$20,$0E,$20,$1C,$20,$1D,$20
                    db $18,$20,$1B,$20,$12,$20,$17,$20
                    db $10,$20,$59,$C5,$00,$0F,$19,$20
                    db $0E,$20,$0A,$20,$0C,$20,$0E,$20
                    db $28,$20,$1D,$20,$18,$20,$5A,$05
                    db $00,$05,$18,$20,$1E,$20,$1B,$20
                    db $5A,$45,$00,$0F,$14,$20,$12,$20
                    db $17,$20,$10,$20,$0D,$20,$18,$20
                    db $16,$20,$29,$20,$5A,$85,$00,$11
                    db $11,$20,$1E,$20,$1B,$20,$1B,$20
                    db $0A,$20,$11,$20,$28,$20,$1D,$20
                    db $18,$20,$5A,$C5,$00,$11,$18,$20
                    db $1E,$20,$1B,$20,$28,$20,$11,$20
                    db $0E,$20,$1B,$20,$18,$20,$2B,$20
                    db $5B,$05,$00,$0B,$16,$20,$0A,$20
                    db $1B,$20,$12,$20,$18,$20,$26,$20
                    db $FF,$FF

DATA_04DA84:        db $59,$05,$00,$11,$1D,$20,$11,$20 ; "Thank you Luigi! The kingdom is saved!
                    db $0A,$20,$17,$20,$14,$20,$28,$20 ;  Now try a more difficult quest..." text
                    db $22,$20,$18,$20,$1E,$20,$59,$45
                    db $00,$0B,$15,$20,$1E,$20,$12,$20 ; Encoded in stripe image
                    db $10,$20,$12,$20,$26,$20,$59,$85
                    db $00,$15,$1D,$20,$11,$20,$0E,$20
                    db $28,$20,$14,$20,$12,$20,$17,$20
                    db $10,$20,$0D,$20,$18,$20,$16,$20
                    db $59,$C5,$00,$11,$12,$20,$1C,$20
                    db $28,$20,$1C,$20,$0A,$20,$1F,$20
                    db $0E,$20,$0D,$20,$26,$20,$5A,$05
                    db $00,$0D,$17,$20,$18,$20,$20,$20
                    db $28,$20,$1D,$20,$1B,$20,$22,$20
                    db $5A,$45,$00,$0B,$0A,$20,$28,$20
                    db $16,$20,$18,$20,$1B,$20,$0E,$20
                    db $5A,$85,$00,$11,$0D,$20,$12,$20
                    db $0F,$20,$0F,$20,$12,$20,$0C,$20
                    db $1E,$20,$15,$20,$1D,$20,$5A,$C5
                    db $00,$0F,$1A,$20,$1E,$20,$0E,$20
                    db $1C,$20,$1D,$20,$29,$20,$29,$20
                    db $29,$20,$FF,$FF

DATA_04DB28:        db $59,$05,$00,$11,$1D,$20,$11,$20 ; "Thank you Luigi for restoring peace to our
                    db $0A,$20,$17,$20,$14,$20,$28,$20 ;  kingdom. Hurrah to our hero, Luigi!" text
                    db $22,$20,$18,$20,$1E,$20,$59,$45
                    db $00,$11,$15,$20,$1E,$20,$12,$20 ; Encoded in stripe image.
                    db $10,$20,$12,$20,$28,$20,$0F,$20
                    db $18,$20,$1B,$20,$59,$85,$00,$11
                    db $1B,$20,$0E,$20,$1C,$20,$1D,$20
                    db $18,$20,$1B,$20,$12,$20,$17,$20
                    db $10,$20,$59,$C5,$00,$0F,$19,$20
                    db $0E,$20,$0A,$20,$0C,$20,$0E,$20
                    db $28,$20,$1D,$20,$18,$20,$5A,$05
                    db $00,$05,$18,$20,$1E,$20,$1B,$20
                    db $5A,$45,$00,$0F,$14,$20,$12,$20
                    db $17,$20,$10,$20,$0D,$20,$18,$20
                    db $16,$20,$29,$20,$5A,$85,$00,$11
                    db $11,$20,$1E,$20,$1B,$20,$1B,$20
                    db $0A,$20,$11,$20,$28,$20,$1D,$20
                    db $18,$20,$5A,$C5,$00,$11,$18,$20
                    db $1E,$20,$1B,$20,$28,$20,$11,$20
                    db $0E,$20,$1B,$20,$18,$20,$2B,$20
                    db $5B,$05,$00,$0B,$15,$20,$1E,$20
                    db $12,$20,$10,$20,$12,$20,$26,$20
                    db $FF,$FF

CODE_04DBDA:        DA            PHX                       ;
CODE_04DBDB:        AD 85 0F      LDA $0F85                 ;
CODE_04DBDE:        D0 3B         BNE CODE_04DC1B           ;
CODE_04DBE0:        AF 0F 00 70   LDA $70000F               ;
CODE_04DBE4:        F0 03         BEQ CODE_04DBE9           ;
CODE_04DBE6:        AD 53 07      LDA $0753                 ;
CODE_04DBE9:        0A            ASL A                     ;
CODE_04DBEA:        0A            ASL A                     ;
CODE_04DBEB:        0A            ASL A                     ;
CODE_04DBEC:        0D 84 0F      ORA $0F84                 ;
CODE_04DBEF:        AA            TAX                       ;
CODE_04DBF0:        EE 84 0F      INC $0F84                 ;
CODE_04DBF3:        AD 84 0F      LDA $0F84                 ;
CODE_04DBF6:        C9 03         CMP #$03                  ;
CODE_04DBF8:        D0 08         BNE CODE_04DC02           ;
CODE_04DBFA:        A9 FF         LDA #$FF                  ;
CODE_04DBFC:        8D A1 00      STA $00A1                 ;
CODE_04DBFF:        9C 3D 04      STZ $043D                 ;
CODE_04DC02:        BF 3F DC 04   LDA $04DC3F,x             ;
CODE_04DC06:        D0 09         BNE CODE_04DC11           ;
CODE_04DC08:        EE 72 07      INC $0772                 ;
CODE_04DC0B:        9C 05 07      STZ $0705                 ;
CODE_04DC0E:        9C 5D 00      STZ $005D                 ;
CODE_04DC11:        8D 85 0F      STA $0F85                 ;
CODE_04DC14:        BF 4F DC 04   LDA $04DC4F,x             ;
CODE_04DC18:        8D 86 0F      STA $0F86                 ;
CODE_04DC1B:        CE 85 0F      DEC $0F85                 ;
CODE_04DC1E:        AD 86 0F      LDA $0F86                 ;
CODE_04DC21:        29 08         AND #$08                  ;
CODE_04DC23:        0A            ASL A                     ;
CODE_04DC24:        0A            ASL A                     ;
CODE_04DC25:        0A            ASL A                     ;
CODE_04DC26:        0A            ASL A                     ;
CODE_04DC27:        85 0D         STA $0D                   ;
CODE_04DC29:        AC 86 0F      LDY $0F86                 ;
CODE_04DC2C:        AD 23 07      LDA $0723                 ;
CODE_04DC2F:        F0 0C         BEQ CODE_04DC3D           ;
CODE_04DC31:        AD 19 02      LDA $0219                 ;
CODE_04DC34:        C9 A2         CMP #$A2                  ;
CODE_04DC36:        90 05         BCC CODE_04DC3D           ;
CODE_04DC38:        A9 A2         LDA #$A2                  ;
CODE_04DC3A:        8D 19 02      STA $0219                 ;
CODE_04DC3D:        FA            PLX                       ;
CODE_04DC3E:        6B            RTL                       ;

DATA_04DC3F:        db $18,$A0,$08,$01,$28,$10,$03,$00      ;Mario rescued peach movements duration.
                    db $10,$A0,$08,$01,$28,$1E,$02,$00      ;Note to self: look deeper in this

DATA_04DC4F:        db $01,$00,$41,$C1,$C9,$01,$01,$00      ;The movements
                    db $01,$00,$41,$C1,$C9,$01,$01,$00

CODE_04DC5F:        CE 88 0F      DEC $0F88                 ;
CODE_04DC62:        AD 88 0F      LDA $0F88                 ;
CODE_04DC65:        10 16         BPL CODE_04DC7D           ;
CODE_04DC67:        EE 87 0F      INC $0F87                 ;
CODE_04DC6A:        AE 87 0F      LDX $0F87                 ;
CODE_04DC6D:        E0 05         CPX #$05                  ;
CODE_04DC6F:        D0 05         BNE CODE_04DC76           ;
CODE_04DC71:        A9 A0         LDA #$A0                  ;
CODE_04DC73:        8D 19 02      STA $0219                 ;
CODE_04DC76:        BF B4 DC 04   LDA $04DCB4,x             ;
CODE_04DC7A:        8D 88 0F      STA $0F88                 ;
CODE_04DC7D:        AD 87 0F      LDA $0F87                 ;
CODE_04DC80:        0A            ASL A                     ;
CODE_04DC81:        AA            TAX                       ;
CODE_04DC82:        BF 91 DC 04   LDA $04DC91,x             ;
CODE_04DC86:        85 00         STA $00                   ;
CODE_04DC88:        BF 92 DC 04   LDA $04DC92,x             ;
CODE_04DC8C:        85 01         STA $01                   ;
CODE_04DC8E:        6C 00 00      JMP ($0000)               ;

PNTR_04DC91:        dw CODE_04DC9F
                    dw CODE_04DC9F
                    dw CODE_04DC9F
                    dw CODE_04DCB0
                    dw CODE_04DCA0
                    dw CODE_04DC9F
                    dw CODE_04DC9F

CODE_04DC9F:        6B            RTL                       ;

CODE_04DCA0:        A9 20         LDA #$20                  ;
CODE_04DCA2:        85 00         STA $00                   ;
CODE_04DCA4:        A9 04         LDA #$04                  ;
CODE_04DCA6:        85 02         STA $02                   ;
CODE_04DCA8:        A9 00         LDA #$00                  ;
CODE_04DCAA:        A2 01         LDX #$01                  ;
CODE_04DCAC:        22 87 C1 03   JSL CODE_03C187           ;
CODE_04DCB0:        CE 1A 02      DEC $021A                 ;
CODE_04DCB3:        6B            RTL                       ;

DATA_04DCB4:        db $00,$30,$37,$1A,$10,$60,$FF

CODE_04DCBB:        DA            PHX                       ;
CODE_04DCBC:        AD AE 03      LDA $03AE                 ;
CODE_04DCBF:        18            CLC                       ;
CODE_04DCC0:        69 07         ADC #$07                  ;
CODE_04DCC2:        8D B0 08      STA $08B0                 ;
CODE_04DCC5:        8D B4 08      STA $08B4                 ;
CODE_04DCC8:        AD B9 03      LDA $03B9                 ;
CODE_04DCCB:        8D B1 08      STA $08B1                 ;
CODE_04DCCE:        18            CLC                       ;
CODE_04DCCF:        69 10         ADC #$10                  ;
CODE_04DCD1:        8D B5 08      STA $08B5                 ;
CODE_04DCD4:        AE 87 0F      LDX $0F87                 ;
CODE_04DCD7:        E0 03         CPX #$03                  ;
CODE_04DCD9:        D0 0E         BNE CODE_04DCE9           ;
CODE_04DCDB:        A5 09         LDA $09                   ;
CODE_04DCDD:        29 04         AND #$04                  ;
CODE_04DCDF:        D0 08         BNE CODE_04DCE9           ;
CODE_04DCE1:        BF 4E DD 04   LDA $04DD4E,x             ;
CODE_04DCE5:        1A            INC A                     ;
CODE_04DCE6:        1A            INC A                     ;
CODE_04DCE7:        80 04         BRA CODE_04DCED           ;

CODE_04DCE9:        BF 4E DD 04   LDA $04DD4E,x             ;
CODE_04DCED:        8D B2 08      STA $08B2                 ;
CODE_04DCF0:        18            CLC                       ;
CODE_04DCF1:        69 20         ADC #$20                  ;
CODE_04DCF3:        8D B6 08      STA $08B6                 ;
CODE_04DCF6:        A9 25         LDA #$25                  ;
CODE_04DCF8:        8D B3 08      STA $08B3                 ;
CODE_04DCFB:        8D B7 08      STA $08B7                 ;
CODE_04DCFE:        AD 1A 02      LDA $021A                 ;
CODE_04DD01:        18            CLC                       ;
CODE_04DD02:        69 07         ADC #$07                  ;
CODE_04DD04:        38            SEC                       ;
CODE_04DD05:        ED 42 00      SBC $0042                 ;
CODE_04DD08:        AD 79 00      LDA $0079                 ;
CODE_04DD0B:        ED 43 00      SBC $0043                 ;
CODE_04DD0E:        09 02         ORA #$02                  ;
CODE_04DD10:        8D B0 0C      STA $0CB0                 ;
CODE_04DD13:        8D B4 0C      STA $0CB4                 ;
CODE_04DD16:        AE 58 0B      LDX $0B58                 ;
CODE_04DD19:        BD 02 08      LDA $0802,x               ;
CODE_04DD1C:        C9 F6         CMP #$F6                  ;
CODE_04DD1E:        D0 08         BNE CODE_04DD28           ;
CODE_04DD20:        A9 F0         LDA #$F0                  ;
CODE_04DD22:        9D 01 08      STA $0801,x               ;
CODE_04DD25:        9D 05 08      STA $0805,x               ;
CODE_04DD28:        A5 25         LDA $25                   ;
CODE_04DD2A:        F0 20         BEQ CODE_04DD4C           ;
CODE_04DD2C:        A9 1C         LDA #$1C                  ;
CODE_04DD2E:        8D E3 09      STA $09E3                 ;
CODE_04DD31:        8D E7 09      STA $09E7                 ;
CODE_04DD34:        8D EB 09      STA $09EB                 ;
CODE_04DD37:        8D EF 09      STA $09EF                 ;
CODE_04DD3A:        A9 80         LDA #$80                  ;
CODE_04DD3C:        8D E2 09      STA $09E2                 ;
CODE_04DD3F:        1A            INC A                     ;
CODE_04DD40:        8D E6 09      STA $09E6                 ;
CODE_04DD43:        A9 90         LDA #$90                  ;
CODE_04DD45:        8D EA 09      STA $09EA                 ;
CODE_04DD48:        1A            INC A                     ;
CODE_04DD49:        8D EE 09      STA $09EE                 ;
CODE_04DD4C:        FA            PLX                       ;
CODE_04DD4D:        6B            RTL                       ;

DATA_04DD4E:        db $88,$88,$80,$82,$86,$86,$86

CODE_04DD55:        AD 83 0F      LDA $0F83                 ;
CODE_04DD58:        C9 0A         CMP #$0A                  ;
CODE_04DD5A:        B0 2A         BCS CODE_04DD86           ;
CODE_04DD5C:        8B            PHB                       ;
CODE_04DD5D:        4B            PHK                       ;
CODE_04DD5E:        AB            PLB                       ;
CODE_04DD5F:        DA            PHX                       ;
CODE_04DD60:        0A            ASL A                     ;
CODE_04DD61:        AA            TAX                       ;
CODE_04DD62:        EE 83 0F      INC $0F83                 ;
CODE_04DD65:        BD 87 DD      LDA $DD87,x               ;
CODE_04DD68:        8D 87 02      STA $0287                 ;
CODE_04DD6B:        C2 20         REP #$20                  ;
CODE_04DD6D:        A9 00 08      LDA #$0800                ;
CODE_04DD70:        8D 88 02      STA $0288                 ;
CODE_04DD73:        BD AF DD      LDA $DDAF,x               ;
CODE_04DD76:        8D 8A 02      STA $028A                 ;
CODE_04DD79:        BD 9B DD      LDA $DD9B,x               ;
CODE_04DD7C:        8D 85 02      STA $0285                 ;
CODE_04DD7F:        E2 20         SEP #$20                  ;
CODE_04DD81:        EE 76 0B      INC $0B76                 ;
CODE_04DD84:        FA            PLX                       ;
CODE_04DD85:        AB            PLB                       ;
CODE_04DD86:        6B            RTL                       ;

DATA_04DD87:        db $08,$00,$2F,$00,$2F,$00,$2F,$00
                    db $2F,$00,$2F,$00,$2F,$00,$1E,$00
                    db $1E,$00,$1A,$00

DATA_04DD9B:        dw $A000,$D100,$D800,$E000
                    dw $E800,$F000,$F800,$D000
                    dw $D800,$E800

DATA_04DDAF:        dw $3000,$6080,$6400,$6800
                    dw $6C00,$7000,$7400,$7800
                    dw $7C00,$0400

CODE_04DDC3:        8B            PHB                       ;
CODE_04DDC4:        4B            PHK                       ;
CODE_04DDC5:        AB            PLB                       ;
CODE_04DDC6:        DA            PHX                       ;
CODE_04DDC7:        AD 83 0F      LDA $0F83                 ;
CODE_04DDCA:        0A            ASL A                     ;
CODE_04DDCB:        AA            TAX                       ;
CODE_04DDCC:        EE 83 0F      INC $0F83                 ;
CODE_04DDCF:        BD F1 DD      LDA $DDF1,x               ;
CODE_04DDD2:        8D 87 02      STA $0287                 ;
CODE_04DDD5:        C2 20         REP #$20                  ;
CODE_04DDD7:        A9 00 08      LDA #$0800                ;
CODE_04DDDA:        8D 88 02      STA $0288                 ;
CODE_04DDDD:        BD 19 DE      LDA $DE19,x               ;
CODE_04DDE0:        8D 8A 02      STA $028A                 ;
CODE_04DDE3:        BD 05 DE      LDA $DE05,x               ;
CODE_04DDE6:        8D 85 02      STA $0285                 ;
CODE_04DDE9:        E2 20         SEP #$20                  ;
CODE_04DDEB:        EE 76 0B      INC $0B76                 ;
CODE_04DDEE:        FA            PLX                       ;
CODE_04DDEF:        AB            PLB                       ;
CODE_04DDF0:        6B            RTL                       ;

DATA_04DDF1:        db $08,$00,$07,$00,$07,$00,$07,$00
                    db $07,$00,$07,$00,$07,$00,$07,$00
                    db $07,$00,$07,$00

DATA_04DE05:        dw $A000,$8100,$8800,$9000
                    dw $9800,$A000,$A800,$B000
                    dw $B800,$B800

DATA_04DE19:        dw $3000,$6080,$6400,$6800
                    dw $6C00,$7000,$7400,$7800
                    dw $7C00,$7C00

CODE_04DE2D:        A9 2E         LDA #$2E                  ;
CODE_04DE2F:        85 25         STA $25                   ;
CODE_04DE31:        A9 80         LDA #$80                  ;
CODE_04DE33:        85 32         STA $32                   ;
CODE_04DE35:        A9 01         LDA #$01                  ;
CODE_04DE37:        85 19         STA $19                   ;
CODE_04DE39:        A5 78         LDA $78                   ;
CODE_04DE3B:        85 82         STA $82                   ;
CODE_04DE3D:        AD 19 02      LDA $0219                 ;
CODE_04DE40:        8D 23 02      STA $0223                 ;
CODE_04DE43:        A9 01         LDA #$01                  ;
CODE_04DE45:        8D C5 00      STA $00C5                 ;
CODE_04DE48:        A9 18         LDA #$18                  ;
CODE_04DE4A:        8D 41 02      STA $0241                 ;
CODE_04DE4D:        9C 67 00      STZ $0067                 ;
CODE_04DE50:        9C 0C 02      STZ $020C                 ;
CODE_04DE53:        6B            RTL                       ;

CODE_04DE54:        AF 0F 00 70   LDA $70000F               ;
CODE_04DE58:        F0 0A         BEQ CODE_04DE64           ;
CODE_04DE5A:        AD 5F 07      LDA $075F                 ;
CODE_04DE5D:        C9 08         CMP #$08                  ;
CODE_04DE5F:        90 1E         BCC CODE_04DE7F           ;
CODE_04DE61:        4C 7F DE      JMP CODE_04DE7F           ;


CODE_04DE64:        AD 5F 07      LDA $075F                 ;\Load current world into stack
CODE_04DE67:        48            PHA                       ;/
CODE_04DE68:        AD 24 0E      LDA $0E24                 ;\Load loaded level into stack
CODE_04DE6B:        48            PHA                       ;/(always 0 because it's impossible to specify the level number
CODE_04DE6C:        AD FC 07      LDA $07FC                 ;\
CODE_04DE6F:        D0 06         BNE CODE_04DE77           ;/Branch if more difficult flag is set
CODE_04DE71:        9C 24 0E      STZ $0E24                 ;set loaded level to 0
CODE_04DE74:        9C 5F 07      STZ $075F                 ;Set world to 1
CODE_04DE77:        68            PLA                       ;\
CODE_04DE78:        8D 24 0E      STA $0E24                 ;/Recover loaded level from stack
CODE_04DE7B:        68            PLA                       ;\
CODE_04DE7C:        8D 5F 07      STA $075F                 ;/Recover world from stack
CODE_04DE7F:        A9 01         LDA #$01                  ;
CODE_04DE81:        8D 82 0F      STA $0F82                 ;
CODE_04DE84:        9C 83 0F      STZ $0F83                 ;
CODE_04DE87:        9C 17 07      STZ $0717                 ;Clear current demo action being executed
CODE_04DE8A:        6B            RTL                       ;

CODE_04DE8B:        AF 0F 00 70   LDA $70000F               ;
CODE_04DE8F:        F0 03         BEQ CODE_04DE94           ;
CODE_04DE91:        4C BF DF      JMP CODE_04DFBF           ;

CODE_04DE94:        8B            PHB                       ;
CODE_04DE95:        4B            PHK                       ;
CODE_04DE96:        AB            PLB                       ;
CODE_04DE97:        22 1F 87 04   JSL CODE_04871F           ;
CODE_04DE9B:        AE 80 0F      LDX $0F80                 ;
CODE_04DE9E:        AD 81 0F      LDA $0F81                 ;
CODE_04DEA1:        DD 5D E2      CMP $E25D,x               ;
CODE_04DEA4:        90 17         BCC CODE_04DEBD           ;
CODE_04DEA6:        9C 81 0F      STZ $0F81                 ;
CODE_04DEA9:        EE 80 0F      INC $0F80                 ;
CODE_04DEAC:        AD 80 0F      LDA $0F80                 ;
CODE_04DEAF:        C9 08         CMP #$08                  ;
CODE_04DEB1:        90 0A         BCC CODE_04DEBD           ;
CODE_04DEB3:        D0 03         BNE CODE_04DEB8           ;
CODE_04DEB5:        9C 89 0F      STZ $0F89                 ;
CODE_04DEB8:        A9 08         LDA #$08                  ;
CODE_04DEBA:        8D 80 0F      STA $0F80                 ;
CODE_04DEBD:        EE 81 0F      INC $0F81                 ;
CODE_04DEC0:        A9 00         LDA #$00                  ;
CODE_04DEC2:        EB            XBA                       ;
CODE_04DEC3:        AD 80 0F      LDA $0F80                 ;
CODE_04DEC6:        0A            ASL A                     ;
CODE_04DEC7:        C2 10         REP #$10                  ;
CODE_04DEC9:        A8            TAY                       ;
CODE_04DECA:        BE B4 E2      LDX $E2B4,y               ;
CODE_04DECD:        86 ED         STX $ED                   ;
CODE_04DECF:        BE 80 E2      LDX $E280,y               ;
CODE_04DED2:        A0 04 00      LDY #$0004                ;
CODE_04DED5:        BD FA E2      LDA $E2FA,x               ;
CODE_04DED8:        C9 FF         CMP #$FF                  ;
CODE_04DEDA:        F0 39         BEQ CODE_04DF15           ;
CODE_04DEDC:        18            CLC                       ;
CODE_04DEDD:        69 80         ADC #$80                  ;
CODE_04DEDF:        99 01 08      STA $0801,y               ;
CODE_04DEE2:        E8            INX                       ;
CODE_04DEE3:        BD FA E2      LDA $E2FA,x               ;
CODE_04DEE6:        18            CLC                       ;
CODE_04DEE7:        69 C0         ADC #$C0                  ;
CODE_04DEE9:        99 00 08      STA $0800,y               ;
CODE_04DEEC:        E8            INX                       ;
CODE_04DEED:        BD FA E2      LDA $E2FA,x               ;
CODE_04DEF0:        99 02 08      STA $0802,y               ;
CODE_04DEF3:        E8            INX                       ;
CODE_04DEF4:        64 00         STZ $00                   ;
CODE_04DEF6:        C9 80         CMP #$80                  ;
CODE_04DEF8:        B0 05         BCS CODE_04DEFF           ;
CODE_04DEFA:        AD 53 07      LDA $0753                 ;
CODE_04DEFD:        85 00         STA $00                   ;
CODE_04DEFF:        BD FA E2      LDA $E2FA,x               ;
CODE_04DF02:        05 00         ORA $00                   ;
CODE_04DF04:        09 20         ORA #$20                  ;
CODE_04DF06:        99 03 08      STA $0803,y               ;
CODE_04DF09:        E8            INX                       ;
CODE_04DF0A:        A9 02         LDA #$02                  ;
CODE_04DF0C:        99 00 0C      STA $0C00,y               ;
CODE_04DF0F:        C8            INY                       ;
CODE_04DF10:        C8            INY                       ;
CODE_04DF11:        C8            INY                       ;
CODE_04DF12:        C8            INY                       ;
CODE_04DF13:        80 C0         BRA CODE_04DED5           ;

CODE_04DF15:        A6 ED         LDX $ED                   ;
CODE_04DF17:        BD FA E2      LDA $E2FA,x               ;
CODE_04DF1A:        C9 FF         CMP #$FF                  ;
CODE_04DF1C:        F0 46         BEQ CODE_04DF64           ;
CODE_04DF1E:        18            CLC                       ;
CODE_04DF1F:        69 80         ADC #$80                  ;
CODE_04DF21:        99 01 08      STA $0801,y               ;
CODE_04DF24:        E8            INX                       ;
CODE_04DF25:        BD FA E2      LDA $E2FA,x               ;
CODE_04DF28:        18            CLC                       ;
CODE_04DF29:        69 C0         ADC #$C0                  ;
CODE_04DF2B:        18            CLC                       ;
CODE_04DF2C:        6D 53 07      ADC $0753                 ;
CODE_04DF2F:        6D 53 07      ADC $0753                 ;
CODE_04DF32:        6D 53 07      ADC $0753                 ;
CODE_04DF35:        6D 53 07      ADC $0753                 ;
CODE_04DF38:        99 00 08      STA $0800,y               ;
CODE_04DF3B:        E8            INX                       ;
CODE_04DF3C:        BD FA E2      LDA $E2FA,x               ;
CODE_04DF3F:        99 02 08      STA $0802,y               ;
CODE_04DF42:        E8            INX                       ;
CODE_04DF43:        64 00         STZ $00                   ;
CODE_04DF45:        C9 80         CMP #$80                  ;
CODE_04DF47:        B0 05         BCS CODE_04DF4E           ;
CODE_04DF49:        AD 53 07      LDA $0753                 ;
CODE_04DF4C:        85 00         STA $00                   ;
CODE_04DF4E:        BD FA E2      LDA $E2FA,x               ;
CODE_04DF51:        05 00         ORA $00                   ;
CODE_04DF53:        09 20         ORA #$20                  ;
CODE_04DF55:        99 03 08      STA $0803,y               ;
CODE_04DF58:        E8            INX                       ;
CODE_04DF59:        A9 02         LDA #$02                  ;
CODE_04DF5B:        99 00 0C      STA $0C00,y               ;
CODE_04DF5E:        C8            INY                       ;
CODE_04DF5F:        C8            INY                       ;
CODE_04DF60:        C8            INY                       ;
CODE_04DF61:        C8            INY                       ;
CODE_04DF62:        80 B3         BRA CODE_04DF17           ;

CODE_04DF64:        AD 80 0F      LDA $0F80                 ;
CODE_04DF67:        C9 08         CMP #$08                  ;
CODE_04DF69:        D0 4D         BNE CODE_04DFB8           ;
CODE_04DF6B:        E2 10         SEP #$10                  ;
CODE_04DF6D:        20 43 FD      JSR CODE_04FD43           ;
CODE_04DF70:        AD 89 0F      LDA $0F89                 ;
CODE_04DF73:        4A            LSR A                     ;
CODE_04DF74:        4A            LSR A                     ;
CODE_04DF75:        4A            LSR A                     ;
CODE_04DF76:        29 03         AND #$03                  ;
CODE_04DF78:        AA            TAX                       ;
CODE_04DF79:        BF 59 E2 04   LDA $04E259,x             ;
CODE_04DF7D:        18            CLC                       ;
CODE_04DF7E:        69 B0         ADC #$B0                  ;
CODE_04DF80:        8D 00 08      STA $0800                 ;
CODE_04DF83:        AD 89 0F      LDA $0F89                 ;
CODE_04DF86:        4A            LSR A                     ;
CODE_04DF87:        4A            LSR A                     ;
CODE_04DF88:        85 00         STA $00                   ;
CODE_04DF8A:        A9 60         LDA #$60                  ;
CODE_04DF8C:        38            SEC                       ;
CODE_04DF8D:        E5 00         SBC $00                   ;
CODE_04DF8F:        8D 01 08      STA $0801                 ;
CODE_04DF92:        AD 89 0F      LDA $0F89                 ;
CODE_04DF95:        4A            LSR A                     ;
CODE_04DF96:        4A            LSR A                     ;
CODE_04DF97:        4A            LSR A                     ;
CODE_04DF98:        4A            LSR A                     ;
CODE_04DF99:        4A            LSR A                     ;
CODE_04DF9A:        29 03         AND #$03                  ;
CODE_04DF9C:        AA            TAX                       ;
CODE_04DF9D:        BF 55 E2 04   LDA $04E255,x             ;
CODE_04DFA1:        8D 02 08      STA $0802                 ;
CODE_04DFA4:        A9 26         LDA #$26                  ;
CODE_04DFA6:        8D 03 08      STA $0803                 ;
CODE_04DFA9:        A9 00         LDA #$00                  ;
CODE_04DFAB:        8D 00 0C      STA $0C00                 ;
CODE_04DFAE:        EE 89 0F      INC $0F89                 ;
CODE_04DFB1:        E0 03         CPX #$03                  ;
CODE_04DFB3:        D0 03         BNE CODE_04DFB8           ;
CODE_04DFB5:        9C 89 0F      STZ $0F89                 ;
CODE_04DFB8:        E2 10         SEP #$10                  ;
CODE_04DFBA:        20 21 E2      JSR CODE_04E221           ;
CODE_04DFBD:        AB            PLB                       ;
CODE_04DFBE:        6B            RTL                       ;

CODE_04DFBF:        AD 5F 07      LDA $075F                 ;
CODE_04DFC2:        C9 08         CMP #$08                  ;
CODE_04DFC4:        90 03         BCC CODE_04DFC9           ;
CODE_04DFC6:        4C F6 E0      JMP CODE_04E0F6           ;

CODE_04DFC9:        8B            PHB                       ;
CODE_04DFCA:        4B            PHK                       ;
CODE_04DFCB:        AB            PLB                       ;
CODE_04DFCC:        22 1F 87 04   JSL CODE_04871F           ;
CODE_04DFD0:        AE 80 0F      LDX $0F80                 ;
CODE_04DFD3:        AD 81 0F      LDA $0F81                 ;
CODE_04DFD6:        DD 66 E2      CMP $E266,x               ;
CODE_04DFD9:        90 19         BCC CODE_04DFF4           ;
CODE_04DFDB:        9C 81 0F      STZ $0F81                 ;
CODE_04DFDE:        EE 80 0F      INC $0F80                 ;
CODE_04DFE1:        AD 80 0F      LDA $0F80                 ;
CODE_04DFE4:        C9 05         CMP #$05                  ;
CODE_04DFE6:        D0 03         BNE CODE_04DFEB           ;
CODE_04DFE8:        9C 89 0F      STZ $0F89                 ;
CODE_04DFEB:        C9 0F         CMP #$0F                  ;
CODE_04DFED:        90 05         BCC CODE_04DFF4           ;
CODE_04DFEF:        A9 06         LDA #$06                  ;
CODE_04DFF1:        8D 80 0F      STA $0F80                 ;
CODE_04DFF4:        EE 81 0F      INC $0F81                 ;
CODE_04DFF7:        A9 00         LDA #$00                  ;
CODE_04DFF9:        EB            XBA                       ;
CODE_04DFFA:        AD 80 0F      LDA $0F80                 ;
CODE_04DFFD:        0A            ASL A                     ;
CODE_04DFFE:        C2 10         REP #$10                  ;
CODE_04E000:        A8            TAY                       ;
CODE_04E001:        BE C6 E2      LDX $E2C6,y               ;
CODE_04E004:        86 ED         STX $ED                   ;
CODE_04E006:        BE 80 E2      LDX $E280,y               ;
CODE_04E009:        A0 04 00      LDY #$0004                ;
CODE_04E00C:        BD FA E2      LDA $E2FA,x               ;
CODE_04E00F:        C9 FF         CMP #$FF                  ;
CODE_04E011:        F0 39         BEQ CODE_04E04C           ;
CODE_04E013:        18            CLC                       ;
CODE_04E014:        69 80         ADC #$80                  ;
CODE_04E016:        99 01 08      STA $0801,y               ;
CODE_04E019:        E8            INX                       ;
CODE_04E01A:        BD FA E2      LDA $E2FA,x               ;
CODE_04E01D:        18            CLC                       ;
CODE_04E01E:        69 C0         ADC #$C0                  ;
CODE_04E020:        99 00 08      STA $0800,y               ;
CODE_04E023:        E8            INX                       ;
CODE_04E024:        BD FA E2      LDA $E2FA,x               ;
CODE_04E027:        99 02 08      STA $0802,y               ;
CODE_04E02A:        E8            INX                       ;
CODE_04E02B:        64 00         STZ $00                   ;
CODE_04E02D:        C9 80         CMP #$80                  ;
CODE_04E02F:        B0 05         BCS CODE_04E036           ;
CODE_04E031:        AD 53 07      LDA $0753                 ;
CODE_04E034:        85 00         STA $00                   ;
CODE_04E036:        BD FA E2      LDA $E2FA,x               ;
CODE_04E039:        05 00         ORA $00                   ;
CODE_04E03B:        09 20         ORA #$20                  ;
CODE_04E03D:        99 03 08      STA $0803,y               ;
CODE_04E040:        E8            INX                       ;
CODE_04E041:        A9 02         LDA #$02                  ;
CODE_04E043:        99 00 0C      STA $0C00,y               ;
CODE_04E046:        C8            INY                       ;
CODE_04E047:        C8            INY                       ;
CODE_04E048:        C8            INY                       ;
CODE_04E049:        C8            INY                       ;
CODE_04E04A:        80 C0         BRA CODE_04E00C           ;

CODE_04E04C:        A6 ED         LDX $ED                   ;
CODE_04E04E:        BD FA E2      LDA $E2FA,x               ;
CODE_04E051:        C9 FF         CMP #$FF                  ;
CODE_04E053:        F0 46         BEQ CODE_04E09B           ;
CODE_04E055:        18            CLC                       ;
CODE_04E056:        69 80         ADC #$80                  ;
CODE_04E058:        99 01 08      STA $0801,y               ;
CODE_04E05B:        E8            INX                       ;
CODE_04E05C:        BD FA E2      LDA $E2FA,x               ;
CODE_04E05F:        18            CLC                       ;
CODE_04E060:        69 C0         ADC #$C0                  ;
CODE_04E062:        18            CLC                       ;
CODE_04E063:        6D 53 07      ADC $0753                 ;
CODE_04E066:        6D 53 07      ADC $0753                 ;
CODE_04E069:        6D 53 07      ADC $0753                 ;
CODE_04E06C:        6D 53 07      ADC $0753                 ;
CODE_04E06F:        99 00 08      STA $0800,y               ;
CODE_04E072:        E8            INX                       ;
CODE_04E073:        BD FA E2      LDA $E2FA,x               ;
CODE_04E076:        99 02 08      STA $0802,y               ;
CODE_04E079:        E8            INX                       ;
CODE_04E07A:        64 00         STZ $00                   ;
CODE_04E07C:        C9 80         CMP #$80                  ;
CODE_04E07E:        B0 05         BCS CODE_04E085           ;
CODE_04E080:        AD 53 07      LDA $0753                 ;
CODE_04E083:        85 00         STA $00                   ;
CODE_04E085:        BD FA E2      LDA $E2FA,x               ;
CODE_04E088:        05 00         ORA $00                   ;
CODE_04E08A:        09 20         ORA #$20                  ;
CODE_04E08C:        99 03 08      STA $0803,y               ;
CODE_04E08F:        E8            INX                       ;
CODE_04E090:        A9 02         LDA #$02                  ;
CODE_04E092:        99 00 0C      STA $0C00,y               ;
CODE_04E095:        C8            INY                       ;
CODE_04E096:        C8            INY                       ;
CODE_04E097:        C8            INY                       ;
CODE_04E098:        C8            INY                       ;
CODE_04E099:        80 B3         BRA CODE_04E04E           ;

CODE_04E09B:        AD 80 0F      LDA $0F80                 ;
CODE_04E09E:        C9 06         CMP #$06                  ;
CODE_04E0A0:        90 4D         BCC CODE_04E0EF           ;
CODE_04E0A2:        E2 10         SEP #$10                  ;
CODE_04E0A4:        20 43 FD      JSR CODE_04FD43           ;
CODE_04E0A7:        AD 89 0F      LDA $0F89                 ;
CODE_04E0AA:        4A            LSR A                     ;
CODE_04E0AB:        4A            LSR A                     ;
CODE_04E0AC:        4A            LSR A                     ;
CODE_04E0AD:        29 03         AND #$03                  ;
CODE_04E0AF:        AA            TAX                       ;
CODE_04E0B0:        BF 59 E2 04   LDA $04E259,x             ;
CODE_04E0B4:        18            CLC                       ;
CODE_04E0B5:        69 B0         ADC #$B0                  ;
CODE_04E0B7:        8D 00 08      STA $0800                 ;
CODE_04E0BA:        AD 89 0F      LDA $0F89                 ;
CODE_04E0BD:        4A            LSR A                     ;
CODE_04E0BE:        4A            LSR A                     ;
CODE_04E0BF:        85 00         STA $00                   ;
CODE_04E0C1:        A9 60         LDA #$60                  ;
CODE_04E0C3:        38            SEC                       ;
CODE_04E0C4:        E5 00         SBC $00                   ;
CODE_04E0C6:        8D 01 08      STA $0801                 ;
CODE_04E0C9:        AD 89 0F      LDA $0F89                 ;
CODE_04E0CC:        4A            LSR A                     ;
CODE_04E0CD:        4A            LSR A                     ;
CODE_04E0CE:        4A            LSR A                     ;
CODE_04E0CF:        4A            LSR A                     ;
CODE_04E0D0:        4A            LSR A                     ;
CODE_04E0D1:        29 03         AND #$03                  ;
CODE_04E0D3:        AA            TAX                       ;
CODE_04E0D4:        BF 55 E2 04   LDA $04E255,x             ;
CODE_04E0D8:        8D 02 08      STA $0802                 ;
CODE_04E0DB:        A9 26         LDA #$26                  ;
CODE_04E0DD:        8D 03 08      STA $0803                 ;
CODE_04E0E0:        A9 00         LDA #$00                  ;
CODE_04E0E2:        8D 00 0C      STA $0C00                 ;
CODE_04E0E5:        EE 89 0F      INC $0F89                 ;
CODE_04E0E8:        E0 03         CPX #$03                  ;
CODE_04E0EA:        D0 03         BNE CODE_04E0EF           ;
CODE_04E0EC:        9C 89 0F      STZ $0F89                 ;
CODE_04E0EF:        E2 10         SEP #$10                  ;
CODE_04E0F1:        20 21 E2      JSR CODE_04E221           ;
CODE_04E0F4:        AB            PLB                       ;
CODE_04E0F5:        6B            RTL                       ;

CODE_04E0F6:        8B            PHB                       ;
CODE_04E0F7:        4B            PHK                       ;
CODE_04E0F8:        AB            PLB                       ;
CODE_04E0F9:        22 1F 87 04   JSL CODE_04871F           ;
CODE_04E0FD:        AE 80 0F      LDX $0F80                 ;
CODE_04E100:        AD 81 0F      LDA $0F81                 ;
CODE_04E103:        DD 76 E2      CMP $E276,x               ;
CODE_04E106:        90 17         BCC CODE_04E11F           ;
CODE_04E108:        9C 81 0F      STZ $0F81                 ;
CODE_04E10B:        EE 80 0F      INC $0F80                 ;
CODE_04E10E:        AD 80 0F      LDA $0F80                 ;
CODE_04E111:        C9 09         CMP #$09                  ;
CODE_04E113:        90 0A         BCC CODE_04E11F           ;
CODE_04E115:        D0 03         BNE CODE_04E11A           ;
CODE_04E117:        9C 89 0F      STZ $0F89                 ;
CODE_04E11A:        A9 09         LDA #$09                  ;
CODE_04E11C:        8D 80 0F      STA $0F80                 ;
CODE_04E11F:        EE 81 0F      INC $0F81                 ;
CODE_04E122:        A9 00         LDA #$00                  ;
CODE_04E124:        EB            XBA                       ;
CODE_04E125:        AD 80 0F      LDA $0F80                 ;
CODE_04E128:        0A            ASL A                     ;
CODE_04E129:        C2 10         REP #$10                  ;
CODE_04E12B:        A8            TAY                       ;
CODE_04E12C:        BE E6 E2      LDX $E2E6,y               ;
CODE_04E12F:        86 ED         STX $ED                   ;
CODE_04E131:        BE A0 E2      LDX $E2A0,y               ;
CODE_04E134:        A0 04 00      LDY #$0004                ;
CODE_04E137:        BD FA E2      LDA $E2FA,x               ;
CODE_04E13A:        C9 FF         CMP #$FF                  ;
CODE_04E13C:        F0 39         BEQ CODE_04E177           ;
CODE_04E13E:        18            CLC                       ;
CODE_04E13F:        69 80         ADC #$80                  ;
CODE_04E141:        99 01 08      STA $0801,y               ;
CODE_04E144:        E8            INX                       ;
CODE_04E145:        BD FA E2      LDA $E2FA,x               ;
CODE_04E148:        18            CLC                       ;
CODE_04E149:        69 C0         ADC #$C0                  ;
CODE_04E14B:        99 00 08      STA $0800,y               ;
CODE_04E14E:        E8            INX                       ;
CODE_04E14F:        BD FA E2      LDA $E2FA,x               ;
CODE_04E152:        99 02 08      STA $0802,y               ;
CODE_04E155:        E8            INX                       ;
CODE_04E156:        64 00         STZ $00                   ;
CODE_04E158:        C9 80         CMP #$80                  ;
CODE_04E15A:        B0 05         BCS CODE_04E161           ;
CODE_04E15C:        AD 53 07      LDA $0753                 ;
CODE_04E15F:        85 00         STA $00                   ;
CODE_04E161:        BD FA E2      LDA $E2FA,x               ;
CODE_04E164:        05 00         ORA $00                   ;
CODE_04E166:        09 20         ORA #$20                  ;
CODE_04E168:        99 03 08      STA $0803,y               ;
CODE_04E16B:        E8            INX                       ;
CODE_04E16C:        A9 02         LDA #$02                  ;
CODE_04E16E:        99 00 0C      STA $0C00,y               ;
CODE_04E171:        C8            INY                       ;
CODE_04E172:        C8            INY                       ;
CODE_04E173:        C8            INY                       ;
CODE_04E174:        C8            INY                       ;
CODE_04E175:        80 C0         BRA CODE_04E137           ;

CODE_04E177:        A6 ED         LDX $ED                   ;
CODE_04E179:        BD FA E2      LDA $E2FA,x               ;
CODE_04E17C:        C9 FF         CMP #$FF                  ;
CODE_04E17E:        F0 46         BEQ CODE_04E1C6           ;
CODE_04E180:        18            CLC                       ;
CODE_04E181:        69 80         ADC #$80                  ;
CODE_04E183:        99 01 08      STA $0801,y               ;
CODE_04E186:        E8            INX                       ;
CODE_04E187:        BD FA E2      LDA $E2FA,x               ;
CODE_04E18A:        18            CLC                       ;
CODE_04E18B:        69 C0         ADC #$C0                  ;
CODE_04E18D:        18            CLC                       ;
CODE_04E18E:        6D 53 07      ADC $0753                 ;
CODE_04E191:        6D 53 07      ADC $0753                 ;
CODE_04E194:        6D 53 07      ADC $0753                 ;
CODE_04E197:        6D 53 07      ADC $0753                 ;
CODE_04E19A:        99 00 08      STA $0800,y               ;
CODE_04E19D:        E8            INX                       ;
CODE_04E19E:        BD FA E2      LDA $E2FA,x               ;
CODE_04E1A1:        99 02 08      STA $0802,y               ;
CODE_04E1A4:        E8            INX                       ;
CODE_04E1A5:        64 00         STZ $00                   ;
CODE_04E1A7:        C9 80         CMP #$80                  ;
CODE_04E1A9:        B0 05         BCS CODE_04E1B0           ;
CODE_04E1AB:        AD 53 07      LDA $0753                 ;Load char palette
CODE_04E1AE:        85 00         STA $00                   ;Store in scratch RAM
CODE_04E1B0:        BD FA E2      LDA $E2FA,x               ;Load data
CODE_04E1B3:        05 00         ORA $00                   ;ORA with char palette. 01 = luigi
CODE_04E1B5:        09 20         ORA #$20                  ;ORA #$20
CODE_04E1B7:        99 03 08      STA $0803,y               ;
CODE_04E1BA:        E8            INX                       ;
CODE_04E1BB:        A9 02         LDA #$02                  ;
CODE_04E1BD:        99 00 0C      STA $0C00,y               ;
CODE_04E1C0:        C8            INY                       ;
CODE_04E1C1:        C8            INY                       ;
CODE_04E1C2:        C8            INY                       ;
CODE_04E1C3:        C8            INY                       ;
CODE_04E1C4:        80 B3         BRA CODE_04E179           ;

CODE_04E1C6:        AD 80 0F      LDA $0F80                 ;
CODE_04E1C9:        C9 09         CMP #$09                  ;
CODE_04E1CB:        D0 4D         BNE CODE_04E21A           ;
CODE_04E1CD:        E2 10         SEP #$10                  ;
CODE_04E1CF:        20 43 FD      JSR CODE_04FD43           ;
CODE_04E1D2:        AD 89 0F      LDA $0F89                 ;
CODE_04E1D5:        4A            LSR A                     ;
CODE_04E1D6:        4A            LSR A                     ;
CODE_04E1D7:        4A            LSR A                     ;
CODE_04E1D8:        29 03         AND #$03                  ;
CODE_04E1DA:        AA            TAX                       ;
CODE_04E1DB:        BF 59 E2 04   LDA $04E259,x             ;
CODE_04E1DF:        18            CLC                       ;
CODE_04E1E0:        69 B0         ADC #$B0                  ;
CODE_04E1E2:        8D 00 08      STA $0800                 ;
CODE_04E1E5:        AD 89 0F      LDA $0F89                 ;
CODE_04E1E8:        4A            LSR A                     ;
CODE_04E1E9:        4A            LSR A                     ;
CODE_04E1EA:        85 00         STA $00                   ;
CODE_04E1EC:        A9 60         LDA #$60                  ;
CODE_04E1EE:        38            SEC                       ;
CODE_04E1EF:        E5 00         SBC $00                   ;
CODE_04E1F1:        8D 01 08      STA $0801                 ;
CODE_04E1F4:        AD 89 0F      LDA $0F89                 ;
CODE_04E1F7:        4A            LSR A                     ;
CODE_04E1F8:        4A            LSR A                     ;
CODE_04E1F9:        4A            LSR A                     ;
CODE_04E1FA:        4A            LSR A                     ;
CODE_04E1FB:        4A            LSR A                     ;
CODE_04E1FC:        29 03         AND #$03                  ;
CODE_04E1FE:        AA            TAX                       ;
CODE_04E1FF:        BF 55 E2 04   LDA $04E255,x             ;
CODE_04E203:        8D 02 08      STA $0802                 ;
CODE_04E206:        A9 26         LDA #$26                  ;
CODE_04E208:        8D 03 08      STA $0803                 ;
CODE_04E20B:        A9 00         LDA #$00                  ;
CODE_04E20D:        8D 00 0C      STA $0C00                 ;
CODE_04E210:        EE 89 0F      INC $0F89                 ;
CODE_04E213:        E0 03         CPX #$03                  ;
CODE_04E215:        D0 03         BNE CODE_04E21A           ;
CODE_04E217:        9C 89 0F      STZ $0F89                 ;
CODE_04E21A:        E2 10         SEP #$10                  ;
CODE_04E21C:        20 21 E2      JSR CODE_04E221           ;
CODE_04E21F:        AB            PLB                       ;
CODE_04E220:        6B            RTL                       ;

CODE_04E221:        AD 53 07      LDA $0753                 ;
CODE_04E224:        F0 2E         BEQ CODE_04E254           ;
CODE_04E226:        AD 06 08      LDA $0806                 ;
CODE_04E229:        C9 EE         CMP #$EE                  ;
CODE_04E22B:        D0 27         BNE CODE_04E254           ;
CODE_04E22D:        AD 04 08      LDA $0804                 ;
CODE_04E230:        3A            DEC A                     ;
CODE_04E231:        3A            DEC A                     ;
CODE_04E232:        8D 04 08      STA $0804                 ;
CODE_04E235:        8D 08 08      STA $0808                 ;
CODE_04E238:        A9 82         LDA #$82                  ;
CODE_04E23A:        8D 06 08      STA $0806                 ;
CODE_04E23D:        1A            INC A                     ;
CODE_04E23E:        8D 0A 08      STA $080A                 ;
CODE_04E241:        AD 04 08      LDA $0804                 ;
CODE_04E244:        18            CLC                       ;
CODE_04E245:        69 08         ADC #$08                  ;
CODE_04E247:        8D 08 08      STA $0808                 ;
CODE_04E24A:        A9 85         LDA #$85                  ;
CODE_04E24C:        8D 0E 08      STA $080E                 ;
CODE_04E24F:        A9 89         LDA #$89                  ;
CODE_04E251:        8D 12 08      STA $0812                 ;
CODE_04E254:        60            RTS                       ;

DATA_04E255:        db $5F,$5E,$5D,$5C

DATA_04E259:        db $00,$02,$00,$FE

DATA_04E25D:        db $50,$30,$08,$08,$20,$20,$08,$08
                    db $FF

DATA_04E266:        db $50,$30,$08,$08,$20,$20,$08,$08
                    db $0C,$08,$08,$0C,$08,$08,$0C,$FF

DATA_04E276:        db $60,$08,$08,$10,$14,$10,$14,$10
                    db $14,$FF

DATA_04E280:        dw $0000,$008A,$011C,$01AE
                    dw $0244,$02D2,$0360,$045F
                    dw $055E,$055E,$055E,$055E
                    dw $055E,$055E,$055E,$055E

DATA_04E2A0:        dw $06BE,$0789,$07CE,$06FF
                    dw $0744,$06FF,$0744,$06FF
                    dw $0744,$06FF

DATA_04E2B4:        dw $0041,$00CB,$015D,$01F3
                    dw $0289,$0317,$03A5,$04A4
                    dw $05A3

DATA_04E2C6:        dw $0041,$00CB,$015D,$01F3
                    dw $0289,$0317,$03F6,$04F5
                    dw $05F4,$03F6,$04F5,$05F4
                    dw $03F6,$04F5,$05F4,$065D

DATA_04E2E6:        dw $0813,$091E,$0977,$086C
                    dw $08C5,$086C,$08C5,$086C
                    dw $08C5,$086C
                                                       ;Tilemap for Mario and Princess image frames
DATA_04E2FA:        db $E8,$EC,$A0,$06,$E8,$FC,$A2,$06 ;These tables are for the Princess kiss Mario-
                    db $E8,$0C,$A4,$06,$F8,$EC,$C0,$06 ; Sequence. This is table 0, next one is 1 etc
                    db $F8,$FC,$C2,$06,$F8,$0C,$C4,$06 ;The even-numbered tables are for the Princess
                    db $08,$EC,$E0,$06,$08,$FC,$E2,$06 ;The odd-numbered tables are for Mario/Luigi.
                    db $08,$0C,$E4,$06,$10,$CC,$8D,$06 ;The format of these bytes are the following:
                    db $10,$D4,$8E,$06,$10,$E4,$AC,$06 ;$XX,$YY,$TT,$PP
                    db $10,$F4,$AE,$06,$18,$F4,$CC,$06 ;XX = Xpos, YY = Ypos, TT = Tile, PP = Priority
                    db $18,$04,$CE,$06,$18,$14,$EC,$06 ;basically the OAM format.
                    db $FF

DATA_04E33B:        db $D8,$D0,$0A,$06,$D8,$E0,$08,$06 ;These huge tables took ages to sort out...
                    db $E8,$C0,$28,$06,$E8,$D0,$2A,$06
                    db $E8,$E0,$2A,$46,$E8,$F0,$28,$46
                    db $F8,$C0,$48,$06,$F8,$D0,$4A,$06
                    db $F8,$E0,$4A,$46,$F8,$F0,$48,$46
                    db $08,$C0,$68,$06,$08,$D0,$6A,$06
                    db $08,$E0,$6A,$46,$08,$F0,$68,$46
                    db $18,$C0,$6E,$46,$18,$D0,$6C,$46
                    db $18,$E0,$6C,$06,$18,$F0,$6E,$06
                    db $FF

DATA_04E384:        db $E8,$EC,$A0,$06,$E8,$FC,$A2,$06
                    db $E8,$0C,$A4,$06,$F8,$EC,$C0,$06
                    db $F8,$FC,$C2,$06,$F8,$0C,$C4,$06
                    db $08,$EC,$E0,$06,$08,$FC,$E2,$06
                    db $08,$0C,$E4,$06,$10,$CC,$8D,$06
                    db $10,$D4,$8E,$06,$10,$E4,$AC,$06
                    db $10,$F4,$AE,$06,$18,$F4,$CC,$06
                    db $18,$04,$CE,$06,$18,$14,$EC,$06
                    db $FF

DATA_04E3C5:        db $F0,$D0,$14,$06,$F0,$E0,$16,$06
                    db $D8,$D0,$0A,$06,$D8,$E0,$08,$06
                    db $E8,$C0,$28,$06,$E8,$D0,$2A,$06
                    db $E8,$E0,$2A,$46,$E8,$F0,$28,$46
                    db $F8,$C0,$48,$06,$F8,$D0,$4A,$06
                    db $F8,$E0,$4A,$46,$F8,$F0,$48,$46
                    db $08,$C0,$68,$06,$08,$D0,$6A,$06
                    db $08,$E0,$6A,$46,$08,$F0,$68,$46
                    db $18,$C0,$6E,$46,$18,$D0,$6C,$46
                    db $18,$E0,$6C,$06,$18,$F0,$6E,$06
                    db $FF

DATA_04E416:        db $E8,$EB,$A0,$06,$E8,$FB,$A2,$06
                    db $E8,$0B,$A4,$06,$F8,$EB,$C0,$06
                    db $F8,$FB,$C2,$06,$F8,$0B,$C4,$06
                    db $08,$EB,$E0,$06,$08,$FB,$E2,$06
                    db $08,$0B,$E4,$06,$10,$CB,$8D,$06
                    db $10,$D3,$8E,$06,$10,$E3,$AC,$06
                    db $10,$F3,$AE,$06,$18,$F3,$CC,$06
                    db $18,$03,$CE,$06,$18,$13,$EC,$06
                    db $FF

DATA_04E457:        db $F0,$D0,$14,$06,$F0,$E0,$16,$06
                    db $D8,$D0,$0A,$06,$D8,$E0,$08,$06
                    db $E8,$C0,$28,$06,$E8,$D0,$2A,$06
                    db $E8,$E0,$2A,$46,$E8,$F0,$28,$46
                    db $F8,$C0,$48,$06,$F8,$D0,$4A,$06
                    db $F8,$E0,$4A,$46,$F8,$F0,$48,$46
                    db $08,$C0,$68,$06,$08,$D0,$6A,$06
                    db $08,$E0,$6A,$46,$08,$F0,$68,$46
                    db $18,$C0,$6E,$46,$18,$D0,$6C,$46
                    db $18,$E0,$6C,$06,$18,$F0,$6E,$06
                    db $FF

DATA_04E4A8:        db $00,$D5,$EE,$06,$00,$D5,$EE,$06
                    db $10,$DB,$88,$06,$10,$E2,$89,$06
                    db $E8,$EA,$A0,$06,$E8,$FA,$A2,$06
                    db $E8,$0A,$A4,$06,$F8,$EA,$C0,$06
                    db $F8,$FA,$C2,$06,$F8,$0A,$C4,$06
                    db $08,$EA,$E0,$06,$08,$FA,$E2,$06
                    db $08,$0A,$E4,$06,$10,$F2,$8B,$06
                    db $18,$F2,$CC,$06,$18,$02,$CE,$06
                    db $18,$12,$EC,$06,$FF

DATA_04E4ED:        db $F0,$D0,$14,$06,$F0,$E0,$16,$06
                    db $D8,$D0,$0A,$06,$D8,$E0,$08,$06
                    db $E8,$C0,$28,$06,$E8,$D0,$2A,$06
                    db $E8,$E0,$2A,$46,$E8,$F0,$28,$46
                    db $F8,$C0,$48,$06,$F8,$D0,$4A,$06
                    db $F8,$E0,$4A,$46,$F8,$F0,$48,$46
                    db $08,$C0,$68,$06,$08,$D0,$6A,$06
                    db $08,$E0,$6A,$46,$08,$F0,$68,$46
                    db $18,$C0,$6E,$46,$18,$D0,$6C,$46
                    db $18,$E0,$6C,$06,$18,$F0,$6E,$06
                    db $FF

DATA_04E53D:        db $00,$D4,$EE,$06,$00,$D4,$EE,$06
                    db $10,$DA,$88,$06,$10,$E1,$89,$06
                    db $E8,$E9,$A0,$06,$E8,$F9,$A2,$06
                    db $E8,$09,$A4,$06,$F8,$E9,$C0,$06
                    db $F8,$F9,$C2,$06,$F8,$09,$C4,$06
                    db $08,$E9,$E0,$06,$08,$F9,$E2,$06
                    db $08,$09,$E4,$06,$10,$F1,$8B,$06
                    db $18,$F1,$CC,$06,$18,$01,$CE,$06
                    db $18,$11,$EC,$06,$FF

DATA_04E583:        db $D8,$D0,$0A,$06,$D8,$E0,$08,$06
                    db $E8,$C0,$28,$06,$E8,$D0,$2A,$06
                    db $E8,$E0,$2A,$46,$E8,$F0,$28,$46
                    db $F8,$C0,$48,$06,$F8,$D0,$4A,$06
                    db $F8,$E0,$4A,$46,$F8,$F0,$48,$46
                    db $08,$C0,$68,$06,$08,$D0,$6A,$06
                    db $08,$E0,$6A,$46,$08,$F0,$68,$46
                    db $18,$C0,$6E,$46,$18,$D0,$6C,$46
                    db $18,$E0,$6C,$06,$18,$F0,$6E,$06
                    db $FF

DATA_04E5CC:        db $00,$D3,$EE,$06,$00,$D3,$EE,$06
                    db $10,$D9,$88,$06,$10,$E0,$89,$06
                    db $E8,$E8,$A6,$06,$E8,$F8,$A8,$06
                    db $E8,$08,$AA,$06,$F8,$E8,$C6,$06
                    db $F8,$F8,$C8,$06,$F8,$08,$CA,$06
                    db $08,$E8,$E6,$06,$08,$F8,$E8,$06
                    db $08,$08,$EA,$06,$10,$F0,$8B,$06
                    db $18,$F0,$CC,$06,$18,$00,$CE,$06
                    db $18,$10,$EC,$06,$FF

DATA_04E611:        db $D8,$D0,$0A,$06,$D8,$E0,$08,$06
                    db $E8,$C0,$28,$06,$E8,$D0,$2A,$06
                    db $E8,$E0,$2A,$46,$E8,$F0,$28,$46
                    db $F8,$C0,$48,$06,$F8,$D0,$4A,$06
                    db $F8,$E0,$4A,$46,$F8,$F0,$48,$46
                    db $08,$C0,$68,$06,$08,$D0,$6A,$06
                    db $08,$E0,$6A,$46,$08,$F0,$68,$46
                    db $18,$C0,$6E,$46,$18,$D0,$6C,$46
                    db $18,$E0,$6C,$06,$18,$F0,$6E,$06
                    db $FF

DATA_04E65A:        db $00,$D3,$EE,$06,$00,$D3,$EE,$06
                    db $10,$D9,$88,$06,$10,$E0,$89,$06
                    db $E8,$E8,$A6,$06,$E8,$F8,$A8,$06
                    db $E8,$08,$AA,$06,$F8,$E8,$C6,$06
                    db $F8,$F8,$C8,$06,$F8,$08,$CA,$06
                    db $08,$E8,$E6,$06,$08,$F8,$E8,$06
                    db $08,$08,$EA,$06,$10,$F0,$8B,$06
                    db $18,$F0,$CC,$06,$18,$00,$CE,$06
                    db $18,$10,$EC,$06,$FF

DATA_04E69F:        db $D8,$D0,$0A,$06,$D8,$E0,$08,$06
                    db $E8,$C0,$28,$06,$E8,$D0,$0E,$06
                    db $E8,$E0,$0E,$46,$00,$D0,$3E,$06
                    db $00,$E0,$3E,$46,$E8,$F0,$28,$46
                    db $F8,$C0,$48,$06,$F8,$D0,$2E,$06
                    db $F8,$E0,$2E,$46,$F8,$F0,$48,$46
                    db $08,$C0,$68,$06,$08,$D0,$6A,$06
                    db $08,$E0,$6A,$46,$08,$F0,$68,$46
                    db $18,$C0,$6E,$46,$18,$D0,$6C,$46
                    db $18,$E0,$6C,$06,$18,$F0,$6E,$06
                    db $FF

DATA_04E6F0:        db $F0,$D0,$42,$06,$F0,$E0,$42,$46
                    db $D8,$D0,$0A,$06,$D8,$E0,$08,$06
                    db $E8,$C0,$28,$06,$E8,$D0,$0C,$06
                    db $E8,$D0,$2A,$06,$E8,$E0,$0C,$46
                    db $E8,$E0,$2A,$46,$E8,$F0,$28,$46
                    db $F8,$C0,$48,$06,$F8,$D0,$2C,$06
                    db $F8,$D0,$4A,$06,$F8,$E0,$2C,$46
                    db $F8,$E0,$4A,$46,$F8,$F0,$48,$46
                    db $00,$D0,$60,$06,$00,$E0,$60,$46
                    db $08,$C0,$68,$06,$08,$D0,$6A,$06
                    db $08,$E0,$6A,$46,$08,$F0,$68,$46
                    db $18,$C0,$6E,$46,$18,$D0,$6C,$46
                    db $18,$E0,$6C,$06,$18,$F0,$6E,$06
                    db $FF

DATA_04E759:        db $00,$D3,$EE,$06,$00,$D3,$EE,$06
                    db $10,$D9,$88,$06,$10,$E0,$89,$06
                    db $E8,$E8,$A6,$06,$E8,$F8,$A8,$06
                    db $E8,$08,$AA,$06,$F8,$E8,$C6,$06
                    db $F8,$F8,$C8,$06,$F8,$08,$CA,$06
                    db $08,$E8,$E6,$06,$08,$F8,$E8,$06
                    db $08,$08,$EA,$06,$10,$F0,$8B,$06
                    db $18,$F0,$CC,$06,$18,$00,$CE,$06
                    db $18,$10,$EC,$06,$FF

DATA_04E79E:        db $D8,$D0,$0A,$06,$D8,$E0,$08,$06
                    db $E8,$C0,$28,$06,$00,$D0,$3C,$06
                    db $00,$E0,$3C,$46,$E8,$D0,$0C,$06
                    db $E8,$E0,$0C,$46,$E8,$F0,$28,$46
                    db $F8,$C0,$48,$06,$F8,$D0,$2C,$06
                    db $F8,$E0,$2C,$46,$F8,$F0,$48,$46
                    db $08,$C0,$68,$06,$08,$D0,$6A,$06
                    db $08,$E0,$6A,$46,$08,$F0,$68,$46
                    db $18,$C0,$6E,$46,$18,$D0,$6C,$46
                    db $18,$E0,$6C,$06,$18,$F0,$6E,$06
                    db $FF

DATA_04E7EF:        db $F0,$D0,$62,$06,$F0,$E0,$62,$46
                    db $D8,$D0,$0A,$06,$D8,$E0,$08,$06
                    db $E8,$C0,$28,$06,$E8,$D0,$0C,$06
                    db $E8,$D0,$2A,$06,$E8,$E0,$0C,$46
                    db $E8,$E0,$2A,$46,$E8,$F0,$28,$46
                    db $F8,$C0,$48,$06,$F8,$D0,$2C,$06
                    db $F8,$D0,$4A,$06,$F8,$E0,$2C,$46
                    db $F8,$E0,$4A,$46,$F8,$F0,$48,$46
                    db $00,$D0,$60,$06,$00,$E0,$60,$46
                    db $08,$C0,$68,$06,$08,$D0,$6A,$06
                    db $08,$E0,$6A,$46,$08,$F0,$68,$46
                    db $18,$C0,$6E,$46,$18,$D0,$6C,$46
                    db $18,$E0,$6C,$06,$18,$F0,$6E,$06
                    db $FF

DATA_04E858:        db $00,$D3,$EE,$06,$00,$D3,$EE,$06
                    db $10,$D9,$88,$06,$10,$E0,$89,$06
                    db $E8,$E8,$A6,$06,$E8,$F8,$A8,$06
                    db $E8,$08,$AA,$06,$F8,$E8,$C6,$06
                    db $F8,$F8,$C8,$06,$F8,$08,$CA,$06
                    db $08,$E8,$E6,$06,$08,$F8,$E8,$06
                    db $08,$08,$EA,$06,$10,$F0,$8B,$06
                    db $18,$F0,$CC,$06,$18,$00,$CE,$06
                    db $18,$10,$EC,$06,$FF

DATA_04E89D:        db $D8,$D0,$0A,$06,$D8,$E0,$08,$06
                    db $E8,$C0,$28,$06,$E8,$D0,$0C,$06
                    db $E8,$E0,$0C,$46,$00,$D0,$3C,$06
                    db $00,$E0,$3C,$46,$E8,$F0,$28,$46
                    db $F8,$C0,$48,$06,$F8,$D0,$2C,$06
                    db $F8,$E0,$2C,$46,$F8,$F0,$48,$46
                    db $08,$C0,$68,$06,$08,$D0,$6A,$06
                    db $08,$E0,$6A,$46,$08,$F0,$68,$46
                    db $18,$C0,$6E,$46,$18,$D0,$6C,$46
                    db $18,$E0,$6C,$06,$18,$F0,$6E,$06
                    db $FF

DATA_04E8EE:        db $F0,$D0,$40,$06,$F0,$E0,$40,$46
                    db $D8,$D0,$0A,$06,$D8,$E0,$08,$06
                    db $E8,$C0,$28,$06,$E8,$D0,$0C,$06
                    db $E8,$D0,$2A,$06,$E8,$E0,$0C,$46
                    db $E8,$E0,$2A,$46,$E8,$F0,$28,$46
                    db $F8,$C0,$48,$06,$F8,$D0,$2C,$06
                    db $F8,$D0,$4A,$06,$F8,$E0,$2C,$46
                    db $F8,$E0,$4A,$46,$F8,$F0,$48,$46
                    db $00,$D0,$60,$06,$00,$E0,$60,$46
                    db $08,$C0,$68,$06,$08,$D0,$6A,$06
                    db $08,$E0,$6A,$46,$08,$F0,$68,$46
                    db $18,$C0,$6E,$46,$18,$D0,$6C,$46
                    db $18,$E0,$6C,$06,$18,$F0,$6E,$06
                    db $FF

DATA_04E957:        db $D8,$D0,$0A,$06,$D8,$E0,$08,$06
                    db $E8,$C0,$28,$06,$E8,$D0,$0C,$06
                    db $E8,$D0,$2A,$06,$E8,$E0,$0C,$46
                    db $E8,$E0,$2A,$46,$E8,$F0,$28,$46
                    db $F8,$C0,$48,$06,$F8,$D0,$2C,$06
                    db $F8,$D0,$4A,$06,$F8,$E0,$2C,$46
                    db $F8,$E0,$4A,$46,$F8,$F0,$48,$46
                    db $00,$D0,$60,$06,$00,$E0,$60,$46
                    db $08,$C0,$68,$06,$08,$D0,$6A,$06
                    db $08,$E0,$6A,$46,$08,$F0,$68,$46
                    db $18,$C0,$6E,$46,$18,$D0,$6C,$46
                    db $18,$E0,$6C,$06,$18,$F0,$6E,$06
                    db $FF

DATA_04E9B8:        db $E8,$EA,$A0,$06,$E8,$FA,$A2,$06
                    db $E8,$0A,$A4,$06,$F8,$EA,$C0,$06
                    db $F8,$FA,$C2,$06,$F8,$0A,$C4,$06
                    db $08,$EA,$E0,$06,$08,$FA,$E2,$06
                    db $08,$0A,$E4,$06,$10,$CA,$8D,$06
                    db $10,$D2,$8E,$06,$10,$E2,$AC,$06
                    db $10,$F2,$AE,$06,$18,$F2,$CC,$06
                    db $18,$02,$CE,$06,$18,$12,$EC,$06
                    db $FF

DATA_04E9F9:        db $00,$D2,$EE,$06,$00,$D2,$EE,$06
                    db $10,$D8,$88,$06,$10,$E0,$89,$06
                    db $E8,$E8,$A6,$06,$E8,$F8,$A8,$06
                    db $E8,$08,$AA,$06,$F8,$E8,$C6,$06
                    db $F8,$F8,$C8,$06,$F8,$08,$CA,$06
                    db $08,$E8,$E6,$06,$08,$F8,$E8,$06
                    db $08,$08,$EA,$06,$10,$F0,$8B,$06
                    db $18,$F0,$CC,$06,$18,$00,$CE,$06
                    db $18,$10,$EC,$06,$FF

DATA_04EA3E:        db $00,$D2,$EE,$06,$00,$D2,$EE,$06
                    db $10,$D8,$88,$06,$10,$E0,$89,$06
                    db $E8,$E8,$A0,$06,$E8,$F8,$A2,$06
                    db $E8,$08,$A4,$06,$F8,$E8,$C0,$06
                    db $F8,$F8,$C2,$06,$F8,$08,$C4,$06
                    db $08,$E8,$E0,$06,$08,$F8,$E2,$06
                    db $08,$08,$E4,$06,$10,$F0,$8B,$06
                    db $18,$F0,$CC,$06,$18,$00,$CE,$06
                    db $18,$10,$EC,$06,$FF

DATA_04EA83:        db $00,$D3,$EE,$06,$00,$D3,$EE,$06
                    db $10,$D9,$88,$06,$10,$E1,$89,$06
                    db $E8,$E9,$A6,$06,$E8,$F9,$A8,$06
                    db $E8,$09,$AA,$06,$F8,$E9,$C6,$06
                    db $F8,$F9,$C8,$06,$F8,$09,$CA,$06
                    db $08,$E9,$E6,$06,$08,$F9,$E8,$06
                    db $08,$09,$EA,$06,$10,$F1,$8B,$06
                    db $18,$F1,$CC,$06,$18,$01,$CE,$06
                    db $18,$11,$EC,$06,$FF

DATA_04EAC8:        db $00,$D2,$EE,$06,$00,$D2,$EE,$06
                    db $10,$D8,$88,$06,$10,$E0,$89,$06
                    db $E8,$E8,$A6,$06,$E8,$F8,$A8,$06
                    db $E8,$08,$AA,$06,$F8,$E8,$C6,$06
                    db $F8,$F8,$C8,$06,$F8,$08,$CA,$06
                    db $08,$E8,$E6,$06,$08,$F8,$E8,$06
                    db $08,$08,$EA,$06,$10,$F0,$8B,$06
                    db $18,$F0,$CC,$06,$18,$00,$CE,$06
                    db $18,$10,$EC,$06,$FF

DATA_04EB0D:        db $D8,$D0,$0A,$06,$D8,$E0,$08,$06
                    db $E8,$C0,$28,$06,$E8,$D0,$0C,$06
                    db $E8,$E0,$34,$06,$E8,$E0,$2A,$46
                    db $E8,$F0,$28,$46,$F0,$E0,$44,$06
                    db $F8,$C0,$48,$06,$F8,$F0,$48,$46
                    db $00,$D0,$3C,$06,$00,$E0,$64,$06
                    db $F8,$D0,$2C,$06,$F8,$E0,$4A,$46
                    db $08,$C0,$68,$06,$08,$D0,$6A,$06
                    db $08,$E0,$6A,$46,$08,$F0,$68,$46
                    db $18,$C0,$6E,$46,$18,$D0,$6C,$46
                    db $18,$E0,$6C,$06,$18,$F0,$6E,$06
                    db $FF

DATA_04EB66:        db $D8,$D0,$0A,$06,$D8,$E0,$08,$06
                    db $F0,$E0,$10,$06,$E8,$D0,$36,$06
                    db $E8,$E0,$36,$46,$E8,$E0,$2A,$46
                    db $E8,$F0,$28,$46,$F0,$D0,$46,$06
                    db $E8,$C0,$28,$06,$F8,$C0,$48,$06
                    db $00,$E0,$12,$06,$F8,$E0,$4A,$46
                    db $F8,$F0,$48,$46,$00,$D0,$66,$06
                    db $08,$C0,$68,$06,$08,$D0,$6A,$06
                    db $08,$E0,$6A,$46,$08,$F0,$68,$46
                    db $18,$C0,$6E,$46,$18,$D0,$6C,$46
                    db $18,$E0,$6C,$06,$18,$F0,$6E,$06
                    db $FF

DATA_04EBBF:        db $D8,$D0,$0A,$06,$D8,$E0,$08,$06
                    db $F0,$E0,$10,$06,$E8,$C0,$28,$06
                    db $E8,$D0,$36,$06,$E8,$E0,$36,$46
                    db $E8,$E0,$2A,$46,$E8,$F0,$28,$46
                    db $F0,$D0,$46,$06,$F8,$C0,$48,$06
                    db $00,$E0,$12,$06,$F8,$E0,$4A,$46
                    db $F8,$F0,$48,$46,$00,$D0,$66,$06
                    db $08,$C0,$68,$06,$08,$D0,$6A,$06
                    db $08,$E0,$6A,$46,$08,$F0,$68,$46
                    db $18,$C0,$6E,$46,$18,$D0,$6C,$46
                    db $18,$E0,$6C,$06,$18,$F0,$6E,$06
                    db $FF

DATA_04EC18:        db $D8,$D0,$0A,$06,$D8,$E0,$08,$06
                    db $E8,$C0,$28,$06,$E8,$D0,$0C,$06
                    db $E8,$E0,$34,$06,$E8,$E0,$2A,$46
                    db $E8,$F0,$28,$46,$F0,$E0,$44,$06
                    db $F8,$C0,$48,$06,$F8,$F0,$48,$46
                    db $00,$D0,$3C,$06,$00,$E0,$64,$06
                    db $F8,$D0,$2C,$06,$F8,$E0,$4A,$46
                    db $08,$C0,$68,$06,$08,$D0,$6A,$06
                    db $08,$E0,$6A,$46,$08,$F0,$68,$46
                    db $18,$C0,$6E,$46,$18,$D0,$6C,$46
                    db $18,$E0,$6C,$06,$18,$F0,$6E,$06
                    db $FF

DATA_04EC71:        db $D8,$D0,$0A,$06,$D8,$E0,$08,$06
                    db $E8,$C0,$28,$06,$E8,$D0,$0C,$06
                    db $E8,$E0,$34,$06,$E8,$E0,$2A,$46
                    db $E8,$F0,$28,$46,$F0,$E0,$44,$06
                    db $F8,$C0,$48,$06,$F8,$F0,$48,$46
                    db $00,$D0,$3C,$06,$00,$E0,$64,$06
                    db $F8,$D0,$2C,$06,$F8,$E0,$4A,$46
                    db $08,$C0,$68,$06,$08,$D0,$6A,$06
                    db $08,$E0,$6A,$46,$08,$F0,$68,$46
                    db $18,$C0,$6E,$46,$18,$D0,$6C,$46
                    db $18,$E0,$6C,$06,$18,$F0,$6E,$06
                    db $FF

CODE_04ECCA:        A9 1E         LDA #$1E                  ;
CODE_04ECCC:        8D 87 02      STA $0287                 ;
CODE_04ECCF:        C2 20         REP #$20                  ;
CODE_04ECD1:        A9 00 08      LDA #$0800                ;
CODE_04ECD4:        8D 88 02      STA $0288                 ;
CODE_04ECD7:        A9 00 78      LDA #$7800                ;
CODE_04ECDA:        8D 8A 02      STA $028A                 ;
CODE_04ECDD:        AD 5F 07      LDA $075F                 ;
CODE_04ECE0:        29 FF 00      AND #$00FF                ;
CODE_04ECE3:        C9 07 00      CMP #$0007                ;
CODE_04ECE6:        D0 05         BNE CODE_04ECED           ;
CODE_04ECE8:        A9 00 D0      LDA #$D000                ;
CODE_04ECEB:        80 03         BRA CODE_04ECF0           ;

CODE_04ECED:        A9 00 C0      LDA #$C000                ;
CODE_04ECF0:        8D 85 02      STA $0285                 ;
CODE_04ECF3:        E2 20         SEP #$20                  ;
CODE_04ECF5:        9C 7D 0F      STZ $0F7D                 ;
CODE_04ECF8:        9C 7E 0F      STZ $0F7E                 ;
CODE_04ECFB:        9C 7F 0F      STZ $0F7F                 ;
CODE_04ECFE:        9C 9C 0B      STZ $0B9C                 ;
CODE_04ED01:        A9 02         LDA #$02                  ;
CODE_04ED03:        8D 76 0B      STA $0B76                 ;
CODE_04ED06:        6B            RTL                       ;

CODE_04ED07:        DA            PHX                       ;
CODE_04ED08:        A9 1E         LDA #$1E                  ;
CODE_04ED0A:        8D 87 02      STA $0287                 ;
CODE_04ED0D:        C2 20         REP #$20                  ;
CODE_04ED0F:        A9 00 08      LDA #$0800                ;
CODE_04ED12:        8D 88 02      STA $0288                 ;
CODE_04ED15:        A9 00 7C      LDA #$7C00                ;
CODE_04ED18:        8D 8A 02      STA $028A                 ;
CODE_04ED1B:        AD 5F 07      LDA $075F                 ;
CODE_04ED1E:        29 FF 00      AND #$00FF                ;
CODE_04ED21:        0A            ASL A                     ;
CODE_04ED22:        AA            TAX                       ;
CODE_04ED23:        BF 5A ED 04   LDA $04ED5A,x             ;
CODE_04ED27:        8D 85 02      STA $0285                 ;
CODE_04ED2A:        E2 20         SEP #$20                  ;
CODE_04ED2C:        FA            PLX                       ;
CODE_04ED2D:        6B            RTL                       ;

CODE_04ED2E:        A9 80         LDA #$80                  ;
CODE_04ED30:        8D 15 21      STA $2115                 ;
CODE_04ED33:        C2 20         REP #$20                  ;
CODE_04ED35:        A9 00 60      LDA #$6000                ;
CODE_04ED38:        8D 16 21      STA $2116                 ;
CODE_04ED3B:        A9 01 18      LDA #$1801                ;
CODE_04ED3E:        8D 00 43      STA $4300                 ;
CODE_04ED41:        A9 00 80      LDA #$8000                ;
CODE_04ED44:        8D 02 43      STA $4302                 ;
CODE_04ED47:        A2 07         LDX #$07                  ;
CODE_04ED49:        8E 04 43      STX $4304                 ;
CODE_04ED4C:        A9 00 40      LDA #$4000                ;
CODE_04ED4F:        8D 05 43      STA $4305                 ;
CODE_04ED52:        A2 01         LDX #$01                  ;
CODE_04ED54:        8E 0B 42      STX $420B                 ;
CODE_04ED57:        E2 20         SEP #$20                  ;
CODE_04ED59:        6B            RTL                       ;

DATA_04ED5A:        dw $C800,$C800,$C800,$C800
                    dw $E800,$E000,$E000,$D000
                    dw $C800,$E800,$E000,$E000
                    dw $D000,$D000,$D000,$D000

CODE_04ED7A:        AD 7E 0F      LDA $0F7E                 ;
CODE_04ED7D:        F0 03         BEQ CODE_04ED82           ;
CODE_04ED7F:        4C 26 EE      JMP CODE_04EE26           ;

CODE_04ED82:        A5 09         LDA $09                   ;
CODE_04ED84:        29 07         AND #$07                  ;
CODE_04ED86:        F0 05         BEQ CODE_04ED8D           ;
CODE_04ED88:        AD 7D 0F      LDA $0F7D                 ;
CODE_04ED8B:        80 22         BRA CODE_04EDAF           ;

CODE_04ED8D:        EE 7D 0F      INC $0F7D                 ;
CODE_04ED90:        AD 7D 0F      LDA $0F7D                 ;
CODE_04ED93:        C9 03         CMP #$03                  ;
CODE_04ED95:        90 18         BCC CODE_04EDAF           ;
CODE_04ED97:        AD B9 07      LDA $07B9                 ;
CODE_04ED9A:        4D BA 07      EOR $07BA                 ;
CODE_04ED9D:        29 01         AND #$01                  ;
CODE_04ED9F:        D0 09         BNE CODE_04EDAA           ;
CODE_04EDA1:        A9 03         LDA #$03                  ;
CODE_04EDA3:        8D 7D 0F      STA $0F7D                 ;
CODE_04EDA6:        A9 01         LDA #$01                  ;
CODE_04EDA8:        80 05         BRA CODE_04EDAF           ;

CODE_04EDAA:        A9 00         LDA #$00                  ;
CODE_04EDAC:        8D 7D 0F      STA $0F7D                 ;
CODE_04EDAF:        85 00         STA $00                   ;
CODE_04EDB1:        A5 79         LDA $79                   ;
CODE_04EDB3:        EB            XBA                       ;
CODE_04EDB4:        AD 1A 02      LDA $021A                 ;
CODE_04EDB7:        A0 00         LDY #$00                  ;
CODE_04EDB9:        20 FD FC      JSR CODE_04FCFD           ;
CODE_04EDBC:        A5 79         LDA $79                   ;
CODE_04EDBE:        EB            XBA                       ;
CODE_04EDBF:        AD 1A 02      LDA $021A                 ;
CODE_04EDC2:        C2 20         REP #$20                  ;
CODE_04EDC4:        18            CLC                       ;
CODE_04EDC5:        69 08 00      ADC #$0008                ;
CODE_04EDC8:        E2 20         SEP #$20                  ;
CODE_04EDCA:        A0 04         LDY #$04                  ;
CODE_04EDCC:        20 FD FC      JSR CODE_04FCFD           ;
CODE_04EDCF:        A5 00         LDA $00                   ;
CODE_04EDD1:        C9 02         CMP #$02                  ;
CODE_04EDD3:        F0 2D         BEQ CODE_04EE02           ;
CODE_04EDD5:        C9 00         CMP #$00                  ;
CODE_04EDD7:        D0 04         BNE CODE_04EDDD           ;
CODE_04EDD9:        A9 83         LDA #$83                  ;
CODE_04EDDB:        80 02         BRA CODE_04EDDF           ;

CODE_04EDDD:        A9 80         LDA #$80                  ;
CODE_04EDDF:        8D 02 09      STA $0902                 ;
CODE_04EDE2:        1A            INC A                     ;
CODE_04EDE3:        8D 06 09      STA $0906                 ;
CODE_04EDE6:        18            CLC                       ;
CODE_04EDE7:        69 1F         ADC #$1F                  ;
CODE_04EDE9:        8D 0A 09      STA $090A                 ;
CODE_04EDEC:        1A            INC A                     ;
CODE_04EDED:        8D 0E 09      STA $090E                 ;
CODE_04EDF0:        A9 B0         LDA #$B0                  ;
CODE_04EDF2:        8D 01 09      STA $0901                 ;
CODE_04EDF5:        8D 05 09      STA $0905                 ;
CODE_04EDF8:        A9 C0         LDA #$C0                  ;
CODE_04EDFA:        8D 09 09      STA $0909                 ;
CODE_04EDFD:        8D 0D 09      STA $090D                 ;
CODE_04EE00:        80 23         BRA CODE_04EE25           ;

CODE_04EE02:        A9 86         LDA #$86                  ;
CODE_04EE04:        8D 02 09      STA $0902                 ;
CODE_04EE07:        1A            INC A                     ;
CODE_04EE08:        8D 06 09      STA $0906                 ;
CODE_04EE0B:        18            CLC                       ;
CODE_04EE0C:        69 0F         ADC #$0F                  ;
CODE_04EE0E:        8D 0A 09      STA $090A                 ;
CODE_04EE11:        1A            INC A                     ;
CODE_04EE12:        8D 0E 09      STA $090E                 ;
CODE_04EE15:        A9 B8         LDA #$B8                  ;
CODE_04EE17:        8D 01 09      STA $0901                 ;
CODE_04EE1A:        8D 05 09      STA $0905                 ;
CODE_04EE1D:        A9 C0         LDA #$C0                  ;
CODE_04EE1F:        8D 09 09      STA $0909                 ;
CODE_04EE22:        8D 0D 09      STA $090D                 ;
CODE_04EE25:        6B            RTL                       ;

CODE_04EE26:        8B            PHB                       ;
CODE_04EE27:        4B            PHK                       ;
CODE_04EE28:        AB            PLB                       ;
CODE_04EE29:        DA            PHX                       ;
CODE_04EE2A:        5A            PHY                       ;
CODE_04EE2B:        AD 5F 07      LDA $075F                 ;
CODE_04EE2E:        0A            ASL A                     ;
CODE_04EE2F:        AA            TAX                       ;
CODE_04EE30:        AD 9C 0B      LDA $0B9C                 ;
CODE_04EE33:        D0 03         BNE CODE_04EE38           ;
CODE_04EE35:        20 A4 FB      JSR CODE_04FBA4           ;
CODE_04EE38:        BD 45 EE      LDA $EE45,x               ;
CODE_04EE3B:        85 00         STA $00                   ;
CODE_04EE3D:        BD 46 EE      LDA $EE46,x               ;
CODE_04EE40:        85 01         STA $01                   ;
CODE_04EE42:        6C 00 00      JMP ($0000)               ;

PNTR_04EE45:        dw CODE_04EE61
                    dw CODE_04EEE4
                    dw CODE_04EF85
                    dw CODE_04F15A
                    dw CODE_04F3A1
                    dw CODE_04F5FA
                    dw CODE_04F896
                    dw CODE_04EE61
                    dw CODE_04EE61
                    dw CODE_04F3A1
                    dw CODE_04F5FA
                    dw CODE_04F896
                    dw CODE_04EE61

DATA_04EE5F:        db $90,$00

CODE_04EE61:        20 7B FA      JSR CODE_04FA7B           ;
CODE_04EE64:        AD 7F 0F      LDA $0F7F                 ;
CODE_04EE67:        D0 03         BNE CODE_04EE6C           ;
CODE_04EE69:        4C D5 F9      JMP CODE_04F9D5           ;

CODE_04EE6C:        C9 03         CMP #$03                  ;
CODE_04EE6E:        D0 4B         BNE CODE_04EEBB           ;
CODE_04EE70:        AD 9F 0B      LDA $0B9F                 ;
CODE_04EE73:        D0 46         BNE CODE_04EEBB           ;
CODE_04EE75:        20 66 FD      JSR CODE_04FD66           ;
CODE_04EE78:        A9 20         LDA #$20                  ;
CODE_04EE7A:        85 00         STA $00                   ;
CODE_04EE7C:        A9 04         LDA #$04                  ;
CODE_04EE7E:        85 02         STA $02                   ;
CODE_04EE80:        A2 01         LDX #$01                  ;
CODE_04EE82:        A9 00         LDA #$00                  ;
CODE_04EE84:        22 87 C1 03   JSL CODE_03C187           ;
CODE_04EE88:        AD 38 02      LDA $0238                 ;
CODE_04EE8B:        C9 B0         CMP #$B0                  ;
CODE_04EE8D:        B0 08         BCS CODE_04EE97           ;
CODE_04EE8F:        A9 01         LDA #$01                  ;
CODE_04EE91:        8D 9D 0B      STA $0B9D                 ;
CODE_04EE94:        AD 38 02      LDA $0238                 ;
CODE_04EE97:        C9 B8         CMP #$B8                  ;
CODE_04EE99:        90 20         BCC CODE_04EEBB           ;
CODE_04EE9B:        A9 B8         LDA #$B8                  ;
CODE_04EE9D:        8D 38 02      STA $0238                 ;
CODE_04EEA0:        A9 FE         LDA #$FE                  ;
CODE_04EEA2:        8D A1 00      STA $00A1                 ;
CODE_04EEA5:        9C 3D 04      STZ $043D                 ;
CODE_04EEA8:        9C 1D 04      STZ $041D                 ;
CODE_04EEAB:        A9 00         LDA #$00                  ;
CODE_04EEAD:        8D 9E 0B      STA $0B9E                 ;
CODE_04EEB0:        A9 18         LDA #$18                  ;
CODE_04EEB2:        8D 9F 0B      STA $0B9F                 ;
CODE_04EEB5:        9C A4 0B      STZ $0BA4                 ;
CODE_04EEB8:        20 29 FD      JSR CODE_04FD29           ;
CODE_04EEBB:        AD 9F 0B      LDA $0B9F                 ;
CODE_04EEBE:        D0 07         BNE CODE_04EEC7           ;
CODE_04EEC0:        A9 01         LDA #$01                  ;
CODE_04EEC2:        8D 9E 0B      STA $0B9E                 ;
CODE_04EEC5:        80 03         BRA CODE_04EECA           ;

CODE_04EEC7:        CE 9F 0B      DEC $0B9F                 ;
CODE_04EECA:        AD AE 03      LDA $03AE                 ;
CODE_04EECD:        85 00         STA $00                   ;
CODE_04EECF:        AD 38 02      LDA $0238                 ;
CODE_04EED2:        85 01         STA $01                   ;
CODE_04EED4:        AC 9D 0B      LDY $0B9D                 ;
CODE_04EED7:        B9 5F EE      LDA $EE5F,y               ;
CODE_04EEDA:        A8            TAY                       ;
CODE_04EEDB:        AD 9E 0B      LDA $0B9E                 ;
CODE_04EEDE:        20 FC F9      JSR CODE_04F9FC           ;
CODE_04EEE1:        4C D5 F9      JMP CODE_04F9D5           ;

CODE_04EEE4:        20 7B FA      JSR CODE_04FA7B           ;
CODE_04EEE7:        AD 7F 0F      LDA $0F7F                 ;
CODE_04EEEA:        D0 03         BNE CODE_04EEEF           ;
CODE_04EEEC:        4C D5 F9      JMP CODE_04F9D5           ;

CODE_04EEEF:        C9 03         CMP #$03                  ;
CODE_04EEF1:        D0 5C         BNE CODE_04EF4F           ;
CODE_04EEF3:        AD 9F 0B      LDA $0B9F                 ;
CODE_04EEF6:        D0 54         BNE CODE_04EF4C           ;
CODE_04EEF8:        AD 9C 0B      LDA $0B9C                 ;
CODE_04EEFB:        C9 02         CMP #$02                  ;
CODE_04EEFD:        D0 05         BNE CODE_04EF04           ;
CODE_04EEFF:        8D 9E 0B      STA $0B9E                 ;
CODE_04EF02:        80 4B         BRA CODE_04EF4F           ;

CODE_04EF04:        20 66 FD      JSR CODE_04FD66           ;
CODE_04EF07:        A9 01         LDA #$01                  ;
CODE_04EF09:        8D 9E 0B      STA $0B9E                 ;
CODE_04EF0C:        A9 20         LDA #$20                  ;
CODE_04EF0E:        85 00         STA $00                   ;
CODE_04EF10:        A9 04         LDA #$04                  ;
CODE_04EF12:        85 02         STA $02                   ;
CODE_04EF14:        A2 01         LDX #$01                  ;
CODE_04EF16:        A9 00         LDA #$00                  ;
CODE_04EF18:        22 87 C1 03   JSL CODE_03C187           ;
CODE_04EF1C:        AD 38 02      LDA $0238                 ;
CODE_04EF1F:        C9 B0         CMP #$B0                  ;
CODE_04EF21:        B0 08         BCS CODE_04EF2B           ;
CODE_04EF23:        A9 01         LDA #$01                  ;
CODE_04EF25:        8D 9D 0B      STA $0B9D                 ;
CODE_04EF28:        AD 38 02      LDA $0238                 ;
CODE_04EF2B:        C9 B8         CMP #$B8                  ;
CODE_04EF2D:        90 20         BCC CODE_04EF4F           ;
CODE_04EF2F:        A9 B8         LDA #$B8                  ;
CODE_04EF31:        8D 38 02      STA $0238                 ;
CODE_04EF34:        9C A1 00      STZ $00A1                 ;
CODE_04EF37:        9C 3D 04      STZ $043D                 ;
CODE_04EF3A:        9C 1D 04      STZ $041D                 ;
CODE_04EF3D:        A9 28         LDA #$28                  ;
CODE_04EF3F:        8D 9F 0B      STA $0B9F                 ;
CODE_04EF42:        A9 02         LDA #$02                  ;
CODE_04EF44:        8D 9C 0B      STA $0B9C                 ;
CODE_04EF47:        A9 00         LDA #$00                  ;
CODE_04EF49:        8D 9E 0B      STA $0B9E                 ;
CODE_04EF4C:        CE 9F 0B      DEC $0B9F                 ;
CODE_04EF4F:        AD AE 03      LDA $03AE                 ;
CODE_04EF52:        85 00         STA $00                   ;
CODE_04EF54:        AD 38 02      LDA $0238                 ;
CODE_04EF57:        85 01         STA $01                   ;
CODE_04EF59:        AC 9D 0B      LDY $0B9D                 ;
CODE_04EF5C:        B9 5F EE      LDA $EE5F,y               ;
CODE_04EF5F:        A8            TAY                       ;
CODE_04EF60:        AD 9E 0B      LDA $0B9E                 ;
CODE_04EF63:        20 FC F9      JSR CODE_04F9FC           ;
CODE_04EF66:        98            TYA                       ;
CODE_04EF67:        18            CLC                       ;
CODE_04EF68:        69 10         ADC #$10                  ;
CODE_04EF6A:        A8            TAY                       ;
CODE_04EF6B:        AD AE 03      LDA $03AE                 ;
CODE_04EF6E:        18            CLC                       ;
CODE_04EF6F:        69 10         ADC #$10                  ;
CODE_04EF71:        85 00         STA $00                   ;
CODE_04EF73:        AD 9E 0B      LDA $0B9E                 ;
CODE_04EF76:        C9 02         CMP #$02                  ;
CODE_04EF78:        D0 05         BNE CODE_04EF7F           ;
CODE_04EF7A:        20 29 FD      JSR CODE_04FD29           ;
CODE_04EF7D:        A9 03         LDA #$03                  ;
CODE_04EF7F:        20 FC F9      JSR CODE_04F9FC           ;
CODE_04EF82:        4C D5 F9      JMP CODE_04F9D5           ;

CODE_04EF85:        20 7B FA      JSR CODE_04FA7B           ;
CODE_04EF88:        AD 7F 0F      LDA $0F7F                 ;
CODE_04EF8B:        D0 03         BNE CODE_04EF90           ;
CODE_04EF8D:        4C D5 F9      JMP CODE_04F9D5           ;

CODE_04EF90:        C9 03         CMP #$03                  ;
CODE_04EF92:        F0 03         BEQ CODE_04EF97           ;
CODE_04EF94:        4C 17 F0      JMP CODE_04F017           ;

CODE_04EF97:        AD A0 0B      LDA $0BA0                 ;
CODE_04EF9A:        C9 28         CMP #$28                  ;
CODE_04EF9C:        90 76         BCC CODE_04F014           ;
CODE_04EF9E:        C9 50         CMP #$50                  ;
CODE_04EFA0:        90 5B         BCC CODE_04EFFD           ;
CODE_04EFA2:        C9 58         CMP #$58                  ;
CODE_04EFA4:        90 51         BCC CODE_04EFF7           ;
CODE_04EFA6:        20 66 FD      JSR CODE_04FD66           ;
CODE_04EFA9:        A9 20         LDA #$20                  ;
CODE_04EFAB:        85 00         STA $00                   ;
CODE_04EFAD:        A9 04         LDA #$04                  ;
CODE_04EFAF:        85 02         STA $02                   ;
CODE_04EFB1:        A2 01         LDX #$01                  ;
CODE_04EFB3:        A9 00         LDA #$00                  ;
CODE_04EFB5:        22 87 C1 03   JSL CODE_03C187           ;
CODE_04EFB9:        A9 01         LDA #$01                  ;
CODE_04EFBB:        8D 9E 0B      STA $0B9E                 ;
CODE_04EFBE:        AD 38 02      LDA $0238                 ;
CODE_04EFC1:        C9 B0         CMP #$B0                  ;
CODE_04EFC3:        B0 07         BCS CODE_04EFCC           ;
CODE_04EFC5:        A9 01         LDA #$01                  ;
CODE_04EFC7:        8D 9D 0B      STA $0B9D                 ;
CODE_04EFCA:        80 1D         BRA CODE_04EFE9           ;

CODE_04EFCC:        C9 B8         CMP #$B8                  ;
CODE_04EFCE:        90 19         BCC CODE_04EFE9           ;
CODE_04EFD0:        9C A1 00      STZ $00A1                 ;
CODE_04EFD3:        9C 3D 04      STZ $043D                 ;
CODE_04EFD6:        9C 1D 04      STZ $041D                 ;
CODE_04EFD9:        A9 B8         LDA #$B8                  ;
CODE_04EFDB:        8D 38 02      STA $0238                 ;
CODE_04EFDE:        9C 9E 0B      STZ $0B9E                 ;
CODE_04EFE1:        A9 01         LDA #$01                  ;
CODE_04EFE3:        8D 9F 0B      STA $0B9F                 ;
CODE_04EFE6:        20 29 FD      JSR CODE_04FD29           ;
CODE_04EFE9:        AD 9F 0B      LDA $0B9F                 ;
CODE_04EFEC:        D0 09         BNE CODE_04EFF7           ;
CODE_04EFEE:        A5 09         LDA $09                   ;
CODE_04EFF0:        29 01         AND #$01                  ;
CODE_04EFF2:        D0 03         BNE CODE_04EFF7           ;
CODE_04EFF4:        EE 1D 02      INC $021D                 ;
CODE_04EFF7:        20 31 F0      JSR CODE_04F031           ;
CODE_04EFFA:        4C D5 F9      JMP CODE_04F9D5           ;

CODE_04EFFD:        A0 A0         LDY #$A0                  ;
CODE_04EFFF:        C9 2C         CMP #$2C                  ;
CODE_04F001:        90 0E         BCC CODE_04F011           ;
CODE_04F003:        C9 30         CMP #$30                  ;
CODE_04F005:        90 05         BCC CODE_04F00C           ;
CODE_04F007:        20 91 F0      JSR CODE_04F091           ;
CODE_04F00A:        80 08         BRA CODE_04F014           ;

CODE_04F00C:        20 ED F0      JSR CODE_04F0ED           ;
CODE_04F00F:        80 03         BRA CODE_04F014           ;

CODE_04F011:        20 24 F1      JSR CODE_04F124           ;
CODE_04F014:        EE A0 0B      INC $0BA0                 ;
CODE_04F017:        AD AE 03      LDA $03AE                 ;
CODE_04F01A:        85 00         STA $00                   ;
CODE_04F01C:        AD 38 02      LDA $0238                 ;
CODE_04F01F:        85 01         STA $01                   ;
CODE_04F021:        AC 9D 0B      LDY $0B9D                 ;
CODE_04F024:        B9 5F EE      LDA $EE5F,y               ;
CODE_04F027:        A8            TAY                       ;
CODE_04F028:        AD 9E 0B      LDA $0B9E                 ;
CODE_04F02B:        20 FC F9      JSR CODE_04F9FC           ;
CODE_04F02E:        4C D5 F9      JMP CODE_04F9D5           ;

CODE_04F031:        AD AE 03      LDA $03AE                 ;
CODE_04F034:        85 00         STA $00                   ;
CODE_04F036:        AD 38 02      LDA $0238                 ;
CODE_04F039:        85 01         STA $01                   ;
CODE_04F03B:        AC 9D 0B      LDY $0B9D                 ;
CODE_04F03E:        B9 5F EE      LDA $EE5F,y               ;
CODE_04F041:        A8            TAY                       ;
CODE_04F042:        AD 9E 0B      LDA $0B9E                 ;
CODE_04F045:        20 FC F9      JSR CODE_04F9FC           ;
CODE_04F048:        98            TYA                       ;
CODE_04F049:        18            CLC                       ;
CODE_04F04A:        69 10         ADC #$10                  ;
CODE_04F04C:        A8            TAY                       ;
CODE_04F04D:        AD AE 03      LDA $03AE                 ;
CODE_04F050:        38            SEC                       ;
CODE_04F051:        ED 1D 02      SBC $021D                 ;
CODE_04F054:        38            SEC                       ;
CODE_04F055:        E9 07         SBC #$07                  ;
CODE_04F057:        85 00         STA $00                   ;
CODE_04F059:        AD 9F 0B      LDA $0B9F                 ;
CODE_04F05C:        3A            DEC A                     ;
CODE_04F05D:        F0 06         BEQ CODE_04F065           ;
CODE_04F05F:        A9 04         LDA #$04                  ;
CODE_04F061:        18            CLC                       ;
CODE_04F062:        6D 9E 0B      ADC $0B9E                 ;
CODE_04F065:        20 FC F9      JSR CODE_04F9FC           ;
CODE_04F068:        98            TYA                       ;
CODE_04F069:        18            CLC                       ;
CODE_04F06A:        69 10         ADC #$10                  ;
CODE_04F06C:        A8            TAY                       ;
CODE_04F06D:        AD AE 03      LDA $03AE                 ;
CODE_04F070:        18            CLC                       ;
CODE_04F071:        6D 1D 02      ADC $021D                 ;
CODE_04F074:        18            CLC                       ;
CODE_04F075:        69 07         ADC #$07                  ;
CODE_04F077:        85 00         STA $00                   ;
CODE_04F079:        AD 9F 0B      LDA $0B9F                 ;
CODE_04F07C:        3A            DEC A                     ;
CODE_04F07D:        F0 06         BEQ CODE_04F085           ;
CODE_04F07F:        A9 06         LDA #$06                  ;
CODE_04F081:        18            CLC                       ;
CODE_04F082:        6D 9E 0B      ADC $0B9E                 ;
CODE_04F085:        20 FC F9      JSR CODE_04F9FC           ;
CODE_04F088:        AD A0 0B      LDA $0BA0                 ;
CODE_04F08B:        30 03         BMI CODE_04F090           ;
CODE_04F08D:        EE A0 0B      INC $0BA0                 ;
CODE_04F090:        60            RTS                       ;

CODE_04F091:        AD 38 02      LDA $0238                 ;
CODE_04F094:        1A            INC A                     ;
CODE_04F095:        99 05 09      STA $0905,y               ;
CODE_04F098:        99 0D 09      STA $090D,y               ;
CODE_04F09B:        18            CLC                       ;
CODE_04F09C:        69 07         ADC #$07                  ;
CODE_04F09E:        99 01 09      STA $0901,y               ;
CODE_04F0A1:        99 09 09      STA $0909,y               ;
CODE_04F0A4:        AD AE 03      LDA $03AE                 ;
CODE_04F0A7:        38            SEC                       ;
CODE_04F0A8:        E9 0D         SBC #$0D                  ;
CODE_04F0AA:        99 04 09      STA $0904,y               ;
CODE_04F0AD:        3A            DEC A                     ;
CODE_04F0AE:        99 00 09      STA $0900,y               ;
CODE_04F0B1:        AD AE 03      LDA $03AE                 ;
CODE_04F0B4:        18            CLC                       ;
CODE_04F0B5:        69 0D         ADC #$0D                  ;
CODE_04F0B7:        99 0C 09      STA $090C,y               ;
CODE_04F0BA:        1A            INC A                     ;
CODE_04F0BB:        99 08 09      STA $0908,y               ;
CODE_04F0BE:        A9 E0         LDA #$E0                  ;
CODE_04F0C0:        99 06 09      STA $0906,y               ;
CODE_04F0C3:        99 0E 09      STA $090E,y               ;
CODE_04F0C6:        A9 CE         LDA #$CE                  ;
CODE_04F0C8:        99 02 09      STA $0902,y               ;
CODE_04F0CB:        99 0A 09      STA $090A,y               ;
CODE_04F0CE:        A9 2D         LDA #$2D                  ;
CODE_04F0D0:        99 0B 09      STA $090B,y               ;
CODE_04F0D3:        99 0F 09      STA $090F,y               ;
CODE_04F0D6:        A9 6D         LDA #$6D                  ;
CODE_04F0D8:        99 03 09      STA $0903,y               ;
CODE_04F0DB:        99 07 09      STA $0907,y               ;
CODE_04F0DE:        A9 02         LDA #$02                  ;
CODE_04F0E0:        99 00 0D      STA $0D00,y               ;
CODE_04F0E3:        99 04 0D      STA $0D04,y               ;
CODE_04F0E6:        99 08 0D      STA $0D08,y               ;
CODE_04F0E9:        99 0C 0D      STA $0D0C,y               ;
CODE_04F0EC:        60            RTS                       ;

CODE_04F0ED:        AD AE 03      LDA $03AE                 ;
CODE_04F0F0:        38            SEC                       ;
CODE_04F0F1:        E9 09         SBC #$09                  ;
CODE_04F0F3:        99 00 09      STA $0900,y               ;
CODE_04F0F6:        AD AE 03      LDA $03AE                 ;
CODE_04F0F9:        18            CLC                       ;
CODE_04F0FA:        69 09         ADC #$09                  ;
CODE_04F0FC:        99 04 09      STA $0904,y               ;
CODE_04F0FF:        AD 38 02      LDA $0238                 ;
CODE_04F102:        1A            INC A                     ;
CODE_04F103:        99 01 09      STA $0901,y               ;
CODE_04F106:        99 05 09      STA $0905,y               ;
CODE_04F109:        A9 E0         LDA #$E0                  ;
CODE_04F10B:        99 02 09      STA $0902,y               ;
CODE_04F10E:        99 06 09      STA $0906,y               ;
CODE_04F111:        A9 6D         LDA #$6D                  ;
CODE_04F113:        99 03 09      STA $0903,y               ;
CODE_04F116:        A9 2D         LDA #$2D                  ;
CODE_04F118:        99 07 09      STA $0907,y               ;
CODE_04F11B:        A9 02         LDA #$02                  ;
CODE_04F11D:        99 00 0D      STA $0D00,y               ;
CODE_04F120:        99 04 0D      STA $0D04,y               ;
CODE_04F123:        60            RTS                       ;

CODE_04F124:        AD AE 03      LDA $03AE                 ;
CODE_04F127:        38            SEC                       ;
CODE_04F128:        E9 05         SBC #$05                  ;
CODE_04F12A:        99 00 09      STA $0900,y               ;
CODE_04F12D:        AD AE 03      LDA $03AE                 ;
CODE_04F130:        18            CLC                       ;
CODE_04F131:        69 05         ADC #$05                  ;
CODE_04F133:        99 04 09      STA $0904,y               ;
CODE_04F136:        AD 38 02      LDA $0238                 ;
CODE_04F139:        99 01 09      STA $0901,y               ;
CODE_04F13C:        99 05 09      STA $0905,y               ;
CODE_04F13F:        A9 E0         LDA #$E0                  ;
CODE_04F141:        99 02 09      STA $0902,y               ;
CODE_04F144:        99 06 09      STA $0906,y               ;
CODE_04F147:        A9 6D         LDA #$6D                  ;
CODE_04F149:        99 03 09      STA $0903,y               ;
CODE_04F14C:        A9 2D         LDA #$2D                  ;
CODE_04F14E:        99 07 09      STA $0907,y               ;
CODE_04F151:        A9 02         LDA #$02                  ;
CODE_04F153:        99 00 0D      STA $0D00,y               ;
CODE_04F156:        99 04 0D      STA $0D04,y               ;
CODE_04F159:        60            RTS                       ;

CODE_04F15A:        20 7B FA      JSR CODE_04FA7B           ;
CODE_04F15D:        AD 7F 0F      LDA $0F7F                 ;
CODE_04F160:        D0 03         BNE CODE_04F165           ;
CODE_04F162:        4C D5 F9      JMP CODE_04F9D5           ;

CODE_04F165:        EE 9F 0B      INC $0B9F                 ;
CODE_04F168:        AD 9F 0B      LDA $0B9F                 ;
CODE_04F16B:        C9 C0         CMP #$C0                  ;
CODE_04F16D:        90 18         BCC CODE_04F187           ;
CODE_04F16F:        A9 C0         LDA #$C0                  ;
CODE_04F171:        8D 9F 0B      STA $0B9F                 ;
CODE_04F174:        A9 02         LDA #$02                  ;
CODE_04F176:        8D 9C 0B      STA $0B9C                 ;
CODE_04F179:        A9 01         LDA #$01                  ;
CODE_04F17B:        8D B8 0B      STA $0BB8                 ;
CODE_04F17E:        8D B9 0B      STA $0BB9                 ;
CODE_04F181:        8D BA 0B      STA $0BBA                 ;
CODE_04F184:        8D BB 0B      STA $0BBB                 ;
CODE_04F187:        9C 67 0E      STZ $0E67                 ;
CODE_04F18A:        AD B4 0B      LDA $0BB4                 ;
CODE_04F18D:        D0 13         BNE CODE_04F1A2           ;
CODE_04F18F:        AD 9C 0B      LDA $0B9C                 ;
CODE_04F192:        C9 02         CMP #$02                  ;
CODE_04F194:        F0 06         BEQ CODE_04F19C           ;
CODE_04F196:        20 AB F2      JSR CODE_04F2AB           ;
CODE_04F199:        4C D5 F9      JMP CODE_04F9D5           ;

CODE_04F19C:        20 D7 F1      JSR CODE_04F1D7           ;
CODE_04F19F:        4C D5 F9      JMP CODE_04F9D5           ;

CODE_04F1A2:        AD A1 0B      LDA $0BA1                 ;
CODE_04F1A5:        F0 07         BEQ CODE_04F1AE           ;
CODE_04F1A7:        CE A1 0B      DEC $0BA1                 ;
CODE_04F1AA:        A9 00         LDA #$00                  ;
CODE_04F1AC:        80 05         BRA CODE_04F1B3           ;

CODE_04F1AE:        20 29 FD      JSR CODE_04FD29           ;
CODE_04F1B1:        A9 02         LDA #$02                  ;
CODE_04F1B3:        8D 9E 0B      STA $0B9E                 ;
CODE_04F1B6:        A2 03         LDX #$03                  ;
CODE_04F1B8:        A0 00         LDY #$00                  ;
CODE_04F1BA:        BD B0 0B      LDA $0BB0,x               ;
CODE_04F1BD:        85 00         STA $00                   ;
CODE_04F1BF:        A9 B8         LDA #$B8                  ;
CODE_04F1C1:        85 01         STA $01                   ;
CODE_04F1C3:        AD 9E 0B      LDA $0B9E                 ;
CODE_04F1C6:        20 FC F9      JSR CODE_04F9FC           ;
CODE_04F1C9:        98            TYA                       ;
CODE_04F1CA:        18            CLC                       ;
CODE_04F1CB:        69 10         ADC #$10                  ;
CODE_04F1CD:        A8            TAY                       ;
CODE_04F1CE:        8C 67 0E      STY $0E67                 ;
CODE_04F1D1:        CA            DEX                       ;
CODE_04F1D2:        10 E6         BPL CODE_04F1BA           ;
CODE_04F1D4:        4C D5 F9      JMP CODE_04F9D5           ;

CODE_04F1D7:        20 66 FD      JSR CODE_04FD66           ;
CODE_04F1DA:        A9 20         LDA #$20                  ;
CODE_04F1DC:        85 00         STA $00                   ;
CODE_04F1DE:        A9 04         LDA #$04                  ;
CODE_04F1E0:        85 02         STA $02                   ;
CODE_04F1E2:        A2 01         LDX #$01                  ;
CODE_04F1E4:        A9 00         LDA #$00                  ;
CODE_04F1E6:        22 87 C1 03   JSL CODE_03C187           ;
CODE_04F1EA:        AD 38 02      LDA $0238                 ;
CODE_04F1ED:        C9 B0         CMP #$B0                  ;
CODE_04F1EF:        B0 05         BCS CODE_04F1F6           ;
CODE_04F1F1:        A9 01         LDA #$01                  ;
CODE_04F1F3:        8D 9D 0B      STA $0B9D                 ;
CODE_04F1F6:        AC 9D 0B      LDY $0B9D                 ;
CODE_04F1F9:        B9 5F EE      LDA $EE5F,y               ;
CODE_04F1FC:        A8            TAY                       ;
CODE_04F1FD:        AD AE 03      LDA $03AE                 ;
CODE_04F200:        85 00         STA $00                   ;
CODE_04F202:        AD 38 02      LDA $0238                 ;
CODE_04F205:        C9 B8         CMP #$B8                  ;
CODE_04F207:        90 05         BCC CODE_04F20E           ;
CODE_04F209:        A9 B8         LDA #$B8                  ;
CODE_04F20B:        9C B8 0B      STZ $0BB8                 ;
CODE_04F20E:        85 01         STA $01                   ;
CODE_04F210:        AD B8 0B      LDA $0BB8                 ;
CODE_04F213:        20 FC F9      JSR CODE_04F9FC           ;
CODE_04F216:        AD B1 0B      LDA $0BB1                 ;
CODE_04F219:        85 00         STA $00                   ;
CODE_04F21B:        AD 38 02      LDA $0238                 ;
CODE_04F21E:        38            SEC                       ;
CODE_04F21F:        E9 0C         SBC #$0C                  ;
CODE_04F221:        C9 B8         CMP #$B8                  ;
CODE_04F223:        90 07         BCC CODE_04F22C           ;
CODE_04F225:        A9 B8         LDA #$B8                  ;
CODE_04F227:        9C B9 0B      STZ $0BB9                 ;
CODE_04F22A:        80 0E         BRA CODE_04F23A           ;

CODE_04F22C:        A5 09         LDA $09                   ;
CODE_04F22E:        4A            LSR A                     ;
CODE_04F22F:        90 03         BCC CODE_04F234           ;
CODE_04F231:        EE B1 0B      INC $0BB1                 ;
CODE_04F234:        AD 38 02      LDA $0238                 ;
CODE_04F237:        38            SEC                       ;
CODE_04F238:        E9 0C         SBC #$0C                  ;
CODE_04F23A:        85 01         STA $01                   ;
CODE_04F23C:        98            TYA                       ;
CODE_04F23D:        18            CLC                       ;
CODE_04F23E:        69 10         ADC #$10                  ;
CODE_04F240:        A8            TAY                       ;
CODE_04F241:        AD B9 0B      LDA $0BB9                 ;
CODE_04F244:        18            CLC                       ;
CODE_04F245:        69 06         ADC #$06                  ;
CODE_04F247:        20 FC F9      JSR CODE_04F9FC           ;
CODE_04F24A:        AD B2 0B      LDA $0BB2                 ;
CODE_04F24D:        85 00         STA $00                   ;
CODE_04F24F:        AD 38 02      LDA $0238                 ;
CODE_04F252:        38            SEC                       ;
CODE_04F253:        E9 18         SBC #$18                  ;
CODE_04F255:        C9 B8         CMP #$B8                  ;
CODE_04F257:        90 07         BCC CODE_04F260           ;
CODE_04F259:        A9 B8         LDA #$B8                  ;
CODE_04F25B:        9C BA 0B      STZ $0BBA                 ;
CODE_04F25E:        80 03         BRA CODE_04F263           ;

CODE_04F260:        CE B2 0B      DEC $0BB2                 ;
CODE_04F263:        85 01         STA $01                   ;
CODE_04F265:        98            TYA                       ;
CODE_04F266:        18            CLC                       ;
CODE_04F267:        69 10         ADC #$10                  ;
CODE_04F269:        A8            TAY                       ;
CODE_04F26A:        AD BA 0B      LDA $0BBA                 ;
CODE_04F26D:        18            CLC                       ;
CODE_04F26E:        69 04         ADC #$04                  ;
CODE_04F270:        20 FC F9      JSR CODE_04F9FC           ;
CODE_04F273:        AD B3 0B      LDA $0BB3                 ;
CODE_04F276:        85 00         STA $00                   ;
CODE_04F278:        AD 38 02      LDA $0238                 ;
CODE_04F27B:        38            SEC                       ;
CODE_04F27C:        E9 24         SBC #$24                  ;
CODE_04F27E:        C9 B8         CMP #$B8                  ;
CODE_04F280:        90 15         BCC CODE_04F297           ;
CODE_04F282:        A9 B8         LDA #$B8                  ;
CODE_04F284:        9C BB 0B      STZ $0BBB                 ;
CODE_04F287:        EE B4 0B      INC $0BB4                 ;
CODE_04F28A:        A9 28         LDA #$28                  ;
CODE_04F28C:        8D A1 0B      STA $0BA1                 ;
CODE_04F28F:        AD 38 02      LDA $0238                 ;
CODE_04F292:        38            SEC                       ;
CODE_04F293:        E9 24         SBC #$24                  ;
CODE_04F295:        80 03         BRA CODE_04F29A           ;

CODE_04F297:        EE B3 0B      INC $0BB3                 ;
CODE_04F29A:        85 01         STA $01                   ;
CODE_04F29C:        98            TYA                       ;
CODE_04F29D:        18            CLC                       ;
CODE_04F29E:        69 10         ADC #$10                  ;
CODE_04F2A0:        A8            TAY                       ;
CODE_04F2A1:        AD BB 0B      LDA $0BBB                 ;
CODE_04F2A4:        18            CLC                       ;
CODE_04F2A5:        69 06         ADC #$06                  ;
CODE_04F2A7:        20 FC F9      JSR CODE_04F9FC           ;
CODE_04F2AA:        60            RTS                       ;

CODE_04F2AB:        A0 B0         LDY #$B0                  ;
CODE_04F2AD:        A2 00         LDX #$00                  ;
CODE_04F2AF:        AD AE 03      LDA $03AE                 ;
CODE_04F2B2:        99 00 09      STA $0900,y               ;
CODE_04F2B5:        BD 8F F3      LDA $F38F,x               ;
CODE_04F2B8:        99 01 09      STA $0901,y               ;
CODE_04F2BB:        BD 90 F3      LDA $F390,x               ;
CODE_04F2BE:        99 02 09      STA $0902,y               ;
CODE_04F2C1:        A9 2D         LDA #$2D                  ;
CODE_04F2C3:        99 03 09      STA $0903,y               ;
CODE_04F2C6:        A9 02         LDA #$02                  ;
CODE_04F2C8:        99 00 0D      STA $0D00,y               ;
CODE_04F2CB:        C8            INY                       ;
CODE_04F2CC:        C8            INY                       ;
CODE_04F2CD:        C8            INY                       ;
CODE_04F2CE:        C8            INY                       ;
CODE_04F2CF:        E8            INX                       ;
CODE_04F2D0:        E8            INX                       ;
CODE_04F2D1:        E0 12         CPX #$12                  ;
CODE_04F2D3:        90 DA         BCC CODE_04F2AF           ;
CODE_04F2D5:        A9 6D         LDA #$6D                  ;
CODE_04F2D7:        8D C3 09      STA $09C3                 ;
CODE_04F2DA:        9C C0 0D      STZ $0DC0                 ;
CODE_04F2DD:        9C BC 0D      STZ $0DBC                 ;
CODE_04F2E0:        AD BC 09      LDA $09BC                 ;
CODE_04F2E3:        18            CLC                       ;
CODE_04F2E4:        69 08         ADC #$08                  ;
CODE_04F2E6:        8D C0 09      STA $09C0                 ;
CODE_04F2E9:        A2 00         LDX #$00                  ;
CODE_04F2EB:        BD 88 F3      LDA $F388,x               ;
CODE_04F2EE:        CD 9F 0B      CMP $0B9F                 ;
CODE_04F2F1:        B0 05         BCS CODE_04F2F8           ;
CODE_04F2F3:        E8            INX                       ;
CODE_04F2F4:        E0 06         CPX #$06                  ;
CODE_04F2F6:        D0 F3         BNE CODE_04F2EB           ;
CODE_04F2F8:        8A            TXA                       ;
CODE_04F2F9:        0A            ASL A                     ;
CODE_04F2FA:        AA            TAX                       ;
CODE_04F2FB:        BD 7A F3      LDA $F37A,x               ;
CODE_04F2FE:        85 00         STA $00                   ;
CODE_04F300:        BD 7B F3      LDA $F37B,x               ;
CODE_04F303:        85 01         STA $01                   ;
CODE_04F305:        A9 01         LDA #$01                  ;
CODE_04F307:        6C 00 00      JMP ($0000)               ;

CODE_04F30A:        8D B0 0D      STA $0DB0                 ;
CODE_04F30D:        8D B4 0D      STA $0DB4                 ;
CODE_04F310:        8D B8 0D      STA $0DB8                 ;
CODE_04F313:        8D C8 0D      STA $0DC8                 ;
CODE_04F316:        8D CC 0D      STA $0DCC                 ;
CODE_04F319:        8D D0 0D      STA $0DD0                 ;
CODE_04F31C:        60            RTS                       ;

CODE_04F31D:        8D B0 0D      STA $0DB0                 ;
CODE_04F320:        8D B4 0D      STA $0DB4                 ;
CODE_04F323:        8D B8 0D      STA $0DB8                 ;
CODE_04F326:        8D CC 0D      STA $0DCC                 ;
CODE_04F329:        8D D0 0D      STA $0DD0                 ;
CODE_04F32C:        A9 09         LDA #$09                  ;\SMW cape dive sound
CODE_04F32E:        8D 00 16      STA $1600                 ;/
CODE_04F331:        60            RTS                       ;

CODE_04F332:        8D B0 0D      STA $0DB0                 ;
CODE_04F335:        8D B4 0D      STA $0DB4                 ;
CODE_04F338:        8D C8 0D      STA $0DC8                 ;
CODE_04F33B:        8D CC 0D      STA $0DCC                 ;
CODE_04F33E:        8D D0 0D      STA $0DD0                 ;
CODE_04F341:        60            RTS                       ;

CODE_04F342:        8D B0 0D      STA $0DB0                 ;
CODE_04F345:        8D B4 0D      STA $0DB4                 ;
CODE_04F348:        8D C8 0D      STA $0DC8                 ;
CODE_04F34B:        8D D0 0D      STA $0DD0                 ;
CODE_04F34E:        A9 09         LDA #$09                  ;\
CODE_04F350:        8D 00 16      STA $1600                 ;/SMW cape dive sound
CODE_04F353:        60            RTS                       ;

CODE_04F354:        8D B0 0D      STA $0DB0                 ;
CODE_04F357:        8D C8 0D      STA $0DC8                 ;
CODE_04F35A:        8D CC 0D      STA $0DCC                 ;
CODE_04F35D:        8D D0 0D      STA $0DD0                 ;
CODE_04F360:        60            RTS                       ;

CODE_04F361:        8D B0 0D      STA $0DB0                 ;
CODE_04F364:        8D C8 0D      STA $0DC8                 ;
CODE_04F367:        8D CC 0D      STA $0DCC                 ;
CODE_04F36A:        A9 09         LDA #$09                  ;\
CODE_04F36C:        8D 00 16      STA $1600                 ;/SMW cape dive sound
CODE_04F36F:        60            RTS                       ;

CODE_04F370:        8D C8 0D      STA $0DC8                 ;
CODE_04F373:        8D CC 0D      STA $0DCC                 ;
CODE_04F376:        8D D0 0D      STA $0DD0                 ;
CODE_04F379:        60            RTS                       ;

PNTR_04F37A:        dw CODE_04F30A
                    dw CODE_04F31D
                    dw CODE_04F332
                    dw CODE_04F342
                    dw CODE_04F354
                    dw CODE_04F361
                    dw CODE_04F370

DATA_04F388:        db $40,$48,$58,$60,$70,$78,$BF,$97
                    db $EA,$A2,$EA,$AD,$EA,$B8,$B6,$B8
                    db $B6,$C0,$C9,$B3,$EA,$A8,$EA,$9D
                    db $EA

CODE_04F3A1:        20 7B FA      JSR CODE_04FA7B
CODE_04F3A4:        AD 7F 0F      LDA $0F7F                 ;
CODE_04F3A7:        D0 03         BNE CODE_04F3AC           ;
CODE_04F3A9:        4C D5 F9      JMP CODE_04F9D5           ;

CODE_04F3AC:        20 66 FD      JSR CODE_04FD66           ;
CODE_04F3AF:        A9 20         LDA #$20                  ;
CODE_04F3B1:        85 00         STA $00                   ;
CODE_04F3B3:        A9 04         LDA #$04                  ;
CODE_04F3B5:        85 02         STA $02                   ;
CODE_04F3B7:        A2 01         LDX #$01                  ;
CODE_04F3B9:        A9 00         LDA #$00                  ;
CODE_04F3BB:        22 87 C1 03   JSL CODE_03C187           ;
CODE_04F3BF:        AD 38 02      LDA $0238                 ;
CODE_04F3C2:        C9 A0         CMP #$A0                  ;
CODE_04F3C4:        B0 05         BCS CODE_04F3CB           ;
CODE_04F3C6:        A9 01         LDA #$01                  ;
CODE_04F3C8:        8D 9D 0B      STA $0B9D                 ;
CODE_04F3CB:        AD 38 02      LDA $0238                 ;
CODE_04F3CE:        C9 B0         CMP #$B0                  ;
CODE_04F3D0:        90 1B         BCC CODE_04F3ED           ;
CODE_04F3D2:        A9 B0         LDA #$B0                  ;
CODE_04F3D4:        8D 38 02      STA $0238                 ;
CODE_04F3D7:        9C 3D 04      STZ $043D                 ;
CODE_04F3DA:        9C 1C 04      STZ $041C                 ;
CODE_04F3DD:        EE 9E 0B      INC $0B9E                 ;
CODE_04F3E0:        AD 9E 0B      LDA $0B9E                 ;
CODE_04F3E3:        30 05         BMI CODE_04F3EA           ;
CODE_04F3E5:        A9 00         LDA #$00                  ;
CODE_04F3E7:        8D 9E 0B      STA $0B9E                 ;
CODE_04F3EA:        8D A1 00      STA $00A1                 ;
CODE_04F3ED:        EE 9F 0B      INC $0B9F                 ;
CODE_04F3F0:        AD 9F 0B      LDA $0B9F                 ;
CODE_04F3F3:        C9 44         CMP #$44                  ;
CODE_04F3F5:        90 15         BCC CODE_04F40C           ;
CODE_04F3F7:        D0 05         BNE CODE_04F3FE           ;
CODE_04F3F9:        A9 08         LDA #$08                  ;\
CODE_04F3FB:        8D 00 16      STA $1600                 ;/Reset highscore sound
CODE_04F3FE:        A9 45         LDA #$45                  ;
CODE_04F400:        8D 9F 0B      STA $0B9F                 ;
CODE_04F403:        20 12 F4      JSR CODE_04F412           ;
CODE_04F406:        20 29 FD      JSR CODE_04FD29           ;
CODE_04F409:        4C D5 F9      JMP CODE_04F9D5           ;

CODE_04F40C:        20 86 F5      JSR CODE_04F586           ;
CODE_04F40F:        4C D5 F9      JMP CODE_04F9D5           ;

CODE_04F412:        AD AE 03      LDA $03AE                 ;
CODE_04F415:        18            CLC                       ;
CODE_04F416:        6D 9F 0B      ADC $0B9F                 ;
CODE_04F419:        85 00         STA $00                   ;
CODE_04F41B:        18            CLC                       ;
CODE_04F41C:        69 06         ADC #$06                  ;
CODE_04F41E:        8D 00 09      STA $0900                 ;
CODE_04F421:        18            CLC                       ;
CODE_04F422:        69 10         ADC #$10                  ;
CODE_04F424:        8D 04 09      STA $0904                 ;
CODE_04F427:        A5 00         LDA $00                   ;
CODE_04F429:        8D 10 09      STA $0910                 ;
CODE_04F42C:        8D 18 09      STA $0918                 ;
CODE_04F42F:        18            CLC                       ;
CODE_04F430:        69 08         ADC #$08                  ;
CODE_04F432:        8D 14 09      STA $0914                 ;
CODE_04F435:        A5 00         LDA $00                   ;
CODE_04F437:        18            CLC                       ;
CODE_04F438:        69 1C         ADC #$1C                  ;
CODE_04F43A:        8D 20 09      STA $0920                 ;
CODE_04F43D:        8D 28 09      STA $0928                 ;
CODE_04F440:        18            CLC                       ;
CODE_04F441:        69 08         ADC #$08                  ;
CODE_04F443:        8D 24 09      STA $0924                 ;
CODE_04F446:        A5 00         LDA $00                   ;
CODE_04F448:        18            CLC                       ;
CODE_04F449:        69 06         ADC #$06                  ;
CODE_04F44B:        8D 30 09      STA $0930                 ;
CODE_04F44E:        8D 38 09      STA $0938                 ;
CODE_04F451:        18            CLC                       ;
CODE_04F452:        69 08         ADC #$08                  ;
CODE_04F454:        8D 34 09      STA $0934                 ;
CODE_04F457:        A5 00         LDA $00                   ;
CODE_04F459:        18            CLC                       ;
CODE_04F45A:        69 16         ADC #$16                  ;
CODE_04F45C:        8D 40 09      STA $0940                 ;
CODE_04F45F:        8D 48 09      STA $0948                 ;
CODE_04F462:        18            CLC                       ;
CODE_04F463:        69 08         ADC #$08                  ;
CODE_04F465:        8D 44 09      STA $0944                 ;
CODE_04F468:        A9 B8         LDA #$B8                  ;
CODE_04F46A:        8D 11 09      STA $0911                 ;
CODE_04F46D:        8D 15 09      STA $0915                 ;
CODE_04F470:        8D 21 09      STA $0921                 ;
CODE_04F473:        8D 25 09      STA $0925                 ;
CODE_04F476:        8D 31 09      STA $0931                 ;
CODE_04F479:        8D 35 09      STA $0935                 ;
CODE_04F47C:        8D 41 09      STA $0941                 ;
CODE_04F47F:        8D 45 09      STA $0945                 ;
CODE_04F482:        A9 C0         LDA #$C0                  ;
CODE_04F484:        8D 01 09      STA $0901                 ;
CODE_04F487:        8D 05 09      STA $0905                 ;
CODE_04F48A:        8D 19 09      STA $0919                 ;
CODE_04F48D:        8D 29 09      STA $0929                 ;
CODE_04F490:        8D 39 09      STA $0939                 ;
CODE_04F493:        8D 49 09      STA $0949                 ;
CODE_04F496:        A9 BE         LDA #$BE                  ;
CODE_04F498:        8D 12 09      STA $0912                 ;
CODE_04F49B:        8D 26 09      STA $0926                 ;
CODE_04F49E:        A9 BF         LDA #$BF                  ;
CODE_04F4A0:        8D 16 09      STA $0916                 ;
CODE_04F4A3:        8D 22 09      STA $0922                 ;
CODE_04F4A6:        A9 EC         LDA #$EC                  ;
CODE_04F4A8:        8D 1A 09      STA $091A                 ;
CODE_04F4AB:        8D 2A 09      STA $092A                 ;
CODE_04F4AE:        A9 EA         LDA #$EA                  ;
CODE_04F4B0:        8D 02 09      STA $0902                 ;
CODE_04F4B3:        8D 06 09      STA $0906                 ;
CODE_04F4B6:        A9 B6         LDA #$B6                  ;
CODE_04F4B8:        8D 32 09      STA $0932                 ;
CODE_04F4BB:        8D 36 09      STA $0936                 ;
CODE_04F4BE:        8D 42 09      STA $0942                 ;
CODE_04F4C1:        8D 46 09      STA $0946                 ;
CODE_04F4C4:        A9 C9         LDA #$C9                  ;
CODE_04F4C6:        8D 3A 09      STA $093A                 ;
CODE_04F4C9:        8D 4A 09      STA $094A                 ;
CODE_04F4CC:        A9 2D         LDA #$2D                  ;
CODE_04F4CE:        8D 03 09      STA $0903                 ;
CODE_04F4D1:        8D 13 09      STA $0913                 ;
CODE_04F4D4:        8D 17 09      STA $0917                 ;
CODE_04F4D7:        8D 1B 09      STA $091B                 ;
CODE_04F4DA:        8D 33 09      STA $0933                 ;
CODE_04F4DD:        8D 3B 09      STA $093B                 ;
CODE_04F4E0:        8D 43 09      STA $0943                 ;
CODE_04F4E3:        8D 4B 09      STA $094B                 ;
CODE_04F4E6:        A9 6D         LDA #$6D                  ;
CODE_04F4E8:        8D 07 09      STA $0907                 ;
CODE_04F4EB:        8D 23 09      STA $0923                 ;
CODE_04F4EE:        8D 27 09      STA $0927                 ;
CODE_04F4F1:        8D 2B 09      STA $092B                 ;
CODE_04F4F4:        8D 37 09      STA $0937                 ;
CODE_04F4F7:        8D 47 09      STA $0947                 ;
CODE_04F4FA:        A9 02         LDA #$02                  ;
CODE_04F4FC:        8D 00 0D      STA $0D00                 ;
CODE_04F4FF:        8D 04 0D      STA $0D04                 ;
CODE_04F502:        8D 18 0D      STA $0D18                 ;
CODE_04F505:        8D 28 0D      STA $0D28                 ;
CODE_04F508:        8D 38 0D      STA $0D38                 ;
CODE_04F50B:        8D 48 0D      STA $0D48                 ;
CODE_04F50E:        A2 03         LDX #$03                  ;
CODE_04F510:        BD B8 0B      LDA $0BB8,x               ;
CODE_04F513:        F0 0C         BEQ CODE_04F521           ;
CODE_04F515:        C9 1E         CMP #$1E                  ;
CODE_04F517:        90 05         BCC CODE_04F51E           ;
CODE_04F519:        9E B8 0B      STZ $0BB8,x               ;
CODE_04F51C:        80 03         BRA CODE_04F521           ;

CODE_04F51E:        FE B8 0B      INC $0BB8,x               ;
CODE_04F521:        CA            DEX                       ;
CODE_04F522:        10 EC         BPL CODE_04F510           ;
CODE_04F524:        A5 09         LDA $09                   ;
CODE_04F526:        29 07         AND #$07                  ;
CODE_04F528:        D0 2C         BNE CODE_04F556           ;
CODE_04F52A:        A2 03         LDX #$03                  ;
CODE_04F52C:        BD B8 0B      LDA $0BB8,x               ;
CODE_04F52F:        F0 03         BEQ CODE_04F534           ;
CODE_04F531:        CA            DEX                       ;
CODE_04F532:        D0 F8         BNE CODE_04F52C           ;
CODE_04F534:        A5 09         LDA $09                   ;
CODE_04F536:        29 03         AND #$03                  ;
CODE_04F538:        A8            TAY                       ;
CODE_04F539:        B9 B9 07      LDA $07B9,y               ;
CODE_04F53C:        45 09         EOR $09                   ;
CODE_04F53E:        29 1F         AND #$1F                  ;
CODE_04F540:        18            CLC                       ;
CODE_04F541:        69 CC         ADC #$CC                  ;
CODE_04F543:        9D B0 0B      STA $0BB0,x               ;
CODE_04F546:        B9 BA 07      LDA $07BA,y               ;
CODE_04F549:        45 09         EOR $09                   ;
CODE_04F54B:        29 07         AND #$07                  ;
CODE_04F54D:        18            CLC                       ;
CODE_04F54E:        69 B0         ADC #$B0                  ;
CODE_04F550:        9D B4 0B      STA $0BB4,x               ;
CODE_04F553:        FE B8 0B      INC $0BB8,x               ;
CODE_04F556:        A2 03         LDX #$03                  ;
CODE_04F558:        BD B8 0B      LDA $0BB8,x               ;
CODE_04F55B:        4A            LSR A                     ;
CODE_04F55C:        4A            LSR A                     ;
CODE_04F55D:        4A            LSR A                     ;
CODE_04F55E:        A8            TAY                       ;
CODE_04F55F:        B9 82 F5      LDA $F582,y               ;
CODE_04F562:        85 00         STA $00                   ;
CODE_04F564:        8A            TXA                       ;
CODE_04F565:        0A            ASL A                     ;
CODE_04F566:        0A            ASL A                     ;
CODE_04F567:        A8            TAY                       ;
CODE_04F568:        BD B0 0B      LDA $0BB0,x               ;
CODE_04F56B:        99 00 08      STA $0800,y               ;
CODE_04F56E:        BD B4 0B      LDA $0BB4,x               ;
CODE_04F571:        99 01 08      STA $0801,y               ;
CODE_04F574:        A5 00         LDA $00                   ;
CODE_04F576:        99 02 08      STA $0802,y               ;
CODE_04F579:        A9 25         LDA #$25                  ;
CODE_04F57B:        99 03 08      STA $0803,y               ;
CODE_04F57E:        CA            DEX                       ;
CODE_04F57F:        10 D7         BPL CODE_04F558           ;
CODE_04F581:        60            RTS                       ;

DATA_04F582:        db $F5,$E4,$F4,$E5

CODE_04F586:        AC 9D 0B      LDY $0B9D                 ;
CODE_04F589:        B9 5F EE      LDA $EE5F,y               ;
CODE_04F58C:        A8            TAY                       ;
CODE_04F58D:        AD AE 03      LDA $03AE                 ;
CODE_04F590:        18            CLC                       ;
CODE_04F591:        6D 9F 0B      ADC $0B9F                 ;
CODE_04F594:        99 00 09      STA $0900,y               ;
CODE_04F597:        99 08 09      STA $0908,y               ;
CODE_04F59A:        18            CLC                       ;
CODE_04F59B:        69 10         ADC #$10                  ;
CODE_04F59D:        99 04 09      STA $0904,y               ;
CODE_04F5A0:        99 0C 09      STA $090C,y               ;
CODE_04F5A3:        AD 38 02      LDA $0238                 ;
CODE_04F5A6:        99 01 09      STA $0901,y               ;
CODE_04F5A9:        99 05 09      STA $0905,y               ;
CODE_04F5AC:        18            CLC                       ;
CODE_04F5AD:        69 10         ADC #$10                  ;
CODE_04F5AF:        99 09 09      STA $0909,y               ;
CODE_04F5B2:        99 0D 09      STA $090D,y               ;
CODE_04F5B5:        AD 9F 0B      LDA $0B9F                 ;
CODE_04F5B8:        29 0C         AND #$0C                  ;
CODE_04F5BA:        AA            TAX                       ;
CODE_04F5BB:        A9 04         LDA #$04                  ;
CODE_04F5BD:        85 00         STA $00                   ;
CODE_04F5BF:        BD DA F5      LDA $F5DA,x               ;
CODE_04F5C2:        99 02 09      STA $0902,y               ;
CODE_04F5C5:        BD EA F5      LDA $F5EA,x               ;
CODE_04F5C8:        99 03 09      STA $0903,y               ;
CODE_04F5CB:        A9 02         LDA #$02                  ;
CODE_04F5CD:        99 00 0D      STA $0D00,y               ;
CODE_04F5D0:        C8            INY                       ;
CODE_04F5D1:        C8            INY                       ;
CODE_04F5D2:        C8            INY                       ;
CODE_04F5D3:        C8            INY                       ;
CODE_04F5D4:        E8            INX                       ;
CODE_04F5D5:        C6 00         DEC $00                   ;
CODE_04F5D7:        D0 E6         BNE CODE_04F5BF           ;
CODE_04F5D9:        60            RTS                       ;

DATA_04F5DA:        db $CE,$CE,$EE,$EE,$E0,$E2,$E0,$E2
                    db $EE,$EE,$CE,$CE,$E2,$E0,$E2,$E0

DATA_04F5EA:        db $2D,$4D,$2D,$4D,$2D,$2D,$AD,$AD
                    db $AD,$CD,$AD,$CD,$4D,$4D,$CD,$CD

CODE_04F5FA:        20 7B FA      JSR CODE_04FA7B
CODE_04F5FD:        AD 7F 0F      LDA $0F7F                 ;
CODE_04F600:        D0 03         BNE CODE_04F605           ;
CODE_04F602:        4C D5 F9      JMP CODE_04F9D5           ;

CODE_04F605:        20 66 FD      JSR CODE_04FD66           ;
CODE_04F608:        A9 20         LDA #$20                  ;
CODE_04F60A:        85 00         STA $00                   ;
CODE_04F60C:        A9 04         LDA #$04                  ;
CODE_04F60E:        85 01         STA $01                   ;
CODE_04F610:        A2 01         LDX #$01                  ;
CODE_04F612:        A9 00         LDA #$00                  ;
CODE_04F614:        22 87 C1 03   JSL CODE_03C187           ;
CODE_04F618:        AD 38 02      LDA $0238                 ;
CODE_04F61B:        C9 A0         CMP #$A0                  ;
CODE_04F61D:        B0 05         BCS CODE_04F624           ;
CODE_04F61F:        A9 01         LDA #$01                  ;
CODE_04F621:        8D 9D 0B      STA $0B9D                 ;
CODE_04F624:        AD 38 02      LDA $0238                 ;
CODE_04F627:        C9 B8         CMP #$B8                  ;
CODE_04F629:        90 1F         BCC CODE_04F64A           ;
CODE_04F62B:        A9 B8         LDA #$B8                  ;
CODE_04F62D:        8D 38 02      STA $0238                 ;
CODE_04F630:        9C A1 00      STZ $00A1                 ;
CODE_04F633:        9C 3D 04      STZ $043D                 ;
CODE_04F636:        9C 1D 04      STZ $041D                 ;
CODE_04F639:        AD A4 0B      LDA $0BA4                 ;
CODE_04F63C:        C9 01         CMP #$01                  ;
CODE_04F63E:        D0 1A         BNE CODE_04F65A           ;
CODE_04F640:        A9 20         LDA #$20                  ;\SMW Yoshi spit out enemy sound
CODE_04F642:        8D 00 16      STA $1600                 ;/
CODE_04F645:        8D A4 0B      STA $0BA4                 ;
CODE_04F648:        80 10         BRA CODE_04F65A           ;

CODE_04F64A:        AC 9D 0B      LDY $0B9D                 ;
CODE_04F64D:        B9 5F EE      LDA $EE5F,y               ;
CODE_04F650:        A8            TAY                       ;
CODE_04F651:        AD A1 00      LDA $00A1                 ;
CODE_04F654:        20 F9 F6      JSR CODE_04F6F9           ;
CODE_04F657:        4C D5 F9      JMP CODE_04F9D5           ;

CODE_04F65A:        AD 9C 0B      LDA $0B9C                 ;
CODE_04F65D:        C9 02         CMP #$02                  ;
CODE_04F65F:        F0 17         BEQ CODE_04F678           ;
CODE_04F661:        EE 9C 0B      INC $0B9C                 ;
CODE_04F664:        AD AE 03      LDA $03AE                 ;
CODE_04F667:        38            SEC                       ;
CODE_04F668:        E9 08         SBC #$08                  ;
CODE_04F66A:        8D AE 03      STA $03AE                 ;
CODE_04F66D:        AD 1A 02      LDA $021A                 ;
CODE_04F670:        38            SEC                       ;
CODE_04F671:        E9 08         SBC #$08                  ;
CODE_04F673:        8D 1A 02      STA $021A                 ;
CODE_04F676:        64 09         STZ $09                   ;
CODE_04F678:        AD A0 0B      LDA $0BA0                 ;
CODE_04F67B:        D0 0F         BNE CODE_04F68C           ;
CODE_04F67D:        EE 9F 0B      INC $0B9F                 ;
CODE_04F680:        AD 9F 0B      LDA $0B9F                 ;
CODE_04F683:        C9 40         CMP #$40                  ;
CODE_04F685:        90 14         BCC CODE_04F69B           ;
CODE_04F687:        A9 40         LDA #$40                  ;
CODE_04F689:        8D 9F 0B      STA $0B9F                 ;
CODE_04F68C:        EE A0 0B      INC $0BA0                 ;
CODE_04F68F:        AD A0 0B      LDA $0BA0                 ;
CODE_04F692:        C9 88         CMP #$88                  ;
CODE_04F694:        90 05         BCC CODE_04F69B           ;
CODE_04F696:        A9 88         LDA #$88                  ;
CODE_04F698:        8D A0 0B      STA $0BA0                 ;
CODE_04F69B:        20 4C F7      JSR CODE_04F74C           ;
CODE_04F69E:        20 29 FD      JSR CODE_04FD29           ;
CODE_04F6A1:        4C D5 F9      JMP CODE_04F9D5           ;

CODE_04F6A4:        AD AE 03      LDA $03AE                 ;
CODE_04F6A7:        99 00 09      STA $0900,y               ;
CODE_04F6AA:        99 08 09      STA $0908,y               ;
CODE_04F6AD:        18            CLC                       ;
CODE_04F6AE:        69 10         ADC #$10                  ;
CODE_04F6B0:        99 04 09      STA $0904,y               ;
CODE_04F6B3:        99 0C 09      STA $090C,y               ;
CODE_04F6B6:        AD 38 02      LDA $0238                 ;
CODE_04F6B9:        99 01 09      STA $0901,y               ;
CODE_04F6BC:        99 05 09      STA $0905,y               ;
CODE_04F6BF:        18            CLC                       ;
CODE_04F6C0:        69 10         ADC #$10                  ;
CODE_04F6C2:        99 09 09      STA $0909,y               ;
CODE_04F6C5:        99 0D 09      STA $090D,y               ;
CODE_04F6C8:        A9 CE         LDA #$CE                  ;
CODE_04F6CA:        99 02 09      STA $0902,y               ;
CODE_04F6CD:        99 06 09      STA $0906,y               ;
CODE_04F6D0:        99 0A 09      STA $090A,y               ;
CODE_04F6D3:        99 0E 09      STA $090E,y               ;
CODE_04F6D6:        A9 2D         LDA #$2D                  ;
CODE_04F6D8:        99 03 09      STA $0903,y               ;
CODE_04F6DB:        A9 6D         LDA #$6D                  ;
CODE_04F6DD:        99 07 09      STA $0907,y               ;
CODE_04F6E0:        A9 AD         LDA #$AD                  ;
CODE_04F6E2:        99 0B 09      STA $090B,y               ;
CODE_04F6E5:        A9 CD         LDA #$CD                  ;
CODE_04F6E7:        99 0F 09      STA $090F,y               ;
CODE_04F6EA:        A9 02         LDA #$02                  ;
CODE_04F6EC:        99 00 0D      STA $0D00,y               ;
CODE_04F6EF:        99 04 0D      STA $0D04,y               ;
CODE_04F6F2:        99 08 0D      STA $0D08,y               ;
CODE_04F6F5:        99 0C 0D      STA $0D0C,y               ;
CODE_04F6F8:        60            RTS                       ;

CODE_04F6F9:        AD AE 03      LDA $03AE                 ;
CODE_04F6FC:        99 00 09      STA $0900,y               ;
CODE_04F6FF:        99 08 09      STA $0908,y               ;
CODE_04F702:        18            CLC                       ;
CODE_04F703:        69 10         ADC #$10                  ;
CODE_04F705:        99 04 09      STA $0904,y               ;
CODE_04F708:        99 0C 09      STA $090C,y               ;
CODE_04F70B:        AD 38 02      LDA $0238                 ;
CODE_04F70E:        99 09 09      STA $0909,y               ;
CODE_04F711:        99 0D 09      STA $090D,y               ;
CODE_04F714:        18            CLC                       ;
CODE_04F715:        69 08         ADC #$08                  ;
CODE_04F717:        99 01 09      STA $0901,y               ;
CODE_04F71A:        99 05 09      STA $0905,y               ;
CODE_04F71D:        A9 CE         LDA #$CE                  ;
CODE_04F71F:        99 0A 09      STA $090A,y               ;
CODE_04F722:        99 0E 09      STA $090E,y               ;
CODE_04F725:        A9 DE         LDA #$DE                  ;
CODE_04F727:        99 02 09      STA $0902,y               ;
CODE_04F72A:        99 06 09      STA $0906,y               ;
CODE_04F72D:        A9 2D         LDA #$2D                  ;
CODE_04F72F:        99 03 09      STA $0903,y               ;
CODE_04F732:        99 0B 09      STA $090B,y               ;
CODE_04F735:        A9 6D         LDA #$6D                  ;
CODE_04F737:        99 07 09      STA $0907,y               ;
CODE_04F73A:        99 0F 09      STA $090F,y               ;
CODE_04F73D:        A9 02         LDA #$02                  ;
CODE_04F73F:        99 00 0D      STA $0D00,y               ;
CODE_04F742:        99 04 0D      STA $0D04,y               ;
CODE_04F745:        99 08 0D      STA $0D08,y               ;
CODE_04F748:        99 0C 0D      STA $0D0C,y               ;
CODE_04F74B:        60            RTS                       ;

CODE_04F74C:        AD 9F 0B      LDA $0B9F                 ;
CODE_04F74F:        38            SEC                       ;
CODE_04F750:        E9 28         SBC #$28                  ;
CODE_04F752:        10 02         BPL CODE_04F756           ;
CODE_04F754:        A9 00         LDA #$00                  ;
CODE_04F756:        4A            LSR A                     ;
CODE_04F757:        4A            LSR A                     ;
CODE_04F758:        85 00         STA $00                   ;
CODE_04F75A:        AD A0 0B      LDA $0BA0                 ;
CODE_04F75D:        29 08         AND #$08                  ;
CODE_04F75F:        4A            LSR A                     ;
CODE_04F760:        4A            LSR A                     ;
CODE_04F761:        4A            LSR A                     ;
CODE_04F762:        85 01         STA $01                   ;
CODE_04F764:        AD AE 03      LDA $03AE                 ;
CODE_04F767:        18            CLC                       ;
CODE_04F768:        6D A0 0B      ADC $0BA0                 ;
CODE_04F76B:        18            CLC                       ;
CODE_04F76C:        65 01         ADC $01                   ;
CODE_04F76E:        8D 00 09      STA $0900                 ;
CODE_04F771:        8D 10 09      STA $0910                 ;
CODE_04F774:        18            CLC                       ;
CODE_04F775:        69 10         ADC #$10                  ;
CODE_04F777:        38            SEC                       ;
CODE_04F778:        E5 01         SBC $01                   ;
CODE_04F77A:        8D 04 09      STA $0904                 ;
CODE_04F77D:        8D 14 09      STA $0914                 ;
CODE_04F780:        18            CLC                       ;
CODE_04F781:        69 10         ADC #$10                  ;
CODE_04F783:        38            SEC                       ;
CODE_04F784:        E5 01         SBC $01                   ;
CODE_04F786:        8D 08 09      STA $0908                 ;
CODE_04F789:        8D 18 09      STA $0918                 ;
CODE_04F78C:        AD 38 02      LDA $0238                 ;
CODE_04F78F:        38            SEC                       ;
CODE_04F790:        E5 00         SBC $00                   ;
CODE_04F792:        18            CLC                       ;
CODE_04F793:        65 01         ADC $01                   ;
CODE_04F795:        8D 11 09      STA $0911                 ;
CODE_04F798:        8D 15 09      STA $0915                 ;
CODE_04F79B:        8D 19 09      STA $0919                 ;
CODE_04F79E:        18            CLC                       ;
CODE_04F79F:        69 08         ADC #$08                  ;
CODE_04F7A1:        8D 01 09      STA $0901                 ;
CODE_04F7A4:        8D 05 09      STA $0905                 ;
CODE_04F7A7:        8D 09 09      STA $0909                 ;
CODE_04F7AA:        A9 DE         LDA #$DE                  ;
CODE_04F7AC:        8D 02 09      STA $0902                 ;
CODE_04F7AF:        8D 0A 09      STA $090A                 ;
CODE_04F7B2:        A9 EC         LDA #$EC                  ;
CODE_04F7B4:        8D 06 09      STA $0906                 ;
CODE_04F7B7:        A9 CE         LDA #$CE                  ;
CODE_04F7B9:        8D 12 09      STA $0912                 ;
CODE_04F7BC:        8D 1A 09      STA $091A                 ;
CODE_04F7BF:        A9 EA         LDA #$EA                  ;
CODE_04F7C1:        8D 16 09      STA $0916                 ;
CODE_04F7C4:        A9 2D         LDA #$2D                  ;
CODE_04F7C6:        8D 03 09      STA $0903                 ;
CODE_04F7C9:        8D 07 09      STA $0907                 ;
CODE_04F7CC:        8D 13 09      STA $0913                 ;
CODE_04F7CF:        8D 17 09      STA $0917                 ;
CODE_04F7D2:        A9 6D         LDA #$6D                  ;
CODE_04F7D4:        8D 0B 09      STA $090B                 ;
CODE_04F7D7:        8D 1B 09      STA $091B                 ;
CODE_04F7DA:        A9 02         LDA #$02                  ;
CODE_04F7DC:        8D 00 0D      STA $0D00                 ;
CODE_04F7DF:        8D 04 0D      STA $0D04                 ;
CODE_04F7E2:        8D 08 0D      STA $0D08                 ;
CODE_04F7E5:        8D 10 0D      STA $0D10                 ;
CODE_04F7E8:        8D 14 0D      STA $0D14                 ;
CODE_04F7EB:        8D 18 0D      STA $0D18                 ;
CODE_04F7EE:        AD AE 03      LDA $03AE                 ;
CODE_04F7F1:        18            CLC                       ;
CODE_04F7F2:        6D A0 0B      ADC $0BA0                 ;
CODE_04F7F5:        1A            INC A                     ;
CODE_04F7F6:        1A            INC A                     ;
CODE_04F7F7:        8D 20 09      STA $0920                 ;
CODE_04F7FA:        18            CLC                       ;
CODE_04F7FB:        69 08         ADC #$08                  ;
CODE_04F7FD:        8D 24 09      STA $0924                 ;
CODE_04F800:        1A            INC A                     ;
CODE_04F801:        8D 28 09      STA $0928                 ;
CODE_04F804:        18            CLC                       ;
CODE_04F805:        69 08         ADC #$08                  ;
CODE_04F807:        8D 2C 09      STA $092C                 ;
CODE_04F80A:        1A            INC A                     ;
CODE_04F80B:        8D 30 09      STA $0930                 ;
CODE_04F80E:        18            CLC                       ;
CODE_04F80F:        69 08         ADC #$08                  ;
CODE_04F811:        8D 34 09      STA $0934                 ;
CODE_04F814:        1A            INC A                     ;
CODE_04F815:        8D 38 09      STA $0938                 ;
CODE_04F818:        18            CLC                       ;
CODE_04F819:        69 08         ADC #$08                  ;
CODE_04F81B:        8D 3C 09      STA $093C                 ;
CODE_04F81E:        A9 C8         LDA #$C8                  ;
CODE_04F820:        8D 21 09      STA $0921                 ;
CODE_04F823:        8D 25 09      STA $0925                 ;
CODE_04F826:        8D 29 09      STA $0929                 ;
CODE_04F829:        8D 2D 09      STA $092D                 ;
CODE_04F82C:        8D 31 09      STA $0931                 ;
CODE_04F82F:        8D 35 09      STA $0935                 ;
CODE_04F832:        8D 39 09      STA $0939                 ;
CODE_04F835:        8D 3D 09      STA $093D                 ;
CODE_04F838:        AD A0 0B      LDA $0BA0                 ;
CODE_04F83B:        29 0F         AND #$0F                  ;
CODE_04F83D:        C9 0F         CMP #$0F                  ;
CODE_04F83F:        D0 05         BNE CODE_04F846           ;
CODE_04F841:        A9 0E         LDA #$0E                  ;\Swimming sound
CODE_04F843:        8D 00 16      STA $1600                 ;/
CODE_04F846:        AD A0 0B      LDA $0BA0                 ;
CODE_04F849:        29 08         AND #$08                  ;
CODE_04F84B:        0A            ASL A                     ;
CODE_04F84C:        09 CB         ORA #$CB                  ;
CODE_04F84E:        8D 22 09      STA $0922                 ;
CODE_04F851:        8D 2A 09      STA $092A                 ;
CODE_04F854:        8D 32 09      STA $0932                 ;
CODE_04F857:        8D 3A 09      STA $093A                 ;
CODE_04F85A:        1A            INC A                     ;
CODE_04F85B:        8D 26 09      STA $0926                 ;
CODE_04F85E:        8D 2E 09      STA $092E                 ;
CODE_04F861:        8D 36 09      STA $0936                 ;
CODE_04F864:        8D 3E 09      STA $093E                 ;
CODE_04F867:        A9 2D         LDA #$2D                  ;
CODE_04F869:        8D 23 09      STA $0923                 ;
CODE_04F86C:        8D 27 09      STA $0927                 ;
CODE_04F86F:        8D 2B 09      STA $092B                 ;
CODE_04F872:        8D 2F 09      STA $092F                 ;
CODE_04F875:        8D 33 09      STA $0933                 ;
CODE_04F878:        8D 37 09      STA $0937                 ;
CODE_04F87B:        8D 3B 09      STA $093B                 ;
CODE_04F87E:        8D 3F 09      STA $093F                 ;
CODE_04F881:        A0 00         LDY #$00                  ;
CODE_04F883:        B9 00 09      LDA $0900,y               ;
CODE_04F886:        C9 40         CMP #$40                  ;
CODE_04F888:        B0 05         BCS CODE_04F88F           ;
CODE_04F88A:        A9 F0         LDA #$F0                  ;
CODE_04F88C:        99 01 09      STA $0901,y               ;
CODE_04F88F:        C8            INY                       ;
CODE_04F890:        C8            INY                       ;
CODE_04F891:        C8            INY                       ;
CODE_04F892:        C8            INY                       ;
CODE_04F893:        D0 EE         BNE CODE_04F883           ;
CODE_04F895:        60            RTS                       ;

CODE_04F896:        EE 7F 0F      INC $0F7F                 ;
CODE_04F899:        AD 7F 0F      LDA $0F7F                 ;
CODE_04F89C:        C9 D0         CMP #$D0                  ;
CODE_04F89E:        90 0B         BCC CODE_04F8AB           ;
CODE_04F8A0:        20 29 FD      JSR CODE_04FD29           ;
CODE_04F8A3:        A9 D0         LDA #$D0                  ;
CODE_04F8A5:        8D 7F 0F      STA $0F7F                 ;
CODE_04F8A8:        4C BA F8      JMP CODE_04F8BA           ;

CODE_04F8AB:        C9 20         CMP #$20                  ;
CODE_04F8AD:        90 0B         BCC CODE_04F8BA           ;
CODE_04F8AF:        48            PHA                       ;
CODE_04F8B0:        29 0F         AND #$0F                  ;
CODE_04F8B2:        D0 05         BNE CODE_04F8B9           ;
CODE_04F8B4:        A9 0E         LDA #$0E                  ;\Swimming sound
CODE_04F8B6:        8D 00 16      STA $1600                 ;/
CODE_04F8B9:        68            PLA                       ;
CODE_04F8BA:        4A            LSR A                     ;
CODE_04F8BB:        4A            LSR A                     ;
CODE_04F8BC:        4A            LSR A                     ;
CODE_04F8BD:        C9 03         CMP #$03                  ;
CODE_04F8BF:        90 02         BCC CODE_04F8C3           ;
CODE_04F8C1:        A9 03         LDA #$03                  ;
CODE_04F8C3:        48            PHA                       ;
CODE_04F8C4:        20 DC F8      JSR CODE_04F8DC           ;
CODE_04F8C7:        68            PLA                       ;
CODE_04F8C8:        C9 02         CMP #$02                  ;
CODE_04F8CA:        D0 0D         BNE CODE_04F8D9           ;
CODE_04F8CC:        AD A4 0B      LDA $0BA4                 ;
CODE_04F8CF:        D0 08         BNE CODE_04F8D9           ;
CODE_04F8D1:        A9 2B         LDA #$2B                  ;\
CODE_04F8D3:        8D 00 16      STA $1600                 ;/SMB2 pick up vegetable sound
CODE_04F8D6:        8D A4 0B      STA $0BA4                 ;
CODE_04F8D9:        4C D5 F9      JMP CODE_04F9D5           ;

CODE_04F8DC:        0A            ASL A                     ;
CODE_04F8DD:        0A            ASL A                     ;
CODE_04F8DE:        0A            ASL A                     ;
CODE_04F8DF:        AA            TAX                       ;
CODE_04F8E0:        A0 08         LDY #$08                  ;
CODE_04F8E2:        A9 88         LDA #$88                  ;
CODE_04F8E4:        99 00 09      STA $0900,y               ;
CODE_04F8E7:        99 08 09      STA $0908,y               ;
CODE_04F8EA:        A9 90         LDA #$90                  ;
CODE_04F8EC:        99 04 09      STA $0904,y               ;
CODE_04F8EF:        A9 B0         LDA #$B0                  ;
CODE_04F8F1:        99 01 09      STA $0901,y               ;
CODE_04F8F4:        99 05 09      STA $0905,y               ;
CODE_04F8F7:        A9 C0         LDA #$C0                  ;
CODE_04F8F9:        99 09 09      STA $0909,y               ;
CODE_04F8FC:        A9 80         LDA #$80                  ;
CODE_04F8FE:        99 02 09      STA $0902,y               ;
CODE_04F901:        1A            INC A                     ;
CODE_04F902:        99 06 09      STA $0906,y               ;
CODE_04F905:        A9 A0         LDA #$A0                  ;
CODE_04F907:        99 0A 09      STA $090A,y               ;
CODE_04F90A:        A9 2D         LDA #$2D                  ;
CODE_04F90C:        99 03 09      STA $0903,y               ;
CODE_04F90F:        99 07 09      STA $0907,y               ;
CODE_04F912:        99 0B 09      STA $090B,y               ;
CODE_04F915:        A0 00         LDY #$00                  ;
CODE_04F917:        BD B5 F9      LDA $F9B5,x               ;
CODE_04F91A:        99 00 09      STA $0900,y               ;
CODE_04F91D:        C8            INY                       ;
CODE_04F91E:        E8            INX                       ;
CODE_04F91F:        C0 08         CPY #$08                  ;
CODE_04F921:        90 F4         BCC CODE_04F917           ;
CODE_04F923:        A9 02         LDA #$02                  ;
CODE_04F925:        8D 00 0D      STA $0D00                 ;
CODE_04F928:        8D 04 0D      STA $0D04                 ;
CODE_04F92B:        8D 08 0D      STA $0D08                 ;
CODE_04F92E:        8D 0C 0D      STA $0D0C                 ;
CODE_04F931:        8D 10 0D      STA $0D10                 ;
CODE_04F934:        A9 7E         LDA #$7E                  ;
CODE_04F936:        18            CLC                       ;
CODE_04F937:        6D 7F 0F      ADC $0F7F                 ;
CODE_04F93A:        8D 1C 09      STA $091C                 ;
CODE_04F93D:        C9 88         CMP #$88                  ;
CODE_04F93F:        B0 04         BCS CODE_04F945           ;
CODE_04F941:        A9 F0         LDA #$F0                  ;
CODE_04F943:        80 02         BRA CODE_04F947           ;

CODE_04F945:        A9 C0         LDA #$C0                  ;
CODE_04F947:        8D 1D 09      STA $091D                 ;
CODE_04F94A:        A5 09         LDA $09                   ;
CODE_04F94C:        4A            LSR A                     ;
CODE_04F94D:        4A            LSR A                     ;
CODE_04F94E:        29 02         AND #$02                  ;
CODE_04F950:        85 01         STA $01                   ;
CODE_04F952:        18            CLC                       ;
CODE_04F953:        69 E6         ADC #$E6                  ;
CODE_04F955:        8D 1E 09      STA $091E                 ;
CODE_04F958:        A9 2D         LDA #$2D                  ;
CODE_04F95A:        8D 1F 09      STA $091F                 ;
CODE_04F95D:        A9 02         LDA #$02                  ;
CODE_04F95F:        8D 1C 0D      STA $0D1C                 ;
CODE_04F962:        A0 20         LDY #$20                  ;
CODE_04F964:        A2 06         LDX #$06                  ;
CODE_04F966:        A9 78         LDA #$78                  ;
CODE_04F968:        18            CLC                       ;
CODE_04F969:        6D 7F 0F      ADC $0F7F                 ;
CODE_04F96C:        85 00         STA $00                   ;
CODE_04F96E:        A5 00         LDA $00                   ;
CODE_04F970:        99 00 09      STA $0900,y               ;
CODE_04F973:        99 04 09      STA $0904,y               ;
CODE_04F976:        C9 91         CMP #$91                  ;
CODE_04F978:        B0 0A         BCS CODE_04F984           ;
CODE_04F97A:        A9 F0         LDA #$F0                  ;
CODE_04F97C:        99 01 09      STA $0901,y               ;
CODE_04F97F:        99 05 09      STA $0905,y               ;
CODE_04F982:        80 0A         BRA CODE_04F98E           ;

CODE_04F984:        A9 C0         LDA #$C0                  ;
CODE_04F986:        99 01 09      STA $0901,y               ;
CODE_04F989:        A9 C8         LDA #$C8                  ;
CODE_04F98B:        99 05 09      STA $0905,y               ;
CODE_04F98E:        A9 BA         LDA #$BA                  ;
CODE_04F990:        18            CLC                       ;
CODE_04F991:        65 01         ADC $01                   ;
CODE_04F993:        99 02 09      STA $0902,y               ;
CODE_04F996:        1A            INC A                     ;
CODE_04F997:        99 06 09      STA $0906,y               ;
CODE_04F99A:        A9 2D         LDA #$2D                  ;
CODE_04F99C:        99 03 09      STA $0903,y               ;
CODE_04F99F:        99 07 09      STA $0907,y               ;
CODE_04F9A2:        C8            INY                       ;
CODE_04F9A3:        C8            INY                       ;
CODE_04F9A4:        C8            INY                       ;
CODE_04F9A5:        C8            INY                       ;
CODE_04F9A6:        C8            INY                       ;
CODE_04F9A7:        C8            INY                       ;
CODE_04F9A8:        C8            INY                       ;
CODE_04F9A9:        C8            INY                       ;
CODE_04F9AA:        A5 00         LDA $00                   ;
CODE_04F9AC:        38            SEC                       ;
CODE_04F9AD:        E9 0A         SBC #$0A                  ;
CODE_04F9AF:        85 00         STA $00                   ;
CODE_04F9B1:        CA            DEX                       ;
CODE_04F9B2:        D0 BA         BNE CODE_04F96E           ;
CODE_04F9B4:        60            RTS                       ;

DATA_04F9B5:        db $98,$C0,$E4,$2D,$90,$C0,$A1,$2D
                    db $99,$BF,$E4,$2D,$90,$C0,$A1,$2D
                    db $9B,$BF,$E2,$2D,$90,$C0,$E0,$2D
                    db $90,$C0,$E0,$2D,$90,$C0,$E0,$2D

CODE_04F9D5:        AD A6 0B      LDA $0BA6                 ;
CODE_04F9D8:        F0 07         BEQ CODE_04F9E1           ;
CODE_04F9DA:        30 1C         BMI CODE_04F9F8           ;
CODE_04F9DC:        CE A6 0B      DEC $0BA6                 ;
CODE_04F9DF:        80 17         BRA CODE_04F9F8           ;

CODE_04F9E1:        AD A7 0B      LDA $0BA7                 ;
CODE_04F9E4:        D0 12         BNE CODE_04F9F8           ;
CODE_04F9E6:        EE A7 0B      INC $0BA7                 ;
CODE_04F9E9:        A9 B8         LDA #$B8                  ;
CODE_04F9EB:        8D CE 03      STA $03CE                 ;
CODE_04F9EE:        AD 54 07      LDA $0754                 ;
CODE_04F9F1:        D0 05         BNE CODE_04F9F8           ;
CODE_04F9F3:        A9 C8         LDA #$C8                  ;
CODE_04F9F5:        8D CE 03      STA $03CE                 ;
CODE_04F9F8:        7A            PLY                       ;
CODE_04F9F9:        FA            PLX                       ;
CODE_04F9FA:        AB            PLB                       ;
CODE_04F9FB:        6B            RTL                       ;

CODE_04F9FC:        DA            PHX                       ;
CODE_04F9FD:        85 02         STA $02                   ;
CODE_04F9FF:        0A            ASL A                     ;
CODE_04FA00:        18            CLC                       ;
CODE_04FA01:        65 02         ADC $02                   ;
CODE_04FA03:        AA            TAX                       ;
CODE_04FA04:        A5 00         LDA $00                   ;
CODE_04FA06:        99 00 09      STA $0900,y               ;
CODE_04FA09:        99 08 09      STA $0908,y               ;
CODE_04FA0C:        18            CLC                       ;
CODE_04FA0D:        69 08         ADC #$08                  ;
CODE_04FA0F:        99 04 09      STA $0904,y               ;
CODE_04FA12:        A5 01         LDA $01                   ;
CODE_04FA14:        99 01 09      STA $0901,y               ;
CODE_04FA17:        99 05 09      STA $0905,y               ;
CODE_04FA1A:        18            CLC                       ;
CODE_04FA1B:        69 08         ADC #$08                  ;
CODE_04FA1D:        99 09 09      STA $0909,y               ;
CODE_04FA20:        BD 4B FA      LDA $FA4B,x               ;
CODE_04FA23:        99 02 09      STA $0902,y               ;
CODE_04FA26:        BD 4C FA      LDA $FA4C,x               ;
CODE_04FA29:        99 06 09      STA $0906,y               ;
CODE_04FA2C:        BD 4D FA      LDA $FA4D,x               ;
CODE_04FA2F:        99 0A 09      STA $090A,y               ;
CODE_04FA32:        BD 63 FA      LDA $FA63,x               ;
CODE_04FA35:        99 03 09      STA $0903,y               ;
CODE_04FA38:        BD 64 FA      LDA $FA64,x               ;
CODE_04FA3B:        99 07 09      STA $0907,y               ;
CODE_04FA3E:        BD 65 FA      LDA $FA65,x               ;
CODE_04FA41:        99 0B 09      STA $090B,y               ;
CODE_04FA44:        A9 02         LDA #$02                  ;
CODE_04FA46:        99 08 0D      STA $0D08,y               ;
CODE_04FA49:        FA            PLX                       ;
CODE_04FA4A:        60            RTS                       ;

DATA_04FA4B:        db $B6,$B6,$C9,$B7,$B7,$CB,$B8,$B9
                    db $EC,$B9,$B8,$EC,$E3,$E2,$E4,$F3
                    db $F2,$E6,$E2,$E3,$E4,$F2,$F3,$E6

DATA_04FA63:        db $2D,$6D,$2D,$2D,$6D,$2D,$2D,$2D
                    db $2D,$6D,$6D,$6D,$6D,$6D,$6D,$6D
                    db $6D,$6D,$2D,$2D,$2D,$2D,$2D,$2D

CODE_04FA7B:        CE 7D 0F      DEC $0F7D                 ;
CODE_04FA7E:        AD 7D 0F      LDA $0F7D                 ;
CODE_04FA81:        10 08         BPL CODE_04FA8B           ;
CODE_04FA83:        EE 7F 0F      INC $0F7F                 ;
CODE_04FA86:        A9 07         LDA #$07                  ;
CODE_04FA88:        8D 7D 0F      STA $0F7D                 ;
CODE_04FA8B:        AD 7F 0F      LDA $0F7F                 ;
CODE_04FA8E:        C9 03         CMP #$03                  ;
CODE_04FA90:        90 05         BCC CODE_04FA97           ;
CODE_04FA92:        A9 03         LDA #$03                  ;
CODE_04FA94:        8D 7F 0F      STA $0F7F                 ;
CODE_04FA97:        DA            PHX                       ;
CODE_04FA98:        0A            ASL A                     ;
CODE_04FA99:        AA            TAX                       ;
CODE_04FA9A:        BD A7 FA      LDA $FAA7,x               ;
CODE_04FA9D:        85 00         STA $00                   ;
CODE_04FA9F:        BD A8 FA      LDA $FAA8,x               ;
CODE_04FAA2:        85 01         STA $01                   ;
CODE_04FAA4:        6C 00 00      JMP ($0000)               ;

PNTR_04FAA7:        dw CODE_04FAAF
                    dw CODE_04FB18
                    dw CODE_04FB5E
                    dw CODE_04FB77

CODE_04FAAF:        A9 94         LDA #$94                  ;
CODE_04FAB1:        8D 58 09      STA $0958                 ;
CODE_04FAB4:        A9 BB         LDA #$BB                  ;
CODE_04FAB6:        8D 59 09      STA $0959                 ;
CODE_04FAB9:        A9 C0         LDA #$C0                  ;
CODE_04FABB:        8D 5A 09      STA $095A                 ;
CODE_04FABE:        A9 2D         LDA #$2D                  ;
CODE_04FAC0:        8D 5B 09      STA $095B                 ;
CODE_04FAC3:        A9 02         LDA #$02                  ;
CODE_04FAC5:        8D 58 0D      STA $0D58                 ;
CODE_04FAC8:        A9 88         LDA #$88                  ;
CODE_04FACA:        8D 60 09      STA $0960                 ;
CODE_04FACD:        8D 70 09      STA $0970                 ;
CODE_04FAD0:        A9 90         LDA #$90                  ;
CODE_04FAD2:        8D 64 09      STA $0964                 ;
CODE_04FAD5:        8D 74 09      STA $0974                 ;
CODE_04FAD8:        A9 C0         LDA #$C0                  ;
CODE_04FADA:        8D 71 09      STA $0971                 ;
CODE_04FADD:        8D 75 09      STA $0975                 ;
CODE_04FAE0:        A9 9C         LDA #$9C                  ;
CODE_04FAE2:        8D 72 09      STA $0972                 ;
CODE_04FAE5:        1A            INC A                     ;
CODE_04FAE6:        8D 76 09      STA $0976                 ;
CODE_04FAE9:        A9 B8         LDA #$B8                  ;
CODE_04FAEB:        8D 61 09      STA $0961                 ;
CODE_04FAEE:        8D 65 09      STA $0965                 ;
CODE_04FAF1:        A9 8C         LDA #$8C                  ;
CODE_04FAF3:        8D 62 09      STA $0962                 ;
CODE_04FAF6:        1A            INC A                     ;
CODE_04FAF7:        8D 66 09      STA $0966                 ;
CODE_04FAFA:        A9 2D         LDA #$2D                  ;
CODE_04FAFC:        8D 73 09      STA $0973                 ;
CODE_04FAFF:        8D 77 09      STA $0977                 ;
CODE_04FB02:        8D 63 09      STA $0963                 ;
CODE_04FB05:        8D 67 09      STA $0967                 ;
CODE_04FB08:        A9 02         LDA #$02                  ;
CODE_04FB0A:        8D 70 0D      STA $0D70                 ;
CODE_04FB0D:        8D 74 0D      STA $0D74                 ;
CODE_04FB10:        8D 60 0D      STA $0D60                 ;
CODE_04FB13:        8D 64 0D      STA $0D64                 ;
CODE_04FB16:        FA            PLX                       ;
CODE_04FB17:        60            RTS                       ;

CODE_04FB18:        A9 9A         LDA #$9A                  ;
CODE_04FB1A:        8D 58 09      STA $0958                 ;
CODE_04FB1D:        A9 BE         LDA #$BE                  ;
CODE_04FB1F:        8D 59 09      STA $0959                 ;
CODE_04FB22:        A9 C2         LDA #$C2                  ;
CODE_04FB24:        8D 5A 09      STA $095A                 ;
CODE_04FB27:        A9 2D         LDA #$2D                  ;
CODE_04FB29:        8D 5B 09      STA $095B                 ;
CODE_04FB2C:        A9 02         LDA #$02                  ;
CODE_04FB2E:        8D 58 0D      STA $0D58                 ;
CODE_04FB31:        A9 88         LDA #$88                  ;
CODE_04FB33:        8D 70 09      STA $0970                 ;
CODE_04FB36:        A9 90         LDA #$90                  ;
CODE_04FB38:        8D 74 09      STA $0974                 ;
CODE_04FB3B:        A9 C0         LDA #$C0                  ;
CODE_04FB3D:        8D 71 09      STA $0971                 ;
CODE_04FB40:        8D 75 09      STA $0975                 ;
CODE_04FB43:        A9 99         LDA #$99                  ;
CODE_04FB45:        8D 72 09      STA $0972                 ;
CODE_04FB48:        1A            INC A                     ;
CODE_04FB49:        8D 76 09      STA $0976                 ;
CODE_04FB4C:        A9 2D         LDA #$2D                  ;
CODE_04FB4E:        8D 73 09      STA $0973                 ;
CODE_04FB51:        8D 77 09      STA $0977                 ;
CODE_04FB54:        A9 02         LDA #$02                  ;
CODE_04FB56:        8D 70 0D      STA $0D70                 ;
CODE_04FB59:        8D 74 0D      STA $0D74                 ;
CODE_04FB5C:        FA            PLX                       ;
CODE_04FB5D:        60            RTS                       ;

CODE_04FB5E:        A9 9C         LDA #$9C                  ;
CODE_04FB60:        8D 58 09      STA $0958                 ;
CODE_04FB63:        A9 C1         LDA #$C1                  ;
CODE_04FB65:        8D 59 09      STA $0959                 ;
CODE_04FB68:        A9 C4         LDA #$C4                  ;
CODE_04FB6A:        8D 5A 09      STA $095A                 ;
CODE_04FB6D:        A9 2D         LDA #$2D                  ;
CODE_04FB6F:        8D 5B 09      STA $095B                 ;
CODE_04FB72:        A9 02         LDA #$02                  ;
CODE_04FB74:        8D 58 0D      STA $0D58                 ;
CODE_04FB77:        A9 88         LDA #$88                  ;
CODE_04FB79:        8D 70 09      STA $0970                 ;
CODE_04FB7C:        A9 90         LDA #$90                  ;
CODE_04FB7E:        8D 74 09      STA $0974                 ;
CODE_04FB81:        A9 C0         LDA #$C0                  ;
CODE_04FB83:        8D 71 09      STA $0971                 ;
CODE_04FB86:        8D 75 09      STA $0975                 ;
CODE_04FB89:        A9 C6         LDA #$C6                  ;
CODE_04FB8B:        8D 72 09      STA $0972                 ;
CODE_04FB8E:        1A            INC A                     ;
CODE_04FB8F:        8D 76 09      STA $0976                 ;
CODE_04FB92:        A9 2D         LDA #$2D                  ;
CODE_04FB94:        8D 73 09      STA $0973                 ;
CODE_04FB97:        8D 77 09      STA $0977                 ;
CODE_04FB9A:        A9 02         LDA #$02                  ;
CODE_04FB9C:        8D 70 0D      STA $0D70                 ;
CODE_04FB9F:        8D 74 0D      STA $0D74                 ;
CODE_04FBA2:        FA            PLX                       ;
CODE_04FBA3:        60            RTS                       ;

CODE_04FBA4:        A9 0F         LDA #$0F                  ;\
CODE_04FBA6:        8D 00 16      STA $1600                 ;/SMW hit during cape flight sound
CODE_04FBA9:        AD 54 07      LDA $0754                 ;
CODE_04FBAC:        49 01         EOR #$01                  ;
CODE_04FBAE:        0A            ASL A                     ;
CODE_04FBAF:        0A            ASL A                     ;
CODE_04FBB0:        0A            ASL A                     ;
CODE_04FBB1:        0A            ASL A                     ;
CODE_04FBB2:        18            CLC                       ;
CODE_04FBB3:        69 E0         ADC #$E0                  ;
CODE_04FBB5:        18            CLC                       ;
CODE_04FBB6:        69 08         ADC #$08                  ;
CODE_04FBB8:        8D CE 03      STA $03CE                 ;
CODE_04FBBB:        A0 9C         LDY #$9C                  ;
CODE_04FBBD:        A9 0B         LDA #$0B                  ;
CODE_04FBBF:        85 01         STA $01                   ;
CODE_04FBC1:        64 00         STZ $00                   ;
CODE_04FBC3:        A9 00         LDA #$00                  ;
CODE_04FBC5:        91 00         STA ($00),y               ;
CODE_04FBC7:        C8            INY                       ;
CODE_04FBC8:        C0 BF         CPY #$BF                  ;
CODE_04FBCA:        D0 F9         BNE CODE_04FBC5           ;
CODE_04FBCC:        EE 9C 0B      INC $0B9C                 ;
CODE_04FBCF:        CE A6 0B      DEC $0BA6                 ;
CODE_04FBD2:        AD 5F 07      LDA $075F                 ;
CODE_04FBD5:        0A            ASL A                     ;
CODE_04FBD6:        AA            TAX                       ;
CODE_04FBD7:        BD E4 FB      LDA $FBE4,x               ;
CODE_04FBDA:        85 00         STA $00                   ;
CODE_04FBDC:        BD E5 FB      LDA $FBE5,x               ;
CODE_04FBDF:        85 01         STA $01                   ;
CODE_04FBE1:        6C 00 00      JMP ($0000)               ;

PNTR_04FBE4:        dw CODE_04FBFE
                    dw CODE_04FC26
                    dw CODE_04FC4E
                    dw CODE_04FC7C
                    dw CODE_04FCAE
                    dw CODE_04FCD4
                    dw CODE_04FCEE
                    dw CODE_04FBFE
                    dw CODE_04FBFE
                    dw CODE_04FCAE
                    dw CODE_04FCD4
                    dw CODE_04FCEE
                    dw CODE_04FBFE

CODE_04FBFE:        AD 1A 02      LDA $021A                 ;
CODE_04FC01:        38            SEC                       ;
CODE_04FC02:        E9 04         SBC #$04                  ;
CODE_04FC04:        8D 1A 02      STA $021A                 ;
CODE_04FC07:        AD AE 03      LDA $03AE                 ;
CODE_04FC0A:        38            SEC                       ;
CODE_04FC0B:        E9 04         SBC #$04                  ;
CODE_04FC0D:        8D AE 03      STA $03AE                 ;
CODE_04FC10:        A9 08         LDA #$08                  ;
CODE_04FC12:        8D 7D 0F      STA $0F7D                 ;
CODE_04FC15:        A9 01         LDA #$01                  ;
CODE_04FC17:        8D 01 16      STA $1601                 ;
CODE_04FC1A:        A9 FE         LDA #$FE                  ;
CODE_04FC1C:        8D A1 00      STA $00A1                 ;
CODE_04FC1F:        9C 3D 04      STZ $043D                 ;
CODE_04FC22:        9C 1D 04      STZ $041D                 ;
CODE_04FC25:        60            RTS                       ;

CODE_04FC26:        AD 1A 02      LDA $021A                 ;
CODE_04FC29:        38            SEC                       ;
CODE_04FC2A:        E9 0C         SBC #$0C                  ;
CODE_04FC2C:        8D 1A 02      STA $021A                 ;
CODE_04FC2F:        AD AE 03      LDA $03AE                 ;
CODE_04FC32:        38            SEC                       ;
CODE_04FC33:        E9 0C         SBC #$0C                  ;
CODE_04FC35:        8D AE 03      STA $03AE                 ;
CODE_04FC38:        A9 08         LDA #$08                  ;
CODE_04FC3A:        8D 7D 0F      STA $0F7D                 ;
CODE_04FC3D:        A9 01         LDA #$01                  ;
CODE_04FC3F:        8D 01 16      STA $1601                 ;
CODE_04FC42:        A9 FE         LDA #$FE                  ;
CODE_04FC44:        8D A1 00      STA $00A1                 ;
CODE_04FC47:        9C 3D 04      STZ $043D                 ;
CODE_04FC4A:        9C 1D 04      STZ $041D                 ;
CODE_04FC4D:        60            RTS                       ;

CODE_04FC4E:        AD 1A 02      LDA $021A                 ;
CODE_04FC51:        38            SEC                       ;
CODE_04FC52:        E9 04         SBC #$04                  ;
CODE_04FC54:        8D 1A 02      STA $021A                 ;
CODE_04FC57:        AD AE 03      LDA $03AE                 ;
CODE_04FC5A:        38            SEC                       ;
CODE_04FC5B:        E9 04         SBC #$04                  ;
CODE_04FC5D:        8D AE 03      STA $03AE                 ;
CODE_04FC60:        A9 08         LDA #$08                  ;
CODE_04FC62:        8D 7D 0F      STA $0F7D                 ;
CODE_04FC65:        9C 1D 02      STZ $021D                 ;
CODE_04FC68:        A9 01         LDA #$01                  ;
CODE_04FC6A:        8D 01 16      STA $1601                 ;
CODE_04FC6D:        A9 FE         LDA #$FE                  ;
CODE_04FC6F:        8D A1 00      STA $00A1                 ;
CODE_04FC72:        9C 3D 04      STZ $043D                 ;
CODE_04FC75:        9C 1D 04      STZ $041D                 ;
CODE_04FC78:        9C A0 0B      STZ $0BA0                 ;
CODE_04FC7B:        60            RTS                       ;

CODE_04FC7C:        AD 1A 02      LDA $021A                 ;
CODE_04FC7F:        38            SEC                       ;
CODE_04FC80:        E9 04         SBC #$04                  ;
CODE_04FC82:        8D 1A 02      STA $021A                 ;
CODE_04FC85:        AD AE 03      LDA $03AE                 ;
CODE_04FC88:        38            SEC                       ;
CODE_04FC89:        E9 04         SBC #$04                  ;
CODE_04FC8B:        8D AE 03      STA $03AE                 ;
CODE_04FC8E:        8D B0 0B      STA $0BB0                 ;
CODE_04FC91:        8D B1 0B      STA $0BB1                 ;
CODE_04FC94:        8D B2 0B      STA $0BB2                 ;
CODE_04FC97:        8D B3 0B      STA $0BB3                 ;
CODE_04FC9A:        A9 01         LDA #$01                  ;
CODE_04FC9C:        8D 01 16      STA $1601                 ;
CODE_04FC9F:        A9 FE         LDA #$FE                  ;
CODE_04FCA1:        8D A1 00      STA $00A1                 ;
CODE_04FCA4:        9C 3D 04      STZ $043D                 ;
CODE_04FCA7:        9C 1D 04      STZ $041D                 ;
CODE_04FCAA:        9C 67 0E      STZ $0E67                 ;
CODE_04FCAD:        60            RTS                       ;

CODE_04FCAE:        AD 1A 02      LDA $021A                 ;
CODE_04FCB1:        38            SEC                       ;
CODE_04FCB2:        E9 0C         SBC #$0C                  ;
CODE_04FCB4:        8D 1A 02      STA $021A                 ;
CODE_04FCB7:        AD 38 02      LDA $0238                 ;
CODE_04FCBA:        38            SEC                       ;
CODE_04FCBB:        E9 0C         SBC #$0C                  ;
CODE_04FCBD:        8D 38 02      STA $0238                 ;
CODE_04FCC0:        A9 01         LDA #$01                  ;
CODE_04FCC2:        8D 01 16      STA $1601                 ;
CODE_04FCC5:        A9 FE         LDA #$FE                  ;
CODE_04FCC7:        8D 9E 0B      STA $0B9E                 ;
CODE_04FCCA:        8D A1 00      STA $00A1                 ;
CODE_04FCCD:        9C 3D 04      STZ $043D                 ;
CODE_04FCD0:        9C 1D 04      STZ $041D                 ;
CODE_04FCD3:        60            RTS                       ;

CODE_04FCD4:        AD 1A 02      LDA $021A                 ;
CODE_04FCD7:        38            SEC                       ;
CODE_04FCD8:        E9 0C         SBC #$0C                  ;
CODE_04FCDA:        8D 1A 02      STA $021A                 ;
CODE_04FCDD:        A9 01         LDA #$01                  ;
CODE_04FCDF:        8D 01 16      STA $1601                 ;
CODE_04FCE2:        A9 FD         LDA #$FD                  ;
CODE_04FCE4:        8D A1 00      STA $00A1                 ;
CODE_04FCE7:        9C 3D 04      STZ $043D                 ;
CODE_04FCEA:        9C 1D 04      STZ $041D                 ;
CODE_04FCED:        60            RTS                       ;

CODE_04FCEE:        9C 00 16      STZ $1600                 ;
CODE_04FCF1:        A9 FE         LDA #$FE                  ;
CODE_04FCF3:        8D A1 00      STA $00A1                 ;
CODE_04FCF6:        9C 3D 04      STZ $043D                 ;
CODE_04FCF9:        9C 1D 04      STZ $041D                 ;
CODE_04FCFC:        60            RTS                       ;

CODE_04FCFD:        C2 20         REP #$20                  ;
CODE_04FCFF:        38            SEC                       ;
CODE_04FD00:        E9 08 00      SBC #$0008                ;
CODE_04FD03:        38            SEC                       ;
CODE_04FD04:        ED 42 00      SBC $0042                 ;
CODE_04FD07:        85 01         STA $01                   ;
CODE_04FD09:        E2 20         SEP #$20                  ;
CODE_04FD0B:        99 00 09      STA $0900,y               ;
CODE_04FD0E:        99 08 09      STA $0908,y               ;
CODE_04FD11:        A9 2D         LDA #$2D                  ;
CODE_04FD13:        99 03 09      STA $0903,y               ;
CODE_04FD16:        99 0B 09      STA $090B,y               ;
CODE_04FD19:        EB            XBA                       ;
CODE_04FD1A:        C9 00         CMP #$00                  ;
CODE_04FD1C:        F0 02         BEQ CODE_04FD20           ;
CODE_04FD1E:        A9 01         LDA #$01                  ;
CODE_04FD20:        09 02         ORA #$02                  ;
CODE_04FD22:        99 00 0D      STA $0D00,y               ;
CODE_04FD25:        99 08 0D      STA $0D08,y               ;
CODE_04FD28:        60            RTS                       ;

CODE_04FD29:        AD CE 03      LDA $03CE                 ;
CODE_04FD2C:        C9 D0         CMP #$D0                  ;
CODE_04FD2E:        90 12         BCC CODE_04FD42           ;
CODE_04FD30:        29 08         AND #$08                  ;
CODE_04FD32:        F0 0E         BEQ CODE_04FD42           ;
CODE_04FD34:        AD CE 03      LDA $03CE                 ;
CODE_04FD37:        38            SEC                       ;
CODE_04FD38:        E9 08         SBC #$08                  ;
CODE_04FD3A:        8D CE 03      STA $03CE                 ;
CODE_04FD3D:        A9 30         LDA #$30                  ;
CODE_04FD3F:        8D A6 0B      STA $0BA6                 ;
CODE_04FD42:        60            RTS                       ;

CODE_04FD43:        AD EE 0E      LDA $0EEE                 ;
CODE_04FD46:        F0 04         BEQ CODE_04FD4C           ;
CODE_04FD48:        CE EE 0E      DEC $0EEE                 ;
CODE_04FD4B:        60            RTS                       ;

CODE_04FD4C:        AD A3 0B      LDA $0BA3                 ;
CODE_04FD4F:        C9 C0         CMP #$C0                  ;
CODE_04FD51:        B0 0E         BCS CODE_04FD61           ;
CODE_04FD53:        EE A3 0B      INC $0BA3                 ;
CODE_04FD56:        AD A3 0B      LDA $0BA3                 ;
CODE_04FD59:        C9 C0         CMP #$C0                  ;
CODE_04FD5B:        D0 03         BNE CODE_04FD60           ;
CODE_04FD5D:        20 74 FD      JSR CODE_04FD74           ;
CODE_04FD60:        60            RTS                       ;

CODE_04FD61:        22 00 86 04   JSL CODE_048600           ;
CODE_04FD65:        60            RTS                       ;

CODE_04FD66:        AD A4 0B      LDA $0BA4                 ;
CODE_04FD69:        D0 08         BNE CODE_04FD73           ;
CODE_04FD6B:        A9 01         LDA #$01                  ;
CODE_04FD6D:        8D 01 16      STA $1601                 ;
CODE_04FD70:        8D A4 0B      STA $0BA4                 ;
CODE_04FD73:        60            RTS                       ;

CODE_04FD74:        C2 20         REP #$20                  ;\
CODE_04FD76:        0B            PHD                       ; |16-bit A
CODE_04FD77:        A9 00 17      LDA #$1700                ; |Direct page = $7E:1700
CODE_04FD7A:        5B            TCD                       ;/
CODE_04FD7B:        A9 5A F1      LDA #$F15A                ;
CODE_04FD7E:        85 02         STA $02                   ;
CODE_04FD80:        A9 00 13      LDA #$1300                ;
CODE_04FD83:        85 04         STA $04                   ;
CODE_04FD85:        A9 19 00      LDA #$0019                ;"P" With no properties
CODE_04FD88:        85 06         STA $06                   ;
CODE_04FD8A:        A9 1E 00      LDA #$001E                ;"U" With no properties
CODE_04FD8D:        85 08         STA $08                   ;
CODE_04FD8F:        A9 1C 00      LDA #$001C                ;"S" With no properties
CODE_04FD92:        85 0A         STA $0A                   ;
CODE_04FD94:        A9 11 00      LDA #$0011                ;"H" With no properties
CODE_04FD97:        85 0C         STA $0C                   ;
CODE_04FD99:        A9 28 00      LDA #$0028                ;" " With no properties
CODE_04FD9C:        85 0E         STA $0E                   ;
CODE_04FD9E:        A9 1C 00      LDA #$001C                ;"S" With no properties
CODE_04FDA1:        85 10         STA $10                   ;
CODE_04FDA3:        A9 1D 00      LDA #$001D                ;"T" With no properties
CODE_04FDA6:        85 12         STA $12                   ;
CODE_04FDA8:        A9 0A 00      LDA #$000A                ;"A" With no properties
CODE_04FDAB:        85 14         STA $14                   ;
CODE_04FDAD:        A9 1B 00      LDA #$001B                ;"R" With no properties
CODE_04FDB0:        85 16         STA $16                   ;
CODE_04FDB2:        A9 1D 00      LDA #$001D                ;"T" With no properties
CODE_04FDB5:        85 18         STA $18                   ;
CODE_04FDB7:        E2 20         SEP #$20                  ;
CODE_04FDB9:        A9 FF         LDA #$FF                  ;"End of tilemap marker" byte (?)
CODE_04FDBB:        85 1A         STA $1A                   ;
CODE_04FDBD:        2B            PLD                       ;
CODE_04FDBE:        A9 15         LDA #$15                  ;\"Push start" SFX at princess rescued sequence
CODE_04FDC0:        8D 03 16      STA $1603                 ;/
CODE_04FDC3:        60            RTS                       ;Return

;;
;; Duplicate code of $00C000 ends here
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

CODE_04FDC4:        9C 3F 07      STZ $073F                 ;Store zero to BG1 X-scrolling
CODE_04FDC7:        9C 40 07      STZ $0740                 ;Store zero to BG1 Y-scrolling
CODE_04FDCA:        9C 0D 21      STZ $210D                 ;Store zero to BG1 X-scrolling
CODE_04FDCD:        9C 0D 21      STZ $210D                 ;Store zero to BG1 X-scrolling
CODE_04FDD0:        9C 0E 21      STZ $210E                 ;Store zero to BG1 Y-scrolling
CODE_04FDD3:        9C 0E 21      STZ $210E                 ;Store zero to BG1 Y-scrolling
CODE_04FDD6:        9C 0F 21      STZ $210F                 ;Store zero to BG2 X-scrolling
CODE_04FDD9:        9C 0F 21      STZ $210F                 ;Store zero to BG2 X-scrolling
CODE_04FDDC:        9C 10 21      STZ $2110                 ;Store zero to BG2 Y-scrolling
CODE_04FDDF:        9C 10 21      STZ $2110                 ;Store zero to BG2 Y-scrolling
CODE_04FDE2:        9C 11 21      STZ $2111                 ;Store zero to BG3 X-scrolling
CODE_04FDE5:        9C 11 21      STZ $2111                 ;Store zero to BG3 X-scrolling
CODE_04FDE8:        9C 12 21      STZ $2112                 ;Store zero to BG3 Y-scrolling
CODE_04FDEB:        9C 12 21      STZ $2112                 ;Store zero to BG3 Y-scrolling
CODE_04FDEE:        6B            RTL                       ;Return

DATA_04FDEF:        db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;Empty Data, I am sure.
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;BANK 4 FINISHED.
                    db $FF
