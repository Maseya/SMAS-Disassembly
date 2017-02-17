;Super Mario Bros. 3

CODE_208000:        4C 16 A1      JMP CODE_20A116           ; Entry point of SMB3's game start routine (includes piracy check)

CODE_208003:        4C 00 F0      JMP CODE_20F000           ;Entry point of SMB3's NMI

CODE_208006:        4C 04 F3      JMP CODE_20F304           ;Entry point of SMB3's IRQ

DATA_208009:        db $20,$20,$21,$21,$22,$22,$23,$23
                    db $24,$24,$25,$25,$26,$26,$27,$27
                    db $28,$28,$29,$29,$2A,$2A                   

CODE_20801F:        A5 28         LDA $28                   
CODE_208021:        85 36         STA $36                   
CODE_208023:        0A            ASL A                     
CODE_208024:        18            CLC                       
CODE_208025:        65 36         ADC $36                   
CODE_208027:        A8            TAY                       
CODE_208028:        8B            PHB                       
CODE_208029:        A9 22         LDA #$22                  
CODE_20802B:        48            PHA                       
CODE_20802C:        AB            PLB                       
CODE_20802D:        B9 5C 8B      LDA.w PNTR_228B5C,y               
CODE_208030:        85 36         STA $36                   
CODE_208032:        B9 5D 8B      LDA.w PNTR_228B5C+1,y               
CODE_208035:        85 37         STA $37                   
CODE_208037:        B9 5E 8B      LDA.w PNTR_228B5C+2,y               
CODE_20803A:        85 38         STA $38                   
CODE_20803C:        AB            PLB                       
CODE_20803D:        A9 01         LDA #$01                  
CODE_20803F:        85 1C         STA $1C                   
CODE_208041:        9C 54 01      STZ $0154                 
CODE_208044:        AD 54 01      LDA $0154                 
CODE_208047:        10 FB         BPL CODE_208044           
CODE_208049:        64 1C         STZ $1C                   
CODE_20804B:        58            CLI                       
CODE_20804C:        60            RTS                       

CODE_20804D:        20 1F 80      JSR CODE_20801F           
CODE_208050:        6B            RTL                       

CODE_208051:        A9 1F         LDA #$1F                  
CODE_208053:        8F 68 39 7E   STA $7E3968               
CODE_208057:        A9 40         LDA #$40                  
CODE_208059:        8F 69 39 7E   STA $7E3969               
CODE_20805D:        A9 01         LDA #$01                  
CODE_20805F:        8D 03 15      STA $1503                 
CODE_208062:        9C 03 01      STZ $0103                 
CODE_208065:        A9 00         LDA #$00                  
CODE_208067:        8F 03 FF 7F   STA $7FFF03               
CODE_20806B:        A9 FF         LDA #$FF                  
CODE_20806D:        8F 02 16 00   STA $001602               
CODE_208071:        8F 03 16 00   STA $001603               
CODE_208075:        A9 02         LDA #$02                  
CODE_208077:        85 36         STA $36                   
CODE_208079:        A9 16         LDA #$16                  
CODE_20807B:        85 37         STA $37                   
CODE_20807D:        EE 54 01      INC $0154                 
CODE_208080:        A9 81         LDA #$81                  
CODE_208082:        8D 00 42      STA $4200                 
CODE_208085:        8D 00 21      STA $2100                 
CODE_208088:        85 16         STA $16                   
CODE_20808A:        22 A9 E0 22   JSL CODE_22E0A9           
CODE_20808E:        20 EB F9      JSR CODE_20F9EB           
CODE_208091:        A9 5C         LDA #$5C                  
CODE_208093:        85 00         STA $00                   
CODE_208095:        64 01         STZ $01                   
CODE_208097:        20 0A FA      JSR CODE_20FA0A           
CODE_20809A:        A9 20         LDA #$20                  
CODE_20809C:        8D 00 01      STA $0100                 
CODE_20809F:        8D 01 01      STA $0101                 
CODE_2080A2:        A9 01         LDA #$01                  
CODE_2080A4:        8D D7 02      STA $02D7                 
CODE_2080A7:        A9 15         LDA #$15                  ;\
CODE_2080A9:        8D 02 12      STA $1202                 ;/Title screen music
CODE_2080AC:        20 FE B0      JSR CODE_20B0FE           
CODE_2080AF:        AD 2B 07      LDA $072B                 
CODE_2080B2:        C9 03         CMP #$03                  
CODE_2080B4:        D0 03         BNE CODE_2080B9           
CODE_2080B6:        4C D0 A2      JMP CODE_20A2D0           

CODE_2080B9:        22 00 A7 29   JSL CODE_29A700           
CODE_2080BD:        9C 29 07      STZ $0729                 
CODE_2080C0:        9C E3 07      STZ $07E3                 
CODE_2080C3:        9C 2F 1F      STZ $1F2F                 
CODE_2080C6:        A9 00         LDA #$00                  
CODE_2080C8:        8F 6E 39 7E   STA $7E396E               
CODE_2080CC:        8F 6F 39 7E   STA $7E396F               
CODE_2080D0:        A9 F8         LDA #$F8                  
CODE_2080D2:        85 95         STA $95                   
CODE_2080D4:        AF 55 39 7E   LDA $7E3955               
CODE_2080D8:        1A            INC A                     
CODE_2080D9:        8F 55 39 7E   STA $7E3955               
CODE_2080DD:        A2 7F         LDX #$7F                  
CODE_2080DF:        9E 00 1D      STZ $1D00,x               
CODE_2080E2:        CA            DEX                       
CODE_2080E3:        10 FA         BPL CODE_2080DF           
CODE_2080E5:        9C 00 42      STZ $4200                 
CODE_2080E8:        AD 03 15      LDA $1503                 
CODE_2080EB:        F0 04         BEQ CODE_2080F1           
CODE_2080ED:        22 63 8B 00   JSL CODE_008B63           
CODE_2080F1:        9C 03 15      STZ $1503                 
CODE_2080F4:        22 A9 E0 22   JSL CODE_22E0A9           
CODE_2080F8:        20 EB F9      JSR CODE_20F9EB           
CODE_2080FB:        A9 FF         LDA #$FF                  
CODE_2080FD:        85 00         STA $00                   
CODE_2080FF:        64 01         STZ $01                   
CODE_208101:        20 0A FA      JSR CODE_20FA0A           
CODE_208104:        A9 0B         LDA #$0B                  
CODE_208106:        8D 0B 07      STA $070B                 
CODE_208109:        A9 35         LDA #$35                  
CODE_20810B:        8D 0C 07      STA $070C                 
CODE_20810E:        9C 0A 07      STZ $070A                 
CODE_208111:        9C 2C 07      STZ $072C                 
CODE_208114:        9C 3C 05      STZ $053C                 
CODE_208117:        9C 01 01      STZ $0101                 
CODE_20811A:        9C 51 03      STZ $0351                 
CODE_20811D:        9C CC 02      STZ $02CC                 
CODE_208120:        9C CD 02      STZ $02CD                 
CODE_208123:        9C CE 02      STZ $02CE                 
CODE_208126:        9C CF 02      STZ $02CF                 
CODE_208129:        9C 43 02      STZ $0243                 
CODE_20812C:        9C D9 02      STZ $02D9                 
CODE_20812F:        9C E0 02      STZ $02E0                 
CODE_208132:        9C E1 02      STZ $02E1                 
CODE_208135:        A9 00         LDA #$00                  
CODE_208137:        8F 55 39 7E   STA $7E3955               
CODE_20813B:        8F 22 C5 7F   STA $7FC522               
CODE_20813F:        8F 23 C5 7F   STA $7FC523               
CODE_208143:        9C F2 1C      STZ $1CF2                 
CODE_208146:        A9 FF         LDA #$FF                  
CODE_208148:        8D BF 07      STA $07BF                 
CODE_20814B:        A9 04         LDA #$04                  
CODE_20814D:        8D 0E 07      STA $070E                 
CODE_208150:        8D 9A 06      STA $069A                 
CODE_208153:        A9 28         LDA #$28                  
CODE_208155:        8D F1 05      STA $05F1                 
CODE_208158:        A9 03         LDA #$03                  
CODE_20815A:        8D 99 06      STA $0699                 
CODE_20815D:        A9 C0         LDA #$C0                  
CODE_20815F:        8D 00 01      STA $0100                 
CODE_208162:        A9 1F         LDA #$1F                  
CODE_208164:        AE 26 07      LDX $0726                 
CODE_208167:        F0 03         BEQ CODE_20816C           
CODE_208169:        18            CLC                       
CODE_20816A:        69 23         ADC #$23                  
CODE_20816C:        A8            TAY                       
CODE_20816D:        A2 00         LDX #$00                  
CODE_20816F:        B9 80 1D      LDA $1D80,y               
CODE_208172:        9D 15 07      STA $0715,x               
CODE_208175:        C8            INY                       
CODE_208176:        E8            INX                       
CODE_208177:        E0 03         CPX #$03                  
CODE_208179:        D0 F4         BNE CODE_20816F           
CODE_20817B:        AE 2B 07      LDX $072B                 
CODE_20817E:        CA            DEX                       
CODE_20817F:        BF 75 39 7E   LDA $7E3975,x             
CODE_208183:        95 43         STA $43,x                 
CODE_208185:        BF 77 39 7E   LDA $7E3977,x             
CODE_208189:        95 45         STA $45,x                 
CODE_20818B:        BF 79 39 7E   LDA $7E3979,x             
CODE_20818F:        95 47         STA $47,x                 
CODE_208191:        BF 7B 39 7E   LDA $7E397B,x             
CODE_208195:        95 52         STA $52,x                 
CODE_208197:        A9 20         LDA #$20                  
CODE_208199:        95 4D         STA $4D,x                 
CODE_20819B:        CA            DEX                       
CODE_20819C:        10 E1         BPL CODE_20817F           
CODE_20819E:        9C 0A 07      STZ $070A                 
CODE_2081A1:        9C 28 07      STZ $0728                 
CODE_2081A4:        64 20         STZ $20                   
CODE_2081A6:        64 9A         STZ $9A                   
CODE_2081A8:        64 59         STZ $59                   
CODE_2081AA:        9C 11 07      STZ $0711                 
CODE_2081AD:        AD 03 01      LDA $0103                 
CODE_2081B0:        F0 03         BEQ CODE_2081B5           
CODE_2081B2:        4C 51 82      JMP CODE_208251           

CODE_2081B5:        C2 20         REP #$20                  
CODE_2081B7:        AF 02 FB 7F   LDA $7FFB02               
CODE_2081BB:        8D 36 07      STA $0736                 
CODE_2081BE:        A2 1A         LDX #$1A                  
CODE_2081C0:        BF BC FB 7F   LDA $7FFBBC,x             
CODE_2081C4:        9D 80 1D      STA $1D80,x               
CODE_2081C7:        CA            DEX                       
CODE_2081C8:        CA            DEX                       
CODE_2081C9:        10 F5         BPL CODE_2081C0           
CODE_2081CB:        A2 3D         LDX #$3D                  
CODE_2081CD:        BF BC FB 7F   LDA $7FFBBC,x             
CODE_2081D1:        9D 80 1D      STA $1D80,x               
CODE_2081D4:        CA            DEX                       
CODE_2081D5:        CA            DEX                       
CODE_2081D6:        E0 21         CPX #$21                  
CODE_2081D8:        D0 F3         BNE CODE_2081CD           
CODE_2081DA:        E2 20         SEP #$20                  
CODE_2081DC:        AF 00 FB 7F   LDA $7FFB00               
CODE_2081E0:        CF 02 FF 7F   CMP $7FFF02               
CODE_2081E4:        F0 03         BEQ CODE_2081E9           
CODE_2081E6:        4C 4E 82      JMP CODE_20824E           
CODE_2081E9:        AF 02 FC 7F   LDA $7FFC02               
CODE_2081ED:        8F 71 39 7E   STA $7E3971               
CODE_2081F1:        C2 30         REP #$30                  
CODE_2081F3:        A2 36 00      LDX #$0036                
CODE_2081F6:        BF 04 FB 7F   LDA $7FFB04,x             
CODE_2081FA:        9D ED 1E      STA $1EED,x               
CODE_2081FD:        CA            DEX                       
CODE_2081FE:        CA            DEX                       
CODE_2081FF:        10 F5         BPL CODE_2081F6           
CODE_208201:        A2 7E 00      LDX #$007E                
CODE_208204:        BF 3C FB 7F   LDA $7FFB3C,x             
CODE_208208:        9D 00 1D      STA $1D00,x               
CODE_20820B:        CA            DEX                       
CODE_20820C:        CA            DEX                       
CODE_20820D:        10 F5         BPL CODE_208204           
CODE_20820F:        A2 3E 00      LDX #$003E                
CODE_208212:        AD 27 07      LDA $0727                 
CODE_208215:        29 FF 00      AND #$00FF                
CODE_208218:        1A            INC A                     
CODE_208219:        0A            ASL A                     
CODE_20821A:        0A            ASL A                     
CODE_20821B:        0A            ASL A                     
CODE_20821C:        0A            ASL A                     
CODE_20821D:        0A            ASL A                     
CODE_20821E:        0A            ASL A                     
CODE_20821F:        3A            DEC A                     
CODE_208220:        3A            DEC A                     
CODE_208221:        A8            TAY                       
CODE_208222:        BD 00 1D      LDA $1D00,x               
CODE_208225:        39 00 80      AND.w DATA_218000,y               
CODE_208228:        9D 00 1D      STA $1D00,x               
CODE_20822B:        9D 40 1D      STA $1D40,x               
CODE_20822E:        88            DEY                       
CODE_20822F:        88            DEY                       
CODE_208230:        CA            DEX                       
CODE_208231:        CA            DEX                       
CODE_208232:        10 EE         BPL CODE_208222           
CODE_208234:        E2 30         SEP #$30                  
CODE_208236:        AD 27 07      LDA $0727                 
CODE_208239:        C9 02         CMP #$02                  
CODE_20823B:        D0 11         BNE CODE_20824E           
CODE_20823D:        A0 04         LDY #$04                  
CODE_20823F:        A9 80         LDA #$80                  
CODE_208241:        99 ED 1E      STA $1EED,y               
CODE_208244:        A9 50         LDA #$50                  
CODE_208246:        99 FB 1E      STA $1EFB,y               
CODE_208249:        A9 01         LDA #$01                  
CODE_20824B:        99 09 1F      STA $1F09,y               
CODE_20824E:        EE 03 01      INC $0103                 
CODE_208251:        22 A9 E0 22   JSL CODE_22E0A9           
CODE_208255:        20 EB F9      JSR CODE_20F9EB           
CODE_208258:        A9 FF         LDA #$FF                  
CODE_20825A:        85 00         STA $00                   
CODE_20825C:        64 01         STZ $01                   
CODE_20825E:        20 0A FA      JSR CODE_20FA0A           
CODE_208261:        AE 26 07      LDX $0726                 
CODE_208264:        BD 47 07      LDA $0747,x               
CODE_208267:        8D 29 04      STA $0429                 
CODE_20826A:        A0 00         LDY #$00                  
CODE_20826C:        AD 27 07      LDA $0727                 ; World 8 submap 3 spotlight enabler
CODE_20826F:        C9 07         CMP #$07                  ; Check for world 8
CODE_208271:        D0 07         BNE CODE_20827A           ;
CODE_208273:        B5 45         LDA $45,x                 ; Check for submap #3, indexed by the current player
CODE_208275:        C9 02         CMP #$02                  ;
CODE_208277:        D0 01         BNE CODE_20827A           ;
CODE_208279:        C8            INY                       ;
CODE_20827A:        8C 98 05      STY $0598                 ;
CODE_20827D:        9C 0F 07      STZ $070F                 
CODE_208280:        A9 10         LDA #$10                  
CODE_208282:        8D 49 03      STA $0349                 
CODE_208285:        22 21 BE 29   JSL CODE_29BE21           
CODE_208289:        20 83 96      JSR CODE_209683           
CODE_20828C:        AD F2 05      LDA $05F2                 
CODE_20828F:        D0 09         BNE CODE_20829A           
CODE_208291:        AE 26 07      LDX $0726                 
CODE_208294:        BF 92 39 7E   LDA $7E3992,x             
CODE_208298:        95 4B         STA $4B,x                 
CODE_20829A:        AC 26 07      LDY $0726                 
CODE_20829D:        B9 22 07      LDA $0722,y               
CODE_2082A0:        85 B7         STA $B7                   
CODE_2082A2:        B9 24 07      LDA $0724,y               
CODE_2082A5:        22 F5 97 20   JSL CODE_2097F5           
CODE_2082A9:        64 25         STZ $25                   
CODE_2082AB:        A5 24         LDA $24                   
CODE_2082AD:        85 23         STA $23                   
CODE_2082AF:        9C BF 1E      STZ $1EBF                 
CODE_2082B2:        A9 20         LDA #$20                  
CODE_2082B4:        8D 12 06      STA $0612                 
CODE_2082B7:        A9 02         LDA #$02                  
CODE_2082B9:        20 10 96      JSR CODE_209610           
CODE_2082BC:        22 8C F5 20   JSL CODE_20F58C           
CODE_2082C0:        22 A5 EA 29   JSL CODE_29EAA5           
CODE_2082C4:        22 66 E7 29   JSL CODE_29E766           
CODE_2082C8:        22 30 E7 29   JSL CODE_29E730           
CODE_2082CC:        A9 00         LDA #$00                  
CODE_2082CE:        20 10 96      JSR CODE_209610           
CODE_2082D1:        20 C0 9C      JSR CODE_209CC0           
CODE_2082D4:        20 B9 95      JSR CODE_2095B9           
CODE_2082D7:        22 4B 8B 2A   JSL CODE_2A8B4B           
CODE_2082DB:        A0 0D         LDY #$0D                  
CODE_2082DD:        A9 00         LDA #$00                  
CODE_2082DF:        99 00 05      STA $0500,y               
CODE_2082E2:        88            DEY                       
CODE_2082E3:        10 FA         BPL CODE_2082DF           
CODE_2082E5:        AD 27 07      LDA $0727                 ;\
CODE_2082E8:        C9 08         CMP #$08                  ; |
CODE_2082EA:        D0 05         BNE CODE_2082F1           ; | If you're in world 9 (warp zone)
CODE_2082EC:        A9 2D         LDA #$2D                  ; | Display the "WELCOME TO WARP ZONE" layer 3
CODE_2082EE:        20 10 96      JSR CODE_209610           ;/
CODE_2082F1:        AC 26 07      LDY $0726                 
CODE_2082F4:        B9 22 07      LDA $0722,y               
CODE_2082F7:        8D 10 02      STA $0210                 
CODE_2082FA:        85 B7         STA $B7                   
CODE_2082FC:        B9 24 07      LDA $0724,y               
CODE_2082FF:        8D 11 02      STA $0211                 
CODE_208302:        85 12         STA $12                   
CODE_208304:        AD 29 07      LDA $0729                 
CODE_208307:        D0 3D         BNE CODE_208346           
CODE_208309:        AD F2 05      LDA $05F2                 
CODE_20830C:        D0 38         BNE CODE_208346           
CODE_20830E:        22 00 80 23   JSL CODE_238000           
CODE_208312:        A2 0E         LDX #$0E                  
CODE_208314:        AD 26 07      LDA $0726                 
CODE_208317:        F0 01         BEQ CODE_20831A           
CODE_208319:        E8            INX                       
CODE_20831A:        8A            TXA                       
CODE_20831B:        20 10 96      JSR CODE_209610           
CODE_20831E:        22 36 80 23   JSL CODE_238036           
CODE_208322:        A9 00         LDA #$00                  
CODE_208324:        20 10 96      JSR CODE_209610           
CODE_208327:        AE 27 07      LDX $0727                 ;\ data bank: $21
CODE_20832A:        BC 0B CA      LDY.w DATA_21CA0B,x       ; | Load overworld music
CODE_20832D:        E0 04         CPX #$04                  ; |
CODE_20832F:        D0 0B         BNE CODE_20833C           ; | If world isn't world 5, branch
CODE_208331:        AE 26 07      LDX $0726                 ; |
CODE_208334:        B5 45         LDA $45,x                 ; | Check current player's submap
CODE_208336:        F0 04         BEQ CODE_20833C           ; | If in World 5's cloud map
CODE_208338:        A0 10         LDY #$10                  ; | Load music cloud map music (#$10)
CODE_20833A:        80 07         BRA CODE_208343           ; |

CODE_20833C:        AD 55 1F      LDA $1F55                 ; | If Music box is playing,
CODE_20833F:        F0 02         BEQ CODE_208343           ; | play music box music (#$0E).
CODE_208341:        A0 0E         LDY #$0E                  ; | 
CODE_208343:        8C 02 12      STY $1202                 ;/  Otherwise play regular overworld music.
CODE_208346:        9C F2 05      STZ $05F2                 
CODE_208349:        A9 EF         LDA #$EF                  
CODE_20834B:        8D 16 02      STA $0216                 
CODE_20834E:        9C 1A 02      STZ $021A                 
CODE_208351:        9C 1B 02      STZ $021B                 
CODE_208354:        A9 C0         LDA #$C0                  
CODE_208356:        8D 00 01      STA $0100                 
CODE_208359:        22 35 BD 29   JSL CODE_29BD35           
CODE_20835D:        A9 00         LDA #$00                  
CODE_20835F:        8F 55 39 7E   STA $7E3955               
CODE_208363:        22 94 C7 29   JSL CODE_29C794           
CODE_208367:        8B            PHB                       
CODE_208368:        C2 30         REP #$30                  
CODE_20836A:        A0 A0 14      LDY #$14A0                
CODE_20836D:        A2 80 8B      LDX #$8B80                
CODE_208370:        A9 1F 00      LDA #$001F                
CODE_208373:        54 00 3C      MVN $3C00                 
CODE_208376:        E2 30         SEP #$30                  
CODE_208378:        AB            PLB                       
CODE_208379:        9C 00 42      STZ $4200                 
CODE_20837C:        0B            PHD                       
CODE_20837D:        C2 20         REP #$20                  
CODE_20837F:        A9 00 43      LDA #$4300                ; DP: $4300
CODE_208382:        5B            TCD                       
CODE_208383:        A9 00 20      LDA #$2000                
CODE_208386:        8D 16 21      STA $2116                 
CODE_208389:        A2 80         LDX #$80                  
CODE_20838B:        8E 15 21      STX $2115                 
CODE_20838E:        A9 01 18      LDA #$1801                
CODE_208391:        85 30         STA $30                   
CODE_208393:        85 40         STA $40                   
CODE_208395:        85 50         STA $50                   
CODE_208397:        A0 08         LDY #$08                  
CODE_208399:        AE 27 07      LDX $0727                 
CODE_20839C:        E0 04         CPX #$04                  
CODE_20839E:        D0 2A         BNE CODE_2083CA           
CODE_2083A0:        A9 00 C0      LDA.w #DATA_39C000                
CODE_2083A3:        85 32         STA $32                   
CODE_2083A5:        A2 39         LDX.b #DATA_39C000>>16                  
CODE_2083A7:        86 34         STX $34                   
CODE_2083A9:        A9 00 10      LDA #$1000                
CODE_2083AC:        85 35         STA $35                   
CODE_2083AE:        8C 0B 42      STY $420B                 
CODE_2083B1:        A9 00 28      LDA #$2800                
CODE_2083B4:        8D 16 21      STA $2116                 
CODE_2083B7:        A9 00 B0      LDA.w #DATA_31B000                
CODE_2083BA:        85 32         STA $32                   
CODE_2083BC:        A2 31         LDX.b #DATA_31B000>>16                  
CODE_2083BE:        86 34         STX $34                   
CODE_2083C0:        A9 00 30      LDA #$3000                
CODE_2083C3:        85 35         STA $35                   
CODE_2083C5:        8C 0B 42      STY $420B                 
CODE_2083C8:        80 11         BRA CODE_2083DB           

CODE_2083CA:        A9 00 A0      LDA.w #DATA_31A000                
CODE_2083CD:        85 32         STA $32                   
CODE_2083CF:        A2 31         LDX.b #DATA_31A000>>16                  
CODE_2083D1:        86 34         STX $34                   
CODE_2083D3:        A9 00 40      LDA #$4000                
CODE_2083D6:        85 35         STA $35                   
CODE_2083D8:        8C 0B 42      STY $420B                 
CODE_2083DB:        A9 00 58      LDA #$5800                
CODE_2083DE:        8D 16 21      STA $2116                 
CODE_2083E1:        A9 00 80      LDA #$8000                
CODE_2083E4:        85 42         STA $42                   
CODE_2083E6:        A2 38         LDX.b #DATA_38C000>>16                  
CODE_2083E8:        86 44         STX $44                   
CODE_2083EA:        86 54         STX $54                   
CODE_2083EC:        A9 00 10      LDA #$1000                
CODE_2083EF:        85 45         STA $45                   
CODE_2083F1:        A9 00 C0      LDA.w #DATA_38C000                
CODE_2083F4:        85 52         STA $52                   
CODE_2083F6:        A9 00 40      LDA #$4000                
CODE_2083F9:        85 55         STA $55                   
CODE_2083FB:        A2 30         LDX #$30                  
CODE_2083FD:        8E 0B 42      STX $420B                 
CODE_208400:        E2 20         SEP #$20                  
CODE_208402:        2B            PLD                       
CODE_208403:        A9 01         LDA #$01                  
CODE_208405:        8D 0E 02      STA $020E                 
CODE_208408:        A9 11         LDA #$11                  
CODE_20840A:        8D 0F 02      STA $020F                 
CODE_20840D:        A9 09         LDA #$09                  
CODE_20840F:        8D 0C 02      STA $020C                 
CODE_208412:        8D 05 21      STA $2105                 
CODE_208415:        A9 17         LDA #$17                  
CODE_208417:        8D 08 02      STA $0208                 
CODE_20841A:        A9 03         LDA #$03                  
CODE_20841C:        8D 1E 02      STA $021E                 
CODE_20841F:        A9 80         LDA #$80                  
CODE_208421:        8D 00 42      STA $4200                 
CODE_208424:        AD 98 05      LDA $0598                 
CODE_208427:        F0 29         BEQ CODE_208452           
CODE_208429:        A9 03         LDA #$03                  
CODE_20842B:        8D 91 02      STA $0291                 
CODE_20842E:        AD 29 07      LDA $0729                 
CODE_208431:        F0 1F         BEQ CODE_208452           
CODE_208433:        22 A9 F9 2A   JSL CODE_2AF9A9           
CODE_208437:        22 AA FC 2A   JSL CODE_2AFCAA           
CODE_20843B:        A9 0F         LDA #$0F                  
CODE_20843D:        85 16         STA $16                   
CODE_20843F:        AD 98 05      LDA $0598                 
CODE_208442:        F0 0E         BEQ CODE_208452           
CODE_208444:        AD 29 07      LDA $0729                 
CODE_208447:        F0 09         BEQ CODE_208452           
CODE_208449:        AD 8C 02      LDA $028C                 
CODE_20844C:        D0 04         BNE CODE_208452           
CODE_20844E:        22 AA FC 2A   JSL CODE_2AFCAA           
CODE_208452:        20 1F 80      JSR CODE_20801F           
CODE_208455:        22 A9 E0 22   JSL CODE_22E0A9           
CODE_208459:        22 35 BD 29   JSL CODE_29BD35           
CODE_20845D:        AD 1C 04      LDA $041C                 
CODE_208460:        D0 05         BNE CODE_208467           
CODE_208462:        AD F2 05      LDA $05F2                 
CODE_208465:        F0 0E         BEQ CODE_208475           
CODE_208467:        22 E0 D8 29   JSL CODE_29D8E0           
CODE_20846B:        22 A3 82 23   JSL CODE_2382A3           
CODE_20846F:        22 1B 8C 23   JSL CODE_238C1B           
CODE_208473:        80 C6         BRA CODE_20843B           

CODE_208475:        22 AB 80 23   JSL CODE_2380AB           
CODE_208479:        AD 29 07      LDA $0729                 
CODE_20847C:        C9 02         CMP #$02                  
CODE_20847E:        90 04         BCC CODE_208484           
CODE_208480:        22 A5 EA 29   JSL CODE_29EAA5           
CODE_208484:        AC 29 07      LDY $0729                 
CODE_208487:        C0 0D         CPY #$0D                  
CODE_208489:        D0 06         BNE CODE_208491           
CODE_20848B:        A5 59         LDA $59                   
CODE_20848D:        C9 03         CMP #$03                  
CODE_20848F:        F0 10         BEQ CODE_2084A1           
CODE_208491:        C0 04         CPY #$04                  
CODE_208493:        F0 0C         BEQ CODE_2084A1           
CODE_208495:        C0 0F         CPY #$0F                  
CODE_208497:        90 A2         BCC CODE_20843B           
CODE_208499:        AE 26 07      LDX $0726                 
CODE_20849C:        BD 3F 07      LDA $073F,x               
CODE_20849F:        F0 75         BEQ CODE_208516           
CODE_2084A1:        22 B6 E2 29   JSL CODE_29E2B6           
CODE_2084A5:        20 1F 80      JSR CODE_20801F           
CODE_2084A8:        A9 80         LDA #$80                  
CODE_2084AA:        85 16         STA $16                   
CODE_2084AC:        9C 93 02      STZ $0293                 
CODE_2084AF:        9C 0A 02      STZ $020A                 
CODE_2084B2:        9C 0C 42      STZ $420C                 
CODE_2084B5:        9C 00 42      STZ $4200                 
CODE_2084B8:        AF 55 39 7E   LDA $7E3955               
CODE_2084BC:        1A            INC A                     
CODE_2084BD:        8F 55 39 7E   STA $7E3955               
CODE_2084C1:        A5 59         LDA $59                   
CODE_2084C3:        D0 07         BNE CODE_2084CC           
CODE_2084C5:        AD 29 07      LDA $0729                 
CODE_2084C8:        C9 04         CMP #$04                  
CODE_2084CA:        D0 03         BNE CODE_2084CF           
CODE_2084CC:        4C 51 82      JMP CODE_208251           

CODE_2084CF:        AE 26 07      LDX $0726                 
CODE_2084D2:        AD 10 02      LDA $0210                 
CODE_2084D5:        9D 22 07      STA $0722,x               
CODE_2084D8:        A5 12         LDA $12                   
CODE_2084DA:        9D 24 07      STA $0724,x               
CODE_2084DD:        B5 43         LDA $43,x                 
CODE_2084DF:        9F 75 39 7E   STA $7E3975,x             
CODE_2084E3:        B5 45         LDA $45,x                 
CODE_2084E5:        9F 77 39 7E   STA $7E3977,x             
CODE_2084E9:        B5 47         LDA $47,x                 
CODE_2084EB:        9F 79 39 7E   STA $7E3979,x             
CODE_2084EF:        B5 52         LDA $52,x                 
CODE_2084F1:        9F 7B 39 7E   STA $7E397B,x             
CODE_2084F5:        9E 3F 07      STZ $073F,x               
CODE_2084F8:        E8            INX                       
CODE_2084F9:        8E 26 07      STX $0726                 
CODE_2084FC:        EC 2B 07      CPX $072B                 
CODE_2084FF:        D0 03         BNE CODE_208504           
CODE_208501:        9C 26 07      STZ $0726                 
CODE_208504:        AD 26 07      LDA $0726                 
CODE_208507:        AA            TAX                       
CODE_208508:        BD 36 07      LDA $0736,x               
CODE_20850B:        30 EB         BMI CODE_2084F8           
CODE_20850D:        9C 29 07      STZ $0729                 
CODE_208510:        9C 8C 07      STZ $078C                 
CODE_208513:        4C E5 80      JMP CODE_2080E5           
CODE_208516:        20 1F 80      JSR CODE_20801F           
CODE_208519:        AE 26 07      LDX $0726                 
CODE_20851C:        AD 10 02      LDA $0210                 
CODE_20851F:        9D 22 07      STA $0722,x               
CODE_208522:        A5 12         LDA $12                   
CODE_208524:        9D 24 07      STA $0724,x               
CODE_208527:        B5 43         LDA $43,x                 
CODE_208529:        9F 75 39 7E   STA $7E3975,x             
CODE_20852D:        B5 45         LDA $45,x                 
CODE_20852F:        9F 77 39 7E   STA $7E3977,x             
CODE_208533:        B5 47         LDA $47,x                 
CODE_208535:        9F 79 39 7E   STA $7E3979,x             
CODE_208539:        B5 52         LDA $52,x                 
CODE_20853B:        9F 7B 39 7E   STA $7E397B,x             
CODE_20853F:        64 20         STZ $20                   
CODE_208541:        9C 4F 10      STZ $104F                 
CODE_208544:        9C 00 01      STZ $0100                 
CODE_208547:        9C 28 07      STZ $0728                 
CODE_20854A:        20 AA 96      JSR CODE_2096AA           
CODE_20854D:        A9 03         LDA #$03                  
CODE_20854F:        8D 47 10      STA $1047                 
CODE_208552:        8D 49 10      STA $1049                 
CODE_208555:        8D 4A 10      STA $104A                 
CODE_208558:        A9 0A         LDA #$0A                  
CODE_20855A:        8D 48 10      STA $1048                 
CODE_20855D:        A9 C0         LDA #$C0                  
CODE_20855F:        8D 4B 10      STA $104B                 
CODE_208562:        A9 E0         LDA #$E0                  
CODE_208564:        8D 4E 10      STA $104E                 
CODE_208567:        A9 FF         LDA #$FF                  
CODE_208569:        8D 4D 10      STA $104D                 
CODE_20856C:        A9 1F         LDA #$1F                  
CODE_20856E:        8D 45 10      STA $1045                 
CODE_208571:        A9 E0         LDA #$E0                  
CODE_208573:        8D 4C 10      STA $104C                 
CODE_208576:        A9 17         LDA #$17                  
CODE_208578:        8D 46 10      STA $1046                 
CODE_20857B:        A2 03         LDX #$03                  
CODE_20857D:        A5 24         LDA $24                   
CODE_20857F:        29 0F         AND #$0F                  
CODE_208581:        0A            ASL A                     
CODE_208582:        18            CLC                       
CODE_208583:        7D 4B 10      ADC $104B,x               
CODE_208586:        9D 4B 10      STA $104B,x               
CODE_208589:        A5 24         LDA $24                   
CODE_20858B:        29 10         AND #$10                  
CODE_20858D:        4A            LSR A                     
CODE_20858E:        4A            LSR A                     
CODE_20858F:        1D 47 10      ORA $1047,x               
CODE_208592:        9D 47 10      STA $1047,x               
CODE_208595:        CA            DEX                       
CODE_208596:        10 E5         BPL CODE_20857D           
CODE_208598:        A2 03         LDX #$03                  
CODE_20859A:        A5 24         LDA $24                   
CODE_20859C:        A8            TAY                       
CODE_20859D:        18            CLC                       
CODE_20859E:        69 08         ADC #$08                  
CODE_2085A0:        85 00         STA $00                   
CODE_2085A2:        29 10         AND #$10                  
CODE_2085A4:        F0 02         BEQ CODE_2085A8           
CODE_2085A6:        A2 07         LDX #$07                  
CODE_2085A8:        8E 49 10      STX $1049                 
CODE_2085AB:        98            TYA                       
CODE_2085AC:        29 08         AND #$08                  
CODE_2085AE:        F0 0A         BEQ CODE_2085BA           
CODE_2085B0:        AD 4D 10      LDA $104D                 
CODE_2085B3:        29 1F         AND #$1F                  
CODE_2085B5:        09 E0         ORA #$E0                  
CODE_2085B7:        8D 4D 10      STA $104D                 
CODE_2085BA:        A9 30         LDA #$30                  
CODE_2085BC:        8D 50 10      STA $1050                 
CODE_2085BF:        A9 43         LDA #$43                  
CODE_2085C1:        8D 03 12      STA $1203                 
CODE_2085C4:        A9 80         LDA #$80                  ;\
CODE_2085C6:        8D 02 12      STA $1202                 ;/Fade out music
CODE_2085C9:        A0 01         LDY #$01                  
CODE_2085CB:        AD 98 05      LDA $0598                 
CODE_2085CE:        F0 02         BEQ CODE_2085D2           
CODE_2085D0:        A0 04         LDY #$04                  
CODE_2085D2:        8C 91 02      STY $0291                 
CODE_2085D5:        22 A9 F9 2A   JSL CODE_2AF9A9           
CODE_2085D9:        A9 01         LDA #$01                  
CODE_2085DB:        85 20         STA $20                   
CODE_2085DD:        22 63 FA 2A   JSL CODE_2AFA63           
CODE_2085E1:        20 1F 80      JSR CODE_20801F           
CODE_2085E4:        AD 50 10      LDA $1050                 
CODE_2085E7:        10 F0         BPL CODE_2085D9           
CODE_2085E9:        20 1F 80      JSR CODE_20801F           
CODE_2085EC:        A5 16         LDA $16                   
CODE_2085EE:        38            SEC                       
CODE_2085EF:        E9 02         SBC #$02                  
CODE_2085F1:        85 16         STA $16                   
CODE_2085F3:        10 F4         BPL CODE_2085E9           
CODE_2085F5:        9C 85 02      STZ $0285                 
CODE_2085F8:        9C 91 02      STZ $0291                 
CODE_2085FB:        9C 93 02      STZ $0293                 
CODE_2085FE:        9C 00 02      STZ $0200                 
CODE_208601:        9C 01 02      STZ $0201                 
CODE_208604:        9C 02 02      STZ $0202                 
CODE_208607:        A9 10         LDA #$10                  
CODE_208609:        8D 08 02      STA $0208                 
CODE_20860C:        8D 0F 02      STA $020F                 
CODE_20860F:        9C 0A 02      STZ $020A                 
CODE_208612:        A9 20         LDA #$20                  
CODE_208614:        8D 05 02      STA $0205                 
CODE_208617:        A9 40         LDA #$40                  
CODE_208619:        8D 06 02      STA $0206                 
CODE_20861C:        A9 80         LDA #$80                  
CODE_20861E:        8D 07 02      STA $0207                 
CODE_208621:        A9 80         LDA #$80                  
CODE_208623:        8D 00 21      STA $2100                 
CODE_208626:        85 16         STA $16                   
CODE_208628:        20 1F 80      JSR CODE_20801F           
CODE_20862B:        AD 1E 00      LDA $001E                 
CODE_20862E:        C9 03         CMP #$03                  
CODE_208630:        F0 3B         BEQ CODE_20866D           
CODE_208632:        C9 09         CMP #$09                  
CODE_208634:        F0 4A         BEQ CODE_208680           
CODE_208636:        C9 0A         CMP #$0A                  
CODE_208638:        F0 46         BEQ CODE_208680           
CODE_20863A:        AD B3 00      LDA $00B3                 
CODE_20863D:        C9 BC         CMP #$BC                  ;Check for pipe tile
CODE_20863F:        D0 10         BNE CODE_208651           ;If it's not, check for other tiles
CODE_208641:        AD 27 07      LDA $0727                 ;\
CODE_208644:        C9 04         CMP #$04                  ; |If we're on a pipe tile, and
CODE_208646:        D0 38         BNE CODE_208680           ; |If we're in world 5's submap, show "Player Start!"
CODE_208648:        AE 26 07      LDX $0726                 ; |
CODE_20864B:        B5 45         LDA $45,x                 ; |
CODE_20864D:        D0 11         BNE CODE_208660           ;/
CODE_20864F:        80 2F         BRA CODE_208680           ;Otherwise just skip Player Start

CODE_208651:        AD B3 00      LDA $00B3                 
CODE_208654:        C9 50         CMP #$50                  ;Check for yellow mushroom house tile
CODE_208656:        F0 28         BEQ CODE_208680           
CODE_208658:        C9 E0         CMP #$E0                  ;Check for red mushroom house tile
CODE_20865A:        F0 24         BEQ CODE_208680           
CODE_20865C:        C9 E8         CMP #$E8                  ;Check for spade tile
CODE_20865E:        F0 20         BEQ CODE_208680           
CODE_208660:        AD 98 05      LDA $0598                 
CODE_208663:        F0 08         BEQ CODE_20866D           
CODE_208665:        A2 2C         LDX #$2C                  
CODE_208667:        20 1F 80      JSR CODE_20801F           
CODE_20866A:        CA            DEX                       
CODE_20866B:        D0 FA         BNE CODE_208667           
CODE_20866D:        22 EA 82 2A   JSL CODE_2A82EA           
CODE_208671:        20 1F 80      JSR CODE_20801F           
CODE_208674:        9C 00 42      STZ $4200                 
CODE_208677:        22 47 8B 00   JSL CODE_008B47           
CODE_20867B:        EE 03 15      INC $1503                 
CODE_20867E:        80 03         BRA CODE_208683           

CODE_208680:        9C 00 42      STZ $4200                 
CODE_208683:        A9 11         LDA #$11                  
CODE_208685:        8D 0F 02      STA $020F                 
CODE_208688:        AF 55 39 7E   LDA $7E3955               
CODE_20868C:        1A            INC A                     
CODE_20868D:        8F 55 39 7E   STA $7E3955               
CODE_208691:        64 12         STZ $12                   
CODE_208693:        9C 10 02      STZ $0210                 
CODE_208696:        9C 11 02      STZ $0211                 
CODE_208699:        64 13         STZ $13                   
CODE_20869B:        9C 16 02      STZ $0216                 
CODE_20869E:        9C 17 02      STZ $0217                 
CODE_2086A1:        64 23         STZ $23                   
CODE_2086A3:        64 24         STZ $24                   
CODE_2086A5:        64 25         STZ $25                   
CODE_2086A7:        A9 00         LDA #$00                  
CODE_2086A9:        8F 66 39 7E   STA $7E3966               
CODE_2086AD:        8F 65 39 7E   STA $7E3965               
CODE_2086B1:        8F 64 39 7E   STA $7E3964               
CODE_2086B5:        64 00         STZ $00                   
CODE_2086B7:        A2 05         LDX #$05                  
CODE_2086B9:        86 01         STX $01                   
CODE_2086BB:        A0 9D         LDY #$9D                  
CODE_2086BD:        91 00         STA ($00),y               
CODE_2086BF:        88            DEY                       
CODE_2086C0:        D0 FB         BNE CODE_2086BD           
CODE_2086C2:        91 00         STA ($00),y               
CODE_2086C4:        A5 1D         LDA $1D                   
CODE_2086C6:        F0 2F         BEQ CODE_2086F7           
CODE_2086C8:        A5 B3         LDA $B3                   
CODE_2086CA:        C9 BC         CMP #$BC                  
CODE_2086CC:        F0 29         BEQ CODE_2086F7           
CODE_2086CE:        A9 12         LDA #$12                  
CODE_2086D0:        8D 0A 07      STA $070A                 
CODE_2086D3:        20 0F 96      JSR CODE_20960F           
CODE_2086D6:        EE 26 1F      INC $1F26                 
CODE_2086D9:        AD 26 1F      LDA $1F26                 
CODE_2086DC:        C9 0C         CMP #$0C                  
CODE_2086DE:        D0 05         BNE CODE_2086E5           
CODE_2086E0:        A9 00         LDA #$00                  
CODE_2086E2:        8D 26 1F      STA $1F26                 
CODE_2086E5:        0A            ASL A                     
CODE_2086E6:        AA            TAX                       
CODE_2086E7:        BD 81 A3      LDA.w DATA_21A381,x               
CODE_2086EA:        85 2B         STA $2B                   
CODE_2086EC:        BD 82 A3      LDA.w DATA_21A381+1,x               
CODE_2086EF:        85 2C         STA $2C                   
CODE_2086F1:        A9 21         LDA #$21                  
CODE_2086F3:        85 2D         STA $2D                   
CODE_2086F5:        80 04         BRA CODE_2086FB           

CODE_2086F7:        22 84 BF 29   JSL CODE_29BF84           
CODE_2086FB:        AD 27 07      LDA $0727                 
CODE_2086FE:        C9 08         CMP #$08                  
CODE_208700:        D0 0E         BNE CODE_208710           
CODE_208702:        A9 80         LDA #$80                  ;\
CODE_208704:        8D 02 12      STA $1202                 ;/Fade out music
CODE_208707:        AD 2A 04      LDA $042A                 
CODE_20870A:        8D 27 07      STA $0727                 
CODE_20870D:        4C B9 80      JMP CODE_2080B9           

CODE_208710:        AC 0A 07      LDY $070A                 
CODE_208713:        B9 75 C9      LDA.w DATA_21C975,y               
CODE_208716:        8D 39 07      STA $0739                 
CODE_208719:        C0 07         CPY #$07                  
CODE_20871B:        D0 1F         BNE CODE_20873C           
CODE_20871D:        A5 31         LDA $31                   
CODE_20871F:        8D 20 04      STA $0420                 
CODE_208722:        A5 32         LDA $32                   
CODE_208724:        8D 21 04      STA $0421                 
CODE_208727:        A9 E3         LDA #$E3                  ;
CODE_208729:        85 31         STA $31                   ;Store pointer $27:E5E3 to $31 and $023A
CODE_20872B:        8D 3A 02      STA $023A                 ;
CODE_20872E:        A9 E5         LDA #$E5                  ;
CODE_208730:        85 32         STA $32                   ;
CODE_208732:        8D 3B 02      STA $023B                 ;
CODE_208735:        A9 27         LDA #$27                  ;
CODE_208737:        85 33         STA $33                   ;
CODE_208739:        8D 3C 02      STA $023C                 ;
CODE_20873C:        A0 7F         LDY #$7F                  
CODE_20873E:        A9 00         LDA #$00                  
CODE_208740:        99 04 1E      STA $1E04,y               
CODE_208743:        88            DEY                       
CODE_208744:        10 FA         BPL CODE_208740           
CODE_208746:        A0 80         LDY #$80                  
CODE_208748:        A9 00         LDA #$00                  
CODE_20874A:        8D B8 1E      STA $1EB8                 
CODE_20874D:        99 43 00      STA $0043,y               
CODE_208750:        88            DEY                       
CODE_208751:        D0 FA         BNE CODE_20874D           
CODE_208753:        9C F2 1C      STZ $1CF2                 
CODE_208756:        AD 0A 07      LDA $070A                 
CODE_208759:        C9 10         CMP #$10                  
CODE_20875B:        F0 1A         BEQ CODE_208777           
CODE_20875D:        C9 11         CMP #$11                  
CODE_20875F:        F0 16         BEQ CODE_208777           
CODE_208761:        22 00 9C 20   JSL CODE_209C00           
CODE_208765:        22 A9 E0 22   JSL CODE_22E0A9           
CODE_208769:        20 83 96      JSR CODE_209683           
CODE_20876C:        A9 26         LDA #$26                  
CODE_20876E:        8D 12 06      STA $0612                 
CODE_208771:        64 01         STZ $01                   
CODE_208773:        A9 FF         LDA #$FF                  
CODE_208775:        85 00         STA $00                   
CODE_208777:        20 17 FA      JSR CODE_20FA17           
CODE_20877A:        22 A9 E0 22   JSL CODE_22E0A9           
CODE_20877E:        22 81 AC 20   JSL CODE_20AC81           
CODE_208782:        AD 0A 07      LDA $070A                 
CODE_208785:        C9 10         CMP #$10                  
CODE_208787:        F0 03         BEQ CODE_20878C           
CODE_208789:        4C F0 87      JMP CODE_2087F0           

CODE_20878C:        A9 AE         LDA #$AE                  
CODE_20878E:        85 00         STA $00                   
CODE_208790:        A9 02         LDA #$02                  
CODE_208792:        85 01         STA $01                   
CODE_208794:        20 1A FA      JSR CODE_20FA1A           
CODE_208797:        22 85 AF 20   JSL CODE_20AF85           
CODE_20879B:        22 00 9D 23   JSL CODE_239D00           
CODE_20879F:        22 71 98 23   JSL CODE_239871           
CODE_2087A3:        A9 07         LDA #$07                  
CODE_2087A5:        20 10 96      JSR CODE_209610           
CODE_2087A8:        A9 02         LDA #$02                  
CODE_2087AA:        20 10 96      JSR CODE_209610           
CODE_2087AD:        22 8C F5 20   JSL CODE_20F58C           
CODE_2087B1:        22 A5 EA 29   JSL CODE_29EAA5           
CODE_2087B5:        22 66 E7 29   JSL CODE_29E766           
CODE_2087B9:        22 30 E7 29   JSL CODE_29E730           
CODE_2087BD:        A9 00         LDA #$00                  
CODE_2087BF:        20 10 96      JSR CODE_209610           
CODE_2087C2:        A9 C0         LDA #$C0                  
CODE_2087C4:        8D 00 01      STA $0100                 
CODE_2087C7:        20 EB F9      JSR CODE_20F9EB           
CODE_2087CA:        A9 01         LDA #$01                  
CODE_2087CC:        8D 1B 02      STA $021B                 
CODE_2087CF:        A9 00         LDA #$00                  
CODE_2087D1:        8F 55 39 7E   STA $7E3955               
CODE_2087D5:        8D 0B 10      STA $100B                 
CODE_2087D8:        22 94 C7 29   JSL CODE_29C794           
CODE_2087DC:        22 9D E2 29   JSL CODE_29E29D           
CODE_2087E0:        A9 02         LDA #$02                  
CODE_2087E2:        8D 27 04      STA $0427                 
CODE_2087E5:        20 1F 80      JSR CODE_20801F           
CODE_2087E8:        A9 C0         LDA #$C0                  
CODE_2087EA:        8D 00 01      STA $0100                 
CODE_2087ED:        4C A5 8F      JMP CODE_208FA5           

CODE_2087F0:        C9 11         CMP #$11                  
CODE_2087F2:        F0 03         BEQ CODE_2087F7           
CODE_2087F4:        4C 76 88      JMP CODE_208876           
CODE_2087F7:        22 6F AF 20   JSL CODE_20AF6F           
CODE_2087FB:        A9 0E         LDA #$0E                  
CODE_2087FD:        8D 28 10      STA $1028                 
CODE_208800:        9C 41 10      STZ $1041                 
CODE_208803:        A9 FF         LDA #$FF                  
CODE_208805:        85 00         STA $00                   
CODE_208807:        64 01         STZ $01                   
CODE_208809:        20 1A FA      JSR CODE_20FA1A           
CODE_20880C:        A9 0D         LDA #$0D                  
CODE_20880E:        20 10 96      JSR CODE_209610           
CODE_208811:        22 E8 9D 23   JSL CODE_239DE8           
CODE_208815:        A5 28         LDA $28                   
CODE_208817:        20 10 96      JSR CODE_209610           
CODE_20881A:        AD 41 10      LDA $1041                 
CODE_20881D:        C9 03         CMP #$03                  
CODE_20881F:        D0 F0         BNE CODE_208811           
CODE_208821:        A9 02         LDA #$02                  
CODE_208823:        20 10 96      JSR CODE_209610           
CODE_208826:        22 8C F5 20   JSL CODE_20F58C           
CODE_20882A:        22 A5 EA 29   JSL CODE_29EAA5           
CODE_20882E:        22 66 E7 29   JSL CODE_29E766           
CODE_208832:        22 30 E7 29   JSL CODE_29E730           
CODE_208836:        A9 00         LDA #$00                  
CODE_208838:        20 10 96      JSR CODE_209610           
CODE_20883B:        A9 C0         LDA #$C0                  
CODE_20883D:        8D 00 01      STA $0100                 
CODE_208840:        20 EB F9      JSR CODE_20F9EB           
CODE_208843:        A9 01         LDA #$01                  
CODE_208845:        8D 1B 02      STA $021B                 
CODE_208848:        A9 00         LDA #$00                  
CODE_20884A:        8F 55 39 7E   STA $7E3955               
CODE_20884E:        22 94 C7 29   JSL CODE_29C794           
CODE_208852:        A9 80         LDA #$80                  
CODE_208854:        8D 00 42      STA $4200                 
CODE_208857:        22 9D E2 29   JSL CODE_29E29D           
CODE_20885B:        20 1F 80      JSR CODE_20801F           
CODE_20885E:        22 62 9E 23   JSL CODE_239E62           
CODE_208862:        22 A5 EA 29   JSL CODE_29EAA5           
CODE_208866:        A5 14         LDA $14                   
CODE_208868:        F0 F1         BEQ CODE_20885B           
CODE_20886A:        A9 80         LDA #$80                  ;\
CODE_20886C:        8D 02 12      STA $1202                 ;/Fade out music
CODE_20886F:        22 B6 E2 29   JSL CODE_29E2B6           
CODE_208873:        4C A5 8F      JMP CODE_208FA5           

CODE_208876:        C9 12         CMP #$12                  
CODE_208878:        D0 03         BNE CODE_20887D           
CODE_20887A:        4C AE 94      JMP CODE_2094AE           

CODE_20887D:        9C 27 04      STZ $0427                 
CODE_208880:        A2 C0         LDX #$C0                  
CODE_208882:        AC 25 04      LDY $0425                 
CODE_208885:        F0 02         BEQ CODE_208889           
CODE_208887:        A2 80         LDX #$80                  
CODE_208889:        8E 00 01      STX $0100                 
CODE_20888C:        A9 15         LDA #$15                  
CODE_20888E:        8D 08 02      STA $0208                 
CODE_208891:        A9 02         LDA #$02                  
CODE_208893:        8D 09 02      STA $0209                 
CODE_208896:        A9 02         LDA #$02                  
CODE_208898:        8D 03 02      STA $0203                 
CODE_20889B:        A9 20         LDA #$20                  
CODE_20889D:        8D 04 02      STA $0204                 
CODE_2088A0:        A2 17         LDX #$17                  
CODE_2088A2:        AD BF 02      LDA $02BF                 
CODE_2088A5:        C9 01         CMP #$01                  
CODE_2088A7:        F0 04         BEQ CODE_2088AD           
CODE_2088A9:        C9 07         CMP #$07                  
CODE_2088AB:        D0 16         BNE CODE_2088C3           
CODE_2088AD:        8E 08 02      STX $0208                 
CODE_2088B0:        22 34 E1 22   JSL CODE_22E134           
CODE_2088B4:        9C 1A 02      STZ $021A                 
CODE_2088B7:        A9 01         LDA #$01                  
CODE_2088B9:        8D 1B 02      STA $021B                 
CODE_2088BC:        A9 C0         LDA #$C0                  
CODE_2088BE:        8D 00 01      STA $0100                 
CODE_2088C1:        80 1A         BRA CODE_2088DD           

CODE_2088C3:        C9 06         CMP #$06                  
CODE_2088C5:        D0 09         BNE CODE_2088D0           
CODE_2088C7:        8E 08 02      STX $0208                 
CODE_2088CA:        22 99 E4 22   JSL CODE_22E499           
CODE_2088CE:        80 0D         BRA CODE_2088DD           

CODE_2088D0:        C9 05         CMP #$05                  
CODE_2088D2:        D0 22         BNE CODE_2088F6           
CODE_2088D4:        A2 17         LDX #$17                  
CODE_2088D6:        8E 08 02      STX $0208                 
CODE_2088D9:        22 83 E4 22   JSL CODE_22E483           
CODE_2088DD:        A9 64         LDA #$64                  
CODE_2088DF:        8D 04 02      STA $0204                 
CODE_2088E2:        AD BF 02      LDA $02BF                 
CODE_2088E5:        C9 07         CMP #$07                  
CODE_2088E7:        D0 05         BNE CODE_2088EE           
CODE_2088E9:        A9 24         LDA #$24                  
CODE_2088EB:        8D 04 02      STA $0204                 
CODE_2088EE:        A9 13         LDA #$13                  
CODE_2088F0:        8D 09 02      STA $0209                 
CODE_2088F3:        4C 82 89      JMP CODE_208982           

CODE_2088F6:        C9 02         CMP #$02                  
CODE_2088F8:        D0 07         BNE CODE_208901           
CODE_2088FA:        22 E4 E2 22   JSL CODE_22E2E4           
CODE_2088FE:        4C 82 89      JMP CODE_208982           

CODE_208901:        C9 0E         CMP #$0E                  
CODE_208903:        D0 06         BNE CODE_20890B           
CODE_208905:        22 AC E5 22   JSL CODE_22E5AC           
CODE_208909:        80 77         BRA CODE_208982           

CODE_20890B:        C9 09         CMP #$09                  
CODE_20890D:        D0 06         BNE CODE_208915           
CODE_20890F:        22 D1 E4 22   JSL CODE_22E4D1           
CODE_208913:        80 20         BRA CODE_208935           

CODE_208915:        C9 0F         CMP #$0F                  
CODE_208917:        D0 06         BNE CODE_20891F           
CODE_208919:        22 4D E6 22   JSL CODE_22E64D           
CODE_20891D:        80 16         BRA CODE_208935           

CODE_20891F:        C9 0A         CMP #$0A                  
CODE_208921:        D0 06         BNE CODE_208929           
CODE_208923:        22 E5 E3 22   JSL CODE_22E3E5           
CODE_208927:        80 0C         BRA CODE_208935           

CODE_208929:        C9 0C         CMP #$0C                  
CODE_20892B:        F0 08         BEQ CODE_208935           
CODE_20892D:        C9 0B         CMP #$0B                  
CODE_20892F:        D0 10         BNE CODE_208941           
CODE_208931:        22 F5 E4 22   JSL CODE_22E4F5           
CODE_208935:        A9 11         LDA #$11                  
CODE_208937:        8D 08 02      STA $0208                 
CODE_20893A:        A9 06         LDA #$06                  
CODE_20893C:        8D 09 02      STA $0209                 
CODE_20893F:        80 41         BRA CODE_208982           

CODE_208941:        C9 0D         CMP #$0D                  
CODE_208943:        D0 0E         BNE CODE_208953           
CODE_208945:        22 18 E5 22   JSL CODE_22E518           
CODE_208949:        9C 1A 02      STZ $021A                 
CODE_20894C:        A9 01         LDA #$01                  
CODE_20894E:        8D 1B 02      STA $021B                 
CODE_208951:        80 2F         BRA CODE_208982           

CODE_208953:        C9 03         CMP #$03                  
CODE_208955:        F0 18         BEQ CODE_20896F           
CODE_208957:        C9 04         CMP #$04                  
CODE_208959:        F0 14         BEQ CODE_20896F           
CODE_20895B:        C9 08         CMP #$08                  
CODE_20895D:        D0 23         BNE CODE_208982           
CODE_20895F:        22 B1 E4 22   JSL CODE_22E4B1           
CODE_208963:        A9 24         LDA #$24                  
CODE_208965:        8D 04 02      STA $0204                 
CODE_208968:        A9 13         LDA #$13                  
CODE_20896A:        8D 09 02      STA $0209                 
CODE_20896D:        80 13         BRA CODE_208982           

CODE_20896F:        22 38 E3 22   JSL CODE_22E338           
CODE_208973:        A9 22         LDA #$22                  
CODE_208975:        8D 04 02      STA $0204                 
CODE_208978:        A9 13         LDA #$13                  
CODE_20897A:        8D 08 02      STA $0208                 
CODE_20897D:        A9 15         LDA #$15                  
CODE_20897F:        8D 09 02      STA $0209                 
CODE_208982:        A9 02         LDA #$02                  
CODE_208984:        20 10 96      JSR CODE_209610           
CODE_208987:        22 8C F5 20   JSL CODE_20F58C           
CODE_20898B:        22 A5 EA 29   JSL CODE_29EAA5           
CODE_20898F:        22 66 E7 29   JSL CODE_29E766           
CODE_208993:        22 30 E7 29   JSL CODE_29E730           
CODE_208997:        A9 00         LDA #$00                  
CODE_208999:        20 10 96      JSR CODE_209610           
CODE_20899C:        E6 24         INC $24                   
CODE_20899E:        E6 24         INC $24                   
CODE_2089A0:        C6 23         DEC $23                   
CODE_2089A2:        C6 23         DEC $23                   
CODE_2089A4:        20 C0 9C      JSR CODE_209CC0           
CODE_2089A7:        A9 40         LDA #$40                  
CODE_2089A9:        8D 12 06      STA $0612                 
CODE_2089AC:        22 8E B4 2A   JSL CODE_2AB48E           
CODE_2089B0:        AD 0A 07      LDA $070A                 
CODE_2089B3:        C9 0F         CMP #$0F                  
CODE_2089B5:        D0 03         BNE CODE_2089BA           
CODE_2089B7:        4C 48 8A      JMP CODE_208A48           

CODE_2089BA:        22 42 EB 29   JSL CODE_29EB42           
CODE_2089BE:        AE 26 07      LDX $0726                 
CODE_2089C1:        BD 3D 07      LDA $073D,x               
CODE_2089C4:        D0 10         BNE CODE_2089D6           
CODE_2089C6:        AD F2 05      LDA $05F2                 
CODE_2089C9:        D0 0E         BNE CODE_2089D9           
CODE_2089CB:        AD 14 04      LDA $0414                 
CODE_2089CE:        D0 09         BNE CODE_2089D9           
CODE_2089D0:        AD 76 C9      LDA.w DATA_21C976                 
CODE_2089D3:        8D 39 07      STA $0739                 
CODE_2089D6:        4C 48 8A      JMP CODE_208A48           

CODE_2089D9:        AF 8C 39 7E   LDA $7E398C               
CODE_2089DD:        8D 10 02      STA $0210                 
CODE_2089E0:        8D 12 02      STA $0212                 
CODE_2089E3:        AF 8B 39 7E   LDA $7E398B               
CODE_2089E7:        85 12         STA $12                   
CODE_2089E9:        8D 11 02      STA $0211                 
CODE_2089EC:        4A            LSR A                     
CODE_2089ED:        8D 13 02      STA $0213                 
CODE_2089F0:        6E 12 02      ROR $0212                 
CODE_2089F3:        AF 8E 39 7E   LDA $7E398E               
CODE_2089F7:        8D 16 02      STA $0216                 
CODE_2089FA:        AF 8D 39 7E   LDA $7E398D               
CODE_2089FE:        85 13         STA $13                   
CODE_208A00:        8D 17 02      STA $0217                 
CODE_208A03:        C2 20         REP #$20                  
CODE_208A05:        AD 16 02      LDA $0216                 
CODE_208A08:        4A            LSR A                     
CODE_208A09:        4A            LSR A                     
CODE_208A0A:        8D 18 02      STA $0218                 
CODE_208A0D:        AD 16 02      LDA $0216                 
CODE_208A10:        38            SEC                       
CODE_208A11:        ED 18 02      SBC $0218                 
CODE_208A14:        8D 18 02      STA $0218                 
CODE_208A17:        E2 20         SEP #$20                  
CODE_208A19:        9C F2 05      STZ $05F2                 
CODE_208A1C:        9C 14 04      STZ $0414                 
CODE_208A1F:        AD 50 03      LDA $0350                 
CODE_208A22:        C9 02         CMP #$02                  
CODE_208A24:        F0 04         BEQ CODE_208A2A           
CODE_208A26:        C9 23         CMP #$23                  
CODE_208A28:        D0 05         BNE CODE_208A2F           
CODE_208A2A:        A9 40         LDA #$40                  
CODE_208A2C:        8D 18 02      STA $0218                 
CODE_208A2F:        C9 03         CMP #$03                  
CODE_208A31:        F0 04         BEQ CODE_208A37           
CODE_208A33:        C9 24         CMP #$24                  
CODE_208A35:        D0 06         BNE CODE_208A3D           
CODE_208A37:        9C 18 02      STZ $0218                 
CODE_208A3A:        9C 19 02      STZ $0219                 
CODE_208A3D:        AD 4F 03      LDA $034F                 
CODE_208A40:        F0 06         BEQ CODE_208A48           
CODE_208A42:        AD 16 02      LDA $0216                 
CODE_208A45:        8D 18 02      STA $0218                 
CODE_208A48:        AE 26 07      LDX $0726                 
CODE_208A4B:        BD 3D 07      LDA $073D,x               
CODE_208A4E:        F0 03         BEQ CODE_208A53           
CODE_208A50:        4C FD 8F      JMP CODE_208FFD           

CODE_208A53:        9C 01 01      STZ $0101                 
CODE_208A56:        A9 00         LDA #$00                  
CODE_208A58:        8F 55 39 7E   STA $7E3955               
CODE_208A5C:        22 94 C7 29   JSL CODE_29C794           
CODE_208A60:        A9 80         LDA #$80                  
CODE_208A62:        85 16         STA $16                   
CODE_208A64:        AD 13 07      LDA $0713                 
CODE_208A67:        F0 0C         BEQ CODE_208A75           
CODE_208A69:        AD 25 04      LDA $0425                 
CODE_208A6C:        D0 04         BNE CODE_208A72           
CODE_208A6E:        A9 0F         LDA #$0F                  
CODE_208A70:        85 16         STA $16                   
CODE_208A72:        4C D5 8B      JMP CODE_208BD5           

CODE_208A75:        64 20         STZ $20                   
CODE_208A77:        20 AA 96      JSR CODE_2096AA           
CODE_208A7A:        A9 FE         LDA #$FE                  
CODE_208A7C:        8D 5F 10      STA $105F                 
CODE_208A7F:        AD 25 04      LDA $0425                 
CODE_208A82:        F0 10         BEQ CODE_208A94           
CODE_208A84:        AC 76 03      LDY $0376                 
CODE_208A87:        B9 3C 82      LDA.w DATA_21823C,y               
CODE_208A8A:        85 2E         STA $2E                   
CODE_208A8C:        B9 4C 82      LDA.w DATA_21824C,y               
CODE_208A8F:        85 2F         STA $2F                   
CODE_208A91:        4C 9E 8A      JMP CODE_208A9E           

CODE_208A94:        AD 00 82      LDA.w DATA_218200                 
CODE_208A97:        85 2E         STA $2E                   
CODE_208A99:        AD 01 82      LDA.w DATA_218200+1                 
CODE_208A9C:        85 2F         STA $2F                   
CODE_208A9E:        9C 44 10      STZ $1044                 
CODE_208AA1:        AD 16 02      LDA $0216                 
CODE_208AA4:        F0 0A         BEQ CODE_208AB0           
CODE_208AA6:        A5 2E         LDA $2E                   
CODE_208AA8:        18            CLC                       
CODE_208AA9:        69 F0         ADC #$F0                  
CODE_208AAB:        85 2E         STA $2E                   
CODE_208AAD:        EE 44 10      INC $1044                 
CODE_208AB0:        A0 04         LDY #$04                  
CODE_208AB2:        AD 16 02      LDA $0216                 
CODE_208AB5:        D9 DE CD      CMP.w DATA_21CDDE,y               
CODE_208AB8:        F0 03         BEQ CODE_208ABD           
CODE_208ABA:        88            DEY                       
CODE_208ABB:        10 F5         BPL CODE_208AB2           
CODE_208ABD:        8C 60 10      STY $1060                 
CODE_208AC0:        B9 E3 CD      LDA.w DATA_21CDE3,y               
CODE_208AC3:        8D 47 10      STA $1047                 
CODE_208AC6:        8D 48 10      STA $1048                 
CODE_208AC9:        8D 49 10      STA $1049                 
CODE_208ACC:        8D 4A 10      STA $104A                 
CODE_208ACF:        B9 E8 CD      LDA.w DATA_21CDE8,y               
CODE_208AD2:        8D 4B 10      STA $104B                 
CODE_208AD5:        B9 F2 CD      LDA.w DATA_21CDF2,y               
CODE_208AD8:        8D 4D 10      STA $104D                 
CODE_208ADB:        B9 ED CD      LDA.w DATA_21CDED,y               
CODE_208ADE:        8D 4C 10      STA $104C                 
CODE_208AE1:        B9 F7 CD      LDA.w DATA_21CDF7,y               
CODE_208AE4:        8D 4E 10      STA $104E                 
CODE_208AE7:        9C 4F 10      STZ $104F                 
CODE_208AEA:        A9 03         LDA #$03                  
CODE_208AEC:        8D 45 10      STA $1045                 
CODE_208AEF:        A0 01         LDY #$01                  
CODE_208AF1:        8C 46 10      STY $1046                 
CODE_208AF4:        A9 02         LDA #$02                  
CODE_208AF6:        8D 91 02      STA $0291                 
CODE_208AF9:        22 A9 F9 2A   JSL CODE_2AF9A9           
CODE_208AFD:        9C 00 01      STZ $0100                 
CODE_208B00:        A9 80         LDA #$80                  
CODE_208B02:        8D 00 42      STA $4200                 
CODE_208B05:        A9 15         LDA #$15                  
CODE_208B07:        8D 08 02      STA $0208                 
CODE_208B0A:        A9 02         LDA #$02                  
CODE_208B0C:        8D 09 02      STA $0209                 
CODE_208B0F:        A9 02         LDA #$02                  
CODE_208B11:        8D 03 02      STA $0203                 
CODE_208B14:        A9 20         LDA #$20                  
CODE_208B16:        8D 04 02      STA $0204                 
CODE_208B19:        AD BF 02      LDA $02BF                 
CODE_208B1C:        C9 01         CMP #$01                  
CODE_208B1E:        F0 11         BEQ CODE_208B31           
CODE_208B20:        C9 06         CMP #$06                  
CODE_208B22:        F0 0D         BEQ CODE_208B31           
CODE_208B24:        C9 07         CMP #$07                  
CODE_208B26:        F0 09         BEQ CODE_208B31           
CODE_208B28:        C9 05         CMP #$05                  
CODE_208B2A:        D0 20         BNE CODE_208B4C           
CODE_208B2C:        A9 17         LDA #$17                  
CODE_208B2E:        8D 08 02      STA $0208                 
CODE_208B31:        A9 C0         LDA #$C0                  
CODE_208B33:        8D 00 01      STA $0100                 
CODE_208B36:        A9 64         LDA #$64                  
CODE_208B38:        8D 04 02      STA $0204                 
CODE_208B3B:        A9 13         LDA #$13                  
CODE_208B3D:        8D 09 02      STA $0209                 
CODE_208B40:        AD BF 02      LDA $02BF                 
CODE_208B43:        C9 07         CMP #$07                  
CODE_208B45:        D0 05         BNE CODE_208B4C           
CODE_208B47:        A9 24         LDA #$24                  
CODE_208B49:        8D 04 02      STA $0204                 
CODE_208B4C:        C9 03         CMP #$03                  
CODE_208B4E:        F0 14         BEQ CODE_208B64           
CODE_208B50:        C9 04         CMP #$04                  
CODE_208B52:        F0 10         BEQ CODE_208B64           
CODE_208B54:        C9 08         CMP #$08                  
CODE_208B56:        D0 1D         BNE CODE_208B75           
CODE_208B58:        A9 64         LDA #$64                  
CODE_208B5A:        8D 04 02      STA $0204                 
CODE_208B5D:        A9 13         LDA #$13                  
CODE_208B5F:        8D 09 02      STA $0209                 
CODE_208B62:        80 2F         BRA CODE_208B93           

CODE_208B64:        A9 22         LDA #$22                  
CODE_208B66:        8D 04 02      STA $0204                 
CODE_208B69:        A9 13         LDA #$13                  
CODE_208B6B:        8D 08 02      STA $0208                 
CODE_208B6E:        A9 15         LDA #$15                  
CODE_208B70:        8D 09 02      STA $0209                 
CODE_208B73:        80 1E         BRA CODE_208B93           
CODE_208B75:        C9 09         CMP #$09                  
CODE_208B77:        F0 10         BEQ CODE_208B89           
CODE_208B79:        C9 0A         CMP #$0A                  
CODE_208B7B:        F0 0C         BEQ CODE_208B89           
CODE_208B7D:        C9 0B         CMP #$0B                  
CODE_208B7F:        F0 08         BEQ CODE_208B89           
CODE_208B81:        C9 0F         CMP #$0F                  
CODE_208B83:        F0 04         BEQ CODE_208B89           
CODE_208B85:        C9 0C         CMP #$0C                  
CODE_208B87:        D0 0A         BNE CODE_208B93           
CODE_208B89:        A9 11         LDA #$11                  
CODE_208B8B:        8D 08 02      STA $0208                 
CODE_208B8E:        A9 06         LDA #$06                  
CODE_208B90:        8D 09 02      STA $0209                 
CODE_208B93:        A9 80         LDA #$80                  
CODE_208B95:        8D 16 00      STA $0016                 
CODE_208B98:        22 63 FA 2A   JSL CODE_2AFA63           
CODE_208B9C:        AD 50 03      LDA $0350                 
CODE_208B9F:        C9 01         CMP #$01                  
CODE_208BA1:        F0 08         BEQ CODE_208BAB           
CODE_208BA3:        C9 21         CMP #$21                  
CODE_208BA5:        F0 04         BEQ CODE_208BAB           
CODE_208BA7:        C9 25         CMP #$25                  
CODE_208BA9:        D0 00         BNE CODE_208BAB           
CODE_208BAB:        20 1F 80      JSR CODE_20801F           
CODE_208BAE:        EE 16 00      INC $0016                 
CODE_208BB1:        EE 16 00      INC $0016                 
CODE_208BB4:        AD 16 00      LDA $0016                 
CODE_208BB7:        29 0F         AND #$0F                  
CODE_208BB9:        8D 16 00      STA $0016                 
CODE_208BBC:        D0 ED         BNE CODE_208BAB           
CODE_208BBE:        A9 0F         LDA #$0F                  
CODE_208BC0:        8D 16 00      STA $0016                 
CODE_208BC3:        20 1F 80      JSR CODE_20801F           
CODE_208BC6:        22 63 FA 2A   JSL CODE_2AFA63           
CODE_208BCA:        22 44 93 23   JSL CODE_239344           
CODE_208BCE:        AD 50 10      LDA $1050                 
CODE_208BD1:        C9 38         CMP #$38                  
CODE_208BD3:        D0 EE         BNE CODE_208BC3           
CODE_208BD5:        64 20         STZ $20                   
CODE_208BD7:        A2 C0         LDX #$C0                  
CODE_208BD9:        AD 25 04      LDA $0425                 
CODE_208BDC:        F0 02         BEQ CODE_208BE0           
CODE_208BDE:        A2 80         LDX #$80                  
CODE_208BE0:        8E 00 01      STX $0100                 
CODE_208BE3:        AD 0A 07      LDA $070A                 
CODE_208BE6:        C9 0F         CMP #$0F                  
CODE_208BE8:        F0 03         BEQ CODE_208BED           
CODE_208BEA:        4C C0 8C      JMP CODE_208CC0           

CODE_208BED:        9C 11 02      STZ $0211                 
CODE_208BF0:        A9 15         LDA #$15                  
CODE_208BF2:        8D 08 02      STA $0208                 
CODE_208BF5:        A9 04         LDA #$04                  
CODE_208BF7:        8D 0E 07      STA $070E                 
CODE_208BFA:        8D 0F 07      STA $070F                 
CODE_208BFD:        A9 50         LDA #$50                  
CODE_208BFF:        8D E7 05      STA $05E7                 
CODE_208C02:        A9 C4         LDA #$C4                  
CODE_208C04:        8D E8 05      STA $05E8                 
CODE_208C07:        A9 0B         LDA #$0B                  
CODE_208C09:        8D 0B 07      STA $070B                 
CODE_208C0C:        A9 35         LDA #$35                  
CODE_208C0E:        8D 0C 07      STA $070C                 
CODE_208C11:        A9 A0         LDA #$A0                  
CODE_208C13:        85 97         STA $97                   
CODE_208C15:        A9 78         LDA #$78                  
CODE_208C17:        85 95         STA $95                   
CODE_208C19:        85 96         STA $96                   
CODE_208C1B:        9C 40 10      STZ $1040                 
CODE_208C1E:        9C 28 10      STZ $1028                 
CODE_208C21:        A9 0D         LDA #$0D                  ;\
CODE_208C23:        8D 02 12      STA $1202                 ;/N-Spade/Spade music
CODE_208C26:        A9 80         LDA #$80                  
CODE_208C28:        8D 00 42      STA $4200                 
CODE_208C2B:        20 1F 80      JSR CODE_20801F           
CODE_208C2E:        22 86 94 23   JSL CODE_239486           
CODE_208C32:        22 AA E7 29   JSL CODE_29E7AA           
CODE_208C36:        A5 14         LDA $14                   
CODE_208C38:        F0 F1         BEQ CODE_208C2B           
CODE_208C3A:        AD 42 10      LDA $1042                 
CODE_208C3D:        C9 04         CMP #$04                  
CODE_208C3F:        D0 08         BNE CODE_208C49           
CODE_208C41:        A9 01         LDA #$01                  
CODE_208C43:        8D 2D 07      STA $072D                 
CODE_208C46:        4C 50 8C      JMP CODE_208C50
           
CODE_208C49:        C9 07         CMP #$07                  
CODE_208C4B:        D0 03         BNE CODE_208C50           
CODE_208C4D:        20 C1 95      JSR $95C1           ;INVALID: Polymorphic jump?
CODE_208C50:        9C D4 02      STZ $02D4                 
CODE_208C53:        9C 0F 07      STZ $070F                 
CODE_208C56:        22 B6 E2 29   JSL CODE_29E2B6           
CODE_208C5A:        A9 80         LDA #$80                  
CODE_208C5C:        85 16         STA $16                   
CODE_208C5E:        20 1F 80      JSR CODE_20801F           
CODE_208C61:        9C 00 42      STZ $4200                 
CODE_208C64:        AD 9A 06      LDA $069A                 
CODE_208C67:        F0 51         BEQ CODE_208CBA           
CODE_208C69:        A0 00         LDY #$00                  
CODE_208C6B:        AD 42 10      LDA $1042                 
CODE_208C6E:        C9 01         CMP #$01                  
CODE_208C70:        D0 09         BNE CODE_208C7B           
CODE_208C72:        A9 01         LDA #$01                  
CODE_208C74:        8D 3B 07      STA $073B                 
CODE_208C77:        A0 10         LDY #$10                  
CODE_208C79:        D0 0B         BNE CODE_208C86           
CODE_208C7B:        C9 02         CMP #$02                  
CODE_208C7D:        D0 07         BNE CODE_208C86           
CODE_208C7F:        A9 02         LDA #$02                  
CODE_208C81:        8D 3B 07      STA $073B                 
CODE_208C84:        A0 11         LDY #$11                  
CODE_208C86:        8C 0A 07      STY $070A                 
CODE_208C89:        8C BF 1E      STY $1EBF                 
CODE_208C8C:        C0 00         CPY #$00                  
CODE_208C8E:        F0 2A         BEQ CODE_208CBA           
CODE_208C90:        AF 55 39 7E   LDA $7E3955               
CODE_208C94:        1A            INC A                     
CODE_208C95:        8F 55 39 7E   STA $7E3955               
CODE_208C99:        A0 FD         LDY #$FD                  
CODE_208C9B:        A9 00         LDA #$00                  
CODE_208C9D:        99 00 00      STA $0000,y               
CODE_208CA0:        88            DEY                       
CODE_208CA1:        C0 75         CPY #$75                  
CODE_208CA3:        B0 04         BCS CODE_208CA9                   
CODE_208CA5:        C0 69         CPY #$69                  
CODE_208CA7:        B0 F7         BCS CODE_208CA0                   
CODE_208CA9:        C0 FF         CPY #$FF                  
CODE_208CAB:        D0 F0         BNE CODE_208C9D           
CODE_208CAD:        A0 CF         LDY #$CF                  
CODE_208CAF:        99 00 04      STA $0400,y               
CODE_208CB2:        88            DEY                       
CODE_208CB3:        C0 FF         CPY #$FF                  
CODE_208CB5:        D0 F8         BNE CODE_208CAF           
CODE_208CB7:        4C 53 87      JMP CODE_208753           

CODE_208CBA:        9C 9A 06      STZ $069A                 
CODE_208CBD:        4C B1 8F      JMP CODE_208FB1           

CODE_208CC0:        A9 10         LDA #$10                  
CODE_208CC2:        8D 49 03      STA $0349                 
CODE_208CC5:        A9 01         LDA #$01                  
CODE_208CC7:        AE 0A 07      LDX $070A                 
CODE_208CCA:        E0 07         CPX #$07                  
CODE_208CCC:        D0 02         BNE CODE_208CD0           
CODE_208CCE:        A9 11         LDA #$11                  
CODE_208CD0:        8D 0F 02      STA $020F                 
CODE_208CD3:        9C 4D 03      STZ $034D                 
CODE_208CD6:        AD 27 07      LDA $0727                 
CODE_208CD9:        C9 06         CMP #$06                  
CODE_208CDB:        F0 31         BEQ CODE_208D0E           
CODE_208CDD:        AD 50 03      LDA $0350                 
CODE_208CE0:        C9 01         CMP #$01                  
CODE_208CE2:        F0 08         BEQ CODE_208CEC           
CODE_208CE4:        C9 21         CMP #$21                  
CODE_208CE6:        F0 04         BEQ CODE_208CEC           
CODE_208CE8:        C9 25         CMP #$25                  
CODE_208CEA:        D0 22         BNE CODE_208D0E           
CODE_208CEC:        C2 20         REP #$20                  
CODE_208CEE:        A9 42 0F      LDA #$0F42                
CODE_208CF1:        8D 70 43      STA $4370                 
CODE_208CF4:        A9 60 F8      LDA #$F860                
CODE_208CF7:        8D 72 43      STA $4372                 
CODE_208CFA:        A2 2A         LDX #$2A                  
CODE_208CFC:        8E 74 43      STX $4374                 
CODE_208CFF:        A2 7F         LDX #$7F                  
CODE_208D01:        8E 77 43      STX $4377                 
CODE_208D04:        E2 20         SEP #$20                  
CODE_208D06:        A9 01         LDA #$01                  
CODE_208D08:        8D 4D 03      STA $034D                 
CODE_208D0B:        9C 49 02      STZ $0249                 
CODE_208D0E:        A9 A1         LDA #$A1                  
CODE_208D10:        8D 00 42      STA $4200                 
CODE_208D13:        AC 0A 07      LDY $070A                 
CODE_208D16:        C0 05         CPY #$05                  
CODE_208D18:        D0 06         BNE CODE_208D20           
CODE_208D1A:        AD 8E C9      LDA.w DATA_21C98E                 
CODE_208D1D:        8D 9F 1E      STA $1E9F                 
CODE_208D20:        AD 4D 03      LDA $034D                 
CODE_208D23:        F0 04         BEQ CODE_208D29           
CODE_208D25:        22 1C 84 2A   JSL CODE_2A841C           
CODE_208D29:        20 1F 80      JSR CODE_20801F           
CODE_208D2C:        AD 06 12      LDA $1206                 
CODE_208D2F:        C9 04         CMP #$04                  
CODE_208D31:        F0 0D         BEQ CODE_208D40           
CODE_208D33:        AD 61 10      LDA $1061                 
CODE_208D36:        F0 0B         BEQ CODE_208D43           
CODE_208D38:        CD 06 12      CMP $1206                 
CODE_208D3B:        F0 03         BEQ CODE_208D40           
CODE_208D3D:        8D 02 12      STA $1202                 
CODE_208D40:        9C 61 10      STZ $1061                 
CODE_208D43:        AD F3 05      LDA $05F3                 
CODE_208D46:        30 42         BMI CODE_208D8A           
CODE_208D48:        AC 0A 07      LDY $070A                 
CODE_208D4B:        C0 05         CPY #$05                  
CODE_208D4D:        D0 22         BNE CODE_208D71           
CODE_208D4F:        A5 15         LDA $15                   
CODE_208D51:        29 07         AND #$07                  
CODE_208D53:        D0 17         BNE CODE_208D6C           
CODE_208D55:        E6 1B         INC $1B                   
CODE_208D57:        A5 1B         LDA $1B                   
CODE_208D59:        CD 9F 1E      CMP $1E9F                 
CODE_208D5C:        D0 04         BNE CODE_208D62           
CODE_208D5E:        A9 00         LDA #$00                  
CODE_208D60:        85 1B         STA $1B                   
CODE_208D62:        A8            TAY                       
CODE_208D63:        B9 8F C9      LDA.w DATA_21C98F,y               
CODE_208D66:        8D 45 02      STA $0245                 
CODE_208D69:        9C 43 02      STZ $0243                 
CODE_208D6C:        20 7B A0      JSR CODE_20A07B           
CODE_208D6F:        80 5A         BRA CODE_208DCB           

CODE_208D71:        C0 07         CPY #$07                  
CODE_208D73:        F0 15         BEQ CODE_208D8A           
CODE_208D75:        AD 67 05      LDA $0567                 
CODE_208D78:        F0 12         BEQ CODE_208D8C           
CODE_208D7A:        10 08         BPL CODE_208D84           
CODE_208D7C:        9C 43 02      STZ $0243                 
CODE_208D7F:        A9 7F         LDA #$7F                  ;P-Switch duration
CODE_208D81:        8D 67 05      STA $0567                 ;
CODE_208D84:        9C 45 02      STZ $0245                 
CODE_208D87:        20 7B A0      JSR CODE_20A07B           
CODE_208D8A:        80 3F         BRA CODE_208DCB           

CODE_208D8C:        C0 0A         CPY #$0A                  
CODE_208D8E:        D0 22         BNE CODE_208DB2           
CODE_208D90:        AD BF 1E      LDA $1EBF                 
CODE_208D93:        C9 15         CMP #$15                  
CODE_208D95:        D0 34         BNE CODE_208DCB           
CODE_208D97:        AC 46 02      LDY $0246                 
CODE_208D9A:        A5 15         LDA $15                   
CODE_208D9C:        29 03         AND #$03                  
CODE_208D9E:        D0 0D         BNE CODE_208DAD           
CODE_208DA0:        9C 43 02      STZ $0243                 
CODE_208DA3:        C8            INY                       
CODE_208DA4:        C0 03         CPY #$03                  
CODE_208DA6:        D0 02         BNE CODE_208DAA           
CODE_208DA8:        A0 00         LDY #$00                  
CODE_208DAA:        8C 46 02      STY $0246                 
CODE_208DAD:        20 C6 A0      JSR CODE_20A0C6           
CODE_208DB0:        80 19         BRA CODE_208DCB           

CODE_208DB2:        A5 15         LDA $15                   
CODE_208DB4:        29 18         AND #$18                  
CODE_208DB6:        4A            LSR A                     
CODE_208DB7:        4A            LSR A                     
CODE_208DB8:        4A            LSR A                     
CODE_208DB9:        AA            TAX                       
CODE_208DBA:        BD DF C9      LDA.w DATA_21C9DF,x               
CODE_208DBD:        CD 45 02      CMP $0245                 
CODE_208DC0:        F0 03         BEQ CODE_208DC5           
CODE_208DC2:        9C 43 02      STZ $0243                 
CODE_208DC5:        8D 45 02      STA $0245                 
CODE_208DC8:        20 7B A0      JSR CODE_20A07B           
CODE_208DCB:        AF 07 00 70   LDA $700007               
CODE_208DCF:        F0 1D         BEQ CODE_208DEE           
CODE_208DD1:        A5 F8         LDA $F8                   
CODE_208DD3:        05 F9         ORA $F9                   
CODE_208DD5:        29 20         AND #$20                  
CODE_208DD7:        F0 03         BEQ CODE_208DDC           
CODE_208DD9:        EE EC 00      INC $00EC                 
CODE_208DDC:        A5 F8         LDA $F8                   
CODE_208DDE:        05 F9         ORA $F9                   
CODE_208DE0:        29 10         AND #$10                  
CODE_208DE2:        D0 0A         BNE CODE_208DEE           
CODE_208DE4:        AD EC 00      LDA $00EC                 
CODE_208DE7:        29 01         AND #$01                  
CODE_208DE9:        F0 03         BEQ CODE_208DEE           
CODE_208DEB:        82 32 FF      BRL CODE_208D20           

CODE_208DEE:        AD 49 03      LDA $0349                 
CODE_208DF1:        F0 06         BEQ CODE_208DF9           
CODE_208DF3:        CE 49 03      DEC $0349                 
CODE_208DF6:        4C 54 8E      JMP CODE_208E54           

CODE_208DF9:        AD 71 05      LDA $0571                 
CODE_208DFC:        D0 56         BNE CODE_208E54           
CODE_208DFE:        AD 8C 02      LDA $028C                 
CODE_208E01:        C9 01         CMP #$01                  
CODE_208E03:        F0 4F         BEQ CODE_208E54           
CODE_208E05:        C9 03         CMP #$03                  
CODE_208E07:        F0 4B         BEQ CODE_208E54           
CODE_208E09:        AD 06 12      LDA $1206                 
CODE_208E0C:        C9 80         CMP #$80                  
CODE_208E0E:        F0 44         BEQ CODE_208E54           
CODE_208E10:        C9 F0         CMP #$F0                  
CODE_208E12:        F0 40         BEQ CODE_208E54           
CODE_208E14:        A5 18         LDA $18                   
CODE_208E16:        29 10         AND #$10                  
CODE_208E18:        F0 3A         BEQ CODE_208E54           
CODE_208E1A:        AD BF 1E      LDA $1EBF                 
CODE_208E1D:        C9 16         CMP #$16                  
CODE_208E1F:        F0 33         BEQ CODE_208E54           
CODE_208E21:        C9 2D         CMP #$2D                  
CODE_208E23:        F0 2F         BEQ CODE_208E54           
CODE_208E25:        AD D9 02      LDA $02D9                 
CODE_208E28:        D0 2A         BNE CODE_208E54           
CODE_208E2A:        AD 61 10      LDA $1061                 
CODE_208E2D:        D0 25         BNE CODE_208E54           
CODE_208E2F:        A5 BC         LDA $BC                   
CODE_208E31:        C9 A4         CMP #$A4                  
CODE_208E33:        F0 04         BEQ CODE_208E39           
CODE_208E35:        8F 20 C5 7F   STA $7FC520               
CODE_208E39:        A0 A4         LDY #$A4                  
CODE_208E3B:        AD 7A 03      LDA $037A                 
CODE_208E3E:        49 01         EOR #$01                  
CODE_208E40:        8D 7A 03      STA $037A                 
CODE_208E43:        D0 05         BNE CODE_208E4A           
CODE_208E45:        AF 20 C5 7F   LDA $7FC520               
CODE_208E49:        A8            TAY                       
CODE_208E4A:        84 BC         STY $BC                   
CODE_208E4C:        22 00 E0 22   JSL CODE_22E000           
CODE_208E50:        22 B7 EB 29   JSL CODE_29EBB7           
CODE_208E54:        AD 8C 02      LDA $028C                 
CODE_208E57:        C9 03         CMP #$03                  
CODE_208E59:        D0 05         BNE CODE_208E60           
CODE_208E5B:        A9 01         LDA #$01                  
CODE_208E5D:        8D 7A 03      STA $037A                 
CODE_208E60:        AD 7A 03      LDA $037A                 
CODE_208E63:        F0 0B         BEQ CODE_208E70           
CODE_208E65:        22 A9 E0 22   JSL CODE_22E0A9           
CODE_208E69:        22 F7 EB 29   JSL CODE_29EBF7           
CODE_208E6D:        4C 20 8D      JMP CODE_208D20           

CODE_208E70:        A5 BF         LDA $BF                   
CODE_208E72:        D0 26         BNE CODE_208E9A           
CODE_208E74:        A4 25         LDY $25                   
CODE_208E76:        AD 25 04      LDA $0425                 
CODE_208E79:        F0 0B         BEQ CODE_208E86           
CODE_208E7B:        AD 16 02      LDA $0216                 
CODE_208E7E:        29 F0         AND #$F0                  
CODE_208E80:        05 13         ORA $13                   
CODE_208E82:        85 B7         STA $B7                   
CODE_208E84:        80 07         BRA CODE_208E8D           
CODE_208E86:        AD 10 02      LDA $0210                 
CODE_208E89:        85 B7         STA $B7                   
CODE_208E8B:        A5 12         LDA $12                   
CODE_208E8D:        22 F5 97 20   JSL CODE_2097F5           
CODE_208E91:        AD 25 04      LDA $0425                 
CODE_208E94:        D0 04         BNE CODE_208E9A           
CODE_208E96:        C6 24         DEC $24                   
CODE_208E98:        E6 23         INC $23                   
CODE_208E9A:        A5 B7         LDA $B7                   
CODE_208E9C:        48            PHA                       
CODE_208E9D:        AD 25 04      LDA $0425                 
CODE_208EA0:        F0 0C         BEQ CODE_208EAE           
CODE_208EA2:        AD 18 02      LDA $0218                 
CODE_208EA5:        29 F0         AND #$F0                  
CODE_208EA7:        0D 19 02      ORA $0219                 
CODE_208EAA:        85 B7         STA $B7                   
CODE_208EAC:        80 08         BRA CODE_208EB6           

CODE_208EAE:        AD 12 02      LDA $0212                 
CODE_208EB1:        85 B7         STA $B7                   
CODE_208EB3:        AD 13 02      LDA $0213                 
CODE_208EB6:        68            PLA                       
CODE_208EB7:        85 B7         STA $B7                   
CODE_208EB9:        AD 14 04      LDA $0414                 
CODE_208EBC:        F0 63         BEQ CODE_208F21           
CODE_208EBE:        AD 4E 03      LDA $034E                 
CODE_208EC1:        F0 53         BEQ CODE_208F16           
CODE_208EC3:        A0 08         LDY #$08                  
CODE_208EC5:        A5 BB         LDA $BB                   
CODE_208EC7:        D0 02         BNE CODE_208ECB           
CODE_208EC9:        A0 94         LDY #$94                  
CODE_208ECB:        84 BC         STY $BC                   
CODE_208ECD:        A9 01         LDA #$01                  
CODE_208ECF:        85 9C         STA $9C                   
CODE_208ED1:        9C 81 07      STZ $0781                 
CODE_208ED4:        9C 80 07      STZ $0780                 
CODE_208ED7:        20 1F 80      JSR CODE_20801F           
CODE_208EDA:        4C F5 8E      JMP CODE_208EF5           

CODE_208EDD:        A5 F8         LDA $F8                   
CODE_208EDF:        29 20         AND #$20                  
CODE_208EE1:        F0 03         BEQ CODE_208EE6           
CODE_208EE3:        EE EC 00      INC $00EC                 
CODE_208EE6:        A5 F8         LDA $F8                   
CODE_208EE8:        29 10         AND #$10                  
CODE_208EEA:        D0 09         BNE CODE_208EF5           
CODE_208EEC:        AD EC 00      LDA $00EC                 
CODE_208EEF:        29 01         AND #$01                  
CODE_208EF1:        F0 02         BEQ CODE_208EF5           
CODE_208EF3:        80 E2         BRA CODE_208ED7           

CODE_208EF5:        22 A9 E0 22   JSL CODE_22E0A9           
CODE_208EF9:        22 37 E2 20   JSL CODE_20E237           
CODE_208EFD:        22 C1 8F 27   JSL CODE_278FC1           
CODE_208F01:        22 7E BE 27   JSL CODE_27BE7E           
CODE_208F05:        22 99 B2 27   JSL CODE_27B299           
CODE_208F09:        22 9E DC 27   JSL CODE_27DC9E           
CODE_208F0D:        AD 4E 03      LDA $034E                 
CODE_208F10:        C9 20         CMP #$20                  
CODE_208F12:        90 C3         BCC CODE_208ED7           
CODE_208F14:        64 9C         STZ $9C                   
CODE_208F16:        9C 4E 03      STZ $034E                 
CODE_208F19:        22 94 C7 29   JSL CODE_29C794           
CODE_208F1D:        5C AD DF 29   JML CODE_29DFAD           

CODE_208F21:        22 A9 E0 22   JSL CODE_22E0A9           
CODE_208F25:        22 5A 9D 20   JSL CODE_209D5A           
CODE_208F29:        9C 81 07      STZ $0781                 
CODE_208F2C:        9C 80 07      STZ $0780                 
CODE_208F2F:        22 A7 BF 23   JSL CODE_23BFA7           
CODE_208F33:        A5 BF         LDA $BF                   
CODE_208F35:        C9 03         CMP #$03                  
CODE_208F37:        F0 19         BEQ CODE_208F52           
CODE_208F39:        22 C1 8F 27   JSL CODE_278FC1           
CODE_208F3D:        22 7E BE 27   JSL CODE_27BE7E           
CODE_208F41:        22 99 B2 27   JSL CODE_27B299           
CODE_208F45:        22 9E DC 27   JSL CODE_27DC9E           
CODE_208F49:        AD 80 05      LDA $0580                 
CODE_208F4C:        F0 04         BEQ CODE_208F52           
CODE_208F4E:        22 00 85 27   JSL CODE_278500           
CODE_208F52:        A5 14         LDA $14                   
CODE_208F54:        F0 0B         BEQ CODE_208F61           
CODE_208F56:        AE 26 07      LDX $0726                 
CODE_208F59:        A5 BB         LDA $BB                   
CODE_208F5B:        9D 47 07      STA $0747,x               
CODE_208F5E:        9C BE 07      STZ $07BE                 
CODE_208F61:        22 00 80 27   JSL CODE_278000           
CODE_208F65:        AD 80 03      LDA $0380                 
CODE_208F68:        C9 FF         CMP #$FF                  
CODE_208F6A:        D0 20         BNE CODE_208F8C           
CODE_208F6C:        AD EE 03      LDA $03EE                 
CODE_208F6F:        D0 1B         BNE CODE_208F8C           
CODE_208F71:        AD 7B 03      LDA $037B                 
CODE_208F74:        D0 16         BNE CODE_208F8C           
CODE_208F76:        A5 28         LDA $28                   
CODE_208F78:        D0 12         BNE CODE_208F8C           
CODE_208F7A:        AD 1C 04      LDA $041C                 
CODE_208F7D:        D0 09         BNE CODE_208F88           
CODE_208F7F:        22 A5 EA 29   JSL CODE_29EAA5           
CODE_208F83:        AD F2 05      LDA $05F2                 
CODE_208F86:        F0 0A         BEQ CODE_208F92           
CODE_208F88:        22 E0 D8 29   JSL CODE_29D8E0           
CODE_208F8C:        A9 00         LDA #$00                  
CODE_208F8E:        8F 54 39 7E   STA $7E3954               
CODE_208F92:        9C 7B 03      STZ $037B                 
CODE_208F95:        A5 14         LDA $14                   
CODE_208F97:        F0 61         BEQ CODE_208FFA           
CODE_208F99:        AE 26 07      LDX $0726                 
CODE_208F9C:        A9 01         LDA #$01                  
CODE_208F9E:        9D 4A 07      STA $074A,x               
CODE_208FA1:        22 B6 E2 29   JSL CODE_29E2B6           
CODE_208FA5:        A9 80         LDA #$80                  
CODE_208FA7:        85 16         STA $16                   
CODE_208FA9:        A9 80         LDA #$80                  ;\
CODE_208FAB:        8D 02 12      STA $1202                 ;/Fade out music
CODE_208FAE:        20 1F 80      JSR CODE_20801F           
CODE_208FB1:        9C 28 07      STZ $0728                 
CODE_208FB4:        9C 00 42      STZ $4200                 
CODE_208FB7:        AE 26 07      LDX $0726                 
CODE_208FBA:        BD 3D 07      LDA $073D,x               
CODE_208FBD:        F0 11         BEQ CODE_208FD0           
CODE_208FBF:        AD 13 07      LDA $0713                 
CODE_208FC2:        D0 0C         BNE CODE_208FD0           
CODE_208FC4:        AF 55 39 7E   LDA $7E3955               
CODE_208FC8:        1A            INC A                     
CODE_208FC9:        8F 55 39 7E   STA $7E3955               
CODE_208FCD:        4C 91 86      JMP CODE_208691           

CODE_208FD0:        A0 06         LDY #$06                  
CODE_208FD2:        20 2D 98      JSR CODE_20982D           
CODE_208FD5:        9C F2 1C      STZ $1CF2                 
CODE_208FD8:        A9 80         LDA #$80                  
CODE_208FDA:        8D 02 12      STA $1202                 ;\
CODE_208FDD:        AD 13 07      LDA $0713                 ;/Fade out music
CODE_208FE0:        D0 11         BNE CODE_208FF3           
CODE_208FE2:        AD 8E 07      LDA $078E                 
CODE_208FE5:        F0 0C         BEQ CODE_208FF3           
CODE_208FE7:        A9 A8         LDA #$A8                  
CODE_208FE9:        85 FF         STA $FF                   
CODE_208FEB:        A9 20         LDA #$20                  
CODE_208FED:        8D 00 01      STA $0100                 
CODE_208FF0:        4C 17 C6      JMP CODE_20C617           

CODE_208FF3:        A9 28         LDA #$28                  
CODE_208FF5:        85 FF         STA $FF                   
CODE_208FF7:        4C FA 90      JMP CODE_2090FA           

CODE_208FFA:        4C 20 8D      JMP CODE_208D20           

CODE_208FFD:        A9 C0         LDA #$C0                  
CODE_208FFF:        8D 00 01      STA $0100                 
CODE_209002:        A9 00         LDA #$00                  
CODE_209004:        8D 01 01      STA $0101                 
CODE_209007:        9C 28 07      STZ $0728                 
CODE_20900A:        64 14         STZ $14                   
CODE_20900C:        22 FA C6 29   JSL CODE_29C6FA           
CODE_209010:        A9 00         LDA #$00                  
CODE_209012:        8F 55 39 7E   STA $7E3955               
CODE_209016:        22 94 C7 29   JSL CODE_29C794           
CODE_20901A:        A9 80         LDA #$80                  
CODE_20901C:        8D 00 21      STA $2100                 
CODE_20901F:        9C 00 42      STZ $4200                 
CODE_209022:        C2 20         REP #$20                  
CODE_209024:        A2 80         LDX #$80                  
CODE_209026:        8E 15 21      STX $2115                 
CODE_209029:        A9 00 28      LDA #$2800                
CODE_20902C:        8D 16 21      STA $2116                 
CODE_20902F:        A9 01 18      LDA #$1801                
CODE_209032:        8D 00 43      STA $4300                 
CODE_209035:        8D 10 43      STA $4310                 
CODE_209038:        8D 20 43      STA $4320                 
CODE_20903B:        A9 00 B0      LDA #$B000                
CODE_20903E:        8D 02 43      STA $4302                 
CODE_209041:        A9 00 80      LDA #$8000                
CODE_209044:        8D 12 43      STA $4312                 
CODE_209047:        A9 00 88      LDA #$8800                
CODE_20904A:        8D 22 43      STA $4322                 
CODE_20904D:        A2 33         LDX #$33                  
CODE_20904F:        8E 04 43      STX $4304                 
CODE_209052:        A2 39         LDX #$39                  
CODE_209054:        8E 14 43      STX $4314                 
CODE_209057:        A2 32         LDX #$32                  
CODE_209059:        8E 24 43      STX $4324                 
CODE_20905C:        A9 00 10      LDA #$1000                
CODE_20905F:        8D 05 43      STA $4305                 
CODE_209062:        A9 00 40      LDA #$4000                
CODE_209065:        8D 15 43      STA $4315                 
CODE_209068:        A9 00 08      LDA #$0800                
CODE_20906B:        8D 25 43      STA $4325                 
CODE_20906E:        A2 01         LDX #$01                  
CODE_209070:        8E 0B 42      STX $420B                 
CODE_209073:        A9 00 60      LDA #$6000                
CODE_209076:        8D 16 21      STA $2116                 
CODE_209079:        E8            INX                       
CODE_20907A:        8E 0B 42      STX $420B                 
CODE_20907D:        A9 00 34      LDA #$3400                
CODE_209080:        8D 16 21      STA $2116                 
CODE_209083:        A2 04         LDX #$04                  
CODE_209085:        8E 0B 42      STX $420B                 
CODE_209088:        E2 20         SEP #$20                  
CODE_20908A:        22 9D E2 29   JSL CODE_29E29D           
CODE_20908E:        20 1F 80      JSR CODE_20801F           
CODE_209091:        22 80 C2 29   JSL CODE_29C280           
CODE_209095:        A5 14         LDA $14                   
CODE_209097:        F0 F5         BEQ CODE_20908E           
CODE_209099:        A9 80         LDA #$80                  ;\
CODE_20909B:        8D 02 12      STA $1202                 ;/Fade out music
CODE_20909E:        A9 03         LDA #$03                  
CODE_2090A0:        8D 0D 02      STA $020D                 
CODE_2090A3:        20 1F 80      JSR CODE_20801F           
CODE_2090A6:        AD 27 07      LDA $0727                 
CODE_2090A9:        C9 06         CMP #$06                  
CODE_2090AB:        D0 09         BNE CODE_2090B6           
CODE_2090AD:        AD 0D 02      LDA $020D                 
CODE_2090B0:        18            CLC                       
CODE_2090B1:        69 10         ADC #$10                  
CODE_2090B3:        8D 0D 02      STA $020D                 
CODE_2090B6:        C6 16         DEC $16                   
CODE_2090B8:        10 E9         BPL CODE_2090A3           
CODE_2090BA:        A9 80         LDA #$80                  
CODE_2090BC:        85 16         STA $16                   
CODE_2090BE:        9C 0D 02      STZ $020D                 
CODE_2090C1:        A0 06         LDY #$06                  
CODE_2090C3:        20 2D 98      JSR CODE_20982D           
CODE_2090C6:        AE 2B 07      LDX $072B                 
CODE_2090C9:        CA            DEX                       
CODE_2090CA:        9E 3D 07      STZ $073D,x               
CODE_2090CD:        9C 13 07      STZ $0713                 
CODE_2090D0:        9E 22 07      STZ $0722,x               
CODE_2090D3:        9E 24 07      STZ $0724,x               
CODE_2090D6:        CA            DEX                       
CODE_2090D7:        10 F1         BPL CODE_2090CA           
CODE_2090D9:        AE 26 07      LDX $0726                 
CODE_2090DC:        A9 1F         LDA #$1F                  
CODE_2090DE:        E0 00         CPX #$00                  
CODE_2090E0:        F0 03         BEQ CODE_2090E5           
CODE_2090E2:        18            CLC                       
CODE_2090E3:        69 23         ADC #$23                  
CODE_2090E5:        A8            TAY                       
CODE_2090E6:        A2 00         LDX #$00                  
CODE_2090E8:        BD 15 07      LDA $0715,x               
CODE_2090EB:        99 80 1D      STA $1D80,y               
CODE_2090EE:        C8            INY                       
CODE_2090EF:        E8            INX                       
CODE_2090F0:        E0 03         CPX #$03                  
CODE_2090F2:        D0 F4         BNE CODE_2090E8           
CODE_2090F4:        EE 27 07      INC $0727                 
CODE_2090F7:        4C B9 80      JMP CODE_2080B9           

CODE_2090FA:        A9 C0         LDA #$C0                  
CODE_2090FC:        8D 00 01      STA $0100                 
CODE_2090FF:        A9 00         LDA #$00                  
CODE_209101:        8D 01 01      STA $0101                 
CODE_209104:        AE 26 07      LDX $0726                 
CODE_209107:        A9 1F         LDA #$1F                  
CODE_209109:        E0 00         CPX #$00                  
CODE_20910B:        F0 03         BEQ CODE_209110           
CODE_20910D:        18            CLC                       
CODE_20910E:        69 23         ADC #$23                  
CODE_209110:        A8            TAY                       
CODE_209111:        A2 00         LDX #$00                  
CODE_209113:        BD 15 07      LDA $0715,x               
CODE_209116:        99 80 1D      STA $1D80,y               
CODE_209119:        C8            INY                       
CODE_20911A:        E8            INX                       
CODE_20911B:        E0 03         CPX #$03                  
CODE_20911D:        D0 F4         BNE CODE_209113           
CODE_20911F:        AD 55 1F      LDA $1F55                 
CODE_209122:        F0 03         BEQ CODE_209127           
CODE_209124:        CE 55 1F      DEC $1F55                 
CODE_209127:        A0 06         LDY #$06                  
CODE_209129:        AD 13 07      LDA $0713                 
CODE_20912C:        D0 57         BNE CODE_209185           
CODE_20912E:        AD 0A 07      LDA $070A                 
CODE_209131:        C9 0F         CMP #$0F                  
CODE_209133:        B0 48         BCS CODE_20917D                   
CODE_209135:        C9 07         CMP #$07                  
CODE_209137:        F0 44         BEQ CODE_20917D           
CODE_209139:        AE 26 07      LDX $0726                 
CODE_20913C:        BF 7D 39 7E   LDA $7E397D,x             
CODE_209140:        8F 6A 39 7E   STA $7E396A               
CODE_209144:        BF 7F 39 7E   LDA $7E397F,x             
CODE_209148:        8F 6B 39 7E   STA $7E396B               
CODE_20914C:        BF 81 39 7E   LDA $7E3981,x             
CODE_209150:        8F 6C 39 7E   STA $7E396C               
CODE_209154:        BF 75 39 7E   LDA $7E3975,x             
CODE_209158:        9F 7D 39 7E   STA $7E397D,x             
CODE_20915C:        BF 77 39 7E   LDA $7E3977,x             
CODE_209160:        9F 7F 39 7E   STA $7E397F,x             
CODE_209164:        BF 79 39 7E   LDA $7E3979,x             
CODE_209168:        9F 81 39 7E   STA $7E3981,x             
CODE_20916C:        BD 22 07      LDA $0722,x               
CODE_20916F:        9F 85 39 7E   STA $7E3985,x             
CODE_209173:        BD 24 07      LDA $0724,x               
CODE_209176:        9F 87 39 7E   STA $7E3987,x             
CODE_20917A:        4C 9F 91      JMP CODE_20919F           

CODE_20917D:        A9 01         LDA #$01                  
CODE_20917F:        8F 03 FF 7F   STA $7FFF03               
CODE_209183:        80 1A         BRA CODE_20919F           
CODE_209185:        A0 02         LDY #$02                  
CODE_209187:        9C 13 07      STZ $0713                 
CODE_20918A:        9C E3 07      STZ $07E3                 
CODE_20918D:        AE 26 07      LDX $0726                 
CODE_209190:        A9 01         LDA #$01                  
CODE_209192:        9D 3F 07      STA $073F,x               
CODE_209195:        AD 8C 07      LDA $078C                 
CODE_209198:        D0 05         BNE CODE_20919F           
CODE_20919A:        DE 36 07      DEC $0736,x               
CODE_20919D:        30 0B         BMI CODE_2091AA           
CODE_20919F:        A9 80         LDA #$80                  ;\
CODE_2091A1:        8D 02 12      STA $1202                 ;/Fade out music
CODE_2091A4:        8C 29 07      STY $0729                 
CODE_2091A7:        4C E5 80      JMP CODE_2080E5           

CODE_2091AA:        A9 01         LDA #$01                  
CODE_2091AC:        9D 5A 00      STA $005A,x               
CODE_2091AF:        9C 0A 07      STZ $070A                 
CODE_2091B2:        64 20         STZ $20                   
CODE_2091B4:        64 59         STZ $59                   
CODE_2091B6:        9C 11 07      STZ $0711                 
CODE_2091B9:        A9 58         LDA #$58                  
CODE_2091BB:        8D CB 1D      STA $1DCB                 
CODE_2091BE:        9C 4D 03      STZ $034D                 
CODE_2091C1:        9C 00 42      STZ $4200                 
CODE_2091C4:        22 A9 E0 22   JSL CODE_22E0A9           
CODE_2091C8:        20 EB F9      JSR CODE_20F9EB           
CODE_2091CB:        A9 FF         LDA #$FF                  
CODE_2091CD:        85 00         STA $00                   
CODE_2091CF:        64 01         STZ $01                   
CODE_2091D1:        20 0A FA      JSR CODE_20FA0A           
CODE_2091D4:        A9 80         LDA #$80                  
CODE_2091D6:        85 16         STA $16                   
CODE_2091D8:        8D 00 21      STA $2100                 
CODE_2091DB:        AD 28 07      LDA $0728                 
CODE_2091DE:        D0 0A         BNE CODE_2091EA           
CODE_2091E0:        A9 0A         LDA #$0A                  ;\
CODE_2091E2:        8D 02 12      STA $1202                 ;/Game over music
CODE_2091E5:        A9 A0         LDA #$A0                  
CODE_2091E7:        8D D8 02      STA $02D8                 
CODE_2091EA:        C2 20         REP #$20                  
CODE_2091EC:        A9 00 20      LDA #$2000                
CODE_2091EF:        8D 16 21      STA $2116                 
CODE_2091F2:        A2 80         LDX #$80                  
CODE_2091F4:        8E 15 21      STX $2115                 
CODE_2091F7:        A9 01 18      LDA #$1801                
CODE_2091FA:        8D 00 43      STA $4300                 
CODE_2091FD:        8D 10 43      STA $4310                 
CODE_209200:        8D 20 43      STA $4320                 
CODE_209203:        A0 01         LDY #$01                  
CODE_209205:        AE 27 07      LDX $0727                 
CODE_209208:        E0 04         CPX #$04                  
CODE_20920A:        D0 30         BNE CODE_20923C           
CODE_20920C:        A9 00 C0      LDA #$C000                
CODE_20920F:        8D 02 43      STA $4302                 
CODE_209212:        A2 39         LDX #$39                  
CODE_209214:        8E 04 43      STX $4304                 
CODE_209217:        A9 00 10      LDA #$1000                
CODE_20921A:        8D 05 43      STA $4305                 
CODE_20921D:        8C 0B 42      STY $420B                 
CODE_209220:        A9 00 28      LDA #$2800                
CODE_209223:        8D 16 21      STA $2116                 
CODE_209226:        A9 00 B0      LDA #$B000                
CODE_209229:        8D 02 43      STA $4302                 
CODE_20922C:        A2 31         LDX #$31                  
CODE_20922E:        8E 04 43      STX $4304                 
CODE_209231:        A9 00 10      LDA #$1000                
CODE_209234:        8D 05 43      STA $4305                 
CODE_209237:        8C 0B 42      STY $420B                 
CODE_20923A:        80 14         BRA CODE_209250           
CODE_20923C:        A9 00 A0      LDA #$A000                
CODE_20923F:        8D 02 43      STA $4302                 
CODE_209242:        A2 31         LDX #$31                  
CODE_209244:        8E 04 43      STX $4304                 
CODE_209247:        A9 00 20      LDA #$2000                
CODE_20924A:        8D 05 43      STA $4305                 
CODE_20924D:        8C 0B 42      STY $420B                 
CODE_209250:        A9 00 C0      LDA #$C000                
CODE_209253:        8D 12 43      STA $4312                 
CODE_209256:        A9 00 80      LDA #$8000                
CODE_209259:        8D 22 43      STA $4322                 
CODE_20925C:        A2 38         LDX #$38                  
CODE_20925E:        8E 14 43      STX $4314                 
CODE_209261:        8E 24 43      STX $4324                 
CODE_209264:        A9 00 40      LDA #$4000                
CODE_209267:        8D 15 43      STA $4315                 
CODE_20926A:        A9 00 10      LDA #$1000                
CODE_20926D:        8D 25 43      STA $4325                 
CODE_209270:        A9 00 60      LDA #$6000                
CODE_209273:        8D 16 21      STA $2116                 
CODE_209276:        A2 02         LDX #$02                  
CODE_209278:        8E 0B 42      STX $420B                 
CODE_20927B:        A9 00 58      LDA #$5800                
CODE_20927E:        8D 16 21      STA $2116                 
CODE_209281:        A2 04         LDX #$04                  
CODE_209283:        8E 0B 42      STX $420B                 
CODE_209286:        C2 10         REP #$10                  
CODE_209288:        8B            PHB                       
CODE_209289:        A2 00 BE      LDX #$BE00                
CODE_20928C:        A0 00 13      LDY #$1300                
CODE_20928F:        A9 FF 01      LDA #$01FF                
CODE_209292:        54 00 1C      MVN $1C00                 
CODE_209295:        AB            PLB                       
CODE_209296:        E2 30         SEP #$30                  
CODE_209298:        AE 2B 07      LDX $072B                 
CODE_20929B:        CA            DEX                       
CODE_20929C:        BF 75 39 7E   LDA $7E3975,x             
CODE_2092A0:        95 43         STA $43,x                 
CODE_2092A2:        BF 77 39 7E   LDA $7E3977,x             
CODE_2092A6:        95 45         STA $45,x                 
CODE_2092A8:        BF 79 39 7E   LDA $7E3979,x             
CODE_2092AC:        95 47         STA $47,x                 
CODE_2092AE:        BF 7B 39 7E   LDA $7E397B,x             
CODE_2092B2:        95 52         STA $52,x                 
CODE_2092B4:        BF 92 39 7E   LDA $7E3992,x             
CODE_2092B8:        95 4B         STA $4B,x                 
CODE_2092BA:        CA            DEX                       
CODE_2092BB:        10 DF         BPL CODE_20929C           
CODE_2092BD:        22 21 BE 29   JSL CODE_29BE21           
CODE_2092C1:        AE 26 07      LDX $0726                 
CODE_2092C4:        BF 92 39 7E   LDA $7E3992,x             
CODE_2092C8:        95 4B         STA $4B,x                 
CODE_2092CA:        A0 00         LDY #$00                  
CODE_2092CC:        AD 27 07      LDA $0727                 ; \ Check if in world 8 submap 3 (spotlight submap)
CODE_2092CF:        C9 07         CMP #$07                  ;   If so, on game over screen make sure
CODE_2092D1:        D0 0A         BNE CODE_2092DD           ;   to black out the overworld background with the Game Over window showing.
CODE_2092D3:        AE 26 07      LDX $0726                 ;
CODE_2092D6:        B5 45         LDA $45,x                 ;
CODE_2092D8:        C9 02         CMP #$02                  ;
CODE_2092DA:        D0 01         BNE CODE_2092DD           ;
CODE_2092DC:        C8            INY                       ;
CODE_2092DD:        8C 98 05      STY $0598                 ; /
CODE_2092E0:        AC 26 07      LDY $0726                 
CODE_2092E3:        B9 22 07      LDA $0722,y               
CODE_2092E6:        85 B7         STA $B7                   
CODE_2092E8:        B9 24 07      LDA $0724,y               
CODE_2092EB:        22 F5 97 20   JSL CODE_2097F5           
CODE_2092EF:        A5 24         LDA $24                   
CODE_2092F1:        85 23         STA $23                   
CODE_2092F3:        9C BF 1E      STZ $1EBF                 
CODE_2092F6:        A9 20         LDA #$20                  
CODE_2092F8:        8D 12 06      STA $0612                 
CODE_2092FB:        A9 02         LDA #$02                  
CODE_2092FD:        20 10 96      JSR CODE_209610           
CODE_209300:        22 8C F5 20   JSL CODE_20F58C           
CODE_209304:        22 A5 EA 29   JSL CODE_29EAA5           
CODE_209308:        22 66 E7 29   JSL CODE_29E766           
CODE_20930C:        22 30 E7 29   JSL CODE_29E730           
CODE_209310:        A9 00         LDA #$00                  
CODE_209312:        20 10 96      JSR CODE_209610           
CODE_209315:        AD 98 05      LDA $0598                 
CODE_209318:        D0 03         BNE CODE_20931D           
CODE_20931A:        20 C0 9C      JSR CODE_209CC0           
CODE_20931D:        20 B9 95      JSR CODE_2095B9           
CODE_209320:        22 4B 8B 2A   JSL CODE_2A8B4B           
CODE_209324:        AC 26 07      LDY $0726                 
CODE_209327:        B9 22 07      LDA $0722,y               
CODE_20932A:        8D 10 02      STA $0210                 
CODE_20932D:        85 B7         STA $B7                   
CODE_20932F:        B9 24 07      LDA $0724,y               
CODE_209332:        85 12         STA $12                   
CODE_209334:        8D 11 02      STA $0211                 
CODE_209337:        22 F5 97 20   JSL CODE_2097F5           
CODE_20933B:        AD 28 07      LDA $0728                 
CODE_20933E:        D0 42         BNE CODE_209382           
CODE_209340:        22 00 80 23   JSL CODE_238000           
CODE_209344:        22 00 F8 2A   JSL CODE_2AF800           
CODE_209348:        A9 44         LDA #$44                  
CODE_20934A:        8D 87 02      STA $0287                 
CODE_20934D:        A2 14         LDX #$14                  
CODE_20934F:        A9 2C         LDA #$2C                  
CODE_209351:        8D 81 02      STA $0281                 
CODE_209354:        A9 01         LDA #$01                  
CODE_209356:        8D 4D 03      STA $034D                 
CODE_209359:        AD 2B 07      LDA $072B                 
CODE_20935C:        C9 02         CMP #$02                  
CODE_20935E:        D0 1A         BNE CODE_20937A           
CODE_209360:        AD 26 07      LDA $0726                 
CODE_209363:        49 01         EOR #$01                  
CODE_209365:        A8            TAY                       
CODE_209366:        B9 36 07      LDA $0736,y               
CODE_209369:        30 0F         BMI CODE_20937A           
CODE_20936B:        A2 15         LDX #$15                  
CODE_20936D:        9C 4D 03      STZ $034D                 
CODE_209370:        A9 24         LDA #$24                  
CODE_209372:        8D 81 02      STA $0281                 
CODE_209375:        A9 60         LDA #$60                  
CODE_209377:        8D CB 1D      STA $1DCB                 
CODE_20937A:        8A            TXA                       
CODE_20937B:        20 10 96      JSR CODE_209610           
CODE_20937E:        22 67 F8 2A   JSL CODE_2AF867           
CODE_209382:        A9 EF         LDA #$EF                  
CODE_209384:        8D 16 02      STA $0216                 
CODE_209387:        9C 1B 02      STZ $021B                 
CODE_20938A:        A9 C0         LDA #$C0                  
CODE_20938C:        8D 00 01      STA $0100                 
CODE_20938F:        22 94 C7 29   JSL CODE_29C794           
CODE_209393:        A9 01         LDA #$01                  
CODE_209395:        8D 0E 02      STA $020E                 
CODE_209398:        A9 11         LDA #$11                  
CODE_20939A:        8D 0F 02      STA $020F                 
CODE_20939D:        A9 09         LDA #$09                  
CODE_20939F:        8D 0C 02      STA $020C                 
CODE_2093A2:        8D 05 21      STA $2105                 
CODE_2093A5:        A9 17         LDA #$17                  
CODE_2093A7:        8D 08 02      STA $0208                 
CODE_2093AA:        A9 03         LDA #$03                  
CODE_2093AC:        8D 1E 02      STA $021E                 
CODE_2093AF:        A9 80         LDA #$80                  
CODE_2093B1:        8D 00 42      STA $4200                 
CODE_2093B4:        22 A9 E0 22   JSL CODE_22E0A9           
CODE_2093B8:        22 0D 84 23   JSL CODE_23840D           
CODE_2093BC:        AE 26 07      LDX $0726                 
CODE_2093BF:        A0 06         LDY #$06                  
CODE_2093C1:        E0 00         CPX #$00                  
CODE_2093C3:        F0 02         BEQ CODE_2093C7           
CODE_2093C5:        A0 29         LDY #$29                  
CODE_2093C7:        A9 06         LDA #$06                  
CODE_2093C9:        85 00         STA $00                   
CODE_2093CB:        A9 00         LDA #$00                  
CODE_2093CD:        99 9C 1D      STA $1D9C,y               
CODE_2093D0:        88            DEY                       
CODE_2093D1:        C6 00         DEC $00                   
CODE_2093D3:        10 F8         BPL CODE_2093CD           
CODE_2093D5:        A0 3F         LDY #$3F                  
CODE_2093D7:        E0 00         CPX #$00                  
CODE_2093D9:        F0 02         BEQ CODE_2093DD           
CODE_2093DB:        A0 7F         LDY #$7F                  
CODE_2093DD:        A9 3F         LDA #$3F                  
CODE_2093DF:        85 00         STA $00                   
CODE_2093E1:        C2 30         REP #$30                  
CODE_2093E3:        98            TYA                       
CODE_2093E4:        29 FF 00      AND #$00FF                
CODE_2093E7:        A8            TAY                       
CODE_2093E8:        AD 27 07      LDA $0727                 
CODE_2093EB:        29 FF 00      AND #$00FF                
CODE_2093EE:        1A            INC A                     
CODE_2093EF:        0A            ASL A                     
CODE_2093F0:        0A            ASL A                     
CODE_2093F1:        0A            ASL A                     
CODE_2093F2:        0A            ASL A                     
CODE_2093F3:        0A            ASL A                     
CODE_2093F4:        0A            ASL A                     
CODE_2093F5:        3A            DEC A                     
CODE_2093F6:        AA            TAX                       
CODE_2093F7:        E2 20         SEP #$20                  
CODE_2093F9:        B9 00 1D      LDA $1D00,y               
CODE_2093FC:        3D 00 80      AND.w DATA_218000,x               
CODE_2093FF:        99 00 1D      STA $1D00,y               
CODE_209402:        CA            DEX                       
CODE_209403:        88            DEY                       
CODE_209404:        C6 00         DEC $00                   
CODE_209406:        10 F1         BPL CODE_2093F9           
CODE_209408:        E2 10         SEP #$10                  
CODE_20940A:        20 CF 95      JSR CODE_2095CF           
CODE_20940D:        22 9D E2 29   JSL CODE_29E29D           
CODE_209411:        A9 0F         LDA #$0F                  
CODE_209413:        85 16         STA $16                   
CODE_209415:        8D 00 21      STA $2100                 
CODE_209418:        20 1F 80      JSR CODE_20801F           
CODE_20941B:        22 A9 E0 22   JSL CODE_22E0A9           
CODE_20941F:        22 0D 84 23   JSL CODE_23840D           
CODE_209423:        AD 28 07      LDA $0728                 
CODE_209426:        F0 07         BEQ CODE_20942F           
CODE_209428:        3A            DEC A                     
CODE_209429:        F0 04         BEQ CODE_20942F           
CODE_20942B:        22 A3 82 23   JSL CODE_2382A3           
CODE_20942F:        AD 28 07      LDA $0728                 
CODE_209432:        C9 06         CMP #$06                  
CODE_209434:        F0 0B         BEQ CODE_209441           
CODE_209436:        C9 09         CMP #$09                  
CODE_209438:        D0 DE         BNE CODE_209418           
CODE_20943A:        AD 2B 07      LDA $072B                 
CODE_20943D:        C9 01         CMP #$01                  
CODE_20943F:        F0 13         BEQ CODE_209454           
CODE_209441:        A9 80         LDA #$80                  ;\
CODE_209443:        8D 02 12      STA $1202                 ;/Fade out music
CODE_209446:        22 B6 E2 29   JSL CODE_29E2B6           
CODE_20944A:        AD 28 07      LDA $0728                 
CODE_20944D:        C9 09         CMP #$09                  
CODE_20944F:        F0 03         BEQ CODE_209454           
CODE_209451:        4C C1 91      JMP CODE_2091C1           

CODE_209454:        9C 28 07      STZ $0728                 
CODE_209457:        AD CB 1D      LDA $1DCB                 
CODE_20945A:        C9 70         CMP #$70                  
CODE_20945C:        90 03         BCC CODE_209461           
CODE_20945E:        4C 9B 94      JMP CODE_20949B           

CODE_209461:        9C 28 07      STZ $0728                 
CODE_209464:        9C CB 1D      STZ $1DCB                 
CODE_209467:        9C E3 07      STZ $07E3                 
CODE_20946A:        AE 26 07      LDX $0726                 
CODE_20946D:        AD 10 02      LDA $0210                 
CODE_209470:        9D 22 07      STA $0722,x               
CODE_209473:        A5 12         LDA $12                   
CODE_209475:        9D 24 07      STA $0724,x               
CODE_209478:        B5 43         LDA $43,x                 
CODE_20947A:        9F 75 39 7E   STA $7E3975,x             
CODE_20947E:        B5 45         LDA $45,x                 
CODE_209480:        9F 77 39 7E   STA $7E3977,x             
CODE_209484:        B5 47         LDA $47,x                 
CODE_209486:        9F 79 39 7E   STA $7E3979,x             
CODE_20948A:        B5 52         LDA $52,x                 
CODE_20948C:        9F 7B 39 7E   STA $7E397B,x             
CODE_209490:        9E 3F 07      STZ $073F,x               
CODE_209493:        AE 26 07      LDX $0726                 
CODE_209496:        A9 04         LDA #$04                  
CODE_209498:        9D 36 07      STA $0736,x               
CODE_20949B:        20 CF 95      JSR CODE_2095CF           
CODE_20949E:        A9 80         LDA #$80                  
CODE_2094A0:        8D 00 21      STA $2100                 
CODE_2094A3:        A0 00         LDY #$00                  
CODE_2094A5:        8C 29 07      STY $0729                 
CODE_2094A8:        AE 26 07      LDX $0726                 
CODE_2094AB:        4C F8 84      JMP CODE_2084F8           

CODE_2094AE:        A9 15         LDA #$15                  
CODE_2094B0:        8D 08 02      STA $0208                 
CODE_2094B3:        A9 02         LDA #$02                  
CODE_2094B5:        8D 09 02      STA $0209                 
CODE_2094B8:        A9 20         LDA #$20                  
CODE_2094BA:        8D 04 02      STA $0204                 
CODE_2094BD:        22 C3 AF 20   JSL CODE_20AFC3           
CODE_2094C1:        20 C0 9C      JSR CODE_209CC0           
CODE_2094C4:        22 8E B4 2A   JSL CODE_2AB48E           
CODE_2094C8:        A9 C0         LDA #$C0                  
CODE_2094CA:        8D 00 01      STA $0100                 
CODE_2094CD:        A9 80         LDA #$80                  
CODE_2094CF:        8D 01 01      STA $0101                 
CODE_2094D2:        A9 11         LDA #$11                  
CODE_2094D4:        8D 61 10      STA $1061                 
CODE_2094D7:        22 94 C7 29   JSL CODE_29C794           
CODE_2094DB:        A9 00         LDA #$00                  
CODE_2094DD:        8F 55 39 7E   STA $7E3955               
CODE_2094E1:        22 9D E2 29   JSL CODE_29E29D           
CODE_2094E5:        A9 80         LDA #$80                  
CODE_2094E7:        8D 00 42      STA $4200                 
CODE_2094EA:        20 1F 80      JSR CODE_20801F           
CODE_2094ED:        AD 61 10      LDA $1061                 
CODE_2094F0:        F0 06         BEQ CODE_2094F8           
CODE_2094F2:        8D 02 12      STA $1202                 
CODE_2094F5:        9C 61 10      STZ $1061                 
CODE_2094F8:        22 A9 E0 22   JSL CODE_22E0A9           
CODE_2094FC:        22 90 E1 23   JSL CODE_23E190           
CODE_209500:        AD 14 00      LDA $0014                 
CODE_209503:        F0 E5         BEQ CODE_2094EA           
CODE_209505:        22 B6 E2 29   JSL CODE_29E2B6           
CODE_209509:        A9 80         LDA #$80                  ;\
CODE_20950B:        8D 02 12      STA $1202                 ;/Fade out music
CODE_20950E:        A9 80         LDA #$80                  
CODE_209510:        85 16         STA $16                   
CODE_209512:        20 1F 80      JSR CODE_20801F           
CODE_209515:        AE 8C 07      LDX $078C                 
CODE_209518:        CA            DEX                       
CODE_209519:        EC 26 07      CPX $0726                 
CODE_20951C:        D0 03         BNE CODE_209521           
CODE_20951E:        4C AC 95      JMP CODE_2095AC           

CODE_209521:        8A            TXA                       
CODE_209522:        49 01         EOR #$01                  
CODE_209524:        A8            TAY                       
CODE_209525:        B9 22 07      LDA $0722,y               
CODE_209528:        85 05         STA $05                   
CODE_20952A:        B9 24 07      LDA $0724,y               
CODE_20952D:        85 06         STA $06                   
CODE_20952F:        8B            PHB                       
CODE_209530:        A9 7E         LDA #$7E                  
CODE_209532:        48            PHA                       
CODE_209533:        AB            PLB                       
CODE_209534:        B9 7D 39      LDA $397D,y               
CODE_209537:        85 00         STA $00                   
CODE_209539:        B9 7F 39      LDA $397F,y               
CODE_20953C:        85 01         STA $01                   
CODE_20953E:        B9 81 39      LDA $3981,y               
CODE_209541:        85 02         STA $02                   
CODE_209543:        B9 85 39      LDA $3985,y               
CODE_209546:        85 03         STA $03                   
CODE_209548:        B9 87 39      LDA $3987,y               
CODE_20954B:        85 04         STA $04                   
CODE_20954D:        BD 7D 39      LDA $397D,x               
CODE_209550:        99 7D 39      STA $397D,y               
CODE_209553:        BD 7F 39      LDA $397F,x               
CODE_209556:        99 7F 39      STA $397F,y               
CODE_209559:        BD 81 39      LDA $3981,x               
CODE_20955C:        99 81 39      STA $3981,y               
CODE_20955F:        BD 85 39      LDA $3985,x               
CODE_209562:        99 85 39      STA $3985,y               
CODE_209565:        BD 87 39      LDA $3987,x               
CODE_209568:        99 87 39      STA $3987,y               
CODE_20956B:        AB            PLB                       
CODE_20956C:        A5 00         LDA $00                   
CODE_20956E:        9F 7D 39 7E   STA $7E397D,x             
CODE_209572:        A5 01         LDA $01                   
CODE_209574:        9F 7F 39 7E   STA $7E397F,x             
CODE_209578:        A5 02         LDA $02                   
CODE_20957A:        9F 81 39 7E   STA $7E3981,x             
CODE_20957E:        A5 03         LDA $03                   
CODE_209580:        9F 85 39 7E   STA $7E3985,x             
CODE_209584:        A5 04         LDA $04                   
CODE_209586:        9F 87 39 7E   STA $7E3987,x             
CODE_20958A:        A5 05         LDA $05                   
CODE_20958C:        9D 22 07      STA $0722,x               
CODE_20958F:        A5 06         LDA $06                   
CODE_209591:        9D 24 07      STA $0724,x               
CODE_209594:        A9 1F         LDA #$1F                  
CODE_209596:        E0 01         CPX #$01                  
CODE_209598:        D0 03         BNE CODE_20959D           
CODE_20959A:        18            CLC                       
CODE_20959B:        69 23         ADC #$23                  
CODE_20959D:        A8            TAY                       
CODE_20959E:        A2 00         LDX #$00                  
CODE_2095A0:        B9 80 1D      LDA $1D80,y               
CODE_2095A3:        9D 15 07      STA $0715,x               
CODE_2095A6:        C8            INY                       
CODE_2095A7:        E8            INX                       
CODE_2095A8:        E0 03         CPX #$03                  
CODE_2095AA:        D0 F4         BNE CODE_2095A0           
CODE_2095AC:        AE 8C 07      LDX $078C                 
CODE_2095AF:        8E 13 07      STX $0713                 
CODE_2095B2:        CA            DEX                       
CODE_2095B3:        8E 26 07      STX $0726                 
CODE_2095B6:        4C B7 8F      JMP CODE_208FB7           

CODE_2095B9:        AD 27 07      LDA $0727                 
CODE_2095BC:        C9 07         CMP #$07                  
CODE_2095BE:        D0 0E         BNE CODE_2095CE           
CODE_2095C0:        AE 26 07      LDX $0726                 
CODE_2095C3:        B5 45         LDA $45,x                 
CODE_2095C5:        C9 01         CMP #$01                  
CODE_2095C7:        D0 05         BNE CODE_2095CE           
CODE_2095C9:        A9 31         LDA #$31                  
CODE_2095CB:        20 10 96      JSR CODE_209610           
CODE_2095CE:        60            RTS                       

CODE_2095CF:        AC 2B 07      LDY $072B                 
CODE_2095D2:        C0 01         CPY #$01                  
CODE_2095D4:        F0 09         BEQ CODE_2095DF           
CODE_2095D6:        88            DEY                       
CODE_2095D7:        B9 36 07      LDA $0736,y               
CODE_2095DA:        10 32         BPL CODE_20960E           
CODE_2095DC:        88            DEY                       
CODE_2095DD:        10 F8         BPL CODE_2095D7           
CODE_2095DF:        A2 02         LDX #$02                  
CODE_2095E1:        A0 0D         LDY #$0D                  
CODE_2095E3:        B9 17 1F      LDA $1F17,y               
CODE_2095E6:        F0 0A         BEQ CODE_2095F2           
CODE_2095E8:        DD DB CD      CMP.w DATA_21CDDB,x               
CODE_2095EB:        D0 05         BNE CODE_2095F2           
CODE_2095ED:        A9 00         LDA #$00                  
CODE_2095EF:        99 17 1F      STA $1F17,y               
CODE_2095F2:        88            DEY                       
CODE_2095F3:        10 EE         BPL CODE_2095E3           
CODE_2095F5:        CA            DEX                       
CODE_2095F6:        10 E9         BPL CODE_2095E1           
CODE_2095F8:        A9 00         LDA #$00                  
CODE_2095FA:        8F 67 39 7E   STA $7E3967               
CODE_2095FE:        8F 6F 39 7E   STA $7E396F               
CODE_209602:        A9 1F         LDA #$1F                  
CODE_209604:        8F 68 39 7E   STA $7E3968               
CODE_209608:        A9 40         LDA #$40                  
CODE_20960A:        8F 69 39 7E   STA $7E3969               
CODE_20960E:        60            RTS                       

CODE_20960F:        60            RTS                       

CODE_209610:        48            PHA                       
CODE_209611:        85 36         STA $36                   
CODE_209613:        0A            ASL A                     
CODE_209614:        18            CLC                       
CODE_209615:        65 36         ADC $36                   
CODE_209617:        A8            TAY                       
CODE_209618:        8B            PHB                       
CODE_209619:        A9 22         LDA #$22                  
CODE_20961B:        48            PHA                       
CODE_20961C:        AB            PLB                       
CODE_20961D:        B9 5C 8B      LDA.w PNTR_228B5C,y               
CODE_209620:        85 36         STA $36                   
CODE_209622:        B9 5D 8B      LDA.w PNTR_228B5C+1,y               
CODE_209625:        85 37         STA $37                   
CODE_209627:        B9 5E 8B      LDA.w PNTR_228B5C+2,y               
CODE_20962A:        85 38         STA $38                   
CODE_20962C:        AB            PLB                       
CODE_20962D:        22 AB E8 29   JSL CODE_29E8AB           
CODE_209631:        68            PLA                       
CODE_209632:        D0 0D         BNE CODE_209641           
CODE_209634:        8D 00 16      STA $1600                 
CODE_209637:        8D 01 16      STA $1601                 
CODE_20963A:        3A            DEC A                     
CODE_20963B:        8D 02 16      STA $1602                 
CODE_20963E:        8D 03 16      STA $1603                 
CODE_209641:        60            RTS                       

PNTR_209642:        dl DATA_29BE00
                    dl DATA_248918
                    dl DATA_268828
                    dl $24ADB0
                    dl $24E660
                    dl $25B030
                    dl $258860
                    dl $258860
                    dl $258860
                    dl $25D510
                    dl $26B020
                    dl $25B030
                    dl $24E660
                    dl $25B030
                    dl $24ADB0
                    dl DATA_20967B
                    dl DATA_20967B
                    dl DATA_20967B
                    dl DATA_23A540

DATA_20967B:        db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF

CODE_209683:        AD 0A 07      LDA $070A                 
CODE_209686:        85 00         STA $00                   
CODE_209688:        0A            ASL A                     
CODE_209689:        18            CLC                       
CODE_20968A:        65 00         ADC $00                   
CODE_20968C:        AA            TAX                       
CODE_20968D:        BF 42 96 20   LDA.l PNTR_209642,x             
CODE_209691:        85 00         STA $00                   
CODE_209693:        BF 43 96 20   LDA.l PNTR_209642+1,x             
CODE_209697:        85 01         STA $01                   
CODE_209699:        BF 44 96 20   LDA.l PNTR_209642+2,x             
CODE_20969D:        85 02         STA $02                   
CODE_20969F:        A0 07         LDY #$07                  
CODE_2096A1:        B7 00         LDA [$00],y               
CODE_2096A3:        99 96 1E      STA $1E96,y               
CODE_2096A6:        88            DEY                       
CODE_2096A7:        10 F8         BPL CODE_2096A1           
CODE_2096A9:        60            RTS                       

CODE_2096AA:        A0 1C         LDY #$1C                  
CODE_2096AC:        A9 00         LDA #$00                  
CODE_2096AE:        99 44 10      STA $1044,y               
CODE_2096B1:        88            DEY                       
CODE_2096B2:        10 F8         BPL CODE_2096AC           
CODE_2096B4:        60            RTS                       

CODE_2096B5:        AD 53 10      LDA $1053                 
CODE_2096B8:        18            CLC                       
CODE_2096B9:        6D 56 10      ADC $1056                 
CODE_2096BC:        8D 53 10      STA $1053                 
CODE_2096BF:        AD 51 10      LDA $1051                 
CODE_2096C2:        69 00         ADC #$00                  
CODE_2096C4:        8D 51 10      STA $1051                 
CODE_2096C7:        AD 5F 10      LDA $105F                 
CODE_2096CA:        C9 FE         CMP #$FE                  
CODE_2096CC:        D0 28         BNE CODE_2096F6           
CODE_2096CE:        AC 4F 10      LDY $104F                 
CODE_2096D1:        B9 47 10      LDA $1047,y               
CODE_2096D4:        C9 08         CMP #$08                  
CODE_2096D6:        B0 1E         BCS CODE_2096F6                   
CODE_2096D8:        AD 51 10      LDA $1051                 
CODE_2096DB:        C9 04         CMP #$04                  
CODE_2096DD:        90 17         BCC CODE_2096F6           
CODE_2096DF:        A9 08         LDA #$08                  
CODE_2096E1:        8D 51 10      STA $1051                 
CODE_2096E4:        AD 53 10      LDA $1053                 
CODE_2096E7:        29 1F         AND #$1F                  
CODE_2096E9:        8D 53 10      STA $1053                 
CODE_2096EC:        AD 4F 10      LDA $104F                 
CODE_2096EF:        29 02         AND #$02                  
CODE_2096F1:        F0 03         BEQ CODE_2096F6           
CODE_2096F3:        8E 5F 10      STX $105F                 
CODE_2096F6:        60            RTS                       

CODE_2096F7:        AD 53 10      LDA $1053                 
CODE_2096FA:        29 C0         AND #$C0                  
CODE_2096FC:        8D 54 10      STA $1054                 
CODE_2096FF:        AD 51 10      LDA $1051                 
CODE_209702:        29 0F         AND #$0F                  
CODE_209704:        8D 52 10      STA $1052                 
CODE_209707:        18            CLC                       
CODE_209708:        6E 52 10      ROR $1052                 
CODE_20970B:        6E 54 10      ROR $1054                 
CODE_20970E:        18            CLC                       
CODE_20970F:        6E 52 10      ROR $1052                 
CODE_209712:        6E 54 10      ROR $1054                 
CODE_209715:        AD 53 10      LDA $1053                 
CODE_209718:        29 1F         AND #$1F                  
CODE_20971A:        4A            LSR A                     
CODE_20971B:        18            CLC                       
CODE_20971C:        6D 54 10      ADC $1054                 
CODE_20971F:        8D 54 10      STA $1054                 
CODE_209722:        60            RTS                       

CODE_209723:        AD 53 10      LDA $1053                 
CODE_209726:        29 01         AND #$01                  
CODE_209728:        8D 55 10      STA $1055                 
CODE_20972B:        AD 53 10      LDA $1053                 
CODE_20972E:        29 20         AND #$20                  
CODE_209730:        D0 05         BNE CODE_209737           
CODE_209732:        0E 55 10      ASL $1055                 
CODE_209735:        80 04         BRA CODE_20973B           

CODE_209737:        38            SEC                       
CODE_209738:        2E 55 10      ROL $1055                 
CODE_20973B:        60            RTS                       

CODE_20973C:        0A            ASL A                     
CODE_20973D:        69 00         ADC #$00                  
CODE_20973F:        0A            ASL A                     
CODE_209740:        69 00         ADC #$00                  
CODE_209742:        85 0C         STA $0C                   
CODE_209744:        8A            TXA                       
CODE_209745:        4A            LSR A                     
CODE_209746:        4A            LSR A                     
CODE_209747:        4A            LSR A                     
CODE_209748:        85 0D         STA $0D                   
CODE_20974A:        A5 0C         LDA $0C                   
CODE_20974C:        29 03         AND #$03                  
CODE_20974E:        09 08         ORA #$08                  
CODE_209750:        85 0E         STA $0E                   
CODE_209752:        A5 0C         LDA $0C                   
CODE_209754:        29 C0         AND #$C0                  
CODE_209756:        05 0D         ORA $0D                   
CODE_209758:        85 0F         STA $0F                   
CODE_20975A:        6B            RTL                       

CODE_20975B:        98            TYA                       
CODE_20975C:        48            PHA                       
CODE_20975D:        8A            TXA                       
CODE_20975E:        48            PHA                       
CODE_20975F:        64 0F         STZ $0F                   
CODE_209761:        AC 26 07      LDY $0726                 
CODE_209764:        C0 00         CPY #$00                  
CODE_209766:        F0 0A         BEQ CODE_209772           
CODE_209768:        A5 0F         LDA $0F                   
CODE_20976A:        18            CLC                       
CODE_20976B:        69 23         ADC #$23                  
CODE_20976D:        85 0F         STA $0F                   
CODE_20976F:        88            DEY                       
CODE_209770:        D0 F6         BNE CODE_209768           
CODE_209772:        8A            TXA                       
CODE_209773:        18            CLC                       
CODE_209774:        65 0F         ADC $0F                   
CODE_209776:        AA            TAX                       
CODE_209777:        FE 9C 1D      INC $1D9C,x               
CODE_20977A:        68            PLA                       
CODE_20977B:        AA            TAX                       
CODE_20977C:        68            PLA                       
CODE_20977D:        A8            TAY                       
CODE_20977E:        6B            RTL                       

CODE_20977F:        20 F7 96      JSR CODE_2096F7           
CODE_209782:        20 23 97      JSR CODE_209723           
CODE_209785:        A9 7E         LDA #$7E                  
CODE_209787:        85 30         STA $30                   
CODE_209789:        AD 25 04      LDA $0425                 
CODE_20978C:        F0 10         BEQ CODE_20979E           
CODE_20978E:        AC 76 03      LDY $0376                 
CODE_209791:        B9 3C 82      LDA.w DATA_21823C,y               
CODE_209794:        85 2E         STA $2E                   
CODE_209796:        B9 4C 82      LDA.w DATA_21824C,y               
CODE_209799:        85 2F         STA $2F                   
CODE_20979B:        4C A8 97      JMP CODE_2097A8           

CODE_20979E:        AD 00 82      LDA.w DATA_218200                 
CODE_2097A1:        85 2E         STA $2E                   
CODE_2097A3:        AD 01 82      LDA.w DATA_218200+1                 
CODE_2097A6:        85 2F         STA $2F                   
CODE_2097A8:        AD 51 10      LDA $1051                 
CODE_2097AB:        29 08         AND #$08                  
CODE_2097AD:        F0 02         BEQ CODE_2097B1           
CODE_2097AF:        E6 2F         INC $2F                   
CODE_2097B1:        AD 0A 07      LDA $070A                 
CODE_2097B4:        0A            ASL A                     
CODE_2097B5:        A8            TAY                       
CODE_2097B6:        B9 5A CE      LDA.w DATA_21CE5A,y               
CODE_2097B9:        85 0C         STA $0C                   
CODE_2097BB:        B9 5B CE      LDA.w DATA_21CE5A+1,y               
CODE_2097BE:        85 0D         STA $0D                   
CODE_2097C0:        AC 0A 07      LDY $070A                 
CODE_2097C3:        B9 80 CE      LDA.w DATA_21CE80,y               
CODE_2097C6:        85 0E         STA $0E                   
CODE_2097C8:        AC 54 10      LDY $1054                 
CODE_2097CB:        B7 2E         LDA [$2E],y               
CODE_2097CD:        C2 30         REP #$30                  
CODE_2097CF:        29 FF 00      AND #$00FF                
CODE_2097D2:        0A            ASL A                     
CODE_2097D3:        0A            ASL A                     
CODE_2097D4:        0A            ASL A                     
CODE_2097D5:        A8            TAY                       
CODE_2097D6:        8A            TXA                       
CODE_2097D7:        29 FF 00      AND #$00FF                
CODE_2097DA:        AA            TAX                       
CODE_2097DB:        AD 55 10      LDA $1055                 
CODE_2097DE:        29 FF 00      AND #$00FF                
CODE_2097E1:        0A            ASL A                     
CODE_2097E2:        85 00         STA $00                   
CODE_2097E4:        98            TYA                       
CODE_2097E5:        18            CLC                       
CODE_2097E6:        65 00         ADC $00                   
CODE_2097E8:        A8            TAY                       
CODE_2097E9:        B7 0C         LDA [$0C],y               
CODE_2097EB:        9D 82 03      STA $0382,x               
CODE_2097EE:        84 00         STY $00                   
CODE_2097F0:        86 02         STX $02                   
CODE_2097F2:        E2 30         SEP #$30                  
CODE_2097F4:        60            RTS                       

CODE_2097F5:        AC 25 04      LDY $0425                 
CODE_2097F8:        D0 12         BNE CODE_20980C           
CODE_2097FA:        A2 03         LDX #$03                  
CODE_2097FC:        4A            LSR A                     
CODE_2097FD:        66 B7         ROR $B7                   
CODE_2097FF:        CA            DEX                       
CODE_209800:        10 FA         BPL CODE_2097FC           
CODE_209802:        A5 B7         LDA $B7                   
CODE_209804:        85 24         STA $24                   
CODE_209806:        18            CLC                       
CODE_209807:        69 10         ADC #$10                  
CODE_209809:        85 23         STA $23                   
CODE_20980B:        6B            RTL                       

CODE_20980C:        A5 B7         LDA $B7                   
CODE_20980E:        F0 11         BEQ CODE_209821           
CODE_209810:        38            SEC                       
CODE_209811:        E9 10         SBC #$10                  
CODE_209813:        85 B7         STA $B7                   
CODE_209815:        C9 F0         CMP #$F0                  
CODE_209817:        90 08         BCC CODE_209821           
CODE_209819:        38            SEC                       
CODE_20981A:        E9 11         SBC #$11                  
CODE_20981C:        85 B7         STA $B7                   
CODE_20981E:        18            CLC                       
CODE_20981F:        69 10         ADC #$10                  
CODE_209821:        85 23         STA $23                   
CODE_209823:        18            CLC                       
CODE_209824:        69 E0         ADC #$E0                  
CODE_209826:        90 02         BCC CODE_20982A           
CODE_209828:        69 00         ADC #$00                  
CODE_20982A:        85 24         STA $24                   
CODE_20982C:        6B            RTL                       

CODE_20982D:        84 01         STY $01                   
CODE_20982F:        A0 00         LDY #$00                  
CODE_209831:        84 00         STY $00                   
CODE_209833:        98            TYA                       
CODE_209834:        A6 01         LDX $01                   
CODE_209836:        E0 01         CPX #$01                  
CODE_209838:        F0 02         BEQ CODE_20983C           
CODE_20983A:        91 00         STA ($00),y               
CODE_20983C:        88            DEY                       
CODE_20983D:        D0 F5         BNE CODE_209834           
CODE_20983F:        C6 01         DEC $01                   
CODE_209841:        10 F1         BPL CODE_209834           
CODE_209843:        60            RTS                       

CODE_209844:        5A            PHY                       
CODE_209845:        8B            PHB                       
CODE_209846:        A0 7E         LDY #$7E                  
CODE_209848:        5A            PHY                       
CODE_209849:        AB            PLB                       
CODE_20984A:        9D 00 20      STA $2000,x               
CODE_20984D:        9D B0 21      STA $21B0,x               
CODE_209850:        9D 60 23      STA $2360,x               
CODE_209853:        9D 10 25      STA $2510,x               
CODE_209856:        9D C0 26      STA $26C0,x               
CODE_209859:        9D 70 28      STA $2870,x               
CODE_20985C:        9D 20 2A      STA $2A20,x               
CODE_20985F:        9D D0 2B      STA $2BD0,x               
CODE_209862:        9D 80 2D      STA $2D80,x               
CODE_209865:        9D 30 2F      STA $2F30,x               
CODE_209868:        9D E0 30      STA $30E0,x               
CODE_20986B:        9D 90 32      STA $3290,x               
CODE_20986E:        9D 40 34      STA $3440,x               
CODE_209871:        9D F0 35      STA $35F0,x               
CODE_209874:        9D A0 37      STA $37A0,x               
CODE_209877:        9E 00 40      STZ $4000,x               
CODE_20987A:        9E B0 41      STZ $41B0,x               
CODE_20987D:        9E 60 43      STZ $4360,x               
CODE_209880:        9E 10 45      STZ $4510,x               
CODE_209883:        9E C0 46      STZ $46C0,x               
CODE_209886:        9E 70 48      STZ $4870,x               
CODE_209889:        9E 20 4A      STZ $4A20,x               
CODE_20988C:        9E D0 4B      STZ $4BD0,x               
CODE_20988F:        9E 80 4D      STZ $4D80,x               
CODE_209892:        9E 30 4F      STZ $4F30,x               
CODE_209895:        9E E0 50      STZ $50E0,x               
CODE_209898:        9E 90 52      STZ $5290,x               
CODE_20989B:        9E 40 54      STZ $5440,x               
CODE_20989E:        9E F0 55      STZ $55F0,x               
CODE_2098A1:        9E A0 57      STZ $57A0,x               
CODE_2098A4:        E8            INX                       
CODE_2098A5:        AB            PLB                       
CODE_2098A6:        7A            PLY                       
CODE_2098A7:        6B            RTL                       

CODE_2098A8:        5A            PHY                       
CODE_2098A9:        8B            PHB                       
CODE_2098AA:        A0 7E         LDY #$7E                  
CODE_2098AC:        5A            PHY                       
CODE_2098AD:        AB            PLB                       
CODE_2098AE:        9D C0 20      STA $20C0,x               
CODE_2098B1:        9D 70 22      STA $2270,x               
CODE_2098B4:        9D 20 24      STA $2420,x               
CODE_2098B7:        9D D0 25      STA $25D0,x               
CODE_2098BA:        9D 80 27      STA $2780,x               
CODE_2098BD:        9D 30 29      STA $2930,x               
CODE_2098C0:        9D E0 2A      STA $2AE0,x               
CODE_2098C3:        9D 90 2C      STA $2C90,x               
CODE_2098C6:        9D 40 2E      STA $2E40,x               
CODE_2098C9:        9D F0 2F      STA $2FF0,x               
CODE_2098CC:        9D A0 31      STA $31A0,x               
CODE_2098CF:        9D 50 33      STA $3350,x               
CODE_2098D2:        9D 00 35      STA $3500,x               
CODE_2098D5:        9D B0 36      STA $36B0,x               
CODE_2098D8:        9D 60 38      STA $3860,x               
CODE_2098DB:        9E C0 40      STZ $40C0,x               
CODE_2098DE:        9E 70 42      STZ $4270,x               
CODE_2098E1:        9E 20 44      STZ $4420,x               
CODE_2098E4:        9E D0 45      STZ $45D0,x               
CODE_2098E7:        9E 80 47      STZ $4780,x               
CODE_2098EA:        9E 30 49      STZ $4930,x               
CODE_2098ED:        9E E0 4A      STZ $4AE0,x               
CODE_2098F0:        9E 90 4C      STZ $4C90,x               
CODE_2098F3:        9E 40 4E      STZ $4E40,x               
CODE_2098F6:        9E F0 4F      STZ $4FF0,x               
CODE_2098F9:        9E A0 51      STZ $51A0,x               
CODE_2098FC:        9E 50 53      STZ $5350,x               
CODE_2098FF:        9E 00 55      STZ $5500,x               
CODE_209902:        9E B0 56      STZ $56B0,x               
CODE_209905:        9E 60 58      STZ $5860,x               
CODE_209908:        AB            PLB                       
CODE_209909:        7A            PLY                       
CODE_20990A:        6B            RTL                       

CODE_20990B:        9C 00 07      STZ $0700                 ;
CODE_20990E:        9C 04 07      STZ $0704                 
CODE_209911:        9C 03 07      STZ $0703                 
CODE_209914:        9C 01 07      STZ $0701                 
CODE_209917:        9C 02 07      STZ $0702                 
CODE_20991A:        A9 7E         LDA #$7E                  
CODE_20991C:        85 30         STA $30                   
CODE_20991E:        A0 00         LDY #$00                  
CODE_209920:        B7 2B         LDA [$2B],y               
CODE_209922:        8D FE 1D      STA $1DFE                 
CODE_209925:        C8            INY                       
CODE_209926:        B7 2B         LDA [$2B],y               
CODE_209928:        8D FF 1D      STA $1DFF                 
CODE_20992B:        C8            INY                       
CODE_20992C:        B7 2B         LDA [$2B],y               
CODE_20992E:        8D 00 1E      STA $1E00                 
CODE_209931:        C8            INY                       
CODE_209932:        B7 2B         LDA [$2B],y               
CODE_209934:        8D 01 1E      STA $1E01                 
CODE_209937:        C8            INY                       
CODE_209938:        B7 2B         LDA [$2B],y               
CODE_20993A:        8D 02 1E      STA $1E02                 
CODE_20993D:        C8            INY                       
CODE_20993E:        B7 2B         LDA [$2B],y               
CODE_209940:        8D 03 1E      STA $1E03                 
CODE_209943:        C8            INY                       
CODE_209944:        AD 14 04      LDA $0414                 
CODE_209947:        D0 2B         BNE CODE_209974           
CODE_209949:        B7 2B         LDA [$2B],y               
CODE_20994B:        29 E0         AND #$E0                  
CODE_20994D:        4A            LSR A                     
CODE_20994E:        4A            LSR A                     
CODE_20994F:        4A            LSR A                     
CODE_209950:        4A            LSR A                     
CODE_209951:        4A            LSR A                     
CODE_209952:        AA            TAX                       
CODE_209953:        BD 2A CE      LDA.w DATA_21CE2A,x               
CODE_209956:        85 55         STA $55                   
CODE_209958:        BD 32 CE      LDA.w DATA_21CE32,x               
CODE_20995B:        85 70         STA $70                   
CODE_20995D:        64 43         STZ $43                   
CODE_20995F:        BD 3A CE      LDA.w DATA_21CE3A,x               
CODE_209962:        8D 16 02      STA $0216                 
CODE_209965:        4A            LSR A                     
CODE_209966:        4A            LSR A                     
CODE_209967:        8D 18 02      STA $0218                 
CODE_20996A:        AD 16 02      LDA $0216                 
CODE_20996D:        38            SEC                       
CODE_20996E:        ED 18 02      SBC $0218                 
CODE_209971:        8D 18 02      STA $0218                 
CODE_209974:        B7 2B         LDA [$2B],y               
CODE_209976:        29 0F         AND #$0F                  
CODE_209978:        85 22         STA $22                   
CODE_20997A:        8D 76 03      STA $0376                 
CODE_20997D:        C8            INY                       
CODE_20997E:        B7 2B         LDA [$2B],y               
CODE_209980:        29 03         AND #$03                  
CODE_209982:        8D 3B 07      STA $073B                 
CODE_209985:        B7 2B         LDA [$2B],y               
CODE_209987:        29 1C         AND #$1C                  
CODE_209989:        4A            LSR A                     
CODE_20998A:        4A            LSR A                     
CODE_20998B:        8D 3C 07      STA $073C                 
CODE_20998E:        B7 2B         LDA [$2B],y               
CODE_209990:        29 60         AND #$60                  
CODE_209992:        4A            LSR A                     
CODE_209993:        4A            LSR A                     
CODE_209994:        4A            LSR A                     
CODE_209995:        4A            LSR A                     
CODE_209996:        4A            LSR A                     
CODE_209997:        8D 26 04      STA $0426                 
CODE_20999A:        B7 2B         LDA [$2B],y               
CODE_20999C:        29 80         AND #$80                  
CODE_20999E:        8D 62 05      STA $0562                 
CODE_2099A1:        C8            INY                       
CODE_2099A2:        B7 2B         LDA [$2B],y               
CODE_2099A4:        29 80         AND #$80                  
CODE_2099A6:        8D 79 03      STA $0379                 
CODE_2099A9:        B7 2B         LDA [$2B],y               
CODE_2099AB:        29 60         AND #$60                  
CODE_2099AD:        4A            LSR A                     
CODE_2099AE:        4A            LSR A                     
CODE_2099AF:        4A            LSR A                     
CODE_2099B0:        4A            LSR A                     
CODE_2099B1:        4A            LSR A                     
CODE_2099B2:        8D 24 04      STA $0424                 
CODE_2099B5:        C9 02         CMP #$02                  
CODE_2099B7:        D0 22         BNE CODE_2099DB           
CODE_2099B9:        A2 00         LDX #$00                  
CODE_2099BB:        AD 16 02      LDA $0216                 
CODE_2099BE:        C9 B0         CMP #$B0                  
CODE_2099C0:        90 02         BCC CODE_2099C4           
CODE_2099C2:        A2 EF         LDX #$EF                  
CODE_2099C4:        8E 16 02      STX $0216                 
CODE_2099C7:        8A            TXA                       
CODE_2099C8:        8F 8E 39 7E   STA $7E398E               
CODE_2099CC:        4A            LSR A                     
CODE_2099CD:        4A            LSR A                     
CODE_2099CE:        8D 18 02      STA $0218                 
CODE_2099D1:        AD 16 02      LDA $0216                 
CODE_2099D4:        38            SEC                       
CODE_2099D5:        ED 18 02      SBC $0218                 
CODE_2099D8:        8D 18 02      STA $0218                 
CODE_2099DB:        B7 2B         LDA [$2B],y               
CODE_2099DD:        29 10         AND #$10                  
CODE_2099DF:        8D 25 04      STA $0425                 
CODE_2099E2:        F0 25         BEQ CODE_209A09           
CODE_2099E4:        AE 14 04      LDX $0414                 
CODE_2099E7:        D0 0A         BNE CODE_2099F3           
CODE_2099E9:        AD 76 03      LDA $0376                 
CODE_2099EC:        85 13         STA $13                   
CODE_2099EE:        85 55         STA $55                   
CODE_2099F0:        4C 09 9A      JMP CODE_209A09           

CODE_2099F3:        9C 76 03      STZ $0376                 
CODE_2099F6:        A5 55         LDA $55                   
CODE_2099F8:        F0 09         BEQ CODE_209A03           
CODE_2099FA:        A5 22         LDA $22                   
CODE_2099FC:        85 13         STA $13                   
CODE_2099FE:        85 55         STA $55                   
CODE_209A00:        8D 76 03      STA $0376                 
CODE_209A03:        A5 13         LDA $13                   
CODE_209A05:        8F 8D 39 7E   STA $7E398D               
CODE_209A09:        B7 2B         LDA [$2B],y               
CODE_209A0B:        29 0F         AND #$0F                  
CODE_209A0D:        8D BA 1E      STA $1EBA                 
CODE_209A10:        C8            INY                       
CODE_209A11:        B7 2B         LDA [$2B],y               
CODE_209A13:        29 E0         AND #$E0                  
CODE_209A15:        4A            LSR A                     
CODE_209A16:        4A            LSR A                     
CODE_209A17:        4A            LSR A                     
CODE_209A18:        4A            LSR A                     
CODE_209A19:        4A            LSR A                     
CODE_209A1A:        8D 45 05      STA $0545                 
CODE_209A1D:        B7 2B         LDA [$2B],y               
CODE_209A1F:        29 1F         AND #$1F                  
CODE_209A21:        8D BF 1E      STA $1EBF                 
CODE_209A24:        C8            INY                       
CODE_209A25:        B7 2B         LDA [$2B],y               
CODE_209A27:        29 30         AND #$30                  
CODE_209A29:        0A            ASL A                     
CODE_209A2A:        0D BF 1E      ORA $1EBF                 
CODE_209A2D:        8D BF 1E      STA $1EBF                 
CODE_209A30:        AD 14 04      LDA $0414                 
CODE_209A33:        D0 14         BNE CODE_209A49           
CODE_209A35:        B7 2B         LDA [$2B],y               
CODE_209A37:        29 C0         AND #$C0                  
CODE_209A39:        18            CLC                       
CODE_209A3A:        2A            ROL A                     
CODE_209A3B:        2A            ROL A                     
CODE_209A3C:        2A            ROL A                     
CODE_209A3D:        AA            TAX                       
CODE_209A3E:        BD 42 CE      LDA.w DATA_21CE42,x               
CODE_209A41:        8D EE 05      STA $05EE                 
CODE_209A44:        D0 03         BNE CODE_209A49           
CODE_209A46:        EE F3 05      INC $05F3                 
CODE_209A49:        B7 2B         LDA [$2B],y               
CODE_209A4B:        29 0F         AND #$0F                  
CODE_209A4D:        C9 07         CMP #$07                  
CODE_209A4F:        D0 19         BNE CODE_209A6A           
CODE_209A51:        AD 27 07      LDA $0727                 ;
CODE_209A54:        D0 14         BNE CODE_209A6A           
CODE_209A56:        AD 1E 00      LDA $001E                 
CODE_209A59:        D0 0F         BNE CODE_209A6A           
CODE_209A5B:        AE 26 07      LDX $0726                 
CODE_209A5E:        BF 79 39 7E   LDA $7E3979,x             
CODE_209A62:        C9 A0         CMP #$A0                  
CODE_209A64:        D0 04         BNE CODE_209A6A           
CODE_209A66:        A9 04         LDA #$04                  
CODE_209A68:        80 08         BRA CODE_209A72           

CODE_209A6A:        B7 2B         LDA [$2B],y               
CODE_209A6C:        29 0F         AND #$0F                  
CODE_209A6E:        AA            TAX                       
CODE_209A6F:        BD 46 CE      LDA.w DATA_21CE46,x       ; Level music table        
CODE_209A72:        8D 61 10      STA $1061                 
CODE_209A75:        8D 62 10      STA $1062                 
CODE_209A78:        AD 42 21      LDA $2142                 
CODE_209A7B:        C9 0D         CMP #$0D                  
CODE_209A7D:        D0 03         BNE CODE_209A82           
CODE_209A7F:        9C 61 10      STZ $1061                 
CODE_209A82:        C8            INY                       
CODE_209A83:        B7 2B         LDA [$2B],y               
CODE_209A85:        29 0F         AND #$0F                  
CODE_209A87:        8D BF 02      STA $02BF                 
CODE_209A8A:        B7 2B         LDA [$2B],y               
CODE_209A8C:        4A            LSR A                     
CODE_209A8D:        4A            LSR A                     
CODE_209A8E:        4A            LSR A                     
CODE_209A8F:        4A            LSR A                     
CODE_209A90:        8D BE 02      STA $02BE                 
CODE_209A93:        C8            INY                       
CODE_209A94:        B7 2B         LDA [$2B],y               
CODE_209A96:        8D 50 03      STA $0350                 
CODE_209A99:        A5 2B         LDA $2B                   
CODE_209A9B:        18            CLC                       
CODE_209A9C:        69 0D         ADC #$0D                  
CODE_209A9E:        85 2B         STA $2B                   
CODE_209AA0:        A5 2C         LDA $2C                   
CODE_209AA2:        69 00         ADC #$00                  
CODE_209AA4:        85 2C         STA $2C                   
CODE_209AA6:        A7 2B         LDA [$2B]                 
CODE_209AA8:        29 E0         AND #$E0                  
CODE_209AAA:        C9 C0         CMP #$C0                  
CODE_209AAC:        D0 32         BNE CODE_209AE0           
CODE_209AAE:        A7 2B         LDA [$2B]                 
CODE_209AB0:        29 0F         AND #$0F                  
CODE_209AB2:        CD 11 02      CMP $0211                 
CODE_209AB5:        D0 18         BNE CODE_209ACF           
CODE_209AB7:        A0 01         LDY #$01                  
CODE_209AB9:        B7 2B         LDA [$2B],y               
CODE_209ABB:        48            PHA                       
CODE_209ABC:        29 0F         AND #$0F                  
CODE_209ABE:        8D 3B 07      STA $073B                 
CODE_209AC1:        68            PLA                       
CODE_209AC2:        4A            LSR A                     
CODE_209AC3:        4A            LSR A                     
CODE_209AC4:        4A            LSR A                     
CODE_209AC5:        4A            LSR A                     
CODE_209AC6:        8D 3C 07      STA $073C                 
CODE_209AC9:        C8            INY                       
CODE_209ACA:        B7 2B         LDA [$2B],y               
CODE_209ACC:        8D 0A 07      STA $070A                 
CODE_209ACF:        AD 2B 00      LDA $002B                 
CODE_209AD2:        18            CLC                       
CODE_209AD3:        69 03         ADC #$03                  
CODE_209AD5:        8D 2B 00      STA $002B                 
CODE_209AD8:        A9 00         LDA #$00                  
CODE_209ADA:        6D 2C 00      ADC $002C                 
CODE_209ADD:        8D 2C 00      STA $002C                 
CODE_209AE0:        A0 00         LDY #$00                  
CODE_209AE2:        B7 2B         LDA [$2B],y               
CODE_209AE4:        C9 FF         CMP #$FF                  
CODE_209AE6:        F0 41         BEQ CODE_209B29           
CODE_209AE8:        85 0E         STA $0E                   
CODE_209AEA:        C8            INY                       
CODE_209AEB:        B7 2B         LDA [$2B],y               
CODE_209AED:        85 0F         STA $0F                   
CODE_209AEF:        C8            INY                       
CODE_209AF0:        B7 2B         LDA [$2B],y               
CODE_209AF2:        8D 06 07      STA $0706                 
CODE_209AF5:        C8            INY                       
CODE_209AF6:        98            TYA                       
CODE_209AF7:        18            CLC                       
CODE_209AF8:        65 2B         ADC $2B                   
CODE_209AFA:        85 2B         STA $2B                   
CODE_209AFC:        A5 2C         LDA $2C                   
CODE_209AFE:        69 00         ADC #$00                  
CODE_209B00:        85 2C         STA $2C                   
CODE_209B02:        A5 0E         LDA $0E                   
CODE_209B04:        29 E0         AND #$E0                  
CODE_209B06:        C9 E0         CMP #$E0                  
CODE_209B08:        D0 06         BNE CODE_209B10           
CODE_209B0A:        22 D4 BE 23   JSL CODE_23BED4           
CODE_209B0E:        80 D0         BRA CODE_209AE0           

CODE_209B10:        22 65 9B 20   JSL CODE_209B65           
CODE_209B14:        AD 06 07      LDA $0706                 
CODE_209B17:        29 F0         AND #$F0                  
CODE_209B19:        F0 07         BEQ CODE_209B22           
CODE_209B1B:        22 40 9C 20   JSL CODE_209C40           
CODE_209B1F:        4C 26 9B      JMP CODE_209B26           

CODE_209B22:        22 80 9C 20   JSL CODE_209C80           
CODE_209B26:        4C E0 9A      JMP CODE_209AE0           

CODE_209B29:        AD 50 03      LDA $0350                 
CODE_209B2C:        F0 26         BEQ CODE_209B54           
CODE_209B2E:        22 B6 8D 2A   JSL CODE_2A8DB6           
CODE_209B32:        AD 4F 03      LDA $034F                 
CODE_209B35:        F0 0C         BEQ CODE_209B43           
CODE_209B37:        AD 16 02      LDA $0216                 
CODE_209B3A:        8D 18 02      STA $0218                 
CODE_209B3D:        AD 17 02      LDA $0217                 
CODE_209B40:        8D 19 02      STA $0219                 
CODE_209B43:        AD 50 03      LDA $0350                 
CODE_209B46:        C9 03         CMP #$03                  
CODE_209B48:        F0 04         BEQ CODE_209B4E           
CODE_209B4A:        C9 24         CMP #$24                  
CODE_209B4C:        D0 06         BNE CODE_209B54           
CODE_209B4E:        9C 18 02      STZ $0218                 
CODE_209B51:        9C 19 02      STZ $0219                 
CODE_209B54:        AD BF 1E      LDA $1EBF                 
CODE_209B57:        C9 07         CMP #$07                  
CODE_209B59:        D0 09         BNE CODE_209B64           
CODE_209B5B:        9C EE 05      STZ $05EE                 
CODE_209B5E:        9C EF 05      STZ $05EF                 
CODE_209B61:        9C F0 05      STZ $05F0                 
CODE_209B64:        6B            RTL                       

CODE_209B65:        A5 0E         LDA $0E                   
CODE_209B67:        0A            ASL A                     
CODE_209B68:        0A            ASL A                     
CODE_209B69:        0A            ASL A                     
CODE_209B6A:        0A            ASL A                     
CODE_209B6B:        85 06         STA $06                   
CODE_209B6D:        A5 0F         LDA $0F                   
CODE_209B6F:        29 0F         AND #$0F                  
CODE_209B71:        05 06         ORA $06                   
CODE_209B73:        8D 00 07      STA $0700                 
CODE_209B76:        A5 0F         LDA $0F                   
CODE_209B78:        29 F0         AND #$F0                  
CODE_209B7A:        4A            LSR A                     
CODE_209B7B:        4A            LSR A                     
CODE_209B7C:        4A            LSR A                     
CODE_209B7D:        AA            TAX                       
CODE_209B7E:        AD 25 04      LDA $0425                 
CODE_209B81:        F0 0F         BEQ CODE_209B92           
CODE_209B83:        8A            TXA                       
CODE_209B84:        4A            LSR A                     
CODE_209B85:        AA            TAX                       
CODE_209B86:        BD 3C 82      LDA.w DATA_21823C,x               
CODE_209B89:        85 2E         STA $2E                   
CODE_209B8B:        BD 4C 82      LDA.w DATA_21824C,x               
CODE_209B8E:        85 2F         STA $2F                   
CODE_209B90:        80 20         BRA CODE_209BB2           

CODE_209B92:        E0 1E         CPX #$1E                  
CODE_209B94:        D0 02         BNE CODE_209B98           
CODE_209B96:        CA            DEX                       
CODE_209B97:        CA            DEX                       
CODE_209B98:        A9 7E         LDA #$7E                  
CODE_209B9A:        8D 30 00      STA $0030                 
CODE_209B9D:        BD 00 82      LDA.w DATA_218200,x               
CODE_209BA0:        85 2E         STA $2E                   
CODE_209BA2:        BD 01 82      LDA.w DATA_218200+1,x               
CODE_209BA5:        85 2F         STA $2F                   
CODE_209BA7:        1A            INC A                     
CODE_209BA8:        85 04         STA $04                   
CODE_209BAA:        A5 0E         LDA $0E                   
CODE_209BAC:        29 10         AND #$10                  
CODE_209BAE:        F0 02         BEQ CODE_209BB2           
CODE_209BB0:        E6 2F         INC $2F                   
CODE_209BB2:        A5 2F         LDA $2F                   
CODE_209BB4:        85 05         STA $05                   
CODE_209BB6:        6B            RTL                       

CODE_209BB7:        5A            PHY                       
CODE_209BB8:        DA            PHX                       
CODE_209BB9:        A5 0F         LDA $0F                   
CODE_209BBB:        48            PHA                       
CODE_209BBC:        A5 0C         LDA $0C                   
CODE_209BBE:        48            PHA                       
CODE_209BBF:        A5 0F         LDA $0F                   
CODE_209BC1:        4A            LSR A                     
CODE_209BC2:        4A            LSR A                     
CODE_209BC3:        4A            LSR A                     
CODE_209BC4:        4A            LSR A                     
CODE_209BC5:        85 0F         STA $0F                   
CODE_209BC7:        A5 0E         LDA $0E                   
CODE_209BC9:        0A            ASL A                     
CODE_209BCA:        0A            ASL A                     
CODE_209BCB:        0A            ASL A                     
CODE_209BCC:        0A            ASL A                     
CODE_209BCD:        05 0F         ORA $0F                   
CODE_209BCF:        85 0F         STA $0F                   
CODE_209BD1:        A5 0F         LDA $0F                   
CODE_209BD3:        29 F8         AND #$F8                  
CODE_209BD5:        4A            LSR A                     
CODE_209BD6:        4A            LSR A                     
CODE_209BD7:        05 0C         ORA $0C                   
CODE_209BD9:        85 0C         STA $0C                   
CODE_209BDB:        AD 15 04      LDA $0415                 
CODE_209BDE:        F0 07         BEQ CODE_209BE7           
CODE_209BE0:        A5 0C         LDA $0C                   
CODE_209BE2:        18            CLC                       
CODE_209BE3:        69 40         ADC #$40                  
CODE_209BE5:        85 0C         STA $0C                   
CODE_209BE7:        A5 0F         LDA $0F                   
CODE_209BE9:        29 07         AND #$07                  
CODE_209BEB:        AA            TAX                       
CODE_209BEC:        A4 0C         LDY $0C                   
CODE_209BEE:        B9 04 1E      LDA $1E04,y               
CODE_209BF1:        1D 52 CE      ORA.w DATA_21CE52,x               
CODE_209BF4:        99 04 1E      STA $1E04,y               
CODE_209BF7:        68            PLA                       
CODE_209BF8:        85 0C         STA $0C                   
CODE_209BFA:        68            PLA                       
CODE_209BFB:        85 0F         STA $0F                   
CODE_209BFD:        FA            PLX                       
CODE_209BFE:        7A            PLY                       
CODE_209BFF:        6B            RTL                       

CODE_209C00:        AD 0A 07      LDA $070A                 
CODE_209C03:        22 3A FB 20   JSL CODE_20FB3A           ; ExecutePtrLong

PNTR_209C07:        dl CODE_29BE08
                    dl CODE_248920
                    dl CODE_268830
                    dl CODE_24ADB8
                    dl CODE_24E668
                    dl CODE_25B038
                    dl CODE_258868
                    dl CODE_25887D
                    dl CODE_258915
                    dl CODE_25D518
                    dl CODE_26B028
                    dl CODE_25B038
                    dl CODE_24E668
                    dl CODE_25B04D
                    dl CODE_24ADB8
                    dl CODE_239110
                    dl CODE_239110
                    dl CODE_239110
                    dl CODE_23A548

CODE_209C40:        AD 0A 07      LDA $070A                 
CODE_209C43:        22 3A FB 20   JSL CODE_20FB3A           ; ExecutePtrLong

PNTR_209C47:        dl DATA_29C1EC
                    dl CODE_24893D
                    dl CODE_268891
                    dl CODE_24ADE3
                    dl CODE_24E695
                    dl CODE_25B06A
                    dl CODE_25892F
                    dl CODE_25892F
                    dl CODE_25892F
                    dl CODE_25D540
                    dl CODE_26B045
                    dl CODE_25B06A
                    dl CODE_24E695
                    dl CODE_25B06A
                    dl CODE_24ADE3
                    dl CODE_239135
                    dl CODE_239135
                    dl CODE_239135
                    dl CODE_23A569
               
CODE_209C80:        AD 0A 07      LDA $070A       
CODE_209C83:        22 3A FB 20   JSL CODE_20FB3A           ; ExecutePtrLong

PNTR_209C87:        dl DATA_29C1EC
                    dl CODE_2489EA
                    dl CODE_26895F
                    dl CODE_24AEF3
                    dl CODE_24E75A
                    dl CODE_25B126
                    dl CODE_2589FD
                    dl CODE_2589FD
                    dl CODE_2589FD
                    dl CODE_25D617
                    dl CODE_26B113
                    dl CODE_25B126
                    dl CODE_24E75A
                    dl CODE_25B126
                    dl CODE_24AEF3
                    dl CODE_23914A
                    dl CODE_23914A
                    dl CODE_23914A
                    dl CODE_23A5E8
  
CODE_209CC0:        AD 25 04      LDA $0425                 
CODE_209CC3:        D0 37         BNE CODE_209CFC           
CODE_209CC5:        A6 25         LDX $25                   
CODE_209CC7:        AD 10 02      LDA $0210                 
CODE_209CCA:        95 26         STA $26,x                 
CODE_209CCC:        20 B5 9D      JSR CODE_209DB5           ; prepare $0380 buffer with 2 vertical strips
CODE_209CCF:        22 53 E9 29   JSL CODE_29E953           ; dma those strips to vram
CODE_209CD3:        A6 25         LDX $25                   
CODE_209CD5:        B5 26         LDA $26,x                 
CODE_209CD7:        18            CLC                       
CODE_209CD8:        7D 95 CE      ADC.w DATA_21CE93+2,x               
CODE_209CDB:        95 26         STA $26,x                 
CODE_209CDD:        A6 25         LDX $25                   
CODE_209CDF:        B5 26         LDA $26,x                 
CODE_209CE1:        29 08         AND #$08                  
CODE_209CE3:        DD 97 CE      CMP.w DATA_21CE93+4,x               
CODE_209CE6:        D0 08         BNE CODE_209CF0           
CODE_209CE8:        B5 23         LDA $23,x                 
CODE_209CEA:        18            CLC                       
CODE_209CEB:        7D 93 CE      ADC.w DATA_21CE93,x               
CODE_209CEE:        95 23         STA $23,x                 
CODE_209CF0:        CE 12 06      DEC $0612                 
CODE_209CF3:        D0 D7         BNE CODE_209CCC           
CODE_209CF5:        A9 FF         LDA #$FF                  
CODE_209CF7:        85 26         STA $26                   
CODE_209CF9:        85 27         STA $27                   
CODE_209CFB:        60            RTS                       

CODE_209CFC:        64 25         STZ $25                   
CODE_209CFE:        A9 E0         LDA #$E0                  
CODE_209D00:        8D 16 02      STA $0216                 
CODE_209D03:        18            CLC                       
CODE_209D04:        69 08         ADC #$08                  
CODE_209D06:        85 26         STA $26                   
CODE_209D08:        AC 76 03      LDY $0376                 
CODE_209D0B:        88            DEY                       
CODE_209D0C:        98            TYA                       
CODE_209D0D:        09 E0         ORA #$E0                  
CODE_209D0F:        85 23         STA $23                   
CODE_209D11:        AD 76 03      LDA $0376                 
CODE_209D14:        F0 0D         BEQ CODE_209D23           
CODE_209D16:        0A            ASL A                     
CODE_209D17:        0A            ASL A                     
CODE_209D18:        0A            ASL A                     
CODE_209D19:        0A            ASL A                     
CODE_209D1A:        85 06         STA $06                   
CODE_209D1C:        A5 23         LDA $23                   
CODE_209D1E:        38            SEC                       
CODE_209D1F:        E5 06         SBC $06                   
CODE_209D21:        85 23         STA $23                   
CODE_209D23:        20 7E 9E      JSR CODE_209E7E           
CODE_209D26:        20 AE 9E      JSR CODE_209EAE           
CODE_209D29:        22 32 EA 29   JSL CODE_29EA32           
CODE_209D2D:        AD 16 02      LDA $0216                 
CODE_209D30:        18            CLC                       
CODE_209D31:        69 08         ADC #$08                  
CODE_209D33:        8D 16 02      STA $0216                 
CODE_209D36:        29 08         AND #$08                  
CODE_209D38:        D0 13         BNE CODE_209D4D           
CODE_209D3A:        A5 23         LDA $23                   
CODE_209D3C:        18            CLC                       
CODE_209D3D:        69 10         ADC #$10                  
CODE_209D3F:        85 23         STA $23                   
CODE_209D41:        29 F0         AND #$F0                  
CODE_209D43:        D0 08         BNE CODE_209D4D           
CODE_209D45:        E6 23         INC $23                   
CODE_209D47:        A9 0F         LDA #$0F                  
CODE_209D49:        25 23         AND $23                   
CODE_209D4B:        85 23         STA $23                   
CODE_209D4D:        AD 16 02      LDA $0216                 
CODE_209D50:        C9 D0         CMP #$D0                  
CODE_209D52:        D0 CF         BNE CODE_209D23           
CODE_209D54:        9C 16 02      STZ $0216                 
CODE_209D57:        64 26         STZ $26                   
CODE_209D59:        60            RTS                       

CODE_209D5A:        AD 25 04      LDA $0425                 
CODE_209D5D:        F0 04         BEQ CODE_209D63           
CODE_209D5F:        20 9E 9D      JSR CODE_209D9E           
CODE_209D62:        6B            RTL                       

CODE_209D63:        A6 25         LDX $25                   
CODE_209D65:        AD 10 02      LDA $0210                 
CODE_209D68:        29 F8         AND #$F8                  
CODE_209D6A:        D5 26         CMP $26,x                 
CODE_209D6C:        F0 27         BEQ CODE_209D95           
CODE_209D6E:        A8            TAY                       
CODE_209D6F:        AD 12 06      LDA $0612                 
CODE_209D72:        D0 13         BNE CODE_209D87           
CODE_209D74:        AD 10 02      LDA $0210                 
CODE_209D77:        29 07         AND #$07                  
CODE_209D79:        E0 00         CPX #$00                  
CODE_209D7B:        D0 06         BNE CODE_209D83           
CODE_209D7D:        C9 02         CMP #$02                  
CODE_209D7F:        B0 06         BCS CODE_209D87                   
CODE_209D81:        80 12         BRA CODE_209D95           

CODE_209D83:        C9 05         CMP #$05                  
CODE_209D85:        B0 0E         BCS CODE_209D95                   
CODE_209D87:        94 26         STY $26,x                 
CODE_209D89:        A5 25         LDA $25                   
CODE_209D8B:        49 01         EOR #$01                  
CODE_209D8D:        AA            TAX                       
CODE_209D8E:        A9 FF         LDA #$FF                  
CODE_209D90:        95 26         STA $26,x                 
CODE_209D92:        20 B5 9D      JSR CODE_209DB5           
CODE_209D95:        AD 07 07      LDA $0707                 
CODE_209D98:        F0 03         BEQ CODE_209D9D           
CODE_209D9A:        20 7D 9E      JSR CODE_209E7D           
CODE_209D9D:        6B            RTL                       

CODE_209D9E:        AD 16 02      LDA $0216                 
CODE_209DA1:        29 F8         AND #$F8                  
CODE_209DA3:        C5 26         CMP $26                   
CODE_209DA5:        F0 0D         BEQ CODE_209DB4           
CODE_209DA7:        AD 16 02      LDA $0216                 
CODE_209DAA:        29 F8         AND #$F8                  
CODE_209DAC:        85 26         STA $26                   
CODE_209DAE:        20 7E 9E      JSR CODE_209E7E           
CODE_209DB1:        20 AE 9E      JSR CODE_209EAE           
CODE_209DB4:        60            RTS                       

CODE_209DB5:        A9 FF         LDA #$FF                  
CODE_209DB7:        8F 00 20 7F   STA $7F2000               
CODE_209DBB:        A6 25         LDX $25                   
CODE_209DBD:        B5 26         LDA $26,x                 
CODE_209DBF:        29 08         AND #$08                  
CODE_209DC1:        4A            LSR A                     
CODE_209DC2:        4A            LSR A                     
CODE_209DC3:        4A            LSR A                     
CODE_209DC4:        85 C2         STA $C2                   
CODE_209DC6:        AD 10 02      LDA $0210                 
CODE_209DC9:        29 0F         AND #$0F                  
CODE_209DCB:        E0 00         CPX #$00                  
CODE_209DCD:        D0 06         BNE CODE_209DD5           
CODE_209DCF:        C9 04         CMP #$04                  
CODE_209DD1:        B0 06         BCS CODE_209DD9                   
CODE_209DD3:        80 09         BRA CODE_209DDE           

CODE_209DD5:        C9 0C         CMP #$0C                  
CODE_209DD7:        B0 05         BCS CODE_209DDE                  
CODE_209DD9:        A9 01         LDA #$01                  
CODE_209DDB:        8D 07 07      STA $0707                 
CODE_209DDE:        AC 0A 07      LDY $070A                 
CODE_209DE1:        B9 80 CE      LDA.w DATA_21CE80,y               
CODE_209DE4:        85 08         STA $08                   
CODE_209DE6:        AD 0A 07      LDA $070A                 
CODE_209DE9:        0A            ASL A                     
CODE_209DEA:        A8            TAY                       
CODE_209DEB:        B9 5A CE      LDA.w DATA_21CE5A,y               
CODE_209DEE:        85 06         STA $06                   
CODE_209DF0:        BE 5B CE      LDX.w DATA_21CE5A+1,y               
CODE_209DF3:        86 07         STX $07                   
CODE_209DF5:        A6 25         LDX $25                   
CODE_209DF7:        B5 23         LDA $23,x                 
CODE_209DF9:        29 F0         AND #$F0                  
CODE_209DFB:        4A            LSR A                     
CODE_209DFC:        4A            LSR A                     
CODE_209DFD:        4A            LSR A                     
CODE_209DFE:        A8            TAY                       
CODE_209DFF:        A9 7E         LDA #$7E                  
CODE_209E01:        85 0F         STA $0F                   
CODE_209E03:        C2 20         REP #$20                  
CODE_209E05:        B9 00 82      LDA.w DATA_218200,y               
CODE_209E08:        85 0D         STA $0D                   
CODE_209E0A:        A9 1A 00      LDA #$001A                
CODE_209E0D:        85 00         STA $00                   
CODE_209E0F:        B5 23         LDA $23,x                 
CODE_209E11:        29 0F 00      AND #$000F                
CODE_209E14:        85 09         STA $09                   
CODE_209E16:        C2 10         REP #$10                  
CODE_209E18:        A2 00 00      LDX #$0000                
CODE_209E1B:        A4 09         LDY $09                   
CODE_209E1D:        B7 0D         LDA [$0D],y               
CODE_209E1F:        29 FF 00      AND #$00FF                
CODE_209E22:        0A            ASL A                     
CODE_209E23:        0A            ASL A                     
CODE_209E24:        0A            ASL A                     
CODE_209E25:        A8            TAY                       
CODE_209E26:        A5 C2         LDA $C2                   
CODE_209E28:        29 FF 00      AND #$00FF                
CODE_209E2B:        F0 04         BEQ CODE_209E31           
CODE_209E2D:        C8            INY                       
CODE_209E2E:        C8            INY                       
CODE_209E2F:        C8            INY                       
CODE_209E30:        C8            INY                       
CODE_209E31:        5A            PHY                       
CODE_209E32:        A5 09         LDA $09                   
CODE_209E34:        18            CLC                       
CODE_209E35:        69 00 20      ADC #$2000                
CODE_209E38:        A8            TAY                       
CODE_209E39:        B7 0D         LDA [$0D],y               
CODE_209E3B:        29 FF 00      AND #$00FF                
CODE_209E3E:        F0 06         BEQ CODE_209E46           
CODE_209E40:        68            PLA                       
CODE_209E41:        18            CLC                       
CODE_209E42:        69 00 08      ADC #$0800                
CODE_209E45:        48            PHA                       
CODE_209E46:        7A            PLY                       
CODE_209E47:        B7 06         LDA [$06],y               
CODE_209E49:        9D 82 03      STA $0382,x               
CODE_209E4C:        C8            INY                       
CODE_209E4D:        C8            INY                       
CODE_209E4E:        B7 06         LDA [$06],y               
CODE_209E50:        9D 84 03      STA $0384,x               
CODE_209E53:        A5 09         LDA $09                   
CODE_209E55:        18            CLC                       
CODE_209E56:        69 10 00      ADC #$0010                
CODE_209E59:        85 09         STA $09                   
CODE_209E5B:        E8            INX                       
CODE_209E5C:        E8            INX                       
CODE_209E5D:        E8            INX                       
CODE_209E5E:        E8            INX                       
CODE_209E5F:        C6 00         DEC $00                   
CODE_209E61:        10 B8         BPL CODE_209E1B           
CODE_209E63:        E2 30         SEP #$30                  
CODE_209E65:        A6 25         LDX $25                   
CODE_209E67:        B5 23         LDA $23,x                 
CODE_209E69:        29 0F         AND #$0F                  
CODE_209E6B:        0A            ASL A                     
CODE_209E6C:        05 C2         ORA $C2                   
CODE_209E6E:        8D 81 03      STA $0381                 
CODE_209E71:        B5 23         LDA $23,x                 
CODE_209E73:        29 10         AND #$10                  
CODE_209E75:        F0 02         BEQ CODE_209E79           
CODE_209E77:        A9 04         LDA #$04                  
CODE_209E79:        8D 80 03      STA $0380                 
CODE_209E7C:        60            RTS                       

CODE_209E7D:        60            RTS                       

CODE_209E7E:        C2 20         REP #$20                  
CODE_209E80:        A6 25         LDX $25                   
CODE_209E82:        B5 23         LDA $23,x                 
CODE_209E84:        29 F0 00      AND #$00F0                
CODE_209E87:        0A            ASL A                     
CODE_209E88:        0A            ASL A                     
CODE_209E89:        EB            XBA                       
CODE_209E8A:        8D 80 03      STA $0380                 
CODE_209E8D:        E2 20         SEP #$20                  
CODE_209E8F:        B5 23         LDA $23,x                 
CODE_209E91:        29 01         AND #$01                  
CODE_209E93:        F0 08         BEQ CODE_209E9D           
CODE_209E95:        AD 80 03      LDA $0380                 
CODE_209E98:        49 08         EOR #$08                  
CODE_209E9A:        8D 80 03      STA $0380                 
CODE_209E9D:        AD 16 02      LDA $0216                 
CODE_209EA0:        29 08         AND #$08                  
CODE_209EA2:        F0 09         BEQ CODE_209EAD           
CODE_209EA4:        AD 81 03      LDA $0381                 
CODE_209EA7:        18            CLC                       
CODE_209EA8:        69 20         ADC #$20                  
CODE_209EAA:        8D 81 03      STA $0381                 
CODE_209EAD:        60            RTS                       

CODE_209EAE:        A6 25         LDX $25                   
CODE_209EB0:        B5 23         LDA $23,x                 
CODE_209EB2:        29 0F         AND #$0F                  
CODE_209EB4:        A8            TAY                       
CODE_209EB5:        B9 3C 82      LDA.w DATA_21823C,y               
CODE_209EB8:        85 2E         STA $2E                   
CODE_209EBA:        B9 4C 82      LDA.w DATA_21824C,y               
CODE_209EBD:        85 2F         STA $2F                   
CODE_209EBF:        C2 20         REP #$20                  
CODE_209EC1:        B5 23         LDA $23,x                 
CODE_209EC3:        29 0F 00      AND #$000F                
CODE_209EC6:        0A            ASL A                     
CODE_209EC7:        0A            ASL A                     
CODE_209EC8:        0A            ASL A                     
CODE_209EC9:        0A            ASL A                     
CODE_209ECA:        18            CLC                       
CODE_209ECB:        65 2E         ADC $2E                   
CODE_209ECD:        85 2E         STA $2E                   
CODE_209ECF:        E2 20         SEP #$20                  
CODE_209ED1:        B5 23         LDA $23,x                 
CODE_209ED3:        29 F0         AND #$F0                  
CODE_209ED5:        85 06         STA $06                   
CODE_209ED7:        64 07         STZ $07                   
CODE_209ED9:        64 08         STZ $08                   
CODE_209EDB:        64 09         STZ $09                   
CODE_209EDD:        C2 30         REP #$30                  
CODE_209EDF:        A4 06         LDY $06                   
CODE_209EE1:        B7 2E         LDA [$2E],y               
CODE_209EE3:        85 0A         STA $0A                   
CODE_209EE5:        E6 06         INC $06                   
CODE_209EE7:        E2 30         SEP #$30                  
CODE_209EE9:        22 37 9F 20   JSL CODE_209F37           
CODE_209EED:        C2 30         REP #$30                  
CODE_209EEF:        98            TYA                       
CODE_209EF0:        29 FF 00      AND #$00FF                
CODE_209EF3:        0A            ASL A                     
CODE_209EF4:        0A            ASL A                     
CODE_209EF5:        0A            ASL A                     
CODE_209EF6:        A8            TAY                       
CODE_209EF7:        A6 08         LDX $08                   
CODE_209EF9:        AD 16 02      LDA $0216                 
CODE_209EFC:        29 08 00      AND #$0008                
CODE_209EFF:        F0 02         BEQ CODE_209F03           
CODE_209F01:        C8            INY                       
CODE_209F02:        C8            INY                       
CODE_209F03:        5A            PHY                       
CODE_209F04:        A5 06         LDA $06                   
CODE_209F06:        3A            DEC A                     
CODE_209F07:        18            CLC                       
CODE_209F08:        69 00 20      ADC #$2000                
CODE_209F0B:        A8            TAY                       
CODE_209F0C:        B7 2E         LDA [$2E],y               
CODE_209F0E:        29 FF 00      AND #$00FF                
CODE_209F11:        F0 06         BEQ CODE_209F19           
CODE_209F13:        68            PLA                       
CODE_209F14:        18            CLC                       
CODE_209F15:        69 00 08      ADC #$0800                
CODE_209F18:        48            PHA                       
CODE_209F19:        7A            PLY                       
CODE_209F1A:        B7 0C         LDA [$0C],y               
CODE_209F1C:        9D 82 03      STA $0382,x               
CODE_209F1F:        C8            INY                       
CODE_209F20:        C8            INY                       
CODE_209F21:        C8            INY                       
CODE_209F22:        C8            INY                       
CODE_209F23:        B7 0C         LDA [$0C],y               
CODE_209F25:        9D 84 03      STA $0384,x               
CODE_209F28:        E8            INX                       
CODE_209F29:        E8            INX                       
CODE_209F2A:        E8            INX                       
CODE_209F2B:        E8            INX                       
CODE_209F2C:        86 08         STX $08                   
CODE_209F2E:        E0 40 00      CPX #$0040                
CODE_209F31:        90 AC         BCC CODE_209EDF           
CODE_209F33:        E2 30         SEP #$30                  
CODE_209F35:        60            RTS                       

CODE_209F36:        60            RTS                       

CODE_209F37:        AC 0A 07      LDY $070A                 
CODE_209F3A:        B9 80 CE      LDA.w DATA_21CE80,y               
CODE_209F3D:        85 0E         STA $0E                   
CODE_209F3F:        AD 0A 07      LDA $070A                 
CODE_209F42:        0A            ASL A                     
CODE_209F43:        AA            TAX                       
CODE_209F44:        BD 5A CE      LDA.w DATA_21CE5A,x               
CODE_209F47:        85 0C         STA $0C                   
CODE_209F49:        BD 5B CE      LDA.w DATA_21CE5A+1,x               
CODE_209F4C:        85 0D         STA $0D                   
CODE_209F4E:        A4 0A         LDY $0A                   
CODE_209F50:        6B            RTL                       
CODE_209F51:        A6 07         LDX $07                   
CODE_209F53:        B7 2E         LDA [$2E],y               
CODE_209F55:        0A            ASL A                     
CODE_209F56:        3E F0 03      ROL $03F0,x               
CODE_209F59:        0A            ASL A                     
CODE_209F5A:        3E F0 03      ROL $03F0,x               
CODE_209F5D:        88            DEY                       
CODE_209F5E:        B7 2E         LDA [$2E],y               
CODE_209F60:        0A            ASL A                     
CODE_209F61:        3E F0 03      ROL $03F0,x               
CODE_209F64:        0A            ASL A                     
CODE_209F65:        3E F0 03      ROL $03F0,x               
CODE_209F68:        60            RTS                       
CODE_209F69:        A5 0C         LDA $0C                   
CODE_209F6B:        48            PHA                       
CODE_209F6C:        A8            TAY                       
CODE_209F6D:        A5 0D         LDA $0D                   
CODE_209F6F:        48            PHA                       
CODE_209F70:        22 C1 9F 20   JSL CODE_209FC1           
CODE_209F74:        85 0D         STA $0D                   
CODE_209F76:        B9 3C 82      LDA.w DATA_21823C,y               
CODE_209F79:        85 2E         STA $2E                   
CODE_209F7B:        85 D8         STA $D8                   
CODE_209F7D:        B9 4C 82      LDA.w DATA_21824C,y               
CODE_209F80:        85 2F         STA $2F                   
CODE_209F82:        18            CLC                       
CODE_209F83:        69 20         ADC #$20                  
CODE_209F85:        85 D9         STA $D9                   
CODE_209F87:        A9 7E         LDA #$7E                  
CODE_209F89:        85 DA         STA $DA                   
CODE_209F8B:        A5 0D         LDA $0D                   
CODE_209F8D:        29 F0         AND #$F0                  
CODE_209F8F:        85 0E         STA $0E                   
CODE_209F91:        A5 0F         LDA $0F                   
CODE_209F93:        4A            LSR A                     
CODE_209F94:        4A            LSR A                     
CODE_209F95:        4A            LSR A                     
CODE_209F96:        4A            LSR A                     
CODE_209F97:        05 0E         ORA $0E                   
CODE_209F99:        A8            TAY                       
CODE_209F9A:        68            PLA                       
CODE_209F9B:        85 0D         STA $0D                   
CODE_209F9D:        68            PLA                       
CODE_209F9E:        85 0C         STA $0C                   
CODE_209FA0:        B7 D8         LDA [$D8],y               
CODE_209FA2:        F0 18         BEQ CODE_209FBC           
CODE_209FA4:        DA            PHX                       
CODE_209FA5:        AD 0A 07      LDA $070A                 
CODE_209FA8:        0A            ASL A                     
CODE_209FA9:        AA            TAX                       
CODE_209FAA:        BD 57 AB      LDA.w DATA_21AB57,x               
CODE_209FAD:        85 DB         STA $DB                   
CODE_209FAF:        BD 58 AB      LDA.w DATA_21AB57+1,x               
CODE_209FB2:        85 DC         STA $DC                   
CODE_209FB4:        B7 2E         LDA [$2E],y               
CODE_209FB6:        A8            TAY                       
CODE_209FB7:        B1 DB         LDA ($DB),y               
CODE_209FB9:        FA            PLX                       
CODE_209FBA:        80 02         BRA CODE_209FBE           
CODE_209FBC:        B7 2E         LDA [$2E],y               
CODE_209FBE:        85 B3         STA $B3                   
CODE_209FC0:        6B            RTL                       

CODE_209FC1:        C0 00         CPY #$00                  
CODE_209FC3:        30 0E         BMI CODE_209FD3           
CODE_209FC5:        18            CLC                       
CODE_209FC6:        79 B2 CE      ADC.w DATA_21CEB2,y               
CODE_209FC9:        B0 04         BCS CODE_209FCF                   
CODE_209FCB:        C9 F0         CMP #$F0                  
CODE_209FCD:        90 04         BCC CODE_209FD3           
CODE_209FCF:        18            CLC                       
CODE_209FD0:        69 10         ADC #$10                  
CODE_209FD2:        C8            INY                       
CODE_209FD3:        6B            RTL                       

CODE_209FD4:        C0 00         CPY #$00                  
CODE_209FD6:        30 07         BMI CODE_209FDF           
CODE_209FD8:        38            SEC                       
CODE_209FD9:        F9 B2 CE      SBC.w DATA_21CEB2,y               
CODE_209FDC:        B0 01         BCS CODE_209FDF                   
CODE_209FDE:        88            DEY                       
CODE_209FDF:        6B            RTL                       

CODE_209FE0:        64 B4         STZ $B4                   
CODE_209FE2:        64 B5         STZ $B5                   
CODE_209FE4:        64 B6         STZ $B6                   
CODE_209FE6:        A5 0F         LDA $0F                   
CODE_209FE8:        4A            LSR A                     
CODE_209FE9:        4A            LSR A                     
CODE_209FEA:        4A            LSR A                     
CODE_209FEB:        4A            LSR A                     
CODE_209FEC:        85 B2         STA $B2                   
CODE_209FEE:        A5 0E         LDA $0E                   
CODE_209FF0:        29 0F         AND #$0F                  
CODE_209FF2:        0A            ASL A                     
CODE_209FF3:        AA            TAX                       
CODE_209FF4:        BD 00 82      LDA.w DATA_218200,x               
CODE_209FF7:        85 2E         STA $2E                   
CODE_209FF9:        BD 01 82      LDA.w DATA_218200+1,x               
CODE_209FFC:        85 2F         STA $2F                   
CODE_209FFE:        BD 1E 82      LDA.w DATA_21821E,x               
CODE_20A001:        85 D8         STA $D8                   
CODE_20A003:        BD 1F 82      LDA.w DATA_21821E+1,x               
CODE_20A006:        85 D9         STA $D9                   
CODE_20A008:        A9 7E         LDA #$7E                  
CODE_20A00A:        85 DA         STA $DA                   
CODE_20A00C:        A5 0C         LDA $0C                   
CODE_20A00E:        F0 04         BEQ CODE_20A014           
CODE_20A010:        E6 2F         INC $2F                   
CODE_20A012:        E6 D9         INC $D9                   
CODE_20A014:        A5 0D         LDA $0D                   
CODE_20A016:        29 F0         AND #$F0                  
CODE_20A018:        05 B2         ORA $B2                   
CODE_20A01A:        85 0B         STA $0B                   
CODE_20A01C:        A8            TAY                       
CODE_20A01D:        B7 D8         LDA [$D8],y               
CODE_20A01F:        F0 16         BEQ CODE_20A037           
CODE_20A021:        AD 0A 07      LDA $070A                 
CODE_20A024:        0A            ASL A                     
CODE_20A025:        AA            TAX                       
CODE_20A026:        BD 57 AB      LDA.w DATA_21AB57,x               
CODE_20A029:        85 DB         STA $DB                   
CODE_20A02B:        BD 58 AB      LDA.w DATA_21AB57+1,x               
CODE_20A02E:        85 DC         STA $DC                   
CODE_20A030:        B7 2E         LDA [$2E],y               
CODE_20A032:        A8            TAY                       
CODE_20A033:        B1 DB         LDA ($DB),y               
CODE_20A035:        80 02         BRA CODE_20A039           

CODE_20A037:        B7 2E         LDA [$2E],y               
CODE_20A039:        85 B3         STA $B3                   
CODE_20A03B:        AC 0A 07      LDY $070A                 
CODE_20A03E:        C0 03         CPY #$03                  
CODE_20A040:        F0 04         BEQ CODE_20A046           
CODE_20A042:        C0 0E         CPY #$0E                  
CODE_20A044:        D0 2E         BNE CODE_20A074           
CODE_20A046:        64 00         STZ $00                   
CODE_20A048:        A5 B3         LDA $B3                   
CODE_20A04A:        85 01         STA $01                   
CODE_20A04C:        29 C0         AND #$C0                  
CODE_20A04E:        18            CLC                       
CODE_20A04F:        2A            ROL A                     
CODE_20A050:        2A            ROL A                     
CODE_20A051:        2A            ROL A                     
CODE_20A052:        A8            TAY                       
CODE_20A053:        A5 01         LDA $01                   
CODE_20A055:        D9 96 1E      CMP $1E96,y               
CODE_20A058:        90 1A         BCC CODE_20A074           
CODE_20A05A:        98            TYA                       
CODE_20A05B:        0A            ASL A                     
CODE_20A05C:        AA            TAX                       
CODE_20A05D:        BD D0 AA      LDA.w DATA_21AAD0,x               
CODE_20A060:        85 02         STA $02                   
CODE_20A062:        BD D1 AA      LDA.w DATA_21AAD0+1,x               
CODE_20A065:        85 03         STA $03                   
CODE_20A067:        A6 00         LDX $00                   
CODE_20A069:        A5 01         LDA $01                   
CODE_20A06B:        38            SEC                       
CODE_20A06C:        F9 96 1E      SBC $1E96,y               
CODE_20A06F:        A8            TAY                       
CODE_20A070:        B1 02         LDA ($02),y               
CODE_20A072:        95 B4         STA $B4,x                 
CODE_20A074:        A5 B3         LDA $B3                   
CODE_20A076:        6B            RTL                       
CODE_20A077:        20 53 87      JSR CODE_208753           
CODE_20A07A:        6B            RTL                       
CODE_20A07B:        AD 43 02      LDA $0243                 
CODE_20A07E:        30 45         BMI CODE_20A0C5           
CODE_20A080:        C9 08         CMP #$08                  
CODE_20A082:        90 06         BCC CODE_20A08A           
CODE_20A084:        A9 FF         LDA #$FF                  
CODE_20A086:        8D 43 02      STA $0243                 
CODE_20A089:        60            RTS                       
CODE_20A08A:        AE 45 02      LDX $0245                 
CODE_20A08D:        BD 14 CA      LDA.w DATA_21CA14,x               
CODE_20A090:        8D 42 02      STA $0242                 
CODE_20A093:        BD 19 CA      LDA.w DATA_21CA19,x               
CODE_20A096:        8D 41 02      STA $0241                 
CODE_20A099:        BD 1E CA      LDA.w DATA_21CA1E,x               
CODE_20A09C:        8D 40 02      STA $0240                 
CODE_20A09F:        AD 43 02      LDA $0243                 
CODE_20A0A2:        0A            ASL A                     
CODE_20A0A3:        A8            TAY                       
CODE_20A0A4:        C2 20         REP #$20                  
CODE_20A0A6:        A9 00 02      LDA #$0200                
CODE_20A0A9:        8D CA 02      STA $02CA                 
CODE_20A0AC:        AD 40 02      LDA $0240                 
CODE_20A0AF:        18            CLC                       
CODE_20A0B0:        79 25 E9      ADC.w DATA_21E925,y               
CODE_20A0B3:        8D 40 02      STA $0240                 
CODE_20A0B6:        A9 00 28      LDA #$2800                
CODE_20A0B9:        18            CLC                       
CODE_20A0BA:        79 35 E9      ADC.w DATA_21E935,y               
CODE_20A0BD:        8D 3E 02      STA $023E                 
CODE_20A0C0:        E2 20         SEP #$20                  
CODE_20A0C2:        EE 43 02      INC $0243                 
CODE_20A0C5:        60            RTS                       
CODE_20A0C6:        AD 43 02      LDA $0243                 
CODE_20A0C9:        30 46         BMI CODE_20A111           
CODE_20A0CB:        C9 04         CMP #$04                  
CODE_20A0CD:        90 06         BCC CODE_20A0D5           
CODE_20A0CF:        A9 FF         LDA #$FF                  
CODE_20A0D1:        8D 43 02      STA $0243                 
CODE_20A0D4:        60            RTS                       
CODE_20A0D5:        AE 46 02      LDX $0246                 
CODE_20A0D8:        BD 23 CA      LDA.w DATA_21CA23,x               
CODE_20A0DB:        8D 42 02      STA $0242                 
CODE_20A0DE:        BD 26 CA      LDA.w DATA_21CA26,x               
CODE_20A0E1:        8D 41 02      STA $0241                 
CODE_20A0E4:        BD 29 CA      LDA.w DATA_21CA29,x               
CODE_20A0E7:        8D 40 02      STA $0240                 
CODE_20A0EA:        AD 43 02      LDA $0243                 
CODE_20A0ED:        0A            ASL A                     
CODE_20A0EE:        0A            ASL A                     
CODE_20A0EF:        A8            TAY                       
CODE_20A0F0:        C2 20         REP #$20                  
CODE_20A0F2:        A9 00 04      LDA #$0400                
CODE_20A0F5:        8D CA 02      STA $02CA                 
CODE_20A0F8:        AD 40 02      LDA $0240                 
CODE_20A0FB:        18            CLC                       
CODE_20A0FC:        79 25 E9      ADC.w DATA_21E925,y               
CODE_20A0FF:        8D 40 02      STA $0240                 
CODE_20A102:        A9 00 28      LDA #$2800                
CODE_20A105:        18            CLC                       
CODE_20A106:        79 35 E9      ADC.w DATA_21E935,y               
CODE_20A109:        8D 3E 02      STA $023E                 
CODE_20A10C:        E2 20         SEP #$20                  
CODE_20A10E:        EE 43 02      INC $0243                 
CODE_20A111:        60            RTS                       

CODE_20A112:        5C 41 96 00   JML CODE_009641           

CODE_20A116:        EA            NOP                       
CODE_20A117:        EA            NOP                       
CODE_20A118:        A9 AA         LDA #$AA                  
CODE_20A11A:        8F 00 20 70   STA $702000               
CODE_20A11E:        CF 00 00 70   CMP $700000               
CODE_20A122:        D0 EE         BNE CODE_20A112           
CODE_20A124:        A9 55         LDA #$55                  
CODE_20A126:        8F 00 20 70   STA $702000               
CODE_20A12A:        CF 00 00 70   CMP $700000               
CODE_20A12E:        D0 E2         BNE CODE_20A112           
CODE_20A130:        78            SEI                       
CODE_20A131:        9C 00 42      STZ $4200                 
CODE_20A134:        9C 0B 42      STZ $420B                 
CODE_20A137:        9C 0C 42      STZ $420C                 
CODE_20A13A:        A9 80         LDA #$80                  
CODE_20A13C:        8D 00 21      STA $2100                 
CODE_20A13F:        C2 20         REP #$20                  
CODE_20A141:        0B            PHD                       
CODE_20A142:        A9 00 21      LDA #$2100                
CODE_20A145:        5B            TCD                       
CODE_20A146:        E2 30         SEP #$30                  
CODE_20A148:        A9 21         LDA #$21                  ;Data bank: $21
CODE_20A14A:        48            PHA                       
CODE_20A14B:        AB            PLB                       
CODE_20A14C:        A9 03         LDA #$03                  
CODE_20A14E:        8D 1E 02      STA $021E                 
CODE_20A151:        85 01         STA $01                   
CODE_20A153:        A9 09         LDA #$09                  
CODE_20A155:        85 05         STA $05                   
CODE_20A157:        8D 0C 02      STA $020C                 
CODE_20A15A:        9C 0D 02      STZ $020D                 
CODE_20A15D:        A9 03         LDA #$03                  
CODE_20A15F:        85 07         STA $07                   
CODE_20A161:        A9 13         LDA #$13                  
CODE_20A163:        85 08         STA $08                   
CODE_20A165:        A9 51         LDA #$51                  
CODE_20A167:        85 09         STA $09                   
CODE_20A169:        64 0A         STZ $0A                   
CODE_20A16B:        A9 22         LDA #$22                  
CODE_20A16D:        85 0B         STA $0B                   
CODE_20A16F:        A9 05         LDA #$05                  
CODE_20A171:        85 0C         STA $0C                   
CODE_20A173:        A9 15         LDA #$15                  
CODE_20A175:        85 2C         STA $2C                   
CODE_20A177:        8D 08 02      STA $0208                 
CODE_20A17A:        A9 02         LDA #$02                  
CODE_20A17C:        85 2D         STA $2D                   
CODE_20A17E:        8D 09 02      STA $0209                 
CODE_20A181:        A9 00         LDA #$00                  
CODE_20A183:        85 30         STA $30                   
CODE_20A185:        8D 03 02      STA $0203                 
CODE_20A188:        A9 00         LDA #$00                  
CODE_20A18A:        85 31         STA $31                   
CODE_20A18C:        8D 04 02      STA $0204                 
CODE_20A18F:        A9 20         LDA #$20                  
CODE_20A191:        8D 05 02      STA $0205                 
CODE_20A194:        A9 40         LDA #$40                  
CODE_20A196:        8D 06 02      STA $0206                 
CODE_20A199:        A9 80         LDA #$80                  
CODE_20A19B:        8D 07 02      STA $0207                 
CODE_20A19E:        64 33         STZ $33                   
CODE_20A1A0:        2B            PLD                       
CODE_20A1A1:        9C 08 12      STZ $1208                 
CODE_20A1A4:        9C 09 12      STZ $1209                 
CODE_20A1A7:        9C 0E 12      STZ $120E                 
CODE_20A1AA:        9C 0F 12      STZ $120F                 
CODE_20A1AD:        9C 0A 12      STZ $120A                 
CODE_20A1B0:        9C 0B 12      STZ $120B                 
CODE_20A1B3:        8D 0D 12      STA $120D                 
CODE_20A1B6:        A9 01         LDA #$01                  
CODE_20A1B8:        8D 0C 12      STA $120C                 
CODE_20A1BB:        4C 51 80      JMP CODE_208051           

CODE_20A1BE:        85 08         STA $08                   
CODE_20A1C0:        86 09         STX $09                   
CODE_20A1C2:        84 0A         STY $0A                   
CODE_20A1C4:        64 00         STZ $00                   
CODE_20A1C6:        A9 A5         LDA #$A5                  
CODE_20A1C8:        85 01         STA $01                   
CODE_20A1CA:        A9 7F         LDA #$7F                  
CODE_20A1CC:        85 02         STA $02                   
CODE_20A1CE:        20 0A A2      JSR CODE_20A20A           
CODE_20A1D1:        6B            RTL                       

CODE_20A1D2:        85 08         STA $08                   
CODE_20A1D4:        86 09         STX $09                   
CODE_20A1D6:        84 0A         STY $0A                   
CODE_20A1D8:        64 00         STZ $00                   
CODE_20A1DA:        A9 60         LDA #$60                  
CODE_20A1DC:        85 01         STA $01                   
CODE_20A1DE:        A9 7E         LDA #$7E                  
CODE_20A1E0:        85 02         STA $02                   
CODE_20A1E2:        20 0A A2      JSR CODE_20A20A           
CODE_20A1E5:        6B            RTL                       

CODE_20A1E6:        85 08         STA $08                   
CODE_20A1E8:        86 09         STX $09                   
CODE_20A1EA:        84 0A         STY $0A                   
CODE_20A1EC:        64 00         STZ $00                   
CODE_20A1EE:        A9 80         LDA #$80                  
CODE_20A1F0:        85 01         STA $01                   
CODE_20A1F2:        A9 7E         LDA #$7E                  
CODE_20A1F4:        85 02         STA $02                   
CODE_20A1F6:        20 0A A2      JSR CODE_20A20A           
CODE_20A1F9:        6B            RTL                       

CODE_20A1FA:        85 08         STA $08                   
CODE_20A1FC:        86 09         STX $09                   
CODE_20A1FE:        84 0A         STY $0A                   
CODE_20A200:        64 00         STZ $00                   
CODE_20A202:        A9 00         LDA #$00                  
CODE_20A204:        85 01         STA $01                   
CODE_20A206:        A9 7F         LDA #$7F                  
CODE_20A208:        85 02         STA $02                   
CODE_20A20A:        C2 10         REP #$10                  
CODE_20A20C:        A0 00 00      LDY #$0000                
CODE_20A20F:        20 A5 A2      JSR CODE_20A2A5           
CODE_20A212:        C9 FF         CMP #$FF                  
CODE_20A214:        D0 03         BNE CODE_20A219           
CODE_20A216:        E2 10         SEP #$10                  
CODE_20A218:        60            RTS                       

CODE_20A219:        85 05         STA $05                   
CODE_20A21B:        29 E0         AND #$E0                  
CODE_20A21D:        C9 E0         CMP #$E0                  
CODE_20A21F:        F0 0A         BEQ CODE_20A22B           
CODE_20A221:        48            PHA                       
CODE_20A222:        A5 05         LDA $05                   
CODE_20A224:        C2 20         REP #$20                  
CODE_20A226:        29 1F 00      AND #$001F                
CODE_20A229:        80 12         BRA CODE_20A23D           

CODE_20A22B:        A5 05         LDA $05                   
CODE_20A22D:        0A            ASL A                     
CODE_20A22E:        0A            ASL A                     
CODE_20A22F:        0A            ASL A                     
CODE_20A230:        29 E0         AND #$E0                
CODE_20A232:        48            PHA
CODE_20A233:        A5 05         LDA $05                   
CODE_20A235:        29 03         AND #$03       
CODE_20A236:        EB            XBA         
CODE_20A238:        20 A5 A2      JSR CODE_20A2A5           
CODE_20A23B:        C2 20         REP #$20                  
CODE_20A23D:        1A            INC A                     
CODE_20A23E:        85 03         STA $03                   
CODE_20A240:        E2 20         SEP #$20                  
CODE_20A242:        68            PLA                       
CODE_20A243:        F0 16         BEQ CODE_20A25B           
CODE_20A245:        30 46         BMI CODE_20A28D           
CODE_20A247:        0A            ASL A                     
CODE_20A248:        10 20         BPL CODE_20A26A           
CODE_20A24A:        0A            ASL A                     
CODE_20A24B:        10 2A         BPL CODE_20A277           
CODE_20A24D:        20 A5 A2      JSR CODE_20A2A5           
CODE_20A250:        A6 03         LDX $03                   
CODE_20A252:        97 00         STA [$00],y               
CODE_20A254:        1A            INC A                     
CODE_20A255:        C8            INY                       
CODE_20A256:        CA            DEX                       
CODE_20A257:        D0 F9         BNE CODE_20A252           
CODE_20A259:        80 B4         BRA CODE_20A20F           

CODE_20A25B:        20 A5 A2      JSR CODE_20A2A5           
CODE_20A25E:        97 00         STA [$00],y               
CODE_20A260:        C8            INY                       
CODE_20A261:        A6 03         LDX $03                   
CODE_20A263:        CA            DEX                       
CODE_20A264:        86 03         STX $03                   
CODE_20A266:        D0 F3         BNE CODE_20A25B           
CODE_20A268:        80 A5         BRA CODE_20A20F           

CODE_20A26A:        20 A5 A2      JSR CODE_20A2A5           
CODE_20A26D:        A6 03         LDX $03                   
CODE_20A26F:        97 00         STA [$00],y               
CODE_20A271:        C8            INY                       
CODE_20A272:        CA            DEX                       
CODE_20A273:        D0 FA         BNE CODE_20A26F           
CODE_20A275:        80 98         BRA CODE_20A20F           

CODE_20A277:        20 B4 A2      JSR CODE_20A2B4           
CODE_20A27A:        A6 03         LDX $03                   
CODE_20A27C:        EB            XBA                       
CODE_20A27D:        97 00         STA [$00],y               
CODE_20A27F:        C8            INY                       
CODE_20A280:        CA            DEX                       
CODE_20A281:        F0 07         BEQ CODE_20A28A           
CODE_20A283:        EB            XBA                       
CODE_20A284:        97 00         STA [$00],y               
CODE_20A286:        C8            INY                       
CODE_20A287:        CA            DEX                       
CODE_20A288:        D0 F2         BNE CODE_20A27C           
CODE_20A28A:        4C 0F A2      JMP CODE_20A20F           

CODE_20A28D:        20 B4 A2      JSR CODE_20A2B4           
CODE_20A290:        AA            TAX                       
CODE_20A291:        5A            PHY                       
CODE_20A292:        9B            TXY                       
CODE_20A293:        B7 00         LDA [$00],y               
CODE_20A295:        7A            PLY                       
CODE_20A296:        97 00         STA [$00],y               
CODE_20A298:        C8            INY                       
CODE_20A299:        E8            INX                       
CODE_20A29A:        C2 20         REP #$20                  
CODE_20A29C:        C6 03         DEC $03                   
CODE_20A29E:        E2 20         SEP #$20                  
CODE_20A2A0:        D0 EF         BNE CODE_20A291           
CODE_20A2A2:        4C 0F A2      JMP CODE_20A20F           

CODE_20A2A5:        A7 08         LDA [$08]                 
CODE_20A2A7:        A6 08         LDX $08                   
CODE_20A2A9:        E8            INX                       
CODE_20A2AA:        D0 05         BNE CODE_20A2B1           
CODE_20A2AC:        A2 00         LDX #$00                  
CODE_20A2AE:        80 E6         BRA CODE_20A296           

CODE_20A2B0:        0A            ASL A                     
CODE_20A2B1:        86 08         STX $08                   
CODE_20A2B3:        60            RTS                       

CODE_20A2B4:        A7 08         LDA [$08]                 
CODE_20A2B6:        A6 08         LDX $08                   
CODE_20A2B8:        E8            INX                       
CODE_20A2B9:        D0 05         BNE CODE_20A2C0           
CODE_20A2BB:        A2 00         LDX #$00                  
CODE_20A2BD:        80 E6         BRA CODE_20A2A5           

CODE_20A2BF:        0A            ASL A                     ;
CODE_20A2C0:        86 08         STX $08                   ;
CODE_20A2C2:        EB            XBA                       ;
CODE_20A2C3:        A7 08         LDA [$08]                 ;
CODE_20A2C5:        E8            INX                       ;
CODE_20A2C6:        D0 05         BNE CODE_20A2CD           ;
CODE_20A2C8:        A2 00 80      LDX #$8000                ;
CODE_20A2CB:        E6 0A         INC $0A                   ;
CODE_20A2CD:        86 08         STX $08                   ;
CODE_20A2CF:        60            RTS                       ;

CODE_20A2D0:        64 01         STZ $01                   ; entry point for SMB3 Battle Mode (DB = #$21, DP = #$0000)
CODE_20A2D2:        A9 BF         LDA #$BF                  
CODE_20A2D4:        85 00         STA $00                   
CODE_20A2D6:        20 17 FA      JSR CODE_20FA17           ; ?? upload something to vram (seems to do nothing if removed)
CODE_20A2D9:        22 A9 E0 22   JSL CODE_22E0A9           ; clear OAM
CODE_20A2DD:        22 5A F0 25   JSL CODE_25F05A           ; upload music and ??
CODE_20A2E1:        22 34 F9 25   JSL CODE_25F934           ; ?? (seems to do nothing if removed)
CODE_20A2E5:        9C 00 42      STZ $4200                 ; disable interrupts
CODE_20A2E8:        A9 11         LDA #$11                  
CODE_20A2EA:        8D 0F 02      STA $020F                 
CODE_20A2ED:        AF 55 39 7E   LDA $7E3955               
CODE_20A2F1:        1A            INC A                     
CODE_20A2F2:        8F 55 39 7E   STA $7E3955               
CODE_20A2F6:        A9 04         LDA #$04                  
CODE_20A2F8:        8D EE 05      STA $05EE                 
CODE_20A2FB:        64 12         STZ $12                   
CODE_20A2FD:        9C 10 02      STZ $0210                 ; \ clear layer 1 x pos
CODE_20A300:        9C 11 02      STZ $0211                 ; /
CODE_20A303:        64 13         STZ $13                   
CODE_20A305:        9C 16 02      STZ $0216                 ; \ clear layer 1 y pos
CODE_20A308:        9C 17 02      STZ $0217                 ; /
CODE_20A30B:        64 23         STZ $23                   
CODE_20A30D:        64 24         STZ $24                   
CODE_20A30F:        64 25         STZ $25                   
CODE_20A311:        A9 00         LDA #$00                  
CODE_20A313:        8F 66 39 7E   STA $7E3966               
CODE_20A317:        8F 65 39 7E   STA $7E3965               
CODE_20A31B:        8F 64 39 7E   STA $7E3964               
CODE_20A31F:        64 00         STZ $00                   ; \
CODE_20A321:        A2 05         LDX #$05                  ; |
CODE_20A323:        86 01         STX $01                   ; |
CODE_20A325:        A0 9D         LDY #$9D                  ; | 
CODE_20A327:        91 00         STA ($00),y               ; | a really complicated way of saying
CODE_20A329:        88            DEY                       ; | STZ $059D
CODE_20A32A:        10 FB         BPL CODE_20A327           ; /
CODE_20A32C:        AD 81 A3      LDA.w DATA_21A381         ; \
CODE_20A32F:        85 2B         STA $2B                   ; |
CODE_20A331:        AD 82 A3      LDA.w DATA_21A381+1       ; |
CODE_20A334:        85 2C         STA $2C                   ; |
CODE_20A336:        A9 21         LDA #$21                  ; | point to level data
CODE_20A338:        85 2D         STA $2D                   ; / [$2B] = $21A399
CODE_20A33A:        AC 0A 07      LDY $070A                 
CODE_20A33D:        B9 75 C9      LDA.w DATA_21C975,y               
CODE_20A340:        8D 39 07      STA $0739                 
CODE_20A343:        9C F2 1C      STZ $1CF2                 
CODE_20A346:        22 00 9C 20   JSL CODE_209C00           ; \ load the level
CODE_20A34A:        20 83 96      JSR CODE_209683           ; /
CODE_20A34D:        A9 11         LDA #$11                  ; \ layer 1 and OBJ through main
CODE_20A34F:        8D 08 02      STA $0208                 ; /
CODE_20A352:        A9 02         LDA #$02                  ; \ layer 2 through sub
CODE_20A354:        8D 09 02      STA $0209                 ; /
CODE_20A357:        A9 02         LDA #$02                  ; \ enable subscreen bg
CODE_20A359:        8D 03 02      STA $0203                 ; /
CODE_20A35C:        A9 20         LDA #$20                  ; \ color addition settings
CODE_20A35E:        8D 04 02      STA $0204                 ; /
CODE_20A361:        22 C3 AF 20   JSL CODE_20AFC3           ; upload sprite graphics
CODE_20A365:        A9 26         LDA #$26                  
CODE_20A367:        8D 12 06      STA $0612                 
CODE_20A36A:        20 C0 9C      JSR CODE_209CC0           ; draw the level
CODE_20A36D:        22 A6 F0 25   JSL CODE_25F0A6           
CODE_20A371:        A9 00         LDA #$00                  
CODE_20A373:        8F 55 39 7E   STA $7E3955               
CODE_20A377:        22 9D E2 29   JSL CODE_29E29D           
CODE_20A37B:        A9 80         LDA #$80                  ; \ enable interrupts
CODE_20A37D:        8D 00 42      STA $4200                 ; /
CODE_20A380:        A9 16         LDA #$16                  ; \ play battle start music if round 1
CODE_20A382:        AC 26 1F      LDY $1F26                 ; |
CODE_20A385:        F0 02         BEQ CODE_20A389           ; |
CODE_20A387:        A9 11         LDA #$11                  ; | otherwise play the hammer bro intro
CODE_20A389:        8D 02 12      STA $1202                 ; /
CODE_20A38C:        20 1F 80      JSR CODE_20801F           ; \ * wait for vblank | battle mode main loop
CODE_20A38F:        22 A9 E0 22   JSL CODE_22E0A9           ; | * clear objects off screen
CODE_20A393:        22 B0 CB 26   JSL CODE_26CBB0           ; | * run the game
CODE_20A397:        AD 14 00      LDA $0014                 ; | * and keep running it until results should appear
CODE_20A39A:        F0 F0         BEQ CODE_20A38C           ; / *
CODE_20A39C:        AD 8C 07      LDA $078C                 ; \ X = player who won the game
CODE_20A39F:        3A            DEC A                     ; | 0 = mario, 1 = luigi
CODE_20A3A0:        49 01         EOR #$01                  ; |
CODE_20A3A2:        AA            TAX                       ; /
CODE_20A3A3:        A9 01         LDA #$01                  ; \ coin sound effect
CODE_20A3A5:        8D 03 12      STA $1203                 ; /
CODE_20A3A8:        FE DA 02      INC $02DA,x               
CODE_20A3AB:        BD DA 02      LDA $02DA,x               
CODE_20A3AE:        C9 05         CMP #$05                  
CODE_20A3B0:        90 08         BCC CODE_20A3BA           
CODE_20A3B2:        FE DE 02      INC $02DE,x               
CODE_20A3B5:        A9 05         LDA #$05                  ; \ 1up sound effect
CODE_20A3B7:        8D 03 12      STA $1203                 ; /
CODE_20A3BA:        22 E1 F1 25   JSL CODE_25F1E1           ; upload results screen tilemap
CODE_20A3BE:        22 A9 E0 22   JSL CODE_22E0A9           ; clear OAM
CODE_20A3C2:        22 56 F9 25   JSL CODE_25F956           ; \ * create barn door in effect | result screen transition loop
CODE_20A3C6:        20 1F 80      JSR CODE_20801F           ; | * wait for vblank
CODE_20A3C9:        AD 14 00      LDA $0014                 ; | *
CODE_20A3CC:        D0 F4         BNE CODE_20A3C2           ; / *
CODE_20A3CE:        C2 20         REP #$20                  ; \ clear player scoreboards
CODE_20A3D0:        A9 00 49      LDA #$4900                ; |
CODE_20A3D3:        8F 02 16 00   STA $001602               ; |
CODE_20A3D7:        A9 00 54      LDA #$5400                ; |
CODE_20A3DA:        8F 10 16 00   STA $001610               ; |
CODE_20A3DE:        A9 00 09      LDA #$0900                ; |
CODE_20A3E1:        8F 04 16 00   STA $001604               ; |
CODE_20A3E5:        8F 12 16 00   STA $001612               ; |
CODE_20A3E9:        A9 2D 18      LDA #$182D                ; |
CODE_20A3EC:        8F 06 16 00   STA $001606               ; |
CODE_20A3F0:        8F 08 16 00   STA $001608               ; |
CODE_20A3F4:        8F 0A 16 00   STA $00160A               ; |
CODE_20A3F8:        8F 0C 16 00   STA $00160C               ; |
CODE_20A3FC:        8F 0E 16 00   STA $00160E               ; |
CODE_20A400:        A9 2D 1C      LDA #$1C2D                ; |
CODE_20A403:        8F 14 16 00   STA $001614               ; |
CODE_20A407:        8F 16 16 00   STA $001616               ; |
CODE_20A40B:        8F 18 16 00   STA $001618               ; |
CODE_20A40F:        8F 1A 16 00   STA $00161A               ; |
CODE_20A413:        8F 1C 16 00   STA $00161C               ; |
CODE_20A417:        A9 FF FF      LDA #$FFFF                ; |
CODE_20A41A:        8F 1E 16 00   STA $00161E               ; |
CODE_20A41E:        E2 20         SEP #$20                  ; /
CODE_20A420:        22 15 CC 26   JSL CODE_26CC15           ; upload palettes
CODE_20A424:        EE 11 02      INC $0211                 
CODE_20A427:        EE 14 00      INC $0014                 
CODE_20A42A:        9C 56 03      STZ $0356                 
CODE_20A42D:        22 84 F3 25   JSL CODE_25F384           ; * results screen main loop
CODE_20A431:        AF 0C 30 7F   LDA $7F300C               ; continue / quit?
CODE_20A435:        F0 07         BEQ CODE_20A43E           
CODE_20A437:        20 1F 80      JSR CODE_20801F           ; wait for vblank
CODE_20A43A:        5C DE 80 00   JML CODE_0080DE           ; exit to SMAS title screen

CODE_20A43E:        20 1F 80      JSR CODE_20801F           ; \ * wait for vblank | result screen transition loop
CODE_20A441:        22 A1 F9 25   JSL CODE_25F9A1           ; | * create barn door out effect
CODE_20A445:        AD 14 00      LDA $0014                 ; | *
CODE_20A448:        D0 F4         BNE CODE_20A43E           ; / *
CODE_20A44A:        9C 75 00      STZ $0075                 ; init game
CODE_20A44D:        9C 2E 19      STZ $192E                 ; \ clear coin counts
CODE_20A450:        9C 2F 19      STZ $192F                 ; /
CODE_20A453:        4C 80 A3      JMP CODE_20A380           ; next round

DATA_20A456:        db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
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

DATA_20A4B0:        db $01,$FF,$02,$FF,$00,$01

CODE_20A4B6:        A5 28         LDA $28                   
CODE_20A4B8:        0A            ASL A                     
CODE_20A4B9:        AA            TAX                       
CODE_20A4BA:        BF 01 D3 20   LDA.l PNTR_20D301,x             
CODE_20A4BE:        85 36         STA $36                   
CODE_20A4C0:        BF 02 D3 20   LDA.l PNTR_20D301+1,x             
CODE_20A4C4:        85 37         STA $37                   
CODE_20A4C6:        A9 20         LDA #$20                  
CODE_20A4C8:        85 38         STA $38                   
CODE_20A4CA:        A9 01         LDA #$01                  
CODE_20A4CC:        85 1C         STA $1C                   
CODE_20A4CE:        9C 54 01      STZ $0154                 
CODE_20A4D1:        AD 54 01      LDA $0154                 
CODE_20A4D4:        10 FB         BPL CODE_20A4D1           
CODE_20A4D6:        64 1C         STZ $1C                   
CODE_20A4D8:        58            CLI                       
CODE_20A4D9:        60            RTS                       

CODE_20A4DA:        C2 20         REP #$20                  
CODE_20A4DC:        A9 00 C0      LDA #$C000                
CODE_20A4DF:        85 0D         STA $0D                   
CODE_20A4E1:        A2 37         LDX #$37                  
CODE_20A4E3:        86 0F         STX $0F                   
CODE_20A4E5:        A9 00 20      LDA #$2000                
CODE_20A4E8:        85 0B         STA $0B                   
CODE_20A4EA:        20 F0 AF      JSR CODE_20AFF0           
CODE_20A4ED:        A9 00 B0      LDA #$B000                
CODE_20A4F0:        85 0D         STA $0D                   
CODE_20A4F2:        A2 3A         LDX #$3A                  
CODE_20A4F4:        86 0F         STX $0F                   
CODE_20A4F6:        A9 00 30      LDA #$3000                
CODE_20A4F9:        85 0B         STA $0B                   
CODE_20A4FB:        20 F0 AF      JSR CODE_20AFF0           
CODE_20A4FE:        A9 00 B0      LDA #$B000                
CODE_20A501:        85 0D         STA $0D                   
CODE_20A503:        A2 3A         LDX #$3A                  
CODE_20A505:        86 0F         STX $0F                   
CODE_20A507:        A9 00 08      LDA #$0800                
CODE_20A50A:        85 0B         STA $0B                   
CODE_20A50C:        A9 00 3C      LDA #$3C00                
CODE_20A50F:        20 F0 AF      JSR CODE_20AFF0           
CODE_20A512:        A9 00 B0      LDA #$B000                
CODE_20A515:        85 0D         STA $0D                   
CODE_20A517:        A2 35         LDX #$35                  
CODE_20A519:        86 0F         STX $0F                   
CODE_20A51B:        A9 00 10      LDA #$1000                
CODE_20A51E:        85 0B         STA $0B                   
CODE_20A520:        A9 00 48      LDA #$4800                
CODE_20A523:        20 F0 AF      JSR CODE_20AFF0           
CODE_20A526:        A9 00 C8      LDA #$C800                
CODE_20A529:        85 0D         STA $0D                   
CODE_20A52B:        A2 37         LDX #$37                  
CODE_20A52D:        86 0F         STX $0F                   
CODE_20A52F:        A9 00 08      LDA #$0800                
CODE_20A532:        85 0B         STA $0B                   
CODE_20A534:        A9 00 64      LDA #$6400                
CODE_20A537:        20 16 B0      JSR CODE_20B016           
CODE_20A53A:        A9 00 A0      LDA #$A000                
CODE_20A53D:        85 0D         STA $0D                   
CODE_20A53F:        A2 30         LDX #$30                  
CODE_20A541:        86 0F         STX $0F                   
CODE_20A543:        A9 00 08      LDA #$0800                
CODE_20A546:        85 0B         STA $0B                   
CODE_20A548:        A9 00 68      LDA #$6800                
CODE_20A54B:        20 16 B0      JSR CODE_20B016           
CODE_20A54E:        A9 00 F8      LDA #$F800                
CODE_20A551:        85 0D         STA $0D                   
CODE_20A553:        A2 37         LDX #$37                  
CODE_20A555:        86 0F         STX $0F                   
CODE_20A557:        A9 00 08      LDA #$0800                
CODE_20A55A:        85 0B         STA $0B                   
CODE_20A55C:        A9 00 6C      LDA #$6C00                
CODE_20A55F:        20 16 B0      JSR CODE_20B016           
CODE_20A562:        A9 00 F8      LDA #$F800                
CODE_20A565:        85 0D         STA $0D                   
CODE_20A567:        A2 35         LDX #$35                  
CODE_20A569:        86 0F         STX $0F                   
CODE_20A56B:        A9 00 08      LDA #$0800                
CODE_20A56E:        85 0B         STA $0B                   
CODE_20A570:        A9 00 70      LDA #$7000                
CODE_20A573:        20 16 B0      JSR CODE_20B016           
CODE_20A576:        A9 00 F0      LDA #$F000                
CODE_20A579:        85 0D         STA $0D                   
CODE_20A57B:        A2 37         LDX #$37                  
CODE_20A57D:        86 0F         STX $0F                   
CODE_20A57F:        A9 00 08      LDA #$0800                
CODE_20A582:        85 0B         STA $0B                   
CODE_20A584:        A9 00 78      LDA #$7800                
CODE_20A587:        20 16 B0      JSR CODE_20B016           
CODE_20A58A:        E2 20         SEP #$20                  
CODE_20A58C:        60            RTS                       

CODE_20A58D:        A9 00 80      LDA #$8000                  
CODE_20A590:        85 0D         STA $0D
CODE_20A592:        A2 39         LDX #$39                 
CODE_20A594:        86 0F         STX $0F                   
CODE_20A596:        A9 00         LDA #$4000                
CODE_20A599:        85 0B         STA $0B                   
CODE_20A59B:        20 13 B0      JSR CODE_20B013           
CODE_20A59E:        82 3B 09      BRL CODE_20AEDC           

DATA_20A5A1:        db $00,$80,$00,$C0,$00,$80,$00,$E0
                    db $00,$E0,$00,$C0,$00,$C0,$00,$E0
                    db $00,$C0,$00,$80,$00,$A0,$00,$F0
                    db $00,$C0,$00,$C0,$00,$E0,$00,$A0
                    db $00,$E0,$00,$E0,$00,$C0,$00,$E0
                    db $00,$C0,$00,$A0,$00,$C0,$00,$80
                    db $00,$E0,$00,$80,$00,$80,$00,$E0
                    db $00,$C0,$00,$E0,$00,$F0,$00,$C0
                    db $00,$C0,$00,$C0,$00,$E0,$00,$C0
                    db $00,$E0,$00,$C0,$00,$E0,$00,$E0
                    db $00,$80,$00,$C0,$00,$80,$00,$F0
                    db $00,$80,$00,$A0,$00,$F0,$00,$F0

DATA_20A601:        db $30,$30,$31,$31,$30,$35,$35,$35
                    db $35,$33,$33,$36,$31,$33,$31,$32
                    db $32,$35,$35,$36,$36,$33,$32,$33
                    db $36,$31,$31,$36,$30,$31,$36,$30
                    db $30,$30,$31,$31,$31,$31,$36,$31
                    db $33,$30,$31,$36,$31,$33,$36,$36

DATA_20A631:        db $00,$80,$00,$80,$00,$80,$00,$80
                    db $00,$80,$00,$F0,$00,$80,$00,$F0
                    db $00,$80,$00,$80,$00,$D0,$00,$80
                    db $00,$80,$00,$80,$00,$80,$00,$F0
                    db $00,$F0,$00,$F0,$00,$F0,$00,$80
                    db $00,$80,$00,$80,$00,$80,$00,$80
                    db $00,$80,$00,$80,$00,$80,$00,$80
                    db $00,$80,$00,$80,$00,$80,$00,$80
                    db $00,$80,$00,$80,$00,$80,$00,$80
                    db $00,$80,$00,$80,$00,$80,$00,$80
                    db $00,$80,$00,$80,$00,$80,$00,$80
                    db $00,$80,$00,$D0,$00,$80,$00,$80

DATA_20A691:        db $30,$36,$36,$36,$36,$33,$36,$35
                    db $36,$36,$36,$36,$36,$36,$36,$35
                    db $32,$35,$3F,$36,$36,$37,$36,$36
                    db $36,$36,$36,$36,$36,$36,$36,$36
                    db $36,$36,$36,$36,$36,$36,$36,$36
                    db $36,$36,$36,$36,$36,$36,$36,$36

DATA_20A6C1:        db $00,$80,$00,$98,$00,$80,$00,$A0
                    db $00,$90,$00,$F0,$00,$98,$00,$F0
                    db $00,$A0,$00,$E8,$00,$D8,$00,$90
                    db $00,$A8,$00,$80,$00,$80,$00,$F0
                    db $00,$F0,$00,$90,$00,$80,$00,$98
                    db $00,$90,$00,$F0,$00,$80,$00,$80
                    db $00,$98,$00,$80,$00,$80,$00,$98
                    db $00,$A8,$00,$A0,$00,$90,$00,$A8
                    db $00,$80,$00,$80,$00,$A0,$00,$A8
                    db $00,$A0,$00,$80,$00,$98,$00,$A0
                    db $00,$80,$00,$98,$00,$80,$00,$90
                    db $00,$80,$00,$D8,$00,$90,$00,$90

DATA_20A721:        db $30,$3A,$36,$3A,$3A,$33,$3A,$35
                    db $2D,$3A,$3A,$3A,$3A,$36,$36,$35
                    db $32,$3A,$36,$3A,$3A,$31,$36,$36
                    db $3A,$36,$36,$3A,$3A,$3A,$3A,$3A
                    db $36,$36,$3A,$3A,$3A,$36,$3A,$3A
                    db $36,$3A,$36,$3A,$36,$3A,$3A,$3A

DATA_20A751:        db $80,$36,$C0,$3A,$D0,$3A,$D8,$3A
                    db $F0,$3A,$E0,$3A,$80,$2D,$B0,$2D
                    db $90,$2D,$A0,$2D,$C0,$2D,$F8,$3A
                    db $B8,$2D,$D0,$2D,$D0,$2D,$E0,$2D
                    db $B0,$30,$F0,$31,$B0,$32,$E8,$3A
                    db $90,$33,$F8,$3A,$D0,$33,$B0,$3A
                    db $F0,$2D,$D0,$2D,$E0,$3A,$C0,$34
                    db $A0,$35,$E0,$2D,$D0,$33,$B0,$30
                    db $80,$36,$C0,$3A,$90,$32,$D0,$3A
                    db $D8,$3A,$C0,$3A

DATA_20A79D:        db $80,$36,$C8,$3A
                    db $80,$36,$80,$36,$F8,$3A,$80,$36
                    db $88,$2D,$A8,$2D,$98,$2D,$A8,$2D
                    db $C8,$2D,$80,$36,$80,$36,$D8,$2D
                    db $D8,$2D,$E8,$2D,$80,$36,$F8,$31
                    db $B0,$32,$80,$36,$80,$36,$80,$36
                    db $80,$36,$80,$36,$F8,$2D,$D8,$2D
                    db $80,$36,$C8,$34,$A8,$35,$E8,$2D
                    db $80,$36,$80,$36,$C8,$3A,$C8,$3A
                    db $98,$32,$80,$36,$80,$36,$C8,$3A

DATA_20A7E9:        db $00,$80,$00,$D0,$00,$80,$00,$80
                    db $00,$D0,$00,$F8,$00,$80,$00,$F8
                    db $00,$80,$00,$E8,$00,$D0,$00,$D0
                    db $00,$80,$00,$80,$00,$80,$00,$F8
                    db $00,$F8,$00,$F8,$00,$80,$00,$80
                    db $00,$80,$00,$80,$00,$80,$00,$80
                    db $00,$80,$00,$80,$00,$80,$00,$D0
                    db $00,$80,$00,$80,$00,$80,$00,$80
                    db $00,$80,$00,$E8,$00,$E8,$00,$80
                    db $00,$90,$00,$80,$00,$80,$00,$80
                    db $00,$80,$00,$80,$00,$80,$00,$80
                    db $00,$80,$00,$D8,$00,$80,$00,$80

DATA_20A849:        db $30,$33,$36,$36,$33,$33,$36,$35
                    db $36,$3A,$3A,$33,$36,$36,$36,$35
                    db $32,$35,$36,$36,$36,$37,$36,$36
                    db $36,$36,$36,$33,$36,$36,$36,$36
                    db $36,$3A,$3A,$36,$33,$36,$36,$36
                    db $36,$36,$36,$36,$36,$36,$3A,$36

DATA_20A879:        db $00,$80,$00,$A8,$00,$80,$00,$80
                    db $00,$A8,$00,$80,$00,$80,$00,$80
                    db $00,$80,$00,$A8,$00,$80,$00,$80
                    db $00,$A8,$00,$80,$00,$80,$00,$80
                    db $00,$80,$00,$80,$00,$80,$00,$A8
                    db $00,$A8,$00,$80,$00,$80,$00,$80
                    db $00,$A8,$00,$80,$00,$80,$00,$80
                    db $00,$A8,$00,$80,$00,$80,$00,$A8
                    db $00,$80,$00,$A8,$00,$A8,$00,$A8
                    db $00,$80,$00,$80,$00,$A8,$00,$80
                    db $00,$80,$00,$A8,$00,$80,$00,$80
                    db $00,$80,$00,$80,$00,$80,$00,$80

DATA_20A8D9:        db $30,$3A,$36,$36,$3A,$36,$36,$36
                    db $36,$3A,$36,$36,$3A,$36,$36,$36
                    db $36,$36,$36,$3A,$3A,$36,$36,$36
                    db $3A,$36,$36,$36,$3A,$36,$36,$3A
                    db $36,$3A,$3A,$3A,$36,$36,$3A,$36
                    db $36,$3A,$36,$3A,$36,$36,$36,$36

DATA_20A909:        db $00,$80,$00,$A0,$00,$A0,$00,$A0
                    db $00,$A0,$00,$A0,$00,$A0,$00,$A0
                    db $00,$A0,$00,$A0,$00,$A0,$00,$E0
                    db $00,$A0,$00,$A0,$00,$E0,$00,$A0
                    db $00,$E0,$00,$E0,$00,$A8,$00,$A0
                    db $00,$A0,$00,$A0,$00,$C0,$00,$A0
                    db $00,$A0,$00,$A0,$00,$A0,$00,$A0
                    db $00,$E0,$00,$A0,$00,$A0,$00,$A0
                    db $00,$A0,$00,$A0,$00,$A0,$00,$A0
                    db $00,$A0,$00,$A0,$00,$A0,$00,$A0
                    db $00,$A0,$00,$A0,$00,$A0,$00,$A0
                    db $00,$A0,$00,$A0,$00,$A0,$00,$A0

DATA_20A969:        db $30,$30,$30,$30,$30,$30,$30,$30
                    db $30,$30,$30,$33,$30,$30,$36,$35
                    db $32,$35,$30,$30,$30,$30,$36,$30
                    db $30,$30,$30,$30,$33,$30,$30,$30
                    db $30,$30,$30,$30,$30,$30,$30,$30
                    db $30,$30,$30,$30,$30,$30,$30,$30

DATA_20A999:        db $00,$80,$00,$A0,$00,$90,$00,$D8
                    db $00,$F0,$00,$C0,$00,$D0,$00,$A8
                    db $00,$D0,$00,$98,$00,$88,$00,$E8
                    db $00,$D0,$00,$F0,$00,$E0,$00,$D8
                    db $00,$90,$00,$D0,$00,$B0,$00,$F0
                    db $00,$D0,$00,$90,$00,$D0,$00,$90
                    db $00,$98,$00,$D0,$00,$90,$00,$D0
                    db $00,$E8,$00,$90,$00,$80,$00,$D0
                    db $00,$A0,$00,$E0,$00,$E0,$00,$F0
                    db $00,$D0,$00,$90,$00,$D0,$00,$D0
                    db $00,$D0,$00,$D0,$00,$90,$00,$90
                    db $00,$90,$00,$88,$00,$D0,$00,$80

DATA_20A9F9:        db $30,$34,$31,$30,$30,$33,$31,$30
                    db $35,$30,$30,$33,$30,$30,$36,$32
                    db $33,$35,$30,$30,$30,$30,$32,$31
                    db $30,$31,$31,$31,$33,$31,$30,$30
                    db $34,$34,$34,$30,$30,$31,$30,$31
                    db $30,$30,$31,$31,$31,$30,$31,$30

DATA_20AA29:        db $00,$80,$00,$F8,$00,$98,$00,$F8
                    db $00,$F8,$00,$F8,$00,$F8,$00,$F8
                    db $00,$F8,$00,$F8,$00,$80,$00,$F8
                    db $00,$F8,$00,$F8,$00,$E0,$00,$A0
                    db $00,$A8,$00,$D8,$00,$B8,$00,$F8
                    db $00,$F8,$00,$80,$00,$C0,$00,$98
                    db $00,$F8,$00,$F8,$00,$F8,$00,$F8
                    db $00,$F8,$00,$98,$00,$F8,$00,$F8
                    db $00,$F8,$00,$F8,$00,$F8,$00,$F8
                    db $00,$F8,$00,$98,$00,$F8,$00,$F8
                    db $00,$F8,$00,$F8,$00,$98,$00,$98
                    db $00,$98,$00,$80,$00,$F8,$00,$F8

DATA_20AA89:        db $30,$34,$31,$34,$34,$34,$34,$34
                    db $34,$34,$30,$34,$34,$34,$36,$35
                    db $35,$32,$30,$34,$34,$30,$36,$31
                    db $34,$34,$34,$34,$34,$31,$34,$34
                    db $34,$34,$34,$34,$34,$31,$34,$34
                    db $34,$34,$35,$35,$31,$30,$34,$34

DATA_20AAB9:        db $00,$80,$00,$D8,$00,$E8,$00,$D8
                    db $00,$F8,$00,$C0,$00,$D8,$00,$E0
                    db $00,$A0,$00,$80,$00,$D8,$00,$F0
                    db $00,$C0,$00,$D8,$00,$E0,$00,$A0
                    db $00,$A8,$00,$D8,$00,$B8,$00,$D8
                    db $00,$D8,$00,$E8,$00,$C0,$00,$E8
                    db $00,$80,$00,$80,$00,$E8,$00,$D8
                    db $00,$F0,$00,$E8,$00,$D8,$00,$D8
                    db $00,$D8,$00,$80,$00,$80,$00,$80
                    db $00,$80,$00,$E8,$00,$80,$00,$D8
                    db $00,$80,$00,$D8,$00,$E8,$00,$E8
                    db $00,$80,$00,$D8,$00,$D8,$00,$80

DATA_20AB19:        db $30,$30,$34,$30,$34,$33,$31,$35
                    db $36,$36,$34,$33,$36,$30,$36,$35
                    db $35,$32,$30,$30,$30,$34,$36,$34
                    db $36,$36,$34,$31,$33,$34,$30,$30
                    db $30,$30,$30,$30,$30,$34,$30,$31
                    db $30,$30,$34,$34,$35,$34,$31,$30

DATA_20AB49:        db $00,$80,$00,$F0,$00,$98,$00,$E0
                    db $00,$F8,$00,$C0,$00,$C0,$00,$E0
                    db $00,$A0,$00,$F0,$00,$A0,$00,$F0
                    db $00,$F0,$00,$F0,$00,$E0,$00,$A0
                    db $00,$A8,$00,$D8,$00,$B8,$00,$F0
                    db $00,$C0,$00,$98,$00,$C0,$00,$98
                    db $00,$80,$00,$80,$00,$98,$00,$C0
                    db $00,$F0,$00,$98,$00,$98,$00,$98
                    db $00,$98,$00,$80,$00,$80,$00,$80
                    db $00,$80,$00,$98,$00,$80,$00,$80
                    db $00,$80,$00,$80,$00,$98,$00,$98
                    db $00,$88,$00,$F0,$00,$80,$00,$F0

DATA_20ABA9:        db $30,$34,$33,$36,$34,$33,$36,$35
                    db $36,$34,$36,$34,$34,$34,$36,$35
                    db $35,$32,$30,$34,$36,$33,$36,$33
                    db $36,$36,$33,$36,$36,$33,$34,$34
                    db $34,$30,$30,$30,$30,$33,$30,$30
                    db $30,$30,$33,$33,$35,$34,$30,$34

DATA_20ABD9:        db $00,$A8,$00,$A8,$00,$A8,$00,$A8
                    db $00,$A8,$00,$A8,$00,$A8,$00,$A8
                    db $00,$A8,$00,$A8,$00,$A8,$00,$E0
                    db $00,$A8,$00,$A8,$00,$A8,$00,$A8
                    db $00,$A8,$00,$A8,$00,$A8,$00,$A8
                    db $00,$A8,$00,$A8,$00,$A8,$00,$A8
                    db $00,$A8,$00,$A8,$00,$A8,$00,$A8
                    db $00,$E0,$00,$A8,$00,$A8,$00,$A8
                    db $00,$A8,$00,$E0,$00,$E0,$00,$A8
                    db $00,$A8,$00,$A8,$00,$A8,$00,$A8
                    db $00,$A8,$00,$A8,$00,$A8,$00,$A8
                    db $00,$90,$00,$A8,$00,$A8,$00,$A8

DATA_20AC39:        db $30,$30,$30,$30,$30,$30,$30,$30
                    db $30,$30,$30,$34,$30,$30,$30,$30
                    db $30,$30,$30,$30,$30,$30,$30,$30
                    db $30,$30,$30,$30,$34,$30,$30,$30
                    db $30,$34,$34,$30,$30,$30,$30,$30
                    db $30,$30,$30,$30,$35,$30,$30,$30
                    db $34,$34,$34,$34,$34,$34,$34,$34

DATA_20AC71:        db $00,$80,$00,$80,$00,$88,$00,$88
                    db $00,$90,$00,$90,$00,$98,$00,$F0

CODE_20AC81:        8B            PHB                       
CODE_20AC82:        4B            PHK                       
CODE_20AC83:        AB            PLB                       
CODE_20AC84:        C2 20         REP #$20                  
CODE_20AC86:        AC BF 1E      LDY $1EBF                 
CODE_20AC89:        84 00         STY $00                   
CODE_20AC8B:        B9 01 A6      LDA DATA_20A601,y               
CODE_20AC8E:        29 FF 00      AND #$00FF                
CODE_20AC91:        AA            TAX                       
CODE_20AC92:        98            TYA                       
CODE_20AC93:        29 FF 00      AND #$00FF                
CODE_20AC96:        0A            ASL A                     
CODE_20AC97:        A8            TAY                       
CODE_20AC98:        B9 A1 A5      LDA DATA_20A5A1,y               
CODE_20AC9B:        85 0D         STA $0D                   
CODE_20AC9D:        86 0F         STX $0F                   
CODE_20AC9F:        A9 00 10      LDA #$1000                
CODE_20ACA2:        85 0B         STA $0B                   
CODE_20ACA4:        A9 00 20      LDA #$2000                
CODE_20ACA7:        20 F0 AF      JSR CODE_20AFF0           
CODE_20ACAA:        A6 00         LDX $00                   
CODE_20ACAC:        E0 0F         CPX #$0F                  
CODE_20ACAE:        D0 17         BNE CODE_20ACC7           
CODE_20ACB0:        AE 26 07      LDX $0726                 
CODE_20ACB3:        F0 12         BEQ CODE_20ACC7           
CODE_20ACB5:        64 0D         STZ $0D                   
CODE_20ACB7:        A9 80 32      LDA #$3280                
CODE_20ACBA:        85 0E         STA $0E                   
CODE_20ACBC:        A9 00 08      LDA #$0800                
CODE_20ACBF:        85 0B         STA $0B                   
CODE_20ACC1:        A9 00 24      LDA #$2400                
CODE_20ACC4:        20 F0 AF      JSR CODE_20AFF0           
CODE_20ACC7:        AD 67 05      LDA $0567                 
CODE_20ACCA:        29 FF 00      AND #$00FF                
CODE_20ACCD:        F0 0B         BEQ CODE_20ACDA           
CODE_20ACCF:        A0 33         LDY #$33                  
CODE_20ACD1:        84 0F         STY $0F                   
CODE_20ACD3:        A9 00 F0      LDA #$F000                
CODE_20ACD6:        85 0D         STA $0D                   
CODE_20ACD8:        80 0D         BRA CODE_20ACE7           

CODE_20ACDA:        B9 31 A6      LDA DATA_20A631,y               
CODE_20ACDD:        85 0D         STA $0D                   
CODE_20ACDF:        A4 00         LDY $00                   
CODE_20ACE1:        B9 91 A6      LDA DATA_20A691,y               
CODE_20ACE4:        AA            TAX                       
CODE_20ACE5:        86 0F         STX $0F                   
CODE_20ACE7:        A9 00 10      LDA #$1000                
CODE_20ACEA:        85 0B         STA $0B                   
CODE_20ACEC:        A9 00 28      LDA #$2800                
CODE_20ACEF:        20 F0 AF      JSR CODE_20AFF0           
CODE_20ACF2:        AC BF 1E      LDY $1EBF                 
CODE_20ACF5:        B9 21 A7      LDA DATA_20A721,y               
CODE_20ACF8:        29 FF 00      AND #$00FF                
CODE_20ACFB:        AA            TAX                       
CODE_20ACFC:        98            TYA                       
CODE_20ACFD:        29 FF 00      AND #$00FF                
CODE_20AD00:        0A            ASL A                     
CODE_20AD01:        A8            TAY                       
CODE_20AD02:        B9 C1 A6      LDA DATA_20A6C1,y               
CODE_20AD05:        85 0D         STA $0D                   
CODE_20AD07:        86 0F         STX $0F                   
CODE_20AD09:        A9 00 08      LDA #$0800                
CODE_20AD0C:        85 0B         STA $0B                   
CODE_20AD0E:        A9 00 30      LDA #$3000                
CODE_20AD11:        20 F0 AF      JSR CODE_20AFF0           
CODE_20AD14:        64 0D         STZ $0D                   
CODE_20AD16:        AD 50 03      LDA $0350                 
CODE_20AD19:        29 FF 00      AND #$00FF                
CODE_20AD1C:        0A            ASL A                     
CODE_20AD1D:        A8            TAY                       
CODE_20AD1E:        B9 51 A7      LDA DATA_20A751,y               
CODE_20AD21:        85 0E         STA $0E                   
CODE_20AD23:        AD BF 02      LDA $02BF                 
CODE_20AD26:        29 FF 00      AND #$00FF                
CODE_20AD29:        C9 06 00      CMP #$0006                
CODE_20AD2C:        D0 05         BNE CODE_20AD33           
CODE_20AD2E:        A9 C0 3A      LDA #$3AC0                
CODE_20AD31:        85 0E         STA $0E                   
CODE_20AD33:        A9 00 08      LDA #$0800                
CODE_20AD36:        85 0B         STA $0B                   
CODE_20AD38:        A9 00 34      LDA #$3400                
CODE_20AD3B:        20 F0 AF      JSR CODE_20AFF0           
CODE_20AD3E:        64 0D         STZ $0D                   
CODE_20AD40:        AD 50 03      LDA $0350                 
CODE_20AD43:        29 FF 00      AND #$00FF                
CODE_20AD46:        0A            ASL A                     
CODE_20AD47:        A8            TAY                       
CODE_20AD48:        B9 9D A7      LDA DATA_20A79D,y               
CODE_20AD4B:        85 0E         STA $0E                   
CODE_20AD4D:        AD BF 02      LDA $02BF                 
CODE_20AD50:        29 FF 00      AND #$00FF                
CODE_20AD53:        C9 06 00      CMP #$0006                
CODE_20AD56:        D0 05         BNE CODE_20AD5D           
CODE_20AD58:        A9 C8 3A      LDA #$3AC8                
CODE_20AD5B:        85 0E         STA $0E                   
CODE_20AD5D:        A9 00 08      LDA #$0800                
CODE_20AD60:        85 0B         STA $0B                   
CODE_20AD62:        A9 00 38      LDA #$3800                
CODE_20AD65:        20 F0 AF      JSR CODE_20AFF0           
CODE_20AD68:        AC BF 1E      LDY $1EBF                 
CODE_20AD6B:        B9 49 A8      LDA DATA_20A849,y               
CODE_20AD6E:        29 FF 00      AND #$00FF                
CODE_20AD71:        AA            TAX                       
CODE_20AD72:        98            TYA                       
CODE_20AD73:        29 FF 00      AND #$00FF                
CODE_20AD76:        0A            ASL A                     
CODE_20AD77:        A8            TAY                       
CODE_20AD78:        B9 E9 A7      LDA DATA_20A7E9,y               
CODE_20AD7B:        85 0D         STA $0D                   
CODE_20AD7D:        86 0F         STX $0F                   
CODE_20AD7F:        A9 00 08      LDA #$0800                
CODE_20AD82:        85 0B         STA $0B                   
CODE_20AD84:        A9 00 3C      LDA #$3C00                
CODE_20AD87:        20 F0 AF      JSR CODE_20AFF0           
CODE_20AD8A:        AC BF 1E      LDY $1EBF                 
CODE_20AD8D:        B9 D9 A8      LDA DATA_20A8D9,y               
CODE_20AD90:        29 FF 00      AND #$00FF                
CODE_20AD93:        AA            TAX                       
CODE_20AD94:        98            TYA                       
CODE_20AD95:        29 FF 00      AND #$00FF                
CODE_20AD98:        0A            ASL A                     
CODE_20AD99:        A8            TAY                       
CODE_20AD9A:        B9 79 A8      LDA DATA_20A879,y               
CODE_20AD9D:        85 0D         STA $0D                   
CODE_20AD9F:        86 0F         STX $0F                   
CODE_20ADA1:        A9 00 08      LDA #$0800                
CODE_20ADA4:        85 0B         STA $0B                   
CODE_20ADA6:        A9 00 40      LDA #$4000                
CODE_20ADA9:        20 F0 AF      JSR CODE_20AFF0           
CODE_20ADAC:        A9 00 B8      LDA #$B800                
CODE_20ADAF:        85 0D         STA $0D                   
CODE_20ADB1:        A2 32         LDX #$32                  
CODE_20ADB3:        86 0F         STX $0F                   
CODE_20ADB5:        A9 00 08      LDA #$0800                
CODE_20ADB8:        85 0B         STA $0B                   
CODE_20ADBA:        A9 00 44      LDA #$4400                
CODE_20ADBD:        20 F0 AF      JSR CODE_20AFF0           
CODE_20ADC0:        AC BF 1E      LDY $1EBF                 
CODE_20ADC3:        C0 16         CPY #$16                  
CODE_20ADC5:        D0 03         BNE CODE_20ADCA           
CODE_20ADC7:        82 C3 F7      BRL CODE_20A58D           
CODE_20ADCA:        A9 00 B0      LDA #$B000                
CODE_20ADCD:        85 0D         STA $0D                   
CODE_20ADCF:        A2 3F         LDX #$3F                  
CODE_20ADD1:        86 0F         STX $0F                   
CODE_20ADD3:        A9 00 08      LDA #$0800                
CODE_20ADD6:        85 0B         STA $0B                   
CODE_20ADD8:        20 13 B0      JSR CODE_20B013           
CODE_20ADDB:        AC BF 1E      LDY $1EBF                 
CODE_20ADDE:        B9 69 A9      LDA DATA_20A969,y               
CODE_20ADE1:        29 FF 00      AND #$00FF                
CODE_20ADE4:        AA            TAX                       
CODE_20ADE5:        98            TYA                       
CODE_20ADE6:        29 FF 00      AND #$00FF                
CODE_20ADE9:        0A            ASL A                     
CODE_20ADEA:        A8            TAY                       
CODE_20ADEB:        B9 09 A9      LDA DATA_20A909,y               
CODE_20ADEE:        85 0D         STA $0D                   
CODE_20ADF0:        86 0F         STX $0F                   
CODE_20ADF2:        A9 00 08      LDA #$0800                
CODE_20ADF5:        85 0B         STA $0B                   
CODE_20ADF7:        A9 00 64      LDA #$6400                
CODE_20ADFA:        20 16 B0      JSR CODE_20B016           
CODE_20ADFD:        AC BF 1E      LDY $1EBF                 
CODE_20AE00:        B9 F9 A9      LDA DATA_20A9F9,y               
CODE_20AE03:        29 FF 00      AND #$00FF                
CODE_20AE06:        AA            TAX                       
CODE_20AE07:        98            TYA                       
CODE_20AE08:        29 FF 00      AND #$00FF                
CODE_20AE0B:        0A            ASL A                     
CODE_20AE0C:        A8            TAY                       
CODE_20AE0D:        B9 99 A9      LDA DATA_20A999,y               
CODE_20AE10:        85 0D         STA $0D                   
CODE_20AE12:        86 0F         STX $0F                   
CODE_20AE14:        A9 00 08      LDA #$0800                
CODE_20AE17:        85 0B         STA $0B                   
CODE_20AE19:        A9 00 68      LDA #$6800                
CODE_20AE1C:        20 16 B0      JSR CODE_20B016           
CODE_20AE1F:        AC BF 1E      LDY $1EBF                 
CODE_20AE22:        B9 89 AA      LDA DATA_20AA89,y               
CODE_20AE25:        29 FF 00      AND #$00FF                
CODE_20AE28:        AA            TAX                       
CODE_20AE29:        98            TYA                       
CODE_20AE2A:        29 FF 00      AND #$00FF                
CODE_20AE2D:        0A            ASL A                     
CODE_20AE2E:        A8            TAY                       
CODE_20AE2F:        B9 29 AA      LDA DATA_20AA29,y               
CODE_20AE32:        85 0D         STA $0D                   
CODE_20AE34:        86 0F         STX $0F                   
CODE_20AE36:        A9 00 08      LDA #$0800                
CODE_20AE39:        85 0B         STA $0B                   
CODE_20AE3B:        A9 00 6C      LDA #$6C00                
CODE_20AE3E:        20 16 B0      JSR CODE_20B016           
CODE_20AE41:        AC BF 1E      LDY $1EBF                 
CODE_20AE44:        B9 19 AB      LDA DATA_20AB19,y               
CODE_20AE47:        29 FF 00      AND #$00FF                
CODE_20AE4A:        AA            TAX                       
CODE_20AE4B:        98            TYA                       
CODE_20AE4C:        29 FF 00      AND #$00FF                
CODE_20AE4F:        0A            ASL A                     
CODE_20AE50:        A8            TAY                       
CODE_20AE51:        B9 B9 AA      LDA DATA_20AAB9,y               
CODE_20AE54:        85 0D         STA $0D                   
CODE_20AE56:        86 0F         STX $0F                   
CODE_20AE58:        A9 00 08      LDA #$0800                
CODE_20AE5B:        85 0B         STA $0B                   
CODE_20AE5D:        A9 00 70      LDA #$7000                
CODE_20AE60:        20 16 B0      JSR CODE_20B016           
CODE_20AE63:        AC BF 1E      LDY $1EBF                 
CODE_20AE66:        C0 0A         CPY #$0A                  
CODE_20AE68:        D0 1D         BNE CODE_20AE87           
CODE_20AE6A:        AD 27 07      LDA $0727                 
CODE_20AE6D:        29 FF 00      AND #$00FF                
CODE_20AE70:        A8            TAY                       
CODE_20AE71:        B9 69 AC      LDA.w DATA_21AC69,y               
CODE_20AE74:        29 FF 00      AND #$00FF                
CODE_20AE77:        AA            TAX                       
CODE_20AE78:        98            TYA                       
CODE_20AE79:        29 FF 00      AND #$00FF                
CODE_20AE7C:        0A            ASL A                     
CODE_20AE7D:        A8            TAY                       
CODE_20AE7E:        B9 71 AC      LDA DATA_20AC71,y               
CODE_20AE81:        85 0D         STA $0D                   
CODE_20AE83:        86 0F         STX $0F                   
CODE_20AE85:        80 14         BRA CODE_20AE9B           

CODE_20AE87:        B9 A9 AB      LDA DATA_20ABA9,y               
CODE_20AE8A:        29 FF 00      AND #$00FF                
CODE_20AE8D:        AA            TAX                       
CODE_20AE8E:        98            TYA                       
CODE_20AE8F:        29 FF 00      AND #$00FF                
CODE_20AE92:        0A            ASL A                     
CODE_20AE93:        A8            TAY                       
CODE_20AE94:        B9 49 AB      LDA DATA_20AB49,y               
CODE_20AE97:        85 0D         STA $0D                   
CODE_20AE99:        86 0F         STX $0F                   
CODE_20AE9B:        A9 00 08      LDA #$0800                
CODE_20AE9E:        85 0B         STA $0B                   
CODE_20AEA0:        A9 00 74      LDA #$7400                
CODE_20AEA3:        20 16 B0      JSR CODE_20B016           
CODE_20AEA6:        AC BF 1E      LDY $1EBF                 
CODE_20AEA9:        B9 39 AC      LDA DATA_20AC39,y               
CODE_20AEAC:        29 FF 00      AND #$00FF                
CODE_20AEAF:        AA            TAX                       
CODE_20AEB0:        98            TYA                       
CODE_20AEB1:        29 FF 00      AND #$00FF                
CODE_20AEB4:        0A            ASL A                     
CODE_20AEB5:        A8            TAY                       
CODE_20AEB6:        B9 D9 AB      LDA DATA_20ABD9,y               
CODE_20AEB9:        85 0D         STA $0D                   
CODE_20AEBB:        86 0F         STX $0F                   
CODE_20AEBD:        A9 00 08      LDA #$0800                
CODE_20AEC0:        85 0B         STA $0B                   
CODE_20AEC2:        A9 00 78      LDA #$7800                
CODE_20AEC5:        20 16 B0      JSR CODE_20B016           
CODE_20AEC8:        A9 00 B8      LDA #$B800                
CODE_20AECB:        85 0D         STA $0D                   
CODE_20AECD:        A2 3F         LDX #$3F                  
CODE_20AECF:        86 0F         STX $0F                   
CODE_20AED1:        A9 00 08      LDA #$0800                
CODE_20AED4:        85 0B         STA $0B                   
CODE_20AED6:        A9 00 7C      LDA #$7C00                
CODE_20AED9:        20 16 B0      JSR CODE_20B016           
CODE_20AEDC:        E2 20         SEP #$20                  
CODE_20AEDE:        AD BF 02      LDA $02BF                 
CODE_20AEE1:        C9 02         CMP #$02                  
CODE_20AEE3:        F0 2F         BEQ CODE_20AF14           
CODE_20AEE5:        C9 05         CMP #$05                  
CODE_20AEE7:        F0 2B         BEQ CODE_20AF14           
CODE_20AEE9:        C9 07         CMP #$07                  
CODE_20AEEB:        F0 27         BEQ CODE_20AF14           
CODE_20AEED:        C9 08         CMP #$08                  
CODE_20AEEF:        F0 23         BEQ CODE_20AF14           
CODE_20AEF1:        C9 09         CMP #$09                  
CODE_20AEF3:        F0 32         BEQ CODE_20AF27           
CODE_20AEF5:        C9 0A         CMP #$0A                  
CODE_20AEF7:        F0 41         BEQ CODE_20AF3A           
CODE_20AEF9:        C9 0B         CMP #$0B                  
CODE_20AEFB:        F0 2A         BEQ CODE_20AF27           
CODE_20AEFD:        C9 0C         CMP #$0C                  
CODE_20AEFF:        F0 13         BEQ CODE_20AF14           
CODE_20AF01:        C9 0E         CMP #$0E                  
CODE_20AF03:        F0 0F         BEQ CODE_20AF14           
CODE_20AF05:        C9 0F         CMP #$0F                  
CODE_20AF07:        F0 1E         BEQ CODE_20AF27           
CODE_20AF09:        C9 03         CMP #$03                  
CODE_20AF0B:        F0 40         BEQ CODE_20AF4D           
CODE_20AF0D:        C9 04         CMP #$04                  
CODE_20AF0F:        F0 3C         BEQ CODE_20AF4D           
CODE_20AF11:        4C 6D AF      JMP CODE_20AF6D           

CODE_20AF14:        C2 20         REP #$20                  
CODE_20AF16:        A9 00 58      LDA #$5800                
CODE_20AF19:        8D 16 21      STA $2116                 
CODE_20AF1C:        A9 00 04      LDA #$0400                
CODE_20AF1F:        8D 05 43      STA $4305                 
CODE_20AF22:        A9 00 A0      LDA #$A000                
CODE_20AF25:        80 37         BRA CODE_20AF5E           

CODE_20AF27:        C2 20         REP #$20                  
CODE_20AF29:        A9 00 58      LDA #$5800                
CODE_20AF2C:        8D 16 21      STA $2116                 
CODE_20AF2F:        A9 00 04      LDA #$0400                
CODE_20AF32:        8D 05 43      STA $4305                 
CODE_20AF35:        A9 00 A4      LDA #$A400                
CODE_20AF38:        80 24         BRA CODE_20AF5E           

CODE_20AF3A:        C2 20         REP #$20                  
CODE_20AF3C:        A9 00 58      LDA #$5800                
CODE_20AF3F:        8D 16 21      STA $2116                 
CODE_20AF42:        A9 00 04      LDA #$0400                
CODE_20AF45:        8D 05 43      STA $4305                 
CODE_20AF48:        A9 00 A8      LDA #$A800                
CODE_20AF4B:        80 11         BRA CODE_20AF5E           

CODE_20AF4D:        C2 20         REP #$20                  
CODE_20AF4F:        A9 00 58      LDA #$5800                
CODE_20AF52:        8D 16 21      STA $2116                 
CODE_20AF55:        A9 00 04      LDA #$0400                
CODE_20AF58:        8D 05 43      STA $4305                 
CODE_20AF5B:        A9 00 AC      LDA #$AC00                
CODE_20AF5E:        8D 02 43      STA $4302                 
CODE_20AF61:        E2 20         SEP #$20                  
CODE_20AF63:        A9 38         LDA #$38                  
CODE_20AF65:        8D 04 43      STA $4304                 
CODE_20AF68:        A9 01         LDA #$01                  
CODE_20AF6A:        8D 0B 42      STA $420B                 
CODE_20AF6D:        AB            PLB                       
CODE_20AF6E:        6B            RTL                       

CODE_20AF6F:        C2 20         REP #$20                  
CODE_20AF71:        A9 00 C0      LDA #$C000                
CODE_20AF74:        85 0D         STA $0D                   
CODE_20AF76:        A2 32         LDX #$32                  
CODE_20AF78:        86 0F         STX $0F                   
CODE_20AF7A:        A9 00 10      LDA #$1000                
CODE_20AF7D:        85 0B         STA $0B                   
CODE_20AF7F:        20 13 B0      JSR CODE_20B013           
CODE_20AF82:        E2 20         SEP #$20                  
CODE_20AF84:        6B            RTL                       

CODE_20AF85:        C2 20         REP #$20                  
CODE_20AF87:        A9 00 80      LDA #$8000                
CODE_20AF8A:        85 0D         STA $0D                   
CODE_20AF8C:        A2 3A         LDX #$3A                  
CODE_20AF8E:        86 0F         STX $0F                   
CODE_20AF90:        A9 00 10      LDA #$1000                
CODE_20AF93:        85 0B         STA $0B                   
CODE_20AF95:        A9 00 38      LDA #$3800                
CODE_20AF98:        20 F0 AF      JSR CODE_20AFF0           
CODE_20AF9B:        A9 00 B4      LDA #$B400                
CODE_20AF9E:        85 0D         STA $0D                   
CODE_20AFA0:        A2 3F         LDX #$3F                  
CODE_20AFA2:        86 0F         STX $0F                   
CODE_20AFA4:        A9 00 04      LDA #$0400                
CODE_20AFA7:        85 0B         STA $0B                   
CODE_20AFA9:        20 13 B0      JSR CODE_20B013           
CODE_20AFAC:        A9 00 D4      LDA #$D400                
CODE_20AFAF:        85 0D         STA $0D                   
CODE_20AFB1:        A2 32         LDX #$32                  
CODE_20AFB3:        86 0F         STX $0F                   
CODE_20AFB5:        A9 00 0C      LDA #$0C00                
CODE_20AFB8:        85 0B         STA $0B                   
CODE_20AFBA:        A9 00 62      LDA #$6200                
CODE_20AFBD:        20 16 B0      JSR CODE_20B016           
CODE_20AFC0:        E2 20         SEP #$20                  
CODE_20AFC2:        6B            RTL                       

CODE_20AFC3:        C2 20         REP #$20                  
CODE_20AFC5:        A9 00 E0      LDA #$E000                
CODE_20AFC8:        85 0D         STA $0D                   
CODE_20AFCA:        A2 3F         LDX #$3F                  
CODE_20AFCC:        86 0F         STX $0F                   
CODE_20AFCE:        A9 00 20      LDA #$2000                
CODE_20AFD1:        85 0B         STA $0B                   
CODE_20AFD3:        A9 00 60      LDA #$6000                
CODE_20AFD6:        20 16 B0      JSR CODE_20B016           
CODE_20AFD9:        A9 00 A0      LDA #$A000                
CODE_20AFDC:        85 0D         STA $0D                   
CODE_20AFDE:        A2 3D         LDX #$3D                  
CODE_20AFE0:        86 0F         STX $0F                   
CODE_20AFE2:        A9 00 08      LDA #$0800                
CODE_20AFE5:        85 0B         STA $0B                   
CODE_20AFE7:        A9 00 70      LDA #$7000                
CODE_20AFEA:        20 16 B0      JSR CODE_20B016           
CODE_20AFED:        E2 20         SEP #$20                  
CODE_20AFEF:        6B            RTL                       

CODE_20AFF0:        A2 80         LDX #$80                  
CODE_20AFF2:        8E 15 21      STX $2115                 
CODE_20AFF5:        8D 16 21      STA $2116                 
CODE_20AFF8:        A9 01         LDA #$01                  
CODE_20AFFA:        18            CLC                       
CODE_20AFFB:        8D 00 43      STA $4300                 
CODE_20AFFE:        A5 0D         LDA $0D                   
CODE_20B000:        8D 02 43      STA $4302                 
CODE_20B003:        A6 0F         LDX $0F                   
CODE_20B005:        8E 04 43      STX $4304                 
CODE_20B008:        A5 0B         LDA $0B                   
CODE_20B00A:        8D 05 43      STA $4305                 
CODE_20B00D:        A2 01         LDX #$01                  
CODE_20B00F:        8E 0B 42      STX $420B                 
CODE_20B012:        60            RTS                       

CODE_20B013:        A9 00         LDA #$00                  
CODE_20B015:        60            RTS                       

CODE_20B016:        A2 80         LDX #$80                  
CODE_20B018:        8E 15 21      STX $2115                 
CODE_20B01B:        8D 16 21      STA $2116                 
CODE_20B01E:        A9 01         LDA #$01                  
CODE_20B020:        18            CLC                       
CODE_20B021:        8D 00 43      STA $4300                 
CODE_20B024:        A5 0D         LDA $0D                   
CODE_20B026:        8D 02 43      STA $4302                 
CODE_20B029:        A6 0F         LDX $0F                   
CODE_20B02B:        8E 04 43      STX $4304                 
CODE_20B02E:        A5 0B         LDA $0B                   
CODE_20B030:        8D 05 43      STA $4305                 
CODE_20B033:        A2 01         LDX #$01                  
CODE_20B035:        8E 0B 42      STX $420B                 
CODE_20B038:        60            RTS                       

CODE_20B039:        C2 30         REP #$30                  
CODE_20B03B:        A2 1E 00      LDX #$001E                
CODE_20B03E:        A9 00 00      LDA #$0000                
CODE_20B041:        9D 00 13      STA $1300,x               
CODE_20B044:        9D 20 13      STA $1320,x               
CODE_20B047:        9D 40 13      STA $1340,x               
CODE_20B04A:        9D 60 13      STA $1360,x               
CODE_20B04D:        9D 80 13      STA $1380,x               
CODE_20B050:        9D A0 13      STA $13A0,x               
CODE_20B053:        9D C0 13      STA $13C0,x               
CODE_20B056:        9D E0 13      STA $13E0,x               
CODE_20B059:        9D 00 14      STA $1400,x               
CODE_20B05C:        9D 20 14      STA $1420,x               
CODE_20B05F:        9D 40 14      STA $1440,x               
CODE_20B062:        9D 60 14      STA $1460,x               
CODE_20B065:        9D 80 14      STA $1480,x               
CODE_20B068:        9D A0 14      STA $14A0,x               
CODE_20B06B:        9D C0 14      STA $14C0,x               
CODE_20B06E:        9D E0 14      STA $14E0,x               
CODE_20B071:        CA            DEX                       
CODE_20B072:        CA            DEX                       
CODE_20B073:        10 CC         BPL CODE_20B041           
CODE_20B075:        8B            PHB                       
CODE_20B076:        A2 00 A4      LDX #$A400                
CODE_20B079:        A0 00 13      LDY #$1300                
CODE_20B07C:        A9 7F 00      LDA #$007F                
CODE_20B07F:        54 00 3C      MVN $3C00                 
CODE_20B082:        AB            PLB                       
CODE_20B083:        A9 00 00      LDA #$0000                
CODE_20B086:        8D 00 13      STA $1300                 
CODE_20B089:        8D 10 13      STA $1310                 
CODE_20B08C:        8D 3E 13      STA $133E                 
CODE_20B08F:        8D 5E 13      STA $135E                 
CODE_20B092:        E2 30         SEP #$30                  
CODE_20B094:        A9 01         LDA #$01                  
CODE_20B096:        8D 00 15      STA $1500                 
CODE_20B099:        60            RTS                       

CODE_20B09A:        C2 30         REP #$30                  
CODE_20B09C:        A2 1E 00      LDX #$001E                
CODE_20B09F:        A9 00 00      LDA #$0000                
CODE_20B0A2:        9D 00 13      STA $1300,x               
CODE_20B0A5:        9D 20 13      STA $1320,x               
CODE_20B0A8:        9D 40 13      STA $1340,x               
CODE_20B0AB:        9D 60 13      STA $1360,x               
CODE_20B0AE:        9D 80 13      STA $1380,x               
CODE_20B0B1:        9D A0 13      STA $13A0,x               
CODE_20B0B4:        9D C0 13      STA $13C0,x               
CODE_20B0B7:        9D E0 13      STA $13E0,x               
CODE_20B0BA:        9D 00 14      STA $1400,x               
CODE_20B0BD:        9D 20 14      STA $1420,x               
CODE_20B0C0:        9D 40 14      STA $1440,x               
CODE_20B0C3:        9D 60 14      STA $1460,x               
CODE_20B0C6:        9D 80 14      STA $1480,x               
CODE_20B0C9:        9D A0 14      STA $14A0,x               
CODE_20B0CC:        9D C0 14      STA $14C0,x               
CODE_20B0CF:        9D E0 14      STA $14E0,x               
CODE_20B0D2:        CA            DEX                       
CODE_20B0D3:        CA            DEX                       
CODE_20B0D4:        10 CC         BPL CODE_20B0A2           
CODE_20B0D6:        8B            PHB                       
CODE_20B0D7:        A2 00 AC      LDX #$AC00                
CODE_20B0DA:        A0 00 13      LDY #$1300                
CODE_20B0DD:        A9 1F 00      LDA #$001F                
CODE_20B0E0:        54 00 3C      MVN $3C00                 
CODE_20B0E3:        AB            PLB                       
CODE_20B0E4:        A9 00 00      LDA #$0000                
CODE_20B0E7:        8D 00 13      STA $1300                 
CODE_20B0EA:        E2 30         SEP #$30                  
CODE_20B0EC:        A9 01         LDA #$01                  
CODE_20B0EE:        8D 00 15      STA $1500                 
CODE_20B0F1:        60            RTS                       

DATA_20B0F2:        db $02,$00,$01,$03,$04,$05

DATA_20B0F8:        db $03,$03,$06,$12,$11,$00
  
CODE_20B0FE:        A9 11         LDA #$11                  
CODE_20B100:        8D 08 02      STA $0208                 
CODE_20B103:        A9 02         LDA #$02                  
CODE_20B105:        8D 09 02      STA $0209                 
CODE_20B108:        8D 03 02      STA $0203                 
CODE_20B10B:        A9 20         LDA #$20                  
CODE_20B10D:        8D 04 02      STA $0204                 
CODE_20B110:        20 B6 A4      JSR CODE_20A4B6           
CODE_20B113:        20 DA A4      JSR CODE_20A4DA           
CODE_20B116:        22 B5 86 00   JSL CODE_0086B5           
CODE_20B11A:        22 A9 E0 22   JSL CODE_22E0A9           
CODE_20B11E:        A9 5C         LDA #$5C                  
CODE_20B120:        85 00         STA $00                   
CODE_20B122:        64 01         STZ $01                   
CODE_20B124:        20 0A FA      JSR CODE_20FA0A           
CODE_20B127:        A2 F5         LDX #$F5                  
CODE_20B129:        74 00         STZ $00,x                 
CODE_20B12B:        CA            DEX                       
CODE_20B12C:        D0 FB         BNE CODE_20B129           
CODE_20B12E:        A2 15         LDX #$15                  
CODE_20B130:        9E 10 05      STZ $0510,x               
CODE_20B133:        CA            DEX                       
CODE_20B134:        10 FA         BPL CODE_20B130           
CODE_20B136:        A9 04         LDA #$04                  
CODE_20B138:        8D 36 07      STA $0736                 
CODE_20B13B:        8D 37 07      STA $0737                 
CODE_20B13E:        9C 2B 07      STZ $072B                 
CODE_20B141:        9C 26 07      STZ $0726                 
CODE_20B144:        AF 03 FC 7F   LDA $7FFC03               
CODE_20B148:        30 04         BMI CODE_20B14E           
CODE_20B14A:        3A            DEC A                     
CODE_20B14B:        8D 2B 07      STA $072B                 
CODE_20B14E:        A9 FF         LDA #$FF                  
CODE_20B150:        85 BE         STA $BE                   
CODE_20B152:        A9 A0         LDA #$A0                  
CODE_20B154:        85 5B         STA $5B                   
CODE_20B156:        85 5C         STA $5C                   
CODE_20B158:        A9 F0         LDA #$F0                  
CODE_20B15A:        85 53         STA $53                   
CODE_20B15C:        64 54         STZ $54                   
CODE_20B15E:        A9 01         LDA #$01                  
CODE_20B160:        85 8F         STA $8F                   
CODE_20B162:        85 90         STA $90                   
CODE_20B164:        A9 88         LDA #$88                  
CODE_20B166:        8D 82 07      STA $0782                 
CODE_20B169:        A9 00         LDA #$00                  
CODE_20B16B:        8F 00 00 7F   STA $7F0000               
CODE_20B16F:        8F 01 00 7F   STA $7F0001               
CODE_20B173:        A9 20         LDA #$20                  
CODE_20B175:        8D 05 02      STA $0205                 
CODE_20B178:        0A            ASL A                     
CODE_20B179:        8D 06 02      STA $0206                 
CODE_20B17C:        0A            ASL A                     
CODE_20B17D:        8D 07 02      STA $0207                 
CODE_20B180:        20 EE B2      JSR CODE_20B2EE           
CODE_20B183:        A9 1D         LDA #$1D                  
CODE_20B185:        0A            ASL A                     
CODE_20B186:        AA            TAX                       
CODE_20B187:        BF 01 D3 20   LDA.l PNTR_20D301,x             
CODE_20B18B:        85 36         STA $36                   
CODE_20B18D:        BF 02 D3 20   LDA.l PNTR_20D301+1,x             
CODE_20B191:        85 37         STA $37                   
CODE_20B193:        A9 20         LDA #$20                  
CODE_20B195:        85 38         STA $38                   
CODE_20B197:        22 AB E8 29   JSL CODE_29E8AB           
CODE_20B19B:        20 28 B3      JSR CODE_20B328           
CODE_20B19E:        20 39 B0      JSR CODE_20B039           
CODE_20B1A1:        22 E5 CD 29   JSL CODE_29CDE5           
CODE_20B1A5:        A9 1E         LDA #$1E                  
CODE_20B1A7:        85 28         STA $28                   
CODE_20B1A9:        A9 35         LDA #$35                  
CODE_20B1AB:        85 B1         STA $B1                   
CODE_20B1AD:        20 B6 A4      JSR CODE_20A4B6           
CODE_20B1B0:        E6 16         INC $16                   
CODE_20B1B2:        A5 16         LDA $16                   
CODE_20B1B4:        29 10         AND #$10                  
CODE_20B1B6:        D0 05         BNE CODE_20B1BD           
CODE_20B1B8:        20 B6 A4      JSR CODE_20A4B6           
CODE_20B1BB:        80 F3         BRA CODE_20B1B0           

CODE_20B1BD:        A9 0F         LDA #$0F                  
CODE_20B1BF:        85 16         STA $16                   
CODE_20B1C1:        A5 F6         LDA $F6                   
CODE_20B1C3:        05 F7         ORA $F7                   
CODE_20B1C5:        29 10         AND #$10                  
CODE_20B1C7:        F0 1B         BEQ CODE_20B1E4           
CODE_20B1C9:        AF F2 1F 70   LDA $701FF2               
CODE_20B1CD:        F0 04         BEQ CODE_20B1D3           
CODE_20B1CF:        5C DE 80 00   JML CODE_0080DE           

CODE_20B1D3:        A5 AC         LDA $AC                   
CODE_20B1D5:        C9 06         CMP #$06                  
CODE_20B1D7:        F0 05         BEQ CODE_20B1DE           
CODE_20B1D9:        A9 29         LDA #$29                  
CODE_20B1DB:        8D 03 12      STA $1203                 
CODE_20B1DE:        A9 06         LDA #$06                  
CODE_20B1E0:        85 AC         STA $AC                   
CODE_20B1E2:        F0 1C         BEQ CODE_20B200           
CODE_20B1E4:        A5 F4         LDA $F4                   
CODE_20B1E6:        05 F5         ORA $F5                   
CODE_20B1E8:        29 40         AND #$40                  
CODE_20B1EA:        F0 04         BEQ CODE_20B1F0           
CODE_20B1EC:        5C DE 80 00   JML CODE_0080DE           

CODE_20B1F0:        A5 F2         LDA $F2                   
CODE_20B1F2:        05 F3         ORA $F3                   
CODE_20B1F4:        29 40         AND #$40                  
CODE_20B1F6:        F0 04         BEQ CODE_20B1FC           
CODE_20B1F8:        5C DE 80 00   JML CODE_0080DE           

CODE_20B1FC:        C6 B1         DEC $B1                   
CODE_20B1FE:        10 AD         BPL CODE_20B1AD           
CODE_20B200:        20 B6 A4      JSR CODE_20A4B6           
CODE_20B203:        A6 BE         LDX $BE                   
CODE_20B205:        E0 06         CPX #$06                  
CODE_20B207:        B0 16         BCS CODE_20B21F                   
CODE_20B209:        C6 BF         DEC $BF                   
CODE_20B20B:        D0 12         BNE CODE_20B21F           
CODE_20B20D:        BF F8 B0 20   LDA.l DATA_20B0F8,x             
CODE_20B211:        85 BF         STA $BF                   
CODE_20B213:        BF F2 B0 20   LDA.l DATA_20B0F2,x             
CODE_20B217:        A8            TAY                       
CODE_20B218:        A9 01         LDA #$01                  
CODE_20B21A:        99 A6 00      STA $00A6,y               
CODE_20B21D:        E6 BE         INC $BE                   
CODE_20B21F:        20 A5 B3      JSR CODE_20B3A5           
CODE_20B222:        A5 AF         LDA $AF                   
CODE_20B224:        F0 1A         BEQ CODE_20B240           
CODE_20B226:        C6 16         DEC $16                   
CODE_20B228:        30 05         BMI CODE_20B22F           
CODE_20B22A:        20 B6 A4      JSR CODE_20A4B6           
CODE_20B22D:        80 F7         BRA CODE_20B226           
CODE_20B22F:        AF F2 1F 70   LDA $701FF2               
CODE_20B233:        F0 04         BEQ CODE_20B239           
CODE_20B235:        5C 39 81 00   JML CODE_008139           

CODE_20B239:        A9 80         LDA #$80                  
CODE_20B23B:        85 16         STA $16                   
CODE_20B23D:        4C 1A B1      JMP CODE_20B11A           

CODE_20B240:        A5 AC         LDA $AC                   
CODE_20B242:        C9 05         CMP #$05                  
CODE_20B244:        D0 BA         BNE CODE_20B200           
CODE_20B246:        A2 80         LDX #$80                  
CODE_20B248:        74 43         STZ $43,x                 
CODE_20B24A:        CA            DEX                       
CODE_20B24B:        10 FB         BPL CODE_20B248           
CODE_20B24D:        C6 16         DEC $16                   
CODE_20B24F:        30 05         BMI CODE_20B256           
CODE_20B251:        20 B6 A4      JSR CODE_20A4B6           
CODE_20B254:        80 F7         BRA CODE_20B24D           

CODE_20B256:        A9 80         LDA #$80                  
CODE_20B258:        85 16         STA $16                   
CODE_20B25A:        9C D7 02      STZ $02D7                 
CODE_20B25D:        60            RTS                       
CODE_20B25E:        A9 38         LDA #$38                  
CODE_20B260:        85 00         STA $00                   
CODE_20B262:        A2 00         LDX #$00                  
CODE_20B264:        A0 40         LDY #$40                  
CODE_20B266:        BF E3 B2 20   LDA.l DATA_20B2E3,x             
CODE_20B26A:        10 21         BPL CODE_20B28D           
CODE_20B26C:        99 02 08      STA $0802,y               
CODE_20B26F:        A9 35         LDA #$35                  
CODE_20B271:        99 03 08      STA $0803,y               
CODE_20B274:        A5 00         LDA $00                   
CODE_20B276:        99 00 08      STA $0800,y               
CODE_20B279:        A9 C8         LDA #$C8                  
CODE_20B27B:        99 01 08      STA $0801,y               
CODE_20B27E:        5A            PHY                       
CODE_20B27F:        98            TYA                       
CODE_20B280:        4A            LSR A                     
CODE_20B281:        4A            LSR A                     
CODE_20B282:        A8            TAY                       
CODE_20B283:        A9 00         LDA #$00                  
CODE_20B285:        99 20 0A      STA $0A20,y               
CODE_20B288:        7A            PLY                       
CODE_20B289:        C8            INY                       
CODE_20B28A:        C8            INY                       
CODE_20B28B:        C8            INY                       
CODE_20B28C:        C8            INY                       
CODE_20B28D:        A5 00         LDA $00                   
CODE_20B28F:        18            CLC                       
CODE_20B290:        69 08         ADC #$08                  
CODE_20B292:        85 00         STA $00                   
CODE_20B294:        E8            INX                       
CODE_20B295:        E0 0B         CPX #$0B                  
CODE_20B297:        D0 CD         BNE CODE_20B266           
CODE_20B299:        C2 20         REP #$20                  
CODE_20B29B:        A9 98 C4      LDA #$C498                
CODE_20B29E:        99 00 08      STA $0800,y               
CODE_20B2A1:        18            CLC                       
CODE_20B2A2:        69 10 00      ADC #$0010                
CODE_20B2A5:        99 04 08      STA $0804,y               
CODE_20B2A8:        18            CLC                       
CODE_20B2A9:        69 10 00      ADC #$0010                
CODE_20B2AC:        99 08 08      STA $0808,y               
CODE_20B2AF:        18            CLC                       
CODE_20B2B0:        69 08 00      ADC #$0008                
CODE_20B2B3:        99 0C 08      STA $080C,y               
CODE_20B2B6:        A9 85 35      LDA #$3585                
CODE_20B2B9:        99 02 08      STA $0802,y               
CODE_20B2BC:        A9 87 35      LDA #$3587                
CODE_20B2BF:        99 06 08      STA $0806,y               
CODE_20B2C2:        A9 89 35      LDA #$3589                
CODE_20B2C5:        99 0A 08      STA $080A,y               
CODE_20B2C8:        A9 8A 35      LDA #$358A                
CODE_20B2CB:        99 0E 08      STA $080E,y               
CODE_20B2CE:        E2 20         SEP #$20                  
CODE_20B2D0:        98            TYA                       
CODE_20B2D1:        4A            LSR A                     
CODE_20B2D2:        4A            LSR A                     
CODE_20B2D3:        A8            TAY                       
CODE_20B2D4:        A9 02         LDA #$02                  
CODE_20B2D6:        99 20 0A      STA $0A20,y               
CODE_20B2D9:        99 21 0A      STA $0A21,y               
CODE_20B2DC:        99 22 0A      STA $0A22,y               
CODE_20B2DF:        99 23 0A      STA $0A23,y               
CODE_20B2E2:        60            RTS                       

DATA_20B2E3:        db $84,$00,$80,$81,$83,$83,$00,$80
                    db $81,$81,$82

CODE_20B2EE:        C2 20         REP #$20
CODE_20B2F0:        A2 80         LDX #$80                  
CODE_20B2F2:        8E 15 21      STX $2115                 
CODE_20B2F5:        A9 00         LDA #$1000                  
CODE_20B2F8:        85 D8         STA $D8           
CODE_20B2FA:        A9 62 15      LDA #$1562                  
CODE_20B2FD:        85 DA         STA $DA                
CODE_20B2FF:        20 12 B3      JSR CODE_20B312           
CODE_20B302:        20 12 B3      JSR CODE_20B312           
CODE_20B305:        A0 0B         LDY #$0B                  
CODE_20B307:        E6 DA         INC $DA                   
CODE_20B309:        20 12 B3      JSR CODE_20B312           
CODE_20B30C:        88            DEY                       
CODE_20B30D:        D0 F8         BNE CODE_20B307           
CODE_20B30F:        E2 20         SEP #$20                  
CODE_20B311:        60            RTS                       

CODE_20B312:        A5 D8         LDA $D8                   
CODE_20B314:        8D 16 21      STA $2116                 
CODE_20B317:        18            CLC                       
CODE_20B318:        69 20 00      ADC #$0020                  
CODE_20B31B:        85 D8         STA $D8                 
CODE_20B31D:        A2 20         LDX #$20                  
CODE_20B31F:        A5 DA         LDA $DA                   
CODE_20B321:        8D 18 21      STA $2118                 
CODE_20B324:        CA            DEX                       
CODE_20B325:        D0 F8         BNE CODE_20B31F           
CODE_20B327:        60            RTS                     
  
CODE_20B328:        C2 20         REP #$20                  
CODE_20B32A:        A2 80         LDX #$80                  
CODE_20B32C:        8E 15 21      STX $2115                 
CODE_20B32F:        A9 00 00      LDA #$0000                
CODE_20B332:        8D 16 21      STA $2116                 
CODE_20B335:        A9 0B 00      LDA #$000B                
CODE_20B338:        85 00         STA $00                   
CODE_20B33A:        A0 08         LDY #$08                  
CODE_20B33C:        A9 F0 01      LDA #$01F0                
CODE_20B33F:        8D 18 21      STA $2118                 
CODE_20B342:        1A            INC A                     
CODE_20B343:        8D 18 21      STA $2118                 
CODE_20B346:        A9 F1 41      LDA #$41F1                
CODE_20B349:        8D 18 21      STA $2118                 
CODE_20B34C:        3A            DEC A                     
CODE_20B34D:        8D 18 21      STA $2118                 
CODE_20B350:        88            DEY                       
CODE_20B351:        D0 E9         BNE CODE_20B33C           
CODE_20B353:        A0 08         LDY #$08                  
CODE_20B355:        A9 F2 01      LDA #$01F2                
CODE_20B358:        8D 18 21      STA $2118                 
CODE_20B35B:        1A            INC A                     
CODE_20B35C:        8D 18 21      STA $2118                 
CODE_20B35F:        A9 F3 41      LDA #$41F3                
CODE_20B362:        8D 18 21      STA $2118                 
CODE_20B365:        3A            DEC A                     
CODE_20B366:        8D 18 21      STA $2118                 
CODE_20B369:        88            DEY                       
CODE_20B36A:        D0 E9         BNE CODE_20B355           
CODE_20B36C:        C6 00         DEC $00                   
CODE_20B36E:        D0 CA         BNE CODE_20B33A           
CODE_20B370:        A0 08         LDY #$08                  
CODE_20B372:        A9 F4 01      LDA #$01F4                
CODE_20B375:        8D 18 21      STA $2118                 
CODE_20B378:        1A            INC A                     
CODE_20B379:        8D 18 21      STA $2118                 
CODE_20B37C:        A9 F5 41      LDA #$41F5                
CODE_20B37F:        8D 18 21      STA $2118                 
CODE_20B382:        3A            DEC A                     
CODE_20B383:        8D 18 21      STA $2118                 
CODE_20B386:        88            DEY                       
CODE_20B387:        D0 E9         BNE CODE_20B372           
CODE_20B389:        A0 08         LDY #$08                  
CODE_20B38B:        A9 F6 01      LDA #$01F6                
CODE_20B38E:        8D 18 21      STA $2118                 
CODE_20B391:        1A            INC A                     
CODE_20B392:        8D 18 21      STA $2118                 
CODE_20B395:        A9 F7 41      LDA #$41F7                
CODE_20B398:        8D 18 21      STA $2118                 
CODE_20B39B:        3A            DEC A                     
CODE_20B39C:        8D 18 21      STA $2118                 
CODE_20B39F:        88            DEY                       
CODE_20B3A0:        D0 E9         BNE CODE_20B38B           
CODE_20B3A2:        E2 20         SEP #$20                  
CODE_20B3A4:        60            RTS                       

CODE_20B3A5:        64 BA         STZ $BA                   
CODE_20B3A7:        64 BB         STZ $BB                   
CODE_20B3A9:        A5 AC         LDA $AC                   
CODE_20B3AB:        0A            ASL A                     
CODE_20B3AC:        AA            TAX                       
CODE_20B3AD:        7C B0 B3      JMP (PNTR_20B3B0,x)             

PNTR_20B3B0:        dw CODE_20B3C0
                    dw CODE_20B515
                    dw CODE_20B76F
                    dw CODE_20B79E
                    dw CODE_20B8E1
                    dw CODE_20B663
                    dw CODE_20B586
                    dw CODE_20B943

CODE_20B3C0:        A0 01         LDY #$01                  
CODE_20B3C2:        EE 16 02      INC $0216                 
CODE_20B3C5:        AD 16 02      LDA $0216                 
CODE_20B3C8:        C9 D0         CMP #$D0                  
CODE_20B3CA:        F0 4F         BEQ CODE_20B41B           
CODE_20B3CC:        C9 4E         CMP #$4E                  
CODE_20B3CE:        D0 07         BNE CODE_20B3D7           
CODE_20B3D0:        A9 40         LDA #$40                  
CODE_20B3D2:        85 9E         STA $9E                   
CODE_20B3D4:        8D 12 05      STA $0512                 
CODE_20B3D7:        88            DEY                       
CODE_20B3D8:        10 E8         BPL CODE_20B3C2           
CODE_20B3DA:        A5 9E         LDA $9E                   
CODE_20B3DC:        F0 03         BEQ CODE_20B3E1           
CODE_20B3DE:        20 4D BB      JSR CODE_20BB4D           
CODE_20B3E1:        A5 F6         LDA $F6                   
CODE_20B3E3:        05 F7         ORA $F7                   
CODE_20B3E5:        29 10         AND #$10                  
CODE_20B3E7:        F0 19         BEQ CODE_20B402           
CODE_20B3E9:        AF F2 1F 70   LDA $701FF2               
CODE_20B3ED:        F0 04         BEQ CODE_20B3F3           
CODE_20B3EF:        5C DE 80 00   JML CODE_0080DE           

CODE_20B3F3:        A5 AC         LDA $AC                   
CODE_20B3F5:        C9 06         CMP #$06                  
CODE_20B3F7:        F0 05         BEQ CODE_20B3FE           
CODE_20B3F9:        A9 29         LDA #$29                  
CODE_20B3FB:        8D 03 12      STA $1203                 
CODE_20B3FE:        A9 06         LDA #$06                  
CODE_20B400:        85 AC         STA $AC                   
CODE_20B402:        A5 F4         LDA $F4                   
CODE_20B404:        05 F5         ORA $F5                   
CODE_20B406:        29 40         AND #$40                  
CODE_20B408:        F0 04         BEQ CODE_20B40E           
CODE_20B40A:        5C DE 80 00   JML CODE_0080DE           

CODE_20B40E:        A5 F2         LDA $F2                   
CODE_20B410:        05 F3         ORA $F3                   
CODE_20B412:        29 40         AND #$40                  
CODE_20B414:        F0 04         BEQ CODE_20B41A           
CODE_20B416:        5C DE 80 00   JML CODE_0080DE           

CODE_20B41A:        60            RTS                       

CODE_20B41B:        A9 02         LDA #$02                  
CODE_20B41D:        85 BC         STA $BC                   
CODE_20B41F:        A9 02         LDA #$02                  
CODE_20B421:        85 BD         STA $BD                   
CODE_20B423:        E6 AC         INC $AC                   
CODE_20B425:        64 9E         STZ $9E                   
CODE_20B427:        60            RTS                       

DATA_20B428:        db $4C,$02,$14,$00,$20,$04,$03,$00
                    db $FF,$03,$BD,$00,$30,$08,$17,$80
                    db $05,$00,$23,$82,$02,$00,$25,$80
                    db $20,$00,$35,$01,$05,$10,$04,$01
                    db $05,$00,$04,$01,$05,$00,$04,$01
                    db $05,$00,$04,$01,$05,$00,$04,$01
                    db $50,$00,$42,$02,$01,$80,$12,$02
                    db $05,$01,$20,$00,$10,$01,$05,$20
                    db $20,$01,$05,$40,$C0,$00,$02,$02
                    db $10,$00,$36,$41,$38,$42,$60,$00
                    db $60,$51,$FF,$08,$10,$00,$FE,$00

DATA_20B480:        db $2C,$01,$50,$80,$F0,$01,$90,$00
                    db $70,$00,$10,$02,$10,$22,$09,$00
                    db $15,$02,$34,$00,$02,$42,$90,$00
                    db $65,$01,$F0,$00,$FF

CODE_20B49D:        C6 B1         DEC $B1                   
CODE_20B49F:        10 33         BPL CODE_20B4D4           
CODE_20B4A1:        A9 04         LDA #$04                  
CODE_20B4A3:        85 B1         STA $B1                   
CODE_20B4A5:        A5 C1         LDA $C1                   
CODE_20B4A7:        29 07         AND #$07                  
CODE_20B4A9:        0A            ASL A                     
CODE_20B4AA:        0A            ASL A                     
CODE_20B4AB:        0A            ASL A                     
CODE_20B4AC:        AA            TAX                       
CODE_20B4AD:        C2 20         REP #$20                  
CODE_20B4AF:        BF D5 B4 20   LDA.l DATA_20B4D5,x             
CODE_20B4B3:        8D 26 13      STA $1326                 
CODE_20B4B6:        BF D7 B4 20   LDA.l DATA_20B4D7,x             
CODE_20B4BA:        8D 28 13      STA $1328                 
CODE_20B4BD:        BF D9 B4 20   LDA.l DATA_20B4D9,x             
CODE_20B4C1:        8D 2A 13      STA $132A                 
CODE_20B4C4:        BF DB B4 20   LDA.l DATA_20B4DB,x             
CODE_20B4C8:        8D 2C 13      STA $132C                 
CODE_20B4CB:        E2 20         SEP #$20                  
CODE_20B4CD:        A9 01         LDA #$01                  
CODE_20B4CF:        8D 00 15      STA $1500                 
CODE_20B4D2:        E6 C1         INC $C1                   
CODE_20B4D4:        60            RTS                       

DATA_20B4D5:        db $D8,$08

DATA_20B4D7:        db $5D,$09

DATA_20B4D9:        db $1F,$1E

DATA_20B4DB:        db $FF,$32,$3B,$15,$BF,$15,$7F,$2A
                    db $5F,$3F,$9E,$21,$1F,$22,$DF,$36
                    db $FF,$4B,$3F,$36,$BF,$36,$7F,$4B
                    db $FF,$5F,$3F,$36,$BF,$36,$7F,$4B
                    db $FF,$5F,$9E,$21,$1F,$22,$DF,$36
                    db $FF,$4B,$3B,$15,$BF,$15,$7F,$2A
                    db $5F,$3F,$D8,$08,$5D,$09,$1F,$1E
                    db $FF,$32   

CODE_20B515:        C6 B4         DEC $B4                   
CODE_20B517:        A5 B4         LDA $B4                   
CODE_20B519:        C9 FF         CMP #$FF                  
CODE_20B51B:        D0 03         BNE CODE_20B520           
CODE_20B51D:        20 F3 B5      JSR CODE_20B5F3           
CODE_20B520:        C6 B5         DEC $B5                   
CODE_20B522:        A5 B5         LDA $B5                   
CODE_20B524:        C9 FF         CMP #$FF                  
CODE_20B526:        D0 03         BNE CODE_20B52B           
CODE_20B528:        20 28 B6      JSR CODE_20B628           
CODE_20B52B:        A5 B6         LDA $B6                   
CODE_20B52D:        85 B8         STA $B8                   
CODE_20B52F:        A5 B7         LDA $B7                   
CODE_20B531:        85 B9         STA $B9                   
CODE_20B533:        20 49 B6      JSR CODE_20B649           
CODE_20B536:        20 4D BB      JSR CODE_20BB4D           
CODE_20B539:        A5 C0         LDA $C0                   
CODE_20B53B:        F0 03         BEQ CODE_20B540           
CODE_20B53D:        20 9D B4      JSR CODE_20B49D           
CODE_20B540:        A5 F6         LDA $F6                   
CODE_20B542:        05 F7         ORA $F7                   
CODE_20B544:        29 10         AND #$10                  
CODE_20B546:        F0 25         BEQ CODE_20B56D           
CODE_20B548:        A5 B0         LDA $B0                   
CODE_20B54A:        D0 1B         BNE CODE_20B567           
CODE_20B54C:        AF F2 1F 70   LDA $701FF2               
CODE_20B550:        F0 04         BEQ CODE_20B556           
CODE_20B552:        5C DE 80 00   JML CODE_0080DE           

CODE_20B556:        A5 AC         LDA $AC                   
CODE_20B558:        C9 06         CMP #$06                  
CODE_20B55A:        F0 05         BEQ CODE_20B561           
CODE_20B55C:        A9 29         LDA #$29                  
CODE_20B55E:        8D 03 12      STA $1203                 
CODE_20B561:        A9 06         LDA #$06                  
CODE_20B563:        85 AC         STA $AC                   
CODE_20B565:        80 06         BRA CODE_20B56D           

CODE_20B567:        E6 AC         INC $AC                   
CODE_20B569:        A9 01         LDA #$01                  
CODE_20B56B:        85 28         STA $28                   
CODE_20B56D:        A5 F4         LDA $F4                   
CODE_20B56F:        05 F5         ORA $F5                   
CODE_20B571:        29 40         AND #$40                  
CODE_20B573:        F0 04         BEQ CODE_20B579           
CODE_20B575:        5C DE 80 00   JML CODE_0080DE           

CODE_20B579:        A5 F2         LDA $F2                   
CODE_20B57B:        05 F3         ORA $F3                   
CODE_20B57D:        29 40         AND #$40                  
CODE_20B57F:        F0 04         BEQ CODE_20B585           
CODE_20B581:        5C DE 80 00   JML CODE_0080DE           

CODE_20B585:        60            RTS                       

CODE_20B586:        9C 16 02      STZ $0216                 
CODE_20B589:        9C 17 02      STZ $0217                 
CODE_20B58C:        A9 B1         LDA #$B1                  
CODE_20B58E:        85 36         STA $36                   
CODE_20B590:        A9 F1         LDA #$F1                  
CODE_20B592:        85 37         STA $37                   
CODE_20B594:        A9 2A         LDA #$2A                  
CODE_20B596:        85 38         STA $38                   
CODE_20B598:        A9 01         LDA #$01                  
CODE_20B59A:        85 1C         STA $1C                   
CODE_20B59C:        9C 54 01      STZ $0154                 
CODE_20B59F:        AD 54 01      LDA $0154                 
CODE_20B5A2:        10 FB         BPL CODE_20B59F           
CODE_20B5A4:        64 1C         STZ $1C                   
CODE_20B5A6:        58            CLI                       
CODE_20B5A7:        20 DD B5      JSR CODE_20B5DD           
CODE_20B5AA:        A9 06         LDA #$06                  
CODE_20B5AC:        8D 01 15      STA $1501                 
CODE_20B5AF:        22 5F E6 22   JSL CODE_22E65F           
CODE_20B5B3:        20 0E B7      JSR CODE_20B70E           
CODE_20B5B6:        9C B5 02      STZ $02B5                 
CODE_20B5B9:        20 EE B2      JSR CODE_20B2EE           
CODE_20B5BC:        A9 1D         LDA #$1D                  
CODE_20B5BE:        0A            ASL A                     
CODE_20B5BF:        AA            TAX                       
CODE_20B5C0:        BF 01 D3 20   LDA.l PNTR_20D301,x             
CODE_20B5C4:        85 36         STA $36                   
CODE_20B5C6:        BF 02 D3 20   LDA.l PNTR_20D301+1,x             
CODE_20B5CA:        85 37         STA $37                   
CODE_20B5CC:        A9 20         LDA #$20                  
CODE_20B5CE:        85 38         STA $38                   
CODE_20B5D0:        22 AB E8 29   JSL CODE_29E8AB           
CODE_20B5D4:        A9 0F         LDA #$0F                  
CODE_20B5D6:        85 16         STA $16                   
CODE_20B5D8:        A9 02         LDA #$02                  
CODE_20B5DA:        85 AC         STA $AC                   
CODE_20B5DC:        60            RTS                       

CODE_20B5DD:        AF 03 FC 7F   LDA $7FFC03               
CODE_20B5E1:        30 08         BMI CODE_20B5EB           
CODE_20B5E3:        3A            DEC A                     
CODE_20B5E4:        AA            TAX                       
CODE_20B5E5:        BF 6D B7 20   LDA.l DATA_20B76D,x             
CODE_20B5E9:        80 02         BRA CODE_20B5ED           

CODE_20B5EB:        A9 01         LDA #$01                  
CODE_20B5ED:        85 28         STA $28                   
CODE_20B5EF:        20 B6 A4      JSR CODE_20A4B6           
CODE_20B5F2:        60            RTS                       

CODE_20B5F3:        64 B6         STZ $B6                   
CODE_20B5F5:        64 BA         STZ $BA                   
CODE_20B5F7:        A6 B2         LDX $B2                   
CODE_20B5F9:        BF 28 B4 20   LDA.l DATA_20B428,x             
CODE_20B5FD:        C9 FF         CMP #$FF                  
CODE_20B5FF:        F0 14         BEQ CODE_20B615           
CODE_20B601:        C9 FE         CMP #$FE                  
CODE_20B603:        F0 1E         BEQ CODE_20B623           
CODE_20B605:        85 B4         STA $B4                   
CODE_20B607:        E8            INX                       
CODE_20B608:        BF 28 B4 20   LDA.l DATA_20B428,x             
CODE_20B60C:        85 B6         STA $B6                   
CODE_20B60E:        85 BA         STA $BA                   
CODE_20B610:        E6 B2         INC $B2                   
CODE_20B612:        E6 B2         INC $B2                   
CODE_20B614:        60            RTS                       

CODE_20B615:        E8            INX                       
CODE_20B616:        BF 28 B4 20   LDA.l DATA_20B428,x             
CODE_20B61A:        85 BC         STA $BC                   
CODE_20B61C:        E6 B2         INC $B2                   
CODE_20B61E:        E6 B2         INC $B2                   
CODE_20B620:        64 B4         STZ $B4                   
CODE_20B622:        60            RTS                       

CODE_20B623:        E6 AC         INC $AC                   
CODE_20B625:        64 B2         STZ $B2                   
CODE_20B627:        60            RTS                       

CODE_20B628:        64 B7         STZ $B7                   
CODE_20B62A:        64 BB         STZ $BB                   
CODE_20B62C:        A6 B3         LDX $B3                   
CODE_20B62E:        BF 80 B4 20   LDA.l DATA_20B480,x             
CODE_20B632:        C9 FF         CMP #$FF                  
CODE_20B634:        F0 10         BEQ CODE_20B646           
CODE_20B636:        85 B5         STA $B5                   
CODE_20B638:        E8            INX                       
CODE_20B639:        BF 80 B4 20   LDA.l DATA_20B480,x             
CODE_20B63D:        85 B7         STA $B7                   
CODE_20B63F:        85 BB         STA $BB                   
CODE_20B641:        E6 B3         INC $B3                   
CODE_20B643:        E6 B3         INC $B3                   
CODE_20B645:        60            RTS                       

CODE_20B646:        64 B3         STZ $B3                   
CODE_20B648:        60            RTS                       

CODE_20B649:        A5 BC         LDA $BC                   
CODE_20B64B:        22 1F FB 20   JSL CODE_20FB1F           ; ExecutePtrShort

PNTR_20B64F:          dw CODE_20B663
               dw CODE_20B663
               dw CODE_20B664
               dw CODE_20B68B
               dw CODE_20B6A0
               dw CODE_20B6B1
               dw CODE_20B6D2
               dw CODE_20B6EA
               dw CODE_20B752
               dw CODE_20B663

CODE_20B663:        60            RTS

CODE_20B664:        A5 BD         LDA $BD                   
CODE_20B666:        8D 28 00      STA $0028                 
CODE_20B669:        E6 BD         INC $BD                   
CODE_20B66B:        A5 BD         LDA $BD                   
CODE_20B66D:        C9 1D         CMP #$1D                  
CODE_20B66F:        D0 19         BNE CODE_20B68A           
CODE_20B671:        64 BC         STZ $BC                   
CODE_20B673:        C2 20         REP #$20                  
CODE_20B675:        A2 08         LDX #$08                  
CODE_20B677:        A9 00 00      LDA #$0000                
CODE_20B67A:        9D 00 13      STA $1300,x               
CODE_20B67D:        E8            INX                       
CODE_20B67E:        E8            INX                       
CODE_20B67F:        E0 20         CPX #$20                  
CODE_20B681:        D0 F7         BNE CODE_20B67A           
CODE_20B683:        E2 20         SEP #$20                  
CODE_20B685:        A9 01         LDA #$01                  
CODE_20B687:        8D 00 15      STA $1500                 
CODE_20B68A:        60            RTS                       

CODE_20B68B:        A0 04         LDY #$04                  
CODE_20B68D:        CE 16 02      DEC $0216                 
CODE_20B690:        AD 16 02      LDA $0216                 
CODE_20B693:        F0 04         BEQ CODE_20B699           
CODE_20B695:        88            DEY                       
CODE_20B696:        10 F5         BPL CODE_20B68D           
CODE_20B698:        60            RTS                       

CODE_20B699:        A9 10         LDA #$10                  
CODE_20B69B:        85 B1         STA $B1                   
CODE_20B69D:        E6 BC         INC $BC                   
CODE_20B69F:        60            RTS                       

CODE_20B6A0:        C2 20         REP #$20                  
CODE_20B6A2:        AD 16 02      LDA $0216                 
CODE_20B6A5:        38            SEC                       
CODE_20B6A6:        E9 02 00      SBC #$0002                
CODE_20B6A9:        8D 16 02      STA $0216                 
CODE_20B6AC:        E2 20         SEP #$20                  
CODE_20B6AE:        E6 BC         INC $BC                   
CODE_20B6B0:        60            RTS                       

CODE_20B6B1:        C2 20         REP #$20                  
CODE_20B6B3:        AD 16 02      LDA $0216                 
CODE_20B6B6:        18            CLC                       
CODE_20B6B7:        69 02 00      ADC #$0002                
CODE_20B6BA:        8D 16 02      STA $0216                 
CODE_20B6BD:        E2 20         SEP #$20                  
CODE_20B6BF:        C6 BC         DEC $BC                   
CODE_20B6C1:        C6 B1         DEC $B1                   
CODE_20B6C3:        10 0C         BPL CODE_20B6D1           
CODE_20B6C5:        E6 BC         INC $BC                   
CODE_20B6C7:        E6 BC         INC $BC                   
CODE_20B6C9:        A9 03         LDA #$03                  
CODE_20B6CB:        85 BD         STA $BD                   
CODE_20B6CD:        A9 02         LDA #$02                  
CODE_20B6CF:        85 B1         STA $B1                   
CODE_20B6D1:        60            RTS                       

CODE_20B6D2:        C6 B1         DEC $B1                   
CODE_20B6D4:        10 13         BPL CODE_20B6E9           
CODE_20B6D6:        64 BE         STZ $BE                   
CODE_20B6D8:        A9 01         LDA #$01                  
CODE_20B6DA:        85 BF         STA $BF                   
CODE_20B6DC:        E6 BC         INC $BC                   
CODE_20B6DE:        A9 16         LDA #$16                  
CODE_20B6E0:        85 B1         STA $B1                   
CODE_20B6E2:        22 62 CF 29   JSL CODE_29CF62           
CODE_20B6E6:        9C B3 02      STZ $02B3                 
CODE_20B6E9:        60            RTS                       

CODE_20B6EA:        C2 20         REP #$20                  
CODE_20B6EC:        AF 00 00 7F   LDA $7F0000               
CODE_20B6F0:        8D 00 13      STA $1300                 
CODE_20B6F3:        E2 20         SEP #$20                  
CODE_20B6F5:        22 9A D0 29   JSL CODE_29D09A           
CODE_20B6F9:        22 BB D1 29   JSL CODE_29D1BB           
CODE_20B6FD:        AD B3 02      LDA $02B3                 
CODE_20B700:        C9 02         CMP #$02                  
CODE_20B702:        D0 06         BNE CODE_20B70A           
CODE_20B704:        64 BC         STZ $BC                   
CODE_20B706:        A9 01         LDA #$01                  
CODE_20B708:        85 C0         STA $C0                   
CODE_20B70A:        20 0E B7      JSR CODE_20B70E           
CODE_20B70D:        60            RTS                       

CODE_20B70E:        C2 20         REP #$20                  
CODE_20B710:        AD 00 13      LDA $1300                 
CODE_20B713:        8F 00 00 7F   STA $7F0000               
CODE_20B717:        29 1F 00      AND #$001F                
CODE_20B71A:        09 20 00      ORA #$0020                
CODE_20B71D:        85 D8         STA $D8                   
CODE_20B71F:        AD 00 13      LDA $1300                 
CODE_20B722:        4A            LSR A                     
CODE_20B723:        4A            LSR A                     
CODE_20B724:        4A            LSR A                     
CODE_20B725:        4A            LSR A                     
CODE_20B726:        4A            LSR A                     
CODE_20B727:        29 1F 00      AND #$001F                
CODE_20B72A:        09 40 00      ORA #$0040                
CODE_20B72D:        85 DA         STA $DA                   
CODE_20B72F:        AD 00 13      LDA $1300                 
CODE_20B732:        EB            XBA                       
CODE_20B733:        4A            LSR A                     
CODE_20B734:        4A            LSR A                     
CODE_20B735:        29 1F 00      AND #$001F                
CODE_20B738:        09 80 00      ORA #$0080                
CODE_20B73B:        85 DC         STA $DC                   
CODE_20B73D:        9C 00 13      STZ $1300                 
CODE_20B740:        E2 20         SEP #$20                  
CODE_20B742:        A5 D8         LDA $D8                   
CODE_20B744:        8D 05 02      STA $0205                 
CODE_20B747:        A5 DA         LDA $DA                   
CODE_20B749:        8D 06 02      STA $0206                 
CODE_20B74C:        A5 DC         LDA $DC                   
CODE_20B74E:        8D 07 02      STA $0207                 
CODE_20B751:        60            RTS                       

CODE_20B752:        AF F2 1F 70   LDA $701FF2               
CODE_20B756:        D0 0E         BNE CODE_20B766           
CODE_20B758:        AF 03 FC 7F   LDA $7FFC03               
CODE_20B75C:        30 08         BMI CODE_20B766           
CODE_20B75E:        3A            DEC A                     
CODE_20B75F:        AA            TAX                       
CODE_20B760:        BF 6D B7 20   LDA.l DATA_20B76D,x             
CODE_20B764:        80 02         BRA CODE_20B768           

CODE_20B766:        A9 01         LDA #$01                  
CODE_20B768:        85 28         STA $28                   
CODE_20B76A:        E6 BC         INC $BC                   
CODE_20B76C:        60            RTS                       

DATA_20B76D:        db $5D,$5C

CODE_20B76F:        64 A7         STZ $A7
CODE_20B771:        64 A8         STZ $A8                   
CODE_20B773:        64 A9         STZ $A9                   
CODE_20B775:        64 AA         STZ $AA                   
CODE_20B777:        A9 01         LDA #$01                  
CODE_20B779:        85 A6         STA $A6                   
CODE_20B77B:        A9 14         LDA #$14                  
CODE_20B77D:        85 AD         STA $AD                   
CODE_20B77F:        A9 3C         LDA #$3C                  
CODE_20B781:        85 AE         STA $AE                   
CODE_20B783:        C2 20         REP #$20                  
CODE_20B785:        A9 00 00      LDA #$0000                
CODE_20B788:        8D 02 14      STA $1402                 
CODE_20B78B:        A9 1F 00      LDA #$001F                
CODE_20B78E:        8D 06 14      STA $1406                 
CODE_20B791:        E2 20         SEP #$20                  
CODE_20B793:        A9 01         LDA #$01                  
CODE_20B795:        8D 00 15      STA $1500                 
CODE_20B798:        E6 AC         INC $AC                   
CODE_20B79A:        60            RTS                       

DATA_20B79B:        db $8F,$9F,$AF

CODE_20B79E:        A5 F3         LDA $F3
CODE_20B7A0:        29 C0         AND #$C0
CODE_20B7A2:        C9 C0         CMP #$C0                  
CODE_20B7A4:        D0 05         BNE CODE_20B7AB                  
CODE_20B7A6:        EA            NOP                   
CODE_20B7A7:        EA            NOP                       
CODE_20B7A8:        EA            NOP                       
CODE_20B7A9:        EA            NOP                       
CODE_20B7AA:        EA            NOP                       
CODE_20B7AB:        C6 AE         DEC $AE                   
CODE_20B7AD:        D0 0C         BNE CODE_20B7BB           
CODE_20B7AF:        A9 60         LDA #$60                  
CODE_20B7B1:        85 AE         STA $AE                   
CODE_20B7B3:        C6 AD         DEC $AD                   
CODE_20B7B5:        D0 04         BNE CODE_20B7BB           
CODE_20B7B7:        A9 FF         LDA #$FF                  
CODE_20B7B9:        85 AF         STA $AF                   
CODE_20B7BB:        20 20 C5      JSR CODE_20C520           
CODE_20B7BE:        AF F2 1F 70   LDA $701FF2               
CODE_20B7C2:        F0 03         BEQ CODE_20B7C7           
CODE_20B7C4:        4C 3C B8      JMP CODE_20B83C           

CODE_20B7C7:        A5 F6         LDA $F6                   
CODE_20B7C9:        05 F7         ORA $F7                   
CODE_20B7CB:        29 2C         AND #$2C                  
CODE_20B7CD:        F0 4F         BEQ CODE_20B81E           
CODE_20B7CF:        A2 23         LDX #$23                  
CODE_20B7D1:        8E 03 12      STX $1203                 
CODE_20B7D4:        AF 03 FC 7F   LDA $7FFC03               
CODE_20B7D8:        30 12         BMI CODE_20B7EC           
CODE_20B7DA:        AD 2B 07      LDA $072B                 
CODE_20B7DD:        C9 02         CMP #$02                  
CODE_20B7DF:        D0 07         BNE CODE_20B7E8           
CODE_20B7E1:        AF 03 FC 7F   LDA $7FFC03               
CODE_20B7E5:        3A            DEC A                     
CODE_20B7E6:        80 18         BRA CODE_20B800           

CODE_20B7E8:        A9 02         LDA #$02                  
CODE_20B7EA:        80 14         BRA CODE_20B800           

CODE_20B7EC:        A5 F6         LDA $F6                   
CODE_20B7EE:        05 F7         ORA $F7                   
CODE_20B7F0:        89 20         BIT #$20                  
CODE_20B7F2:        F0 11         BEQ CODE_20B805           
CODE_20B7F4:        EE 2B 07      INC $072B                 
CODE_20B7F7:        AD 2B 07      LDA $072B                 
CODE_20B7FA:        C9 03         CMP #$03                  
CODE_20B7FC:        D0 02         BNE CODE_20B800           
CODE_20B7FE:        A9 00         LDA #$00                  
CODE_20B800:        8D 2B 07      STA $072B                 
CODE_20B803:        80 19         BRA CODE_20B81E           

CODE_20B805:        AE 2B 07      LDX $072B                 
CODE_20B808:        29 08         AND #$08                  
CODE_20B80A:        F0 06         BEQ CODE_20B812           
CODE_20B80C:        CA            DEX                       
CODE_20B80D:        10 0C         BPL CODE_20B81B           
CODE_20B80F:        E8            INX                       
CODE_20B810:        80 06         BRA CODE_20B818           

CODE_20B812:        E8            INX                       
CODE_20B813:        E0 03         CPX #$03                  
CODE_20B815:        D0 04         BNE CODE_20B81B           
CODE_20B817:        CA            DEX                       
CODE_20B818:        9C 03 12      STZ $1203                 
CODE_20B81B:        8E 2B 07      STX $072B                 
CODE_20B81E:        AE 2B 07      LDX $072B                 
CODE_20B821:        A9 48         LDA #$48                  
CODE_20B823:        8D F0 09      STA $09F0                 
CODE_20B826:        BF 9B B7 20   LDA.l DATA_20B79B,x             
CODE_20B82A:        8D F1 09      STA $09F1                 
CODE_20B82D:        A9 4F         LDA #$4F                  
CODE_20B82F:        8D F2 09      STA $09F2                 
CODE_20B832:        A9 20         LDA #$20                  
CODE_20B834:        8D F3 09      STA $09F3                 
CODE_20B837:        A9 00         LDA #$00                  
CODE_20B839:        8D 9C 0A      STA $0A9C                 
CODE_20B83C:        20 5E B2      JSR CODE_20B25E           
CODE_20B83F:        20 9D B4      JSR CODE_20B49D           
CODE_20B842:        4C 50 B8      JMP CODE_20B850           

CODE_20B845:        A5 F8         LDA $F8                   
CODE_20B847:        29 C0         AND #$C0                  
CODE_20B849:        F0 05         BEQ CODE_20B850           
CODE_20B84B:        A9 01         LDA #$01                  
CODE_20B84D:        8D 8E 07      STA $078E                 
CODE_20B850:        AF 00 FB 7F   LDA $7FFB00               
CODE_20B854:        8D 27 07      STA $0727                 
CODE_20B857:        AF F4 1F 70   LDA $701FF4               
CODE_20B85B:        D0 18         BNE CODE_20B875           
CODE_20B85D:        AF F6 1F 70   LDA $701FF6               
CODE_20B861:        F0 12         BEQ CODE_20B875           
CODE_20B863:        A5 F7         LDA $F7                   
CODE_20B865:        29 10         AND #$10                  
CODE_20B867:        F0 0C         BEQ CODE_20B875           
CODE_20B869:        AD 2B 07      LDA $072B                 
CODE_20B86C:        D0 27         BNE CODE_20B895           
CODE_20B86E:        A9 2A         LDA #$2A                  
CODE_20B870:        8D 03 12      STA $1203                 
CODE_20B873:        80 65         BRA CODE_20B8DA           

CODE_20B875:        A5 F6         LDA $F6                   
CODE_20B877:        05 F7         ORA $F7                   
CODE_20B879:        29 10         AND #$10                  
CODE_20B87B:        D0 18         BNE CODE_20B895           
CODE_20B87D:        A5 F4         LDA $F4                   
CODE_20B87F:        05 F5         ORA $F5                   
CODE_20B881:        29 40         AND #$40                  
CODE_20B883:        F0 04         BEQ CODE_20B889           
CODE_20B885:        5C DE 80 00   JML CODE_0080DE           

CODE_20B889:        A5 F2         LDA $F2                   
CODE_20B88B:        05 F3         ORA $F3                   
CODE_20B88D:        29 40         AND #$40                  
CODE_20B88F:        F0 49         BEQ CODE_20B8DA           
CODE_20B891:        5C DE 80 00   JML CODE_0080DE           

CODE_20B895:        AD 2B 07      LDA $072B                 
CODE_20B898:        C9 02         CMP #$02                  
CODE_20B89A:        D0 0E         BNE CODE_20B8AA           
CODE_20B89C:        AF F4 1F 70   LDA $701FF4               
CODE_20B8A0:        D0 39         BNE CODE_20B8DB           
CODE_20B8A2:        AF F6 1F 70   LDA $701FF6               
CODE_20B8A6:        C9 02         CMP #$02                  
CODE_20B8A8:        D0 31         BNE CODE_20B8DB           
CODE_20B8AA:        A9 29         LDA #$29                  
CODE_20B8AC:        8D 03 12      STA $1203                 
CODE_20B8AF:        AD F1 08      LDA $08F1                 
CODE_20B8B2:        85 BD         STA $BD                   
CODE_20B8B4:        AF F2 1F 70   LDA $701FF2               
CODE_20B8B8:        F0 04         BEQ CODE_20B8BE           
CODE_20B8BA:        5C DE 80 00   JML CODE_0080DE           

CODE_20B8BE:        20 B6 A4      JSR CODE_20A4B6           
CODE_20B8C1:        E6 AD         INC $AD                   
CODE_20B8C3:        A0 F8         LDY #$F8                  
CODE_20B8C5:        A5 AD         LDA $AD                   
CODE_20B8C7:        29 18         AND #$18                  
CODE_20B8C9:        F0 02         BEQ CODE_20B8CD           
CODE_20B8CB:        A4 BD         LDY $BD                   
CODE_20B8CD:        8C F1 08      STY $08F1                 
CODE_20B8D0:        20 9D B4      JSR CODE_20B49D           
CODE_20B8D3:        AD E2 04      LDA $04E2                 
CODE_20B8D6:        D0 E6         BNE CODE_20B8BE           
CODE_20B8D8:        E6 AC         INC $AC                   
CODE_20B8DA:        60            RTS                       

CODE_20B8DB:        A9 2A         LDA #$2A                  
CODE_20B8DD:        8D 03 12      STA $1203                 
CODE_20B8E0:        60            RTS                       

CODE_20B8E1:        9C 47 07      STZ $0747                 
CODE_20B8E4:        9C 48 07      STZ $0748                 
CODE_20B8E7:        EE 2B 07      INC $072B                 
CODE_20B8EA:        AD 27 07      LDA $0727                 
CODE_20B8ED:        0A            ASL A                     
CODE_20B8EE:        AA            TAX                       
CODE_20B8EF:        BD AD E3      LDA.w DATA_21E3AD,x               
CODE_20B8F2:        85 0A         STA $0A                   
CODE_20B8F4:        BD AE E3      LDA.w DATA_21E3AD+1,x               
CODE_20B8F7:        85 0B         STA $0B                   
CODE_20B8F9:        BD BD E3      LDA.w DATA_21E3BD,x               
CODE_20B8FC:        85 0C         STA $0C                   
CODE_20B8FE:        BD BE E3      LDA.w DATA_21E3BD+1,x               
CODE_20B901:        85 0D         STA $0D                   
CODE_20B903:        BD CD E3      LDA.w DATA_21E3CD,x               
CODE_20B906:        85 0E         STA $0E                   
CODE_20B908:        BD CE E3      LDA.w DATA_21E3CD+1,x               
CODE_20B90B:        85 0F         STA $0F                   
CODE_20B90D:        BD DD E3      LDA.w DATA_21E3DD,x               
CODE_20B910:        85 08         STA $08                   
CODE_20B912:        BD DE E3      LDA.w DATA_21E3DD+1,x               
CODE_20B915:        85 09         STA $09                   
CODE_20B917:        A0 08         LDY #$08                  
CODE_20B919:        B1 0A         LDA ($0A),y               
CODE_20B91B:        99 ED 1E      STA $1EED,y               
CODE_20B91E:        B1 0C         LDA ($0C),y               
CODE_20B920:        99 09 1F      STA $1F09,y               
CODE_20B923:        B1 0E         LDA ($0E),y               
CODE_20B925:        99 FB 1E      STA $1EFB,y               
CODE_20B928:        B1 08         LDA ($08),y               
CODE_20B92A:        99 17 1F      STA $1F17,y               
CODE_20B92D:        88            DEY                       
CODE_20B92E:        10 E9         BPL CODE_20B919           
CODE_20B930:        E6 AC         INC $AC                   
CODE_20B932:        C2 20         REP #$20                  
CODE_20B934:        A2 44         LDX #$44                  
CODE_20B936:        A9 00 00      LDA #$0000                
CODE_20B939:        9D 80 1D      STA $1D80,x               
CODE_20B93C:        CA            DEX                       
CODE_20B93D:        CA            DEX                       
CODE_20B93E:        10 F9         BPL CODE_20B939           
CODE_20B940:        E2 20         SEP #$20                  
CODE_20B942:        60            RTS                       

CODE_20B943:        20 20 C5      JSR CODE_20C520           
CODE_20B946:        A5 F3         LDA $F3                   
CODE_20B948:        29 C1         AND #$C1                  
CODE_20B94A:        C9 C1         CMP #$C1                  
CODE_20B94C:        D0 03         BNE CODE_20B951           
CODE_20B94E:        4C 96 CB      JMP CODE_20CB96           

CODE_20B951:        A5 F3         LDA $F3                   
CODE_20B953:        29 C4         AND #$C4                  
CODE_20B955:        C9 C4         CMP #$C4                  
CODE_20B957:        D0 03         BNE CODE_20B95C           
CODE_20B959:        4C 17 C6      JMP CODE_20C617           

CODE_20B95C:        A5 18         LDA $18                   
CODE_20B95E:        29 0C         AND #$0C                  
CODE_20B960:        F0 13         BEQ CODE_20B975           
CODE_20B962:        4A            LSR A                     
CODE_20B963:        4A            LSR A                     
CODE_20B964:        4A            LSR A                     
CODE_20B965:        AA            TAX                       
CODE_20B966:        AD FE 03      LDA $03FE                 
CODE_20B969:        18            CLC                       
CODE_20B96A:        7D B0 A4      ADC.w DATA_20A4B0,x               
CODE_20B96D:        29 07         AND #$07                  
CODE_20B96F:        8D FE 03      STA $03FE                 
CODE_20B972:        4C 1F BA      JMP CODE_20BA1F           

CODE_20B975:        A5 18         LDA $18                   
CODE_20B977:        29 20         AND #$20                  
CODE_20B979:        F0 0B         BEQ CODE_20B986           
CODE_20B97B:        EE 2B 07      INC $072B                 
CODE_20B97E:        AD 2B 07      LDA $072B                 
CODE_20B981:        29 01         AND #$01                  
CODE_20B983:        8D 2B 07      STA $072B                 
CODE_20B986:        AC 2B 07      LDY $072B                 
CODE_20B989:        A9 48         LDA #$48                  
CODE_20B98B:        8D F0 09      STA $09F0                 
CODE_20B98E:        B9 9B B7      LDA DATA_20B79B,y               
CODE_20B991:        8D F1 09      STA $09F1                 
CODE_20B994:        A9 4F         LDA #$4F                  
CODE_20B996:        8D F2 09      STA $09F2                 
CODE_20B999:        A9 20         LDA #$20                  
CODE_20B99B:        8D F3 09      STA $09F3                 
CODE_20B99E:        A9 00         LDA #$00                  
CODE_20B9A0:        8D 9C 0A      STA $0A9C                 
CODE_20B9A3:        A5 18         LDA $18                   
CODE_20B9A5:        29 80         AND #$80                  
CODE_20B9A7:        F0 2E         BEQ CODE_20B9D7           
CODE_20B9A9:        AD 36 07      LDA $0736                 
CODE_20B9AC:        C9 63         CMP #$63                  
CODE_20B9AE:        F0 09         BEQ CODE_20B9B9           
CODE_20B9B0:        AD 36 07      LDA $0736                 
CODE_20B9B3:        18            CLC                       
CODE_20B9B4:        69 05         ADC #$05                  
CODE_20B9B6:        8D 36 07      STA $0736                 
CODE_20B9B9:        C2 20         REP #$20                  
CODE_20B9BB:        A9 01 14      LDA #$1401                
CODE_20B9BE:        8D 02 16      STA $1602                 
CODE_20B9C1:        A9 00 01      LDA #$0100                
CODE_20B9C4:        8D 04 16      STA $1604                 
CODE_20B9C7:        AD 36 07      LDA $0736                 
CODE_20B9CA:        29 FF 00      AND #$00FF                
CODE_20B9CD:        8D 06 16      STA $1606                 
CODE_20B9D0:        E2 20         SEP #$20                  
CODE_20B9D2:        A9 FF         LDA #$FF                  
CODE_20B9D4:        8D 08 16      STA $1608                 
CODE_20B9D7:        A5 18         LDA $18                   
CODE_20B9D9:        29 10         AND #$10                  
CODE_20B9DB:        F0 42         BEQ CODE_20BA1F           
CODE_20B9DD:        A9 80         LDA #$80                  
CODE_20B9DF:        8D 60 01      STA $0160                 
CODE_20B9E2:        A9 04         LDA #$04                  
CODE_20B9E4:        85 AC         STA $AC                   
CODE_20B9E6:        AE 2B 07      LDX $072B                 
CODE_20B9E9:        AC 36 07      LDY $0736                 
CODE_20B9EC:        98            TYA                       
CODE_20B9ED:        9D 36 07      STA $0736,x               
CODE_20B9F0:        A9 00         LDA #$00                  
CODE_20B9F2:        9D 47 07      STA $0747,x               
CODE_20B9F5:        CA            DEX                       
CODE_20B9F6:        10 F4         BPL CODE_20B9EC           
CODE_20B9F8:        AD FE 03      LDA $03FE                 
CODE_20B9FB:        8D 27 07      STA $0727                 
CODE_20B9FE:        A2 1B         LDX #$1B                  
CODE_20BA00:        A9 08         LDA #$08                  
CODE_20BA02:        9D 80 1D      STA $1D80,x               
CODE_20BA05:        9D A3 1D      STA $1DA3,x               
CODE_20BA08:        CA            DEX                       
CODE_20BA09:        10 F7         BPL CODE_20BA02           
CODE_20BA0B:        A2 0D         LDX #$0D                  
CODE_20BA0D:        A9 0C         LDA #$0C                  
CODE_20BA0F:        9D 80 1D      STA $1D80,x               
CODE_20BA12:        9D A3 1D      STA $1DA3,x               
CODE_20BA15:        8A            TXA                       
CODE_20BA16:        9D 7F 1D      STA $1D7F,x               
CODE_20BA19:        9D A2 1D      STA $1DA2,x               
CODE_20BA1C:        CA            DEX                       
CODE_20BA1D:        D0 F6         BNE CODE_20BA15           
CODE_20BA1F:        AD FE 03      LDA $03FE                 
CODE_20BA22:        0A            ASL A                     
CODE_20BA23:        0A            ASL A                     
CODE_20BA24:        0A            ASL A                     
CODE_20BA25:        0A            ASL A                     
CODE_20BA26:        18            CLC                       
CODE_20BA27:        69 30         ADC #$30                  
CODE_20BA29:        8D 51 08      STA $0851                 
CODE_20BA2C:        A9 6F         LDA #$6F                  
CODE_20BA2E:        8D 52 08      STA $0852                 
CODE_20BA31:        A9 00         LDA #$00                  
CODE_20BA33:        8D 53 08      STA $0853                 
CODE_20BA36:        A9 20         LDA #$20                  
CODE_20BA38:        8D 50 08      STA $0850                 
CODE_20BA3B:        A9 00         LDA #$00                  
CODE_20BA3D:        8D 34 0A      STA $0A34                 
CODE_20BA40:        60            RTS                       

DATA_20BA41:        db $00,$06,$0C,$12,$18,$1E,$24,$2A
                    db $30,$36,$3C,$42,$48,$4E,$54,$5A
                    db $60,$66,$6C,$72,$78,$7E,$84,$8A
                    db $90,$96,$9C,$A2,$00,$02,$10,$04
                    db $06,$10,$0A,$0C,$10,$0E,$28,$10
                    db $2C,$2E,$10,$18,$1A,$10,$00,$02
                    db $10,$04,$06,$08,$0A,$0C,$10,$0E
                    db $28,$2A,$2C,$2E,$10,$18,$1A,$1C
                    db $30,$32,$10,$34,$36,$10,$30,$32
                    db $10,$34,$36,$38,$00,$02,$10,$04
                    db $06,$38,$00,$02,$10,$04,$06,$3A
                    db $24,$24,$10,$26,$26,$10,$30,$32
                    db $10,$34,$36,$10,$28,$2A,$10,$2C
                    db $2E,$10,$26,$18,$10,$1C,$1E,$1A
                    db $00,$02,$10,$04,$06,$08,$00,$02
                    db $10,$0A,$0C,$0E,$00,$02,$10,$20
                    db $22,$24,$10,$10,$10,$04,$06,$10
                    db $10,$10,$10,$00,$02,$10,$10,$10
                    db $10,$20,$22,$10,$18,$1A,$10,$1C
                    db $20,$10,$18,$1A,$10,$1C,$20,$22
                    db $00,$02,$04,$06,$08,$0A,$0C,$0E
                    db $1E,$10,$12,$1E,$10,$10,$10,$10
                    db $10,$10,$24,$26,$3E,$28,$2A,$3E
                    db $2C,$2E,$3E,$18,$1A,$3E,$30,$32
                    db $3E,$34,$36,$3E

DATA_20BB05:        db $00,$00,$00,$00
                    db $00,$00,$00,$00,$00,$00,$00,$F3
                    db $10,$10,$10,$10,$10,$18,$18,$18
                    db $18,$18,$F4,$F4,$00,$F5,$F5,$F5

DATA_20BB21:        db $11,$12,$11,$12

DATA_20BB25:        db $00,$01,$02,$01
                    db $03,$04,$05,$04

DATA_20BB2D:        db $1A,$1B,$1A,$1B
                    db $12,$06,$07,$13,$0C

DATA_20BB36:        db $09,$03,$08
                    db $0E,$0F,$10,$0E,$11,$0B,$11,$0B
                    db $11,$0B,$02,$0B,$02,$0B,$02,$0B

DATA_20BB49:        db $F0,$00

DATA_20BB4B:        db $00,$40

CODE_20BB4D:        22 A9 E0 22   JSL CODE_22E0A9           
CODE_20BB51:        AD 10 05      LDA $0510                 
CODE_20BB54:        29 F0         AND #$F0                  
CODE_20BB56:        38            SEC                       
CODE_20BB57:        E9 90         SBC #$90                  
CODE_20BB59:        8D 10 05      STA $0510                 
CODE_20BB5C:        A9 10         LDA #$10                  
CODE_20BB5E:        85 91         STA $91                   
CODE_20BB60:        A9 40         LDA #$40                  
CODE_20BB62:        85 92         STA $92                   
CODE_20BB64:        A2 01         LDX #$01                  
CODE_20BB66:        86 9F         STX $9F                   
CODE_20BB68:        A5 9E         LDA $9E                   
CODE_20BB6A:        F0 29         BEQ CODE_20BB95           
CODE_20BB6C:        A9 08         LDA #$08                  
CODE_20BB6E:        AC 12 05      LDY $0512                 
CODE_20BB71:        F0 05         BEQ CODE_20BB78           
CODE_20BB73:        CE 12 05      DEC $0512                 
CODE_20BB76:        A9 00         LDA #$00                  
CODE_20BB78:        95 63         STA $63,x                 
CODE_20BB7A:        BF 49 BB 20   LDA.l DATA_20BB49,x             
CODE_20BB7E:        95 53         STA $53,x                 
CODE_20BB80:        A9 A0         LDA #$A0                  
CODE_20BB82:        95 5B         STA $5B,x                 
CODE_20BB84:        BF 4B BB 20   LDA.l DATA_20BB4B,x             
CODE_20BB88:        95 85         STA $85,x                 
CODE_20BB8A:        20 2F BD      JSR CODE_20BD2F           
CODE_20BB8D:        20 94 BE      JSR CODE_20BE94           
CODE_20BB90:        74 63         STZ $63,x                 
CODE_20BB92:        4C C6 BB      JMP CODE_20BBC6           

CODE_20BB95:        20 D3 BB      JSR CODE_20BBD3           
CODE_20BB98:        20 62 BC      JSR CODE_20BC62           
CODE_20BB9B:        20 2F BD      JSR CODE_20BD2F           
CODE_20BB9E:        20 27 C0      JSR CODE_20C027           
CODE_20BBA1:        20 59 C0      JSR CODE_20C059           
CODE_20BBA4:        AD 11 05      LDA $0511                 
CODE_20BBA7:        D0 03         BNE CODE_20BBAC           
CODE_20BBA9:        20 94 BE      JSR CODE_20BE94           
CODE_20BBAC:        B5 43         LDA $43,x                 
CODE_20BBAE:        F0 16         BEQ CODE_20BBC6           
CODE_20BBB0:        10 0A         BPL CODE_20BBBC           
CODE_20BBB2:        B5 53         LDA $53,x                 
CODE_20BBB4:        C9 C0         CMP #$C0                  
CODE_20BBB6:        B0 0E         BCS CODE_20BBC6                   
CODE_20BBB8:        A9 C0         LDA #$C0                  
CODE_20BBBA:        80 08         BRA CODE_20BBC4           

CODE_20BBBC:        B5 53         LDA $53,x                 
CODE_20BBBE:        C9 40         CMP #$40                  
CODE_20BBC0:        90 04         BCC CODE_20BBC6           
CODE_20BBC2:        A9 3F         LDA #$3F                  
CODE_20BBC4:        95 53         STA $53,x                 
CODE_20BBC6:        CA            DEX                       
CODE_20BBC7:        10 9D         BPL CODE_20BB66           
CODE_20BBC9:        20 E7 C0      JSR CODE_20C0E7           
CODE_20BBCC:        60            RTS                       

DATA_20BBCD:        db $FF,$00,$01

DATA_20BBD0:        db $60,$E0,$70

CODE_20BBD3:        8B            PHB                       
CODE_20BBD4:        4B            PHK                       
CODE_20BBD5:        AB            PLB                       
CODE_20BBD6:        A0 02         LDY #$02                  
CODE_20BBD8:        B5 63         LDA $63,x                 
CODE_20BBDA:        10 07         BPL CODE_20BBE3           
CODE_20BBDC:        49 FF         EOR #$FF                  
CODE_20BBDE:        18            CLC                       
CODE_20BBDF:        69 01         ADC #$01                  
CODE_20BBE1:        A0 01         LDY #$01                  
CODE_20BBE3:        D0 01         BNE CODE_20BBE6           
CODE_20BBE5:        A8            TAY                       
CODE_20BBE6:        85 0E         STA $0E                   
CODE_20BBE8:        94 87         STY $87,x                 
CODE_20BBEA:        A0 18         LDY #$18                  
CODE_20BBEC:        B5 B8         LDA $B8,x                 
CODE_20BBEE:        29 40         AND #$40                  
CODE_20BBF0:        F0 02         BEQ CODE_20BBF4           
CODE_20BBF2:        A0 28         LDY #$28                  
CODE_20BBF4:        84 0D         STY $0D                   
CODE_20BBF6:        A0 00         LDY #$00                  
CODE_20BBF8:        B5 B8         LDA $B8,x                 
CODE_20BBFA:        29 03         AND #$03                  
CODE_20BBFC:        D0 0C         BNE CODE_20BC0A           
CODE_20BBFE:        B5 83         LDA $83,x                 
CODE_20BC00:        D0 50         BNE CODE_20BC52           
CODE_20BC02:        B5 63         LDA $63,x                 
CODE_20BC04:        F0 4C         BEQ CODE_20BC52           
CODE_20BC06:        30 1C         BMI CODE_20BC24           
CODE_20BC08:        10 32         BPL CODE_20BC3C           
CODE_20BC0A:        C8            INY                       
CODE_20BC0B:        C8            INY                       
CODE_20BC0C:        35 87         AND $87,x                 
CODE_20BC0E:        D0 0E         BNE CODE_20BC1E           
CODE_20BC10:        88            DEY                       
CODE_20BC11:        A5 0E         LDA $0E                   
CODE_20BC13:        C5 0D         CMP $0D                   
CODE_20BC15:        F0 3B         BEQ CODE_20BC52           
CODE_20BC17:        30 05         BMI CODE_20BC1E           
CODE_20BC19:        B5 83         LDA $83,x                 
CODE_20BC1B:        D0 35         BNE CODE_20BC52           
CODE_20BC1D:        88            DEY                       
CODE_20BC1E:        B5 B8         LDA $B8,x                 
CODE_20BC20:        29 01         AND #$01                  
CODE_20BC22:        D0 18         BNE CODE_20BC3C           
CODE_20BC24:        A9 00         LDA #$00                  
CODE_20BC26:        38            SEC                       
CODE_20BC27:        F9 D0 BB      SBC DATA_20BBD0,y               
CODE_20BC2A:        85 00         STA $00                   
CODE_20BC2C:        B9 CD BB      LDA DATA_20BBCD,y               
CODE_20BC2F:        49 FF         EOR #$FF                  
CODE_20BC31:        85 01         STA $01                   
CODE_20BC33:        A5 00         LDA $00                   
CODE_20BC35:        D0 0F         BNE CODE_20BC46           
CODE_20BC37:        E6 01         INC $01                   
CODE_20BC39:        4C 46 BC      JMP CODE_20BC46           

CODE_20BC3C:        B9 D0 BB      LDA DATA_20BBD0,y               
CODE_20BC3F:        85 00         STA $00                   
CODE_20BC41:        B9 CD BB      LDA DATA_20BBCD,y               
CODE_20BC44:        85 01         STA $01                   
CODE_20BC46:        A5 00         LDA $00                   
CODE_20BC48:        18            CLC                       
CODE_20BC49:        6D 10 05      ADC $0510                 
CODE_20BC4C:        B5 63         LDA $63,x                 
CODE_20BC4E:        65 01         ADC $01                   
CODE_20BC50:        95 63         STA $63,x                 
CODE_20BC52:        20 DF BC      JSR CODE_20BCDF           
CODE_20BC55:        AB            PLB                       
CODE_20BC56:        60            RTS                       

DATA_20BC57:        db $D0,$CE,$CC,$CA,$CA,$CA

DATA_20BC5D:        db $C8

DATA_20BC5E:        db $00,$02,$04,$08                 

CODE_20BC62:        8B            PHB                       
CODE_20BC63:        4B            PHK                       
CODE_20BC64:        AB            PLB                       
CODE_20BC65:        B5 BA         LDA $BA,x                 
CODE_20BC67:        29 80         AND #$80                  
CODE_20BC69:        85 00         STA $00                   
CODE_20BC6B:        F0 23         BEQ CODE_20BC90           
CODE_20BC6D:        B5 83         LDA $83,x                 
CODE_20BC6F:        D0 1F         BNE CODE_20BC90           
CODE_20BC71:        B5 63         LDA $63,x                 
CODE_20BC73:        10 05         BPL CODE_20BC7A           
CODE_20BC75:        49 FF         EOR #$FF                  
CODE_20BC77:        18            CLC                       
CODE_20BC78:        69 01         ADC #$01                  
CODE_20BC7A:        4A            LSR A                     
CODE_20BC7B:        4A            LSR A                     
CODE_20BC7C:        4A            LSR A                     
CODE_20BC7D:        4A            LSR A                     
CODE_20BC7E:        A8            TAY                       
CODE_20BC7F:        AD 5D BC      LDA.w DATA_20BC5D             
CODE_20BC82:        38            SEC                       
CODE_20BC83:        F9 5E BC      SBC DATA_20BC5E,y               
CODE_20BC86:        95 6B         STA $6B,x                 
CODE_20BC88:        A9 01         LDA #$01                  
CODE_20BC8A:        95 83         STA $83,x                 
CODE_20BC8C:        A9 00         LDA #$00                  
CODE_20BC8E:        95 95         STA $95,x                 
CODE_20BC90:        B5 83         LDA $83,x                 
CODE_20BC92:        F0 2C         BEQ CODE_20BCC0           
CODE_20BC94:        A0 05         LDY #$05                  
CODE_20BC96:        B5 6B         LDA $6B,x                 
CODE_20BC98:        C9 E0         CMP #$E0                  
CODE_20BC9A:        10 08         BPL CODE_20BCA4           
CODE_20BC9C:        B5 B8         LDA $B8,x                 
CODE_20BC9E:        29 80         AND #$80                  
CODE_20BCA0:        F0 02         BEQ CODE_20BCA4           
CODE_20BCA2:        A0 01         LDY #$01                  
CODE_20BCA4:        98            TYA                       
CODE_20BCA5:        18            CLC                       
CODE_20BCA6:        75 6B         ADC $6B,x                 
CODE_20BCA8:        95 6B         STA $6B,x                 
CODE_20BCAA:        B5 8F         LDA $8F,x                 
CODE_20BCAC:        C9 02         CMP #$02                  
CODE_20BCAE:        D0 10         BNE CODE_20BCC0           
CODE_20BCB0:        B5 B8         LDA $B8,x                 
CODE_20BCB2:        29 80         AND #$80                  
CODE_20BCB4:        F0 0A         BEQ CODE_20BCC0           
CODE_20BCB6:        B5 6B         LDA $6B,x                 
CODE_20BCB8:        C9 08         CMP #$08                  
CODE_20BCBA:        30 04         BMI CODE_20BCC0           
CODE_20BCBC:        A9 08         LDA #$08                  
CODE_20BCBE:        95 6B         STA $6B,x                 
CODE_20BCC0:        20 0E BD      JSR CODE_20BD0E           
CODE_20BCC3:        B5 4B         LDA $4B,x                 
CODE_20BCC5:        F0 06         BEQ CODE_20BCCD           
CODE_20BCC7:        A9 20         LDA #$20                  
CODE_20BCC9:        95 6B         STA $6B,x                 
CODE_20BCCB:        D0 10         BNE CODE_20BCDD           
CODE_20BCCD:        B5 5B         LDA $5B,x                 
CODE_20BCCF:        C9 A0         CMP #$A0                  
CODE_20BCD1:        90 0A         BCC CODE_20BCDD           
CODE_20BCD3:        A9 A0         LDA #$A0                  
CODE_20BCD5:        95 5B         STA $5B,x                 
CODE_20BCD7:        A9 00         LDA #$00                  
CODE_20BCD9:        95 83         STA $83,x                 
CODE_20BCDB:        95 6B         STA $6B,x                 
CODE_20BCDD:        AB            PLB                       
CODE_20BCDE:        60            RTS                       

CODE_20BCDF:        B5 63         LDA $63,x                 
CODE_20BCE1:        48            PHA                       
CODE_20BCE2:        0A            ASL A                     
CODE_20BCE3:        0A            ASL A                     
CODE_20BCE4:        0A            ASL A                     
CODE_20BCE5:        0A            ASL A                     
CODE_20BCE6:        85 0B         STA $0B                   
CODE_20BCE8:        A0 00         LDY #$00                  
CODE_20BCEA:        68            PLA                       
CODE_20BCEB:        4A            LSR A                     
CODE_20BCEC:        4A            LSR A                     
CODE_20BCED:        4A            LSR A                     
CODE_20BCEE:        4A            LSR A                     
CODE_20BCEF:        C9 08         CMP #$08                  
CODE_20BCF1:        90 03         BCC CODE_20BCF6           
CODE_20BCF3:        88            DEY                       
CODE_20BCF4:        09 F0         ORA #$F0                  
CODE_20BCF6:        85 0A         STA $0A                   
CODE_20BCF8:        84 0C         STY $0C                   
CODE_20BCFA:        B5 73         LDA $73,x                 
CODE_20BCFC:        18            CLC                       
CODE_20BCFD:        65 0B         ADC $0B                   
CODE_20BCFF:        95 73         STA $73,x                 
CODE_20BD01:        B5 53         LDA $53,x                 
CODE_20BD03:        65 0A         ADC $0A                   
CODE_20BD05:        95 53         STA $53,x                 
CODE_20BD07:        B5 43         LDA $43,x                 
CODE_20BD09:        65 0C         ADC $0C                   
CODE_20BD0B:        95 43         STA $43,x                 
CODE_20BD0D:        60            RTS                       

CODE_20BD0E:        B5 6B         LDA $6B,x                 
CODE_20BD10:        30 08         BMI CODE_20BD1A           
CODE_20BD12:        C9 40         CMP #$40                  
CODE_20BD14:        30 04         BMI CODE_20BD1A           
CODE_20BD16:        A9 40         LDA #$40                  
CODE_20BD18:        95 6B         STA $6B,x                 
CODE_20BD1A:        8A            TXA                       
CODE_20BD1B:        48            PHA                       
CODE_20BD1C:        18            CLC                       
CODE_20BD1D:        69 08         ADC #$08                  
CODE_20BD1F:        AA            TAX                       
CODE_20BD20:        20 DF BC      JSR CODE_20BCDF           
CODE_20BD23:        68            PLA                       
CODE_20BD24:        AA            TAX                       
CODE_20BD25:        60            RTS                       

DATA_20BD26:        db $07,$06,$05,$04,$03,$02,$01,$01
                    db $01
        
CODE_20BD2F:        8B            PHB             
CODE_20BD30:        4B            PHK                       
CODE_20BD31:        AB            PLB                       
CODE_20BD32:        B5 63         LDA $63,x                 
CODE_20BD34:        10 05         BPL CODE_20BD3B           
CODE_20BD36:        49 FF         EOR #$FF                  
CODE_20BD38:        18            CLC                       
CODE_20BD39:        69 01         ADC #$01                  
CODE_20BD3B:        4A            LSR A                     
CODE_20BD3C:        4A            LSR A                     
CODE_20BD3D:        4A            LSR A                     
CODE_20BD3E:        A8            TAY                       
CODE_20BD3F:        F6 8B         INC $8B,x                 
CODE_20BD41:        B5 8B         LDA $8B,x                 
CODE_20BD43:        D9 26 BD      CMP DATA_20BD26,y               
CODE_20BD46:        30 10         BMI CODE_20BD58           
CODE_20BD48:        A9 00         LDA #$00                  
CODE_20BD4A:        95 8B         STA $8B,x                 
CODE_20BD4C:        F6 89         INC $89,x                 
CODE_20BD4E:        B5 89         LDA $89,x                 
CODE_20BD50:        C9 04         CMP #$04                  
CODE_20BD52:        30 04         BMI CODE_20BD58           
CODE_20BD54:        A9 00         LDA #$00                  
CODE_20BD56:        95 89         STA $89,x                 
CODE_20BD58:        B5 B8         LDA $B8,x                 
CODE_20BD5A:        29 03         AND #$03                  
CODE_20BD5C:        D0 08         BNE CODE_20BD66           
CODE_20BD5E:        B5 63         LDA $63,x                 
CODE_20BD60:        D0 04         BNE CODE_20BD66           
CODE_20BD62:        A9 02         LDA #$02                  
CODE_20BD64:        95 89         STA $89,x                 
CODE_20BD66:        B5 85         LDA $85,x                 
CODE_20BD68:        85 00         STA $00                   
CODE_20BD6A:        B5 B8         LDA $B8,x                 
CODE_20BD6C:        29 03         AND #$03                  
CODE_20BD6E:        F0 0A         BEQ CODE_20BD7A           
CODE_20BD70:        A0 00         LDY #$00                  
CODE_20BD72:        29 02         AND #$02                  
CODE_20BD74:        D0 02         BNE CODE_20BD78           
CODE_20BD76:        A0 40         LDY #$40                  
CODE_20BD78:        94 85         STY $85,x                 
CODE_20BD7A:        B5 85         LDA $85,x                 
CODE_20BD7C:        45 00         EOR $00                   
CODE_20BD7E:        85 00         STA $00                   
CODE_20BD80:        DA            PHX                       
CODE_20BD81:        B5 8F         LDA $8F,x                 
CODE_20BD83:        0A            ASL A                     
CODE_20BD84:        0A            ASL A                     
CODE_20BD85:        15 89         ORA $89,x                 
CODE_20BD87:        AA            TAX                       
CODE_20BD88:        BF 21 BB 20   LDA.l DATA_20BB21,x             
CODE_20BD8C:        FA            PLX                       
CODE_20BD8D:        95 8D         STA $8D,x                 
CODE_20BD8F:        B5 63         LDA $63,x                 
CODE_20BD91:        18            CLC                       
CODE_20BD92:        69 01         ADC #$01                  
CODE_20BD94:        C9 03         CMP #$03                  
CODE_20BD96:        90 11         BCC CODE_20BDA9           
CODE_20BD98:        B5 87         LDA $87,x                 
CODE_20BD9A:        35 B8         AND $B8,x                 
CODE_20BD9C:        F0 0B         BEQ CODE_20BDA9           
CODE_20BD9E:        B4 8F         LDY $8F,x                 
CODE_20BDA0:        F0 02         BEQ CODE_20BDA4           
CODE_20BDA2:        A0 01         LDY #$01                  
CODE_20BDA4:        B9 34 BB      LDA.w DATA_21BB34,y               
CODE_20BDA7:        95 8D         STA $8D,x                 
CODE_20BDA9:        B5 B8         LDA $B8,x                 
CODE_20BDAB:        29 04         AND #$04                  
CODE_20BDAD:        F0 1B         BEQ CODE_20BDCA           
CODE_20BDAF:        B4 8F         LDY $8F,x                 
CODE_20BDB1:        B9 31 BB      LDA.w DATA_21BB31,y               
CODE_20BDB4:        95 8D         STA $8D,x                 
CODE_20BDB6:        B5 BA         LDA $BA,x                 
CODE_20BDB8:        29 04         AND #$04                  
CODE_20BDBA:        F0 0E         BEQ CODE_20BDCA           
CODE_20BDBC:        A0 00         LDY #$00                  
CODE_20BDBE:        8A            TXA                       
CODE_20BDBF:        D0 01         BNE CODE_20BDC2           
CODE_20BDC1:        C8            INY                       
CODE_20BDC2:        A9 A0         LDA #$A0                  
CODE_20BDC4:        99 83 00      STA $0083,y               
CODE_20BDC7:        99 6B 00      STA $006B,y               
CODE_20BDCA:        B5 B8         LDA $B8,x                 
CODE_20BDCC:        29 08         AND #$08                  
CODE_20BDCE:        F0 04         BEQ CODE_20BDD4           
CODE_20BDD0:        A9 17         LDA #$17                  
CODE_20BDD2:        95 8D         STA $8D,x                 
CODE_20BDD4:        B5 83         LDA $83,x                 
CODE_20BDD6:        F0 36         BEQ CODE_20BE0E           
CODE_20BDD8:        B5 8F         LDA $8F,x                 
CODE_20BDDA:        F0 32         BEQ CODE_20BE0E           
CODE_20BDDC:        C9 02         CMP #$02                  
CODE_20BDDE:        D0 24         BNE CODE_20BE04           
CODE_20BDE0:        A9 15         LDA #$15                  
CODE_20BDE2:        B4 6B         LDY $6B,x                 
CODE_20BDE4:        30 26         BMI CODE_20BE0C           
CODE_20BDE6:        B5 95         LDA $95,x                 
CODE_20BDE8:        F0 05         BEQ CODE_20BDEF           
CODE_20BDEA:        D6 95         DEC $95,x                 
CODE_20BDEC:        4C F9 BD      JMP CODE_20BDF9           

CODE_20BDEF:        B5 B8         LDA $B8,x                 
CODE_20BDF1:        29 80         AND #$80                  
CODE_20BDF3:        F0 04         BEQ CODE_20BDF9           
CODE_20BDF5:        A9 0A         LDA #$0A                  
CODE_20BDF7:        95 95         STA $95,x                 
CODE_20BDF9:        B5 95         LDA $95,x                 
CODE_20BDFB:        4A            LSR A                     
CODE_20BDFC:        4A            LSR A                     
CODE_20BDFD:        A8            TAY                       
CODE_20BDFE:        B9 36 BB      LDA DATA_20BB36,y               
CODE_20BE01:        4C 0C BE      JMP CODE_20BE0C           

CODE_20BE04:        A9 14         LDA #$14                  
CODE_20BE06:        B4 6B         LDY $6B,x                 
CODE_20BE08:        30 02         BMI CODE_20BE0C           
CODE_20BE0A:        A9 00         LDA #$00                  
CODE_20BE0C:        95 8D         STA $8D,x                 
CODE_20BE0E:        B5 9B         LDA $9B,x                 
CODE_20BE10:        F0 06         BEQ CODE_20BE18           
CODE_20BE12:        D6 9B         DEC $9B,x                 
CODE_20BE14:        A9 0D         LDA #$0D                  
CODE_20BE16:        95 8D         STA $8D,x                 
CODE_20BE18:        B5 99         LDA $99,x                 
CODE_20BE1A:        F0 06         BEQ CODE_20BE22           
CODE_20BE1C:        D6 99         DEC $99,x                 
CODE_20BE1E:        A9 16         LDA #$16                  
CODE_20BE20:        95 8D         STA $8D,x                 
CODE_20BE22:        8A            TXA                       
CODE_20BE23:        D0 18         BNE CODE_20BE3D           
CODE_20BE25:        A5 9D         LDA $9D                   
CODE_20BE27:        F0 14         BEQ CODE_20BE3D           
CODE_20BE29:        4A            LSR A                     
CODE_20BE2A:        4A            LSR A                     
CODE_20BE2B:        A8            TAY                       
CODE_20BE2C:        B9 3D BB      LDA.w DATA_21BB3D,y               
CODE_20BE2F:        85 8D         STA $8D                   
CODE_20BE31:        A0 00         LDY #$00                  
CODE_20BE33:        C9 11         CMP #$11                  
CODE_20BE35:        F0 02         BEQ CODE_20BE39           
CODE_20BE37:        A0 01         LDY #$01                  
CODE_20BE39:        84 8F         STY $8F                   
CODE_20BE3B:        C6 9D         DEC $9D                   
CODE_20BE3D:        B5 97         LDA $97,x                 
CODE_20BE3F:        D0 08         BNE CODE_20BE49           
CODE_20BE41:        B5 BA         LDA $BA,x                 
CODE_20BE43:        29 20         AND #$20                  
CODE_20BE45:        F0 2F         BEQ CODE_20BE76           
CODE_20BE47:        95 97         STA $97,x                 
CODE_20BE49:        B4 89         LDY $89,x                 
CODE_20BE4B:        B5 83         LDA $83,x                 
CODE_20BE4D:        F0 02         BEQ CODE_20BE51           
CODE_20BE4F:        A0 00         LDY #$00                  
CODE_20BE51:        B9 39 BB      LDA.w DATA_21BB39,y               
CODE_20BE54:        95 8D         STA $8D,x                 
CODE_20BE56:        A5 00         LDA $00                   
CODE_20BE58:        F0 04         BEQ CODE_20BE5E           
CODE_20BE5A:        A9 08         LDA #$08                  
CODE_20BE5C:        95 99         STA $99,x                 
CODE_20BE5E:        B5 99         LDA $99,x                 
CODE_20BE60:        F0 06         BEQ CODE_20BE68           
CODE_20BE62:        D6 99         DEC $99,x                 
CODE_20BE64:        A9 0A         LDA #$0A                  
CODE_20BE66:        95 8D         STA $8D,x                 
CODE_20BE68:        B5 BA         LDA $BA,x                 
CODE_20BE6A:        29 40         AND #$40                  
CODE_20BE6C:        F0 08         BEQ CODE_20BE76           
CODE_20BE6E:        74 97         STZ $97,x                 
CODE_20BE70:        74 99         STZ $99,x                 
CODE_20BE72:        A9 0A         LDA #$0A                  
CODE_20BE74:        95 9B         STA $9B,x                 
CODE_20BE76:        AB            PLB                       
CODE_20BE77:        60            RTS                       

DATA_20BE78:        db $10,$08,$00

DATA_20BE7B:        db $00,$02,$04

DATA_20BE7E:        db $06,$08,$0A,$10,$12,$14,$16,$18
                    db $1A

DATA_20BE87:        db $00,$06

DATA_20BE89:        db $0A,$1A

DATA_20BE8B:        db $07,$05

CODE_20BE8D:        DA            PHX                       ;
CODE_20BE8E:        20 7C E0      JSR CODE_20E07C           ;
CODE_20BE91:        FA            PLX                       ;
CODE_20BE92:        80 05         BRA CODE_20BE99           ;

CODE_20BE94:        DA            PHX                       
CODE_20BE95:        20 A2 E0      JSR CODE_20E0A2           
CODE_20BE98:        FA            PLX                       
CODE_20BE99:        8B            PHB                       
CODE_20BE9A:        4B            PHK                       
CODE_20BE9B:        AB            PLB                       
CODE_20BE9C:        A9 20         LDA #$20                  
CODE_20BE9E:        85 0B         STA $0B                   
CODE_20BEA0:        B5 8F         LDA $8F,x                 
CODE_20BEA2:        D0 08         BNE CODE_20BEAC           
CODE_20BEA4:        B5 B8         LDA $B8,x                 
CODE_20BEA6:        29 10         AND #$10                  
CODE_20BEA8:        F0 02         BEQ CODE_20BEAC           
CODE_20BEAA:        85 0B         STA $0B                   
CODE_20BEAC:        B5 5B         LDA $5B,x                 
CODE_20BEAE:        85 0E         STA $0E                   
CODE_20BEB0:        B5 53         LDA $53,x                 
CODE_20BEB2:        85 0F         STA $0F                   
CODE_20BEB4:        B5 85         LDA $85,x                 
CODE_20BEB6:        85 0D         STA $0D                   
CODE_20BEB8:        B5 93         LDA $93,x                 
CODE_20BEBA:        85 0C         STA $0C                   
CODE_20BEBC:        DA            PHX                       
CODE_20BEBD:        A6 9F         LDX $9F                   
CODE_20BEBF:        BF 8B BE 20   LDA.l DATA_20BE8B,x             
CODE_20BEC3:        0A            ASL A                     
CODE_20BEC4:        85 08         STA $08                   
CODE_20BEC6:        FA            PLX                       
CODE_20BEC7:        BD 87 BE      LDA.w DATA_20BE87,x               
CODE_20BECA:        85 00         STA $00                   
CODE_20BECC:        B5 91         LDA $91,x                 
CODE_20BECE:        AA            TAX                       
CODE_20BECF:        DA            PHX                       
CODE_20BED0:        A0 02         LDY #$02                  
CODE_20BED2:        5A            PHY                       
CODE_20BED3:        A4 00         LDY $00                   
CODE_20BED5:        B9 7B BE      LDA DATA_20BE7B,y               
CODE_20BED8:        9D 1A 08      STA $081A,x               
CODE_20BEDB:        1A            INC A                     
CODE_20BEDC:        9D 1E 08      STA $081E,x               
CODE_20BEDF:        B9 7E BE      LDA DATA_20BE7E,y               
CODE_20BEE2:        9D 02 08      STA $0802,x               
CODE_20BEE5:        1A            INC A                     
CODE_20BEE6:        9D 06 08      STA $0806,x               
CODE_20BEE9:        7A            PLY                       
CODE_20BEEA:        A5 0D         LDA $0D                   
CODE_20BEEC:        29 C0         AND #$C0                  
CODE_20BEEE:        05 08         ORA $08                   
CODE_20BEF0:        05 0B         ORA $0B                   
CODE_20BEF2:        9D 03 08      STA $0803,x               
CODE_20BEF5:        9D 07 08      STA $0807,x               
CODE_20BEF8:        9D 1B 08      STA $081B,x               
CODE_20BEFB:        9D 1F 08      STA $081F,x               
CODE_20BEFE:        06 0C         ASL $0C                   
CODE_20BF00:        B0 17         BCS CODE_20BF19                   
CODE_20BF02:        A5 0E         LDA $0E                   
CODE_20BF04:        9D 19 08      STA $0819,x               
CODE_20BF07:        18            CLC                       
CODE_20BF08:        69 08         ADC #$08                  
CODE_20BF0A:        9D 1D 08      STA $081D,x               
CODE_20BF0D:        18            CLC                       
CODE_20BF0E:        69 08         ADC #$08                  
CODE_20BF10:        9D 01 08      STA $0801,x               
CODE_20BF13:        18            CLC                       
CODE_20BF14:        69 08         ADC #$08                  
CODE_20BF16:        9D 05 08      STA $0805,x               
CODE_20BF19:        A5 0F         LDA $0F                   
CODE_20BF1B:        18            CLC                       
CODE_20BF1C:        79 78 BE      ADC DATA_20BE78,y               
CODE_20BF1F:        9D 00 08      STA $0800,x               
CODE_20BF22:        9D 04 08      STA $0804,x               
CODE_20BF25:        9D 18 08      STA $0818,x               
CODE_20BF28:        9D 1C 08      STA $081C,x               
CODE_20BF2B:        DA            PHX                       
CODE_20BF2C:        8A            TXA                       
CODE_20BF2D:        4A            LSR A                     
CODE_20BF2E:        4A            LSR A                     
CODE_20BF2F:        AA            TAX                       
CODE_20BF30:        A9 00         LDA #$00                  
CODE_20BF32:        9D 20 0A      STA $0A20,x               
CODE_20BF35:        9D 21 0A      STA $0A21,x               
CODE_20BF38:        9D 26 0A      STA $0A26,x               
CODE_20BF3B:        9D 27 0A      STA $0A27,x               
CODE_20BF3E:        FA            PLX                       
CODE_20BF3F:        E8            INX                       
CODE_20BF40:        E8            INX                       
CODE_20BF41:        E8            INX                       
CODE_20BF42:        E8            INX                       
CODE_20BF43:        E8            INX                       
CODE_20BF44:        E8            INX                       
CODE_20BF45:        E8            INX                       
CODE_20BF46:        E8            INX                       
CODE_20BF47:        E6 00         INC $00                   
CODE_20BF49:        88            DEY                       
CODE_20BF4A:        10 86         BPL CODE_20BED2           
CODE_20BF4C:        FA            PLX                       
CODE_20BF4D:        A5 0D         LDA $0D                   
CODE_20BF4F:        29 40         AND #$40                  
CODE_20BF51:        F0 4A         BEQ CODE_20BF9D           
CODE_20BF53:        BD 02 08      LDA $0802,x               
CODE_20BF56:        48            PHA                       
CODE_20BF57:        BD 0A 08      LDA $080A,x               
CODE_20BF5A:        9D 02 08      STA $0802,x               
CODE_20BF5D:        68            PLA                       
CODE_20BF5E:        9D 0A 08      STA $080A,x               
CODE_20BF61:        BD 06 08      LDA $0806,x               
CODE_20BF64:        48            PHA                       
CODE_20BF65:        BD 0E 08      LDA $080E,x               
CODE_20BF68:        9D 06 08      STA $0806,x               
CODE_20BF6B:        68            PLA                       
CODE_20BF6C:        9D 0E 08      STA $080E,x               
CODE_20BF6F:        BD 10 08      LDA $0810,x               
CODE_20BF72:        18            CLC                       
CODE_20BF73:        69 E8         ADC #$E8                  
CODE_20BF75:        9D 10 08      STA $0810,x               
CODE_20BF78:        9D 14 08      STA $0814,x               
CODE_20BF7B:        9D 28 08      STA $0828,x               
CODE_20BF7E:        9D 2C 08      STA $082C,x               
CODE_20BF81:        BD 1A 08      LDA $081A,x               
CODE_20BF84:        48            PHA                       
CODE_20BF85:        BD 22 08      LDA $0822,x               
CODE_20BF88:        9D 1A 08      STA $081A,x               
CODE_20BF8B:        68            PLA                       
CODE_20BF8C:        9D 22 08      STA $0822,x               
CODE_20BF8F:        BD 1E 08      LDA $081E,x               
CODE_20BF92:        48            PHA                       
CODE_20BF93:        BD 26 08      LDA $0826,x               
CODE_20BF96:        9D 1E 08      STA $081E,x               
CODE_20BF99:        68            PLA                       
CODE_20BF9A:        9D 26 08      STA $0826,x               
CODE_20BF9D:        C2 20         REP #$20                  
CODE_20BF9F:        A0 0C         LDY #$0C                  
CODE_20BFA1:        A5 9F         LDA $9F                   
CODE_20BFA3:        29 FF 00      AND #$00FF                
CODE_20BFA6:        D0 02         BNE CODE_20BFAA           
CODE_20BFA8:        A0 00         LDY #$00                  
CODE_20BFAA:        B9 26 02      LDA $0226,y               
CODE_20BFAD:        D9 28 02      CMP $0228,y               
CODE_20BFB0:        D0 21         BNE CODE_20BFD3           
CODE_20BFB2:        E2 20         SEP #$20                  
CODE_20BFB4:        BD 1B 08      LDA $081B,x               
CODE_20BFB7:        29 BF         AND #$BF                  
CODE_20BFB9:        9D 03 08      STA $0803,x               
CODE_20BFBC:        9D 07 08      STA $0807,x               
CODE_20BFBF:        9D 1B 08      STA $081B,x               
CODE_20BFC2:        9D 1F 08      STA $081F,x               
CODE_20BFC5:        09 40         ORA #$40                  
CODE_20BFC7:        9D 0B 08      STA $080B,x               
CODE_20BFCA:        9D 0F 08      STA $080F,x               
CODE_20BFCD:        9D 23 08      STA $0823,x               
CODE_20BFD0:        9D 27 08      STA $0827,x               
CODE_20BFD3:        E2 20         SEP #$20                  
CODE_20BFD5:        A4 9F         LDY $9F                   
CODE_20BFD7:        B9 8D 00      LDA $008D,y               
CODE_20BFDA:        C9 0D         CMP #$0D                  
CODE_20BFDC:        D0 33         BNE CODE_20C011           
CODE_20BFDE:        BD 01 08      LDA $0801,x               
CODE_20BFE1:        9D 11 08      STA $0811,x               
CODE_20BFE4:        BD 05 08      LDA $0805,x               
CODE_20BFE7:        9D 15 08      STA $0815,x               
CODE_20BFEA:        A9 F8         LDA #$F8                  
CODE_20BFEC:        A4 0D         LDY $0D                   
CODE_20BFEE:        F0 02         BEQ CODE_20BFF2           
CODE_20BFF0:        A9 10         LDA #$10                  
CODE_20BFF2:        18            CLC                       
CODE_20BFF3:        7D 18 08      ADC $0818,x               
CODE_20BFF6:        9D 10 08      STA $0810,x               
CODE_20BFF9:        9D 14 08      STA $0814,x               
CODE_20BFFC:        A4 9F         LDY $9F                   
CODE_20BFFE:        B9 89 BE      LDA DATA_20BE89,y               
CODE_20C001:        9D 12 08      STA $0812,x               
CODE_20C004:        1A            INC A                     
CODE_20C005:        9D 16 08      STA $0816,x               
CODE_20C008:        BD 1B 08      LDA $081B,x               
CODE_20C00B:        9D 13 08      STA $0813,x               
CODE_20C00E:        9D 17 08      STA $0817,x               
CODE_20C011:        A6 9F         LDX $9F                   
CODE_20C013:        AB            PLB                       
CODE_20C014:        60            RTS                       

DATA_20C015:        db $00,$00,$00,$00,$00,$FF

DATA_20C01B:        db $00,$08,$10,$00,$08,$F8

DATA_20C021:        db $80,$40,$20,$80,$40,$20

CODE_20C027:        8B            PHB       
CODE_20C028:        4B            PHK         
CODE_20C029:        AB            PLB                       
CODE_20C02A:        A9 00         LDA #$00                  
CODE_20C02C:        95 93         STA $93,x                 
CODE_20C02E:        A0 02         LDY #$02                  
CODE_20C030:        B5 85         LDA $85,x                 
CODE_20C032:        29 40         AND #$40                  
CODE_20C034:        F0 02         BEQ CODE_20C038           
CODE_20C036:        A0 05         LDY #$05                  
CODE_20C038:        B5 53         LDA $53,x                 
CODE_20C03A:        18            CLC                       
CODE_20C03B:        79 1B C0      ADC DATA_20C01B,y               
CODE_20C03E:        B5 43         LDA $43,x                 
CODE_20C040:        79 15 C0      ADC DATA_20C015,y               
CODE_20C043:        F0 07         BEQ CODE_20C04C           
CODE_20C045:        B5 93         LDA $93,x                 
CODE_20C047:        19 21 C0      ORA DATA_20C021,y               
CODE_20C04A:        95 93         STA $93,x                 
CODE_20C04C:        88            DEY                       
CODE_20C04D:        30 04         BMI CODE_20C053           
CODE_20C04F:        C0 02         CPY #$02                  
CODE_20C051:        D0 E5         BNE CODE_20C038           
CODE_20C053:        AB            PLB                       
CODE_20C054:        60            RTS                       

DATA_20C055:        db $86,$84,$82,$80

CODE_20C059:        DA            PHX
CODE_20C05A:        8A            TXA                       
CODE_20C05B:        D0 05         BNE CODE_20C062           
CODE_20C05D:        AD 11 05      LDA $0511                 
CODE_20C060:        D0 03         BNE CODE_20C065           
CODE_20C062:        82 80 00      BRL CODE_20C0E5           

CODE_20C065:        CE 11 05      DEC $0511                 
CODE_20C068:        29 0C         AND #$0C                  
CODE_20C06A:        4A            LSR A                     
CODE_20C06B:        4A            LSR A                     
CODE_20C06C:        AA            TAX                       
CODE_20C06D:        BF 55 C0 20   LDA.l DATA_20C055,x             
CODE_20C071:        85 01         STA $01                   
CODE_20C073:        A4 91         LDY $91                   
CODE_20C075:        A9 C0         LDA #$C0                  
CODE_20C077:        85 00         STA $00                   
CODE_20C079:        A5 5B         LDA $5B                   
CODE_20C07B:        18            CLC                       
CODE_20C07C:        69 08         ADC #$08                  
CODE_20C07E:        99 01 08      STA $0801,y               
CODE_20C081:        18            CLC                       
CODE_20C082:        69 08         ADC #$08                  
CODE_20C084:        99 05 08      STA $0805,y               
CODE_20C087:        A5 01         LDA $01                   
CODE_20C089:        99 02 08      STA $0802,y               
CODE_20C08C:        1A            INC A                     
CODE_20C08D:        99 06 08      STA $0806,y               
CODE_20C090:        A5 00         LDA $00                   
CODE_20C092:        09 24         ORA #$24                  
CODE_20C094:        99 03 08      STA $0803,y               
CODE_20C097:        99 07 08      STA $0807,y               
CODE_20C09A:        A5 53         LDA $53                   
CODE_20C09C:        99 00 08      STA $0800,y               
CODE_20C09F:        99 04 08      STA $0804,y               
CODE_20C0A2:        A5 00         LDA $00                   
CODE_20C0A4:        29 F0         AND #$F0                  
CODE_20C0A6:        F0 1A         BEQ CODE_20C0C2           
CODE_20C0A8:        B9 00 08      LDA $0800,y               
CODE_20C0AB:        18            CLC                       
CODE_20C0AC:        69 08         ADC #$08                  
CODE_20C0AE:        99 00 08      STA $0800,y               
CODE_20C0B1:        99 04 08      STA $0804,y               
CODE_20C0B4:        B9 01 08      LDA $0801,y               
CODE_20C0B7:        48            PHA                       
CODE_20C0B8:        B9 05 08      LDA $0805,y               
CODE_20C0BB:        99 01 08      STA $0801,y               
CODE_20C0BE:        68            PLA                       
CODE_20C0BF:        99 05 08      STA $0805,y               
CODE_20C0C2:        5A            PHY                       
CODE_20C0C3:        98            TYA                       
CODE_20C0C4:        4A            LSR A                     
CODE_20C0C5:        4A            LSR A                     
CODE_20C0C6:        A8            TAY                       
CODE_20C0C7:        A9 00         LDA #$00                  
CODE_20C0C9:        99 20 0A      STA $0A20,y               
CODE_20C0CC:        99 21 0A      STA $0A21,y               
CODE_20C0CF:        7A            PLY                       
CODE_20C0D0:        C8            INY                       
CODE_20C0D1:        C8            INY                       
CODE_20C0D2:        C8            INY                       
CODE_20C0D3:        C8            INY                       
CODE_20C0D4:        C8            INY                       
CODE_20C0D5:        C8            INY                       
CODE_20C0D6:        C8            INY                       
CODE_20C0D7:        C8            INY                       
CODE_20C0D8:        A5 00         LDA $00                   
CODE_20C0DA:        38            SEC                       
CODE_20C0DB:        E9 C0         SBC #$C0                  
CODE_20C0DD:        85 00         STA $00                   
CODE_20C0DF:        B0 98         BCS CODE_20C079                   
CODE_20C0E1:        64 6B         STZ $6B                   
CODE_20C0E3:        64 63         STZ $63                   
CODE_20C0E5:        FA            PLX                       
CODE_20C0E6:        60            RTS                       

CODE_20C0E7:        A2 05         LDX #$05                  
CODE_20C0E9:        B5 A6         LDA $A6,x                 
CODE_20C0EB:        F0 0D         BEQ CODE_20C0FA           
CODE_20C0ED:        C9 01         CMP #$01                  
CODE_20C0EF:        D0 06         BNE CODE_20C0F7           
CODE_20C0F1:        20 0C C1      JSR CODE_20C10C           
CODE_20C0F4:        4C FA C0      JMP CODE_20C0FA           

CODE_20C0F7:        20 40 C1      JSR CODE_20C140           
CODE_20C0FA:        BD 13 05      LDA $0513,x               
CODE_20C0FD:        F0 03         BEQ CODE_20C102           
CODE_20C0FF:        DE 13 05      DEC $0513,x               
CODE_20C102:        CA            DEX                       
CODE_20C103:        10 E4         BPL CODE_20C0E9           
CODE_20C105:        60            RTS                       

DATA_20C106:        db $D0,$20,$60,$43,$B0,$78

CODE_20C10C:        BF 06 C1 20   LDA.l DATA_20C106,x             
CODE_20C110:        95 55         STA $55,x                 
CODE_20C112:        74 5D         STZ $5D,x                 
CODE_20C114:        74 65         STZ $65,x                 
CODE_20C116:        74 6D         STZ $6D,x                 
CODE_20C118:        F6 A6         INC $A6,x                 
CODE_20C11A:        8A            TXA                       
CODE_20C11B:        22 1F FB 20   JSL CODE_20FB1F           ; ExecutePtrShort

PNTR_20C11F:          dw CODE_20C139
               dw CODE_20C139
               dw CODE_20C12B
               dw CODE_20C13A
               dw CODE_20C139
               dw CODE_20C139

CODE_20C12B:        74 65         STZ $65,x
CODE_20C12D:        9E 19 05      STZ $0519,x
CODE_20C130:        A9 10         LDA #$10
CODE_20C132:        9D 13 05      STA $0513,x      
CODE_20C135:        A9 04         LDA #$04                  
CODE_20C137:        95 6D         STA $6D,x                 
CODE_20C139:        60            RTS                       

CODE_20C13A:        A9 B9         LDA #$B9                  
CODE_20C13C:        9D 19 05      STA $0519,x               
CODE_20C13F:        60            RTS                       

CODE_20C140:        8A            TXA                       
CODE_20C141:        22 1F FB 20   JSL CODE_20FB1F           ; ExecutePtrShort

PNTR_20C145:          dw CODE_20C151
               dw CODE_20C164
               dw CODE_20C17A
               dw CODE_20C1DD
               dw CODE_20C229
               dw CODE_20C273

CODE_20C151:        20 B2 C3      JSR CODE_20C3B2           
CODE_20C154:        D0 08         BNE CODE_20C15E           
CODE_20C156:        A9 20         LDA #$20                  
CODE_20C158:        95 65         STA $65,x                 
CODE_20C15A:        A9 B0         LDA #$B0                  
CODE_20C15C:        95 6D         STA $6D,x                 
CODE_20C15E:        20 18 C4      JSR CODE_20C418           
CODE_20C161:        4C CE C3      JMP CODE_20C3CE           

CODE_20C164:        20 B2 C3      JSR CODE_20C3B2           
CODE_20C167:        D0 04         BNE CODE_20C16D           
CODE_20C169:        A9 F0         LDA #$F0                  
CODE_20C16B:        95 65         STA $65,x                 
CODE_20C16D:        20 18 C4      JSR CODE_20C418           
CODE_20C170:        4C CE C3      JMP CODE_20C3CE           

DATA_20C173:        db $02,$FE

DATA_20C175:        db $20,$E0

DATA_20C177:        db $0A,$F6,$08

CODE_20C17A:        8B            PHB                       
CODE_20C17B:        4B            PHK                       
CODE_20C17C:        AB            PLB                       
CODE_20C17D:        BD 13 05      LDA $0513,x               
CODE_20C180:        F0 0C         BEQ CODE_20C18E           
CODE_20C182:        20 08 C5      JSR CODE_20C508           
CODE_20C185:        F6 6D         INC $6D,x                 
CODE_20C187:        B5 6D         LDA $6D,x                 
CODE_20C189:        D0 2C         BNE CODE_20C1B7           
CODE_20C18B:        9E 13 05      STZ $0513,x               
CODE_20C18E:        BD 19 05      LDA $0519,x               
CODE_20C191:        29 01         AND #$01                  
CODE_20C193:        A8            TAY                       
CODE_20C194:        B9 73 C1      LDA DATA_20C173,y               
CODE_20C197:        18            CLC                       
CODE_20C198:        75 65         ADC $65,x                 
CODE_20C19A:        95 65         STA $65,x                 
CODE_20C19C:        D9 75 C1      CMP DATA_20C175,y               
CODE_20C19F:        D0 03         BNE CODE_20C1A4           
CODE_20C1A1:        FE 19 05      INC $0519,x               
CODE_20C1A4:        B5 65         LDA $65,x                 
CODE_20C1A6:        10 01         BPL CODE_20C1A9           
CODE_20C1A8:        C8            INY                       
CODE_20C1A9:        B9 77 C1      LDA DATA_20C177,y               
CODE_20C1AC:        18            CLC                       
CODE_20C1AD:        69 06         ADC #$06                  
CODE_20C1AF:        95 6D         STA $6D,x                 
CODE_20C1B1:        20 00 C5      JSR CODE_20C500           
CODE_20C1B4:        20 08 C5      JSR CODE_20C508           
CODE_20C1B7:        A9 40         LDA #$40                  
CODE_20C1B9:        B4 65         LDY $65,x                 
CODE_20C1BB:        F0 06         BEQ CODE_20C1C3           
CODE_20C1BD:        10 02         BPL CODE_20C1C1           
CODE_20C1BF:        A9 00         LDA #$00                  
CODE_20C1C1:        95 A0         STA $A0,x                 
CODE_20C1C3:        20 18 C4      JSR CODE_20C418           
CODE_20C1C6:        B5 5D         LDA $5D,x                 
CODE_20C1C8:        29 F0         AND #$F0                  
CODE_20C1CA:        C9 50         CMP #$50                  
CODE_20C1CC:        D0 0D         BNE CODE_20C1DB           
CODE_20C1CE:        A9 00         LDA #$00                  
CODE_20C1D0:        95 A6         STA $A6,x                 
CODE_20C1D2:        A9 13         LDA #$13                  
CODE_20C1D4:        8D 11 05      STA $0511                 
CODE_20C1D7:        A9 02         LDA #$02                  
CODE_20C1D9:        85 8F         STA $8F                   
CODE_20C1DB:        AB            PLB                       
CODE_20C1DC:        60            RTS                       

CODE_20C1DD:        20 B2 C3      JSR CODE_20C3B2           
CODE_20C1E0:        D0 3B         BNE CODE_20C21D           
CODE_20C1E2:        BD 19 05      LDA $0519,x               
CODE_20C1E5:        F0 06         BEQ CODE_20C1ED           
CODE_20C1E7:        DE 19 05      DEC $0519,x               
CODE_20C1EA:        4C 18 C4      JMP CODE_20C418           

CODE_20C1ED:        B5 55         LDA $55,x                 
CODE_20C1EF:        C9 30         CMP #$30                  
CODE_20C1F1:        B0 26         BCS CODE_20C219                  
CODE_20C1F3:        BD 13 05      LDA $0513,x               
CODE_20C1F6:        D0 05         BNE CODE_20C1FD           
CODE_20C1F8:        A9 10         LDA #$10                  
CODE_20C1FA:        9D 13 05      STA $0513,x               
CODE_20C1FD:        C9 01         CMP #$01                  
CODE_20C1FF:        D0 04         BNE CODE_20C205           
CODE_20C201:        A9 00         LDA #$00                  
CODE_20C203:        95 A6         STA $A6,x                 
CODE_20C205:        B5 65         LDA $65,x                 
CODE_20C207:        F0 08         BEQ CODE_20C211           
CODE_20C209:        A9 00         LDA #$00                  
CODE_20C20B:        95 65         STA $65,x                 
CODE_20C20D:        A9 D0         LDA #$D0                  
CODE_20C20F:        85 6B         STA $6B                   
CODE_20C211:        A9 01         LDA #$01                  
CODE_20C213:        9D 1F 05      STA $051F,x               
CODE_20C216:        4C 18 C4      JMP CODE_20C418           

CODE_20C219:        A9 F8         LDA #$F8                  
CODE_20C21B:        95 65         STA $65,x                 
CODE_20C21D:        A5 15         LDA $15                   
CODE_20C21F:        29 08         AND #$08                  
CODE_20C221:        0A            ASL A                     
CODE_20C222:        0A            ASL A                     
CODE_20C223:        0A            ASL A                     
CODE_20C224:        95 A0         STA $A0,x                 
CODE_20C226:        4C 18 C4      JMP CODE_20C418           

CODE_20C229:        BD 19 05      LDA $0519,x               
CODE_20C22C:        D0 0C         BNE CODE_20C23A           
CODE_20C22E:        B5 55         LDA $55,x                 
CODE_20C230:        38            SEC                       
CODE_20C231:        E5 5A         SBC $5A                   
CODE_20C233:        C9 10         CMP #$10                  
CODE_20C235:        B0 29         BCS CODE_20C260                  
CODE_20C237:        FE 19 05      INC $0519,x               
CODE_20C23A:        B5 65         LDA $65,x                 
CODE_20C23C:        D0 0C         BNE CODE_20C24A           
CODE_20C23E:        A9 10         LDA #$10                  
CODE_20C240:        95 65         STA $65,x                 
CODE_20C242:        A9 C0         LDA #$C0                  
CODE_20C244:        95 6D         STA $6D,x                 
CODE_20C246:        A9 80         LDA #$80                  
CODE_20C248:        95 A0         STA $A0,x                 
CODE_20C24A:        B5 6D         LDA $6D,x                 
CODE_20C24C:        18            CLC                       
CODE_20C24D:        69 04         ADC #$04                  
CODE_20C24F:        95 6D         STA $6D,x                 
CODE_20C251:        20 00 C5      JSR CODE_20C500           
CODE_20C254:        20 08 C5      JSR CODE_20C508           
CODE_20C257:        B5 4D         LDA $4D,x                 
CODE_20C259:        F0 15         BEQ CODE_20C270           
CODE_20C25B:        A9 00         LDA #$00                  
CODE_20C25D:        95 A6         STA $A6,x                 
CODE_20C25F:        60            RTS                       

CODE_20C260:        20 B2 C3      JSR CODE_20C3B2           
CODE_20C263:        D0 0B         BNE CODE_20C270           
CODE_20C265:        A9 20         LDA #$20                  
CODE_20C267:        38            SEC                       
CODE_20C268:        F5 6D         SBC $6D,x                 
CODE_20C26A:        90 02         BCC CODE_20C26E           
CODE_20C26C:        A9 00         LDA #$00                  
CODE_20C26E:        95 6D         STA $6D,x                 
CODE_20C270:        4C 18 C4      JMP CODE_20C418           

CODE_20C273:        B5 A6         LDA $A6,x                 
CODE_20C275:        38            SEC                       
CODE_20C276:        E9 02         SBC #$02                  
CODE_20C278:        22 1F FB 20   JSL CODE_20FB1F           ; ExecutePtrShort

PNTR_20C27C:          dw CODE_20C286
               dw CODE_20C2A8
               dw CODE_20C2CA
               dw CODE_20C2F3
               dw CODE_20C31A

CODE_20C286:        20 B2 C3      JSR CODE_20C3B2
CODE_20C289:        D0 06         BNE CODE_20C291           
CODE_20C28B:        F6 A6         INC $A6,x                 
CODE_20C28D:        74 65         STZ $65,x                 
CODE_20C28F:        80 14         BRA CODE_20C2A5           

CODE_20C291:        B5 5D         LDA $5D,x                 
CODE_20C293:        C9 90         CMP #$90                  
CODE_20C295:        90 0E         BCC CODE_20C2A5           
CODE_20C297:        B5 65         LDA $65,x                 
CODE_20C299:        D0 0A         BNE CODE_20C2A5           
CODE_20C29B:        A9 E8         LDA #$E8                  
CODE_20C29D:        95 65         STA $65,x                 
CODE_20C29F:        95 6D         STA $6D,x                 
CODE_20C2A1:        A9 10         LDA #$10                  
CODE_20C2A3:        85 99         STA $99                   
CODE_20C2A5:        4C 42 C3      JMP CODE_20C342           

CODE_20C2A8:        20 B2 C3      JSR CODE_20C3B2           
CODE_20C2AB:        A5 BA         LDA $BA                   
CODE_20C2AD:        29 10         AND #$10                  
CODE_20C2AF:        F0 08         BEQ CODE_20C2B9           
CODE_20C2B1:        A9 0A         LDA #$0A                  
CODE_20C2B3:        85 9B         STA $9B                   
CODE_20C2B5:        A9 30         LDA #$30                  
CODE_20C2B7:        95 65         STA $65,x                 
CODE_20C2B9:        B5 45         LDA $45,x                 
CODE_20C2BB:        F0 04         BEQ CODE_20C2C1           
CODE_20C2BD:        A9 00         LDA #$00                  
CODE_20C2BF:        95 65         STA $65,x                 
CODE_20C2C1:        A5 98         LDA $98                   
CODE_20C2C3:        F0 02         BEQ CODE_20C2C7           
CODE_20C2C5:        F6 A6         INC $A6,x                 
CODE_20C2C7:        4C 42 C3      JMP CODE_20C342           

CODE_20C2CA:        A5 98         LDA $98                   
CODE_20C2CC:        F0 09         BEQ CODE_20C2D7           
CODE_20C2CE:        A9 D0         LDA #$D0                  
CODE_20C2D0:        95 65         STA $65,x                 
CODE_20C2D2:        A0 01         LDY #$01                  
CODE_20C2D4:        4C 6F C3      JMP CODE_20C36F           

CODE_20C2D7:        20 B2 C3      JSR CODE_20C3B2           
CODE_20C2DA:        B5 55         LDA $55,x                 
CODE_20C2DC:        C9 38         CMP #$38                  
CODE_20C2DE:        B0 0A         BCS CODE_20C2EA                
CODE_20C2E0:        B5 65         LDA $65,x                 
CODE_20C2E2:        F0 06         BEQ CODE_20C2EA           
CODE_20C2E4:        74 65         STZ $65,x                 
CODE_20C2E6:        A9 D0         LDA #$D0                  
CODE_20C2E8:        85 6B         STA $6B                   
CODE_20C2EA:        A5 97         LDA $97                   
CODE_20C2EC:        F0 02         BEQ CODE_20C2F0           
CODE_20C2EE:        F6 A6         INC $A6,x                 
CODE_20C2F0:        4C 42 C3      JMP CODE_20C342           

CODE_20C2F3:        A5 97         LDA $97                   
CODE_20C2F5:        F0 05         BEQ CODE_20C2FC           
CODE_20C2F7:        A0 00         LDY #$00                  
CODE_20C2F9:        4C 6F C3      JMP CODE_20C36F           

CODE_20C2FC:        20 B2 C3      JSR CODE_20C3B2           
CODE_20C2FF:        A9 30         LDA #$30                  
CODE_20C301:        95 65         STA $65,x                 
CODE_20C303:        B5 45         LDA $45,x                 
CODE_20C305:        F0 10         BEQ CODE_20C317           
CODE_20C307:        A9 FF         LDA #$FF                  
CODE_20C309:        95 45         STA $45,x                 
CODE_20C30B:        A9 F0         LDA #$F0                  
CODE_20C30D:        95 55         STA $55,x                 
CODE_20C30F:        A9 30         LDA #$30                  
CODE_20C311:        9D 13 05      STA $0513,x               
CODE_20C314:        F6 A6         INC $A6,x                 
CODE_20C316:        60            RTS                       

CODE_20C317:        4C 42 C3      JMP CODE_20C342           

CODE_20C31A:        BD 13 05      LDA $0513,x               
CODE_20C31D:        D0 22         BNE CODE_20C341           
CODE_20C31F:        A5 9D         LDA $9D                   
CODE_20C321:        D0 18         BNE CODE_20C33B           
CODE_20C323:        20 B2 C3      JSR CODE_20C3B2           
CODE_20C326:        B5 45         LDA $45,x                 
CODE_20C328:        D0 11         BNE CODE_20C33B           
CODE_20C32A:        A5 8F         LDA $8F                   
CODE_20C32C:        F0 0D         BEQ CODE_20C33B           
CODE_20C32E:        A5 53         LDA $53                   
CODE_20C330:        38            SEC                       
CODE_20C331:        F5 55         SBC $55,x                 
CODE_20C333:        C9 10         CMP #$10                  
CODE_20C335:        B0 04         BCS CODE_20C33B                   
CODE_20C337:        A9 2C         LDA #$2C                  
CODE_20C339:        85 9D         STA $9D                   
CODE_20C33B:        20 CE C3      JSR CODE_20C3CE           
CODE_20C33E:        20 42 C3      JSR CODE_20C342           
CODE_20C341:        60            RTS                       

CODE_20C342:        B5 65         LDA $65,x                 
CODE_20C344:        F0 16         BEQ CODE_20C35C           
CODE_20C346:        A5 9D         LDA $9D                   
CODE_20C348:        D0 12         BNE CODE_20C35C           
CODE_20C34A:        A5 15         LDA $15                   
CODE_20C34C:        29 06         AND #$06                  
CODE_20C34E:        48            PHA                       
CODE_20C34F:        4A            LSR A                     
CODE_20C350:        9D 1F 05      STA $051F,x               
CODE_20C353:        68            PLA                       
CODE_20C354:        29 04         AND #$04                  
CODE_20C356:        0A            ASL A                     
CODE_20C357:        0A            ASL A                     
CODE_20C358:        0A            ASL A                     
CODE_20C359:        0A            ASL A                     
CODE_20C35A:        95 A0         STA $A0,x                 
CODE_20C35C:        4C 18 C4      JMP CODE_20C418           

DATA_20C35F:        db $F4,$F6,$FA,$FE,$02,$06,$0A,$0C
                    db $0C,$0A,$06,$02,$FE,$FA,$F6,$F4

CODE_20C36F:        B9 53 00      LDA $0053,y                 
CODE_20C372:        95 55         STA $55,x                  
CODE_20C374:        B9 43 00      LDA $0043,y               
CODE_20C377:        95 45         STA $45,x                 
CODE_20C379:        B9 5B 00      LDA $005B,y               
CODE_20C37C:        18            CLC                       
CODE_20C37D:        69 0D         ADC #$0D                  
CODE_20C37F:        95 5D         STA $5D,x                 
CODE_20C381:        B9 85 00      LDA $0085,y               
CODE_20C384:        08            PHP                       
CODE_20C385:        B9 99 00      LDA $0099,y               
CODE_20C388:        28            PLP                       
CODE_20C389:        48            PHA                       
CODE_20C38A:        F0 03         BEQ CODE_20C38F           
CODE_20C38C:        18            CLC                       
CODE_20C38D:        69 08         ADC #$08                  
CODE_20C38F:        86 0F         STX $0F                   
CODE_20C391:        AA            TAX                       
CODE_20C392:        BF 5F C3 20   LDA.l DATA_20C35F,x             
CODE_20C396:        10 04         BPL CODE_20C39C           
CODE_20C398:        A6 0F         LDX $0F                   
CODE_20C39A:        D6 45         DEC $45,x                 
CODE_20C39C:        A6 0F         LDX $0F                   
CODE_20C39E:        18            CLC                       
CODE_20C39F:        75 55         ADC $55,x                 
CODE_20C3A1:        95 55         STA $55,x                 
CODE_20C3A3:        90 02         BCC CODE_20C3A7           
CODE_20C3A5:        F6 45         INC $45,x                 
CODE_20C3A7:        68            PLA                       
CODE_20C3A8:        D0 03         BNE CODE_20C3AD           
CODE_20C3AA:        4C 18 C4      JMP CODE_20C418           

CODE_20C3AD:        A9 00         LDA #$00                  
CODE_20C3AF:        4C 1C C4      JMP CODE_20C41C           

CODE_20C3B2:        B5 6D         LDA $6D,x                 
CODE_20C3B4:        18            CLC                       
CODE_20C3B5:        69 04         ADC #$04                  
CODE_20C3B7:        95 6D         STA $6D,x                 
CODE_20C3B9:        20 08 C5      JSR CODE_20C508           
CODE_20C3BC:        20 00 C5      JSR CODE_20C500           
CODE_20C3BF:        B5 5D         LDA $5D,x                 
CODE_20C3C1:        29 F0         AND #$F0                  
CODE_20C3C3:        C9 B0         CMP #$B0                  
CODE_20C3C5:        D0 02         BNE CODE_20C3C9           
CODE_20C3C7:        95 5D         STA $5D,x                 
CODE_20C3C9:        60            RTS                       

DATA_20C3CA:        db $F0,$30

DATA_20C3CC:        db $FF,$00

CODE_20C3CE:        DA            PHX          
CODE_20C3CF:        9B            TXY         
CODE_20C3D0:        A2 00         LDX #$00                  
CODE_20C3D2:        B9 45 00      LDA $0045,y               
CODE_20C3D5:        F0 19         BEQ CODE_20C3F0           
CODE_20C3D7:        10 01         BPL CODE_20C3DA           
CODE_20C3D9:        E8            INX                       
CODE_20C3DA:        B9 55 00      LDA $0055,y               
CODE_20C3DD:        18            CLC                       
CODE_20C3DE:        7F CA C3 20   ADC.l DATA_20C3CA,x             
CODE_20C3E2:        B9 45 00      LDA $0045,y               
CODE_20C3E5:        7F CC C3 20   ADC.l DATA_20C3CC,x             
CODE_20C3E9:        F0 05         BEQ CODE_20C3F0           
CODE_20C3EB:        A9 00         LDA #$00                  
CODE_20C3ED:        99 A6 00      STA $00A6,y               
CODE_20C3F0:        FA            PLX                       
CODE_20C3F1:        60            RTS                       

DATA_20C3F2:        db $F8,$F8,$F4,$F4,$F0,$F2,$FA,$FC
                    db $FE,$FE,$DC,$DC,$D4,$D4,$D6,$D8
                    db $DA,$DA,$D6,$D8

DATA_20C406:        db $00,$02,$04,$06,$0A,$0C

DATA_20C40C:        db $00,$10,$20,$50,$40,$30

DATA_20C412:        db $01,$01,$01,$01,$02,$02

CODE_20C418:        BF 0C C4 20   LDA.l DATA_20C40C,x
CODE_20C41C:        48            PHA                       
CODE_20C41D:        BF 12 C4 20   LDA.l DATA_20C412,x             
CODE_20C421:        0A            ASL A                     
CODE_20C422:        85 02         STA $02                   
CODE_20C424:        DA            PHX                       
CODE_20C425:        BD 1F 05      LDA $051F,x               
CODE_20C428:        0A            ASL A                     
CODE_20C429:        18            CLC                       
CODE_20C42A:        7F 06 C4 20   ADC.l DATA_20C406,x             
CODE_20C42E:        AA            TAX                       
CODE_20C42F:        BF F2 C3 20   LDA.l DATA_20C3F2,x             
CODE_20C433:        85 00         STA $00                   
CODE_20C435:        BF F3 C3 20   LDA.l DATA_20C3F2+1,x             
CODE_20C439:        85 01         STA $01                   
CODE_20C43B:        FA            PLX                       
CODE_20C43C:        68            PLA                       
CODE_20C43D:        A8            TAY                       
CODE_20C43E:        B5 5D         LDA $5D,x                 
CODE_20C440:        C9 E8         CMP #$E8                  
CODE_20C442:        90 01         BCC CODE_20C445           
CODE_20C444:        60            RTS                       

CODE_20C445:        99 01 09      STA $0901,y               
CODE_20C448:        99 05 09      STA $0905,y               
CODE_20C44B:        18            CLC                       
CODE_20C44C:        69 08         ADC #$08                  
CODE_20C44E:        99 09 09      STA $0909,y               
CODE_20C451:        99 0D 09      STA $090D,y               
CODE_20C454:        B5 55         LDA $55,x                 
CODE_20C456:        99 00 09      STA $0900,y               
CODE_20C459:        99 08 09      STA $0908,y               
CODE_20C45C:        18            CLC                       
CODE_20C45D:        69 08         ADC #$08                  
CODE_20C45F:        99 04 09      STA $0904,y               
CODE_20C462:        99 0C 09      STA $090C,y               
CODE_20C465:        A5 02         LDA $02                   
CODE_20C467:        15 A0         ORA $A0,x                 
CODE_20C469:        09 30         ORA #$30                  
CODE_20C46B:        99 03 09      STA $0903,y               
CODE_20C46E:        99 07 09      STA $0907,y               
CODE_20C471:        99 0B 09      STA $090B,y               
CODE_20C474:        99 0F 09      STA $090F,y               
CODE_20C477:        A5 00         LDA $00                   
CODE_20C479:        48            PHA                       
CODE_20C47A:        99 02 09      STA $0902,y               
CODE_20C47D:        1A            INC A                     
CODE_20C47E:        99 0A 09      STA $090A,y               
CODE_20C481:        A5 01         LDA $01                   
CODE_20C483:        99 06 09      STA $0906,y               
CODE_20C486:        1A            INC A                     
CODE_20C487:        99 0E 09      STA $090E,y               
CODE_20C48A:        B5 A0         LDA $A0,x                 
CODE_20C48C:        F0 12         BEQ CODE_20C4A0           
CODE_20C48E:        A5 01         LDA $01                   
CODE_20C490:        99 02 09      STA $0902,y               
CODE_20C493:        1A            INC A                     
CODE_20C494:        99 0A 09      STA $090A,y               
CODE_20C497:        A5 00         LDA $00                   
CODE_20C499:        99 06 09      STA $0906,y               
CODE_20C49C:        1A            INC A                     
CODE_20C49D:        99 0E 09      STA $090E,y               
CODE_20C4A0:        B5 A0         LDA $A0,x                 
CODE_20C4A2:        29 80         AND #$80                  
CODE_20C4A4:        F0 12         BEQ CODE_20C4B8           
CODE_20C4A6:        A5 01         LDA $01                   
CODE_20C4A8:        99 0A 09      STA $090A,y               
CODE_20C4AB:        1A            INC A                     
CODE_20C4AC:        99 02 09      STA $0902,y               
CODE_20C4AF:        A5 00         LDA $00                   
CODE_20C4B1:        99 0E 09      STA $090E,y               
CODE_20C4B4:        1A            INC A                     
CODE_20C4B5:        99 06 09      STA $0906,y               
CODE_20C4B8:        68            PLA                       
CODE_20C4B9:        C5 01         CMP $01                   
CODE_20C4BB:        D0 13         BNE CODE_20C4D0           
CODE_20C4BD:        B9 03 09      LDA $0903,y               
CODE_20C4C0:        29 BF         AND #$BF                  
CODE_20C4C2:        99 03 09      STA $0903,y               
CODE_20C4C5:        99 0B 09      STA $090B,y               
CODE_20C4C8:        09 40         ORA #$40                  
CODE_20C4CA:        99 07 09      STA $0907,y               
CODE_20C4CD:        99 0F 09      STA $090F,y               
CODE_20C4D0:        64 D8         STZ $D8                   
CODE_20C4D2:        64 D9         STZ $D9                   
CODE_20C4D4:        B5 45         LDA $45,x                 
CODE_20C4D6:        F0 02         BEQ CODE_20C4DA           
CODE_20C4D8:        E6 D8         INC $D8                   
CODE_20C4DA:        B5 55         LDA $55,x                 
CODE_20C4DC:        18            CLC                       
CODE_20C4DD:        69 08         ADC #$08                  
CODE_20C4DF:        A9 00         LDA #$00                  
CODE_20C4E1:        75 45         ADC $45,x                 
CODE_20C4E3:        F0 02         BEQ CODE_20C4E7           
CODE_20C4E5:        E6 D9         INC $D9                   
CODE_20C4E7:        98            TYA                       
CODE_20C4E8:        4A            LSR A                     
CODE_20C4E9:        4A            LSR A                     
CODE_20C4EA:        A8            TAY                       
CODE_20C4EB:        A5 D8         LDA $D8                   
CODE_20C4ED:        29 01         AND #$01                  
CODE_20C4EF:        99 60 0A      STA $0A60,y               
CODE_20C4F2:        99 62 0A      STA $0A62,y               
CODE_20C4F5:        A5 D9         LDA $D9                   
CODE_20C4F7:        29 01         AND #$01                  
CODE_20C4F9:        99 61 0A      STA $0A61,y               
CODE_20C4FC:        99 63 0A      STA $0A63,y               
CODE_20C4FF:        60            RTS                       

CODE_20C500:        E8            INX                       
CODE_20C501:        E8            INX                       
CODE_20C502:        20 DF BC      JSR CODE_20BCDF           
CODE_20C505:        CA            DEX                       
CODE_20C506:        CA            DEX                       
CODE_20C507:        60            RTS                       

CODE_20C508:        B5 6D         LDA $6D,x                 
CODE_20C50A:        30 08         BMI CODE_20C514           
CODE_20C50C:        C9 60         CMP #$60                  
CODE_20C50E:        30 04         BMI CODE_20C514           
CODE_20C510:        A9 60         LDA #$60                  
CODE_20C512:        95 6D         STA $6D,x                 
CODE_20C514:        E8            INX                       
CODE_20C515:        E8            INX                       
CODE_20C516:        20 1A BD      JSR CODE_20BD1A           
CODE_20C519:        CA            DEX                       
CODE_20C51A:        CA            DEX                       
CODE_20C51B:        60            RTS                       

DATA_20C51C:        db $00,$30,$60,$90

CODE_20C520:        22 A9 E0 22   JSL CODE_22E0A9
CODE_20C524:        A2 03         LDX #$03
CODE_20C526:        B5 A6         LDA $A6,x
CODE_20C528:        F0 0C         BEQ CODE_20C536
CODE_20C52A:        C9 01         CMP #$01
CODE_20C52C:        D0 05         BNE CODE_20C533           
CODE_20C52E:        20 3A C5      JSR CODE_20C53A           
CODE_20C531:        80 03         BRA CODE_20C536           

CODE_20C533:        20 68 C5      JSR CODE_20C568           
CODE_20C536:        CA            DEX                       
CODE_20C537:        10 ED         BPL CODE_20C526           
CODE_20C539:        60            RTS                       

CODE_20C53A:        F6 A6         INC $A6,x                 
CODE_20C53C:        A9 FF         LDA #$FF                  
CODE_20C53E:        95 45         STA $45,x                 
CODE_20C540:        A9 F0         LDA #$F0                  
CODE_20C542:        95 55         STA $55,x                 
CODE_20C544:        A9 08         LDA #$08                  
CODE_20C546:        E0 03         CPX #$03                  
CODE_20C548:        D0 02         BNE CODE_20C54C           
CODE_20C54A:        A9 12         LDA #$12                  
CODE_20C54C:        95 65         STA $65,x                 
CODE_20C54E:        60            RTS                       

DATA_20C54F:        db $E0,$F0,$00

DATA_20C552:        db $20,$20,$90,$00

DATA_20C556:        db $44,$44,$44

DATA_20C559:        db $44,$44,$44

DATA_20C55C:        db $B0,$E4,$E8,$B0,$E4,$EE

DATA_20C562:        db $E0,$E2,$E6,$E0,$EA,$EC

CODE_20C568:        20 00 C5      JSR CODE_20C500
CODE_20C56B:        20 CE C3      JSR CODE_20C3CE
CODE_20C56E:        B5 45         LDA $45,x
CODE_20C570:        D0 12         BNE CODE_20C584                 
CODE_20C572:        BF 52 C5 20   LDA.l DATA_20C552,x
CODE_20C576:        F0 0C         BEQ CODE_20C584
CODE_20C578:        D5 55         CMP $55,x                 
CODE_20C57A:        B0 08         BCS CODE_20C584                   
CODE_20C57C:        E8            INX                       
CODE_20C57D:        B5 A6         LDA $A6,x                 
CODE_20C57F:        D0 02         BNE CODE_20C583           
CODE_20C581:        F6 A6         INC $A6,x                 
CODE_20C583:        CA            DEX                       
CODE_20C584:        A5 15         LDA $15                   
CODE_20C586:        4A            LSR A                     
CODE_20C587:        4A            LSR A                     
CODE_20C588:        E0 03         CPX #$03                  
CODE_20C58A:        F0 01         BEQ CODE_20C58D           
CODE_20C58C:        4A            LSR A                     
CODE_20C58D:        29 01         AND #$01                  
CODE_20C58F:        F0 02         BEQ CODE_20C593           
CODE_20C591:        A9 03         LDA #$03                  
CODE_20C593:        9D 1F 05      STA $051F,x               
CODE_20C596:        86 02         STX $02                   
CODE_20C598:        B5 55         LDA $55,x                 
CODE_20C59A:        85 00         STA $00                   
CODE_20C59C:        BD 1F 05      LDA $051F,x               
CODE_20C59F:        85 01         STA $01                   
CODE_20C5A1:        BF 1C C5 20   LDA.l DATA_20C51C,x             
CODE_20C5A5:        A8            TAY                       
CODE_20C5A6:        A2 02         LDX #$02                  
CODE_20C5A8:        A9 BA         LDA #$BA                  
CODE_20C5AA:        18            CLC                       
CODE_20C5AB:        7F 4F C5 20   ADC.l DATA_20C54F,x             
CODE_20C5AF:        99 01 09      STA $0901,y               
CODE_20C5B2:        99 05 09      STA $0905,y               
CODE_20C5B5:        18            CLC                       
CODE_20C5B6:        69 08         ADC #$08                  
CODE_20C5B8:        99 09 09      STA $0909,y               
CODE_20C5BB:        99 0D 09      STA $090D,y               
CODE_20C5BE:        8A            TXA                       
CODE_20C5BF:        48            PHA                       
CODE_20C5C0:        18            CLC                       
CODE_20C5C1:        65 01         ADC $01                   
CODE_20C5C3:        AA            TAX                       
CODE_20C5C4:        BF 5C C5 20   LDA.l DATA_20C55C,x             
CODE_20C5C8:        99 02 09      STA $0902,y               
CODE_20C5CB:        1A            INC A                     
CODE_20C5CC:        99 0A 09      STA $090A,y               
CODE_20C5CF:        BF 62 C5 20   LDA.l DATA_20C562,x             
CODE_20C5D3:        99 06 09      STA $0906,y               
CODE_20C5D6:        1A            INC A                     
CODE_20C5D7:        99 0E 09      STA $090E,y               
CODE_20C5DA:        5A            PHY                       
CODE_20C5DB:        A6 02         LDX $02                   
CODE_20C5DD:        20 D0 C4      JSR CODE_20C4D0           
CODE_20C5E0:        7A            PLY                       
CODE_20C5E1:        68            PLA                       
CODE_20C5E2:        AA            TAX                       
CODE_20C5E3:        BF 56 C5 20   LDA.l DATA_20C556,x             
CODE_20C5E7:        09 20         ORA #$20                  
CODE_20C5E9:        99 03 09      STA $0903,y               
CODE_20C5EC:        99 0B 09      STA $090B,y               
CODE_20C5EF:        BF 59 C5 20   LDA.l DATA_20C559,x             
CODE_20C5F3:        09 20         ORA #$20                  
CODE_20C5F5:        99 07 09      STA $0907,y               
CODE_20C5F8:        99 0F 09      STA $090F,y               
CODE_20C5FB:        A5 00         LDA $00                   
CODE_20C5FD:        99 00 09      STA $0900,y               
CODE_20C600:        99 08 09      STA $0908,y               
CODE_20C603:        18            CLC                       
CODE_20C604:        69 08         ADC #$08                  
CODE_20C606:        99 04 09      STA $0904,y               
CODE_20C609:        99 0C 09      STA $090C,y               
CODE_20C60C:        98            TYA                       
CODE_20C60D:        18            CLC                       
CODE_20C60E:        69 10         ADC #$10                  
CODE_20C610:        A8            TAY                       
CODE_20C611:        CA            DEX                       
CODE_20C612:        10 94         BPL CODE_20C5A8           
CODE_20C614:        A6 02         LDX $02                   
CODE_20C616:        60            RTS                       

CODE_20C617:        9C BF 1E      STZ $1EBF                 
CODE_20C61A:        9C 00 42      STZ $4200                 
CODE_20C61D:        22 63 8B 00   JSL CODE_008B63           
CODE_20C621:        C2 20         REP #$20                  
CODE_20C623:        A2 80         LDX #$80                  
CODE_20C625:        8E 15 21      STX $2115                 
CODE_20C628:        A9 00 20      LDA #$2000                
CODE_20C62B:        8D 16 21      STA $2116                 
CODE_20C62E:        A9 01 18      LDA #$1801                
CODE_20C631:        8D 00 43      STA $4300                 
CODE_20C634:        A9 00 E0      LDA #$E000                
CODE_20C637:        8D 02 43      STA $4302                 
CODE_20C63A:        A2 35         LDX #$35                  
CODE_20C63C:        8E 04 43      STX $4304                 
CODE_20C63F:        A9 00 20      LDA #$2000                
CODE_20C642:        8D 05 43      STA $4305                 
CODE_20C645:        A2 01         LDX #$01                  
CODE_20C647:        8E 0B 42      STX $420B                 
CODE_20C64A:        A9 00 34      LDA #$3400                
CODE_20C64D:        8D 16 21      STA $2116                 
CODE_20C650:        A9 01 18      LDA #$1801                
CODE_20C653:        8D 00 43      STA $4300                 
CODE_20C656:        A9 00 90      LDA #$9000                
CODE_20C659:        8D 02 43      STA $4302                 
CODE_20C65C:        A2 32         LDX #$32                  
CODE_20C65E:        8E 04 43      STX $4304                 
CODE_20C661:        A9 00 10      LDA #$1000                
CODE_20C664:        8D 05 43      STA $4305                 
CODE_20C667:        A2 01         LDX #$01                  
CODE_20C669:        8E 0B 42      STX $420B                 
CODE_20C66C:        C2 10         REP #$10                  
CODE_20C66E:        8B            PHB                       
CODE_20C66F:        A2 20 A1      LDX #$A120                
CODE_20C672:        A0 20 13      LDY #$1320                
CODE_20C675:        A9 DF 00      LDA #$00DF                
CODE_20C678:        54 00 3C      MVN $3C00                 
CODE_20C67B:        A2 C0 A8      LDX #$A8C0                
CODE_20C67E:        A0 20 13      LDY #$1320                
CODE_20C681:        A9 1F 00      LDA #$001F                
CODE_20C684:        54 00 3C      MVN $3C00                 
CODE_20C687:        A2 00 88      LDX #$8800                
CODE_20C68A:        A0 00 14      LDY #$1400                
CODE_20C68D:        A9 9F 00      LDA #$009F                
CODE_20C690:        54 00 3C      MVN $3C00                 
CODE_20C693:        A2 E0 8B      LDX #$8BE0                
CODE_20C696:        A0 A0 14      LDY #$14A0                
CODE_20C699:        A9 1F 00      LDA #$001F                
CODE_20C69C:        54 00 3C      MVN $3C00                 
CODE_20C69F:        AB            PLB                       
CODE_20C6A0:        8B            PHB                       
CODE_20C6A1:        A2 A0 88      LDX #$88A0                
CODE_20C6A4:        AD 26 07      LDA $0726                 
CODE_20C6A7:        29 FF 00      AND #$00FF                
CODE_20C6AA:        F0 03         BEQ CODE_20C6AF           
CODE_20C6AC:        A2 E0 88      LDX #$88E0                
CODE_20C6AF:        A0 E0 14      LDY #$14E0                
CODE_20C6B2:        A9 1F 00      LDA #$001F                
CODE_20C6B5:        54 00 3C      MVN $3C00                 
CODE_20C6B8:        AB            PLB                       
CODE_20C6B9:        E2 30         SEP #$30                  
CODE_20C6BB:        C2 20         REP #$20                  
CODE_20C6BD:        A2 00         LDX #$00                  
CODE_20C6BF:        A9 FF 00      LDA #$00FF                
CODE_20C6C2:        9F 00 90 7F   STA $7F9000,x             
CODE_20C6C6:        9F 70 90 7F   STA $7F9070,x             
CODE_20C6CA:        9F E0 90 7F   STA $7F90E0,x             
CODE_20C6CE:        9F 50 91 7F   STA $7F9150,x             
CODE_20C6D2:        9F 00 92 7F   STA $7F9200,x             
CODE_20C6D6:        9F 70 92 7F   STA $7F9270,x             
CODE_20C6DA:        9F E0 92 7F   STA $7F92E0,x             
CODE_20C6DE:        9F 50 93 7F   STA $7F9350,x             
CODE_20C6E2:        E8            INX                       
CODE_20C6E3:        E8            INX                       
CODE_20C6E4:        E0 70         CPX #$70                  
CODE_20C6E6:        D0 DA         BNE CODE_20C6C2           
CODE_20C6E8:        A9 41 26      LDA #$2641                
CODE_20C6EB:        8D 70 43      STA $4370                 
CODE_20C6EE:        A9 59 F8      LDA #$F859                
CODE_20C6F1:        8D 72 43      STA $4372                 
CODE_20C6F4:        A2 2A         LDX #$2A                  
CODE_20C6F6:        8E 74 43      STX $4374                 
CODE_20C6F9:        A2 7F         LDX #$7F                  
CODE_20C6FB:        8E 77 43      STX $4377                 
CODE_20C6FE:        A9 41 28      LDA #$2841                
CODE_20C701:        8D 60 43      STA $4360                 
CODE_20C704:        A9 60 F8      LDA #$F860                
CODE_20C707:        8D 62 43      STA $4362                 
CODE_20C70A:        A2 2A         LDX #$2A                  
CODE_20C70C:        8E 64 43      STX $4364                 
CODE_20C70F:        A2 7F         LDX #$7F                  
CODE_20C711:        8E 67 43      STX $4367                 
CODE_20C714:        9C 2A 21      STZ $212A                 
CODE_20C717:        E2 20         SEP #$20                  
CODE_20C719:        A9 25         LDA #$25                  
CODE_20C71B:        8D 05 02      STA $0205                 
CODE_20C71E:        A9 45         LDA #$45                  
CODE_20C720:        8D 06 02      STA $0206                 
CODE_20C723:        A9 85         LDA #$85                  
CODE_20C725:        8D 07 02      STA $0207                 
CODE_20C728:        A9 A0         LDA #$A0                  
CODE_20C72A:        8D 02 02      STA $0202                 
CODE_20C72D:        A9 10         LDA #$10                  
CODE_20C72F:        8D 03 02      STA $0203                 
CODE_20C732:        A9 32         LDA #$32                  
CODE_20C734:        8D 04 02      STA $0204                 
CODE_20C737:        A2 01         LDX #$01                  
CODE_20C739:        8E 00 15      STX $1500                 
CODE_20C73C:        A9 FF         LDA #$FF                  
CODE_20C73E:        85 00         STA $00                   
CODE_20C740:        64 01         STZ $01                   
CODE_20C742:        20 0A FA      JSR CODE_20FA0A           
CODE_20C745:        A9 80         LDA #$80                  
CODE_20C747:        8D 01 01      STA $0101                 
CODE_20C74A:        A2 F5         LDX #$F5                  
CODE_20C74C:        74 00         STZ $00,x                 
CODE_20C74E:        CA            DEX                       
CODE_20C74F:        D0 FB         BNE CODE_20C74C           
CODE_20C751:        A9 EF         LDA #$EF                  
CODE_20C753:        8D 16 02      STA $0216                 
CODE_20C756:        A9 B0         LDA #$B0                  
CODE_20C758:        8D 18 02      STA $0218                 
CODE_20C75B:        20 28 B3      JSR CODE_20B328           
CODE_20C75E:        A9 51         LDA #$51                  
CODE_20C760:        0A            ASL A                     
CODE_20C761:        AA            TAX                       
CODE_20C762:        BF 01 D3 20   LDA.l PNTR_20D301,x             
CODE_20C766:        85 36         STA $36                   
CODE_20C768:        BF 02 D3 20   LDA.l PNTR_20D301+1,x             
CODE_20C76C:        85 37         STA $37                   
CODE_20C76E:        A9 20         LDA #$20                  
CODE_20C770:        85 38         STA $38                   
CODE_20C772:        22 AB E8 29   JSL CODE_29E8AB           
CODE_20C776:        A9 22         LDA #$22                  
CODE_20C778:        8D 50 03      STA $0350                 
CODE_20C77B:        22 B6 8D 2A   JSL CODE_2A8DB6           
CODE_20C77F:        A9 20         LDA #$20                  
CODE_20C781:        8D 12 06      STA $0612                 
CODE_20C784:        22 8E B4 2A   JSL CODE_2AB48E           
CODE_20C788:        A9 C0         LDA #$C0                  
CODE_20C78A:        8D 93 02      STA $0293                 
CODE_20C78D:        9C 49 02      STZ $0249                 
CODE_20C790:        9C 4A 02      STZ $024A                 
CODE_20C793:        A9 01         LDA #$01                  
CODE_20C795:        8D 0E 02      STA $020E                 
CODE_20C798:        A9 11         LDA #$11                  
CODE_20C79A:        8D 0F 02      STA $020F                 
CODE_20C79D:        A9 00         LDA #$00                  
CODE_20C79F:        85 16         STA $16                   
CODE_20C7A1:        8D 00 21      STA $2100                 
CODE_20C7A4:        A9 09         LDA #$09                  
CODE_20C7A6:        8D 0C 02      STA $020C                 
CODE_20C7A9:        8D 05 21      STA $2105                 
CODE_20C7AC:        A9 03         LDA #$03                  
CODE_20C7AE:        8D 1E 02      STA $021E                 
CODE_20C7B1:        A9 17         LDA #$17                  
CODE_20C7B3:        8D 08 02      STA $0208                 
CODE_20C7B6:        A9 80         LDA #$80                  
CODE_20C7B8:        8D 00 42      STA $4200                 
CODE_20C7BB:        20 B6 A4      JSR CODE_20A4B6           
CODE_20C7BE:        20 CA C7      JSR CODE_20C7CA           
CODE_20C7C1:        A5 A3         LDA $A3                   
CODE_20C7C3:        C9 07         CMP #$07                  
CODE_20C7C5:        D0 F4         BNE CODE_20C7BB           
CODE_20C7C7:        4C 96 CB      JMP CODE_20CB96           

CODE_20C7CA:        22 A9 E0 22   JSL CODE_22E0A9           
CODE_20C7CE:        A9 10         LDA #$10                  
CODE_20C7D0:        85 91         STA $91                   
CODE_20C7D2:        A9 40         LDA #$40                  
CODE_20C7D4:        85 92         STA $92                   
CODE_20C7D6:        A2 02         LDX #$02                  
CODE_20C7D8:        B5 A0         LDA $A0,x                 
CODE_20C7DA:        F0 02         BEQ CODE_20C7DE           
CODE_20C7DC:        D6 A0         DEC $A0,x                 
CODE_20C7DE:        CA            DEX                       
CODE_20C7DF:        10 F7         BPL CODE_20C7D8           
CODE_20C7E1:        20 09 C8      JSR CODE_20C809           
CODE_20C7E4:        A2 00         LDX #$00                  
CODE_20C7E6:        86 9F         STX $9F                   
CODE_20C7E8:        20 8D BE      JSR CODE_20BE8D           
CODE_20C7EB:        AD 26 07      LDA $0726                 
CODE_20C7EE:        F0 12         BEQ CODE_20C802           
CODE_20C7F0:        A0 24         LDY #$24                  
CODE_20C7F2:        B9 03 08      LDA $0803,y               
CODE_20C7F5:        09 02         ORA #$02                  
CODE_20C7F7:        99 03 08      STA $0803,y               
CODE_20C7FA:        88            DEY                       
CODE_20C7FB:        88            DEY                       
CODE_20C7FC:        88            DEY                       
CODE_20C7FD:        88            DEY                       
CODE_20C7FE:        C0 10         CPY #$10                  
CODE_20C800:        10 F0         BPL CODE_20C7F2           
CODE_20C802:        E8            INX                       
CODE_20C803:        86 9F         STX $9F                   
CODE_20C805:        20 99 BE      JSR CODE_20BE99           
CODE_20C808:        60            RTS                       

CODE_20C809:        A5 A3         LDA $A3                   
CODE_20C80B:        22 1F FB 20   JSL CODE_20FB1F           ; ExecutePtrShort

PNTR_20C80F:          dw CODE_20C81F
               dw CODE_20C856
               dw CODE_20C863
               dw CODE_20C895
               dw CODE_20C8B5
               dw CODE_20C986
               dw CODE_20C9C6
               dw CODE_20C9CE    

CODE_20C81F:        A9 EC         LDA #$EC
CODE_20C821:        85 53         STA $53                
CODE_20C823:        A9 FF         LDA #$FF                  
CODE_20C825:        85 43         STA $43                   
CODE_20C827:        A9 C8         LDA #$C8                  
CODE_20C829:        85 54         STA $54                   
CODE_20C82B:        A9 A0         LDA #$A0                  
CODE_20C82D:        85 5B         STA $5B                   
CODE_20C82F:        85 5C         STA $5C                   
CODE_20C831:        A9 18         LDA #$18                  
CODE_20C833:        85 8D         STA $8D                   
CODE_20C835:        A9 19         LDA #$19                  
CODE_20C837:        85 8E         STA $8E                   
CODE_20C839:        A9 40         LDA #$40                  
CODE_20C83B:        85 85         STA $85                   
CODE_20C83D:        85 86         STA $86                   
CODE_20C83F:        A9 01         LDA #$01                  
CODE_20C841:        85 8F         STA $8F                   
CODE_20C843:        A9 0F         LDA #$0F                  
CODE_20C845:        85 A0         STA $A0                   
CODE_20C847:        E6 A3         INC $A3                   
CODE_20C849:        A9 00         LDA #$00                  
CODE_20C84B:        85 A6         STA $A6                   
CODE_20C84D:        A9 50         LDA #$50                  
CODE_20C84F:        85 A5         STA $A5                   
CODE_20C851:        A9 C7         LDA #$C7                  
CODE_20C853:        85 A4         STA $A4                   
CODE_20C855:        60            RTS                       

CODE_20C856:        A5 A0         LDA $A0                   
CODE_20C858:        49 0F         EOR #$0F                  
CODE_20C85A:        85 16         STA $16                   
CODE_20C85C:        C9 0F         CMP #$0F                  
CODE_20C85E:        D0 02         BNE CODE_20C862           
CODE_20C860:        E6 A3         INC $A3                   
CODE_20C862:        60            RTS                       

CODE_20C863:        A5 53         LDA $53                   
CODE_20C865:        18            CLC                       
CODE_20C866:        69 01         ADC #$01                  
CODE_20C868:        85 53         STA $53                   
CODE_20C86A:        A5 43         LDA $43                   
CODE_20C86C:        69 00         ADC #$00                  
CODE_20C86E:        85 43         STA $43                   
CODE_20C870:        DA            PHX                       
CODE_20C871:        A5 15         LDA $15                   
CODE_20C873:        29 0C         AND #$0C                  
CODE_20C875:        4A            LSR A                     
CODE_20C876:        4A            LSR A                     
CODE_20C877:        AA            TAX                       
CODE_20C878:        BF 25 BB 20   LDA.l DATA_20BB25,x             
CODE_20C87C:        85 8D         STA $8D                   
CODE_20C87E:        A2 00         LDX #$00                  
CODE_20C880:        20 27 C0      JSR CODE_20C027           
CODE_20C883:        FA            PLX                       
CODE_20C884:        A5 53         LDA $53                   
CODE_20C886:        C9 20         CMP #$20                  
CODE_20C888:        D0 0A         BNE CODE_20C894           
CODE_20C88A:        A9 02         LDA #$02                  
CODE_20C88C:        85 8D         STA $8D                   
CODE_20C88E:        E6 A3         INC $A3                   
CODE_20C890:        A9 30         LDA #$30                  
CODE_20C892:        85 A0         STA $A0                   
CODE_20C894:        60            RTS                       

CODE_20C895:        A5 A0         LDA $A0                   
CODE_20C897:        C9 01         CMP #$01                  
CODE_20C899:        D0 0D         BNE CODE_20C8A8           
CODE_20C89B:        A9 02         LDA #$02                  
CODE_20C89D:        85 8D         STA $8D                   
CODE_20C89F:        A9 80         LDA #$80                  
CODE_20C8A1:        85 A1         STA $A1                   
CODE_20C8A3:        A9 01         LDA #$01                  
CODE_20C8A5:        8D 02 12      STA $1202                 
CODE_20C8A8:        A5 A1         LDA $A1                   
CODE_20C8AA:        C9 01         CMP #$01                  
CODE_20C8AC:        D0 06         BNE CODE_20C8B4           
CODE_20C8AE:        A9 13         LDA #$13                  
CODE_20C8B0:        85 A0         STA $A0                   
CODE_20C8B2:        E6 A3         INC $A3                   
CODE_20C8B4:        60            RTS                       

CODE_20C8B5:        A5 A0         LDA $A0                   
CODE_20C8B7:        F0 5D         BEQ CODE_20C916           
CODE_20C8B9:        A0 30         LDY #$30                  
CODE_20C8BB:        84 A1         STY $A1                   
CODE_20C8BD:        29 FE         AND #$FE                  
CODE_20C8BF:        AA            TAX                       
CODE_20C8C0:        A9 2A         LDA #$2A                  
CODE_20C8C2:        85 DA         STA $DA                   
CODE_20C8C4:        C2 20         REP #$20                  
CODE_20C8C6:        BF 72 C9 20   LDA.l PNTR_20C972,x             
CODE_20C8CA:        F0 48         BEQ CODE_20C914           
CODE_20C8CC:        85 D8         STA $D8                   
CODE_20C8CE:        A0 00         LDY #$00                  
CODE_20C8D0:        B7 D8         LDA [$D8],y               
CODE_20C8D2:        99 20 13      STA $1320,y               
CODE_20C8D5:        C8            INY                       
CODE_20C8D6:        C8            INY                       
CODE_20C8D7:        C0 20         CPY #$20                  
CODE_20C8D9:        D0 F5         BNE CODE_20C8D0           
CODE_20C8DB:        A0 01         LDY #$01                  
CODE_20C8DD:        8C 00 15      STY $1500                 
CODE_20C8E0:        A4 A0         LDY $A0                   
CODE_20C8E2:        C0 09         CPY #$09                  
CODE_20C8E4:        10 2E         BPL CODE_20C914           
CODE_20C8E6:        8B            PHB                       
CODE_20C8E7:        A0 7F         LDY #$7F                  
CODE_20C8E9:        5A            PHY                       
CODE_20C8EA:        AB            PLB                       
CODE_20C8EB:        C2 10         REP #$10                  
CODE_20C8ED:        A0 00 00      LDY #$0000                
CODE_20C8F0:        AF 49 02 00   LDA $000249               
CODE_20C8F4:        AA            TAX                       
CODE_20C8F5:        BF B1 EE 2A   LDA.l DATA_2AEEB1,x             
CODE_20C8F9:        9D 00 90      STA $9000,x               
CODE_20C8FC:        BF 31 F0 2A   LDA.l DATA_2AF031,x             
CODE_20C900:        9D 00 92      STA $9200,x               
CODE_20C903:        E8            INX                       
CODE_20C904:        E8            INX                       
CODE_20C905:        C8            INY                       
CODE_20C906:        C8            INY                       
CODE_20C907:        C0 30 00      CPY #$0030                
CODE_20C90A:        D0 E9         BNE CODE_20C8F5           
CODE_20C90C:        8A            TXA                       
CODE_20C90D:        8F 49 02 00   STA $000249               
CODE_20C911:        E2 10         SEP #$10                  
CODE_20C913:        AB            PLB                       
CODE_20C914:        E2 20         SEP #$20                  
CODE_20C916:        A5 A1         LDA $A1                   
CODE_20C918:        D0 57         BNE CODE_20C971           
CODE_20C91A:        E6 A3         INC $A3                   
CODE_20C91C:        A9 80         LDA #$80                  
CODE_20C91E:        85 A0         STA $A0                   
CODE_20C920:        A9 1A         LDA #$1A                  
CODE_20C922:        85 8E         STA $8E                   
CODE_20C924:        80 4B         BRA CODE_20C971           

CODE_20C926:        DA            PHX                       
CODE_20C927:        A2 00         LDX #$00                  
CODE_20C929:        AD 26 07      LDA $0726                 
CODE_20C92C:        F0 02         BEQ CODE_20C930           
CODE_20C92E:        A2 23         LDX #$23                  
CODE_20C930:        AD 15 07      LDA $0715                 
CODE_20C933:        9D 9F 1D      STA $1D9F,x               
CODE_20C936:        AD 16 07      LDA $0716                 
CODE_20C939:        9D A0 1D      STA $1DA0,x               
CODE_20C93C:        AD 17 07      LDA $0717                 
CODE_20C93F:        9D A1 1D      STA $1DA1,x               
CODE_20C942:        C2 20         REP #$20                  
CODE_20C944:        A2 08         LDX #$08                  
CODE_20C946:        BD 3C E4      LDA.w DATA_21E43C,x               
CODE_20C949:        9D ED 1E      STA $1EED,x               
CODE_20C94C:        BD 84 E4      LDA.w DATA_21E484,x               
CODE_20C94F:        9D 09 1F      STA $1F09,x               
CODE_20C952:        BD CC E4      LDA.w DATA_21E4CC,x               
CODE_20C955:        9D FB 1E      STA $1EFB,x               
CODE_20C958:        BD 14 E5      LDA.w DATA_21E514,x               
CODE_20C95B:        9D 17 1F      STA $1F17,x               
CODE_20C95E:        CA            DEX                       
CODE_20C95F:        CA            DEX                       
CODE_20C960:        10 E4         BPL CODE_20C946           
CODE_20C962:        E2 20         SEP #$20                  
CODE_20C964:        A2 7F         LDX #$7F                  
CODE_20C966:        9E 00 1D      STZ $1D00,x               
CODE_20C969:        CA            DEX                       
CODE_20C96A:        10 FA         BPL CODE_20C966           
CODE_20C96C:        22 2D 92 00   JSL CODE_00922D           
CODE_20C970:        FA            PLX                       
CODE_20C971:        60            RTS                       

PNTR_20C972:          dw $EE91
               dw $EE71
               dw $EE51
               dw $EE31
               dw $EE11
               dw $EDF1
               dw $EDD1
               dw $EDB1
               dw $0000
               dw $0000

CODE_20C986:        A5 A0         LDA $A0                   
CODE_20C988:        F0 09         BEQ CODE_20C993           
CODE_20C98A:        C9 60         CMP #$60                  
CODE_20C98C:        B0 04         BCS CODE_20C992                   
CODE_20C98E:        A9 00         LDA #$00                  
CODE_20C990:        85 86         STA $86                   
CODE_20C992:        60            RTS                       

CODE_20C993:        A5 53         LDA $53                   
CODE_20C995:        C9 68         CMP #$68                  
CODE_20C997:        90 0F         BCC CODE_20C9A8           
CODE_20C999:        A9 02         LDA #$02                  
CODE_20C99B:        85 8D         STA $8D                   
CODE_20C99D:        A9 1A         LDA #$1A                  
CODE_20C99F:        85 8E         STA $8E                   
CODE_20C9A1:        E6 A3         INC $A3                   
CODE_20C9A3:        A9 B0         LDA #$B0                  
CODE_20C9A5:        85 A0         STA $A0                   
CODE_20C9A7:        60            RTS                       

CODE_20C9A8:        A9 50         LDA #$50                  
CODE_20C9AA:        85 A1         STA $A1                   
CODE_20C9AC:        E6 53         INC $53                   
CODE_20C9AE:        C6 54         DEC $54                   
CODE_20C9B0:        DA            PHX                       
CODE_20C9B1:        A5 15         LDA $15                   
CODE_20C9B3:        29 0C         AND #$0C                  
CODE_20C9B5:        4A            LSR A                     
CODE_20C9B6:        4A            LSR A                     
CODE_20C9B7:        AA            TAX                       
CODE_20C9B8:        BF 25 BB 20   LDA.l DATA_20BB25,x             
CODE_20C9BC:        85 8D         STA $8D                   
CODE_20C9BE:        BF 2D BB 20   LDA.l DATA_20BB2D,x             
CODE_20C9C2:        85 8E         STA $8E                   
CODE_20C9C4:        FA            PLX                       
CODE_20C9C5:        60            RTS                       

CODE_20C9C6:        A5 A0         LDA $A0                   
CODE_20C9C8:        D0 03         BNE CODE_20C9CD           
CODE_20C9CA:        4C E3 C9      JMP CODE_20C9E3           

CODE_20C9CD:        60            RTS                       

CODE_20C9CE:        A5 A0         LDA $A0                   
CODE_20C9D0:        D0 09         BNE CODE_20C9DB           
CODE_20C9D2:        85 16         STA $16                   
CODE_20C9D4:        A5 A1         LDA $A1                   
CODE_20C9D6:        D0 02         BNE CODE_20C9DA           
CODE_20C9D8:        E6 A3         INC $A3                   
CODE_20C9DA:        60            RTS                       

CODE_20C9DB:        85 16         STA $16                   
CODE_20C9DD:        A9 10         LDA #$10                  
CODE_20C9DF:        8D A1 00      STA $00A1                 
CODE_20C9E2:        60            RTS                       

CODE_20C9E3:        A5 A7         LDA $A7                   
CODE_20C9E5:        22 1F FB 20   JSL CODE_20FB1F           ; ExecutePtrShort

PNTR_20C9E9:        dw CODE_20CA69
                    dw CODE_20CB26
                    dw CODE_20CB8B

DATA_20C9EF:        db $92,$21,$90,$21,$90,$21,$90,$21
                    db $90,$21,$90,$21,$90,$21,$90,$21
                    db $90,$21,$90,$21,$90,$21,$90,$21
                    db $90,$21,$90,$21,$90,$21,$90,$21
                    db $90,$21,$90,$21,$92,$61,$91,$21
                    db $FE,$21,$FE,$21,$FE,$21,$FE,$21
                    db $FE,$21,$FE,$21,$FE,$21,$FE,$21
                    db $FE,$21,$FE,$21,$FE,$21,$FE,$21
                    db $FE,$21,$FE,$21,$FE,$21,$FE,$21
                    db $FE,$21,$91,$61,$92,$A1,$90,$A1
                    db $90,$A1,$90,$A1,$90,$A1,$90,$A1
                    db $90,$A1,$90,$A1,$90,$A1,$90,$A1
                    db $90,$A1,$90,$A1,$90,$A1,$90,$A1
                    db $90,$A1,$90,$A1,$90,$A1,$90,$A1
                    db $92,$E1

DATA_20CA61:        db $00,$26,$26,$26,$26,$26
                    db $26,$4C

CODE_20CA69:        8B            PHB
CODE_20CA6A:        4B            PHK         
CODE_20CA6B:        AB            PLB                       
CODE_20CA6C:        AE 00 16      LDX $1600                 
CODE_20CA6F:        A5 A5         LDA $A5                   
CODE_20CA71:        9D 02 16      STA $1602,x               
CODE_20CA74:        A5 A4         LDA $A4                   
CODE_20CA76:        9D 03 16      STA $1603,x               
CODE_20CA79:        18            CLC                       
CODE_20CA7A:        69 20         ADC #$20                  
CODE_20CA7C:        85 A4         STA $A4                   
CODE_20CA7E:        90 02         BCC CODE_20CA82           
CODE_20CA80:        E6 A5         INC $A5                   
CODE_20CA82:        A9 00         LDA #$00                  
CODE_20CA84:        9D 04 16      STA $1604,x               
CODE_20CA87:        A9 25         LDA #$25                  
CODE_20CA89:        9D 05 16      STA $1605,x               
CODE_20CA8C:        85 00         STA $00                   
CODE_20CA8E:        A4 A6         LDY $A6                   
CODE_20CA90:        B9 61 CA      LDA DATA_20CA61,y               
CODE_20CA93:        A8            TAY                       
CODE_20CA94:        B9 EF C9      LDA DATA_20C9EF,y               
CODE_20CA97:        9D 06 16      STA $1606,x               
CODE_20CA9A:        C8            INY                       
CODE_20CA9B:        E8            INX                       
CODE_20CA9C:        C6 00         DEC $00                   
CODE_20CA9E:        10 F4         BPL CODE_20CA94           
CODE_20CAA0:        A9 FF         LDA #$FF                  
CODE_20CAA2:        9D 06 16      STA $1606,x               
CODE_20CAA5:        E8            INX                       
CODE_20CAA6:        E8            INX                       
CODE_20CAA7:        E8            INX                       
CODE_20CAA8:        E8            INX                       
CODE_20CAA9:        8E 00 16      STX $1600                 
CODE_20CAAC:        E6 A6         INC $A6                   
CODE_20CAAE:        A5 A6         LDA $A6                   
CODE_20CAB0:        C9 08         CMP #$08                  
CODE_20CAB2:        90 15         BCC CODE_20CAC9           
CODE_20CAB4:        A0 00         LDY #$00                  
CODE_20CAB6:        B9 25 CB      LDA DATA_20CB25,y               
CODE_20CAB9:        85 A6         STA $A6                   
CODE_20CABB:        A9 50         LDA #$50                  
CODE_20CABD:        85 A5         STA $A5                   
CODE_20CABF:        A9 E9         LDA #$E9                  
CODE_20CAC1:        85 A4         STA $A4                   
CODE_20CAC3:        A9 10         LDA #$10                  
CODE_20CAC5:        85 A2         STA $A2                   
CODE_20CAC7:        E6 A7         INC $A7                   
CODE_20CAC9:        AB            PLB                       
CODE_20CACA:        60            RTS                       

DATA_20CACB:        db $CD,$A7,$A0,$AD,$AA,$FE,$B8,$AE
                    db $B4,$D7,$FE,$BB,$B4,$B3,$FE,$AE
                    db $B4,$B1,$FE,$C9,$B1,$A8,$AD,$A2
                    db $A4,$B2,$B2,$FE,$A8,$B2,$A8,$AD
                    db $FE,$A0,$AD,$AE,$B3,$A7,$A4,$B1
                    db $FE,$FE,$FE,$FE,$FE,$A2,$A0,$B2
                    db $B3,$AB,$A4,$D4,$D7,$D7,$D7,$C3
                    db $B4,$B2,$B3,$FE,$AA,$A8,$A3,$A3
                    db $A8,$AD,$A6,$D4,$FE,$C1,$A0,$FE
                    db $A7,$A0,$FE,$A7,$A0,$D4,$FE,$BB
                    db $B8,$A4,$FE,$A1,$B8,$A4,$D7,$FE
                    db $FE,$FE

DATA_20CB25:        db $00

CODE_20CB26:        8B            PHB
CODE_20CB27:        4B            PHK                       
CODE_20CB28:        AB            PLB                       
CODE_20CB29:        A5 A2         LDA $A2                   
CODE_20CB2B:        D0 5C         BNE CODE_20CB89           
CODE_20CB2D:        AE 00 16      LDX $1600                 
CODE_20CB30:        A4 A6         LDY $A6                   
CODE_20CB32:        A5 A5         LDA $A5                   
CODE_20CB34:        9D 02 16      STA $1602,x               
CODE_20CB37:        A9 00         LDA #$00                  
CODE_20CB39:        9D 04 16      STA $1604,x               
CODE_20CB3C:        A9 01         LDA #$01                  
CODE_20CB3E:        9D 05 16      STA $1605,x               
CODE_20CB41:        B9 CB CA      LDA DATA_20CACB,y               
CODE_20CB44:        9D 06 16      STA $1606,x               
CODE_20CB47:        A9 21         LDA #$21                  
CODE_20CB49:        9D 07 16      STA $1607,x               
CODE_20CB4C:        A9 FF         LDA #$FF                  
CODE_20CB4E:        9D 08 16      STA $1608,x               
CODE_20CB51:        8A            TXA                       
CODE_20CB52:        18            CLC                       
CODE_20CB53:        69 06         ADC #$06                  
CODE_20CB55:        8D 00 16      STA $1600                 
CODE_20CB58:        A5 A4         LDA $A4                   
CODE_20CB5A:        9D 03 16      STA $1603,x               
CODE_20CB5D:        E6 A6         INC $A6                   
CODE_20CB5F:        E6 A4         INC $A4                   
CODE_20CB61:        29 1F         AND #$1F                  
CODE_20CB63:        C9 17         CMP #$17                  
CODE_20CB65:        D0 15         BNE CODE_20CB7C           
CODE_20CB67:        A5 A4         LDA $A4                   
CODE_20CB69:        18            CLC                       
CODE_20CB6A:        69 11         ADC #$11                  
CODE_20CB6C:        85 A4         STA $A4                   
CODE_20CB6E:        90 02         BCC CODE_20CB72           
CODE_20CB70:        E6 A5         INC $A5                   
CODE_20CB72:        C9 A9         CMP #$A9                  
CODE_20CB74:        D0 06         BNE CODE_20CB7C           
CODE_20CB76:        E6 A7         INC $A7                   
CODE_20CB78:        A9 4A         LDA #$4A                  
CODE_20CB7A:        85 A1         STA $A1                   
CODE_20CB7C:        A2 10         LDX #$10                  
CODE_20CB7E:        B9 CB CA      LDA DATA_20CACB,y               
CODE_20CB81:        C9 FE         CMP #$FE                  
CODE_20CB83:        D0 02         BNE CODE_20CB87           
CODE_20CB85:        A2 01         LDX #$01                  
CODE_20CB87:        86 A0         STX $A0                   
CODE_20CB89:        AB            PLB                       
CODE_20CB8A:        60            RTS                       

CODE_20CB8B:        A5 A1         LDA $A1                   
CODE_20CB8D:        D0 06         BNE CODE_20CB95           
CODE_20CB8F:        A9 0F         LDA #$0F                  
CODE_20CB91:        85 A0         STA $A0                   
CODE_20CB93:        E6 A3         INC $A3                   
CODE_20CB95:        60            RTS                       

CODE_20CB96:        A9 0F         LDA #$0F                  
CODE_20CB98:        85 16         STA $16                   
CODE_20CB9A:        20 B6 A4      JSR CODE_20A4B6           
CODE_20CB9D:        C6 16         DEC $16                   
CODE_20CB9F:        D0 F9         BNE CODE_20CB9A           
CODE_20CBA1:        9C 00 42      STZ $4200                 
CODE_20CBA4:        64 16         STZ $16                   
CODE_20CBA6:        9C 93 02      STZ $0293                 
CODE_20CBA9:        9C 0C 42      STZ $420C                 
CODE_20CBAC:        A9 80         LDA #$80                  
CODE_20CBAE:        8D 00 21      STA $2100                 
CODE_20CBB1:        A9 02         LDA #$02                  
CODE_20CBB3:        8D 07 21      STA $2107                 
CODE_20CBB6:        A9 0A         LDA #$0A                  
CODE_20CBB8:        8D 08 21      STA $2108                 
CODE_20CBBB:        A9 13         LDA #$13                  
CODE_20CBBD:        8D 09 21      STA $2109                 
CODE_20CBC0:        22 A9 E0 22   JSL CODE_22E0A9           
CODE_20CBC4:        A9 5C         LDA #$5C                  
CODE_20CBC6:        85 00         STA $00                   
CODE_20CBC8:        64 01         STZ $01                   
CODE_20CBCA:        20 0A FA      JSR CODE_20FA0A           
CODE_20CBCD:        C2 20         REP #$20                  
CODE_20CBCF:        A2 80         LDX #$80                  
CODE_20CBD1:        8E 15 21      STX $2115                 
CODE_20CBD4:        A9 00 20      LDA #$2000                
CODE_20CBD7:        8D 16 21      STA $2116                 
CODE_20CBDA:        A9 01 18      LDA #$1801                
CODE_20CBDD:        8D 00 43      STA $4300                 
CODE_20CBE0:        8D 10 43      STA $4310                 
CODE_20CBE3:        8D 20 43      STA $4320                 
CODE_20CBE6:        8D 30 43      STA $4330                 
CODE_20CBE9:        A9 00 E0      LDA #$E000                
CODE_20CBEC:        8D 02 43      STA $4302                 
CODE_20CBEF:        A9 00 B0      LDA #$B000                
CODE_20CBF2:        8D 12 43      STA $4312                 
CODE_20CBF5:        A9 00 D0      LDA #$D000                
CODE_20CBF8:        8D 22 43      STA $4322                 
CODE_20CBFB:        A9 00 B0      LDA #$B000                
CODE_20CBFE:        8D 32 43      STA $4332                 
CODE_20CC01:        A2 37         LDX #$37                  
CODE_20CC03:        8E 04 43      STX $4304                 
CODE_20CC06:        8E 14 43      STX $4314                 
CODE_20CC09:        A2 0C         LDX #$0C                  
CODE_20CC0B:        8E 24 43      STX $4324                 
CODE_20CC0E:        A2 3A         LDX #$3A                  
CODE_20CC10:        8E 34 43      STX $4334                 
CODE_20CC13:        A9 00 10      LDA #$1000                
CODE_20CC16:        8D 05 43      STA $4305                 
CODE_20CC19:        8D 15 43      STA $4315                 
CODE_20CC1C:        8D 35 43      STA $4335                 
CODE_20CC1F:        A9 00 28      LDA #$2800                
CODE_20CC22:        8D 25 43      STA $4325                 
CODE_20CC25:        A2 01         LDX #$01                  
CODE_20CC27:        8E 0B 42      STX $420B                 
CODE_20CC2A:        E8            INX                       
CODE_20CC2B:        8E 0B 42      STX $420B                 
CODE_20CC2E:        A9 00 60      LDA #$6000                
CODE_20CC31:        8D 16 21      STA $2116                 
CODE_20CC34:        A2 04         LDX #$04                  
CODE_20CC36:        8E 0B 42      STX $420B                 
CODE_20CC39:        A9 00 30      LDA #$3000                
CODE_20CC3C:        8D 16 21      STA $2116                 
CODE_20CC3F:        A2 08         LDX #$08                  
CODE_20CC41:        8E 0B 42      STX $420B                 
CODE_20CC44:        AE 26 07      LDX $0726                 
CODE_20CC47:        F0 36         BEQ CODE_20CC7F           
CODE_20CC49:        A9 00 E0      LDA #$E000                
CODE_20CC4C:        8D 02 43      STA $4302                 
CODE_20CC4F:        A9 00 F0      LDA #$F000                
CODE_20CC52:        8D 12 43      STA $4312                 
CODE_20CC55:        A2 3D         LDX #$3D                  
CODE_20CC57:        8E 04 43      STX $4304                 
CODE_20CC5A:        8E 14 43      STX $4314                 
CODE_20CC5D:        A9 00 10      LDA #$1000                
CODE_20CC60:        8D 05 43      STA $4305                 
CODE_20CC63:        A9 00 08      LDA #$0800                
CODE_20CC66:        8D 15 43      STA $4315                 
CODE_20CC69:        A9 00 60      LDA #$6000                
CODE_20CC6C:        8D 16 21      STA $2116                 
CODE_20CC6F:        A2 01         LDX #$01                  
CODE_20CC71:        8E 0B 42      STX $420B                 
CODE_20CC74:        A9 00 6C      LDA #$6C00                
CODE_20CC77:        8D 16 21      STA $2116                 
CODE_20CC7A:        A2 02         LDX #$02                  
CODE_20CC7C:        8E 0B 42      STX $420B                 
CODE_20CC7F:        E2 20         SEP #$20                  
CODE_20CC81:        A9 05         LDA #$05                  
CODE_20CC83:        8D 50 03      STA $0350                 
CODE_20CC86:        22 B6 8D 2A   JSL CODE_2A8DB6           
CODE_20CC8A:        22 B0 84 2A   JSL CODE_2A84B0           
CODE_20CC8E:        C2 20         REP #$20                  
CODE_20CC90:        A9 FF 00      LDA #$00FF                
CODE_20CC93:        85 00         STA $00                   
CODE_20CC95:        9C 15 21      STZ $2115                 
CODE_20CC98:        A9 00 04      LDA #$0400                
CODE_20CC9B:        8D 16 21      STA $2116                 
CODE_20CC9E:        A9 08 18      LDA #$1808                
CODE_20CCA1:        8D 00 43      STA $4300                 
CODE_20CCA4:        9C 02 43      STZ $4302                 
CODE_20CCA7:        9C 04 43      STZ $4304                 
CODE_20CCAA:        A9 00 08      LDA #$0800                
CODE_20CCAD:        8D 05 43      STA $4305                 
CODE_20CCB0:        A0 01         LDY #$01                  
CODE_20CCB2:        8C 0B 42      STY $420B                 
CODE_20CCB5:        9C 15 21      STZ $2115                 
CODE_20CCB8:        A9 00 08      LDA #$0800                
CODE_20CCBB:        8D 16 21      STA $2116                 
CODE_20CCBE:        A9 08 18      LDA #$1808                
CODE_20CCC1:        8D 00 43      STA $4300                 
CODE_20CCC4:        9C 02 43      STZ $4302                 
CODE_20CCC7:        9C 04 43      STZ $4304                 
CODE_20CCCA:        A9 00 08      LDA #$0800                
CODE_20CCCD:        8D 05 43      STA $4305                 
CODE_20CCD0:        8C 0B 42      STY $420B                 
CODE_20CCD3:        E2 20         SEP #$20                  
CODE_20CCD5:        A9 01         LDA #$01                  
CODE_20CCD7:        8F 55 39 7E   STA $7E3955               
CODE_20CCDB:        A9 20         LDA #$20                  
CODE_20CCDD:        8D 01 01      STA $0101                 
CODE_20CCE0:        9C 38 02      STZ $0238                 
CODE_20CCE3:        9C 39 02      STZ $0239                 
CODE_20CCE6:        A2 F4         LDX #$F4                  
CODE_20CCE8:        A9 00         LDA #$00                  
CODE_20CCEA:        95 00         STA $00,x                 
CODE_20CCEC:        CA            DEX                       
CODE_20CCED:        E0 6B         CPX #$6B                  
CODE_20CCEF:        90 04         BCC CODE_20CCF5           
CODE_20CCF1:        E0 75         CPX #$75                  
CODE_20CCF3:        90 F7         BCC CODE_20CCEC           
CODE_20CCF5:        E0 FF         CPX #$FF                  
CODE_20CCF7:        D0 EF         BNE CODE_20CCE8           
CODE_20CCF9:        A2 15         LDX #$15                  
CODE_20CCFB:        A9 00         LDA #$00                  
CODE_20CCFD:        9D 10 05      STA $0510,x               
CODE_20CD00:        CA            DEX                       
CODE_20CD01:        10 F8         BPL CODE_20CCFB           
CODE_20CD03:        20 28 B3      JSR CODE_20B328           
CODE_20CD06:        20 9A B0      JSR CODE_20B09A           
CODE_20CD09:        22 10 CE 29   JSL CODE_29CE10           
CODE_20CD0D:        C2 20         REP #$20                  
CODE_20CD0F:        A2 1E         LDX #$1E                  
CODE_20CD11:        A9 00 00      LDA #$0000                
CODE_20CD14:        9D 40 13      STA $1340,x               
CODE_20CD17:        CA            DEX                       
CODE_20CD18:        CA            DEX                       
CODE_20CD19:        10 F9         BPL CODE_20CD14           
CODE_20CD1B:        E2 20         SEP #$20                  
CODE_20CD1D:        A9 20         LDA #$20                  
CODE_20CD1F:        0A            ASL A                     
CODE_20CD20:        AA            TAX                       
CODE_20CD21:        BF 01 D3 20   LDA.l PNTR_20D301,x             
CODE_20CD25:        85 36         STA $36                   
CODE_20CD27:        BF 02 D3 20   LDA.l PNTR_20D301+1,x             
CODE_20CD2B:        85 37         STA $37                   
CODE_20CD2D:        A9 20         LDA #$20                  
CODE_20CD2F:        85 38         STA $38                   
CODE_20CD31:        22 AB E8 29   JSL CODE_29E8AB           
CODE_20CD35:        A9 B0         LDA #$B0                  
CODE_20CD37:        8D 16 02      STA $0216                 
CODE_20CD3A:        9C 18 02      STZ $0218                 
CODE_20CD3D:        9C 19 02      STZ $0219                 
CODE_20CD40:        9C 1A 02      STZ $021A                 
CODE_20CD43:        9C 1B 02      STZ $021B                 
CODE_20CD46:        A9 00         LDA #$00                  
CODE_20CD48:        8F 55 39 7E   STA $7E3955               
CODE_20CD4C:        A9 1F         LDA #$1F                  
CODE_20CD4E:        0A            ASL A                     
CODE_20CD4F:        AA            TAX                       
CODE_20CD50:        BF 01 D3 20   LDA.l PNTR_20D301,x             
CODE_20CD54:        85 36         STA $36                   
CODE_20CD56:        BF 02 D3 20   LDA.l PNTR_20D301+1,x             
CODE_20CD5A:        85 37         STA $37                   
CODE_20CD5C:        A9 20         LDA #$20                  
CODE_20CD5E:        85 38         STA $38                   
CODE_20CD60:        22 AB E8 29   JSL CODE_29E8AB           
CODE_20CD64:        A9 13         LDA #$13                  
CODE_20CD66:        8D 08 02      STA $0208                 
CODE_20CD69:        A9 04         LDA #$04                  
CODE_20CD6B:        8D 09 02      STA $0209                 
CODE_20CD6E:        A9 02         LDA #$02                  
CODE_20CD70:        8D 03 02      STA $0203                 
CODE_20CD73:        A9 20         LDA #$20                  
CODE_20CD75:        8D 04 02      STA $0204                 
CODE_20CD78:        A9 00         LDA #$00                  
CODE_20CD7A:        A2 C6         LDX #$C6                  
CODE_20CD7C:        A0 3C         LDY #$3C                  
CODE_20CD7E:        22 D2 A1 20   JSL CODE_20A1D2           
CODE_20CD82:        A9 00         LDA #$00                  
CODE_20CD84:        A2 D0         LDX #$D0                  
CODE_20CD86:        A0 3C         LDY #$3C                  
CODE_20CD88:        22 E6 A1 20   JSL CODE_20A1E6           
CODE_20CD8C:        A9 01         LDA #$01                  
CODE_20CD8E:        8D BF 02      STA $02BF                 
CODE_20CD91:        A9 1E         LDA #$1E                  
CODE_20CD93:        8D C1 02      STA $02C1                 
CODE_20CD96:        C2 20         REP #$20                  
CODE_20CD98:        22 C5 E1 22   JSL CODE_22E1C5           
CODE_20CD9C:        C2 20         REP #$20                  
CODE_20CD9E:        A9 00 B8      LDA #$B800                
CODE_20CDA1:        85 0D         STA $0D                   
CODE_20CDA3:        A2 32         LDX #$32                  
CODE_20CDA5:        86 0F         STX $0F                   
CODE_20CDA7:        A9 00 08      LDA #$0800                
CODE_20CDAA:        85 0B         STA $0B                   
CODE_20CDAC:        A9 00 44      LDA #$4400                
CODE_20CDAF:        20 F0 AF      JSR CODE_20AFF0           
CODE_20CDB2:        A9 00 E0      LDA #$E000                
CODE_20CDB5:        85 0D         STA $0D                   
CODE_20CDB7:        A2 37         LDX #$37                  
CODE_20CDB9:        86 0F         STX $0F                   
CODE_20CDBB:        A9 00 10      LDA #$1000                
CODE_20CDBE:        85 0B         STA $0B                   
CODE_20CDC0:        A9 00 48      LDA #$4800                
CODE_20CDC3:        20 F0 AF      JSR CODE_20AFF0           
CODE_20CDC6:        A9 00 B0      LDA #$B000                
CODE_20CDC9:        85 0D         STA $0D                   
CODE_20CDCB:        A2 3A         LDX #$3A                  
CODE_20CDCD:        86 0F         STX $0F                   
CODE_20CDCF:        A9 00 08      LDA #$0800                
CODE_20CDD2:        85 0B         STA $0B                   
CODE_20CDD4:        A9 00 3C      LDA #$3C00                
CODE_20CDD7:        20 F0 AF      JSR CODE_20AFF0           
CODE_20CDDA:        E2 20         SEP #$20                  
CODE_20CDDC:        A9 07         LDA #$07                  
CODE_20CDDE:        8D 43 02      STA $0243                 
CODE_20CDE1:        A9 01         LDA #$01                  
CODE_20CDE3:        8D 45 02      STA $0245                 
CODE_20CDE6:        20 7B A0      JSR CODE_20A07B           
CODE_20CDE9:        A9 81         LDA #$81                  
CODE_20CDEB:        8D 00 42      STA $4200                 
CODE_20CDEE:        8D D9 02      STA $02D9                 
CODE_20CDF1:        A9 0F         LDA #$0F                  
CODE_20CDF3:        85 16         STA $16                   
CODE_20CDF5:        A9 58         LDA #$58                  
CODE_20CDF7:        85 BD         STA $BD                   
CODE_20CDF9:        A9 05         LDA #$05                  
CODE_20CDFB:        85 B1         STA $B1                   
CODE_20CDFD:        20 B6 A4      JSR CODE_20A4B6           
CODE_20CE00:        C6 B1         DEC $B1                   
CODE_20CE02:        10 F9         BPL CODE_20CDFD           
CODE_20CE04:        A9 03         LDA #$03                  
CODE_20CE06:        85 B1         STA $B1                   
CODE_20CE08:        A5 BD         LDA $BD                   
CODE_20CE0A:        8D 28 00      STA $0028                 
CODE_20CE0D:        E6 BD         INC $BD                   
CODE_20CE0F:        A5 BD         LDA $BD                   
CODE_20CE11:        C9 5B         CMP #$5B                  
CODE_20CE13:        D0 E8         BNE CODE_20CDFD           
CODE_20CE15:        A9 14         LDA #$14                  
CODE_20CE17:        85 4B         STA $4B                   
CODE_20CE19:        A9 20         LDA #$20                  
CODE_20CE1B:        85 4C         STA $4C                   
CODE_20CE1D:        A9 00         LDA #$00                  
CODE_20CE1F:        85 BD         STA $BD                   
CODE_20CE21:        20 B6 A4      JSR CODE_20A4B6           
CODE_20CE24:        A5 BD         LDA $BD                   
CODE_20CE26:        D0 0D         BNE CODE_20CE35           
CODE_20CE28:        AD 16 02      LDA $0216                 
CODE_20CE2B:        38            SEC                       
CODE_20CE2C:        E9 01         SBC #$01                  
CODE_20CE2E:        8D 16 02      STA $0216                 
CODE_20CE31:        D0 02         BNE CODE_20CE35           
CODE_20CE33:        E6 BD         INC $BD                   
CODE_20CE35:        A5 4C         LDA $4C                   
CODE_20CE37:        38            SEC                       
CODE_20CE38:        E9 01         SBC #$01                  
CODE_20CE3A:        85 4C         STA $4C                   
CODE_20CE3C:        B0 E3         BCS CODE_20CE21                   
CODE_20CE3E:        A9 16         LDA #$16                  
CODE_20CE40:        85 4C         STA $4C                   
CODE_20CE42:        C6 4B         DEC $4B                   
CODE_20CE44:        10 DB         BPL CODE_20CE21           
CODE_20CE46:        20 B6 A4      JSR CODE_20A4B6           
CODE_20CE49:        20 BA D0      JSR CODE_20D0BA           
CODE_20CE4C:        A5 4D         LDA $4D                   
CODE_20CE4E:        C9 08         CMP #$08                  
CODE_20CE50:        D0 F4         BNE CODE_20CE46           
CODE_20CE52:        A9 00         LDA #$00                  
CODE_20CE54:        85 4D         STA $4D                   
CODE_20CE56:        9C D3 02      STZ $02D3                 
CODE_20CE59:        A9 B0         LDA #$B0                  
CODE_20CE5B:        8D 16 02      STA $0216                 
CODE_20CE5E:        9C 17 02      STZ $0217                 
CODE_20CE61:        C2 30         REP #$30                  
CODE_20CE63:        A9 00 00      LDA #$0000                
CODE_20CE66:        A2 1E 00      LDX #$001E                
CODE_20CE69:        9F E0 94 7F   STA $7F94E0,x             
CODE_20CE6D:        CA            DEX                       
CODE_20CE6E:        CA            DEX                       
CODE_20CE6F:        10 F8         BPL CODE_20CE69           
CODE_20CE71:        8B            PHB                       
CODE_20CE72:        A2 C0 A4      LDX #$A4C0                
CODE_20CE75:        A0 E0 13      LDY #$13E0                
CODE_20CE78:        A9 1F 00      LDA #$001F                
CODE_20CE7B:        54 00 3C      MVN $3C00                 
CODE_20CE7E:        AB            PLB                       
CODE_20CE7F:        E2 30         SEP #$30                  
CODE_20CE81:        EE 00 15      INC $1500                 
CODE_20CE84:        22 A9 E0 22   JSL CODE_22E0A9           
CODE_20CE88:        20 B6 A4      JSR CODE_20A4B6           
CODE_20CE8B:        CE 16 02      DEC $0216                 
CODE_20CE8E:        AD 16 02      LDA $0216                 
CODE_20CE91:        D0 F5         BNE CODE_20CE88           
CODE_20CE93:        A9 55         LDA #$55                  
CODE_20CE95:        85 B1         STA $B1                   
CODE_20CE97:        20 B6 A4      JSR CODE_20A4B6           
CODE_20CE9A:        C6 B1         DEC $B1                   
CODE_20CE9C:        10 F9         BPL CODE_20CE97           
CODE_20CE9E:        A9 1B         LDA #$1B                  
CODE_20CEA0:        8D 1E 07      STA $071E                 
CODE_20CEA3:        A9 00         LDA #$00                  
CODE_20CEA5:        8F 87 C5 7F   STA $7FC587               
CODE_20CEA9:        20 AE CE      JSR CODE_20CEAE           
CODE_20CEAC:        80 37         BRA CODE_20CEE5           

CODE_20CEAE:        A2 00         LDX #$00                  
CODE_20CEB0:        9B            TXY                       
CODE_20CEB1:        8A            TXA                       
CODE_20CEB2:        29 03         AND #$03                  
CODE_20CEB4:        0A            ASL A                     
CODE_20CEB5:        0A            ASL A                     
CODE_20CEB6:        0A            ASL A                     
CODE_20CEB7:        0A            ASL A                     
CODE_20CEB8:        18            CLC                       
CODE_20CEB9:        69 60         ADC #$60                  
CODE_20CEBB:        99 00 08      STA $0800,y               
CODE_20CEBE:        A9 60         LDA #$60                  
CODE_20CEC0:        99 01 08      STA $0801,y               
CODE_20CEC3:        8A            TXA                       
CODE_20CEC4:        29 03         AND #$03                  
CODE_20CEC6:        0A            ASL A                     
CODE_20CEC7:        18            CLC                       
CODE_20CEC8:        69 C0         ADC #$C0                  
CODE_20CECA:        99 02 08      STA $0802,y               
CODE_20CECD:        A9 04         LDA #$04                  
CODE_20CECF:        0F 87 C5 7F   ORA $7FC587               
CODE_20CED3:        99 03 08      STA $0803,y               
CODE_20CED6:        A9 02         LDA #$02                  
CODE_20CED8:        9D 20 0A      STA $0A20,x               
CODE_20CEDB:        C8            INY                       
CODE_20CEDC:        C8            INY                       
CODE_20CEDD:        C8            INY                       
CODE_20CEDE:        C8            INY                       
CODE_20CEDF:        E8            INX                       
CODE_20CEE0:        E0 04         CPX #$04                  
CODE_20CEE2:        D0 CD         BNE CODE_20CEB1           
CODE_20CEE4:        60            RTS                       

CODE_20CEE5:        22 B6 CF 29   JSL CODE_29CFB6           
CODE_20CEE9:        A9 03         LDA #$03                  
CODE_20CEEB:        85 B1         STA $B1                   
CODE_20CEED:        A9 03         LDA #$03                  
CODE_20CEEF:        85 BD         STA $BD                   
CODE_20CEF1:        20 B6 A4      JSR CODE_20A4B6           
CODE_20CEF4:        22 9A D0 29   JSL CODE_29D09A           
CODE_20CEF8:        AF 87 C5 7F   LDA $7FC587               
CODE_20CEFC:        18            CLC                       
CODE_20CEFD:        69 03         ADC #$03                  
CODE_20CEFF:        C9 30         CMP #$30                  
CODE_20CF01:        90 02         BCC CODE_20CF05           
CODE_20CF03:        A9 30         LDA #$30                  
CODE_20CF05:        8F 87 C5 7F   STA $7FC587               
CODE_20CF09:        48            PHA                       
CODE_20CF0A:        29 30         AND #$30                  
CODE_20CF0C:        8F 87 C5 7F   STA $7FC587               
CODE_20CF10:        20 AE CE      JSR CODE_20CEAE           
CODE_20CF13:        68            PLA                       
CODE_20CF14:        8F 87 C5 7F   STA $7FC587               
CODE_20CF18:        AD B3 02      LDA $02B3                 
CODE_20CF1B:        C9 02         CMP #$02                  
CODE_20CF1D:        D0 D2         BNE CODE_20CEF1           
CODE_20CF1F:        A9 C0         LDA #$C0                  
CODE_20CF21:        8D FC 1C      STA $1CFC                 
CODE_20CF24:        20 B6 A4      JSR CODE_20A4B6           
CODE_20CF27:        CE FC 1C      DEC $1CFC                 
CODE_20CF2A:        D0 F8         BNE CODE_20CF24           
CODE_20CF2C:        A9 15         LDA #$15                  
CODE_20CF2E:        8D 03 12      STA $1203                 
CODE_20CF31:        20 B6 A4      JSR CODE_20A4B6           
CODE_20CF34:        AD E5 02      LDA $02E5                 
CODE_20CF37:        D0 29         BNE CODE_20CF62           
CODE_20CF39:        22 63 FE 2A   JSL CODE_2AFE63           
CODE_20CF3D:        AE 26 07      LDX $0726                 
CODE_20CF40:        B5 F6         LDA $F6,x                 
CODE_20CF42:        29 10         AND #$10                  
CODE_20CF44:        F0 EB         BEQ CODE_20CF31           
CODE_20CF46:        C2 10         REP #$10                  
CODE_20CF48:        A2 00 00      LDX #$0000                
CODE_20CF4B:        A9 F0         LDA #$F0                  
CODE_20CF4D:        9D 01 08      STA $0801,x               
CODE_20CF50:        E8            INX                       
CODE_20CF51:        E8            INX                       
CODE_20CF52:        E8            INX                       
CODE_20CF53:        E8            INX                       
CODE_20CF54:        E0 00 02      CPX #$0200                
CODE_20CF57:        90 F4         BCC CODE_20CF4D           
CODE_20CF59:        E2 10         SEP #$10                  
CODE_20CF5B:        22 B7 EB 29   JSL CODE_29EBB7           
CODE_20CF5F:        EE E5 02      INC $02E5                 
CODE_20CF62:        22 F7 EB 29   JSL CODE_29EBF7           
CODE_20CF66:        4C 31 CF      JMP CODE_20CF31           

CODE_20CF69:        C6 C2         DEC $C2                   
CODE_20CF6B:        A5 C2         LDA $C2                   
CODE_20CF6D:        22 1F FB 20   JSL CODE_20FB1F           ; ExecutePtrShort

PNTR_20CF71:          dw CODE_20D11A
               dw CODE_20D157

DATA_20CF75:        db $30,$33,$35,$36,$33,$31,$30,$31
                    db $30,$33,$35,$36,$33,$31,$30,$31
                    db $36,$3A,$3A,$3A,$36,$3A,$36,$36
                    db $3A,$2D,$3A,$2D,$36,$2D,$2D,$34
                    db $36,$2D,$3A,$36,$36,$2D,$2D,$34

DATA_20CF9D:        db $C0,$80,$C0,$F0,$C0,$C0,$C0,$80
                    db $C8,$88,$C8,$F8,$C8,$C8,$C8,$88
                    db $80,$E8,$98,$90,$80,$A8,$80,$80
                    db $E0,$D0,$C0,$B8,$80,$F0,$C0,$C0
                    db $80,$D8,$C8,$80,$80,$F8,$C8,$C8
DATA_20CFC5:        db $00,$08,$10,$18,$20

DATA_20CFCA:        db $00,$00,$00
                    db $04,$00,$10,$00,$14,$00,$18

DATA_20CFD4:        db $00
                    db $00,$00,$08,$00,$10,$00,$18

CODE_20CFDC:        AD D3 02      LDA $02D3                 
CODE_20CFDF:        C9 FF         CMP #$FF                  
CODE_20CFE1:        F0 43         BEQ CODE_20D026           
CODE_20CFE3:        10 41         BPL CODE_20D026           
CODE_20CFE5:        29 7F         AND #$7F                  
CODE_20CFE7:        C9 05         CMP #$05                  
CODE_20CFE9:        F0 3C         BEQ CODE_20D027           
CODE_20CFEB:        C9 06         CMP #$06                  
CODE_20CFED:        D0 03         BNE CODE_20CFF2           
CODE_20CFEF:        4C 6F D0      JMP CODE_20D06F           

CODE_20CFF2:        AA            TAX                       
CODE_20CFF3:        0A            ASL A                     
CODE_20CFF4:        85 00         STA $00                   
CODE_20CFF6:        BF C5 CF 20   LDA.l DATA_20CFC5,x             
CODE_20CFFA:        18            CLC                       
CODE_20CFFB:        6D 4D 00      ADC $004D                 
CODE_20CFFE:        AA            TAX                       
CODE_20CFFF:        BF 75 CF 20   LDA.l DATA_20CF75,x             
CODE_20D003:        85 0F         STA $0F                   
CODE_20D005:        BF 9D CF 20   LDA.l DATA_20CF9D,x             
CODE_20D009:        85 0E         STA $0E                   
CODE_20D00B:        64 0D         STZ $0D                   
CODE_20D00D:        C2 20         REP #$20                  
CODE_20D00F:        A9 00 08      LDA #$0800                
CODE_20D012:        85 0B         STA $0B                   
CODE_20D014:        A6 00         LDX $00                   
CODE_20D016:        A9 00 20      LDA #$2000                
CODE_20D019:        18            CLC                       
CODE_20D01A:        7F CA CF 20   ADC.l DATA_20CFCA,x             
CODE_20D01E:        20 F0 AF      JSR CODE_20AFF0           
CODE_20D021:        E2 20         SEP #$20                  
CODE_20D023:        EE D3 02      INC $02D3                 
CODE_20D026:        60            RTS                       

CODE_20D027:        EE D3 02      INC $02D3                 
CODE_20D02A:        C2 20         REP #$20                  
CODE_20D02C:        A2 80         LDX #$80                  
CODE_20D02E:        8E 15 21      STX $2115                 
CODE_20D031:        A9 01 18      LDA #$1801                
CODE_20D034:        8D 00 43      STA $4300                 
CODE_20D037:        A9 00 08      LDA #$0800                
CODE_20D03A:        8D 05 43      STA $4305                 
CODE_20D03D:        A9 00 60      LDA #$6000                
CODE_20D040:        AC 4D 00      LDY $004D                 
CODE_20D043:        C0 04         CPY #$04                  
CODE_20D045:        90 03         BCC CODE_20D04A           
CODE_20D047:        A9 00 80      LDA #$8000                
CODE_20D04A:        85 00         STA $00                   
CODE_20D04C:        98            TYA                       
CODE_20D04D:        29 03 00      AND #$0003                
CODE_20D050:        0A            ASL A                     
CODE_20D051:        AA            TAX                       
CODE_20D052:        BF D4 CF 20   LDA.l DATA_20CFD4,x             
CODE_20D056:        18            CLC                       
CODE_20D057:        65 00         ADC $00                   
CODE_20D059:        8D 02 43      STA $4302                 
CODE_20D05C:        A2 7E         LDX #$7E                  
CODE_20D05E:        8E 04 43      STX $4304                 
CODE_20D061:        A9 00 04      LDA #$0400                
CODE_20D064:        8D 16 21      STA $2116                 
CODE_20D067:        A2 01         LDX #$01                  
CODE_20D069:        8E 0B 42      STX $420B                 
CODE_20D06C:        E2 20         SEP #$20                  
CODE_20D06E:        60            RTS                       

CODE_20D06F:        A9 FF         LDA #$FF                  
CODE_20D071:        8D D3 02      STA $02D3                 
CODE_20D074:        C2 20         REP #$20                  
CODE_20D076:        A9 00 08      LDA #$0800                
CODE_20D079:        8D 16 21      STA $2116                 
CODE_20D07C:        A2 80         LDX #$80                  
CODE_20D07E:        8E 15 21      STX $2115                 
CODE_20D081:        A9 01 18      LDA #$1801                
CODE_20D084:        8D 00 43      STA $4300                 
CODE_20D087:        A9 00 20      LDA #$2000                
CODE_20D08A:        8D 02 43      STA $4302                 
CODE_20D08D:        A2 7F         LDX #$7F                  
CODE_20D08F:        8E 04 43      STX $4304                 
CODE_20D092:        A9 00 06      LDA #$0600                
CODE_20D095:        8D 05 43      STA $4305                 
CODE_20D098:        A2 01         LDX #$01                  
CODE_20D09A:        8E 0B 42      STX $420B                 
CODE_20D09D:        E2 20         SEP #$20                  
CODE_20D09F:        60            RTS                       

CODE_20D0A0:        A5 15         LDA $15                   
CODE_20D0A2:        29 18         AND #$18                  
CODE_20D0A4:        4A            LSR A                     
CODE_20D0A5:        4A            LSR A                     
CODE_20D0A6:        4A            LSR A                     
CODE_20D0A7:        AA            TAX                       
CODE_20D0A8:        BD DF C9      LDA.w DATA_21C9DF,x               
CODE_20D0AB:        CD 45 02      CMP $0245                 
CODE_20D0AE:        F0 03         BEQ CODE_20D0B3           
CODE_20D0B0:        9C 43 02      STZ $0243                 
CODE_20D0B3:        8D 45 02      STA $0245                 
CODE_20D0B6:        20 7B A0      JSR CODE_20A07B           
CODE_20D0B9:        60            RTS                       

CODE_20D0BA:        A9 00         LDA #$00                  
CODE_20D0BC:        85 C2         STA $C2                   
CODE_20D0BE:        A5 43         LDA $43                   
CODE_20D0C0:        22 1F FB 20   JSL CODE_20FB1F           ; ExecutePtrShort

PNTR_20D0C4:          dw CODE_20D0DF
               dw CODE_20D102
               dw CODE_20D115
               dw CODE_20D0DA
               dw CODE_20D149
               dw CODE_20D152
               dw CODE_20D15F
               dw CODE_20D162
               dw CODE_20D1E9
               dw CODE_20D206
               dw CODE_20D268

CODE_20D0DA:        E6 43         INC $43
CODE_20D0DC:        EA            NOP
CODE_20D0DD:        EA            NOP                       
CODE_20D0DE:        60            RTS                       

CODE_20D0DF:        A0 01         LDY #$01                  
CODE_20D0E1:        EE 16 02      INC $0216                 
CODE_20D0E4:        AD 16 02      LDA $0216                 
CODE_20D0E7:        C9 D0         CMP #$D0                  
CODE_20D0E9:        F0 04         BEQ CODE_20D0EF           
CODE_20D0EB:        88            DEY                       
CODE_20D0EC:        10 F3         BPL CODE_20D0E1           
CODE_20D0EE:        60            RTS                       

CODE_20D0EF:        E6 43         INC $43                   
CODE_20D0F1:        A9 10         LDA #$10                  
CODE_20D0F3:        8D 16 02      STA $0216                 
CODE_20D0F6:        A9 01         LDA #$01                  
CODE_20D0F8:        8D 17 02      STA $0217                 
CODE_20D0FB:        9C 18 02      STZ $0218                 
CODE_20D0FE:        9C 19 02      STZ $0219                 
CODE_20D101:        60            RTS                       

CODE_20D102:        A9 03         LDA #$03                  
CODE_20D104:        85 46         STA $46                   
CODE_20D106:        A9 20         LDA #$20                  
CODE_20D108:        85 47         STA $47                   
CODE_20D10A:        A9 06         LDA #$06                  
CODE_20D10C:        85 44         STA $44                   
CODE_20D10E:        A9 5C         LDA #$5C                  
CODE_20D110:        85 45         STA $45                   
CODE_20D112:        E6 43         INC $43                   
CODE_20D114:        60            RTS                       

CODE_20D115:        A9 01         LDA #$01                  
CODE_20D117:        85 C2         STA $C2                   
CODE_20D119:        60            RTS                       

CODE_20D11A:        C2 20         REP #$20                  
CODE_20D11C:        A2 80         LDX #$80                  
CODE_20D11E:        8E 15 21      STX $2115                 
CODE_20D121:        A5 46         LDA $46                   
CODE_20D123:        EB            XBA                       
CODE_20D124:        8D 16 21      STA $2116                 
CODE_20D127:        A0 1F         LDY #$1F                  
CODE_20D129:        A9 5C 08      LDA #$085C                
CODE_20D12C:        8D 18 21      STA $2118                 
CODE_20D12F:        88            DEY                       
CODE_20D130:        10 FA         BPL CODE_20D12C           
CODE_20D132:        E2 20         SEP #$20                  
CODE_20D134:        C6 44         DEC $44                   
CODE_20D136:        10 03         BPL CODE_20D13B           
CODE_20D138:        E6 43         INC $43                   
CODE_20D13A:        60            RTS                       

CODE_20D13B:        20 C1 D2      JSR CODE_20D2C1           
CODE_20D13E:        60            RTS                       

CODE_20D13F:        E6 43         INC $43                   
CODE_20D141:        A5 47         LDA $47                   
CODE_20D143:        18            CLC                       
CODE_20D144:        69 08         ADC #$08                  
CODE_20D146:        85 47         STA $47                   
CODE_20D148:        60            RTS                       

CODE_20D149:        E6 43         INC $43                   
CODE_20D14B:        A9 0C         LDA #$0C                  
CODE_20D14D:        85 44         STA $44                   
CODE_20D14F:        64 48         STZ $48                   
CODE_20D151:        60            RTS                       

CODE_20D152:        A9 02         LDA #$02                  
CODE_20D154:        85 C2         STA $C2                   
CODE_20D156:        60            RTS                       

CODE_20D157:        E6 43         INC $43                   
CODE_20D159:        A9 80         LDA #$80                  
CODE_20D15B:        8D D3 02      STA $02D3                 
CODE_20D15E:        60            RTS                       

CODE_20D15F:        E6 43         INC $43                   
CODE_20D161:        60            RTS                       

CODE_20D162:        22 A9 E0 22   JSL CODE_22E0A9           
CODE_20D166:        8B            PHB                       
CODE_20D167:        A9 22         LDA #$22                  
CODE_20D169:        48            PHA                       
CODE_20D16A:        AB            PLB                       
CODE_20D16B:        A6 4D         LDX $4D                   
CODE_20D16D:        BD 3E 92      LDA.w DATA_21923E,x               
CODE_20D170:        EB            XBA                       
CODE_20D171:        BD 46 92      LDA.w DATA_219246,x               
CODE_20D174:        C2 10         REP #$10                  
CODE_20D176:        AA            TAX                       
CODE_20D177:        A0 00 00      LDY #$0000                
CODE_20D17A:        BD 56 92      LDA.w DATA_219256,x               
CODE_20D17D:        C9 FF         CMP #$FF                  
CODE_20D17F:        F0 44         BEQ CODE_20D1C5           
CODE_20D181:        99 00 08      STA $0800,y               
CODE_20D184:        99 04 08      STA $0804,y               
CODE_20D187:        E8            INX                       
CODE_20D188:        BD 56 92      LDA.w DATA_219256,x               
CODE_20D18B:        38            SEC                       
CODE_20D18C:        E9 10         SBC #$10                  
CODE_20D18E:        99 01 08      STA $0801,y               
CODE_20D191:        18            CLC                       
CODE_20D192:        69 08         ADC #$08                  
CODE_20D194:        99 05 08      STA $0805,y               
CODE_20D197:        E8            INX                       
CODE_20D198:        BD 56 92      LDA.w DATA_219256,x               
CODE_20D19B:        99 02 08      STA $0802,y               
CODE_20D19E:        1A            INC A                     
CODE_20D19F:        99 06 08      STA $0806,y               
CODE_20D1A2:        E8            INX                       
CODE_20D1A3:        BD 56 92      LDA.w DATA_219256,x               
CODE_20D1A6:        99 03 08      STA $0803,y               
CODE_20D1A9:        99 07 08      STA $0807,y               
CODE_20D1AC:        E8            INX                       
CODE_20D1AD:        5A            PHY                       
CODE_20D1AE:        C2 20         REP #$20                  
CODE_20D1B0:        98            TYA                       
CODE_20D1B1:        4A            LSR A                     
CODE_20D1B2:        4A            LSR A                     
CODE_20D1B3:        A8            TAY                       
CODE_20D1B4:        A9 00 00      LDA #$0000                
CODE_20D1B7:        99 20 0A      STA $0A20,y               
CODE_20D1BA:        7A            PLY                       
CODE_20D1BB:        98            TYA                       
CODE_20D1BC:        18            CLC                       
CODE_20D1BD:        69 08 00      ADC #$0008                
CODE_20D1C0:        A8            TAY                       
CODE_20D1C1:        E2 20         SEP #$20                  
CODE_20D1C3:        80 B5         BRA CODE_20D17A           
CODE_20D1C5:        E2 10         SEP #$10                  
CODE_20D1C7:        A5 4D         LDA $4D                   
CODE_20D1C9:        C9 03         CMP #$03                  
CODE_20D1CB:        D0 0D         BNE CODE_20D1DA           
CODE_20D1CD:        A9 34         LDA #$34                  
CODE_20D1CF:        8D 97 08      STA $0897                 
CODE_20D1D2:        8D 9F 08      STA $089F                 
CODE_20D1D5:        A9 74         LDA #$74                  
CODE_20D1D7:        8D A7 08      STA $08A7                 
CODE_20D1DA:        E6 43         INC $43                   
CODE_20D1DC:        A9 03         LDA #$03                  
CODE_20D1DE:        85 49         STA $49                   
CODE_20D1E0:        AB            PLB                       
CODE_20D1E1:        22 95 CE 29   JSL CODE_29CE95           
CODE_20D1E5:        9C B3 02      STZ $02B3                 
CODE_20D1E8:        60            RTS                       

CODE_20D1E9:        20 A0 D0      JSR CODE_20D0A0           
CODE_20D1EC:        22 9A D0 29   JSL CODE_29D09A           
CODE_20D1F0:        22 32 D2 29   JSL CODE_29D232           
CODE_20D1F4:        AD B3 02      LDA $02B3                 
CODE_20D1F7:        C9 02         CMP #$02                  
CODE_20D1F9:        D0 0A         BNE CODE_20D205           
CODE_20D1FB:        E6 43         INC $43                   
CODE_20D1FD:        A9 0F         LDA #$0F                  
CODE_20D1FF:        85 4B         STA $4B                   
CODE_20D201:        A9 16         LDA #$16                  
CODE_20D203:        85 4C         STA $4C                   
CODE_20D205:        60            RTS                       

CODE_20D206:        20 A0 D0      JSR CODE_20D0A0           
CODE_20D209:        A5 4C         LDA $4C                   
CODE_20D20B:        38            SEC                       
CODE_20D20C:        E9 01         SBC #$01                  
CODE_20D20E:        85 4C         STA $4C                   
CODE_20D210:        B0 4D         BCS CODE_20D25F                   
CODE_20D212:        A5 4B         LDA $4B                   
CODE_20D214:        F0 37         BEQ CODE_20D24D           
CODE_20D216:        3A            DEC A                     
CODE_20D217:        F0 15         BEQ CODE_20D22E           
CODE_20D219:        3A            DEC A                     
CODE_20D21A:        D0 35         BNE CODE_20D251           
CODE_20D21C:        AE 4D 00      LDX $004D                 
CODE_20D21F:        BF 60 D2 20   LDA.l DATA_20D260,x             
CODE_20D223:        8D 50 03      STA $0350                 
CODE_20D226:        F0 29         BEQ CODE_20D251           
CODE_20D228:        22 B6 8D 2A   JSL CODE_2A8DB6           
CODE_20D22C:        80 23         BRA CODE_20D251           

CODE_20D22E:        AD 4D 00      LDA $004D                 
CODE_20D231:        C9 06         CMP #$06                  
CODE_20D233:        D0 1C         BNE CODE_20D251           
CODE_20D235:        8B            PHB                       
CODE_20D236:        4B            PHK                       
CODE_20D237:        AB            PLB                       
CODE_20D238:        A9 00         LDA #$00                  
CODE_20D23A:        EB            XBA                       
CODE_20D23B:        C2 10         REP #$10                  
CODE_20D23D:        A0 B0 00      LDY #$00B0                
CODE_20D240:        A2 F0 00      LDX #$00F0                
CODE_20D243:        A9 BF         LDA #$BF                  
CODE_20D245:        54 7F 7F      MVN $7F7F                 
CODE_20D248:        E2 10         SEP #$10                  
CODE_20D24A:        AB            PLB                       
CODE_20D24B:        80 04         BRA CODE_20D251           
CODE_20D24D:        22 B0 84 2A   JSL CODE_2A84B0           
CODE_20D251:        A9 16         LDA #$16                  
CODE_20D253:        85 4C         STA $4C                   
CODE_20D255:        C6 4B         DEC $4B                   
CODE_20D257:        10 06         BPL CODE_20D25F           
CODE_20D259:        E6 43         INC $43                   
CODE_20D25B:        A9 03         LDA #$03                  
CODE_20D25D:        85 49         STA $49                   
CODE_20D25F:        60            RTS                       

DATA_20D260:        db $0E,$01,$0C,$00,$18,$0A,$1B,$00

CODE_20D268:        20 A0 D0      JSR CODE_20D0A0         
CODE_20D26B:        22 9A D0 29   JSL CODE_29D09A           
CODE_20D26F:        22 32 D2 29   JSL CODE_29D232           
CODE_20D273:        AD B3 02      LDA $02B3                 
CODE_20D276:        D0 48         BNE CODE_20D2C0           
CODE_20D278:        A9 01         LDA #$01                  
CODE_20D27A:        85 43         STA $43                   
CODE_20D27C:        E6 4D         INC $4D                   
CODE_20D27E:        A5 4D         LDA $4D                   
CODE_20D280:        C9 02         CMP #$02                  
CODE_20D282:        D0 1A         BNE CODE_20D29E           
CODE_20D284:        A9 EF         LDA #$EF                  
CODE_20D286:        8D 1A 02      STA $021A                 
CODE_20D289:        A9 00         LDA #$00                  
CODE_20D28B:        8D 1B 02      STA $021B                 
CODE_20D28E:        A9 17         LDA #$17                  
CODE_20D290:        8D 08 02      STA $0208                 
CODE_20D293:        A9 13         LDA #$13                  
CODE_20D295:        8D 09 02      STA $0209                 
CODE_20D298:        A9 64         LDA #$64                  
CODE_20D29A:        8D 04 02      STA $0204                 
CODE_20D29D:        60            RTS                       

CODE_20D29E:        9C 1A 02      STZ $021A                 
CODE_20D2A1:        9C 1B 02      STZ $021B                 
CODE_20D2A4:        A9 13         LDA #$13                  
CODE_20D2A6:        8D 08 02      STA $0208                 
CODE_20D2A9:        A9 04         LDA #$04                  
CODE_20D2AB:        8D 09 02      STA $0209                 
CODE_20D2AE:        A9 20         LDA #$20                  
CODE_20D2B0:        8D 04 02      STA $0204                 
CODE_20D2B3:        A9 20         LDA #$20                  
CODE_20D2B5:        8D 05 02      STA $0205                 
CODE_20D2B8:        0A            ASL A                     
CODE_20D2B9:        8D 06 02      STA $0206                 
CODE_20D2BC:        0A            ASL A                     
CODE_20D2BD:        8D 07 02      STA $0207                 
CODE_20D2C0:        60            RTS                       

CODE_20D2C1:        A5 47         LDA $47                   
CODE_20D2C3:        18            CLC                       
CODE_20D2C4:        69 20         ADC #$20                  
CODE_20D2C6:        85 47         STA $47                   
CODE_20D2C8:        A5 46         LDA $46                   
CODE_20D2CA:        69 00         ADC #$00                  
CODE_20D2CC:        85 46         STA $46                   
CODE_20D2CE:        C9 18         CMP #$18                  
CODE_20D2D0:        B0 0E         BCS CODE_20D2E0                   
CODE_20D2D2:        C9 14         CMP #$14                  
CODE_20D2D4:        90 0A         BCC CODE_20D2E0           
CODE_20D2D6:        A9 18         LDA #$18                  
CODE_20D2D8:        85 46         STA $46                   
CODE_20D2DA:        A5 47         LDA $47                   
CODE_20D2DC:        29 1F         AND #$1F                  
CODE_20D2DE:        85 47         STA $47                   
CODE_20D2E0:        60            RTS                       

DATA_20D2E1:        db $57,$53,$51,$00,$43,$02,$44,$54
                    db $00,$04,$00,$76,$76,$76,$04,$76
                    db $57,$4E,$1A,$1A,$00,$0B,$00,$00
                    db $4F,$4F,$00,$00,$4F,$4F,$4F,$00

PNTR_20D301:          dw $1602
               dw DATA_20DBA0
               dw DATA_20D502
               dw DATA_20D547
               dw DATA_20D58C
               dw DATA_20D5D1
               dw DATA_20D616
               dw DATA_20D64D
               dw DATA_20D684
               dw DATA_20D6BB
               dw DATA_20D6F2
               dw DATA_20D737
               dw DATA_20D77C
               dw DATA_20D7C1
               dw DATA_20D806
               dw DATA_20D84B
               dw DATA_20D87A
               dw DATA_20D8A9
               dw DATA_20D8D8
               dw DATA_20D91D
               dw DATA_20D962
               dw DATA_20D9A7
               dw DATA_20D9CE
               dw DATA_20D9F5
               dw DATA_20DA20
               dw DATA_20DA4F
               dw DATA_20DA7E
               dw DATA_20DA7E
               dw DATA_20DA7E
               dw DATA_20DA7F
               dw DATA_20D3BD
               dw DATA_20DC30
               dw DATA_20DC75
               dw DATA_20DDBA
               dw DATA_20DDFA
               dw DATA_20DE3A
               dw DATA_20DE7A
               dw DATA_20DEBA
               dw DATA_20DEFA
               dw DATA_20DEFA
               dw DATA_20DEFA
               dw DATA_20DEFB
               dw DATA_20DEFB
               dw DATA_20DEFB
               dw DATA_20DEFB
               dw DATA_20DEFB
               dw DATA_20DEFB
               dw DATA_20DEFB
               dw DATA_20DEFB
               dw DATA_20DEFB
               dw DATA_20DEFB
               dw DATA_20DEFB
               dw DATA_20DEFB
               dw DATA_20DEFB
               dw DATA_20DEFC       
               dw DATA_20DEFC    
               dw DATA_20DEFC    
               dw DATA_20DEFC       
               dw DATA_20DEFC    
               dw DATA_20DEFC    
               dw DATA_20DEFC       
               dw DATA_20DEFC    
               dw DATA_20DEFC    
               dw DATA_20DEFC       
               dw DATA_20DEFC    
               dw DATA_20DEFC    
               dw DATA_20DEFC       
               dw DATA_20DEFC    
               dw DATA_20DEFC    
               dw DATA_20DEFC           
               dw DATA_20DEFC    
               dw DATA_20DEFC    
               dw DATA_20DEFC       
               dw DATA_20DEFC    
               dw DATA_20DEFC    
               dw DATA_20DEFC       
               dw DATA_20DEFC    
               dw DATA_20DEFC    
               dw DATA_20DEFC       
               dw DATA_20DEFC    
               dw DATA_20DEFC    
               dw DATA_20DEFD
               dw DATA_20E002
               dw DATA_20E042
               dw DATA_20E042
               dw DATA_20E042
               dw DATA_20E042
               dw DATA_20E043
               dw DATA_20E063
               dw DATA_20E063
               dw DATA_20E063
               dw DATA_20E063
               dw DATA_20DBBE
               dw DATA_20DBF7
      
DATA_20D3BD:        db $13,$00,$01,$3F,$15,$2C,$15,$2C
                    db $16,$2C,$16,$2C,$15,$2C,$15,$2C
                    db $16,$2C,$16,$2C,$15,$2C,$15,$2C
                    db $16,$2C,$16,$2C,$15,$2C,$15,$2C
                    db $16,$2C,$16,$2C,$15,$2C,$15,$2C
                    db $16,$2C,$16,$2C,$15,$2C,$15,$2C
                    db $16,$2C,$16,$2C,$15,$2C,$15,$2C
                    db $16,$2C,$16,$2C,$15,$2C,$15,$2C
                    db $16,$2C,$16,$2C,$E6,$2C,$E6,$2C
                    db $E7,$2C,$E7,$2C,$E6,$2C,$E6,$2C
                    db $E7,$2C,$E7,$2C,$E6,$2C,$E6,$2C
                    db $E7,$2C,$E7,$2C,$E6,$2C,$E6,$2C
                    db $E7,$2C,$E7,$2C,$E6,$2C,$E6,$2C
                    db $E7,$2C,$E7,$2C,$E6,$2C,$E6,$2C
                    db $E7,$2C,$E7,$2C,$E6,$2C,$E6,$2C
                    db $E7,$2C,$E7,$2C,$E6,$2C,$E6,$2C
                    db $E7,$2C,$E7,$2C,$F6,$2C,$F6,$2C
                    db $F7,$2C,$F7,$2C,$F6,$2C,$F6,$2C
                    db $F7,$2C,$F7,$2C,$F6,$2C,$F6,$2C
                    db $F7,$2C,$F7,$2C,$F6,$2C,$F6,$2C
                    db $F7,$2C,$F7,$2C,$F6,$2C,$F6,$2C
                    db $F7,$2C,$F7,$2C,$F6,$2C,$F6,$2C
                    db $F7,$2C,$F7,$2C,$F6,$2C,$F6,$2C
                    db $F7,$2C,$F7,$2C,$F6,$2C,$F6,$2C
                    db $F7,$2C,$F7,$2C,$5F,$2C,$5F,$2C
                    db $5D,$2C,$5D,$2C,$5F,$2C,$5F,$2C
                    db $5D,$2C,$5D,$2C,$5F,$2C,$5F,$2C
                    db $5D,$2C,$5D,$2C,$5F,$2C,$5F,$2C
                    db $5D,$2C,$5D,$2C,$5F,$2C,$5F,$2C
                    db $5D,$2C,$5D,$2C,$5F,$2C,$5F,$2C
                    db $5D,$2C,$5D,$2C,$5F,$2C,$5F,$2C
                    db $5D,$2C,$5D,$2C,$5F,$2C,$5F,$2C
                    db $5D,$2C,$5D,$2C,$5F,$2C,$5F,$2C
                    db $5D,$2C,$5D,$2C,$5F,$2C,$5F,$2C
                    db $5D,$2C,$5D,$2C,$5F,$2C,$5F,$2C
                    db $5D,$2C,$5D,$2C,$5F,$2C,$5F,$2C
                    db $5D,$2C,$5D,$2C,$5F,$2C,$5F,$2C
                    db $5D,$2C,$5D,$2C,$5F,$2C,$5F,$2C
                    db $5D,$2C,$5D,$2C,$5F,$2C,$5F,$2C
                    db $5D,$2C,$5D,$2C,$5F,$2C,$5F,$2C
                    db $5D,$2C,$5D,$2C,$FF

DATA_20D502:        db $00,$00,$00
                    db $3F,$F4,$01,$F5,$01,$F5,$41,$F4
                    db $41,$F4,$01,$F5,$01,$F5,$41,$F4
                    db $41,$F4,$01,$F5,$01,$F5,$41,$F4
                    db $41,$F4,$01,$F5,$01,$F5,$41,$F4
                    db $41,$F4,$01,$F5,$01,$F5,$41,$F4
                    db $41,$F4,$01,$F5,$01,$F5,$41,$F4
                    db $41,$F4,$01,$F5,$01,$F5,$41,$F4
                    db $41,$F4,$01,$F5,$01,$F5,$41,$F4
                    db $41,$FF

DATA_20D547:        db $00,$20,$00,$3F,$F6,$01
                    db $F7,$01,$F7,$41,$F6,$41,$F6,$01
                    db $F7,$01,$F7,$41,$F6,$41,$F6,$01
                    db $F7,$01,$F7,$41,$F6,$41,$F6,$01
                    db $F7,$01,$F7,$41,$F6,$41,$F6,$01
                    db $F7,$01,$F7,$41,$F6,$41,$F6,$01
                    db $F7,$01,$F7,$41,$F6,$41,$F6,$01
                    db $F7,$01,$F7,$41,$F6,$41,$F6,$01
                    db $F7,$01,$F7,$41,$F6,$41,$FF

DATA_20D58C:        db $00
                    db $40,$00,$3F,$F8,$01,$F9,$01,$F9
                    db $41,$F8,$41,$F8,$01,$F9,$01,$F9
                    db $41,$F8,$41,$F8,$01,$F9,$01,$F9
                    db $41,$F8,$41,$F8,$01,$F9,$01,$F9
                    db $41,$F8,$41,$F8,$01,$F9,$01,$F9
                    db $41,$F8,$41,$F8,$01,$F9,$01,$F9
                    db $41,$F8,$41,$F8,$01,$F9,$01,$F9
                    db $41,$F8,$41,$F8,$01,$F9,$01,$F9
                    db $41,$F8,$41,$FF

DATA_20D5D1:        db $00,$60,$00,$3F
                    db $5C,$00,$FA,$01,$FA,$41,$5C,$00
                    db $5C,$00,$FA,$01,$FA,$41,$5C,$00
                    db $5C,$00,$FA,$01,$FA,$41,$5C,$00
                    db $5C,$00,$FA,$01,$FA,$41,$5C,$00
                    db $5C,$00,$FA,$01,$FA,$41,$5C,$00
                    db $5C,$00,$FA,$01,$FA,$41,$5C,$00
                    db $5C,$00,$FA,$01,$FA,$41,$5C,$00
                    db $5C,$00,$FA,$01,$FA,$41,$5C,$00
                    db $FF

DATA_20D616:        db $00,$80,$40,$12,$5C,$00,$00
                    db $8A,$00,$2B,$45,$09,$30,$08,$31
                    db $08,$32,$08,$33,$08,$34,$08,$35
                    db $08,$36,$08,$37,$08,$38,$08,$39
                    db $08,$3A,$08,$5C,$00,$5C,$00,$5C
                    db $00,$5C,$00,$3B,$1C,$3C,$1C,$3D
                    db $1C,$3E,$1C,$5C,$00,$5C,$00,$FF

DATA_20D64D:        db $00,$A0,$40,$12,$5C,$00,$00,$AA
                    db $00,$2B,$46,$09,$40,$08,$41,$08
                    db $42,$08,$43,$08,$44,$08,$45,$08
                    db $46,$08,$47,$08,$48,$08,$49,$08
                    db $4A,$08,$5C,$00,$5C,$00,$5C,$00
                    db $5C,$00,$4B,$1C,$4C,$1C,$4D,$1C
                    db $4E,$1C,$5C,$00,$5C,$00,$FF

DATA_20D684:        db $00
                    db $C0,$00,$2B,$5C,$00,$5C,$00,$3B
                    db $1C,$3C,$1C,$3D,$1C,$3E,$1C,$5C
                    db $00,$5C,$00,$5C,$00,$5C,$00,$47
                    db $09,$50,$08,$51,$08,$52,$08,$53
                    db $08,$54,$08,$55,$08,$56,$08,$57
                    db $08,$58,$08,$59,$08,$5A,$08,$00
                    db $D6,$40,$12,$5C,$00,$FF

DATA_20D6BB:        db $00,$E0
                    db $00,$2B,$5C,$00,$5C,$00,$4B,$1C
                    db $4C,$1C,$4D,$1C,$4E,$1C,$5C,$00
                    db $5C,$00,$5C,$00,$5C,$00,$48,$09
                    db $60,$08,$61,$08,$62,$08,$63,$08
                    db $64,$08,$5C,$00,$66,$08,$67,$08
                    db $68,$08,$69,$08,$6A,$08,$00,$F6
                    db $40,$12,$5C,$00,$FF

DATA_20D6F2:        db $01,$00,$00
                    db $3F,$5C,$00,$5C,$00,$5C,$00,$5C
                    db $00,$40,$09,$70,$08,$71,$08,$72
                    db $08,$73,$08,$74,$08,$75,$08,$76
                    db $08,$77,$08,$78,$08,$79,$08,$5C
                    db $00,$5C,$00,$5C,$00,$7D,$08,$7E
                    db $08,$7F,$08,$C0,$08,$C1,$08,$C2
                    db $08,$5C,$00,$C4,$08,$C5,$08,$CE
                    db $08,$CF,$08,$5C,$00,$5C,$00,$5C
                    db $00,$FF

DATA_20D737:        db $01,$20,$00,$3F,$5C,$00
                    db $5C,$00,$5C,$00,$5C,$00,$41,$09
                    db $80,$08,$81,$08,$82,$08,$83,$08
                    db $84,$08,$85,$08,$86,$08,$87,$08
                    db $88,$08,$89,$08,$8A,$08,$8B,$08
                    db $8C,$08,$8D,$08,$8E,$08,$8F,$08
                    db $D0,$08,$D1,$08,$D2,$08,$D3,$08
                    db $D4,$08,$D5,$08,$49,$09,$5C,$00
                    db $5C,$00,$5C,$00,$5C,$00,$FF

DATA_20D77C:        db $01
                    db $40,$00,$3F,$5C,$00,$5C,$00,$5C
                    db $00,$5C,$00,$42,$09,$90,$08,$91
                    db $08,$92,$08,$93,$08,$94,$08,$95
                    db $08,$96,$08,$97,$08,$98,$08,$99
                    db $08,$9A,$08,$9B,$08,$9C,$08,$9D
                    db $08,$9E,$08,$9F,$08,$E0,$08,$E1
                    db $08,$E2,$08,$E3,$08,$E4,$08,$E5
                    db $08,$4A,$09,$5C,$00,$5C,$00,$5C
                    db $00,$5C,$00,$FF

DATA_20D7C1:        db $01,$60,$00,$3F
                    db $5C,$00,$5C,$00,$5C,$00,$5C,$00
                    db $43,$09,$A0,$08,$A1,$08,$A2,$08
                    db $A3,$08,$A4,$08,$A5,$08,$A6,$08
                    db $A7,$08,$A8,$08,$A9,$08,$AA,$08
                    db $AB,$08,$AC,$08,$AD,$08,$AE,$08
                    db $AF,$08,$F0,$08,$F1,$08,$F2,$08
                    db $F3,$08,$F4,$08,$F5,$08,$4B,$09
                    db $5C,$00,$5C,$00,$5C,$00,$5C,$00
                    db $FF

DATA_20D806:        db $01,$80,$00,$3F,$5B,$1C,$6B
                    db $1C,$5C,$00,$5C,$00,$44,$09,$B0
                    db $08,$B1,$08,$B2,$08,$B3,$08,$B4
                    db $08,$B5,$08,$B6,$08,$B7,$08,$B8
                    db $08,$B9,$08,$BA,$08,$BB,$08,$BC
                    db $08,$BD,$08,$BE,$08,$BF,$08,$C6
                    db $08,$C7,$08,$C8,$08,$D6,$08,$D7
                    db $08,$D8,$08,$E8,$08,$04,$1C,$05
                    db $1C,$06,$1C,$07,$1C,$FF

DATA_20D84B:        db $01,$A0
                    db $40,$1A,$5C,$00,$01,$AE,$00,$23
                    db $C9,$04,$CA,$04,$CB,$04,$CC,$04
                    db $CD,$04,$5C,$00,$5C,$00,$5C,$00
                    db $5C,$00,$5C,$00,$5C,$00,$5C,$00
                    db $5C,$00,$5C,$00,$14,$1C,$3B,$1D
                    db $3C,$1D,$17,$1C,$FF

DATA_20D87A:        db $01,$C0,$40
                    db $1A,$5C,$00,$01,$CE,$00,$23,$D9
                    db $04,$DA,$04,$DB,$04,$DC,$04,$DD
                    db $04,$5C,$00,$5C,$00,$5C,$00,$5C
                    db $00,$5C,$00,$5C,$00,$5C,$00,$5C
                    db $00,$5C,$00,$3F,$1D,$21,$1C,$3D
                    db $1D,$12,$1C,$FF

DATA_20D8A9:        db $01,$E0,$40,$1A
                    db $5C,$00,$01,$EE,$00,$23,$E9,$04
                    db $EA,$04,$EB,$04,$EC,$04,$ED,$04
                    db $5C,$00,$5C,$00,$5C,$00,$5C,$00
                    db $5C,$00,$5C,$00,$5C,$00,$5C,$00
                    db $5C,$00,$3F,$1D,$21,$1C,$3D,$1D
                    db $12,$1C,$FF

DATA_20D8D8:        db $02,$00,$00,$3F,$04
                    db $1C,$05,$1C,$06,$1C,$07,$1C,$5C
                    db $00,$5C,$00,$5C,$00,$5C,$00,$5C
                    db $00,$5C,$00,$5C,$00,$5C,$00,$5C
                    db $00,$5C,$00,$F9,$04,$FA,$04,$FB
                    db $04,$FF,$04,$FD,$04,$FE,$04,$5C
                    db $00,$5C,$00,$5C,$00,$5C,$00,$5C
                    db $00,$5C,$00,$04,$1C,$05,$1C,$02
                    db $1C,$03,$1C,$3D,$1D,$12,$1C,$FF

DATA_20D91D:        db $02,$20,$00,$3F,$14,$1C,$3B,$1D
                    db $3C,$1D,$17,$1C,$5C,$00,$5C,$00
                    db $5C,$00,$5C,$00,$5C,$00,$5C,$00
                    db $5C,$00,$5C,$00,$5C,$00,$5C,$00
                    db $6C,$04,$6D,$04,$6E,$04,$6F,$04
                    db $DE,$04,$DF,$04,$5C,$00,$5C,$00
                    db $5C,$00,$5C,$00,$5C,$00,$5C,$00
                    db $14,$1C,$3B,$1D,$3C,$1D,$13,$1C
                    db $3D,$1D,$12,$1C,$FF

DATA_20D962:        db $02,$40,$00
                    db $3F,$3F,$1D,$21,$1C,$3D,$1D,$12
                    db $1C,$5C,$00,$5C,$00,$5C,$00,$5C
                    db $00,$5C,$00,$5C,$00,$5C,$00,$5C
                    db $00,$5C,$00,$5C,$00,$5C,$00,$5C
                    db $00,$EE,$04,$EF,$04,$5C,$00,$5C
                    db $00,$5C,$00,$5C,$00,$5C,$00,$5C
                    db $00,$5C,$00,$5C,$00,$3F,$1D,$21
                    db $1C,$3D,$1D,$23,$1C,$3D,$1D,$12
                    db $1C,$FF

DATA_20D9A7:        db $02,$60,$00,$0B,$3F,$1D
                    db $21,$1C,$3D,$1D,$12,$1C,$5C,$00
                    db $5C,$00,$02,$66,$40,$26,$5C,$00
                    db $02,$7A,$00,$0B,$3F,$1D,$21,$1C
                    db $3D,$1D,$23,$1C,$3D,$1D,$12,$1C
                    db $FF

DATA_20D9CE:        db $02,$80,$00,$0B,$3F,$1D,$21
                    db $1C,$00,$1C,$01,$1C,$06,$1C,$07
                    db $1C,$02,$86,$40,$26,$5C,$00,$02
                    db $9A,$00,$0B,$3F,$1D,$21,$1C,$3D
                    db $1D,$23,$1C,$3D,$1D,$12,$1C,$FF

DATA_20D9F5:        db $02,$A0,$00,$0F,$3F,$1D,$21,$1C
                    db $10,$1C,$3B,$1D,$3C,$1D,$17,$1C
                    db $5C,$00,$5C,$00,$02,$A8,$40,$22
                    db $5C,$00,$02,$BA,$00,$0B,$3F,$1D
                    db $21,$1C,$3D,$1D,$23,$1C,$3D,$1D
                    db $12,$1C,$FF

DATA_20DA20:        db $02,$C0,$00,$0F,$3F
                    db $1D,$21,$1C,$20,$1C,$21,$1C,$3D
                    db $1D,$12,$1C,$5C,$00,$5C,$00,$02
                    db $C8,$40,$22,$5C,$00,$02,$D8,$00
                    db $0F,$04,$1C,$05,$1C,$02,$1C,$03
                    db $1C,$3D,$1D,$23,$1C,$3D,$1D,$12
                    db $1C,$FF

DATA_20DA4F:        db $02,$E0,$00,$0F,$3F,$1D
                    db $21,$1C,$20,$1C,$21,$1C,$3D,$1D
                    db $12,$1C,$5C,$00,$5C,$00,$02,$E8
                    db $40,$22,$5C,$00,$02,$F8,$00,$0F
                    db $14,$1C,$3B,$1D,$3C,$1D,$13,$1C
                    db $3D,$1D,$23,$1C,$3D,$1D,$12,$1C
                    db $FF

DATA_20DA7E:        db $FF

DATA_20DA7F:        db $12,$08,$00,$01,$53,$11
                    db $12,$27,$00,$05,$4C,$11,$55,$11
                    db $56,$11,$12,$37,$00,$01,$53,$11
                    db $12,$46,$00,$09,$4D,$11,$4E,$11
                    db $58,$11,$57,$11,$56,$11,$12,$51
                    db $00,$01,$53,$11,$12,$56,$00,$05
                    db $4C,$11,$55,$11,$56,$11,$12,$65
                    db $00,$0D,$54,$11,$4F,$11,$58,$11
                    db $58,$11,$58,$11,$57,$11,$56,$11
                    db $12,$70,$00,$05,$4C,$11,$55,$11
                    db $56,$11,$12,$75,$00,$09,$4D,$11
                    db $4E,$11,$58,$11,$57,$11,$56,$11
                    db $12,$84,$00,$11,$54,$11,$50,$11
                    db $51,$11,$58,$11,$58,$11,$58,$11
                    db $58,$11,$57,$11,$56,$11,$12,$8F
                    db $00,$17,$4D,$11,$4E,$11,$58,$11
                    db $57,$11,$56,$11,$54,$11,$4F,$11
                    db $58,$11,$58,$11,$58,$11,$57,$11
                    db $56,$11,$12,$A5,$00,$2B,$52,$11
                    db $5C,$11,$5B,$11,$5C,$11,$5B,$11
                    db $58,$11,$58,$11,$57,$11,$56,$11
                    db $54,$11,$4F,$11,$58,$11,$58,$11
                    db $58,$11,$57,$11,$59,$11,$5A,$11
                    db $58,$11,$58,$11,$5B,$11,$5C,$11
                    db $57,$11,$12,$C5,$00,$2B,$51,$11
                    db $5E,$11,$5F,$11,$5E,$11,$5F,$11
                    db $5C,$11,$5B,$11,$5C,$11,$57,$11
                    db $59,$11,$5A,$11,$58,$11,$5B,$11
                    db $58,$11,$58,$11,$5B,$11,$58,$11
                    db $5B,$11,$5C,$11,$5E,$11,$5F,$11
                    db $58,$11,$12,$E5,$00,$2B,$58,$11
                    db $60,$11,$61,$11,$60,$11,$61,$11
                    db $5D,$11,$5E,$11,$5F,$11,$5C,$11
                    db $5B,$11,$5C,$11,$5C,$11,$5D,$11
                    db $5B,$11,$5C,$11,$5D,$11,$5C,$11
                    db $5E,$11,$5F,$11,$60,$11,$61,$11
                    db $58,$11,$FF

DATA_20DBA0:        db $02,$4A,$00,$19,$0E
                    db $1C,$5C,$00,$0A,$1C,$0B,$1C,$0C
                    db $1C,$1A,$1C,$1B,$1C,$0D,$1C,$5C
                    db $00,$1C,$1C,$0C,$1C,$1D,$1C,$1B
                    db $1C

DATA_20DBBE:        db $02,$8A,$00,$19,$1E,$1C,$5C
                    db $00,$0A,$1C,$0B,$1C,$0C,$1C,$1A
                    db $1C,$1B,$1C,$0D,$1C,$5C,$00,$1C
                    db $1C,$0C,$1C,$1D,$1C,$1B,$1C,$02
                    db $CA,$00,$15,$08,$1C,$0C,$1C,$19
                    db $1C,$19,$1C,$0B,$1C,$1B,$1C,$5C
                    db $00,$1C,$1C,$0C,$1C,$1D,$1C,$1B
                    db $1C,$FF

DATA_20DBF7:        db $02,$CA,$00,$15,$08,$1C
                    db $0C,$1C,$19,$1C,$19,$1C,$0B,$1C
                    db $1B,$1C,$5C,$00,$1C,$1C,$0C,$1C
                    db $1D,$1C,$1B,$1C,$02,$4A,$00,$19
                    db $0E,$1C,$5C,$00,$0A,$1C,$0B,$1C
                    db $0C,$1C,$1A,$1C,$1B,$1C,$0D,$1C
                    db $5C,$00,$1C,$1C,$0C,$1C,$1D,$1C
                    db $1B,$1C,$FF

DATA_20DC30:        db $03,$00,$00,$3F,$F8
                    db $01,$F9,$01,$F9,$41,$F8,$41,$F8
                    db $01,$F9,$01,$F9,$41,$F8,$41,$F8
                    db $01,$F9,$01,$F9,$41,$F8,$41,$F8
                    db $01,$F9,$01,$F9,$41,$F8,$41,$F8
                    db $01,$F9,$01,$F9,$41,$F8,$41,$F8
                    db $01,$F9,$01,$F9,$41,$F8,$41,$F8
                    db $01,$F9,$01,$F9,$41,$F8,$41,$F8
                    db $01,$F9,$01,$F9,$41,$F8,$41,$FF

DATA_20DC75:        db $0B,$00,$01,$3F,$95,$22,$95,$22
                    db $96,$22,$96,$22,$95,$22,$95,$22
                    db $96,$22,$96,$22,$95,$22,$95,$22
                    db $96,$22,$96,$22,$95,$22,$95,$22
                    db $96,$22,$96,$22,$95,$22,$95,$22
                    db $96,$22,$96,$22,$95,$22,$95,$22
                    db $96,$22,$96,$22,$95,$22,$95,$22
                    db $96,$22,$96,$22,$95,$22,$95,$22
                    db $96,$22,$96,$22,$F6,$22,$F6,$22
                    db $F7,$22,$F7,$22,$F6,$22,$F6,$22
                    db $F7,$22,$F7,$22,$F6,$22,$F6,$22
                    db $F7,$22,$F7,$22,$F6,$22,$F6,$22
                    db $F7,$22,$F7,$22,$F6,$22,$F6,$22
                    db $F7,$22,$F7,$22,$F6,$22,$F6,$22
                    db $F7,$22,$F7,$22,$F6,$22,$F6,$22
                    db $F7,$22,$F7,$22,$F6,$22,$F6,$22
                    db $F7,$22,$F7,$22,$F8,$22,$F8,$22
                    db $F9,$22,$F9,$22,$F8,$22,$F8,$22
                    db $F9,$22,$F9,$22,$F8,$22,$F8,$22
                    db $F9,$22,$F9,$22,$F8,$22,$F8,$22
                    db $F9,$22,$F9,$22,$F8,$22,$F8,$22
                    db $F9,$22,$F9,$22,$F8,$22,$F8,$22
                    db $F9,$22,$F9,$22,$F8,$22,$F8,$22
                    db $F9,$22,$F9,$22,$F8,$22,$F8,$22
                    db $F9,$22,$F9,$22,$FD,$20,$FD,$20
                    db $FC,$20,$FC,$20,$FD,$20,$FD,$20
                    db $FC,$20,$FC,$20,$FD,$20,$FD,$20
                    db $FC,$20,$FC,$20,$FD,$20,$FD,$20
                    db $FC,$20,$FC,$20,$FD,$20,$FD,$20
                    db $FC,$20,$FC,$20,$FD,$20,$FD,$20
                    db $FC,$20,$FC,$20,$FD,$20,$FD,$20
                    db $FC,$20,$FC,$20,$FD,$20,$FD,$20
                    db $FC,$20,$FC,$20,$FD,$20,$FD,$20
                    db $FC,$20,$FC,$20,$FD,$20,$FD,$20
                    db $FC,$20,$FC,$20,$FD,$20,$FD,$20
                    db $FC,$20,$FC,$20,$FD,$20,$FD,$20
                    db $FC,$20,$FC,$20,$FD,$20,$FD,$20
                    db $FC,$20,$FC,$20,$FD,$20,$FD,$20
                    db $FC,$20,$FC,$20,$FD,$20,$FD,$20
                    db $FC,$20,$FC,$20,$FD,$20,$FD,$20
                    db $FC,$20,$FC,$20,$FF

DATA_20DDBA:        db $00,$00,$00
                    db $00,$FF,$7F,$1F,$00,$00,$00,$00
                    db $00,$00,$00,$00,$00,$00,$00,$00
                    db $00,$00,$00,$00,$00,$00,$00,$00
                    db $00,$00,$00,$00,$00,$00,$00,$00
                    db $00,$00,$00,$00,$00,$00,$00,$00
                    db $00,$00,$00,$00,$00,$00,$00,$00
                    db $00,$00,$00,$00,$00,$00,$00,$00
                    db $00,$00,$00,$00,$00

DATA_20DDFA:        db $00,$00,$00
                    db $00,$FF,$7F,$1F,$00,$00,$00,$00
                    db $00,$00,$00,$4A,$29,$00,$00,$00
                    db $00,$4A,$29,$00,$00,$00,$00,$00
                    db $00,$4A,$29,$4A,$29,$00,$00,$00
                    db $00,$00,$00,$4A,$29,$00,$00,$4A
                    db $29,$00,$00,$00,$00,$00,$00,$4A
                    db $29,$00,$00,$00,$00,$00,$00,$4A
                    db $29,$00,$00,$00,$00

DATA_20DE3A:        db $00,$00,$00
                    db $00,$FF,$7F,$1F,$00,$00,$00,$00
                    db $00,$4A,$29,$B5,$56,$00,$00,$4A
                    db $29,$B5,$56,$4A,$29,$00,$00,$4A
                    db $29,$B5,$56,$B5,$56,$00,$00,$4A
                    db $29,$4A,$29,$B5,$56,$00,$00,$B5
                    db $56,$4A,$29,$4A,$29,$00,$00,$B5
                    db $56,$4A,$29,$4A,$29,$00,$00,$B5
                    db $56,$4A,$29,$4A,$29

DATA_20DE7A:        db $00,$00,$00
                    db $00,$FF,$7F,$1F,$00,$00,$00,$4A
                    db $29,$B5,$56,$FF,$7F,$00,$00,$B5
                    db $56,$FF,$7F,$B5,$56,$00,$00,$B5
                    db $56,$FF,$7F,$FF,$7F,$00,$00,$B5
                    db $56,$B5,$56,$FF,$7F,$00,$00,$FF
                    db $7F,$B5,$56,$B5,$56,$00,$00,$FF
                    db $7F,$B5,$56,$B5,$56,$00,$00,$FF
                    db $7F,$B5,$56,$B5,$56

DATA_20DEBA:        db $00,$00,$00
                    db $00,$FF,$7F,$1F,$00,$00,$00,$FF
                    db $02,$34,$23,$DF,$3A,$00,$00,$F6
                    db $6B,$FF,$7F,$FF,$03,$00,$00,$F1
                    db $76,$34,$23,$DF,$3A,$00,$00,$B5
                    db $56,$DF,$3A,$00,$00,$00,$00,$5F
                    db $62,$DF,$3A,$00,$00,$00,$00,$10
                    db $03,$DF,$3A,$00,$00,$00,$00,$10
                    db $03,$DF,$3A,$00,$00

DATA_20DEFA:        db $FF

DATA_20DEFB:        db $FF

DATA_20DEFC:        db $FF

DATA_20DEFD:        db $0A,$C0,$00,$FF,$63,$14,$63,$14
                    db $62,$14,$62,$14,$63,$14,$63,$14
                    db $62,$14,$62,$14,$63,$14,$63,$14
                    db $62,$14,$62,$14,$63,$14,$63,$14
                    db $62,$14,$62,$14,$63,$14,$63,$14
                    db $62,$14,$62,$14,$63,$14,$63,$14
                    db $62,$14,$62,$14,$63,$14,$63,$14
                    db $62,$14,$62,$14,$63,$14,$63,$14
                    db $62,$14,$62,$14,$71,$14,$71,$14
                    db $70,$14,$70,$14,$71,$14,$71,$14
                    db $70,$14,$70,$14,$71,$14,$71,$14
                    db $70,$14,$70,$14,$71,$14,$71,$14
                    db $70,$14,$70,$14,$71,$14,$71,$14
                    db $70,$14,$70,$14,$71,$14,$71,$14
                    db $70,$14,$70,$14,$71,$14,$71,$14
                    db $70,$14,$70,$14,$71,$14,$71,$14
                    db $70,$14,$70,$14,$73,$14,$73,$14
                    db $72,$14,$72,$14,$73,$14,$73,$14
                    db $72,$14,$72,$14,$73,$14,$73,$14
                    db $72,$14,$72,$14,$73,$14,$73,$14
                    db $72,$14,$72,$14,$73,$14,$73,$14
                    db $72,$14,$72,$14,$73,$14,$73,$14
                    db $72,$14,$72,$14,$73,$14,$73,$14
                    db $72,$14,$72,$14,$73,$14,$73,$14
                    db $72,$14,$72,$14,$FC,$10,$FC,$10
                    db $FD,$10,$FD,$10,$FC,$10,$FC,$10
                    db $FD,$10,$FD,$10,$FC,$10,$FC,$10
                    db $FD,$10,$FD,$10,$FC,$10,$FC,$10
                    db $FD,$10,$FD,$10,$FC,$10,$FC,$10
                    db $FD,$10,$FD,$10,$FC,$10,$FC,$10
                    db $FD,$10,$FD,$10,$FC,$10,$FC,$10
                    db $FD,$10,$FD,$10,$FC,$10,$FC,$10
                    db $FD,$10,$FD,$10,$FF

DATA_20E002:        db $00,$00,$00
                    db $00,$FF,$7F,$F6,$6B,$00,$00,$40
                    db $30,$8B,$62,$96,$7F,$00,$00,$FF
                    db $02,$FF,$7F,$7A,$11,$00,$00,$B6
                    db $5D,$F7,$7F,$F1,$76,$00,$00,$1F
                    db $00,$DF,$3A,$00,$00,$00,$00,$DF
                    db $3A,$5F,$62,$B0,$14,$00,$00,$34
                    db $23,$DF,$3A,$00,$00,$00,$00,$FF
                    db $7F,$FF,$7F,$FF,$7F

DATA_20E042:        db $FF

DATA_20E043:        db $00,$00
                    db $F1,$76,$FF,$7F,$00,$00,$00,$00
                    db $31,$72,$B5,$56,$00,$00,$00,$00
                    db $B6,$5D,$4A,$29,$00,$00,$00,$00
                    db $40,$30,$00,$00,$00,$00

DATA_20E063:        db $FF

DATA_20E064:        db $E0,$80,$80,$C8,$A0,$A4

DATA_20E06A:        db $E0,$C0,$C0
                    db $C8,$A0,$A4

DATA_20E070:        db $3E,$3F,$3E,$3E,$3F
                    db $3F

DATA_20E076:        db $2E,$3F,$3E,$2E,$3F,$3F

CODE_20E07C:        AD 26 07      LDA $0726                 
CODE_20E07F:        F0 21         BEQ CODE_20E0A2           
CODE_20E081:        A6 8D         LDX $8D                   
CODE_20E083:        BF 05 BB 20   LDA.l DATA_20BB05,x             
CODE_20E087:        A6 8F         LDX $8F                   
CODE_20E089:        C9 F0         CMP #$F0                  
CODE_20E08B:        90 06         BCC CODE_20E093           
CODE_20E08D:        38            SEC                       
CODE_20E08E:        E9 F0         SBC #$F0                  
CODE_20E090:        AA            TAX                       
CODE_20E091:        A9 00         LDA #$00                  
CODE_20E093:        18            CLC                       
CODE_20E094:        7F 6A E0 20   ADC.l DATA_20E06A,x             
CODE_20E098:        85 01         STA $01                   
CODE_20E09A:        64 00         STZ $00                   
CODE_20E09C:        BF 76 E0 20   LDA.l DATA_20E076,x             
CODE_20E0A0:        80 1F         BRA CODE_20E0C1           

CODE_20E0A2:        A6 8D         LDX $8D                   
CODE_20E0A4:        BF 05 BB 20   LDA.l DATA_20BB05,x             
CODE_20E0A8:        A6 8F         LDX $8F                   
CODE_20E0AA:        C9 F0         CMP #$F0                  
CODE_20E0AC:        90 06         BCC CODE_20E0B4           
CODE_20E0AE:        38            SEC                       
CODE_20E0AF:        E9 F0         SBC #$F0                  
CODE_20E0B1:        AA            TAX                       
CODE_20E0B2:        A9 00         LDA #$00                  
CODE_20E0B4:        18            CLC                       
CODE_20E0B5:        7F 64 E0 20   ADC.l DATA_20E064,x             
CODE_20E0B9:        85 01         STA $01                   
CODE_20E0BB:        64 00         STZ $00                   
CODE_20E0BD:        BF 70 E0 20   LDA.l DATA_20E070,x             
CODE_20E0C1:        8D 38 02      STA $0238                 
CODE_20E0C4:        A9 20         LDA #$20                  
CODE_20E0C6:        85 06         STA $06                   
CODE_20E0C8:        C2 30         REP #$30                  
CODE_20E0CA:        A9 5D BA      LDA #$BA5D                
CODE_20E0CD:        85 04         STA $04                   
CODE_20E0CF:        A5 8D         LDA $8D                   
CODE_20E0D1:        29 FF 00      AND #$00FF                
CODE_20E0D4:        AA            TAX                       
CODE_20E0D5:        BF 41 BA 20   LDA.l DATA_20BA41,x             
CODE_20E0D9:        29 FF 00      AND #$00FF                
CODE_20E0DC:        A8            TAY                       
CODE_20E0DD:        B7 04         LDA [$04],y               
CODE_20E0DF:        29 FF 00      AND #$00FF                
CODE_20E0E2:        AA            TAX                       
CODE_20E0E3:        BD E7 89      LDA.w DATA_2189E7,x               
CODE_20E0E6:        18            CLC                       
CODE_20E0E7:        65 00         ADC $00                   
CODE_20E0E9:        8D 20 02      STA $0220                 
CODE_20E0EC:        C8            INY                       
CODE_20E0ED:        B7 04         LDA [$04],y               
CODE_20E0EF:        29 FF 00      AND #$00FF                
CODE_20E0F2:        AA            TAX                       
CODE_20E0F3:        BD E7 89      LDA.w DATA_2189E7,x               
CODE_20E0F6:        18            CLC                       
CODE_20E0F7:        65 00         ADC $00                   
CODE_20E0F9:        8D 22 02      STA $0222                 
CODE_20E0FC:        C8            INY                       
CODE_20E0FD:        B7 04         LDA [$04],y               
CODE_20E0FF:        29 FF 00      AND #$00FF                
CODE_20E102:        AA            TAX                       
CODE_20E103:        BD E7 89      LDA.w DATA_2189E7,x               
CODE_20E106:        18            CLC                       
CODE_20E107:        65 00         ADC $00                   
CODE_20E109:        8D 24 02      STA $0224                 
CODE_20E10C:        C8            INY                       
CODE_20E10D:        B7 04         LDA [$04],y               
CODE_20E10F:        29 FF 00      AND #$00FF                
CODE_20E112:        AA            TAX                       
CODE_20E113:        BD E7 89      LDA.w DATA_2189E7,x               
CODE_20E116:        18            CLC                       
CODE_20E117:        65 00         ADC $00                   
CODE_20E119:        8D 26 02      STA $0226                 
CODE_20E11C:        C8            INY                       
CODE_20E11D:        B7 04         LDA [$04],y               
CODE_20E11F:        29 FF 00      AND #$00FF                
CODE_20E122:        AA            TAX                       
CODE_20E123:        BD E7 89      LDA.w DATA_2189E7,x               
CODE_20E126:        18            CLC                       
CODE_20E127:        65 00         ADC $00                   
CODE_20E129:        8D 28 02      STA $0228                 
CODE_20E12C:        C8            INY                       
CODE_20E12D:        B7 04         LDA [$04],y               
CODE_20E12F:        29 FF 00      AND #$00FF                
CODE_20E132:        AA            TAX                       
CODE_20E133:        BD E7 89      LDA.w DATA_2189E7,x               
CODE_20E136:        18            CLC                       
CODE_20E137:        65 00         ADC $00                   
CODE_20E139:        8D 2A 02      STA $022A                 
CODE_20E13C:        E2 30         SEP #$30                  
CODE_20E13E:        A6 8E         LDX $8E                   
CODE_20E140:        BF 05 BB 20   LDA.l DATA_20BB05,x             
CODE_20E144:        A6 90         LDX $90                   
CODE_20E146:        C9 F0         CMP #$F0                  
CODE_20E148:        90 06         BCC CODE_20E150           
CODE_20E14A:        38            SEC                       
CODE_20E14B:        E9 F0         SBC #$F0                  
CODE_20E14D:        AA            TAX                       
CODE_20E14E:        A9 00         LDA #$00                  
CODE_20E150:        18            CLC                       
CODE_20E151:        7F 6A E0 20   ADC.l DATA_20E06A,x             
CODE_20E155:        85 01         STA $01                   
CODE_20E157:        64 00         STZ $00                   
CODE_20E159:        BF 76 E0 20   LDA.l DATA_20E076,x             
CODE_20E15D:        8D 39 02      STA $0239                 
CODE_20E160:        C2 30         REP #$30                  
CODE_20E162:        A5 8E         LDA $8E                   
CODE_20E164:        29 FF 00      AND #$00FF                
CODE_20E167:        AA            TAX                       
CODE_20E168:        BF 41 BA 20   LDA.l DATA_20BA41,x             
CODE_20E16C:        29 FF 00      AND #$00FF                
CODE_20E16F:        A8            TAY                       
CODE_20E170:        B7 04         LDA [$04],y               
CODE_20E172:        29 FF 00      AND #$00FF                
CODE_20E175:        AA            TAX                       
CODE_20E176:        BD E7 89      LDA.w DATA_2189E7,x               
CODE_20E179:        18            CLC                       
CODE_20E17A:        65 00         ADC $00                   
CODE_20E17C:        8D 2C 02      STA $022C                 
CODE_20E17F:        C8            INY                       
CODE_20E180:        B7 04         LDA [$04],y               
CODE_20E182:        29 FF 00      AND #$00FF                
CODE_20E185:        AA            TAX                       
CODE_20E186:        BD E7 89      LDA.w DATA_2189E7,x               
CODE_20E189:        18            CLC                       
CODE_20E18A:        65 00         ADC $00                   
CODE_20E18C:        8D 2E 02      STA $022E                 
CODE_20E18F:        C8            INY                       
CODE_20E190:        B7 04         LDA [$04],y               
CODE_20E192:        29 FF 00      AND #$00FF                
CODE_20E195:        AA            TAX                       
CODE_20E196:        BD E7 89      LDA.w DATA_2189E7,x               
CODE_20E199:        18            CLC                       
CODE_20E19A:        65 00         ADC $00                   
CODE_20E19C:        8D 30 02      STA $0230                 
CODE_20E19F:        C8            INY                       
CODE_20E1A0:        B7 04         LDA [$04],y               
CODE_20E1A2:        29 FF 00      AND #$00FF                
CODE_20E1A5:        AA            TAX                       
CODE_20E1A6:        BD E7 89      LDA.w DATA_2189E7,x               
CODE_20E1A9:        18            CLC                       
CODE_20E1AA:        65 00         ADC $00                   
CODE_20E1AC:        8D 32 02      STA $0232                 
CODE_20E1AF:        C8            INY                       
CODE_20E1B0:        B7 04         LDA [$04],y               
CODE_20E1B2:        29 FF 00      AND #$00FF                
CODE_20E1B5:        AA            TAX                       
CODE_20E1B6:        BD E7 89      LDA.w DATA_2189E7,x               
CODE_20E1B9:        18            CLC                       
CODE_20E1BA:        65 00         ADC $00                   
CODE_20E1BC:        8D 34 02      STA $0234                 
CODE_20E1BF:        C8            INY                       
CODE_20E1C0:        B7 04         LDA [$04],y               
CODE_20E1C2:        29 FF 00      AND #$00FF                
CODE_20E1C5:        AA            TAX                       
CODE_20E1C6:        BD E7 89      LDA.w DATA_2189E7,x               
CODE_20E1C9:        18            CLC                       
CODE_20E1CA:        65 00         ADC $00                   
CODE_20E1CC:        8D 36 02      STA $0236                 
CODE_20E1CF:        E2 30         SEP #$30                  
CODE_20E1D1:        60            RTS                       

DATA_20E1D2:        db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF

DATA_20E230:        db $D0,$D2,$D2,$D4,$D6,$D6,$D2

CODE_20E237:        DA            PHX
CODE_20E238:        22 00 E0 22   JSL CODE_22E000           
CODE_20E23C:        FA            PLX                       
CODE_20E23D:        A6 BC         LDX $BC                   
CODE_20E23F:        A5 5E         LDA $5E                   
CODE_20E241:        85 00         STA $00                   
CODE_20E243:        A5 43         LDA $43                   
CODE_20E245:        85 01         STA $01                   
CODE_20E247:        C2 20         REP #$20                  
CODE_20E249:        A5 00         LDA $00                   
CODE_20E24B:        38            SEC                       
CODE_20E24C:        ED 10 02      SBC $0210                 
CODE_20E24F:        85 D8         STA $D8                   
CODE_20E251:        18            CLC                       
CODE_20E252:        69 08 00      ADC #$0008                
CODE_20E255:        85 DA         STA $DA                   
CODE_20E257:        18            CLC                       
CODE_20E258:        69 08 00      ADC #$0008                
CODE_20E25B:        85 DC         STA $DC                   
CODE_20E25D:        E2 20         SEP #$20                  
CODE_20E25F:        A5 D8         LDA $D8                   
CODE_20E261:        85 79         STA $79                   
CODE_20E263:        AD 25 04      LDA $0425                 
CODE_20E266:        F0 06         BEQ CODE_20E26E           
CODE_20E268:        64 D9         STZ $D9                   
CODE_20E26A:        64 DB         STZ $DB                   
CODE_20E26C:        64 DD         STZ $DD                   
CODE_20E26E:        A5 70         LDA $70                   
CODE_20E270:        38            SEC                       
CODE_20E271:        ED 43 05      SBC $0543                 
CODE_20E274:        85 82         STA $82                   
CODE_20E276:        A5 55         LDA $55                   
CODE_20E278:        ED 42 05      SBC $0542                 
CODE_20E27B:        8D 44 05      STA $0544                 
CODE_20E27E:        AD 52 05      LDA $0552                 
CODE_20E281:        F0 0A         BEQ CODE_20E28D           
CODE_20E283:        CE 52 05      DEC $0552                 
CODE_20E286:        29 02         AND #$02                  
CODE_20E288:        F0 03         BEQ CODE_20E28D           
CODE_20E28A:        4C EA E5      JMP CODE_20E5EA           
CODE_20E28D:        AD 55 05      LDA $0555                 
CODE_20E290:        D0 0E         BNE CODE_20E2A0           
CODE_20E292:        AD 53 05      LDA $0553                 
CODE_20E295:        F0 2A         BEQ CODE_20E2C1           
CODE_20E297:        A5 15         LDA $15                   
CODE_20E299:        29 01         AND #$01                  
CODE_20E29B:        F0 03         BEQ CODE_20E2A0           
CODE_20E29D:        CE 53 05      DEC $0553                 
CODE_20E2A0:        A5 15         LDA $15                   
CODE_20E2A2:        29 0F         AND #$0F                  
CODE_20E2A4:        AC 55 05      LDY $0555                 
CODE_20E2A7:        D0 14         BNE CODE_20E2BD           
CODE_20E2A9:        AC 53 05      LDY $0553                 
CODE_20E2AC:        C0 20         CPY #$20                  
CODE_20E2AE:        D0 0B         BNE CODE_20E2BB           
CODE_20E2B0:        AC 67 05      LDY $0567                 
CODE_20E2B3:        D0 06         BNE CODE_20E2BB           
CODE_20E2B5:        AC 62 10      LDY $1062                 
CODE_20E2B8:        8C 02 12      STY $1202                 
CODE_20E2BB:        B0 02         BCS CODE_20E2BF                   
CODE_20E2BD:        4A            LSR A                     
CODE_20E2BE:        4A            LSR A                     
CODE_20E2BF:        29 03         AND #$03                  
CODE_20E2C1:        0A            ASL A                     
CODE_20E2C2:        09 20         ORA #$20                  
CODE_20E2C4:        C9 20         CMP #$20                  
CODE_20E2C6:        D0 02         BNE CODE_20E2CA           
CODE_20E2C8:        09 0E         ORA #$0E                  
CODE_20E2CA:        85 00         STA $00                   
CODE_20E2CC:        AD 53 05      LDA $0553                 
CODE_20E2CF:        F0 0C         BEQ CODE_20E2DD           
CODE_20E2D1:        22 83 CD 29   JSL CODE_29CD83           
CODE_20E2D5:        A5 00         LDA $00                   
CODE_20E2D7:        29 F1         AND #$F1                  
CODE_20E2D9:        09 0E         ORA #$0E                  
CODE_20E2DB:        85 00         STA $00                   
CODE_20E2DD:        AD 88 05      LDA $0588                 
CODE_20E2E0:        0D 8A 05      ORA $058A                 
CODE_20E2E3:        F0 08         BEQ CODE_20E2ED           
CODE_20E2E5:        A5 00         LDA $00                   
CODE_20E2E7:        29 CF         AND #$CF                  
CODE_20E2E9:        09 10         ORA #$10                  
CODE_20E2EB:        85 00         STA $00                   
CODE_20E2ED:        C2 10         REP #$10                  
CODE_20E2EF:        A6 C4         LDX $C4                   
CODE_20E2F1:        A9 00         LDA #$00                  
CODE_20E2F3:        9D 1A 08      STA $081A,x               
CODE_20E2F6:        1A            INC A                     
CODE_20E2F7:        9D 1E 08      STA $081E,x               
CODE_20E2FA:        1A            INC A                     
CODE_20E2FB:        9D 22 08      STA $0822,x               
CODE_20E2FE:        1A            INC A                     
CODE_20E2FF:        9D 26 08      STA $0826,x               
CODE_20E302:        1A            INC A                     
CODE_20E303:        9D 2A 08      STA $082A,x               
CODE_20E306:        1A            INC A                     
CODE_20E307:        9D 2E 08      STA $082E,x               
CODE_20E30A:        1A            INC A                     
CODE_20E30B:        9D 02 08      STA $0802,x               
CODE_20E30E:        1A            INC A                     
CODE_20E30F:        9D 06 08      STA $0806,x               
CODE_20E312:        1A            INC A                     
CODE_20E313:        9D 0A 08      STA $080A,x               
CODE_20E316:        1A            INC A                     
CODE_20E317:        9D 0E 08      STA $080E,x               
CODE_20E31A:        1A            INC A                     
CODE_20E31B:        9D 12 08      STA $0812,x               
CODE_20E31E:        1A            INC A                     
CODE_20E31F:        9D 16 08      STA $0816,x               
CODE_20E322:        A5 BD         LDA $BD                   
CODE_20E324:        29 C0         AND #$C0                  
CODE_20E326:        05 00         ORA $00                   
CODE_20E328:        9D 03 08      STA $0803,x               
CODE_20E32B:        9D 07 08      STA $0807,x               
CODE_20E32E:        9D 0B 08      STA $080B,x               
CODE_20E331:        9D 0F 08      STA $080F,x               
CODE_20E334:        9D 13 08      STA $0813,x               
CODE_20E337:        9D 17 08      STA $0817,x               
CODE_20E33A:        9D 1B 08      STA $081B,x               
CODE_20E33D:        9D 1F 08      STA $081F,x               
CODE_20E340:        9D 23 08      STA $0823,x               
CODE_20E343:        9D 27 08      STA $0827,x               
CODE_20E346:        9D 2B 08      STA $082B,x               
CODE_20E349:        9D 2F 08      STA $082F,x               
CODE_20E34C:        C2 20         REP #$20                  
CODE_20E34E:        AD 26 02      LDA $0226                 
CODE_20E351:        CD 28 02      CMP $0228                 
CODE_20E354:        D0 21         BNE CODE_20E377           
CODE_20E356:        E2 20         SEP #$20                  
CODE_20E358:        BD 1B 08      LDA $081B,x               
CODE_20E35B:        29 BF         AND #$BF                  
CODE_20E35D:        9D 1B 08      STA $081B,x               
CODE_20E360:        9D 1F 08      STA $081F,x               
CODE_20E363:        9D 03 08      STA $0803,x               
CODE_20E366:        9D 07 08      STA $0807,x               
CODE_20E369:        09 40         ORA #$40                  
CODE_20E36B:        9D 0B 08      STA $080B,x               
CODE_20E36E:        9D 0F 08      STA $080F,x               
CODE_20E371:        9D 23 08      STA $0823,x               
CODE_20E374:        9D 27 08      STA $0827,x               
CODE_20E377:        E2 20         SEP #$20                  
CODE_20E379:        A5 82         LDA $82                   
CODE_20E37B:        9D 19 08      STA $0819,x               
CODE_20E37E:        9D 21 08      STA $0821,x               
CODE_20E381:        9D 29 08      STA $0829,x               
CODE_20E384:        18            CLC                       
CODE_20E385:        69 08         ADC #$08                  
CODE_20E387:        9D 1D 08      STA $081D,x               
CODE_20E38A:        9D 25 08      STA $0825,x               
CODE_20E38D:        9D 2D 08      STA $082D,x               
CODE_20E390:        18            CLC                       
CODE_20E391:        69 08         ADC #$08                  
CODE_20E393:        9D 01 08      STA $0801,x               
CODE_20E396:        9D 09 08      STA $0809,x               
CODE_20E399:        9D 11 08      STA $0811,x               
CODE_20E39C:        18            CLC                       
CODE_20E39D:        69 08         ADC #$08                  
CODE_20E39F:        9D 05 08      STA $0805,x               
CODE_20E3A2:        9D 0D 08      STA $080D,x               
CODE_20E3A5:        9D 15 08      STA $0815,x               
CODE_20E3A8:        A5 79         LDA $79                   
CODE_20E3AA:        9D 00 08      STA $0800,x               
CODE_20E3AD:        9D 04 08      STA $0804,x               
CODE_20E3B0:        9D 18 08      STA $0818,x               
CODE_20E3B3:        9D 1C 08      STA $081C,x               
CODE_20E3B6:        18            CLC                       
CODE_20E3B7:        69 08         ADC #$08                  
CODE_20E3B9:        9D 08 08      STA $0808,x               
CODE_20E3BC:        9D 0C 08      STA $080C,x               
CODE_20E3BF:        9D 20 08      STA $0820,x               
CODE_20E3C2:        9D 24 08      STA $0824,x               
CODE_20E3C5:        18            CLC                       
CODE_20E3C6:        69 08         ADC #$08                  
CODE_20E3C8:        9D 10 08      STA $0810,x               
CODE_20E3CB:        9D 14 08      STA $0814,x               
CODE_20E3CE:        9D 28 08      STA $0828,x               
CODE_20E3D1:        9D 2C 08      STA $082C,x               
CODE_20E3D4:        DA            PHX                       
CODE_20E3D5:        C2 20         REP #$20                  
CODE_20E3D7:        8A            TXA                       
CODE_20E3D8:        4A            LSR A                     
CODE_20E3D9:        4A            LSR A                     
CODE_20E3DA:        AA            TAX                       
CODE_20E3DB:        E2 20         SEP #$20                  
CODE_20E3DD:        A5 D9         LDA $D9                   
CODE_20E3DF:        29 01         AND #$01                  
CODE_20E3E1:        9D 20 0A      STA $0A20,x               
CODE_20E3E4:        9D 21 0A      STA $0A21,x               
CODE_20E3E7:        9D 26 0A      STA $0A26,x               
CODE_20E3EA:        9D 27 0A      STA $0A27,x               
CODE_20E3ED:        A5 DB         LDA $DB                   
CODE_20E3EF:        29 01         AND #$01                  
CODE_20E3F1:        9D 22 0A      STA $0A22,x               
CODE_20E3F4:        9D 23 0A      STA $0A23,x               
CODE_20E3F7:        9D 28 0A      STA $0A28,x               
CODE_20E3FA:        9D 29 0A      STA $0A29,x               
CODE_20E3FD:        A5 DD         LDA $DD                   
CODE_20E3FF:        29 01         AND #$01                  
CODE_20E401:        9D 24 0A      STA $0A24,x               
CODE_20E404:        9D 25 0A      STA $0A25,x               
CODE_20E407:        9D 2A 0A      STA $0A2A,x               
CODE_20E40A:        9D 2B 0A      STA $0A2B,x               
CODE_20E40D:        FA            PLX                       
CODE_20E40E:        A5 BD         LDA $BD                   
CODE_20E410:        29 40         AND #$40                  
CODE_20E412:        D0 03         BNE CODE_20E417           
CODE_20E414:        82 AC 00      BRL CODE_20E4C3           

CODE_20E417:        BD 02 08      LDA $0802,x               
CODE_20E41A:        48            PHA                       
CODE_20E41B:        BD 0A 08      LDA $080A,x               
CODE_20E41E:        9D 02 08      STA $0802,x               
CODE_20E421:        68            PLA                       
CODE_20E422:        9D 0A 08      STA $080A,x               
CODE_20E425:        BD 06 08      LDA $0806,x               
CODE_20E428:        48            PHA                       
CODE_20E429:        BD 0E 08      LDA $080E,x               
CODE_20E42C:        9D 06 08      STA $0806,x               
CODE_20E42F:        68            PLA                       
CODE_20E430:        9D 0E 08      STA $080E,x               
CODE_20E433:        BD 10 08      LDA $0810,x               
CODE_20E436:        18            CLC                       
CODE_20E437:        69 E8         ADC #$E8                  
CODE_20E439:        9D 10 08      STA $0810,x               
CODE_20E43C:        9D 14 08      STA $0814,x               
CODE_20E43F:        9D 28 08      STA $0828,x               
CODE_20E442:        9D 2C 08      STA $082C,x               
CODE_20E445:        AD 25 04      LDA $0425                 
CODE_20E448:        D0 22         BNE CODE_20E46C           
CODE_20E44A:        DA            PHX                       
CODE_20E44B:        C2 20         REP #$20                  
CODE_20E44D:        A5 DC         LDA $DC                   
CODE_20E44F:        38            SEC                       
CODE_20E450:        E9 18 00      SBC #$0018                
CODE_20E453:        85 DC         STA $DC                   
CODE_20E455:        8A            TXA                       
CODE_20E456:        4A            LSR A                     
CODE_20E457:        4A            LSR A                     
CODE_20E458:        AA            TAX                       
CODE_20E459:        E2 20         SEP #$20                  
CODE_20E45B:        A5 DD         LDA $DD                   
CODE_20E45D:        29 01         AND #$01                  
CODE_20E45F:        9D 24 0A      STA $0A24,x               
CODE_20E462:        9D 25 0A      STA $0A25,x               
CODE_20E465:        9D 2A 0A      STA $0A2A,x               
CODE_20E468:        9D 2B 0A      STA $0A2B,x               
CODE_20E46B:        FA            PLX                       
CODE_20E46C:        BD 1A 08      LDA $081A,x               
CODE_20E46F:        48            PHA                       
CODE_20E470:        BD 22 08      LDA $0822,x               
CODE_20E473:        9D 1A 08      STA $081A,x               
CODE_20E476:        68            PLA                       
CODE_20E477:        9D 22 08      STA $0822,x               
CODE_20E47A:        BD 1E 08      LDA $081E,x               
CODE_20E47D:        48            PHA                       
CODE_20E47E:        BD 26 08      LDA $0826,x               
CODE_20E481:        9D 1E 08      STA $081E,x               
CODE_20E484:        68            PLA                       
CODE_20E485:        9D 26 08      STA $0826,x               
CODE_20E488:        AD 4F 05      LDA $054F                 
CODE_20E48B:        F0 36         BEQ CODE_20E4C3           
CODE_20E48D:        BD 00 08      LDA $0800,x               
CODE_20E490:        18            CLC                       
CODE_20E491:        69 08         ADC #$08                  
CODE_20E493:        9D 00 08      STA $0800,x               
CODE_20E496:        9D 04 08      STA $0804,x               
CODE_20E499:        9D 18 08      STA $0818,x               
CODE_20E49C:        9D 1C 08      STA $081C,x               
CODE_20E49F:        BD 08 08      LDA $0808,x               
CODE_20E4A2:        18            CLC                       
CODE_20E4A3:        69 08         ADC #$08                  
CODE_20E4A5:        9D 08 08      STA $0808,x               
CODE_20E4A8:        9D 0C 08      STA $080C,x               
CODE_20E4AB:        9D 20 08      STA $0820,x               
CODE_20E4AE:        9D 24 08      STA $0824,x               
CODE_20E4B1:        BD 10 08      LDA $0810,x               
CODE_20E4B4:        18            CLC                       
CODE_20E4B5:        69 08         ADC #$08                  
CODE_20E4B7:        9D 10 08      STA $0810,x               
CODE_20E4BA:        9D 14 08      STA $0814,x               
CODE_20E4BD:        9D 28 08      STA $0828,x               
CODE_20E4C0:        9D 2C 08      STA $082C,x               
CODE_20E4C3:        AD 77 05      LDA $0577                 
CODE_20E4C6:        D0 03         BNE CODE_20E4CB           
CODE_20E4C8:        82 8E 00      BRL CODE_20E559           

CODE_20E4CB:        A0 00 00      LDY #$0000                
CODE_20E4CE:        A5 BB         LDA $BB                   
CODE_20E4D0:        D0 03         BNE CODE_20E4D5           
CODE_20E4D2:        A0 06 00      LDY #$0006                
CODE_20E4D5:        84 00         STY $00                   
CODE_20E4D7:        A5 A6         LDA $A6                   
CODE_20E4D9:        F0 13         BEQ CODE_20E4EE           
CODE_20E4DB:        A5 9D         LDA $9D                   
CODE_20E4DD:        10 02         BPL CODE_20E4E1           
CODE_20E4DF:        49 FF         EOR #$FF                  
CODE_20E4E1:        4A            LSR A                     
CODE_20E4E2:        4A            LSR A                     
CODE_20E4E3:        4A            LSR A                     
CODE_20E4E4:        4A            LSR A                     
CODE_20E4E5:        38            SEC                       
CODE_20E4E6:        E9 03         SBC #$03                  
CODE_20E4E8:        49 FF         EOR #$FF                  
CODE_20E4EA:        10 02         BPL CODE_20E4EE           
CODE_20E4EC:        A9 00         LDA #$00                  
CODE_20E4EE:        18            CLC                       
CODE_20E4EF:        65 00         ADC $00                   
CODE_20E4F1:        18            CLC                       
CODE_20E4F2:        65 82         ADC $82                   
CODE_20E4F4:        9D 19 08      STA $0819,x               
CODE_20E4F7:        9D 21 08      STA $0821,x               
CODE_20E4FA:        9D 29 08      STA $0829,x               
CODE_20E4FD:        18            CLC                       
CODE_20E4FE:        69 08         ADC #$08                  
CODE_20E500:        9D 1D 08      STA $081D,x               
CODE_20E503:        9D 25 08      STA $0825,x               
CODE_20E506:        9D 2D 08      STA $082D,x               
CODE_20E509:        A9 28         LDA #$28                  
CODE_20E50B:        9D 02 08      STA $0802,x               
CODE_20E50E:        A9 29         LDA #$29                  
CODE_20E510:        9D 06 08      STA $0806,x               
CODE_20E513:        A0 2A 00      LDY #$002A                
CODE_20E516:        A5 15         LDA $15                   
CODE_20E518:        29 08         AND #$08                  
CODE_20E51A:        F0 02         BEQ CODE_20E51E           
CODE_20E51C:        C8            INY                       
CODE_20E51D:        C8            INY                       
CODE_20E51E:        98            TYA                       
CODE_20E51F:        9D 0A 08      STA $080A,x               
CODE_20E522:        1A            INC A                     
CODE_20E523:        9D 0E 08      STA $080E,x               
CODE_20E526:        BD 03 08      LDA $0803,x               
CODE_20E529:        29 F0         AND #$F0                  
CODE_20E52B:        09 05         ORA #$05                  
CODE_20E52D:        9D 03 08      STA $0803,x               
CODE_20E530:        9D 07 08      STA $0807,x               
CODE_20E533:        9D 0B 08      STA $080B,x               
CODE_20E536:        9D 0F 08      STA $080F,x               
CODE_20E539:        29 40         AND #$40                  
CODE_20E53B:        F0 1C         BEQ CODE_20E559           
CODE_20E53D:        BD 0A 08      LDA $080A,x               
CODE_20E540:        48            PHA                       
CODE_20E541:        BD 02 08      LDA $0802,x               
CODE_20E544:        9D 0A 08      STA $080A,x               
CODE_20E547:        68            PLA                       
CODE_20E548:        9D 02 08      STA $0802,x               
CODE_20E54B:        BD 0E 08      LDA $080E,x               
CODE_20E54E:        48            PHA                       
CODE_20E54F:        BD 06 08      LDA $0806,x               
CODE_20E552:        9D 0E 08      STA $080E,x               
CODE_20E555:        68            PLA                       
CODE_20E556:        9D 06 08      STA $0806,x               
CODE_20E559:        A5 BC         LDA $BC                   
CODE_20E55B:        C9 5A         CMP #$5A                  
CODE_20E55D:        D0 55         BNE CODE_20E5B4           
CODE_20E55F:        AD 4F 05      LDA $054F                 
CODE_20E562:        D0 50         BNE CODE_20E5B4           
CODE_20E564:        BD 01 08      LDA $0801,x               
CODE_20E567:        9D 29 08      STA $0829,x               
CODE_20E56A:        BD 05 08      LDA $0805,x               
CODE_20E56D:        9D 2D 08      STA $082D,x               
CODE_20E570:        C2 20         REP #$20                  
CODE_20E572:        A5 BD         LDA $BD                   
CODE_20E574:        29 FF 00      AND #$00FF                
CODE_20E577:        A8            TAY                       
CODE_20E578:        E2 20         SEP #$20                  
CODE_20E57A:        A9 F8         LDA #$F8                  
CODE_20E57C:        C0 00 00      CPY #$0000                
CODE_20E57F:        F0 02         BEQ CODE_20E583           
CODE_20E581:        A9 10         LDA #$10                  
CODE_20E583:        18            CLC                       
CODE_20E584:        7D 18 08      ADC $0818,x               
CODE_20E587:        9D 28 08      STA $0828,x               
CODE_20E58A:        9D 2C 08      STA $082C,x               
CODE_20E58D:        DA            PHX                       
CODE_20E58E:        C2 20         REP #$20                  
CODE_20E590:        A5 BB         LDA $BB                   
CODE_20E592:        29 FF 00      AND #$00FF                
CODE_20E595:        AA            TAX                       
CODE_20E596:        E2 20         SEP #$20                  
CODE_20E598:        BF 30 E2 20   LDA.l DATA_20E230,x             
CODE_20E59C:        FA            PLX                       
CODE_20E59D:        9D 2A 08      STA $082A,x               
CODE_20E5A0:        1A            INC A                     
CODE_20E5A1:        9D 2E 08      STA $082E,x               
CODE_20E5A4:        BD 1B 08      LDA $081B,x               
CODE_20E5A7:        09 01         ORA #$01                  
CODE_20E5A9:        9D 2B 08      STA $082B,x               
CODE_20E5AC:        BD 1F 08      LDA $081F,x               
CODE_20E5AF:        09 01         ORA #$01                  
CODE_20E5B1:        9D 2F 08      STA $082F,x               
CODE_20E5B4:        A5 BD         LDA $BD                   
CODE_20E5B6:        29 80         AND #$80                  
CODE_20E5B8:        F0 30         BEQ CODE_20E5EA           
CODE_20E5BA:        BD 01 08      LDA $0801,x               
CODE_20E5BD:        9D 1D 08      STA $081D,x               
CODE_20E5C0:        9D 25 08      STA $0825,x               
CODE_20E5C3:        9D 2D 08      STA $082D,x               
CODE_20E5C6:        18            CLC                       
CODE_20E5C7:        69 F8         ADC #$F8                  
CODE_20E5C9:        9D 01 08      STA $0801,x               
CODE_20E5CC:        9D 09 08      STA $0809,x               
CODE_20E5CF:        9D 11 08      STA $0811,x               
CODE_20E5D2:        BD 05 08      LDA $0805,x               
CODE_20E5D5:        9D 19 08      STA $0819,x               
CODE_20E5D8:        9D 21 08      STA $0821,x               
CODE_20E5DB:        9D 29 08      STA $0829,x               
CODE_20E5DE:        18            CLC                       
CODE_20E5DF:        69 E8         ADC #$E8                  
CODE_20E5E1:        9D 05 08      STA $0805,x               
CODE_20E5E4:        9D 0D 08      STA $080D,x               
CODE_20E5E7:        9D 15 08      STA $0815,x               
CODE_20E5EA:        C2 10         REP #$10                  
CODE_20E5EC:        9C 83 05      STZ $0583                 
CODE_20E5EF:        A0 F0 00      LDY #$00F0                
CODE_20E5F2:        AD 44 05      LDA $0544                 
CODE_20E5F5:        10 43         BPL CODE_20E63A           
CODE_20E5F7:        A5 82         LDA $82                   
CODE_20E5F9:        18            CLC                       
CODE_20E5FA:        69 10         ADC #$10                  
CODE_20E5FC:        A9 00         LDA #$00                  
CODE_20E5FE:        6D 44 05      ADC $0544                 
CODE_20E601:        F0 35         BEQ CODE_20E638           
CODE_20E603:        EE 83 05      INC $0583                 
CODE_20E606:        98            TYA                       
CODE_20E607:        9D 19 08      STA $0819,x               
CODE_20E60A:        9D 21 08      STA $0821,x               
CODE_20E60D:        9D 29 08      STA $0829,x               
CODE_20E610:        9D 1D 08      STA $081D,x               
CODE_20E613:        9D 25 08      STA $0825,x               
CODE_20E616:        9D 2D 08      STA $082D,x               
CODE_20E619:        A5 82         LDA $82                   
CODE_20E61B:        18            CLC                       
CODE_20E61C:        69 20         ADC #$20                  
CODE_20E61E:        A9 00         LDA #$00                  
CODE_20E620:        6D 44 05      ADC $0544                 
CODE_20E623:        F0 13         BEQ CODE_20E638           
CODE_20E625:        98            TYA                       
CODE_20E626:        9D 01 08      STA $0801,x               
CODE_20E629:        9D 09 08      STA $0809,x               
CODE_20E62C:        9D 11 08      STA $0811,x               
CODE_20E62F:        9D 05 08      STA $0805,x               
CODE_20E632:        9D 0D 08      STA $080D,x               
CODE_20E635:        9D 15 08      STA $0815,x               
CODE_20E638:        80 37         BRA CODE_20E671           

CODE_20E63A:        D0 0C         BNE CODE_20E648           
CODE_20E63C:        A5 82         LDA $82                   
CODE_20E63E:        C9 C0         CMP #$C0                  
CODE_20E640:        B0 06         BCS CODE_20E648                   
CODE_20E642:        C9 B0         CMP #$B0                  
CODE_20E644:        B0 18         BCS CODE_20E65E                   
CODE_20E646:        90 29         BCC CODE_20E671           
CODE_20E648:        EE 83 05      INC $0583                 
CODE_20E64B:        98            TYA                       
CODE_20E64C:        9D 19 08      STA $0819,x               
CODE_20E64F:        9D 21 08      STA $0821,x               
CODE_20E652:        9D 29 08      STA $0829,x               
CODE_20E655:        9D 1D 08      STA $081D,x               
CODE_20E658:        9D 25 08      STA $0825,x               
CODE_20E65B:        9D 2D 08      STA $082D,x               
CODE_20E65E:        98            TYA                       
CODE_20E65F:        9D 01 08      STA $0801,x               
CODE_20E662:        9D 09 08      STA $0809,x               
CODE_20E665:        9D 11 08      STA $0811,x               
CODE_20E668:        9D 05 08      STA $0805,x               
CODE_20E66B:        9D 0D 08      STA $080D,x               
CODE_20E66E:        9D 15 08      STA $0815,x               
CODE_20E671:        E2 10         SEP #$10                  
CODE_20E673:        A5 52         LDA $52                   
CODE_20E675:        C5 53         CMP $53                   
CODE_20E677:        D0 03         BNE CODE_20E67C           
CODE_20E679:        1A            INC A                     
CODE_20E67A:        F0 05         BEQ CODE_20E681           
CODE_20E67C:        AD 71 05      LDA $0571                 
CODE_20E67F:        D0 03         BNE CODE_20E684           
CODE_20E681:        82 DD 00      BRL CODE_20E761           

CODE_20E684:        AD 50 03      LDA $0350                 
CODE_20E687:        C9 03         CMP #$03                  
CODE_20E689:        F0 F6         BEQ CODE_20E681           
CODE_20E68B:        A9 00         LDA #$00                  
CODE_20E68D:        8F 22 C5 7F   STA $7FC522               
CODE_20E691:        8F 23 C5 7F   STA $7FC523               
CODE_20E695:        A5 52         LDA $52                   
CODE_20E697:        38            SEC                       
CODE_20E698:        ED 10 02      SBC $0210                 
CODE_20E69B:        8D 00 08      STA $0800                 
CODE_20E69E:        8D 04 08      STA $0804                 
CODE_20E6A1:        8D 08 08      STA $0808                 
CODE_20E6A4:        8D 0C 08      STA $080C                 
CODE_20E6A7:        18            CLC                       
CODE_20E6A8:        69 08         ADC #$08                  
CODE_20E6AA:        8D 10 08      STA $0810                 
CODE_20E6AD:        8D 14 08      STA $0814                 
CODE_20E6B0:        8D 18 08      STA $0818                 
CODE_20E6B3:        8D 1C 08      STA $081C                 
CODE_20E6B6:        A5 53         LDA $53                   
CODE_20E6B8:        38            SEC                       
CODE_20E6B9:        ED 43 05      SBC $0543                 
CODE_20E6BC:        48            PHA                       
CODE_20E6BD:        C9 F0         CMP #$F0                  
CODE_20E6BF:        90 02         BCC CODE_20E6C3           
CODE_20E6C1:        A9 00         LDA #$00                  
CODE_20E6C3:        8D 01 08      STA $0801                 
CODE_20E6C6:        8D 11 08      STA $0811                 
CODE_20E6C9:        18            CLC                       
CODE_20E6CA:        69 08         ADC #$08                  
CODE_20E6CC:        8D 05 08      STA $0805                 
CODE_20E6CF:        8D 15 08      STA $0815                 
CODE_20E6D2:        68            PLA                       
CODE_20E6D3:        18            CLC                       
CODE_20E6D4:        69 10         ADC #$10                  
CODE_20E6D6:        8D 09 08      STA $0809                 
CODE_20E6D9:        8D 19 08      STA $0819                 
CODE_20E6DC:        18            CLC                       
CODE_20E6DD:        69 07         ADC #$07                  
CODE_20E6DF:        8D 0D 08      STA $080D                 
CODE_20E6E2:        8D 1D 08      STA $081D                 
CODE_20E6E5:        A9 FE         LDA #$FE                  
CODE_20E6E7:        8D 02 08      STA $0802                 
CODE_20E6EA:        8D 06 08      STA $0806                 
CODE_20E6ED:        8D 0A 08      STA $080A                 
CODE_20E6F0:        8D 0E 08      STA $080E                 
CODE_20E6F3:        8D 12 08      STA $0812                 
CODE_20E6F6:        8D 16 08      STA $0816                 
CODE_20E6F9:        8D 1A 08      STA $081A                 
CODE_20E6FC:        8D 1E 08      STA $081E                 
CODE_20E6FF:        A9 11         LDA #$11                  
CODE_20E701:        8D 03 08      STA $0803                 
CODE_20E704:        8D 07 08      STA $0807                 
CODE_20E707:        8D 0B 08      STA $080B                 
CODE_20E70A:        8D 0F 08      STA $080F                 
CODE_20E70D:        8D 13 08      STA $0813                 
CODE_20E710:        8D 17 08      STA $0817                 
CODE_20E713:        8D 1B 08      STA $081B                 
CODE_20E716:        8D 1F 08      STA $081F                 
CODE_20E719:        A9 00         LDA #$00                  
CODE_20E71B:        8D 20 0A      STA $0A20                 
CODE_20E71E:        8D 21 0A      STA $0A21                 
CODE_20E721:        8D 22 0A      STA $0A22                 
CODE_20E724:        8D 23 0A      STA $0A23                 
CODE_20E727:        AD 71 05      LDA $0571                 
CODE_20E72A:        C9 10         CMP #$10                  
CODE_20E72C:        D0 14         BNE CODE_20E742           
CODE_20E72E:        AD 19 08      LDA $0819                 
CODE_20E731:        3A            DEC A                     
CODE_20E732:        3A            DEC A                     
CODE_20E733:        8D 19 08      STA $0819                 
CODE_20E736:        8D 1D 08      STA $081D                 
CODE_20E739:        A9 EE         LDA #$EE                  
CODE_20E73B:        8D 1E 08      STA $081E                 
CODE_20E73E:        A9 02         LDA #$02                  
CODE_20E740:        80 10         BRA CODE_20E752           

CODE_20E742:        AD BB 1E      LDA $1EBB                 
CODE_20E745:        C9 A4         CMP #$A4                  
CODE_20E747:        D0 07         BNE CODE_20E750           
CODE_20E749:        AD BC 1E      LDA $1EBC                 
CODE_20E74C:        C9 B7         CMP #$B7                  
CODE_20E74E:        F0 DE         BEQ CODE_20E72E           
CODE_20E750:        A9 00         LDA #$00                  
CODE_20E752:        8D 24 0A      STA $0A24                 
CODE_20E755:        8D 25 0A      STA $0A25                 
CODE_20E758:        8D 26 0A      STA $0A26                 
CODE_20E75B:        8D 27 0A      STA $0A27                 
CODE_20E75E:        82 A1 00      BRL CODE_20E802           

CODE_20E761:        A6 C4         LDX $C4                   
CODE_20E763:        AD 25 04      LDA $0425                 
CODE_20E766:        F0 1B         BEQ CODE_20E783           
CODE_20E768:        A0 00         LDY #$00                  
CODE_20E76A:        BD 00 08      LDA $0800,x               
CODE_20E76D:        C9 F8         CMP #$F8                  
CODE_20E76F:        B0 14         BCS CODE_20E785                   
CODE_20E771:        A0 08         LDY #$08                  
CODE_20E773:        BD 08 08      LDA $0808,x               
CODE_20E776:        C9 F8         CMP #$F8                  
CODE_20E778:        B0 0B         BCS CODE_20E785                   
CODE_20E77A:        A0 10         LDY #$10                  
CODE_20E77C:        BD 10 08      LDA $0810,x               
CODE_20E77F:        C9 F8         CMP #$F8                  
CODE_20E781:        B0 02         BCS CODE_20E785                   
CODE_20E783:        80 7D         BRA CODE_20E802           
CODE_20E785:        84 D8         STY $D8                   
CODE_20E787:        8A            TXA                       
CODE_20E788:        18            CLC                       
CODE_20E789:        65 D8         ADC $D8                   
CODE_20E78B:        A8            TAY                       
CODE_20E78C:        B9 00 08      LDA $0800,y               
CODE_20E78F:        8D 00 08      STA $0800                 
CODE_20E792:        8D 04 08      STA $0804                 
CODE_20E795:        8D 08 08      STA $0808                 
CODE_20E798:        8D 0C 08      STA $080C                 
CODE_20E79B:        B9 01 08      LDA $0801,y               
CODE_20E79E:        8D 01 08      STA $0801                 
CODE_20E7A1:        B9 05 08      LDA $0805,y               
CODE_20E7A4:        8D 05 08      STA $0805                 
CODE_20E7A7:        B9 19 08      LDA $0819,y               
CODE_20E7AA:        8D 09 08      STA $0809                 
CODE_20E7AD:        B9 1D 08      LDA $081D,y               
CODE_20E7B0:        8D 0D 08      STA $080D                 
CODE_20E7B3:        B9 02 08      LDA $0802,y               
CODE_20E7B6:        8D 02 08      STA $0802                 
CODE_20E7B9:        B9 06 08      LDA $0806,y               
CODE_20E7BC:        8D 06 08      STA $0806                 
CODE_20E7BF:        B9 1A 08      LDA $081A,y               
CODE_20E7C2:        8D 0A 08      STA $080A                 
CODE_20E7C5:        B9 1E 08      LDA $081E,y               
CODE_20E7C8:        8D 0E 08      STA $080E                 
CODE_20E7CB:        B9 03 08      LDA $0803,y               
CODE_20E7CE:        8D 03 08      STA $0803                 
CODE_20E7D1:        B9 07 08      LDA $0807,y               
CODE_20E7D4:        8D 07 08      STA $0807                 
CODE_20E7D7:        B9 1B 08      LDA $081B,y               
CODE_20E7DA:        8D 0B 08      STA $080B                 
CODE_20E7DD:        B9 1F 08      LDA $081F,y               
CODE_20E7E0:        8D 0F 08      STA $080F                 
CODE_20E7E3:        98            TYA                       
CODE_20E7E4:        4A            LSR A                     
CODE_20E7E5:        4A            LSR A                     
CODE_20E7E6:        A8            TAY                       
CODE_20E7E7:        A9 01         LDA #$01                  
CODE_20E7E9:        99 20 0A      STA $0A20,y               
CODE_20E7EC:        99 21 0A      STA $0A21,y               
CODE_20E7EF:        99 26 0A      STA $0A26,y               
CODE_20E7F2:        99 27 0A      STA $0A27,y               
CODE_20E7F5:        3A            DEC A                     
CODE_20E7F6:        8D 20 0A      STA $0A20                 
CODE_20E7F9:        8D 21 0A      STA $0A21                 
CODE_20E7FC:        8D 22 0A      STA $0A22                 
CODE_20E7FF:        8D 23 0A      STA $0A23                 
CODE_20E802:        6B            RTL                       

CODE_20E803:        A9 84         LDA #$84                  
CODE_20E805:        38            SEC                       
CODE_20E806:        ED 02 06      SBC $0602                 
CODE_20E809:        C9 04         CMP #$04                  
CODE_20E80B:        B0 46         BCS CODE_20E853                   
CODE_20E80D:        A0 00         LDY #$00                  
CODE_20E80F:        A5 5E         LDA $5E                   
CODE_20E811:        C9 60         CMP #$60                  
CODE_20E813:        90 06         BCC CODE_20E81B           
CODE_20E815:        C8            INY                       
CODE_20E816:        C9 90         CMP #$90                  
CODE_20E818:        90 01         BCC CODE_20E81B           
CODE_20E81A:        C8            INY                       
CODE_20E81B:        A9 80         LDA #$80                  
CODE_20E81D:        8D 2B 05      STA $052B                 
CODE_20E820:        A9 01         LDA #$01                  
CODE_20E822:        8D 2A 05      STA $052A                 
CODE_20E825:        4A            LSR A                     
CODE_20E826:        8D 28 05      STA $0528                 
CODE_20E829:        B9 A7 8A      LDA.w DATA_218AA7,y               
CODE_20E82C:        8D 29 05      STA $0529                 
CODE_20E82F:        A9 14         LDA #$14                  
CODE_20E831:        8D 7B 03      STA $037B                 
CODE_20E834:        8D 64 05      STA $0564                 
CODE_20E837:        AE 21 04      LDX $0421                 
CODE_20E83A:        CA            DEX                       
CODE_20E83B:        E0 05         CPX #$05                  
CODE_20E83D:        30 0E         BMI CODE_20E84D           
CODE_20E83F:        AD 83 07      LDA $0783                 
CODE_20E842:        29 0F         AND #$0F                  
CODE_20E844:        A8            TAY                       
CODE_20E845:        B9 97 8A      LDA.w DATA_218A97,y               
CODE_20E848:        18            CLC                       
CODE_20E849:        7D 8D 8A      ADC.w DATA_218A8D,x               
CODE_20E84C:        AA            TAX                       
CODE_20E84D:        BD 7E 8A      LDA.w DATA_218A7E,x               
CODE_20E850:        AA            TAX                       
CODE_20E851:        E8            INX                       
CODE_20E852:        6B            RTL                       

CODE_20E853:        A2 00         LDX #$00                  
CODE_20E855:        6B            RTL                       

CODE_20E856:        AD 56 05      LDA $0556                 
CODE_20E859:        F0 11         BEQ CODE_20E86C           
CODE_20E85B:        CE 56 05      DEC $0556                 
CODE_20E85E:        22 37 E2 20   JSL CODE_20E237           
CODE_20E862:        AD FC 05      LDA $05FC                 
CODE_20E865:        F0 04         BEQ CODE_20E86B           
CODE_20E867:        22 0E D1 23   JSL CODE_23D10E           
CODE_20E86B:        6B            RTL                       

CODE_20E86C:        A5 BF         LDA $BF                   
CODE_20E86E:        F0 04         BEQ CODE_20E874           
CODE_20E870:        20 03 EE      JSR CODE_20EE03           
CODE_20E873:        6B            RTL                       

CODE_20E874:        AD 72 05      LDA $0572                 
CODE_20E877:        10 2B         BPL CODE_20E8A4           
CODE_20E879:        A9 00         LDA #$00                  
CODE_20E87B:        8D A4 06      STA $06A4                 
CODE_20E87E:        85 8B         STA $8B                   
CODE_20E880:        EE 72 05      INC $0572                 
CODE_20E883:        AD 72 05      LDA $0572                 
CODE_20E886:        85 9D         STA $9D                   
CODE_20E888:        D0 03         BNE CODE_20E88D           
CODE_20E88A:        EE 72 05      INC $0572                 
CODE_20E88D:        A5 55         LDA $55                   
CODE_20E88F:        10 13         BPL CODE_20E8A4           
CODE_20E891:        A9 01         LDA #$01                  
CODE_20E893:        85 55         STA $55                   
CODE_20E895:        A9 B0         LDA #$B0                  
CODE_20E897:        85 70         STA $70                   
CODE_20E899:        A9 D0         LDA #$D0                  
CODE_20E89B:        8D 72 05      STA $0572                 
CODE_20E89E:        A9 03         LDA #$03                  
CODE_20E8A0:        8D 14 04      STA $0414                 
CODE_20E8A3:        6B            RTL                       

CODE_20E8A4:        AD 54 05      LDA $0554                 
CODE_20E8A7:        F0 04         BEQ CODE_20E8AD           
CODE_20E8A9:        20 39 EF      JSR CODE_20EF39           
CODE_20E8AC:        6B            RTL                       

CODE_20E8AD:        AD 55 05      LDA $0555                 
CODE_20E8B0:        F0 12         BEQ CODE_20E8C4           
CODE_20E8B2:        C9 1F         CMP #$1F                  
CODE_20E8B4:        D0 06         BNE CODE_20E8BC           
CODE_20E8B6:        CE 55 05      DEC $0555                 
CODE_20E8B9:        4C C4 E8      JMP CODE_20E8C4           
CODE_20E8BC:        22 37 E2 20   JSL CODE_20E237           
CODE_20E8C0:        CE 55 05      DEC $0555                 
CODE_20E8C3:        6B            RTL                       

CODE_20E8C4:        AD 51 05      LDA $0551                 
CODE_20E8C7:        F0 2A         BEQ CODE_20E8F3           
CODE_20E8C9:        4A            LSR A                     
CODE_20E8CA:        4A            LSR A                     
CODE_20E8CB:        AA            TAX                       
CODE_20E8CC:        A4 BB         LDY $BB                   
CODE_20E8CE:        D0 08         BNE CODE_20E8D8           
CODE_20E8D0:        86 00         STX $00                   
CODE_20E8D2:        A9 0B         LDA #$0B                  
CODE_20E8D4:        38            SEC                       
CODE_20E8D5:        E5 00         SBC $00                   
CODE_20E8D7:        AA            TAX                       
CODE_20E8D8:        29 01         AND #$01                  
CODE_20E8DA:        08            PHP                       
CODE_20E8DB:        BD 74 E9      LDA.w DATA_21E974,x               
CODE_20E8DE:        85 BC         STA $BC                   
CODE_20E8E0:        28            PLP                       
CODE_20E8E1:        A5 BB         LDA $BB                   
CODE_20E8E3:        48            PHA                       
CODE_20E8E4:        A9 01         LDA #$01                  
CODE_20E8E6:        85 BB         STA $BB                   
CODE_20E8E8:        22 37 E2 20   JSL CODE_20E237           
CODE_20E8EC:        68            PLA                       
CODE_20E8ED:        85 BB         STA $BB                   
CODE_20E8EF:        CE 51 05      DEC $0551                 
CODE_20E8F2:        6B            RTL                       

CODE_20E8F3:        AD 59 05      LDA $0559                 
CODE_20E8F6:        F0 30         BEQ CODE_20E928           
CODE_20E8F8:        AD 77 05      LDA $0577                 
CODE_20E8FB:        F0 08         BEQ CODE_20E905           
CODE_20E8FD:        9C 77 05      STZ $0577                 
CODE_20E900:        A9 18         LDA #$18                  
CODE_20E902:        8D 54 05      STA $0554                 
CODE_20E905:        A9 41         LDA #$41                  
CODE_20E907:        85 BD         STA $BD                   
CODE_20E909:        22 37 E2 20   JSL CODE_20E237           
CODE_20E90D:        A5 A6         LDA $A6                   
CODE_20E90F:        D0 17         BNE CODE_20E928           
CODE_20E911:        CE 59 05      DEC $0559                 
CODE_20E914:        A9 14         LDA #$14                  
CODE_20E916:        85 8B         STA $8B                   
CODE_20E918:        20 60 EB      JSR CODE_20EB60           
CODE_20E91B:        AD 7A 05      LDA $057A                 
CODE_20E91E:        F0 07         BEQ CODE_20E927           
CODE_20E920:        9C 7A 05      STZ $057A                 
CODE_20E923:        22 63 C4 23   JSL CODE_23C463           
CODE_20E927:        6B            RTL                       

CODE_20E928:        AD 5A 05      LDA $055A                 
CODE_20E92B:        D0 03         BNE CODE_20E930           
CODE_20E92D:        82 DC 00      BRL CODE_20EA0C           
CODE_20E930:        48            PHA                       
CODE_20E931:        A9 00         LDA #$00                  
CODE_20E933:        85 25         STA $25                   
CODE_20E935:        EE 10 02      INC $0210                 
CODE_20E938:        D0 05         BNE CODE_20E93F           
CODE_20E93A:        E6 12         INC $12                   
CODE_20E93C:        EE 11 02      INC $0211                 
CODE_20E93F:        C2 20         REP #$20                  
CODE_20E941:        AD 10 02      LDA $0210                 
CODE_20E944:        4A            LSR A                     
CODE_20E945:        4A            LSR A                     
CODE_20E946:        8D 12 02      STA $0212                 
CODE_20E949:        E2 20         SEP #$20                  
CODE_20E94B:        A5 12         LDA $12                   
CODE_20E94D:        D0 07         BNE CODE_20E956           
CODE_20E94F:        AD 10 02      LDA $0210                 
CODE_20E952:        C9 60         CMP #$60                  
CODE_20E954:        90 1A         BCC CODE_20E970           
CODE_20E956:        EE 50 05      INC $0550                 
CODE_20E959:        AD 50 05      LDA $0550                 
CODE_20E95C:        18            CLC                       
CODE_20E95D:        6D 5C 05      ADC $055C                 
CODE_20E960:        90 0E         BCC CODE_20E970           
CODE_20E962:        EE 16 02      INC $0216                 
CODE_20E965:        A5 75         LDA $75                   
CODE_20E967:        38            SEC                       
CODE_20E968:        E9 01         SBC #$01                  
CODE_20E96A:        85 75         STA $75                   
CODE_20E96C:        B0 02         BCS CODE_20E970                   
CODE_20E96E:        C6 5A         DEC $5A                   
CODE_20E970:        68            PLA                       
CODE_20E971:        20 75 E9      JSR CODE_20E975           
CODE_20E974:        6B            RTL                       

CODE_20E975:        22 1F FB 20   JSL CODE_20FB1F           ; ExecutePtrShort

PNTR_20E979:          dw CODE_20E983
               dw CODE_20E984
               dw CODE_20E9A2
               dw CODE_20E9CD
               dw CODE_20E9E8

CODE_20E983:        60            RTS

CODE_20E984:        A9 EF         LDA #$EF                  
CODE_20E986:        8D 43 05      STA $0543                 
CODE_20E989:        AD 10 02      LDA $0210                 
CODE_20E98C:        C9 80         CMP #$80                  
CODE_20E98E:        90 07         BCC CODE_20E997           
CODE_20E990:        A9 A0         LDA #$A0                  
CODE_20E992:        85 9D         STA $9D                   
CODE_20E994:        EE 5A 05      INC $055A                 
CODE_20E997:        A9 01         LDA #$01                  
CODE_20E999:        85 BD         STA $BD                   
CODE_20E99B:        A9 20         LDA #$20                  
CODE_20E99D:        85 8B         STA $8B                   
CODE_20E99F:        4C 60 EB      JMP CODE_20EB60           

CODE_20E9A2:        A5 5E         LDA $5E                   
CODE_20E9A4:        C9 36         CMP #$36                  
CODE_20E9A6:        90 22         BCC CODE_20E9CA           
CODE_20E9A8:        22 A3 DE 23   JSL CODE_23DEA3           
CODE_20E9AC:        22 53 DE 23   JSL CODE_23DE53           
CODE_20E9B0:        A5 9D         LDA $9D                   
CODE_20E9B2:        18            CLC                       
CODE_20E9B3:        69 04         ADC #$04                  
CODE_20E9B5:        85 9D         STA $9D                   
CODE_20E9B7:        C9 0F         CMP #$0F                  
CODE_20E9B9:        30 03         BMI CODE_20E9BE           
CODE_20E9BB:        EE 5A 05      INC $055A                 
CODE_20E9BE:        A4 BB         LDY $BB                   
CODE_20E9C0:        B9 E5 E9      LDA.w DATA_21E9E5,y               
CODE_20E9C3:        85 BC         STA $BC                   
CODE_20E9C5:        22 37 E2 20   JSL CODE_20E237           
CODE_20E9C9:        60            RTS                       

CODE_20E9CA:        4C 60 EB      JMP CODE_20EB60           

CODE_20E9CD:        A9 02         LDA #$02                  
CODE_20E9CF:        85 BD         STA $BD                   
CODE_20E9D1:        A9 EC         LDA #$EC                  
CODE_20E9D3:        85 9D         STA $9D                   
CODE_20E9D5:        20 60 EB      JSR CODE_20EB60           
CODE_20E9D8:        AD 16 02      LDA $0216                 
CODE_20E9DB:        C9 70         CMP #$70                  
CODE_20E9DD:        90 08         BCC CODE_20E9E7           
CODE_20E9DF:        A9 03         LDA #$03                  
CODE_20E9E1:        8D 14 04      STA $0414                 
CODE_20E9E4:        EE 5A 05      INC $055A                 
CODE_20E9E7:        60            RTS                       

CODE_20E9E8:        AD FC 05      LDA $05FC                 
CODE_20E9EB:        F0 1E         BEQ CODE_20EA0B           
CODE_20E9ED:        22 A3 DE 23   JSL CODE_23DEA3           
CODE_20E9F1:        A5 9D         LDA $9D                   
CODE_20E9F3:        30 08         BMI CODE_20E9FD           
CODE_20E9F5:        A9 00         LDA #$00                  
CODE_20E9F7:        8D 5A 05      STA $055A                 
CODE_20E9FA:        8D F3 05      STA $05F3                 
CODE_20E9FD:        A5 9D         LDA $9D                   
CODE_20E9FF:        18            CLC                       
CODE_20EA00:        69 04         ADC #$04                  
CODE_20EA02:        85 9D         STA $9D                   
CODE_20EA04:        22 CA CF 23   JSL CODE_23CFCA           
CODE_20EA08:        20 BE E9      JSR CODE_20E9BE           
CODE_20EA0B:        60            RTS                       

CODE_20EA0C:        AD BE 07      LDA $07BE                 
CODE_20EA0F:        C9 03         CMP #$03                  
CODE_20EA11:        30 1E         BMI CODE_20EA31           
CODE_20EA13:        C9 07         CMP #$07                  
CODE_20EA15:        30 0B         BMI CODE_20EA22           
CODE_20EA17:        A5 70         LDA $70                   
CODE_20EA19:        18            CLC                       
CODE_20EA1A:        69 02         ADC #$02                  
CODE_20EA1C:        85 70         STA $70                   
CODE_20EA1E:        90 02         BCC CODE_20EA22           
CODE_20EA20:        E6 55         INC $55                   
CODE_20EA22:        A4 BB         LDY $BB                   
CODE_20EA24:        B9 E5 E9      LDA.w DATA_21E9E5,y               
CODE_20EA27:        85 BC         STA $BC                   
CODE_20EA29:        22 37 E2 20   JSL CODE_20E237           
CODE_20EA2D:        20 DC EA      JSR CODE_20EADC           
CODE_20EA30:        6B            RTL                       

CODE_20EA31:        AD 71 05      LDA $0571                 
CODE_20EA34:        10 04         BPL CODE_20EA3A           
CODE_20EA36:        20 BA EB      JSR CODE_20EBBA           
CODE_20EA39:        6B            RTL                       

CODE_20EA3A:        D0 03         BNE CODE_20EA3F           
CODE_20EA3C:        4C DB EA      JMP CODE_20EADB           

CODE_20EA3F:        AD 10 05      LDA $0510                 
CODE_20EA42:        D0 2C         BNE CODE_20EA70           
CODE_20EA44:        AD 71 05      LDA $0571                 
CODE_20EA47:        29 1C         AND #$1C                  
CODE_20EA49:        C9 14         CMP #$14                  
CODE_20EA4B:        D0 07         BNE CODE_20EA54           
CODE_20EA4D:        A9 05         LDA #$05                  
CODE_20EA4F:        8D 77 03      STA $0377                 
CODE_20EA52:        80 11         BRA CODE_20EA65           

CODE_20EA54:        4A            LSR A                     
CODE_20EA55:        4A            LSR A                     
CODE_20EA56:        8D 14 04      STA $0414                 
CODE_20EA59:        C9 01         CMP #$01                  
CODE_20EA5B:        D0 08         BNE CODE_20EA65           
CODE_20EA5D:        E6 14         INC $14                   
CODE_20EA5F:        A9 00         LDA #$00                  
CODE_20EA61:        8D 13 07      STA $0713                 
CODE_20EA64:        6B            RTL                       

CODE_20EA65:        AD 71 05      LDA $0571                 
CODE_20EA68:        29 03         AND #$03                  
CODE_20EA6A:        09 80         ORA #$80                  
CODE_20EA6C:        8D 71 05      STA $0571                 
CODE_20EA6F:        6B            RTL                       

CODE_20EA70:        AD 71 05      LDA $0571                 
CODE_20EA73:        29 03         AND #$03                  
CODE_20EA75:        C9 02         CMP #$02                  
CODE_20EA77:        10 39         BPL CODE_20EAB2           
CODE_20EA79:        AD 10 05      LDA $0510                 
CODE_20EA7C:        C9 10         CMP #$10                  
CODE_20EA7E:        30 31         BMI CODE_20EAB1           
CODE_20EA80:        48            PHA                       
CODE_20EA81:        20 F2 EE      JSR CODE_20EEF2           
CODE_20EA84:        68            PLA                       
CODE_20EA85:        C9 24         CMP #$24                  
CODE_20EA87:        10 28         BPL CODE_20EAB1           
CODE_20EA89:        A6 C4         LDX $C4                   
CODE_20EA8B:        A9 F0         LDA #$F0                  
CODE_20EA8D:        9D 01 08      STA $0801,x               
CODE_20EA90:        9D 05 08      STA $0805,x               
CODE_20EA93:        9D 09 08      STA $0809,x               
CODE_20EA96:        9D 0D 08      STA $080D,x               
CODE_20EA99:        9D 11 08      STA $0811,x               
CODE_20EA9C:        9D 15 08      STA $0815,x               
CODE_20EA9F:        9D 19 08      STA $0819,x               
CODE_20EAA2:        9D 1D 08      STA $081D,x               
CODE_20EAA5:        9D 21 08      STA $0821,x               
CODE_20EAA8:        9D 25 08      STA $0825,x               
CODE_20EAAB:        9D 29 08      STA $0829,x               
CODE_20EAAE:        9D 2D 08      STA $082D,x               
CODE_20EAB1:        6B            RTL                       

CODE_20EAB2:        20 15 EF      JSR CODE_20EF15           
CODE_20EAB5:        AD 10 05      LDA $0510                 
CODE_20EAB8:        C9 10         CMP #$10                  
CODE_20EABA:        B0 1E         BCS CODE_20EADA                   
CODE_20EABC:        A5 C4         LDA $C4                   
CODE_20EABE:        A6 9D         LDX $9D                   
CODE_20EAC0:        10 03         BPL CODE_20EAC5           
CODE_20EAC2:        18            CLC                       
CODE_20EAC3:        69 18         ADC #$18                  
CODE_20EAC5:        AA            TAX                       
CODE_20EAC6:        A9 F0         LDA #$F0                  
CODE_20EAC8:        9D 01 08      STA $0801,x               
CODE_20EACB:        9D 05 08      STA $0805,x               
CODE_20EACE:        9D 09 08      STA $0809,x               
CODE_20EAD1:        9D 0D 08      STA $080D,x               
CODE_20EAD4:        9D 11 08      STA $0811,x               
CODE_20EAD7:        9D 15 08      STA $0815,x               
CODE_20EADA:        6B            RTL                       

CODE_20EADB:        6B            RTL                       

CODE_20EADC:        A0 40         LDY #$40                  
CODE_20EADE:        A6 BB         LDX $BB                   
CODE_20EAE0:        A5 BD         LDA $BD                   
CODE_20EAE2:        08            PHP                       
CODE_20EAE3:        BD B1 8A      LDA.w DATA_218AB1,x               
CODE_20EAE6:        28            PLP                       
CODE_20EAE7:        D0 03         BNE CODE_20EAEC           
CODE_20EAE9:        BD AA 8A      LDA.w DATA_218AAA,x               
CODE_20EAEC:        18            CLC                       
CODE_20EAED:        65 79         ADC $79                   
CODE_20EAEF:        99 00 08      STA $0800,y               
CODE_20EAF2:        99 04 08      STA $0804,y               
CODE_20EAF5:        18            CLC                       
CODE_20EAF6:        69 08         ADC #$08                  
CODE_20EAF8:        99 08 08      STA $0808,y               
CODE_20EAFB:        99 0C 08      STA $080C,y               
CODE_20EAFE:        A5 55         LDA $55                   
CODE_20EB00:        85 00         STA $00                   
CODE_20EB02:        BD B8 8A      LDA.w DATA_218AB8,x               
CODE_20EB05:        10 02         BPL CODE_20EB09           
CODE_20EB07:        C6 00         DEC $00                   
CODE_20EB09:        18            CLC                       
CODE_20EB0A:        65 82         ADC $82                   
CODE_20EB0C:        90 02         BCC CODE_20EB10           
CODE_20EB0E:        E6 00         INC $00                   
CODE_20EB10:        A6 00         LDX $00                   
CODE_20EB12:        E0 01         CPX #$01                  
CODE_20EB14:        10 49         BPL CODE_20EB5F           
CODE_20EB16:        C9 F0         CMP #$F0                  
CODE_20EB18:        B0 45         BCS CODE_20EB5F                   
CODE_20EB1A:        99 01 08      STA $0801,y               
CODE_20EB1D:        99 09 08      STA $0809,y               
CODE_20EB20:        18            CLC                       
CODE_20EB21:        69 08         ADC #$08                  
CODE_20EB23:        99 05 08      STA $0805,y               
CODE_20EB26:        99 0D 08      STA $080D,y               
CODE_20EB29:        A9 B0         LDA #$B0                  
CODE_20EB2B:        99 02 08      STA $0802,y               
CODE_20EB2E:        99 0A 08      STA $080A,y               
CODE_20EB31:        1A            INC A                     
CODE_20EB32:        99 06 08      STA $0806,y               
CODE_20EB35:        99 0E 08      STA $080E,y               
CODE_20EB38:        22 8D AA 27   JSL CODE_27AA8D           
CODE_20EB3C:        0A            ASL A                     
CODE_20EB3D:        09 20         ORA #$20                  
CODE_20EB3F:        99 03 08      STA $0803,y               
CODE_20EB42:        99 07 08      STA $0807,y               
CODE_20EB45:        09 40         ORA #$40                  
CODE_20EB47:        99 0B 08      STA $080B,y               
CODE_20EB4A:        99 0F 08      STA $080F,y               
CODE_20EB4D:        98            TYA                       
CODE_20EB4E:        4A            LSR A                     
CODE_20EB4F:        4A            LSR A                     
CODE_20EB50:        A8            TAY                       
CODE_20EB51:        A9 00         LDA #$00                  
CODE_20EB53:        99 20 0A      STA $0A20,y               
CODE_20EB56:        99 21 0A      STA $0A21,y               
CODE_20EB59:        99 22 0A      STA $0A22,y               
CODE_20EB5C:        99 23 0A      STA $0A23,y               
CODE_20EB5F:        60            RTS                       

CODE_20EB60:        A5 BD         LDA $BD                   
CODE_20EB62:        29 02         AND #$02                  
CODE_20EB64:        F0 0C         BEQ CODE_20EB72           
CODE_20EB66:        22 A3 DE 23   JSL CODE_23DEA3           
CODE_20EB6A:        A4 BB         LDY $BB                   
CODE_20EB6C:        B9 C7 99      LDA.w DATA_2199C7,y               
CODE_20EB6F:        4C A7 EB      JMP CODE_20EBA7           
CODE_20EB72:        A5 BD         LDA $BD                   
CODE_20EB74:        29 01         AND #$01                  
CODE_20EB76:        A8            TAY                       
CODE_20EB77:        B9 BF 8A      LDA.w DATA_218ABF,y               
CODE_20EB7A:        05 BD         ORA $BD                   
CODE_20EB7C:        85 BD         STA $BD                   
CODE_20EB7E:        22 53 DE 23   JSL CODE_23DE53           
CODE_20EB82:        A5 15         LDA $15                   
CODE_20EB84:        29 06         AND #$06                  
CODE_20EB86:        4A            LSR A                     
CODE_20EB87:        85 00         STA $00                   
CODE_20EB89:        AC 77 05      LDY $0577                 
CODE_20EB8C:        F0 0F         BEQ CODE_20EB9D           
CODE_20EB8E:        0A            ASL A                     
CODE_20EB8F:        29 02         AND #$02                  
CODE_20EB91:        A4 BB         LDY $BB                   
CODE_20EB93:        F0 02         BEQ CODE_20EB97           
CODE_20EB95:        A0 01         LDY #$01                  
CODE_20EB97:        18            CLC                       
CODE_20EB98:        79 A4 E9      ADC.w DATA_21E9A4,y               
CODE_20EB9B:        D0 0A         BNE CODE_20EBA7           
CODE_20EB9D:        A5 BB         LDA $BB                   
CODE_20EB9F:        0A            ASL A                     
CODE_20EBA0:        0A            ASL A                     
CODE_20EBA1:        05 00         ORA $00                   
CODE_20EBA3:        A8            TAY                       
CODE_20EBA4:        B9 58 E9      LDA.w DATA_21E958,y               
CODE_20EBA7:        85 BC         STA $BC                   
CODE_20EBA9:        22 37 E2 20   JSL CODE_20E237           
CODE_20EBAD:        60            RTS                       

PNTR_20EBAE:          dw CODE_20EBD5
               dw CODE_20EBD6
               dw CODE_20EBF1
               dw CODE_20EC17
               dw CODE_20EC6C
               dw CODE_20EC7A

CODE_20EBBA:        A9 08         LDA #$08
CODE_20EBBC:        8D 45 1A      STA $1A45                 
CODE_20EBBF:        AD 77 03      LDA $0377                 
CODE_20EBC2:        0A            ASL A                     
CODE_20EBC3:        A8            TAY                       
CODE_20EBC4:        8B            PHB                       
CODE_20EBC5:        4B            PHK                       
CODE_20EBC6:        AB            PLB                       
CODE_20EBC7:        B9 AE EB      LDA PNTR_20EBAE,y               
CODE_20EBCA:        85 00         STA $00                   
CODE_20EBCC:        B9 AF EB      LDA PNTR_20EBAE+1,y               
CODE_20EBCF:        85 01         STA $01                   
CODE_20EBD1:        AB            PLB                       
CODE_20EBD2:        6C 00 00      JMP ($0000)               

CODE_20EBD5:        60            RTS                       

CODE_20EBD6:        A9 83         LDA #$83                  
CODE_20EBD8:        8D 71 05      STA $0571                 
CODE_20EBDB:        20 15 EF      JSR CODE_20EF15           
CODE_20EBDE:        AD 10 05      LDA $0510                 
CODE_20EBE1:        D0 03         BNE CODE_20EBE6           
CODE_20EBE3:        4C 2D EF      JMP CODE_20EF2D           
CODE_20EBE6:        C9 20         CMP #$20                  
CODE_20EBE8:        A5 C4         LDA $C4                   
CODE_20EBEA:        90 04         BCC CODE_20EBF0           
CODE_20EBEC:        22 C5 EA 20   JSL CODE_20EAC5           
CODE_20EBF0:        60            RTS                       

CODE_20EBF1:        A9 82         LDA #$82                  
CODE_20EBF3:        8D 71 05      STA $0571                 
CODE_20EBF6:        85 A6         STA $A6                   
CODE_20EBF8:        A9 30         LDA #$30                  
CODE_20EBFA:        85 9D         STA $9D                   
CODE_20EBFC:        22 A3 DE 23   JSL CODE_23DEA3           
CODE_20EC00:        20 15 EF      JSR CODE_20EF15           
CODE_20EC03:        AD 10 05      LDA $0510                 
CODE_20EC06:        D0 0E         BNE CODE_20EC16           
CODE_20EC08:        A9 00         LDA #$00                  
CODE_20EC0A:        8D 6F 05      STA $056F                 
CODE_20EC0D:        8D 71 05      STA $0571                 
CODE_20EC10:        85 8B         STA $8B                   
CODE_20EC12:        A9 38         LDA #$38                  
CODE_20EC14:        85 9D         STA $9D                   
CODE_20EC16:        60            RTS                       

CODE_20EC17:        A9 80         LDA #$80                  
CODE_20EC19:        8D 71 05      STA $0571                 
CODE_20EC1C:        A9 40         LDA #$40                  
CODE_20EC1E:        85 BD         STA $BD                   
CODE_20EC20:        A0 00         LDY #$00                  
CODE_20EC22:        A5 15         LDA $15                   
CODE_20EC24:        4A            LSR A                     
CODE_20EC25:        90 2F         BCC CODE_20EC56           
CODE_20EC27:        B9 C5 8A      LDA.w DATA_218AC5,y               
CODE_20EC2A:        85 25         STA $25                   
CODE_20EC2C:        AD 10 02      LDA $0210                 
CODE_20EC2F:        A6 12         LDX $12                   
CODE_20EC31:        D0 04         BNE CODE_20EC37           
CODE_20EC33:        C9 80         CMP #$80                  
CODE_20EC35:        90 1F         BCC CODE_20EC56           
CODE_20EC37:        18            CLC                       
CODE_20EC38:        79 C7 8A      ADC.w DATA_218AC7,y               
CODE_20EC3B:        8D 10 02      STA $0210                 
CODE_20EC3E:        8D 12 02      STA $0212                 
CODE_20EC41:        B9 C9 8A      LDA.w DATA_218AC9,y               
CODE_20EC44:        65 12         ADC $12                   
CODE_20EC46:        85 12         STA $12                   
CODE_20EC48:        8D 11 02      STA $0211                 
CODE_20EC4B:        4A            LSR A                     
CODE_20EC4C:        8D 13 02      STA $0213                 
CODE_20EC4F:        AD 12 02      LDA $0212                 
CODE_20EC52:        6A            ROR A                     
CODE_20EC53:        8D 12 02      STA $0212                 
CODE_20EC56:        20 F2 EE      JSR CODE_20EEF2           
CODE_20EC59:        A6 C4         LDX $C4                   
CODE_20EC5B:        A9 F0         LDA #$F0                  
CODE_20EC5D:        9D 11 08      STA $0811,x               
CODE_20EC60:        9D 15 08      STA $0815,x               
CODE_20EC63:        AD 10 05      LDA $0510                 
CODE_20EC66:        D0 03         BNE CODE_20EC6B           
CODE_20EC68:        20 2D EF      JSR CODE_20EF2D           
CODE_20EC6B:        60            RTS                       

CODE_20EC6C:        A9 81         LDA #$81                  
CODE_20EC6E:        8D 71 05      STA $0571                 
CODE_20EC71:        A9 00         LDA #$00                  
CODE_20EC73:        85 BD         STA $BD                   
CODE_20EC75:        A0 01         LDY #$01                  
CODE_20EC77:        4C 22 EC      JMP CODE_20EC22           

CODE_20EC7A:        AD 25 04      LDA $0425                 
CODE_20EC7D:        F0 03         BEQ CODE_20EC82           
CODE_20EC7F:        4C 06 ED      JMP CODE_20ED06           

CODE_20EC82:        A9 FE         LDA #$FE                  
CODE_20EC84:        A2 01         LDX #$01                  
CODE_20EC86:        A4 9D         LDY $9D                   
CODE_20EC88:        30 03         BMI CODE_20EC8D           
CODE_20EC8A:        A9 02         LDA #$02                  
CODE_20EC8C:        CA            DEX                       
CODE_20EC8D:        8D 80 07      STA $0780                 
CODE_20EC90:        18            CLC                       
CODE_20EC91:        6D 16 02      ADC $0216                 
CODE_20EC94:        8D 16 02      STA $0216                 
CODE_20EC97:        8D 43 05      STA $0543                 
CODE_20EC9A:        A4 9D         LDY $9D                   
CODE_20EC9C:        10 06         BPL CODE_20ECA4           
CODE_20EC9E:        B0 1F         BCS CODE_20ECBF                   
CODE_20ECA0:        A9 00         LDA #$00                  
CODE_20ECA2:        F0 06         BEQ CODE_20ECAA           
CODE_20ECA4:        C9 EF         CMP #$EF                  
CODE_20ECA6:        90 17         BCC CODE_20ECBF           
CODE_20ECA8:        A9 EF         LDA #$EF                  
CODE_20ECAA:        8D 16 02      STA $0216                 
CODE_20ECAD:        A9 01         LDA #$01                  
CODE_20ECAF:        8D 77 03      STA $0377                 
CODE_20ECB2:        A4 9D         LDY $9D                   
CODE_20ECB4:        30 03         BMI CODE_20ECB9           
CODE_20ECB6:        EE 77 03      INC $0377                 
CODE_20ECB9:        22 27 C2 23   JSL CODE_23C227           
CODE_20ECBD:        80 29         BRA CODE_20ECE8           

CODE_20ECBF:        BD CB 8A      LDA.w DATA_218ACB,x               
CODE_20ECC2:        85 09         STA $09                   
CODE_20ECC4:        A9 08         LDA #$08                  
CODE_20ECC6:        85 0A         STA $0A                   
CODE_20ECC8:        22 B6 D2 23   JSL CODE_23D2B6           
CODE_20ECCC:        38            SEC                       
CODE_20ECCD:        E9 B3         SBC #$B3                  
CODE_20ECCF:        C9 02         CMP #$02                  
CODE_20ECD1:        90 15         BCC CODE_20ECE8           
CODE_20ECD3:        A9 10         LDA #$10                  
CODE_20ECD5:        E0 00         CPX #$00                  
CODE_20ECD7:        F0 04         BEQ CODE_20ECDD           
CODE_20ECD9:        C6 55         DEC $55                   
CODE_20ECDB:        A9 F0         LDA #$F0                  
CODE_20ECDD:        18            CLC                       
CODE_20ECDE:        65 70         ADC $70                   
CODE_20ECE0:        29 F0         AND #$F0                  
CODE_20ECE2:        85 70         STA $70                   
CODE_20ECE4:        90 02         BCC CODE_20ECE8           
CODE_20ECE6:        E6 55         INC $55                   
CODE_20ECE8:        AD 16 02      LDA $0216                 
CODE_20ECEB:        4A            LSR A                     
CODE_20ECEC:        4A            LSR A                     
CODE_20ECED:        8D 18 02      STA $0218                 
CODE_20ECF0:        AD 16 02      LDA $0216                 
CODE_20ECF3:        38            SEC                       
CODE_20ECF4:        ED 18 02      SBC $0218                 
CODE_20ECF7:        8D 18 02      STA $0218                 
CODE_20ECFA:        AD 4F 03      LDA $034F                 
CODE_20ECFD:        F0 06         BEQ CODE_20ED05           
CODE_20ECFF:        AD 16 02      LDA $0216                 
CODE_20ED02:        8D 18 02      STA $0218                 
CODE_20ED05:        60            RTS                       

CODE_20ED06:        AD 71 05      LDA $0571                 
CODE_20ED09:        29 03         AND #$03                  
CODE_20ED0B:        48            PHA                       
CODE_20ED0C:        A8            TAY                       
CODE_20ED0D:        A2 00         LDX #$00                  
CODE_20ED0F:        C0 02         CPY #$02                  
CODE_20ED11:        30 1C         BMI CODE_20ED2F           
CODE_20ED13:        A2 12         LDX #$12                  
CODE_20ED15:        B9 DD 8A      LDA.w DATA_218ADD,y               
CODE_20ED18:        10 0D         BPL CODE_20ED27           
CODE_20ED1A:        A5 82         LDA $82                   
CODE_20ED1C:        C9 68         CMP #$68                  
CODE_20ED1E:        A9 00         LDA #$00                  
CODE_20ED20:        90 10         BCC CODE_20ED32           
CODE_20ED22:        D6 43         DEC $43,x                 
CODE_20ED24:        4C 2F ED      JMP CODE_20ED2F           

CODE_20ED27:        A5 82         LDA $82                   
CODE_20ED29:        C9 38         CMP #$38                  
CODE_20ED2B:        A9 00         LDA #$00                  
CODE_20ED2D:        B0 03         BCS CODE_20ED32                   
CODE_20ED2F:        B9 DD 8A      LDA.w DATA_218ADD,y               
CODE_20ED32:        18            CLC                       
CODE_20ED33:        75 5E         ADC $5E,x                 
CODE_20ED35:        29 FE         AND #$FE                  
CODE_20ED37:        95 5E         STA $5E,x                 
CODE_20ED39:        90 02         BCC CODE_20ED3D           
CODE_20ED3B:        F6 43         INC $43,x                 
CODE_20ED3D:        29 0F         AND #$0F                  
CODE_20ED3F:        AA            TAX                       
CODE_20ED40:        C0 02         CPY #$02                  
CODE_20ED42:        30 51         BMI CODE_20ED95           
CODE_20ED44:        A5 5E         LDA $5E                   
CODE_20ED46:        29 F0         AND #$F0                  
CODE_20ED48:        09 08         ORA #$08                  
CODE_20ED4A:        85 5E         STA $5E                   
CODE_20ED4C:        A9 01         LDA #$01                  
CODE_20ED4E:        85 25         STA $25                   
CODE_20ED50:        B9 DD 8A      LDA.w DATA_218ADD,y               
CODE_20ED53:        10 05         BPL CODE_20ED5A           
CODE_20ED55:        C6 25         DEC $25                   
CODE_20ED57:        CE 42 05      DEC $0542                 
CODE_20ED5A:        8D 80 07      STA $0780                 
CODE_20ED5D:        18            CLC                       
CODE_20ED5E:        6D 43 05      ADC $0543                 
CODE_20ED61:        8D 43 05      STA $0543                 
CODE_20ED64:        90 03         BCC CODE_20ED69           
CODE_20ED66:        EE 42 05      INC $0542                 
CODE_20ED69:        8D 16 02      STA $0216                 
CODE_20ED6C:        AC 42 05      LDY $0542                 
CODE_20ED6F:        8C 17 02      STY $0217                 
CODE_20ED72:        84 13         STY $13                   
CODE_20ED74:        8C 19 02      STY $0219                 
CODE_20ED77:        C2 20         REP #$20                  
CODE_20ED79:        AD 16 02      LDA $0216                 
CODE_20ED7C:        4A            LSR A                     
CODE_20ED7D:        4A            LSR A                     
CODE_20ED7E:        8D 18 02      STA $0218                 
CODE_20ED81:        AD 16 02      LDA $0216                 
CODE_20ED84:        38            SEC                       
CODE_20ED85:        ED 18 02      SBC $0218                 
CODE_20ED88:        8D 18 02      STA $0218                 
CODE_20ED8B:        E2 20         SEP #$20                  
CODE_20ED8D:        A5 70         LDA $70                   
CODE_20ED8F:        38            SEC                       
CODE_20ED90:        ED 43 05      SBC $0543                 
CODE_20ED93:        85 82         STA $82                   
CODE_20ED95:        68            PLA                       
CODE_20ED96:        E0 00         CPX #$00                  
CODE_20ED98:        D0 46         BNE CODE_20EDE0           
CODE_20ED9A:        0A            ASL A                     
CODE_20ED9B:        0A            ASL A                     
CODE_20ED9C:        A2 01         LDX #$01                  
CODE_20ED9E:        A8            TAY                       
CODE_20ED9F:        B9 CD 8A      LDA.w DATA_218ACD,y               
CODE_20EDA2:        85 09         STA $09                   
CODE_20EDA4:        B9 CE 8A      LDA.w DATA_218ACD+1,y               
CODE_20EDA7:        85 0A         STA $0A                   
CODE_20EDA9:        22 B6 D2 23   JSL CODE_23D2B6           
CODE_20EDAD:        85 00         STA $00                   
CODE_20EDAF:        38            SEC                       
CODE_20EDB0:        E9 92         SBC #$92                  
CODE_20EDB2:        C9 02         CMP #$02                  
CODE_20EDB4:        B0 03         BCS CODE_20EDB9                   
CODE_20EDB6:        4C E1 ED      JMP CODE_20EDE1           

CODE_20EDB9:        A5 00         LDA $00                   
CODE_20EDBB:        C9 9E         CMP #$9E                  
CODE_20EDBD:        D0 03         BNE CODE_20EDC2           
CODE_20EDBF:        4C E1 ED      JMP CODE_20EDE1           

CODE_20EDC2:        A5 00         LDA $00                   
CODE_20EDC4:        38            SEC                       
CODE_20EDC5:        E9 50         SBC #$50                  
CODE_20EDC7:        C9 04         CMP #$04                  
CODE_20EDC9:        B0 10         BCS CODE_20EDDB                   
CODE_20EDCB:        86 00         STX $00                   
CODE_20EDCD:        AD 71 05      LDA $0571                 
CODE_20EDD0:        29 82         AND #$82                  
CODE_20EDD2:        49 02         EOR #$02                  
CODE_20EDD4:        05 00         ORA $00                   
CODE_20EDD6:        8D 71 05      STA $0571                 
CODE_20EDD9:        A2 00         LDX #$00                  
CODE_20EDDB:        C8            INY                       
CODE_20EDDC:        C8            INY                       
CODE_20EDDD:        CA            DEX                       
CODE_20EDDE:        10 BF         BPL CODE_20ED9F           
CODE_20EDE0:        60            RTS                       

CODE_20EDE1:        AD 71 05      LDA $0571                 
CODE_20EDE4:        29 03         AND #$03                  
CODE_20EDE6:        A8            TAY                       
CODE_20EDE7:        D0 07         BNE CODE_20EDF0           
CODE_20EDE9:        A5 5E         LDA $5E                   
CODE_20EDEB:        18            CLC                       
CODE_20EDEC:        69 10         ADC #$10                  
CODE_20EDEE:        85 5E         STA $5E                   
CODE_20EDF0:        B9 E1 8A      LDA.w DATA_218AE1,y               
CODE_20EDF3:        8D 77 03      STA $0377                 
CODE_20EDF6:        22 27 C2 23   JSL CODE_23C227           
CODE_20EDFA:        60            RTS                       

PNTR_20EDFB:        dw CODE_20EBD5
                    dw CODE_20EE16
                    dw CODE_20EE3F
                    dw CODE_20EE5A

CODE_20EE03:        A5 BF         LDA $BF                   
CODE_20EE05:        0A            ASL A                     
CODE_20EE06:        AA            TAX                       
CODE_20EE07:        BF FB ED 20   LDA.l PNTR_20EDFB,x             
CODE_20EE0B:        85 00         STA $00                   
CODE_20EE0D:        BF FC ED 20   LDA.l PNTR_20EDFB+1,x             
CODE_20EE11:        85 01         STA $01                   
CODE_20EE13:        6C 00 00      JMP ($0000)               

CODE_20EE16:        AD 44 05      LDA $0544                 
CODE_20EE19:        D0 08         BNE CODE_20EE23           
CODE_20EE1B:        A5 82         LDA $82                   
CODE_20EE1D:        29 F0         AND #$F0                  
CODE_20EE1F:        C9 B0         CMP #$B0                  
CODE_20EE21:        F0 0B         BEQ CODE_20EE2E           
CODE_20EE23:        AD 10 05      LDA $0510                 
CODE_20EE26:        D0 03         BNE CODE_20EE2B           
CODE_20EE28:        4C DF EE      JMP CODE_20EEDF           

CODE_20EE2B:        4C E9 EE      JMP CODE_20EEE9           

CODE_20EE2E:        AD 10 05      LDA $0510                 
CODE_20EE31:        D0 05         BNE CODE_20EE38           
CODE_20EE33:        A9 40         LDA #$40                  
CODE_20EE35:        8D 10 05      STA $0510                 
CODE_20EE38:        C9 01         CMP #$01                  
CODE_20EE3A:        D0 02         BNE CODE_20EE3E           
CODE_20EE3C:        F0 06         BEQ CODE_20EE44           
CODE_20EE3E:        60            RTS                       

CODE_20EE3F:        AD 10 05      LDA $0510                 
CODE_20EE42:        D0 07         BNE CODE_20EE4B           
CODE_20EE44:        E6 14         INC $14                   
CODE_20EE46:        A9 01         LDA #$01                  
CODE_20EE48:        8D 13 07      STA $0713                 
CODE_20EE4B:        60            RTS                       

DATA_20EE4C:        db $00,$02,$04,$06,$FF,$2C,$2E

DATA_20EE53:        db $60,$68,$70,$78,$80,$88,$90

CODE_20EE5A:        AD 44 05      LDA $0544
CODE_20EE5D:        D0 08         BNE CODE_20EE67
CODE_20EE5F:        A5 82         LDA $82                   
CODE_20EE61:        29 F0         AND #$F0                  
CODE_20EE63:        C9 B0         CMP #$B0                  
CODE_20EE65:        F0 0B         BEQ CODE_20EE72           
CODE_20EE67:        AD 10 05      LDA $0510                 
CODE_20EE6A:        D0 03         BNE CODE_20EE6F           
CODE_20EE6C:        4C DF EE      JMP CODE_20EEDF           

CODE_20EE6F:        4C E9 EE      JMP CODE_20EEE9           

CODE_20EE72:        C6 53         DEC $53                   
CODE_20EE74:        A5 52         LDA $52                   
CODE_20EE76:        C9 60         CMP #$60                  
CODE_20EE78:        90 0A         BCC CODE_20EE84           
CODE_20EE7A:        18            CLC                       
CODE_20EE7B:        65 53         ADC $53                   
CODE_20EE7D:        85 52         STA $52                   
CODE_20EE7F:        A9 70         LDA #$70                  
CODE_20EE81:        8D 10 05      STA $0510                 
CODE_20EE84:        AD 10 05      LDA $0510                 
CODE_20EE87:        F0 BB         BEQ CODE_20EE44           
CODE_20EE89:        A9 A2         LDA #$A2                  
CODE_20EE8B:        85 BC         STA $BC                   
CODE_20EE8D:        22 00 E0 22   JSL CODE_22E000           
CODE_20EE91:        A2 06         LDX #$06                  
CODE_20EE93:        A4 C4         LDY $C4                   
CODE_20EE95:        BF 4C EE 20   LDA.l DATA_20EE4C,x             
CODE_20EE99:        C9 FF         CMP #$FF                  
CODE_20EE9B:        F0 16         BEQ CODE_20EEB3           
CODE_20EE9D:        99 02 08      STA $0802,y               
CODE_20EEA0:        1A            INC A                     
CODE_20EEA1:        99 06 08      STA $0806,y               
CODE_20EEA4:        A5 52         LDA $52                   
CODE_20EEA6:        C9 E0         CMP #$E0                  
CODE_20EEA8:        B0 09         BCS CODE_20EEB3                   
CODE_20EEAA:        99 01 08      STA $0801,y               
CODE_20EEAD:        18            CLC                       
CODE_20EEAE:        69 08         ADC #$08                  
CODE_20EEB0:        99 05 08      STA $0805,y               
CODE_20EEB3:        BF 53 EE 20   LDA.l DATA_20EE53,x             
CODE_20EEB7:        99 00 08      STA $0800,y               
CODE_20EEBA:        99 04 08      STA $0804,y               
CODE_20EEBD:        A9 32         LDA #$32                  
CODE_20EEBF:        99 03 08      STA $0803,y               
CODE_20EEC2:        99 07 08      STA $0807,y               
CODE_20EEC5:        5A            PHY                       
CODE_20EEC6:        98            TYA                       
CODE_20EEC7:        4A            LSR A                     
CODE_20EEC8:        4A            LSR A                     
CODE_20EEC9:        A8            TAY                       
CODE_20EECA:        A9 00         LDA #$00                  
CODE_20EECC:        99 20 0A      STA $0A20,y               
CODE_20EECF:        99 21 0A      STA $0A21,y               
CODE_20EED2:        7A            PLY                       
CODE_20EED3:        C8            INY                       
CODE_20EED4:        C8            INY                       
CODE_20EED5:        C8            INY                       
CODE_20EED6:        C8            INY                       
CODE_20EED7:        C8            INY                       
CODE_20EED8:        C8            INY                       
CODE_20EED9:        C8            INY                       
CODE_20EEDA:        C8            INY                       
CODE_20EEDB:        CA            DEX                       
CODE_20EEDC:        10 B7         BPL CODE_20EE95           
CODE_20EEDE:        60            RTS                       

CODE_20EEDF:        E6 9D         INC $9D                   
CODE_20EEE1:        E6 9D         INC $9D                   
CODE_20EEE3:        A2 00         LDX #$00                  
CODE_20EEE5:        22 A3 DE 23   JSL CODE_23DEA3           
CODE_20EEE9:        A9 96         LDA #$96                  
CODE_20EEEB:        85 BC         STA $BC                   
CODE_20EEED:        22 37 E2 20   JSL CODE_20E237           
CODE_20EEF1:        60            RTS                       

CODE_20EEF2:        AD 71 05      LDA $0571                 
CODE_20EEF5:        29 01         AND #$01                  
CODE_20EEF7:        A8            TAY                       
CODE_20EEF8:        B9 C1 8A      LDA.w DATA_218AC1,y               
CODE_20EEFB:        85 8B         STA $8B                   
CODE_20EEFD:        22 53 DE 23   JSL CODE_23DE53           
CODE_20EF01:        C6 70         DEC $70                   
CODE_20EF03:        C6 70         DEC $70                   
CODE_20EF05:        A5 15         LDA $15                   
CODE_20EF07:        29 0C         AND #$0C                  
CODE_20EF09:        4A            LSR A                     
CODE_20EF0A:        4A            LSR A                     
CODE_20EF0B:        85 00         STA $00                   
CODE_20EF0D:        20 89 EB      JSR CODE_20EB89           
CODE_20EF10:        E6 70         INC $70                   
CODE_20EF12:        E6 70         INC $70                   
CODE_20EF14:        60            RTS                       

CODE_20EF15:        AD 71 05      LDA $0571                 
CODE_20EF18:        29 01         AND #$01                  
CODE_20EF1A:        A8            TAY                       
CODE_20EF1B:        B9 C3 8A      LDA.w DATA_218AC3,y               
CODE_20EF1E:        85 9D         STA $9D                   
CODE_20EF20:        22 A3 DE 23   JSL CODE_23DEA3           
CODE_20EF24:        22 BB DD 23   JSL CODE_23DDBB           
CODE_20EF28:        22 37 E2 20   JSL CODE_20E237           
CODE_20EF2C:        60            RTS                       

CODE_20EF2D:        A9 00         LDA #$00                  
CODE_20EF2F:        8D 71 05      STA $0571                 
CODE_20EF32:        85 8B         STA $8B                   
CODE_20EF34:        85 9D         STA $9D                   
CODE_20EF36:        85 A6         STA $A6                   
CODE_20EF38:        60            RTS                       

CODE_20EF39:        CE 54 05      DEC $0554                 
CODE_20EF3C:        29 0C         AND #$0C                  
CODE_20EF3E:        4A            LSR A                     
CODE_20EF3F:        4A            LSR A                     
CODE_20EF40:        A8            TAY                       
CODE_20EF41:        B9 E5 8A      LDA.w DATA_218AE5,y               
CODE_20EF44:        85 01         STA $01                   
CODE_20EF46:        C2 10         REP #$10                  
CODE_20EF48:        A4 C4         LDY $C4                   
CODE_20EF4A:        A9 C2         LDA #$C2                  
CODE_20EF4C:        85 00         STA $00                   
CODE_20EF4E:        A5 82         LDA $82                   
CODE_20EF50:        18            CLC                       
CODE_20EF51:        69 08         ADC #$08                  
CODE_20EF53:        99 01 08      STA $0801,y               
CODE_20EF56:        18            CLC                       
CODE_20EF57:        69 08         ADC #$08                  
CODE_20EF59:        99 05 08      STA $0805,y               
CODE_20EF5C:        AD 70 00      LDA $0070                 
CODE_20EF5F:        38            SEC                       
CODE_20EF60:        ED 16 02      SBC $0216                 
CODE_20EF63:        AD 55 00      LDA $0055                 
CODE_20EF66:        ED 17 02      SBC $0217                 
CODE_20EF69:        10 08         BPL CODE_20EF73           
CODE_20EF6B:        A9 F0         LDA #$F0                  
CODE_20EF6D:        99 01 08      STA $0801,y               
CODE_20EF70:        99 05 08      STA $0805,y               
CODE_20EF73:        A5 01         LDA $01                   
CODE_20EF75:        99 02 08      STA $0802,y               
CODE_20EF78:        1A            INC A                     
CODE_20EF79:        99 06 08      STA $0806,y               
CODE_20EF7C:        DA            PHX                       
CODE_20EF7D:        A9 20         LDA #$20                  
CODE_20EF7F:        AE 88 05      LDX $0588                 
CODE_20EF82:        F0 02         BEQ CODE_20EF86           
CODE_20EF84:        A9 10         LDA #$10                  
CODE_20EF86:        05 00         ORA $00                   
CODE_20EF88:        99 03 08      STA $0803,y               
CODE_20EF8B:        99 07 08      STA $0807,y               
CODE_20EF8E:        29 80         AND #$80                  
CODE_20EF90:        F0 0E         BEQ CODE_20EFA0           
CODE_20EF92:        B9 02 08      LDA $0802,y               
CODE_20EF95:        48            PHA                       
CODE_20EF96:        B9 06 08      LDA $0806,y               
CODE_20EF99:        99 02 08      STA $0802,y               
CODE_20EF9C:        68            PLA                       
CODE_20EF9D:        99 06 08      STA $0806,y               
CODE_20EFA0:        FA            PLX                       
CODE_20EFA1:        A5 5E         LDA $5E                   
CODE_20EFA3:        38            SEC                       
CODE_20EFA4:        ED 10 02      SBC $0210                 
CODE_20EFA7:        99 00 08      STA $0800,y               
CODE_20EFAA:        99 04 08      STA $0804,y               
CODE_20EFAD:        A5 00         LDA $00                   
CODE_20EFAF:        29 F0         AND #$F0                  
CODE_20EFB1:        F0 0C         BEQ CODE_20EFBF           
CODE_20EFB3:        B9 00 08      LDA $0800,y               
CODE_20EFB6:        18            CLC                       
CODE_20EFB7:        69 08         ADC #$08                  
CODE_20EFB9:        99 00 08      STA $0800,y               
CODE_20EFBC:        99 04 08      STA $0804,y               
CODE_20EFBF:        5A            PHY                       
CODE_20EFC0:        C2 20         REP #$20                  
CODE_20EFC2:        98            TYA                       
CODE_20EFC3:        4A            LSR A                     
CODE_20EFC4:        4A            LSR A                     
CODE_20EFC5:        A8            TAY                       
CODE_20EFC6:        E2 20         SEP #$20                  
CODE_20EFC8:        A9 00         LDA #$00                  
CODE_20EFCA:        99 20 0A      STA $0A20,y               
CODE_20EFCD:        99 21 0A      STA $0A21,y               
CODE_20EFD0:        7A            PLY                       
CODE_20EFD1:        C8            INY                       
CODE_20EFD2:        C8            INY                       
CODE_20EFD3:        C8            INY                       
CODE_20EFD4:        C8            INY                       
CODE_20EFD5:        C8            INY                       
CODE_20EFD6:        C8            INY                       
CODE_20EFD7:        C8            INY                       
CODE_20EFD8:        C8            INY                       
CODE_20EFD9:        A5 00         LDA $00                   
CODE_20EFDB:        38            SEC                       
CODE_20EFDC:        E9 C0         SBC #$C0                  
CODE_20EFDE:        85 00         STA $00                   
CODE_20EFE0:        90 03         BCC CODE_20EFE5           
CODE_20EFE2:        4C 4E EF      JMP CODE_20EF4E           

CODE_20EFE5:        E2 10         SEP #$10                  
CODE_20EFE7:        60            RTS                       

DATA_20EFE8:        db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF

CODE_20F000:        AD 10 42      LDA $4210                 
CODE_20F003:        A5 02         LDA $02                   
CODE_20F005:        48            PHA                       
CODE_20F006:        A9 80         LDA #$80                  
CODE_20F008:        8D 00 21      STA $2100                 
CODE_20F00B:        9C 0C 42      STZ $420C                 
CODE_20F00E:        AD 1E 02      LDA $021E                 
CODE_20F011:        8D 01 21      STA $2101                 
CODE_20F014:        AD 27 04      LDA $0427                 
CODE_20F017:        F0 11         BEQ CODE_20F02A           
CODE_20F019:        29 7F         AND #$7F                  
CODE_20F01B:        AA            TAX                       
CODE_20F01C:        BF C3 CE 21   LDA.l DATA_21CEC3,x             
CODE_20F020:        8D 00 01      STA $0100                 
CODE_20F023:        BF CB CE 21   LDA.l DATA_21CECB,x             
CODE_20F027:        8D 01 01      STA $0101                 
CODE_20F02A:        AF 55 39 7E   LDA $7E3955               
CODE_20F02E:        F0 03         BEQ CODE_20F033           
CODE_20F030:        4C BA F0      JMP CODE_20F0BA           

CODE_20F033:        AD 00 01      LDA $0100                 
CODE_20F036:        D0 03         BNE CODE_20F03B           
CODE_20F038:        4C 1A F1      JMP CODE_20F11A           

CODE_20F03B:        C9 80         CMP #$80                  
CODE_20F03D:        D0 03         BNE CODE_20F042           
CODE_20F03F:        4C CF F0      JMP CODE_20F0CF           

CODE_20F042:        C9 40         CMP #$40                  
CODE_20F044:        D0 03         BNE CODE_20F049           
CODE_20F046:        4C 5A F2      JMP CODE_20F25A           

CODE_20F049:        C9 A0         CMP #$A0                  
CODE_20F04B:        D0 03         BNE CODE_20F050           
CODE_20F04D:        4C 41 F1      JMP CODE_20F141           

CODE_20F050:        C9 20         CMP #$20                  
CODE_20F052:        D0 03         BNE CODE_20F057           
CODE_20F054:        4C 8C F1      JMP CODE_20F18C           

CODE_20F057:        C9 95         CMP #$95                  
CODE_20F059:        D0 03         BNE CODE_20F05E           
CODE_20F05B:        4C C0 F1      JMP CODE_20F1C0           

CODE_20F05E:        20 50 F6      JSR CODE_20F650           
CODE_20F061:        AD 54 01      LDA $0154                 
CODE_20F064:        D0 29         BNE CODE_20F08F           
CODE_20F066:        22 53 E9 29   JSL CODE_29E953           
CODE_20F06A:        AD BB 02      LDA $02BB                 
CODE_20F06D:        F0 05         BEQ CODE_20F074           
CODE_20F06F:        20 06 FF      JSR CODE_20FF06           
CODE_20F072:        64 28         STZ $28                   
CODE_20F074:        22 AB E8 29   JSL CODE_29E8AB           
CODE_20F078:        22 69 EA 29   JSL CODE_29EA69           
CODE_20F07C:        A5 28         LDA $28                   
CODE_20F07E:        D0 0D         BNE CODE_20F08D           
CODE_20F080:        9C 00 16      STZ $1600                 
CODE_20F083:        9C 01 16      STZ $1601                 
CODE_20F086:        3A            DEC A                     
CODE_20F087:        8D 02 16      STA $1602                 
CODE_20F08A:        8D 03 16      STA $1603                 
CODE_20F08D:        64 28         STZ $28                   
CODE_20F08F:        20 0B F2      JSR CODE_20F20B           
CODE_20F092:        20 BF FC      JSR CODE_20FCBF           
CODE_20F095:        AD 11 42      LDA $4211                 
CODE_20F098:        A9 C0         LDA #$C0                  
CODE_20F09A:        8D 09 42      STA $4209                 
CODE_20F09D:        9C 0A 42      STZ $420A                 
CODE_20F0A0:        9C 07 42      STZ $4207                 
CODE_20F0A3:        9C 08 42      STZ $4208                 
CODE_20F0A6:        A9 A1         LDA #$A1                  
CODE_20F0A8:        8D 00 42      STA $4200                 
CODE_20F0AB:        58            CLI                       
CODE_20F0AC:        A5 1C         LDA $1C                   
CODE_20F0AE:        F0 0A         BEQ CODE_20F0BA           
CODE_20F0B0:        20 5E FB      JSR CODE_20FB5E           
CODE_20F0B3:        22 03 E1 22   JSL CODE_22E103           
CODE_20F0B7:        CE 54 01      DEC $0154                 
CODE_20F0BA:        E6 15         INC $15                   
CODE_20F0BC:        A5 16         LDA $16                   
CODE_20F0BE:        8D 00 21      STA $2100                 
CODE_20F0C1:        AD 93 02      LDA $0293                 
CODE_20F0C4:        8D 0C 42      STA $420C                 
CODE_20F0C7:        22 77 E6 22   JSL CODE_22E677           
CODE_20F0CB:        68            PLA                       
CODE_20F0CC:        85 02         STA $02                   
CODE_20F0CE:        6B            RTL                       

CODE_20F0CF:        20 50 F6      JSR CODE_20F650           
CODE_20F0D2:        AD 54 01      LDA $0154                 
CODE_20F0D5:        D0 23         BNE CODE_20F0FA           
CODE_20F0D7:        22 32 EA 29   JSL CODE_29EA32           
CODE_20F0DB:        22 F8 E9 29   JSL CODE_29E9F8           
CODE_20F0DF:        22 AB E8 29   JSL CODE_29E8AB           
CODE_20F0E3:        22 69 EA 29   JSL CODE_29EA69           
CODE_20F0E7:        A5 28         LDA $28                   
CODE_20F0E9:        D0 0D         BNE CODE_20F0F8           
CODE_20F0EB:        9C 00 16      STZ $1600                 
CODE_20F0EE:        9C 01 16      STZ $1601                 
CODE_20F0F1:        3A            DEC A                     
CODE_20F0F2:        8D 02 16      STA $1602                 
CODE_20F0F5:        8D 03 16      STA $1603                 
CODE_20F0F8:        64 28         STZ $28                   
CODE_20F0FA:        20 0B F2      JSR CODE_20F20B           
CODE_20F0FD:        20 C5 FB      JSR CODE_20FBC5           
CODE_20F100:        AD 11 42      LDA $4211                 
CODE_20F103:        A9 C0         LDA #$C0                  
CODE_20F105:        8D 09 42      STA $4209                 
CODE_20F108:        9C 0A 42      STZ $420A                 
CODE_20F10B:        9C 07 42      STZ $4207                 
CODE_20F10E:        9C 08 42      STZ $4208                 
CODE_20F111:        A9 A1         LDA #$A1                  
CODE_20F113:        8D 00 42      STA $4200                 
CODE_20F116:        58            CLI                       
CODE_20F117:        4C AC F0      JMP CODE_20F0AC           
CODE_20F11A:        20 50 F6      JSR CODE_20F650           
CODE_20F11D:        A5 20         LDA $20                   
CODE_20F11F:        F0 00         BEQ CODE_20F121           
CODE_20F121:        20 0B F2      JSR CODE_20F20B           
CODE_20F124:        20 BF FC      JSR CODE_20FCBF           
CODE_20F127:        AD 11 42      LDA $4211                 
CODE_20F12A:        A9 C0         LDA #$C0                  
CODE_20F12C:        8D 09 42      STA $4209                 
CODE_20F12F:        9C 0A 42      STZ $420A                 
CODE_20F132:        9C 07 42      STZ $4207                 
CODE_20F135:        9C 08 42      STZ $4208                 
CODE_20F138:        A9 A1         LDA #$A1                  
CODE_20F13A:        8D 00 42      STA $4200                 
CODE_20F13D:        58            CLI                       
CODE_20F13E:        4C B7 F0      JMP CODE_20F0B7           

CODE_20F141:        20 50 F6      JSR CODE_20F650           
CODE_20F144:        AD 54 01      LDA $0154                 
CODE_20F147:        D0 23         BNE CODE_20F16C           
CODE_20F149:        22 53 E9 29   JSL CODE_29E953           
CODE_20F14D:        22 A3 E9 29   JSL CODE_29E9A3           
CODE_20F151:        22 AB E8 29   JSL CODE_29E8AB           
CODE_20F155:        22 69 EA 29   JSL CODE_29EA69           
CODE_20F159:        A5 28         LDA $28                   
CODE_20F15B:        D0 0D         BNE CODE_20F16A           
CODE_20F15D:        9C 00 16      STZ $1600                 
CODE_20F160:        9C 01 16      STZ $1601                 
CODE_20F163:        3A            DEC A                     
CODE_20F164:        8D 02 16      STA $1602                 
CODE_20F167:        8D 03 16      STA $1603                 
CODE_20F16A:        64 28         STZ $28                   
CODE_20F16C:        20 0B F2      JSR CODE_20F20B           
CODE_20F16F:        20 C5 FB      JSR CODE_20FBC5           
CODE_20F172:        AD 11 42      LDA $4211                 
CODE_20F175:        A9 A0         LDA #$A0                  
CODE_20F177:        8D 09 42      STA $4209                 
CODE_20F17A:        9C 0A 42      STZ $420A                 
CODE_20F17D:        9C 07 42      STZ $4207                 
CODE_20F180:        9C 08 42      STZ $4208                 
CODE_20F183:        A9 A1         LDA #$A1                  
CODE_20F185:        8D 00 42      STA $4200                 
CODE_20F188:        58            CLI                       
CODE_20F189:        4C AC F0      JMP CODE_20F0AC           

CODE_20F18C:        20 50 F6      JSR CODE_20F650           
CODE_20F18F:        AD 54 01      LDA $0154                 
CODE_20F192:        D0 20         BNE CODE_20F1B4           
CODE_20F194:        A5 C2         LDA $C2                   
CODE_20F196:        F0 05         BEQ CODE_20F19D           
CODE_20F198:        20 69 CF      JSR CODE_20CF69           
CODE_20F19B:        80 17         BRA CODE_20F1B4           

CODE_20F19D:        22 AB E8 29   JSL CODE_29E8AB           
CODE_20F1A1:        A5 28         LDA $28                   
CODE_20F1A3:        D0 0D         BNE CODE_20F1B2           
CODE_20F1A5:        9C 00 16      STZ $1600                 
CODE_20F1A8:        9C 01 16      STZ $1601                 
CODE_20F1AB:        3A            DEC A                     
CODE_20F1AC:        8D 02 16      STA $1602                 
CODE_20F1AF:        8D 03 16      STA $1603                 
CODE_20F1B2:        64 28         STZ $28                   
CODE_20F1B4:        20 DC CF      JSR CODE_20CFDC           
CODE_20F1B7:        20 0B F2      JSR CODE_20F20B           
CODE_20F1BA:        20 C5 FB      JSR CODE_20FBC5           
CODE_20F1BD:        4C AC F0      JMP CODE_20F0AC           

CODE_20F1C0:        20 50 F6      JSR CODE_20F650           
CODE_20F1C3:        AD 54 01      LDA $0154                 
CODE_20F1C6:        D0 23         BNE CODE_20F1EB           
CODE_20F1C8:        22 53 E9 29   JSL CODE_29E953           
CODE_20F1CC:        22 A3 E9 29   JSL CODE_29E9A3           
CODE_20F1D0:        22 AB E8 29   JSL CODE_29E8AB           
CODE_20F1D4:        22 69 EA 29   JSL CODE_29EA69           
CODE_20F1D8:        A5 28         LDA $28                   
CODE_20F1DA:        D0 0D         BNE CODE_20F1E9           
CODE_20F1DC:        9C 00 16      STZ $1600                 
CODE_20F1DF:        9C 01 16      STZ $1601                 
CODE_20F1E2:        3A            DEC A                     
CODE_20F1E3:        8D 02 16      STA $1602                 
CODE_20F1E6:        8D 03 16      STA $1603                 
CODE_20F1E9:        64 28         STZ $28                   
CODE_20F1EB:        20 0B F2      JSR CODE_20F20B           
CODE_20F1EE:        20 BF FC      JSR CODE_20FCBF           
CODE_20F1F1:        AD 11 42      LDA $4211                 
CODE_20F1F4:        A9 91         LDA #$91                  
CODE_20F1F6:        8D 09 42      STA $4209                 
CODE_20F1F9:        9C 0A 42      STZ $420A                 
CODE_20F1FC:        9C 07 42      STZ $4207                 
CODE_20F1FF:        9C 08 42      STZ $4208                 
CODE_20F202:        A9 A1         LDA #$A1                  
CODE_20F204:        8D 00 42      STA $4200                 
CODE_20F207:        58            CLI                       
CODE_20F208:        4C AC F0      JMP CODE_20F0AC           

CODE_20F20B:        0B            PHD                       ;Hardware register mirrors related to screen settings
CODE_20F20C:        A9 21         LDA #$21                  ;\
CODE_20F20E:        EB            XBA                       ; |Set direct page to $2100
CODE_20F20F:        A9 00         LDA #$00                  ; |
CODE_20F211:        5B            TCD                       ;/
CODE_20F212:        AD 00 02      LDA $0200                 ;\ Window Mask Settings for BG1 and BG2
CODE_20F215:        85 23         STA $23                   ;/
CODE_20F217:        AD 01 02      LDA $0201                 ;\ Window Mask Settings for BG3 and BG4
CODE_20F21A:        85 24         STA $24                   ;/
CODE_20F21C:        AD 02 02      LDA $0202                 ;\ Window Mask Settings for OBJ and Color Window
CODE_20F21F:        85 25         STA $25                   ;/
CODE_20F221:        AD 03 02      LDA $0203                 ;\ Color Addition Select
CODE_20F224:        85 30         STA $30                   ;/
CODE_20F226:        AD 04 02      LDA $0204                 ;\ Color math designation
CODE_20F229:        85 31         STA $31                   ;/
CODE_20F22B:        AD 05 02      LDA $0205                 ;\ Fixed Color Data
CODE_20F22E:        85 32         STA $32                   ;/
CODE_20F230:        AD 06 02      LDA $0206                 ;\ Fixed Color Data
CODE_20F233:        85 32         STA $32                   ;/
CODE_20F235:        AD 07 02      LDA $0207                 ;\ Fixed Color Data
CODE_20F238:        85 32         STA $32                   ;/
CODE_20F23A:        AD 08 02      LDA $0208                 ;\ Main Screen Designation
CODE_20F23D:        85 2C         STA $2C                   ;/
CODE_20F23F:        AD 09 02      LDA $0209                 ;\ Subscreen Designation
CODE_20F242:        85 2D         STA $2D                   ;/
CODE_20F244:        AD 0A 02      LDA $020A                 ;\ Window Mask Designation for the Main Screen
CODE_20F247:        85 2E         STA $2E                   ;/
CODE_20F249:        AD 0B 02      LDA $020B                 ;\ Window Mask Designation for the Subscreen
CODE_20F24C:        85 2F         STA $2F                   ;/
CODE_20F24E:        AD 0D 02      LDA $020D                 ;\ Screen Pixelation
CODE_20F251:        85 06         STA $06                   ;/
CODE_20F253:        AD 0C 02      LDA $020C                 ;\ BG Mode and Character Size
CODE_20F256:        85 05         STA $05                   ;/
CODE_20F258:        2B            PLD                       ;\Recover original direct page, then return
CODE_20F259:        60            RTS                       ;/

CODE_20F25A:        20 4C F6      JSR CODE_20F64C           
CODE_20F25D:        AF BB 82 22   LDA.l PNTR_2282BB               
CODE_20F261:        85 36         STA $36                   
CODE_20F263:        AF BC 82 22   LDA.l PNTR_2282BB+1
CODE_20F267:        85 37         STA $37                   
CODE_20F269:        AF BD 82 22   LDA.l PNTR_2282BB+2               
CODE_20F26D:        85 38         STA $38                   
CODE_20F26F:        22 AB E8 29   JSL CODE_29E8AB           
CODE_20F273:        64 28         STZ $28                   
CODE_20F275:        C2 20         REP #$20                  
CODE_20F277:        9C 00 16      STZ $1600                 
CODE_20F27A:        A9 FF FF      LDA #$FFFF                
CODE_20F27D:        8D 02 16      STA $1602                 
CODE_20F280:        E2 20         SEP #$20                  
CODE_20F282:        20 0B F2      JSR CODE_20F20B           
CODE_20F285:        AD 10 02      LDA $0210                 
CODE_20F288:        8D 0D 21      STA $210D                 
CODE_20F28B:        AD 11 02      LDA $0211                 
CODE_20F28E:        8D 0D 21      STA $210D                 
CODE_20F291:        AD 16 02      LDA $0216                 
CODE_20F294:        8D 0E 21      STA $210E                 
CODE_20F297:        AD 17 02      LDA $0217                 
CODE_20F29A:        8D 0E 21      STA $210E                 
CODE_20F29D:        AD 12 02      LDA $0212                 
CODE_20F2A0:        8D 0F 21      STA $210F                 
CODE_20F2A3:        AD 13 02      LDA $0213                 
CODE_20F2A6:        8D 0F 21      STA $210F                 
CODE_20F2A9:        AD 18 02      LDA $0218                 
CODE_20F2AC:        8D 10 21      STA $2110                 
CODE_20F2AF:        AD 19 02      LDA $0219                 
CODE_20F2B2:        8D 10 21      STA $2110                 
CODE_20F2B5:        AD 11 42      LDA $4211                 
CODE_20F2B8:        A9 28         LDA #$28                  
CODE_20F2BA:        8D 09 42      STA $4209                 
CODE_20F2BD:        9C 0A 42      STZ $420A                 
CODE_20F2C0:        9C 07 42      STZ $4207                 
CODE_20F2C3:        9C 08 42      STZ $4208                 
CODE_20F2C6:        A9 A1         LDA #$A1                  
CODE_20F2C8:        8D 00 42      STA $4200                 
CODE_20F2CB:        58            CLI                       
CODE_20F2CC:        A2 00         LDX #$00                  
CODE_20F2CE:        A0 02         LDY #$02                  
CODE_20F2D0:        AD 82 07      LDA $0782                 
CODE_20F2D3:        29 02         AND #$02                  
CODE_20F2D5:        85 00         STA $00                   
CODE_20F2D7:        AD 83 07      LDA $0783                 
CODE_20F2DA:        29 02         AND #$02                  
CODE_20F2DC:        45 00         EOR $00                   
CODE_20F2DE:        18            CLC                       
CODE_20F2DF:        F0 01         BEQ CODE_20F2E2           
CODE_20F2E1:        38            SEC                       
CODE_20F2E2:        7E 82 07      ROR $0782,x               
CODE_20F2E5:        E8            INX                       
CODE_20F2E6:        88            DEY                       
CODE_20F2E7:        D0 F9         BNE CODE_20F2E2           
CODE_20F2E9:        20 5E FB      JSR CODE_20FB5E           
CODE_20F2EC:        22 53 99 23   JSL CODE_239953           
CODE_20F2F0:        E6 15         INC $15                   
CODE_20F2F2:        A5 16         LDA $16                   
CODE_20F2F4:        8D 00 21      STA $2100                 
CODE_20F2F7:        AD 93 02      LDA $0293                 
CODE_20F2FA:        8D 0C 42      STA $420C                 
CODE_20F2FD:        22 A5 EA 29   JSL CODE_29EAA5           
CODE_20F301:        4C C7 F0      JMP CODE_20F0C7           

CODE_20F304:        AD 11 42      LDA $4211                 
CODE_20F307:        30 03         BMI CODE_20F30C           
CODE_20F309:        4C 8E F3      JMP CODE_20F38E           

CODE_20F30C:        A9 21         LDA #$21                  
CODE_20F30E:        EB            XBA                       
CODE_20F30F:        A9 00         LDA #$00                  
CODE_20F311:        5B            TCD                       
CODE_20F312:        AD 01 01      LDA $0101                 
CODE_20F315:        C9 80         CMP #$80                  
CODE_20F317:        D0 03         BNE CODE_20F31C           
CODE_20F319:        4C 8E F3      JMP CODE_20F38E           

CODE_20F31C:        C9 40         CMP #$40                  
CODE_20F31E:        D0 03         BNE CODE_20F323           
CODE_20F320:        4C 92 F3      JMP CODE_20F392           

CODE_20F323:        C9 20         CMP #$20                  
CODE_20F325:        D0 03         BNE CODE_20F32A           
CODE_20F327:        4C C3 F4      JMP CODE_20F4C3           

CODE_20F32A:        C9 60         CMP #$60                  
CODE_20F32C:        D0 03         BNE CODE_20F331           
CODE_20F32E:        4C 08 F4      JMP CODE_20F408           

CODE_20F331:        C9 A0         CMP #$A0                  
CODE_20F333:        D0 03         BNE CODE_20F338           
CODE_20F335:        4C 62 F4      JMP CODE_20F462           

CODE_20F338:        C9 55         CMP #$55                  
CODE_20F33A:        D0 03         BNE CODE_20F33F           
CODE_20F33C:        4C C6 F4      JMP CODE_20F4C6           

CODE_20F33F:        C9 75         CMP #$75                  
CODE_20F341:        D0 03         BNE CODE_20F346           
CODE_20F343:        4C F4 F4      JMP CODE_20F4F4           

CODE_20F346:        C9 95         CMP #$95                  
CODE_20F348:        D0 03         BNE CODE_20F34D           
CODE_20F34A:        4C 28 F5      JMP CODE_20F528           

CODE_20F34D:        AD 25 04      LDA $0425                 
CODE_20F350:        F0 00         BEQ CODE_20F352           
CODE_20F352:        2C 12 42      BIT $4212                 
CODE_20F355:        50 FB         BVC CODE_20F352                   
CODE_20F357:        A9 80         LDA #$80                  
CODE_20F359:        85 00         STA $00                   
CODE_20F35B:        9C 0C 42      STZ $420C                 
CODE_20F35E:        64 23         STZ $23                   
CODE_20F360:        64 24         STZ $24                   
CODE_20F362:        64 2F         STZ $2F                   
CODE_20F364:        2C 12 42      BIT $4212                 
CODE_20F367:        50 FB         BVC CODE_20F364                   
CODE_20F369:        AD 0E 02      LDA $020E                 
CODE_20F36C:        85 05         STA $05                   
CODE_20F36E:        AD 0F 02      LDA $020F                 
CODE_20F371:        85 2C         STA $2C                   
CODE_20F373:        A9 20         LDA #$20                  
CODE_20F375:        85 31         STA $31                   
CODE_20F377:        64 0D         STZ $0D                   
CODE_20F379:        A9 01         LDA #$01                  
CODE_20F37B:        85 0D         STA $0D                   
CODE_20F37D:        64 0E         STZ $0E                   
CODE_20F37F:        85 0E         STA $0E                   
CODE_20F381:        2C 12 42      BIT $4212                 
CODE_20F384:        50 FB         BVC CODE_20F381                   
CODE_20F386:        AD 16 00      LDA $0016                 
CODE_20F389:        85 00         STA $00                   
CODE_20F38B:        EE 1C 02      INC $021C                 
CODE_20F38E:        6B            RTL                       

CODE_20F38F:        4C 8E F3      JMP CODE_20F38E           

CODE_20F392:        AE 7C 03      LDX $037C                 
CODE_20F395:        D0 4F         BNE CODE_20F3E6           
CODE_20F397:        2C 12 42      BIT $4212                 
CODE_20F39A:        50 FB         BVC CODE_20F397                   
CODE_20F39C:        A9 EF         LDA #$EF                  
CODE_20F39E:        85 0E         STA $0E                   
CODE_20F3A0:        A9 00         LDA #$00                  
CODE_20F3A2:        85 0E         STA $0E                   
CODE_20F3A4:        AD 10 02      LDA $0210                 
CODE_20F3A7:        85 0D         STA $0D                   
CODE_20F3A9:        AD 11 02      LDA $0211                 
CODE_20F3AC:        85 0D         STA $0D                   
CODE_20F3AE:        AD 11 42      LDA $4211                 
CODE_20F3B1:        A9 C0         LDA #$C0                  
CODE_20F3B3:        8D 09 42      STA $4209                 
CODE_20F3B6:        9C 0A 42      STZ $420A                 
CODE_20F3B9:        9C 07 42      STZ $4207                 
CODE_20F3BC:        9C 08 42      STZ $4208                 
CODE_20F3BF:        AD 27 07      LDA $0727                 
CODE_20F3C2:        C9 07         CMP #$07                  
CODE_20F3C4:        D0 19         BNE CODE_20F3DF           
CODE_20F3C6:        AF 77 39 7E   LDA $7E3977               
CODE_20F3CA:        D0 13         BNE CODE_20F3DF           
CODE_20F3CC:        2C 12 42      BIT $4212                 
CODE_20F3CF:        50 FB         BVC CODE_20F3CC                   
CODE_20F3D1:        AD 08 02      LDA $0208                 
CODE_20F3D4:        29 0F         AND #$0F                  
CODE_20F3D6:        85 2C         STA $2C                   
CODE_20F3D8:        AD 09 02      LDA $0209                 
CODE_20F3DB:        09 10         ORA #$10                  
CODE_20F3DD:        85 2D         STA $2D                   
CODE_20F3DF:        E8            INX                       
CODE_20F3E0:        8E 7C 03      STX $037C                 
CODE_20F3E3:        4C 8E F3      JMP CODE_20F38E           

CODE_20F3E6:        2C 12 42      BIT $4212                 
CODE_20F3E9:        50 FB         BVC CODE_20F3E6                   
CODE_20F3EB:        AD 0E 02      LDA $020E                 
CODE_20F3EE:        85 05         STA $05                   
CODE_20F3F0:        AD 0F 02      LDA $020F                 
CODE_20F3F3:        85 2C         STA $2C                   
CODE_20F3F5:        64 0D         STZ $0D                   
CODE_20F3F7:        A9 01         LDA #$01                  
CODE_20F3F9:        85 0D         STA $0D                   
CODE_20F3FB:        64 0E         STZ $0E                   
CODE_20F3FD:        85 0E         STA $0E                   
CODE_20F3FF:        9C 7C 03      STZ $037C                 
CODE_20F402:        EE 1C 02      INC $021C                 
CODE_20F405:        4C 8E F3      JMP CODE_20F38E           

CODE_20F408:        AE 7C 03      LDX $037C                 
CODE_20F40B:        E0 03         CPX #$03                  
CODE_20F40D:        F0 31         BEQ CODE_20F440           
CODE_20F40F:        2C 12 42      BIT $4212                 
CODE_20F412:        50 FB         BVC CODE_20F40F                   
CODE_20F414:        A9 00         LDA #$00                  
CODE_20F416:        85 0E         STA $0E                   
CODE_20F418:        85 0E         STA $0E                   
CODE_20F41A:        BD 00 10      LDA $1000,x               
CODE_20F41D:        85 0D         STA $0D                   
CODE_20F41F:        BD 03 10      LDA $1003,x               
CODE_20F422:        29 01         AND #$01                  
CODE_20F424:        85 0D         STA $0D                   
CODE_20F426:        AD 11 42      LDA $4211                 
CODE_20F429:        BF E4 CE 21   LDA.l DATA_21CEE4,x             
CODE_20F42D:        8D 09 42      STA $4209                 
CODE_20F430:        9C 0A 42      STZ $420A                 
CODE_20F433:        9C 07 42      STZ $4207                 
CODE_20F436:        9C 08 42      STZ $4208                 
CODE_20F439:        E8            INX                       
CODE_20F43A:        8E 7C 03      STX $037C                 
CODE_20F43D:        4C 8E F3      JMP CODE_20F38E           

CODE_20F440:        2C 12 42      BIT $4212                 
CODE_20F443:        50 FB         BVC CODE_20F440                   
CODE_20F445:        AD 0E 02      LDA $020E                 
CODE_20F448:        85 05         STA $05                   
CODE_20F44A:        AD 0F 02      LDA $020F                 
CODE_20F44D:        85 2C         STA $2C                   
CODE_20F44F:        64 0D         STZ $0D                   
CODE_20F451:        A9 01         LDA #$01                  
CODE_20F453:        85 0D         STA $0D                   
CODE_20F455:        64 0E         STZ $0E                   
CODE_20F457:        85 0E         STA $0E                   
CODE_20F459:        9C 7C 03      STZ $037C                 
CODE_20F45C:        EE 1C 02      INC $021C                 
CODE_20F45F:        4C 8E F3      JMP CODE_20F38E           

CODE_20F462:        AD 7C 03      LDA $037C                 
CODE_20F465:        D0 2E         BNE CODE_20F495           
CODE_20F467:        2C 12 42      BIT $4212                 
CODE_20F46A:        50 FB         BVC CODE_20F467                   
CODE_20F46C:        A9 EF         LDA #$EF                  
CODE_20F46E:        85 0E         STA $0E                   
CODE_20F470:        A9 00         LDA #$00                  
CODE_20F472:        85 0E         STA $0E                   
CODE_20F474:        AD 10 02      LDA $0210                 
CODE_20F477:        85 0D         STA $0D                   
CODE_20F479:        AD 11 02      LDA $0211                 
CODE_20F47C:        85 0D         STA $0D                   
CODE_20F47E:        AD 11 42      LDA $4211                 
CODE_20F481:        A9 C0         LDA #$C0                  
CODE_20F483:        8D 09 42      STA $4209                 
CODE_20F486:        9C 0A 42      STZ $420A                 
CODE_20F489:        9C 07 42      STZ $4207                 
CODE_20F48C:        9C 08 42      STZ $4208                 
CODE_20F48F:        EE 7C 03      INC $037C                 
CODE_20F492:        4C 8E F3      JMP CODE_20F38E           

CODE_20F495:        2C 12 42      BIT $4212                 
CODE_20F498:        50 FB         BVC CODE_20F495                   
CODE_20F49A:        AD 0E 02      LDA $020E                 
CODE_20F49D:        85 05         STA $05                   
CODE_20F49F:        AD 0F 02      LDA $020F                 
CODE_20F4A2:        85 2C         STA $2C                   
CODE_20F4A4:        A9 20         LDA #$20                  
CODE_20F4A6:        85 31         STA $31                   
CODE_20F4A8:        64 23         STZ $23                   
CODE_20F4AA:        64 2F         STZ $2F                   
CODE_20F4AC:        9C 7C 03      STZ $037C                 
CODE_20F4AF:        9C 0D 21      STZ $210D                 
CODE_20F4B2:        A9 01         LDA #$01                  
CODE_20F4B4:        8D 0D 21      STA $210D                 
CODE_20F4B7:        9C 0E 21      STZ $210E                 
CODE_20F4BA:        8D 0E 21      STA $210E                 
CODE_20F4BD:        EE 1C 02      INC $021C                 
CODE_20F4C0:        4C 8E F3      JMP CODE_20F38E           

CODE_20F4C3:        4C 8E F3      JMP CODE_20F38E           

CODE_20F4C6:        AD 7C 03      LDA $037C                 
CODE_20F4C9:        D0 CA         BNE CODE_20F495           
CODE_20F4CB:        C2 20         REP #$20                  
CODE_20F4CD:        AD 10 02      LDA $0210                 
CODE_20F4D0:        4A            LSR A                     
CODE_20F4D1:        E2 20         SEP #$20                  
CODE_20F4D3:        2C 12 42      BIT $4212                 
CODE_20F4D6:        50 FB         BVC CODE_20F4D3                   
CODE_20F4D8:        85 0D         STA $0D                   
CODE_20F4DA:        EB            XBA                       
CODE_20F4DB:        85 0D         STA $0D                   
CODE_20F4DD:        AD 11 42      LDA $4211                 
CODE_20F4E0:        A9 C0         LDA #$C0                  
CODE_20F4E2:        8D 09 42      STA $4209                 
CODE_20F4E5:        9C 0A 42      STZ $420A                 
CODE_20F4E8:        9C 07 42      STZ $4207                 
CODE_20F4EB:        9C 08 42      STZ $4208                 
CODE_20F4EE:        EE 7C 03      INC $037C                 
CODE_20F4F1:        4C 8E F3      JMP CODE_20F38E           

CODE_20F4F4:        AD 7C 03      LDA $037C                 
CODE_20F4F7:        D0 66         BNE CODE_20F55F           
CODE_20F4F9:        C2 20         REP #$20                  
CODE_20F4FB:        AD 10 02      LDA $0210                 
CODE_20F4FE:        4A            LSR A                     
CODE_20F4FF:        E2 20         SEP #$20                  
CODE_20F501:        2C 12 42      BIT $4212                 
CODE_20F504:        50 FB         BVC CODE_20F501                   
CODE_20F506:        85 0D         STA $0D                   
CODE_20F508:        EB            XBA                       
CODE_20F509:        85 0D         STA $0D                   
CODE_20F50B:        A9 EF         LDA #$EF                  
CODE_20F50D:        85 0E         STA $0E                   
CODE_20F50F:        64 0E         STZ $0E                   
CODE_20F511:        AD 11 42      LDA $4211                 
CODE_20F514:        A9 C0         LDA #$C0                  
CODE_20F516:        8D 09 42      STA $4209                 
CODE_20F519:        9C 0A 42      STZ $420A                 
CODE_20F51C:        9C 07 42      STZ $4207                 
CODE_20F51F:        9C 08 42      STZ $4208                 
CODE_20F522:        EE 7C 03      INC $037C                 
CODE_20F525:        4C 8E F3      JMP CODE_20F38E           

CODE_20F528:        AE 7C 03      LDX $037C                 
CODE_20F52B:        E0 08         CPX #$08                  
CODE_20F52D:        B0 30         BCS CODE_20F55F                   
CODE_20F52F:        EE 7C 03      INC $037C                 
CODE_20F532:        EE 7C 03      INC $037C                 
CODE_20F535:        2C 12 42      BIT $4212                 
CODE_20F538:        50 FB         BVC CODE_20F535                   
CODE_20F53A:        BD 57 03      LDA $0357,x               
CODE_20F53D:        85 11         STA $11                   
CODE_20F53F:        BD 58 03      LDA $0358,x               
CODE_20F542:        29 01         AND #$01                  
CODE_20F544:        85 11         STA $11                   
CODE_20F546:        8A            TXA                       
CODE_20F547:        4A            LSR A                     
CODE_20F548:        AA            TAX                       
CODE_20F549:        AD 11 42      LDA $4211                 
CODE_20F54C:        BF E8 CE 21   LDA.l DATA_21CEE8,x             
CODE_20F550:        8D 09 42      STA $4209                 
CODE_20F553:        9C 0A 42      STZ $420A                 
CODE_20F556:        9C 07 42      STZ $4207                 
CODE_20F559:        9C 08 42      STZ $4208                 
CODE_20F55C:        4C 8E F3      JMP CODE_20F38E           

CODE_20F55F:        2C 12 42      BIT $4212                 
CODE_20F562:        50 FB         BVC CODE_20F55F                   
CODE_20F564:        64 0D         STZ $0D                   
CODE_20F566:        A9 01         LDA #$01                  
CODE_20F568:        85 0D         STA $0D                   
CODE_20F56A:        64 0E         STZ $0E                   
CODE_20F56C:        85 0E         STA $0E                   
CODE_20F56E:        AD 0E 02      LDA $020E                 
CODE_20F571:        85 05         STA $05                   
CODE_20F573:        AD 0F 02      LDA $020F                 
CODE_20F576:        85 2C         STA $2C                   
CODE_20F578:        A9 20         LDA #$20                  
CODE_20F57A:        85 31         STA $31                   
CODE_20F57C:        64 24         STZ $24                   
CODE_20F57E:        64 2F         STZ $2F                   
CODE_20F580:        9C 7C 03      STZ $037C                 
CODE_20F583:        EE 1C 02      INC $021C                 
CODE_20F586:        4C 8E F3      JMP CODE_20F38E           

CODE_20F589:        20 0C F6      JSR CODE_20F60C           
CODE_20F58C:        AD 26 07      LDA $0726                 
CODE_20F58F:        F0 02         BEQ CODE_20F593           
CODE_20F591:        A9 23         LDA #$23                  
CODE_20F593:        85 00         STA $00                   
CODE_20F595:        A9 02         LDA #$02                  
CODE_20F597:        85 01         STA $01                   
CODE_20F599:        A4 00         LDY $00                   
CODE_20F59B:        22 A6 F5 20   JSL CODE_20F5A6           
CODE_20F59F:        E6 00         INC $00                   
CODE_20F5A1:        C6 01         DEC $01                   
CODE_20F5A3:        10 F4         BPL CODE_20F599           
CODE_20F5A5:        6B            RTL                       

CODE_20F5A6:        84 02         STY $02                   
CODE_20F5A8:        B9 9C 1D      LDA $1D9C,y               
CODE_20F5AB:        0A            ASL A                     
CODE_20F5AC:        AA            TAX                       
CODE_20F5AD:        AC 00 16      LDY $1600                 
CODE_20F5B0:        C2 20         REP #$20                  
CODE_20F5B2:        BD 0D CF      LDA.w DATA_21CF0D,x               
CODE_20F5B5:        99 06 16      STA $1606,y               
CODE_20F5B8:        BD 15 CF      LDA.w DATA_21CF15,x               
CODE_20F5BB:        99 08 16      STA $1608,y               
CODE_20F5BE:        BD 1D CF      LDA.w DATA_21CF1D,x               
CODE_20F5C1:        99 0E 16      STA $160E,y               
CODE_20F5C4:        BD 25 CF      LDA.w DATA_21CF25,x               
CODE_20F5C7:        99 10 16      STA $1610,y               
CODE_20F5CA:        E2 20         SEP #$20                  
CODE_20F5CC:        AE 26 07      LDX $0726                 
CODE_20F5CF:        F0 02         BEQ CODE_20F5D3           
CODE_20F5D1:        A2 23         LDX #$23                  
CODE_20F5D3:        A5 02         LDA $02                   
CODE_20F5D5:        86 02         STX $02                   
CODE_20F5D7:        38            SEC                       
CODE_20F5D8:        E5 02         SBC $02                   
CODE_20F5DA:        AA            TAX                       
CODE_20F5DB:        BD 2D CF      LDA.w DATA_21CF2D,x               
CODE_20F5DE:        99 03 16      STA $1603,y               
CODE_20F5E1:        BD 30 CF      LDA.w DATA_21CF30,x               
CODE_20F5E4:        99 0B 16      STA $160B,y               
CODE_20F5E7:        A9 0F         LDA #$0F                  
CODE_20F5E9:        99 02 16      STA $1602,y               
CODE_20F5EC:        99 0A 16      STA $160A,y               
CODE_20F5EF:        A9 00         LDA #$00                  
CODE_20F5F1:        99 04 16      STA $1604,y               
CODE_20F5F4:        99 0C 16      STA $160C,y               
CODE_20F5F7:        A9 03         LDA #$03                  
CODE_20F5F9:        99 05 16      STA $1605,y               
CODE_20F5FC:        99 0D 16      STA $160D,y               
CODE_20F5FF:        A9 FF         LDA #$FF                  
CODE_20F601:        99 12 16      STA $1612,y               
CODE_20F604:        98            TYA                       
CODE_20F605:        18            CLC                       
CODE_20F606:        69 10         ADC #$10                  
CODE_20F608:        8D 00 16      STA $1600                 
CODE_20F60B:        6B            RTL                       

CODE_20F60C:        48            PHA                       
CODE_20F60D:        AC 26 07      LDY $0726                 
CODE_20F610:        F0 02         BEQ CODE_20F614           
CODE_20F612:        A0 23         LDY #$23                  
CODE_20F614:        B9 9C 1D      LDA $1D9C,y               
CODE_20F617:        F0 16         BEQ CODE_20F62F           
CODE_20F619:        C8            INY                       
CODE_20F61A:        C0 03         CPY #$03                  
CODE_20F61C:        F0 04         BEQ CODE_20F622           
CODE_20F61E:        C0 26         CPY #$26                  
CODE_20F620:        D0 F2         BNE CODE_20F614           
CODE_20F622:        B9 9A 1D      LDA $1D9A,y               
CODE_20F625:        99 99 1D      STA $1D99,y               
CODE_20F628:        B9 9B 1D      LDA $1D9B,y               
CODE_20F62B:        99 9A 1D      STA $1D9A,y               
CODE_20F62E:        88            DEY                       
CODE_20F62F:        68            PLA                       
CODE_20F630:        99 9C 1D      STA $1D9C,y               
CODE_20F633:        6B            RTL                       

CODE_20F634:        48            PHA                       
CODE_20F635:        AC 26 07      LDY $0726                 
CODE_20F638:        F0 02         BEQ CODE_20F63C           
CODE_20F63A:        A0 23         LDY #$23                  
CODE_20F63C:        A2 1B         LDX #$1B                  
CODE_20F63E:        B9 80 1D      LDA $1D80,y               
CODE_20F641:        F0 04         BEQ CODE_20F647           
CODE_20F643:        C8            INY                       
CODE_20F644:        CA            DEX                       
CODE_20F645:        D0 F7         BNE CODE_20F63E           
CODE_20F647:        68            PLA                       
CODE_20F648:        99 80 1D      STA $1D80,y               
CODE_20F64B:        6B            RTL                       

CODE_20F64C:        0B            PHD                       
CODE_20F64D:        82 FB 02      BRL CODE_20F94B           

CODE_20F650:        8B            PHB                       
CODE_20F651:        A9 21         LDA #$21                  
CODE_20F653:        48            PHA                       
CODE_20F654:        AB            PLB                       
CODE_20F655:        0B            PHD                       
CODE_20F656:        A9 43         LDA #$43                  
CODE_20F658:        EB            XBA                       
CODE_20F659:        A9 00         LDA #$00                  
CODE_20F65B:        5B            TCD                       
CODE_20F65C:        A9 80         LDA #$80                  
CODE_20F65E:        8D 15 21      STA $2115                 
CODE_20F661:        C2 10         REP #$10                  
CODE_20F663:        A2 01 18      LDX #$1801                
CODE_20F666:        86 00         STX $00                   
CODE_20F668:        AD 38 02      LDA $0238                 
CODE_20F66B:        D0 03         BNE CODE_20F670           
CODE_20F66D:        4C 03 F7      JMP CODE_20F703           

CODE_20F670:        85 04         STA $04                   
CODE_20F672:        A2 00 60      LDX #$6000                
CODE_20F675:        8E 16 21      STX $2116                 
CODE_20F678:        AE 20 02      LDX $0220                 
CODE_20F67B:        86 02         STX $02                   
CODE_20F67D:        A0 40 00      LDY #$0040                
CODE_20F680:        84 05         STY $05                   
CODE_20F682:        A9 01         LDA #$01                  
CODE_20F684:        8D 0B 42      STA $420B                 
CODE_20F687:        AE 22 02      LDX $0222                 
CODE_20F68A:        86 02         STX $02                   
CODE_20F68C:        84 05         STY $05                   
CODE_20F68E:        8D 0B 42      STA $420B                 
CODE_20F691:        AE 24 02      LDX $0224                 
CODE_20F694:        86 02         STX $02                   
CODE_20F696:        84 05         STY $05                   
CODE_20F698:        8D 0B 42      STA $420B                 
CODE_20F69B:        AE 26 02      LDX $0226                 
CODE_20F69E:        86 02         STX $02                   
CODE_20F6A0:        84 05         STY $05                   
CODE_20F6A2:        8D 0B 42      STA $420B                 
CODE_20F6A5:        AE 28 02      LDX $0228                 
CODE_20F6A8:        86 02         STX $02                   
CODE_20F6AA:        84 05         STY $05                   
CODE_20F6AC:        8D 0B 42      STA $420B                 
CODE_20F6AF:        AE 2A 02      LDX $022A                 
CODE_20F6B2:        86 02         STX $02                   
CODE_20F6B4:        84 05         STY $05                   
CODE_20F6B6:        8D 0B 42      STA $420B                 
CODE_20F6B9:        A2 00 61      LDX #$6100                
CODE_20F6BC:        8E 16 21      STX $2116                 
CODE_20F6BF:        AE 39 02      LDX $0239                 
CODE_20F6C2:        86 04         STX $04                   
CODE_20F6C4:        AE 2C 02      LDX $022C                 
CODE_20F6C7:        86 02         STX $02                   
CODE_20F6C9:        84 05         STY $05                   
CODE_20F6CB:        8D 0B 42      STA $420B                 
CODE_20F6CE:        AE 2E 02      LDX $022E                 
CODE_20F6D1:        86 02         STX $02                   
CODE_20F6D3:        84 05         STY $05                   
CODE_20F6D5:        8D 0B 42      STA $420B                 
CODE_20F6D8:        AE 30 02      LDX $0230                 
CODE_20F6DB:        86 02         STX $02                   
CODE_20F6DD:        84 05         STY $05                   
CODE_20F6DF:        8D 0B 42      STA $420B                 
CODE_20F6E2:        AE 32 02      LDX $0232                 
CODE_20F6E5:        86 02         STX $02                   
CODE_20F6E7:        84 05         STY $05                   
CODE_20F6E9:        8D 0B 42      STA $420B                 
CODE_20F6EC:        AE 34 02      LDX $0234                 
CODE_20F6EF:        86 02         STX $02                   
CODE_20F6F1:        84 05         STY $05                   
CODE_20F6F3:        8D 0B 42      STA $420B                 
CODE_20F6F6:        AE 36 02      LDX $0236                 
CODE_20F6F9:        86 02         STX $02                   
CODE_20F6FB:        84 05         STY $05                   
CODE_20F6FD:        8D 0B 42      STA $420B                 
CODE_20F700:        9C 38 02      STZ $0238                 
CODE_20F703:        AD 2B 07      LDA $072B                 
CODE_20F706:        C9 03         CMP #$03                  
CODE_20F708:        D0 70         BNE CODE_20F77A           
CODE_20F70A:        C2 20         REP #$20                  
CODE_20F70C:        E2 10         SEP #$10                  
CODE_20F70E:        AF 04 30 7F   LDA $7F3004               
CODE_20F712:        F0 1E         BEQ CODE_20F732           
CODE_20F714:        8D 16 21      STA $2116                 
CODE_20F717:        A9 00 50      LDA #$5000                
CODE_20F71A:        85 02         STA $02                   
CODE_20F71C:        A2 7F         LDX #$7F                  
CODE_20F71E:        86 04         STX $04                   
CODE_20F720:        AF 06 30 7F   LDA $7F3006               
CODE_20F724:        85 05         STA $05                   
CODE_20F726:        A2 01         LDX #$01                  
CODE_20F728:        8E 0B 42      STX $420B                 
CODE_20F72B:        A9 00 00      LDA #$0000                
CODE_20F72E:        8F 04 30 7F   STA $7F3004               
CODE_20F732:        AF 08 30 7F   LDA $7F3008               
CODE_20F736:        F0 1C         BEQ CODE_20F754           
CODE_20F738:        8D 16 21      STA $2116                 
CODE_20F73B:        A9 00 38      LDA #$3800                
CODE_20F73E:        85 02         STA $02                   
CODE_20F740:        A9 7F 00      LDA #$007F                
CODE_20F743:        85 04         STA $04                   
CODE_20F745:        A9 00 08      LDA #$0800                
CODE_20F748:        85 05         STA $05                   
CODE_20F74A:        8E 0B 42      STX $420B                 
CODE_20F74D:        A9 00 00      LDA #$0000                
CODE_20F750:        8F 08 30 7F   STA $7F3008               
CODE_20F754:        AF 0A 30 7F   LDA $7F300A               
CODE_20F758:        F0 1C         BEQ CODE_20F776           
CODE_20F75A:        8D 16 21      STA $2116                 
CODE_20F75D:        A9 00 40      LDA #$4000                
CODE_20F760:        85 02         STA $02                   
CODE_20F762:        A9 7F 00      LDA #$007F                
CODE_20F765:        85 04         STA $04                   
CODE_20F767:        A9 00 08      LDA #$0800                
CODE_20F76A:        85 05         STA $05                   
CODE_20F76C:        8E 0B 42      STX $420B                 
CODE_20F76F:        A9 00 00      LDA #$0000                
CODE_20F772:        8F 0A 30 7F   STA $7F300A               
CODE_20F776:        E2 20         SEP #$20                  
CODE_20F778:        C2 10         REP #$10                  
CODE_20F77A:        AD D1 02      LDA $02D1                 
CODE_20F77D:        10 4D         BPL CODE_20F7CC           
CODE_20F77F:        C2 20         REP #$20                  
CODE_20F781:        E2 10         SEP #$10                  
CODE_20F783:        9C 15 21      STZ $2115                 
CODE_20F786:        A9 FF 21      LDA #$21FF                
CODE_20F789:        8D 02 00      STA $0002                 
CODE_20F78C:        A9 00 50      LDA #$5000                
CODE_20F78F:        8D 16 21      STA $2116                 
CODE_20F792:        A9 08 18      LDA #$1808                
CODE_20F795:        85 00         STA $00                   
CODE_20F797:        64 04         STZ $04                   
CODE_20F799:        A9 02 00      LDA #$0002                
CODE_20F79C:        85 02         STA $02                   
CODE_20F79E:        A9 00 03      LDA #$0300                
CODE_20F7A1:        85 05         STA $05                   
CODE_20F7A3:        A0 01         LDY #$01                  
CODE_20F7A5:        8C 0B 42      STY $420B                 
CODE_20F7A8:        A2 80         LDX #$80                  
CODE_20F7AA:        8E 15 21      STX $2115                 
CODE_20F7AD:        85 05         STA $05                   
CODE_20F7AF:        A9 00 50      LDA #$5000                
CODE_20F7B2:        8D 16 21      STA $2116                 
CODE_20F7B5:        A9 08 19      LDA #$1908                
CODE_20F7B8:        85 00         STA $00                   
CODE_20F7BA:        A9 03 00      LDA #$0003                
CODE_20F7BD:        85 02         STA $02                   
CODE_20F7BF:        8C 0B 42      STY $420B                 
CODE_20F7C2:        E2 20         SEP #$20                  
CODE_20F7C4:        A9 01         LDA #$01                  
CODE_20F7C6:        8D D1 02      STA $02D1                 
CODE_20F7C9:        4C 23 F9      JMP CODE_20F923           

CODE_20F7CC:        AE 3E 02      LDX $023E                 
CODE_20F7CF:        F0 1D         BEQ CODE_20F7EE           
CODE_20F7D1:        8E 16 21      STX $2116                 
CODE_20F7D4:        AD 42 02      LDA $0242                 
CODE_20F7D7:        85 04         STA $04                   
CODE_20F7D9:        AE 40 02      LDX $0240                 
CODE_20F7DC:        86 02         STX $02                   
CODE_20F7DE:        AE CA 02      LDX $02CA                 
CODE_20F7E1:        86 05         STX $05                   
CODE_20F7E3:        A9 01         LDA #$01                  
CODE_20F7E5:        8D 0B 42      STA $420B                 
CODE_20F7E8:        9C 3E 02      STZ $023E                 
CODE_20F7EB:        9C 3F 02      STZ $023F                 
CODE_20F7EE:        E2 10         SEP #$10                  
CODE_20F7F0:        AD D3 02      LDA $02D3                 
CODE_20F7F3:        30 5A         BMI CODE_20F84F           
CODE_20F7F5:        AD BF 1E      LDA $1EBF                 
CODE_20F7F8:        D0 33         BNE CODE_20F82D           
CODE_20F7FA:        AD 27 07      LDA $0727                 
CODE_20F7FD:        C9 02         CMP #$02                  
CODE_20F7FF:        D0 29         BNE CODE_20F82A           
CODE_20F801:        AD D7 02      LDA $02D7                 
CODE_20F804:        D0 24         BNE CODE_20F82A           
CODE_20F806:        AE BC 07      LDX $07BC                 
CODE_20F809:        C2 20         REP #$20                  
CODE_20F80B:        A9 20 23      LDA #$2320                
CODE_20F80E:        8D 16 21      STA $2116                 
CODE_20F811:        A9 00 01      LDA #$0100                
CODE_20F814:        85 05         STA $05                   
CODE_20F816:        E2 20         SEP #$20                  
CODE_20F818:        A9 37         LDA #$37                  
CODE_20F81A:        85 04         STA $04                   
CODE_20F81C:        BD 3E CA      LDA.w DATA_21CA3E,x               
CODE_20F81F:        85 03         STA $03                   
CODE_20F821:        A9 40         LDA #$40                  
CODE_20F823:        85 02         STA $02                   
CODE_20F825:        A9 01         LDA #$01                  
CODE_20F827:        8D 0B 42      STA $420B                 
CODE_20F82A:        4C 23 F9      JMP CODE_20F923           

CODE_20F82D:        C9 07         CMP #$07                  
CODE_20F82F:        F0 F9         BEQ CODE_20F82A           
CODE_20F831:        C9 0F         CMP #$0F                  
CODE_20F833:        90 13         BCC CODE_20F848           
CODE_20F835:        C9 11         CMP #$11                  
CODE_20F837:        D0 03         BNE CODE_20F83C           
CODE_20F839:        4C C4 F9      JMP CODE_20F9C4           

CODE_20F83C:        C9 13         CMP #$13                  
CODE_20F83E:        90 EA         BCC CODE_20F82A           
CODE_20F840:        C9 16         CMP #$16                  
CODE_20F842:        F0 E6         BEQ CODE_20F82A           
CODE_20F844:        C9 2C         CMP #$2C                  
CODE_20F846:        F0 E2         BEQ CODE_20F82A           
CODE_20F848:        A2 00         LDX #$00                  
CODE_20F84A:        AD 67 05      LDA $0567                 
CODE_20F84D:        D0 58         BNE CODE_20F8A7           
CODE_20F84F:        C2 20         REP #$20                  
CODE_20F851:        A9 80 29      LDA #$2980                
CODE_20F854:        8D 16 21      STA $2116                 
CODE_20F857:        E2 20         SEP #$20                  
CODE_20F859:        AD B1 02      LDA $02B1                 
CODE_20F85C:        29 18         AND #$18                  
CODE_20F85E:        4A            LSR A                     
CODE_20F85F:        4A            LSR A                     
CODE_20F860:        4A            LSR A                     
CODE_20F861:        AA            TAX                       
CODE_20F862:        A9 36         LDA #$36                  
CODE_20F864:        85 04         STA $04                   
CODE_20F866:        BD 2C CA      LDA.w DATA_21CA2C,x               
CODE_20F869:        85 03         STA $03                   
CODE_20F86B:        64 02         STZ $02                   
CODE_20F86D:        A0 80         LDY #$80                  
CODE_20F86F:        84 05         STY $05                   
CODE_20F871:        A9 01         LDA #$01                  
CODE_20F873:        8D 0B 42      STA $420B                 
CODE_20F876:        C2 20         REP #$20                  
CODE_20F878:        A9 C0 2D      LDA #$2DC0                
CODE_20F87B:        8D 16 21      STA $2116                 
CODE_20F87E:        E2 20         SEP #$20                  
CODE_20F880:        BD 30 CA      LDA.w DATA_21CA30,x               
CODE_20F883:        85 03         STA $03                   
CODE_20F885:        A9 80         LDA #$80                  
CODE_20F887:        85 02         STA $02                   
CODE_20F889:        84 05         STY $05                   
CODE_20F88B:        A9 01         LDA #$01                  
CODE_20F88D:        8D 0B 42      STA $420B                 
CODE_20F890:        EE B1 02      INC $02B1                 
CODE_20F893:        AE 45 02      LDX $0245                 
CODE_20F896:        30 30         BMI CODE_20F8C8           
CODE_20F898:        F0 0D         BEQ CODE_20F8A7           
CODE_20F89A:        AD 43 02      LDA $0243                 
CODE_20F89D:        C9 04         CMP #$04                  
CODE_20F89F:        D0 03         BNE CODE_20F8A4           
CODE_20F8A1:        8E B2 02      STX $02B2                 
CODE_20F8A4:        AE B2 02      LDX $02B2                 
CODE_20F8A7:        C2 20         REP #$20                  
CODE_20F8A9:        A9 C0 60      LDA #$60C0                
CODE_20F8AC:        8D 16 21      STA $2116                 
CODE_20F8AF:        E2 20         SEP #$20                  
CODE_20F8B1:        A9 31         LDA #$31                  
CODE_20F8B3:        85 04         STA $04                   
CODE_20F8B5:        BD 34 CA      LDA.w DATA_21CA34,x               
CODE_20F8B8:        85 03         STA $03                   
CODE_20F8BA:        BD 39 CA      LDA.w DATA_21CA39,x               
CODE_20F8BD:        85 02         STA $02                   
CODE_20F8BF:        A0 80         LDY #$80                  
CODE_20F8C1:        84 05         STY $05                   
CODE_20F8C3:        A9 01         LDA #$01                  
CODE_20F8C5:        8D 0B 42      STA $420B                 
CODE_20F8C8:        A2 00         LDX #$00                  
CODE_20F8CA:        AD BF 02      LDA $02BF                 
CODE_20F8CD:        C9 01         CMP #$01                  
CODE_20F8CF:        F0 12         BEQ CODE_20F8E3           
CODE_20F8D1:        C9 05         CMP #$05                  
CODE_20F8D3:        F0 0E         BEQ CODE_20F8E3           
CODE_20F8D5:        C9 06         CMP #$06                  
CODE_20F8D7:        F0 0A         BEQ CODE_20F8E3           
CODE_20F8D9:        C9 07         CMP #$07                  
CODE_20F8DB:        F0 06         BEQ CODE_20F8E3           
CODE_20F8DD:        A2 04         LDX #$04                  
CODE_20F8DF:        C9 0D         CMP #$0D                  
CODE_20F8E1:        D0 40         BNE CODE_20F923           
CODE_20F8E3:        8E 04 00      STX $0004                 
CODE_20F8E6:        C2 20         REP #$20                  
CODE_20F8E8:        A9 00 5A      LDA #$5A00                
CODE_20F8EB:        8D 16 21      STA $2116                 
CODE_20F8EE:        A9 00 01      LDA #$0100                
CODE_20F8F1:        85 05         STA $05                   
CODE_20F8F3:        E2 20         SEP #$20                  
CODE_20F8F5:        AD C2 02      LDA $02C2                 
CODE_20F8F8:        1A            INC A                     
CODE_20F8F9:        C9 0A         CMP #$0A                  
CODE_20F8FB:        D0 0B         BNE CODE_20F908           
CODE_20F8FD:        AD C0 02      LDA $02C0                 
CODE_20F900:        1A            INC A                     
CODE_20F901:        29 03         AND #$03                  
CODE_20F903:        8D C0 02      STA $02C0                 
CODE_20F906:        A9 00         LDA #$00                  
CODE_20F908:        8D C2 02      STA $02C2                 
CODE_20F90B:        AD C0 02      LDA $02C0                 
CODE_20F90E:        18            CLC                       
CODE_20F90F:        6D 04 00      ADC $0004                 
CODE_20F912:        AA            TAX                       
CODE_20F913:        A9 38         LDA #$38                  
CODE_20F915:        85 04         STA $04                   
CODE_20F917:        BD 40 CA      LDA.w DATA_21CA40,x               
CODE_20F91A:        85 03         STA $03                   
CODE_20F91C:        64 02         STZ $02                   
CODE_20F91E:        A9 01         LDA #$01                  
CODE_20F920:        8D 0B 42      STA $420B                 
CODE_20F923:        AD 00 15      LDA $1500                 
CODE_20F926:        F0 22         BEQ CODE_20F94A           
CODE_20F928:        9C 21 21      STZ $2121                 
CODE_20F92B:        C2 20         REP #$20                  
CODE_20F92D:        A9 00 22      LDA #$2200                
CODE_20F930:        85 10         STA $10                   
CODE_20F932:        A9 00 13      LDA #$1300                
CODE_20F935:        85 12         STA $12                   
CODE_20F937:        A0 00         LDY #$00                  
CODE_20F939:        84 14         STY $14                   
CODE_20F93B:        A9 00 02      LDA #$0200                
CODE_20F93E:        85 15         STA $15                   
CODE_20F940:        E2 20         SEP #$20                  
CODE_20F942:        A9 02         LDA #$02                  
CODE_20F944:        8D 0B 42      STA $420B                 
CODE_20F947:        9C 00 15      STZ $1500                 
CODE_20F94A:        AB            PLB                       
CODE_20F94B:        A9 0A         LDA #$0A                  
CODE_20F94D:        EB            XBA                       
CODE_20F94E:        A9 00         LDA #$00                  
CODE_20F950:        5B            TCD                       
CODE_20F951:        A0 1C         LDY #$1C                  
CODE_20F953:        98            TYA                       
CODE_20F954:        0A            ASL A                     
CODE_20F955:        0A            ASL A                     
CODE_20F956:        AA            TAX                       
CODE_20F957:        B5 23         LDA $23,x                 
CODE_20F959:        0A            ASL A                     
CODE_20F95A:        0A            ASL A                     
CODE_20F95B:        15 22         ORA $22,x                 
CODE_20F95D:        0A            ASL A                     
CODE_20F95E:        0A            ASL A                     
CODE_20F95F:        15 21         ORA $21,x                 
CODE_20F961:        0A            ASL A                     
CODE_20F962:        0A            ASL A                     
CODE_20F963:        15 20         ORA $20,x                 
CODE_20F965:        99 00 0A      STA $0A00,y               
CODE_20F968:        B5 27         LDA $27,x                 
CODE_20F96A:        0A            ASL A                     
CODE_20F96B:        0A            ASL A                     
CODE_20F96C:        15 26         ORA $26,x                 
CODE_20F96E:        0A            ASL A                     
CODE_20F96F:        0A            ASL A                     
CODE_20F970:        15 25         ORA $25,x                 
CODE_20F972:        0A            ASL A                     
CODE_20F973:        0A            ASL A                     
CODE_20F974:        15 24         ORA $24,x                 
CODE_20F976:        99 01 0A      STA $0A01,y               
CODE_20F979:        B5 2B         LDA $2B,x                 
CODE_20F97B:        0A            ASL A                     
CODE_20F97C:        0A            ASL A                     
CODE_20F97D:        15 2A         ORA $2A,x                 
CODE_20F97F:        0A            ASL A                     
CODE_20F980:        0A            ASL A                     
CODE_20F981:        15 29         ORA $29,x                 
CODE_20F983:        0A            ASL A                     
CODE_20F984:        0A            ASL A                     
CODE_20F985:        15 28         ORA $28,x                 
CODE_20F987:        99 02 0A      STA $0A02,y               
CODE_20F98A:        B5 2F         LDA $2F,x                 
CODE_20F98C:        0A            ASL A                     
CODE_20F98D:        0A            ASL A                     
CODE_20F98E:        15 2E         ORA $2E,x                 
CODE_20F990:        0A            ASL A                     
CODE_20F991:        0A            ASL A                     
CODE_20F992:        15 2D         ORA $2D,x                 
CODE_20F994:        0A            ASL A                     
CODE_20F995:        0A            ASL A                     
CODE_20F996:        15 2C         ORA $2C,x                 
CODE_20F998:        99 03 0A      STA $0A03,y               
CODE_20F99B:        88            DEY                       
CODE_20F99C:        88            DEY                       
CODE_20F99D:        88            DEY                       
CODE_20F99E:        88            DEY                       
CODE_20F99F:        10 B2         BPL CODE_20F953           
CODE_20F9A1:        C2 20         REP #$20                  
CODE_20F9A3:        A9 00 43      LDA #$4300                
CODE_20F9A6:        5B            TCD                       
CODE_20F9A7:        9C 02 21      STZ $2102                 
CODE_20F9AA:        A9 00 04      LDA #$0400                
CODE_20F9AD:        85 00         STA $00                   
CODE_20F9AF:        A9 00 08      LDA #$0800                
CODE_20F9B2:        85 02         STA $02                   
CODE_20F9B4:        64 04         STZ $04                   
CODE_20F9B6:        A9 20 02      LDA #$0220                
CODE_20F9B9:        85 05         STA $05                   
CODE_20F9BB:        A0 01         LDY #$01                  
CODE_20F9BD:        8C 0B 42      STY $420B                 
CODE_20F9C0:        E2 20         SEP #$20                  
CODE_20F9C2:        2B            PLD                       
CODE_20F9C3:        60            RTS                       

CODE_20F9C4:        C2 20         REP #$20                  
CODE_20F9C6:        A9 60 30      LDA #$3060                
CODE_20F9C9:        8D 16 21      STA $2116                 
CODE_20F9CC:        E2 20         SEP #$20                  
CODE_20F9CE:        AE D2 02      LDX $02D2                 
CODE_20F9D1:        A9 33         LDA #$33                  
CODE_20F9D3:        85 04         STA $04                   
CODE_20F9D5:        BD 48 CA      LDA.w DATA_21CA48,x               
CODE_20F9D8:        85 03         STA $03                   
CODE_20F9DA:        BD 4C CA      LDA.w DATA_21CA4C,x               
CODE_20F9DD:        85 02         STA $02                   
CODE_20F9DF:        A0 80         LDY #$80                  
CODE_20F9E1:        84 05         STY $05                   
CODE_20F9E3:        A9 01         LDA #$01                  
CODE_20F9E5:        8D 0B 42      STA $420B                 
CODE_20F9E8:        4C 23 F9      JMP CODE_20F923           

CODE_20F9EB:        C2 20         REP #$20                  
CODE_20F9ED:        9C 10 02      STZ $0210                 
CODE_20F9F0:        9C 12 02      STZ $0212                 
CODE_20F9F3:        9C 14 02      STZ $0214                 
CODE_20F9F6:        9C 16 02      STZ $0216                 
CODE_20F9F9:        9C 18 02      STZ $0218                 
CODE_20F9FC:        9C 1A 02      STZ $021A                 
CODE_20F9FF:        E2 20         SEP #$20                  
CODE_20FA01:        60            RTS                       

CODE_20FA02:        A9 80         LDA #$80                  
CODE_20FA04:        85 16         STA $16                   
CODE_20FA06:        8D 00 21      STA $2100                 
CODE_20FA09:        60            RTS                       

CODE_20FA0A:        C2 20         REP #$20                  
CODE_20FA0C:        9C 00 16      STZ $1600                 
CODE_20FA0F:        A9 FF FF      LDA #$FFFF                
CODE_20FA12:        8D 02 16      STA $1602                 
CODE_20FA15:        E2 20         SEP #$20                  
CODE_20FA17:        20 02 FA      JSR CODE_20FA02           
CODE_20FA1A:        C2 20         REP #$20                  
CODE_20FA1C:        9C 15 21      STZ $2115                 
CODE_20FA1F:        9C 16 21      STZ $2116                 
CODE_20FA22:        A9 08 18      LDA #$1808                
CODE_20FA25:        8D 10 43      STA $4310                 
CODE_20FA28:        9C 14 43      STZ $4314                 
CODE_20FA2B:        A9 00 00      LDA #$0000                
CODE_20FA2E:        8D 12 43      STA $4312                 
CODE_20FA31:        A9 00 20      LDA #$2000                
CODE_20FA34:        8D 15 43      STA $4315                 
CODE_20FA37:        A0 02         LDY #$02                  
CODE_20FA39:        8C 0B 42      STY $420B                 
CODE_20FA3C:        A2 80         LDX #$80                  
CODE_20FA3E:        8E 15 21      STX $2115                 
CODE_20FA41:        9C 16 21      STZ $2116                 
CODE_20FA44:        8D 15 43      STA $4315                 
CODE_20FA47:        A9 08 19      LDA #$1908                
CODE_20FA4A:        8D 10 43      STA $4310                 
CODE_20FA4D:        A9 01 00      LDA #$0001                
CODE_20FA50:        8D 12 43      STA $4312                 
CODE_20FA53:        8C 0B 42      STY $420B                 
CODE_20FA56:        9C 15 21      STZ $2115                 
CODE_20FA59:        A9 FF 01      LDA #$01FF                
CODE_20FA5C:        85 02         STA $02                   
CODE_20FA5E:        A9 00 50      LDA #$5000                
CODE_20FA61:        8D 16 21      STA $2116                 
CODE_20FA64:        A9 08 18      LDA #$1808                
CODE_20FA67:        8D 10 43      STA $4310                 
CODE_20FA6A:        A9 02 00      LDA #$0002                
CODE_20FA6D:        8D 12 43      STA $4312                 
CODE_20FA70:        A9 00 08      LDA #$0800                
CODE_20FA73:        8D 15 43      STA $4315                 
CODE_20FA76:        8C 0B 42      STY $420B                 
CODE_20FA79:        8E 15 21      STX $2115                 
CODE_20FA7C:        8D 15 43      STA $4315                 
CODE_20FA7F:        A9 00 50      LDA #$5000                
CODE_20FA82:        8D 16 21      STA $2116                 
CODE_20FA85:        A9 08 19      LDA #$1908                
CODE_20FA88:        8D 10 43      STA $4310                 
CODE_20FA8B:        A9 03 00      LDA #$0003                
CODE_20FA8E:        8D 12 43      STA $4312                 
CODE_20FA91:        8C 0B 42      STY $420B                 
CODE_20FA94:        E2 20         SEP #$20                  
CODE_20FA96:        60            RTS                       

CODE_20FA97:        9C 15 21      STZ $2115                 
CODE_20FA9A:        C2 20         REP #$20                  
CODE_20FA9C:        9C 16 21      STZ $2116                 
CODE_20FA9F:        A9 08 18      LDA #$1808                
CODE_20FAA2:        8D 10 43      STA $4310                 
CODE_20FAA5:        9C 14 43      STZ $4314                 
CODE_20FAA8:        A9 39 07      LDA #$0739                
CODE_20FAAB:        8D 12 43      STA $4312                 
CODE_20FAAE:        A9 00 20      LDA #$2000                
CODE_20FAB1:        8D 15 43      STA $4315                 
CODE_20FAB4:        A0 02         LDY #$02                  
CODE_20FAB6:        8C 0B 42      STY $420B                 
CODE_20FAB9:        A2 80         LDX #$80                  
CODE_20FABB:        8E 15 21      STX $2115                 
CODE_20FABE:        9C 16 21      STZ $2116                 
CODE_20FAC1:        8D 15 43      STA $4315                 
CODE_20FAC4:        A9 08 19      LDA #$1908                
CODE_20FAC7:        8D 10 43      STA $4310                 
CODE_20FACA:        A9 3A 07      LDA #$073A                
CODE_20FACD:        8D 12 43      STA $4312                 
CODE_20FAD0:        8C 0B 42      STY $420B                 
CODE_20FAD3:        E2 20         SEP #$20                  
CODE_20FAD5:        60            RTS                       

CODE_20FAD6:        A0 04         LDY #$04                  
CODE_20FAD8:        AD 16 02      LDA $0216                 
CODE_20FADB:        D9 33 CF      CMP.w DATA_21CF33,y               
CODE_20FADE:        F0 03         BEQ CODE_20FAE3           
CODE_20FAE0:        88            DEY                       
CODE_20FAE1:        10 F8         BPL CODE_20FADB           
CODE_20FAE3:        B9 38 CF      LDA.w DATA_21CF38,y               
CODE_20FAE6:        85 01         STA $01                   
CODE_20FAE8:        B9 3D CF      LDA.w DATA_21CF3D,y               
CODE_20FAEB:        85 00         STA $00                   
CODE_20FAED:        C2 10         REP #$10                  
CODE_20FAEF:        A0 00 03      LDY #$0300                
CODE_20FAF2:        A9 80         LDA #$80                  
CODE_20FAF4:        8D 15 21      STA $2115                 
CODE_20FAF7:        C2 20         REP #$20                  
CODE_20FAF9:        A5 00         LDA $00                   
CODE_20FAFB:        8D 16 21      STA $2116                 
CODE_20FAFE:        AD 39 07      LDA $0739                 
CODE_20FB01:        8D 18 21      STA $2118                 
CODE_20FB04:        88            DEY                       
CODE_20FB05:        F0 15         BEQ CODE_20FB1C           
CODE_20FB07:        A5 00         LDA $00                   
CODE_20FB09:        18            CLC                       
CODE_20FB0A:        69 01 00      ADC #$0001                
CODE_20FB0D:        85 00         STA $00                   
CODE_20FB0F:        29 FF 03      AND #$03FF                
CODE_20FB12:        D0 EA         BNE CODE_20FAFE           
CODE_20FB14:        A9 00 08      LDA #$0800                
CODE_20FB17:        85 00         STA $00                   
CODE_20FB19:        4C F7 FA      JMP CODE_20FAF7           
CODE_20FB1C:        E2 30         SEP #$30                  
CODE_20FB1E:        60            RTS                       

CODE_20FB1F:        84 03         STY $03                   ;ExecutePtrShort | Preserve Y
CODE_20FB21:        7A            PLY                       ;Get bank of JSL which called this routine
CODE_20FB22:        84 00         STY $00                   ;Store in Y
CODE_20FB24:        C2 30         REP #$30                  ;\
CODE_20FB26:        29 FF 00      AND #$00FF                ; | Get pointer index * 2
CODE_20FB29:        0A            ASL A                     ; |
CODE_20FB2A:        A8            TAY                       ;/ To Y
CODE_20FB2B:        68            PLA                       ;Get high and low bytes of (pointer table-1)
CODE_20FB2C:        85 01         STA $01                   ;Into $01 and $02, $00 $01 $02 now contains the 24-bit address of the pointer table-1
CODE_20FB2E:        C8            INY                       ;INY so we get the proper index for the pointer table
CODE_20FB2F:        B7 00         LDA [$00],y               ;
CODE_20FB31:        85 00         STA $00                   ;Store jump pointer into $00
CODE_20FB33:        E2 30         SEP #$30                  
CODE_20FB35:        A4 03         LDY $03                   ;Restore Y
CODE_20FB37:        DC 00 00      JML [$0000]               ;Jump to pointer

CODE_20FB3A:        84 05         STY $05                   ; ExecutePtrLong | Preserve Y       
CODE_20FB3C:        7A            PLY                       ; Get bank of source
CODE_20FB3D:        84 02         STY $02                   ; Store in Y
CODE_20FB3F:        C2 30         REP #$30                  ;
CODE_20FB41:        29 FF 00      AND #$00FF                ; Get A  
CODE_20FB44:        85 03         STA $03                   ; Store in $03
CODE_20FB46:        0A            ASL A                     ;\ *3 since the table entries are three bytes
CODE_20FB47:        65 03         ADC $03                   ;/  
CODE_20FB49:        A8            TAY                       ; A -> Y
CODE_20FB4A:        68            PLA                       ; Get Low and High byte of source
CODE_20FB4B:        85 03         STA $03                   ;   
CODE_20FB4D:        C8            INY                       ; +1 so we don't read the last byte of the JSL   
CODE_20FB4E:        B7 02         LDA [$02],y               ;\ Read low and high byte of spot to jump to
CODE_20FB50:        85 00         STA $00                   ;/  
CODE_20FB52:        C8            INY                       ; +1 so we don't read the same data again
CODE_20FB53:        B7 02         LDA [$02],y               ;\ Get high and bank byte
CODE_20FB55:        85 01         STA $01                   ;/  
CODE_20FB57:        E2 30         SEP #$30                  ;
CODE_20FB59:        A4 05         LDY $05                   ; Restore Y   
CODE_20FB5B:        DC 00 00      JML [$0000]               ; Jump to pointer

CODE_20FB5E:        9C 16 40      STZ $4016                 
CODE_20FB61:        AF F4 1F 70   LDA $701FF4               
CODE_20FB65:        AA            TAX                       
CODE_20FB66:        BD 18 42      LDA $4218,x               
CODE_20FB69:        85 00         STA $00                   
CODE_20FB6B:        BD 19 42      LDA $4219,x               
CODE_20FB6E:        85 01         STA $01                   
CODE_20FB70:        A5 00         LDA $00                   
CODE_20FB72:        85 F4         STA $F4                   
CODE_20FB74:        A8            TAY                       
CODE_20FB75:        45 FC         EOR $FC                   
CODE_20FB77:        25 F4         AND $F4                   
CODE_20FB79:        85 F8         STA $F8                   
CODE_20FB7B:        84 FC         STY $FC                   
CODE_20FB7D:        A5 01         LDA $01                   
CODE_20FB7F:        85 F2         STA $F2                   
CODE_20FB81:        85 17         STA $17                   
CODE_20FB83:        A8            TAY                       
CODE_20FB84:        45 FA         EOR $FA                   
CODE_20FB86:        25 F2         AND $F2                   
CODE_20FB88:        85 F6         STA $F6                   
CODE_20FB8A:        85 18         STA $18                   
CODE_20FB8C:        84 FA         STY $FA                   
CODE_20FB8E:        AF F6 1F 70   LDA $701FF6               
CODE_20FB92:        AA            TAX                       
CODE_20FB93:        BD 18 42      LDA $4218,x               
CODE_20FB96:        85 00         STA $00                   
CODE_20FB98:        BD 19 42      LDA $4219,x               
CODE_20FB9B:        85 01         STA $01                   
CODE_20FB9D:        A5 00         LDA $00                   
CODE_20FB9F:        85 F5         STA $F5                   
CODE_20FBA1:        A8            TAY                       
CODE_20FBA2:        45 FD         EOR $FD                   
CODE_20FBA4:        25 F5         AND $F5                   
CODE_20FBA6:        85 F9         STA $F9                   
CODE_20FBA8:        84 FD         STY $FD                   
CODE_20FBAA:        A5 01         LDA $01                   
CODE_20FBAC:        85 F3         STA $F3                   
CODE_20FBAE:        A8            TAY                       
CODE_20FBAF:        45 FB         EOR $FB                   
CODE_20FBB1:        25 F3         AND $F3                   
CODE_20FBB3:        85 F7         STA $F7                   
CODE_20FBB5:        84 FB         STY $FB                   
CODE_20FBB7:        AD 26 07      LDA $0726                 
CODE_20FBBA:        F0 08         BEQ CODE_20FBC4           
CODE_20FBBC:        A5 F3         LDA $F3                   
CODE_20FBBE:        85 17         STA $17                   
CODE_20FBC0:        A5 F7         LDA $F7                   
CODE_20FBC2:        85 18         STA $18                   
CODE_20FBC4:        60            RTS                       

CODE_20FBC5:        AD 10 02      LDA $0210                 
CODE_20FBC8:        8D 0D 21      STA $210D                 
CODE_20FBCB:        AD 11 02      LDA $0211                 
CODE_20FBCE:        8D 0D 21      STA $210D                 
CODE_20FBD1:        AD 16 02      LDA $0216                 
CODE_20FBD4:        8D 0E 21      STA $210E                 
CODE_20FBD7:        85 02         STA $02                   
CODE_20FBD9:        AD 17 02      LDA $0217                 
CODE_20FBDC:        8D 0E 21      STA $210E                 
CODE_20FBDF:        85 03         STA $03                   
CODE_20FBE1:        AD 12 02      LDA $0212                 
CODE_20FBE4:        8D 0F 21      STA $210F                 
CODE_20FBE7:        AD 13 02      LDA $0213                 
CODE_20FBEA:        8D 0F 21      STA $210F                 
CODE_20FBED:        AD 18 02      LDA $0218                 
CODE_20FBF0:        8D 10 21      STA $2110                 
CODE_20FBF3:        AD 19 02      LDA $0219                 
CODE_20FBF6:        8D 10 21      STA $2110                 
CODE_20FBF9:        AD 00 01      LDA $0100                 
CODE_20FBFC:        C9 20         CMP #$20                  
CODE_20FBFE:        D0 03         BNE CODE_20FC03           
CODE_20FC00:        4C A6 FC      JMP CODE_20FCA6           

CODE_20FC03:        AD BF 02      LDA $02BF                 
CODE_20FC06:        C9 01         CMP #$01                  
CODE_20FC08:        D0 3D         BNE CODE_20FC47           
CODE_20FC0A:        AE C1 02      LDX $02C1                 
CODE_20FC0D:        E0 1C         CPX #$1C                  
CODE_20FC0F:        D0 2B         BNE CODE_20FC3C           
CODE_20FC11:        C2 20         REP #$20                  
CODE_20FC13:        A9 00 00      LDA #$0000                
CODE_20FC16:        8D CC 02      STA $02CC                 
CODE_20FC19:        AD 16 02      LDA $0216                 
CODE_20FC1C:        C9 50 09      CMP #$0950                
CODE_20FC1F:        90 0A         BCC CODE_20FC2B           
CODE_20FC21:        AD 16 02      LDA $0216                 
CODE_20FC24:        38            SEC                       
CODE_20FC25:        E9 50 09      SBC #$0950                
CODE_20FC28:        8D CC 02      STA $02CC                 
CODE_20FC2B:        E2 20         SEP #$20                  
CODE_20FC2D:        AD CC 02      LDA $02CC                 
CODE_20FC30:        8D 12 21      STA $2112                 
CODE_20FC33:        AD CD 02      LDA $02CD                 
CODE_20FC36:        8D 12 21      STA $2112                 
CODE_20FC39:        4C B2 FC      JMP CODE_20FCB2           

CODE_20FC3C:        9C 12 21      STZ $2112                 
CODE_20FC3F:        A9 01         LDA #$01                  
CODE_20FC41:        8D 12 21      STA $2112                 
CODE_20FC44:        4C B2 FC      JMP CODE_20FCB2           

CODE_20FC47:        C9 08         CMP #$08                  
CODE_20FC49:        D0 30         BNE CODE_20FC7B           
CODE_20FC4B:        C2 20         REP #$20                  
CODE_20FC4D:        AD 10 02      LDA $0210                 
CODE_20FC50:        4A            LSR A                     
CODE_20FC51:        4A            LSR A                     
CODE_20FC52:        4A            LSR A                     
CODE_20FC53:        85 00         STA $00                   
CODE_20FC55:        A5 02         LDA $02                   
CODE_20FC57:        4A            LSR A                     
CODE_20FC58:        4A            LSR A                     
CODE_20FC59:        4A            LSR A                     
CODE_20FC5A:        8D C3 02      STA $02C3                 
CODE_20FC5D:        A5 02         LDA $02                   
CODE_20FC5F:        38            SEC                       
CODE_20FC60:        ED C3 02      SBC $02C3                 
CODE_20FC63:        8D C3 02      STA $02C3                 
CODE_20FC66:        E2 20         SEP #$20                  
CODE_20FC68:        A5 00         LDA $00                   
CODE_20FC6A:        8D 11 21      STA $2111                 
CODE_20FC6D:        A5 01         LDA $01                   
CODE_20FC6F:        8D 11 21      STA $2111                 
CODE_20FC72:        A9 17         LDA #$17                  
CODE_20FC74:        8D 12 21      STA $2112                 
CODE_20FC77:        9C 12 21      STZ $2112                 
CODE_20FC7A:        60            RTS                       

CODE_20FC7B:        C9 09         CMP #$09                  
CODE_20FC7D:        D0 27         BNE CODE_20FCA6           
CODE_20FC7F:        C2 20         REP #$20                  
CODE_20FC81:        AD 10 02      LDA $0210                 
CODE_20FC84:        4A            LSR A                     
CODE_20FC85:        4A            LSR A                     
CODE_20FC86:        85 00         STA $00                   
CODE_20FC88:        E2 20         SEP #$20                  
CODE_20FC8A:        A5 00         LDA $00                   
CODE_20FC8C:        8D 11 21      STA $2111                 
CODE_20FC8F:        A5 01         LDA $01                   
CODE_20FC91:        8D 11 21      STA $2111                 
CODE_20FC94:        AD 18 02      LDA $0218                 
CODE_20FC97:        18            CLC                       
CODE_20FC98:        69 11         ADC #$11                  
CODE_20FC9A:        8D 12 21      STA $2112                 
CODE_20FC9D:        AD 19 02      LDA $0219                 
CODE_20FCA0:        69 00         ADC #$00                  
CODE_20FCA2:        8D 12 21      STA $2112                 
CODE_20FCA5:        60            RTS                       

CODE_20FCA6:        AD 1A 02      LDA $021A                 
CODE_20FCA9:        8D 12 21      STA $2112                 
CODE_20FCAC:        AD 1B 02      LDA $021B                 
CODE_20FCAF:        8D 12 21      STA $2112                 
CODE_20FCB2:        AD 14 02      LDA $0214                 
CODE_20FCB5:        8D 11 21      STA $2111                 
CODE_20FCB8:        AD 15 02      LDA $0215                 
CODE_20FCBB:        8D 11 21      STA $2111                 
CODE_20FCBE:        60            RTS                       

CODE_20FCBF:        AD 10 02      LDA $0210                 
CODE_20FCC2:        8D 0D 21      STA $210D                 
CODE_20FCC5:        AD 11 02      LDA $0211                 
CODE_20FCC8:        8D 0D 21      STA $210D                 
CODE_20FCCB:        AD 16 02      LDA $0216                 
CODE_20FCCE:        18            CLC                       
CODE_20FCCF:        6D F2 1C      ADC $1CF2                 
CODE_20FCD2:        8D 0E 21      STA $210E                 
CODE_20FCD5:        85 02         STA $02                   
CODE_20FCD7:        AD 17 02      LDA $0217                 
CODE_20FCDA:        8D 0E 21      STA $210E                 
CODE_20FCDD:        85 03         STA $03                   
CODE_20FCDF:        AD BF 02      LDA $02BF                 
CODE_20FCE2:        C9 03         CMP #$03                  
CODE_20FCE4:        F0 06         BEQ CODE_20FCEC           
CODE_20FCE6:        C9 04         CMP #$04                  
CODE_20FCE8:        F0 02         BEQ CODE_20FCEC           
CODE_20FCEA:        80 39         BRA CODE_20FD25           

CODE_20FCEC:        A5 9C         LDA $9C                   
CODE_20FCEE:        D0 08         BNE CODE_20FCF8           
CODE_20FCF0:        AD 7A 03      LDA $037A                 
CODE_20FCF3:        D0 03         BNE CODE_20FCF8           
CODE_20FCF5:        20 4A FF      JSR CODE_20FF4A           
CODE_20FCF8:        AD 53 03      LDA $0353                 
CODE_20FCFB:        8D 0F 21      STA $210F                 
CODE_20FCFE:        AD 54 03      LDA $0354                 
CODE_20FD01:        8D 0F 21      STA $210F                 
CODE_20FD04:        A9 3F         LDA #$3F                  
CODE_20FD06:        8D 10 21      STA $2110                 
CODE_20FD09:        9C 10 21      STZ $2110                 
CODE_20FD0C:        AD 12 02      LDA $0212                 
CODE_20FD0F:        8D 11 21      STA $2111                 
CODE_20FD12:        AD 13 02      LDA $0213                 
CODE_20FD15:        8D 11 21      STA $2111                 
CODE_20FD18:        AD 18 02      LDA $0218                 
CODE_20FD1B:        8D 12 21      STA $2112                 
CODE_20FD1E:        AD 19 02      LDA $0219                 
CODE_20FD21:        8D 12 21      STA $2112                 
CODE_20FD24:        60            RTS                       

CODE_20FD25:        AD 50 03      LDA $0350                 
CODE_20FD28:        C9 12         CMP #$12                  
CODE_20FD2A:        D0 59         BNE CODE_20FD85           
CODE_20FD2C:        AD BF 02      LDA $02BF                 
CODE_20FD2F:        F0 39         BEQ CODE_20FD6A           
CODE_20FD31:        C2 20         REP #$20                  
CODE_20FD33:        AD 10 02      LDA $0210                 
CODE_20FD36:        4A            LSR A                     
CODE_20FD37:        85 00         STA $00                   
CODE_20FD39:        A5 02         LDA $02                   
CODE_20FD3B:        4A            LSR A                     
CODE_20FD3C:        4A            LSR A                     
CODE_20FD3D:        4A            LSR A                     
CODE_20FD3E:        8D C3 02      STA $02C3                 
CODE_20FD41:        A5 02         LDA $02                   
CODE_20FD43:        38            SEC                       
CODE_20FD44:        ED C3 02      SBC $02C3                 
CODE_20FD47:        8D C3 02      STA $02C3                 
CODE_20FD4A:        E2 20         SEP #$20                  
CODE_20FD4C:        A5 00         LDA $00                   
CODE_20FD4E:        8D 0F 21      STA $210F                 
CODE_20FD51:        A5 01         LDA $01                   
CODE_20FD53:        8D 0F 21      STA $210F                 
CODE_20FD56:        AD C3 02      LDA $02C3                 
CODE_20FD59:        18            CLC                       
CODE_20FD5A:        69 20         ADC #$20                  
CODE_20FD5C:        8D 10 21      STA $2110                 
CODE_20FD5F:        AD C4 02      LDA $02C4                 
CODE_20FD62:        69 00         ADC #$00                  
CODE_20FD64:        8D 10 21      STA $2110                 
CODE_20FD67:        4C ED FE      JMP CODE_20FEED           

CODE_20FD6A:        AD CC 02      LDA $02CC                 
CODE_20FD6D:        8D 10 21      STA $2110                 
CODE_20FD70:        AD CD 02      LDA $02CD                 
CODE_20FD73:        8D 10 21      STA $2110                 
CODE_20FD76:        AD CE 02      LDA $02CE                 
CODE_20FD79:        8D 0F 21      STA $210F                 
CODE_20FD7C:        AD CF 02      LDA $02CF                 
CODE_20FD7F:        8D 0F 21      STA $210F                 
CODE_20FD82:        4C ED FE      JMP CODE_20FEED           

CODE_20FD85:        AD 12 02      LDA $0212                 
CODE_20FD88:        8D 0F 21      STA $210F                 
CODE_20FD8B:        AD 13 02      LDA $0213                 
CODE_20FD8E:        8D 0F 21      STA $210F                 
CODE_20FD91:        AD 18 02      LDA $0218                 
CODE_20FD94:        8D 10 21      STA $2110                 
CODE_20FD97:        AD 19 02      LDA $0219                 
CODE_20FD9A:        8D 10 21      STA $2110                 
CODE_20FD9D:        AD BF 02      LDA $02BF                 
CODE_20FDA0:        C9 01         CMP #$01                  
CODE_20FDA2:        D0 28         BNE CODE_20FDCC           
CODE_20FDA4:        AD C1 02      LDA $02C1                 
CODE_20FDA7:        C9 34         CMP #$34                  
CODE_20FDA9:        D0 0A         BNE CODE_20FDB5           
CODE_20FDAB:        9C 12 21      STZ $2112                 
CODE_20FDAE:        A9 01         LDA #$01                  
CODE_20FDB0:        8D 12 21      STA $2112                 
CODE_20FDB3:        80 0A         BRA CODE_20FDBF           

CODE_20FDB5:        A5 02         LDA $02                   
CODE_20FDB7:        8D 12 21      STA $2112                 
CODE_20FDBA:        A5 03         LDA $03                   
CODE_20FDBC:        8D 12 21      STA $2112                 
CODE_20FDBF:        AD 10 02      LDA $0210                 
CODE_20FDC2:        8D 11 21      STA $2111                 
CODE_20FDC5:        AD 11 02      LDA $0211                 
CODE_20FDC8:        8D 11 21      STA $2111                 
CODE_20FDCB:        60            RTS                       

CODE_20FDCC:        C9 08         CMP #$08                  
CODE_20FDCE:        D0 0A         BNE CODE_20FDDA           
CODE_20FDD0:        A9 17         LDA #$17                  
CODE_20FDD2:        8D 12 21      STA $2112                 
CODE_20FDD5:        9C 12 21      STZ $2112                 
CODE_20FDD8:        80 E5         BRA CODE_20FDBF           

CODE_20FDDA:        C9 05         CMP #$05                  
CODE_20FDDC:        D0 08         BNE CODE_20FDE6           
CODE_20FDDE:        9C 12 21      STZ $2112                 
CODE_20FDE1:        9C 12 21      STZ $2112                 
CODE_20FDE4:        80 D9         BRA CODE_20FDBF           

CODE_20FDE6:        C9 06         CMP #$06                  
CODE_20FDE8:        D0 0A         BNE CODE_20FDF4           
CODE_20FDEA:        9C 12 21      STZ $2112                 
CODE_20FDED:        A9 01         LDA #$01                  
CODE_20FDEF:        8D 12 21      STA $2112                 
CODE_20FDF2:        80 CB         BRA CODE_20FDBF           

CODE_20FDF4:        C9 07         CMP #$07                  
CODE_20FDF6:        D0 18         BNE CODE_20FE10           
CODE_20FDF8:        C2 20         REP #$20                  
CODE_20FDFA:        A9 B8 00      LDA #$00B8                
CODE_20FDFD:        18            CLC                       
CODE_20FDFE:        65 02         ADC $02                   
CODE_20FE00:        85 04         STA $04                   
CODE_20FE02:        E2 20         SEP #$20                  
CODE_20FE04:        A5 04         LDA $04                   
CODE_20FE06:        8D 10 21      STA $2110                 
CODE_20FE09:        A5 05         LDA $05                   
CODE_20FE0B:        8D 10 21      STA $2110                 
CODE_20FE0E:        80 A5         BRA CODE_20FDB5           

CODE_20FE10:        C9 02         CMP #$02                  
CODE_20FE12:        F0 36         BEQ CODE_20FE4A           
CODE_20FE14:        C9 09         CMP #$09                  
CODE_20FE16:        F0 0B         BEQ CODE_20FE23           
CODE_20FE18:        C9 0A         CMP #$0A                  
CODE_20FE1A:        F0 07         BEQ CODE_20FE23           
CODE_20FE1C:        C9 0F         CMP #$0F                  
CODE_20FE1E:        F0 03         BEQ CODE_20FE23           
CODE_20FE20:        4C 85 FE      JMP CODE_20FE85           

CODE_20FE23:        C2 20         REP #$20                  
CODE_20FE25:        AD 10 02      LDA $0210                 
CODE_20FE28:        4A            LSR A                     
CODE_20FE29:        4A            LSR A                     
CODE_20FE2A:        85 00         STA $00                   
CODE_20FE2C:        E2 20         SEP #$20                  
CODE_20FE2E:        A5 00         LDA $00                   
CODE_20FE30:        8D 11 21      STA $2111                 
CODE_20FE33:        A5 01         LDA $01                   
CODE_20FE35:        8D 11 21      STA $2111                 
CODE_20FE38:        AD 18 02      LDA $0218                 
CODE_20FE3B:        18            CLC                       
CODE_20FE3C:        69 11         ADC #$11                  
CODE_20FE3E:        8D 12 21      STA $2112                 
CODE_20FE41:        AD 19 02      LDA $0219                 
CODE_20FE44:        69 00         ADC #$00                  
CODE_20FE46:        8D 12 21      STA $2112                 
CODE_20FE49:        60            RTS                       

CODE_20FE4A:        C2 20         REP #$20                  
CODE_20FE4C:        AD 10 02      LDA $0210                 
CODE_20FE4F:        4A            LSR A                     
CODE_20FE50:        4A            LSR A                     
CODE_20FE51:        85 00         STA $00                   
CODE_20FE53:        8D 53 03      STA $0353                 
CODE_20FE56:        A5 02         LDA $02                   
CODE_20FE58:        4A            LSR A                     
CODE_20FE59:        4A            LSR A                     
CODE_20FE5A:        4A            LSR A                     
CODE_20FE5B:        8D C3 02      STA $02C3                 
CODE_20FE5E:        A5 02         LDA $02                   
CODE_20FE60:        38            SEC                       
CODE_20FE61:        ED C3 02      SBC $02C3                 
CODE_20FE64:        8D C3 02      STA $02C3                 
CODE_20FE67:        E2 20         SEP #$20                  
CODE_20FE69:        A5 00         LDA $00                   
CODE_20FE6B:        8D 11 21      STA $2111                 
CODE_20FE6E:        A5 01         LDA $01                   
CODE_20FE70:        8D 11 21      STA $2111                 
CODE_20FE73:        AD C3 02      LDA $02C3                 
CODE_20FE76:        18            CLC                       
CODE_20FE77:        69 20         ADC #$20                  
CODE_20FE79:        8D 12 21      STA $2112                 
CODE_20FE7C:        AD C4 02      LDA $02C4                 
CODE_20FE7F:        69 00         ADC #$00                  
CODE_20FE81:        8D 12 21      STA $2112                 
CODE_20FE84:        60            RTS                       

CODE_20FE85:        C9 0E         CMP #$0E                  
CODE_20FE87:        D0 21         BNE CODE_20FEAA           
CODE_20FE89:        A5 02         LDA $02                   
CODE_20FE8B:        8D 12 21      STA $2112                 
CODE_20FE8E:        A5 03         LDA $03                   
CODE_20FE90:        8D 12 21      STA $2112                 
CODE_20FE93:        C2 20         REP #$20                  
CODE_20FE95:        AD 10 02      LDA $0210                 
CODE_20FE98:        4A            LSR A                     
CODE_20FE99:        4A            LSR A                     
CODE_20FE9A:        4A            LSR A                     
CODE_20FE9B:        85 00         STA $00                   
CODE_20FE9D:        E2 20         SEP #$20                  
CODE_20FE9F:        A5 00         LDA $00                   
CODE_20FEA1:        8D 11 21      STA $2111                 
CODE_20FEA4:        A5 01         LDA $01                   
CODE_20FEA6:        8D 11 21      STA $2111                 
CODE_20FEA9:        60            RTS                       

CODE_20FEAA:        C9 0B         CMP #$0B                  
CODE_20FEAC:        D0 3F         BNE CODE_20FEED           
CODE_20FEAE:        A5 9C         LDA $9C                   
CODE_20FEB0:        D0 08         BNE CODE_20FEBA           
CODE_20FEB2:        AD 7A 03      LDA $037A                 
CODE_20FEB5:        D0 03         BNE CODE_20FEBA           
CODE_20FEB7:        20 4A FF      JSR CODE_20FF4A           
CODE_20FEBA:        C2 20         REP #$20                  
CODE_20FEBC:        A5 02         LDA $02                   
CODE_20FEBE:        4A            LSR A                     
CODE_20FEBF:        4A            LSR A                     
CODE_20FEC0:        4A            LSR A                     
CODE_20FEC1:        8D C3 02      STA $02C3                 
CODE_20FEC4:        A5 02         LDA $02                   
CODE_20FEC6:        38            SEC                       
CODE_20FEC7:        ED C3 02      SBC $02C3                 
CODE_20FECA:        8D C3 02      STA $02C3                 
CODE_20FECD:        E2 20         SEP #$20                  
CODE_20FECF:        AD 53 03      LDA $0353                 
CODE_20FED2:        8D 11 21      STA $2111                 
CODE_20FED5:        AD 54 03      LDA $0354                 
CODE_20FED8:        8D 11 21      STA $2111                 
CODE_20FEDB:        AD C3 02      LDA $02C3                 
CODE_20FEDE:        18            CLC                       
CODE_20FEDF:        69 28         ADC #$28                  
CODE_20FEE1:        8D 12 21      STA $2112                 
CODE_20FEE4:        AD C4 02      LDA $02C4                 
CODE_20FEE7:        69 00         ADC #$00                  
CODE_20FEE9:        8D 12 21      STA $2112                 
CODE_20FEEC:        60            RTS                       

CODE_20FEED:        AD 14 02      LDA $0214                 
CODE_20FEF0:        8D 11 21      STA $2111                 
CODE_20FEF3:        AD 15 02      LDA $0215                 
CODE_20FEF6:        8D 11 21      STA $2111                 
CODE_20FEF9:        AD 1A 02      LDA $021A                 
CODE_20FEFC:        8D 12 21      STA $2112                 
CODE_20FEFF:        AD 1B 02      LDA $021B                 
CODE_20FF02:        8D 12 21      STA $2112                 
CODE_20FF05:        60            RTS                       

CODE_20FF06:        AD 10 02      LDA $0210                 
CODE_20FF09:        18            CLC                       
CODE_20FF0A:        69 10         ADC #$10                  
CODE_20FF0C:        AD 11 02      LDA $0211                 
CODE_20FF0F:        69 00         ADC #$00                  
CODE_20FF11:        29 01         AND #$01                  
CODE_20FF13:        A8            TAY                       
CODE_20FF14:        C2 20         REP #$20                  
CODE_20FF16:        A2 80         LDX #$80                  
CODE_20FF18:        8E 15 21      STX $2115                 
CODE_20FF1B:        A9 01 18      LDA #$1801                
CODE_20FF1E:        8D 00 43      STA $4300                 
CODE_20FF21:        A9 00 04      LDA #$0400                
CODE_20FF24:        8D 05 43      STA $4305                 
CODE_20FF27:        A9 00 A0      LDA #$A000                
CODE_20FF2A:        8D 02 43      STA $4302                 
CODE_20FF2D:        A2 7F         LDX #$7F                  
CODE_20FF2F:        8E 04 43      STX $4304                 
CODE_20FF32:        A9 80 00      LDA #$0080                
CODE_20FF35:        A2 01         LDX #$01                  
CODE_20FF37:        C0 00         CPY #$00                  
CODE_20FF39:        F0 03         BEQ CODE_20FF3E           
CODE_20FF3B:        A9 80 04      LDA #$0480                
CODE_20FF3E:        8D 16 21      STA $2116                 
CODE_20FF41:        8E 0B 42      STX $420B                 
CODE_20FF44:        E2 20         SEP #$20                  
CODE_20FF46:        9C BB 02      STZ $02BB                 
CODE_20FF49:        60            RTS                       

CODE_20FF4A:        AD 51 03      LDA $0351                 
CODE_20FF4D:        0A            ASL A                     
CODE_20FF4E:        0A            ASL A                     
CODE_20FF4F:        0A            ASL A                     
CODE_20FF50:        0A            ASL A                     
CODE_20FF51:        18            CLC                       
CODE_20FF52:        6D 52 03      ADC $0352                 
CODE_20FF55:        8D 52 03      STA $0352                 
CODE_20FF58:        08            PHP                       
CODE_20FF59:        A0 00         LDY #$00                  
CODE_20FF5B:        AD 51 03      LDA $0351                 
CODE_20FF5E:        4A            LSR A                     
CODE_20FF5F:        4A            LSR A                     
CODE_20FF60:        4A            LSR A                     
CODE_20FF61:        4A            LSR A                     
CODE_20FF62:        C9 08         CMP #$08                  
CODE_20FF64:        90 03         BCC CODE_20FF69           
CODE_20FF66:        09 F0         ORA #$F0                  
CODE_20FF68:        88            DEY                       
CODE_20FF69:        28            PLP                       
CODE_20FF6A:        6D 53 03      ADC $0353                 
CODE_20FF6D:        8D 53 03      STA $0353                 
CODE_20FF70:        98            TYA                       
CODE_20FF71:        6D 54 03      ADC $0354                 
CODE_20FF74:        8D 54 03      STA $0354                 
CODE_20FF77:        60            RTS                       

DATA_20FF78:        db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
